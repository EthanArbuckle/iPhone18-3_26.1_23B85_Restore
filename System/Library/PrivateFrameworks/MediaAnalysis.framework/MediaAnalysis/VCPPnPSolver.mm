@interface VCPPnPSolver
- (VCPPnPSolver)initWithFocalLengthInPixels:(float)pixels principalPoint:(CGPoint)point cameraTowardsPositiveZ:(BOOL)z;
- (float)computeProjectionError:(float)error[3][3] T:(float)t[3];
- (int)computeBarycentricCoordinates;
- (int)computeL6x10:(void *)l6x10 L6x10:(void *)a4;
- (int)computeRT:(float)t[3][3] T:(float)a4[3];
- (int)computeSVDVt:(void *)vt Vt:(void *)a4;
- (int)configureGaussNewton:(void *)newton R6x1:(void *)r6x1 betas:(float)betas[4] jacobian:(void *)jacobian residual:(void *)residual;
- (int)correctSigns;
- (int)estimateBetasN1:(void *)n1 R6x1:(void *)r6x1 betas:(float *)betas;
- (int)estimateBetasN2:(void *)n2 R6x1:(void *)r6x1 betas:(float *)betas;
- (int)estimateBetasN3:(void *)n3 R6x1:(void *)r6x1 betas:(float *)betas;
- (int)estimateExtrinsicsWith:(const float *)with andPoints3D:(const float *)d andNumPoints:(int)points;
- (int)estimatePose:(float *)pose;
- (int)estimateRT:(void *)t betas:(const float *)betas R:(float)r[3][3] T:(float)a6[3] projectionError:(float *)error;
- (int)getControlPoints;
- (int)optimizeBetas:(void *)betas R6x1:(void *)r6x1 betas:(float)a5[4];
- (void)computeControlPointsCamera:(const float *)camera Vt:(void *)vt;
- (void)computePoints3DCamera;
- (void)computeR6x1:(void *)r6x1;
- (void)dealloc;
- (void)setPose:(__n128)pose;
@end

@implementation VCPPnPSolver

- (VCPPnPSolver)initWithFocalLengthInPixels:(float)pixels principalPoint:(CGPoint)point cameraTowardsPositiveZ:(BOOL)z
{
  zCopy = z;
  y = point.y;
  x = point.x;
  v13.receiver = self;
  v13.super_class = VCPPnPSolver;
  result = [(VCPPnPSolver *)&v13 init];
  if (result)
  {
    result->_fu = pixels;
    result->_fv = pixels;
    v10 = x;
    v11 = y;
    result->_uc = v10;
    result->_vc = v11;
    v12 = -1.0;
    if (zCopy)
    {
      v12 = 1.0;
    }

    result->_points2D = 0;
    result->_points3D = 0;
    result->_numPoints = 0;
    result->_alphas = 0;
    result->_points3DCamera = 0;
    result->_cameraOrientation = v12;
  }

  return result;
}

- (void)dealloc
{
  alphas = self->_alphas;
  if (alphas)
  {
    MEMORY[0x1CCA95C10](alphas, 0x1000C8052888210);
  }

  points3DCamera = self->_points3DCamera;
  if (points3DCamera)
  {
    MEMORY[0x1CCA95C10](points3DCamera, 0x1000C8052888210);
  }

  v5.receiver = self;
  v5.super_class = VCPPnPSolver;
  [(VCPPnPSolver *)&v5 dealloc];
}

- (int)getControlPoints
{
  self->_controlPointsWorld[0][0] = 0.0;
  controlPointsWorld = self->_controlPointsWorld;
  *&self->_controlPointsWorld[0][1] = 0;
  numPoints = self->_numPoints;
  if (numPoints >= 1)
  {
    v5 = 0;
    pointsWorld = self->_pointsWorld;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        (*controlPointsWorld)[i] = pointsWorld[i] + (*controlPointsWorld)[i];
      }

      ++v5;
      pointsWorld += 3;
    }

    while (v5 != numPoints);
  }

  for (j = 0; j != 3; ++j)
  {
    (*controlPointsWorld)[j] = (*controlPointsWorld)[j] / numPoints;
  }

  v37[0] = 0;
  v37[1] = 0;
  v38 = numPoints;
  v39 = 3;
  cva::MatrixData<float,0ul,0ul,false>::reserve(v37, (3 * numPoints));
  if (numPoints >= 1)
  {
    v9 = 0;
    v10 = self->_pointsWorld;
    v11 = v38;
    v12 = v37[0];
    do
    {
      v13 = 0;
      for (k = 0; k != 3; ++k)
      {
        v12[v9 + v13] = v10[k] - (*controlPointsWorld)[k];
        v13 += v11;
      }

      ++v9;
      v10 += 3;
    }

    while (v9 != numPoints);
  }

  v29 = v37;
  v30[0] = &v29;
  v30[1] = v37;
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>>>(&v31, v30, 3, 0);
  if (v36)
  {
    v15 = v33;
    v16 = v32;
    if (v34)
    {
      v17 = v32;
    }

    else
    {
      v17 = 0;
    }

    v18 = (v32 + 4 * (v33 * v34));
    if (!v34)
    {
      v18 = 0;
    }

    for (; v17 != v18; v17 += v15)
    {
      *v17 = -*v17;
    }

    v19 = 0;
    v20 = v35;
    v21 = self->_controlPointsWorld[1];
    while (1)
    {
      v22 = v20[v19];
      if (v22 < 0.0)
      {
        break;
      }

      v23 = 0;
      v24 = 0;
      v25 = sqrtf(v22 / self->_numPoints);
      v26 = &v16[4 * v19++];
      do
      {
        v21[v24] = (*controlPointsWorld)[v24] + (v25 * *&v26[4 * v23]);
        ++v24;
        v23 += v15;
      }

      while (v24 != 3);
      v21 += 3;
      if (v19 == 3)
      {
        v27 = 0;
        goto LABEL_29;
      }
    }

    v27 = -18;
  }

  else
  {
    v27 = -18;
    v20 = v35;
  }

LABEL_29:
  free(v20);
  free(v32);
  free(v31);
  free(v37[0]);
  return v27;
}

- (int)computeBarycentricCoordinates
{
  v3 = 0;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v4 = self->_controlPointsWorld[1];
  v5 = v29;
  do
  {
    v6 = 0;
    v7 = self->_controlPointsWorld[0][v3];
    do
    {
      *(v5 + v6 * 4) = v4[v6] - v7;
      v6 += 3;
    }

    while (v6 != 9);
    ++v3;
    v5 = (v5 + 4);
    ++v4;
  }

  while (v3 != 3);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,3u,3u,false>>(v27, v29, 3);
  if (v28)
  {
    cva::SVD<cva::Matrix<float,0u,0u,false>,true>::inverse(v27, &[VCPPnPSolver computeBarycentricCoordinates]::kThreshold, &v24);
    v8 = v25;
    v9 = v24;
    if (v26)
    {
      v10 = (v24 + 4);
    }

    else
    {
      v10 = 0;
    }

    v11 = (v24 + 4 * (v25 * v26) + 4);
    if (!v26)
    {
      v11 = 0;
    }

    for (; v10 != v11; v10 += v8)
    {
      *v10 = -*v10;
    }

    numPoints = self->_numPoints;
    if (numPoints >= 1)
    {
      v13 = 0;
      v14 = v8;
      pointsWorld = self->_pointsWorld;
      v16 = 2 * v8;
      alphas = self->_alphas;
      v18 = &v9[4 * v16];
      v19 = &v9[4 * v14];
      v20 = alphas + 1;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          v20[i] = ((*&v19[i * 4] * (pointsWorld[3 * v13 + 1] - self->_controlPointsWorld[0][1])) + (*&v9[i * 4] * (pointsWorld[3 * v13] - self->_controlPointsWorld[0][0]))) + (*&v18[i * 4] * (pointsWorld[3 * v13 + 2] - self->_controlPointsWorld[0][2]));
        }

        alphas[4 * v13] = ((1.0 - alphas[4 * v13 + 1]) - alphas[4 * v13 + 2]) - alphas[4 * v13 + 3];
        ++v13;
        v20 += 4;
      }

      while (v13 != numPoints);
    }

    free(v9);
    v22 = 0;
  }

  else
  {
    v22 = -18;
  }

  free(v27[6]);
  free(v27[3]);
  free(v27[0]);
  return v22;
}

- (void)computeControlPointsCamera:(const float *)camera Vt:(void *)vt
{
  v4 = 0;
  v5 = *(vt + 4);
  *&self->_controlPointsCamera[0][0] = 0u;
  controlPointsCamera = self->_controlPointsCamera;
  *&(*controlPointsCamera)[4] = 0u;
  *&(*controlPointsCamera)[8] = 0u;
  v7 = *(vt + 4);
  v8 = *vt;
  do
  {
    v9 = 0;
    v10 = 0;
    v11 = controlPointsCamera;
    do
    {
      v12 = 0;
      v13 = v9;
      do
      {
        (*v11)[v12] = (*v11)[v12] + (camera[v4] * *(v8 + 4 * (v5 + ~v4) + 4 * v13));
        v13 += v7;
        ++v12;
      }

      while (v12 != 3);
      ++v10;
      v9 += 3 * v7;
      ++v11;
    }

    while (v10 != 4);
    ++v4;
  }

  while (v4 != 4);
}

- (void)computePoints3DCamera
{
  numPoints = self->_numPoints;
  if (numPoints >= 1)
  {
    v3 = 0;
    alphas = self->_alphas;
    points3DCamera = self->_points3DCamera;
    controlPointsCamera = self->_controlPointsCamera;
    do
    {
      v7 = 0;
      v8 = &points3DCamera[3 * v3];
      v9 = controlPointsCamera;
      do
      {
        v10 = 0;
        v8[v7] = 0.0;
        v11 = 0.0;
        v12 = v9;
        do
        {
          v13 = *v12;
          v12 += 3;
          v11 = v11 + (alphas[v10] * v13);
          v8[v7] = v11;
          ++v10;
        }

        while (v10 != 4);
        ++v7;
        ++v9;
      }

      while (v7 != 3);
      ++v3;
      alphas += 4;
    }

    while (v3 != numPoints);
  }
}

- (int)computeSVDVt:(void *)vt Vt:(void *)a4
{
  vtCopy = vt;
  v8[0] = &vtCopy;
  v8[1] = vt;
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>>>(&v9, v8, 3, 0);
  if (v11)
  {
    cva::MatrixMixin<cva::Matrix<float,0u,0u,false>,float,0u,0u>::copyTo<cva::Matrix<float,0u,0u,false>>(v10, a4);
    v5 = 0;
  }

  else
  {
    v5 = -18;
  }

  free(v10[3]);
  free(v10[0]);
  free(v9);
  return v5;
}

- (int)computeL6x10:(void *)l6x10 L6x10:(void *)a4
{
  v4 = 0;
  v59[18] = *MEMORY[0x1E69E9840];
  v5 = &v58;
  v6 = *(l6x10 + 4);
  v7 = *l6x10;
  v8 = 3 * v6;
  do
  {
    v9 = 0;
    v10 = 0;
    v12 = 1;
    v13 = v5;
    do
    {
      v14 = 0;
      v15 = v8 * v12;
      v16 = v8 * v10;
      do
      {
        v11 = v7 + 4 * (v6 + ~v4);
        *&v13[v14] = *(v11 + 4 * v16) - *(v11 + 4 * v15);
        v15 += v6;
        v16 += v6;
        v14 += 4;
      }

      while (v14 != 12);
      v17 = v10 + 2;
      if (v12 <= 2)
      {
        ++v12;
      }

      else
      {
        ++v10;
        v12 = v17;
      }

      ++v9;
      v13 += 12;
    }

    while (v9 != 6);
    ++v4;
    v5 += 72;
  }

  while (v4 != 4);
  v18 = 0;
  v19 = *(a4 + 4);
  v20 = 2 * v19;
  v21 = *a4;
  v22 = 4 * v19;
  v23 = v59;
  v24 = 5 * v19;
  v25 = 3 * v19;
  v26 = 6 * v19;
  v27 = 8 * v19;
  v28 = 7 * v19;
  v29 = 9 * v19;
  v30 = *a4 + 4 * v19;
  v31 = *a4 + 4 * v20;
  v32 = *a4 + 4 * v25;
  v33 = *a4 + 4 * v22;
  v34 = *a4 + 4 * v24;
  v35 = *a4 + 4 * v26;
  v36 = *a4 + 4 * v28;
  v37 = *a4 + 4 * v27;
  v38 = *a4 + 4 * v29;
  do
  {
    v39 = *(v23 - 36);
    v40 = *(v23 - 35);
    v41 = *(v23 - 34);
    *(v21 + v18) = ((v40 * v40) + (v39 * v39)) + (v41 * v41);
    v42 = *(v23 - 18);
    v43 = *(v23 - 17);
    v44 = *(v23 - 16);
    v45 = ((v40 * v43) + (v39 * v42)) + (v41 * v44);
    *(v30 + v18) = v45 + v45;
    *(v31 + v18) = ((v43 * v43) + (v42 * v42)) + (v44 * v44);
    v46 = *v23;
    v47 = v23[1];
    v48 = v23[2];
    v49 = ((v40 * v47) + (v39 * *v23)) + (v41 * v48);
    *(v32 + v18) = v49 + v49;
    v50 = ((v43 * v47) + (v42 * v46)) + (v44 * v48);
    *(v33 + v18) = v50 + v50;
    *(v34 + v18) = ((v47 * v47) + (v46 * v46)) + (v48 * v48);
    v51 = v23[18];
    v52 = v23[19];
    v53 = (v40 * v52) + (v39 * v51);
    v54 = v23[20];
    *(v35 + v18) = (v53 + (v41 * v54)) + (v53 + (v41 * v54));
    v55 = ((v43 * v52) + (v42 * v51)) + (v44 * v54);
    *(v36 + v18) = v55 + v55;
    v56 = ((v47 * v52) + (v46 * v51)) + (v48 * v54);
    *(v37 + v18) = v56 + v56;
    *(v38 + v18) = ((v52 * v52) + (v51 * v51)) + (v54 * v54);
    v18 += 4;
    v23 += 3;
  }

  while (v18 != 24);
  return 0;
}

- (void)computeR6x1:(void *)r6x1
{
  v3 = self->_controlPointsWorld[0][0] - self->_controlPointsWorld[1][0];
  v4 = self->_controlPointsWorld[0][1] - self->_controlPointsWorld[1][1];
  v5 = (v4 * v4) + (v3 * v3);
  v6 = self->_controlPointsWorld[0][2] - self->_controlPointsWorld[1][2];
  v7 = *r6x1;
  *v7 = v5 + (v6 * v6);
  v8 = self->_controlPointsWorld[0][0] - self->_controlPointsWorld[2][0];
  v9 = self->_controlPointsWorld[0][1] - self->_controlPointsWorld[2][1];
  v10 = (v9 * v9) + (v8 * v8);
  v11 = self->_controlPointsWorld[0][2] - self->_controlPointsWorld[2][2];
  v7[1] = v10 + (v11 * v11);
  v12 = self->_controlPointsWorld[0][0] - self->_controlPointsWorld[3][0];
  v13 = self->_controlPointsWorld[0][1] - self->_controlPointsWorld[3][1];
  v14 = (v13 * v13) + (v12 * v12);
  v15 = self->_controlPointsWorld[0][2] - self->_controlPointsWorld[3][2];
  v7[2] = v14 + (v15 * v15);
  v16 = self->_controlPointsWorld[1][0] - self->_controlPointsWorld[2][0];
  v17 = self->_controlPointsWorld[1][1] - self->_controlPointsWorld[2][1];
  v18 = (v17 * v17) + (v16 * v16);
  v19 = self->_controlPointsWorld[1][2] - self->_controlPointsWorld[2][2];
  v7[3] = v18 + (v19 * v19);
  v20 = self->_controlPointsWorld[1][0] - self->_controlPointsWorld[3][0];
  v21 = self->_controlPointsWorld[1][1] - self->_controlPointsWorld[3][1];
  v22 = (v21 * v21) + (v20 * v20);
  v23 = self->_controlPointsWorld[1][2] - self->_controlPointsWorld[3][2];
  v7[4] = v22 + (v23 * v23);
  v24 = self->_controlPointsWorld[2][0] - self->_controlPointsWorld[3][0];
  v25 = self->_controlPointsWorld[2][2] - self->_controlPointsWorld[3][2];
  v7[5] = (((self->_controlPointsWorld[2][1] - self->_controlPointsWorld[3][1]) * (self->_controlPointsWorld[2][1] - self->_controlPointsWorld[3][1])) + (v24 * v24)) + (v25 * v25);
}

- (int)estimateBetasN1:(void *)n1 R6x1:(void *)r6x1 betas:(float *)betas
{
  v36 = 0u;
  v33 = 0;
  v34 = 0;
  v37 = 0x400000006;
  cva::MatrixData<float,0ul,0ul,false>::reserve(&v36, 0x18uLL);
  v35 = 0x100000004;
  cva::MatrixData<float,0ul,0ul,false>::reserve(&v33, 4uLL);
  v8 = 0;
  v9 = *n1;
  v10 = *(n1 + 4);
  v11 = v36;
  v12 = *n1 + 4 * (6 * v10);
  v13 = *n1 + 4 * (3 * v10);
  v14 = *n1 + 4 * v10;
  v15 = v36 + 4 * (3 * v37);
  v16 = v36 + 4 * (2 * v37);
  v17 = v36 + 4 * v37;
  do
  {
    *(v11 + v8) = *(v9 + v8);
    *(v17 + v8) = *(v14 + v8);
    *(v16 + v8) = *(v13 + v8);
    *(v15 + v8) = *(v12 + v8);
    v8 += 4;
  }

  while (v8 != 24);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,0u,0u,false>>(v30, &v36, 3, 0);
  if ((v32 & 1) == 0)
  {
    v18 = -18;
    goto LABEL_15;
  }

  v28 = 925353388;
  r6x1Copy = r6x1;
  if (__PAIR64__(*(r6x1 + 5), v31) != v35)
  {
    if (*r6x1 == v33)
    {
      v20 = (4 * *(r6x1 + 5) * v31 + 31) & 0x7FFFFFFE0;
      v38 = 0;
      v39 = v20 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v20, 0xE1AC2527uLL);
      v38 = memptr;
      v40 = __PAIR64__(r6x1Copy[5], v31);
      cva::SVD<cva::Matrix<float,0u,0u,false>,true>::initialize<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>(v30, &v38, r6x1Copy, &v28);
      v21 = v33;
      v22 = v34;
      v33 = v38;
      v34 = v39;
      v38 = v21;
      v39 = v22;
      v35 = v40;
      v40 = 0;
      free(v21);
      goto LABEL_11;
    }

    v19 = *(r6x1 + 5);
    v35 = __PAIR64__(v19, v31);
    cva::MatrixData<float,0ul,0ul,false>::reserve(&v33, v19 * v31);
    r6x1 = r6x1Copy;
  }

  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::initialize<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>(v30, &v33, r6x1, &v28);
LABEL_11:
  v23 = v33;
  v24 = *v33;
  if (*v33 >= 0.0)
  {
    v25 = sqrtf(v24);
    *betas = v25;
    betas[1] = v23[1] / v25;
    betas[2] = v23[2] / v25;
    v26 = v23[3];
  }

  else
  {
    v25 = sqrtf(-v24);
    *betas = v25;
    betas[1] = -v23[1] / v25;
    betas[2] = -v23[2] / v25;
    v26 = -v23[3];
  }

  v18 = 0;
  betas[3] = v26 / v25;
LABEL_15:
  free(v30[6]);
  free(v30[3]);
  free(v30[0]);
  free(v33);
  free(v36);
  return v18;
}

- (int)estimateBetasN2:(void *)n2 R6x1:(void *)r6x1 betas:(float *)betas
{
  v37 = 0u;
  v34 = 0;
  v35 = 0;
  v38 = 0x300000006;
  cva::MatrixData<float,0ul,0ul,false>::reserve(&v37, 0x12uLL);
  v36 = 0x100000003;
  cva::MatrixData<float,0ul,0ul,false>::reserve(&v34, 3uLL);
  v8 = 0;
  v9 = *n2;
  v10 = *(n2 + 4);
  v11 = v37;
  v12 = *n2 + 4 * (2 * v10);
  v13 = *n2 + 4 * v10;
  v14 = v37 + 4 * (2 * v38);
  v15 = v37 + 4 * v38;
  do
  {
    *(v11 + v8) = *(v9 + v8);
    *(v15 + v8) = *(v13 + v8);
    *(v14 + v8) = *(v12 + v8);
    v8 += 4;
  }

  while (v8 != 24);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,0u,0u,false>>(v31, &v37, 3, 0);
  if ((v33 & 1) == 0)
  {
    v16 = -18;
    goto LABEL_19;
  }

  v29 = 925353388;
  r6x1Copy = r6x1;
  if (__PAIR64__(*(r6x1 + 5), v32) != v36)
  {
    if (*r6x1 == v34)
    {
      v18 = (4 * *(r6x1 + 5) * v32 + 31) & 0x7FFFFFFE0;
      v39 = 0;
      v40 = v18 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v18, 0xE1AC2527uLL);
      v39 = memptr;
      v41 = __PAIR64__(r6x1Copy[5], v32);
      cva::SVD<cva::Matrix<float,0u,0u,false>,true>::initialize<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>(v31, &v39, r6x1Copy, &v29);
      v19 = v34;
      v20 = v35;
      v34 = v39;
      v35 = v40;
      v39 = v19;
      v40 = v20;
      v36 = v41;
      v41 = 0;
      free(v19);
      goto LABEL_11;
    }

    v17 = *(r6x1 + 5);
    v36 = __PAIR64__(v17, v32);
    cva::MatrixData<float,0ul,0ul,false>::reserve(&v34, v17 * v32);
    r6x1 = r6x1Copy;
  }

  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::initialize<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>(v31, &v34, r6x1, &v29);
LABEL_11:
  v21 = v34;
  v22 = *v34;
  if (*v34 >= 0.0)
  {
    v23 = sqrtf(v22);
    *betas = v23;
    v26 = v21[2];
    v25 = v26 > 0.0;
  }

  else
  {
    v23 = sqrtf(-v22);
    *betas = v23;
    v24 = v21[2];
    v25 = v24 < 0.0;
    v26 = -v24;
  }

  v27 = sqrtf(v26);
  if (!v25)
  {
    v27 = 0.0;
  }

  betas[1] = v27;
  if (v21[1] < 0.0)
  {
    *betas = -v23;
  }

  v16 = 0;
  *(betas + 1) = 0;
LABEL_19:
  free(v31[6]);
  free(v31[3]);
  free(v31[0]);
  free(v34);
  free(v37);
  return v16;
}

- (int)estimateBetasN3:(void *)n3 R6x1:(void *)r6x1 betas:(float *)betas
{
  v41 = 0u;
  v38 = 0;
  v39 = 0;
  v42 = 0x500000006;
  cva::MatrixData<float,0ul,0ul,false>::reserve(&v41, 0x1EuLL);
  v40 = 0x100000005;
  cva::MatrixData<float,0ul,0ul,false>::reserve(&v38, 5uLL);
  v8 = 0;
  v9 = *(n3 + 4);
  v10 = *n3;
  v11 = v41;
  v12 = *n3 + 4 * (4 * v9);
  v13 = *n3 + 4 * (3 * v9);
  v14 = *n3 + 4 * (2 * v9);
  v15 = *n3 + 4 * v9;
  v16 = v41 + 4 * (4 * v42);
  v17 = v41 + 4 * (3 * v42);
  v18 = v41 + 4 * (2 * v42);
  v19 = v41 + 4 * v42;
  do
  {
    *(v11 + v8) = *(v10 + v8);
    *(v19 + v8) = *(v15 + v8);
    *(v18 + v8) = *(v14 + v8);
    *(v17 + v8) = *(v13 + v8);
    *(v16 + v8) = *(v12 + v8);
    v8 += 4;
  }

  while (v8 != 24);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,0u,0u,false>>(v35, &v41, 3, 0);
  if ((v37 & 1) == 0)
  {
    v20 = -18;
    goto LABEL_19;
  }

  v33 = 925353388;
  r6x1Copy = r6x1;
  if (__PAIR64__(*(r6x1 + 5), v36) != v40)
  {
    if (*r6x1 == v38)
    {
      v22 = (4 * *(r6x1 + 5) * v36 + 31) & 0x7FFFFFFE0;
      v43 = 0;
      v44 = v22 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v22, 0xE1AC2527uLL);
      v43 = memptr;
      v45 = __PAIR64__(r6x1Copy[5], v36);
      cva::SVD<cva::Matrix<float,0u,0u,false>,true>::initialize<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>(v35, &v43, r6x1Copy, &v33);
      v23 = v38;
      v24 = v39;
      v38 = v43;
      v39 = v44;
      v43 = v23;
      v44 = v24;
      v40 = v45;
      v45 = 0;
      free(v23);
      goto LABEL_11;
    }

    v21 = *(r6x1 + 5);
    v40 = __PAIR64__(v21, v36);
    cva::MatrixData<float,0ul,0ul,false>::reserve(&v38, v21 * v36);
    r6x1 = r6x1Copy;
  }

  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::initialize<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>(v35, &v38, r6x1, &v33);
LABEL_11:
  v25 = v38;
  v26 = *v38;
  if (*v38 >= 0.0)
  {
    v27 = sqrtf(v26);
    *betas = v27;
    v30 = v25[2];
    v29 = v30 > 0.0;
  }

  else
  {
    v27 = sqrtf(-v26);
    *betas = v27;
    v28 = v25[2];
    v29 = v28 < 0.0;
    v30 = -v28;
  }

  v31 = sqrtf(v30);
  if (!v29)
  {
    v31 = 0.0;
  }

  betas[1] = v31;
  if (v25[1] < 0.0)
  {
    v27 = -v27;
    *betas = v27;
  }

  v20 = 0;
  betas[2] = v25[3] / v27;
  betas[3] = 0.0;
LABEL_19:
  free(v35[6]);
  free(v35[3]);
  free(v35[0]);
  free(v38);
  free(v41);
  return v20;
}

- (int)correctSigns
{
  points3DCamera = self->_points3DCamera;
  if ((points3DCamera[2] * self->_cameraOrientation) < 0.0)
  {
    v3 = 0;
    controlPointsCamera = self->_controlPointsCamera;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        (*controlPointsCamera)[i] = -(*controlPointsCamera)[i];
      }

      ++v3;
      ++controlPointsCamera;
    }

    while (v3 != 4);
    numPoints = self->_numPoints;
    if (numPoints >= 1)
    {
      v7 = points3DCamera + 2;
      do
      {
        *(v7 - 1) = vneg_f32(*(v7 - 2));
        *v7 = -*v7;
        v7 += 3;
        --numPoints;
      }

      while (numPoints);
    }
  }

  return 0;
}

- (float)computeProjectionError:(float)error[3][3] T:(float)t[3]
{
  numPoints = self->_numPoints;
  if (numPoints < 1)
  {
    v10 = 0.0;
  }

  else
  {
    cameraOrientation = self->_cameraOrientation;
    v6 = cameraOrientation * self->_fu;
    v7 = cameraOrientation * self->_fv;
    v8 = (self->_pointsWorld + 2);
    v9 = (self->_pointsImage + 1);
    v10 = 0.0;
    v11 = self->_numPoints;
    do
    {
      v12 = *(v8 - 2);
      v13 = *(v8 - 1);
      v14 = *v8;
      v8 += 3;
      v15 = ((((*error)[1] * v13) + ((*error)[0] * v12)) + ((*error)[2] * v14)) + *t;
      v16 = ((v13 * (*error)[4]) + ((*error)[3] * v12)) + ((*error)[5] * v14);
      v17 = 1.0 / (t[2] + (((v13 * (*error)[7]) + ((*error)[6] * v12)) + ((*error)[8] * v14)));
      v18 = *(v9 - 1) - (self->_uc + ((v15 * v6) * v17));
      v19 = *v9 - (self->_vc + (((t[1] + v16) * v7) * v17));
      v10 = v10 + sqrtf((v19 * v19) + (v18 * v18));
      v9 += 2;
      --v11;
    }

    while (v11);
  }

  return v10 / numPoints;
}

- (int)computeRT:(float)t[3][3] T:(float)a4[3]
{
  v62 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0.0;
  numPoints = self->_numPoints;
  if (numPoints >= 1)
  {
    v8 = 0;
    points3DCamera = self->_points3DCamera;
    pointsWorld = self->_pointsWorld;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        *(&v60 + i * 4) = points3DCamera[i] + *(&v60 + i * 4);
        *(&v58 + i * 4) = pointsWorld[i] + *(&v58 + i * 4);
      }

      ++v8;
      pointsWorld += 3;
      points3DCamera += 3;
    }

    while (v8 != numPoints);
  }

  v12 = 0;
  v13 = numPoints;
  do
  {
    *(&v60 + v12) = *(&v60 + v12) / v13;
    *(&v58 + v12) = *(&v58 + v12) / v13;
    v12 += 4;
  }

  while (v12 != 12);
  v57[1] = 16;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, 0x40uLL, 0xE1AC2527uLL);
  v14 = memptr[0];
  v57[0] = memptr[0];
  v57[2] = 0x300000003;
  *(memptr[0] + 8) = 0;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v15 = self->_numPoints;
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = self->_points3DCamera;
    v18 = self->_pointsWorld;
    do
    {
      v19 = 0;
      v20 = v14;
      do
      {
        v21 = 0;
        v22 = *(&v60 + v19);
        v23 = v20;
        do
        {
          *v23 = *v23 + ((v17[3 * v16 + v19] - v22) * (v18[v21] - *(&v58 + v21 * 4)));
          v23 += 3;
          ++v21;
        }

        while (v21 != 3);
        ++v19;
        ++v20;
      }

      while (v19 != 3);
      ++v16;
      v18 += 3;
    }

    while (v16 != v15);
  }

  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,0u,0u,false>>(memptr, v57, 3, 0);
  if (v56 == 1)
  {
    v24 = 0;
    v25 = memptr[0];
    v26 = v54;
    v27 = v53;
    v28 = v52;
    v29 = 2 * v52;
    tCopy = t;
    do
    {
      v31 = 0;
      for (j = 0; j != 3; ++j)
      {
        (*tCopy)[j] = ((v25[v24 + v28] * v27[v31 + 1]) + (v25[v24] * v27[v31])) + (v25[v24 + v29] * v27[v31 + 2]);
        v31 += v26;
      }

      ++v24;
      ++tCopy;
    }

    while (v24 != 3);
    v33 = (*t)[8];
    _S18 = (*t)[2] * (*t)[3];
    _D1 = *&(*t)[6];
    __asm { FMLA            S6, S18, V1.S[1] }

    _S2 = -((*t)[0] * (*t)[5]);
    __asm { FMLA            S3, S2, V1.S[1] }

    if (_S3 < 0.0)
    {
      *&(*t)[6] = vneg_f32(_D1);
      (*t)[8] = -v33;
    }

    v43 = 0;
    v44 = v58;
    v45 = &(*t)[2];
    v46 = v59;
    do
    {
      v47 = (*(v45 - 1) * *(&v44 + 1)) + (*(v45 - 2) * *&v44);
      v48 = *v45;
      v45 += 3;
      a4[v43] = *(&v60 + v43 * 4) - (v47 + (v48 * v46));
      ++v43;
    }

    while (v43 != 3);
    v49 = 0;
  }

  else
  {
    v49 = -18;
  }

  free(v55);
  free(v53);
  free(memptr[0]);
  free(v57[0]);
  return v49;
}

- (int)estimateRT:(void *)t betas:(const float *)betas R:(float)r[3][3] T:(float)a6[3] projectionError:(float *)error
{
  [(VCPPnPSolver *)self computeControlPointsCamera:betas Vt:t];
  [(VCPPnPSolver *)self computePoints3DCamera];
  [(VCPPnPSolver *)self correctSigns];
  v11 = [(VCPPnPSolver *)self computeRT:r T:a6];
  if (!v11)
  {
    [(VCPPnPSolver *)self computeProjectionError:r T:a6];
    *error = v12;
  }

  return v11;
}

- (int)configureGaussNewton:(void *)newton R6x1:(void *)r6x1 betas:(float)betas[4] jacobian:(void *)jacobian residual:(void *)residual
{
  v7 = 0;
  v8 = *(newton + 4);
  v9 = *newton;
  v10 = *jacobian;
  v11 = *(jacobian + 4);
  v12 = *r6x1;
  v13 = *residual;
  v14 = *newton + 4 * (9 * v8);
  v15 = *newton + 4 * (8 * v8);
  v16 = *newton + 4 * (5 * v8);
  v17 = *newton + 4 * (7 * v8);
  v18 = *newton + 4 * (4 * v8);
  v19 = *newton + 4 * (2 * v8);
  v20 = *newton + 4 * (6 * v8);
  v21 = *newton + 4 * (3 * v8);
  v22 = v9 + 4 * v8;
  v23 = *jacobian + 4 * (3 * v11);
  do
  {
    *(v10 + v7) = (((*(v22 + v7) * betas[1]) + ((*(v9 + v7) + *(v9 + v7)) * *betas)) + (*(v21 + v7) * betas[2])) + (*(v20 + v7) * betas[3]);
    *(v10 + 4 * v11 + v7) = ((((*(v19 + v7) + *(v19 + v7)) * betas[1]) + (*(v22 + v7) * *betas)) + (*(v18 + v7) * betas[2])) + (*(v17 + v7) * betas[3]);
    *(v10 + 4 * (2 * v11) + v7) = (((*(v18 + v7) * betas[1]) + (*(v21 + v7) * *betas)) + ((*(v16 + v7) + *(v16 + v7)) * betas[2])) + (*(v15 + v7) * betas[3]);
    *(v23 + v7) = (((*(v17 + v7) * betas[1]) + (*(v20 + v7) * *betas)) + (*(v15 + v7) * betas[2])) + ((*(v14 + v7) + *(v14 + v7)) * betas[3]);
    v24 = betas[1];
    v25 = betas[2];
    v26 = betas[3];
    *(v13 + v7) = *(v12 + v7) - (((((((((((*betas * *(v22 + v7)) * v24) + ((*(v9 + v7) * *betas) * *betas)) + ((v24 * *(v19 + v7)) * v24)) + ((*betas * *(v21 + v7)) * v25)) + ((v24 * *(v18 + v7)) * v25)) + ((v25 * *(v16 + v7)) * v25)) + ((*betas * *(v20 + v7)) * v26)) + ((v24 * *(v17 + v7)) * v26)) + ((v25 * *(v15 + v7)) * v26)) + ((v26 * *(v14 + v7)) * v26));
    v7 += 4;
  }

  while (v7 != 24);
  return 0;
}

- (int)optimizeBetas:(void *)betas R6x1:(void *)r6x1 betas:(float)a5[4]
{
  v20[1] = 24;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, 0x60uLL, 0xE1AC2527uLL);
  v9 = memptr[0];
  v20[0] = memptr[0];
  v20[2] = 0x400000006;
  *(memptr[0] + 2) = 0u;
  v9[3] = 0u;
  v9[4] = 0u;
  v9[5] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v18[1] = 8;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, 0x20uLL, 0xE1AC2527uLL);
  v10 = memptr[0];
  v18[0] = memptr[0];
  v19 = 0x100000006;
  *memptr[0] = 0;
  v10[1] = 0;
  v10[2] = 0;
  [(VCPPnPSolver *)self configureGaussNewton:betas R6x1:r6x1 betas:a5 jacobian:v20 residual:v18];
  cva::QR<cva::Matrix<float,0u,0u,false>>::QR<cva::Matrix<float,0u,0u,false>>(memptr, v20);
  v11 = (4 * (HIDWORD(v19) * v17) + 31) & 0x7FFFFFFE0;
  v13[1] = (v11 >> 2);
  v21 = 0;
  malloc_type_posix_memalign(&v21, 0x20uLL, v11, 0xE1AC2527uLL);
  v13[0] = v21;
  v14 = v17;
  v15 = HIDWORD(v19);
  cva::QR<cva::Matrix<float,0u,0u,false>>::initialize<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>(memptr, v13, v18);
}

- (int)estimatePose:(float *)pose
{
  v47 = *MEMORY[0x1E69E9840];
  getControlPoints = [(VCPPnPSolver *)self getControlPoints];
  if (getControlPoints)
  {
    return getControlPoints;
  }

  getControlPoints = [(VCPPnPSolver *)self computeBarycentricCoordinates];
  if (getControlPoints)
  {
    return getControlPoints;
  }

  v41[0] = 0;
  v41[1] = 0;
  numPoints = self->_numPoints;
  v42 = 2 * numPoints;
  v43 = 12;
  cva::MatrixData<float,0ul,0ul,false>::reserve(v41, (24 * numPoints));
  v9 = self->_numPoints;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = v42;
    v12 = v41[0];
    pointsImage = self->_pointsImage;
    alphas = self->_alphas;
    v15 = 3 * v42;
    v16 = 2 * v42;
    do
    {
      v17 = 0;
      v18 = 0;
      v19 = &v12[8 * v10];
      v20 = (2 * (v10 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v21 = &v12[4 * v20];
      do
      {
        *&v19[4 * v18] = alphas[v17] * self->_fu;
        v22 = v11 + v18;
        *&v19[4 * v22] = 0;
        v23 = v16 + v18;
        *&v19[4 * v23] = (self->_cameraOrientation * alphas[v17]) * (self->_uc - pointsImage[2 * v10]);
        *&v21[4 * v18] = 0;
        *&v21[4 * v22] = alphas[v17] * self->_fv;
        *&v21[4 * v23] = (self->_cameraOrientation * alphas[v17]) * (self->_vc - pointsImage[v20]);
        v18 += v15;
        ++v17;
      }

      while (v17 != 4);
      ++v10;
      alphas += 4;
    }

    while (v10 != v9);
  }

  *v39 = 0u;
  v40 = 0xC0000000CLL;
  cva::MatrixData<float,0ul,0ul,false>::reserve(v39, 0x90uLL);
  v6 = [(VCPPnPSolver *)self computeSVDVt:v41 Vt:v39];
  if (!v6)
  {
    v38[1] = 64;
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, 0x100uLL, 0xE1AC2527uLL);
    v24 = memptr[0];
    v38[0] = memptr[0];
    v38[2] = 0xA00000006;
    *(memptr[0] + 2) = 0u;
    v24[3] = 0u;
    v24[4] = 0u;
    v24[5] = 0u;
    v24[6] = 0u;
    v24[7] = 0u;
    v24[8] = 0u;
    v24[9] = 0u;
    v24[10] = 0u;
    v24[11] = 0u;
    v24[12] = 0u;
    v24[13] = 0u;
    v24[14] = 0u;
    *v24 = 0u;
    v24[1] = 0u;
    v37[1] = 8;
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, 0x20uLL, 0xE1AC2527uLL);
    v25 = memptr[0];
    v37[0] = memptr[0];
    v37[2] = 0x100000006;
    *memptr[0] = 0;
    v25[1] = 0;
    v25[2] = 0;
    v6 = [(VCPPnPSolver *)self computeL6x10:v39 L6x10:v38];
    if (!v6)
    {
      [(VCPPnPSolver *)self computeR6x1:v37];
      v26 = 0;
      v27 = 0;
      v28 = v44;
      v29 = memptr;
      v30 = 3.4028e38;
      while (1)
      {
        v36 = 0.0;
        if (v26 == 1)
        {
          v31 = [(VCPPnPSolver *)self estimateBetasN2:v38 R6x1:v37 betas:v46];
        }

        else
        {
          v31 = v26 ? [(VCPPnPSolver *)self estimateBetasN3:v38 R6x1:v37 betas:v46]: [(VCPPnPSolver *)self estimateBetasN1:v38 R6x1:v37 betas:v46];
        }

        v6 = v31;
        if (v31)
        {
          break;
        }

        v6 = [(VCPPnPSolver *)self optimizeBetas:v38 R6x1:v37 betas:v46];
        if (v6)
        {
          break;
        }

        v6 = [(VCPPnPSolver *)self estimateRT:v39 betas:v46 R:v29 T:v28 projectionError:&v36];
        if (v6)
        {
          break;
        }

        if (v36 < v30)
        {
          v27 = v26;
        }

        v32 = v26 + 1;
        if (v36 < v30)
        {
          v30 = v36;
        }

        v28 += 3;
        v29 = (v29 + 36);
        ++v26;
        if (v32 == 3)
        {
          v33 = 0;
          v34 = memptr + 36 * v27;
          do
          {
            for (i = 0; i != 3; ++i)
            {
              *(&self[1].super.isa + 4 * i + (v33 & 3)) = *&v34[4 * i];
            }

            LODWORD(self[1]._controlPointsWorld[0][(v33 & 3) + 1]) = v44[3 * v27 + v33];
            ++v33;
            v34 += 12;
          }

          while (v33 != 3);
          v6 = 0;
          *pose = v30;
          break;
        }
      }
    }

    free(v37[0]);
    free(v38[0]);
  }

  free(v39[0]);
  free(v41[0]);
  return v6;
}

- (int)estimateExtrinsicsWith:(const float *)with andPoints3D:(const float *)d andNumPoints:(int)points
{
  v15 = 0;
  result = -50;
  if (d && with && (points - 4) <= 0x7CC)
  {
    if (self->_numPoints >= points)
    {
      goto LABEL_11;
    }

    alphas = self->_alphas;
    if (alphas)
    {
      MEMORY[0x1CCA95C10](alphas, 0x1000C8052888210);
    }

    points3DCamera = self->_points3DCamera;
    if (points3DCamera)
    {
      MEMORY[0x1CCA95C10](points3DCamera, 0x1000C8052888210);
    }

    v12 = MEMORY[0x1E69E5398];
    v13 = operator new[]((16 * points), MEMORY[0x1E69E5398]);
    self->_alphas = v13;
    v14 = operator new[]((12 * points), v12);
    self->_points3DCamera = v14;
    result = -108;
    if (v13)
    {
      if (v14)
      {
LABEL_11:
        self->_numPoints = points;
        self->_pointsWorld = d;
        self->_pointsImage = with;
        return [(VCPPnPSolver *)self estimatePose:&v15];
      }
    }
  }

  return result;
}

- (void)setPose:(__n128)pose
{
  v5[0] = a2;
  v5[1] = pose;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((self + 192), v5, 64, 1, 0);
}

@end