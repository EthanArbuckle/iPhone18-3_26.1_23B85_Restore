@interface VCPFaceShapeModel
- (BOOL)fitOneImage:(float *)image;
- (BOOL)isIdentityInit;
- (BOOL)optimizeProjectionMatrix:(int)matrix tracking:(BOOL)tracking firstPass:(BOOL)pass;
- (BOOL)trackFaceMesh:(float *)mesh;
- (VCPFaceShapeModel)initWithMode:(int)mode;
- (__n64)getPose;
- (id)blendShapes;
- (int)setCameraIntrinsics:(float)intrinsics uc:(float)uc vc:(float)vc;
- (int)setupModel:(int)model;
- (matrix<double,)getPoseParam;
- (void)calculateBlendshapeWeights:(float *)weights prevWeights:(float *)prevWeights lmBlendshapes:(float *)blendshapes maxIter:(int)iter;
- (void)calculateIdentityCoefficients:(float *)coefficients extrinsicMatrix:(float *)matrix pts2D:(float *)d exprWeights:(float *)weights lm3DMeanBlendshapes:(float *)blendshapes lm3DComponents:(float *)components maxIter:(int)iter;
- (void)calculatePosePnpSolver:(int)solver;
- (void)dealloc;
- (void)getEulerAngle:(float *)angle;
- (void)getInternal3dLandmarksCoordinates:(const float *)coordinates lm3dPos:(float *)pos;
- (void)getOneInternalLandmarkCoordinates:(const float *)coordinates lmCoord:(const int *)coord lmWeight:(const float *)weight lm3dPos:(float *)pos;
- (void)moveBoundaryLandmarks:(const float *)landmarks output:(float *)output isInput:(BOOL)input;
- (void)project3Dto2D:(float *)d intrinsinc:(float *)intrinsinc extrinsic:(float *)extrinsic numVert:(int)vert out2dpts:(float *)out2dpts;
- (void)projectAndUpdateBoundary;
- (void)reestimateProjectionMatrixPnP;
- (void)resetIdentityAndExpressions;
- (void)updateBoundary3dLandmarkBlendshapes:(const float *)blendshapes numBlendshapes:(int)numBlendshapes pts2D:(const float *)d lm2D:(const float *)lm2D lmBlendshapes:(float *)lmBlendshapes;
- (void)updateBoundaryLandmarkCoordinates:(const float *)coordinates pts2D:(const float *)d lm2D:(const float *)lm2D lm3dPos:(float *)pos;
- (void)updateBoundaryLmForShapeOptimization;
- (void)updateFocalLengthInPixels:(float)pixels;
- (void)updateIdentityShape:(float *)shape;
- (void)updateIntrinsic:(float)intrinsic vc:(float)vc;
- (void)updateMeshAndLm3dAfterExpressionChange;
- (void)updateMeshVertices;
- (void)updateShapeCoeff:(float *)coeff extrinsicMatrix:(float *)matrix pts2D:(float *)d exprWeights:(float *)weights outputblendshapes:(float *)outputblendshapes;
@end

@implementation VCPFaceShapeModel

- (VCPFaceShapeModel)initWithMode:(int)mode
{
  v3 = *&mode;
  v9.receiver = self;
  v9.super_class = VCPFaceShapeModel;
  v4 = [(VCPFaceShapeModel *)&v9 init];
  v5 = v4;
  if (v4 && [(VCPFaceShapeModel *)v4 setupModel:v3])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (BOOL)isIdentityInit
{
  if (self->_shapeUpdateInProgress && self->_processingMode != 1)
  {
    dispatch_group_wait(self->_updateShapeGroup, 0xFFFFFFFFFFFFFFFFLL);
  }

  return self->_identityInit;
}

- (int)setCameraIntrinsics:(float)intrinsics uc:(float)uc vc:(float)vc
{
  *&intrinsic_matrix = intrinsics;
  *(&intrinsic_matrix + 2) = uc;
  dword_1EC42FEE0 = LODWORD(intrinsics);
  dword_1EC42FEE4 = LODWORD(vc);
  v6 = *&dword_1EC42FEE0;
  *self->_intrinsicMatrix = intrinsic_matrix;
  *&self->_intrinsicMatrix[4] = v6;
  LODWORD(self->_intrinsicMatrix[8]) = dword_1EC42FEF0;
  v7 = self->_intrinsicMatrix[2];
  v8 = self->_intrinsicMatrix[5];
  v9 = [VCPPnPSolver alloc];
  *&v10 = self->_intrinsicMatrix[0];
  v11 = [(VCPPnPSolver *)v9 initWithFocalLengthInPixels:1 principalPoint:v10 cameraTowardsPositiveZ:v7, v8];
  poseSolver = self->_poseSolver;
  self->_poseSolver = v11;

  if (self->_poseSolver)
  {
    return 0;
  }

  else
  {
    return -108;
  }
}

- (void)updateIntrinsic:(float)intrinsic vc:(float)vc
{
  *(&intrinsic_matrix + 2) = intrinsic;
  dword_1EC42FEE4 = LODWORD(vc);
  self->_intrinsicMatrix[2] = intrinsic;
  self->_intrinsicMatrix[5] = vc;
  [VCPPnPSolver updateIntrinsic:"updateIntrinsic:vc:" vc:?];
}

- (void)updateFocalLengthInPixels:(float)pixels
{
  dword_1EC42FEE0 = LODWORD(pixels);
  *&intrinsic_matrix = pixels;
  self->_intrinsicMatrix[4] = pixels;
  self->_intrinsicMatrix[0] = pixels;
  poseSolver = self->_poseSolver;
  if (poseSolver)
  {
    [(VCPPnPSolver *)poseSolver updateFocalLengthInPixels:?];
  }
}

- (int)setupModel:(int)model
{
  self->_processingMode = model;
  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  resourceURL = [vcp_mediaAnalysisBundle resourceURL];

  v78 = [MEMORY[0x1E695DFF8] URLWithString:@"face_model_tensor.dat" relativeToURL:resourceURL];
  path = [v78 path];
  v7 = fopen([path UTF8String], "rb");

  v8 = [MEMORY[0x1E695DFF8] URLWithString:@"face_model_landmark_coordinates.dat" relativeToURL:resourceURL];
  path2 = [v8 path];
  v10 = fopen([path2 UTF8String], "rb");

  v11 = [MEMORY[0x1E695DFF8] URLWithString:@"face_model_boundary.dat" relativeToURL:resourceURL];
  path3 = [v11 path];
  v13 = fopen([path3 UTF8String], "rb");

  v14 = -23;
  if (v7 && v10 && v13)
  {
    v15 = [[VCPFaceTensorModel alloc] initWithModelFile:v7];
    tensorModel = self->_tensorModel;
    self->_tensorModel = v15;

    v17 = self->_tensorModel;
    if (!v17)
    {
      v14 = -108;
      goto LABEL_82;
    }

    self->_numVertices = [(VCPFaceTensorModel *)v17 numVertices];
    self->_numBoundaryLms = 11;
    self->_numInternalLms = 52;
    __ptr = 0;
    if (fread(&__ptr, 4uLL, 1uLL, v10) != 1 || __ptr != self->_numInternalLms)
    {
      goto LABEL_80;
    }

    v77 = v8;
    v18 = 3 * __ptr;
    if (__ptr < 0)
    {
      v19 = -1;
    }

    else
    {
      v19 = 12 * __ptr;
    }

    v20 = MEMORY[0x1E69E5398];
    v21 = operator new[](v19, MEMORY[0x1E69E5398]);
    self->_lmCoord = v21;
    v22 = operator new[](v19, v20);
    self->_lmWeight = v22;
    v14 = -108;
    if (!v21)
    {
      goto LABEL_86;
    }

    v8 = v77;
    if (!v22)
    {
      goto LABEL_82;
    }

    if (fread(v21, 4uLL, v18, v10) != v18 || fread(self->_lmWeight, 4uLL, v18, v10) != v18)
    {
      goto LABEL_80;
    }

    numBoundaryLms = self->_numBoundaryLms;
    if (numBoundaryLms < 0)
    {
      v24 = -1;
    }

    else
    {
      v24 = 4 * numBoundaryLms;
    }

    v25 = operator new[](v24, MEMORY[0x1E69E5398]);
    self->_boundaryLmIndices = v25;
    if (!v25)
    {
      goto LABEL_82;
    }

    if (fread(&self->_numBoundaryVertices, 4uLL, 1uLL, v13) != 1)
    {
      goto LABEL_80;
    }

    numBoundaryVertices = self->_numBoundaryVertices;
    if ((numBoundaryVertices & 0x80000000) != 0)
    {
      v27 = -1;
    }

    else
    {
      v27 = 4 * numBoundaryVertices;
    }

    v28 = MEMORY[0x1E69E5398];
    v29 = operator new[](v27, MEMORY[0x1E69E5398]);
    self->_boundaryVertices = v29;
    if (is_mul_ok(numBoundaryVertices, 0xCuLL))
    {
      v30 = 12 * numBoundaryVertices;
    }

    else
    {
      v30 = -1;
    }

    v31 = operator new[](v30, v28);
    self->_chPts = v31;
    v32 = operator new[](numBoundaryVertices, v28);
    v33 = v29;
    self->_chPtSelected = v32;
    v14 = -108;
    if (!v33)
    {
      goto LABEL_86;
    }

    v8 = v77;
    if (!v31 || !v32)
    {
      goto LABEL_82;
    }

    v34 = fread(v33, 4uLL, numBoundaryVertices, v13);
    v35 = self->_numBoundaryVertices;
    if (v34 != v35)
    {
      goto LABEL_80;
    }

    v36 = self->_numBoundaryLms * v35;
    v37 = operator new[](v36, MEMORY[0x1E69E5398]);
    self->_boundaryLandmarkValidity = v37;
    if (!v37)
    {
      goto LABEL_82;
    }

    if (fread(v37, 1uLL, v36, v13) != self->_numBoundaryVertices * self->_numBoundaryLms)
    {
LABEL_80:
      v14 = -19;
      goto LABEL_82;
    }

    self->_boundaryLmUpdated = 0;
    v38 = operator new[](0x7D4uLL, MEMORY[0x1E69E5398]);
    v39 = v38;
    if (v38)
    {
      bzero(v38, 0x7D4uLL);
    }

    self->_curCoeff = v39;
    v40 = operator new[](0xCCuLL, MEMORY[0x1E69E5398]);
    if (v40)
    {
      *(v40 + 188) = 0u;
      v40[10] = 0u;
      v40[11] = 0u;
      v40[8] = 0u;
      v40[9] = 0u;
      v40[6] = 0u;
      v40[7] = 0u;
      v40[4] = 0u;
      v40[5] = 0u;
      v40[2] = 0u;
      v40[3] = 0u;
      *v40 = 0u;
      v40[1] = 0u;
    }

    v76 = v40;
    self->_curExprWeights = v40;
    v41 = operator new[](0xCCuLL, MEMORY[0x1E69E5398]);
    v42 = v41;
    if (v41)
    {
      *(v41 + 188) = 0u;
      v41[10] = 0u;
      v41[11] = 0u;
      v41[8] = 0u;
      v41[9] = 0u;
      v41[6] = 0u;
      v41[7] = 0u;
      v41[4] = 0u;
      v41[5] = 0u;
      v41[2] = 0u;
      v41[3] = 0u;
      *v41 = 0u;
      v41[1] = 0u;
    }

    v74 = v39;
    self->_prevExprWeights = v41;
    v43 = operator new[](0xF51E4uLL, MEMORY[0x1E69E5398]);
    v44 = v43;
    if (v43)
    {
      bzero(v43, 0xF51E4uLL);
    }

    self->_exprWeightDiagMatrix = v44;
    v45 = MEMORY[0x1E69E5398];
    v75 = operator new[](0x9990uLL, MEMORY[0x1E69E5398]);
    self->_lm3dMeanBlendshapes = v75;
    numVertices = self->_numVertices;
    if (1503 * numVertices < 0)
    {
      v47 = -1;
    }

    else
    {
      v47 = 6012 * numVertices;
    }

    v73 = operator new[](v47, v45);
    self->_lm3dBlendshapeComponents = v73;
    v72 = operator new[](0x9990uLL, v45);
    self->_lm3dBlendshapes = v72;
    if (numVertices < 0)
    {
      v48 = -1;
    }

    else
    {
      v48 = 12 * numVertices;
    }

    if (numVertices < 0)
    {
      v49 = -1;
    }

    else
    {
      v49 = 8 * numVertices;
    }

    __dst = operator new[](v48, v45);
    self->_curMesh = __dst;
    v50 = operator new[](v49, v45);
    self->_cur2D = v50;
    if (156 * numVertices < 0)
    {
      v51 = -1;
    }

    else
    {
      v51 = 624 * numVertices;
    }

    v52 = operator new[](v51, v45);
    self->_curBlendshapes = v52;
    v14 = -108;
    if (!v76)
    {
      goto LABEL_86;
    }

    v8 = v77;
    if (!v75 || !v74 || !v42 || !v73 || !v72 || !__dst || !v50 || !v52)
    {
      goto LABEL_82;
    }

    v53 = operator new[](0x7D4uLL, MEMORY[0x1E69E5398]);
    v54 = v53;
    if (v53)
    {
      bzero(v53, 0x7D4uLL);
    }

    self->_transformedCoeff = v54;
    v55 = operator new[](0x2F4uLL, MEMORY[0x1E69E5398]);
    if (v55)
    {
      v56 = v55;
      bzero(v55, 0x2F4uLL);
      self->_blendShapeDelta = v56;
      if (v54)
      {
        memcpy(__dst, [(VCPFaceTensorModel *)self->_tensorModel meanBlendshape], 12 * self->_numVertices);
        memcpy(self->_curBlendshapes, [(VCPFaceTensorModel *)self->_tensorModel meanBlendshape], 624 * self->_numVertices);
        v57 = 156 * self->_numVertices;
        if (v57 < 0)
        {
          v58 = -1;
        }

        else
        {
          v58 = 4 * v57;
        }

        v59 = MEMORY[0x1E69E5398];
        v60 = operator new[](v58, MEMORY[0x1E69E5398]);
        self->_asyncBlendshapes = v60;
        v61 = operator new[](0x9990uLL, v59);
        self->_asyncLmBlendshapes = v61;
        v14 = -108;
        if (v60)
        {
          v8 = v77;
          if (v61)
          {
            v62 = dispatch_queue_create("com.apple.mediaanalysisd.VCPFaceShapeUpdate", 0);
            updateShapeQueue = self->_updateShapeQueue;
            self->_updateShapeQueue = v62;

            v64 = dispatch_group_create();
            updateShapeGroup = self->_updateShapeGroup;
            self->_updateShapeGroup = v64;

            v66 = 0;
            v67 = 0;
            do
            {
              [(VCPFaceShapeModel *)self getInternal3dLandmarksCoordinates:[(VCPFaceTensorModel *)self->_tensorModel meanBlendshape]+ 4 * v66 * self->_numVertices lm3dPos:&self->_lm3dMeanBlendshapes[v67]];
              v67 += 189;
              v66 += 3;
            }

            while (v66 != 156);
            v68 = 0;
            v69 = 0;
            do
            {
              [(VCPFaceShapeModel *)self getInternal3dLandmarksCoordinates:[(VCPFaceTensorModel *)self->_tensorModel componentsBlendshape]+ 4 * v68 * self->_numVertices lm3dPos:&self->_lm3dBlendshapeComponents[v69]];
              v69 += 189;
              v68 += 3;
            }

            while (v68 != 1503);
            memcpy(self->_lm3dBlendshapes, self->_lm3dMeanBlendshapes, 0x9990uLL);
            memcpy(self->_LM3D, self->_lm3dMeanBlendshapes, 12 * self->_numInternalLms);
            self->_detectionModeCounterShapeModel = 0;
            self->_numFrmsSinceLastShapeUpdate = 41;
            self->_identityInit = 0;
            self->_shapeUpdateInProgress = 0;
            self->_eulerAngle[0] = 0.0;
            *&self->_eulerAngle[1] = 0;
            self->_vertexCount = 1220;
            operator new[]();
          }

          goto LABEL_82;
        }

LABEL_86:
        v8 = v77;
        goto LABEL_82;
      }
    }

    else
    {
      self->_blendShapeDelta = 0;
    }

    v14 = -108;
    goto LABEL_86;
  }

  if (!v7)
  {
    if (!v10)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

LABEL_82:
  fclose(v7);
  if (v10)
  {
LABEL_76:
    fclose(v10);
  }

LABEL_77:
  if (v13)
  {
    fclose(v13);
  }

  return v14;
}

- (void)dealloc
{
  lmCoord = self->_lmCoord;
  if (lmCoord)
  {
    MEMORY[0x1CCA95C10](lmCoord, 0x1000C8052888210);
  }

  lmWeight = self->_lmWeight;
  if (lmWeight)
  {
    MEMORY[0x1CCA95C10](lmWeight, 0x1000C8052888210);
  }

  boundaryLmIndices = self->_boundaryLmIndices;
  if (boundaryLmIndices)
  {
    MEMORY[0x1CCA95C10](boundaryLmIndices, 0x1000C8052888210);
  }

  boundaryVertices = self->_boundaryVertices;
  if (boundaryVertices)
  {
    MEMORY[0x1CCA95C10](boundaryVertices, 0x1000C8052888210);
  }

  chPts = self->_chPts;
  if (chPts)
  {
    MEMORY[0x1CCA95C10](chPts, 0x1000C803E1C8BA9);
  }

  chPtSelected = self->_chPtSelected;
  if (chPtSelected)
  {
    MEMORY[0x1CCA95C10](chPtSelected, 0x1000C8077774924);
  }

  boundaryLandmarkValidity = self->_boundaryLandmarkValidity;
  if (boundaryLandmarkValidity)
  {
    MEMORY[0x1CCA95C10](boundaryLandmarkValidity, 0x1000C8077774924);
  }

  curCoeff = self->_curCoeff;
  if (curCoeff)
  {
    MEMORY[0x1CCA95C10](curCoeff, 0x1000C8052888210);
  }

  curExprWeights = self->_curExprWeights;
  if (curExprWeights)
  {
    MEMORY[0x1CCA95C10](curExprWeights, 0x1000C8052888210);
  }

  prevExprWeights = self->_prevExprWeights;
  if (prevExprWeights)
  {
    MEMORY[0x1CCA95C10](prevExprWeights, 0x1000C8052888210);
  }

  exprWeightDiagMatrix = self->_exprWeightDiagMatrix;
  if (exprWeightDiagMatrix)
  {
    MEMORY[0x1CCA95C10](exprWeightDiagMatrix, 0x1000C8052888210);
  }

  lm3dMeanBlendshapes = self->_lm3dMeanBlendshapes;
  if (lm3dMeanBlendshapes)
  {
    MEMORY[0x1CCA95C10](lm3dMeanBlendshapes, 0x1000C8052888210);
  }

  lm3dBlendshapeComponents = self->_lm3dBlendshapeComponents;
  if (lm3dBlendshapeComponents)
  {
    MEMORY[0x1CCA95C10](lm3dBlendshapeComponents, 0x1000C8052888210);
  }

  lm3dBlendshapes = self->_lm3dBlendshapes;
  if (lm3dBlendshapes)
  {
    MEMORY[0x1CCA95C10](lm3dBlendshapes, 0x1000C8052888210);
  }

  curMesh = self->_curMesh;
  if (curMesh)
  {
    MEMORY[0x1CCA95C10](curMesh, 0x1000C8052888210);
  }

  cur2D = self->_cur2D;
  if (cur2D)
  {
    MEMORY[0x1CCA95C10](cur2D, 0x1000C8052888210);
  }

  curBlendshapes = self->_curBlendshapes;
  if (curBlendshapes)
  {
    MEMORY[0x1CCA95C10](curBlendshapes, 0x1000C8052888210);
  }

  transformedCoeff = self->_transformedCoeff;
  if (transformedCoeff)
  {
    MEMORY[0x1CCA95C10](transformedCoeff, 0x1000C8052888210);
  }

  blendShapeDelta = self->_blendShapeDelta;
  if (blendShapeDelta)
  {
    MEMORY[0x1CCA95C10](blendShapeDelta, 0x1000C8052888210);
  }

  asyncBlendshapes = self->_asyncBlendshapes;
  if (asyncBlendshapes)
  {
    MEMORY[0x1CCA95C10](asyncBlendshapes, 0x1000C8052888210);
  }

  asyncLmBlendshapes = self->_asyncLmBlendshapes;
  if (asyncLmBlendshapes)
  {
    MEMORY[0x1CCA95C10](asyncLmBlendshapes, 0x1000C8052888210);
  }

  v24 = *self->_meshVertices;
  if (v24)
  {
    MEMORY[0x1CCA95C10](v24, 0x1000C80451B5BE8);
  }

  v25.receiver = self;
  v25.super_class = VCPFaceShapeModel;
  [(VCPFaceShapeModel *)&v25 dealloc];
}

- (void)getEulerAngle:(float *)angle
{
  v3 = *self->_eulerAngle;
  angle[2] = self->_eulerAngle[2];
  *angle = v3;
  v4 = dbl_1C9F614D0[angle[2] < 0.0] + angle[2];
  angle[2] = v4;
}

- (void)project3Dto2D:(float *)d intrinsinc:(float *)intrinsinc extrinsic:(float *)extrinsic numVert:(int)vert out2dpts:(float *)out2dpts
{
  LODWORD(v8) = vert;
  v18 = *MEMORY[0x1E69E9840];
  matrix_multiplication(intrinsinc, extrinsic, __C, 3, 3, 4);
  if (v8 >= 1)
  {
    v8 = v8;
    do
    {
      __B = *d;
      v16 = *(d + 2);
      v17 = 1065353216;
      matrix_multiplication(__C, &__B, &v13, 3, 4, 1);
      v10 = &v14;
      v11 = vld1_dup_f32(v10);
      *out2dpts = vdiv_f32(v13, v11);
      out2dpts += 2;
      d += 3;
      --v8;
    }

    while (v8);
  }
}

- (void)getOneInternalLandmarkCoordinates:(const float *)coordinates lmCoord:(const int *)coord lmWeight:(const float *)weight lm3dPos:(float *)pos
{
  v6 = 0;
  v13 = *MEMORY[0x1E69E9840];
  v11 = *coord;
  v12 = coord[2];
  v9 = *weight;
  v10 = *(weight + 2);
  do
  {
    v7 = 0;
    pos[v6] = 0.0;
    v8 = 0.0;
    do
    {
      v8 = v8 + (coordinates[3 * *(&v11 + v7) + v6] * *(&v9 + v7));
      pos[v6] = v8;
      v7 += 4;
    }

    while (v7 != 12);
    ++v6;
  }

  while (v6 != 3);
}

- (void)updateBoundaryLandmarkCoordinates:(const float *)coordinates pts2D:(const float *)d lm2D:(const float *)lm2D lm3dPos:(float *)pos
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!self->_boundaryLmUpdated)
  {
    v7 = v16 - ((12 * self->_numBoundaryVertices + 15) & 0x1FFFFFFFF0);
    numBoundaryVertices = self->_numBoundaryVertices;
    if (numBoundaryVertices >= 1)
    {
      v9 = 0;
      boundaryVertices = self->_boundaryVertices;
      v11 = v7 + 8;
      do
      {
        *(v11 - 1) = *&d[2 * boundaryVertices[v9]];
        *v11 = v9;
        v11 += 3;
        ++v9;
      }

      while (numBoundaryVertices != v9);
    }

    getExtendedFaceHull(v7, numBoundaryVertices, self->_chPts);
  }

  if (self->_numBoundaryLms >= 1)
  {
    v12 = 0;
    do
    {
      v13 = &pos[3 * v12 + 3 * self->_numInternalLms];
      v14 = &coordinates[3 * self->_boundaryLmIndices[v12]];
      v15 = *v14;
      v13[2] = v14[2];
      *v13 = v15;
      ++v12;
    }

    while (v12 < self->_numBoundaryLms);
  }
}

- (void)getInternal3dLandmarksCoordinates:(const float *)coordinates lm3dPos:(float *)pos
{
  if (self->_numInternalLms >= 1)
  {
    v17 = v9;
    v18 = v8;
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v4;
    v23 = v10;
    v24 = v11;
    v15 = 0;
    v16 = 0;
    do
    {
      [(VCPFaceShapeModel *)self getOneInternalLandmarkCoordinates:coordinates lmCoord:&self->_lmCoord[v15] lmWeight:&self->_lmWeight[v15] lm3dPos:pos, v17, v18, v19, v20, v21, v22, v23, v24];
      ++v16;
      pos += 3;
      v15 += 3;
    }

    while (v16 < self->_numInternalLms);
  }
}

- (void)updateBoundary3dLandmarkBlendshapes:(const float *)blendshapes numBlendshapes:(int)numBlendshapes pts2D:(const float *)d lm2D:(const float *)lm2D lmBlendshapes:(float *)lmBlendshapes
{
  if (numBlendshapes >= 1)
  {
    v20 = v12;
    v21 = v11;
    v22 = v10;
    v23 = v9;
    v24 = v8;
    v25 = v7;
    v26 = v13;
    v27 = v14;
    numBlendshapesCopy = numBlendshapes;
    do
    {
      [(VCPFaceShapeModel *)self updateBoundaryLandmarkCoordinates:blendshapes pts2D:self->_cur2D lm2D:lm2D lm3dPos:lmBlendshapes, v20, v21, v22, v23, v24, v25, v26, v27];
      blendshapes += 3 * self->_numVertices;
      lmBlendshapes += 189;
      --numBlendshapesCopy;
    }

    while (numBlendshapesCopy);
  }
}

- (void)moveBoundaryLandmarks:(const float *)landmarks output:(float *)output isInput:(BOOL)input
{
  inputCopy = input;
  memcpy(output, landmarks, 0x140uLL);
  if (inputCopy)
  {
    v9 = *(landmarks + 106);
    *(output + 20) = *(landmarks + 102);
    *(output + 21) = v9;
    v10 = *(landmarks + 110);
    v11 = *(landmarks + 114);
    v12 = *(landmarks + 122);
    *(output + 24) = *(landmarks + 118);
    *(output + 25) = v12;
    *(output + 22) = v10;
    *(output + 23) = v11;
    v13 = &output[2 * self->_numInternalLms];
    v14 = 8 * self->_numBoundaryLms;

    memcpy(v13, landmarks + 80, v14);
  }

  else
  {
    memcpy(output + 80, &landmarks[2 * self->_numInternalLms], 8 * self->_numBoundaryLms);
    v15 = *(landmarks + 21);
    *(output + 102) = *(landmarks + 20);
    *(output + 106) = v15;
    v16 = *(landmarks + 25);
    v18 = *(landmarks + 22);
    v17 = *(landmarks + 23);
    *(output + 118) = *(landmarks + 24);
    *(output + 122) = v16;
    *(output + 110) = v18;
    *(output + 114) = v17;
  }
}

- (void)projectAndUpdateBoundary
{
  [(VCPFaceShapeModel *)self project3Dto2D:self->_curMesh intrinsinc:self->_intrinsicMatrix extrinsic:self->_extrinsicMatrix numVert:self->_numVertices out2dpts:self->_cur2D];
  self->_boundaryLmUpdated = 0;
  curMesh = self->_curMesh;
  cur2D = self->_cur2D;

  [(VCPFaceShapeModel *)self updateBoundaryLandmarkCoordinates:curMesh pts2D:cur2D lm2D:self->_LM2D lm3dPos:self->_LM3D];
}

- (void)updateMeshAndLm3dAfterExpressionChange
{
  [(VCPFaceTensorModel *)self->_tensorModel calculateMesh:self->_curExprWeights numVertices:self->_numVertices blendshapes:self->_curBlendshapes outputMesh:self->_curMesh];
  tensorModel = self->_tensorModel;
  curExprWeights = self->_curExprWeights;
  lm3dBlendshapes = self->_lm3dBlendshapes;

  [(VCPFaceTensorModel *)tensorModel calculateMesh:curExprWeights numVertices:63 blendshapes:lm3dBlendshapes outputMesh:self->_LM3D];
}

- (void)resetIdentityAndExpressions
{
  bzero(self->_curCoeff, 0x7D4uLL);
  curExprWeights = self->_curExprWeights;
  *(curExprWeights + 47) = 0u;
  *(curExprWeights + 10) = 0u;
  *(curExprWeights + 11) = 0u;
  *(curExprWeights + 8) = 0u;
  *(curExprWeights + 9) = 0u;
  *(curExprWeights + 6) = 0u;
  *(curExprWeights + 7) = 0u;
  *(curExprWeights + 4) = 0u;
  *(curExprWeights + 5) = 0u;
  *(curExprWeights + 2) = 0u;
  *(curExprWeights + 3) = 0u;
  *curExprWeights = 0u;
  *(curExprWeights + 1) = 0u;
  memcpy(self->_curMesh, [(VCPFaceTensorModel *)self->_tensorModel meanBlendshape], 12 * self->_numVertices);
  memcpy(self->_curBlendshapes, [(VCPFaceTensorModel *)self->_tensorModel meanBlendshape], 624 * self->_numVertices);
  memcpy(self->_lm3dBlendshapes, self->_lm3dMeanBlendshapes, 0x9990uLL);
  memcpy(self->_LM3D, self->_lm3dMeanBlendshapes, 12 * self->_numInternalLms);
  self->_identityInit = 0;
  self->_detectionModeCounterShapeModel = 0;
  self->_numFrmsSinceLastShapeUpdate = 41;
  self->_eulerAngle[0] = 0.0;
  *&self->_eulerAngle[1] = 0;
}

- (void)updateIdentityShape:(float *)shape
{
  if (fabsf(self->_eulerAngle[0]) <= 20.0)
  {
    block[7] = v3;
    block[8] = v4;
    if (fabsf(self->_eulerAngle[1]) <= 20.0 && self->_numFrmsSinceLastShapeUpdate >= 41 && !self->_shapeUpdateInProgress)
    {
      [(VCPFaceShapeModel *)self updateBoundaryLmForShapeOptimization];
      memcpy(self->_asyncBlendshapes, self->_curBlendshapes, 624 * self->_numVertices);
      memcpy(self->_asyncLmBlendshapes, self->_lm3dBlendshapes, 0x9990uLL);
      *self->_asyncExtMat = *self->_extrinsicMatrix;
      v7 = *&self->_extrinsicMatrix[8];
      *&self->_asyncExtMat[4] = *&self->_extrinsicMatrix[4];
      *&self->_asyncExtMat[8] = v7;
      memcpy(self->_asyncLm2d, shape, sizeof(self->_asyncLm2d));
      curExprWeights = self->_curExprWeights;
      *self->_asyncWeights = *curExprWeights;
      v9 = *(curExprWeights + 4);
      v11 = *(curExprWeights + 1);
      v10 = *(curExprWeights + 2);
      *&self->_asyncWeights[12] = *(curExprWeights + 3);
      *&self->_asyncWeights[16] = v9;
      *&self->_asyncWeights[4] = v11;
      *&self->_asyncWeights[8] = v10;
      v12 = *(curExprWeights + 8);
      v14 = *(curExprWeights + 5);
      v13 = *(curExprWeights + 6);
      *&self->_asyncWeights[28] = *(curExprWeights + 7);
      *&self->_asyncWeights[32] = v12;
      *&self->_asyncWeights[20] = v14;
      *&self->_asyncWeights[24] = v13;
      v16 = *(curExprWeights + 10);
      v15 = *(curExprWeights + 11);
      v17 = *(curExprWeights + 9);
      *&self->_asyncWeights[47] = *(curExprWeights + 47);
      *&self->_asyncWeights[40] = v16;
      *&self->_asyncWeights[44] = v15;
      *&self->_asyncWeights[36] = v17;
      if (self->_processingMode == 2)
      {
        [VCPFaceShapeModel updateShapeCoeff:"updateShapeCoeff:extrinsicMatrix:pts2D:exprWeights:outputblendshapes:" extrinsicMatrix:self->_asyncLmBlendshapes pts2D:self->_asyncExtMat exprWeights:self->_asyncLm2d outputblendshapes:?];
        memcpy(self->_curBlendshapes, self->_asyncBlendshapes, 624 * self->_numVertices);
        memcpy(self->_lm3dBlendshapes, self->_asyncLmBlendshapes, 0x9990uLL);
      }

      else
      {
        updateShapeGroup = self->_updateShapeGroup;
        updateShapeQueue = self->_updateShapeQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __41__VCPFaceShapeModel_updateIdentityShape___block_invoke;
        block[3] = &unk_1E834BDC0;
        block[4] = self;
        dispatch_group_async(updateShapeGroup, updateShapeQueue, block);
      }

      self->_numFrmsSinceLastShapeUpdate = 0;
    }
  }
}

void *__41__VCPFaceShapeModel_updateIdentityShape___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1636) = 1;
  [*(a1 + 32) updateShapeCoeff:*(*(a1 + 32) + 1672) extrinsicMatrix:*(a1 + 32) + 1680 pts2D:*(a1 + 32) + 1728 exprWeights:*(a1 + 32) + 2232 outputblendshapes:*(*(a1 + 32) + 1664)];
  memcpy(*(*(a1 + 32) + 128), *(*(a1 + 32) + 1664), 624 * *(*(a1 + 32) + 16));
  result = memcpy(*(*(a1 + 32) + 1608), *(*(a1 + 32) + 1672), 0x9990uLL);
  *(*(a1 + 32) + 1636) = 0;
  return result;
}

- (BOOL)trackFaceMesh:(float *)mesh
{
  [(VCPFaceShapeModel *)self moveBoundaryLandmarks:mesh output:self->_LM2D isInput:1];
  [(VCPFaceTensorModel *)self->_tensorModel calculateMesh:self->_curExprWeights numVertices:self->_numVertices blendshapes:self->_curBlendshapes outputMesh:self->_curMesh];
  [(VCPFaceShapeModel *)self projectAndUpdateBoundary];
  v5 = [(VCPFaceShapeModel *)self optimizeProjectionMatrix:2 tracking:1 firstPass:1];
  if (v5)
  {
    [(VCPFaceShapeModel *)self projectAndUpdateBoundary];
    [(VCPFaceShapeModel *)self optimizeProjectionMatrix:4 tracking:1 firstPass:0];
    [(VCPFaceShapeModel *)self project3Dto2D:self->_curMesh intrinsinc:self->_intrinsicMatrix extrinsic:self->_extrinsicMatrix numVert:self->_numVertices out2dpts:self->_cur2D];
    self->_boundaryLmUpdated = 0;
    [(VCPFaceShapeModel *)self updateBoundary3dLandmarkBlendshapes:self->_curBlendshapes numBlendshapes:52 pts2D:self->_cur2D lm2D:self->_LM2D lmBlendshapes:self->_lm3dBlendshapes];
    [(VCPFaceShapeModel *)self calculateBlendshapeWeights:self->_curExprWeights prevWeights:self->_prevExprWeights lmBlendshapes:self->_lm3dBlendshapes maxIter:5];
    curExprWeights = self->_curExprWeights;
    prevExprWeights = self->_prevExprWeights;
    v8 = *(curExprWeights + 4);
    v10 = *(curExprWeights + 1);
    v9 = *(curExprWeights + 2);
    *(prevExprWeights + 3) = *(curExprWeights + 3);
    *(prevExprWeights + 4) = v8;
    *(prevExprWeights + 1) = v10;
    *(prevExprWeights + 2) = v9;
    v11 = *(curExprWeights + 8);
    v13 = *(curExprWeights + 5);
    v12 = *(curExprWeights + 6);
    *(prevExprWeights + 7) = *(curExprWeights + 7);
    *(prevExprWeights + 8) = v11;
    *(prevExprWeights + 5) = v13;
    *(prevExprWeights + 6) = v12;
    v15 = *(curExprWeights + 10);
    v14 = *(curExprWeights + 11);
    v16 = *(curExprWeights + 9);
    *(prevExprWeights + 47) = *(curExprWeights + 47);
    *(prevExprWeights + 10) = v15;
    *(prevExprWeights + 11) = v14;
    *(prevExprWeights + 9) = v16;
    *prevExprWeights = *curExprWeights;
    [(VCPFaceShapeModel *)self updateMeshAndLm3dAfterExpressionChange];
    [(VCPFaceShapeModel *)self projectAndUpdateBoundary];
    [(VCPFaceShapeModel *)self optimizeProjectionMatrix:1 tracking:1 firstPass:0];
    [(VCPFaceShapeModel *)self projectAndUpdateBoundary];
    [(VCPFaceShapeModel *)self project3Dto2D:self->_LM3D intrinsinc:self->_intrinsicMatrix extrinsic:self->_extrinsicMatrix numVert:63 out2dpts:self->_LM2D];
    [(VCPFaceShapeModel *)self moveBoundaryLandmarks:self->_LM2D output:mesh isInput:0];
    ++self->_numFrmsSinceLastShapeUpdate;
  }

  return v5;
}

- (void)updateShapeCoeff:(float *)coeff extrinsicMatrix:(float *)matrix pts2D:(float *)d exprWeights:(float *)weights outputblendshapes:(float *)outputblendshapes
{
  LODWORD(v10) = 5;
  [(VCPFaceShapeModel *)self calculateIdentityCoefficients:self->_curCoeff extrinsicMatrix:matrix pts2D:d exprWeights:weights lm3DMeanBlendshapes:self->_lm3dMeanBlendshapes lm3DComponents:self->_lm3dBlendshapeComponents maxIter:v10];
  [(VCPFaceTensorModel *)self->_tensorModel calculateModelBlendshapes:self->_curCoeff outputBlendshapes:outputblendshapes];
  CalculateBlendshapes(self->_curCoeff, self->_transformedCoeff, self->_blendShapeDelta, 63, 501, 52, [(VCPFaceTensorModel *)self->_tensorModel tensorCoeff], self->_lm3dMeanBlendshapes, self->_lm3dBlendshapeComponents, [(VCPFaceTensorModel *)self->_tensorModel blendshapeComponentIndex], coeff);
  self->_identityInit = 1;
}

- (void)updateBoundaryLmForShapeOptimization
{
  [(VCPFaceShapeModel *)self updateBoundary3dLandmarkBlendshapes:[(VCPFaceTensorModel *)self->_tensorModel meanBlendshape] numBlendshapes:52 pts2D:self->_cur2D lm2D:self->_LM2D lmBlendshapes:self->_lm3dMeanBlendshapes];
  [(VCPFaceShapeModel *)self updateBoundary3dLandmarkBlendshapes:self->_curBlendshapes numBlendshapes:52 pts2D:self->_cur2D lm2D:self->_LM2D lmBlendshapes:self->_lm3dBlendshapes];
  componentsBlendshape = [(VCPFaceTensorModel *)self->_tensorModel componentsBlendshape];
  cur2D = self->_cur2D;
  lm3dBlendshapeComponents = self->_lm3dBlendshapeComponents;

  [(VCPFaceShapeModel *)self updateBoundary3dLandmarkBlendshapes:componentsBlendshape numBlendshapes:501 pts2D:cur2D lm2D:self->_LM2D lmBlendshapes:lm3dBlendshapeComponents];
}

- (void)reestimateProjectionMatrixPnP
{
  [(VCPFaceShapeModel *)self calculatePosePnpSolver:self->_numInternalLms];
  [(VCPFaceShapeModel *)self projectAndUpdateBoundary];

  [(VCPFaceShapeModel *)self calculatePosePnpSolver:63];
}

- (BOOL)fitOneImage:(float *)image
{
  ++self->_detectionModeCounterShapeModel;
  [(VCPFaceShapeModel *)self moveBoundaryLandmarks:image output:self->_LM2D isInput:1];
  detectionModeCounterShapeModel = self->_detectionModeCounterShapeModel;
  if (detectionModeCounterShapeModel > 3)
  {
    if (detectionModeCounterShapeModel != 4)
    {
      [(VCPFaceShapeModel *)self reestimateProjectionMatrixPnP];
    }
  }

  else if (!self->_identityInit)
  {
    [(VCPFaceShapeModel *)self reestimateProjectionMatrixPnP];
    [(VCPFaceShapeModel *)self projectAndUpdateBoundary];
    v5 = [(VCPFaceShapeModel *)self optimizeProjectionMatrix:2 tracking:0 firstPass:1];
    if (v5)
    {
      [(VCPFaceShapeModel *)self projectAndUpdateBoundary];
      if (![(VCPFaceShapeModel *)self optimizeProjectionMatrix:5 tracking:0 firstPass:0])
      {
        LOBYTE(v5) = 0;
        return v5;
      }

LABEL_12:
      LOBYTE(v5) = 1;
      return v5;
    }

    return v5;
  }

  [(VCPFaceShapeModel *)self projectAndUpdateBoundary];
  v5 = [(VCPFaceShapeModel *)self optimizeProjectionMatrix:2 tracking:0 firstPass:0];
  if (v5)
  {
    [(VCPFaceShapeModel *)self projectAndUpdateBoundary];
    v5 = [(VCPFaceShapeModel *)self optimizeProjectionMatrix:5 tracking:0 firstPass:0];
    if (v5)
    {
      [(VCPFaceShapeModel *)self project3Dto2D:self->_curMesh intrinsinc:self->_intrinsicMatrix extrinsic:self->_extrinsicMatrix numVert:self->_numVertices out2dpts:self->_cur2D];
      self->_boundaryLmUpdated = 0;
      [(VCPFaceShapeModel *)self updateBoundary3dLandmarkBlendshapes:self->_curBlendshapes numBlendshapes:52 pts2D:self->_cur2D lm2D:self->_LM2D lmBlendshapes:self->_lm3dBlendshapes];
      [(VCPFaceShapeModel *)self calculateBlendshapeWeights:self->_curExprWeights prevWeights:0 lmBlendshapes:self->_lm3dBlendshapes maxIter:15];
      curExprWeights = self->_curExprWeights;
      prevExprWeights = self->_prevExprWeights;
      v8 = *(curExprWeights + 4);
      v10 = *(curExprWeights + 1);
      v9 = *(curExprWeights + 2);
      *(prevExprWeights + 3) = *(curExprWeights + 3);
      *(prevExprWeights + 4) = v8;
      *(prevExprWeights + 1) = v10;
      *(prevExprWeights + 2) = v9;
      v11 = *(curExprWeights + 8);
      v13 = *(curExprWeights + 5);
      v12 = *(curExprWeights + 6);
      *(prevExprWeights + 7) = *(curExprWeights + 7);
      *(prevExprWeights + 8) = v11;
      *(prevExprWeights + 5) = v13;
      *(prevExprWeights + 6) = v12;
      v15 = *(curExprWeights + 10);
      v14 = *(curExprWeights + 11);
      v16 = *(curExprWeights + 9);
      *(prevExprWeights + 47) = *(curExprWeights + 47);
      *(prevExprWeights + 10) = v15;
      *(prevExprWeights + 11) = v14;
      *(prevExprWeights + 9) = v16;
      *prevExprWeights = *curExprWeights;
      [(VCPFaceShapeModel *)self updateMeshAndLm3dAfterExpressionChange];
      [(VCPFaceShapeModel *)self projectAndUpdateBoundary];
      [(VCPFaceShapeModel *)self optimizeProjectionMatrix:2 tracking:0 firstPass:0];
      [(VCPFaceShapeModel *)self project3Dto2D:self->_curMesh intrinsinc:self->_intrinsicMatrix extrinsic:self->_extrinsicMatrix numVert:self->_numVertices out2dpts:self->_cur2D];
      self->_boundaryLmUpdated = 0;
      if (!self->_identityInit)
      {
        [(VCPFaceShapeModel *)self updateIdentityShape:self->_LM2D];
      }

      goto LABEL_12;
    }
  }

  return v5;
}

- (void)calculateBlendshapeWeights:(float *)weights prevWeights:(float *)prevWeights lmBlendshapes:(float *)blendshapes maxIter:(int)iter
{
  v7 = *MEMORY[0x1E69E9840];
  matrix_multiplication(self->_intrinsicMatrix, self->_extrinsicMatrix, __C, 3, 3, 4);
  operator new();
}

- (void)calculateIdentityCoefficients:(float *)coefficients extrinsicMatrix:(float *)matrix pts2D:(float *)d exprWeights:(float *)weights lm3DMeanBlendshapes:(float *)blendshapes lm3DComponents:(float *)components maxIter:(int)iter
{
  v17 = *MEMORY[0x1E69E9840];
  matrix_multiplication(self->_intrinsicMatrix, matrix, __C, 3, 3, 4);
  bzero(self->_exprWeightDiagMatrix, 0xF51E4uLL);
  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (v11)
    {
      v13 = weights[v11 - 1];
    }

    else
    {
      v13 = 1.0;
    }

    v14 = [(VCPFaceTensorModel *)self->_tensorModel blendshapeComponentIndex][4 * v11];
    if (v14 >= 1)
    {
      v15 = &self->_exprWeightDiagMatrix[502 * v12];
      v12 += v14;
      do
      {
        *v15 = v13;
        v15 += 502;
        --v14;
      }

      while (v14);
    }

    if (++v11 == 52)
    {
      [(VCPFaceTensorModel *)self->_tensorModel tensorCoeff];
      [(VCPFaceTensorModel *)self->_tensorModel blendshapeComponentIndex];
      operator new();
    }
  }
}

- (matrix<double,)getPoseParam
{
  *retstr->var0.var0 = vcvtq_f64_f32(*(&self[6].var0.var0[1] + 4));
  v3 = *&self[5].var0.var0[3];
  retstr->var0.var0[2] = *(&self[6].var0.var0[2] + 1);
  retstr->var0.var0[3] = v3;
  v4 = *&self[6].var0.var0[1];
  retstr->var0.var0[4] = *&self[5].var0.var0[5];
  retstr->var0.var0[5] = v4;
  return self;
}

- (BOOL)optimizeProjectionMatrix:(int)matrix tracking:(BOOL)tracking firstPass:(BOOL)pass
{
  v6 = *MEMORY[0x1E69E9840];
  [(VCPFaceShapeModel *)self getPoseParam];
  operator new();
}

- (void)calculatePosePnpSolver:(int)solver
{
  if (![(VCPPnPSolver *)self->_poseSolver estimateExtrinsicsWith:self->_LM2D andPoints3D:self->_LM3D andNumPoints:*&solver])
  {
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[0] = v4;
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[1] = v5;
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[2] = v6;
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[3] = v7;
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[4] = v8;
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[5] = v9;
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[6] = v10;
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[7] = v11;
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[8] = v12;
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[9] = v13;
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[10] = v14;
    [(VCPPnPSolver *)self->_poseSolver pose];
    self->_extrinsicMatrix[11] = v15;
    *self->_rotMatrix = *self->_extrinsicMatrix;
    self->_rotMatrix[2] = self->_extrinsicMatrix[2];
    *&self->_rotMatrix[3] = *&self->_extrinsicMatrix[4];
    self->_rotMatrix[5] = self->_extrinsicMatrix[6];
    *&self->_rotMatrix[6] = *&self->_extrinsicMatrix[8];
    self->_rotMatrix[8] = self->_extrinsicMatrix[10];

    GetEulerAngleFromMatrix(self->_rotMatrix, self->_eulerAngle);
  }
}

- (__n64)getPose
{
  result.n64_u32[0] = *(self + 252);
  result.n64_u32[1] = *(self + 268);
  return result;
}

- (id)blendShapes
{
  if (self->_curExprWeights)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    for (i = 0; i != 51; ++i)
    {
      v5 = VCPBlendShapeLocationFromIndex(i);
      if (v5)
      {
        *&v6 = self->_curExprWeights[i];
        v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
        [dictionary setObject:v7 forKeyedSubscript:v5];
      }
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (void)updateMeshVertices
{
  v2 = 0;
  v3 = 0x3FFFFFFFFFFFF1B4;
  do
  {
    *(*self->_meshVertices + v2) = self->_curMesh[v3 + 3660] / 1000.0;
    *(*self->_meshVertices + v2 + 4) = self->_curMesh[v3 + 3661] / 1000.0;
    *(*self->_meshVertices + v2 + 8) = self->_curMesh[v3 + 3662] / 1000.0;
    v2 += 16;
    v3 += 3;
  }

  while (v3 * 4);
}

@end