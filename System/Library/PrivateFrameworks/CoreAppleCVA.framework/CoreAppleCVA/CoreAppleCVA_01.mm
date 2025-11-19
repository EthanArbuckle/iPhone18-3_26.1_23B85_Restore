double cva::SO3AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::SO3AlgebraStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

double cva::SO3AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::exp@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = v3 * v3 + v4 * v4 + v5 * v5;
  if (v6 >= 0.0000002635)
  {
    v10 = sqrt(v6);
    v11 = __sincos_stret(v10);
    cosval = v11.__cosval;
    v8 = v11.__sinval / v10;
    v7 = 1.0 / v6 * (1.0 - v11.__cosval);
  }

  else
  {
    v7 = 0.5 - v6 * (v6 / -720.0 + 0.0416666667);
    v8 = 1.0 - v6 * (0.166666667 - v6 * (v6 / -5040.0 + 0.00833333333));
    cosval = 1.0 - v6 * v7;
  }

  v12 = v3 * v7;
  v13 = v4 * v7;
  v14 = cosval + v3 * v7 * v3;
  v15 = cosval + v5 * v7 * v5;
  v16 = cosval + v13 * v4;
  a2[8] = v15;
  v17 = v4 * v12;
  v18 = v5 * v12;
  v19 = v5 * v13;
  v20 = v3 * v8;
  v21 = v4 * v8;
  v22 = v5 * v8;
  *a2 = v14;
  a2[1] = v17 + v22;
  a2[6] = v21 + v18;
  a2[7] = v19 - v20;
  a2[2] = v18 - v21;
  a2[3] = v17 - v22;
  result = v19 + v20;
  a2[4] = v16;
  a2[5] = v19 + v20;
  return result;
}

__n128 cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::rplus(uint64_t a1, double *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = v4 * v4 + v3 * v3 + v5 * v5;
  if (v6 >= 0.0000002635)
  {
    v10 = sqrt(v6);
    v11 = __sincos_stret(v10);
    cosval = v11.__cosval;
    v8 = v11.__sinval / v10;
    v7 = 1.0 / v6 * (1.0 - v11.__cosval);
  }

  else
  {
    v7 = 0.5 - v6 * (v6 / -720.0 + 0.0416666667);
    v8 = 1.0 - v6 * (0.166666667 - v6 * (v6 / -5040.0 + 0.00833333333));
    cosval = 1.0 - v6 * v7;
  }

  v12 = v3 * v7;
  v13 = cosval + v4 * v7 * v4;
  v14 = cosval + v3 * v7 * v3;
  *&v23[8] = cosval + v5 * v7 * v5;
  v15 = v3 * (v4 * v7);
  v16 = v5 * (v4 * v7);
  v17 = v5 * v12;
  v18 = v4 * v8;
  v19 = v5 * v8;
  *v23 = v13;
  *&v23[1] = v15 + v5 * v8;
  v20 = v3 * v8;
  *&v23[6] = v20 + v16;
  *&v23[7] = v17 - v18;
  *&v23[2] = v16 - v20;
  *&v23[3] = v15 - v19;
  *&v23[4] = v14;
  *&v23[5] = v17 + v18;
  v24[0] = a1;
  v24[1] = v23;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  sub_245037D34(&v25, v24);
  result = v26;
  v22 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v22;
  *(a1 + 64) = v29;
  *a1 = v25;
  *(a1 + 16) = result;
  return result;
}

double cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::transform@<D0>(double *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v4[0] = a1;
  v4[1] = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  return sub_245038224(a3, v4);
}

double sub_245038224(uint64_t a1, double **a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v6 = 0uLL;
    v7 = 0;
    sub_245038224(&v6);
    result = *&v6;
    *a1 = v6;
    *(a1 + 16) = v7;
  }

  else
  {
    *a1 = *v3 * *v4 + 0.0 + v3[3] * v4[1] + v3[6] * v4[2];
    *(a1 + 8) = v3[1] * *v4 + 0.0 + v3[4] * v4[1] + v3[7] * v4[2];
    result = v3[2] * *v4 + 0.0 + v3[5] * v4[1] + v3[8] * v4[2];
    *(a1 + 16) = result;
  }

  return result;
}

double cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::inverseTransform@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v5[0] = &v4;
  v5[1] = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  return sub_245038334(a3, v5);
}

double sub_245038334(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a1)
  {
    v6 = 0uLL;
    v7 = 0;
    sub_245038334(&v6);
    result = *&v6;
    *a1 = v6;
    *(a1 + 16) = v7;
  }

  else
  {
    v4 = **a2;
    *a1 = v4[1] * v3[1] + *v4 * *v3 + 0.0 + v4[2] * v3[2];
    *(a1 + 8) = v4[4] * v3[1] + v4[3] * *v3 + 0.0 + v4[5] * v3[2];
    result = v4[7] * v3[1] + v4[6] * *v3 + 0.0 + v4[8] * v3[2];
    *(a1 + 16) = result;
  }

  return result;
}

__n128 cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::transformJacobian@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = 0;
  *(a2 + 8) = -v2;
  *(a2 + 24) = v2;
  *(a2 + 32) = 0;
  result = *a1;
  v4 = vnegq_f64(*a1);
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 40) = v4;
  *(a2 + 56) = result.n128_u64[0];
  *(a2 + 64) = 0;
  return result;
}

double cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::inverseTransformJacobian@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a2[1];
  v11 = a2[2];
  v13 = v3 * v11 - v4 * v12;
  v14 = v6 * v11 - v7 * v12;
  v15 = v9 * v11 - v10 * v12;
  v16 = v4 * *a2 - *a1 * v11;
  v17 = v7 * *a2 - v5 * v11;
  v18 = v10 * *a2 - v8 * v11;
  result = *a1 * v12 - v3 * *a2;
  v20 = v5 * v12 - v6 * *a2;
  v21 = v9 * *a2;
  *a3 = v13;
  a3[1] = v14;
  a3[2] = v15;
  a3[3] = v16;
  a3[4] = v17;
  a3[5] = v18;
  a3[6] = result;
  a3[7] = v20;
  a3[8] = v8 * v12 - v21;
  return result;
}

void *cva::SO3AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::SO3AlgebraStorage(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

double cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::logJacobian@<D0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_245037840(a1, a2);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = v3 * v3 + v4 * v4 + v5 * v5;
  if (v6 >= 0.0000002635)
  {
    v11 = sqrt(v6);
    v12 = __sincos_stret(v11);
    cosval = v12.__cosval;
    v9 = v12.__sinval / v11;
    v7 = 1.0 / v6 * (1.0 - v12.__cosval);
    v8 = 1.0 / v6 * (1.0 - v12.__sinval / v11);
  }

  else
  {
    v7 = 0.5 - v6 * (v6 / -720.0 + 0.0416666667);
    v8 = 0.166666667 - v6 * (v6 / -5040.0 + 0.00833333333);
    v9 = 1.0 - v6 * v8;
    cosval = 1.0 - v6 * v7;
  }

  v13 = -(v8 - v7 * 0.5) / v9;
  v14 = (v7 + v9 * -0.5) / (1.0 - cosval);
  if (cosval >= 0.9)
  {
    v14 = v13;
  }

  v15 = 1.0 - v6 * v14;
  v16 = v3 * v14;
  v17 = v4 * v14;
  v18 = v15 + v3 * v14 * v3;
  v19 = v15 + v5 * v14 * v5;
  v20 = v15 + v17 * v4;
  *(a2 + 88) = v19;
  v21 = v16 * v4;
  v22 = v16 * v5;
  v23 = v17 * v5;
  *(a2 + 24) = v18;
  *(a2 + 32) = v21 + v5 * -0.5;
  *(a2 + 72) = v4 * -0.5 + v22;
  *(a2 + 80) = v23 - v3 * -0.5;
  *(a2 + 40) = v22 - v4 * -0.5;
  *(a2 + 48) = v21 - v5 * -0.5;
  result = v23 + v3 * -0.5;
  *(a2 + 56) = v20;
  *(a2 + 64) = result;
  return result;
}

double cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::inverse@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 64);
  *a2 = *a1;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v3;
  a2[4] = v8;
  a2[5] = v5;
  a2[6] = v7;
  a2[7] = v9;
  a2[8] = v10;
  return result;
}

__n128 cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::adjoint@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double cva::SO3GroupStorage<double,cva::Matrix<double,3u,3u,false>>::enforce(float64x2_t *a1)
{
  v29 = 0.0;
  v30 = 0.0;
  v31 = 0.0;
  sub_245037840(a1, &v29);
  v3 = v29;
  v2 = v30;
  v4 = v2 * v2;
  v5 = v31;
  v6 = v2 * v2 + v3 * v3 + v5 * v5;
  if (v6 > 9.8696044)
  {
    v7 = sqrt(v6) / 3.14159265;
    v8 = ceil(v7) + -1.0;
    v9 = v8;
    v10 = v7 - v8;
    if (v9)
    {
      v10 = v10 + -1.0;
    }

    v11 = v10 / v7;
    v3 = v29 * v11;
    v2 = v30 * v11;
    v5 = v31 * v11;
    v4 = v2 * v2;
  }

  v12 = v3 * v3 + v4 + v5 * v5;
  if (v12 >= 0.0000002635)
  {
    v16 = sqrt(v12);
    v17 = __sincos_stret(v16);
    cosval = v17.__cosval;
    v14 = v17.__sinval / v16;
    v13 = 1.0 / v12 * (1.0 - v17.__cosval);
  }

  else
  {
    v13 = 0.5 - v12 * (v12 / -720.0 + 0.0416666667);
    v14 = 1.0 - v12 * (0.166666667 - v12 * (v12 / -5040.0 + 0.00833333333));
    cosval = 1.0 - v12 * v13;
  }

  v18 = v3 * v13;
  v19 = v2 * v13;
  v20 = cosval + v3 * v13 * v3;
  v21 = cosval + v2 * v13 * v2;
  result = cosval + v5 * v13 * v5;
  v23 = v2 * v18;
  v24 = v5 * v18;
  v25 = v5 * v19;
  v26 = v3 * v14;
  v27 = v2 * v14;
  v28 = v5 * v14;
  a1->f64[0] = v20;
  a1->f64[1] = v23 + v28;
  a1[1].f64[0] = v24 - v27;
  a1[1].f64[1] = v23 - v28;
  a1[2].f64[0] = v21;
  a1[2].f64[1] = v25 + v26;
  a1[3].f64[0] = v27 + v24;
  a1[3].f64[1] = v25 - v26;
  a1[4].f64[0] = result;
  return result;
}

float64_t cva::SO3AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::enforce(float64x2_t *a1)
{
  v1 = *a1;
  v2 = vmulq_f64(v1, v1);
  v3 = a1[1].f64[0];
  v4 = v2.f64[1] + v1.f64[0] * v1.f64[0] + v3 * v3;
  if (v4 > 9.8696044)
  {
    v5 = sqrt(v4) / 3.14159265;
    v6 = ceil(v5) + -1.0;
    v7 = v6;
    v8 = v5 - v6;
    if (v7)
    {
      v8 = v8 + -1.0;
    }

    v9 = v8 / v5;
    *a1 = vmulq_n_f64(v1, v9);
    v1.f64[0] = v3 * v9;
    a1[1].f64[0] = v3 * v9;
  }

  return v1.f64[0];
}

double cva::SO3AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::exp@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = v3 * v3 + v4 * v4 + v5 * v5;
  if (v6 >= 0.0000002635)
  {
    v10 = sqrt(v6);
    v11 = __sincos_stret(v10);
    cosval = v11.__cosval;
    v8 = v11.__sinval / v10;
    v7 = 1.0 / v6 * (1.0 - v11.__cosval);
  }

  else
  {
    v7 = 0.5 - v6 * (v6 / -720.0 + 0.0416666667);
    v8 = 1.0 - v6 * (0.166666667 - v6 * (v6 / -5040.0 + 0.00833333333));
    cosval = 1.0 - v6 * v7;
  }

  v12 = v3 * v7;
  v13 = v4 * v7;
  v14 = cosval + v3 * v7 * v3;
  v15 = cosval + v5 * v7 * v5;
  v16 = cosval + v13 * v4;
  a2[8] = v15;
  v17 = v4 * v12;
  v18 = v5 * v12;
  v19 = v5 * v13;
  v20 = v3 * v8;
  v21 = v4 * v8;
  v22 = v5 * v8;
  *a2 = v14;
  a2[1] = v17 + v22;
  a2[6] = v21 + v18;
  a2[7] = v19 - v20;
  a2[2] = v18 - v21;
  a2[3] = v17 - v22;
  result = v19 + v20;
  a2[4] = v16;
  a2[5] = v19 + v20;
  return result;
}

double cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::SO3GroupStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

float cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::angleInDegrees(uint64_t a1)
{
  memset(v3, 0, 12);
  sub_245038B04(*a1, *(a1 + 8), v3);
  v1 = vmul_f32(*(v3 + 4), *(v3 + 4));
  return (sqrtf(((v3[0].f32[0] * v3[0].f32[0]) + v1.f32[0]) + v1.f32[1]) * 180.0) / 3.1416;
}

void sub_245038B04(float *a1, unsigned int a2, float *a3)
{
  v5 = a2 + 2;
  v6 = (2 * a2) | 1;
  v7 = (a1[v5] - a1[v6]) * 0.5;
  *a3 = v7;
  v8 = &a1[2 * a2];
  v9 = (v8->f32[0] - a1[2]) * 0.5;
  a3[1] = v9;
  v10 = (a1[1] - a1[a2]) * 0.5;
  a3[2] = v10;
  v11 = a1[a2 + 1];
  v12 = *a1;
  v13 = a1[2 * a2 + 2];
  v14 = -1.0;
  v15 = (((*a1 + v11) + v13) + -1.0) * 0.5;
  v16 = ((v9 * v9) + (v7 * v7)) + (v10 * v10);
  if (v15 >= -1.0 || (v15 + 1.0) <= -0.00001)
  {
    v19 = (v15 + -1.0) < 0.00001 && v15 > 1.0;
    if (v15 > 0.99 || v19)
    {
      v20 = (v16 * ((v16 * (((v16 * 5.0) / 112.0) + 0.075)) + 0.16667)) + 1.0;
      *a3 = v7 * v20;
      a3[1] = v9 * v20;
    }

    else
    {
      if (v15 <= -0.99)
      {
        v14 = (((*a1 + v11) + v13) + -1.0) * 0.5;
        goto LABEL_19;
      }

      v20 = acosf(v15) / sqrtf(v16);
      *a3 = v7 * v20;
      a3[1] = v9 * v20;
    }

    a3[2] = v10 * v20;
    return;
  }

LABEL_19:
  v21 = a2;
  v22 = asinf(sqrtf(v16));
  v23 = ((3.1416 - v22) * (3.1416 - v22)) / (1.0 - v14);
  v24 = (v12 - v14) * v23;
  v25 = (v11 - v14) * v23;
  v26 = (v13 - v14) * v23;
  if (v24 <= v25)
  {
    v31 = v23 * 0.5;
    if (v25 <= v26)
    {
      v38 = sqrtf(v26);
      if (v10 < 0.0)
      {
        v38 = -v38;
      }

      a3[2] = v38;
      v39.f32[0] = a1[2];
      v39.f32[1] = a1[v5];
      *a3 = vmul_n_f32(vmul_n_f32(vadd_f32(*v8, v39), v31), 1.0 / v38);
    }

    else
    {
      v32 = sqrtf(v25);
      if (v9 < 0.0)
      {
        v32 = -v32;
      }

      a3[1] = v32;
      v33 = 1.0 / v32;
      v34 = a1[v6] + a1[v5];
      *a3 = v33 * (v31 * (a1[v21] + a1[1]));
      a3[2] = v33 * (v31 * v34);
    }
  }

  else
  {
    v27 = v23 * 0.5;
    v28 = v27 * (v8->f32[0] + a1[2]);
    if (v24 <= v26)
    {
      v35 = sqrtf(v26);
      if (v10 < 0.0)
      {
        v35 = -v35;
      }

      a3[2] = v35;
      v36 = 1.0 / v35;
      v37 = v36 * (v27 * (a1[v6] + a1[v5]));
      *a3 = v36 * v28;
      a3[1] = v37;
    }

    else
    {
      v29 = sqrtf(v24);
      if (v7 < 0.0)
      {
        v29 = -v29;
      }

      *a3 = v29;
      v30 = 1.0 / v29;
      a3[1] = v30 * (v27 * (a1[v21] + a1[1]));
      a3[2] = v30 * v28;
    }
  }
}

float cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::angleInRadians(uint64_t a1)
{
  memset(v3, 0, 12);
  sub_245038B04(*a1, *(a1 + 8), v3);
  v1 = vmul_f32(*(v3 + 4), *(v3 + 4));
  return sqrtf(((v3[0].f32[0] * v3[0].f32[0]) + v1.f32[0]) + v1.f32[1]);
}

void cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::log(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  sub_245038B04(*a1, *(a1 + 8), a2);
}

float *cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::transform@<X0>(float *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v4[0] = a1;
  v4[1] = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  return sub_245038EEC(a3, v4);
}

float *sub_245038EEC(float *result, float **a2)
{
  v2 = result;
  v3 = **a2;
  if ((v3 - 4 * *(*a2 + 3)) == result || (v4 = a2[1], v4 == result))
  {
    v21 = 0;
    v20 = 0;
    result = sub_245038EEC(&v20);
    *v2 = v20;
    *(v2 + 2) = v21;
  }

  else
  {
    v5 = *(*a2 + 2);
    if (v5)
    {
      v6 = 0;
      v7 = 4 * (3 * v5);
      v8 = 4 * v5;
      v9 = 0.0;
      v10 = a2[1];
      do
      {
        v11 = *v10++;
        v9 = v9 + (*(v3 + v6) * v11);
        v6 += v8;
      }

      while (v7 != v6);
      v12 = 0;
      *result = v9;
      v13 = 0.0;
      v14 = v4;
      do
      {
        v15 = *v14++;
        v13 = v13 + (*(v3 + 4 + v12) * v15);
        v12 += v8;
      }

      while (v7 != v12);
      v16 = 0;
      result[1] = v13;
      v17 = v3 + 8;
      v18 = 0.0;
      do
      {
        v19 = *v4++;
        v18 = v18 + (*(v17 + v16) * v19);
        v16 += v8;
      }

      while (v7 != v16);
    }

    else
    {
      *result = 0;
      v18 = 0.0;
    }

    result[2] = v18;
  }

  return result;
}

float *cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::inverseTransform@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v5[0] = &v4;
  v5[1] = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  return sub_245039034(a3, v5);
}

float *sub_245039034(float *result, uint64_t **a2)
{
  v2 = result;
  v3 = a2[1];
  if (v3 == result)
  {
    v8 = 0;
    v7 = 0;
    result = sub_245039034(&v7);
    *v2 = v7;
    *(v2 + 2) = v8;
  }

  else
  {
    v4 = **a2;
    v5 = *(v4 + 8);
    v6 = *v4;
    *result = (((v6[1] * v3[1]) + (*v6 * *v3)) + 0.0) + (v6[2] * v3[2]);
    result[1] = (((v6[v5 + 1] * v3[1]) + (v6[v5] * *v3)) + 0.0) + (v6[(v5 + 2)] * v3[2]);
    result[2] = (((v6[(2 * v5) + 1] * v3[1]) + (v6[(2 * v5)] * *v3)) + 0.0) + (v6[(2 * v5 + 2)] * v3[2]);
  }

  return result;
}

float32x2_t cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::transformJacobian@<D0>(float32x2_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1].f32[0];
  *a2 = 0;
  *(a2 + 4) = -v2;
  *(a2 + 12) = v2;
  *(a2 + 16) = 0;
  result = *a1;
  v4 = vneg_f32(*a1);
  *(a2 + 8) = HIDWORD(*a1);
  *(a2 + 20) = v4;
  *(a2 + 28) = result.u32[0];
  return result;
}

int8x16_t cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::inverseTransformJacobian@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, int32x4_t a4@<Q5>)
{
  v4.i64[0] = **a1;
  v5 = 4 * (*(a1 + 8) - 3);
  v6 = *a1 + v5;
  v7.i64[0] = *(v6 + 16);
  v4.i32[2] = *(*a1 + 8);
  v4.i32[3] = *(v6 + 12);
  v8 = v6 + 12 + v5;
  a4.i64[0] = *(a2 + 4);
  v9.i64[0] = v7.i64[0];
  v9.i64[1] = *(v8 + 16);
  v10 = a4;
  v10.i32[2] = *a2;
  v11 = (*(v8 + 12) * *a4.i32) - (*a2 * v9.f32[2]);
  v12 = v10;
  v12.i32[3] = *a2;
  v10.i32[3] = a4.i32[0];
  v13 = vmulq_f32(v4, v10);
  v14 = vmulq_f32(v9, vuzp2q_s32(v12, v12));
  v15 = vuzp2q_s32(v13, v14);
  v16 = vrev64q_s32(v14);
  v16.i32[0] = v13.i32[3];
  v7.i32[2] = *(v8 + 12);
  v7.i32[3] = HIDWORD(*(v8 + 16));
  v17 = vuzp1q_s32(vextq_s8(v13, v13, 8uLL), v15);
  v18 = vuzp2q_s32(a4, vzip1q_s32(a4, a4));
  v19 = v18;
  v19.i32[1] = *a2;
  v20 = vuzp1q_s32(v19, v19);
  v19.i32[3] = v18.i32[0];
  v20.i32[0] = *a2;
  v21 = vsubq_f32(v16, vmulq_f32(v7, v20));
  v22 = vsubq_f32(v17, vmulq_f32(v4, v19));
  v23 = vextq_s8(vuzp2q_s32(vuzp1q_s32(v22, v22), v21), v22, 4uLL);
  v24 = vtrn2q_s32(v22, vtrn1q_s32(v22, v21));
  result = vextq_s8(v24, v24, 8uLL);
  *a3 = v23;
  *(a3 + 16) = result;
  *(a3 + 32) = v11;
  return result;
}

float cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::logJacobian@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return sub_245039258(*a1, *(a1 + 8), a2, (a2 + 12));
}

float sub_245039258(float *a1, unsigned int a2, float *a3, float *a4)
{
  sub_245038B04(a1, a2, a3);
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = ((v6 * v6) + (v7 * v7)) + (v8 * v8);
  if (v9 >= 0.0061)
  {
    v14 = sqrtf(v9);
    v15 = __sincosf_stret(v14);
    cosval = v15.__cosval;
    v12 = v15.__sinval / v14;
    v10 = (1.0 / v9) * (1.0 - v15.__cosval);
    v11 = (1.0 / v9) * (1.0 - (v15.__sinval / v14));
  }

  else
  {
    v10 = 0.5 - (v9 * ((v9 / -720.0) + 0.041667));
    v11 = 0.16667 - (v9 * ((v9 / -5040.0) + 0.0083333));
    v12 = 1.0 - (v9 * v11);
    cosval = 1.0 - (v9 * v10);
  }

  v16 = -(v11 - (v10 * 0.5)) / v12;
  v17 = (v10 + (v12 * -0.5)) / (1.0 - cosval);
  if (cosval >= 0.9)
  {
    v17 = v16;
  }

  v18 = 1.0 - (v9 * v17);
  v19 = v6 * v17;
  v20 = v7 * v17;
  *a4 = v18 + ((v6 * v17) * v6);
  a4[4] = v18 + ((v7 * v17) * a3[1]);
  a4[8] = v18 + ((v8 * v17) * a3[2]);
  v21 = a3[1];
  v22 = v19 * v21;
  v23 = a3[2];
  v24 = v19 * v23;
  v25 = v20 * v23;
  v26 = *a3 * -0.5;
  v27 = v21 * -0.5;
  a4[6] = v27 + v24;
  a4[7] = v25 - v26;
  a4[1] = v22 + (v23 * -0.5);
  a4[2] = v24 - v27;
  a4[3] = v22 - (v23 * -0.5);
  result = v25 + v26;
  a4[5] = v25 + v26;
  return result;
}

float cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::inverse@<S0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[2];
  result = *(*a1 + 4 * v2);
  v4 = *(*a1 + 4 * (2 * v2));
  v5 = *(*a1 + 4);
  v6 = *(*a1 + 4 * (v2 + 1));
  v7 = *(*a1 + 4 * ((2 * v2) | 1u));
  v8 = *(*a1 + 8);
  v9 = *(*a1 + 4 * (v2 + 2));
  v10 = *(*a1 + 4 * (2 * v2 + 2));
  *a2 = **a1;
  *(a2 + 4) = result;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  *(a2 + 24) = v8;
  *(a2 + 28) = v9;
  *(a2 + 32) = v10;
  return result;
}

int **cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::adjoint@<X0>(int **result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *result;
  v3 = (*(result + 2) - 3);
  v4 = **result;
  if (&(*result)[-*(result + 3)] == a2)
  {
    *&v9 = *(v2 + 1);
    v10 = v3;
    v11 = &v2[v10];
    v12 = *(v11 + 3);
    v11 += 3;
    v13 = v11[2];
    v14 = &v11[v10];
    *(&v9 + 1) = v12;
    v15 = v14[5];
    v16 = *(v14 + 3);
    *a2 = v4;
    *(a2 + 4) = v9;
    *(a2 + 20) = v13;
    *(a2 + 24) = v16;
    *(a2 + 32) = v15;
  }

  else
  {
    *a2 = v4;
    *(a2 + 4) = v2[1];
    *(a2 + 8) = v2[2];
    v5 = v3;
    v6 = &v2[v5];
    v7 = v6[3];
    v6 += 3;
    *(a2 + 12) = v7;
    *(a2 + 16) = v6[1];
    *(a2 + 20) = v6[2];
    v8 = &v6[v5];
    *(a2 + 24) = v8[3];
    *(a2 + 28) = v8[4];
    *(a2 + 32) = v8[5];
  }

  return result;
}

uint64_t cva::SO3GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::serialize(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 4 * (3 * v1);
    v4 = (v1 - 3) << 32;
    do
    {
      v8 = *v2;
      result = std::ostream::write();
      v5 = HIDWORD(v4);
      if (v4 < 2)
      {
        v5 = 0;
      }

      v6 = &v2[v5];
      v7 = (v4 + 1);
      if (v4 >= 2)
      {
        v7 = 0;
      }

      v4 = v7 | v4 & 0xFFFFFFFF00000000;
      v2 = v6 + 1;
    }

    while (v6 + 1 != v3);
  }

  return result;
}

double cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::SO3GroupStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

double cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::angleInDegrees(uint64_t a1)
{
  v3 = 0.0;
  v4 = 0uLL;
  sub_24503963C(*a1, *(a1 + 8), &v3);
  v1 = vmulq_f64(v4, v4);
  return sqrt(v3 * v3 + v1.f64[0] + v1.f64[1]) * 180.0 / 3.14159265;
}

void sub_24503963C(double *a1, int a2, double *a3)
{
  v6 = (a2 + 2);
  v7 = (2 * a2) | 1;
  v8 = (a1[v6] - a1[v7]) * 0.5;
  *a3 = v8;
  v9 = &a1[2 * a2];
  v10 = (v9->f64[0] - a1[2]) * 0.5;
  a3[1] = v10;
  v11 = (a1[1] - a1[a2]) * 0.5;
  a3[2] = v11;
  v12 = *a1;
  v13 = a1[a2 + 1];
  v14 = a1[2 * a2 + 2];
  v15 = -1.0;
  v16 = (*a1 + v13 + v14 + -1.0) * 0.5;
  v17 = v10 * v10 + v8 * v8 + v11 * v11;
  if (v16 >= -1.0 || v16 + 1.0 <= -0.00001)
  {
    v27 = v16 > 1.0;
    if (v16 + -1.0 >= 0.00001)
    {
      v27 = 0;
    }

    if (v16 <= 0.99 && !v27)
    {
      if (v16 <= -0.99)
      {
        v15 = (*a1 + v13 + v14 + -1.0) * 0.5;
        goto LABEL_3;
      }

      v29 = acos(v16) / sqrt(v17);
    }

    else
    {
      v29 = v17 * (v17 * (v17 * 5.0 / 112.0 + 0.075) + 0.166666667) + 1.0;
    }

    *a3 = v8 * v29;
    a3[1] = v10 * v29;
    a3[2] = v11 * v29;
    return;
  }

LABEL_3:
  v18 = asin(sqrt(v17));
  v19 = (3.14159265 - v18) * (3.14159265 - v18) / (1.0 - v15);
  v20 = (v12 - v15) * v19;
  v21 = (v13 - v15) * v19;
  v22 = (v14 - v15) * v19;
  if (v20 <= v21)
  {
    v30 = v19 * 0.5;
    if (v21 <= v22)
    {
      v37 = sqrt(v22);
      if (v11 < 0.0)
      {
        v37 = -v37;
      }

      a3[2] = v37;
      v38.f64[0] = a1[2];
      v38.f64[1] = a1[v6];
      *a3 = vmulq_n_f64(vmulq_n_f64(vaddq_f64(*v9, v38), v30), 1.0 / v37);
    }

    else
    {
      v31 = sqrt(v21);
      if (v10 < 0.0)
      {
        v31 = -v31;
      }

      a3[1] = v31;
      v32 = 1.0 / v31;
      v33 = a1[v7] + a1[v6];
      *a3 = v32 * (v30 * (a1[a2] + a1[1]));
      a3[2] = v32 * (v30 * v33);
    }
  }

  else
  {
    v23 = v19 * 0.5;
    v24 = v23 * (v9->f64[0] + a1[2]);
    if (v20 <= v22)
    {
      v34 = sqrt(v22);
      if (v11 < 0.0)
      {
        v34 = -v34;
      }

      a3[2] = v34;
      v35 = 1.0 / v34;
      v36 = v35 * (v23 * (a1[v7] + a1[v6]));
      *a3 = v35 * v24;
      a3[1] = v36;
    }

    else
    {
      v25 = sqrt(v20);
      if (v8 < 0.0)
      {
        v25 = -v25;
      }

      *a3 = v25;
      v26 = 1.0 / v25;
      a3[1] = v26 * (v23 * (a1[a2] + a1[1]));
      a3[2] = v26 * v24;
    }
  }
}

double cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::angleInRadians(uint64_t a1)
{
  v3 = 0.0;
  v4 = 0uLL;
  sub_24503963C(*a1, *(a1 + 8), &v3);
  v1 = vmulq_f64(v4, v4);
  return sqrt(v3 * v3 + v1.f64[0] + v1.f64[1]);
}

void cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::log(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_24503963C(*a1, *(a1 + 8), a2);
}

double *cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::transform@<X0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4[0] = a1;
  v4[1] = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  return sub_245039A0C(a3, v4);
}

double *sub_245039A0C(double *result, double **a2)
{
  v2 = result;
  v3 = **a2;
  if ((v3 - 8 * *(*a2 + 3)) == result || (v4 = a2[1], v4 == result))
  {
    v20 = 0uLL;
    v21 = 0;
    result = sub_245039A0C(&v20);
    *v2 = v20;
    *(v2 + 2) = v21;
  }

  else
  {
    v5 = *(*a2 + 2);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * (3 * v5);
      v8 = 8 * v5;
      v9 = 0.0;
      v10 = a2[1];
      do
      {
        v11 = *v10++;
        v9 = v9 + *(v3 + v6) * v11;
        v6 += v8;
      }

      while (v7 != v6);
      v12 = 0;
      *result = v9;
      v13 = 0.0;
      v14 = v4;
      do
      {
        v15 = *v14++;
        v13 = v13 + *(v3 + 8 + v12) * v15;
        v12 += v8;
      }

      while (v7 != v12);
      v16 = 0;
      result[1] = v13;
      v17 = v3 + 16;
      v18 = 0.0;
      do
      {
        v19 = *v4++;
        v18 = v18 + *(v17 + v16) * v19;
        v16 += v8;
      }

      while (v7 != v16);
    }

    else
    {
      *result = 0.0;
      result[1] = 0.0;
      v18 = 0.0;
    }

    result[2] = v18;
  }

  return result;
}

double cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::inverseTransform@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v5[0] = &v4;
  v5[1] = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  return sub_245039B54(a3, v5);
}

double sub_245039B54(uint64_t a1, uint64_t **a2)
{
  v3 = a2[1];
  if (v3 == a1)
  {
    v8 = 0uLL;
    v9 = 0;
    sub_245039B54(&v8);
    result = *&v8;
    *a1 = v8;
    *(a1 + 16) = v9;
  }

  else
  {
    v4 = **a2;
    v5 = *(v4 + 8);
    v6 = *v4;
    *a1 = v6[1] * v3[1] + *v6 * *v3 + 0.0 + v6[2] * v3[2];
    *(a1 + 8) = v6[v5 + 1] * v3[1] + v6[v5] * *v3 + 0.0 + v6[(v5 + 2)] * v3[2];
    result = v6[(2 * v5) + 1] * v3[1] + v6[(2 * v5)] * *v3 + 0.0 + v6[(2 * v5 + 2)] * v3[2];
    *(a1 + 16) = result;
  }

  return result;
}

__n128 cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::transformJacobian@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = 0;
  *(a2 + 8) = -v2;
  *(a2 + 24) = v2;
  *(a2 + 32) = 0;
  result = *a1;
  v4 = vnegq_f64(*a1);
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 40) = v4;
  *(a2 + 56) = result.n128_u64[0];
  *(a2 + 64) = 0;
  return result;
}

double cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::inverseTransformJacobian@<D0>(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = **a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v6 = (*(a1 + 8) - 3);
  v7 = (*a1 + v6 * 8);
  v8 = v7[3];
  v9 = v7[4];
  v7 += 3;
  v10 = v7[2];
  v11 = &v7[v6];
  v12 = v11[3];
  v13 = v11[4];
  v14 = v11[5];
  v16 = a2[1];
  v15 = a2[2];
  v17 = v4 * v15 - v5 * v16;
  v18 = v9 * v15 - v10 * v16;
  v19 = v13 * v15 - v14 * v16;
  v20 = v5 * *a2 - v3 * v15;
  v21 = v10 * *a2 - v8 * v15;
  v22 = v14 * *a2 - v12 * v15;
  result = v3 * v16 - v4 * *a2;
  v24 = v8 * v16 - v9 * *a2;
  v25 = v13 * *a2;
  *a3 = v17;
  a3[1] = v18;
  a3[2] = v19;
  a3[3] = v20;
  a3[4] = v21;
  a3[5] = v22;
  a3[6] = result;
  a3[7] = v24;
  a3[8] = v12 * v16 - v25;
  return result;
}

double cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::logJacobian@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_245039D5C(*a1, *(a1 + 8), a2, (a2 + 24));
}

double sub_245039D5C(double *a1, int a2, double *a3, double *a4)
{
  sub_24503963C(a1, a2, a3);
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = v6 * v6 + v7 * v7 + v8 * v8;
  if (v9 >= 0.0000002635)
  {
    v14 = sqrt(v9);
    v15 = __sincos_stret(v14);
    cosval = v15.__cosval;
    v12 = v15.__sinval / v14;
    v10 = 1.0 / v9 * (1.0 - v15.__cosval);
    v11 = 1.0 / v9 * (1.0 - v15.__sinval / v14);
  }

  else
  {
    v10 = 0.5 - v9 * (v9 / -720.0 + 0.0416666667);
    v11 = 0.166666667 - v9 * (v9 / -5040.0 + 0.00833333333);
    v12 = 1.0 - v9 * v11;
    cosval = 1.0 - v9 * v10;
  }

  v16 = -(v11 - v10 * 0.5) / v12;
  v17 = (v10 + v12 * -0.5) / (1.0 - cosval);
  if (cosval >= 0.9)
  {
    v17 = v16;
  }

  v18 = 1.0 - v9 * v17;
  v19 = v6 * v17;
  v20 = v7 * v17;
  *a4 = v18 + v6 * v17 * v6;
  a4[4] = v18 + v7 * v17 * a3[1];
  a4[8] = v18 + v8 * v17 * a3[2];
  v21 = a3[1];
  v22 = v19 * v21;
  v23 = a3[2];
  v24 = v19 * v23;
  v25 = v20 * v23;
  v26 = *a3 * -0.5;
  v27 = v21 * -0.5;
  a4[6] = v27 + v24;
  a4[7] = v25 - v26;
  a4[1] = v22 + v23 * -0.5;
  a4[2] = v24 - v27;
  a4[3] = v22 - v23 * -0.5;
  result = v25 + v26;
  a4[5] = v25 + v26;
  return result;
}

double cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::inverse@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[2];
  result = *(*a1 + 8 * v2);
  v4 = *(*a1 + 8 * (2 * v2));
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 8 * (v2 + 1));
  v7 = *(*a1 + 8 * ((2 * v2) | 1u));
  v8 = *(*a1 + 16);
  v9 = *(*a1 + 8 * (v2 + 2));
  v10 = *(*a1 + 8 * (2 * v2 + 2));
  *a2 = **a1;
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  return result;
}

uint64_t **cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::adjoint@<X0>(uint64_t **result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *result;
  v3 = (*(result + 2) - 3);
  v4 = **result;
  if (&(*result)[-*(result + 3)] == a2)
  {
    v9 = v3;
    v10 = *&v2[v9 + 3];
    v11 = v2[v9 + 5];
    v12 = &v2[v9 + 3 + v9];
    v13 = v12[5];
    v14 = *(v2 + 1);
    v15 = *(v12 + 3);
    *a2 = v4;
    *(a2 + 8) = v14;
    *(a2 + 24) = v10;
    *(a2 + 40) = v11;
    *(a2 + 48) = v15;
    *(a2 + 64) = v13;
  }

  else
  {
    *a2 = v4;
    *(a2 + 8) = v2[1];
    *(a2 + 16) = v2[2];
    v5 = v3;
    v6 = &v2[v5];
    v7 = v6[3];
    v6 += 3;
    *(a2 + 24) = v7;
    *(a2 + 32) = v6[1];
    *(a2 + 40) = v6[2];
    v8 = &v6[v5];
    *(a2 + 48) = v8[3];
    *(a2 + 56) = v8[4];
    *(a2 + 64) = v8[5];
  }

  return result;
}

uint64_t cva::SO3GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::serialize(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 8 * (3 * v1);
    v4 = (v1 - 3) << 32;
    do
    {
      v8 = *v2;
      result = std::ostream::write();
      v5 = HIDWORD(v4);
      if (v4 < 2)
      {
        v5 = 0;
      }

      v6 = &v2[v5];
      v7 = (v4 + 1);
      if (v4 >= 2)
      {
        v7 = 0;
      }

      v4 = v7 | v4 & 0xFFFFFFFF00000000;
      v2 = v6 + 1;
    }

    while (v6 + 1 != v3);
  }

  return result;
}

float32_t cva::SO3AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::adjoint@<S0>(uint64_t a1@<X0>, float32x2_t *a2@<X8>)
{
  result = *a1;
  v3 = -*a1;
  a2->i32[0] = 0;
  v4 = *(a1 + 4);
  a2->i32[1] = v4.i32[1];
  a2[1] = vneg_f32(v4);
  a2[2].i32[0] = 0;
  a2[2].f32[1] = result;
  a2[3].i32[0] = v4.i32[0];
  a2[3].f32[1] = v3;
  a2[4].i32[0] = 0;
  return result;
}

float32_t cva::SO3AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::hat@<S0>(uint64_t a1@<X0>, float32x2_t *a2@<X8>)
{
  result = *a1;
  v3 = -*a1;
  a2->i32[0] = 0;
  v4 = *(a1 + 4);
  a2->i32[1] = v4.i32[1];
  a2[1] = vneg_f32(v4);
  a2[2].i32[0] = 0;
  a2[2].f32[1] = result;
  a2[3].i32[0] = v4.i32[0];
  a2[3].f32[1] = v3;
  a2[4].i32[0] = 0;
  return result;
}

float cva::SO3AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::exp@<S0>(float *a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  v4 = *a1 * a3;
  v5 = a1[1] * a3;
  v6 = a1[2] * a3;
  v7 = ((v4 * v4) + (v5 * v5)) + (v6 * v6);
  if (v7 >= 0.0061)
  {
    v11 = sqrtf(v7);
    v12 = __sincosf_stret(v11);
    cosval = v12.__cosval;
    v9 = v12.__sinval / v11;
    v8 = (1.0 / v7) * (1.0 - v12.__cosval);
  }

  else
  {
    v8 = 0.5 - (v7 * ((v7 / -720.0) + 0.041667));
    v9 = 1.0 - (v7 * (0.16667 - (v7 * ((v7 / -5040.0) + 0.0083333))));
    cosval = 1.0 - (v7 * v8);
  }

  v13 = v4 * v8;
  v14 = v5 * v8;
  v15 = cosval + ((v4 * v8) * v4);
  v16 = cosval + ((v6 * v8) * v6);
  v17 = cosval + (v14 * v5);
  a2[8] = v16;
  v18 = v5 * v13;
  v19 = v6 * v13;
  v20 = v6 * v14;
  v21 = v4 * v9;
  v22 = v5 * v9;
  v23 = v6 * v9;
  *a2 = v15;
  a2[1] = v18 + v23;
  a2[6] = v22 + v19;
  a2[7] = v20 - v21;
  a2[2] = v19 - v22;
  a2[3] = v18 - v23;
  result = v20 + v21;
  a2[4] = v17;
  a2[5] = v20 + v21;
  return result;
}

float cva::SO3AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::expJacobian@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = ((v4 * v4) + (v3 * v3)) + (v5 * v5);
  if (v6 >= 0.0061)
  {
    v11 = sqrtf(v6);
    v12 = __sincosf_stret(v11);
    cosval = v12.__cosval;
    v9 = v12.__sinval / v11;
    v7 = (1.0 / v6) * (1.0 - v12.__cosval);
    v8 = (1.0 / v6) * (1.0 - (v12.__sinval / v11));
  }

  else
  {
    v7 = 0.5 - (v6 * ((v6 / -720.0) + 0.041667));
    v8 = 0.16667 - (v6 * ((v6 / -5040.0) + 0.0083333));
    v9 = 1.0 - (v6 * v8);
    cosval = 1.0 - (v6 * v7);
  }

  v13 = v4 * v7;
  v14 = v3 * v7;
  v15 = v5 * v7;
  *a2 = cosval + (v13 * v4);
  a2[1] = (v13 * v3) + (v9 * v5);
  a2[6] = (v9 * v3) + (v13 * v5);
  a2[7] = (v14 * v5) - (v9 * v4);
  a2[2] = (v13 * v5) - (v9 * v3);
  a2[3] = (v13 * v3) - (v9 * v5);
  a2[4] = cosval + (v14 * v3);
  a2[5] = (v14 * v5) + (v9 * v4);
  v16 = v8 * v4;
  v17 = v8 * v3;
  a2[8] = cosval + (v15 * v5);
  a2[9] = v9 + ((v8 * v4) * v4);
  v18 = v9 + ((v8 * v3) * v3);
  v19 = v9 + ((v8 * v5) * v5);
  v20 = (v8 * v4) * v3;
  v21 = v16 * v5;
  v22 = v17 * v5;
  a2[12] = v20 - v15;
  a2[13] = v18;
  a2[16] = v22 - v13;
  a2[17] = v19;
  a2[10] = v20 + v15;
  a2[11] = v21 - v14;
  result = v22 + v13;
  a2[14] = v22 + v13;
  a2[15] = v14 + v21;
  return result;
}

double cva::SO3AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::adjoint@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = -*a1;
  *a2 = 0;
  v4 = *(a1 + 8);
  *(a2 + 8) = v4.f64[1];
  *(a2 + 16) = vnegq_f64(v4);
  *(a2 + 32) = 0;
  *(a2 + 40) = result;
  *(a2 + 48) = v4.f64[0];
  *(a2 + 56) = v3;
  *(a2 + 64) = 0;
  return result;
}

double cva::SO3AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::hat@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = -*a1;
  *a2 = 0;
  v4 = *(a1 + 8);
  *(a2 + 8) = v4.f64[1];
  *(a2 + 16) = vnegq_f64(v4);
  *(a2 + 32) = 0;
  *(a2 + 40) = result;
  *(a2 + 48) = v4.f64[0];
  *(a2 + 56) = v3;
  *(a2 + 64) = 0;
  return result;
}

double cva::SO3AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::exp@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v4 = *a1 * a3;
  v5 = a1[1] * a3;
  v6 = a1[2] * a3;
  v7 = v4 * v4 + v5 * v5 + v6 * v6;
  if (v7 >= 0.0000002635)
  {
    v11 = sqrt(v7);
    v12 = __sincos_stret(v11);
    cosval = v12.__cosval;
    v9 = v12.__sinval / v11;
    v8 = 1.0 / v7 * (1.0 - v12.__cosval);
  }

  else
  {
    v8 = 0.5 - v7 * (v7 / -720.0 + 0.0416666667);
    v9 = 1.0 - v7 * (0.166666667 - v7 * (v7 / -5040.0 + 0.00833333333));
    cosval = 1.0 - v7 * v8;
  }

  v13 = v4 * v8;
  v14 = v5 * v8;
  v15 = cosval + v4 * v8 * v4;
  v16 = cosval + v6 * v8 * v6;
  v17 = cosval + v14 * v5;
  a2[8] = v16;
  v18 = v5 * v13;
  v19 = v6 * v13;
  v20 = v6 * v14;
  v21 = v4 * v9;
  v22 = v5 * v9;
  v23 = v6 * v9;
  *a2 = v15;
  a2[1] = v18 + v23;
  a2[6] = v22 + v19;
  a2[7] = v20 - v21;
  a2[2] = v19 - v22;
  a2[3] = v18 - v23;
  result = v20 + v21;
  a2[4] = v17;
  a2[5] = v20 + v21;
  return result;
}

double cva::SO3AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::expJacobian@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v4 * v4 + v3 * v3 + v5 * v5;
  if (v6 >= 0.0000002635)
  {
    v11 = sqrt(v6);
    v12 = __sincos_stret(v11);
    cosval = v12.__cosval;
    v9 = v12.__sinval / v11;
    v7 = 1.0 / v6 * (1.0 - v12.__cosval);
    v8 = 1.0 / v6 * (1.0 - v12.__sinval / v11);
  }

  else
  {
    v7 = 0.5 - v6 * (v6 / -720.0 + 0.0416666667);
    v8 = 0.166666667 - v6 * (v6 / -5040.0 + 0.00833333333);
    v9 = 1.0 - v6 * v8;
    cosval = 1.0 - v6 * v7;
  }

  v13 = v4 * v7;
  v14 = v3 * v7;
  v15 = v5 * v7;
  *a2 = cosval + v13 * v4;
  a2[1] = v13 * v3 + v9 * v5;
  a2[6] = v9 * v3 + v13 * v5;
  a2[7] = v14 * v5 - v9 * v4;
  a2[2] = v13 * v5 - v9 * v3;
  a2[3] = v13 * v3 - v9 * v5;
  a2[4] = cosval + v14 * v3;
  a2[5] = v14 * v5 + v9 * v4;
  v16 = v8 * v4;
  v17 = v8 * v3;
  a2[8] = cosval + v15 * v5;
  a2[9] = v9 + v8 * v4 * v4;
  v18 = v9 + v8 * v3 * v3;
  v19 = v9 + v8 * v5 * v5;
  v20 = v8 * v4 * v3;
  v21 = v16 * v5;
  v22 = v17 * v5;
  a2[12] = v20 - v15;
  a2[13] = v18;
  a2[16] = v22 - v13;
  a2[17] = v19;
  a2[10] = v20 + v15;
  a2[11] = v21 - v14;
  result = v22 + v13;
  a2[14] = v22 + v13;
  a2[15] = v14 + v21;
  return result;
}

float cva::SO3AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::adjoint@<S0>(float **a1@<X0>, float32x2_t *a2@<X8>)
{
  v2 = *a1;
  result = **a1;
  a2->i32[0] = 0;
  v4 = *(v2 + 1);
  a2->i32[1] = v4.i32[1];
  a2[1] = vneg_f32(v4);
  a2[2].i32[0] = 0;
  a2[2].f32[1] = result;
  a2[3].i32[0] = v4.i32[0];
  a2[3].f32[1] = -result;
  a2[4].i32[0] = 0;
  return result;
}

float cva::SO3AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::hat@<S0>(float **a1@<X0>, float32x2_t *a2@<X8>)
{
  v2 = *a1;
  result = **a1;
  a2->i32[0] = 0;
  v4 = *(v2 + 1);
  a2->i32[1] = v4.i32[1];
  a2[1] = vneg_f32(v4);
  a2[2].i32[0] = 0;
  a2[2].f32[1] = result;
  a2[3].i32[0] = v4.i32[0];
  a2[3].f32[1] = -result;
  a2[4].i32[0] = 0;
  return result;
}

float cva::SO3AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::exp@<S0>(uint64_t a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  v4 = **a1 * a3;
  v5 = *(*a1 + 4) * a3;
  v6 = *(*a1 + 8) * a3;
  v7 = (v6 * v6) + ((v4 * v4) + (v5 * v5));
  if (v7 >= 0.0061)
  {
    v11 = sqrtf(v7);
    v12 = __sincosf_stret(v11);
    cosval = v12.__cosval;
    v9 = v12.__sinval / v11;
    v8 = (1.0 / v7) * (1.0 - v12.__cosval);
  }

  else
  {
    v8 = 0.5 - (v7 * ((v7 / -720.0) + 0.041667));
    v9 = 1.0 - (v7 * (0.16667 - (v7 * ((v7 / -5040.0) + 0.0083333))));
    cosval = 1.0 - (v7 * v8);
  }

  v13 = v4 * v8;
  v14 = v5 * v8;
  v15 = cosval + ((v4 * v8) * v4);
  v16 = cosval + ((v6 * v8) * v6);
  v17 = cosval + (v14 * v5);
  a2[8] = v16;
  v18 = v5 * v13;
  v19 = v6 * v13;
  v20 = v6 * v14;
  v21 = v4 * v9;
  v22 = v5 * v9;
  v23 = v6 * v9;
  *a2 = v15;
  a2[1] = v18 + v23;
  a2[6] = v22 + v19;
  a2[7] = v20 - v21;
  a2[2] = v19 - v22;
  a2[3] = v18 - v23;
  result = v20 + v21;
  a2[4] = v17;
  a2[5] = v20 + v21;
  return result;
}

float cva::SO3AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::expJacobian@<S0>(float **a1@<X0>, float *a2@<X8>)
{
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = ((v4 * v4) + (v3 * v3)) + (v5 * v5);
  if (v6 >= 0.0061)
  {
    v11 = sqrtf(v6);
    v12 = __sincosf_stret(v11);
    cosval = v12.__cosval;
    v9 = v12.__sinval / v11;
    v7 = (1.0 / v6) * (1.0 - v12.__cosval);
    v8 = (1.0 / v6) * (1.0 - (v12.__sinval / v11));
  }

  else
  {
    v7 = 0.5 - (v6 * ((v6 / -720.0) + 0.041667));
    v8 = 0.16667 - (v6 * ((v6 / -5040.0) + 0.0083333));
    v9 = 1.0 - (v6 * v8);
    cosval = 1.0 - (v6 * v7);
  }

  v13 = v4 * v7;
  v14 = v3 * v7;
  v15 = v5 * v7;
  *a2 = cosval + (v13 * v4);
  a2[1] = (v13 * v3) + (v9 * v5);
  a2[6] = (v9 * v3) + (v13 * v5);
  a2[7] = (v14 * v5) - (v9 * v4);
  a2[2] = (v13 * v5) - (v9 * v3);
  a2[3] = (v13 * v3) - (v9 * v5);
  a2[4] = cosval + (v14 * v3);
  a2[5] = (v14 * v5) + (v9 * v4);
  v16 = v8 * v4;
  v17 = v8 * v3;
  a2[8] = cosval + (v15 * v5);
  a2[9] = v9 + ((v8 * v4) * v4);
  v18 = v9 + ((v8 * v3) * v3);
  v19 = v9 + ((v8 * v5) * v5);
  v20 = (v8 * v4) * v3;
  v21 = v16 * v5;
  v22 = v17 * v5;
  a2[12] = v20 - v15;
  a2[13] = v18;
  a2[16] = v22 - v13;
  a2[17] = v19;
  a2[10] = v20 + v15;
  a2[11] = v21 - v14;
  result = v22 + v13;
  a2[14] = v22 + v13;
  a2[15] = v14 + v21;
  return result;
}

double cva::SO3AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::adjoint@<D0>(double **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = **a1;
  *a2 = 0;
  v4 = *(v2 + 1);
  *(a2 + 8) = v4.f64[1];
  *(a2 + 16) = vnegq_f64(v4);
  *(a2 + 32) = 0;
  *(a2 + 40) = result;
  *(a2 + 48) = v4.f64[0];
  *(a2 + 56) = -result;
  *(a2 + 64) = 0;
  return result;
}

double cva::SO3AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::hat@<D0>(double **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = **a1;
  *a2 = 0;
  v4 = *(v2 + 1);
  *(a2 + 8) = v4.f64[1];
  *(a2 + 16) = vnegq_f64(v4);
  *(a2 + 32) = 0;
  *(a2 + 40) = result;
  *(a2 + 48) = v4.f64[0];
  *(a2 + 56) = -result;
  *(a2 + 64) = 0;
  return result;
}

double cva::SO3AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::exp@<D0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v4 = **a1 * a3;
  v5 = *(*a1 + 8) * a3;
  v6 = *(*a1 + 16) * a3;
  v7 = v6 * v6 + v4 * v4 + v5 * v5;
  if (v7 >= 0.0000002635)
  {
    v11 = sqrt(v7);
    v12 = __sincos_stret(v11);
    cosval = v12.__cosval;
    v9 = v12.__sinval / v11;
    v8 = 1.0 / v7 * (1.0 - v12.__cosval);
  }

  else
  {
    v8 = 0.5 - v7 * (v7 / -720.0 + 0.0416666667);
    v9 = 1.0 - v7 * (0.166666667 - v7 * (v7 / -5040.0 + 0.00833333333));
    cosval = 1.0 - v7 * v8;
  }

  v13 = v4 * v8;
  v14 = v5 * v8;
  v15 = cosval + v4 * v8 * v4;
  v16 = cosval + v6 * v8 * v6;
  v17 = cosval + v14 * v5;
  a2[8] = v16;
  v18 = v5 * v13;
  v19 = v6 * v13;
  v20 = v6 * v14;
  v21 = v4 * v9;
  v22 = v5 * v9;
  v23 = v6 * v9;
  *a2 = v15;
  a2[1] = v18 + v23;
  a2[6] = v22 + v19;
  a2[7] = v20 - v21;
  a2[2] = v19 - v22;
  a2[3] = v18 - v23;
  result = v20 + v21;
  a2[4] = v17;
  a2[5] = v20 + v21;
  return result;
}

double cva::SO3AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::expJacobian@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = v4 * v4 + v3 * v3 + v5 * v5;
  if (v6 >= 0.0000002635)
  {
    v11 = sqrt(v6);
    v12 = __sincos_stret(v11);
    cosval = v12.__cosval;
    v9 = v12.__sinval / v11;
    v7 = 1.0 / v6 * (1.0 - v12.__cosval);
    v8 = 1.0 / v6 * (1.0 - v12.__sinval / v11);
  }

  else
  {
    v7 = 0.5 - v6 * (v6 / -720.0 + 0.0416666667);
    v8 = 0.166666667 - v6 * (v6 / -5040.0 + 0.00833333333);
    v9 = 1.0 - v6 * v8;
    cosval = 1.0 - v6 * v7;
  }

  v13 = v4 * v7;
  v14 = v3 * v7;
  v15 = v5 * v7;
  *a2 = cosval + v13 * v4;
  a2[1] = v13 * v3 + v9 * v5;
  a2[6] = v9 * v3 + v13 * v5;
  a2[7] = v14 * v5 - v9 * v4;
  a2[2] = v13 * v5 - v9 * v3;
  a2[3] = v13 * v3 - v9 * v5;
  a2[4] = cosval + v14 * v3;
  a2[5] = v14 * v5 + v9 * v4;
  v16 = v8 * v4;
  v17 = v8 * v3;
  a2[8] = cosval + v15 * v5;
  a2[9] = v9 + v8 * v4 * v4;
  v18 = v9 + v8 * v3 * v3;
  v19 = v9 + v8 * v5 * v5;
  v20 = v8 * v4 * v3;
  v21 = v16 * v5;
  v22 = v17 * v5;
  a2[12] = v20 - v15;
  a2[13] = v18;
  a2[16] = v22 - v13;
  a2[17] = v19;
  a2[10] = v20 + v15;
  a2[11] = v21 - v14;
  result = v22 + v13;
  a2[14] = v22 + v13;
  a2[15] = v14 + v21;
  return result;
}

double cva::PCA<float>::PCA(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t cva::PCA<float>::operator()<cva::Matrix<float,0u,0u,false>,void>(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 20);
  if (*(a1 + 64) != v7 || (v8 = *(a2 + 16), v9 = *(a2 + 20), v10 = v8, *(a1 + 68) != v7))
  {
    v11 = (4 * v6 * v7 + 31) & 0x7FFFFFFE0;
    v12 = v11 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v11, 0xE1AC2527uLL);
    v13 = *(a1 + 48);
    *(a1 + 48) = memptr;
    *(a1 + 56) = v12;
    *(a1 + 64) = v7;
    *(a1 + 68) = v6;
    free(v13);
    v10 = *(a2 + 16);
    v9 = *(a2 + 20);
    if (v10 != *(a1 + 64))
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 68);
  }

  if (v9 == v8)
  {
    v14 = *(a1 + 48);
    goto LABEL_19;
  }

LABEL_7:
  v14 = *(a1 + 48);
  v15 = (v9 * v10);
  if (*a2 == v14)
  {
    v17 = (4 * (v9 * v10) + 31) & 0x7FFFFFFE0;
    v18 = v17 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v17, 0xE1AC2527uLL);
    v19 = memptr;
    v20 = *(a2 + 16);
    v21 = *(a2 + 20);
    v22 = (v21 * v20);
    if (v22)
    {
      v23 = *a2;
      v24 = (v22 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v24 < 7)
      {
        v25 = memptr;
      }

      else
      {
        v25 = memptr;
        if ((memptr - v23) >= 0x20)
        {
          v26 = v24 + 1;
          v27 = (v24 + 1) & 0x7FFFFFFFFFFFFFF8;
          v28 = &v23[v27];
          v29 = memptr + 16;
          v30 = (v23 + 4);
          v31 = v27;
          do
          {
            v32 = *v30;
            *(v29 - 1) = *(v30 - 1);
            *v29 = v32;
            v29 += 2;
            v30 += 2;
            v31 -= 8;
          }

          while (v31);
          if (v26 == v27)
          {
            goto LABEL_33;
          }

          v25 = &v19[4 * v27];
          v23 = v28;
        }
      }

      v46 = &v19[4 * v22];
      do
      {
        v47 = *v23++;
        *v25 = v47;
        v25 += 4;
      }

      while (v25 != v46);
    }

LABEL_33:
    v48 = *(a1 + 48);
    *(a1 + 48) = v19;
    *(a1 + 56) = v18;
    *(a1 + 64) = v20;
    *(a1 + 68) = v21;
    free(v48);
    goto LABEL_34;
  }

  *(a1 + 64) = v10;
  *(a1 + 68) = v9;
  if (v15)
  {
    if (*(a1 + 56) < v15)
    {
      free(v14);
      v16 = (4 * v15 + 31) & 0x7FFFFFFE0;
      *(a1 + 48) = 0;
      *(a1 + 56) = v16 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v16, 0xE1AC2527uLL);
      v14 = memptr;
      *(a1 + 48) = memptr;
    }
  }

  else
  {
    free(v14);
    v14 = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

LABEL_19:
  v33 = (*(a1 + 68) * *(a1 + 64));
  if (!v33)
  {
    goto LABEL_34;
  }

  v34 = *a2;
  v35 = (v33 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v35 < 7)
  {
    v36 = v14;
LABEL_27:
    v44 = v14 + v33;
    do
    {
      v45 = *v34++;
      *v36++ = v45;
    }

    while (v36 != v44);
    goto LABEL_34;
  }

  v36 = v14;
  if ((v14 - v34) < 0x20)
  {
    goto LABEL_27;
  }

  v37 = v35 + 1;
  v38 = (v35 + 1) & 0x7FFFFFFFFFFFFFF8;
  v39 = &v34[v38];
  v40 = v14 + 1;
  v41 = (v34 + 4);
  v42 = v38;
  do
  {
    v43 = *v41;
    *(v40 - 1) = *(v41 - 1);
    *v40 = v43;
    v40 += 2;
    v41 += 2;
    v42 -= 8;
  }

  while (v42);
  if (v37 != v38)
  {
    v36 = v14 + v38;
    v34 = v39;
    goto LABEL_27;
  }

LABEL_34:
  if (*(a1 + 88) != v7)
  {
    v49 = (4 * v7 * v7 + 31) & 0x7FFFFFFE0;
    v50 = v49 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v49, 0xE1AC2527uLL);
    v51 = *(a1 + 72);
    *(a1 + 72) = memptr;
    *(a1 + 80) = v50;
    *(a1 + 88) = v7;
    *(a1 + 92) = v7;
    free(v51);
  }

  if (v6 >= v7)
  {
    v52 = v7;
  }

  else
  {
    v52 = v6;
  }

  if (*(a1 + 112) != v52)
  {
    v53 = (4 * v52 + 31) & 0x7FFFFFFE0;
    v54 = v53 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v53, 0xE1AC2527uLL);
    v55 = *(a1 + 96);
    *(a1 + 96) = memptr;
    *(a1 + 104) = v54;
    *(a1 + 112) = v52;
    *(a1 + 116) = 1;
    free(v55);
  }

  if (*(a1 + 136) != v6)
  {
    v56 = (4 * (v6 * v6) + 31) & 0x7FFFFFFE0;
    v57 = v56 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v56, 0xE1AC2527uLL);
    v58 = *(a1 + 120);
    *(a1 + 120) = memptr;
    *(a1 + 128) = v57;
    *(a1 + 136) = v6;
    *(a1 + 140) = v6;
    free(v58);
  }

  if (sub_24503B4DC((a1 + 48), (a1 + 96), (a1 + 72), (a1 + 120)))
  {
    if (v6 >= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v6;
    }

    if (*(a1 + 16) != v3)
    {
      v59 = (4 * v3 + 31) & 0x7FFFFFFE0;
      v60 = v59 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v59, 0xE1AC2527uLL);
      v61 = *a1;
      *a1 = memptr;
      *(a1 + 8) = v60;
      *(a1 + 16) = v3;
      *(a1 + 20) = 1;
      free(v61);
      v62 = (4 * (v3 * v6) + 31) & 0x7FFFFFFE0;
      v63 = v62 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v62, 0xE1AC2527uLL);
      v64 = *(a1 + 24);
      *(a1 + 24) = memptr;
      *(a1 + 32) = v63;
      *(a1 + 40) = v6;
      *(a1 + 44) = v3;
      free(v64);
    }

    if (v3)
    {
      v65 = 0;
      v66 = *(a1 + 96);
      v67 = *a1;
      if (v3 < 8)
      {
        goto LABEL_55;
      }

      if ((v67 - v66) <= 0x1F)
      {
        goto LABEL_55;
      }

      v65 = v3 & 0xFFFFFFF8;
      v68 = v67 + 1;
      v69 = v66 + 1;
      v70 = v65;
      do
      {
        v71 = vmulq_f32(*v69, *v69);
        v68[-1] = vmulq_f32(v69[-1], v69[-1]);
        *v68 = v71;
        v68 += 2;
        v69 += 2;
        v70 -= 8;
      }

      while (v70);
      if (v65 != v3)
      {
LABEL_55:
        v72 = v3 - v65;
        v73 = v65;
        v74 = &v67->f32[v65];
        v75 = &v66->f32[v73];
        do
        {
          v76 = *v75++;
          *v74++ = v76 * v76;
          --v72;
        }

        while (v72);
      }

      v77 = 0;
      v78 = 0;
      v79 = *(a1 + 136);
      v80 = *(a1 + 120);
      v81 = *(a1 + 40);
      v82 = *(a1 + 24);
      v83 = v6 - 1;
      do
      {
        if (v6 >= 0x10)
        {
          v84 = 0;
          v88 = __CFADD__(v81 * v78, v83);
          if (!__CFADD__(v78, v83) && v79 == 1 && !v88 && !((v6 - 1) >> 32) && v82 - (v80 + 4 * v78) + 4 * (v81 * v78) >= 0x20)
          {
            v89 = v77;
            v90 = v6 & 0xFFFFFFF8;
            v91 = v78;
            do
            {
              v92 = (v80 + 4 * v91);
              v93 = *v92;
              v94 = v92[1];
              v95 = (v82 + 4 * v89);
              *v95 = v93;
              v95[1] = v94;
              v91 += 8;
              v89 += 8;
              v90 -= 8;
            }

            while (v90);
            v84 = v6 & 0xFFFFFFF8;
            if (v84 == v6)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          v84 = 0;
        }

        v85 = v6 - v84;
        v86 = v77 + v84;
        v87 = v78 + v79 * v84;
        do
        {
          *(v82 + 4 * v86++) = *(v80 + 4 * v87);
          v87 += v79;
          --v85;
        }

        while (v85);
LABEL_58:
        ++v78;
        v77 += v81;
      }

      while (v78 != v3);
    }
  }

  else
  {
    v96 = *a1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    free(v96);
    v97 = *(a1 + 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    free(v97);
  }

  return a1;
}

uint64_t sub_24503B4DC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a1 + 5) >= *(a1 + 4))
  {
    v8 = *(a1 + 4);
  }

  else
  {
    v8 = *(a1 + 5);
  }

  if (4 * (8 * v8))
  {
    v9 = malloc_type_malloc(4 * (8 * v8), 0x100004052888210uLL);
  }

  else
  {
    v9 = 0;
  }

  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  sgesdd_NEWLAPACK();
  if (4 * 0.0)
  {
    v14 = malloc_type_malloc(4 * 0.0, 0x100004052888210uLL);
  }

  else
  {
    v14 = 0;
  }

  v15 = *a1;
  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  sgesdd_NEWLAPACK();
  if (v14)
  {
    free(v14);
  }

  if (v9)
  {
    free(v9);
  }

  return 1;
}

uint64_t cva::PCA<float>::operator()<cva::MatrixRef<float,0u,0u,false>,void>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = *a2;
  v6 = *(a2 + 4);
  if (*(a1 + 64) != *a2 || (v8 = *a2, v9 = *(a2 + 4), v10 = *a2, *(a1 + 68) != v7))
  {
    v11 = (4 * v6 * v7 + 31) & 0x7FFFFFFE0;
    v12 = v11 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v11, 0xE1AC2527uLL);
    v13 = *(a1 + 48);
    *(a1 + 48) = memptr;
    *(a1 + 56) = v12;
    *(a1 + 64) = v7;
    *(a1 + 68) = v6;
    free(v13);
    v10 = *a2;
    v9 = *(a2 + 4);
    if (*a2 != *(a1 + 64))
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 68);
  }

  if (v9 == v8)
  {
    v14 = *(a1 + 48);
    goto LABEL_23;
  }

LABEL_7:
  v14 = *(a1 + 48);
  v15 = v9 * v10;
  if ((*(a2 + 8) - 4 * *(a2 + 20)) == v14)
  {
    v17 = (4 * v9 * v10 + 31) & 0x7FFFFFFE0;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v17, 0xE1AC2527uLL);
    v18 = memptr;
    v19 = *a2;
    v20 = *(a2 + 4);
    v21 = *(a2 + 8);
    v113 = a3;
    if (&v21[-*(a2 + 20)] == memptr)
    {
      v53 = (v20 * v19);
      v17 = (4 * v53 + 31) & 0x7FFFFFFE0;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v17, 0xE1AC2527uLL);
      v29 = memptr;
      if (v53)
      {
        v54 = 0;
        v55 = *a2;
        v56 = *(a2 + 16) - *a2;
        v57 = *(a2 + 8);
        if (!(*(a2 + 4) * *a2))
        {
          v57 = 0;
        }

        v58 = 4 * v53;
        v59 = memptr;
        do
        {
          *v59++ = *v57;
          if (v54 + 1 >= v55)
          {
            v60 = v56;
          }

          else
          {
            v60 = 0;
          }

          v61 = &v57[v60];
          if (v54 + 1 < v55)
          {
            ++v54;
          }

          else
          {
            v54 = 0;
          }

          v57 = v61 + 1;
          v58 -= 4;
        }

        while (v58);
      }

      free(v18);
    }

    else
    {
      v22 = (v20 * v19);
      if (v22)
      {
        v23 = 0;
        v24 = 0;
        v25 = *(a2 + 16) - v19;
        v26 = 4 * v22;
        do
        {
          *&v18[v23] = *v21;
          if (v24 + 1 >= v19)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0;
          }

          v28 = &v21[v27];
          if (v24 + 1 < v19)
          {
            ++v24;
          }

          else
          {
            v24 = 0;
          }

          v21 = v28 + 1;
          v23 += 4;
        }

        while (v26 != v23);
      }

      v29 = v18;
    }

    v52 = *(a1 + 48);
    *(a1 + 48) = v29;
    *(a1 + 56) = v17 >> 2;
    *(a1 + 64) = v19;
    *(a1 + 68) = v20;
    a3 = v113;
    goto LABEL_62;
  }

  *(a1 + 64) = v10;
  *(a1 + 68) = v9;
  if (v15)
  {
    if (*(a1 + 56) < v15)
    {
      free(v14);
      v16 = (4 * v15 + 31) & 0x7FFFFFFE0;
      *(a1 + 48) = 0;
      *(a1 + 56) = v16 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v16, 0xE1AC2527uLL);
      v14 = memptr;
      *(a1 + 48) = memptr;
    }
  }

  else
  {
    free(v14);
    v14 = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

LABEL_23:
  if ((*(a2 + 8) - 4 * *(a2 + 20)) == v14)
  {
    v38 = *(a1 + 64);
    v39 = *(a1 + 68);
    v40 = (v39 * v38);
    v41 = (4 * v40 + 31) & 0x7FFFFFFE0;
    v42 = v41 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v41, 0xE1AC2527uLL);
    v43 = memptr;
    if (v40)
    {
      v44 = 0;
      v45 = *a2;
      v46 = *(a2 + 16) - *a2;
      v47 = *(a2 + 8);
      if (!(*(a2 + 4) * *a2))
      {
        v47 = 0;
      }

      v48 = 4 * v40;
      v49 = memptr;
      do
      {
        *v49++ = *v47;
        if (v44 + 1 >= v45)
        {
          v50 = v46;
        }

        else
        {
          v50 = 0;
        }

        v51 = &v47[v50];
        if (v44 + 1 < v45)
        {
          ++v44;
        }

        else
        {
          v44 = 0;
        }

        v47 = v51 + 1;
        v48 -= 4;
      }

      while (v48);
    }

    v52 = *(a1 + 48);
    *(a1 + 48) = v43;
    *(a1 + 56) = v42;
    *(a1 + 64) = v38;
    *(a1 + 68) = v39;
LABEL_62:
    free(v52);
    goto LABEL_63;
  }

  v30 = (*(a1 + 68) * *(a1 + 64));
  if (v30)
  {
    v31 = 0;
    v32 = *a2;
    v33 = *(a2 + 16) - *a2;
    if (*(a2 + 4) * *a2)
    {
      v34 = *(a2 + 8);
    }

    else
    {
      v34 = 0;
    }

    v35 = 4 * v30;
    do
    {
      *v14++ = *v34;
      if (v31 + 1 >= v32)
      {
        v36 = v33;
      }

      else
      {
        v36 = 0;
      }

      v37 = &v34[v36];
      if (v31 + 1 < v32)
      {
        ++v31;
      }

      else
      {
        v31 = 0;
      }

      v34 = v37 + 1;
      v35 -= 4;
    }

    while (v35);
  }

LABEL_63:
  if (*(a1 + 88) != v7)
  {
    v62 = (4 * v7 * v7 + 31) & 0x7FFFFFFE0;
    v63 = v62 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v62, 0xE1AC2527uLL);
    v64 = *(a1 + 72);
    *(a1 + 72) = memptr;
    *(a1 + 80) = v63;
    *(a1 + 88) = v7;
    *(a1 + 92) = v7;
    free(v64);
  }

  if (v6 >= v7)
  {
    v65 = v7;
  }

  else
  {
    v65 = v6;
  }

  if (*(a1 + 112) != v65)
  {
    v66 = (4 * v65 + 31) & 0x7FFFFFFE0;
    v67 = v66 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v66, 0xE1AC2527uLL);
    v68 = *(a1 + 96);
    *(a1 + 96) = memptr;
    *(a1 + 104) = v67;
    *(a1 + 112) = v65;
    *(a1 + 116) = 1;
    free(v68);
  }

  if (*(a1 + 136) != v6)
  {
    v69 = (4 * (v6 * v6) + 31) & 0x7FFFFFFE0;
    v70 = v69 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v69, 0xE1AC2527uLL);
    v71 = *(a1 + 120);
    *(a1 + 120) = memptr;
    *(a1 + 128) = v70;
    *(a1 + 136) = v6;
    *(a1 + 140) = v6;
    free(v71);
  }

  if (sub_24503B4DC((a1 + 48), (a1 + 96), (a1 + 72), (a1 + 120)))
  {
    if (v6 >= a3)
    {
      v72 = a3;
    }

    else
    {
      v72 = v6;
    }

    if (*(a1 + 16) != v72)
    {
      v73 = (4 * v72 + 31) & 0x7FFFFFFE0;
      v74 = v73 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v73, 0xE1AC2527uLL);
      v75 = *a1;
      *a1 = memptr;
      *(a1 + 8) = v74;
      *(a1 + 16) = v72;
      *(a1 + 20) = 1;
      free(v75);
      v76 = (4 * (v72 * v6) + 31) & 0x7FFFFFFE0;
      v77 = v76 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v76, 0xE1AC2527uLL);
      v78 = *(a1 + 24);
      *(a1 + 24) = memptr;
      *(a1 + 32) = v77;
      *(a1 + 40) = v6;
      *(a1 + 44) = v72;
      free(v78);
    }

    if (v72)
    {
      v79 = 0;
      v80 = *(a1 + 96);
      v81 = *a1;
      if (v72 < 8)
      {
        goto LABEL_84;
      }

      if ((v81 - v80) <= 0x1F)
      {
        goto LABEL_84;
      }

      v79 = v72 & 0xFFFFFFF8;
      v82 = v81 + 1;
      v83 = v80 + 1;
      v84 = v79;
      do
      {
        v85 = vmulq_f32(*v83, *v83);
        v82[-1] = vmulq_f32(v83[-1], v83[-1]);
        *v82 = v85;
        v82 += 2;
        v83 += 2;
        v84 -= 8;
      }

      while (v84);
      if (v79 != v72)
      {
LABEL_84:
        v86 = v72 - v79;
        v87 = v79;
        v88 = &v81->f32[v79];
        v89 = &v80->f32[v87];
        do
        {
          v90 = *v89++;
          *v88++ = v90 * v90;
          --v86;
        }

        while (v86);
      }

      v91 = 0;
      v92 = 0;
      v93 = *(a1 + 136);
      v94 = *(a1 + 120);
      v95 = *(a1 + 40);
      v96 = *(a1 + 24);
      v97 = v6 - 1;
      do
      {
        if (v6 >= 0x10)
        {
          v98 = 0;
          v102 = __CFADD__(v95 * v92, v97);
          if (!__CFADD__(v92, v97) && v93 == 1 && !v102 && !((v6 - 1) >> 32) && v96 - (v94 + 4 * v92) + 4 * (v95 * v92) >= 0x20)
          {
            v103 = v91;
            v104 = v6 & 0xFFFFFFF8;
            v105 = v92;
            do
            {
              v106 = (v94 + 4 * v105);
              v107 = *v106;
              v108 = v106[1];
              v109 = (v96 + 4 * v103);
              *v109 = v107;
              v109[1] = v108;
              v105 += 8;
              v103 += 8;
              v104 -= 8;
            }

            while (v104);
            v98 = v6 & 0xFFFFFFF8;
            if (v98 == v6)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
          v98 = 0;
        }

        v99 = v6 - v98;
        v100 = v91 + v98;
        v101 = v92 + v93 * v98;
        do
        {
          *(v96 + 4 * v100++) = *(v94 + 4 * v101);
          v101 += v93;
          --v99;
        }

        while (v99);
LABEL_87:
        ++v92;
        v91 += v95;
      }

      while (v92 != v72);
    }
  }

  else
  {
    v110 = *a1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    free(v110);
    v111 = *(a1 + 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    free(v111);
  }

  return a1;
}

void cva::PCA<float>::project<cva::Matrix<float,0u,0u,false>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 24);
  v6 = *(a2 + 16);
  if (v6 == *(a3 + 16) && *(a1 + 44) == *(a3 + 20))
  {
LABEL_10:
    v21 = a2;
    v22 = v5;
    v23 = 1065353216;
    sub_24503BEEC(a3, &memptr);
    goto LABEL_11;
  }

  v7 = *a3;
  if (*a2 != *a3 && *v5 != v7)
  {
    v8 = *(a1 + 44);
    *(a3 + 16) = v6;
    *(a3 + 20) = v8;
    v9 = (v8 * v6);
    if (v9)
    {
      if (*(a3 + 8) < v9)
      {
        free(v7);
        v10 = (4 * v9 + 31) & 0x7FFFFFFE0;
        *a3 = 0;
        *(a3 + 8) = v10 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
        *a3 = memptr;
      }
    }

    else
    {
      free(v7);
      *a3 = 0;
      *(a3 + 8) = 0;
    }

    goto LABEL_10;
  }

  v11 = (4 * (*(a1 + 44) * v6) + 31) & 0x7FFFFFFE0;
  v18 = v11 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v11, 0xE1AC2527uLL);
  v17 = memptr;
  v13 = *(a1 + 44);
  LODWORD(v19) = *(a2 + 16);
  HIDWORD(v19) = v13;
  v21 = a2;
  v22 = v5;
  v23 = 1065353216;
  sub_24503BEEC(&v17, &memptr);
  v14 = *a3;
  v15 = v18;
  *a3 = v17;
  *(a3 + 8) = v15;
  *(a3 + 16) = v19;
  free(v14);
LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_24503BEEC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (*v5 == v4 || *v6 == v4)
  {
    v8 = (4 * (*(v6 + 20) * *(v5 + 16)) + 31) & 0x7FFFFFFE0;
    v17 = v8 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v8, 0xE1AC2527uLL);
    v16 = memptr;
    v9 = *(*(a2 + 16) + 20);
    LODWORD(v18) = *(*(a2 + 8) + 16);
    HIDWORD(v18) = v9;
    sub_24503BEEC(&v16, a2);
    v10 = *a1;
    v11 = v17;
    *a1 = v16;
    *(a1 + 8) = v11;
    *(a1 + 16) = v18;
    free(v10);
  }

  else if (*(v5 + 20) * *(v5 + 16) && *(v6 + 20) * *(v6 + 16))
  {
    v7 = *(a2 + 24);
    v15 = *(a1 + 16);
    v14 = *(v6 + 16);
    v13 = *v6;
    cblas_sgemm_NEWLAPACK();
  }

  else
  {
    v12 = *(a1 + 20) * *(a1 + 16);
    if (v12)
    {

      bzero(v4, 4 * v12);
    }
  }
}

void cva::PCA<float>::project<cva::MatrixRef<float,0u,0u,false>,void>(uint64_t a1, int *a2, int *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = a2;
  v45 = a1 + 24;
  v46 = 1065353216;
  v4 = *(a3 + 1);
  v5 = v4 - 4 * a3[5];
  if (*(a2 + 1) - 4 * a2[5] == v5 || *(a1 + 24) == v5)
  {
    v7 = (4 * (*(a1 + 44) * *a2) + 31) & 0x7FFFFFFE0;
    v39[1] = (v7 >> 2);
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v39[0] = memptr;
    v10 = *(a1 + 44);
    v40 = *a2;
    v41 = v10;
    sub_24503C22C(v39, v43);
    v11 = *a3;
    v12 = a3[1];
    v13 = v12 * *a3;
    v14 = a3[4];
    v15 = v13 == 0;
    if (v13)
    {
      v16 = *(a3 + 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a3 + 1) + 4 * (v14 * v12);
    if (v15)
    {
      v17 = 0;
    }

    v18 = v39[0];
    if (v16 != v17)
    {
      v19 = 0;
      v20 = v14 - v11;
      v21 = v39[0];
      do
      {
        v22 = *v21++;
        *v16 = v22;
        if (v19 + 1 >= v11)
        {
          v23 = v20;
        }

        else
        {
          v23 = 0;
        }

        v16 += v23 + 1;
        if (v19 + 1 < v11)
        {
          ++v19;
        }

        else
        {
          v19 = 0;
        }
      }

      while (v16 != v17);
    }

    free(v18);
  }

  else if (a2[1] * *a2 && *(a1 + 44) * *(a1 + 40))
  {
    v6 = a2[4];
    v38 = a3[4];
    v37 = *(a3 + 1);
    v36 = *(a1 + 40);
    v35 = *(a1 + 24);
    cblas_sgemm_NEWLAPACK();
  }

  else
  {
    v25 = *a3;
    v26 = a3[1];
    v27 = v26 * *a3;
    v28 = a3[4];
    v29 = v27 == 0;
    if (v27)
    {
      v30 = *(a3 + 1);
    }

    else
    {
      v30 = 0;
    }

    v31 = (v4 + 4 * (v28 * v26));
    if (v29)
    {
      v31 = 0;
    }

    if (v30 != v31)
    {
      v32 = 0;
      v33 = v28 - v25;
      do
      {
        *v30 = 0;
        if (v32 + 1 >= v25)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v30 += v34 + 1;
        if (v32 + 1 < v25)
        {
          ++v32;
        }

        else
        {
          v32 = 0;
        }
      }

      while (v30 != v31);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_24503C22C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if ((*(v5 + 8) - 4 * *(v5 + 20)) == v4 || *v6 == v4)
  {
    v9 = (4 * (*(v6 + 20) * *v5) + 31) & 0x7FFFFFFE0;
    v18 = v9 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v9, 0xE1AC2527uLL);
    v17 = memptr;
    v10 = *(*(a2 + 16) + 20);
    LODWORD(v19) = **(a2 + 8);
    HIDWORD(v19) = v10;
    sub_24503C22C(&v17, a2);
    v11 = *a1;
    v12 = v18;
    *a1 = v17;
    *(a1 + 8) = v12;
    *(a1 + 16) = v19;
    free(v11);
  }

  else if (*(v5 + 4) * *v5 && *(v6 + 20) * *(v6 + 16))
  {
    v7 = *(v5 + 16);
    v8 = *(a2 + 24);
    v16 = *(a1 + 16);
    v15 = *(v6 + 16);
    v14 = *v6;
    cblas_sgemm_NEWLAPACK();
  }

  else
  {
    v13 = *(a1 + 20) * *(a1 + 16);
    if (v13)
    {

      bzero(v4, 4 * v13);
    }
  }
}

void cva::PCA<float>::backProject<cva::Matrix<float,0u,0u,false>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = a1 + 24;
  v5 = *(a2 + 16);
  if (v5 == *(a3 + 16) && *(a1 + 40) == *(a3 + 20))
  {
LABEL_10:
    v20 = a2;
    v21 = &v15;
    v22 = 1065353216;
    sub_24503C51C(a3, &memptr);
    goto LABEL_11;
  }

  v6 = *a3;
  if (*a2 != *a3 && *(a1 + 24) != v6)
  {
    v7 = *(a1 + 40);
    *(a3 + 16) = v5;
    *(a3 + 20) = v7;
    v8 = (v7 * v5);
    if (v8)
    {
      if (*(a3 + 8) < v8)
      {
        free(v6);
        v9 = (4 * v8 + 31) & 0x7FFFFFFE0;
        *a3 = 0;
        *(a3 + 8) = v9 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v9, 0xE1AC2527uLL);
        *a3 = memptr;
      }
    }

    else
    {
      free(v6);
      *a3 = 0;
      *(a3 + 8) = 0;
    }

    goto LABEL_10;
  }

  v10 = (4 * (*(a1 + 40) * v5) + 31) & 0x7FFFFFFE0;
  v17 = v10 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
  v16 = memptr;
  v11 = *(v15 + 16);
  LODWORD(v18) = *(a2 + 16);
  HIDWORD(v18) = v11;
  v20 = a2;
  v21 = &v15;
  v22 = 1065353216;
  sub_24503C51C(&v16, &memptr);
  v12 = *a3;
  v13 = v17;
  *a3 = v16;
  *(a3 + 8) = v13;
  *(a3 + 16) = v18;
  free(v12);
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_24503C51C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = **(a2 + 16);
  if (*v5 == v4 || *v6 == v4)
  {
    v8 = (4 * (*(v6 + 16) * *(v5 + 16)) + 31) & 0x7FFFFFFE0;
    v17 = v8 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v8, 0xE1AC2527uLL);
    v16 = memptr;
    v9 = *(**(a2 + 16) + 16);
    LODWORD(v18) = *(*(a2 + 8) + 16);
    HIDWORD(v18) = v9;
    sub_24503C51C(&v16, a2);
    v10 = *a1;
    v11 = v17;
    *a1 = v16;
    *(a1 + 8) = v11;
    *(a1 + 16) = v18;
    free(v10);
  }

  else if (*(v5 + 20) * *(v5 + 16) && *(v6 + 16) * *(v6 + 20))
  {
    v7 = *(a2 + 24);
    v15 = *(a1 + 16);
    v14 = *(v6 + 16);
    v13 = *v6;
    cblas_sgemm_NEWLAPACK();
  }

  else
  {
    v12 = *(a1 + 20) * *(a1 + 16);
    if (v12)
    {

      bzero(v4, 4 * v12);
    }
  }
}

void cva::PCA<float>::backProject<cva::MatrixRef<float,0u,0u,false>,void>(uint64_t a1, int *a2, int *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v38 = a1 + 24;
  v44 = a2;
  v45 = &v38;
  v46 = 1065353216;
  v4 = *(a3 + 1);
  v5 = v4 - 4 * a3[5];
  if (*(a2 + 1) - 4 * a2[5] == v5 || *(a1 + 24) == v5)
  {
    v7 = (4 * (*(a1 + 40) * *a2) + 31) & 0x7FFFFFFE0;
    v39[1] = (v7 >> 2);
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v39[0] = memptr;
    v9 = *(v38 + 16);
    v40 = *a2;
    v41 = v9;
    sub_24503C864(v39, v43);
    v10 = *a3;
    v11 = a3[1];
    v12 = v11 * *a3;
    v13 = a3[4];
    v14 = v12 == 0;
    if (v12)
    {
      v15 = *(a3 + 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a3 + 1) + 4 * (v13 * v11);
    if (v14)
    {
      v16 = 0;
    }

    v17 = v39[0];
    if (v15 != v16)
    {
      v18 = 0;
      v19 = v13 - v10;
      v20 = v39[0];
      do
      {
        v21 = *v20++;
        *v15 = v21;
        if (v18 + 1 >= v10)
        {
          v22 = v19;
        }

        else
        {
          v22 = 0;
        }

        v15 += v22 + 1;
        if (v18 + 1 < v10)
        {
          ++v18;
        }

        else
        {
          v18 = 0;
        }
      }

      while (v15 != v16);
    }

    free(v17);
  }

  else if (a2[1] * *a2 && *(a1 + 40) * *(a1 + 44))
  {
    v6 = a2[4];
    v37 = a3[4];
    v36 = *(a3 + 1);
    v35 = *(a1 + 40);
    v34 = *(a1 + 24);
    cblas_sgemm_NEWLAPACK();
  }

  else
  {
    v24 = *a3;
    v25 = a3[1];
    v26 = v25 * *a3;
    v27 = a3[4];
    v28 = v26 == 0;
    if (v26)
    {
      v29 = *(a3 + 1);
    }

    else
    {
      v29 = 0;
    }

    v30 = (v4 + 4 * (v27 * v25));
    if (v28)
    {
      v30 = 0;
    }

    if (v29 != v30)
    {
      v31 = 0;
      v32 = v27 - v24;
      do
      {
        *v29 = 0;
        if (v31 + 1 >= v24)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        v29 += v33 + 1;
        if (v31 + 1 < v24)
        {
          ++v31;
        }

        else
        {
          v31 = 0;
        }
      }

      while (v29 != v30);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_24503C864(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = **(a2 + 16);
  if ((*(v5 + 8) - 4 * *(v5 + 20)) == v4 || *v6 == v4)
  {
    v9 = (4 * (*(v6 + 16) * *v5) + 31) & 0x7FFFFFFE0;
    v18 = v9 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v9, 0xE1AC2527uLL);
    v17 = memptr;
    v10 = *(**(a2 + 16) + 16);
    LODWORD(v19) = **(a2 + 8);
    HIDWORD(v19) = v10;
    sub_24503C864(&v17, a2);
    v11 = *a1;
    v12 = v18;
    *a1 = v17;
    *(a1 + 8) = v12;
    *(a1 + 16) = v19;
    free(v11);
  }

  else if (*(v5 + 4) * *v5 && *(v6 + 16) * *(v6 + 20))
  {
    v7 = *(v5 + 16);
    v8 = *(a2 + 24);
    v16 = *(a1 + 16);
    v15 = *(v6 + 16);
    v14 = *v6;
    cblas_sgemm_NEWLAPACK();
  }

  else
  {
    v13 = *(a1 + 20) * *(a1 + 16);
    if (v13)
    {

      bzero(v4, 4 * v13);
    }
  }
}

double cva::PCA<double>::PCA(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

char **cva::PCA<double>::operator()<cva::Matrix<double,0u,0u,false>,void>(void **a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 20);
  if (*(a1 + 16) != v7 || (v8 = *(a2 + 16), v9 = *(a2 + 20), v10 = v8, *(a1 + 17) != v7))
  {
    v11 = (8 * v6 * v7 + 31) & 0xFFFFFFFE0;
    v12 = v11 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v11, 0xE1AC2527uLL);
    v13 = a1[6];
    a1[6] = memptr;
    a1[7] = v12;
    *(a1 + 16) = v7;
    *(a1 + 17) = v6;
    free(v13);
    v10 = *(a2 + 16);
    v9 = *(a2 + 20);
    if (v10 != *(a1 + 16))
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 17);
  }

  if (v9 == v8)
  {
    v14 = a1[6];
    goto LABEL_19;
  }

LABEL_7:
  v14 = a1[6];
  v15 = (v9 * v10);
  if (*a2 == v14)
  {
    v17 = (8 * (v9 * v10) + 31) & 0xFFFFFFFE0;
    v18 = v17 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v17, 0xE1AC2527uLL);
    v19 = memptr;
    v20 = *(a2 + 16);
    v21 = *(a2 + 20);
    v22 = (v21 * v20);
    if (v22)
    {
      v23 = *a2;
      v24 = (v22 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v24 < 3)
      {
        v25 = memptr;
      }

      else
      {
        v25 = memptr;
        if ((memptr - v23) >= 0x20)
        {
          v26 = v24 + 1;
          v27 = (v24 + 1) & 0x3FFFFFFFFFFFFFFCLL;
          v28 = &v23[v27];
          v29 = memptr + 16;
          v30 = (v23 + 2);
          v31 = v27;
          do
          {
            v32 = *v30;
            *(v29 - 1) = *(v30 - 1);
            *v29 = v32;
            v29 += 2;
            v30 += 2;
            v31 -= 4;
          }

          while (v31);
          if (v26 == v27)
          {
            goto LABEL_33;
          }

          v25 = &v19[8 * v27];
          v23 = v28;
        }
      }

      v46 = &v19[8 * v22];
      do
      {
        v47 = *v23++;
        *v25 = v47;
        v25 += 8;
      }

      while (v25 != v46);
    }

LABEL_33:
    v48 = a1[6];
    a1[6] = v19;
    a1[7] = v18;
    *(a1 + 16) = v20;
    *(a1 + 17) = v21;
    free(v48);
    goto LABEL_34;
  }

  *(a1 + 16) = v10;
  *(a1 + 17) = v9;
  if (v15)
  {
    if (a1[7] < v15)
    {
      free(v14);
      v16 = (8 * v15 + 31) & 0xFFFFFFFE0;
      a1[6] = 0;
      a1[7] = (v16 >> 3);
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v16, 0xE1AC2527uLL);
      v14 = memptr;
      a1[6] = memptr;
    }
  }

  else
  {
    free(v14);
    v14 = 0;
    a1[6] = 0;
    a1[7] = 0;
  }

LABEL_19:
  v33 = (*(a1 + 17) * *(a1 + 16));
  if (!v33)
  {
    goto LABEL_34;
  }

  v34 = *a2;
  v35 = (v33 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v35 < 3)
  {
    v36 = v14;
LABEL_27:
    v44 = &v14[8 * v33];
    do
    {
      v45 = *v34++;
      *v36 = v45;
      v36 += 8;
    }

    while (v36 != v44);
    goto LABEL_34;
  }

  v36 = v14;
  if ((v14 - v34) < 0x20)
  {
    goto LABEL_27;
  }

  v37 = v35 + 1;
  v38 = (v35 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v39 = &v34[v38];
  v40 = v14 + 16;
  v41 = (v34 + 2);
  v42 = v38;
  do
  {
    v43 = *v41;
    *(v40 - 1) = *(v41 - 1);
    *v40 = v43;
    v40 += 2;
    v41 += 2;
    v42 -= 4;
  }

  while (v42);
  if (v37 != v38)
  {
    v36 = &v14[8 * v38];
    v34 = v39;
    goto LABEL_27;
  }

LABEL_34:
  if (*(a1 + 22) != v7)
  {
    v49 = (8 * v7 * v7 + 31) & 0xFFFFFFFE0;
    v50 = v49 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v49, 0xE1AC2527uLL);
    v51 = a1[9];
    a1[9] = memptr;
    a1[10] = v50;
    *(a1 + 22) = v7;
    *(a1 + 23) = v7;
    free(v51);
  }

  if (v6 >= v7)
  {
    v52 = v7;
  }

  else
  {
    v52 = v6;
  }

  if (*(a1 + 28) != v52)
  {
    v53 = (8 * v52 + 31) & 0xFFFFFFFE0;
    v54 = v53 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v53, 0xE1AC2527uLL);
    v55 = a1[12];
    a1[12] = memptr;
    a1[13] = v54;
    *(a1 + 28) = v52;
    *(a1 + 29) = 1;
    free(v55);
  }

  if (*(a1 + 34) != v6)
  {
    v56 = (8 * (v6 * v6) + 31) & 0xFFFFFFFE0;
    v57 = v56 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v56, 0xE1AC2527uLL);
    v58 = a1[15];
    a1[15] = memptr;
    a1[16] = v57;
    *(a1 + 34) = v6;
    *(a1 + 35) = v6;
    free(v58);
  }

  if (sub_24503CFB0(a1 + 6, a1 + 12, a1 + 9, a1 + 15))
  {
    if (v6 >= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v6;
    }

    if (*(a1 + 4) != v3)
    {
      v59 = (8 * v3 + 31) & 0xFFFFFFFE0;
      v60 = v59 >> 3;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v59, 0xE1AC2527uLL);
      v61 = *a1;
      *a1 = memptr;
      a1[1] = v60;
      *(a1 + 4) = v3;
      *(a1 + 5) = 1;
      free(v61);
      v62 = (8 * (v3 * v6) + 31) & 0xFFFFFFFE0;
      v63 = v62 >> 3;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v62, 0xE1AC2527uLL);
      v64 = a1[3];
      a1[3] = memptr;
      a1[4] = v63;
      *(a1 + 10) = v6;
      *(a1 + 11) = v3;
      free(v64);
    }

    if (v3)
    {
      v65 = 0;
      v66 = a1[12];
      v67 = *a1;
      if (v3 < 4)
      {
        goto LABEL_55;
      }

      if ((v67 - v66) <= 0x1F)
      {
        goto LABEL_55;
      }

      v65 = v3 & 0xFFFFFFFC;
      v68 = v67 + 1;
      v69 = v66 + 1;
      v70 = v65;
      do
      {
        v71 = vmulq_f64(*v69, *v69);
        v68[-1] = vmulq_f64(v69[-1], v69[-1]);
        *v68 = v71;
        v68 += 2;
        v69 += 2;
        v70 -= 4;
      }

      while (v70);
      if (v65 != v3)
      {
LABEL_55:
        v72 = v3 - v65;
        v73 = v65;
        v74 = &v67->f64[v65];
        v75 = &v66->f64[v73];
        do
        {
          v76 = *v75++;
          *v74++ = v76 * v76;
          --v72;
        }

        while (v72);
      }

      v77 = 0;
      v78 = 0;
      v79 = *(a1 + 34);
      v80 = a1[15];
      v81 = *(a1 + 10);
      v82 = a1[3];
      v83 = v6 - 1;
      do
      {
        if (v6 >= 0x10)
        {
          v84 = 0;
          v88 = __CFADD__(v81 * v78, v83);
          if (!__CFADD__(v78, v83) && v79 == 1 && !v88 && !((v6 - 1) >> 32) && v82 - &v80[8 * v78] + 8 * (v81 * v78) >= 0x20)
          {
            v89 = v77;
            v90 = v6 & 0xFFFFFFFC;
            v91 = v78;
            do
            {
              v92 = &v80[8 * v91];
              v93 = *v92;
              v94 = v92[1];
              v95 = &v82[8 * v89];
              *v95 = v93;
              *(v95 + 1) = v94;
              v91 += 4;
              v89 += 4;
              v90 -= 4;
            }

            while (v90);
            v84 = v6 & 0xFFFFFFFC;
            if (v84 == v6)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          v84 = 0;
        }

        v85 = v6 - v84;
        v86 = v77 + v84;
        v87 = v78 + v79 * v84;
        do
        {
          *&v82[8 * v86++] = *&v80[8 * v87];
          v87 += v79;
          --v85;
        }

        while (v85);
LABEL_58:
        ++v78;
        v77 += v81;
      }

      while (v78 != v3);
    }
  }

  else
  {
    v96 = *a1;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    free(v96);
    v97 = a1[3];
    a1[4] = 0;
    a1[5] = 0;
    a1[3] = 0;
    free(v97);
  }

  return a1;
}

uint64_t sub_24503CFB0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a1 + 5) >= *(a1 + 4))
  {
    v8 = *(a1 + 4);
  }

  else
  {
    v8 = *(a1 + 5);
  }

  if (4 * (8 * v8))
  {
    v9 = malloc_type_malloc(4 * (8 * v8), 0x100004052888210uLL);
  }

  else
  {
    v9 = 0;
  }

  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  dgesdd_NEWLAPACK();
  if (8 * 0.0)
  {
    v14 = malloc_type_malloc(8 * 0.0, 0x100004000313F17uLL);
  }

  else
  {
    v14 = 0;
  }

  v15 = *a1;
  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  dgesdd_NEWLAPACK();
  if (v14)
  {
    free(v14);
  }

  if (v9)
  {
    free(v9);
  }

  return 1;
}

char **cva::PCA<double>::operator()<cva::MatrixRef<double,0u,0u,false>,void>(void **a1, uint64_t a2, unsigned int a3)
{
  v7 = *a2;
  v6 = *(a2 + 4);
  if (*(a1 + 16) != *a2 || (v8 = *a2, v9 = *(a2 + 4), v10 = *a2, *(a1 + 17) != v7))
  {
    v11 = (8 * v6 * v7 + 31) & 0xFFFFFFFE0;
    v12 = v11 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v11, 0xE1AC2527uLL);
    v13 = a1[6];
    a1[6] = memptr;
    a1[7] = v12;
    *(a1 + 16) = v7;
    *(a1 + 17) = v6;
    free(v13);
    v10 = *a2;
    v9 = *(a2 + 4);
    if (*a2 != *(a1 + 16))
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 17);
  }

  if (v9 == v8)
  {
    v14 = a1[6];
    goto LABEL_23;
  }

LABEL_7:
  v14 = a1[6];
  v15 = v9 * v10;
  if ((*(a2 + 8) - 8 * *(a2 + 20)) == v14)
  {
    v17 = (8 * v9 * v10 + 31) & 0xFFFFFFFE0;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v17, 0xE1AC2527uLL);
    v18 = memptr;
    v19 = *a2;
    v20 = *(a2 + 4);
    v21 = *(a2 + 8);
    v113 = a3;
    if (&v21[-*(a2 + 20)] == memptr)
    {
      v53 = (v20 * v19);
      v17 = (8 * v53 + 31) & 0xFFFFFFFE0;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v17, 0xE1AC2527uLL);
      v29 = memptr;
      if (v53)
      {
        v54 = 0;
        v55 = *a2;
        v56 = *(a2 + 16) - *a2;
        v57 = *(a2 + 8);
        if (!(*(a2 + 4) * *a2))
        {
          v57 = 0;
        }

        v58 = 8 * v53;
        v59 = memptr;
        do
        {
          *v59++ = *v57;
          if (v54 + 1 >= v55)
          {
            v60 = v56;
          }

          else
          {
            v60 = 0;
          }

          v61 = &v57[v60];
          if (v54 + 1 < v55)
          {
            ++v54;
          }

          else
          {
            v54 = 0;
          }

          v57 = v61 + 1;
          v58 -= 8;
        }

        while (v58);
      }

      free(v18);
    }

    else
    {
      v22 = (v20 * v19);
      if (v22)
      {
        v23 = 0;
        v24 = 0;
        v25 = *(a2 + 16) - v19;
        v26 = 8 * v22;
        do
        {
          *&v18[v23] = *v21;
          if (v24 + 1 >= v19)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0;
          }

          v28 = &v21[v27];
          if (v24 + 1 < v19)
          {
            ++v24;
          }

          else
          {
            v24 = 0;
          }

          v21 = v28 + 1;
          v23 += 8;
        }

        while (v26 != v23);
      }

      v29 = v18;
    }

    v52 = a1[6];
    a1[6] = v29;
    a1[7] = (v17 >> 3);
    *(a1 + 16) = v19;
    *(a1 + 17) = v20;
    a3 = v113;
    goto LABEL_62;
  }

  *(a1 + 16) = v10;
  *(a1 + 17) = v9;
  if (v15)
  {
    if (a1[7] < v15)
    {
      free(v14);
      v16 = (8 * v15 + 31) & 0xFFFFFFFE0;
      a1[6] = 0;
      a1[7] = (v16 >> 3);
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v16, 0xE1AC2527uLL);
      v14 = memptr;
      a1[6] = memptr;
    }
  }

  else
  {
    free(v14);
    v14 = 0;
    a1[6] = 0;
    a1[7] = 0;
  }

LABEL_23:
  if ((*(a2 + 8) - 8 * *(a2 + 20)) == v14)
  {
    v38 = *(a1 + 16);
    v39 = *(a1 + 17);
    v40 = (v39 * v38);
    v41 = (8 * v40 + 31) & 0xFFFFFFFE0;
    v42 = v41 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v41, 0xE1AC2527uLL);
    v43 = memptr;
    if (v40)
    {
      v44 = 0;
      v45 = *a2;
      v46 = *(a2 + 16) - *a2;
      v47 = *(a2 + 8);
      if (!(*(a2 + 4) * *a2))
      {
        v47 = 0;
      }

      v48 = 8 * v40;
      v49 = memptr;
      do
      {
        *v49++ = *v47;
        if (v44 + 1 >= v45)
        {
          v50 = v46;
        }

        else
        {
          v50 = 0;
        }

        v51 = &v47[v50];
        if (v44 + 1 < v45)
        {
          ++v44;
        }

        else
        {
          v44 = 0;
        }

        v47 = v51 + 1;
        v48 -= 8;
      }

      while (v48);
    }

    v52 = a1[6];
    a1[6] = v43;
    a1[7] = v42;
    *(a1 + 16) = v38;
    *(a1 + 17) = v39;
LABEL_62:
    free(v52);
    goto LABEL_63;
  }

  v30 = (*(a1 + 17) * *(a1 + 16));
  if (v30)
  {
    v31 = 0;
    v32 = *a2;
    v33 = *(a2 + 16) - *a2;
    if (*(a2 + 4) * *a2)
    {
      v34 = *(a2 + 8);
    }

    else
    {
      v34 = 0;
    }

    v35 = 8 * v30;
    do
    {
      *v14 = *v34;
      v14 += 8;
      if (v31 + 1 >= v32)
      {
        v36 = v33;
      }

      else
      {
        v36 = 0;
      }

      v37 = &v34[v36];
      if (v31 + 1 < v32)
      {
        ++v31;
      }

      else
      {
        v31 = 0;
      }

      v34 = v37 + 1;
      v35 -= 8;
    }

    while (v35);
  }

LABEL_63:
  if (*(a1 + 22) != v7)
  {
    v62 = (8 * v7 * v7 + 31) & 0xFFFFFFFE0;
    v63 = v62 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v62, 0xE1AC2527uLL);
    v64 = a1[9];
    a1[9] = memptr;
    a1[10] = v63;
    *(a1 + 22) = v7;
    *(a1 + 23) = v7;
    free(v64);
  }

  if (v6 >= v7)
  {
    v65 = v7;
  }

  else
  {
    v65 = v6;
  }

  if (*(a1 + 28) != v65)
  {
    v66 = (8 * v65 + 31) & 0xFFFFFFFE0;
    v67 = v66 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v66, 0xE1AC2527uLL);
    v68 = a1[12];
    a1[12] = memptr;
    a1[13] = v67;
    *(a1 + 28) = v65;
    *(a1 + 29) = 1;
    free(v68);
  }

  if (*(a1 + 34) != v6)
  {
    v69 = (8 * (v6 * v6) + 31) & 0xFFFFFFFE0;
    v70 = v69 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v69, 0xE1AC2527uLL);
    v71 = a1[15];
    a1[15] = memptr;
    a1[16] = v70;
    *(a1 + 34) = v6;
    *(a1 + 35) = v6;
    free(v71);
  }

  if (sub_24503CFB0(a1 + 6, a1 + 12, a1 + 9, a1 + 15))
  {
    if (v6 >= a3)
    {
      v72 = a3;
    }

    else
    {
      v72 = v6;
    }

    if (*(a1 + 4) != v72)
    {
      v73 = (8 * v72 + 31) & 0xFFFFFFFE0;
      v74 = v73 >> 3;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v73, 0xE1AC2527uLL);
      v75 = *a1;
      *a1 = memptr;
      a1[1] = v74;
      *(a1 + 4) = v72;
      *(a1 + 5) = 1;
      free(v75);
      v76 = (8 * (v72 * v6) + 31) & 0xFFFFFFFE0;
      v77 = v76 >> 3;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v76, 0xE1AC2527uLL);
      v78 = a1[3];
      a1[3] = memptr;
      a1[4] = v77;
      *(a1 + 10) = v6;
      *(a1 + 11) = v72;
      free(v78);
    }

    if (v72)
    {
      v79 = 0;
      v80 = a1[12];
      v81 = *a1;
      if (v72 < 4)
      {
        goto LABEL_84;
      }

      if ((v81 - v80) <= 0x1F)
      {
        goto LABEL_84;
      }

      v79 = v72 & 0xFFFFFFFC;
      v82 = v81 + 1;
      v83 = v80 + 1;
      v84 = v79;
      do
      {
        v85 = vmulq_f64(*v83, *v83);
        v82[-1] = vmulq_f64(v83[-1], v83[-1]);
        *v82 = v85;
        v82 += 2;
        v83 += 2;
        v84 -= 4;
      }

      while (v84);
      if (v79 != v72)
      {
LABEL_84:
        v86 = v72 - v79;
        v87 = v79;
        v88 = &v81->f64[v79];
        v89 = &v80->f64[v87];
        do
        {
          v90 = *v89++;
          *v88++ = v90 * v90;
          --v86;
        }

        while (v86);
      }

      v91 = 0;
      v92 = 0;
      v93 = *(a1 + 34);
      v94 = a1[15];
      v95 = *(a1 + 10);
      v96 = a1[3];
      v97 = v6 - 1;
      do
      {
        if (v6 >= 0x10)
        {
          v98 = 0;
          v102 = __CFADD__(v95 * v92, v97);
          if (!__CFADD__(v92, v97) && v93 == 1 && !v102 && !((v6 - 1) >> 32) && v96 - &v94[8 * v92] + 8 * (v95 * v92) >= 0x20)
          {
            v103 = v91;
            v104 = v6 & 0xFFFFFFFC;
            v105 = v92;
            do
            {
              v106 = &v94[8 * v105];
              v107 = *v106;
              v108 = v106[1];
              v109 = &v96[8 * v103];
              *v109 = v107;
              *(v109 + 1) = v108;
              v105 += 4;
              v103 += 4;
              v104 -= 4;
            }

            while (v104);
            v98 = v6 & 0xFFFFFFFC;
            if (v98 == v6)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
          v98 = 0;
        }

        v99 = v6 - v98;
        v100 = v91 + v98;
        v101 = v92 + v93 * v98;
        do
        {
          *&v96[8 * v100++] = *&v94[8 * v101];
          v101 += v93;
          --v99;
        }

        while (v99);
LABEL_87:
        ++v92;
        v91 += v95;
      }

      while (v92 != v72);
    }
  }

  else
  {
    v110 = *a1;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    free(v110);
    v111 = a1[3];
    a1[4] = 0;
    a1[5] = 0;
    a1[3] = 0;
    free(v111);
  }

  return a1;
}

void cva::PCA<double>::project<cva::Matrix<double,0u,0u,false>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 24);
  v6 = *(a2 + 16);
  if (v6 == *(a3 + 16) && *(a1 + 44) == *(a3 + 20))
  {
LABEL_10:
    v21 = a2;
    v22 = v5;
    v23 = 0x3FF0000000000000;
    sub_24503D9C4(a3, &memptr);
    goto LABEL_11;
  }

  v7 = *a3;
  if (*a2 != *a3 && *v5 != v7)
  {
    v8 = *(a1 + 44);
    *(a3 + 16) = v6;
    *(a3 + 20) = v8;
    v9 = (v8 * v6);
    if (v9)
    {
      if (*(a3 + 8) < v9)
      {
        free(v7);
        v10 = (8 * v9 + 31) & 0xFFFFFFFE0;
        *a3 = 0;
        *(a3 + 8) = v10 >> 3;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
        *a3 = memptr;
      }
    }

    else
    {
      free(v7);
      *a3 = 0;
      *(a3 + 8) = 0;
    }

    goto LABEL_10;
  }

  v11 = (8 * (*(a1 + 44) * v6) + 31) & 0xFFFFFFFE0;
  v18 = v11 >> 3;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v11, 0xE1AC2527uLL);
  v17 = memptr;
  v13 = *(a1 + 44);
  LODWORD(v19) = *(a2 + 16);
  HIDWORD(v19) = v13;
  v21 = a2;
  v22 = v5;
  v23 = 0x3FF0000000000000;
  sub_24503D9C4(&v17, &memptr);
  v14 = *a3;
  v15 = v18;
  *a3 = v17;
  *(a3 + 8) = v15;
  *(a3 + 16) = v19;
  free(v14);
LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_24503D9C4(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = a2[1];
  v6 = a2[2];
  if (*v5 == v4 || *v6 == v4)
  {
    v8 = (8 * (*(v6 + 20) * *(v5 + 16)) + 31) & 0xFFFFFFFE0;
    v17 = v8 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v8, 0xE1AC2527uLL);
    v16 = memptr;
    v9 = *(a2[2] + 20);
    LODWORD(v18) = *(a2[1] + 16);
    HIDWORD(v18) = v9;
    sub_24503D9C4(&v16, a2);
    v10 = *a1;
    v11 = v17;
    *a1 = v16;
    *(a1 + 8) = v11;
    *(a1 + 16) = v18;
    free(v10);
  }

  else if (*(v5 + 20) * *(v5 + 16) && *(v6 + 20) * *(v6 + 16))
  {
    v7 = a2[3];
    v15 = *(a1 + 16);
    v14 = *(v6 + 16);
    v13 = *v6;
    cblas_dgemm_NEWLAPACK();
  }

  else
  {
    v12 = *(a1 + 20) * *(a1 + 16);
    if (v12)
    {

      bzero(v4, 8 * v12);
    }
  }
}

void cva::PCA<double>::project<cva::MatrixRef<double,0u,0u,false>,void>(uint64_t a1, int *a2, int *a3)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v43[1] = a2;
  v43[2] = a1 + 24;
  v43[3] = 0x3FF0000000000000;
  v4 = *(a3 + 1);
  v5 = v4 - 8 * a3[5];
  if (*(a2 + 1) - 8 * a2[5] == v5 || *(a1 + 24) == v5)
  {
    v7 = (8 * (*(a1 + 44) * *a2) + 31) & 0xFFFFFFFE0;
    v39[1] = (v7 >> 3);
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v39[0] = memptr;
    v10 = *(a1 + 44);
    v40 = *a2;
    v41 = v10;
    sub_24503DD04(v39, v43);
    v11 = *a3;
    v12 = a3[1];
    v13 = v12 * *a3;
    v14 = a3[4];
    v15 = v13 == 0;
    if (v13)
    {
      v16 = *(a3 + 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a3 + 1) + 8 * (v14 * v12);
    if (v15)
    {
      v17 = 0;
    }

    v18 = v39[0];
    if (v16 != v17)
    {
      v19 = 0;
      v20 = v14 - v11;
      v21 = v39[0];
      do
      {
        v22 = *v21++;
        *v16 = v22;
        if (v19 + 1 >= v11)
        {
          v23 = v20;
        }

        else
        {
          v23 = 0;
        }

        v16 += v23 + 1;
        if (v19 + 1 < v11)
        {
          ++v19;
        }

        else
        {
          v19 = 0;
        }
      }

      while (v16 != v17);
    }

    free(v18);
  }

  else if (a2[1] * *a2 && *(a1 + 44) * *(a1 + 40))
  {
    v6 = a2[4];
    v38 = a3[4];
    v37 = *(a3 + 1);
    v36 = *(a1 + 40);
    v35 = *(a1 + 24);
    cblas_dgemm_NEWLAPACK();
  }

  else
  {
    v25 = *a3;
    v26 = a3[1];
    v27 = v26 * *a3;
    v28 = a3[4];
    v29 = v27 == 0;
    if (v27)
    {
      v30 = *(a3 + 1);
    }

    else
    {
      v30 = 0;
    }

    v31 = (v4 + 8 * (v28 * v26));
    if (v29)
    {
      v31 = 0;
    }

    if (v30 != v31)
    {
      v32 = 0;
      v33 = v28 - v25;
      do
      {
        *v30 = 0;
        if (v32 + 1 >= v25)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        v30 += v34 + 1;
        if (v32 + 1 < v25)
        {
          ++v32;
        }

        else
        {
          v32 = 0;
        }
      }

      while (v30 != v31);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_24503DD04(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = a2[1];
  v6 = a2[2];
  if ((*(v5 + 8) - 8 * *(v5 + 20)) == v4 || *v6 == v4)
  {
    v9 = (8 * (*(v6 + 20) * *v5) + 31) & 0xFFFFFFFE0;
    v18 = v9 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v9, 0xE1AC2527uLL);
    v17 = memptr;
    v10 = *(a2[2] + 20);
    LODWORD(v19) = *a2[1];
    HIDWORD(v19) = v10;
    sub_24503DD04(&v17, a2);
    v11 = *a1;
    v12 = v18;
    *a1 = v17;
    *(a1 + 8) = v12;
    *(a1 + 16) = v19;
    free(v11);
  }

  else if (*(v5 + 4) * *v5 && *(v6 + 20) * *(v6 + 16))
  {
    v7 = *(v5 + 16);
    v8 = a2[3];
    v16 = *(a1 + 16);
    v15 = *(v6 + 16);
    v14 = *v6;
    cblas_dgemm_NEWLAPACK();
  }

  else
  {
    v13 = *(a1 + 20) * *(a1 + 16);
    if (v13)
    {

      bzero(v4, 8 * v13);
    }
  }
}

void cva::PCA<double>::backProject<cva::Matrix<double,0u,0u,false>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v15 = a1 + 24;
  v5 = *(a2 + 16);
  if (v5 == *(a3 + 16) && *(a1 + 40) == *(a3 + 20))
  {
LABEL_10:
    v20 = a2;
    v21 = &v15;
    v22 = 0x3FF0000000000000;
    sub_24503DFF4(a3, &memptr);
    goto LABEL_11;
  }

  v6 = *a3;
  if (*a2 != *a3 && *(a1 + 24) != v6)
  {
    v7 = *(a1 + 40);
    *(a3 + 16) = v5;
    *(a3 + 20) = v7;
    v8 = (v7 * v5);
    if (v8)
    {
      if (*(a3 + 8) < v8)
      {
        free(v6);
        v9 = (8 * v8 + 31) & 0xFFFFFFFE0;
        *a3 = 0;
        *(a3 + 8) = v9 >> 3;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v9, 0xE1AC2527uLL);
        *a3 = memptr;
      }
    }

    else
    {
      free(v6);
      *a3 = 0;
      *(a3 + 8) = 0;
    }

    goto LABEL_10;
  }

  v10 = (8 * (*(a1 + 40) * v5) + 31) & 0xFFFFFFFE0;
  v17 = v10 >> 3;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
  v16 = memptr;
  v11 = *(v15 + 16);
  LODWORD(v18) = *(a2 + 16);
  HIDWORD(v18) = v11;
  v20 = a2;
  v21 = &v15;
  v22 = 0x3FF0000000000000;
  sub_24503DFF4(&v16, &memptr);
  v12 = *a3;
  v13 = v17;
  *a3 = v16;
  *(a3 + 8) = v13;
  *(a3 + 16) = v18;
  free(v12);
LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_24503DFF4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = **(a2 + 16);
  if (*v5 == v4 || *v6 == v4)
  {
    v8 = (8 * (*(v6 + 16) * *(v5 + 16)) + 31) & 0xFFFFFFFE0;
    v17 = v8 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v8, 0xE1AC2527uLL);
    v16 = memptr;
    v9 = *(**(a2 + 16) + 16);
    LODWORD(v18) = *(*(a2 + 8) + 16);
    HIDWORD(v18) = v9;
    sub_24503DFF4(&v16, a2);
    v10 = *a1;
    v11 = v17;
    *a1 = v16;
    *(a1 + 8) = v11;
    *(a1 + 16) = v18;
    free(v10);
  }

  else if (*(v5 + 20) * *(v5 + 16) && *(v6 + 16) * *(v6 + 20))
  {
    v7 = *(a2 + 24);
    v15 = *(a1 + 16);
    v14 = *(v6 + 16);
    v13 = *v6;
    cblas_dgemm_NEWLAPACK();
  }

  else
  {
    v12 = *(a1 + 20) * *(a1 + 16);
    if (v12)
    {

      bzero(v4, 8 * v12);
    }
  }
}

void cva::PCA<double>::backProject<cva::MatrixRef<double,0u,0u,false>,void>(uint64_t a1, int *a2, int *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v38 = a1 + 24;
  v44 = a2;
  v45 = &v38;
  v46 = 0x3FF0000000000000;
  v4 = *(a3 + 1);
  v5 = v4 - 8 * a3[5];
  if (*(a2 + 1) - 8 * a2[5] == v5 || *(a1 + 24) == v5)
  {
    v7 = (8 * (*(a1 + 40) * *a2) + 31) & 0xFFFFFFFE0;
    v39[1] = (v7 >> 3);
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v39[0] = memptr;
    v9 = *(v38 + 16);
    v40 = *a2;
    v41 = v9;
    sub_24503E33C(v39, v43);
    v10 = *a3;
    v11 = a3[1];
    v12 = v11 * *a3;
    v13 = a3[4];
    v14 = v12 == 0;
    if (v12)
    {
      v15 = *(a3 + 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a3 + 1) + 8 * (v13 * v11);
    if (v14)
    {
      v16 = 0;
    }

    v17 = v39[0];
    if (v15 != v16)
    {
      v18 = 0;
      v19 = v13 - v10;
      v20 = v39[0];
      do
      {
        v21 = *v20++;
        *v15 = v21;
        if (v18 + 1 >= v10)
        {
          v22 = v19;
        }

        else
        {
          v22 = 0;
        }

        v15 += v22 + 1;
        if (v18 + 1 < v10)
        {
          ++v18;
        }

        else
        {
          v18 = 0;
        }
      }

      while (v15 != v16);
    }

    free(v17);
  }

  else if (a2[1] * *a2 && *(a1 + 40) * *(a1 + 44))
  {
    v6 = a2[4];
    v37 = a3[4];
    v36 = *(a3 + 1);
    v35 = *(a1 + 40);
    v34 = *(a1 + 24);
    cblas_dgemm_NEWLAPACK();
  }

  else
  {
    v24 = *a3;
    v25 = a3[1];
    v26 = v25 * *a3;
    v27 = a3[4];
    v28 = v26 == 0;
    if (v26)
    {
      v29 = *(a3 + 1);
    }

    else
    {
      v29 = 0;
    }

    v30 = (v4 + 8 * (v27 * v25));
    if (v28)
    {
      v30 = 0;
    }

    if (v29 != v30)
    {
      v31 = 0;
      v32 = v27 - v24;
      do
      {
        *v29 = 0;
        if (v31 + 1 >= v24)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        v29 += v33 + 1;
        if (v31 + 1 < v24)
        {
          ++v31;
        }

        else
        {
          v31 = 0;
        }
      }

      while (v29 != v30);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_24503E33C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  v6 = **(a2 + 16);
  if ((*(v5 + 8) - 8 * *(v5 + 20)) == v4 || *v6 == v4)
  {
    v9 = (8 * (*(v6 + 16) * *v5) + 31) & 0xFFFFFFFE0;
    v18 = v9 >> 3;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v9, 0xE1AC2527uLL);
    v17 = memptr;
    v10 = *(**(a2 + 16) + 16);
    LODWORD(v19) = **(a2 + 8);
    HIDWORD(v19) = v10;
    sub_24503E33C(&v17, a2);
    v11 = *a1;
    v12 = v18;
    *a1 = v17;
    *(a1 + 8) = v12;
    *(a1 + 16) = v19;
    free(v11);
  }

  else if (*(v5 + 4) * *v5 && *(v6 + 16) * *(v6 + 20))
  {
    v7 = *(v5 + 16);
    v8 = *(a2 + 24);
    v16 = *(a1 + 16);
    v15 = *(v6 + 16);
    v14 = *v6;
    cblas_dgemm_NEWLAPACK();
  }

  else
  {
    v13 = *(a1 + 20) * *(a1 + 16);
    if (v13)
    {

      bzero(v4, 8 * v13);
    }
  }
}

int *cva::Random<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::instance()
{
  if ((atomic_load_explicit(&qword_27EDF6378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EDF6378))
  {
    v1 = cva::Random<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::m_seed;
    dword_27EDF59B0[0] = cva::Random<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>::m_seed;
    for (i = 1; i != 624; ++i)
    {
      v1 = i + 1812433253 * (v1 ^ (v1 >> 30));
      dword_27EDF59B0[i] = v1;
    }

    qword_27EDF6370 = 0;
    __cxa_guard_release(&qword_27EDF6378);
  }

  return dword_27EDF59B0;
}

double cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::SE2GroupStorage(uint64_t a1)
{
  *(a1 + 32) = 1065353216;
  *&result = 1065353216;
  *a1 = xmmword_24508A970;
  *(a1 + 16) = unk_24508A980;
  return result;
}

{
  *(a1 + 32) = 1065353216;
  *&result = 1065353216;
  *a1 = xmmword_24508A970;
  *(a1 + 16) = unk_24508A980;
  return result;
}

uint64_t cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::SE2GroupStorage(uint64_t a1, _DWORD *a2, float a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  v5 = __sincosf_stret(a3);
  *a1 = v5.__cosval;
  *(a1 + 4) = v5.__sinval;
  *(a1 + 12) = -v5.__sinval;
  *(a1 + 16) = v5.__cosval;
  *(a1 + 24) = *a2;
  *(a1 + 28) = a2[1];
  *(a1 + 8) = 0;
  *(a1 + 20) = 0;
  *(a1 + 32) = 1065353216;
  return a1;
}

{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  v5 = __sincosf_stret(a3);
  *a1 = v5.__cosval;
  *(a1 + 4) = v5.__sinval;
  *(a1 + 12) = -v5.__sinval;
  *(a1 + 16) = v5.__cosval;
  *(a1 + 24) = *a2;
  *(a1 + 28) = a2[1];
  *(a1 + 8) = 0;
  *(a1 + 20) = 0;
  *(a1 + 32) = 1065353216;
  return a1;
}

float cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::SE2GroupStorage(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = 0;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = 0x100000000;
  do
  {
    v5 = *a2++;
    *(a1 + v3) = v5;
    v6 = v4 < 1;
    v7 = (v4 >> 30) & 0x3FFFFFFFCLL;
    if (v4 < 1)
    {
      v7 = 0;
    }

    v8 = v3 + v7;
    v9 = (v4 + 1);
    v10 = v4 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      v9 = 0;
    }

    v4 = v9 | v10;
    v3 = v8 + 4;
  }

  while (v3 != 24);
  *(a1 + 24) = *a3;
  result = *(a3 + 4);
  *(a1 + 28) = result;
  *(a1 + 8) = 0;
  *(a1 + 20) = 0;
  *(a1 + 32) = 1065353216;
  return result;
}

{
  v3 = 0;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = 0x100000000;
  do
  {
    v5 = *a2++;
    *(a1 + v3) = v5;
    v6 = v4 < 1;
    v7 = (v4 >> 30) & 0x3FFFFFFFCLL;
    if (v4 < 1)
    {
      v7 = 0;
    }

    v8 = v3 + v7;
    v9 = (v4 + 1);
    v10 = v4 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      v9 = 0;
    }

    v4 = v9 | v10;
    v3 = v8 + 4;
  }

  while (v3 != 24);
  *(a1 + 24) = *a3;
  result = *(a3 + 4);
  *(a1 + 28) = result;
  *(a1 + 8) = 0;
  *(a1 + 20) = 0;
  *(a1 + 32) = 1065353216;
  return result;
}

void cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::R()
{
  ;
}

{
  ;
}

uint64_t cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::T(uint64_t a1)
{
  return a1 + 24;
}

{
  return a1 + 24;
}

double cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::affine@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v2 = *a1;
  *(&v2 + 1) = *(a1 + 12);
  *a2 = v2;
  result = *(a1 + 24);
  *(a2 + 16) = result;
  return result;
}

double cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::lplus(uint64_t a1, float *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v12 = xmmword_24508A970;
  v13 = unk_24508A980;
  v14 = 1065353216;
  v6 = __sincosf_stret(v3);
  v7 = v3 * v3;
  if ((v3 * v3) >= 0.0061)
  {
    v8 = (1.0 / v3) * v6.__sinval;
    v9 = (1.0 / v3) * (1.0 - v6.__cosval);
  }

  else
  {
    v8 = 1.0 - (v7 * ((v7 / -120.0) + 0.16667));
    v9 = v3 * ((v7 / -24.0) + 0.5);
  }

  *&v12 = __PAIR64__(LODWORD(v6.__sinval), LODWORD(v6.__cosval));
  *(&v12 + 3) = -v6.__sinval;
  *&v13 = v6.__cosval;
  *(&v13 + 2) = (v8 * v4) - (v9 * v5);
  *(&v13 + 3) = (v5 * v8) + (v9 * v4);
  v15[0] = &v12;
  v15[1] = a1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  sub_245036A80(&v16, v15);
  result = *&v16;
  v11 = v17;
  *a1 = v16;
  *(a1 + 16) = v11;
  *(a1 + 32) = v18;
  return result;
}

double cva::SE2AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::SE2AlgebraStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

float cva::SE2AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::exp@<S0>(float **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 1065353216;
  *a2 = xmmword_24508A970;
  *(a2 + 16) = unk_24508A980;
  v3 = *a1;
  v4 = **a1;
  v5 = __sincosf_stret(v4);
  v6 = v4 * v4;
  if ((v4 * v4) >= 0.0061)
  {
    v7 = (1.0 / v4) * v5.__sinval;
    v8 = (1.0 / v4) * (1.0 - v5.__cosval);
  }

  else
  {
    v7 = 1.0 - (v6 * ((v6 / -120.0) + 0.16667));
    v8 = v4 * ((v6 / -24.0) + 0.5);
  }

  *a2 = v5.__cosval;
  *(a2 + 4) = v5.__sinval;
  *(a2 + 12) = -v5.__sinval;
  *(a2 + 16) = v5.__cosval;
  v9 = v3[1];
  v10 = v3[2];
  v11 = (v7 * v9) - (v8 * v10);
  result = (v7 * v10) + (v8 * v9);
  *(a2 + 24) = v11;
  *(a2 + 28) = result;
  return result;
}

double cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::rplus(uint64_t a1, float *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v12 = xmmword_24508A970;
  v13 = unk_24508A980;
  v14 = 1065353216;
  v6 = __sincosf_stret(v3);
  v7 = v3 * v3;
  if ((v3 * v3) >= 0.0061)
  {
    v8 = (1.0 / v3) * v6.__sinval;
    v9 = (1.0 / v3) * (1.0 - v6.__cosval);
  }

  else
  {
    v8 = 1.0 - (v7 * ((v7 / -120.0) + 0.16667));
    v9 = v3 * ((v7 / -24.0) + 0.5);
  }

  *&v12 = __PAIR64__(LODWORD(v6.__sinval), LODWORD(v6.__cosval));
  *(&v12 + 3) = -v6.__sinval;
  *&v13 = v6.__cosval;
  *(&v13 + 2) = (v8 * v4) - (v9 * v5);
  *(&v13 + 3) = (v5 * v8) + (v9 * v4);
  v15[0] = a1;
  v15[1] = &v12;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  sub_245036A80(&v16, v15);
  result = *&v16;
  v11 = v17;
  *a1 = v16;
  *(a1 + 16) = v11;
  *(a1 + 32) = v18;
  return result;
}

float32x2_t cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::transform@<D0>(float32x2_t *a1@<X0>, float *a2@<X1>, float32x2_t *a3@<X8>)
{
  *&v9[7] = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = 3;
  v8[0] = v7;
  v8[1] = a2;
  *v9 = 0;
  sub_24503EAF8(v9, v8);
  result = vadd_f32(*v9, a1[3]);
  *a3 = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

float *sub_24503EAF8(float *result, float **a2)
{
  v2 = result;
  v3 = **a2;
  if ((v3 - 4 * *(*a2 + 3)) == result || (v4 = a2[1], v4 == result))
  {
    v17 = 0;
    result = sub_24503EAF8(&v17);
    *v2 = v17;
  }

  else
  {
    v5 = *(*a2 + 2);
    v6 = (2 * v5);
    if (v6)
    {
      v7 = 0;
      v8 = 4 * v6;
      v9 = 4 * v5;
      v10 = 0.0;
      v11 = a2[1];
      do
      {
        v12 = *v11++;
        v10 = v10 + (*(v3 + v7) * v12);
        v7 += v9;
      }

      while (v8 != v7);
      v13 = 0;
      *result = v10;
      v14 = v3 + 4;
      v15 = 0.0;
      do
      {
        v16 = *v4++;
        v15 = v15 + (*(v14 + v13) * v16);
        v13 += v9;
      }

      while (v8 != v13);
    }

    else
    {
      *result = 0.0;
      v15 = 0.0;
    }

    result[1] = v15;
  }

  return result;
}

float32x2_t cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::inverseTransform@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, float32x2_t *a3@<X8>)
{
  v9[0] = a1;
  v9[1] = 3;
  v10 = v9;
  v11[0] = &v10;
  v11[1] = a2;
  v6[0] = a1;
  v6[1] = 3;
  v7 = v6;
  v5[0] = a1 + 24;
  v5[1] = 0x600000003;
  v8[0] = &v7;
  v8[1] = v5;
  v12 = 0;
  sub_24503EC68(&v12, v11);
  v13 = 0;
  sub_24503ECFC(&v13, v8);
  result = vsub_f32(v12, v13);
  *a3 = result;
  return result;
}

float *sub_24503EC68(float *result, uint64_t **a2)
{
  v2 = result;
  v3 = a2[1];
  if (v3 == result)
  {
    v7 = 0;
    result = sub_24503EC68(&v7);
    *v2 = v7;
  }

  else
  {
    v4 = **a2;
    v5 = *v4;
    v6 = *(v4 + 8);
    *result = ((v5[1] * v3[1]) + (*v5 * *v3)) + 0.0;
    result[1] = ((v5[v6 + 1] * v3[1]) + (v5[v6] * *v3)) + 0.0;
  }

  return result;
}

float *sub_24503ECFC(float *result, uint64_t **a2)
{
  v2 = result;
  v3 = a2[1];
  v4 = *v3;
  if ((*v3 - 4 * *(v3 + 3)) == result)
  {
    v8 = 0;
    result = sub_24503ECFC(&v8);
    *v2 = v8;
  }

  else
  {
    v5 = **a2;
    v6 = *(v5 + 8);
    v7 = *v5;
    *result = ((v7[1] * v4[1]) + (*v7 * *v4)) + 0.0;
    result[1] = ((v7[v6 + 1] * v4[1]) + (v7[v6] * *v4)) + 0.0;
  }

  return result;
}

double cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::transformJacobian@<D0>(float *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = -a1[1];
  *(a2 + 4) = v2;
  *&result = 1065353216;
  *(a2 + 8) = xmmword_24508A840;
  return result;
}

float *cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::inverseTransformJacobian@<X0>(float *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = -*a2;
  *a3 = *(a2 + 4);
  *(a3 + 4) = v5;
  v28[0] = a1;
  v28[1] = 3;
  v29 = v28;
  v30 = 0;
  v27[0] = a3;
  v27[1] = 2;
  v31 = &v29;
  v32 = v27;
  result = sub_24503ECFC(&v30, &v31);
  *a3 = v30;
  if (a1 == a3)
  {
    v15 = 0;
    v16 = a1[1];
    v17 = a1[4];
    v18 = -a1[3];
    *&v31 = -*a1;
    *(&v31 + 1) = v18;
    *&v32 = -v16;
    *(&v32 + 1) = -v17;
    v19 = &v31;
    for (i = 8; i != 24; i = v24 + 4)
    {
      v21 = *v19;
      v19 = (v19 + 4);
      *(a3 + i) = v21;
      v22 = v15 < 1;
      v23 = (v15 >> 30) & 0x3FFFFFFFCLL;
      if (v15 < 1)
      {
        v23 = 0;
      }

      v24 = i + v23;
      v25 = (v15 + 1);
      v26 = v15 & 0xFFFFFFFF00000000;
      if (!v22)
      {
        v25 = 0;
      }

      v15 = v25 | v26;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    for (j = 8; j != 24; j = v12 + 4)
    {
      *(a3 + j) = -a1[(3 * v8 + HIDWORD(v8))];
      if (v8 >= 1)
      {
        v8 = (v8 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v8 = (v8 + 1) | v8 & 0xFFFFFFFF00000000;
      }

      v10 = v7 < 1;
      v11 = (v7 >> 30) & 0x3FFFFFFFCLL;
      if (v7 < 1)
      {
        v11 = 0;
      }

      v12 = j + v11;
      v13 = (v7 + 1);
      v14 = v7 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v13 = 0;
      }

      v7 = v13 | v14;
    }
  }

  return result;
}

float cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::log@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  v4 = atan2f(a1[1], *a1);
  v5 = v4 * v4;
  if ((v4 * v4) >= 0.0061)
  {
    v8 = __sincosf_stret(v4);
    v6 = (1.0 / v4) * v8.__sinval;
    v7 = (1.0 / v4) * (1.0 - v8.__cosval);
  }

  else
  {
    v6 = 1.0 - (v5 * ((v5 / -120.0) + 0.16667));
    v7 = v4 * ((v5 / -24.0) + 0.5);
  }

  v9 = 1.0 / ((v7 * v7) + (v6 * v6));
  v10 = a1[6];
  v11 = a1[7];
  *a2 = v4;
  a2[1] = v9 * ((v7 * v11) + (v6 * v10));
  result = v9 * ((v6 * v11) - (v7 * v10));
  a2[2] = result;
  return result;
}

uint64_t cva::SE2AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::SE2AlgebraStorage(uint64_t result)
{
  *(result + 8) = 0;
  *result = 0;
  return result;
}

{
  *(result + 8) = 0;
  *result = 0;
  return result;
}

void cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::logJacobian(float *a1@<X0>, uint64_t a2@<X8>)
{
  v40[2] = *MEMORY[0x277D85DE8];
  *(a2 + 12) = 0u;
  v4 = (a2 + 12);
  *(a2 + 44) = 0;
  *(a2 + 28) = 0u;
  v5 = atan2f(a1[1], *a1);
  v6 = v5 * v5;
  if ((v5 * v5) >= 0.0061)
  {
    v12 = __sincosf_stret(v5);
    v9 = (1.0 / v5) * v12.__sinval;
    v11 = (1.0 / v5) * (1.0 - v12.__cosval);
    v7 = (1.0 / v5) * v11;
    v10 = (1.0 / v5) * (1.0 - v9);
  }

  else
  {
    v7 = 0.5 - (v6 * ((v6 / -720.0) + 0.041667));
    v8 = 0.16667 - (v6 * ((v6 / -5040.0) + 0.0083333));
    v9 = 1.0 - (v6 * v8);
    v10 = v5 * v8;
    v11 = v5 * v7;
  }

  v13 = (v11 * v11) + (v9 * v9);
  v14 = 1.0 / v13;
  v15 = a1[6];
  v16 = a1[7];
  v17 = (1.0 / v13) * ((v11 * v16) + (v9 * v15));
  *a2 = v5;
  *(a2 + 4) = v17;
  v18 = (1.0 / v13) * ((v9 * v16) - (v11 * v15));
  *(a2 + 8) = v18;
  if (fabsf(v13) >= 0.00001)
  {
    v19 = v9 * v14;
    v20 = v14 * -v11;
    v21 = v11 * v14;
    *v38 = v19;
    *&v38[1] = v20;
    *&v38[2] = v21;
    *&v38[3] = v19;
    v22 = (v10 * v17) + (v7 * v18);
    v23 = (v10 * v18) - (v7 * v17);
    *v37 = v22;
    *&v37[1] = v23;
    *(a2 + 12) = 1065353216;
    v40[0] = v38;
    v36[0] = v40;
    v36[1] = v37;
    if (v37 == v4)
    {
      v39 = 0;
      sub_24503F23C(&v39, v36);
      v25 = *(&v39 + 1);
      v24 = *&v39;
    }

    else
    {
      v24 = (0.0 - (v19 * v22)) - (v21 * v23);
      v25 = (0.0 - (v20 * v22)) - (v19 * v23);
    }

    *(a2 + 16) = v24;
    *(a2 + 20) = v25;
    *(a2 + 24) = 0;
    v26 = 0x100000000;
    v27 = v38;
    v28 = 16;
    *(a2 + 36) = 0;
    do
    {
      v29 = *v27++;
      *(v4 + v28) = v29;
      v30 = v26 < 1;
      v31 = (v26 >> 30) & 0x3FFFFFFFCLL;
      if (v26 < 1)
      {
        v31 = 0;
      }

      v32 = v28 + v31;
      v33 = (v26 + 1);
      v34 = v26 & 0xFFFFFFFF00000000;
      if (!v30)
      {
        v33 = 0;
      }

      v26 = v33 | v34;
      v28 = v32 + 4;
    }

    while (v28 != 40);
  }

  v35 = *MEMORY[0x277D85DE8];
}

float *sub_24503F23C(float *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if (v3 == result)
  {
    v7 = 0;
    result = sub_24503F23C(&v7);
    *v2 = v7;
  }

  else
  {
    v4 = **a2;
    v5 = v4[1];
    v6 = v4[3];
    *result = (0.0 - (*v4 * *v3)) - (v4[2] * v3[1]);
    result[1] = (0.0 - (v5 * *v3)) - (v6 * v3[1]);
  }

  return result;
}

float cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::inverse@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_24508A970;
  *(a2 + 16) = unk_24508A980;
  *(a2 + 32) = 1065353216;
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  *(a2 + 4) = v4;
  *(a2 + 12) = v3;
  *(a2 + 16) = v5;
  v6 = a1[6];
  v7 = a1[7];
  result = -(v3 * v7) - (v2 * v6);
  *(a2 + 24) = result;
  *(a2 + 28) = -(v5 * v7) - (v4 * v6);
  return result;
}

float cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::adjoint@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (a1 == a2)
  {
    *&v16 = *a1;
    *(&v16 + 1) = *(a1 + 12);
    v28 = v16;
    v17 = 0x100000000;
    v18 = &v28;
    for (i = 16; i != 40; i = v23 + 4)
    {
      v20 = *v18++;
      *(a2 + i) = v20;
      v21 = v17 < 1;
      v22 = (v17 >> 30) & 0x3FFFFFFFCLL;
      if (v17 < 1)
      {
        v22 = 0;
      }

      v23 = i + v22;
      v24 = (v17 + 1);
      v25 = v17 & 0xFFFFFFFF00000000;
      if (!v21)
      {
        v24 = 0;
      }

      v17 = v24 | v25;
    }
  }

  else
  {
    v2 = 0x100000000;
    v3 = 16;
    v4 = a1;
    v5 = 0x100000000;
    do
    {
      *(a2 + v3) = *v4;
      v6 = HIDWORD(v5);
      v7 = v5 < 1;
      if (v5 < 1)
      {
        v6 = 0;
      }

      v8 = &v4[v6];
      v9 = (v5 + 1);
      v10 = v5 & 0xFFFFFFFF00000000;
      if (!v7)
      {
        v9 = 0;
      }

      v5 = v9 | v10;
      v4 = v8 + 1;
      v11 = v2 < 1;
      v12 = (v2 >> 30) & 0x3FFFFFFFCLL;
      if (v2 < 1)
      {
        v12 = 0;
      }

      v13 = v3 + v12;
      v14 = (v2 + 1);
      v15 = v2 & 0xFFFFFFFF00000000;
      if (!v11)
      {
        v14 = 0;
      }

      v2 = v14 | v15;
      v3 = v13 + 4;
    }

    while (v3 != 40);
  }

  result = *(a1 + 28);
  v27 = -*(a1 + 24);
  *(a2 + 4) = result;
  *(a2 + 8) = v27;
  *(a2 + 24) = 0;
  *(a2 + 12) = 0;
  *a2 = 1065353216;
  return result;
}

float cva::SE2GroupStorage<float,cva::Matrix<float,3u,3u,false>>::enforce(uint64_t a1)
{
  v2 = atan2f(*(a1 + 4), *a1);
  v3 = v2 * v2;
  if ((v2 * v2) >= 0.0061)
  {
    v9 = v2;
    v10 = __sincosf_stret(v2);
    cosval = v10.__cosval;
    sinval = v10.__sinval;
    v4 = (1.0 / v9) * v10.__sinval;
    v5 = (1.0 / v9) * (1.0 - v10.__cosval);
  }

  else
  {
    v4 = 1.0 - (v3 * ((v3 / -120.0) + 0.16667));
    v5 = v2 * ((v3 / -24.0) + 0.5);
    v8 = __sincosf_stret(v2);
    cosval = v8.__cosval;
    sinval = v8.__sinval;
  }

  v11 = *(a1 + 24);
  v12 = *(a1 + 28);
  v13 = 1.0 / ((v5 * v5) + (v4 * v4));
  v14 = v13 * ((v4 * v12) - (v5 * v11));
  v15 = v13 * ((v5 * v12) + (v4 * v11));
  *a1 = cosval;
  *(a1 + 4) = sinval;
  *(a1 + 8) = 0;
  *(a1 + 12) = -sinval;
  *(a1 + 16) = cosval;
  result = (v14 * v4) + (v5 * v15);
  *(a1 + 20) = 0;
  *(a1 + 24) = (v4 * v15) - (v5 * v14);
  *(a1 + 28) = result;
  *(a1 + 32) = 1065353216;
  return result;
}

float cva::SE2AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::exp@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 1065353216;
  *a2 = xmmword_24508A970;
  *(a2 + 16) = unk_24508A980;
  v4 = *a1;
  v5 = __sincosf_stret(*a1);
  v6 = v4 * v4;
  if ((v4 * v4) >= 0.0061)
  {
    v7 = (1.0 / v4) * v5.__sinval;
    v8 = (1.0 / v4) * (1.0 - v5.__cosval);
  }

  else
  {
    v7 = 1.0 - (v6 * ((v6 / -120.0) + 0.16667));
    v8 = v4 * ((v6 / -24.0) + 0.5);
  }

  *a2 = v5.__cosval;
  *(a2 + 4) = v5.__sinval;
  *(a2 + 12) = -v5.__sinval;
  *(a2 + 16) = v5.__cosval;
  v9 = a1[1];
  v10 = a1[2];
  v11 = (v7 * v9) - (v8 * v10);
  result = (v7 * v10) + (v8 * v9);
  *(a2 + 24) = v11;
  *(a2 + 28) = result;
  return result;
}

double cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::SE2GroupStorage(uint64_t a1)
{
  *(a1 + 64) = 0x3FF0000000000000;
  *a1 = xmmword_24508A998;
  *(a1 + 16) = unk_24508A9A8;
  result = 1.0;
  *(a1 + 32) = xmmword_24508A9B8;
  *(a1 + 48) = unk_24508A9C8;
  return result;
}

{
  *(a1 + 64) = 0x3FF0000000000000;
  *a1 = xmmword_24508A998;
  *(a1 + 16) = unk_24508A9A8;
  result = 1.0;
  *(a1 + 32) = xmmword_24508A9B8;
  *(a1 + 48) = unk_24508A9C8;
  return result;
}

uint64_t cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::SE2GroupStorage(uint64_t a1, void *a2, double a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  v5 = __sincos_stret(a3);
  *a1 = v5.__cosval;
  *(a1 + 8) = v5.__sinval;
  *(a1 + 24) = -v5.__sinval;
  *(a1 + 32) = v5.__cosval;
  *(a1 + 48) = *a2;
  *(a1 + 56) = a2[1];
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0x3FF0000000000000;
  return a1;
}

{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0u;
  v5 = __sincos_stret(a3);
  *a1 = v5.__cosval;
  *(a1 + 8) = v5.__sinval;
  *(a1 + 24) = -v5.__sinval;
  *(a1 + 32) = v5.__cosval;
  *(a1 + 48) = *a2;
  *(a1 + 56) = a2[1];
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0x3FF0000000000000;
  return a1;
}

double cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::SE2GroupStorage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = 0x100000000;
  do
  {
    v5 = *a2++;
    *(a1 + v3) = v5;
    v6 = v4 < 1;
    v7 = (v4 >> 29) & 0x7FFFFFFF8;
    if (v4 < 1)
    {
      v7 = 0;
    }

    v8 = v3 + v7;
    v9 = (v4 + 1);
    v10 = v4 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      v9 = 0;
    }

    v4 = v9 | v10;
    v3 = v8 + 8;
  }

  while (v3 != 48);
  *(a1 + 48) = *a3;
  result = *(a3 + 8);
  *(a1 + 56) = result;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

{
  v3 = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = 0x100000000;
  do
  {
    v5 = *a2++;
    *(a1 + v3) = v5;
    v6 = v4 < 1;
    v7 = (v4 >> 29) & 0x7FFFFFFF8;
    if (v4 < 1)
    {
      v7 = 0;
    }

    v8 = v3 + v7;
    v9 = (v4 + 1);
    v10 = v4 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      v9 = 0;
    }

    v4 = v9 | v10;
    v3 = v8 + 8;
  }

  while (v3 != 48);
  *(a1 + 48) = *a3;
  result = *(a3 + 8);
  *(a1 + 56) = result;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

void cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::R()
{
  ;
}

{
  ;
}

uint64_t cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::T(uint64_t a1)
{
  return a1 + 48;
}

{
  return a1 + 48;
}

__n128 cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::affine@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 48);
  *(a2 + 32) = result;
  return result;
}

__n128 cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::lplus(uint64_t a1, double *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v12 = xmmword_24508A998;
  v13 = unk_24508A9A8;
  v14 = xmmword_24508A9B8;
  v15 = unk_24508A9C8;
  v16 = 0x3FF0000000000000;
  v6 = __sincos_stret(v3);
  v7 = v3 * v3;
  if (v3 * v3 >= 0.0000002635)
  {
    v8 = 1.0 / v3 * v6.__sinval;
    v9 = 1.0 / v3 * (1.0 - v6.__cosval);
  }

  else
  {
    v8 = 1.0 - v7 * (v7 / -120.0 + 0.166666667);
    v9 = v3 * (v7 / -24.0 + 0.5);
  }

  *&v12 = v6.__cosval;
  *(&v12 + 1) = *&v6.__sinval;
  *(&v13 + 1) = -v6.__sinval;
  *&v14 = v6.__cosval;
  *&v15 = v8 * v4 - v9 * v5;
  *(&v15 + 1) = v5 * v8 + v9 * v4;
  v17[0] = &v12;
  v17[1] = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  sub_245037D34(&v18, v17);
  v10 = v21;
  *(a1 + 32) = v20;
  *(a1 + 48) = v10;
  *(a1 + 64) = v22;
  result = v19;
  *a1 = v18;
  *(a1 + 16) = result;
  return result;
}

double cva::SE2AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::SE2AlgebraStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

double cva::SE2AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::exp@<D0>(double **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0x3FF0000000000000;
  *a2 = xmmword_24508A998;
  *(a2 + 16) = unk_24508A9A8;
  *(a2 + 32) = xmmword_24508A9B8;
  *(a2 + 48) = unk_24508A9C8;
  v3 = *a1;
  v4 = **a1;
  v5 = __sincos_stret(v4);
  v6 = v4 * v4;
  if (v4 * v4 >= 0.0000002635)
  {
    v7 = 1.0 / v4 * v5.__sinval;
    v8 = 1.0 / v4 * (1.0 - v5.__cosval);
  }

  else
  {
    v7 = 1.0 - v6 * (v6 / -120.0 + 0.166666667);
    v8 = v4 * (v6 / -24.0 + 0.5);
  }

  *a2 = v5.__cosval;
  *(a2 + 8) = v5.__sinval;
  *(a2 + 24) = -v5.__sinval;
  *(a2 + 32) = v5.__cosval;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v7 * v9 - v8 * v10;
  result = v7 * v10 + v8 * v9;
  *(a2 + 48) = v11;
  *(a2 + 56) = result;
  return result;
}

__n128 cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::rplus(uint64_t a1, double *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v12 = xmmword_24508A998;
  v13 = unk_24508A9A8;
  v14 = xmmword_24508A9B8;
  v15 = unk_24508A9C8;
  v16 = 0x3FF0000000000000;
  v6 = __sincos_stret(v3);
  v7 = v3 * v3;
  if (v3 * v3 >= 0.0000002635)
  {
    v8 = 1.0 / v3 * v6.__sinval;
    v9 = 1.0 / v3 * (1.0 - v6.__cosval);
  }

  else
  {
    v8 = 1.0 - v7 * (v7 / -120.0 + 0.166666667);
    v9 = v3 * (v7 / -24.0 + 0.5);
  }

  *&v12 = v6.__cosval;
  *(&v12 + 1) = *&v6.__sinval;
  *(&v13 + 1) = -v6.__sinval;
  *&v14 = v6.__cosval;
  *&v15 = v8 * v4 - v9 * v5;
  *(&v15 + 1) = v5 * v8 + v9 * v4;
  v17[0] = a1;
  v17[1] = &v12;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  sub_245037D34(&v18, v17);
  v10 = v21;
  *(a1 + 32) = v20;
  *(a1 + 48) = v10;
  *(a1 + 64) = v22;
  result = v19;
  *a1 = v18;
  *(a1 + 16) = result;
  return result;
}

float64x2_t cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::transform@<Q0>(float64x2_t *a1@<X0>, double *a2@<X1>, float64x2_t *a3@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = 3;
  v8[0] = v7;
  v8[1] = a2;
  v9[0] = 0uLL;
  sub_24503FC18(v9[0].f64, v8);
  result = vaddq_f64(v9[0], a1[3]);
  *a3 = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

double *sub_24503FC18(double *result, double **a2)
{
  v2 = result;
  v3 = **a2;
  if ((v3 - 8 * *(*a2 + 3)) == result || (v4 = a2[1], v4 == result))
  {
    v17 = 0uLL;
    result = sub_24503FC18(&v17);
    *v2 = v17;
  }

  else
  {
    v5 = *(*a2 + 2);
    v6 = (2 * v5);
    if (v6)
    {
      v7 = 0;
      v8 = 8 * v6;
      v9 = 8 * v5;
      v10 = 0.0;
      v11 = a2[1];
      do
      {
        v12 = *v11++;
        v10 = v10 + *(v3 + v7) * v12;
        v7 += v9;
      }

      while (v8 != v7);
      v13 = 0;
      *result = v10;
      v14 = v3 + 8;
      v15 = 0.0;
      do
      {
        v16 = *v4++;
        v15 = v15 + *(v14 + v13) * v16;
        v13 += v9;
      }

      while (v8 != v13);
    }

    else
    {
      *result = 0.0;
      v15 = 0.0;
    }

    result[1] = v15;
  }

  return result;
}

float64x2_t cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::inverseTransform@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v10[0] = a1;
  v10[1] = 3;
  v11 = v10;
  v12[0] = &v11;
  v12[1] = a2;
  v7[0] = a1;
  v7[1] = 3;
  v8 = v7;
  v6[0] = a1 + 48;
  v6[1] = 0x600000003;
  v9[0] = &v8;
  v9[1] = v6;
  v13 = 0uLL;
  sub_24503FDB0(v13.f64, v12);
  v14 = 0uLL;
  sub_24503FE44(&v14, v9);
  result = vsubq_f64(v13, v14);
  *a3 = result;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_24503FDB0(double *a1, uint64_t **a2)
{
  v3 = a2[1];
  if (v3 == a1)
  {
    v8 = 0uLL;
    sub_24503FDB0(&v8);
    result = *&v8;
    *a1 = v8;
  }

  else
  {
    v4 = **a2;
    v5 = *v4;
    v6 = *(v4 + 8);
    *a1 = v5[1] * v3[1] + *v5 * *v3 + 0.0;
    result = v5[v6 + 1] * v3[1] + v5[v6] * *v3 + 0.0;
    a1[1] = result;
  }

  return result;
}

double sub_24503FE44(uint64_t a1, uint64_t **a2)
{
  v3 = a2[1];
  v4 = *v3;
  if (*v3 - 8 * *(v3 + 3) == a1)
  {
    v9 = 0uLL;
    sub_24503FE44(&v9);
    result = *&v9;
    *a1 = v9;
  }

  else
  {
    v5 = **a2;
    v6 = *(v5 + 8);
    v7 = *v5;
    *a1 = v7[1] * v4[1] + *v7 * *v4 + 0.0;
    result = v7[v6 + 1] * v4[1] + v7[v6] * *v4 + 0.0;
    *(a1 + 8) = result;
  }

  return result;
}

double cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::transformJacobian@<D0>(double *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = -a1[1];
  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0x3FF0000000000000;
  return result;
}

void cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::inverseTransformJacobian(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  v5 = -*a2;
  *a3 = *(a2 + 8);
  *(a3 + 8) = v5;
  v27[0] = a1;
  v27[1] = 3;
  v28 = v27;
  v26[0] = a3;
  v26[1] = 2;
  v29[0] = &v28;
  v29[1] = v26;
  v30 = 0uLL;
  sub_24503FE44(&v30, v29);
  *a3 = v30;
  if (a1 == a3)
  {
    v14 = 0;
    v15 = a1[1];
    v16 = a1[4];
    v17 = -a1[3];
    *&v30 = -*a1;
    *(&v30 + 1) = v17;
    v31 = -v15;
    v32 = -v16;
    v18 = &v30;
    for (i = 16; i != 48; i = v23 + 8)
    {
      v20 = *v18++;
      *(a3 + i) = v20;
      v21 = v14 < 1;
      v22 = (v14 >> 29) & 0x7FFFFFFF8;
      if (v14 < 1)
      {
        v22 = 0;
      }

      v23 = i + v22;
      v24 = (v14 + 1);
      v25 = v14 & 0xFFFFFFFF00000000;
      if (!v21)
      {
        v24 = 0;
      }

      v14 = v24 | v25;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    for (j = 16; j != 48; j = v11 + 8)
    {
      *(a3 + j) = -a1[(3 * v7 + HIDWORD(v7))];
      if (v7 >= 1)
      {
        v7 = (v7 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v7 = (v7 + 1) | v7 & 0xFFFFFFFF00000000;
      }

      v9 = v6 < 1;
      v10 = (v6 >> 29) & 0x7FFFFFFF8;
      if (v6 < 1)
      {
        v10 = 0;
      }

      v11 = j + v10;
      v12 = (v6 + 1);
      v13 = v6 & 0xFFFFFFFF00000000;
      if (!v9)
      {
        v12 = 0;
      }

      v6 = v12 | v13;
    }
  }
}

double cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::log@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = atan2(*(a1 + 8), *a1);
  v5 = v4 * v4;
  if (v4 * v4 >= 0.0000002635)
  {
    v8 = __sincos_stret(v4);
    v6 = 1.0 / v4 * v8.__sinval;
    v7 = 1.0 / v4 * (1.0 - v8.__cosval);
  }

  else
  {
    v6 = 1.0 - v5 * (v5 / -120.0 + 0.166666667);
    v7 = v4 * (v5 / -24.0 + 0.5);
  }

  v9 = 1.0 / (v7 * v7 + v6 * v6);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *a2 = v4;
  a2[1] = v9 * (v7 * v11 + v6 * v10);
  result = v9 * (v6 * v11 - v7 * v10);
  a2[2] = result;
  return result;
}

void *cva::SE2AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::SE2AlgebraStorage(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::logJacobian(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41[2] = *MEMORY[0x277D85DE8];
  *(a2 + 24) = 0u;
  v4 = (a2 + 24);
  *(a2 + 88) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 40) = 0u;
  v5 = atan2(*(a1 + 8), *a1);
  v6 = v5 * v5;
  if (v5 * v5 >= 0.0000002635)
  {
    v12 = __sincos_stret(v5);
    v9 = 1.0 / v5 * v12.__sinval;
    v11 = 1.0 / v5 * (1.0 - v12.__cosval);
    v7 = 1.0 / v5 * v11;
    v10 = 1.0 / v5 * (1.0 - v9);
  }

  else
  {
    v7 = 0.5 - v6 * (v6 / -720.0 + 0.0416666667);
    v8 = 0.166666667 - v6 * (v6 / -5040.0 + 0.00833333333);
    v9 = 1.0 - v6 * v8;
    v10 = v5 * v8;
    v11 = v5 * v7;
  }

  v13 = v11 * v11 + v9 * v9;
  v14 = 1.0 / v13;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = 1.0 / v13 * (v11 * v16 + v9 * v15);
  *a2 = v5;
  *(a2 + 8) = v17;
  v18 = 1.0 / v13 * (v9 * v16 - v11 * v15);
  *(a2 + 16) = v18;
  if (fabs(v13) >= 0.00001)
  {
    v19 = v9 * v14;
    v20 = v14 * -v11;
    v21 = v11 * v14;
    *v38 = v19;
    *&v38[1] = v20;
    *&v38[2] = v21;
    *&v38[3] = v19;
    v22 = v10 * v17 + v7 * v18;
    v23 = v10 * v18 - v7 * v17;
    *v37 = v22;
    *&v37[1] = v23;
    *(a2 + 24) = 0x3FF0000000000000;
    v41[0] = v38;
    v36[0] = v41;
    v36[1] = v37;
    if (v37 == v4)
    {
      v39 = 0.0;
      v40 = 0.0;
      sub_245040388(&v39, v36);
      v24 = v39;
      v25 = v40;
    }

    else
    {
      v24 = 0.0 - v19 * v22 - v21 * v23;
      v25 = 0.0 - v20 * v22 - v19 * v23;
    }

    *(a2 + 32) = v24;
    *(a2 + 40) = v25;
    *(a2 + 48) = 0;
    v26 = 0x100000000;
    v27 = v38;
    v28 = 32;
    *(a2 + 72) = 0;
    do
    {
      v29 = *v27++;
      *(v4 + v28) = v29;
      v30 = v26 < 1;
      v31 = (v26 >> 29) & 0x7FFFFFFF8;
      if (v26 < 1)
      {
        v31 = 0;
      }

      v32 = v28 + v31;
      v33 = (v26 + 1);
      v34 = v26 & 0xFFFFFFFF00000000;
      if (!v30)
      {
        v33 = 0;
      }

      v26 = v33 | v34;
      v28 = v32 + 8;
    }

    while (v28 != 80);
  }

  v35 = *MEMORY[0x277D85DE8];
}

double sub_245040388(double *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a1)
  {
    v8 = 0uLL;
    sub_245040388(&v8);
    result = *&v8;
    *a1 = v8;
  }

  else
  {
    v4 = **a2;
    v5 = v4[1];
    v6 = v4[3];
    *a1 = 0.0 - *v4 * *v3 - v4[2] * v3[1];
    result = 0.0 - v5 * *v3 - v6 * v3[1];
    a1[1] = result;
  }

  return result;
}

double cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::inverse@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_24508A998;
  *(a2 + 16) = unk_24508A9A8;
  *(a2 + 64) = 0x3FF0000000000000;
  *(a2 + 32) = xmmword_24508A9B8;
  *(a2 + 48) = unk_24508A9C8;
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  v6 = a1[6];
  v7 = a1[7];
  result = -(v3 * v7) - v2 * v6;
  *(a2 + 48) = result;
  *(a2 + 56) = -(v5 * v7) - v4 * v6;
  return result;
}

double cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::adjoint@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  if (a1 == a2)
  {
    v18 = *(a1 + 24);
    v31[0] = *a1;
    v31[1] = v18;
    v19 = 0x100000000;
    v20 = v31;
    for (i = 32; i != 80; i = v26 + 8)
    {
      v22 = *v20++;
      *(a2 + i) = v22;
      v24 = __OFSUB__(v19, 1);
      v23 = v19 - 1 < 0;
      v25 = (v19 >> 29) & 0x7FFFFFFF8;
      if (v19 < 1)
      {
        v25 = 0;
      }

      v26 = i + v25;
      v27 = (v19 + 1);
      v28 = v19 & 0xFFFFFFFF00000000;
      if (v23 == v24)
      {
        v27 = 0;
      }

      v19 = v27 | v28;
    }
  }

  else
  {
    v2 = 0x100000000;
    v3 = 32;
    v4 = a1;
    v5 = 0x100000000;
    do
    {
      *(a2 + v3) = *v4;
      v6 = HIDWORD(v5);
      v8 = __OFSUB__(v5, 1);
      v7 = v5 - 1 < 0;
      if (v5 < 1)
      {
        v6 = 0;
      }

      v9 = &v4[v6];
      v10 = (v5 + 1);
      v11 = v5 & 0xFFFFFFFF00000000;
      if (v7 == v8)
      {
        v10 = 0;
      }

      v5 = v10 | v11;
      v4 = v9 + 1;
      v13 = __OFSUB__(v2, 1);
      v12 = v2 - 1 < 0;
      v14 = (v2 >> 29) & 0x7FFFFFFF8;
      if (v2 < 1)
      {
        v14 = 0;
      }

      v15 = v3 + v14;
      v16 = (v2 + 1);
      v17 = v2 & 0xFFFFFFFF00000000;
      if (v12 == v13)
      {
        v16 = 0;
      }

      v2 = v16 | v17;
      v3 = v15 + 8;
    }

    while (v3 != 80);
  }

  result = *(a1 + 56);
  v30 = -*(a1 + 48);
  *(a2 + 8) = result;
  *(a2 + 16) = v30;
  *(a2 + 48) = 0;
  *(a2 + 24) = 0;
  *a2 = 0x3FF0000000000000;
  return result;
}

double cva::SE2GroupStorage<double,cva::Matrix<double,3u,3u,false>>::enforce(uint64_t a1)
{
  v2 = atan2(*(a1 + 8), *a1);
  v3 = v2 * v2;
  if (v2 * v2 >= 0.0000002635)
  {
    v9 = v2;
    v10 = __sincos_stret(v2);
    cosval = v10.__cosval;
    sinval = v10.__sinval;
    v4 = 1.0 / v9 * v10.__sinval;
    v5 = 1.0 / v9 * (1.0 - v10.__cosval);
  }

  else
  {
    v4 = 1.0 - v3 * (v3 / -120.0 + 0.166666667);
    v5 = v2 * (v3 / -24.0 + 0.5);
    v8 = __sincos_stret(v2);
    cosval = v8.__cosval;
    sinval = v8.__sinval;
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = 1.0 / (v5 * v5 + v4 * v4);
  v14 = v13 * (v4 * v12 - v5 * v11);
  v15 = v13 * (v5 * v12 + v4 * v11);
  *a1 = cosval;
  *(a1 + 8) = sinval;
  *(a1 + 16) = 0;
  *(a1 + 24) = -sinval;
  *(a1 + 32) = cosval;
  result = v14 * v4 + v5 * v15;
  *(a1 + 40) = 0;
  *(a1 + 48) = v4 * v15 - v5 * v14;
  *(a1 + 56) = result;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

double cva::SE2AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::exp@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0x3FF0000000000000;
  *a2 = xmmword_24508A998;
  *(a2 + 16) = unk_24508A9A8;
  *(a2 + 32) = xmmword_24508A9B8;
  *(a2 + 48) = unk_24508A9C8;
  v4 = *a1;
  v5 = __sincos_stret(*a1);
  v6 = v4 * v4;
  if (v4 * v4 >= 0.0000002635)
  {
    v7 = 1.0 / v4 * v5.__sinval;
    v8 = 1.0 / v4 * (1.0 - v5.__cosval);
  }

  else
  {
    v7 = 1.0 - v6 * (v6 / -120.0 + 0.166666667);
    v8 = v4 * (v6 / -24.0 + 0.5);
  }

  *a2 = v5.__cosval;
  *(a2 + 8) = v5.__sinval;
  *(a2 + 24) = -v5.__sinval;
  *(a2 + 32) = v5.__cosval;
  v9 = a1[1];
  v10 = a1[2];
  v11 = v7 * v9 - v8 * v10;
  result = v7 * v10 + v8 * v9;
  *(a2 + 48) = v11;
  *(a2 + 56) = result;
  return result;
}

double cva::SE2GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::SE2GroupStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

uint64_t cva::SE2GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::affine@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v4 = *(result + 8);
  v3 = *(result + 12);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = &v2[-v3];
  v6 = (v4 - 2);
  v7 = *v2;
  if (v5 == a2)
  {
    v12 = v2[1];
    v13 = v6;
    v14 = &v2[v13];
    v15 = *(v14 + 1);
    v16 = &v14[v13 + 2];
    v18 = *(v16 + 8);
    v17 = *(v16 + 12);
    *a2 = v7;
    *(a2 + 4) = v12;
    *(a2 + 8) = v15;
    *(a2 + 16) = v18;
    *(a2 + 20) = v17;
  }

  else
  {
    *a2 = v7;
    *(a2 + 4) = v2[1];
    v8 = v6;
    v9 = &v2[v8];
    v10 = v9[2];
    v9 += 2;
    *(a2 + 8) = v10;
    *(a2 + 12) = v9[1];
    v11 = &v9[v8];
    *(a2 + 16) = v11[2];
    *(a2 + 20) = v11[3];
  }

  return result;
}

float *cva::SE2GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::transform@<X0>(uint64_t a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  *&v14[7] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  v6 = *a1 - 4 * v4;
  v12[0] = *a1;
  v12[1] = v5 | (v4 << 32);
  v13[0] = v12;
  v13[1] = a2;
  v7 = (v6 + 4 * (v4 + 2 * v5));
  *v14 = 0;
  result = sub_24503EAF8(v14, v13);
  *a3 = 0;
  v9 = *v14 + *v7;
  if (v6 == a3)
  {
    v10 = *&v14[1] + v7[1];
    *a3 = v9;
  }

  else
  {
    *a3 = v9;
    v10 = *&v14[1] + v7[1];
  }

  *(a3 + 4) = v10;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

float32x2_t cva::SE2GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::inverseTransform@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, float32x2_t *a3@<X8>)
{
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v6 = *a1 - 4 * v4;
  v13 = *a1;
  v14 = v5 | (v4 << 32);
  v15 = &v13;
  v16[0] = &v15;
  v16[1] = a2;
  v10[0] = v13;
  v10[1] = v14;
  v11 = v10;
  v7 = (v4 + 2 * v5);
  v9[0] = v6 + 4 * v7;
  v9[1] = v5 | (v7 << 32);
  v12[0] = &v11;
  v12[1] = v9;
  v17 = 0;
  sub_24503EC68(&v17, v16);
  v18 = 0;
  sub_24503ECFC(&v18, v12);
  result = vsub_f32(v17, v18);
  *a3 = result;
  return result;
}

double cva::SE2GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::transformJacobian@<D0>(float *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = -a1[1];
  *(a2 + 4) = v2;
  *&result = 1065353216;
  *(a2 + 8) = xmmword_24508A840;
  return result;
}

float *cva::SE2GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::inverseTransformJacobian@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = -*a2;
  *a3 = *(a2 + 4);
  *(a3 + 4) = v4;
  v6 = a1[1];
  v29[0] = *a1;
  v5 = v29[0];
  v29[1] = v6;
  v30 = v29;
  v31 = 0;
  v28[0] = a3;
  v28[1] = 2;
  v32 = &v30;
  v33 = v28;
  result = sub_24503ECFC(&v31, &v32);
  *a3 = v31;
  if (&v5[-HIDWORD(v6)] == a3)
  {
    v16 = 0;
    v17 = v5[1];
    v18 = -v5[v6];
    *&v32 = -*v5;
    *(&v32 + 1) = v18;
    v19 = -v5[(v6 + 1)];
    *&v33 = -v17;
    *(&v33 + 1) = v19;
    v20 = &v32;
    for (i = 8; i != 24; i = v25 + 4)
    {
      v22 = *v20;
      v20 = (v20 + 4);
      *(a3 + i) = v22;
      v23 = v16 < 1;
      v24 = (v16 >> 30) & 0x3FFFFFFFCLL;
      if (v16 < 1)
      {
        v24 = 0;
      }

      v25 = i + v24;
      v26 = (v16 + 1);
      v27 = v16 & 0xFFFFFFFF00000000;
      if (!v23)
      {
        v26 = 0;
      }

      v16 = v26 | v27;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    for (j = 8; j != 24; j = v13 + 4)
    {
      *(a3 + j) = -v5[(HIDWORD(v9) + v6 * v9)];
      if (v9 >= 1)
      {
        v9 = (v9 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v9 = (v9 + 1) | v9 & 0xFFFFFFFF00000000;
      }

      v11 = v8 < 1;
      v12 = (v8 >> 30) & 0x3FFFFFFFCLL;
      if (v8 < 1)
      {
        v12 = 0;
      }

      v13 = j + v12;
      v14 = (v8 + 1);
      v15 = v8 & 0xFFFFFFFF00000000;
      if (!v11)
      {
        v14 = 0;
      }

      v8 = v14 | v15;
    }
  }

  return result;
}

float cva::SE2GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::log@<S0>(float **a1@<X0>, float *a2@<X8>)
{
  v4 = *a1;
  v5 = atan2f((*a1)[1], **a1);
  v6 = v5 * v5;
  if ((v5 * v5) >= 0.0061)
  {
    v9 = __sincosf_stret(v5);
    v7 = (1.0 / v5) * v9.__sinval;
    v8 = (1.0 / v5) * (1.0 - v9.__cosval);
  }

  else
  {
    v7 = 1.0 - (v6 * ((v6 / -120.0) + 0.16667));
    v8 = v5 * ((v6 / -24.0) + 0.5);
  }

  v10 = 1.0 / ((v8 * v8) + (v7 * v7));
  v11 = *(a1 + 2);
  v12 = v4[2 * v11];
  v13 = v4[(2 * v11) | 1];
  *a2 = v5;
  a2[1] = v10 * ((v8 * v13) + (v7 * v12));
  result = v10 * ((v7 * v13) - (v8 * v12));
  a2[2] = result;
  return result;
}

void cva::SE2GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::logJacobian(float **a1@<X0>, uint64_t a2@<X8>)
{
  v42[2] = *MEMORY[0x277D85DE8];
  *(a2 + 12) = 0u;
  v4 = (a2 + 12);
  *(a2 + 44) = 0;
  *(a2 + 28) = 0u;
  v5 = *a1;
  v6 = atan2f((*a1)[1], **a1);
  v7 = v6 * v6;
  if ((v6 * v6) >= 0.0061)
  {
    v13 = __sincosf_stret(v6);
    v10 = (1.0 / v6) * v13.__sinval;
    v12 = (1.0 / v6) * (1.0 - v13.__cosval);
    v8 = (1.0 / v6) * v12;
    v11 = (1.0 / v6) * (1.0 - v10);
  }

  else
  {
    v8 = 0.5 - (v7 * ((v7 / -720.0) + 0.041667));
    v9 = 0.16667 - (v7 * ((v7 / -5040.0) + 0.0083333));
    v10 = 1.0 - (v7 * v9);
    v11 = v6 * v9;
    v12 = v6 * v8;
  }

  v14 = (v12 * v12) + (v10 * v10);
  v15 = 1.0 / v14;
  *a2 = v6;
  v16 = *(a1 + 2);
  v17 = v5[2 * v16];
  v18 = v5[(2 * v16) | 1];
  v19 = (1.0 / v14) * ((v12 * v18) + (v10 * v17));
  v20 = (1.0 / v14) * ((v10 * v18) - (v12 * v17));
  *(a2 + 4) = v19;
  *(a2 + 8) = v20;
  if (fabsf(v14) >= 0.00001)
  {
    v21 = v10 * v15;
    v22 = v15 * -v12;
    v23 = v12 * v15;
    *v40 = v21;
    *&v40[1] = v22;
    *&v40[2] = v23;
    *&v40[3] = v21;
    v24 = (v11 * v19) + (v8 * v20);
    v25 = (v11 * v20) - (v8 * v19);
    *v39 = v24;
    *&v39[1] = v25;
    *(a2 + 12) = 1065353216;
    v42[0] = v40;
    v38[0] = v42;
    v38[1] = v39;
    if (v39 == v4)
    {
      v41 = 0;
      sub_24503F23C(&v41, v38);
      v27 = *(&v41 + 1);
      v26 = *&v41;
    }

    else
    {
      v26 = (0.0 - (v21 * v24)) - (v23 * v25);
      v27 = (0.0 - (v22 * v24)) - (v21 * v25);
    }

    *(a2 + 16) = v26;
    *(a2 + 20) = v27;
    *(a2 + 24) = 0;
    v28 = 0x100000000;
    v29 = v40;
    v30 = 16;
    *(a2 + 36) = 0;
    do
    {
      v31 = *v29++;
      *(v4 + v30) = v31;
      v32 = v28 < 1;
      v33 = (v28 >> 30) & 0x3FFFFFFFCLL;
      if (v28 < 1)
      {
        v33 = 0;
      }

      v34 = v30 + v33;
      v35 = (v28 + 1);
      v36 = v28 & 0xFFFFFFFF00000000;
      if (!v32)
      {
        v35 = 0;
      }

      v28 = v35 | v36;
      v30 = v34 + 4;
    }

    while (v30 != 40);
  }

  v37 = *MEMORY[0x277D85DE8];
}

float cva::SE2GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::inverse@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_24508A970;
  *(a2 + 16) = unk_24508A980;
  *(a2 + 32) = 1065353216;
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(*a1 + 4 * v3);
  v5 = **a1;
  v6 = *(*a1 + 4);
  *a2 = v5;
  *(a2 + 4) = v4;
  v7 = v2[(v3 + 1)];
  *(a2 + 12) = v6;
  *(a2 + 16) = v7;
  v8 = v2[(2 * v3)];
  v9 = v2[(2 * v3) | 1];
  result = -(v7 * v9) - (v4 * v8);
  *(a2 + 24) = -(v6 * v9) - (v5 * v8);
  *(a2 + 28) = result;
  return result;
}

float cva::SE2GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::adjoint@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 - 4 * *(a1 + 12) == a2)
  {
    *&v18 = *v2;
    *(&v18 + 1) = *(v2 + 4 * (v3 - 2) + 8);
    v29 = v18;
    v19 = 0x100000000;
    v20 = &v29;
    for (i = 16; i != 40; i = v25 + 4)
    {
      v22 = *v20++;
      *(a2 + i) = v22;
      v23 = v19 < 1;
      v24 = (v19 >> 30) & 0x3FFFFFFFCLL;
      if (v19 < 1)
      {
        v24 = 0;
      }

      v25 = i + v24;
      v26 = (v19 + 1);
      v27 = v19 & 0xFFFFFFFF00000000;
      if (!v23)
      {
        v26 = 0;
      }

      v19 = v26 | v27;
    }
  }

  else
  {
    v4 = (v3 - 2) << 32;
    v5 = 0x100000000;
    v6 = 16;
    v7 = *a1;
    do
    {
      *(a2 + v6) = *v7;
      v8 = HIDWORD(v4);
      v9 = v4 < 1;
      if (v4 < 1)
      {
        v8 = 0;
      }

      v10 = &v7[v8];
      v11 = (v4 + 1);
      v12 = v4 & 0xFFFFFFFF00000000;
      if (!v9)
      {
        v11 = 0;
      }

      v4 = v11 | v12;
      v7 = v10 + 1;
      v13 = v5 < 1;
      v14 = (v5 >> 30) & 0x3FFFFFFFCLL;
      if (v5 < 1)
      {
        v14 = 0;
      }

      v15 = v6 + v14;
      v16 = (v5 + 1);
      v17 = v5 & 0xFFFFFFFF00000000;
      if (!v13)
      {
        v16 = 0;
      }

      v5 = v16 | v17;
      v6 = v15 + 4;
    }

    while (v6 != 40);
  }

  *(a2 + 4) = *(v2 + ((2 * v3) | 1u));
  result = -*(v2 + (2 * v3));
  *(a2 + 8) = result;
  *(a2 + 24) = 0;
  *(a2 + 12) = 0;
  *a2 = 1065353216;
  return result;
}

uint64_t cva::SE2GroupStorage<float,cva::MatrixRef<float const,3u,3u,false>>::serialize(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 4 * (3 * v1);
    v4 = (v1 - 3) << 32;
    do
    {
      v8 = *v2;
      result = std::ostream::write();
      v5 = HIDWORD(v4);
      if (v4 < 2)
      {
        v5 = 0;
      }

      v6 = &v2[v5];
      v7 = (v4 + 1);
      if (v4 >= 2)
      {
        v7 = 0;
      }

      v4 = v7 | v4 & 0xFFFFFFFF00000000;
      v2 = v6 + 1;
    }

    while (v6 + 1 != v3);
  }

  return result;
}

double cva::SE2GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::SE2GroupStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

{
  *a1 = a2;
  *&result = 3;
  a1[1] = 3;
  return result;
}

uint64_t cva::SE2GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::affine@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v4 = *(result + 8);
  v3 = *(result + 12);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v5 = &v2[-v3];
  v6 = (v4 - 2);
  v7 = *v2;
  if (v5 == a2)
  {
    v12 = v2[1];
    v13 = v6;
    v14 = &v2[v13];
    v15 = *(v14 + 1);
    v16 = &v14[v13 + 2];
    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    *a2 = v7;
    *(a2 + 8) = v12;
    *(a2 + 16) = v15;
    *(a2 + 32) = v18;
    *(a2 + 40) = v17;
  }

  else
  {
    *a2 = v7;
    *(a2 + 8) = v2[1];
    v8 = v6;
    v9 = &v2[v8];
    v10 = v9[2];
    v9 += 2;
    *(a2 + 16) = v10;
    *(a2 + 24) = v9[1];
    v11 = &v9[v8];
    *(a2 + 32) = v11[2];
    *(a2 + 40) = v11[3];
  }

  return result;
}

double *cva::SE2GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::transform@<X0>(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  v6 = *a1 - 8 * v4;
  v12[0] = *a1;
  v12[1] = v5 | (v4 << 32);
  v13[0] = v12;
  v13[1] = a2;
  v7 = (v6 + 8 * (v4 + 2 * v5));
  v14 = 0.0;
  v15 = 0.0;
  result = sub_24503FC18(&v14, v13);
  v9 = v14 + *v7;
  if (v6 == a3)
  {
    v10 = v15 + v7[1];
    *a3 = v9;
  }

  else
  {
    *a3 = v9;
    v10 = v15 + v7[1];
  }

  a3[1] = v10;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

float64x2_t cva::SE2GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::inverseTransform@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v6 = *a1 - 8 * v4;
  v14 = *a1;
  v15 = v5 | (v4 << 32);
  v16 = &v14;
  v17[0] = &v16;
  v17[1] = a2;
  v11[0] = v14;
  v11[1] = v15;
  v12 = v11;
  v7 = (v4 + 2 * v5);
  v10[0] = v6 + 8 * v7;
  v10[1] = v5 | (v7 << 32);
  v13[0] = &v12;
  v13[1] = v10;
  v18 = 0uLL;
  sub_24503FDB0(v18.f64, v17);
  v19 = 0uLL;
  sub_24503FE44(&v19, v13);
  result = vsubq_f64(v18, v19);
  *a3 = result;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double cva::SE2GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::transformJacobian@<D0>(double *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = -a1[1];
  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0x3FF0000000000000;
  return result;
}

void cva::SE2GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::inverseTransformJacobian(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  v4 = -*a2;
  *a3 = *(a2 + 8);
  *(a3 + 8) = v4;
  v6 = a1[1];
  v25[0] = *a1;
  v5 = v25[0];
  v25[1] = v6;
  v26 = v25;
  v24[0] = a3;
  v24[1] = 2;
  v27[0] = &v26;
  v27[1] = v24;
  v28 = 0uLL;
  sub_24503FE44(&v28, v27);
  *a3 = v28;
  if (&v5[-HIDWORD(v6)] == a3)
  {
    v15 = 0;
    *&v28 = -*v5;
    *(&v28 + 1) = -v5[v6];
    v29 = -v5[1];
    v30 = -v5[(v6 + 1)];
    v16 = &v28;
    for (i = 16; i != 48; i = v21 + 8)
    {
      v18 = *v16++;
      *(a3 + i) = v18;
      v19 = v15 < 1;
      v20 = (v15 >> 29) & 0x7FFFFFFF8;
      if (v15 < 1)
      {
        v20 = 0;
      }

      v21 = i + v20;
      v22 = (v15 + 1);
      v23 = v15 & 0xFFFFFFFF00000000;
      if (!v19)
      {
        v22 = 0;
      }

      v15 = v22 | v23;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    for (j = 16; j != 48; j = v12 + 8)
    {
      *(a3 + j) = -v5[(HIDWORD(v8) + v6 * v8)];
      if (v8 >= 1)
      {
        v8 = (v8 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v8 = (v8 + 1) | v8 & 0xFFFFFFFF00000000;
      }

      v10 = v7 < 1;
      v11 = (v7 >> 29) & 0x7FFFFFFF8;
      if (v7 < 1)
      {
        v11 = 0;
      }

      v12 = j + v11;
      v13 = (v7 + 1);
      v14 = v7 & 0xFFFFFFFF00000000;
      if (!v10)
      {
        v13 = 0;
      }

      v7 = v13 | v14;
    }
  }
}

double cva::SE2GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::log@<D0>(long double **a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  v5 = atan2((*a1)[1], **a1);
  v6 = v5 * v5;
  if (v5 * v5 >= 0.0000002635)
  {
    v9 = __sincos_stret(v5);
    v7 = 1.0 / v5 * v9.__sinval;
    v8 = 1.0 / v5 * (1.0 - v9.__cosval);
  }

  else
  {
    v7 = 1.0 - v6 * (v6 / -120.0 + 0.166666667);
    v8 = v5 * (v6 / -24.0 + 0.5);
  }

  v10 = 1.0 / (v8 * v8 + v7 * v7);
  v11 = *(a1 + 2);
  v12 = v4[2 * v11];
  v13 = v4[(2 * v11) | 1u];
  *a2 = v5;
  a2[1] = v10 * (v8 * v13 + v7 * v12);
  result = v10 * (v7 * v13 - v8 * v12);
  a2[2] = result;
  return result;
}

void cva::SE2GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::logJacobian(long double **a1@<X0>, uint64_t a2@<X8>)
{
  v43[2] = *MEMORY[0x277D85DE8];
  *(a2 + 24) = 0u;
  v4 = (a2 + 24);
  *(a2 + 88) = 0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 40) = 0u;
  v5 = *a1;
  v6 = atan2((*a1)[1], **a1);
  v7 = v6 * v6;
  if (v6 * v6 >= 0.0000002635)
  {
    v13 = __sincos_stret(v6);
    v10 = 1.0 / v6 * v13.__sinval;
    v12 = 1.0 / v6 * (1.0 - v13.__cosval);
    v8 = 1.0 / v6 * v12;
    v11 = 1.0 / v6 * (1.0 - v10);
  }

  else
  {
    v8 = 0.5 - v7 * (v7 / -720.0 + 0.0416666667);
    v9 = 0.166666667 - v7 * (v7 / -5040.0 + 0.00833333333);
    v10 = 1.0 - v7 * v9;
    v11 = v6 * v9;
    v12 = v6 * v8;
  }

  v14 = v12 * v12 + v10 * v10;
  v15 = 1.0 / v14;
  *a2 = v6;
  v16 = *(a1 + 2);
  v17 = v5[2 * v16];
  v18 = v5[(2 * v16) | 1u];
  v19 = 1.0 / v14 * (v12 * v18 + v10 * v17);
  v20 = 1.0 / v14 * (v10 * v18 - v12 * v17);
  *(a2 + 8) = v19;
  *(a2 + 16) = v20;
  if (fabs(v14) >= 0.00001)
  {
    v21 = v10 * v15;
    v22 = v15 * -v12;
    v23 = v12 * v15;
    *v40 = v21;
    *&v40[1] = v22;
    *&v40[2] = v23;
    *&v40[3] = v21;
    v24 = v11 * v19 + v8 * v20;
    v25 = v11 * v20 - v8 * v19;
    *v39 = v24;
    *&v39[1] = v25;
    *(a2 + 24) = 0x3FF0000000000000;
    v43[0] = v40;
    v38[0] = v43;
    v38[1] = v39;
    if (v39 == v4)
    {
      v41 = 0.0;
      v42 = 0.0;
      sub_245040388(&v41, v38);
      v26 = v41;
      v27 = v42;
    }

    else
    {
      v26 = 0.0 - v21 * v24 - v23 * v25;
      v27 = 0.0 - v22 * v24 - v21 * v25;
    }

    *(a2 + 32) = v26;
    *(a2 + 40) = v27;
    *(a2 + 48) = 0;
    v28 = 0x100000000;
    v29 = v40;
    v30 = 32;
    *(a2 + 72) = 0;
    do
    {
      v31 = *v29++;
      *(v4 + v30) = v31;
      v32 = v28 < 1;
      v33 = (v28 >> 29) & 0x7FFFFFFF8;
      if (v28 < 1)
      {
        v33 = 0;
      }

      v34 = v30 + v33;
      v35 = (v28 + 1);
      v36 = v28 & 0xFFFFFFFF00000000;
      if (!v32)
      {
        v35 = 0;
      }

      v28 = v35 | v36;
      v30 = v34 + 8;
    }

    while (v30 != 80);
  }

  v37 = *MEMORY[0x277D85DE8];
}

double cva::SE2GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::inverse@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_24508A998;
  *(a2 + 16) = unk_24508A9A8;
  *(a2 + 64) = 0x3FF0000000000000;
  *(a2 + 32) = xmmword_24508A9B8;
  *(a2 + 48) = unk_24508A9C8;
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(*a1 + 8 * v3);
  v5 = **a1;
  v6 = *(*a1 + 8);
  *a2 = v5;
  *(a2 + 8) = v4;
  v7 = v2[(v3 + 1)];
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  v8 = v2[(2 * v3)];
  v9 = v2[(2 * v3) | 1u];
  result = -(v7 * v9) - v4 * v8;
  *(a2 + 48) = -(v6 * v9) - v5 * v8;
  *(a2 + 56) = result;
  return result;
}

double cva::SE2GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::adjoint@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 - 8 * *(a1 + 12) == a2)
  {
    v20 = *(v2 + 8 * (v3 - 2) + 16);
    v32[0] = *v2;
    v32[1] = v20;
    v21 = 0x100000000;
    v22 = v32;
    for (i = 32; i != 80; i = v28 + 8)
    {
      v24 = *v22++;
      *(a2 + i) = v24;
      v26 = __OFSUB__(v21, 1);
      v25 = v21 - 1 < 0;
      v27 = (v21 >> 29) & 0x7FFFFFFF8;
      if (v21 < 1)
      {
        v27 = 0;
      }

      v28 = i + v27;
      v29 = (v21 + 1);
      v30 = v21 & 0xFFFFFFFF00000000;
      if (v25 == v26)
      {
        v29 = 0;
      }

      v21 = v29 | v30;
    }
  }

  else
  {
    v4 = (v3 - 2) << 32;
    v5 = 0x100000000;
    v6 = 32;
    v7 = *a1;
    do
    {
      *(a2 + v6) = *v7;
      v8 = HIDWORD(v4);
      v10 = __OFSUB__(v4, 1);
      v9 = v4 - 1 < 0;
      if (v4 < 1)
      {
        v8 = 0;
      }

      v11 = &v7[v8];
      v12 = (v4 + 1);
      v13 = v4 & 0xFFFFFFFF00000000;
      if (v9 == v10)
      {
        v12 = 0;
      }

      v4 = v12 | v13;
      v7 = v11 + 1;
      v15 = __OFSUB__(v5, 1);
      v14 = v5 - 1 < 0;
      v16 = (v5 >> 29) & 0x7FFFFFFF8;
      if (v5 < 1)
      {
        v16 = 0;
      }

      v17 = v6 + v16;
      v18 = (v5 + 1);
      v19 = v5 & 0xFFFFFFFF00000000;
      if (v14 == v15)
      {
        v18 = 0;
      }

      v5 = v18 | v19;
      v6 = v17 + 8;
    }

    while (v6 != 80);
  }

  *(a2 + 8) = *(v2 + ((2 * v3) | 1u));
  result = -*(v2 + (2 * v3));
  *(a2 + 16) = result;
  *(a2 + 48) = 0;
  *(a2 + 24) = 0;
  *a2 = 0x3FF0000000000000;
  return result;
}

uint64_t cva::SE2GroupStorage<double,cva::MatrixRef<double const,3u,3u,false>>::serialize(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 8 * (3 * v1);
    v4 = (v1 - 3) << 32;
    do
    {
      v8 = *v2;
      result = std::ostream::write();
      v5 = HIDWORD(v4);
      if (v4 < 2)
      {
        v5 = 0;
      }

      v6 = &v2[v5];
      v7 = (v4 + 1);
      if (v4 >= 2)
      {
        v7 = 0;
      }

      v4 = v7 | v4 & 0xFFFFFFFF00000000;
      v2 = v6 + 1;
    }

    while (v6 + 1 != v3);
  }

  return result;
}

float cva::SE2AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::SE2AlgebraStorage(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *a1 = *a2;
  *(a1 + 4) = *a3;
  result = *(a3 + 4);
  *(a1 + 8) = result;
  return result;
}

{
  *(a1 + 8) = 0;
  *a1 = 0;
  *a1 = *a2;
  *(a1 + 4) = *a3;
  result = *(a3 + 4);
  *(a1 + 8) = result;
  return result;
}

void cva::SE2AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::R()
{
  ;
}

{
  ;
}

uint64_t cva::SE2AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::T(uint64_t a1)
{
  return a1 + 4;
}

{
  return a1 + 4;
}

double cva::SE2AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::adjoint@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = -*(a1 + 4);
  *a2 = *(a1 + 8);
  *(a2 + 4) = v3;
  *(a2 + 16) = v2;
  *(a2 + 24) = -v2;
  result = 0.0;
  *(a2 + 28) = 0;
  *(a2 + 20) = 0;
  *(a2 + 8) = 0;
  return result;
}

double cva::SE2AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::hat@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v2 = *a1;
  *(a2 + 4) = *a1;
  *(a2 + 12) = -v2;
  result = *(a1 + 4);
  *(a2 + 24) = result;
  return result;
}

float cva::SE2AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::exp@<S0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(a2 + 32) = 1065353216;
  *a2 = xmmword_24508A970;
  *(a2 + 16) = unk_24508A980;
  v5 = a1[1];
  v6 = *a1 * a3;
  v7 = a1[2];
  v8 = __sincosf_stret(v6);
  v9 = v6 * v6;
  if ((v6 * v6) >= 0.0061)
  {
    v10 = (1.0 / v6) * v8.__sinval;
    v11 = (1.0 / v6) * (1.0 - v8.__cosval);
  }

  else
  {
    v10 = 1.0 - (v9 * ((v9 / -120.0) + 0.16667));
    v11 = v6 * ((v9 / -24.0) + 0.5);
  }

  *a2 = v8.__cosval;
  *(a2 + 4) = v8.__sinval;
  *(a2 + 12) = -v8.__sinval;
  *(a2 + 16) = v8.__cosval;
  result = (v10 * (v5 * a3)) - (v11 * (v7 * a3));
  *(a2 + 24) = result;
  *(a2 + 28) = ((v7 * a3) * v10) + (v11 * (v5 * a3));
  return result;
}

float cva::SE2AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::expJacobian@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 1065353216;
  *a2 = xmmword_24508A970;
  *(a2 + 16) = unk_24508A980;
  v4 = *a1;
  v5 = __sincosf_stret(*a1);
  v6 = v4 * v4;
  if ((v4 * v4) >= 0.0061)
  {
    v9 = (1.0 / v4) * v5.__sinval;
    v11 = (1.0 / v4) * (1.0 - v5.__cosval);
    v7 = (1.0 / v4) * v11;
    v10 = (1.0 / v4) * (1.0 - v9);
  }

  else
  {
    v7 = 0.5 - (v6 * ((v6 / -720.0) + 0.041667));
    v8 = 0.16667 - (v6 * ((v6 / -5040.0) + 0.0083333));
    v9 = 1.0 - (v6 * v8);
    v10 = v4 * v8;
    v11 = v4 * v7;
  }

  *a2 = v5.__cosval;
  *(a2 + 4) = v5.__sinval;
  *(a2 + 12) = -v5.__sinval;
  *(a2 + 16) = v5.__cosval;
  v12 = a1[1];
  v13 = a1[2];
  *(a2 + 24) = (v9 * v12) - (v11 * v13);
  *(a2 + 28) = (v9 * v13) + (v11 * v12);
  *(a2 + 36) = 1065353216;
  v14 = (v10 * v12) + (v7 * v13);
  result = (v10 * v13) - (v7 * v12);
  *(a2 + 40) = v14;
  *(a2 + 44) = result;
  *(a2 + 48) = 0;
  *(a2 + 52) = v9;
  *(a2 + 56) = v11;
  *(a2 + 60) = 0;
  *(a2 + 64) = -v11;
  *(a2 + 68) = v9;
  return result;
}

float *cva::SE2AlgebraStorage<float,cva::Matrix<float,3u,1u,false>>::enforce(float *result)
{
  v1 = *result;
  if (*result <= 0.0)
  {
    if (v1 > -3.1416)
    {
      return result;
    }

    do
    {
      v1 = v1 + 3.1416;
    }

    while (v1 <= -3.1416);
  }

  else
  {
    if (v1 < 3.1416)
    {
      return result;
    }

    do
    {
      v1 = v1 + -3.1416;
    }

    while (v1 >= 3.1416);
  }

  *result = v1;
  return result;
}

double cva::SE2AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::SE2AlgebraStorage(double *a1, double *a2, double *a3)
{
  *a1 = 0.0;
  a1[1] = 0.0;
  a1[2] = 0.0;
  *a1 = *a2;
  a1[1] = *a3;
  result = a3[1];
  a1[2] = result;
  return result;
}

{
  *a1 = 0.0;
  a1[1] = 0.0;
  a1[2] = 0.0;
  *a1 = *a2;
  a1[1] = *a3;
  result = a3[1];
  a1[2] = result;
  return result;
}

void cva::SE2AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::R()
{
  ;
}

{
  ;
}

uint64_t cva::SE2AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::T(uint64_t a1)
{
  return a1 + 8;
}

{
  return a1 + 8;
}

double cva::SE2AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::adjoint@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = -*(a1 + 8);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v3;
  *(a2 + 32) = v2;
  result = -v2;
  *(a2 + 48) = -v2;
  *(a2 + 40) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return result;
}

double cva::SE2AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::hat@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 64) = 0;
  v3 = *a1;
  *(a2 + 8) = *a1;
  *(a2 + 24) = -v3;
  v4 = *(a1 + 8);
  *(a2 + 32) = 0u;
  *(a2 + 48) = v4;
  return result;
}

double cva::SE2AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::exp@<D0>(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 64) = 0x3FF0000000000000;
  *a2 = xmmword_24508A998;
  *(a2 + 16) = unk_24508A9A8;
  *(a2 + 32) = xmmword_24508A9B8;
  *(a2 + 48) = unk_24508A9C8;
  v5 = a1[1];
  v6 = *a1 * a3;
  v7 = a1[2];
  v8 = __sincos_stret(v6);
  v9 = v6 * v6;
  if (v6 * v6 >= 0.0000002635)
  {
    v10 = 1.0 / v6 * v8.__sinval;
    v11 = 1.0 / v6 * (1.0 - v8.__cosval);
  }

  else
  {
    v10 = 1.0 - v9 * (v9 / -120.0 + 0.166666667);
    v11 = v6 * (v9 / -24.0 + 0.5);
  }

  *a2 = v8.__cosval;
  *(a2 + 8) = v8.__sinval;
  *(a2 + 24) = -v8.__sinval;
  *(a2 + 32) = v8.__cosval;
  result = v10 * (v5 * a3) - v11 * (v7 * a3);
  *(a2 + 48) = result;
  *(a2 + 56) = v7 * a3 * v10 + v11 * (v5 * a3);
  return result;
}

double cva::SE2AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::expJacobian@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0x3FF0000000000000;
  *a2 = xmmword_24508A998;
  *(a2 + 16) = unk_24508A9A8;
  *(a2 + 32) = xmmword_24508A9B8;
  *(a2 + 48) = unk_24508A9C8;
  v4 = *a1;
  v5 = __sincos_stret(*a1);
  v6 = v4 * v4;
  if (v4 * v4 >= 0.0000002635)
  {
    v9 = 1.0 / v4 * v5.__sinval;
    v11 = 1.0 / v4 * (1.0 - v5.__cosval);
    v7 = 1.0 / v4 * v11;
    v10 = 1.0 / v4 * (1.0 - v9);
  }

  else
  {
    v7 = 0.5 - v6 * (v6 / -720.0 + 0.0416666667);
    v8 = 0.166666667 - v6 * (v6 / -5040.0 + 0.00833333333);
    v9 = 1.0 - v6 * v8;
    v10 = v4 * v8;
    v11 = v4 * v7;
  }

  *a2 = v5.__cosval;
  *(a2 + 8) = v5.__sinval;
  *(a2 + 24) = -v5.__sinval;
  *(a2 + 32) = v5.__cosval;
  v12 = a1[1];
  v13 = a1[2];
  *(a2 + 48) = v9 * v12 - v11 * v13;
  *(a2 + 56) = v9 * v13 + v11 * v12;
  *(a2 + 72) = 0x3FF0000000000000;
  v14 = v10 * v12 + v7 * v13;
  result = v10 * v13 - v7 * v12;
  *(a2 + 80) = v14;
  *(a2 + 88) = result;
  *(a2 + 96) = 0;
  *(a2 + 104) = v9;
  *(a2 + 112) = v11;
  *(a2 + 120) = 0;
  *(a2 + 128) = -v11;
  *(a2 + 136) = v9;
  return result;
}

double *cva::SE2AlgebraStorage<double,cva::Matrix<double,3u,1u,false>>::enforce(double *result)
{
  v1 = *result;
  if (*result <= 0.0)
  {
    if (v1 > -3.14159265)
    {
      return result;
    }

    do
    {
      v1 = v1 + 3.14159265;
    }

    while (v1 <= -3.14159265);
  }

  else
  {
    if (v1 < 3.14159265)
    {
      return result;
    }

    do
    {
      v1 = v1 + -3.14159265;
    }

    while (v1 >= 3.14159265);
  }

  *result = v1;
  return result;
}

double cva::SE2AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::adjoint@<D0>(float **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = **a1;
  v3 = -(*a1)[1];
  *a2 = (*a1)[2];
  *(a2 + 4) = v3;
  *(a2 + 16) = v2;
  *(a2 + 24) = -v2;
  result = 0.0;
  *(a2 + 28) = 0;
  *(a2 + 20) = 0;
  *(a2 + 8) = 0;
  return result;
}

double cva::SE2AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::hat@<D0>(float **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v2 = *a1;
  v3 = **a1;
  *(a2 + 4) = v3;
  *(a2 + 12) = -v3;
  result = *(v2 + 1);
  *(a2 + 24) = result;
  return result;
}

float cva::SE2AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::exp@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(a2 + 32) = 1065353216;
  *a2 = xmmword_24508A970;
  *(a2 + 16) = unk_24508A980;
  v5 = *(*a1 + 4);
  v6 = **a1 * a3;
  v7 = *(*a1 + 8);
  v8 = __sincosf_stret(v6);
  v9 = v6 * v6;
  if ((v6 * v6) >= 0.0061)
  {
    v10 = (1.0 / v6) * v8.__sinval;
    v11 = (1.0 / v6) * (1.0 - v8.__cosval);
  }

  else
  {
    v10 = 1.0 - (v9 * ((v9 / -120.0) + 0.16667));
    v11 = v6 * ((v9 / -24.0) + 0.5);
  }

  *a2 = v8.__cosval;
  *(a2 + 4) = v8.__sinval;
  *(a2 + 12) = -v8.__sinval;
  *(a2 + 16) = v8.__cosval;
  result = (v10 * (v5 * a3)) - (v11 * (v7 * a3));
  *(a2 + 24) = result;
  *(a2 + 28) = ((v7 * a3) * v10) + (v11 * (v5 * a3));
  return result;
}

float cva::SE2AlgebraStorage<float,cva::MatrixRef<float const,3u,1u,false>>::expJacobian@<S0>(float **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 1065353216;
  *a2 = xmmword_24508A970;
  *(a2 + 16) = unk_24508A980;
  v3 = *a1;
  v4 = **a1;
  v5 = __sincosf_stret(v4);
  v6 = v4 * v4;
  if ((v4 * v4) >= 0.0061)
  {
    v9 = (1.0 / v4) * v5.__sinval;
    v11 = (1.0 / v4) * (1.0 - v5.__cosval);
    v7 = (1.0 / v4) * v11;
    v10 = (1.0 / v4) * (1.0 - v9);
  }

  else
  {
    v7 = 0.5 - (v6 * ((v6 / -720.0) + 0.041667));
    v8 = 0.16667 - (v6 * ((v6 / -5040.0) + 0.0083333));
    v9 = 1.0 - (v6 * v8);
    v10 = v4 * v8;
    v11 = v4 * v7;
  }

  *a2 = v5.__cosval;
  *(a2 + 4) = v5.__sinval;
  *(a2 + 12) = -v5.__sinval;
  *(a2 + 16) = v5.__cosval;
  v12 = v3[1];
  v13 = v3[2];
  *(a2 + 24) = (v9 * v12) - (v11 * v13);
  *(a2 + 28) = (v9 * v13) + (v11 * v12);
  *(a2 + 36) = 1065353216;
  v14 = (v10 * v12) + (v7 * v13);
  result = (v10 * v13) - (v7 * v12);
  *(a2 + 40) = v14;
  *(a2 + 44) = result;
  *(a2 + 48) = 0;
  *(a2 + 52) = v9;
  *(a2 + 56) = v11;
  *(a2 + 60) = 0;
  *(a2 + 64) = -v11;
  *(a2 + 68) = v9;
  return result;
}

double cva::SE2AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::adjoint@<D0>(double **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = **a1;
  v3 = -(*a1)[1];
  *a2 = (*a1)[2];
  *(a2 + 8) = v3;
  *(a2 + 32) = v2;
  result = -v2;
  *(a2 + 48) = -v2;
  *(a2 + 40) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return result;
}

double cva::SE2AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::hat@<D0>(double **a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 64) = 0;
  v3 = *a1;
  v4 = **a1;
  *(a2 + 8) = v4;
  *(a2 + 24) = -v4;
  v5 = *(v3 + 1);
  *(a2 + 32) = 0u;
  *(a2 + 48) = v5;
  return result;
}

double cva::SE2AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::exp@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 64) = 0x3FF0000000000000;
  *a2 = xmmword_24508A998;
  *(a2 + 16) = unk_24508A9A8;
  *(a2 + 32) = xmmword_24508A9B8;
  *(a2 + 48) = unk_24508A9C8;
  v5 = *(*a1 + 8);
  v6 = **a1 * a3;
  v7 = *(*a1 + 16);
  v8 = __sincos_stret(v6);
  v9 = v6 * v6;
  if (v6 * v6 >= 0.0000002635)
  {
    v10 = 1.0 / v6 * v8.__sinval;
    v11 = 1.0 / v6 * (1.0 - v8.__cosval);
  }

  else
  {
    v10 = 1.0 - v9 * (v9 / -120.0 + 0.166666667);
    v11 = v6 * (v9 / -24.0 + 0.5);
  }

  *a2 = v8.__cosval;
  *(a2 + 8) = v8.__sinval;
  *(a2 + 24) = -v8.__sinval;
  *(a2 + 32) = v8.__cosval;
  result = v10 * (v5 * a3) - v11 * (v7 * a3);
  *(a2 + 48) = result;
  *(a2 + 56) = v7 * a3 * v10 + v11 * (v5 * a3);
  return result;
}

double cva::SE2AlgebraStorage<double,cva::MatrixRef<double const,3u,1u,false>>::expJacobian@<D0>(double **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0x3FF0000000000000;
  *a2 = xmmword_24508A998;
  *(a2 + 16) = unk_24508A9A8;
  *(a2 + 32) = xmmword_24508A9B8;
  *(a2 + 48) = unk_24508A9C8;
  v3 = *a1;
  v4 = **a1;
  v5 = __sincos_stret(v4);
  v6 = v4 * v4;
  if (v4 * v4 >= 0.0000002635)
  {
    v9 = 1.0 / v4 * v5.__sinval;
    v11 = 1.0 / v4 * (1.0 - v5.__cosval);
    v7 = 1.0 / v4 * v11;
    v10 = 1.0 / v4 * (1.0 - v9);
  }

  else
  {
    v7 = 0.5 - v6 * (v6 / -720.0 + 0.0416666667);
    v8 = 0.166666667 - v6 * (v6 / -5040.0 + 0.00833333333);
    v9 = 1.0 - v6 * v8;
    v10 = v4 * v8;
    v11 = v4 * v7;
  }

  *a2 = v5.__cosval;
  *(a2 + 8) = v5.__sinval;
  *(a2 + 24) = -v5.__sinval;
  *(a2 + 32) = v5.__cosval;
  v12 = v3[1];
  v13 = v3[2];
  *(a2 + 48) = v9 * v12 - v11 * v13;
  *(a2 + 56) = v9 * v13 + v11 * v12;
  *(a2 + 72) = 0x3FF0000000000000;
  v14 = v10 * v12 + v7 * v13;
  result = v10 * v13 - v7 * v12;
  *(a2 + 80) = v14;
  *(a2 + 88) = result;
  *(a2 + 96) = 0;
  *(a2 + 104) = v9;
  *(a2 + 112) = v11;
  *(a2 + 120) = 0;
  *(a2 + 128) = -v11;
  *(a2 + 136) = v9;
  return result;
}

double cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::SE3GroupStorage(_OWORD *a1)
{
  *a1 = xmmword_24508A9E0;
  a1[1] = unk_24508A9F0;
  result = 0.0;
  a1[2] = xmmword_24508AA00;
  a1[3] = unk_24508AA10;
  return result;
}

{
  *a1 = xmmword_24508A9E0;
  a1[1] = unk_24508A9F0;
  result = 0.0;
  a1[2] = xmmword_24508AA00;
  a1[3] = unk_24508AA10;
  return result;
}

float cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::SE3GroupStorage(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = 0x100000000;
  do
  {
    v5 = *a2++;
    *(a1 + v3) = v5;
    v6 = v4 < 2;
    v7 = (v4 >> 30) & 0x3FFFFFFFCLL;
    if (v4 < 2)
    {
      v7 = 0;
    }

    v8 = v3 + v7;
    v9 = (v4 + 1);
    v10 = v4 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      v9 = 0;
    }

    v4 = v9 | v10;
    v3 = v8 + 4;
  }

  while (v3 != 48);
  *(a1 + 48) = *a3;
  *(a1 + 52) = *(a3 + 4);
  result = *(a3 + 8);
  *(a1 + 56) = result;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 1065353216;
  return result;
}

{
  v3 = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = 0x100000000;
  do
  {
    v5 = *a2++;
    *(a1 + v3) = v5;
    v6 = v4 < 2;
    v7 = (v4 >> 30) & 0x3FFFFFFFCLL;
    if (v4 < 2)
    {
      v7 = 0;
    }

    v8 = v3 + v7;
    v9 = (v4 + 1);
    v10 = v4 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      v9 = 0;
    }

    v4 = v9 | v10;
    v3 = v8 + 4;
  }

  while (v3 != 48);
  *(a1 + 48) = *a3;
  *(a1 + 52) = *(a3 + 4);
  result = *(a3 + 8);
  *(a1 + 56) = result;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 1065353216;
  return result;
}

void cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::R()
{
  ;
}

{
  ;
}

uint64_t cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::T(uint64_t a1)
{
  return a1 + 48;
}

{
  return a1 + 48;
}

float32x4_t *cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::lplus(uint64_t a1, __int128 *a2, double a3, double a4, double a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = *a2;
  v30 = *(a2 + 2);
  v22[0] = &v29;
  v22[1] = 6;
  v23[0] = xmmword_24508A9E0;
  v23[1] = unk_24508A9F0;
  v23[2] = xmmword_24508AA00;
  v23[3] = unk_24508AA10;
  v6 = vmul_f32(*(&v29 + 4), *(&v29 + 4));
  *&a5 = ((*&v29 * *&v29) + v6.f32[0]) + v6.f32[1];
  if (*&a5 >= 0.0061)
  {
    v14 = sqrtf(*&a5);
    v21 = ((*&v29 * *&v29) + v6.f32[0]) + v6.f32[1];
    v15 = __sincosf_stret(v14);
    v13.f32[0] = v15.__cosval;
    v13.f32[1] = v15.__sinval / v14;
    __asm { FMOV            V0.2S, #1.0 }

    v7 = vmul_n_f32(vsub_f32(_D0, v13), 1.0 / v21);
  }

  else
  {
    v7 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(*&a5, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), *&a5, 0);
    __asm { FMOV            V1.2S, #1.0 }

    v13 = vmls_lane_f32(_D1, v7, *&a5, 0);
  }

  *v25.f32 = v13;
  *&v25.u32[2] = v7;
  sub_245042AE4(v22, v25.f32, v23);
  v24[0] = v23;
  v24[1] = a1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  result = sub_245042CCC(&v25, v24);
  v18 = v26;
  *a1 = v25;
  *(a1 + 16) = v18;
  v19 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v19;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245042AE4(uint64_t result, float *a2, float32x2_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *result;
  v7 = **result;
  v8 = v5 * v7;
  v9 = v5 * *(*result + 4);
  v10 = v5 * *(*result + 8);
  a3->f32[0] = *a2 + (v8 * v7);
  a3[2].f32[1] = v3 + (v9 * v6[1]);
  a3[5].f32[0] = v3 + (v10 * v6[2]);
  v11 = v6[1];
  v12 = v8 * v11;
  v13 = v6[2];
  v14 = v8 * v13;
  v15 = v9 * v13;
  v16 = v4 * *v6;
  v17 = v4 * v11;
  v18 = v4 * v13;
  a3[2].f32[0] = v12 - v18;
  a3[4].f32[0] = v17 + v14;
  a3[4].f32[1] = v15 - v16;
  a3->f32[1] = v12 + v18;
  a3[1].f32[0] = v14 - v17;
  a3[3].f32[0] = v15 + v16;
  v35 = *(result + 8);
  v19 = &v6[-HIDWORD(v35)];
  v20 = &v19[HIDWORD(v35) + 3];
  v21 = *(v20 + 1);
  v22.i32[0] = vdup_lane_s32(v21, 1).u32[0];
  v23 = *(v6 + 1);
  v22.f32[1] = *v20;
  v24.i32[0] = vdup_lane_s32(v23, 1).u32[0];
  v24.f32[1] = *v6;
  v25 = vsub_f32(vmul_f32(v23, v22), vmul_f32(v24, v21));
  v26 = (*v6 * v21.f32[0]) - (*v20 * v23.f32[0]);
  v34.i32[0] = v25.i32[1];
  v34.f32[1] = v26;
  v28 = a2[2];
  v27 = a2[3];
  if (v19 == a3 || &v6[-HIDWORD(v35)] == a3)
  {
    v30 = v21.f32[1] + (v28 * v26);
    v31 = *(v6 + 1);
    v32.i32[0] = vdup_lane_s32(v31, 1).u32[0];
    v32.f32[1] = *v6;
    v33 = vadd_f32(vadd_f32(*v20, vmul_n_f32(v25, v28)), vmul_n_f32(vmla_f32(vmul_f32(v34, vneg_f32(v32)), vzip1_s32(vdup_lane_s32(v34, 1), v25), v31), v27));
    v29 = (v27 * ((-v31.f32[0] * v25.f32[0]) + (*v6 * v34.f32[0]))) + v30;
    a3[6] = v33;
  }

  else
  {
    a3[6].f32[0] = (*v20 + (v28 * v25.f32[0])) + (v27 * (vmuls_lane_f32(-v6[2], v25, 1) + (v6[1] * v26)));
    a3[6].f32[1] = (v20[1] + vmuls_lane_f32(v28, v25, 1)) + (v27 * ((v6[2] * v25.f32[0]) - (*v6 * v26)));
    v29 = (v20[2] + (v26 * v28)) + (v27 * ((*v6 * v25.f32[1]) - (v6[1] * v25.f32[0])));
  }

  a3[7].f32[0] = v29;
  return result;
}

float32x4_t *sub_245042CCC(float32x4_t *result, uint64_t a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = *(a2 + 8), v4 == result))
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    result = sub_245042CCC(&v7);
    v6 = v8;
    *v2 = v7;
    v2[1] = v6;
    v5 = v10;
    v2[2] = v9;
  }

  else
  {
    *result = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *v3, *v4), v3[1], v4[1]), v3[2], v4[2]), v3[3], v4[3]);
    result[1] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *v3, v4[4]), v3[1], v4[5]), v3[2], v4[6]), v3[3], v4[7]);
    result[2] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *v3, v4[8]), v3[1], v4[9]), v3[2], v4[10]), v3[3], v4[11]);
    v5 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(0, *v3, v4[12]), v3[1], v4[13]), v3[2], v4[14]), v3[3], v4[15]);
  }

  v2[3] = v5;
  return result;
}

double cva::SE3AlgebraStorage<float,cva::MatrixRef<float const,6u,1u,false>>::SE3AlgebraStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 6;
  a1[1] = 6;
  return result;
}

{
  *a1 = a2;
  *&result = 6;
  a1[1] = 6;
  return result;
}

uint64_t cva::SE3AlgebraStorage<float,cva::MatrixRef<float const,6u,1u,false>>::exp@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>)
{
  *a2 = xmmword_24508A9E0;
  *(a2 + 16) = unk_24508A9F0;
  *(a2 + 32) = xmmword_24508AA00;
  *(a2 + 48) = unk_24508AA10;
  v4 = vmul_f32(*(*a1 + 4), *(*a1 + 4));
  *&a3 = ((**a1 * **a1) + v4.f32[0]) + v4.f32[1];
  if (*&a3 >= 0.0061)
  {
    v12 = sqrtf(*&a3);
    v13 = a1;
    v17 = ((**a1 * **a1) + v4.f32[0]) + v4.f32[1];
    v14 = __sincosf_stret(v12);
    v11.f32[0] = v14.__cosval;
    a1 = v13;
    v11.f32[1] = v14.__sinval / v12;
    __asm { FMOV            V0.2S, #1.0 }

    v5 = vmul_n_f32(vsub_f32(_D0, v11), 1.0 / v17);
  }

  else
  {
    v5 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(*&a3, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), *&a3, 0);
    __asm { FMOV            V1.2S, #1.0 }

    v11 = vmls_lane_f32(_D1, v5, *&a3, 0);
  }

  v18[0] = v11;
  v18[1] = v5;
  return sub_245042AE4(a1, v18, a2);
}

float32x4_t *cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::rplus(uint64_t a1, __int128 *a2, double a3, double a4, double a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = *a2;
  v30 = *(a2 + 2);
  v22[0] = &v29;
  v22[1] = 6;
  v23[0] = xmmword_24508A9E0;
  v23[1] = unk_24508A9F0;
  v23[2] = xmmword_24508AA00;
  v23[3] = unk_24508AA10;
  v6 = vmul_f32(*(&v29 + 4), *(&v29 + 4));
  *&a5 = ((*&v29 * *&v29) + v6.f32[0]) + v6.f32[1];
  if (*&a5 >= 0.0061)
  {
    v14 = sqrtf(*&a5);
    v21 = ((*&v29 * *&v29) + v6.f32[0]) + v6.f32[1];
    v15 = __sincosf_stret(v14);
    v13.f32[0] = v15.__cosval;
    v13.f32[1] = v15.__sinval / v14;
    __asm { FMOV            V0.2S, #1.0 }

    v7 = vmul_n_f32(vsub_f32(_D0, v13), 1.0 / v21);
  }

  else
  {
    v7 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(*&a5, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), *&a5, 0);
    __asm { FMOV            V1.2S, #1.0 }

    v13 = vmls_lane_f32(_D1, v7, *&a5, 0);
  }

  *v25.f32 = v13;
  *&v25.u32[2] = v7;
  sub_245042AE4(v22, v25.f32, v23);
  v24[0] = a1;
  v24[1] = v23;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  result = sub_245042CCC(&v25, v24);
  v18 = v26;
  *a1 = v25;
  *(a1 + 16) = v18;
  v19 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v19;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

float32_t cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::transform@<S0>(float32x2_t *a1@<X0>, float *a2@<X1>, float32x2_t *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = 4;
  v8[0] = v7;
  v8[1] = a2;
  v9 = 0;
  v10 = 0.0;
  sub_245038EEC(&v9, v8);
  result = v10 + a1[7].f32[0];
  *a3 = vadd_f32(v9, a1[6]);
  a3[1].f32[0] = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

float cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::inverseTransform@<S0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, float32x2_t *a3@<X8>)
{
  v9[0] = a1;
  v9[1] = 4;
  v10 = v9;
  v11[0] = &v10;
  v11[1] = a2;
  v6[0] = a1;
  v6[1] = 4;
  v7 = v6;
  v5[0] = a1 + 48;
  v5[1] = 0xC00000004;
  v8[0] = &v7;
  v8[1] = v5;
  v13 = 0.0;
  v12 = 0;
  sub_245039034(&v12, v11);
  v15 = 0.0;
  v14 = 0;
  sub_2450431AC(&v14, v8);
  *a3 = vsub_f32(v12, v14);
  result = v13 - v15;
  a3[1].f32[0] = v13 - v15;
  return result;
}

float *sub_2450431AC(float *result, uint64_t **a2)
{
  v2 = result;
  v3 = a2[1];
  v4 = *v3;
  if ((*v3 - 4 * *(v3 + 3)) == result)
  {
    v9 = 0;
    v8 = 0;
    result = sub_2450431AC(&v8);
    *v2 = v8;
    *(v2 + 2) = v9;
  }

  else
  {
    v5 = **a2;
    v6 = *(v5 + 8);
    v7 = *v5;
    *result = (((v7[1] * v4[1]) + (*v7 * *v4)) + 0.0) + (v7[2] * v4[2]);
    result[1] = (((v7[v6 + 1] * v4[1]) + (v7[v6] * *v4)) + 0.0) + (v7[(v6 + 2)] * v4[2]);
    result[2] = (((v7[(2 * v6) + 1] * v4[1]) + (v7[(2 * v6)] * *v4)) + 0.0) + (v7[(2 * v6 + 2)] * v4[2]);
  }

  return result;
}

void cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::transformJacobian(float32x2_t *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a1 == a2)
  {
    v11 = 0;
    v12 = 0;
    v13 = a1[1].f32[0];
    v14 = v29;
    v15 = *a1;
    v29[2] = HIDWORD(*a1);
    v29[0] = 0;
    *&v29[1] = -v13;
    *&v29[3] = v13;
    v29[4] = 0;
    v30 = vneg_f32(v15);
    v31 = v15.i32[0];
    v32 = 0;
    do
    {
      v16 = *v14++;
      *(a2 + v11) = v16;
      v17 = v12 < 2;
      v18 = (v12 >> 30) & 0x3FFFFFFFCLL;
      if (v12 < 2)
      {
        v18 = 0;
      }

      v19 = v11 + v18;
      v20 = (v12 + 1);
      v21 = v12 & 0xFFFFFFFF00000000;
      if (!v17)
      {
        v20 = 0;
      }

      v12 = v20 | v21;
      v11 = v19 + 4;
    }

    while (v11 != 36);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v10 = 0.0;
      if (HIDWORD(v4) != v4)
      {
        v10 = a1->f32[dword_24508AAD0[(HIDWORD(v4) + 4 * v4)]] * flt_24508AAA0[(HIDWORD(v4) + 4 * v4)];
      }

      *(a2 + v2) = v10;
      if (v4 >= 2)
      {
        v4 = (v4 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v4 = (v4 + 1) | v4 & 0xFFFFFFFF00000000;
      }

      v5 = v3 < 2;
      v6 = (v3 >> 30) & 0x3FFFFFFFCLL;
      if (v3 < 2)
      {
        v6 = 0;
      }

      v7 = v2 + v6;
      v8 = (v3 + 1);
      v9 = v3 & 0xFFFFFFFF00000000;
      if (!v5)
      {
        v8 = 0;
      }

      v3 = v8 | v9;
      v2 = v7 + 4;
    }

    while (v2 != 36);
  }

  v22 = 0;
  for (i = 36; i != 72; i = v26 + 4)
  {
    *(a2 + i) = 0;
    v24 = v22 < 2;
    v25 = (v22 >> 30) & 0x3FFFFFFFCLL;
    if (v22 < 2)
    {
      v25 = 0;
    }

    v26 = i + v25;
    v27 = (v22 + 1);
    v28 = v22 & 0xFFFFFFFF00000000;
    if (!v24)
    {
      v27 = 0;
    }

    v22 = v27 | v28;
  }

  *(a2 + 36) = 1065353216;
  *(a2 + 52) = 1065353216;
  *(a2 + 68) = 1065353216;
}

uint64_t cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::inverseTransformJacobian@<X0>(float *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = 0;
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  v14 = a2[1];
  v13 = a2[2];
  *&v15 = (v5 * v13) - (v6 * v14);
  *&v16 = (v8 * v13) - (v9 * v14);
  *&v17 = (v11 * v13) - (v12 * v14);
  *&v18 = (v6 * *a2) - (*a1 * v13);
  v19 = (v9 * *a2) - (v7 * v13);
  v20 = (v12 * *a2) - (v10 * v13);
  v21 = (*a1 * v14) - (v5 * *a2);
  v22 = (v7 * v14) - (v8 * *a2);
  v23 = (v10 * v14) - (v11 * *a2);
  v33 = __PAIR64__(v16, v15);
  v34 = __PAIR64__(v18, v17);
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = v23;
  v24 = &v33;
  do
  {
    v25 = *v24;
    v24 = (v24 + 4);
    *(a3 + v3) = v25;
    v26 = v4 < 2;
    v27 = (v4 >> 30) & 0x3FFFFFFFCLL;
    if (v4 < 2)
    {
      v27 = 0;
    }

    v28 = v3 + v27;
    v29 = (v4 + 1);
    v30 = v4 & 0xFFFFFFFF00000000;
    if (!v26)
    {
      v29 = 0;
    }

    v4 = v29 | v30;
    v3 = v28 + 4;
  }

  while (v3 != 36);
  v33 = a1;
  v34 = 4;
  v32[0] = a3 + 36;
  v32[1] = 0x900000003;
  return sub_245043558(v32, &v33);
}

uint64_t sub_245043558(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *a2;
  if (*a2 - 4 * *(a2 + 12) == *result - 4 * *(result + 12))
  {
    v14 = *(a2 + 8);
    v15 = v3[1];
    v16 = -v3[v14];
    v17 = v3[(2 * v14)];
    v30[0] = -*v3;
    v30[1] = v16;
    v30[2] = -v17;
    v30[3] = -v15;
    v18 = -v3[(2 * v14) | 1];
    v30[4] = -v3[(v14 + 1)];
    v30[5] = v18;
    v19 = -v3[(v14 + 2)];
    v30[6] = -v3[2];
    v30[7] = v19;
    v30[8] = -v3[(2 * v14 + 2)];
    v20 = *(result + 8);
    if (v20)
    {
      v21 = &v2[3 * v20];
      v22 = (v20 - 3) << 32;
      v23 = v30;
      do
      {
        v24 = *v23++;
        *v2 = v24;
        v25 = HIDWORD(v22);
        v26 = v22 < 2;
        if (v22 < 2)
        {
          v25 = 0;
        }

        v27 = &v2[v25];
        v28 = (v22 + 1);
        v29 = v22 & 0xFFFFFFFF00000000;
        if (!v26)
        {
          v28 = 0;
        }

        v22 = v28 | v29;
        v2 = v27 + 1;
      }

      while (v2 != v21);
    }
  }

  else
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = 0;
      v6 = &v2[3 * v4];
      v7 = (v4 - 3) << 32;
      v8 = *(a2 + 8);
      do
      {
        *v2 = -v3[(HIDWORD(v5) + v8 * v5)];
        if (v5 >= 2)
        {
          v5 = (v5 & 0xFFFFFFFF00000000) + 0x100000000;
        }

        else
        {
          v5 = (v5 + 1) | v5 & 0xFFFFFFFF00000000;
        }

        v9 = HIDWORD(v7);
        v10 = v7 < 2;
        if (v7 < 2)
        {
          v9 = 0;
        }

        v11 = &v2[v9];
        v12 = (v7 + 1);
        v13 = v7 & 0xFFFFFFFF00000000;
        if (!v10)
        {
          v12 = 0;
        }

        v7 = v12 | v13;
        v2 = v11 + 1;
      }

      while (v2 != v6);
    }
  }

  return result;
}

void *cva::SE3AlgebraStorage<float,cva::Matrix<float,6u,1u,false>>::SE3AlgebraStorage(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::logJacobian(float *a1@<X0>, uint64_t a2@<X8>)
{
  v83[2] = *MEMORY[0x277D85DE8];
  *(a2 + 152) = 0u;
  *(a2 + 140) = 0u;
  *(a2 + 124) = 0u;
  *(a2 + 108) = 0u;
  *(a2 + 92) = 0u;
  *(a2 + 76) = 0u;
  *(a2 + 60) = 0u;
  *(a2 + 44) = 0u;
  *(a2 + 28) = 0u;
  *(a2 + 12) = 0u;
  v80 = 0u;
  memset(v79, 0, sizeof(v79));
  sub_245039258(a1, 4u, v79, (v79 | 0xC));
  v4 = *&v79[0];
  *a2 = *&v79[0];
  v5 = *(v79 + 2);
  *(a2 + 8) = DWORD2(v79[0]);
  v73 = a1 + 12;
  v74 = 0xC00000004;
  *&v81[0] = v79 | 0xC;
  *(&v81[0] + 1) = &v73;
  v68 = v5;
  v69 = v4;
  if ((v79 | 0xC) == a2 || a1 == a2)
  {
    LODWORD(v72) = 0;
    v71 = 0;
    sub_245043E0C(&v71, v81);
    v5 = v68;
    v4 = v69;
    v9 = v71;
    v10 = *&v72;
  }

  else
  {
    v6 = a1[12];
    v7 = a1[13];
    v8 = a1[14];
    v9 = vmla_n_f32(vmla_n_f32(vmla_n_f32(0, *(v79 + 12), v6), *(&v79[1] + 8), v7), *(&v80 + 4), v8);
    v10 = (((*(&v79[1] + 1) * v6) + 0.0) + (*&v80 * v7)) + (*(&v80 + 3) * v8);
  }

  *(a2 + 12) = v9;
  *(a2 + 20) = v10;
  v11 = vmul_f32(v4, v4);
  v12 = v11.f32[1];
  v13 = v5 * v5;
  v14 = vaddv_f32(v11) + (v5 * v5);
  if (v14 >= 0.0061)
  {
    v20 = sqrtf(v14);
    v66 = v10;
    v67 = v9;
    v65 = v11.i32[0];
    v21 = __sincosf_stret(v20);
    v11.i32[0] = v65;
    v10 = v66;
    v9 = v67;
    v5 = v68;
    v4 = v69;
    v15 = (1.0 / v14) * (1.0 - v21.__cosval);
    v16 = (1.0 / v14) * (1.0 - (v21.__sinval / v20));
    v17 = v16 - v15;
    v18 = (1.0 / v14) * ((v21.__sinval / v20) + (v15 * -2.0));
    v19 = (1.0 / v14) * (v15 + (v16 * -3.0));
  }

  else
  {
    v15 = 0.5 - (v14 * ((v14 / -720.0) + 0.041667));
    v16 = 0.16667 - (v14 * ((v14 / -5040.0) + 0.0083333));
    v17 = (v14 * ((v14 * -0.0011905) + 0.033333)) + -0.33333;
    v18 = (v14 * ((v14 * -0.00014881) + 0.0055556)) + -0.083333;
    v19 = (v14 * ((v14 * -0.000016534) + 0.00079365)) + -0.016667;
  }

  v22 = 0;
  v23 = a2 + 24;
  v24 = vmul_f32(v4, v9).f32[0];
  v25 = vmuls_lane_f32(v4.f32[1], v9, 1);
  v26 = (v24 + v25) + (v5 * v10);
  v27 = ((v17 + (v19 * v11.f32[0])) * v26) + ((v16 + v16) * v24);
  v28 = ((v17 + (v19 * v12)) * v26) + ((v16 + v16) * v25);
  v29 = ((v17 + (v19 * v13)) * v26) + ((v16 + v16) * (v5 * v10));
  v30 = v19 * v26;
  v31 = v18 * v26;
  v32 = (v5 * v31) + (v15 * v10);
  v33 = vmul_n_f32(v4, v30);
  v34 = vmuls_lane_f32(v33.f32[0], v4, 1) + (v16 * (vmuls_lane_f32(v4.f32[0], v9, 1) + (v9.f32[0] * v4.f32[1])));
  v35 = vrev64_s32(vmla_n_f32(vmul_n_f32(v33, v5), vmla_n_f32(vmul_n_f32(v4, v10), v9, v5), v16));
  v36 = vmla_n_f32(vmul_n_f32(v4, v31), v9, v15);
  *(&v74 + 1) = v34 - v32;
  v75 = v28;
  *&v73 = v27;
  *(&v73 + 1) = v32 + v34;
  v37 = vsub_f32(v35, v36);
  LODWORD(v74) = v37.i32[1];
  v77 = v37.i32[0];
  v78 = v29;
  v76 = vadd_f32(v36, v35);
  v38 = 0x300000000;
  v39 = 12;
  do
  {
    *(v23 + v22) = *(v79 + v39);
    v40 = v38 < 2;
    v41 = (v38 >> 30) & 0x3FFFFFFFCLL;
    if (v38 < 2)
    {
      v41 = 0;
    }

    v42 = v22 + v41;
    v43 = (v38 + 1);
    v44 = v38 & 0xFFFFFFFF00000000;
    if (!v40)
    {
      v43 = 0;
    }

    v38 = v43 | v44;
    v22 = v42 + 4;
    v39 += 4;
  }

  while (v22 != 72);
  v45 = *(a2 + 24);
  HIDWORD(v45) = *(a2 + 48);
  v46 = *(a2 + 52);
  v47 = *(a2 + 72);
  *(&v46 + 1) = *(a2 + 72);
  v81[0] = v45;
  v81[1] = v46;
  v48 = v81;
  v82 = DWORD2(v47);
  v49 = 0x300000000;
  for (i = 84; i != 156; i = v54 + 4)
  {
    v51 = *v48++;
    *(v23 + i) = v51;
    v52 = v49 < 2;
    v53 = (v49 >> 30) & 0x3FFFFFFFCLL;
    if (v49 < 2)
    {
      v53 = 0;
    }

    v54 = i + v53;
    v55 = (v49 + 1);
    v56 = v49 & 0xFFFFFFFF00000000;
    if (!v52)
    {
      v55 = 0;
    }

    v49 = v55 | v56;
  }

  v83[0] = v79 | 0xC;
  v71 = v83;
  v72 = &v73;
  *&v81[0] = &v71;
  *(&v81[0] + 1) = v79 | 0xC;
  v70[0] = a2 + 36;
  v70[1] = 0x300000006;
  sub_245043EEC(v70, v81);
  v57 = 0x300000000;
  for (j = 72; j != 144; j = v61 + 4)
  {
    *(v23 + j) = 0;
    v59 = v57 < 2;
    v60 = (v57 >> 30) & 0x3FFFFFFFCLL;
    if (v57 < 2)
    {
      v60 = 0;
    }

    v61 = j + v60;
    v62 = (v57 + 1);
    v63 = v57 & 0xFFFFFFFF00000000;
    if (!v59)
    {
      v62 = 0;
    }

    v57 = v62 | v63;
  }

  v64 = *MEMORY[0x277D85DE8];
}

float *sub_245043E0C(float *result, uint64_t a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = *(a2 + 8), v5 = *v4, (*v4 - 4 * *(v4 + 12)) == result))
  {
    v7 = 0;
    v6 = 0;
    result = sub_245043E0C(&v6);
    *v2 = v6;
    *(v2 + 2) = v7;
  }

  else
  {
    *result = (((*v3 * *v5) + 0.0) + (v3[3] * v5[1])) + (v3[6] * v5[2]);
    result[1] = (((v3[1] * *v5) + 0.0) + (v3[4] * v5[1])) + (v3[7] * v5[2]);
    result[2] = (((v3[2] * *v5) + 0.0) + (v3[5] * v5[1])) + (v3[8] * v5[2]);
  }

  return result;
}

void sub_245043EEC(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v4 = *a1;
  if (v3 == (*a1 - 4 * *(a1 + 12)))
  {
    v31 = 0.0;
    v29 = 0u;
    v30 = 0u;
    sub_2450440C8(&v29, a2);
    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = *a1;
      v20 = *a1 + 4 * (3 * v18);
      v21 = (v18 - 3) << 32;
      v22 = &v29;
      do
      {
        v23 = *v22++;
        *v19 = v23;
        v24 = HIDWORD(v21);
        v25 = v21 < 2;
        if (v21 < 2)
        {
          v24 = 0;
        }

        v26 = &v19[v24];
        v27 = (v21 + 1);
        v28 = v21 & 0xFFFFFFFF00000000;
        if (!v25)
        {
          v27 = 0;
        }

        v21 = v27 | v28;
        v19 = v26 + 1;
      }

      while (v19 != v20);
    }
  }

  else
  {
    v5 = *a2;
    v29 = 0u;
    v30 = 0u;
    v31 = 0.0;
    sub_24504422C(&v29, v5);
    v6 = *(a1 + 8);
    v7 = *&v29;
    v8 = *(&v29 + 3);
    v9 = *(&v30 + 2);
    *v4 = (((*&v29 * *v3) + 0.0) + (*(&v29 + 3) * v3[1])) + (*(&v30 + 2) * v3[2]);
    v10 = *(&v29 + 1);
    v11 = *&v30;
    v12 = *(&v30 + 3);
    v4[1] = (((*(&v29 + 1) * *v3) + 0.0) + (*&v30 * v3[1])) + (*(&v30 + 3) * v3[2]);
    v13 = *(&v29 + 2);
    v14 = *(&v30 + 1);
    v15 = v31;
    v4[2] = (((*(&v29 + 2) * *v3) + 0.0) + (*(&v30 + 1) * v3[1])) + (v31 * v3[2]);
    v16 = &v4[v6];
    *v16 = (((v7 * v3[3]) + 0.0) + (v8 * v3[4])) + (v9 * v3[5]);
    v16[1] = (((v10 * v3[3]) + 0.0) + (v11 * v3[4])) + (v12 * v3[5]);
    v16[2] = (((v13 * v3[3]) + 0.0) + (v14 * v3[4])) + (v15 * v3[5]);
    v17 = &v4[(2 * v6)];
    *v17 = (((v7 * v3[6]) + 0.0) + (v8 * v3[7])) + (v9 * v3[8]);
    v17[1] = (((v10 * v3[6]) + 0.0) + (v11 * v3[7])) + (v12 * v3[8]);
    v17[2] = (((v13 * v3[6]) + 0.0) + (v14 * v3[7])) + (v15 * v3[8]);
  }
}

__n64 sub_2450440C8(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3 == a1)
  {
    v13 = 0.0;
    v11 = 0u;
    v12 = 0u;
    sub_2450440C8(&v11);
    result.n64_u64[0] = v11;
    v10 = v12;
    *a1 = v11;
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    v4 = *a2;
    v11 = 0u;
    v12 = 0u;
    v13 = 0.0;
    sub_24504422C(&v11, v4);
    result.n64_u32[1] = 0;
    v5 = v11;
    v6 = *(&v12 + 1);
    *a1 = (((*&v11 * *v3) + 0.0) + (*(&v11 + 3) * v3[1])) + (*(&v12 + 2) * v3[2]);
    v7 = v12;
    *(a1 + 4) = (((*(&v5 + 1) * *v3) + 0.0) + (*&v12 * v3[1])) + (*(&v6 + 1) * v3[2]);
    v8 = v13;
    *(a1 + 8) = (((*(&v5 + 2) * *v3) + 0.0) + (*(&v7 + 1) * v3[1])) + (v13 * v3[2]);
    *(a1 + 12) = (((*&v5 * v3[3]) + 0.0) + (*(&v5 + 3) * v3[4])) + (*&v6 * v3[5]);
    *(a1 + 16) = (((*(&v5 + 1) * v3[3]) + 0.0) + (*&v7 * v3[4])) + (*(&v6 + 1) * v3[5]);
    *(a1 + 20) = (((*(&v5 + 2) * v3[3]) + 0.0) + (*(&v7 + 1) * v3[4])) + (v8 * v3[5]);
    *(a1 + 24) = (((*&v5 * v3[6]) + 0.0) + (*(&v5 + 3) * v3[7])) + (*&v6 * v3[8]);
    *(a1 + 28) = (((*(&v5 + 1) * v3[6]) + 0.0) + (*&v7 * v3[7])) + (*(&v6 + 1) * v3[8]);
    result.n64_f32[0] = (((*(&v5 + 2) * v3[6]) + 0.0) + (*(&v7 + 1) * v3[7])) + (v8 * v3[8]);
    *(a1 + 32) = result.n64_u32[0];
  }

  return result;
}

double sub_24504422C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a1)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_24504422C(&v16);
    result = *&v16;
    v15 = v17;
    *a1 = v16;
    *(a1 + 16) = v15;
    *(a1 + 32) = v18;
  }

  else
  {
    v4 = **a2;
    v6 = *v4;
    v5 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v10 = v4[4];
    v9 = v4[5];
    v12 = v4[6];
    v11 = v4[7];
    v13 = v4[8];
    *a1 = ((0.0 - (*v4 * *v3)) - (v8 * v3[1])) - (v12 * v3[2]);
    *(a1 + 4) = ((0.0 - (v5 * *v3)) - (v10 * v3[1])) - (v11 * v3[2]);
    *(a1 + 8) = ((0.0 - (v7 * *v3)) - (v9 * v3[1])) - (v13 * v3[2]);
    *(a1 + 12) = ((0.0 - (v6 * v3[3])) - (v8 * v3[4])) - (v12 * v3[5]);
    *(a1 + 16) = ((0.0 - (v5 * v3[3])) - (v10 * v3[4])) - (v11 * v3[5]);
    *(a1 + 20) = ((0.0 - (v7 * v3[3])) - (v9 * v3[4])) - (v13 * v3[5]);
    *(a1 + 24) = ((0.0 - (v6 * v3[6])) - (v8 * v3[7])) - (v12 * v3[8]);
    *(a1 + 28) = ((0.0 - (v5 * v3[6])) - (v10 * v3[7])) - (v11 * v3[8]);
    *&result = ((0.0 - (v7 * v3[6])) - (v9 * v3[7])) - (v13 * v3[8]);
    *(a1 + 32) = LODWORD(result);
  }

  return result;
}

uint64_t cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::inverse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[2] = *MEMORY[0x277D85DE8];
  *a2 = xmmword_24508A9E0;
  *(a2 + 16) = unk_24508A9F0;
  *(a2 + 32) = xmmword_24508AA00;
  *(a2 + 48) = unk_24508AA10;
  v13 = a1;
  v14 = 4;
  v17[0] = a2;
  v17[1] = 4;
  result = sub_2450444A8(v17, &v13);
  v12[0] = a2;
  v12[1] = 4;
  v17[0] = v12;
  v11[0] = a1 + 48;
  v11[1] = 0xC00000004;
  v13 = v17;
  v14 = v11;
  if (a1 == a2)
  {
    v16 = 0.0;
    v15 = 0;
    result = sub_2450445F0(&v15, &v13);
    v8 = v15;
    v9 = v16;
  }

  else
  {
    v5.i32[0] = *(a1 + 48);
    v6.i32[0] = *(a1 + 52);
    v7.i32[0] = *(a1 + 56);
    v8 = vmls_lane_f32(vmls_lane_f32(vmls_lane_f32(0, *a2, v5, 0), *(a2 + 16), v6, 0), *(a2 + 32), v7, 0);
    v9 = ((0.0 - (*(a2 + 8) * v5.f32[0])) - (*(a2 + 24) * v6.f32[0])) - (*(a2 + 40) * v7.f32[0]);
  }

  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}