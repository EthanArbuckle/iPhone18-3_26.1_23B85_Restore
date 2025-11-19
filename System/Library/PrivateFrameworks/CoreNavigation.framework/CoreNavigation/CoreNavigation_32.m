uint64_t cnrand::RandomNumberGenerator::Initialize(cnrand::RandomNumberGenerator *this)
{
  v2 = time(0);
  srand(v2);
  LODWORD(result) = rand();
  *this = result;
  *(this + 1) = 0;
  *(this + 2) = result;
  v4 = 1;
  for (i = 3; i != 626; ++i)
  {
    v6 = 1812433253 * (result ^ (result >> 30));
    result = (v6 + v4);
    *(this + i) = i + v6 - 2;
    ++v4;
  }

  *(this + 2504) = 1;
  return result;
}

uint64_t cnrand::RandomNumberGenerator::Initialize(uint64_t this, unsigned int a2)
{
  *this = a2;
  *(this + 4) = 0;
  *(this + 8) = a2;
  v2 = 1;
  for (i = 3; i != 626; ++i)
  {
    v4 = 1812433253 * (a2 ^ (a2 >> 30));
    a2 = v4 + v2;
    *(this + 4 * i) = i + v4 - 2;
    ++v2;
  }

  *(this + 2504) = 1;
  return this;
}

uint64_t cnrand::RandomNumberGenerator::RandomInteger(cnrand::RandomNumberGenerator *this)
{
  if ((*(this + 2504) & 1) == 0)
  {
    cnrand::RandomNumberGenerator::Initialize(this);
  }

  cnrand::RandomNumberGenerator::FillGenerator(this);
  v2 = *(this + 1);
  v3 = *(this + v2 + 2) ^ (*(this + v2 + 2) >> 11);
  v4 = (((v3 << 7) & 0x9D2C5680 ^ v3) << 15) & 0xEFC60000 ^ (v3 << 7) & 0x9D2C5680 ^ v3;
  result = v4 ^ (v4 >> 18);
  *(this + 1) = (v2 + 1) % 0x270u;
  return result;
}

double cnrand::RandomNumberGenerator::RandomGaussian(cnrand::RandomNumberGenerator *this)
{
  do
  {
    v2 = (cnrand::RandomNumberGenerator::RandomInteger(this) + 0.5) * 2.32830644e-10 * 2.0 + -1.0;
    v3 = (cnrand::RandomNumberGenerator::RandomInteger(this) + 0.5) * 2.32830644e-10 * 2.0 + -1.0;
    v4 = v3 * v3;
    v5 = v4 + v2 * v2;
  }

  while (v5 >= 1.0);
  return v2 * sqrt(log(v4 + v2 * v2) * -2.0 / v5);
}

FILE *cnrand::RandomNumberGenerator::WriteState(cnrand::RandomNumberGenerator *this, const char *__filename)
{
  if ((*(this + 2504) & 1) == 0)
  {
    cnrand::RandomNumberGenerator::Initialize(this);
  }

  result = fopen(__filename, "w");
  if (result)
  {
    v5 = result;
    v6 = fprintf(result, "%u\n", *this);
    v7 = fprintf(v5, "%u\n", *(this + 1));
    if (v6 >= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (v7 >= 1)
    {
      v9 = v6 < 1;
    }

    else
    {
      v9 = v8;
    }

    for (i = 8; i != 2504; i += 4)
    {
      if (fprintf(v5, "%u\n", *(this + i)) < 1)
      {
        ++v9;
      }
    }

    if (fflush(v5))
    {
      v11 = -1;
    }

    else
    {
      v11 = 0;
    }

    fclose(v5);
    return (v9 == v11);
  }

  return result;
}

uint64_t cnrand::RandomNumberGenerator::LoadState(cnrand::RandomNumberGenerator *this, const char *__filename)
{
  *(this + 2504) = 0;
  result = fopen(__filename, "r");
  if (result)
  {
    v4 = result;
    v5 = fscanf(result, "%u\n", this);
    v6 = fscanf(v4, "%u\n", this + 4);
    if (v5 >= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (v6 >= 1)
    {
      v8 = v5 < 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = this + 8;
    v10 = 624;
    do
    {
      if (fscanf(v4, "%u\n", v9) < 1)
      {
        ++v8;
      }

      v9 += 4;
      --v10;
    }

    while (v10);
    fclose(v4);
    if (v8)
    {
      return 0;
    }

    else
    {
      result = 1;
      *(this + 2504) = 1;
    }
  }

  return result;
}

void *cnrotation::CNRotation::CNRotation(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0x3FF0000000000000;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0x3FF0000000000000;
  return this;
}

float64x2_t *cnrotation::CNRotation::CNRotation(float64x2_t *this, float64x2_t *a2)
{
  v2 = 0uLL;
  *this = 0u;
  this[1] = 0u;
  _Q2 = a2[1];
  _D4 = _Q2.f64[1];
  __asm { FMLA            D3, D4, V2.D[1] }

  v10 = sqrt(_D3);
  if (fabs(v10) >= 2.22044605e-16)
  {
    v12 = vdupq_lane_s64(*&v10, 0);
    v2 = vdivq_f64(*a2, v12);
    v11 = vdivq_f64(_Q2, v12);
  }

  else
  {
    v11 = xmmword_1D0E7DCB0;
  }

  *this = v2;
  this[1] = v11;
  return this;
}

{
  v2 = 0uLL;
  *this = 0u;
  this[1] = 0u;
  _Q2 = a2[1];
  _D4 = _Q2.f64[1];
  __asm { FMLA            D3, D4, V2.D[1] }

  v10 = sqrt(_D3);
  if (fabs(v10) >= 2.22044605e-16)
  {
    v12 = vdupq_lane_s64(*&v10, 0);
    v2 = vdivq_f64(*a2, v12);
    v11 = vdivq_f64(_Q2, v12);
  }

  else
  {
    v11 = xmmword_1D0E7DCB0;
  }

  *this = v2;
  this[1] = v11;
  return this;
}

float64x2_t *cnrotation::CNRotation::Normalize@<X0>(float64x2_t *this@<X0>, const cnquaternion::CNQuaternion *a2@<X1>, float64x2_t *a3@<X8>)
{
  _Q1 = this[1];
  _D3 = _Q1.f64[1];
  __asm { FMLA            D2, D3, V1.D[1] }

  v10 = sqrt(_D2);
  if (fabs(v10) >= 2.22044605e-16)
  {
    v13 = vdupq_lane_s64(*&v10, 0);
    v12 = vdivq_f64(*this, v13);
    v11 = vdivq_f64(_Q1, v13);
  }

  else
  {
    v11 = xmmword_1D0E7DCB0;
    v12 = 0uLL;
  }

  *a3 = v12;
  a3[1] = v11;
  return this;
}

cnrotation::CNRotation *cnrotation::CNRotation::CNRotation(cnrotation::CNRotation *this, double a2, double a3, double a4)
{
  *this = 0u;
  *(this + 1) = 0u;
  if (fabs(a3) >= 1.57079633)
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0x3FF0000000000000;
    __assert_rtn("CNRotation", "cnrotation.cpp", 90, "false && Error: attempted to construct CNRotation from invalid YPR.");
  }

  v15 = 0x300000003;
  v13 = &unk_1F4CD5DD0;
  v14 = xmmword_1D0E76C10;
  v16 = v17;
  v7 = __sincos_stret(a2);
  v8 = __sincos_stret(a3);
  v9 = __sincos_stret(a4);
  v17[0] = v7.__cosval * v8.__cosval;
  v17[1] = v7.__cosval * v8.__sinval * v9.__sinval - v7.__sinval * v9.__cosval;
  v17[6] = -v8.__sinval;
  v17[7] = v8.__cosval * v9.__sinval;
  v17[2] = v7.__sinval * v9.__sinval + v7.__cosval * v8.__sinval * v9.__cosval;
  v17[3] = v7.__sinval * v8.__cosval;
  v17[4] = v7.__cosval * v9.__cosval + v7.__sinval * v8.__sinval * v9.__sinval;
  v17[5] = v7.__sinval * v8.__sinval * v9.__cosval - v7.__cosval * v9.__sinval;
  v17[8] = v8.__cosval * v9.__cosval;
  sub_1D0D260A4(v12, &v13);
  if (v12 != this)
  {
    v10 = v12[1];
    *this = v12[0];
    *(this + 1) = v10;
  }

  return this;
}

__n128 cnrotation::CNRotation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    result = *(a2 + 16);
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t cnrotation::CNRotation::CNRotation(uint64_t a1, float64x2_t *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v23 = *a2;
  v3 = a2[1].f64[0];
  v4 = sqrt(COERCE_DOUBLE(*&vmulq_f64(*a2, *a2).f64[1]) + a2->f64[0] * a2->f64[0] + v3 * v3);
  v5 = fabs(v4);
  v6 = v4;
  if (v5 > 3.14159265)
  {
    v6 = fmod(v4 + 3.14159265, 6.28318531) + -3.14159265;
  }

  if (fabs(v6 * 0.5) >= 2.22044605e-16)
  {
    v15 = __sincos_stret(v6 * 0.5);
    cosval = v15.__cosval;
    v12 = vmulq_n_f64(vnegq_f64(v23), v15.__sinval / v6);
    v13 = -(v3 * (v15.__sinval / v6));
    v16 = COERCE_DOUBLE(*&vmulq_f64(v12, v12).f64[1]) + v12.f64[0] * v12.f64[0] + v13 * v13;
  }

  else
  {
    if (v5 >= 2.22044605e-16)
    {
      __asm { FMOV            V2.2D, #-0.5 }

      v12 = vmulq_f64(vmulq_n_f64(v23, v6 / v4), _Q2);
      v13 = v6 / v4 * v3 * -0.5;
    }

    else
    {
      __asm { FMOV            V0.2D, #-0.5 }

      v12 = vmulq_f64(v23, _Q0);
      v13 = v3 * -0.5;
    }

    v16 = COERCE_DOUBLE(*&vmulq_f64(v12, v12).f64[1]) + v12.f64[0] * v12.f64[0] + v13 * v13;
    cosval = sqrt(1.0 - v16);
  }

  v18 = sqrt(v16 + cosval * cosval);
  if (fabs(v18) >= 2.22044605e-16)
  {
    v19 = vdivq_f64(v12, vdupq_lane_s64(*&v18, 0));
    v21 = v13 / v18;
    v20 = cosval / v18;
  }

  else
  {
    v19 = 0uLL;
    v20 = 1.0;
    v21 = 0.0;
  }

  *a1 = v19;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  return a1;
}

double cnrotation::CNRotation::WrapToPi(cnrotation::CNRotation *this, int8x16_t a2, int8x16_t a3)
{
  a3.i64[0] = 0x400921FB54442D18;
  if (fabs(*a2.i64) > 3.14159265)
  {
    v3.f64[0] = NAN;
    v3.f64[1] = NAN;
    v5 = *vbslq_s8(vnegq_f64(v3), a3, a2).i64;
    *a2.i64 = fmod(v5 + *a2.i64, 6.28318531) - v5;
  }

  return *a2.i64;
}

__n128 cnrotation::CNRotation::CNRotation(__n128 *this, __n128 *a2)
{
  result.n128_u64[0] = 0;
  *this = 0u;
  this[1] = 0u;
  if (this != a2)
  {
    *this = *a2;
    result = a2[1];
    this[1] = result;
  }

  return result;
}

{
  result.n128_u64[0] = 0;
  *this = 0u;
  this[1] = 0u;
  if (this != a2)
  {
    *this = *a2;
    result = a2[1];
    this[1] = result;
  }

  return result;
}

double cnrotation::CNRotation::CrossProductMatrix@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  *(a2 + 32) = a2 + 40;
  *(a2 + 8) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a2, 0.0);
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  *(v5 + 8) = *(v4 + 16);
  *(v5 + 16) = -*(v4 + 8);
  v6 = *(a2 + 20);
  v7 = v5 + 8 * v6;
  *v7 = -*(v4 + 16);
  *(v7 + 16) = *v4;
  *(v5 + 16 * v6) = *(v4 + 8);
  result = -*v4;
  *(v5 + 8 * ((2 * v6) | 1)) = result;
  return result;
}

__n128 cnrotation::CNRotation::RotationQuaternion@<Q0>(cnrotation::CNRotation *this@<X0>, _OWORD *a2@<X8>)
{
  result = *this;
  v3 = *(this + 1);
  *a2 = *this;
  a2[1] = v3;
  return result;
}

void cnrotation::CNRotation::RotationVector(cnrotation::CNRotation *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000003;
  *a2 = &unk_1F4CDEB28;
  *(a2 + 8) = xmmword_1D0E7DCC0;
  *(a2 + 32) = a2 + 40;
  v5 = *this;
  v4 = *(this + 1);
  v6 = *(this + 2);
  v7 = sqrt(v4 * v4 + v5 * v5 + v6 * v6);
  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  *v9.i64 = asin(v8);
  if (fabs(*v9.i64) >= 2.22044605e-16)
  {
    v10.i64[0] = *(this + 3);
    *v9.i64 = (*v9.i64 + *v9.i64) / v8;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v14.f64[0] = *vbslq_s8(vnegq_f64(v14), v9, v10).i64;
    v11 = -(v5 * v14.f64[0]);
    v12 = -(v4 * v14.f64[0]);
    v13 = -(v6 * v14.f64[0]);
  }

  else
  {
    v11 = v5 * -2.0;
    v12 = v4 * -2.0;
    v13 = v6 * -2.0;
  }

  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
}

uint64_t cnrotation::CNRotation::RotationYawPitchRoll(cnrotation::CNRotation *this, long double *a2, long double *a3, double *a4)
{
  cnrotation::CNRotation::RotationMatrix(this, &v16);
  v7 = v17;
  v8 = v18;
  v9 = &v18[2 * v17];
  v10 = *v9;
  v11 = -*v9;
  v12 = (2 * v17) | 1;
  v13 = sqrt(v9[2] * v9[2] + v18[v12] * v18[v12]);
  *a3 = atan2(v11, v13);
  if (fabs(v13) >= 2.22044605e-16)
  {
    *a2 = atan2(v8[v7] / v13, *v8 / v13);
    v15 = atan2(v8[v12] / v13, v9[2] / v13);
  }

  else
  {
    if (fabs(v10) < 2.22044605e-16)
    {
      return 0xFFFFFFFFLL;
    }

    *a2 = atan2(v8[v12] / v11, *v9 / v11);
    v15 = 0.0;
  }

  result = 0;
  *a4 = v15;
  return result;
}

double cnrotation::CNRotation::dqddq@<D0>(cnrotation::CNRotation *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = *(this + 3);
  *(a2 + 24) = 0x300000004;
  *a2 = &unk_1F4CDEC00;
  *(a2 + 8) = xmmword_1D0E7DCF0;
  *(a2 + 40) = v5;
  *(a2 + 32) = a2 + 40;
  v6 = -v2;
  *(a2 + 80) = v5;
  *(a2 + 88) = v2;
  result = -v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = -v3;
  *(a2 + 112) = v6;
  *(a2 + 120) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = -v4;
  *(a2 + 96) = -v3;
  *(a2 + 104) = v3;
  *(a2 + 128) = -v4;
  return result;
}

double cnrotation::CNRotation::dRdq1@<D0>(float64x2_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this->f64[0];
  v3 = this->f64[1];
  v4 = v3 * v3;
  v5 = this->f64[0] * v3;
  v6 = 1.0 - v2 * v2;
  v7 = v6 - v2 * v2;
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  v8 = v6 + v3 * v3;
  v9 = this[1];
  v10 = vmulq_f64(v9, v9).f64[0];
  v11 = vmuld_lane_f64(this[1].f64[1], v9, 1);
  *(a2 + 40) = (v2 + v2) * (v8 + v10 - v11);
  *(a2 + 8) = xmmword_1D0E76C10;
  *(a2 + 32) = a2 + 40;
  v12 = v3 + v3;
  v13 = v2 * -2.0;
  v14 = vmuld_lane_f64(v2 * v9.f64[0], v9, 1) * 4.0;
  v15 = vmulq_f64(vmulq_n_f64(v9, v5), xmmword_1D0E7DD00);
  v16 = vaddq_f64(v9, v9);
  *(a2 + 48) = v14 + v12 * v7;
  *(a2 + 56) = -(*&v15.i64[1] - v16.f64[0] * v7);
  *(a2 + 64) = -(v14 - v12 * v7);
  *(a2 + 72) = v13 * (v8 - v10 + v11);
  *(a2 + 80) = *v15.i64 + vmuld_lane_f64(-2.0, v9, 1) * v7;
  *(a2 + 88) = vmlaq_n_f64(vextq_s8(v15, v15, 8uLL), v16, v7);
  result = v13 * (v6 - v4 + v10 + v11);
  *(a2 + 104) = result;
  return result;
}

double cnrotation::CNRotation::dRdq2@<D0>(float64x2_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this->f64[0];
  v3 = this->f64[1];
  v4 = v2 * v2;
  v5 = this->f64[0] * v3;
  v6 = 1.0 - v3 * v3;
  v7 = v6 - v3 * v3;
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  *(a2 + 8) = xmmword_1D0E76C10;
  v8 = v3 * -2.0;
  v9 = v2 * v2 + v6;
  v10 = this[1];
  v11 = vmulq_f64(v10, v10).f64[0];
  v12 = this[1].f64[1];
  v13 = vmuld_lane_f64(v12, v10, 1);
  *(a2 + 40) = v3 * -2.0 * (v13 + v9 - v11);
  *(a2 + 32) = a2 + 40;
  v14 = v2 + v2;
  v15 = v3 + v3;
  v16 = vmuld_lane_f64(v3 * v10.f64[0], v10, 1) * 4.0;
  v17 = vmulq_f64(vmulq_n_f64(v10, v5), xmmword_1D0E7DD00);
  *(a2 + 48) = v16 + v14 * v7;
  *(a2 + 56) = *v17.i64 + (v12 + v12) * v7;
  *(a2 + 64) = -(v16 - v14 * v7);
  *(a2 + 72) = v15 * (v11 + v9 - v13);
  v18 = vmulq_f64(v10, xmmword_1D0E77B70);
  *(a2 + 80) = vmlaq_n_f64(vextq_s8(v17, v17, 8uLL), v18, v7);
  result = v8 * (v13 + v11 + v6 - v4);
  *(a2 + 96) = -(*&v17.i64[1] - v18.f64[0] * v7);
  *(a2 + 104) = result;
  return result;
}

double cnrotation::CNRotation::dRdq3@<D0>(float64x2_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[1].f64[0];
  v3 = this[1].f64[1];
  v4 = v3 * v3;
  v5 = 1.0 - v2 * v2;
  _D3 = v5 - v2 * v2;
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  v7 = *this;
  v8 = vmulq_f64(v7, v7).f64[0];
  v9 = vmuld_lane_f64(this->f64[1], *this, 1);
  v10 = v8 + v5;
  *(a2 + 40) = v2 * -2.0 * (v3 * v3 + v8 + v5 - v9);
  *(a2 + 8) = xmmword_1D0E76C10;
  *(a2 + 32) = a2 + 40;
  v11 = v3 * -2.0;
  v12 = v3 + v3;
  v13 = vmulq_n_f64(v7, v2);
  v14 = vmulq_n_f64(v13, v3);
  v13.f64[0] = vmuld_lane_f64(v13.f64[0], v7, 1) * -4.0;
  __asm { FMOV            V21.2D, #4.0 }

  v20 = vmulq_f64(v14, _Q21);
  _Q16 = vaddq_f64(v7, v7);
  *(a2 + 48) = v13.f64[0] + v11 * _D3;
  *(a2 + 56) = -(v20.f64[1] - *_Q16.i64 * _D3);
  *(a2 + 64) = v13.f64[0] + v12 * _D3;
  *(a2 + 72) = v2 * -2.0 * (v4 + v9 + v5 - v8);
  *(a2 + 80) = vmlaq_n_f64(v20, vextq_s8(_Q16, _Q16, 8uLL), _D3);
  __asm { FMLA            D4, D3, V16.D[1] }

  result = (v2 + v2) * (v9 + v10 - v4);
  *(a2 + 96) = _D4;
  *(a2 + 104) = result;
  return result;
}

float64_t cnrotation::CNRotation::dRdq4@<D0>(cnrotation::CNRotation *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 3);
  v4 = *this * v3;
  v5 = 1.0 - v3 * v3;
  v6 = v5 - v3 * v3;
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  *(a2 + 8) = xmmword_1D0E76C10;
  v7 = *(this + 8);
  v8 = vmulq_f64(v7, v7).f64[0];
  v9 = *(this + 2);
  v10 = vmuld_lane_f64(v9, v7, 1);
  *(a2 + 40) = (v3 + v3) * (v10 + v8 + v5 - v2 * v2);
  *(a2 + 32) = a2 + 40;
  __asm { FMOV            V7.2D, #-4.0 }

  v16 = vmulq_f64(vmulq_n_f64(v7, v4), _Q7);
  v17 = vmulq_f64(v7, xmmword_1D0E77B70);
  *(a2 + 48) = vmlaq_n_f64(v16, vextq_s8(v17, v17, 8uLL), v6);
  v18 = v2 * v2 + v5;
  *(a2 + 64) = v16.f64[0] + (v9 + v9) * v6;
  *(a2 + 72) = (v3 + v3) * (v10 + v18 - v8);
  v19 = vdupq_lane_s64(*&v7.f64[0], 0);
  v19.f64[0] = v2;
  __asm { FMOV            V7.2D, #-2.0 }

  v16.f64[0] = vmuld_lane_f64(v3 * v7.f64[0], v7, 1) * -4.0;
  *(a2 + 80) = vmlaq_n_f64(v16, vmulq_f64(v19, _Q7), v6);
  result = v16.f64[0] + (v2 + v2) * v6;
  *(a2 + 96) = result;
  *(a2 + 104) = (v3 + v3) * (v8 + v18 - v10);
  return result;
}

void cnrotation::CNRotation::drdq(cnrotation::CNRotation *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x400000003;
  *a2 = &unk_1F4CDEC48;
  *(a2 + 32) = a2 + 40;
  *(a2 + 8) = xmmword_1D0E7DD10;
  sub_1D0BBBC00(a2, 0.0);
  cnrotation::CNRotation::RotationVector(this, v23);
  v4 = *v24;
  v5 = v24[1];
  v6 = v24[2];
  v37 = 0x100000003;
  v35 = &unk_1F4CDEB28;
  v36 = xmmword_1D0E7DCC0;
  v38 = &v39;
  v32 = 0x100000134;
  v30 = &unk_1F4CDEC90;
  v31 = xmmword_1D0E7DD20;
  v33 = &v34;
  v27 = 0x100000003;
  v25 = &unk_1F4CDEB28;
  v26 = xmmword_1D0E7DCC0;
  v28 = &v29;
  sub_1D0BFB1AC(v23, &v35, &v30, &v25, "2");
  v8 = v7;
  v9 = v7 * 0.5;
  if (fabs(v9) >= 2.22044605e-16)
  {
    v14 = *(this + 3);
    v15 = sin(v9);
    v16 = v8 / v15;
    v17 = v8 / v15 + fabs(v14) * -2.0;
    v18 = v15 + v15;
    v19 = *(a2 + 32);
    *v19 = -(v16 - v4 / v8 * (v4 / v8) * v17);
    v20 = *(a2 + 20);
    v21 = &v19[v20];
    v21[1] = -(v16 - v5 / v8 * (v5 / v8) * v17);
    v22 = &v19[2 * v20];
    v22[2] = -(v16 - v6 / v8 * (v6 / v8) * v17);
    v19[1] = v4 / v8 * (v5 / v8) * v17;
    v19[2] = v4 / v8 * (v6 / v8) * v17;
    v21[2] = v5 / v8 * (v6 / v8) * v17;
    *v21 = v19[1];
    *v22 = v19[2];
    v19[((2 * v20) | 1)] = v21[2];
    v12 = &v19[3 * v20];
    *v12 = -(v4 / v8 * v18);
    v12[1] = -(v5 / v8 * v18);
    v13 = -(v6 / v8 * v18);
  }

  else
  {
    v10 = *(a2 + 32);
    *v10 = 0xC000000000000000;
    v11 = *(a2 + 20);
    v10[v11 + 1] = 0xC000000000000000;
    v10[2 * v11 + 2] = 0xC000000000000000;
    v12 = &v10[3 * v11];
    *v12 = -v4;
    v12[1] = -v5;
    v13 = -v6;
  }

  v12[2] = v13;
}

void cnrotation::CNRotation::dqdr(cnrotation::CNRotation *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x300000004;
  *a2 = &unk_1F4CDEC00;
  *(a2 + 32) = a2 + 40;
  *(a2 + 8) = xmmword_1D0E7DCF0;
  sub_1D0BBBC00(a2, 0.0);
  cnrotation::CNRotation::RotationVector(this, v23);
  v4 = *v24;
  v5 = v24[1];
  v6 = v24[2];
  v37 = 0x100000003;
  v35 = &unk_1F4CDEB28;
  v36 = xmmword_1D0E7DCC0;
  v38 = &v39;
  v32 = 0x100000134;
  v30 = &unk_1F4CDEC90;
  v31 = xmmword_1D0E7DD20;
  v33 = &v34;
  v27 = 0x100000003;
  v25 = &unk_1F4CDEB28;
  v26 = xmmword_1D0E7DCC0;
  v28 = &v29;
  sub_1D0BFB1AC(v23, &v35, &v30, &v25, "2");
  v8 = v7;
  v9 = v7 * 0.5;
  if (fabs(v9) >= 2.22044605e-16)
  {
    v14 = *(this + 3);
    v15 = sin(v9);
    v16 = v15 / v8;
    v17 = v15 / v8 + fabs(v14) * -0.5;
    v18 = v15 * 0.5;
    v19 = *(a2 + 32);
    *v19 = -(v16 - v4 / v8 * (v4 / v8) * v17);
    v20 = *(a2 + 20);
    v21 = &v19[v20];
    v21[1] = -(v16 - v5 / v8 * (v5 / v8) * v17);
    v22 = &v19[2 * v20];
    v22[2] = -(v16 - v6 / v8 * (v6 / v8) * v17);
    v19[1] = v4 / v8 * (v5 / v8) * v17;
    v19[2] = v4 / v8 * (v6 / v8) * v17;
    v21[2] = v5 / v8 * (v6 / v8) * v17;
    *v21 = v19[1];
    *v22 = v19[2];
    v19[((2 * v20) | 1)] = v21[2];
    v19[3] = -(v4 / v8 * v18);
    v21[3] = -(v5 / v8 * v18);
    v22[3] = -(v6 / v8 * v18);
  }

  else
  {
    v10 = *(a2 + 32);
    *v10 = 0xBFE0000000000000;
    v11 = *(a2 + 20);
    v12 = v10 + 8 * v11;
    *(v12 + 8) = 0xBFE0000000000000;
    v13 = v10 + 16 * v11;
    *(v13 + 16) = 0xBFE0000000000000;
    *(v10 + 24) = v4 * -0.25;
    *(v12 + 24) = v5 * -0.25;
    *(v13 + 24) = v6 * -0.25;
  }
}

double cnrotation::CNRotation::dqaqdqa@<D0>(cnrotation::CNRotation *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x400000004;
  *a2 = &unk_1F4CDEB70;
  *(a2 + 8) = xmmword_1D0E7DCD0;
  v3 = *(this + 2);
  result = *(this + 3);
  *(a2 + 40) = result;
  *(a2 + 32) = a2 + 40;
  v4 = *this;
  v5 = *(this + 1);
  *(a2 + 48) = v3;
  *(a2 + 56) = -v5;
  *(a2 + 64) = -v4;
  *(a2 + 72) = -v3;
  *(a2 + 80) = result;
  *(a2 + 88) = v4;
  *(a2 + 96) = -v5;
  *(a2 + 104) = v5;
  *(a2 + 112) = -v4;
  *(a2 + 120) = result;
  *(a2 + 128) = -v3;
  *(a2 + 136) = v4;
  *(a2 + 144) = v5;
  *(a2 + 152) = v3;
  *(a2 + 160) = result;
  return result;
}

double cnrotation::CNRotation::dqqbdqb@<D0>(cnrotation::CNRotation *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x400000004;
  *a2 = &unk_1F4CDEB70;
  *(a2 + 8) = xmmword_1D0E7DCD0;
  v3 = *(this + 2);
  result = *(this + 3);
  *(a2 + 40) = result;
  *(a2 + 32) = a2 + 40;
  v4 = *this;
  v5 = *(this + 1);
  *(a2 + 48) = -v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = -v4;
  *(a2 + 72) = v3;
  *(a2 + 80) = result;
  *(a2 + 88) = -v4;
  *(a2 + 96) = -v5;
  *(a2 + 104) = -v5;
  *(a2 + 112) = v4;
  *(a2 + 120) = result;
  *(a2 + 128) = -v3;
  *(a2 + 136) = v4;
  *(a2 + 144) = v5;
  *(a2 + 152) = v3;
  *(a2 + 160) = result;
  return result;
}

double cnrotation::CNRotation::dRotateVectordq@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x400000003;
  *a3 = &unk_1F4CDEC48;
  *(a3 + 8) = xmmword_1D0E7DD10;
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + 32);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = a1[2];
  v11 = a1[3];
  v12 = v4 * v8 + *a1 * *v6 + v10 * v9;
  v13 = v12 + v12;
  *(a3 + 40) = v13;
  *(a3 + 32) = a3 + 40;
  v14 = v11 * v9 - (v5 * v8 - v4 * v7);
  v15 = v14 + v14;
  v16 = v11 * v8;
  v17 = -(v11 * v8 - v10 * v7) - v5 * v9;
  *(a3 + 48) = v15;
  *(a3 + 56) = v17 + v17;
  v18 = v5 * v8 - v4 * v7 - v11 * v9;
  *(a3 + 64) = v18 + v18;
  *(a3 + 72) = v13;
  v19 = v10 * v8;
  v20 = v19 + v11 * v7 - v4 * v9 + v19 + v11 * v7 - v4 * v9;
  v21 = v16 - v10 * v7 + v5 * v9 + v16 - v10 * v7 + v5 * v9;
  *(a3 + 80) = v20;
  *(a3 + 88) = v21;
  *(a3 + 96) = v4 * v9 - (v19 + v11 * v7) + v4 * v9 - (v19 + v11 * v7);
  *(a3 + 104) = v13;
  *(a3 + 112) = v20;
  *(a3 + 120) = v21;
  *(a3 + 128) = v15;
  v30 = 0x400000004;
  v28 = &unk_1F4CDEB70;
  v29 = xmmword_1D0E7DCD0;
  v31 = &v32;
  v32 = 1.0 - v5 * v5;
  v33 = -(v5 * v4);
  v34 = -(v5 * v10);
  v35 = -(v5 * v11);
  v36 = v33;
  v37 = 1.0 - v4 * v4;
  v38 = -(v4 * v10);
  v39 = -(v4 * v11);
  v40 = v34;
  v41 = v38;
  v42 = 1.0 - v10 * v10;
  v43 = -(v10 * v11);
  v44 = v35;
  v45 = v39;
  v46 = v43;
  v47 = 1.0 - v11 * v11;
  v25 = 0x400000003;
  v23 = &unk_1F4CDEC48;
  v24 = xmmword_1D0E7DD10;
  v26 = &v27;
  sub_1D0B89390(a3, &v28, &v23);
  *&result = sub_1D0B894B0(a3, &v23).n128_u64[0];
  return result;
}

uint64_t cnrotation::CNRotation::dRotateVectordr@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  cnrotation::CNRotation::dRotateVectordq(a1, a2, v7);
  cnrotation::CNRotation::dqdr(a1, v6);
  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 8) = xmmword_1D0E76C10;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(v7, v6, a3);
}

double cnrotation::CNRotation::Q@<D0>(float64x2_t a1@<Q0>, double a2@<D1>, double a3@<D2>, uint64_t a4@<X8>)
{
  v8 = 0x400000004;
  v6 = &unk_1F4CDEB70;
  v7 = xmmword_1D0E7DCD0;
  v9 = v10;
  v10[0] = 0;
  v10[5] = 0;
  *&v10[8] = -a2;
  v10[9] = *&a1.f64[0];
  *&v10[1] = -a3;
  *&v10[2] = a2;
  v10[10] = 0;
  *&v10[13] = a2;
  *&v10[14] = a3;
  *&v10[3] = -a1.f64[0];
  *&v10[4] = a3;
  *&v10[6] = -a1.f64[0];
  *&v10[7] = -a2;
  *&v10[11] = -a3;
  v10[12] = *&a1.f64[0];
  v10[15] = 0;
  *(a4 + 24) = 0x400000004;
  *a4 = &unk_1F4CDEB70;
  *(a4 + 8) = xmmword_1D0E7DCD0;
  *(a4 + 32) = a4 + 40;
  a1.f64[0] = 0.5;
  *&result = *&sub_1D0B8930C(&v6, a4, a1);
  return result;
}

uint64_t cnrotation::CNRotation::dQdwx@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0x400000004;
  *a1 = &unk_1F4CDEB70;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E7DCD0;
  result = sub_1D0BBBC00(a1, 0.0);
  v4 = *(a1 + 20);
  v5 = *(a1 + 32);
  *(v5 + 24 * v4) = 0x3FE0000000000000;
  *(v5 + 8 * ((2 * v4) | 1)) = 0x3FE0000000000000;
  *(v5 + 8 * v4 + 16) = 0xBFE0000000000000;
  *(v5 + 24) = 0xBFE0000000000000;
  return result;
}

uint64_t cnrotation::CNRotation::dQdwy@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0x400000004;
  *a1 = &unk_1F4CDEB70;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E7DCD0;
  result = sub_1D0BBBC00(a1, 0.0);
  v4 = *(a1 + 20);
  v5 = *(a1 + 32);
  *(v5 + 16 * v4) = 0xBFE0000000000000;
  *(v5 + 24 * v4 + 8) = 0x3FE0000000000000;
  *(v5 + 16) = 0x3FE0000000000000;
  *(v5 + 8 * v4 + 24) = 0xBFE0000000000000;
  return result;
}

uint64_t cnrotation::CNRotation::dQdwz@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0x400000004;
  *a1 = &unk_1F4CDEB70;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E7DCD0;
  result = sub_1D0BBBC00(a1, 0.0);
  v4 = *(a1 + 20);
  v5 = *(a1 + 32);
  *(v5 + 8 * v4) = 0x3FE0000000000000;
  *(v5 + 8) = 0xBFE0000000000000;
  *(v5 + 24 * v4 + 16) = 0x3FE0000000000000;
  *(v5 + 16 * v4 + 24) = 0xBFE0000000000000;
  return result;
}

uint64_t cnrotation::Slerp(cnrotation *this, const cnrotation::CNRotation *a2, const cnrotation::CNRotation *a3, double a4, cnrotation::CNRotation *a5)
{
  if ((a5 - 17) < 0xFFFFFFF0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 4294967294;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && a4 >= 0.0 && a4 <= 1.0)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *(a3 + 3) = 0x3FF0000000000000;
    if (fabs(a4) <= 0.001)
    {
      if (a3 != this)
      {
        *a3 = *this;
        v28 = *(this + 2);
        v27 = *(this + 3);
LABEL_21:
        *(a3 + 2) = v28;
LABEL_28:
        v5 = 0;
        *(a3 + 3) = v27;
        return v5;
      }
    }

    else
    {
      v7 = 1.0;
      if (vabdd_f64(1.0, a4) > 0.001)
      {
        v8 = *(this + 1);
        v10 = *(this + 2);
        v9 = *(this + 3);
        v11 = *(a2 + 1);
        v13 = *(a2 + 2);
        v12 = *(a2 + 3);
        v14 = v8 * v11 + *this * *a2 + v10 * v13 + v9 * v12;
        v15.f64[0] = a4;
        if (v14 < 0.0)
        {
          v7 = -1.0;
        }

        v16 = (a5 - 1);
        v17 = v7 * v14 + -1.0;
        v15.f64[1] = 1.0 - a4;
        v18 = vmulq_f64(v15, v15);
        __asm { FMOV            V21.2D, #1.0 }

        v24 = vaddq_f64(vmulq_n_f64(vmulq_n_f64(vmlaq_n_f64(vdupq_lane_s64(COERCE__INT64(-dbl_1D0E7DDE8[v16]), 0), v18, dbl_1D0E7DD68[v16]), v17), dbl_1D0E7DE68[v16]), _Q21);
        if (_ZF)
        {
          v26 = v24;
        }

        else
        {
          v25 = v16;
          do
          {
            v26 = vmlaq_f64(_Q21, v24, vmulq_n_f64(vmlaq_n_f64(vdupq_lane_s64(COERCE__INT64(-dbl_1D0E7DDE8[v25 - 1]), 0), v18, dbl_1D0E7DD68[v25 - 1]), v17));
            v24 = v26;
            --v25;
          }

          while (v25 * 8);
        }

        v29 = v7 * a4 * v26.f64[0];
        v30 = vmuld_lane_f64(1.0 - a4, v26, 1);
        v31 = *a2 * v29 + *this * v30;
        v32 = v11 * v29 + v8 * v30;
        v33 = v13 * v29 + v10 * v30;
        v34 = v12 * v29 + v9 * v30;
        v35 = sqrt(v32 * v32 + v31 * v31 + v33 * v33 + v34 * v34);
        if (fabs(v35) >= 2.22044605e-16)
        {
          v36 = v31 / v35;
          v37 = v32 / v35;
          v38 = v33 / v35;
          v27 = v34 / v35;
        }

        else
        {
          v27 = 1.0;
          v36 = 0.0;
          v37 = 0.0;
          v38 = 0.0;
        }

        *a3 = v36;
        *(a3 + 1) = v37;
        *(a3 + 2) = v38;
        goto LABEL_28;
      }

      if (a3 != a2)
      {
        *a3 = *a2;
        v28 = *(a2 + 2);
        v27 = *(a2 + 3);
        goto LABEL_21;
      }
    }

    return 0;
  }

  return v5;
}

uint64_t sub_1D0D260A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*(a2 + 8) != 3 || *(a2 + 12) != 3)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0x3FF0000000000000;
    __assert_rtn("CNRotation", "cnrotation.h", 85, "false && Error: attempted to construct CNRotation from invalid CNMatrix.");
  }

  v55 = 0x300000003;
  v53 = &unk_1F4CD5DD0;
  v54 = xmmword_1D0E76C10;
  v56 = &v57;
  sub_1D0BD2018(a2, &v53);
  v60 = 0x300000003;
  v59 = xmmword_1D0E76C10;
  v58 = &unk_1F4CD5DD0;
  v61 = &v62;
  sub_1D0B89390(&v53, a2, &v58);
  v44 = 0x300000003;
  v42 = &unk_1F4CD5DD0;
  v43 = xmmword_1D0E76C10;
  v47 = 0u;
  v48 = 0;
  v50 = 0u;
  v45 = &v46;
  v46 = 0x3FF0000000000000;
  v49 = 0x3FF0000000000000;
  v51 = 0;
  v52 = 0x3FF0000000000000;
  v65 = 0x300000003;
  v64 = xmmword_1D0E76C10;
  v63 = &unk_1F4CD5DD0;
  v66 = &v67;
  sub_1D0BA5A78(&v58, &v42, &v63);
  v71 = 0x300000003;
  v68[0] = &unk_1F4CD5DD0;
  v5 = (DWORD1(v64) * v64);
  v6 = v73;
  v72 = v73;
  v68[1] = v64;
  v69 = v5;
  v70 = v64;
  if (v5 >= 1)
  {
    v7 = v66;
    do
    {
      v8 = *v7++;
      *v6++ = fabs(v8);
      --v5;
    }

    while (v5);
  }

  v76 = 0x300000003;
  v75 = xmmword_1D0E76C10;
  v74 = &unk_1F4CD5DD0;
  v77 = v78;
  v86 = 0x300000003;
  v85 = xmmword_1D0E76C10;
  v84 = &unk_1F4CDEA18;
  v87 = v88;
  sub_1D0BBAD9C(v68, &v74, &v84);
  v86 = 0x300000003;
  v85 = xmmword_1D0E76C10;
  v84 = &unk_1F4CD5DD0;
  v87 = v88;
  v81 = 0x300000003;
  v80 = xmmword_1D0E76C10;
  v79 = &unk_1F4CDEA18;
  v82 = &v83;
  sub_1D0BBAD9C(&v74, &v84, &v79);
  if (fabs(*v87) > 0.00001)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0x3FF0000000000000;
    __assert_rtn("CNRotation", "cnrotation.h", 93, "false && Error: attempted to construct CNRotation from non-orthogonal CNMatrix.");
  }

  v76 = 0x100000003;
  v75 = xmmword_1D0E7DCC0;
  v74 = &unk_1F4CDEAA0;
  v77 = v78;
  v86 = 0x300000003;
  v85 = xmmword_1D0E76C10;
  v84 = &unk_1F4CD5DD0;
  v87 = v88;
  if (fabs(sub_1D0BEC1D8(a2, &v74, &v84) + -1.0) > 0.00001)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0x3FF0000000000000;
    __assert_rtn("CNRotation", "cnrotation.h", 101, "false && Error: attempted to construct CNRotation from non-special-orthogonal CNMatrix.");
  }

  sub_1D0BE0DE8(&v84, a2);
  v9 = v85;
  if (v85 <= 0)
  {
    v13 = v87;
    v11 = HIDWORD(v85);
  }

  else
  {
    v10 = 0;
    v11 = HIDWORD(v85);
    v12 = 0.0;
    v13 = v87;
    do
    {
      v12 = v12 + v87[v10];
      v10 += HIDWORD(v85) + 1;
      --v9;
    }

    while (v9);
    if (v12 > 0.0)
    {
      v14 = &v87[SHIDWORD(v85)];
      v15 = &v87[2 * SHIDWORD(v85)];
      v16 = sqrt(*v87 + 1.0 + v14[1] + v15[2]);
      v17 = (v87[(2 * HIDWORD(v85)) | 1] - v14[2]) / (v16 + v16);
      v18 = (v87[2] - *v15) / (v16 + v16);
      v19 = (*v14 - v87[1]) / (v16 + v16);
      v20 = v16 * 0.5;
      goto LABEL_27;
    }
  }

  v21 = *v13;
  v22 = &v13[v11];
  v23 = v22[1];
  v24 = 2 * v11;
  v25 = &v13[2 * v11];
  if (*v13 <= v23 || (v26 = v25[2], v21 <= v26))
  {
    v31 = v25[2];
    v32 = v13[v24 + 1] + v22[2];
    if (v23 <= v21 || v23 <= v31)
    {
      v34 = sqrt(v31 + 1.0 - v21 - v23);
      v17 = (v13[2] + *v25) / (v34 + v34);
      v18 = v32 / (v34 + v34);
      v19 = v34 * 0.5;
      v20 = (*v22 - v13[1]) / (v34 + v34);
      goto LABEL_27;
    }

    v35 = sqrt(v23 + 1.0 - v21 - v31);
    v29 = v13[2];
    v28 = v35 + v35;
    v17 = (v13[1] + *v22) / (v35 + v35);
    v18 = v35 * 0.5;
    v19 = v32 / v28;
    v30 = *v25;
  }

  else
  {
    v27 = sqrt(v21 + 1.0 - v23 - v26);
    v17 = v27 * 0.5;
    v28 = v27 + v27;
    v18 = (v13[1] + *v22) / (v27 + v27);
    v19 = (v13[2] + *v25) / v28;
    v29 = v13[v24 + 1];
    v30 = v22[2];
  }

  v20 = (v29 - v30) / v28;
LABEL_27:
  v36 = sqrt(v18 * v18 + v17 * v17 + v19 * v19 + v20 * v20);
  if (fabs(v36) >= 2.22044605e-16)
  {
    v38 = v17 / v36;
    v39 = v18 / v36;
    v40 = v19 / v36;
    v37 = v20 / v36;
  }

  else
  {
    v37 = 1.0;
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
  }

  *a1 = v38;
  *(a1 + 8) = v39;
  *(a1 + 16) = v40;
  *(a1 + 24) = v37;
  return a1;
}

void sub_1D0D26724(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0D2677C(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D2677C(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = *(a1 + 32);
        v10 = 1;
        do
        {
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = *(v9 + 4 * v10);
            v13 = v10;
            do
            {
              v13 = (v13 * (v4 + v2 - v6)) % v8;
              v14 = *(v9 + 4 * v13);
              *(v9 + 4 * v13) = v12;
              *v11 = 1;
              v11 = &a2[v13];
              v12 = v14;
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v8);
      }
    }
  }
}

void sub_1D0D26964(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D26A50(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D26ADC(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1D0D26B88(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

void cnstatistics::NormalPDF(cnstatistics *this, double a2, double a3, double a4)
{
  if (a4 > 0.0)
  {
    v14[1] = v7;
    v14[2] = v6;
    v14[3] = v4;
    v14[4] = v5;
    if (fabs(a2) != INFINITY && fabs(a3) != INFINITY && fabs(a4) != INFINITY)
    {
      sub_1D0C1902C(&v12, a3, a4);
      v14[0] = v13;
      if ((*&v13 <= -1 || ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v13 - 1) >= 0xFFFFFFFFFFFFFLL)
      {
        v11 = "Scale parameter is %1%, but must be > 0 !";
        goto LABEL_17;
      }

      v14[0] = v12;
      if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v11 = "Location parameter is %1%, but must be finite!";
        goto LABEL_17;
      }

      v14[0] = a2;
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v11 = "Random variate x is %1%, but must be finite!";
LABEL_17:
        sub_1D0D26D6C("boost::math::pdf(const normal_distribution<%1%>&, %1%)", v11, v14);
      }

      exp(-((a2 - v12) * (a2 - v12)) / (v13 * (v13 + v13)));
    }
  }
}

void sub_1D0D26D6C(char *a1, char *a2, double *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  sub_1D0B751F4(&v16, v4);
  sub_1D0B751F4(&v15, v5);
  sub_1D0B751F4(&v14, "Error in function ");
  sub_1D0D26F24(&v16, "%1%", "double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  sub_1D0D27064(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  sub_1D0D26F24(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::logic_error::logic_error(&v11, &v14);
  v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
  sub_1D0D272E8(&v11);
}

void sub_1D0D26EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::logic_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::logic_error::~logic_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0D26F24(std::string *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  result = strlen(a3);
  v8 = result;
  v9 = 0;
  v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if (v10 >= 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v13 = v6;
  while (!v13)
  {
LABEL_18:
    if (v9 != -1)
    {
      v19 = strlen(a3);
      std::string::replace(a1, v9, v6, a3, v19);
      v9 += v8;
      v20 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      v11 = v20 >= 0 ? a1 : a1->__r_.__value_.__r.__words[0];
      size = v20 >= 0 ? HIBYTE(a1->__r_.__value_.__r.__words[2]) : a1->__r_.__value_.__l.__size_;
      result = strlen(__s);
      v13 = result;
      if (size >= v9)
      {
        continue;
      }
    }

    return result;
  }

  v14 = size - v9;
  if ((size - v9) >= v13)
  {
    v15 = v11 + size;
    result = v11 + v9;
    v16 = *__s;
    do
    {
      v17 = v14 - v13;
      if (v17 == -1)
      {
        break;
      }

      result = memchr(result, v16, v17 + 1);
      if (!result)
      {
        break;
      }

      v18 = result;
      result = memcmp(result, __s, v13);
      if (!result)
      {
        if (v18 == v15)
        {
          return result;
        }

        v9 = v18 - v11;
        goto LABEL_18;
      }

      result = v18 + 1;
      v14 = v15 - (v18 + 1);
    }

    while (v14 >= v13);
  }

  return result;
}

uint64_t sub_1D0D27064@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D0BC2F00(v9);
  *(&v12[0].__locale_ + *(v10 - 24)) = 17;
  MEMORY[0x1D387E990](&v10, *a1);
  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v5 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v4 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v12[1].__locale_;
    v5 = v12[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D0C537F0();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, locale, v4);
  }

LABEL_14:
  a2[v4] = 0;
  v9[0] = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v10 = v7;
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D387EBF0](&v18);
}

void sub_1D0D272C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0C71960(va, MEMORY[0x1E69E54D8]);
  MEMORY[0x1D387EBF0](v2 + 128);
  _Unwind_Resume(a1);
}

void sub_1D0D272E8(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0D27344(exception, a1);
  __cxa_throw(exception, &unk_1F4CDECE8, sub_1D0D273F0);
}

uint64_t sub_1D0D27344(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4CDED40;
  *(a1 + 8) = &unk_1F4CDED70;
  *(a1 + 24) = &unk_1F4CDED98;
  return a1;
}

uint64_t sub_1D0D273F0(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));
  return a1;
}

void sub_1D0D27614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D0D278F8(&a9);
  sub_1D0D278F8(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D0D27680(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0D27954(exception, a1);
  __cxa_throw(exception, &unk_1F4CDECE8, sub_1D0D273F0);
}

void sub_1D0D276DC(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D27750(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));

  std::logic_error::~logic_error(a1);
}

void sub_1D0D277AC(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::logic_error::~logic_error(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D27824(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);

  std::logic_error::~logic_error(v1);
}

void sub_1D0D2787C(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);
  std::logic_error::~logic_error(v1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t *sub_1D0D278F8(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1D0D27954(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E55A8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4CDEDE8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4CDED40;
  *(a1 + 8) = &unk_1F4CDED70;
  *(a1 + 24) = &unk_1F4CDED98;
  return a1;
}

uint64_t sub_1D0D27A90(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void sub_1D0D27B28(char *a1, const char *a2)
{
  v2 = "Unknown function operating on type %1%";
  if (a1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "Cause unknown";
  }

  sub_1D0B751F4(&v9, v2);
  sub_1D0B751F4(&v8, "Error in function ");
  sub_1D0D26F24(&v9, "%1%", "double");
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v9;
  }

  else
  {
    v4 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  std::string::append(&v8, v4, size);
  std::string::append(&v8, ": ", 2uLL);
  v6 = strlen(v3);
  std::string::append(&v8, v3, v6);
  std::runtime_error::runtime_error(&v7, &v8);
  v7.__vftable = (MEMORY[0x1E69E55C0] + 16);
  sub_1D0D27C60(&v7);
}

void sub_1D0D27C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1D0D27C60(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0D27CBC(exception, a1);
  __cxa_throw(exception, &unk_1F4CDEDF8, sub_1D0D27D68);
}

uint64_t sub_1D0D27CBC(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4CDEE50;
  *(a1 + 8) = &unk_1F4CDEE80;
  *(a1 + 24) = &unk_1F4CDEEA8;
  return a1;
}

uint64_t sub_1D0D27D68(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1D0D27F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D0D278F8(&a9);
  sub_1D0D278F8(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D0D27FF8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0D28268(exception, a1);
  __cxa_throw(exception, &unk_1F4CDEDF8, sub_1D0D27D68);
}

void sub_1D0D28054(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D280C8(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

void sub_1D0D28124(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D2819C(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_1D0D281F4(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D28268(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E55C0] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4CDEDE8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4CDEE50;
  *(a1 + 8) = &unk_1F4CDEE80;
  *(a1 + 24) = &unk_1F4CDEEA8;
  return a1;
}

double cnstatistics::GammaPDF(cnstatistics *this, double a2, double a3, double a4)
{
  v13 = a2;
  result = NAN;
  if (a3 >= 0.0 && a4 > 0.0)
  {
    v6 = fabs(a3);
    v7 = fabs(a4);
    if (v6 < 2.22044605e-16 && v7 == INFINITY)
    {
      result = 0.0;
      if (fabs(a2) == INFINITY)
      {
        return result;
      }

      return INFINITY;
    }

    v9 = (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v10 = a2 < 0.0 && ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (a2 >= 0.0)
    {
      v9 = 0;
    }

    v11 = (*&a2 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v9;
    result = 0.0;
    if (((v11 | v10) & 1) == 0)
    {
      if (v6 >= 2.22044605e-16)
      {
        if (v6 != INFINITY && v7 != INFINITY)
        {
          sub_1D0D28514(v12, a3, a4);
          return sub_1D0D285D0(&v13, v12[0], v12[1]);
        }
      }

      else if (a2 >= 0.0 && a2 <= 0.0)
      {
        return INFINITY;
      }
    }
  }

  return result;
}

double *sub_1D0D28514(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  v8 = a3;
  if ((*&a3 <= -1 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a3 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v7 = "Scale parameter is %1%, but must be > 0 !";
LABEL_18:
    sub_1D0D26D6C("boost::math::gamma_distribution<%1%>::gamma_distribution", v7, &v8);
  }

  v8 = a2;
  if ((*&a2 <= -1 || ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a2 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v7 = "Shape parameter is %1%, but must be > 0 !";
    goto LABEL_18;
  }

  return result;
}

double sub_1D0D285D0(double *a1, double a2, double a3)
{
  v18 = a3;
  if ((*&a3 <= -1 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a3 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v17 = "Scale parameter is %1%, but must be > 0 !";
LABEL_32:
    v8 = &v18;
LABEL_33:
    sub_1D0D26D6C("boost::math::pdf(const gamma_distribution<%1%>&, %1%)", v17, v8);
  }

  v18 = a2;
  if ((*&a2 <= -1 || ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a2 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v17 = "Shape parameter is %1%, but must be > 0 !";
    goto LABEL_32;
  }

  v8 = a1;
  v9 = *a1;
  v10 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*a1 <= -1 || (v10 - 0x10000000000000) >> 53 >= 0x3FF) && (*a1 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v13 = v10 == 0;
    *a1;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v17 = "Random variate is %1% but must be >= 0 !";
    goto LABEL_33;
  }

  v14 = 0.0;
  if (v9 != 0.0)
  {
    sub_1D0BEF464(&v18, a2, v9 / a3);
    if (fabs(v15) > 1.79769313e308)
    {
      sub_1D0D27B28("boost::math::gamma_p_derivative<%1%>(%1%, %1%)", "numeric overflow");
    }

    return v15 / a3;
  }

  return v14;
}

double cnstatistics::GammaCDF(cnstatistics *this, double a2, double a3, double a4)
{
  v18 = a2;
  result = NAN;
  if (a3 >= 0.0 && a4 > 0.0)
  {
    if (a2 >= 0.0)
    {
      v6 = fabs(a2);
      v7 = fabs(a3);
      if (v6 == INFINITY)
      {
        v8 = fabs(a4) == INFINITY || v7 == INFINITY;
        result = NAN;
        if (!v8)
        {
          return 1.0;
        }
      }

      else
      {
        result = 1.0;
        if (v7 >= 2.22044605e-16)
        {
          v9 = fabs(a4) == INFINITY;
          result = 0.0;
          if (v7 != INFINITY && !v9)
          {
            sub_1D0D28514(v17, a3, a4);
            v10.n128_f64[0] = v17[1];
            return sub_1D0D28838(&v18, v17[0], v10, v11, v12, v13, v14, v15, v16);
          }
        }
      }
    }

    else
    {
      result = 0.0;
      if (fabs(a3) < 2.22044605e-16)
      {
        return 1.0;
      }
    }
  }

  return result;
}

double sub_1D0D28838(double *a1, double a2, __n128 a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v22 = a3.n128_u64[0];
  if ((a3.n128_i64[0] <= -1 || ((a3.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) - 0x10000000000000) >> 53 >= 0x3FF) && a3.n128_u64[0] - 1 >= 0xFFFFFFFFFFFFFLL)
  {
    v21 = "Scale parameter is %1%, but must be > 0 !";
LABEL_30:
    v13 = &v22;
LABEL_31:
    sub_1D0D26D6C("boost::math::cdf(const gamma_distribution<%1%>&, %1%)", v21, v13);
  }

  v22 = *&a2;
  if ((*&a2 <= -1 || ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a2 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v21 = "Shape parameter is %1%, but must be > 0 !";
    goto LABEL_30;
  }

  v13 = a1;
  v14 = *a1;
  v15 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*a1 <= -1 || (v15 - 0x10000000000000) >> 53 >= 0x3FF) && (*a1 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v18 = v15 == 0;
    *a1;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v21 = "Random variate is %1% but must be >= 0 !";
    goto LABEL_31;
  }

  a3.n128_f64[0] = v14 / a3.n128_f64[0];
  v19 = sub_1D0BEEA20(1, 0, &v22, 0, a2, a3, v14, a5, a6, a7, a8, a9);
  if (fabs(v19) > 1.79769313e308)
  {
    sub_1D0D27B28("gamma_p<%1%>(%1%, %1%)", "numeric overflow");
  }

  return v19;
}

uint64_t sub_1D0D2898C@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D0BC2F00(v6);
  *(&v9[0].__locale_ + *(v7 - 24)) = 17;
  MEMORY[0x1D387E9A0](&v7, *a1);
  sub_1D0C535E0(v6, a2);
  v6[0] = *MEMORY[0x1E69E54D8];
  v4 = *(MEMORY[0x1E69E54D8] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7 = v4;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1D387EBF0](&v11);
}

void sub_1D0D28B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0C53688(va);
  _Unwind_Resume(a1);
}

void sub_1D0D28B48(char *a1, const char *a2)
{
  v2 = "Unknown function operating on type %1%";
  if (a1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "Cause unknown";
  }

  sub_1D0B751F4(&v9, v2);
  sub_1D0B751F4(&v8, "Error in function ");
  sub_1D0D26F24(&v9, "%1%", "long double");
  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v9;
  }

  else
  {
    v4 = v9.__r_.__value_.__r.__words[0];
  }

  if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v9.__r_.__value_.__l.__size_;
  }

  std::string::append(&v8, v4, size);
  std::string::append(&v8, ": ", 2uLL);
  v6 = strlen(v3);
  std::string::append(&v8, v3, v6);
  std::runtime_error::runtime_error(&v7, &v8);
  v7.__vftable = (MEMORY[0x1E69E55C0] + 16);
  sub_1D0D27C60(&v7);
}

void sub_1D0D28C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

double sub_1D0D28C80(uint64_t a1, uint64_t a2, int *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v35 = a4;
  if (a4 <= -0.0000000149011612)
  {
    if (floor(a4) == a4)
    {
      v15 = qword_1EC5FB3E8;
      v16 = "Evaluation of lgamma at a negative integer %1%.";
LABEL_7:
      sub_1D0C50B00(v15, v16, &v35);
    }

    v18 = sub_1D0D28EC0(a4);
    v19 = -a4;
    if (v18 < 0.0)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (v18 >= 0.0)
    {
      v21 = v18;
    }

    else
    {
      v21 = -v18;
    }

    v22 = 1.14472989 - sub_1D0D28C80(a1, a2, 0, v19);
    v23 = v22 - log(v21);
    if (a3)
    {
      goto LABEL_29;
    }

    return v23;
  }

  if (a4 >= 0.0000000149011612)
  {
    if (a4 >= 15.0)
    {
      if (a4 < 3.0 || a4 >= 100.0)
      {
        v23 = (a4 + -0.5) * (log(a4 + 6.02468004 + -0.5) + -1.0);
        if (v23 * 2.22044605e-16 < 20.0)
        {
          v31 = sub_1D0BEF9DC(dbl_1D0E7F258, dword_1D0E7F2C0, &v35, v23 * 2.22044605e-16, 20.0, v25, v26, v27, v28, v29, v30);
          v23 = v23 + log(v31);
        }

        goto LABEL_28;
      }

      sub_1D0C3BB74(a4, a5, a6, a7, a8, a9, a10, a11);
      v17 = log(v33);
    }

    else
    {
      sub_1D0D28F64(a4, a4 + -1.0, a4 + -2.0);
    }

    v23 = v17;
    goto LABEL_28;
  }

  if (a4 == 0.0)
  {
    v15 = qword_1EC5FB3E8;
    v16 = "Evaluation of lgamma at %1%.";
    goto LABEL_7;
  }

  v32 = fabs(a4);
  if (v32 * 4.0 >= 2.22044605e-16)
  {
    v23 = log(fabs(1.0 / a4 + -0.577215665));
  }

  else
  {
    v23 = -log(v32);
  }

  if (a4 < 0.0)
  {
    v20 = -1;
    if (!a3)
    {
      return v23;
    }

    goto LABEL_29;
  }

LABEL_28:
  v20 = 1;
  if (a3)
  {
LABEL_29:
    *a3 = v20;
  }

  return v23;
}

long double sub_1D0D28EC0(double a1)
{
  if (a1 < 0.0)
  {
    a1 = -a1;
  }

  v1 = vcvtmd_s64_f64(a1);
  v2 = floor(a1);
  v3 = v2 + 1.0;
  if (v1)
  {
    v4 = v2 + 1.0;
  }

  else
  {
    v4 = v2;
  }

  if (v4 < 0.0)
  {
    __assert_rtn("sinpx", "gamma.hpp", 100, "fl >= 0");
  }

  v5 = a1 - v2;
  v6 = v3 - a1;
  if (v1)
  {
    v5 = v6;
    v7 = -a1;
  }

  else
  {
    v7 = a1;
  }

  if (v5 <= 0.5)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1.0 - v5;
  }

  return v7 * sin(v8 * 3.14159265);
}

void sub_1D0D28F64(long double a1, double a2, double a3)
{
  v3 = a1;
  if (a1 >= 2.22044605e-16)
  {
    if (a2 != 0.0 && a3 != 0.0)
    {
      if (a1 <= 2.0)
      {
        if (a1 < 1.0)
        {
          log(a1);
        }
      }

      else
      {
        v4 = 0.0;
        if (a1 >= 3.0)
        {
          do
          {
            v3 = v3 + -1.0;
            v4 = v4 + log(v3);
          }

          while (v3 >= 3.0);
        }
      }
    }
  }

  else
  {
    log(a1);
  }
}

void sub_1D0D2921C(char *a1, char *a2, double *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  sub_1D0B751F4(&v16, v4);
  sub_1D0B751F4(&v15, v5);
  sub_1D0B751F4(&v14, "Error in function ");
  sub_1D0D26F24(&v16, "%1%", "long double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  sub_1D0D2898C(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  sub_1D0D26F24(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::runtime_error::runtime_error(&v11, &v14);
  v11.__vftable = &unk_1F4CDEEC8;
  sub_1D0D293D4(&v11);
}

void sub_1D0D29358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(a1);
}

void sub_1D0D293D4(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0D2946C(exception, a1);
  __cxa_throw(exception, &unk_1F4CDEEF8, sub_1D0D29518);
}

void sub_1D0D29434(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D2946C(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4CDEF50;
  *(a1 + 8) = &unk_1F4CDEF80;
  *(a1 + 24) = &unk_1F4CDEFA8;
  return a1;
}

uint64_t sub_1D0D29518(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1D0D2973C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D0D278F8(&a9);
  sub_1D0D278F8(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D0D297A8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0D29A18(exception, a1);
  __cxa_throw(exception, &unk_1F4CDEEF8, sub_1D0D29518);
}

void sub_1D0D29804(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D29878(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

void sub_1D0D298D4(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D2994C(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_1D0D299A4(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D29A18(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F4CDEEC8;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4CDEDE8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4CDEF50;
  *(a1 + 8) = &unk_1F4CDEF80;
  *(a1 + 24) = &unk_1F4CDEFA8;
  return a1;
}

void sub_1D0D29B54(char *a1, char *a2, double *a3)
{
  v4 = "Unknown function operating on type %1%";
  if (a1)
  {
    v4 = a1;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "Cause unknown: error caused by bad argument with value %1%";
  }

  sub_1D0B751F4(&v16, v4);
  sub_1D0B751F4(&v15, v5);
  sub_1D0B751F4(&v14, "Error in function ");
  sub_1D0D26F24(&v16, "%1%", "long double");
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v16;
  }

  else
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v6, size);
  std::string::append(&v14, ": ", 2uLL);
  sub_1D0D2898C(a3, v12);
  if (v13 >= 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v12[0];
  }

  sub_1D0D26F24(&v15, "%1%", v8);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  std::string::append(&v14, v9, v10);
  std::runtime_error::runtime_error(&v11, &v14);
  v11.__vftable = &unk_1F4CDEFC8;
  sub_1D0D29D0C(&v11);
}

void sub_1D0D29C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::runtime_error::~runtime_error(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(a1);
}

void sub_1D0D29D0C(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0D29DA4(exception, a1);
  __cxa_throw(exception, &unk_1F4CDEFF8, sub_1D0D29E50);
}

void sub_1D0D29D6C(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D29DA4(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F4CDF050;
  *(a1 + 8) = &unk_1F4CDF080;
  *(a1 + 24) = &unk_1F4CDF0A8;
  return a1;
}

uint64_t sub_1D0D29E50(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1D0D2A074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D0D278F8(&a9);
  sub_1D0D278F8(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D0D2A0E0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D0D2A350(exception, a1);
  __cxa_throw(exception, &unk_1F4CDEFF8, sub_1D0D29E50);
}

void sub_1D0D2A13C(uint64_t a1)
{
  *(a1 + 24) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D2A1B0(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

void sub_1D0D2A20C(uint64_t a1)
{
  *(a1 + 16) = &unk_1F4CDEDE8;
  sub_1D0D278F8((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D2A284(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_1D0D2A2DC(void *a1)
{
  *a1 = &unk_1F4CDEDE8;
  v1 = (a1 - 2);
  sub_1D0D278F8(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D2A350(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CDEDB8;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F4CDEFC8;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F4CDEDE8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F4CDF050;
  *(a1 + 8) = &unk_1F4CDF080;
  *(a1 + 24) = &unk_1F4CDF0A8;
  return a1;
}

double sub_1D0D2A48C(int *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = sub_1D0D28C80(&v12, &v11, a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (fabs(v9) > 1.79769313e308)
  {
    sub_1D0D28B48("boost::math::lgamma<%1%>(%1%)", "numeric overflow");
  }

  return v9;
}

double sub_1D0D2A4F0(double a1, double a2, double a3)
{
  v3 = a2 - a1 + 1.0;
  v4 = fabs(a3);
  v5 = v3 + 2.0;
  if (v3 + 2.0 == 0.0)
  {
    v6 = 3.56011817e-307;
  }

  else
  {
    v6 = v3 + 2.0;
  }

  v7 = 0.0;
  v8 = 2;
  v9 = v6;
  do
  {
    v5 = v5 + 2.0;
    v10 = (a1 - v8) * v8;
    v11 = v5 + v10 * v7;
    v9 = v5 + v10 / v9;
    if (v9 == 0.0)
    {
      v9 = 3.56011817e-307;
    }

    if (v11 == 0.0)
    {
      v7 = 2.80889552e306;
    }

    else
    {
      v7 = 1.0 / v11;
    }

    v6 = v6 * (v7 * v9);
  }

  while (fabs(v7 * v9 + -1.0) > v4 && v8++ != 0);
  return 1.0 / (v3 + (a1 + -1.0) / v6);
}

double sub_1D0D2A59C(double a1, double a2, double a3)
{
  v4 = 1.0;
  v5 = 1000000;
  do
  {
    a3 = v4 + a3;
    if (fabs(a3 * 2.22044605e-16) >= fabs(v4))
    {
      break;
    }

    a1 = a1 + 1.0;
    v4 = v4 * (a2 / a1);
    --v5;
  }

  while (v5);
  v6 = 1000000 - v5;
  if (v6 >= 0xF4240)
  {
    v8 = v6;
    sub_1D0D29B54("boost::math::detail::lower_gamma_series<%1%>(%1%)", "Series evaluation exceeded %1% iterations, giving up now.", &v8);
  }

  return a3;
}

double sub_1D0D2A640(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  sub_1D0C3BB74(a1, a2, a3, a4, a5, a6, a7, a8);
  if (fabs(result) > 1.79769313e308)
  {
    sub_1D0D28B48("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
  }

  return result;
}

void sub_1D0D2A6A0(long double a1, long double a2)
{
  if (a2 <= 1.79769313e308)
  {
    v4 = log(a2) * a1;
    if (a2 >= 1.0)
    {
      if (a2 < 708.0 && v4 < 709.0)
      {
        v7 = -a2;
        v8 = pow(a2, a1);
        v6 = v8 * exp(v7);
        goto LABEL_13;
      }

      if (a1 >= 1.0)
      {
        v9 = a2 / a1;
LABEL_11:
        v10 = exp(v9);
        v6 = pow(a2 / v10, a1);
        goto LABEL_13;
      }
    }

    else
    {
      if (v4 > -708.0)
      {
        v5 = pow(a2, a1);
        v6 = v5 * exp(-a2);
        goto LABEL_13;
      }

      v9 = a2 / a1;
      if (a2 / a1 < 709.0)
      {
        goto LABEL_11;
      }
    }

    v6 = exp(v4 - a2);
LABEL_13:
    if (fabs(v6) == INFINITY)
    {
      sub_1D0D28B48("boost::math::detail::full_igamma_prefix<%1%>(%1%, %1%)", "Result of incomplete gamma function is too large to represent.");
    }
  }
}

void sub_1D0D2A7E0(uint64_t a1, double *a2, int a3, long double *a4, double a5, long double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v17 = a5;
  v18 = sub_1D0D2AFA0(a5, a6, a7, a8, a9, a10, a11, a12);
  if (fabs(v18) > 1.79769313e308)
  {
    sub_1D0D28B48("boost::math::tgamma1pm1<%!%>(%1%)", "numeric overflow");
  }

  if (a2)
  {
    *a2 = (v18 + 1.0) / v17;
  }

  v19 = sub_1D0D2B220(a1, a6, v17);
  v20 = v18 - v19;
  v21 = v19 + 1.0;
  if (a4)
  {
    v22 = *a2;
    *a4 = v21 / (exp(a6) * v22);
  }

  v23 = 0.0;
  if (a3)
  {
    v23 = *a2;
  }

  v24 = -a6;
  v25 = 2;
  v26 = -a6;
  v27 = 999990;
  v28 = (v23 - v20 / v17) / v21;
  do
  {
    v17 = v17 + 1.0;
    v28 = v26 / v17 + v28;
    if (fabs(v28 * 2.22044605e-16) >= fabs(v26 / v17))
    {
      break;
    }

    v26 = v26 * v24 / v25++;
    --v27;
  }

  while (v27);
  if ((999990 - v27) >= 0xF4240)
  {
    v29 = (999990 - v27);
    sub_1D0D29B54("boost::math::tgamma_small_upper_part<%1%>(%1%, %1%)", "Series evaluation exceeded %1% iterations, giving up now.", &v29);
  }
}

double sub_1D0D2A97C(double a1, double a2)
{
  v4 = (a2 - a1) / a1;
  v31 = v4;
  if (v4 < -1.0)
  {
    sub_1D0C50B00(qword_1EC5FB3F8, "log1pmx(x) requires x > -1, but got x = %1%.", &v31);
  }

  if (v4 == -1.0)
  {
    sub_1D0D28B48(qword_1EC5FB3F8, "Overflow Error");
  }

  v25 = fabs(v4);
  if (v25 <= 0.949999988)
  {
    v27 = -v4;
    if (v25 >= 2.22044605e-16)
    {
      v26 = 0.0;
      v28 = 2;
      v29 = 1000000;
      do
      {
        v4 = v4 * v27;
        v30 = v4 / v28;
        v26 = v26 + v30;
        if (fabs(v26 * 2.22044605e-16) >= fabs(v30))
        {
          break;
        }

        ++v28;
        --v29;
      }

      while (v29);
      if ((1000000 - v29) >= 0xF4240)
      {
        v32 = (1000000 - v29);
        sub_1D0D29B54(qword_1EC5FB3F8, "Series evaluation exceeded %1% iterations, giving up now.", &v32);
      }
    }

    else
    {
      v26 = v4 * v27 * 0.5;
    }
  }

  else
  {
    v26 = log(v4 + 1.0) - v4;
  }

  v5 = -(v26 * a1);
  v6 = sub_1D0BEE5E0(1, sqrt(v5));
  if (fabs(v6) > 1.79769313e308)
  {
    sub_1D0D28B48("boost::math::erfc<%1%>(%1%, %1%)", "numeric overflow");
  }

  v7 = sqrt(v26 * -2.0);
  v8 = exp(-v5);
  if (a2 >= a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = -v7;
  }

  v10 = 1.0 / a1;
  v11.f64[0] = v9 * v9 * -0.000109765822 + -0.000334931611;
  v12.f64[0] = v9 * v9 * 0.000281269515 + 0.0000517179091;
  v13.f64[0] = v9 * v9 * (v9 * v9 * -0.00000229148118 + -0.0000135940482) + 0.0000679778048;
  v14.f64[0] = v9 * v9 * (v9 * v9 * 0.00000801847026 + 0.000000141906292) + -0.000199325705;
  v15.f64[0] = v9 * v9 * 0.00000142309007 + 0.0000110826541;
  v16.f64[0] = v9 * v9 * -0.00000567495283 + -0.000000239650511;
  v17.f64[0] = v9 * v9 * 0.0000000119516286 + 0.000000137863345;
  v18.f64[0] = v9 * v9 * -0.000000057525456 + 0.0000000046471278;
  v11.f64[1] = v9 * v9 * (v9 * v9 * -0.0000183291166 + -0.0000815396937) + 0.00027087821;
  v12.f64[1] = v9 * v9 * (v9 * v9 * 0.0000561168275 + 0.000000790235323) + -0.000592166437;
  v19 = vaddq_f64(vmulq_n_f64(v12, v9), vaddq_f64(vmulq_n_f64(v11, v9 * v9), xmmword_1D0E7EA40));
  v20 = &unk_1D0E7E930;
  *&v11.f64[0] = *&vld1q_dup_f64(v20);
  v11.f64[1] = (v9 * -0.000438297099 + 0.000839498721) * v9 + -0.000652623919;
  v13.f64[1] = v9 * v9 * 0.000011375727 + 0.0000664149822;
  v14.f64[1] = v9 * v9 * -0.0000396836505 + -0.00000146384526;
  v15.f64[1] = v9 * v9 * (v9 * v9 * 0.000000142806142 + 0.00000137219573) + -0.0000127606352;
  v16.f64[1] = v9 * v9 * (v9 * v9 * -0.000000629899214 + 0.0000000342357873) + 0.0000529234488;
  v17.f64[1] = v9 * v9 * (v9 * v9 * 9.14769958e-10 + 0.0000000102618098) + -0.000000176659527;
  v18.f64[1] = v9 * v9 * (v9 * v9 * -0.00000000438203602 + 0.00000000670785354) + 0.000000829671134;
  v21 = vaddq_f64(vmulq_n_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v16, v9 * v9), xmmword_1D0E7EAB0), v9 * v9), xmmword_1D0E7EAC0), v9), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v15, v9 * v9), xmmword_1D0E7EA80), v9 * v9), xmmword_1D0E7EA90), v9 * v9), xmmword_1D0E7EAA0)), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v19, v11, v10 * v10), v10 * v10), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v14, v9 * v9), xmmword_1D0E7EA70), v9), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v13, v9 * v9), xmmword_1D0E7EA50), v9 * v9), xmmword_1D0E7EA60))), v10 * v10)), v10 * v10), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v18, v9 * v9), xmmword_1D0E7EB20), v9 * v9), xmmword_1D0E7EB30), v9 * v9), xmmword_1D0E7EB40), v9 * v9), xmmword_1D0E7EB50), v9), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(v17, v9 * v9), xmmword_1D0E7EAD0), v9 * v9), xmmword_1D0E7EAE0), v9 * v9), xmmword_1D0E7EAF0), v9 * v9), xmmword_1D0E7EB00), v9 * v9), xmmword_1D0E7EB10)));
  v22 = v8 / sqrt(a1 * 6.28318531) * (1.0 / a1 * v21.f64[0] + v21.f64[1]);
  v23 = -v22;
  if (a2 >= a1)
  {
    v23 = v22;
  }

  return v6 * 0.5 + v23;
}

double sub_1D0D2AEF4(double *a1, double *a2)
{
  v2 = *a1;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 1000000;
  do
  {
    v3 = v4 + v3;
    if (fabs(v3 * 2.22044605e-16) >= fabs(v4))
    {
      break;
    }

    v2 = v2 + -1.0;
    v4 = v4 * (v2 / *a2);
    --v5;
  }

  while (v5);
  v6 = 1000000 - v5;
  if (v6 >= 0xF4240)
  {
    v8 = v6;
    sub_1D0D29B54("boost::math::tgamma<%1%>(%1%,%1%)", "Series evaluation exceeded %1% iterations, giving up now.", &v8);
  }

  return v3;
}

double sub_1D0D2AFA0(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 >= 0.0)
  {
    v9 = a1 + 1.0;
    a2 = 2.0;
    if (a1 >= 2.0)
    {
      goto LABEL_6;
    }

    sub_1D0D28F64(v9, a1, a1 + -1.0);
  }

  else
  {
    if (a1 < -0.5)
    {
      v9 = a1 + 1.0;
LABEL_6:
      sub_1D0C3BB74(v9, a2, a3, a4, a5, a6, a7, a8);
      if (fabs(v11) > 1.79769313e308)
      {
        sub_1D0D28B48("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
      }

      return v11 + -1.0;
    }

    v16 = a1;
    if (a1 < -1.0)
    {
      sub_1D0C50B00("log1p<%1%>(%1%)", "log1p(x) requires x > -1, but got x = %1%.", &v16);
    }

    if (a1 == -1.0)
    {
      sub_1D0D28B48("log1p<%1%>(%1%)", "Overflow Error");
    }

    v15 = log1pl(a1);
    sub_1D0D28F64(a1 + 2.0, a1 + 1.0, a1);
    v10 = v13 - v15;
  }

  v12 = sub_1D0D2B134(v10);
  if (fabs(v12) > 1.79769313e308)
  {
    sub_1D0D28B48("boost::math::expm1<%1%>(%1%)", "numeric overflow");
  }

  return v12;
}

double sub_1D0D2B134(double result)
{
  v1 = fabs(result);
  if (v1 <= 0.5)
  {
    if (v1 >= 2.22044605e-16)
    {
      v2 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7EB90, xmmword_1D0E7EB80, result * result), result * result), xmmword_1D0E7EBB0), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7EB70, xmmword_1D0E7EB60, result * result), result * result), xmmword_1D0E7EBA0), result));
      return result * v2.f64[0] / v2.f64[1] + result * 1.02812767;
    }
  }

  else if (v1 >= 709.0)
  {
    v3 = result <= 0.0;
    result = -1.0;
    if (!v3)
    {
      sub_1D0D28B48("boost::math::expm1<%1%>(%1%)", "Overflow Error");
    }
  }

  else
  {
    return exp(result) + -1.0;
  }

  return result;
}

double sub_1D0D2B220(uint64_t a1, long double a2, double a3)
{
  v14 = a2;
  if (a2 <= 0.0)
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v15 = a3;
      sub_1D0D2921C("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v15);
    }

    v9 = ceil(a3);
    v10 = floor(a3);
    if (a3 >= 0.0)
    {
      v9 = v10;
    }

    if (v9 != a3)
    {
      sub_1D0C50B00(qword_1EC5FB408, "For non-integral exponent, expected base > 0 but got %1%", &v14);
    }

    v11 = a3 * 0.5;
    if (COERCE__INT64(fabs(a3 * 0.5)) >= 0x7FF0000000000000)
    {
      v15 = a3 * 0.5;
      sub_1D0D2921C("boost::math::trunc<%1%>(%1%)", "Value %1% can not be represented in the target integer type.", &v15);
    }

    if (v11 >= 0.0)
    {
      v12 = floor(v11);
    }

    else
    {
      v12 = ceil(v11);
    }

    if (v12 != v11)
    {
      return pow(a2, a3) + -1.0;
    }

    return sub_1D0D2B220(a1, -a2, a3);
  }

  else
  {
    v5 = fabs((a2 + -1.0) * a3);
    if (fabs(a3) >= 0.2 && v5 >= 0.5)
    {
      return pow(a2, a3) + -1.0;
    }

    v7 = log(a2) * a3;
    if (v7 >= 0.5)
    {
      if (v7 > 709.0)
      {
        sub_1D0D28B48(qword_1EC5FB408, "Overflow Error");
      }

      return pow(a2, a3) + -1.0;
    }

    v8 = sub_1D0D2B134(v7);
    if (fabs(v8) > 1.79769313e308)
    {
      sub_1D0D28B48("boost::math::expm1<%1%>(%1%)", "numeric overflow");
    }
  }

  return v8;
}

void cnstatistics::Chi2PDF(cnstatistics *this, double a2, double a3)
{
  v17 = a2;
  if (a3 >= 0.0)
  {
    v3 = (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v4 = a2 < 0.0 && ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (a2 >= 0.0)
    {
      v3 = 0;
    }

    v5 = (*&a2 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v3;
    if (((v5 | v4) & 1) == 0)
    {
      v6 = fabs(a3);
      if (v6 >= 2.22044605e-16 && v6 != INFINITY)
      {
        v16 = a3;
        if (*&a3 <= -1 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF)
        {
          sub_1D0D26D6C("boost::math::chi_squared_distribution<%1%>::chi_squared_distribution", "Degrees of freedom argument is %1%, but must be > 0 !", &v16);
        }

        v18 = a3;
        if ((*&a3 <= -1 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a3 - 1) >= 0xFFFFFFFFFFFFFLL)
        {
          v13 = "Degrees of freedom argument is %1%, but must be > 0 !";
          v14 = &v18;
LABEL_41:
          sub_1D0D26D6C("boost::math::pdf(const chi_squared_distribution<%1%>&, %1%)", v13, v14);
        }

        if ((*&a2 <= -1 || ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a2 - 1) >= 0xFFFFFFFFFFFFFLL && (*&a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v13 = "Chi Square parameter was %1%, but must be > 0 !";
          v14 = &v17;
          goto LABEL_41;
        }

        if (a2 == 0.0)
        {
          if (a3 < 2.0)
          {
            sub_1D0D27B28("boost::math::pdf(const chi_squared_distribution<%1%>&, %1%)", "Overflow Error");
          }
        }

        else
        {
          sub_1D0BEF464(&v19, a3 * 0.5, a2 * 0.5);
          if (fabs(v15) > 1.79769313e308)
          {
            sub_1D0D27B28("boost::math::gamma_p_derivative<%1%>(%1%, %1%)", "numeric overflow");
          }
        }
      }
    }
  }
}

double cnstatistics::Chi2CDF(cnstatistics *this, double a2, __n128 a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v26 = a2;
  v9 = NAN;
  if (a3.n128_f64[0] >= 0.0)
  {
    if (a2 >= 0.0 || (v9 = 0.0, a3.n128_f64[0] <= 0.0))
    {
      v12 = a3.n128_f64[0] > 0.0;
      v13 = fabs(a2);
      v14 = fabs(a3.n128_f64[0]);
      if (v14 == INFINITY)
      {
        v12 = 0;
      }

      if (v13 != INFINITY)
      {
        v12 = 0;
      }

      v9 = 1.0;
      if (v14 >= 2.22044605e-16 && !v12)
      {
        if (v14 == INFINITY)
        {
          if (v13 != INFINITY || a2 <= 0.0)
          {
            return 0.0;
          }

          else
          {
            return NAN;
          }
        }

        v25 = a3.n128_u64[0];
        if (a3.n128_i64[0] <= -1 || ((a3.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) - 0x10000000000000) >> 53 >= 0x3FF)
        {
          sub_1D0D26D6C("boost::math::chi_squared_distribution<%1%>::chi_squared_distribution", "Degrees of freedom argument is %1%, but must be > 0 !", &v25);
        }

        v27 = a3.n128_u64[0];
        if ((a3.n128_i64[0] <= -1 || ((a3.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) - 0x10000000000000) >> 53 >= 0x3FF) && a3.n128_u64[0] - 1 >= 0xFFFFFFFFFFFFFLL)
        {
          v23 = "Degrees of freedom argument is %1%, but must be > 0 !";
          v24 = &v27;
LABEL_45:
          sub_1D0D26D6C("boost::math::cdf(const chi_squared_distribution<%1%>&, %1%)", v23, v24);
        }

        if ((*&a2 <= -1 || ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a2 - 1) >= 0xFFFFFFFFFFFFFLL && (*&a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = "Chi Square parameter was %1%, but must be > 0 !";
          v24 = &v26;
          goto LABEL_45;
        }

        v22 = a3.n128_f64[0] * 0.5;
        a3.n128_f64[0] = a2 * 0.5;
        v9 = sub_1D0BEEA20(1, 0, &v28, 0, v22, a3, 0.5, INFINITY, a6, a7, a8, a9);
        if (fabs(v9) > 1.79769313e308)
        {
          sub_1D0D27B28("gamma_p<%1%>(%1%, %1%)", "numeric overflow");
        }
      }
    }
  }

  return v9;
}

cntransformation::CNRigidTransformation *cntransformation::CNRigidTransformation::CNRigidTransformation(cntransformation::CNRigidTransformation *this)
{
  *this = 0u;
  *(this + 2) = 0;
  *(this + 3) = 0x3FF0000000000000;
  v2 = this + 32;
  *(this + 7) = 0x100000003;
  *(this + 4) = &unk_1F4CDEB28;
  *(this + 8) = this + 72;
  *(this + 40) = xmmword_1D0E7DCC0;
  sub_1D0BBBC00(this + 32, 0.0);
  *(this + 15) = 0x300000003;
  *(this + 12) = &unk_1F4CD5DD0;
  *(this + 16) = this + 136;
  *(this + 104) = xmmword_1D0E76C10;
  sub_1D0BBBC00(this + 96, 0.0);
  *(this + 29) = 0x300000003;
  *(this + 26) = &unk_1F4CD5DD0;
  *(this + 30) = this + 248;
  *(this + 216) = xmmword_1D0E76C10;
  sub_1D0BBBC00(this + 208, 0.0);
  *(this + 43) = 0x300000003;
  *(this + 40) = &unk_1F4CD5DD0;
  *(this + 44) = this + 360;
  *(this + 328) = xmmword_1D0E76C10;
  sub_1D0BBBC00(this + 320, 0.0);
  *(this + 432) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0x3FF0000000000000;
  v6 = 0x100000003;
  v4 = &unk_1F4CDEB28;
  v5 = xmmword_1D0E7DCC0;
  v7 = &v8;
  v8 = 0uLL;
  *&v9 = 0;
  sub_1D0B894B0(v2, &v4);
  v6 = 0x300000003;
  v4 = &unk_1F4CD5DD0;
  v7 = &v8;
  v5 = xmmword_1D0E76C10;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  sub_1D0B894B0(this + 96, &v4);
  v6 = 0x300000003;
  v4 = &unk_1F4CD5DD0;
  v7 = &v8;
  v5 = xmmword_1D0E76C10;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  sub_1D0B894B0(this + 208, &v4);
  v6 = 0x300000003;
  v4 = &unk_1F4CD5DD0;
  v7 = &v8;
  v5 = xmmword_1D0E76C10;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  sub_1D0B894B0(this + 320, &v4);
  *(this + 432) = 0;
  return this;
}

void sub_1D0D2BB18(_Unwind_Exception *a1)
{
  *v4 = &unk_1F4CD5E28;
  *v3 = &unk_1F4CD5E28;
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t cntransformation::CNRigidTransformation::CNRigidTransformation(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  v4 = a1 + 32;
  *(a1 + 56) = 0x100000003;
  *(a1 + 32) = &unk_1F4CDEB28;
  *(a1 + 64) = a1 + 72;
  *(a1 + 40) = xmmword_1D0E7DCC0;
  sub_1D0BBBC00(a1 + 32, 0.0);
  *(a1 + 120) = 0x300000003;
  *(a1 + 96) = &unk_1F4CD5DD0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 104) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1 + 96, 0.0);
  *(a1 + 232) = 0x300000003;
  *(a1 + 208) = &unk_1F4CD5DD0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 216) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1 + 208, 0.0);
  *(a1 + 344) = 0x300000003;
  *(a1 + 320) = &unk_1F4CD5DD0;
  *(a1 + 352) = a1 + 360;
  *(a1 + 328) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1 + 320, 0.0);
  *(a1 + 432) = 0;
  v8 = 0x300000003;
  v6 = &unk_1F4CD5DD0;
  v9 = &v10;
  v7 = xmmword_1D0E76C10;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  sub_1D0B894B0(a1 + 96, &v6);
  v8 = 0x300000003;
  v6 = &unk_1F4CD5DD0;
  v9 = &v10;
  v7 = xmmword_1D0E76C10;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  sub_1D0B894B0(a1 + 208, &v6);
  v8 = 0x300000003;
  v6 = &unk_1F4CD5DD0;
  v9 = &v10;
  v7 = xmmword_1D0E76C10;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  sub_1D0B894B0(a1 + 320, &v6);
  *(a1 + 432) = 0;
  if ((cntransformation::CNRigidTransformation::SetTransformationMatrix(a1, a2) & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0x3FF0000000000000;
    sub_1D0C51578(3, 1, &v6);
    sub_1D0B894B0(v4, &v6);
    __assert_rtn("CNRigidTransformation", "cnrigidtransformation.cpp", 61, "false && Error: attempted to construct CNRigidTransformation from invalid transformation matrix.");
  }

  return a1;
}

void sub_1D0D2BE84(_Unwind_Exception *a1)
{
  *v4 = &unk_1F4CD5E28;
  *v3 = &unk_1F4CD5E28;
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t cntransformation::CNRigidTransformation::SetTransformationMatrix(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 4 || *(a2 + 12) != 4)
  {
    return 0;
  }

  if ((atomic_load_explicit(&qword_1EE0537E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE0537E8))
  {
    v19 = 0x300000001;
    v17 = &unk_1F4CDF0C8;
    v20 = &v21;
    v18 = xmmword_1D0E7F310;
    v21 = 0x100000000;
    v22 = 2;
    sub_1D0D2CF48(&v17, &unk_1EE0538A8);
    __cxa_atexit(sub_1D0D26840, &unk_1EE0538A8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE0537E8);
  }

  sub_1D0D2D730(a2, &unk_1EE0538A8, &unk_1EE0538A8, &v17);
  sub_1D0D260A4(v23, &v17);
  if (v23 != a1)
  {
    v4 = *&v23[16];
    *a1 = *v23;
    *(a1 + 16) = v4;
  }

  v5 = dword_1EE0538B8;
  v19 = 0x100000003;
  v17 = &unk_1F4CDEB28;
  *&v18 = dword_1EE0538B8 | 0x100000000;
  DWORD2(v18) = dword_1EE0538B8;
  HIDWORD(v18) = dword_1EE0538B8;
  v20 = &v21;
  if (dword_1EE0538B8)
  {
    v6 = 0;
    v7 = qword_1EE0538C8;
    v8 = 3 * *(a2 + 20);
    v9 = *(a2 + 32);
    do
    {
      *(&v21 + v6) = *(v9 + 8 * (*(v7 + 4 * v6) + v8));
      ++v6;
    }

    while (v5 != v6);
  }

  sub_1D0B894B0(a1 + 32, &v17);
  *&v23[24] = 0x100000003;
  *&v23[8] = xmmword_1D0E7DCC0;
  *v23 = &unk_1F4CDEB28;
  v24 = &v25;
  v19 = 0x100000134;
  v17 = &unk_1F4CDEC90;
  v18 = xmmword_1D0E7DD20;
  v20 = &v21;
  v14 = 0x100000003;
  v12 = &unk_1F4CDEB28;
  v13 = xmmword_1D0E7DCC0;
  v15 = &v16;
  sub_1D0BFB1AC(a1 + 32, v23, &v17, &v12, "2");
  if ((v10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_1D0D2D7D8(a1);
    return 0;
  }

  return 1;
}

uint64_t cntransformation::CNRigidTransformation::CNRigidTransformation(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  v6 = a1 + 32;
  *(a1 + 56) = 0x100000003;
  *(a1 + 32) = &unk_1F4CDEB28;
  *(a1 + 64) = a1 + 72;
  *(a1 + 40) = xmmword_1D0E7DCC0;
  sub_1D0BBBC00(a1 + 32, 0.0);
  *(a1 + 120) = 0x300000003;
  *(a1 + 96) = &unk_1F4CD5DD0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 104) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1 + 96, 0.0);
  *(a1 + 232) = 0x300000003;
  *(a1 + 208) = &unk_1F4CD5DD0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 216) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1 + 208, 0.0);
  *(a1 + 344) = 0x300000003;
  *(a1 + 320) = &unk_1F4CD5DD0;
  *(a1 + 352) = a1 + 360;
  *(a1 + 328) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1 + 320, 0.0);
  *(a1 + 432) = 0;
  v16 = 0x300000003;
  v14 = &unk_1F4CD5DD0;
  v17 = &v18;
  v15 = xmmword_1D0E76C10;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  sub_1D0B894B0(a1 + 96, &v14);
  v16 = 0x300000003;
  v14 = &unk_1F4CD5DD0;
  v17 = &v18;
  v15 = xmmword_1D0E76C10;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  sub_1D0B894B0(a1 + 208, &v14);
  v16 = 0x300000003;
  v14 = &unk_1F4CD5DD0;
  v17 = &v18;
  v15 = xmmword_1D0E76C10;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  sub_1D0B894B0(a1 + 320, &v14);
  *(a1 + 432) = 0;
  v25 = 0x100000003;
  v23 = &unk_1F4CDEB28;
  v24 = xmmword_1D0E7DCC0;
  v26 = &v27;
  v16 = 0x100000134;
  v14 = &unk_1F4CDEC90;
  v15 = xmmword_1D0E7DD20;
  v17 = &v18;
  v11 = 0x100000003;
  v9 = &unk_1F4CDEB28;
  v10 = xmmword_1D0E7DCC0;
  v12 = &v13;
  sub_1D0BFB1AC(a3, &v23, &v14, &v9, "2");
  if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0x3FF0000000000000;
    sub_1D0C51578(3, 1, &v14);
    sub_1D0B894B0(v6, &v14);
    __assert_rtn("CNRigidTransformation", "cnrigidtransformation.cpp", 95, "false && Error: attempted to construct CNRigidTransformation with invalid position vector.");
  }

  sub_1D0B894B0(v6, a3);
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 16) = a2[1];
  }

  return a1;
}

void sub_1D0D2C5C4(_Unwind_Exception *a1)
{
  *v4 = &unk_1F4CD5E28;
  *v3 = &unk_1F4CD5E28;
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t cntransformation::CNRigidTransformation::CNRigidTransformation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  v6 = a1 + 32;
  *(a1 + 56) = 0x100000003;
  *(a1 + 32) = &unk_1F4CDEB28;
  *(a1 + 64) = a1 + 72;
  *(a1 + 40) = xmmword_1D0E7DCC0;
  sub_1D0BBBC00(a1 + 32, 0.0);
  *(a1 + 120) = 0x300000003;
  *(a1 + 96) = &unk_1F4CD5DD0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 104) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1 + 96, 0.0);
  *(a1 + 232) = 0x300000003;
  *(a1 + 208) = &unk_1F4CD5DD0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 216) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1 + 208, 0.0);
  *(a1 + 344) = 0x300000003;
  *(a1 + 320) = &unk_1F4CD5DD0;
  *(a1 + 352) = a1 + 360;
  *(a1 + 328) = xmmword_1D0E76C10;
  sub_1D0BBBC00(a1 + 320, 0.0);
  *(a1 + 432) = 0;
  if (!cntransformation::CNRigidTransformation::SetTransformationMatrix(a1, a2) || (cntransformation::CNRigidTransformation::SetCovarianceMatrix(a1, a3) & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0x3FF0000000000000;
    sub_1D0C51578(3, 1, v8);
    sub_1D0B894B0(v6, v8);
    sub_1D0BFA9C4(3, 3, v8);
    sub_1D0B894B0(a1 + 96, v8);
    sub_1D0BFA9C4(3, 3, v8);
    sub_1D0B894B0(a1 + 208, v8);
    sub_1D0BFA9C4(3, 3, v8);
    sub_1D0B894B0(a1 + 320, v8);
    *(a1 + 432) = 0;
    __assert_rtn("CNRigidTransformation", "cnrigidtransformation.cpp", 140, "false && Error: attempted to construct CNRigidTransformation from invalid transformation or covariance matrix.");
  }

  return a1;
}

void sub_1D0D2C89C(_Unwind_Exception *a1)
{
  *v4 = &unk_1F4CD5E28;
  *v3 = &unk_1F4CD5E28;
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t cntransformation::CNRigidTransformation::SetCovarianceMatrix(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 6 || *(a2 + 12) != 6)
  {
    return 0;
  }

  v17 = 0;
  v14 = 0x600000006;
  v12 = &unk_1F4CDF278;
  v13 = xmmword_1D0E7F320;
  v15 = &v16;
  sub_1D0B9F748(a2, &v12, &v17);
  v12 = &unk_1F4CD5E28;
  v4 = v17;
  if (v17)
  {
    if ((atomic_load_explicit(&qword_1EE0537F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE0537F0))
    {
      v8 = 0x300000001;
      v6 = &unk_1F4CDF0C8;
      v9 = &v10;
      v7 = xmmword_1D0E7F310;
      v10 = 0x100000000;
      v11 = 2;
      sub_1D0D2CF48(&v6, &unk_1EE0538E0);
      __cxa_atexit(sub_1D0D26840, &unk_1EE0538E0, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE0537F0);
    }

    if ((atomic_load_explicit(&qword_1EE0537F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE0537F8))
    {
      v8 = 0x300000001;
      v6 = &unk_1F4CDF0C8;
      v9 = &v10;
      v7 = xmmword_1D0E7F310;
      v10 = 0x400000003;
      v11 = 5;
      sub_1D0D2CF48(&v6, &unk_1EE053918);
      __cxa_atexit(sub_1D0D26840, &unk_1EE053918, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE0537F8);
    }

    sub_1D0D2D730(a2, &unk_1EE0538E0, &unk_1EE0538E0, &v6);
    sub_1D0B894B0(a1 + 96, &v6);
    sub_1D0D2D730(a2, &unk_1EE053918, &unk_1EE053918, &v6);
    sub_1D0B894B0(a1 + 208, &v6);
    sub_1D0D2D730(a2, &unk_1EE0538E0, &unk_1EE053918, &v6);
    sub_1D0B894B0(a1 + 320, &v6);
    *(a1 + 432) = 1;
  }

  return v4;
}

double cntransformation::CNRigidTransformation::MakeSymmetric(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 20);
  v3 = (v1 + 8 * v2);
  v4.f64[0] = *v3;
  v5 = 16 * v2;
  v4.f64[1] = *(v1 + 16 * v2);
  __asm { FMOV            V1.2D, #0.5 }

  *(v1 + 8) = vmulq_f64(vaddq_f64(*(v1 + 8), v4), _Q1);
  LODWORD(v2) = (2 * v2) | 1;
  v3[2] = (v3[2] + *(v1 + 8 * v2)) * 0.5;
  *v3 = *(v1 + 8);
  *(v1 + v5) = *(v1 + 16);
  result = v3[2];
  *(v1 + 8 * v2) = result;
  return result;
}

uint64_t cntransformation::CNRigidTransformation::TransformationMatrix@<X0>(cntransformation::CNRigidTransformation *this@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1EE0537D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE0537D0))
  {
    v9 = 0x300000001;
    v7 = &unk_1F4CDF0C8;
    v10 = &v11;
    v8 = xmmword_1D0E7F310;
    v11 = 0x100000000;
    v12 = 2;
    sub_1D0D2CF48(&v7, &unk_1EE053800);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053800, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE0537D0);
  }

  *(a2 + 24) = 0x400000004;
  *a2 = &unk_1F4CDEB70;
  *(a2 + 8) = xmmword_1D0E7DCD0;
  *(a2 + 32) = a2 + 40;
  cnrotation::CNRotation::RotationMatrix(this, &v13);
  sub_1D0BADC74(&v7, a2, &unk_1EE053800, &unk_1EE053800);
  sub_1D0D2CFF0(&v7, &v13);
  v15 = 0x100000001;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v14 = v4;
  v13 = &unk_1F4CDF158;
  v16 = v17;
  LODWORD(v17[0]) = 3;
  sub_1D0C51DC8(&v7, a2, &unk_1EE053800, &v13);
  sub_1D0D2D13C(&v7, this + 32);
  v15 = 0x300000001;
  v13 = &unk_1F4CDF248;
  v16 = v17;
  memset(v17, 0, 24);
  v14 = xmmword_1D0E7F310;
  v20 = 0x100000001;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  v19 = v5;
  v18 = &unk_1F4CDF158;
  v21 = &v22;
  v22 = 3;
  sub_1D0C4DC98(&v7, a2, &v18, &unk_1EE053800);
  result = sub_1D0D2D288(&v7, &v13);
  *(*(a2 + 32) + 24 * *(a2 + 20) + 24) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1D0D2CF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 24) = 0x100000003;
  *a2 = &unk_1F4CDEAA0;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v4 * v3;
  *(a2 + 20) = v3;
  *(a2 + 32) = a2 + 40;
  return sub_1D0D2EF0C(a1, a2);
}

uint64_t sub_1D0D2CFF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 112);
        v8 = *(result + 152);
        v9 = *(v7 + 20) * *(*(result + 208) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void *sub_1D0D2D0DC(void *result)
{
  result[22] = &unk_1F4CDEAF8;
  result[15] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D2D13C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 64);
        v8 = *(result + 104);
        v9 = *(v7 + 20) * *(*(result + 160) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void *sub_1D0D2D228(void *result)
{
  result[16] = &unk_1F4CDEAF8;
  result[9] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D2D288(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 64);
        v8 = *(result + 104);
        v9 = *(v7 + 20) * *(*(result + 152) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void *sub_1D0D2D374(void *result)
{
  result[15] = &unk_1F4CDEAF8;
  result[9] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t cntransformation::CNRigidTransformation::CovarianceMatrix@<X0>(cntransformation::CNRigidTransformation *this@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1EE0537D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE0537D8))
  {
    v17 = 0x300000001;
    v15 = &unk_1F4CDF0C8;
    v18 = &v19;
    v16 = xmmword_1D0E7F310;
    v19 = 0x100000000;
    v20 = 2;
    sub_1D0D2CF48(&v15, &unk_1EE053838);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053838, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE0537D8);
  }

  if ((atomic_load_explicit(&qword_1EE0537E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE0537E0))
  {
    v17 = 0x300000001;
    v15 = &unk_1F4CDF0C8;
    v18 = &v19;
    v16 = xmmword_1D0E7F310;
    v19 = 0x400000003;
    v20 = 5;
    sub_1D0D2CF48(&v15, &unk_1EE053870);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053870, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE0537E0);
  }

  *(a2 + 24) = 0x600000006;
  *a2 = &unk_1F4CDF278;
  *(a2 + 8) = xmmword_1D0E7F320;
  *(a2 + 32) = a2 + 40;
  sub_1D0BADC74(&v15, a2, &unk_1EE053838, &unk_1EE053838);
  sub_1D0D2CFF0(&v15, this + 96);
  v4 = *(this + 83);
  v5 = *(this + 82);
  v12 = 0x300000003;
  v7 = &unk_1F4CD5DD0;
  v8 = v4;
  v9 = v5;
  v10 = v5 * v4;
  v11 = v4;
  v13 = &v14;
  sub_1D0BD2018(this + 320, &v7);
  sub_1D0BADC74(&v15, a2, &unk_1EE053870, &unk_1EE053838);
  sub_1D0D2CFF0(&v15, &v7);
  sub_1D0BADC74(&v15, a2, &unk_1EE053838, &unk_1EE053870);
  sub_1D0D2CFF0(&v15, this + 320);
  sub_1D0BADC74(&v15, a2, &unk_1EE053870, &unk_1EE053870);
  return sub_1D0D2CFF0(&v15, this + 208);
}

uint64_t sub_1D0D2D730@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a3 + 16);
  *(a4 + 24) = 0x300000003;
  *a4 = &unk_1F4CD5DD0;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v5 * v4;
  *(a4 + 20) = v4;
  v6 = a4 + 40;
  *(a4 + 32) = a4 + 40;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 32);
    v10 = *(a3 + 32);
    do
    {
      if (v4)
      {
        v11 = 0;
        v12 = *(result + 20) * *(v10 + 4 * v8);
        v13 = *(result + 32);
        v14 = v7;
        v15 = v4;
        do
        {
          *(v6 + 8 * v14++) = *(v13 + 8 * (*(v9 + 4 * v11++) + v12));
          --v15;
        }

        while (v15);
      }

      ++v8;
      v7 += v4;
    }

    while (v8 != v5);
  }

  return result;
}

void sub_1D0D2D7D8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  v4 = 0x100000003;
  v2 = &unk_1F4CDEB28;
  v3 = xmmword_1D0E7DCC0;
  v5 = &v6;
  v6 = 0uLL;
  *&v7 = 0;
  sub_1D0B894B0(a1 + 32, &v2);
  v4 = 0x300000003;
  v2 = &unk_1F4CD5DD0;
  v5 = &v6;
  v3 = xmmword_1D0E76C10;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  sub_1D0B894B0(a1 + 96, &v2);
  v4 = 0x300000003;
  v2 = &unk_1F4CD5DD0;
  v5 = &v6;
  v3 = xmmword_1D0E76C10;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  sub_1D0B894B0(a1 + 208, &v2);
  v4 = 0x300000003;
  v2 = &unk_1F4CD5DD0;
  v5 = &v6;
  v3 = xmmword_1D0E76C10;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  sub_1D0B894B0(a1 + 320, &v2);
  *(a1 + 432) = 0;
}

uint64_t cntransformation::CNRigidTransformation::SetPrr(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 3 || *(a2 + 12) != 3)
  {
    return 0;
  }

  sub_1D0B894B0(a1 + 96, a2);
  cntransformation::CNRigidTransformation::MakeSymmetric(a1 + 96);
  v17 = 0;
  v14 = 0x300000003;
  v12 = &unk_1F4CD5DD0;
  v13 = xmmword_1D0E76C10;
  v15 = &v16;
  sub_1D0B9F748(a1 + 96, &v12, &v17);
  v12 = &unk_1F4CD5E28;
  v3 = v17;
  if (v17)
  {
    *(a1 + 432) = 1;
  }

  else
  {
    v8 = 0x300000003;
    v6 = &unk_1F4CD5DD0;
    v9 = v10;
    v7 = xmmword_1D0E76C10;
    memset(v10, 0, sizeof(v10));
    v11 = 0;
    sub_1D0B894B0(a1 + 96, &v6);
  }

  return v3;
}

uint64_t cntransformation::CNRigidTransformation::SetPpp(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != 3 || *(a2 + 12) != 3)
  {
    return 0;
  }

  sub_1D0B894B0(a1 + 208, a2);
  cntransformation::CNRigidTransformation::MakeSymmetric(a1 + 208);
  v17 = 0;
  v14 = 0x300000003;
  v12 = &unk_1F4CD5DD0;
  v13 = xmmword_1D0E76C10;
  v15 = &v16;
  sub_1D0B9F748(a1 + 208, &v12, &v17);
  v12 = &unk_1F4CD5E28;
  v3 = v17;
  if (v17)
  {
    *(a1 + 432) = 1;
  }

  else
  {
    v8 = 0x300000003;
    v6 = &unk_1F4CD5DD0;
    v9 = v10;
    v7 = xmmword_1D0E76C10;
    memset(v10, 0, sizeof(v10));
    v11 = 0;
    sub_1D0B894B0(a1 + 208, &v6);
  }

  return v3;
}

uint64_t cntransformation::CNRigidTransformation::SetPrp(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) == 3 && *(a2 + 12) == 3;
  v3 = v2;
  if (v2)
  {
    sub_1D0B894B0(a1 + 320, a2);
    *(a1 + 432) = 1;
  }

  return v3;
}

void cntransformation::Cat(cntransformation *this@<X0>, const cntransformation::CNRigidTransformation *a2@<X1>, uint64_t a3@<X8>)
{
  cntransformation::CNRigidTransformation::CNRigidTransformation(a3);
  cnrotation::Cat(this, a2, v122);
  if (v122 != a3)
  {
    v7 = *&v122[16];
    *a3 = *v122;
    *(a3 + 16) = v7;
  }

  sub_1D0B88A54(this, a2 + 32, v135);
  *&v122[24] = 0x300000003;
  *&v122[8] = xmmword_1D0E76C10;
  *v122 = &unk_1F4CD5DD0;
  v123 = v124;
  sub_1D0B88838(v135, this + 32, v122);
  sub_1D0C51690(&v125, v122);
  sub_1D0B894B0(a3 + 32, &v125);
  if ((*(a2 + 432) & 1) != 0 || *(this + 432) == 1)
  {
    cnrotation::CNRotation::drdq(a3, v135);
    cnrotation::CNRotation::dqaqdqa(a2, v122);
    v127 = 0x400000003;
    v126 = xmmword_1D0E7DD10;
    v125 = &unk_1F4CDEC48;
    v128 = v129;
    sub_1D0B89390(v135, v122, &v125);
    cnrotation::CNRotation::dqdr(this, &v117);
    v132 = 0x300000003;
    v131 = xmmword_1D0E76C10;
    v130 = &unk_1F4CD5DD0;
    v133 = &v134;
    sub_1D0B89390(&v125, &v117, &v130);
    cnrotation::CNRotation::dRotateVectordr(this, a2 + 32, v112);
    v8 = v114;
    v9 = v113;
    v109 = 0x300000003;
    v104 = &unk_1F4CD5DD0;
    v110 = v111;
    v105 = v114;
    v106 = v113;
    v107 = v113 * v114;
    v108 = v114;
    if (v114)
    {
      v10 = 0;
      v11 = 0;
      v12 = v115;
      v13 = v116;
      do
      {
        v14 = v10;
        v15 = v11;
        for (i = v9; i; --i)
        {
          v111[v15] = *(v13 + 8 * v14);
          v15 += v8;
          ++v14;
        }

        ++v11;
        v10 += v12;
      }

      while (v11 != v8);
    }

    v101 = 0x300000003;
    v100 = xmmword_1D0E76C10;
    v99 = &unk_1F4CD5DD0;
    v102 = &v103;
    sub_1D0B89390(this + 96, &v104, &v99);
    v96 = 0x300000003;
    v95 = xmmword_1D0E76C10;
    v94 = &unk_1F4CD5DD0;
    v97 = &v98;
    sub_1D0B89390(v112, this + 320, &v94);
    *&v122[24] = 0x300000003;
    *&v122[8] = xmmword_1D0E76C10;
    *v122 = &unk_1F4CD5DD0;
    v123 = v124;
    sub_1D0B89390(&v130, this + 96, v122);
    v17 = DWORD1(v131);
    v18 = v131;
    v127 = 0x300000003;
    v125 = &unk_1F4CD5DD0;
    v128 = v129;
    *&v126 = __PAIR64__(v131, DWORD1(v131));
    DWORD2(v126) = v131 * DWORD1(v131);
    HIDWORD(v126) = DWORD1(v131);
    if (DWORD1(v131))
    {
      v19 = 0;
      v20 = 0;
      v21 = HIDWORD(v131);
      v22 = v133;
      do
      {
        v23 = v19;
        v24 = v20;
        for (j = v18; j; --j)
        {
          v129[v24] = v22[v23];
          v24 += v17;
          ++v23;
        }

        ++v20;
        v19 += v21;
      }

      while (v20 != v17);
    }

    v91 = 0x300000003;
    v90 = xmmword_1D0E76C10;
    v89 = &unk_1F4CD5DD0;
    v92 = &v93;
    sub_1D0B89390(v122, &v125, &v89);
    v119 = 0x300000003;
    v118 = xmmword_1D0E76C10;
    v117 = &unk_1F4CD5DD0;
    v120 = v121;
    sub_1D0B89390(v112, &v99, &v117);
    v127 = 0x300000003;
    v126 = xmmword_1D0E76C10;
    v125 = &unk_1F4CD5DD0;
    v128 = v129;
    sub_1D0B88838(&v117, &v94, &v125);
    v26 = DWORD1(v95);
    v27 = v95;
    v81 = 0x300000003;
    v79 = &unk_1F4CD5DD0;
    v82 = v83;
    *&v80 = __PAIR64__(v95, DWORD1(v95));
    DWORD2(v80) = v95 * DWORD1(v95);
    HIDWORD(v80) = DWORD1(v95);
    if (DWORD1(v95))
    {
      v28 = 0;
      v29 = 0;
      v30 = HIDWORD(v95);
      v31 = v97;
      do
      {
        v32 = v28;
        v33 = v29;
        for (k = v27; k; --k)
        {
          v83[v33] = v31[v32];
          v33 += v26;
          ++v32;
        }

        ++v29;
        v28 += v30;
      }

      while (v29 != v26);
    }

    *&v122[24] = 0x300000003;
    *&v122[8] = xmmword_1D0E76C10;
    *v122 = &unk_1F4CD5DD0;
    v123 = v124;
    sub_1D0B88838(&v125, &v79, v122);
    v86 = 0x300000003;
    v85 = xmmword_1D0E76C10;
    v84 = &unk_1F4CD5DD0;
    v87 = &v88;
    sub_1D0B88838(v122, this + 208, &v84);
    *&v122[24] = 0x300000003;
    *&v122[8] = xmmword_1D0E76C10;
    *v122 = &unk_1F4CD5DD0;
    v123 = v124;
    sub_1D0B89390(&v130, &v99, v122);
    v127 = 0x300000003;
    v126 = xmmword_1D0E76C10;
    v125 = &unk_1F4CD5DD0;
    v128 = v129;
    sub_1D0B89390(&v130, this + 320, &v125);
    v81 = 0x300000003;
    v80 = xmmword_1D0E76C10;
    v79 = &unk_1F4CD5DD0;
    v82 = v83;
    sub_1D0B88838(v122, &v125, &v79);
    cnrotation::CNRotation::RotationMatrix(this, v74);
    v35 = v76;
    v36 = v75;
    v71 = 0x300000003;
    v66 = &unk_1F4CD5DD0;
    v72 = v73;
    v67 = v76;
    v68 = v75;
    v69 = v75 * v76;
    v70 = v76;
    if (v76)
    {
      v37 = 0;
      v38 = 0;
      v39 = v77;
      v40 = v78;
      do
      {
        v41 = v37;
        v42 = v38;
        for (m = v36; m; --m)
        {
          v73[v42] = *(v40 + 8 * v41);
          v42 += v35;
          ++v41;
        }

        ++v38;
        v37 += v39;
      }

      while (v38 != v35);
    }

    cnrotation::CNRotation::dqqbdqb(this, v122);
    v127 = 0x400000003;
    v126 = xmmword_1D0E7DD10;
    v125 = &unk_1F4CDEC48;
    v128 = v129;
    sub_1D0B89390(v135, v122, &v125);
    cnrotation::CNRotation::dqdr(a2, &v117);
    v63 = 0x300000003;
    v61 = &unk_1F4CD5DD0;
    v62 = xmmword_1D0E76C10;
    v64 = &v65;
    sub_1D0B89390(&v125, &v117, &v61);
    v119 = 0x300000003;
    v118 = xmmword_1D0E76C10;
    v117 = &unk_1F4CD5DD0;
    v120 = v121;
    sub_1D0B89390(&v61, a2 + 96, &v117);
    v45 = v62;
    v44 = DWORD1(v62);
    v58 = 0x300000003;
    v53 = &unk_1F4CD5DD0;
    v59 = v60;
    v54 = DWORD1(v62);
    v55 = v62;
    v56 = v62 * DWORD1(v62);
    v57 = DWORD1(v62);
    if (DWORD1(v62))
    {
      v46 = 0;
      v47 = 0;
      v48 = HIDWORD(v62);
      v49 = v64;
      do
      {
        v50 = v46;
        v51 = v47;
        for (n = v45; n; --n)
        {
          v60[v51] = v49[v50];
          v51 += v44;
          ++v50;
        }

        ++v47;
        v46 += v48;
      }

      while (v47 != v44);
    }

    v127 = 0x300000003;
    v126 = xmmword_1D0E76C10;
    v125 = &unk_1F4CD5DD0;
    v128 = v129;
    sub_1D0B89390(&v117, &v53, &v125);
    *&v122[24] = 0x300000003;
    *&v122[8] = xmmword_1D0E76C10;
    *v122 = &unk_1F4CD5DD0;
    v123 = v124;
    sub_1D0B88838(&v89, &v125, v122);
    sub_1D0B894B0(&v89, v122);
    v119 = 0x300000003;
    v118 = xmmword_1D0E76C10;
    v117 = &unk_1F4CD5DD0;
    v120 = v121;
    sub_1D0B89390(v74, a2 + 208, &v117);
    v127 = 0x300000003;
    v126 = xmmword_1D0E76C10;
    v125 = &unk_1F4CD5DD0;
    v128 = v129;
    sub_1D0B89390(&v117, &v66, &v125);
    *&v122[24] = 0x300000003;
    *&v122[8] = xmmword_1D0E76C10;
    *v122 = &unk_1F4CD5DD0;
    v123 = v124;
    sub_1D0B88838(&v84, &v125, v122);
    sub_1D0B894B0(&v84, v122);
    v119 = 0x300000003;
    v118 = xmmword_1D0E76C10;
    v117 = &unk_1F4CD5DD0;
    v120 = v121;
    sub_1D0B89390(&v61, a2 + 320, &v117);
    v127 = 0x300000003;
    v126 = xmmword_1D0E76C10;
    v125 = &unk_1F4CD5DD0;
    v128 = v129;
    sub_1D0B89390(&v117, &v66, &v125);
    *&v122[24] = 0x300000003;
    *&v122[8] = xmmword_1D0E76C10;
    *v122 = &unk_1F4CD5DD0;
    v123 = v124;
    sub_1D0B88838(&v79, &v125, v122);
    sub_1D0B894B0(&v79, v122);
    cntransformation::CNRigidTransformation::SetPrr(a3, &v89);
    cntransformation::CNRigidTransformation::SetPpp(a3, &v84);
    if (v80 == 0x300000003)
    {
      sub_1D0B894B0(a3 + 320, &v79);
      *(a3 + 432) = 1;
    }
  }
}

void sub_1D0D2E770(_Unwind_Exception *a1)
{
  v1[40] = &unk_1F4CD5E28;
  v1[26] = &unk_1F4CD5E28;
  v1[12] = &unk_1F4CD5E28;
  v1[4] = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

void cntransformation::Inv(float64x2_t *this@<X0>, uint64_t a2@<X8>)
{
  cntransformation::CNRigidTransformation::CNRigidTransformation(a2);
  cnrotation::Inv(this, v96);
  if (v96 != a2)
  {
    v5 = v96[1];
    *a2 = v96[0];
    *(a2 + 16) = v5;
  }

  sub_1D0B88A54(v96, &this[2], v90);
  v93 = 0x300000003;
  v91 = &unk_1F4CD5DD0;
  v92 = xmmword_1D0E76C10;
  v94 = &v95;
  sub_1D0BA5940(v90, &v91);
  sub_1D0C51690(v85, &v91);
  sub_1D0B894B0(a2 + 32, v85);
  if (LOBYTE(this[27].f64[0]) == 1)
  {
    cnrotation::CNRotation::RotationMatrix(this, &v91);
    cnrotation::CNRotation::RotationMatrix(a2, v90);
    cnrotation::CNRotation::dRotateVectordr(a2, &this[2], v85);
    v6 = v87;
    v7 = v86;
    v82 = 0x300000003;
    v77 = &unk_1F4CD5DD0;
    v83 = v84;
    v78 = v87;
    v79 = v86;
    v80 = v86 * v87;
    v81 = v87;
    if (v87)
    {
      v8 = 0;
      v9 = 0;
      v10 = v88;
      v11 = v89;
      do
      {
        v12 = v8;
        v13 = v9;
        for (i = v7; i; --i)
        {
          v84[v13] = *(v11 + 8 * v12);
          v13 += v6;
          ++v12;
        }

        ++v9;
        v8 += v10;
      }

      while (v9 != v6);
    }

    v74 = 0x300000003;
    v72 = &unk_1F4CD5DD0;
    v73 = xmmword_1D0E76C10;
    v75 = &v76;
    sub_1D0B89390(&this[6], &v77, &v72);
    v69 = 0x300000003;
    v68 = xmmword_1D0E76C10;
    v67 = &unk_1F4CD5DD0;
    v70 = &v71;
    sub_1D0B89390(&this[20], &v91, &v67);
    v64 = 0x300000003;
    v63 = xmmword_1D0E76C10;
    v62 = &unk_1F4CD5DD0;
    v65 = &v66;
    sub_1D0B89390(v85, &v67, &v62);
    cntransformation::CNRigidTransformation::SetPrr(a2, &this[6]);
    v44 = 0x300000003;
    v43 = xmmword_1D0E76C10;
    v42 = &unk_1F4CD5DD0;
    v45 = &v46;
    sub_1D0B89390(v85, &v72, &v42);
    v49 = 0x300000003;
    v48 = xmmword_1D0E76C10;
    v47 = &unk_1F4CD5DD0;
    v50 = &v51;
    sub_1D0BA5A78(&v42, &v62, &v47);
    v15 = DWORD1(v63);
    v16 = v63;
    v39 = 0x300000003;
    v34 = &unk_1F4CD5DD0;
    v40 = v41;
    v35 = DWORD1(v63);
    v36 = v63;
    v37 = v63 * DWORD1(v63);
    v38 = DWORD1(v63);
    if (DWORD1(v63))
    {
      v17 = 0;
      v18 = 0;
      v19 = HIDWORD(v63);
      v20 = v65;
      do
      {
        v21 = v17;
        v22 = v18;
        for (j = v16; j; --j)
        {
          v41[v22] = v20[v21];
          v22 += v15;
          ++v21;
        }

        ++v18;
        v17 += v19;
      }

      while (v18 != v15);
    }

    v54 = 0x300000003;
    v53 = xmmword_1D0E76C10;
    v52 = &unk_1F4CD5DD0;
    v55 = v56;
    sub_1D0BA5A78(&v47, &v34, &v52);
    v26 = 0x300000003;
    v24 = &unk_1F4CD5DD0;
    v25 = xmmword_1D0E76C10;
    v27 = &v28;
    sub_1D0B89390(v90, &this[13], &v24);
    v31 = 0x300000003;
    v29 = &unk_1F4CD5DD0;
    v30 = xmmword_1D0E76C10;
    v32 = &v33;
    sub_1D0B89390(&v24, &v91, &v29);
    v59 = 0x300000003;
    v58 = xmmword_1D0E76C10;
    v57 = &unk_1F4CD5DD0;
    v60 = v61;
    sub_1D0B88838(&v52, &v29, &v57);
    cntransformation::CNRigidTransformation::SetPpp(a2, &v57);
    v54 = 0x300000003;
    v53 = xmmword_1D0E76C10;
    v52 = &unk_1F4CD5DD0;
    v55 = v56;
    sub_1D0BA5940(&v72, &v52);
    v59 = 0x300000003;
    v58 = xmmword_1D0E76C10;
    v57 = &unk_1F4CD5DD0;
    v60 = v61;
    sub_1D0B88838(&v52, &v67, &v57);
    if (v58 == 0x300000003)
    {
      sub_1D0B894B0(a2 + 320, &v57);
      *(a2 + 432) = 1;
    }
  }
}

void sub_1D0D2EDEC(_Unwind_Exception *a1)
{
  v1[40] = &unk_1F4CD5E28;
  v1[26] = &unk_1F4CD5E28;
  v1[12] = &unk_1F4CD5E28;
  v1[4] = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D2EF0C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 16) = v3 * v2;
  *(a2 + 20) = v2;
  if (v2)
  {
    v4 = 0;
    v5 = *(result + 32);
    v6 = *(a2 + 32);
    do
    {
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          *(v6 + 4 * (v4 + *(a2 + 20) * i)) = *(v5 + 4 * (i + v4 * *(result + 20)));
        }
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return result;
}

void sub_1D0D2EF68(void *a1)
{
  a1[22] = &unk_1F4CDEAF8;
  a1[15] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D2F058(void *a1)
{
  a1[16] = &unk_1F4CDEAF8;
  a1[9] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D2F0C8(void *a1)
{
  a1[15] = &unk_1F4CDEAF8;
  a1[9] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D2F1D4(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1D0C51C04(a1, v2);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t CNTime::Deserialize(uint64_t a1, _BYTE *a2)
{
  if (a2[8] != 1)
  {
    return 0;
  }

  v4 = (*(*a2 + 40))(a2, a1, 8);
  return v4 & (*(*a2 + 40))(a2, a1 + 8, 8);
}

uint64_t CNTime::Serialize(void *a1, _BYTE *a2)
{
  if (a2[8])
  {
    return 0;
  }

  v10[1] = v5;
  v10[2] = v4;
  v10[5] = v2;
  v10[6] = v3;
  v8 = a1[1];
  v10[0] = *a1;
  v9 = (*(*a2 + 32))(a2, v10, 8);
  v10[0] = v8;
  return v9 & (*(*a2 + 32))(a2, v10, 8);
}

void CNTimeSpan::SetTimeSpan(CNTimeSpan *this, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if (a2 < 0)
  {
    *this = 0;
    if (*a3.i64 == -INFINITY)
    {
      v4 = 0x7FF8000000000000;
    }

    else
    {
      v4 = 0x7FF0000000000000;
    }

    *(this + 1) = v4;
  }

  else
  {
    CNTimeSpan::SetTimeSpan(this, a2, a3, a4);
  }
}

uint64_t *CNTimeSpan::operator+=(uint64_t *a1, void *a2, int8x16_t a3, int8x16_t a4)
{
  *a1 = CNTimeSpan::operator+(a1, a2, a3, a4);
  a1[1] = v5;
  return a1;
}

uint64_t *CNTimeSpan::operator-=(uint64_t *a1, void *a2, int8x16_t a3, int8x16_t a4)
{
  *a1 = CNTimeSpan::operator-(a1, a2, a3, a4);
  a1[1] = v5;
  return a1;
}

uint64_t CNTimeSpan::Serialize(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v4 = (*(*a2 + 32))(a2, &v6, 8);
  v6 = a1[1];
  return v4 & (*(*a2 + 32))(a2, &v6, 8);
}

double raven::RavenMovingStateEstimator::AdjustUserSpeedEvidenceWeight(raven::RavenMovingStateEstimator *this, double a2, double a3)
{
  v3 = a3 + a3 >= a2 || a2 <= 5.0;
  result = 0.1;
  if (!v3)
  {
    return 8.0;
  }

  return result;
}

uint64_t raven::RavenMovingStateEstimator::Configure(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 217) == 1)
  {
    v31 = 12;
    v30 = 2;
    v3 = cnprint::CNLogFormatter::FormatWarning((a1 + 4384), "RavenMovingStateEstimator::Configure() called more than once");
    if (*(a1 + 4407) >= 0)
    {
      LOBYTE(v9) = v3;
    }

    else
    {
      v9 = *(a1 + 4384);
    }

    cnprint::CNPrinter::Print(&v31, &v30, "%s", v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v10 = *a2;
    if (*a2)
    {
      if (*(v10 + 33))
      {
        result = 0;
        *(a1 + 224) = v10;
        *(a1 + 217) = 1;
        return result;
      }

      v27 = 12;
      v26 = 4;
      v19 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4384), "RavenMovingStateEstimator::Configure() called with uninitialized raven parameters");
      if (*(a1 + 4407) >= 0)
      {
        LOBYTE(v25) = v19;
      }

      else
      {
        v25 = *(a1 + 4384);
      }

      cnprint::CNPrinter::Print(&v27, &v26, "%s", v20, v21, v22, v23, v24, v25);
    }

    else
    {
      v29 = 12;
      v28 = 4;
      v12 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4384), "RavenMovingStateEstimator::Configure() called with null raven parameters");
      if (*(a1 + 4407) >= 0)
      {
        LOBYTE(v18) = v12;
      }

      else
      {
        v18 = *(a1 + 4384);
      }

      cnprint::CNPrinter::Print(&v29, &v28, "%s", v13, v14, v15, v16, v17, v18);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t raven::RavenMovingStateEstimator::Initialize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 216) == 1)
  {
    *v38 = 12;
    v36[0] = 2;
    v4 = cnprint::CNLogFormatter::FormatWarning((a1 + 4384), "RavenMovingStateEstimator::Initialize(),estimator being re-initialized");
    if (*(a1 + 4407) >= 0)
    {
      LOBYTE(v10) = v4;
    }

    else
    {
      v10 = *(a1 + 4384);
    }

    cnprint::CNPrinter::Print(v38, v36, "%s", v5, v6, v7, v8, v9, v10);
    *(a1 + 216) = 0;
  }

  if (!*(a1 + 224))
  {
    *v38 = 12;
    v36[0] = 4;
    v11 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4384), "RavenMovingStateEstimator::Initialize(),invalid pointer to RavenParameters");
    goto LABEL_10;
  }

  if (COERCE__INT64(fabs(*(a2 + 8) + *a2)) >= 0x7FF0000000000000)
  {
    *v38 = 12;
    v36[0] = 4;
    v11 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4384), "RavenMovingStateEstimator::Initialize(),invalid input time,%.3lf");
LABEL_10:
    if (*(a1 + 4407) >= 0)
    {
      LOBYTE(v17) = v11;
    }

    else
    {
      v17 = *(a1 + 4384);
    }

    cnprint::CNPrinter::Print(v38, v36, "%s", v12, v13, v14, v15, v16, v17);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 4360) = 0x3DDB7CDFD9D7BDBBLL;
  v33 = 0x100000003;
  v31 = &unk_1F4CDEB28;
  v32 = xmmword_1D0E7DCC0;
  v34 = v35;
  v35[0] = 0;
  v35[1] = 0;
  v35[2] = 0x3FF0000000000000;
  sub_1D0BBA094(v36, &v31);
  *&v19.f64[1] = 0x300000003;
  v37 = xmmword_1D0E7DCC0;
  v39 = 0x100000003;
  *v38 = &unk_1F4CDEB28;
  *&v38[8] = xmmword_1D0E7DCC0;
  v40 = &v41;
  v19.f64[0] = 1.0;
  sub_1D0B8930C(v36, v38, v19);
  sub_1D0B894B0(a1 + 4224, v38);
  v20 = sub_1D0B894B0(a1 + 4288, a1 + 4224);
  *(a1 + 4352) = 1;
  v21.i64[0] = 0x3FB999999999999ALL;
  v22 = *a2;
  v20.n128_f64[0] = floor(*(a2 + 8) / 0.1) * 0.1;
  *v38 = 0uLL;
  CNTimeSpan::SetTimeSpan(v38, v22, v20, v21);
  *(a1 + 4368) = *v38;
  *(a1 + 944) = *a2;
  *(a1 + 1024) = *a2;
  *(a1 + 216) = 1;
  if (!cnprint::CNPrinter::GetLogLevel(v23))
  {
    *v38 = 12;
    v36[0] = 0;
    v24 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4384, a2, "RavenMovingStateEstimator::Initialize(),estimator is initialized");
    if (*(a1 + 4407) >= 0)
    {
      LOBYTE(v30) = v24;
    }

    else
    {
      v30 = *(a1 + 4384);
    }

    cnprint::CNPrinter::Print(v38, v36, "%s", v25, v26, v27, v28, v29, v30);
  }

  return 0;
}

__n128 raven::RavenMovingStateEstimator::HandleEvent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1392) == 1)
  {
    *(a1 + 1256) = *(a2 + 8);
    v2 = *(a2 + 24);
    v3 = *(a2 + 40);
    v4 = *(a2 + 72);
    *(a1 + 1304) = *(a2 + 56);
    *(a1 + 1320) = v4;
    *(a1 + 1272) = v2;
    *(a1 + 1288) = v3;
    result = *(a2 + 88);
    v6 = *(a2 + 104);
    v7 = *(a2 + 120);
    *(a1 + 1384) = *(a2 + 136);
    *(a1 + 1352) = v6;
    *(a1 + 1368) = v7;
    *(a1 + 1336) = result;
  }

  else
  {
    *(a1 + 1248) = &unk_1F4CEF538;
    *(a1 + 1256) = *(a2 + 8);
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    v10 = *(a2 + 72);
    *(a1 + 1304) = *(a2 + 56);
    *(a1 + 1320) = v10;
    *(a1 + 1272) = v8;
    *(a1 + 1288) = v9;
    result = *(a2 + 88);
    v11 = *(a2 + 104);
    v12 = *(a2 + 120);
    *(a1 + 1384) = *(a2 + 136);
    *(a1 + 1352) = v11;
    *(a1 + 1368) = v12;
    *(a1 + 1336) = result;
    *(a1 + 1392) = 1;
  }

  return result;
}

uint64_t raven::RavenMovingStateEstimator::HandleEvent(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2);
  v6 = v5;
  v7 = *(a2 + 104) - 1;
  v36 = *(a2 + 120);
  v37 = *(a2 + 136);
  v8 = *(&v36 + v7);
  if (*(a1 + 1040) == 1)
  {
    *&v34 = *(&v36 + v7);
    *(&v34 + 1) = v8;
    v35 = 1.0 - v8;
    v32 = xmmword_1D0E7F4C0;
    v33 = 0.01;
  }

  else
  {
    v34 = xmmword_1D0E7F4C0;
    v35 = 0.01;
    *&v32 = v8;
    *(&v32 + 1) = v8;
    v33 = 1.0 - v8;
  }

  v31[0] = 1.0 - v8;
  v31[1] = 1.0 - v8;
  v31[2] = v8;
  v9 = *(&v34 + v7) * 0.9 + 0.1;
  v10 = v31[v7] * 0.9 + 0.1;
  v11 = *(&v32 + v7) * 0.9 + 0.1;
  v12 = v11 + v9 + v10;
  v13 = v9 / v12;
  v14 = v10 / v12;
  v15 = v11 / v12;
  result = (*(*a2 + 16))(a2);
  v17 = *(a1 + 136);
  *(a1 + 72) = sub_1D0BBABC4;
  *(a1 + 80) = v4;
  *(a1 + 88) = v6;
  *(a1 + 96) = v13;
  *(a1 + 104) = v15;
  *(a1 + 112) = v14;
  *(a1 + 120) = result;
  *(a1 + 128) = v18;
  if ((v17 & 1) == 0)
  {
    *(a1 + 136) = 1;
  }

  if (*(a1 + 1544) == 1)
  {
    *(a1 + 1408) = *(a2 + 8);
    v19 = *(a2 + 24);
    v20 = *(a2 + 40);
    v21 = *(a2 + 56);
    *(a1 + 1472) = *(a2 + 72);
    *(a1 + 1456) = v21;
    *(a1 + 1440) = v20;
    *(a1 + 1424) = v19;
    v22 = *(a2 + 88);
    v23 = *(a2 + 104);
    v24 = *(a2 + 120);
    *(a1 + 1536) = *(a2 + 136);
    *(a1 + 1520) = v24;
    *(a1 + 1504) = v23;
    *(a1 + 1488) = v22;
  }

  else
  {
    *(a1 + 1400) = &unk_1F4CEF778;
    *(a1 + 1408) = *(a2 + 8);
    v25 = *(a2 + 24);
    v26 = *(a2 + 40);
    v27 = *(a2 + 56);
    *(a1 + 1472) = *(a2 + 72);
    *(a1 + 1456) = v27;
    *(a1 + 1440) = v26;
    *(a1 + 1424) = v25;
    v28 = *(a2 + 88);
    v29 = *(a2 + 104);
    v30 = *(a2 + 120);
    *(a1 + 1536) = *(a2 + 136);
    *(a1 + 1520) = v30;
    *(a1 + 1504) = v29;
    *(a1 + 1488) = v28;
    *(a1 + 1544) = 1;
  }

  return result;
}

uint64_t raven::RavenMovingStateEstimator::Reset(uint64_t this)
{
  *(this + 216) = 0;
  *(this + 4368) = 0;
  *(this + 4376) = 0x7FF8000000000000;
  *(this + 736) = 0;
  *(this + 864) = 0u;
  *(this + 836) = 0u;
  *(this + 852) = 0u;
  *(this + 740) = 0u;
  *(this + 756) = 0u;
  *(this + 769) = 0u;
  *(this + 788) = 0u;
  *(this + 804) = 0u;
  v1 = (this + 332);
  v2 = 288;
  *(this + 817) = 0u;
  do
  {
    *(v1 - 100) = 0;
    *v1 = 0uLL;
    v1[1] = 0uLL;
    *(v1 + 28) = 0uLL;
    *(v1 - 6) = 0uLL;
    *(v1 - 5) = 0uLL;
    *(v1 - 67) = 0uLL;
    *(v1 - 3) = 0uLL;
    *(v1 - 2) = 0uLL;
    *(v1 - 19) = 0uLL;
    v1 += 9;
    v2 -= 144;
  }

  while (v2);
  *(this + 520) = 0;
  *(this + 528) = 0;
  *(this + 656) = 0u;
  *(this + 628) = 0u;
  *(this + 644) = 0u;
  *(this + 532) = 0u;
  *(this + 548) = 0u;
  *(this + 561) = 0u;
  *(this + 580) = 0u;
  *(this + 596) = 0u;
  *(this + 609) = 0u;
  if (*(this + 936) == 1)
  {
    *(this + 936) = 0;
  }

  if (*(this + 1016) == 1)
  {
    *(this + 1016) = 0;
  }

  *(this + 672) = 0;
  *(this + 704) = 0;
  v3 = *(this + 712);
  *(this + 720) = v3;
  *(this + 680) = 0;
  *(this + 688) = xmmword_1D0E7F4A0;
  v4 = *(this + 728) - v3;
  if (v4 < 0x28)
  {
    if (v4 >> 1 <= 0xA)
    {
      v5 = 10;
    }

    else
    {
      v5 = v4 >> 1;
    }

    sub_1D0D2FF2C(this + 712, v5);
  }

  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(this + 720) = v3 + 40;
  *(this + 672) = 1;
  *(this + 1040) = 0;
  if (*(this + 64) == 1)
  {
    *(this + 64) = 0;
  }

  if (*(this + 136) == 1)
  {
    *(this + 136) = 0;
  }

  if (*(this + 208) == 1)
  {
    *(this + 208) = 0;
  }

  if (*(this + 1240) == 1)
  {
    *(this + 1240) = 0;
  }

  if (*(this + 1392) == 1)
  {
    *(this + 1392) = 0;
  }

  if (*(this + 1544) == 1)
  {
    *(this + 1544) = 0;
  }

  if (*(this + 4208) == 1)
  {
    *(this + 4208) = 0;
  }

  return this;
}

void sub_1D0D2FF2C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0D30010(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(&v9, v4);
      if (v4 >= 3)
      {
        v6 = v9;
        v7 = 8;
        v8 = v3 + v1 - v5;
        do
        {
          if (!v6)
          {
            *(*(a1 + 32) + 8 * (v8 % (v4 - 1))) = *(*(a1 + 32) + v7);
            v6 = 1;
          }

          v8 += v3 + v1 - v5;
          v7 += 8;
        }

        while (8 * (v4 - 1) != v7);
      }
    }
  }
}

void sub_1D0D30104(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v13[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }
}

void sub_1D0D3023C(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = 1;
        do
        {
          v10 = &a2[v9];
          if ((a2[v9] & 1) == 0)
          {
            v11 = *(*(a1 + 32) + 8 * v9);
            v12 = v9;
            do
            {
              v12 = (v12 * (v4 + v2 - v6)) % v8;
              v13 = *(a1 + 32);
              v14 = *(v13 + 8 * v12);
              *(v13 + 8 * v12) = v11;
              *v10 = 1;
              v10 = &a2[v12];
              v11 = v14;
            }

            while (!*v10);
          }

          ++v9;
        }

        while (v9 != v8);
      }
    }
  }
}

void *raven::RavenSolutionSelector::Reset(raven::RavenSolutionSelector *this)
{
  sub_1D0D30898(this + 56);
  sub_1D0D30898(this + 2);
  sub_1D0D30898(this + 7);
  sub_1D0D30898(this + 12);
  result = sub_1D0D30898(this + 17);
  *(this + 176) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0xFFF0000000000000;
  if (*(this + 504) == 1)
  {
    *(this + 504) = 0;
  }

  if (*(this + 512) == 1)
  {
    *(this + 512) = 0;
  }

  if (*(this + 208) == 1)
  {
    *(this + 208) = 0;
  }

  *(this + 200) = 0;
  return result;
}

__n128 raven::RavenSolutionSelector::HandleEvent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 208) == 1 && *(a1 + 442) == 1 && *(a2 + 226) == 0 && sub_1D0B7CF88((a2 + 8), (a1 + 224)))
  {
    v5 = *(a1 + 512);
    *(a1 + 520) = *(a2 + 8);
    if ((v5 & 1) == 0)
    {
      *(a1 + 512) = 1;
    }
  }

  if (*(a1 + 208) == 1)
  {
    v6 = *(a2 + 24);
    *(a1 + 224) = *(a2 + 8);
    *(a1 + 240) = v6;
    v7 = *(a2 + 40);
    v8 = *(a2 + 56);
    v9 = *(a2 + 88);
    *(a1 + 288) = *(a2 + 72);
    *(a1 + 304) = v9;
    *(a1 + 256) = v7;
    *(a1 + 272) = v8;
    v10 = *(a2 + 104);
    v11 = *(a2 + 120);
    v12 = *(a2 + 152);
    *(a1 + 352) = *(a2 + 136);
    *(a1 + 368) = v12;
    *(a1 + 320) = v10;
    *(a1 + 336) = v11;
    result = *(a2 + 168);
    v14 = *(a2 + 184);
    v15 = *(a2 + 200);
    *(a1 + 428) = *(a2 + 212);
    *(a1 + 400) = v14;
    *(a1 + 416) = v15;
    *(a1 + 384) = result;
  }

  else
  {
    *(a1 + 216) = &unk_1F4CEF7D8;
    v16 = *(a2 + 24);
    *(a1 + 224) = *(a2 + 8);
    *(a1 + 240) = v16;
    v17 = *(a2 + 40);
    v18 = *(a2 + 56);
    v19 = *(a2 + 88);
    *(a1 + 288) = *(a2 + 72);
    *(a1 + 304) = v19;
    *(a1 + 256) = v17;
    *(a1 + 272) = v18;
    v20 = *(a2 + 104);
    v21 = *(a2 + 120);
    v22 = *(a2 + 152);
    *(a1 + 352) = *(a2 + 136);
    *(a1 + 368) = v22;
    *(a1 + 320) = v20;
    *(a1 + 336) = v21;
    result = *(a2 + 168);
    v23 = *(a2 + 184);
    v24 = *(a2 + 200);
    *(a1 + 428) = *(a2 + 212);
    *(a1 + 400) = v23;
    *(a1 + 416) = v24;
    *(a1 + 384) = result;
    *(a1 + 208) = 1;
  }

  return result;
}

void sub_1D0D3062C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_1D0D30644(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_1D0D30734(a1, prime);
    }
  }
}

void sub_1D0D30734(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1D0C54BE8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_1D0D30898(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t raven::AltitudeChangeChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = *(*a2 + 2512);
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::RavenSignalEnvironmentActiveObject::Configure(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 224) == 1)
  {
    v26 = 12;
    v25 = 2;
    cnprint::CNPrinter::Print(&v26, &v25, "RavenSignalEnvironmentActiveObject::Configure() called more than once", a4, a5, a6, a7, a8, v18);
    *(a1 + 224) = 0;
  }

  v10 = *a2;
  if (*a2)
  {
    if (*(v10 + 33))
    {
      *(a1 + 232) = v10;
      v11 = *(v10 + 3168);
      if (v11 > -1 && ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v11 - 1) < 0xFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      v20 = 12;
      v19 = 4;
      v15 = "RavenSignalEnvironmentActiveObject::Configure() invalid event interval";
      v16 = &v20;
      v17 = &v19;
    }

    else
    {
      v22 = 12;
      v21 = 4;
      v15 = "RavenSignalEnvironmentActiveObject::Configure() called with uninitialized parameters";
      v16 = &v22;
      v17 = &v21;
    }
  }

  else
  {
    v24 = 12;
    v23 = 4;
    v15 = "RavenSignalEnvironmentActiveObject::Configure() called with null pointer";
    v16 = &v24;
    v17 = &v23;
  }

  cnprint::CNPrinter::Print(v16, v17, v15, a4, a5, a6, a7, a8, v18);
  return 0xFFFFFFFFLL;
}

void raven::RavenSignalEnvironmentActiveObject::HandleEvent(raven::RavenSignalEnvironmentActiveObject *this, const raven::SignalEnvironmentEvent *a2)
{
  v4 = (*(*a2 + 16))(a2);
  if (COERCE__INT64(fabs(v10 + v4)) < 0x7FF0000000000000)
  {
    v11 = this + 240;
    if (*(this + 352) != 1)
    {
      goto LABEL_18;
    }

    v12 = (*(*v11 + 16))(this + 240);
    v14 = v13;
    v15 = v13;
    v16 = (*(*a2 + 16))(a2);
    v18.n128_f64[0] = v17;
    if (v12)
    {
      v19 = 1;
    }

    else
    {
      v19 = (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    if (!v19 || (!v16 ? (v20 = (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v20 = 1), !v20 || (v21 = v12 <= v16, v12 == v16)))
    {
      v21 = v15 <= v17;
    }

    if (v21)
    {
LABEL_18:
      if (*(this + 352) == 1)
      {
        v30 = *(a2 + 8);
        v31 = *(a2 + 40);
        *(this + 264) = *(a2 + 24);
        *(this + 280) = v31;
        *(this + 248) = v30;
        v32 = *(a2 + 56);
        v33 = *(a2 + 72);
        v34 = *(a2 + 88);
        *(this + 344) = *(a2 + 104);
        *(this + 312) = v33;
        *(this + 328) = v34;
        *(this + 296) = v32;
      }

      else
      {
        *(this + 30) = &unk_1F4CEF5C8;
        v35 = *(a2 + 8);
        v36 = *(a2 + 40);
        *(this + 264) = *(a2 + 24);
        *(this + 280) = v36;
        *(this + 248) = v35;
        v37 = *(a2 + 56);
        v38 = *(a2 + 72);
        v39 = *(a2 + 88);
        *(this + 344) = *(a2 + 104);
        *(this + 312) = v38;
        *(this + 328) = v39;
        *(this + 296) = v37;
        *(this + 352) = 1;
      }

      v40 = *(this + 29);
      if (*(v40 + 3837) == 1)
      {
        *(this + 344) = *(v40 + 3836);
        v55 = 12;
        v54 = 3;
        sub_1D0B751F4(v52, off_1E83D7D98[*(a2 + 104)]);
        v41 = v53;
        v42 = v52[0];
        sub_1D0B751F4(__p, off_1E83D7D98[*(v40 + 3836)]);
        if (v41 >= 0)
        {
          v48 = v52;
        }

        else
        {
          LOBYTE(v48) = v42;
        }

        cnprint::CNPrinter::Print(&v55, &v54, "WARNING: Overriding input signal environment from %s to %s", v43, v44, v45, v46, v47, v48);
        if (v51 < 0)
        {
          operator delete(__p[0]);
        }

        if (v53 < 0)
        {
          operator delete(v52[0]);
        }
      }
    }

    else
    {
      LOWORD(v52[0]) = 12;
      LOBYTE(__p[0]) = 4;
      v22 = (*(*v11 + 16))(this + 240, v18);
      v24 = v23 + v22;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v52, __p, "Signal environment received out of order,t_curr,%.3lf,t_new,%.3lf", v25, v26, v27, v28, v29, SLOBYTE(v24));
    }
  }

  else
  {
    LOWORD(v52[0]) = 12;
    LOBYTE(__p[0]) = 4;
    cnprint::CNPrinter::Print(v52, __p, "Invalid signal environment time", v5, v6, v7, v8, v9, v49);
  }
}

void sub_1D0D30DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSignalEnvironmentActiveObject::HandleEvent(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 280) == 1 && *(a2 + 200) == 1;
  if (!v2 || *(result + 352) != 1)
  {
    return result;
  }

  v4 = *(a2 + 288);
  v3 = *(a2 + 296);
  v5 = *(a2 + 304);
  v6 = *(result + 344);
  if (v6 != 4)
  {
    if ((v6 - 3) > 1)
    {
      goto LABEL_14;
    }

    v9 = *(result + 440);
    *(result + 416) = v4;
    *(result + 424) = v3;
    *(result + 432) = v5;
    if (v9)
    {
      goto LABEL_14;
    }

    v8 = (result + 440);
    goto LABEL_13;
  }

  v7 = *(result + 408);
  *(result + 384) = v4;
  *(result + 392) = v3;
  *(result + 400) = v5;
  if ((v7 & 1) == 0)
  {
    v8 = (result + 408);
LABEL_13:
    *v8 = 1;
  }

LABEL_14:
  if (*(result + 408) == 1)
  {
    *(result + 464) = sqrt((v4 - *(result + 384)) * (v4 - *(result + 384)) + (v3 - *(result + 392)) * (v3 - *(result + 392)) + (v5 - *(result + 400)) * (v5 - *(result + 400)));
    *(result + 472) = 1;
  }

  else if (*(result + 472) == 1)
  {
    *(result + 472) = 0;
  }

  if (*(result + 440) == 1)
  {
    *(result + 448) = sqrt((v4 - *(result + 416)) * (v4 - *(result + 416)) + (v3 - *(result + 424)) * (v3 - *(result + 424)) + (v5 - *(result + 432)) * (v5 - *(result + 432)));
    *(result + 456) = 1;
  }

  else if (*(result + 456) == 1)
  {
    *(result + 456) = 0;
  }

  return result;
}

void raven::RavenSignalEnvironmentActiveObject::Reset(cnframework::ActiveObjectBase *this)
{
  if (*(this + 352) == 1)
  {
    *(this + 352) = 0;
  }

  if (*(this + 376) == 1)
  {
    *(this + 376) = 0;
  }

  if (*(this + 408) == 1)
  {
    *(this + 408) = 0;
  }

  if (*(this + 440) == 1)
  {
    *(this + 440) = 0;
  }

  if (*(this + 456) == 1)
  {
    *(this + 456) = 0;
  }

  if (*(this + 472) == 1)
  {
    *(this + 472) = 0;
  }

  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0D30F90(raven::RavenCoarseOdometerActiveObject *a1)
{
  *a1 = &unk_1F4CDF508;
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D31014(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CDF5E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenRayTracingActiveObject::RavenRayTracingActiveObject(uint64_t a1)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *a1 = &unk_1F4CEE6A8;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  raven::RavenNLOSEngine::RavenNLOSEngine((a1 + 240));
}

uint64_t raven::RavenRayTracingActiveObject::Configure(int64x2_t *this, uint64_t *a2)
{
  if (this[14].i8[0] == 1)
  {
    LOWORD(v41) = 12;
    LOBYTE(v40) = 3;
    sub_1D0B751F4(__p, "RavenRayTracingActiveObject");
    if (v43 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(&v41, &v40, "#ray,Warning: %s configured more than once.", v4, v5, v6, v7, v8, v9);
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }
  }

  this[14].i8[0] = 0;
  v10 = *a2;
  if (*a2 && (*(v10 + 33) & 1) != 0)
  {
    this[14].i64[1] = v10;
    cnframework::ActiveObjectBase::SetEventQueueDelay(this, 0.0);
    v41 = *a2;
    raven::RavenNLOSEngine::Configure(this[15].i64, &v41, v11, v12, v13, v14, v15, v16);
    if (v17)
    {
      v18 = v17;
      v40 = 12;
      v39 = 4;
      sub_1D0B751F4(__p, "RavenRayTracingActiveObject");
      if (v43 >= 0)
      {
        v24 = __p;
      }

      else
      {
        LOBYTE(v24) = __p[0];
      }

      cnprint::CNPrinter::Print(&v40, &v39, "#ray,%s could not be configured: NLOS engine configuration result %d", v19, v20, v21, v22, v23, v24);
      if (v43 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      this[14].i8[0] = 1;
      raven::RavenRayTracingActiveObject::Reset(this);
      if (cnprint::CNPrinter::GetLogLevel(v32) <= 1)
      {
        LOWORD(v41) = 12;
        LOBYTE(v40) = 1;
        sub_1D0B751F4(__p, "RavenRayTracingActiveObject");
        if (v43 >= 0)
        {
          v38 = __p;
        }

        else
        {
          LOBYTE(v38) = __p[0];
        }

        cnprint::CNPrinter::Print(&v41, &v40, "#ray,%s configured successfully.", v33, v34, v35, v36, v37, v38);
        if (v43 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return 0;
    }
  }

  else
  {
    LOWORD(v41) = 12;
    LOBYTE(v40) = 4;
    sub_1D0B751F4(__p, "RavenRayTracingActiveObject");
    if (v43 >= 0)
    {
      v30 = __p;
    }

    else
    {
      LOBYTE(v30) = __p[0];
    }

    cnprint::CNPrinter::Print(&v41, &v40, "#ray,%s could not be configured: invalid RavenParameters", v25, v26, v27, v28, v29, v30);
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  return v18;
}

void sub_1D0D313D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenRayTracingActiveObject::Reset(int64x2_t *this)
{
  v11 = 12;
  v10 = 2;
  sub_1D0B751F4(__p, "RavenRayTracingActiveObject");
  if (v9 >= 0)
  {
    v7 = __p;
  }

  else
  {
    LOBYTE(v7) = __p[0];
  }

  cnprint::CNPrinter::Print(&v11, &v10, "#ray,resetting %s", v2, v3, v4, v5, v6, v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  raven::RavenNLOSEngine::Reset(this + 15);
  this[8].i8[0] = 0;
  this[8].i64[1] = 0;
  this[9].i64[0] = 0x7FF8000000000000;
  this[9].i64[1] = 0;
  this[6].i8[9] = 0;
  this[7].i64[0] = 0;
  this[7].i64[1] = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0D314C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenRayTracingActiveObject::HandleEvent(raven::RavenRayTracingActiveObject *this, const raven::ActivityStateEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 248) == 1)
    {
      if (*(this + 696) == 1)
      {
        v3 = *(a2 + 8);
        v4 = *(a2 + 24);
        v5 = *(a2 + 56);
        *(this + 34) = *(a2 + 40);
        *(this + 35) = v5;
        *(this + 32) = v3;
        *(this + 33) = v4;
        v6 = *(a2 + 72);
        v7 = *(a2 + 88);
        v8 = *(a2 + 120);
        *(this + 38) = *(a2 + 104);
        *(this + 39) = v8;
        *(this + 36) = v6;
        *(this + 37) = v7;
        result = *(a2 + 136);
        v10 = *(a2 + 152);
        v11 = *(a2 + 168);
        *(this + 86) = *(a2 + 23);
        *(this + 41) = v10;
        *(this + 42) = v11;
        *(this + 40) = result;
      }

      else
      {
        *(this + 63) = &unk_1F4CEF688;
        v19 = *(a2 + 8);
        v20 = *(a2 + 24);
        v21 = *(a2 + 56);
        *(this + 34) = *(a2 + 40);
        *(this + 35) = v21;
        *(this + 32) = v19;
        *(this + 33) = v20;
        v22 = *(a2 + 72);
        v23 = *(a2 + 88);
        v24 = *(a2 + 120);
        *(this + 38) = *(a2 + 104);
        *(this + 39) = v24;
        *(this + 36) = v22;
        *(this + 37) = v23;
        result = *(a2 + 136);
        v25 = *(a2 + 152);
        v26 = *(a2 + 168);
        *(this + 86) = *(a2 + 23);
        *(this + 41) = v25;
        *(this + 42) = v26;
        *(this + 40) = result;
        *(this + 696) = 1;
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v29 = 12;
    v28 = 1;
    v12 = (*(*a2 + 16))(a2);
    v27 = v13 + v12;
    cnprint::CNPrinter::Print(&v29, &v28, "#ray,time,%.3lf,not configured", v14, v15, v16, v17, v18, SLOBYTE(v27));
  }

  return result;
}

double raven::RavenRayTracingActiveObject::HandleEvent(raven::RavenRayTracingActiveObject *this, const raven::GEOMapBuildingDataEvent *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 224))
  {
    v9 = (this + 240);

    raven::RavenNLOSEngine::HandleEvent(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v20 = 12;
    v19 = 1;
    v11 = (*(*a2 + 16))(a2);
    v18 = v12 + v11;
    cnprint::CNPrinter::Print(&v20, &v19, "#ray,time,%.3lf,not configured", v13, v14, v15, v16, v17, SLOBYTE(v18));
  }

  return result;
}

double raven::RavenRayTracingActiveObject::HandleEvent(raven::RavenRayTracingActiveObject *this, const raven::GnssPreprocessedMeasurementsEvent *a2)
{
  if (*(this + 224))
  {
    v14 = &unk_1F4CEF598;
    v17 = *(a2 + 40);
    v18 = *(a2 + 56);
    v19 = *(a2 + 72);
    v15 = *(a2 + 8);
    v16 = *(a2 + 24);
    v4 = *(a2 + 12);
    v20 = *(a2 + 11);
    memset(v21, 0, sizeof(v21));
    sub_1D0BBD5A4(v21, v4, *(a2 + 13), (*(a2 + 13) - v4) >> 4);
    raven::RavenNLOSEngine::HandleEvent((this + 240), &v14);
    sub_1D0C4499C();
  }

  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    LOWORD(v14) = 12;
    LOBYTE(v22) = 1;
    v6 = (*(*a2 + 16))(a2);
    v13 = v7 + v6;
    cnprint::CNPrinter::Print(&v14, &v22, "#ray,time,%.3lf,not configured", v8, v9, v10, v11, v12, SLOBYTE(v13));
  }

  return result;
}

void sub_1D0D31854(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_1D0BBBD80((v2 - 40));
  _Unwind_Resume(a1);
}

double raven::RavenRayTracingActiveObject::HandleEvent(raven::RavenRayTracingActiveObject *this, const raven::RavenSolutionEvent *a2)
{
  if (*(this + 224))
  {
    v3 = this + 240;

    raven::RavenNLOSEngine::HandleEvent(v3, a2);
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v14 = 12;
    v13 = 1;
    v5 = (*(*a2 + 16))(a2);
    v12 = v6 + v5;
    cnprint::CNPrinter::Print(&v14, &v13, "#ray,time,%.3lf,not configured", v7, v8, v9, v10, v11, SLOBYTE(v12));
  }

  return result;
}

void raven::RavenRayTracingActiveObject::HandleEvent(int64x2_t *this, const raven::RavenSystemEvent *a2)
{
  if (!*(a2 + 26))
  {
    raven::RavenRayTracingActiveObject::Reset(this);
  }
}

double raven::RavenRayTracingActiveObject::HandleEvent(raven::RavenRayTracingActiveObject *this, const raven::RayTracingTileEvent *a2)
{
  if (*(this + 224))
  {
    v3 = (this + 240);

    raven::RavenNLOSEngine::HandleEvent(v3, a2);
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v14 = 12;
    v13 = 1;
    v5 = (*(*a2 + 16))(a2);
    v12 = v6 + v5;
    cnprint::CNPrinter::Print(&v14, &v13, "#ray,time,%.3lf,not configured", v7, v8, v9, v10, v11, SLOBYTE(v12));
  }

  return result;
}

__n128 raven::RavenRayTracingActiveObject::HandleEvent(raven::RavenRayTracingActiveObject *this, const raven::SignalEnvironmentEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 248) == 1)
    {
      if (*(this + 3480) == 1)
      {
        v3 = *(a2 + 8);
        v4 = *(a2 + 24);
        *(this + 213) = *(a2 + 40);
        *(this + 212) = v4;
        *(this + 211) = v3;
        result = *(a2 + 56);
        v6 = *(a2 + 72);
        v7 = *(a2 + 88);
        *(this + 3472) = *(a2 + 104);
        *(this + 216) = v7;
        *(this + 215) = v6;
        *(this + 214) = result;
      }

      else
      {
        *(this + 421) = &unk_1F4CEF5C8;
        v15 = *(a2 + 8);
        v16 = *(a2 + 24);
        *(this + 213) = *(a2 + 40);
        *(this + 212) = v16;
        *(this + 211) = v15;
        result = *(a2 + 56);
        v17 = *(a2 + 72);
        v18 = *(a2 + 88);
        *(this + 3472) = *(a2 + 104);
        *(this + 216) = v18;
        *(this + 215) = v17;
        *(this + 214) = result;
        *(this + 3480) = 1;
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v21 = 12;
    v20 = 1;
    v8 = (*(*a2 + 16))(a2);
    v19 = v9 + v8;
    cnprint::CNPrinter::Print(&v21, &v20, "#ray,time,%.3lf,not configured", v10, v11, v12, v13, v14, SLOBYTE(v19));
  }

  return result;
}

uint64_t sub_1D0D31B68(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEF598;
  v3 = (a1 + 104);
  sub_1D0BBBD80(&v3);
  return a1;
}

uint64_t raven::OdometerChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 24) = *(*a2 + 2512);
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::OdometerChecker::HandleEvent(raven::OdometerChecker *this, const raven::OdometerEvent *a2, raven::OdometerEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v51[0]) = 12;
    v52 = 4;
    v38 = (*(*a2 + 16))(a2, a2, a3);
    v50 = v39 + v38;
    cnprint::CNPrinter::Print(v51, &v52, "t,%.3lf,OdometerChecker, not configured", v40, v41, v42, v43, v44, SLOBYTE(v50));
    return 0xFFFFFFFFLL;
  }

  v4 = *(a2 + 25);
  v5 = (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v6 = v4 < 0.0 && ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v4 >= 0.0)
  {
    v5 = 0;
  }

  v7 = (*&v4 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v5;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v7 = 1;
  }

  if ((v7 | v6))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 26);
  v9 = v8 < 0 || ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v9 && (v8 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  v51[0] = (*(*a2 + 16))(a2);
  v51[1] = v13;
  v17 = CNTimeSpan::operator-(v51, a2 + 13, v14, v15);
  v18 = v16 + v17;
  v19 = (COERCE__INT64(fabs(v16 + v17)) - 0x10000000000000) >> 53;
  v20 = COERCE__INT64(v16 + v17) < 0 || v19 > 0x3FE;
  if (v20 && (COERCE__INT64(v16 + v17) - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + 8) = *(a2 + 8);
  v22 = *(a2 + 24);
  v23 = *(a2 + 40);
  v24 = *(a2 + 56);
  *(a3 + 72) = *(a2 + 72);
  *(a3 + 56) = v24;
  *(a3 + 40) = v23;
  *(a3 + 24) = v22;
  v25 = *(a2 + 88);
  v26 = *(a2 + 104);
  v27 = *(a2 + 120);
  *(a3 + 136) = *(a2 + 136);
  *(a3 + 120) = v27;
  *(a3 + 104) = v26;
  *(a3 + 88) = v25;
  v28 = *(a2 + 152);
  v29 = *(a2 + 168);
  v30 = *(a2 + 184);
  *(a3 + 200) = *(a2 + 200);
  *(a3 + 184) = v30;
  *(a3 + 168) = v29;
  *(a3 + 152) = v28;
  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0E7F7D2);
  if (result)
  {
    v32 = *(a2 + 26);
    v33 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0E7F7D2);
    if (!v33 || (v34 = *(v33 + 1368), (v35 = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0E7F7D2)) == 0))
    {
      sub_1D0C543A8("unordered_map::at: key not found");
    }

    if (v34)
    {
      v36 = *(v35 + 172);
      v37 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F7D2) + 173);
      return (((fabs(vabdd_f64(v4 / v18, v36) / sqrt(v37 + v32 / v18 * (v32 / v18))) > *(this + 3)) | ~*(this + 8)) << 31 >> 31);
    }

    if (*(v35 + 1568) == 1)
    {
      v45 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F7D2) + 194);
      v46 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F7D2) + 195);
      v47 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F7D2);
      v36 = sqrt(v46 * v46 + v45 * v45 + *(v47 + 196) * *(v47 + 196));
      v48 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F7D2) + 197);
      v49 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F7D2) + 200);
      v37 = v48 + v49 + *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E7F7D2) + 202);
      return (((fabs(vabdd_f64(v4 / v18, v36) / sqrt(v37 + v32 / v18 * (v32 / v18))) > *(this + 3)) | ~*(this + 8)) << 31 >> 31);
    }

    return 0;
  }

  return result;
}

uint64_t raven::GNSSUncertaintyScaling::KarooGNSSUncertaintyWrapper::Instance(raven::GNSSUncertaintyScaling::KarooGNSSUncertaintyWrapper *this)
{
  result = qword_1EC5FBBD0;
  if (!qword_1EC5FBBD0)
  {
    operator new();
  }

  return result;
}

uint64_t raven::GNSSUncertaintyScaling::KarooGNSSUncertaintyWrapper::GetUncertaintyScaleFactorCore(cnprint::CNPrinter *a1, _DWORD *a2, unsigned __int8 *a3, _BYTE *a4, _BYTE *a5, uint64_t *a6, uint64_t a7, uint64_t a8, float a9)
{
  if (!a8)
  {
    v11 = *a4;
    if (v11 <= 6)
    {
      if (((1 << v11) & 0x26) != 0)
      {
        v14 = *a5;
        if (v14 < 0xA)
        {
          v10 = qword_1D0E7FDD0[v14];
LABEL_14:
          v9 = 0x100000000;
          return v10 | v9;
        }

LABEL_59:
        v9 = 0x100000000;
        v10 = 1065353216;
        return v10 | v9;
      }

      if (((1 << v11) & 0x18) != 0)
      {
        v12 = *a3;
        if (v12 <= 0xA)
        {
          if (((1 << v12) & 0x1F6) != 0)
          {
            if (*a5 != 5 || (*a2 - 2) > 2)
            {
              goto LABEL_59;
            }

            v13 = qword_1EE053990;
            if (!qword_1EE053990)
            {
              operator new();
            }

LABEL_54:
            v24 = *a6;
            if (*a6 >= 0xC)
            {
              v29 = 12;
              v28 = 5;
              cnprint::CNPrinter::Print(&v29, &v28, "Out of range indices.first,%zu", a4, a5, a6, a7, a8, v24);
            }

            else
            {
              v25 = a6[1];
              if (v25 < 0xB)
              {
                LOBYTE(a9) = *(v13 + 11 * v24 + v25);
                v10 = COERCE_UNSIGNED_INT(*(v13 + 132) * LODWORD(a9));
                goto LABEL_14;
              }

              v29 = 12;
              v28 = 5;
              cnprint::CNPrinter::Print(&v29, &v28, "Out of range indices.second,%zu", a4, a5, a6, a7, a8, v25);
            }

            goto LABEL_59;
          }

          if (((1 << v12) & 0x601) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_35;
        }

        goto LABEL_28;
      }

      if (v11 == 6)
      {
        v15 = *a3;
        if (v15 <= 0xA)
        {
          if (((1 << v15) & 0x1F6) != 0)
          {
            v16 = *a5;
            if ((v16 - 2) < 2 || v16 == 6)
            {
              if (*a2 == 1)
              {
                v13 = qword_1EE0539C8;
                if (!qword_1EE0539C8)
                {
                  operator new();
                }
              }

              else
              {
                v13 = qword_1EE0539D0;
                if (!qword_1EE0539D0)
                {
                  operator new();
                }
              }
            }

            else
            {
              if (v16 != 5)
              {
                goto LABEL_59;
              }

              if (*a2 == 1)
              {
                v13 = qword_1EE0539B8;
                if (!qword_1EE0539B8)
                {
                  operator new();
                }
              }

              else
              {
                v13 = qword_1EE0539C0;
                if (!qword_1EE0539C0)
                {
                  operator new();
                }
              }
            }

            goto LABEL_54;
          }

          if (((1 << v15) & 0x601) == 0)
          {
            v23 = *a5;
            if ((v23 - 2) < 2 || v23 == 6)
            {
              if (*a2 == 1)
              {
                v13 = qword_1EE0539A8;
                if (!qword_1EE0539A8)
                {
                  operator new();
                }
              }

              else
              {
                v13 = qword_1EE0539B0;
                if (!qword_1EE0539B0)
                {
                  operator new();
                }
              }
            }

            else
            {
              if (v23 != 5)
              {
                goto LABEL_59;
              }

              if (*a2 == 1)
              {
                v13 = qword_1EE053998;
                if (!qword_1EE053998)
                {
                  operator new();
                }
              }

              else
              {
                v13 = qword_1EE0539A0;
                if (!qword_1EE0539A0)
                {
                  operator new();
                }
              }
            }

            goto LABEL_54;
          }

LABEL_35:
          v29 = 12;
          v28 = 4;
          cnprint::CNPrinter::Print(&v29, &v28, "%s Invalid GNSS band,%d", a4, a5, a6, a7, a8, "GetUncertaintyScaleFactorCore");
          goto LABEL_59;
        }

LABEL_28:
        v29 = 12;
        v28 = 4;
        v27 = *a5;
        cnprint::CNPrinter::Print(&v29, &v28, "GNSS uncertainty parameters not found,obs_type,%d,band,%d,se,%d,activity,%d", a4, a5, a6, a7, a8, *a2);
        goto LABEL_59;
      }
    }

    if (!*a4)
    {
      if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
      {
        v29 = 12;
        v28 = 1;
        cnprint::CNPrinter::Print(&v29, &v28, "%s signal environment unknown", v17, v18, v19, v20, v21, "GetUncertaintyScaleFactorCore");
      }

      goto LABEL_59;
    }

    v22 = *a3;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = 0;
  return v10 | v9;
}

uint64_t raven::GNSSUncertaintyScaling::KarooGNSSUncertaintyWrapper::GetScaleFactorTableIndices(float a1, double a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = 0;
  v13 = 44;
  while (flt_1D0E7F848[v12] < a1)
  {
    ++v12;
    v13 -= 4;
    if (!v13)
    {
      v12 = 11;
      break;
    }
  }

  v14 = 0;
  v15 = 80;
  while (dbl_1D0E7F878[v14] < a2)
  {
    ++v14;
    v15 -= 8;
    if (!v15)
    {
      v14 = 10;
      break;
    }
  }

  v22 = v10;
  v23 = v11;
  v16 = v12 >= 0xC || v14 >= 0xB;
  v17 = !v16;
  if (v16)
  {
    v21 = 12;
    v20 = 5;
    v18 = a1;
    cnprint::CNPrinter::Print(&v21, &v20, "invalid index found,cn0,%.3f,cn0_bin,%zu,elev,%.3lf,elev_bin,%zu,", a6, a7, a8, a9, a10, SLOBYTE(v18));
  }

  else
  {
    *a4 = v12;
    a4[1] = v14;
  }

  return v17;
}

uint64_t raven::GNSSUncertaintyScaling::Fire6orOlderGNSSUncertaintyWrapper::Instance(raven::GNSSUncertaintyScaling::Fire6orOlderGNSSUncertaintyWrapper *this)
{
  result = qword_1EC5FBD70;
  if (!qword_1EC5FBD70)
  {
    operator new();
  }

  return result;
}

uint64_t raven::GNSSUncertaintyScaling::Fire6orOlderGNSSUncertaintyWrapper::GetUncertaintyScaleFactorCore(uint64_t a1, int *a2, _BYTE *a3, unsigned __int8 *a4, char *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (!a8)
  {
    v14 = *a4;
    if (v14 > 6)
    {
      v20 = 0;
      v19 = 0;
      v18 = 0;
    }

    else
    {
      v15 = 1 << v14;
      if ((v15 & 0x27) != 0)
      {
        v16 = *a5;
        if (v16 > 6 || ((1 << v16) & 0x4C) == 0)
        {
          v18 = qword_1EE0539F0;
          if (!qword_1EE0539F0)
          {
            operator new();
          }

          v19 = qword_1EE0539F8;
          if (!qword_1EE0539F8)
          {
            operator new();
          }

          v20 = qword_1EE053A00;
          if (!qword_1EE053A00)
          {
            operator new();
          }
        }

        else
        {
          v18 = qword_1EE0539D8;
          if (!qword_1EE0539D8)
          {
            operator new();
          }

          v19 = qword_1EE0539E0;
          if (!qword_1EE0539E0)
          {
            operator new();
          }

          v20 = qword_1EE0539E8;
          if (!qword_1EE0539E8)
          {
            operator new();
          }
        }
      }

      else if ((v15 & 0x18) != 0)
      {
        v21 = *a5;
        if (v21 <= 6 && ((1 << v21) & 0x4C) != 0)
        {
          v18 = qword_1EE053A08;
          if (!qword_1EE053A08)
          {
            operator new();
          }

          v19 = qword_1EE053A10;
          if (!qword_1EE053A10)
          {
            operator new();
          }

          v20 = qword_1EE053A18;
          if (!qword_1EE053A18)
          {
            operator new();
          }
        }

        else
        {
          v18 = qword_1EE053A20;
          if (!qword_1EE053A20)
          {
            operator new();
          }

          v19 = qword_1EE053A28;
          if (!qword_1EE053A28)
          {
            operator new();
          }

          v20 = qword_1EE053A30;
          if (!qword_1EE053A30)
          {
            operator new();
          }
        }
      }

      else
      {
        v22 = *a5;
        if (v22 <= 6 && ((1 << v22) & 0x4C) != 0)
        {
          v18 = qword_1EE053A38;
          if (!qword_1EE053A38)
          {
            operator new();
          }

          v19 = qword_1EE053A40;
          if (!qword_1EE053A40)
          {
            operator new();
          }

          v20 = qword_1EE053A48;
          if (!qword_1EE053A48)
          {
            operator new();
          }
        }

        else
        {
          v18 = qword_1EE053A50;
          if (!qword_1EE053A50)
          {
            operator new();
          }

          v19 = qword_1EE053A58;
          if (!qword_1EE053A58)
          {
            operator new();
          }

          v20 = qword_1EE053A60;
          if (!qword_1EE053A60)
          {
            operator new();
          }
        }
      }
    }

    v23 = *a3;
    if (v23 <= 0xA)
    {
      if (((1 << v23) & 0x544) != 0)
      {
        v9 = 1.0;
        if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
        {
          v52 = 12;
          v51 = 1;
          v47 = *a4;
          v49 = *a5;
          v42 = *a3;
          cnprint::CNPrinter::Print(&v52, &v51, "Invalid GNSS Band type: GNSS uncertainty parameters not found for obs_type,%d,band,%d,se,%d,activity,%d", v24, v25, v26, v27, v28, *a2);
        }

        goto LABEL_82;
      }

      if (((1 << v23) & 0x210) != 0)
      {
        goto LABEL_68;
      }

      if (v23 == 3)
      {
        v29 = 1;
        goto LABEL_62;
      }
    }

    if (*a3)
    {
      if (v23 == 1)
      {
        v29 = 2;
      }

      else
      {
        v29 = 0;
      }

LABEL_62:
      v30 = *a2;
      if ((*a2 - 3) < 2)
      {
        if (!v20)
        {
          v52 = 12;
          v51 = 5;
          v44 = *a4;
          cnprint::CNPrinter::Print(&v52, &v51, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
          v9 = 2.0;
          goto LABEL_82;
        }

        v35 = (v20 + 116 * v29);
        v33 = v35[28];
        v36 = *a6;
        v37 = a6[1];
        v38 = *(&v35[4 * *a6] + v37);
        if (v38)
        {
          v34 = v38;
          goto LABEL_81;
        }

        if (!v19)
        {
LABEL_84:
          v8 = 0x100000000;
          v9 = v33 / 0.01;
          return v8 | LODWORD(v9);
        }

        v39 = v19 + 116 * v29;
      }

      else
      {
        if (v30 != 2)
        {
          if (v30 == 1)
          {
            if (v18)
            {
              v31 = v18 + 116 * v29;
              v32 = a6[1];
              if (*(v31 + 16 * *a6 + v32))
              {
                v33 = *(v31 + 112);
                v34 = *(v31 + 16 * *a6 + v32);
LABEL_81:
                v9 = v33 * v34;
                goto LABEL_82;
              }
            }

            else
            {
              v52 = 12;
              v51 = 5;
              v45 = *a4;
              cnprint::CNPrinter::Print(&v52, &v51, "Invalid range unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
            }
          }

          else
          {
            v52 = 12;
            v51 = 5;
            v43 = *a4;
            cnprint::CNPrinter::Print(&v52, &v51, "Invalid obs type - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
          }

          goto LABEL_69;
        }

        if (!v19)
        {
          v52 = 12;
          v51 = 5;
          v46 = *a4;
          cnprint::CNPrinter::Print(&v52, &v51, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hu, band_as_int = %d", a4, a5, a6, a7, a8, *a5);
          v9 = 4.0;
          goto LABEL_82;
        }

        v39 = v19 + 116 * v29;
        v33 = *(v39 + 112);
        v36 = *a6;
        v37 = a6[1];
      }

      v40 = *(v39 + 16 * v36 + v37);
      if (v40)
      {
        v34 = v40;
        goto LABEL_81;
      }

      goto LABEL_84;
    }

LABEL_68:
    v52 = 12;
    v51 = 4;
    v48 = *a4;
    v50 = *a5;
    cnprint::CNPrinter::Print(&v52, &v51, "Invalid GNSS Band type: GNSS uncertainty parameters not found for obs_type,%d,band,%d,se,%d,activity,%d", a4, a5, a6, a7, a8, *a2);
LABEL_69:
    v9 = 1.0;
LABEL_82:
    v8 = 0x100000000;
    return v8 | LODWORD(v9);
  }

  v8 = 0;
  v9 = 0.0;
  return v8 | LODWORD(v9);
}

uint64_t raven::GNSSUncertaintyScaling::Fire6orOlderGNSSUncertaintyWrapper::GetScaleFactorTableIndices(float a1, double a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = 0;
  v13 = 24;
  while (flt_1D0E7FE28[v12] < a1)
  {
    ++v12;
    v13 -= 4;
    if (!v13)
    {
      v12 = 6;
      break;
    }
  }

  v14 = 0;
  v15 = 120;
  while (dbl_1D0E7FE40[v14] < a2)
  {
    ++v14;
    v15 -= 8;
    if (!v15)
    {
      v14 = 15;
      break;
    }
  }

  v22 = v10;
  v23 = v11;
  v16 = v12 >= 7 || v14 >= 0x10;
  v17 = !v16;
  if (v16)
  {
    v21 = 12;
    v20 = 5;
    v18 = a1;
    cnprint::CNPrinter::Print(&v21, &v20, "invalid index found,cn0,%.3f,cn0_bin,%zu,elev,%.3lf,elev_bin,%zu,", a6, a7, a8, a9, a10, SLOBYTE(v18));
  }

  else
  {
    *a4 = v12;
    a4[1] = v14;
  }

  return v17;
}

uint64_t raven::AccessoryVehicleSpeedChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::AccessoryVehicleSpeedChecker::ScreenWithEstimatorSpeed(uint64_t a1, void *a2, unsigned __int8 a3, double a4)
{
  v29 = a3;
  v7 = sub_1D0B9AF58((*(a1 + 16) + 16), &v29);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (*(v7 + 233) != 2)
  {
    return 0;
  }

  if (*(v7 + 1368) != 1)
  {
    return 0;
  }

  v9 = *(a2[30] - 8);
  v28[0] = (*(*a2 + 16))(a2);
  v28[1] = v10;
  v13 = CNTimeSpan::operator-(v8 + 149, v28, v11, v12);
  if (v14 + v13 >= 2.0)
  {
    return 0;
  }

  result = 0;
  v16 = *(v8 + 172);
  if (v16 >= 0.0)
  {
    v17 = sqrt(*(v8 + 176));
    if (v17 > 0.0)
    {
      if (vabdd_f64(v9, v16) <= v17 * a4)
      {
        return 1;
      }

      ++*(a1 + 24);
      if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
      {
        LOWORD(v28[0]) = 12;
        v27 = 1;
        v18 = (*(*a2 + 16))(a2);
        v20 = v19 + v18;
        v26 = *(a1 + 24);
        cnprint::CNPrinter::Print(v28, &v27, "t,%.2lf,AccessoryVehicleSpeedChecker,rejected,%d,estimated speed error check failed,speed,%.2lf,estimatedUserSpeed,%.2lf,estimatedUnc,%.2lf,threshold,%.2lf,threshold_scale,%.2lf", v21, v22, v23, v24, v25, SLOBYTE(v20));
      }

      return 0;
    }
  }

  return result;
}

uint64_t raven::AccessoryVehicleSpeedChecker::HandleEvent(raven::AccessoryVehicleSpeedChecker *this, const raven::AccessoryVehicleSpeedEvent *a2, raven::AccessoryVehicleSpeedEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    v89 = 12;
    v88 = 4;
    v44 = (*(*a2 + 16))(a2, a2, a3);
    v76 = v45 + v44;
    cnprint::CNPrinter::Print(&v89, &v88, "t,%.3lf,AccessoryVehicleSpeedChecker, not configured", v46, v47, v48, v49, v50, SLOBYTE(v76));
    return 0xFFFFFFFFLL;
  }

  v4 = *(a2 + 51);
  if (v4 != (*(a2 + 30) - *(a2 + 29)) >> 3 || v4 != (*(a2 + 27) - *(a2 + 26)) >> 3)
  {
    v89 = 12;
    v88 = 4;
    v37 = (*(*a2 + 16))(a2);
    v86 = (*(a2 + 30) - *(a2 + 29)) >> 3;
    v87 = (*(a2 + 27) - *(a2 + 26)) >> 3;
    v81 = *(a2 + 51);
    v75 = v38 + v37;
    cnprint::CNPrinter::Print(&v89, &v88, "t,%.3lf,AccessoryVehicleSpeedChecker, Assistance rejected due to inconsistent vector size,sampleCount,%u,speedVector,%zu,timeVector,%zu", v39, v40, v41, v42, v43, SLOBYTE(v75));
    return 0xFFFFFFFFLL;
  }

  *(a3 + 8) = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  v9 = *(a2 + 56);
  *(a3 + 72) = *(a2 + 72);
  *(a3 + 56) = v9;
  *(a3 + 40) = v8;
  *(a3 + 24) = v7;
  v10 = *(a2 + 88);
  v11 = *(a2 + 104);
  v12 = *(a2 + 120);
  *(a3 + 136) = *(a2 + 136);
  *(a3 + 120) = v12;
  *(a3 + 104) = v11;
  *(a3 + 88) = v10;
  v13 = *(a2 + 152);
  v14 = *(a2 + 168);
  v15 = *(a2 + 184);
  *(a3 + 25) = *(a2 + 25);
  *(a3 + 184) = v15;
  *(a3 + 168) = v14;
  *(a3 + 152) = v13;
  if (a3 != a2)
  {
    sub_1D0D340CC(a3 + 26, *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 3);
    sub_1D0D340CC(a3 + 29, *(a2 + 29), *(a2 + 30), (*(a2 + 30) - *(a2 + 29)) >> 3);
  }

  *(a3 + 128) = *(a2 + 128);
  v16 = *(a2 + 51);
  if (v16)
  {
    v17 = 0;
    v18 = *(a2 + 29);
    v19 = 8 * v16;
    do
    {
      v20 = *(v18 + v17);
      v21 = v20 & 0x7FFFFFFFFFFFFFFFLL;
      v22 = (v20 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v23 = v20 < 0;
      v24 = v20 < 0 && ((v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (!v23)
      {
        v22 = 0;
      }

      v25 = v21 <= 0x7FF0000000000000;
      v26 = v21 == 0x7FF0000000000000 || v22;
      if (!v25)
      {
        v26 = 1;
      }

      if ((v26 | v24) == 1)
      {
        v89 = 12;
        v88 = 4;
        v51 = (*(*a2 + 16))(a2);
        v77 = v52 + v51;
        v82 = *(*(a2 + 29) + v17);
        cnprint::CNPrinter::Print(&v89, &v88, "t,%.3lf,AccessoryVehicleSpeedChecker, Assistance rejected due to over max speed, %.3lf", v53, v54, v55, v56, v57, SLOBYTE(v77));
        goto LABEL_35;
      }

      if (*(v18 + v17) >= 40.0)
      {
        v89 = 12;
        v88 = 4;
        v58 = (*(*a2 + 16))(a2);
        v78 = v59 + v58;
        v83 = *(*(a2 + 29) + v17);
        cnprint::CNPrinter::Print(&v89, &v88, "t,%.3lf,AccessoryVehicleSpeedChecker, Assistance not used due to speed,%.3lf,over max speed", v60, v61, v62, v63, v64, SLOBYTE(v78));
        goto LABEL_35;
      }

      if ((*(*(a2 + 26) + v17) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v89 = 12;
        v88 = 4;
        v65 = (*(*a2 + 16))(a2);
        v79 = v66 + v65;
        v84 = *(*(a2 + 26) + v17);
        cnprint::CNPrinter::Print(&v89, &v88, "t,%.3lf,AccessoryVehicleSpeedChecker, Assistance rejected due to invalid time offset, %.3lf", v67, v68, v69, v70, v71, SLOBYTE(v79));
        goto LABEL_35;
      }

      v17 += 8;
    }

    while (v19 != v17);
    if (raven::AccessoryVehicleSpeedChecker::ScreenWithEstimatorSpeed(this, a2, 4u, 1.5))
    {
      v27 = raven::AccessoryVehicleSpeedChecker::ScreenWithEstimatorSpeed(this, a2, 1u, 2.5);
      if (v27)
      {
        v28 = *(this + 6);
        if (v28 < 1)
        {
          return 0;
        }

        *(this + 6) = v28 - (*(*(a2 + 30) - 8) > 0.05);
        if (cnprint::CNPrinter::GetLogLevel(v27) <= 1)
        {
          v89 = 12;
          v88 = 1;
          v29 = (*(*a2 + 16))(a2);
          v85 = *(*(a2 + 30) - 8);
          v80 = *(this + 6);
          v74 = v30 + v29;
          cnprint::CNPrinter::Print(&v89, &v88, "t,%.2lf,AccessoryVehicleSpeedChecker,rejectionCount,%d,speed,%.3lf", v31, v32, v33, v34, v35, SLOBYTE(v74));
        }

        if (!*(this + 6))
        {
          return 0;
        }
      }
    }
  }

LABEL_35:
  v72 = *(a3 + 26);
  *(a3 + 51) = 0;
  if (v72)
  {
    *(a3 + 27) = v72;
    operator delete(v72);
  }

  v73 = *(a3 + 29);
  *(a3 + 26) = 0;
  *(a3 + 27) = 0;
  *(a3 + 28) = 0;
  if (v73)
  {
    *(a3 + 30) = v73;
    operator delete(v73);
  }

  result = 0;
  *(a3 + 29) = 0;
  *(a3 + 30) = 0;
  *(a3 + 31) = 0;
  return result;
}

void *sub_1D0D340CC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1D0C39994(v6, v10);
    }

    sub_1D0C5663C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupActivityStateProbabilityGivenOutdoor(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (v9 < 0xB)
  {
    v10 = *a3;
    if (v10 < 8)
    {
      result = 0;
      v12 = dbl_1D0E82D60[v9] * dbl_1D0E82DB0[2 * v10 + 1];
      goto LABEL_7;
    }

    v14 = 12;
    v13 = 4;
    cnprint::CNPrinter::Print(&v14, &v13, "LookupActivityStateProbabilityGivenOutdoor(),latent probability index out of bound,%lu", a4, a5, a6, a7, a8, v10);
  }

  else
  {
    v16 = 12;
    v15 = 4;
    cnprint::CNPrinter::Print(&v16, &v15, "LookupActivityStateProbabilityGivenOutdoor(),index out of bound,%lu", a4, a5, a6, a7, a8, v9);
  }

  result = 0xFFFFFFFFLL;
  v12 = -1.0;
LABEL_7:
  *a4 = v12;
  return result;
}

uint64_t raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupActivityStateProbabilityGivenIndoor(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (v9 < 0xB)
  {
    v10 = *a3;
    if (v10 < 8)
    {
      result = 0;
      v12 = dbl_1D0E82E20[v9] * dbl_1D0E82DB0[2 * v10];
      goto LABEL_7;
    }

    v14 = 12;
    v13 = 4;
    cnprint::CNPrinter::Print(&v14, &v13, "LookupActivityStateProbabilityGivenIndoor(),latent probability index out of bound,%lu", a4, a5, a6, a7, a8, v10);
  }

  else
  {
    v16 = 12;
    v15 = 4;
    cnprint::CNPrinter::Print(&v16, &v15, "LookupActivityStateProbabilityGivenIndoor(),index out of bound,%lu", a4, a5, a6, a7, a8, v9);
  }

  result = 0xFFFFFFFFLL;
  v12 = -1.0;
LABEL_7:
  *a4 = v12;
  return result;
}

uint64_t raven::RavenSolutionPostprocessor::Configure(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1) == 1)
  {
    v18 = 12;
    v17 = 2;
    cnprint::CNPrinter::Print(&v18, &v17, "Warning: Solution Postprocessor: configured more than once", a4, a5, a6, a7, a8, v12);
  }

  *(a1 + 1) = 0;
  v10 = *a2;
  if (*a2 && (*(v10 + 33) & 1) != 0)
  {
    *(a1 + 8) = v10;
    *(a1 + 1) = 1;
    cnprint::CNPrinter::Print(&v14, &v13, "Solution Postprocessor: configured successfully", a4, a5, a6, a7, a8, v12);
    return 0;
  }

  else
  {
    v16 = 12;
    v15 = 4;
    cnprint::CNPrinter::Print(&v16, &v15, "Solution Postprocessor: could not be configured. Failed to create or initialize RavenParameters.", a4, a5, a6, a7, a8, v12);
    return 0xFFFFFFFFLL;
  }
}

void raven::RavenSolutionPostprocessor::Reset(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1296) == 1 && cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v17 = 12;
    v16 = 1;
    v15 = *(a2 + 8) + *a2;
    cnprint::CNPrinter::Print(&v17, &v16, "t,%.3lf,RavenSolutionPostprocesso,clamping stopped due to reset", v4, v5, v6, v7, v8, SLOBYTE(v15));
  }

  *(a1 + 1296) = 0;
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 56) = 0;
  v11 = (v10 - v9) >> 3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v9);
      v12 = *(a1 + 32);
      v9 = (*(a1 + 24) + 8);
      *(a1 + 24) = v9;
      v11 = (v12 - v9) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 8;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_11;
    }

    v13 = 16;
  }

  *(a1 + 48) = v13;
LABEL_11:
  *(a1 + 512) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 520) = 0x7FF8000000000000;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0x7FF8000000000000;
  v14 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 544) = v14;
  *(a1 + 560) = v14;
  *(a1 + 576) = v14;
  *(a1 + 592) = v14;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0x7FF8000000000000;
  *(a1 + 624) = v14;
  *(a1 + 640) = v14;
  *(a1 + 656) = v14;
  *(a1 + 672) = v14;
  *(a1 + 688) = v14;
  *(a1 + 704) = v14;
  *(a1 + 720) = 0x7FF8000000000000;
  *(a1 + 728) = 0;
  *(a1 + 736) = v14;
  *(a1 + 752) = v14;
  *(a1 + 768) = v14;
  *(a1 + 784) = v14;
  *(a1 + 800) = 0x7FF8000000000000;
  *(a1 + 808) = 0;
  *(a1 + 816) = v14;
  *(a1 + 832) = v14;
  *(a1 + 848) = v14;
  *(a1 + 864) = v14;
  *(a1 + 880) = 0x7FF8000000000000;
  *(a1 + 888) = 0;
  *(a1 + 896) = v14;
  *(a1 + 912) = v14;
  *(a1 + 928) = v14;
  *(a1 + 944) = v14;
  *(a1 + 960) = v14;
  *(a1 + 976) = v14;
  *(a1 + 992) = v14;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0x7FF8000000000000;
  *(a1 + 1024) = v14;
  *(a1 + 1040) = v14;
  *(a1 + 1056) = v14;
  *(a1 + 1072) = v14;
  *(a1 + 1088) = 0;
  *(a1 + 1096) = 0x7FF8000000000000;
  *(a1 + 1104) = v14;
  *(a1 + 1120) = v14;
  *(a1 + 1136) = v14;
  *(a1 + 1152) = v14;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0x7FF8000000000000;
  *(a1 + 1184) = v14;
  *(a1 + 1200) = v14;
  *(a1 + 1216) = v14;
  *(a1 + 1232) = v14;
  *(a1 + 1248) = 0;
  *(a1 + 1256) = 0x7FF8000000000000;
  *(a1 + 1264) = v14;
  *(a1 + 1280) = v14;
  if (*(a1 + 424) == 1)
  {
    *(a1 + 424) = 0;
  }

  if (*(a1 + 1376) == 1)
  {
    *(a1 + 1376) = 0;
  }
}

uint64_t raven::RavenSolutionPostprocessor::HandleEvent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 424) == 1)
  {
    memcpy((a1 + 72), (a2 + 8), 0x160uLL);
  }

  else
  {
    *(a1 + 64) = &unk_1F4CEF748;
    memcpy((a1 + 72), (a2 + 8), 0x160uLL);
    *(a1 + 424) = 1;
  }

  return 0;
}

{
  if (*(a1 + 1376) == 1)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 24);
    *(a1 + 1424) = *(a2 + 40);
    *(a1 + 1408) = v3;
    *(a1 + 1392) = v2;
    v4 = *(a2 + 56);
    v5 = *(a2 + 72);
    v6 = *(a2 + 88);
    *(a1 + 1488) = *(a2 + 104);
    *(a1 + 1472) = v6;
    *(a1 + 1456) = v5;
    *(a1 + 1440) = v4;
  }

  else
  {
    *(a1 + 1384) = &unk_1F4CEF5C8;
    v7 = *(a2 + 8);
    v8 = *(a2 + 24);
    *(a1 + 1424) = *(a2 + 40);
    *(a1 + 1408) = v8;
    *(a1 + 1392) = v7;
    v9 = *(a2 + 56);
    v10 = *(a2 + 72);
    v11 = *(a2 + 88);
    *(a1 + 1488) = *(a2 + 104);
    *(a1 + 1472) = v11;
    *(a1 + 1456) = v10;
    *(a1 + 1440) = v9;
    *(a1 + 1376) = 1;
  }

  return 0;
}

void *sub_1D0D34760(void *result, char *a2, char *a3, void *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = 0x84BDA12F684BDA13 * (&a5[-v10] >> 5);
      if ((0x84BDA12F684BDA13 * ((v11 - a2) >> 5)) < v12)
      {
        v12 = 0x84BDA12F684BDA13 * ((v11 - a2) >> 5);
      }

      v11 -= 864 * v12;
      a5 -= 864 * v12;
      if (v12)
      {
        result = memmove(a5, v11, 864 * v12);
      }

      if (v11 == a2)
      {
        break;
      }

      v13 = *--v6;
      v10 = v13;
      a5 = (v13 + 13824);
    }

    if ((*v6 + 13824) == a5)
    {
      v14 = v6[1];
      ++v6;
      a5 = v14;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void *sub_1D0D34854(void *result, _BYTE *__src, _BYTE *a3, void **a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0x84BDA12F684BDA13 * ((v10 - __dst + 13824) >> 5);
      if ((0x84BDA12F684BDA13 * ((a3 - v9) >> 5)) < v11)
      {
        v11 = 0x84BDA12F684BDA13 * ((a3 - v9) >> 5);
      }

      v12 = 864 * v11;
      if (v11)
      {
        result = memmove(__dst, v9, 864 * v11);
      }

      v9 += v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += v12;
    if (*(v6 - 1) + 13824 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

uint64_t raven::RavenIMUPreprocessorActiveObject::RavenIMUPreprocessorActiveObject(uint64_t a1)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *a1 = &unk_1F4CEE318;
  *(a1 + 224) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  raven::RavenIMUPreprocessorActiveObject::Reset(a1);
  return a1;
}

void sub_1D0D34A18(_Unwind_Exception *a1)
{
  sub_1D0D3546C(v1 + 54);
  sub_1D0C56D94(v1 + 48);
  sub_1D0D3546C(v1 + 39);
  sub_1D0C56D94(v2);
  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(v1);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenIMUPreprocessorActiveObject::Configure(_BYTE *a1, uint64_t *a2, int8x16_t a3, int8x16_t a4)
{
  if (a1[224] == 1)
  {
    v104 = 12;
    v103 = 3;
    (*(*a1 + 16))(__p, a1);
    if (v102 >= 0)
    {
      v11 = __p;
    }

    else
    {
      LOBYTE(v11) = __p[0];
    }

    cnprint::CNPrinter::Print(&v104, &v103, "Warning: %s configured more than once", v6, v7, v8, v9, v10, v11);
    if (v102 < 0)
    {
      operator delete(__p[0]);
    }
  }

  a1[224] = 0;
  v12 = *a2;
  if (!*a2 || (*(v12 + 33) & 1) == 0)
  {
    v104 = 12;
    v103 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v102 >= 0)
    {
      v23 = __p;
    }

    else
    {
      LOBYTE(v23) = __p[0];
    }

    cnprint::CNPrinter::Print(&v104, &v103, "%s could not be configured; invalid pointer", v18, v19, v20, v21, v22, v23);
    goto LABEL_18;
  }

  *(a1 + 30) = 0;
  *(a1 + 29) = v12;
  *(a1 + 31) = 0;
  *(a1 + 64) = 0;
  v13 = *(a1 + 34);
  v14 = *(a1 + 35);
  *(a1 + 38) = 0;
  v15 = (v14 - v13) >> 3;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v13);
      v16 = *(a1 + 35);
      v13 = (*(a1 + 34) + 8);
      *(a1 + 34) = v13;
      v15 = (v16 - v13) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v17 = 256;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_23;
    }

    v17 = 512;
  }

  *(a1 + 37) = v17;
LABEL_23:
  v25 = *(a1 + 29);
  v26 = *(v25 + 1296);
  a3.i64[0] = *(v25 + 1304);
  *(a1 + 64) = v26;
  if ((v26 & 0x80000000) != 0)
  {
    v30 = 0.0;
  }

  else
  {
    v27 = v26 / *a3.i64 * (v26 / *a3.i64);
    v28 = -v26;
    v29 = (2 * v26) | 1;
    v30 = 0.0;
    do
    {
      __p[0] = COERCE_VOID_(exp(v28 * -0.5 * v28 / v27));
      v30 = v30 + *__p;
      *a3.i64 = sub_1D0B90B68((a1 + 264), __p);
      ++v28;
      --v29;
    }

    while (v29);
  }

  v31 = *(a1 + 38);
  if (v31 != ((2 * v26) | 1))
  {
    v104 = 12;
    v103 = 4;
    (*(*a1 + 16))(__p, a1, a3);
    if (v102 >= 0)
    {
      v43 = __p;
    }

    else
    {
      LOBYTE(v43) = __p[0];
    }

    v99 = *(a1 + 38);
    cnprint::CNPrinter::Print(&v104, &v103, "%s could not be configured; invalid gyro kernel,size,%lu,half_width,%u", v38, v39, v40, v41, v42, v43);
    goto LABEL_18;
  }

  if (fabs(v30) < 2.22044605e-16)
  {
    v104 = 12;
    v103 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v102 >= 0)
    {
      v37 = __p;
    }

    else
    {
      LOBYTE(v37) = __p[0];
    }

    cnprint::CNPrinter::Print(&v104, &v103, "%s could not be configured; null gyro kernel", v32, v33, v34, v35, v36, v37);
LABEL_18:
    if (v102 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  v44 = *(a1 + 37);
  v45 = *(a1 + 34);
  v46 = *(a1 + 35);
  v47 = (v45 + 8 * (v44 >> 9));
  if (v46 == v45)
  {
    v48 = 0;
  }

  else
  {
    v48 = &(*v47)[*(a1 + 37) & 0x1FFLL];
  }

  v49 = v44 + v31;
  v50 = v49 >> 9;
  v51 = v49 & 0x1FF;
LABEL_42:
  v52 = v48 - 512;
  while (1)
  {
    v53 = v46 == v45 ? 0 : *(v45 + 8 * v50) + 8 * v51;
    if (v48 == v53)
    {
      break;
    }

    *v48 = *v48 / v30;
    ++v48;
    if (*v47 == ++v52)
    {
      v54 = v47[1];
      ++v47;
      v48 = v54;
      goto LABEL_42;
    }
  }

  *(a1 + 45) = 0;
  *(a1 + 46) = 0;
  *(a1 + 94) = 0;
  v55 = *(a1 + 49);
  v56 = *(a1 + 50);
  *(a1 + 53) = 0;
  v57 = (v56 - v55) >> 3;
  if (v57 >= 3)
  {
    do
    {
      operator delete(*v55);
      v58 = *(a1 + 50);
      v55 = (*(a1 + 49) + 8);
      *(a1 + 49) = v55;
      v57 = (v58 - v55) >> 3;
    }

    while (v57 > 2);
  }

  if (v57 == 1)
  {
    v59 = 256;
  }

  else
  {
    if (v57 != 2)
    {
      goto LABEL_56;
    }

    v59 = 512;
  }

  *(a1 + 52) = v59;
LABEL_56:
  v60 = *(a1 + 29);
  v61 = *(v60 + 1280);
  a3.i64[0] = *(v60 + 1288);
  *(a1 + 94) = v61;
  if ((v61 & 0x80000000) != 0)
  {
    v65 = 0.0;
  }

  else
  {
    v62 = v61 / *a3.i64 * (v61 / *a3.i64);
    v63 = -v61;
    v64 = (2 * v61) | 1;
    v65 = 0.0;
    do
    {
      __p[0] = COERCE_VOID_(exp(v63 * -0.5 * v63 / v62));
      v65 = v65 + *__p;
      *a3.i64 = sub_1D0B90B68((a1 + 384), __p);
      ++v63;
      --v64;
    }

    while (v64);
  }

  v66 = *(a1 + 53);
  if (v66 != ((2 * v61) | 1))
  {
    v104 = 12;
    v103 = 4;
    (*(*a1 + 16))(__p, a1, a3);
    if (v102 >= 0)
    {
      v78 = __p;
    }

    else
    {
      LOBYTE(v78) = __p[0];
    }

    v100 = *(a1 + 53);
    cnprint::CNPrinter::Print(&v104, &v103, "%s could not be configured; invalid accel kernel,size,%lu,half_width,%u", v73, v74, v75, v76, v77, v78);
    goto LABEL_18;
  }

  a4.i64[0] = 0x3CB0000000000000;
  if (fabs(v65) < 2.22044605e-16)
  {
    v104 = 12;
    v103 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v102 >= 0)
    {
      v72 = __p;
    }

    else
    {
      LOBYTE(v72) = __p[0];
    }

    cnprint::CNPrinter::Print(&v104, &v103, "%s could not be configured; null accel kernel", v67, v68, v69, v70, v71, v72);
    goto LABEL_18;
  }

  v79 = *(a1 + 52);
  v80 = *(a1 + 49);
  v81 = *(a1 + 50);
  v82 = (v80 + 8 * (v79 >> 9));
  if (v81 == v80)
  {
    v83 = 0;
  }

  else
  {
    v83 = &(*v82)[*(a1 + 52) & 0x1FFLL];
  }

  v84 = v79 + v66;
  v85 = v84 >> 9;
  v86 = v84 & 0x1FF;
LABEL_75:
  v87 = v83 - 512;
  while (1)
  {
    v88 = v81 == v80 ? 0 : *(v80 + 8 * v85) + 8 * v86;
    if (v83 == v88)
    {
      break;
    }

    *v83 = *v83 / v65;
    ++v83;
    if (*v82 == ++v87)
    {
      v89 = v82[1];
      ++v82;
      v83 = v89;
      goto LABEL_75;
    }
  }

  v90 = *(a1 + 29);
  a3.i64[0] = *(v90 + 976);
  __p[0] = 0;
  __p[1] = 0;
  CNTimeSpan::SetTimeSpan(__p, 0, a3, a4);
  v91.i64[1] = __p[1];
  *(a1 + 15) = *__p;
  v91.i64[0] = *(v90 + 968);
  __p[0] = 0;
  __p[1] = 0;
  CNTimeSpan::SetTimeSpan(__p, 0, v91, v92);
  *(a1 + 360) = *__p;
  cnframework::ActiveObjectBase::SetEventQueueDelay(a1, 0.0);
  a1[224] = 1;
  (*(*a1 + 40))(a1);
  v104 = 12;
  v103 = 3;
  (*(*a1 + 16))(__p, a1);
  if (v102 >= 0)
  {
    v98 = __p;
  }

  else
  {
    LOBYTE(v98) = __p[0];
  }

  cnprint::CNPrinter::Print(&v104, &v103, "%s configured successfully", v93, v94, v95, v96, v97, v98);
  if (v102 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1D0D35170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenIMUPreprocessorActiveObject::HandleEvent(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 104))
  {
    return (*(*result + 40))();
  }

  return result;
}

void raven::RavenIMUPreprocessorActiveObject::Reset(raven::RavenIMUPreprocessorActiveObject *this)
{
  if (*(this + 224) != 1)
  {
    goto LABEL_32;
  }

  v2 = *(this + 40);
  v3 = *(this + 41);
  if (v3 == v2)
  {
    v6 = (this + 352);
    v3 = *(this + 40);
  }

  else
  {
    v4 = *(this + 43);
    v5 = &v2[v4 / 0x1A];
    v6 = (this + 352);
    v7 = v2[(*(this + 44) + v4) / 0x1A] + 152 * ((*(this + 44) + v4) % 0x1A);
    if (*v5 + 152 * (v4 % 0x1A) != v7)
    {
      v8 = (*v5 + 152 * (v4 % 0x1A));
      do
      {
        v9 = *v8;
        v8 += 19;
        (*v9)();
        if (v8 - *v5 == 3952)
        {
          v10 = v5[1];
          ++v5;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = *(this + 40);
      v3 = *(this + 41);
    }
  }

  *v6 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v12 = *(this + 41);
      v2 = (*(this + 40) + 8);
      *(this + 40) = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v13 = 13;
    goto LABEL_16;
  }

  if (v11 == 2)
  {
    v13 = 26;
LABEL_16:
    *(this + 43) = v13;
  }

  v14 = *(this + 55);
  v15 = *(this + 56);
  if (v15 == v14)
  {
    v18 = (this + 472);
    v15 = *(this + 55);
  }

  else
  {
    v16 = *(this + 58);
    v17 = &v14[v16 / 0x1A];
    v18 = (this + 472);
    v19 = v14[(*(this + 59) + v16) / 0x1A] + 152 * ((*(this + 59) + v16) % 0x1A);
    if (*v17 + 152 * (v16 % 0x1A) != v19)
    {
      v20 = (*v17 + 152 * (v16 % 0x1A));
      do
      {
        v21 = *v20;
        v20 += 19;
        (*v21)();
        if (v20 - *v17 == 3952)
        {
          v22 = v17[1];
          ++v17;
          v20 = v22;
        }
      }

      while (v20 != v19);
      v14 = *(this + 55);
      v15 = *(this + 56);
    }
  }

  *v18 = 0;
  v23 = v15 - v14;
  if (v23 >= 3)
  {
    do
    {
      operator delete(*v14);
      v24 = *(this + 56);
      v14 = (*(this + 55) + 8);
      *(this + 55) = v14;
      v23 = (v24 - v14) >> 3;
    }

    while (v23 > 2);
  }

  if (v23 == 1)
  {
    v25 = 13;
  }

  else
  {
    if (v23 != 2)
    {
      goto LABEL_32;
    }

    v25 = 26;
  }

  *(this + 58) = v25;
LABEL_32:
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

uint64_t sub_1D0D3546C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x1A];
    v7 = v2[(a1[5] + v5) / 0x1A] + 152 * ((a1[5] + v5) % 0x1A);
    if (*v6 + 152 * (v5 % 0x1A) != v7)
    {
      v8 = (*v6 + 152 * (v5 % 0x1A));
      do
      {
        v9 = *v8;
        v8 += 19;
        (*v9)();
        if (v8 - *v6 == 3952)
        {
          v10 = v6[1];
          ++v6;
          v8 = v10;
        }
      }

      while (v8 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 13;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 26;
  }

  a1[4] = v12;
LABEL_17:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_1D0C565EC(a1);
}

void raven::RavenParameters::PrintLoadErrors(raven::RavenParameters *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 5);
  for (i = *(this + 6); v8 != i; v8 += 3)
  {
    v12 = 12;
    v11 = 4;
    LOBYTE(v10) = v8;
    if (*(v8 + 23) < 0)
    {
      v10 = *v8;
    }

    cnprint::CNPrinter::Print(&v12, &v11, "Error: failed to load configuration with message %s", a4, a5, a6, a7, a8, v10);
  }
}

BOOL raven::RavenParameters::ParseGnssInnovationThresholds(uint64_t a1, _OWORD *a2, const char *a3)
{
  v4 = sub_1D0D357F4(a1, v7, 4, a3);
  if (v4 == 4)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
  }

  return v4 == 4;
}

uint64_t sub_1D0D357F4(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  v76 = *MEMORY[0x1E69E9840];
  v36 = a4;
  if (!sub_1D0D41828(a1, __s, a4))
  {
    if (*(a1 + 32) == 1)
    {
      LOWORD(v48[0]) = 0;
      __dst.__r_.__value_.__s.__data_[0] = 2;
      cnprint::CNPrinter::Print(v48, &__dst, "ConfigLoader: %s could not be parsed", v7, v8, v9, v10, v11, v36);
    }

    v14 = 0xFFFFFFFFLL;
    goto LABEL_83;
  }

  sub_1D0B751F4(v68, __s);
  memset(&v63, 0, sizeof(v63));
  sub_1D0B751F4(&v64, " ,;");
  v12 = v69;
  v13 = v68;
  if (v69 < 0)
  {
    v13 = v68[0];
  }

  LOWORD(v66) = 0;
  HIDWORD(v66) = 0;
  v67 = 0;
  if (v69 < 0)
  {
    v12 = v68[1];
  }

  v56 = v13;
  v57 = v12 + v13;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1D0BC39B4(&v58, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v58 = v63;
  }

  if (SHIBYTE(v65) < 0)
  {
    sub_1D0BC39B4(&v59, v64, *(&v64 + 1));
  }

  else
  {
    v59 = v64;
    v60 = v65;
  }

  v61 = v66;
  v62 = v67;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1D0BC39B4(&__dst, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v58;
  }

  if (SHIBYTE(v60) < 0)
  {
    sub_1D0BC39B4(&__p, v59, *(&v59 + 1));
  }

  else
  {
    __p = v59;
    v40 = v60;
  }

  v41 = v61;
  v42 = v62;
  sub_1D0D41E50(v48, &__dst, v56, v57);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v14 = 0;
  for (i = a3 & ~(a3 >> 31); ; --i)
  {
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1D0BC39B4(&v70, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
    }

    else
    {
      v70 = v58;
    }

    if (SHIBYTE(v60) < 0)
    {
      sub_1D0BC39B4(&v71, v59, *(&v59 + 1));
    }

    else
    {
      v71 = v59;
      v72 = v60;
    }

    v73 = v61;
    v74 = v62;
    sub_1D0D41E50(&__dst, &v70, v57, v57);
    if (SHIBYTE(v72) < 0)
    {
      operator delete(v71);
    }

    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
    }

    if (v45 == 1 && (v54 & 1) != 0)
    {
      if (v43 != v52)
      {
        v21 = 0;
        goto LABEL_44;
      }

      v22 = v44 == v53;
    }

    else
    {
      v22 = v45 == v54;
    }

    v21 = v22;
LABEL_44:
    if (v47 < 0)
    {
      operator delete(v46);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v21)
    {
      goto LABEL_67;
    }

    if (!i)
    {
      LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
      v70.__r_.__value_.__s.__data_[0] = 4;
      cnprint::CNPrinter::Print(&__dst, &v70, "ConfigLoader: Too many entries for %s", v16, v17, v18, v19, v20, v36);
      goto LABEL_66;
    }

    if ((v54 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }

    v23 = (v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v55 : v55.__r_.__value_.__r.__words[0];
    if ((sub_1D0D41CF0(a2, v23) & 1) == 0)
    {
      break;
    }

    if (*(a1 + 32) == 1)
    {
      LOWORD(v70.__r_.__value_.__l.__data_) = 0;
      v37 = 2;
      std::to_string(&__dst, *(a2 + 8));
      cnprint::CNPrinter::Print(&v70, &v37, "ConfigLoader: %s loaded value #%d %s", v29, v30, v31, v32, v33, v36);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    if ((v54 & 1) == 0)
    {
      __assert_rtn("increment", "token_iterator.hpp", 54, "valid_");
    }

    v54 = sub_1D0D41F60(v48, &v52, v53, &v55);
    v14 = (v14 + 1);
    a2 += 8;
  }

  LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
  v70.__r_.__value_.__s.__data_[0] = 4;
  if ((v54 & 1) == 0)
  {
    __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
  }

  cnprint::CNPrinter::Print(&__dst, &v70, "ConfigLoader: %s could not cast value #%d from %s", v24, v25, v26, v27, v28, v36);
LABEL_66:
  v14 = 0xFFFFFFFFLL;
LABEL_67:
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

LABEL_83:
  v34 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1D0D35D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1D0D41C9C(&a30);
  sub_1D0D43050(&a44);
  sub_1D0D41E0C(&a54);
  if (a67 < 0)
  {
    operator delete(*(v67 + 256));
  }

  _Unwind_Resume(a1);
}

uint64_t raven::RavenParameters::ParseAndValidateLowerLimitsOfLowPLOSBins(void *a1, _OWORD *a2, const char *a3)
{
  if (sub_1D0D357F4(a1, v46, 4, a3) == 4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v46 + v6);
      if (v7 < 0.0)
      {
        break;
      }

      if (v7 > 1.0)
      {
        sub_1D0BC2944(&v41);
        v22 = strlen(a3);
        v23 = sub_1D0BCD7C4(&v41, a3, v22);
        v24 = sub_1D0BCD7C4(v23, " - value (", 10);
        v25 = MEMORY[0x1D387E990](v24, v7);
        v26 = sub_1D0BCD7C4(v25, ") must be less than or equal to", 31);
        sub_1D0BCD7C4(v26, "1", 1);
        sub_1D0D3627C(&v39, &v41);
        v16 = a1[6];
        v27 = a1[7];
        if (v16 < v27)
        {
          goto LABEL_17;
        }

        v29 = a1[5];
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v29) >> 3);
        v30 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v31 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v29) >> 3);
        if (2 * v31 > v30)
        {
          v30 = 2 * v31;
        }

        if (v31 >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v30;
        }

        v48 = a1 + 5;
        if (v21)
        {
          sub_1D0D414A8((a1 + 5), v21);
        }

        goto LABEL_26;
      }

      v6 += 8;
      if (v6 == 32)
      {
        v8 = v46[1];
        *a2 = v46[0];
        a2[1] = v8;
        return 1;
      }
    }

    sub_1D0BC2944(&v41);
    v10 = strlen(a3);
    v11 = sub_1D0BCD7C4(&v41, a3, v10);
    v12 = sub_1D0BCD7C4(v11, " - value (", 10);
    v13 = MEMORY[0x1D387E990](v12, v7);
    v14 = sub_1D0BCD7C4(v13, ") must be greater than or equal to", 34);
    sub_1D0BCD7C4(v14, "0", 1);
    sub_1D0D3627C(&v39, &v41);
    v16 = a1[6];
    v15 = a1[7];
    if (v16 < v15)
    {
LABEL_17:
      *v16 = v39;
      *(v16 + 16) = v40;
      v28 = v16 + 24;
      goto LABEL_27;
    }

    v17 = a1[5];
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3);
    v19 = v18 + 1;
    if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D0C5663C();
    }

    v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
    if (2 * v20 > v19)
    {
      v19 = 2 * v20;
    }

    if (v20 >= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v21 = v19;
    }

    v48 = a1 + 5;
    if (v21)
    {
      sub_1D0D414A8((a1 + 5), v21);
    }

LABEL_26:
    v32 = 24 * v18;
    v33 = 24 * v21;
    *v32 = v39;
    *(v32 + 16) = v40;
    v28 = 24 * v18 + 24;
    v34 = a1[5];
    v35 = a1[6] - v34;
    v36 = 24 * v18 - v35;
    memcpy((v32 - v35), v34, v35);
    v37 = a1[5];
    a1[5] = v36;
    a1[6] = v28;
    v38 = a1[7];
    a1[7] = v33;
    v47[2] = v37;
    v47[3] = v38;
    v47[0] = v37;
    v47[1] = v37;
    sub_1D0D41500(v47);
LABEL_27:
    a1[6] = v28;
    v41 = *MEMORY[0x1E69E54E8];
    *(&v41 + *(v41 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v42 = MEMORY[0x1E69E5548] + 16;
    if (v44 < 0)
    {
      operator delete(v43[7].__locale_);
    }

    v42 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v43);
    std::ostream::~ostream();
    MEMORY[0x1D387EBF0](&v45);
  }

  return 0;
}

void sub_1D0D36240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D0D36324(&a16);
  _Unwind_Resume(a1);
}

const void *sub_1D0D3627C(_BYTE *a1, uint64_t a2)
{
  result = sub_1D0BCD96C(a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D0C537F0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t sub_1D0D36324(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](a1 + 112);
  return a1;
}

uint64_t raven::RavenParameters::ParseAndValidateLowPLOSPsrTargetSigmaScaleFactors(void *a1, _OWORD *a2, const char *a3)
{
  if (sub_1D0D357F4(a1, v46, 4, a3) == 4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v46 + v6);
      if (v7 > 1.0)
      {
        break;
      }

      if (v7 <= 0.0)
      {
        sub_1D0BC2944(&v41);
        v22 = strlen(a3);
        v23 = sub_1D0BCD7C4(&v41, a3, v22);
        v24 = sub_1D0BCD7C4(v23, " - value (", 10);
        v25 = MEMORY[0x1D387E990](v24, v7);
        v26 = sub_1D0BCD7C4(v25, ") must be greater than ", 23);
        sub_1D0BCD7C4(v26, "0", 1);
        sub_1D0D3627C(&v39, &v41);
        v16 = a1[6];
        v27 = a1[7];
        if (v16 < v27)
        {
          goto LABEL_17;
        }

        v29 = a1[5];
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v29) >> 3);
        v30 = v18 + 1;
        if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v31 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v29) >> 3);
        if (2 * v31 > v30)
        {
          v30 = 2 * v31;
        }

        if (v31 >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v30;
        }

        v48 = a1 + 5;
        if (v21)
        {
          sub_1D0D414A8((a1 + 5), v21);
        }

        goto LABEL_26;
      }

      v6 += 8;
      if (v6 == 32)
      {
        v8 = v46[1];
        *a2 = v46[0];
        a2[1] = v8;
        return 1;
      }
    }

    sub_1D0BC2944(&v41);
    v10 = strlen(a3);
    v11 = sub_1D0BCD7C4(&v41, a3, v10);
    v12 = sub_1D0BCD7C4(v11, " - value (", 10);
    v13 = MEMORY[0x1D387E990](v12, v7);
    v14 = sub_1D0BCD7C4(v13, ") must be less than or equal to", 31);
    MEMORY[0x1D387E990](v14, 1.0);
    sub_1D0D3627C(&v39, &v41);
    v16 = a1[6];
    v15 = a1[7];
    if (v16 < v15)
    {
LABEL_17:
      *v16 = v39;
      *(v16 + 16) = v40;
      v28 = v16 + 24;
      goto LABEL_27;
    }

    v17 = a1[5];
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 3);
    v19 = v18 + 1;
    if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D0C5663C();
    }

    v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
    if (2 * v20 > v19)
    {
      v19 = 2 * v20;
    }

    if (v20 >= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v21 = v19;
    }

    v48 = a1 + 5;
    if (v21)
    {
      sub_1D0D414A8((a1 + 5), v21);
    }

LABEL_26:
    v32 = 24 * v18;
    v33 = 24 * v21;
    *v32 = v39;
    *(v32 + 16) = v40;
    v28 = 24 * v18 + 24;
    v34 = a1[5];
    v35 = a1[6] - v34;
    v36 = 24 * v18 - v35;
    memcpy((v32 - v35), v34, v35);
    v37 = a1[5];
    a1[5] = v36;
    a1[6] = v28;
    v38 = a1[7];
    a1[7] = v33;
    v47[2] = v37;
    v47[3] = v38;
    v47[0] = v37;
    v47[1] = v37;
    sub_1D0D41500(v47);
LABEL_27:
    a1[6] = v28;
    v41 = *MEMORY[0x1E69E54E8];
    *(&v41 + *(v41 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v42 = MEMORY[0x1E69E5548] + 16;
    if (v44 < 0)
    {
      operator delete(v43[7].__locale_);
    }

    v42 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v43);
    std::ostream::~ostream();
    MEMORY[0x1D387EBF0](&v45);
  }

  return 0;
}

void sub_1D0D3680C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1D0D36324(&a16);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenParameters::ParseConfigurationFile(raven::RavenParameters *this)
{
  v902[2] = *MEMORY[0x1E69E9840];
  memset(&v888, 0, sizeof(v888));
  v887 = 0;
  v862 = sub_1D0D3E05C(this, this + 9, "user_typical_device_distance", 0.0);
  v857 = sub_1D0D3E358(this, this + 10, "user_typical_height_above_ground", 0.0);
  v852 = sub_1D0D3E05C(this, this + 15, "frozen_user_eastnorth_velocity_noise_intensity", 0.0);
  v847 = sub_1D0D3E05C(this, this + 16, "frozen_user_up_velocity_noise_intensity", 0.0);
  v842 = sub_1D0D3E05C(this, this + 17, "frozen_user_eastnorth_velocity_decorrelation", 0.0);
  v837 = sub_1D0D3E05C(this, this + 18, "frozen_user_up_velocity_decorrelation", 0.0);
  v832 = sub_1D0D3E05C(this, this + 19, "moving_user_eastnorth_velocity_noise_intensity", 0.0);
  v827 = sub_1D0D3E05C(this, this + 20, "moving_user_up_velocity_noise_intensity", 0.0);
  v822 = sub_1D0D3E05C(this, this + 21, "moving_user_eastnorth_velocity_decorrelation", 0.0);
  v817 = sub_1D0D3E05C(this, this + 22, "moving_user_up_velocity_decorrelation", 0.0);
  v812 = sub_1D0D3E05C(this, this + 23, "notmoving_user_eastnorth_velocity_noise_intensity", 0.0);
  v807 = sub_1D0D3E05C(this, this + 24, "notmoving_user_up_velocity_noise_intensity", 0.0);
  v802 = sub_1D0D3E05C(this, this + 25, "notmoving_user_eastnorth_velocity_decorrelation", 0.0);
  v797 = sub_1D0D3E05C(this, this + 26, "notmoving_user_up_velocity_decorrelation", 0.0);
  v882 = sub_1D0D3E05C(this, this + 27, "default_user_eastnorth_velocity_noise_intensity", 0.0);
  if (v882)
  {
    *(this + 11) = *(this + 27);
  }

  v877 = sub_1D0D3E05C(this, this + 28, "default_user_up_velocity_noise_intensity", 0.0);
  if (v877)
  {
    *(this + 12) = *(this + 28);
  }

  v872 = sub_1D0D3E05C(this, this + 29, "default_user_eastnorth_velocity_decorrelation", 0.0);
  if (v872)
  {
    *(this + 13) = *(this + 29);
  }

  v867 = sub_1D0D3E05C(this, this + 30, "default_user_up_velocity_decorrelation", 0.0);
  if (v867)
  {
    *(this + 14) = *(this + 30);
  }

  v792 = sub_1D0D3E654(this, this + 31, "minimum_moving_state_probability_for_zupt_or_zaru", 0.0, 1.0);
  v786 = sub_1D0D3E05C(this, this + 32, "frozen_zupt_velocity_noise_var", 0.0);
  v781 = sub_1D0D3E05C(this, this + 33, "notmoving_zupt_velocity_noise_var", 0.0);
  v776 = sub_1D0D3E05C(this, this + 34, "minimum_zupt_update_interval", 0.0);
  v771 = sub_1D0D3E05C(this, this + 35, "minimum_zaru_update_interval", 0.0);
  v766 = sub_1D0D3E05C(this, this + 36, "zaru_measurement_std_dev_deg", 0.0);
  v761 = sub_1D0D3E05C(this, this + 37, "nhc_velocity_standard_deviation", 0.0);
  v756 = sub_1D0D3E05C(this, this + 38, "user_comfortable_acceleration_rms", 0.0);
  v751 = sub_1D0D3E05C(this, this + 39, "user_comfortable_acceleration_rms_high_acceleration", 0.0);
  v747 = sub_1D0D3E05C(this, this + 40, "user_comfortable_acceleration_rms_vehicle_fixed", 0.0);
  v743 = sub_1D0D3E05C(this, this + 41, "user_maximum_comfortable_rotation_rate_rms", 0.0);
  v739 = sub_1D0D3E05C(this, this + 42, "user_maximum_comfortable_rotation_rate_rms_high_acceleration", 0.0);
  v735 = sub_1D0D3E05C(this, this + 43, "user_mount_linear_rw_mprs", 0.0);
  v731 = sub_1D0D3E05C(this, this + 44, "user_mount_angular_rw_rprs", 0.0);
  v727 = sub_1D0D3E05C(this, this + 45, "user_mount_velocity_rms_mps", 0.0);
  v723 = sub_1D0D3E05C(this, this + 46, "user_mount_velocity_rms_mpspmps", 0.0);
  v719 = sub_1D0D3E05C(this, this + 47, "user_mount_velocity_rms_floor_mps", 0.0);
  v715 = sub_1D0D3E05C(this, this + 48, "user_periodicity_window_duration", 0.0);
  v2 = sub_1D0D3E05C(this, this + 49, "user_minimum_frequency_of_interest", 0.0);
  v3 = sub_1D0D3E05C(this, this + 50, "user_maximum_frequency_of_interest", *(this + 50));
  v4 = sub_1D0D3E05C(this, this + 51, "user_periodicity_fpprobability_window", 0.0);
  v5 = sub_1D0D3E654(this, this + 52, "user_periodicity_fpprobability", 0.0, 1.0);
  v6 = sub_1D0D3E978(this, &v888, "user_periodicity_feature", "Maximum");
  v7 = sub_1D0D3E358(this, this + 65, "user_speed_process_noise_multiplier_for_fieldsports_in_pnt", 1.0);
  v8 = sub_1D0D3E358(this, this + 66, "user_course_process_noise_multiplier_for_fieldsports_in_pnt", 1.0);
  v9 = sub_1D0D3E358(this, this + 63, "user_speed_process_noise_multiplier_for_downhillsnowsports_in_pnt", 1.0);
  v10 = sub_1D0D3E358(this, this + 64, "user_course_process_noise_multiplier_for_downhillsnowsports_in_pnt", 1.0);
  v11 = sub_1D0D3E358(this, this + 67, "user_process_noise_multiplier_for_fieldsports_in_convergence", 1.0);
  if (!v6)
  {
    v878 = v867 | v872 | v877 | v882 | v10 | v11 | v862 | v857 | v852 | v847 | v842 | v837 | v832 | v827 | v822 | v817 | v812 | v807 | v802 | v797 | v792 | v786 | v781 | v776 | v771 | v766 | v761 | v756 | v751 | v747 | v743 | v739 | v735 | v731 | v727 | v723 | v719 | v715 | v2 | v3 | v4 | v5 | v7 | v8 | v9;
    goto LABEL_70;
  }

  if ((SHIBYTE(v888.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v888.__r_.__value_.__r.__words[2]) == 7)
    {
      if ((LODWORD(v888.__r_.__value_.__l.__data_) != 1769496909 || *(v888.__r_.__value_.__r.__words + 3) != 1836412265) && (LODWORD(v888.__r_.__value_.__l.__data_) != 1769496941 || *(v888.__r_.__value_.__r.__words + 3) != 1836412265))
      {
        if (LODWORD(v888.__r_.__value_.__l.__data_) != 1768843597 || *(v888.__r_.__value_.__r.__words + 3) != 1836412265)
        {
          v15 = &v888;
          goto LABEL_39;
        }

        goto LABEL_60;
      }

      goto LABEL_51;
    }

LABEL_43:
    v22 = sub_1D0B751F4(v900, "user_periodicity_feature");
    v23 = std::string::append(v22, " - invalid entry: ", 0x13uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v889.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v889.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v888;
    }

    else
    {
      v25 = v888.__r_.__value_.__r.__words[0];
    }

    if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v888.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v888.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v889, v25, size);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v897.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v897.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v897, "", 1uLL);
    v30 = v29->__r_.__value_.__r.__words[0];
    v902[0] = v29->__r_.__value_.__l.__size_;
    *(v902 + 7) = *(&v29->__r_.__value_.__r.__words[1] + 7);
    v31 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v32 = *(this + 6);
    v33 = *(this + 7);
    if (v32 >= v33)
    {
      v37 = *(this + 5);
      v38 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v37) >> 3);
      v39 = v38 + 1;
      if (v38 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1D0C5663C();
      }

      v40 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v37) >> 3);
      if (2 * v40 > v39)
      {
        v39 = 2 * v40;
      }

      if (v40 >= 0x555555555555555)
      {
        v41 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v41 = v39;
      }

      *&v892 = this + 40;
      if (v41)
      {
        sub_1D0D414A8(this + 40, v41);
      }

      v42 = 24 * v38;
      v43 = v902[0];
      *v42 = v30;
      *(v42 + 8) = v43;
      *(v42 + 15) = *(v902 + 7);
      *(v42 + 23) = v31;
      v902[0] = 0;
      *(v902 + 7) = 0;
      v35 = 24 * v38 + 24;
      v44 = *(this + 5);
      v45 = *(this + 6) - v44;
      v46 = (24 * v38 - v45);
      memcpy(v46, v44, v45);
      v47 = *(this + 5);
      *(this + 5) = v46;
      *(this + 6) = v35;
      v48 = *(this + 7);
      *(this + 7) = 0;
      *&v891 = v47;
      *(&v891 + 1) = v48;
      __p[1] = v47;
      __p[0] = v47;
      sub_1D0D41500(__p);
    }

    else
    {
      v34 = v902[0];
      *v32 = v30;
      *(v32 + 8) = v34;
      *(v32 + 15) = *(v902 + 7);
      *(v32 + 23) = v31;
      v35 = v32 + 24;
    }

    *(this + 6) = v35;
    if (SHIBYTE(v897.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v897.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v889.__r_.__value_.__l.__data_);
    }

    if (v901 < 0)
    {
      operator delete(v900[0]);
    }

    v36 = 0;
    v878 = 0;
    goto LABEL_69;
  }

  if (v888.__r_.__value_.__l.__size_ != 7)
  {
    goto LABEL_43;
  }

  v15 = v888.__r_.__value_.__r.__words[0];
  if ((*v888.__r_.__value_.__l.__data_ != 1769496909 || *(v888.__r_.__value_.__r.__words[0] + 3) != 1836412265) && (*v888.__r_.__value_.__l.__data_ != 1769496941 || *(v888.__r_.__value_.__r.__words[0] + 3) != 1836412265))
  {
    if (*v888.__r_.__value_.__l.__data_ != 1768843597 || *(v888.__r_.__value_.__r.__words[0] + 3) != 1836412265)
    {
LABEL_39:
      data = v15->__r_.__value_.__l.__data_;
      v20 = *(v15->__r_.__value_.__r.__words + 3);
      if (data != 1768843629 || v20 != 1836412265)
      {
        goto LABEL_43;
      }
    }

LABEL_60:
    v36 = 1;
    v878 = 1;
    goto LABEL_69;
  }

LABEL_51:
  v878 = 1;
  v36 = 2;
LABEL_69:
  *(this + 106) = v36;
LABEL_70:
  v873 = sub_1D0D3E05C(this, this + 54, "user_default_speed_rms", 0.0);
  v868 = sub_1D0D3E05C(this, this + 55, "user_default_walk_speed", 0.0);
  v863 = sub_1D0D3E05C(this, this + 56, "user_default_run_speed", 0.0);
  v858 = sub_1D0D3E05C(this, this + 57, "user_default_walk_speed_rms", 0.0);
  v853 = sub_1D0D3E05C(this, this + 58, "user_default_run_speed_rms", 0.0);
  v848 = sub_1D0D3E05C(this, this + 59, "user_default_walk_step_frequency", 0.0);
  v843 = sub_1D0D3E05C(this, this + 60, "user_default_run_step_frequency", 0.0);
  v838 = sub_1D0D3E05C(this, this + 61, "user_default_walk_step_frequency_rms", 0.0);
  v833 = sub_1D0D3E05C(this, this + 62, "user_default_run_step_frequency_rms", 0.0);
  LOBYTE(__p[0]) = 0;
  v883 = sub_1D0D43218(this, __p, "hardware_supports_L1_L5_frequencies");
  if (v883)
  {
    *(this + 641) = __p[0];
  }

  v828 = sub_1D0D3E05C(this, this + 81, "hardware_accelerometer_sample_period", 0.0);
  v823 = sub_1D0D3E05C(this, this + 82, "hardware_rategyro_sample_period", 0.0);
  v818 = sub_1D0D3E05C(this, this + 83, "hardware_accelerometer_bias_decorrelation", 0.0);
  v813 = sub_1D0D3E05C(this, this + 84, "hardware_rategyro_bias_decorrelation", 0.0);
  v808 = sub_1D0D3E05C(this, this + 85, "hardware_rategyro_bias_decorrelation_high_acceleration", 0.0);
  v803 = sub_1D0D3E05C(this, this + 86, "hardware_accelerometer_scale_decorrelation", 0.0);
  v798 = sub_1D0D3E05C(this, this + 87, "hardware_accelerometer_scale_decorrelation_high_acceleration", 0.0);
  v793 = sub_1D0D3E05C(this, this + 88, "hardware_sigma_accelerometer_rms", 0.0);
  v787 = sub_1D0D3E05C(this, this + 89, "hardware_sigma_rategyro_rms", 0.0);
  v782 = sub_1D0D3E05C(this, this + 90, "hardware_sigma_barometer_rms", 0.0);
  v777 = sub_1D0D3E05C(this, this + 91, "hardware_sigma_accelerometer_bias_turn_on", 0.0);
  v772 = sub_1D0D3E05C(this, this + 92, "hardware_sigma_accelerometer_bias", 0.0);
  v767 = sub_1D0D3E05C(this, this + 93, "hardware_sigma_rategyro_bias_turn_on", 0.0);
  v762 = sub_1D0D3E05C(this, this + 94, "hardware_sigma_rategyro_bias_turn_on_high_acceleration", 0.0);
  v757 = sub_1D0D3E05C(this, this + 95, "hardware_sigma_rategyro_bias", 0.0);
  v752 = sub_1D0D3E05C(this, this + 96, "hardware_sigma_accelerometer_scale_turn_on", 0.0);
  v49 = sub_1D0D3E05C(this, this + 97, "hardware_sigma_accelerometer_scale_turn_on_high_acceleration", 0.0);
  v50 = sub_1D0D3E05C(this, this + 98, "hardware_sigma_accelerometer_scale", 0.0);
  v51 = sub_1D0D3E05C(this, this + 99, "hardware_expected_gnss_rate", 0.0);
  v52 = sub_1D0D3E05C(this, this + 100, "hardware_xo_adaptive_model_validity_duration", 0.0);
  v53 = sub_1D0D3E05C(this, this + 101, "hardware_xo_alpha", 0.0);
  v54 = sub_1D0D3E05C(this, this + 102, "hardware_xo_gamma", 0.0);
  LOBYTE(__p[0]) = 0;
  v55 = sub_1D0D43218(this, __p, "enable_local_ionosphere_model_estimation");
  if (v55)
  {
    *(this + 2560) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v56 = sub_1D0D43218(this, __p, "use_local_ionosphere_model_delays");
  if (v56)
  {
    *(this + 2561) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v57 = sub_1D0D43218(this, __p, "use_locally_estimated_dcb_corrections");
  if (v57)
  {
    *(this + 2562) = __p[0];
  }

  if (!sub_1D0D3E978(this, &v888, "estimator_state_machine_mode", &unk_1D0ED80C5))
  {
    v60 = v883 | v50 | v51 | v52 | v53 | v54 | v55 | v56 | v57 | v878 | v873 | v868 | v863 | v858 | v853 | v848 | v843 | v838 | v833 | v828 | v823 | v818 | v813 | v808 | v803 | v798 | v793 | v787 | v782 | v777 | v772 | v767 | v762 | v757 | v752 | v49;
LABEL_93:
    v879 = v60;
    goto LABEL_134;
  }

  if ((SHIBYTE(v888.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v888.__r_.__value_.__r.__words[2]) != 8)
    {
      if (HIBYTE(v888.__r_.__value_.__r.__words[2]) == 16)
      {
        if (v888.__r_.__value_.__r.__words[0] != 0x7361506E65766152 || v888.__r_.__value_.__l.__size_ != 0x6867756F72685473)
        {
          if (v888.__r_.__value_.__r.__words[0] != 0x6E6F436E65766152 || v888.__r_.__value_.__l.__size_ != 0x65636E6567726576)
          {
            goto LABEL_110;
          }

LABEL_105:
          v879 = 1;
          *(this + 206) = 1;
          goto LABEL_134;
        }

LABEL_107:
        *(this + 206) = 0;
LABEL_186:
        v60 = 1;
        goto LABEL_93;
      }

      goto LABEL_110;
    }

    v63 = &v888;
LABEL_109:
    if (v63->__r_.__value_.__r.__words[0] == 0x544E506E65766152)
    {
      *(this + 206) = 2;
      goto LABEL_186;
    }

    goto LABEL_110;
  }

  if (v888.__r_.__value_.__l.__size_ == 8)
  {
    v63 = v888.__r_.__value_.__r.__words[0];
    goto LABEL_109;
  }

  if (v888.__r_.__value_.__l.__size_ == 16)
  {
    if (*v888.__r_.__value_.__l.__data_ != 0x7361506E65766152 || *(v888.__r_.__value_.__r.__words[0] + 8) != 0x6867756F72685473)
    {
      if (*v888.__r_.__value_.__l.__data_ != 0x6E6F436E65766152 || *(v888.__r_.__value_.__r.__words[0] + 8) != 0x65636E6567726576)
      {
        goto LABEL_110;
      }

      goto LABEL_105;
    }

    goto LABEL_107;
  }

LABEL_110:
  v64 = sub_1D0B751F4(v900, "estimator_state_machine_mode");
  v65 = std::string::append(v64, " - invalid entry: ", 0x13uLL);
  v66 = *&v65->__r_.__value_.__l.__data_;
  v889.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
  *&v889.__r_.__value_.__l.__data_ = v66;
  v65->__r_.__value_.__l.__size_ = 0;
  v65->__r_.__value_.__r.__words[2] = 0;
  v65->__r_.__value_.__r.__words[0] = 0;
  if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v67 = &v888;
  }

  else
  {
    v67 = v888.__r_.__value_.__r.__words[0];
  }

  if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v68 = HIBYTE(v888.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v68 = v888.__r_.__value_.__l.__size_;
  }

  v69 = std::string::append(&v889, v67, v68);
  v70 = *&v69->__r_.__value_.__l.__data_;
  v897.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
  *&v897.__r_.__value_.__l.__data_ = v70;
  v69->__r_.__value_.__l.__size_ = 0;
  v69->__r_.__value_.__r.__words[2] = 0;
  v69->__r_.__value_.__r.__words[0] = 0;
  v71 = std::string::append(&v897, "", 1uLL);
  v72 = v71->__r_.__value_.__r.__words[0];
  v902[0] = v71->__r_.__value_.__l.__size_;
  *(v902 + 7) = *(&v71->__r_.__value_.__r.__words[1] + 7);
  v73 = HIBYTE(v71->__r_.__value_.__r.__words[2]);
  v71->__r_.__value_.__l.__size_ = 0;
  v71->__r_.__value_.__r.__words[2] = 0;
  v71->__r_.__value_.__r.__words[0] = 0;
  v74 = *(this + 6);
  v75 = *(this + 7);
  if (v74 >= v75)
  {
    v78 = *(this + 5);
    v79 = 0xAAAAAAAAAAAAAAABLL * ((v74 - v78) >> 3);
    v80 = v79 + 1;
    if (v79 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D0C5663C();
    }

    v81 = 0xAAAAAAAAAAAAAAABLL * ((v75 - v78) >> 3);
    if (2 * v81 > v80)
    {
      v80 = 2 * v81;
    }

    if (v81 >= 0x555555555555555)
    {
      v82 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v82 = v80;
    }

    *&v892 = this + 40;
    if (v82)
    {
      sub_1D0D414A8(this + 40, v82);
    }

    v83 = 24 * v79;
    v84 = v902[0];
    *v83 = v72;
    *(v83 + 8) = v84;
    *(v83 + 15) = *(v902 + 7);
    *(v83 + 23) = v73;
    v902[0] = 0;
    *(v902 + 7) = 0;
    v77 = 24 * v79 + 24;
    v85 = *(this + 5);
    v86 = *(this + 6) - v85;
    v87 = (24 * v79 - v86);
    memcpy(v87, v85, v86);
    v88 = *(this + 5);
    *(this + 5) = v87;
    *(this + 6) = v77;
    v89 = *(this + 7);
    *(this + 7) = 0;
    *&v891 = v88;
    *(&v891 + 1) = v89;
    __p[1] = v88;
    __p[0] = v88;
    sub_1D0D41500(__p);
  }

  else
  {
    v76 = v902[0];
    *v74 = v72;
    *(v74 + 8) = v76;
    *(v74 + 15) = *(v902 + 7);
    *(v74 + 23) = v73;
    v77 = v74 + 24;
  }

  *(this + 6) = v77;
  if (SHIBYTE(v897.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v897.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v889.__r_.__value_.__l.__data_);
  }

  if (v901 < 0)
  {
    operator delete(v900[0]);
  }

  v879 = 0;
LABEL_134:
  v874 = sub_1D0D3E358(this, this + 104, "estimator_time_delay", 0.0);
  v869 = sub_1D0D3E358(this, this + 106, "estimator_time_to_use_high_acceleration_model_after_pnt_initialization", 0.0);
  v864 = sub_1D0D3E358(this, this + 107, "tolerable_accelerometer_event_age", 0.0);
  v859 = sub_1D0D3E358(this, this + 108, "tolerable_rategyro_event_age", 0.0);
  v854 = sub_1D0D3E05C(this, this + 109, "estimator_processing_duration", 0.0);
  v849 = sub_1D0D3E05C(this, this + 110, "estimator_processing_duration_backoff", 0.0);
  v844 = sub_1D0D3E05C(this, this + 111, "estimator_maximum_solution_period", 0.0);
  v839 = sub_1D0D3E05C(this, this + 112, "estimator_maximum_solution_age_for_reinitialization", 0.0);
  v834 = sub_1D0D3E05C(this, this + 113, "estimator_maximum_component_dissonance_for_initialization", 0.0);
  v829 = sub_1D0D3E654(this, this + 114, "estimator_hypothesis_test_probability_threshold", 0.0, 1.0);
  v824 = sub_1D0D3E05C(this, this + 115, "estimator_matrix_condition_threshold", 0.0);
  v819 = sub_1D0D3EAA0(this, this + 116, "estimator_nonstationary_fpprobability", 0.0, 1.0);
  v814 = sub_1D0D3EAA0(this, this + 117, "estimator_nonstationary_fpprobability_aggressive", 0.0, 1.0);
  v809 = sub_1D0D3E05C(this, this + 118, "estimator_default_pqq", 0.0);
  v804 = sub_1D0D3E05C(this, this + 119, "estimator_acceleration_stabilization_memory", 0.0);
  v799 = sub_1D0D3E654(this, this + 154, "estimator_acceleration_direction_of_travel_energy_fraction_threshold", 0.0, 1.0);
  v794 = sub_1D0D3E05C(this, this + 155, "estimator_acceleration_direction_of_travel_sigma", 0.0);
  v788 = sub_1D0D3E05C(this, this + 120, "estimator_maximum_rotation_integration_stepsize", 0.0);
  v783 = sub_1D0D3E05C(this, this + 121, "estimator_maximum_applicable_acceleration_age", 0.0);
  v778 = sub_1D0D3E05C(this, this + 122, "estimator_maximum_applicable_rotation_age", 0.0);
  v773 = sub_1D0D3EE60(this, this + 246, "estimator_acceleration_buffer_depth", 0);
  v768 = sub_1D0D3E05C(this, this + 124, "estimator_attitude_determination_minimum_mean_acceleration_for_pca", 0.0);
  v763 = sub_1D0D3E358(this, this + 125, "estimator_attitude_determination_minimum_stddev_acceleration_for_pca", 0.0);
  v758 = sub_1D0D3EAA0(this, this + 126, "estimator_attitude_determination_minimum_energy_fraction_for_pca", 0.0, 1.0);
  v753 = sub_1D0D3EAA0(this, this + 127, "estimator_attitude_determination_probability_gnss_speeds_are_different_when_driving", 0.0, 1.0);
  v748 = sub_1D0D3E05C(this, this + 128, "device_motion_attitude_period_sec", 0.0);
  v90 = &v888;
  v884 = sub_1D0D3EDC4(this, &v888, "device_motion_minimum_mag_calibration_level");
  if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = (&v888 + HIBYTE(v888.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v91 = (v888.__r_.__value_.__r.__words[0] + v888.__r_.__value_.__l.__size_);
  }

  if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v90 = v888.__r_.__value_.__r.__words[0];
  }

  while (v90 != v91)
  {
    v90->__r_.__value_.__s.__data_[0] = __tolower(v90->__r_.__value_.__s.__data_[0]);
    v90 = (v90 + 1);
  }

  if (v884)
  {
    if (SHIBYTE(v888.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v888.__r_.__value_.__l.__size_ <= 7)
      {
        if (v888.__r_.__value_.__l.__size_ != 2)
        {
          if (v888.__r_.__value_.__l.__size_ == 6)
          {
            if (*v888.__r_.__value_.__l.__data_ != 1702323250 || *(v888.__r_.__value_.__r.__words[0] + 4) != 27489)
            {
              if (*v888.__r_.__value_.__l.__data_ != 1702323251 || *(v888.__r_.__value_.__r.__words[0] + 4) != 27489)
              {
                goto LABEL_196;
              }

LABEL_168:
              v96 = 3;
LABEL_221:
              *(this + 258) = v96;
              goto LABEL_222;
            }

LABEL_190:
            v96 = 1;
            goto LABEL_221;
          }

LABEL_196:
          *(this + 258) = -1;
          v101 = sub_1D0B751F4(v900, "device_motion_minimum_mag_calibration_level");
          v102 = std::string::append(v101, " - invalid entry: ", 0x13uLL);
          v103 = *&v102->__r_.__value_.__l.__data_;
          v889.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
          *&v889.__r_.__value_.__l.__data_ = v103;
          v102->__r_.__value_.__l.__size_ = 0;
          v102->__r_.__value_.__r.__words[2] = 0;
          v102->__r_.__value_.__r.__words[0] = 0;
          if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v104 = &v888;
          }

          else
          {
            v104 = v888.__r_.__value_.__r.__words[0];
          }

          if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v105 = HIBYTE(v888.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v105 = v888.__r_.__value_.__l.__size_;
          }

          v106 = std::string::append(&v889, v104, v105);
          v107 = *&v106->__r_.__value_.__l.__data_;
          v897.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
          *&v897.__r_.__value_.__l.__data_ = v107;
          v106->__r_.__value_.__l.__size_ = 0;
          v106->__r_.__value_.__r.__words[2] = 0;
          v106->__r_.__value_.__r.__words[0] = 0;
          v108 = std::string::append(&v897, "", 1uLL);
          v109 = v108->__r_.__value_.__r.__words[0];
          v902[0] = v108->__r_.__value_.__l.__size_;
          *(v902 + 7) = *(&v108->__r_.__value_.__r.__words[1] + 7);
          v110 = HIBYTE(v108->__r_.__value_.__r.__words[2]);
          v108->__r_.__value_.__l.__size_ = 0;
          v108->__r_.__value_.__r.__words[2] = 0;
          v108->__r_.__value_.__r.__words[0] = 0;
          v111 = *(this + 6);
          v112 = *(this + 7);
          if (v111 >= v112)
          {
            v115 = *(this + 5);
            v116 = 0xAAAAAAAAAAAAAAABLL * ((v111 - v115) >> 3);
            v117 = v116 + 1;
            if (v116 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1D0C5663C();
            }

            v118 = 0xAAAAAAAAAAAAAAABLL * ((v112 - v115) >> 3);
            if (2 * v118 > v117)
            {
              v117 = 2 * v118;
            }

            if (v118 >= 0x555555555555555)
            {
              v119 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v119 = v117;
            }

            *&v892 = this + 40;
            if (v119)
            {
              sub_1D0D414A8(this + 40, v119);
            }

            v120 = 24 * v116;
            v121 = v902[0];
            *v120 = v109;
            *(v120 + 8) = v121;
            *(v120 + 15) = *(v902 + 7);
            *(v120 + 23) = v110;
            v902[0] = 0;
            *(v902 + 7) = 0;
            v114 = 24 * v116 + 24;
            v122 = *(this + 5);
            v123 = *(this + 6) - v122;
            v124 = (24 * v116 - v123);
            memcpy(v124, v122, v123);
            v125 = *(this + 5);
            *(this + 5) = v124;
            *(this + 6) = v114;
            v126 = *(this + 7);
            *(this + 7) = 0;
            *&v891 = v125;
            *(&v891 + 1) = v126;
            __p[1] = v125;
            __p[0] = v125;
            sub_1D0D41500(__p);
          }

          else
          {
            v113 = v902[0];
            *v111 = v109;
            *(v111 + 8) = v113;
            *(v111 + 15) = *(v902 + 7);
            *(v111 + 23) = v110;
            v114 = v111 + 24;
          }

          *(this + 6) = v114;
          if (SHIBYTE(v897.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v897.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v889.__r_.__value_.__l.__data_);
          }

          if (v901 < 0)
          {
            operator delete(v900[0]);
          }

          goto LABEL_222;
        }

        data_low = *v888.__r_.__value_.__l.__data_;
LABEL_192:
        if (data_low == 25651)
        {
          v96 = 4;
          goto LABEL_221;
        }

        goto LABEL_196;
      }

      if (v888.__r_.__value_.__l.__size_ != 8)
      {
        if (v888.__r_.__value_.__l.__size_ != 10)
        {
          goto LABEL_196;
        }

        if (*v888.__r_.__value_.__l.__data_ != 0x6261696C65726E75 || *(v888.__r_.__value_.__r.__words[0] + 8) != 25964)
        {
          goto LABEL_196;
        }

        goto LABEL_184;
      }

      v100 = v888.__r_.__value_.__r.__words[0];
      if (*v888.__r_.__value_.__l.__data_ != 0x676E6F7274736432)
      {
LABEL_195:
        if (v100->__r_.__value_.__r.__words[0] == 0x676E6F7274736433)
        {
          v96 = 5;
          goto LABEL_221;
        }

        goto LABEL_196;
      }
    }

    else
    {
      if (HIBYTE(v888.__r_.__value_.__r.__words[2]) <= 7u)
      {
        if (HIBYTE(v888.__r_.__value_.__r.__words[2]) != 2)
        {
          if (HIBYTE(v888.__r_.__value_.__r.__words[2]) == 6)
          {
            if (LODWORD(v888.__r_.__value_.__l.__data_) != 1702323250 || WORD2(v888.__r_.__value_.__r.__words[0]) != 27489)
            {
              if (LODWORD(v888.__r_.__value_.__l.__data_) != 1702323251 || WORD2(v888.__r_.__value_.__r.__words[0]) != 27489)
              {
                goto LABEL_196;
              }

              goto LABEL_168;
            }

            goto LABEL_190;
          }

          goto LABEL_196;
        }

        data_low = LOWORD(v888.__r_.__value_.__l.__data_);
        goto LABEL_192;
      }

      if (HIBYTE(v888.__r_.__value_.__r.__words[2]) != 8)
      {
        if (HIBYTE(v888.__r_.__value_.__r.__words[2]) != 10)
        {
          goto LABEL_196;
        }

        if (v888.__r_.__value_.__r.__words[0] != 0x6261696C65726E75 || LOWORD(v888.__r_.__value_.__r.__words[1]) != 25964)
        {
          goto LABEL_196;
        }

LABEL_184:
        *(this + 258) = 0;
        goto LABEL_222;
      }

      if (v888.__r_.__value_.__r.__words[0] != 0x676E6F7274736432)
      {
        v100 = &v888;
        goto LABEL_195;
      }
    }

    v96 = 2;
    goto LABEL_221;
  }

LABEL_222:
  v744 = sub_1D0D3E05C(this, this + 131, "estimator_attitude_determination_maneuver_analysis_duration", 0.0);
  v740 = sub_1D0D3E05C(this, this + 132, "estimator_attitude_determination_minimum_gnss_delta_speed", 1.0);
  v736 = sub_1D0D3E05C(this, this + 133, "estimator_attitude_determination_minimum_linear_acceleration", 0.0);
  v732 = sub_1D0D3E05C(this, this + 134, "estimator_attitude_determination_minimum_rotation_rate", 0.0);
  v728 = sub_1D0D3E05C(this, this + 135, "estimator_attitude_determination_minimum_speed", 0.0);
  v724 = sub_1D0D3E05C(this, this + 136, "estimator_attitude_event_raise_minimum_interval", 0.0);
  v720 = sub_1D0D3E05C(this, this + 130, "estimator_attitude_linear_acceleration_checking_interval", 0.0);
  v716 = sub_1D0D3E05C(this, this + 142, "estimator_attitude_rotation_checking_interval", 0.0);
  v712 = sub_1D0D3E05C(this, this + 143, "estimator_attitude_sensor_downsample_duration", 0.01);
  v709 = sub_1D0D3E05C(this, this + 144, "estimator_attitude_stationary_checking_interval", 0.0);
  v706 = sub_1D0D3E05C(this, this + 137, "estimator_attitude_linear_movement_gyro_mean_threshold", 0.0);
  v703 = sub_1D0D3E05C(this, this + 138, "estimator_attitude_linear_movement_gyro_variance_threshold", 0.0);
  v700 = sub_1D0D3E05C(this, this + 139, "estimator_attitude_determination_dual_direction_smoothing_cutoff_frequency", 0.0);
  v697 = sub_1D0D3E05C(this, this + 140, "estimator_attitude_determination_turn_maneuver_duration", 0.0);
  v694 = sub_1D0D3E05C(this, this + 141, "estimator_attitude_determination_minimum_gnss_interval_for_turn_direction", 0.0);
  v691 = sub_1D0D3E05C(this, this + 145, "estimator_attitude_determination_vehicle_tilt_uncertainty", 0.0);
  v688 = sub_1D0D3E05C(this, this + 146, "estimator_attitude_determination_mount_wobbling_arw_noise", 0.0);
  v685 = sub_1D0D3E05C(this, this + 147, "estimator_attitude_determination_max_velocity_direction_error", 0.0);
  v682 = sub_1D0D3E05C(this, this + 148, "estimator_attitude_determination_innovation_range_ratio", 0.0);
  v127 = sub_1D0D3EE60(this, this + 298, "estimator_attitude_determination_max_number_out_range_reset_filter", 2);
  v128 = sub_1D0D3E05C(this, this + 150, "estimator_gravity_sigma", 0.0);
  v129 = sub_1D0D3E05C(this, this + 151, "estimator_velocity_sigma", 0.0);
  v130 = sub_1D0D3E05C(this, this + 152, "estimator_acceleration_stabilization_frequency", 0.0);
  v131 = sub_1D0D3E05C(this, this + 153, "estimator_acceleration_stabilization_sigma", 0.0);
  v132 = sub_1D0D3E05C(this, this + 156, "estimator_maximum_fullstatedynamics_integration_stepsize", 0.0);
  v133 = sub_1D0D3E05C(this, this + 159, "estimator_initial_velocity_sigma", 0.0);
  v134 = sub_1D0D3E05C(this, this + 157, "estimator_initial_clockbias_sigma", 0.0);
  v135 = sub_1D0D3E05C(this, this + 158, "estimator_initial_clockdrift_sigma", 0.0);
  v136 = fmax(ceil((*(this + 156) + *(this + 156)) / *(this + 81)), 1.0);
  if (sub_1D0D3EE60(this, &v887, "estimator_accelerometer_preprocessor_kernel_halfwidth", 0))
  {
    if (v887 <= v136)
    {
      *(this + 320) = v887;
      v142 = 1;
    }

    else
    {
      sub_1D0BC2944(__p);
      v137 = sub_1D0BCD7C4(__p, "estimator_accelerometer_preprocessor_kernel_halfwidth - exceeds max value (", 75);
      v138 = MEMORY[0x1D387E9D0](v137, v136);
      sub_1D0BCD7C4(v138, ")", 1);
      sub_1D0D3627C(&v889, __p);
      v140 = *(this + 6);
      v139 = *(this + 7);
      if (v140 >= v139)
      {
        v143 = *(this + 5);
        v144 = 0xAAAAAAAAAAAAAAABLL * ((v140 - v143) >> 3);
        v145 = v144 + 1;
        if (v144 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v146 = 0xAAAAAAAAAAAAAAABLL * ((v139 - v143) >> 3);
        if (2 * v146 > v145)
        {
          v145 = 2 * v146;
        }

        if (v146 >= 0x555555555555555)
        {
          v147 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v147 = v145;
        }

        v899 = this + 40;
        if (v147)
        {
          sub_1D0D414A8(this + 40, v147);
        }

        v148 = (24 * v144);
        *v148 = v889;
        memset(&v889, 0, sizeof(v889));
        v141 = 24 * v144 + 24;
        v149 = *(this + 5);
        v150 = *(this + 6) - v149;
        v151 = 24 * v144 - v150;
        memcpy(v148 - v150, v149, v150);
        v152 = *(this + 5);
        *(this + 5) = v151;
        *(this + 6) = v141;
        v153 = *(this + 7);
        *(this + 7) = 0;
        v897.__r_.__value_.__r.__words[2] = v152;
        v898 = v153;
        v897.__r_.__value_.__r.__words[0] = v152;
        v897.__r_.__value_.__l.__size_ = v152;
        sub_1D0D41500(&v897);
      }

      else
      {
        *v140 = v889;
        v141 = &v140[1];
      }

      *(this + 6) = v141;
      __p[0] = *MEMORY[0x1E69E54E8];
      *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
      __p[1] = (MEMORY[0x1E69E5548] + 16);
      if (v895 < 0)
      {
        operator delete(*(&v894 + 1));
      }

      __p[1] = (MEMORY[0x1E69E5538] + 16);
      std::locale::~locale(&v891);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](v896);
      v142 = 0;
    }
  }

  else
  {
    v142 = v884 | v131 | v132 | v133 | v134 | v135 | v879 | v874 | v869 | v864 | v859 | v854 | v849 | v844 | v839 | v834 | v829 | v824 | v819 | v814 | v809 | v804 | v799 | v794 | v788 | v783 | v778 | v773 | v768 | v763 | v758 | v753 | v748 | v744 | v740 | v736 | v732 | v728 | v724 | v720 | v716 | v712 | v709 | v706 | v703 | v700 | v697 | v694 | v691 | v688 | v685 | v682 | v127 | v128 | v129 | v130;
  }

  v154 = sub_1D0D3E05C(this, this + 161, "estimator_accelerometer_preprocessor_kernel_halfwidth_sigma", 0.0);
  v155 = fmax(ceil((*(this + 156) + *(this + 156)) / *(this + 82)), 1.0);
  if (sub_1D0D3EE60(this, &v887, "estimator_rategyro_preprocessor_kernel_halfwidth", 0))
  {
    if (v887 <= v155)
    {
      *(this + 324) = v887;
      v161 = 1;
    }

    else
    {
      sub_1D0BC2944(__p);
      v156 = sub_1D0BCD7C4(__p, "estimator_rategyro_preprocessor_kernel_halfwidth - exceeds max value (", 70);
      v157 = MEMORY[0x1D387E9D0](v156, v155);
      sub_1D0BCD7C4(v157, ")", 1);
      sub_1D0D3627C(&v889, __p);
      v159 = *(this + 6);
      v158 = *(this + 7);
      if (v159 >= v158)
      {
        v162 = *(this + 5);
        v163 = 0xAAAAAAAAAAAAAAABLL * ((v159 - v162) >> 3);
        v164 = v163 + 1;
        if (v163 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v165 = 0xAAAAAAAAAAAAAAABLL * ((v158 - v162) >> 3);
        if (2 * v165 > v164)
        {
          v164 = 2 * v165;
        }

        if (v165 >= 0x555555555555555)
        {
          v166 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v166 = v164;
        }

        v899 = this + 40;
        if (v166)
        {
          sub_1D0D414A8(this + 40, v166);
        }

        v167 = (24 * v163);
        *v167 = v889;
        memset(&v889, 0, sizeof(v889));
        v160 = 24 * v163 + 24;
        v168 = *(this + 5);
        v169 = *(this + 6) - v168;
        v170 = 24 * v163 - v169;
        memcpy(v167 - v169, v168, v169);
        v171 = *(this + 5);
        *(this + 5) = v170;
        *(this + 6) = v160;
        v172 = *(this + 7);
        *(this + 7) = 0;
        v897.__r_.__value_.__r.__words[2] = v171;
        v898 = v172;
        v897.__r_.__value_.__r.__words[0] = v171;
        v897.__r_.__value_.__l.__size_ = v171;
        sub_1D0D41500(&v897);
      }

      else
      {
        *v159 = v889;
        v160 = &v159[1];
      }

      *(this + 6) = v160;
      __p[0] = *MEMORY[0x1E69E54E8];
      *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
      __p[1] = (MEMORY[0x1E69E5548] + 16);
      if (v895 < 0)
      {
        operator delete(*(&v894 + 1));
      }

      __p[1] = (MEMORY[0x1E69E5538] + 16);
      std::locale::~locale(&v891);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](v896);
      v161 = 0;
    }
  }

  else
  {
    v161 = v142 | v154;
  }

  v173 = sub_1D0D3E05C(this, this + 163, "estimator_rategyro_preprocessor_kernel_halfwidth_sigma", 0.0);
  v174 = sub_1D0D3EE60(this, this + 328, "estimator_barometer_preprocessor_kernel_halfwidth", 0);
  v725 = sub_1D0D3E05C(this, this + 165, "estimator_barometer_preprocessor_kernel_halfwidth_sigma", 0.0);
  v721 = sub_1D0D3E05C(this, this + 166, "estimator_barometer_maximum_applicable_pressure_age", 0.0);
  v717 = sub_1D0D3E05C(this, this + 167, "delta_altitude_longest_gap_allowed_for_determination", 0.0);
  v713 = sub_1D0D3E05C(this, this + 168, "delta_altitude_shortest_gap_allowed_for_determination", 0.0);
  v710 = sub_1D0D3E05C(this, this + 169, "delta_altitude_eligible_noise_level_for_determination", 0.0);
  v707 = sub_1D0D3E05C(this, this + 170, "estimator_sanity_maximum_user_device_distance", 0.0);
  v704 = sub_1D0D3E05C(this, this + 171, "estimator_sanity_maximum_user_device_distance_vehicle_fixed", 0.0);
  v701 = sub_1D0D3E05C(this, this + 172, "estimator_sanity_maximum_speed", 0.0);
  v698 = sub_1D0D3E05C(this, this + 173, "estimator_sanity_maximum_acceleration", 0.0);
  v695 = sub_1D0D3E05C(this, this + 174, "estimator_sanity_maximum_accelerometer_bias_multiplier", 0.0);
  v692 = sub_1D0D3E05C(this, this + 175, "estimator_sanity_maximum_accelerometer_scale_multiplier", 0.0);
  v689 = sub_1D0D3E05C(this, this + 176, "estimator_sanity_maximum_rategyro_bias_multiplier", 0.0);
  v686 = sub_1D0D3E05C(this, this + 177, "estimator_sanity_minimum_historical_solution_age", 0.0);
  v683 = sub_1D0D3E05C(this, this + 178, "estimator_er_attitude_unc_inflation", 1.0);
  v680 = sub_1D0D3E05C(this, this + 179, "estimator_er_ins_unc_inflation", 1.0);
  v678 = sub_1D0D3E05C(this, this + 180, "estimator_er_position_unc_inflation", 1.0);
  v676 = sub_1D0D3E05C(this, this + 181, "estimator_er_velocity_unc_inflation", 1.0);
  v674 = sub_1D0D3E05C(this, this + 182, "estimator_er_xo_unc_inflation", 1.0);
  v672 = sub_1D0D3E654(this, this + 183, "failuredetector_minimum_probability_for_failure", 0.0, 1.0);
  v670 = sub_1D0D3EE60(this, this + 368, "batch_size_for_failuredetector_probability_update", 0);
  v668 = sub_1D0D3E05C(this, this + 185, "failuredetector_transition_time", 0.0);
  v666 = sub_1D0D3E654(this, this + 186, "failuredetector_probability_stillfailed", 0.0, 1.0);
  v664 = sub_1D0D3E654(this, this + 187, "failuredetector_probability_stillgood", 0.0, 1.0);
  v662 = sub_1D0D3E05C(this, this + 188, "failuredetector_maxsigma", 0.0);
  v660 = sub_1D0D3EAA0(this, this + 189, "failuredetector_minor_error_recovery_threshold", 0.0, 1.0);
  v658 = sub_1D0D3EAA0(this, this + 190, "failuredetector_major_error_recovery_threshold", 0.0, 1.0);
  v656 = sub_1D0D3E05C(this, this + 191, "failuredetector_minor_error_recovery_std_dev_inflation_factor", 0.0);
  v654 = sub_1D0D3E05C(this, this + 192, "failuredetector_major_error_recovery_std_dev_inflation_factor", 0.0);
  v652 = sub_1D0D3EAA0(this, this + 193, "integrity_estimator_allowable_fraction_of_sensor_cache_for_back_propagation", 0.0, 1.0);
  v650 = sub_1D0D3E05C(this, this + 194, "integrity_estimator_direction_of_travel_difference_from_convergence_tolerance_deg", 0.0);
  v648 = sub_1D0D3E05C(this, this + 195, "integrity_estimator_direction_of_travel_difference_from_passthrough_tolerance_deg", 0.0);
  v646 = sub_1D0D3E05C(this, this + 196, "integrity_estimator_gnss_max_non_adr_signal_dwell_time_sec", 0.0);
  v644 = sub_1D0D3E05C(this, this + 197, "integrity_estimator_minimum_estimator_age_to_issue_recovery_event", 0.0);
  v642 = sub_1D0D3E654(this, this + 198, "integrity_estimator_normalized_difference_probability_threshold", 0.0, 1.0);
  v640 = sub_1D0D3E05C(this, this + 199, "integrity_estimator_position_difference_from_convergence_tolerance_m", 0.0);
  v638 = sub_1D0D3E05C(this, this + 200, "integrity_estimator_position_difference_from_passthrough_tolerance_m", 0.0);
  v636 = sub_1D0D3E05C(this, this + 201, "integrity_estimator_speed_difference_from_convergence_tolerance_mps", 0.0);
  v634 = sub_1D0D3E05C(this, this + 202, "integrity_estimator_speed_difference_from_passthrough_tolerance_mps", 0.0);
  v632 = sub_1D0D3E05C(this, this + 203, "integrity_estimator_time_difference_from_solution_to_check_against_tolerance", 0.0);
  v630 = sub_1D0D3E05C(this, this + 204, "integrity_estimator_time_difference_from_current_time_tolerance", 0.0);
  v628 = sub_1D0D3E05C(this, this + 205, "innovation_test_target_sigma_count_for_reweighted_gnss_measurements", 0.0);
  v626 = sub_1D0D3E05C(this, this + 206, "innovation_test_minimum_reweighted_pseudorange_innovation_m_to_ignore_doppler", 0.0);
  v885 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_pseudorange_sigma_thresholds_default");
  if (v885 == 4)
  {
    v175 = v891;
    *(this + 1656) = *__p;
    *(this + 1672) = v175;
  }

  v900[0] = 0;
  if (sub_1D0D43094(this, v900, "low_plos_doppler_target_sigma_count_scale_factor"))
  {
    v176 = *v900;
    if ((v900[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *v900 <= 0.0 || *v900 > 1.0)
    {
      sub_1D0BC2944(__p);
      v177 = sub_1D0BCD7C4(__p, "low_plos_doppler_target_sigma_count_scale_factor", 48);
      v178 = sub_1D0BCD7C4(v177, " - value (", 10);
      v179 = MEMORY[0x1D387E990](v178, v176);
      v180 = sub_1D0BCD7C4(v179, ") must be greater than ", 23);
      v181 = MEMORY[0x1D387E990](v180, 0.0);
      v182 = sub_1D0BCD7C4(v181, " and less than or equal to", 26);
      MEMORY[0x1D387E990](v182, 1.0);
      sub_1D0D3627C(&v889, __p);
      v184 = *(this + 6);
      v183 = *(this + 7);
      if (v184 >= v183)
      {
        v187 = *(this + 5);
        v188 = 0xAAAAAAAAAAAAAAABLL * ((v184 - v187) >> 3);
        v189 = v188 + 1;
        if (v188 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v190 = 0xAAAAAAAAAAAAAAABLL * ((v183 - v187) >> 3);
        if (2 * v190 > v189)
        {
          v189 = 2 * v190;
        }

        if (v190 >= 0x555555555555555)
        {
          v191 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v191 = v189;
        }

        v899 = this + 40;
        if (v191)
        {
          sub_1D0D414A8(this + 40, v191);
        }

        v185 = v173;
        v192 = (24 * v188);
        *v192 = v889;
        v186 = 24 * v188 + 24;
        v193 = *(this + 5);
        v194 = *(this + 6) - v193;
        v195 = 24 * v188 - v194;
        memcpy(v192 - v194, v193, v194);
        v196 = *(this + 5);
        *(this + 5) = v195;
        *(this + 6) = v186;
        v197 = *(this + 7);
        *(this + 7) = 0;
        v897.__r_.__value_.__r.__words[2] = v196;
        v898 = v197;
        v897.__r_.__value_.__r.__words[0] = v196;
        v897.__r_.__value_.__l.__size_ = v196;
        sub_1D0D41500(&v897);
      }

      else
      {
        v185 = v173;
        *v184 = v889;
        v186 = &v184[1];
      }

      *(this + 6) = v186;
      __p[0] = *MEMORY[0x1E69E54E8];
      *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
      __p[1] = (MEMORY[0x1E69E5548] + 16);
      if (v895 < 0)
      {
        operator delete(*(&v894 + 1));
      }

      __p[1] = (MEMORY[0x1E69E5538] + 16);
      std::locale::~locale(&v891);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](v896);
      v624 = 0;
      v173 = v185;
    }

    else
    {
      *(this + 294) = v900[0];
      v624 = 1;
    }
  }

  else
  {
    v624 = 0;
  }

  LOBYTE(__p[0]) = 0;
  v198 = sub_1D0D43218(this, __p, "low_plos_enable_gnss_measurements");
  if (v198)
  {
    *(this + 2392) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v784 = sub_1D0D43218(this, __p, "low_plos_enable_doppler_measurements");
  if (v784)
  {
    *(this + 2393) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v779 = sub_1D0D43218(this, __p, "low_plos_enable_psr_measurements");
  if (v779)
  {
    *(this + 2394) = __p[0];
  }

  v622 = raven::RavenParameters::ParseAndValidateLowerLimitsOfLowPLOSBins(this, (this + 2360), "low_plos_lower_limits_of_low_plos_bins");
  v621 = raven::RavenParameters::ParseAndValidateLowPLOSPsrTargetSigmaScaleFactors(this, this + 150, "low_plos_psr_target_sigma_scale_factors");
  v620 = sub_1D0D3E358(this, this + 304, "low_plos_maximum_doppler_innovation_magnitude_for_usage_mps", 0.0);
  v619 = sub_1D0D3E358(this, this + 305, "low_plos_maximum_psr_innovation_magnitude_for_usage_m", 0.0);
  v618 = sub_1D0D3E358(this, this + 306, "low_plos_minimum_median_of_high_plos_unsigned_psr_innovations_for_usage_m", 0.0);
  v617 = sub_1D0D3E358(this, this + 308, "low_plos_minimum_std_psr_m", 0.0);
  v616 = sub_1D0D3E358(this, this + 307, "low_plos_minimum_std_doppler_mps", 0.0);
  v615 = sub_1D0D3EAA0(this, this + 309, "low_plos_minimum_satellite_elevation_for_usage_deg", 0.0, 90.0);
  v880 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_doppler_sigma_thresholds_default");
  if (v880 == 4)
  {
    v199 = v891;
    *(this + 1688) = *__p;
    *(this + 1704) = v199;
  }

  v875 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_pseudorange_sigma_thresholds_benign_driving");
  if (v875 == 4)
  {
    v200 = v891;
    *(this + 1720) = *__p;
    *(this + 1736) = v200;
  }

  v870 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_doppler_sigma_thresholds_benign_driving");
  if (v870 == 4)
  {
    v201 = v891;
    *(this + 1752) = *__p;
    *(this + 1768) = v201;
  }

  v865 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_pseudorange_sigma_thresholds_benign_periodic_motion");
  if (v865 == 4)
  {
    v202 = v891;
    *(this + 1784) = *__p;
    *(this + 1800) = v202;
  }

  v860 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_doppler_sigma_thresholds_benign_periodic_motion");
  if (v860 == 4)
  {
    v203 = v891;
    *(this + 1816) = *__p;
    *(this + 1832) = v203;
  }

  v855 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_pseudorange_sigma_thresholds_dense_urban_driving");
  if (v855 == 4)
  {
    v204 = v891;
    *(this + 1848) = *__p;
    *(this + 1864) = v204;
  }

  v850 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_doppler_sigma_thresholds_dense_urban_driving");
  if (v850 == 4)
  {
    v205 = v891;
    *(this + 1880) = *__p;
    *(this + 1896) = v205;
  }

  v845 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_pseudorange_sigma_thresholds_dense_urban_periodic_motion");
  if (v845 == 4)
  {
    v206 = v891;
    *(this + 1912) = *__p;
    *(this + 1928) = v206;
  }

  v840 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_doppler_sigma_thresholds_dense_urban_periodic_motion");
  if (v840 == 4)
  {
    v207 = v891;
    *(this + 1944) = *__p;
    *(this + 1960) = v207;
  }

  v835 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_pseudorange_sigma_thresholds_foliage_driving");
  if (v835 == 4)
  {
    v208 = v891;
    *(this + 1976) = *__p;
    *(this + 1992) = v208;
  }

  v830 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_doppler_sigma_thresholds_foliage_driving");
  if (v830 == 4)
  {
    v209 = v891;
    *(this + 2008) = *__p;
    *(this + 2024) = v209;
  }

  v825 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_pseudorange_sigma_thresholds_foliage_periodic_motion");
  if (v825 == 4)
  {
    v210 = v891;
    *(this + 2040) = *__p;
    *(this + 2056) = v210;
  }

  v820 = sub_1D0D357F4(this, __p, 4, "innovation_test_gnss_doppler_sigma_thresholds_foliage_periodic_motion");
  if (v820 == 4)
  {
    v211 = v891;
    *(this + 2072) = *__p;
    *(this + 2088) = v211;
  }

  LOBYTE(__p[0]) = 0;
  v774 = sub_1D0D43218(this, __p, "innovation_test_gnss_reassess_reweighted_measurements_after_other_measurements");
  if (v774)
  {
    *(this + 2104) = __p[0];
  }

  v614 = sub_1D0D3E05C(this, this + 264, "innovation_gnss_l1_vs_l5_difference_outlier_threshold_pseudorange_m", 0.0);
  v613 = sub_1D0D3E05C(this, this + 265, "innovation_gnss_l1_vs_l5_difference_outlier_threshold_doppler_mps", 0.0);
  v612 = sub_1D0D3EAA0(this, this + 266, "innovation_gnss_l1_vs_l5_difference_inlier_threshold_fraction", 0.0, 1.0);
  v611 = sub_1D0D3E05C(this, this + 267, "innovation_test_position_measurements_sigma_reweight_threshold", 0.0);
  v610 = sub_1D0D3E05C(this, this + 268, "innovation_test_position_measurements_sigma_reject_threshold", 0.0);
  v609 = sub_1D0D3EAA0(this, this + 269, "position_measurement_horizontal_dof_test_probability_threshold", 0.0, 1.0);
  v608 = sub_1D0D3E05C(this, this + 270, "innovation_test_target_sigma_value_for_reweighted_horizontal_position_measurements", 0.0);
  v607 = sub_1D0D3E05C(this, this + 271, "innovation_test_target_sigma_value_for_reweighted_vertical_position_measurements", 0.0);
  v606 = sub_1D0D3E358(this, this + 272, "l1_or_l5_measurement_ignore_if_unc_worse_by_factor_default", 1.0);
  v605 = sub_1D0D3E358(this, this + 273, "l1_or_l5_measurement_ignore_if_unc_worse_by_factor_periodic_motion", 1.0);
  LOBYTE(__p[0]) = 0;
  v769 = sub_1D0D43218(this, __p, "los_estimator_enable_use_of_cn0_evidence");
  if (v769)
  {
    *(this + 2192) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v764 = sub_1D0D43218(this, __p, "los_estimator_enable_use_of_mpf_evidence");
  if (v764)
  {
    *(this + 2193) = __p[0];
  }

  v604 = sub_1D0D3E05C(this, this + 275, "los_estimator_maximum_age_before_deletion_sec", 0.0);
  v603 = sub_1D0D3F2A0(this, this + 552, "los_estimator_minimum_cn0_dbhz_to_allow_L5_band_multipath_indicator_evidence");
  v602 = sub_1D0D3E05C(this, this + 277, "los_estimator_maximum_duration_since_wifi_cross_check_to_use_other_evidence_sec", 0.0);
  v601 = sub_1D0D3E05C(this, this + 278, "los_estimator_maximum_distance_to_apply_gnss_wifi_crosschecks_m", 0.0);
  v600 = sub_1D0D3E358(this, this + 279, "los_estimator_minimum_expected_nlos_path_delay_m", 0.0);
  v599 = sub_1D0D3EAA0(this, this + 280, "los_estimator_minimum_probability_los_for_high_plos_satellite", 0.0, 1.0);
  v598 = sub_1D0D3E05C(this, this + 281, "los_estimator_time_interval_for_transition_probabilities_sec", 0.0);
  v597 = sub_1D0D3EAA0(this, this + 282, "los_estimator_transition_probability_los_given_los", 0.0, 1.0);
  v596 = sub_1D0D3EAA0(this, this + 283, "los_estimator_transition_probability_nlos_given_nlos", 0.0, 1.0);
  v595 = sub_1D0D3EAA0(this, this + 284, "los_estimator_reliability_minimum_best_probability_los", 0.0, 1.0);
  v594 = sub_1D0D3F5D8(this, this + 570, "los_estimator_reliability_minimum_satellites_to_accept");
  v593 = sub_1D0D3E358(this, this + 286, "los_estimator_maximum_duration_to_apply_gnss_wifi_crosschecks_non_pedestrian_sec", 0.0);
  v592 = sub_1D0D3E358(this, this + 287, "los_estimator_maximum_duration_to_apply_gnss_wifi_crosschecks_pedestrian_sec", 0.0);
  v591 = sub_1D0D3EAA0(this, this + 310, "position_context_estimator_initial_probability_indoor", 0.0, 1.0);
  v590 = sub_1D0D3EAA0(this, this + 311, "position_context_estimator_initial_probability_outdoor", 0.0, 1.0);
  v589 = sub_1D0D3EAA0(this, this + 312, "position_context_estimator_transition_probability_indoor_given_indoor", 0.0, 1.0);
  v588 = sub_1D0D3EAA0(this, this + 313, "position_context_estimator_transition_probability_outdoor_given_outdoor", 0.0, 1.0);
  v587 = sub_1D0D3E05C(this, this + 314, "estimator_sigma_tolerance", 0.0);
  v586 = sub_1D0D3E05C(this, this + 315, "estimator_information_dither", 0.0);
  v585 = sub_1D0D3E05C(this, this + 316, "estimator_map_vector_number_of_cross_track_position_standard_deviations_in_road_width", 0.0);
  v584 = sub_1D0D3E05C(this, this + 317, "estimator_map_vector_cross_track_velocity_uncertainty", 0.0);
  v583 = sub_1D0D3E05C(this, this + 321, "ionosphere_estimator_processing_duration", 0.0);
  v815 = sub_1D0D357F4(this, __p, 10, "ionosphere_estimator_initial_states_vec");
  if (v815 == 10)
  {
    v212 = v893;
    *(this + 163) = v892;
    *(this + 164) = v212;
    *(this + 165) = v894;
    v213 = v891;
    *(this + 161) = *__p;
    *(this + 162) = v213;
  }

  v810 = sub_1D0D357F4(this, __p, 10, "ionosphere_estimator_initial_state_sigmas_vec");
  if (v810 == 10)
  {
    v214 = v893;
    *(this + 168) = v892;
    *(this + 169) = v214;
    *(this + 170) = v894;
    v215 = v891;
    *(this + 166) = *__p;
    *(this + 167) = v215;
  }

  LOBYTE(__p[0]) = 0;
  v759 = sub_1D0D43218(this, __p, "ionosphere_estimator_constrain_initial_b1_b2a_state_sigma");
  if (v759)
  {
    *(this + 2736) = __p[0];
  }

  v805 = sub_1D0D357F4(this, __p, 10, "ionosphere_estimator_sigma_ss_vec");
  if (v805 == 10)
  {
    v216 = v893;
    *(this + 2776) = v892;
    *(this + 2792) = v216;
    *(this + 2808) = v894;
    v217 = v891;
    *(this + 2744) = *__p;
    *(this + 2760) = v217;
  }

  v800 = sub_1D0D357F4(this, __p, 10, "ionosphere_estimator_tau_vec");
  if (v800 == 10)
  {
    v218 = v893;
    *(this + 2856) = v892;
    *(this + 2872) = v218;
    *(this + 2888) = v894;
    v219 = v891;
    *(this + 2824) = *__p;
    *(this + 2840) = v219;
  }

  v795 = sub_1D0D357F4(this, __p, 10, "ionosphere_estimator_mean_reverting_constant_vec");
  if (v795 == 10)
  {
    v220 = v893;
    *(this + 2936) = v892;
    *(this + 2952) = v220;
    *(this + 2968) = v894;
    v221 = v891;
    *(this + 2904) = *__p;
    *(this + 2920) = v221;
  }

  v789 = sub_1D0D357F4(this, __p, 10, "ionosphere_estimator_state_convergence_threshold_sigmas_vec");
  if (v789 == 10)
  {
    v222 = v893;
    *(this + 3016) = v892;
    *(this + 3032) = v222;
    *(this + 3048) = v894;
    v223 = v891;
    *(this + 2984) = *__p;
    *(this + 3000) = v223;
  }

  v582 = sub_1D0D3EAA0(this, this + 383, "ionosphere_estimator_failuredetector_minimum_probability_for_failure", 0.0, 1.0);
  v581 = sub_1D0D3E05C(this, this + 384, "ionosphere_estimator_failuredetector_transition_time", 0.0);
  v580 = sub_1D0D3EAA0(this, this + 385, "ionosphere_estimator_failuredetector_probability_stillfailed", 0.0, 1.0);
  v579 = sub_1D0D3EAA0(this, this + 386, "ionosphere_estimator_failuredetector_probability_stillgood", 0.0, 1.0);
  v578 = sub_1D0D3E05C(this, this + 387, "ionosphere_estimator_failuredetector_maxsigma", 0.0);
  v577 = sub_1D0D3EAA0(this, this + 388, "ionosphere_estimator_satellite_elevation_mask_deg", -10.0, 90.0);
  v576 = sub_1D0D3E358(this, this + 389, "ionosphere_estimator_thin_shell_minimum_height", 0.0);
  v575 = sub_1D0D3E358(this, this + 390, "ionosphere_estimator_thin_shell_maximum_height", 0.0);
  v574 = sub_1D0D3EAA0(this, this + 391, "minimum_satellite_elevation_to_use_local_ionosphere_model_deg", -10.0, 90.0);
  v573 = sub_1D0D3E358(this, this + 392, "minimum_time_between_ionosphere_estimator_parameter_updates_s", 0.0);
  v572 = sub_1D0D3E05C(this, this + 393, "map_vector_event_expiration_age", 0.0);
  v571 = sub_1D0D3E05C(this, this + 394, "map_vector_event_raise_minimum_interval", 0.0);
  v570 = sub_1D0D3E05C(this, this + 395, "map_vector_event_device_rotation_threshold", 0.0);
  v569 = sub_1D0D3E05C(this, this + 396, "signal_environment_minimum_event_raise_interval", 0.0);
  v568 = sub_1D0D3E358(this, this + 397, "hysteresis_distance_from_input_DUC_classification_meters", 0.0);
  v567 = sub_1D0D3E358(this, this + 398, "hysteresis_distance_from_input_DU_classification_meters", 0.0);
  v566 = sub_1D0D3E358(this, this + 403, "turn_state_detector_minimum_threshold_to_trigger_turning_high_confidence_dps", 0.0);
  v565 = sub_1D0D3E358(this, this + 404, "turn_state_detector_maximum_threshold_to_trigger_not_turning_low_confidence_dps", 0.0);
  v564 = sub_1D0D3E358(this, this + 405, "turn_state_detector_maximum_threshold_to_trigger_not_turning_high_confidence_dps", 0.0);
  v563 = sub_1D0D3E05C(this, this + 406, "turn_state_detector_rotation_rate_buffer_interval_sec", 0.0);
  v562 = sub_1D0D3E05C(this, this + 407, "estimator_delta_heading_rate_constraint_not_turning_with_low_confidence_dps", 0.0);
  v561 = sub_1D0D3E05C(this, this + 408, "estimator_delta_heading_rate_constraint_not_turning_with_high_confidence_dps", 0.0);
  v560 = sub_1D0D3E05C(this, this + 409, "estimator_delta_heading_rate_constraint_turning_with_low_confidence_dps", 0.0);
  v559 = sub_1D0D3E05C(this, this + 410, "estimator_delta_heading_rate_constraint_turning_with_high_confidence_dps", 0.0);
  v558 = sub_1D0D3E358(this, this + 411, "estimator_turn_state_based_delta_heading_rate_constraint_speed_threshold", 0.0);
  v557 = sub_1D0D3E05C(this, this + 412, "user_speed_assistance_uncertainty_multiplier", 0.01);
  v556 = sub_1D0D3E05C(this, this + 413, "user_speed_assistance_max_dot_covariance_trace", 0.0);
  v555 = sub_1D0D3E05C(this, this + 414, "user_speed_assistance_max_dot_covariance_trace_dense_urban", 0.0);
  v554 = sub_1D0D3E05C(this, this + 415, "solution_selector_backoff_from_raven_solution_maximum_prediction_duration_for_oldest_solution", 0.0);
  v553 = sub_1D0D3E05C(this, this + 416, "solution_selector_max_duration_since_gnss_to_yield_convergence", 0.0);
  v552 = sub_1D0D3E05C(this, this + 417, "solution_selector_max_duration_since_gnss_to_yield_pnt", 0.0);
  v551 = sub_1D0D3E05C(this, this + 418, "solution_selector_max_estimator_pos_unc_to_yield_nonpassthrough", 0.0);
  v550 = sub_1D0D3E05C(this, this + 419, "solution_selector_min_estimator_age_to_yield_nonpassthrough", 0.0);
  v549 = sub_1D0D3E654(this, this + 420, "solution_selector_min_estimator_probability_valid_to_yield_nonpassthrough", 0.0, 1.0);
  LOBYTE(__p[0]) = 0;
  v754 = sub_1D0D43218(this, __p, "solution_selector_delay_raven_estimators_following_gnss_content_starvation");
  if (v754)
  {
    *(this + 3368) = __p[0];
  }

  v548 = sub_1D0D3E05C(this, this + 430, "minimum_estimated_position_sigma_non_DU_SE_m", 0.0);
  v547 = sub_1D0D3E05C(this, this + 434, "minimum_estimated_velocity_sigma_non_DU_SE_mps", 0.0);
  v546 = sub_1D0D3E05C(this, this + 432, "minimum_estimated_dot_sigma_non_DU_SE_deg", 0.0);
  v545 = sub_1D0D3E05C(this, this + 431, "minimum_estimated_position_sigma_DU_SE_m", 0.0);
  v544 = sub_1D0D3E05C(this, this + 435, "minimum_estimated_velocity_sigma_DU_SE_mps", 0.0);
  v543 = sub_1D0D3E05C(this, this + 433, "minimum_estimated_dot_sigma_DU_SE_deg", 0.0);
  v542 = sub_1D0D3E358(this, this + 426, "minimum_estimated_position_sigma_increment_due_to_low_accepted_psr_count_m", 0.0);
  v541 = sub_1D0D3E358(this, this + 427, "minimum_estimated_position_sigma_increment_due_to_low_psr_accept_minus_reject_count_m", 0.0);
  v540 = sub_1D0D3E358(this, this + 428, "minimum_estimated_position_sigma_increment_due_to_high_psr_reject_to_accept_ratio_m", 0.0);
  v539 = sub_1D0D3E358(this, this + 429, "minimum_estimated_position_sigma_increment_due_to_high_psr_reweight_to_accept_ratio_m", 0.0);
  LOBYTE(__p[0]) = 0;
  v749 = sub_1D0D43218(this, __p, "aggressively_floor_minimum_estimated_position_sigma_when_needed");
  if (v749)
  {
    *(this + 3369) = __p[0];
  }

  v538 = sub_1D0D3E358(this, this + 422, "maximum_estimator_age_for_aggressive_indoor_context_sec", 0.0);
  v537 = sub_1D0D3E358(this, this + 423, "maximum_reject_to_accept_ratio_for_minimum_estimated_position_sigma_increment", 0.0);
  v536 = sub_1D0D3E358(this, this + 424, "maximum_reweight_to_accept_ratio_for_minimum_estimated_position_sigma_increment", 0.0);
  v535 = sub_1D0D3F5D8(this, this + 850, "maximum_psr_accept_minus_reject_count_for_position_sigma_increment");
  v534 = sub_1D0D3F5D8(this, this + 851, "maximum_acceptable_psr_count_for_position_sigma_increment");
  v533 = sub_1D0D3E358(this, this + 436, "raven_solution_maximum_prediction_duration", 0.0);
  v532 = sub_1D0D3E05C(this, this + 437, "wifi_2d_minimum_altitude_assistance_uncertainty_m", 0.0);
  v531 = sub_1D0D3E358(this, this + 438, "wifi_2d_maximum_age_of_altitude_assistance_to_use_sec", 0.0);
  LOBYTE(__p[0]) = 0;
  v745 = sub_1D0D43218(this, __p, "enable_gnss_ray_tracing");
  if (v745)
  {
    *(this + 3512) = __p[0];
  }

  v530 = sub_1D0D3E05C(this, this + 440, "gnss_ray_tracing_building_data_query_radius_m", 0.0);
  v529 = sub_1D0D3E358(this, this + 441, "gnss_ray_tracing_distance_beyond_query_radius_to_keep_tiles_m", 0.0);
  LOBYTE(__p[0]) = 0;
  v741 = sub_1D0D43218(this, __p, "gnss_ray_tracing_limited_to_dense_urban_areas");
  if (v741)
  {
    *(this + 3536) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v737 = sub_1D0D43218(this, __p, "gnss_ray_tracing_limited_to_pedestrian_activities");
  if (v737)
  {
    *(this + 3537) = __p[0];
  }

  v528 = sub_1D0D3E05C(this, this + 444, "gnss_ray_tracing_max_allowable_matrix_condition_number", 0.0);
  v900[0] = 0;
  if (sub_1D0D43F18(this, v900, "gnss_ray_tracing_max_reflections"))
  {
    v224 = v900[0];
    if (v900[0] < 6uLL)
    {
      *(this + 445) = v900[0];
      v527 = 1;
    }

    else
    {
      sub_1D0BC2944(__p);
      v225 = sub_1D0BCD7C4(__p, "gnss_ray_tracing_max_reflections", 32);
      v226 = sub_1D0BCD7C4(v225, " - value (", 10);
      v227 = MEMORY[0x1D387EA10](v226, v224);
      v228 = sub_1D0BCD7C4(v227, ") must be greater or equal to ", 30);
      v229 = MEMORY[0x1D387EA10](v228, 0);
      v230 = sub_1D0BCD7C4(v229, " and less or equal to ", 22);
      MEMORY[0x1D387EA10](v230, 5);
      sub_1D0D3627C(&v889, __p);
      v232 = *(this + 6);
      v231 = *(this + 7);
      if (v232 >= v231)
      {
        v236 = *(this + 5);
        v237 = 0xAAAAAAAAAAAAAAABLL * ((v232 - v236) >> 3);
        v238 = v237 + 1;
        if (v237 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v239 = 0xAAAAAAAAAAAAAAABLL * ((v231 - v236) >> 3);
        if (2 * v239 > v238)
        {
          v238 = 2 * v239;
        }

        if (v239 >= 0x555555555555555)
        {
          v240 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v240 = v238;
        }

        v899 = this + 40;
        if (v240)
        {
          sub_1D0D414A8(this + 40, v240);
        }

        v233 = v198;
        v234 = v173;
        v241 = (24 * v237);
        *v241 = v889;
        v235 = 24 * v237 + 24;
        v242 = *(this + 5);
        v243 = *(this + 6) - v242;
        v244 = 24 * v237 - v243;
        memcpy(v241 - v243, v242, v243);
        v245 = *(this + 5);
        *(this + 5) = v244;
        *(this + 6) = v235;
        v246 = *(this + 7);
        *(this + 7) = 0;
        v897.__r_.__value_.__r.__words[2] = v245;
        v898 = v246;
        v897.__r_.__value_.__r.__words[0] = v245;
        v897.__r_.__value_.__l.__size_ = v245;
        sub_1D0D41500(&v897);
      }

      else
      {
        v233 = v198;
        v234 = v173;
        *v232 = v889;
        v235 = &v232[1];
      }

      *(this + 6) = v235;
      __p[0] = *MEMORY[0x1E69E54E8];
      *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
      __p[1] = (MEMORY[0x1E69E5548] + 16);
      if (v895 < 0)
      {
        operator delete(*(&v894 + 1));
      }

      __p[1] = (MEMORY[0x1E69E5538] + 16);
      std::locale::~locale(&v891);
      std::ostream::~ostream();
      MEMORY[0x1D387EBF0](v896);
      v527 = 0;
      v173 = v234;
      v198 = v233;
    }
  }

  else
  {
    v527 = 0;
  }

  v526 = sub_1D0D3E05C(this, this + 443, "gnss_ray_tracing_max_allowable_distance_of_facet_from_point_m", 0.0);
  LOBYTE(__p[0]) = 0;
  v247 = sub_1D0D43218(this, __p, "gnss_ray_tracing_stop_candidate_path_search_if_los_path_exists");
  if (v247)
  {
    *(this + 3568) = __p[0];
  }

  v525 = sub_1D0D3EAA0(this, this + 447, "gnss_ray_tracing_azimuth_resolution_for_approximate_signal_path_search_deg", 0.0, 180.0);
  v524 = sub_1D0D3E05C(this, this + 448, "gnss_ray_tracing_max_reflection_point_shift_for_refined_path_convergence_m", 0.0);
  v523 = sub_1D0D3EE60(this, this + 898, "gnss_ray_tracing_max_iterations_to_converge_refined_path", 0);
  LOBYTE(__p[0]) = 0;
  v733 = sub_1D0D43218(this, __p, "gnss_ray_tracing_fix_user_height_to_typical_height_above_ground");
  if (v733)
  {
    *(this + 3596) = __p[0];
  }

  v522 = sub_1D0D3E358(this, this + 450, "gnss_ray_tracing_min_radius_for_candidate_point_search_m", 0.0);
  v521 = sub_1D0D3E358(this, this + 451, "gnss_ray_tracing_error_ellipse_scale_factor_for_candidate_point_search", 1.0);
  v520 = sub_1D0D3E05C(this, this + 452, "gnss_ray_tracing_candidate_point_search_step_m", 0.0);
  __p[0] = 0;
  v729 = sub_1D0D43F18(this, __p, "gnss_ray_tracing_max_candidate_points_to_allow_ray_tracing");
  if (v729)
  {
    *(this + 453) = __p[0];
  }

  v519 = sub_1D0D3EAA0(this, this + 454, "gnss_ray_tracing_max_probability_line_of_sight", 0.0, 1.0);
  v518 = sub_1D0D3EAA0(this, this + 455, "gnss_ray_tracing_max_satellite_elevation_deg", 0.0, 90.0);
  v517 = sub_1D0D3EAA0(this, this + 456, "gnss_ray_tracing_min_occurrence_rate_of_most_common_sequence", 0.0, 1.0);
  __p[0] = 0;
  v248 = sub_1D0D43F18(this, __p, "gnss_ray_tracing_max_satellites_to_trace_per_epoch");
  if (v248)
  {
    *(this + 457) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v249 = sub_1D0D43218(this, __p, "gnss_ray_tracing_ignore_tile_data");
  if (v249)
  {
    *(this + 3664) = __p[0];
  }

  v516 = sub_1D0D3E05C(this, this + 399, "vio_estimate_sample_period", 0.0);
  v515 = sub_1D0D3E654(this, this + 400, "raven_vio_delta_measurement_sample_period", *(this + 399), 6.0);
  v250 = sub_1D0D3EAA0(this, this + 401, "raven_vl_confidence_minimum_threshold", 0.0, 1.0);
  v251 = sub_1D0D3E05C(this, this + 402, "raven_vl_position_uncertainty_scale_factor", 0.0);
  v790 = v789 == 10;
  if (!sub_1D0D3EDC4(this, &v888, "gravity_model_type"))
  {
    v254 = v161 | v173 | v174 | v725 | v721 | v717 | v713 | v710 | v707 | v704 | v701 | v698 | v695 | v692 | v689 | v686 | v683 | v680 | v678 | v676 | v674 | v672 | v670 | v668 | v666 | v664 | v662 | v660 | v658 | v656 | v654 | v652 | v650 | v648 | v646 | v644 | v642 | v640 | v638 | v636 | v634 | v632 | v630 | v628 | v626 | v624 | v622 | v621 | v620 | v619 | v618 | v617 | v616 | v615 | v614 | v613 | v612 | v611 | v610 | v609 | v608 | v607 | v606 | v605 | v604 | v603 | v602 | v601 | v600 | v599 | v598 | v597 | v596 | v595 | v594 | v593 | v592 | v591 | v590 | v589 | v588 | v587 | v586 | v585 | v584 | v583 | v582 | v581 | v580 | v579 | v578 | v577 | v576 | v575 | v574 | v573 | v572 | v571 | v570 | v569 | v568 | v567 | v566 | v565 | v564 | v563 | v562 | v561 | v560 | v559 | v558 | v557 | v556 | v555 | v554 | v553 | v552 | v551 | v550 | v549 | v548 | v547 | v546 | v545;
    v255 = v249 | v248 | v729 | v733 | v247 | v737 | v741 | v745 | v749 | v754 | v790 | (v795 == 10) | (v800 == 10) | (v805 == 10) | v759 | (v810 == 10) | (v815 == 10) | v764 | v769 | v774 | (v820 == 4 || v825 == 4 || v830 == 4 || v835 == 4 || v840 == 4 || v845 == 4 || v850 == 4 || v855 == 4) | (v860 == 4) | (v865 == 4) | (v870 == 4) | (v875 == 4) | (v880 == 4) | v779 | v784 | v198 | (v885 == 4) | v524 | v523 | v522 | v521 | v520 | v519 | v518 | v517 | v516 | v515 | v250 | v251 | v254 | v544 | v543 | v542 | v541 | v540 | v539 | v538 | v537 | v536 | v535 | v534 | v533 | v532 | v531 | v530 | v529 | v528 | v527 | v526 | v525;
    goto LABEL_413;
  }

  if (SHIBYTE(v888.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v888.__r_.__value_.__l.__size_ == 5)
    {
      v253 = v888.__r_.__value_.__r.__words[0];
      if (*v888.__r_.__value_.__l.__data_ == 961365829 && *(v888.__r_.__value_.__r.__words[0] + 4) == 54)
      {
        goto LABEL_404;
      }

      goto LABEL_384;
    }
  }

  else if (SHIBYTE(v888.__r_.__value_.__r.__words[2]) == 5)
  {
    if (LODWORD(v888.__r_.__value_.__l.__data_) == 961365829 && v888.__r_.__value_.__s.__data_[4] == 54)
    {
      goto LABEL_404;
    }

    v253 = &v888;
LABEL_384:
    v257 = v253->__r_.__value_.__l.__data_;
    v258 = v253->__r_.__value_.__s.__data_[4];
    if (v257 != 963471205 || v258 != 54)
    {
      goto LABEL_388;
    }

LABEL_404:
    *(this + 917) = 0;
    v255 = 1;
    goto LABEL_413;
  }

LABEL_388:
  v260 = sub_1D0B751F4(v900, "gravity_model_type");
  v261 = std::string::append(v260, " - invalid entry: ", 0x13uLL);
  v262 = *&v261->__r_.__value_.__l.__data_;
  v889.__r_.__value_.__r.__words[2] = v261->__r_.__value_.__r.__words[2];
  *&v889.__r_.__value_.__l.__data_ = v262;
  v261->__r_.__value_.__l.__size_ = 0;
  v261->__r_.__value_.__r.__words[2] = 0;
  v261->__r_.__value_.__r.__words[0] = 0;
  if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v263 = &v888;
  }

  else
  {
    v263 = v888.__r_.__value_.__r.__words[0];
  }

  if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v264 = HIBYTE(v888.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v264 = v888.__r_.__value_.__l.__size_;
  }

  v265 = std::string::append(&v889, v263, v264);
  v266 = *&v265->__r_.__value_.__l.__data_;
  v897.__r_.__value_.__r.__words[2] = v265->__r_.__value_.__r.__words[2];
  *&v897.__r_.__value_.__l.__data_ = v266;
  v265->__r_.__value_.__l.__size_ = 0;
  v265->__r_.__value_.__r.__words[2] = 0;
  v265->__r_.__value_.__r.__words[0] = 0;
  v267 = std::string::append(&v897, "", 1uLL);
  v268 = v267->__r_.__value_.__r.__words[0];
  v902[0] = v267->__r_.__value_.__l.__size_;
  *(v902 + 7) = *(&v267->__r_.__value_.__r.__words[1] + 7);
  v269 = HIBYTE(v267->__r_.__value_.__r.__words[2]);
  v267->__r_.__value_.__l.__size_ = 0;
  v267->__r_.__value_.__r.__words[2] = 0;
  v267->__r_.__value_.__r.__words[0] = 0;
  v270 = *(this + 6);
  v271 = *(this + 7);
  if (v270 >= v271)
  {
    v274 = *(this + 5);
    v275 = 0xAAAAAAAAAAAAAAABLL * ((v270 - v274) >> 3);
    v276 = v275 + 1;
    if (v275 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D0C5663C();
    }

    v277 = 0xAAAAAAAAAAAAAAABLL * ((v271 - v274) >> 3);
    if (2 * v277 > v276)
    {
      v276 = 2 * v277;
    }

    if (v277 >= 0x555555555555555)
    {
      v278 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v278 = v276;
    }

    *&v892 = this + 40;
    if (v278)
    {
      sub_1D0D414A8(this + 40, v278);
    }

    v279 = 24 * v275;
    v280 = v902[0];
    *v279 = v268;
    *(v279 + 8) = v280;
    *(v279 + 15) = *(v902 + 7);
    *(v279 + 23) = v269;
    v902[0] = 0;
    *(v902 + 7) = 0;
    v273 = 24 * v275 + 24;
    v281 = *(this + 5);
    v282 = *(this + 6) - v281;
    v283 = (24 * v275 - v282);
    memcpy(v283, v281, v282);
    v284 = *(this + 5);
    *(this + 5) = v283;
    *(this + 6) = v273;
    v285 = *(this + 7);
    *(this + 7) = 0;
    *&v891 = v284;
    *(&v891 + 1) = v285;
    __p[1] = v284;
    __p[0] = v284;
    sub_1D0D41500(__p);
  }

  else
  {
    v272 = v902[0];
    *v270 = v268;
    *(v270 + 8) = v272;
    *(v270 + 15) = *(v902 + 7);
    *(v270 + 23) = v269;
    v273 = v270 + 24;
  }

  *(this + 6) = v273;
  if (SHIBYTE(v897.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v897.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v889.__r_.__value_.__l.__data_);
  }

  if (v901 < 0)
  {
    operator delete(v900[0]);
  }

  v255 = 0;
LABEL_413:
  LOBYTE(__p[0]) = 0;
  v286 = sub_1D0D43218(this, __p, "gravity_model_load_from_file");
  if (v286)
  {
    *(this + 3672) = __p[0];
  }

  v287 = (this + 3680);
  if (sub_1D0D3E978(this, (this + 3680), "gravity_model_parameters", &unk_1D0ED80C5))
  {
    if (*(this + 3672) != 1)
    {
      goto LABEL_427;
    }

    cnconsole::filesystem::absolute(this + 460, __p);
    if (BYTE8(v891) == 1)
    {
      *&v897.__r_.__value_.__l.__data_ = *__p;
      v897.__r_.__value_.__r.__words[2] = v891;
      *&v891 = 0;
      __p[0] = 0;
      __p[1] = 0;
    }

    else
    {
      sub_1D0B751F4(&v897, &unk_1D0ED80C5);
    }

    if (*(this + 3703) < 0)
    {
      operator delete(*v287);
    }

    *v287 = *&v897.__r_.__value_.__l.__data_;
    *(this + 462) = *(&v897.__r_.__value_.__l + 2);
    *(&v897.__r_.__value_.__s + 23) = 0;
    v897.__r_.__value_.__s.__data_[0] = 0;
    if (BYTE8(v891) == 1 && SBYTE7(v891) < 0)
    {
      operator delete(__p[0]);
    }

    if (!cnconsole::filesystem::isFileReadable(this + 460))
    {
      sub_1D0B751F4(&v889, "gravity_model_parameters");
      v289 = std::string::append(&v889, " - failed to open file for reading: ", 0x24uLL);
      v290 = *&v289->__r_.__value_.__l.__data_;
      v897.__r_.__value_.__r.__words[2] = v289->__r_.__value_.__r.__words[2];
      *&v897.__r_.__value_.__l.__data_ = v290;
      v289->__r_.__value_.__l.__size_ = 0;
      v289->__r_.__value_.__r.__words[2] = 0;
      v289->__r_.__value_.__r.__words[0] = 0;
      v291 = *(this + 3703);
      if (v291 >= 0)
      {
        v292 = this + 3680;
      }

      else
      {
        v292 = *(this + 460);
      }

      if (v291 >= 0)
      {
        v293 = *(this + 3703);
      }

      else
      {
        v293 = *(this + 461);
      }

      v294 = std::string::append(&v897, v292, v293);
      v295 = v294->__r_.__value_.__r.__words[0];
      v900[0] = v294->__r_.__value_.__l.__size_;
      *(v900 + 7) = *(&v294->__r_.__value_.__r.__words[1] + 7);
      v296 = HIBYTE(v294->__r_.__value_.__r.__words[2]);
      v294->__r_.__value_.__l.__size_ = 0;
      v294->__r_.__value_.__r.__words[2] = 0;
      v294->__r_.__value_.__r.__words[0] = 0;
      v297 = *(this + 6);
      v298 = *(this + 7);
      if (v297 >= v298)
      {
        v300 = *(this + 5);
        v301 = 0xAAAAAAAAAAAAAAABLL * ((v297 - v300) >> 3);
        v302 = v301 + 1;
        if (v301 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v303 = 0xAAAAAAAAAAAAAAABLL * ((v298 - v300) >> 3);
        if (2 * v303 > v302)
        {
          v302 = 2 * v303;
        }

        if (v303 >= 0x555555555555555)
        {
          v304 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v304 = v302;
        }

        *&v892 = this + 40;
        if (v304)
        {
          sub_1D0D414A8(this + 40, v304);
        }

        v305 = 24 * v301;
        *v305 = v295;
        *(v305 + 8) = v900[0];
        *(v305 + 15) = *(v900 + 7);
        *(v305 + 23) = v296;
        memset(v900, 0, 15);
        v299 = 24 * v301 + 24;
        v306 = *(this + 5);
        v307 = *(this + 6) - v306;
        v308 = (24 * v301 - v307);
        memcpy(v308, v306, v307);
        v309 = *(this + 5);
        *(this + 5) = v308;
        *(this + 6) = v299;
        v310 = *(this + 7);
        *(this + 7) = 0;
        *&v891 = v309;
        *(&v891 + 1) = v310;
        __p[1] = v309;
        __p[0] = v309;
        sub_1D0D41500(__p);
      }

      else
      {
        *v297 = v295;
        *(v297 + 8) = v900[0];
        *(v297 + 15) = *(v900 + 7);
        *(v297 + 23) = v296;
        v299 = v297 + 24;
      }

      *(this + 6) = v299;
      if (SHIBYTE(v897.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v897.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v889.__r_.__value_.__l.__data_);
      }

      sub_1D0B751F4(__p, &unk_1D0ED80C5);
      if (*(this + 3703) < 0)
      {
        operator delete(*v287);
      }

      v288 = 0;
      *v287 = *__p;
      *(this + 462) = v891;
    }

    else
    {
LABEL_427:
      v288 = 1;
    }
  }

  else
  {
    v288 = v255 | v286;
  }

  v311 = sub_1D0D3EE60(this, this + 926, "gravity_model_truncation_degree", 0);
  LOBYTE(__p[0]) = 0;
  v312 = sub_1D0D43218(this, __p, "raven_output_enabled");
  if (v312)
  {
    *(this + 3708) = __p[0];
  }

  v313 = (this + 3712);
  if (sub_1D0D3E978(this, (this + 3712), "raven_output_file", &unk_1D0ED80C5))
  {
    if (*(this + 3708) != 1)
    {
      goto LABEL_466;
    }

    cnconsole::filesystem::absolute(this + 464, __p);
    if (BYTE8(v891) == 1)
    {
      *&v897.__r_.__value_.__l.__data_ = *__p;
      v897.__r_.__value_.__r.__words[2] = v891;
      *&v891 = 0;
      __p[0] = 0;
      __p[1] = 0;
    }

    else
    {
      sub_1D0B751F4(&v897, &unk_1D0ED80C5);
    }

    if (*(this + 3735) < 0)
    {
      operator delete(*v313);
    }

    *v313 = *&v897.__r_.__value_.__l.__data_;
    *(this + 466) = *(&v897.__r_.__value_.__l + 2);
    *(&v897.__r_.__value_.__s + 23) = 0;
    v897.__r_.__value_.__s.__data_[0] = 0;
    if (BYTE8(v891) == 1 && SBYTE7(v891) < 0)
    {
      operator delete(__p[0]);
    }

    if (!cnconsole::filesystem::isFileWriteable(this + 3712))
    {
      sub_1D0B751F4(&v889, "raven_output_file_");
      v315 = std::string::append(&v889, " - failed to open file for writing: ", 0x24uLL);
      v316 = *&v315->__r_.__value_.__l.__data_;
      v897.__r_.__value_.__r.__words[2] = v315->__r_.__value_.__r.__words[2];
      *&v897.__r_.__value_.__l.__data_ = v316;
      v315->__r_.__value_.__l.__size_ = 0;
      v315->__r_.__value_.__r.__words[2] = 0;
      v315->__r_.__value_.__r.__words[0] = 0;
      v317 = *(this + 3735);
      if (v317 >= 0)
      {
        v318 = this + 3712;
      }

      else
      {
        v318 = *(this + 464);
      }

      if (v317 >= 0)
      {
        v319 = *(this + 3735);
      }

      else
      {
        v319 = *(this + 465);
      }

      v320 = std::string::append(&v897, v318, v319);
      v321 = v320->__r_.__value_.__r.__words[0];
      v900[0] = v320->__r_.__value_.__l.__size_;
      *(v900 + 7) = *(&v320->__r_.__value_.__r.__words[1] + 7);
      v322 = HIBYTE(v320->__r_.__value_.__r.__words[2]);
      v320->__r_.__value_.__l.__size_ = 0;
      v320->__r_.__value_.__r.__words[2] = 0;
      v320->__r_.__value_.__r.__words[0] = 0;
      v323 = *(this + 6);
      v324 = *(this + 7);
      if (v323 >= v324)
      {
        v326 = *(this + 5);
        v327 = 0xAAAAAAAAAAAAAAABLL * ((v323 - v326) >> 3);
        v328 = v327 + 1;
        if (v327 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v329 = 0xAAAAAAAAAAAAAAABLL * ((v324 - v326) >> 3);
        if (2 * v329 > v328)
        {
          v328 = 2 * v329;
        }

        if (v329 >= 0x555555555555555)
        {
          v330 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v330 = v328;
        }

        *&v892 = this + 40;
        if (v330)
        {
          sub_1D0D414A8(this + 40, v330);
        }

        v331 = 24 * v327;
        *v331 = v321;
        *(v331 + 8) = v900[0];
        *(v331 + 15) = *(v900 + 7);
        *(v331 + 23) = v322;
        memset(v900, 0, 15);
        v325 = 24 * v327 + 24;
        v332 = *(this + 5);
        v333 = *(this + 6) - v332;
        v334 = (24 * v327 - v333);
        memcpy(v334, v332, v333);
        v335 = *(this + 5);
        *(this + 5) = v334;
        *(this + 6) = v325;
        v336 = *(this + 7);
        *(this + 7) = 0;
        *&v891 = v335;
        *(&v891 + 1) = v336;
        __p[1] = v335;
        __p[0] = v335;
        sub_1D0D41500(__p);
      }

      else
      {
        *v323 = v321;
        *(v323 + 8) = v900[0];
        *(v323 + 15) = *(v900 + 7);
        *(v323 + 23) = v322;
        v325 = v323 + 24;
      }

      *(this + 6) = v325;
      if (SHIBYTE(v897.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v897.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v889.__r_.__value_.__l.__data_);
      }

      sub_1D0B751F4(__p, &unk_1D0ED80C5);
      if (*(this + 3735) < 0)
      {
        operator delete(*v313);
      }

      v314 = 0;
      *v313 = *__p;
      *(this + 466) = v891;
    }

    else
    {
LABEL_466:
      v314 = 1;
    }
  }

  else
  {
    v314 = v288 | v311 | v312;
  }

  LOBYTE(__p[0]) = 0;
  v337 = sub_1D0D43218(this, __p, "debug_system_log_stream_enabled");
  if (v337)
  {
    *(this + 3737) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v338 = sub_1D0D43218(this, __p, "debug_file_log_stream_enabled");
  if (v338)
  {
    *(this + 3738) = __p[0];
  }

  v339 = (this + 3744);
  if (sub_1D0D3E978(this, this + 156, "debug_file_log_stream_name", "raven_debug.txt"))
  {
    if (*(this + 3738) != 1)
    {
      goto LABEL_507;
    }

    cnconsole::filesystem::absolute(this + 468, __p);
    if (BYTE8(v891) == 1)
    {
      *&v897.__r_.__value_.__l.__data_ = *__p;
      v897.__r_.__value_.__r.__words[2] = v891;
      *&v891 = 0;
      __p[0] = 0;
      __p[1] = 0;
    }

    else
    {
      sub_1D0B751F4(&v897, &unk_1D0ED80C5);
    }

    if (*(this + 3767) < 0)
    {
      operator delete(*v339);
    }

    *v339 = *&v897.__r_.__value_.__l.__data_;
    *(this + 470) = *(&v897.__r_.__value_.__l + 2);
    *(&v897.__r_.__value_.__s + 23) = 0;
    v897.__r_.__value_.__s.__data_[0] = 0;
    if (BYTE8(v891) == 1 && SBYTE7(v891) < 0)
    {
      operator delete(__p[0]);
    }

    if (!cnconsole::filesystem::isFileWriteable(this + 3744))
    {
      sub_1D0B751F4(&v889, "debug_file_log_stream_name_");
      v341 = std::string::append(&v889, " - failed to open file for writing: ", 0x24uLL);
      v342 = *&v341->__r_.__value_.__l.__data_;
      v897.__r_.__value_.__r.__words[2] = v341->__r_.__value_.__r.__words[2];
      *&v897.__r_.__value_.__l.__data_ = v342;
      v341->__r_.__value_.__l.__size_ = 0;
      v341->__r_.__value_.__r.__words[2] = 0;
      v341->__r_.__value_.__r.__words[0] = 0;
      v343 = *(this + 3767);
      if (v343 >= 0)
      {
        v344 = this + 3744;
      }

      else
      {
        v344 = *(this + 468);
      }

      if (v343 >= 0)
      {
        v345 = *(this + 3767);
      }

      else
      {
        v345 = *(this + 469);
      }

      v346 = std::string::append(&v897, v344, v345);
      v347 = v346->__r_.__value_.__r.__words[0];
      v900[0] = v346->__r_.__value_.__l.__size_;
      *(v900 + 7) = *(&v346->__r_.__value_.__r.__words[1] + 7);
      v348 = HIBYTE(v346->__r_.__value_.__r.__words[2]);
      v346->__r_.__value_.__l.__size_ = 0;
      v346->__r_.__value_.__r.__words[2] = 0;
      v346->__r_.__value_.__r.__words[0] = 0;
      v349 = *(this + 6);
      v350 = *(this + 7);
      if (v349 >= v350)
      {
        v352 = *(this + 5);
        v353 = 0xAAAAAAAAAAAAAAABLL * ((v349 - v352) >> 3);
        v354 = v353 + 1;
        if (v353 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v355 = 0xAAAAAAAAAAAAAAABLL * ((v350 - v352) >> 3);
        if (2 * v355 > v354)
        {
          v354 = 2 * v355;
        }

        if (v355 >= 0x555555555555555)
        {
          v356 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v356 = v354;
        }

        *&v892 = this + 40;
        if (v356)
        {
          sub_1D0D414A8(this + 40, v356);
        }

        v357 = 24 * v353;
        *v357 = v347;
        *(v357 + 8) = v900[0];
        *(v357 + 15) = *(v900 + 7);
        *(v357 + 23) = v348;
        memset(v900, 0, 15);
        v351 = 24 * v353 + 24;
        v358 = *(this + 5);
        v359 = *(this + 6) - v358;
        v360 = (24 * v353 - v359);
        memcpy(v360, v358, v359);
        v361 = *(this + 5);
        *(this + 5) = v360;
        *(this + 6) = v351;
        v362 = *(this + 7);
        *(this + 7) = 0;
        *&v891 = v361;
        *(&v891 + 1) = v362;
        __p[1] = v361;
        __p[0] = v361;
        sub_1D0D41500(__p);
      }

      else
      {
        *v349 = v347;
        *(v349 + 8) = v900[0];
        *(v349 + 15) = *(v900 + 7);
        *(v349 + 23) = v348;
        v351 = v349 + 24;
      }

      *(this + 6) = v351;
      if (SHIBYTE(v897.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v897.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v889.__r_.__value_.__l.__data_);
      }

      sub_1D0B751F4(__p, &unk_1D0ED80C5);
      if (*(this + 3767) < 0)
      {
        operator delete(*v339);
      }

      v340 = 0;
      *v339 = *__p;
      *(this + 470) = v891;
    }

    else
    {
LABEL_507:
      v340 = 1;
    }
  }

  else
  {
    v340 = v314 | v337 | v338;
  }

  LOBYTE(__p[0]) = 0;
  v363 = sub_1D0D43218(this, __p, "debug_stdout_log_stream_enabled");
  if (v363)
  {
    *(this + 3768) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v364 = sub_1D0D43218(this, __p, "debug_msr_logging_enabled");
  if (v364)
  {
    *(this + 3769) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v365 = sub_1D0D43218(this, __p, "debug_msr_logging_extra_enabled");
  if (v365)
  {
    *(this + 3770) = __p[0];
  }

  v366 = sub_1D0D3E978(this, &v888, "debug_msr_logging_base_filename", &unk_1D0ED80C5);
  v367 = v340 | v363 | v364 | v365 | v366;
  if ((v366 & *(this + 3769)) == 1)
  {
    cnconsole::filesystem::absolute(&v888.__r_.__value_.__l.__data_, __p);
    if (BYTE8(v891) == 1)
    {
      *&v897.__r_.__value_.__l.__data_ = *__p;
      v897.__r_.__value_.__r.__words[2] = v891;
      *&v891 = 0;
      __p[0] = 0;
      __p[1] = 0;
    }

    else
    {
      sub_1D0B751F4(&v897, &unk_1D0ED80C5);
    }

    v368 = (this + 3776);
    if (*(this + 3799) < 0)
    {
      operator delete(*v368);
    }

    *v368 = *&v897.__r_.__value_.__l.__data_;
    *(this + 474) = *(&v897.__r_.__value_.__l + 2);
    *(&v897.__r_.__value_.__s + 23) = 0;
    v897.__r_.__value_.__s.__data_[0] = 0;
    if (BYTE8(v891) == 1 && SBYTE7(v891) < 0)
    {
      operator delete(__p[0]);
    }

    if (!cnconsole::filesystem::isFileWriteable(this + 3776))
    {
      sub_1D0B751F4(&v889, "debug_msr_logging_base_filename_");
      v369 = std::string::append(&v889, " - failed to open file for writing: ", 0x24uLL);
      v370 = *&v369->__r_.__value_.__l.__data_;
      v897.__r_.__value_.__r.__words[2] = v369->__r_.__value_.__r.__words[2];
      *&v897.__r_.__value_.__l.__data_ = v370;
      v369->__r_.__value_.__l.__size_ = 0;
      v369->__r_.__value_.__r.__words[2] = 0;
      v369->__r_.__value_.__r.__words[0] = 0;
      v371 = *(this + 3799);
      if (v371 >= 0)
      {
        v372 = this + 3776;
      }

      else
      {
        v372 = *(this + 472);
      }

      if (v371 >= 0)
      {
        v373 = *(this + 3799);
      }

      else
      {
        v373 = *(this + 473);
      }

      v374 = std::string::append(&v897, v372, v373);
      v375 = v374->__r_.__value_.__r.__words[0];
      v900[0] = v374->__r_.__value_.__l.__size_;
      *(v900 + 7) = *(&v374->__r_.__value_.__r.__words[1] + 7);
      v376 = HIBYTE(v374->__r_.__value_.__r.__words[2]);
      v374->__r_.__value_.__l.__size_ = 0;
      v374->__r_.__value_.__r.__words[2] = 0;
      v374->__r_.__value_.__r.__words[0] = 0;
      v377 = *(this + 6);
      v378 = *(this + 7);
      if (v377 >= v378)
      {
        v380 = *(this + 5);
        v381 = 0xAAAAAAAAAAAAAAABLL * ((v377 - v380) >> 3);
        v382 = v381 + 1;
        if (v381 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1D0C5663C();
        }

        v383 = 0xAAAAAAAAAAAAAAABLL * ((v378 - v380) >> 3);
        if (2 * v383 > v382)
        {
          v382 = 2 * v383;
        }

        if (v383 >= 0x555555555555555)
        {
          v384 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v384 = v382;
        }

        *&v892 = this + 40;
        if (v384)
        {
          sub_1D0D414A8(this + 40, v384);
        }

        v385 = 24 * v381;
        *v385 = v375;
        *(v385 + 8) = v900[0];
        *(v385 + 15) = *(v900 + 7);
        *(v385 + 23) = v376;
        memset(v900, 0, 15);
        v379 = 24 * v381 + 24;
        v386 = *(this + 5);
        v387 = *(this + 6) - v386;
        v388 = (24 * v381 - v387);
        memcpy(v388, v386, v387);
        v389 = *(this + 5);
        *(this + 5) = v388;
        *(this + 6) = v379;
        v390 = *(this + 7);
        *(this + 7) = 0;
        *&v891 = v389;
        *(&v891 + 1) = v390;
        __p[1] = v389;
        __p[0] = v389;
        sub_1D0D41500(__p);
      }

      else
      {
        *v377 = v375;
        *(v377 + 8) = v900[0];
        *(v377 + 15) = *(v900 + 7);
        *(v377 + 23) = v376;
        v379 = v377 + 24;
      }

      *(this + 6) = v379;
      if (SHIBYTE(v897.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v897.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v889.__r_.__value_.__l.__data_);
      }

      sub_1D0B751F4(__p, &unk_1D0ED80C5);
      if (*(this + 3799) < 0)
      {
        operator delete(*v368);
      }

      v367 = 0;
      *v368 = *__p;
      *(this + 474) = v891;
    }
  }

  if (!sub_1D0D3E978(this, &v888, "debug_logging_level", &unk_1D0ED80C5))
  {
    v395 = v367;
LABEL_700:
    v635 = v395;
    goto LABEL_701;
  }

  if (SHIBYTE(v888.__r_.__value_.__r.__words[2]) < 0)
  {
    switch(v888.__r_.__value_.__l.__size_)
    {
      case 4uLL:
        if (*v888.__r_.__value_.__l.__data_ == 1868983881 || *v888.__r_.__value_.__l.__data_ == 1868983913)
        {
          goto LABEL_688;
        }

        break;
      case 5uLL:
        if (*v888.__r_.__value_.__l.__data_ == 1969382724 && *(v888.__r_.__value_.__r.__words[0] + 4) == 103)
        {
          goto LABEL_655;
        }

        if (*v888.__r_.__value_.__l.__data_ == 1969382756 && *(v888.__r_.__value_.__r.__words[0] + 4) == 103)
        {
          goto LABEL_655;
        }

        if (*v888.__r_.__value_.__l.__data_ == 1869771333 && *(v888.__r_.__value_.__r.__words[0] + 4) == 114)
        {
          goto LABEL_697;
        }

        break;
      case 7uLL:
        if (*v888.__r_.__value_.__l.__data_ == 1651664214 && *(v888.__r_.__value_.__r.__words[0] + 3) == 1702063970)
        {
          goto LABEL_640;
        }

        if (*v888.__r_.__value_.__l.__data_ == 1651664246 && *(v888.__r_.__value_.__r.__words[0] + 3) == 1702063970)
        {
          goto LABEL_640;
        }

        v398 = *v888.__r_.__value_.__l.__data_ == 1634100548 && *(v888.__r_.__value_.__r.__words[0] + 3) == 1953264993;
        if (v398 || (*v888.__r_.__value_.__l.__data_ == 1634100580 ? (v399 = *(v888.__r_.__value_.__r.__words[0] + 3) == 1953264993) : (v399 = 0), v399))
        {
LABEL_616:
          v400 = 3;
LABEL_698:
          *(this + 3800) = v400;
          goto LABEL_699;
        }

        break;
      default:
        goto LABEL_672;
    }

    if (v888.__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_672;
    }

    if (*v888.__r_.__value_.__l.__data_ != 1869771365 || *(v888.__r_.__value_.__r.__words[0] + 4) != 114)
    {
      v406 = v888.__r_.__value_.__r.__words[0];
      if (*v888.__r_.__value_.__l.__data_ != 1819631942 || *(v888.__r_.__value_.__r.__words[0] + 4) != 116)
      {
        if ((*(&v888.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_672;
        }

        goto LABEL_668;
      }

LABEL_1034:
      v400 = 5;
      goto LABEL_698;
    }

LABEL_697:
    v400 = 4;
    goto LABEL_698;
  }

  switch(HIBYTE(v888.__r_.__value_.__r.__words[2]))
  {
    case 4u:
      if ((LODWORD(v888.__r_.__value_.__l.__data_) | 0x20) != 0x6F666E69)
      {
        break;
      }

LABEL_688:
      v400 = 2;
      goto LABEL_698;
    case 5u:
      if ((LODWORD(v888.__r_.__value_.__l.__data_) != 1969382724 || v888.__r_.__value_.__s.__data_[4] != 103) && (LODWORD(v888.__r_.__value_.__l.__data_) != 1969382756 || v888.__r_.__value_.__s.__data_[4] != 103))
      {
        if ((LODWORD(v888.__r_.__value_.__l.__data_) != 1869771333 || v888.__r_.__value_.__s.__data_[4] != 114) && (LODWORD(v888.__r_.__value_.__l.__data_) != 1869771365 || v888.__r_.__value_.__s.__data_[4] != 114))
        {
          if (LODWORD(v888.__r_.__value_.__l.__data_) != 1819631942 || v888.__r_.__value_.__s.__data_[4] != 116)
          {
            v406 = &v888;
LABEL_668:
            v412 = v406->__r_.__value_.__l.__data_;
            v413 = v406->__r_.__value_.__s.__data_[4];
            if (v412 != 1819631974 || v413 != 116)
            {
              break;
            }

            goto LABEL_1034;
          }

          goto LABEL_1034;
        }

        goto LABEL_697;
      }

LABEL_655:
      v635 = 1;
      *(this + 3800) = 1;
      goto LABEL_701;
    case 7u:
      if ((LODWORD(v888.__r_.__value_.__l.__data_) != 1651664214 || *(v888.__r_.__value_.__r.__words + 3) != 1702063970) && (LODWORD(v888.__r_.__value_.__l.__data_) != 1651664246 || *(v888.__r_.__value_.__r.__words + 3) != 1702063970))
      {
        if ((LODWORD(v888.__r_.__value_.__l.__data_) != 1634100548 || *(v888.__r_.__value_.__r.__words + 3) != 1953264993) && (LODWORD(v888.__r_.__value_.__l.__data_) != 1634100580 || *(v888.__r_.__value_.__r.__words + 3) != 1953264993))
        {
          break;
        }

        goto LABEL_616;
      }

LABEL_640:
      *(this + 3800) = 0;
LABEL_699:
      v395 = 1;
      goto LABEL_700;
  }

LABEL_672:
  *(this + 3800) = -1;
  v415 = sub_1D0B751F4(v900, "debug_logging_level");
  v416 = std::string::append(v415, " - invalid entry: ", 0x13uLL);
  v417 = *&v416->__r_.__value_.__l.__data_;
  v889.__r_.__value_.__r.__words[2] = v416->__r_.__value_.__r.__words[2];
  *&v889.__r_.__value_.__l.__data_ = v417;
  v416->__r_.__value_.__l.__size_ = 0;
  v416->__r_.__value_.__r.__words[2] = 0;
  v416->__r_.__value_.__r.__words[0] = 0;
  if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v418 = &v888;
  }

  else
  {
    v418 = v888.__r_.__value_.__r.__words[0];
  }

  if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v419 = HIBYTE(v888.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v419 = v888.__r_.__value_.__l.__size_;
  }

  v420 = std::string::append(&v889, v418, v419);
  v421 = *&v420->__r_.__value_.__l.__data_;
  v897.__r_.__value_.__r.__words[2] = v420->__r_.__value_.__r.__words[2];
  *&v897.__r_.__value_.__l.__data_ = v421;
  v420->__r_.__value_.__l.__size_ = 0;
  v420->__r_.__value_.__r.__words[2] = 0;
  v420->__r_.__value_.__r.__words[0] = 0;
  v422 = std::string::append(&v897, "", 1uLL);
  v423 = v422->__r_.__value_.__r.__words[0];
  v902[0] = v422->__r_.__value_.__l.__size_;
  *(v902 + 7) = *(&v422->__r_.__value_.__r.__words[1] + 7);
  v424 = HIBYTE(v422->__r_.__value_.__r.__words[2]);
  v422->__r_.__value_.__l.__size_ = 0;
  v422->__r_.__value_.__r.__words[2] = 0;
  v422->__r_.__value_.__r.__words[0] = 0;
  v425 = *(this + 6);
  v426 = *(this + 7);
  if (v425 >= v426)
  {
    v429 = *(this + 5);
    v430 = 0xAAAAAAAAAAAAAAABLL * ((v425 - v429) >> 3);
    v431 = v430 + 1;
    if (v430 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D0C5663C();
    }

    v432 = 0xAAAAAAAAAAAAAAABLL * ((v426 - v429) >> 3);
    if (2 * v432 > v431)
    {
      v431 = 2 * v432;
    }

    if (v432 >= 0x555555555555555)
    {
      v433 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v433 = v431;
    }

    *&v892 = this + 40;
    if (v433)
    {
      sub_1D0D414A8(this + 40, v433);
    }

    v434 = 24 * v430;
    v435 = v902[0];
    *v434 = v423;
    *(v434 + 8) = v435;
    *(v434 + 15) = *(v902 + 7);
    *(v434 + 23) = v424;
    v902[0] = 0;
    *(v902 + 7) = 0;
    v428 = 24 * v430 + 24;
    v436 = *(this + 5);
    v437 = *(this + 6) - v436;
    v438 = (24 * v430 - v437);
    memcpy(v438, v436, v437);
    v439 = *(this + 5);
    *(this + 5) = v438;
    *(this + 6) = v428;
    v440 = *(this + 7);
    *(this + 7) = 0;
    *&v891 = v439;
    *(&v891 + 1) = v440;
    __p[1] = v439;
    __p[0] = v439;
    sub_1D0D41500(__p);
  }

  else
  {
    v427 = v902[0];
    *v425 = v423;
    *(v425 + 8) = v427;
    *(v425 + 15) = *(v902 + 7);
    *(v425 + 23) = v424;
    v428 = v425 + 24;
  }

  *(this + 6) = v428;
  if (SHIBYTE(v897.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v897.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v889.__r_.__value_.__l.__data_);
  }

  if (v901 < 0)
  {
    operator delete(v900[0]);
  }

  v635 = 0;
LABEL_701:
  LOBYTE(__p[0]) = 0;
  v886 = sub_1D0D43218(this, __p, "debug_predict_output_to_present");
  if (v886)
  {
    *(this + 3736) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v881 = sub_1D0D43218(this, __p, "enable_rof_ionosphere_model");
  if (v881)
  {
    *(this + 2544) = __p[0];
  }

  v633 = sub_1D0D3E05C(this, this + 319, "rof_ionosphere_staleness_threshold_sec", 0.0);
  LOBYTE(__p[0]) = 0;
  v876 = sub_1D0D43218(this, __p, "gnss_preprocessor_average_doppler_averaged_over_data_interval");
  if (v876)
  {
    *(this + 544) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v871 = sub_1D0D43218(this, __p, "gnss_preprocessor_only_scales_vendor_reported_measurement_uncertainty");
  if (v871)
  {
    *(this + 545) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v866 = sub_1D0D43218(this, __p, "gnss_preprocessor_require_average_doppler_and_doppler_cross_checking");
  if (v866)
  {
    *(this + 546) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v861 = sub_1D0D43218(this, __p, "gnss_preprocessor_rx_band_corrections_are_additive");
  if (v861)
  {
    *(this + 547) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v856 = sub_1D0D43218(this, __p, "gnss_preprocessor_rx_band_corrections_include_inter_constellation_clock_offset");
  if (v856)
  {
    *(this + 548) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v851 = sub_1D0D43218(this, __p, "gnss_preprocessor_use_vendor_supplied_measurement_variances");
  if (v851)
  {
    *(this + 549) = __p[0];
  }

  __p[0] = 0;
  v846 = sub_1D0D43094(this, __p, "gnss_preprocessor_rf_time_bias_variance_scale_factor");
  if (v846)
  {
    *(this + 70) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v841 = sub_1D0D43218(this, __p, "gnss_preprocessor_scale_filtered_receiver_band_cor_uncertainty");
  if (v841)
  {
    *(this + 550) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v836 = sub_1D0D43218(this, __p, "gnss_preprocessor_enable_rx_band_correction_filter");
  if (v836)
  {
    *(this + 551) = __p[0];
  }

  v631 = sub_1D0D3EAA0(this, this + 71, "gnss_preprocessor_receiver_band_correction_lpf_alpha", 2.22507386e-308, 1.0);
  LOBYTE(__p[0]) = 0;
  v831 = sub_1D0D43218(this, __p, "gnss_preprocessor_apply_minnesota_rf_model");
  if (v831)
  {
    *(this + 576) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v826 = sub_1D0D43218(this, __p, "gnss_preprocessor_minnesota_rf_constants_gen2");
  if (v826)
  {
    *(this + 577) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v821 = sub_1D0D43218(this, __p, "gnss_preprocessor_form_averaged_doppler_from_carrier_phase");
  if (v821)
  {
    *(this + 578) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v816 = sub_1D0D43218(this, __p, "gnss_preprocessor_use_instantaneous_doppler_unc_for_averaged");
  if (v816)
  {
    *(this + 579) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v811 = sub_1D0D43218(this, __p, "gnss_preprocessor_resolve_millisecond_pseudorange_errors");
  if (v811)
  {
    *(this + 580) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v806 = sub_1D0D43218(this, __p, "gnss_preprocessor_raise_multiple_doppler_variants");
  if (v806)
  {
    *(this + 581) = __p[0];
  }

  v629 = sub_1D0D3F2A0(this, this + 146, "gnss_preprocessor_minimum_cn0_dbhz_to_allow_L5_multipath_indicator");
  LOBYTE(__p[0]) = 0;
  v801 = sub_1D0D43218(this, __p, "gnss_preprocessor_merge_L1_L5_svinfo_for_galileo");
  if (v801)
  {
    *(this + 588) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v796 = sub_1D0D43218(this, __p, "gnss_preprocessor_need_to_add_ephemeris_unc_to_range_unc");
  if (v796)
  {
    *(this + 589) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v791 = sub_1D0D43218(this, __p, "gnss_preprocessor_need_to_add_rx_band_corr_unc_to_range_unc");
  if (v791)
  {
    *(this + 590) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v785 = sub_1D0D43218(this, __p, "gnss_preprocessor_populate_multipath_indicator");
  if (v785)
  {
    *(this + 591) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v780 = sub_1D0D43218(this, __p, "gnss_use_beidou_measurements");
  if (v780)
  {
    *(this + 592) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v775 = sub_1D0D43218(this, __p, "gnss_use_galileo_measurements");
  if (v775)
  {
    *(this + 593) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v770 = sub_1D0D43218(this, __p, "gnss_use_glonass_measurements");
  if (v770)
  {
    *(this + 594) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v765 = sub_1D0D43218(this, __p, "gnss_use_gps_measurements");
  if (v765)
  {
    *(this + 595) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v760 = sub_1D0D43218(this, __p, "gnss_use_qzss_measurements");
  if (v760)
  {
    *(this + 596) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v755 = sub_1D0D43218(this, __p, "gnss_use_navic_measurements");
  if (v755)
  {
    *(this + 597) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v750 = sub_1D0D43218(this, __p, "gnss_use_beidou_b1_measurements");
  if (v750)
  {
    *(this + 598) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v746 = sub_1D0D43218(this, __p, "gnss_use_beidou_b2a_measurements");
  if (v746)
  {
    *(this + 599) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v742 = sub_1D0D43218(this, __p, "gnss_use_galileo_e1_measurements");
  if (v742)
  {
    *(this + 600) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v738 = sub_1D0D43218(this, __p, "gnss_use_galileo_e5a_measurements");
  if (v738)
  {
    *(this + 601) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v734 = sub_1D0D43218(this, __p, "gnss_use_gps_l1_measurements");
  if (v734)
  {
    *(this + 602) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v730 = sub_1D0D43218(this, __p, "gnss_use_gps_l5_measurements");
  if (v730)
  {
    *(this + 603) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v726 = sub_1D0D43218(this, __p, "gnss_use_qzss_l1_measurements");
  if (v726)
  {
    *(this + 604) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v722 = sub_1D0D43218(this, __p, "gnss_use_qzss_l5_measurements");
  if (v722)
  {
    *(this + 605) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v718 = sub_1D0D43218(this, __p, "gnss_use_doppler_measurements");
  if (v718)
  {
    *(this + 606) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v714 = sub_1D0D43218(this, __p, "gnss_use_psr_measurements");
  if (v714)
  {
    *(this + 607) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v711 = sub_1D0D43218(this, __p, "gnss_process_averaged_doppler_from_phase_tracking");
  if (v711)
  {
    *(this + 608) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v708 = sub_1D0D43218(this, __p, "gnss_process_averaged_doppler");
  if (v708)
  {
    *(this + 609) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v705 = sub_1D0D43218(this, __p, "gnss_process_instantaneous_doppler");
  if (v705)
  {
    *(this + 610) = __p[0];
  }

  LODWORD(__p[0]) = 0;
  v702 = sub_1D0D43850(this, __p, "gnss_minimum_tolerable_carrier_to_noise_ratio");
  if (v702)
  {
    *(this + 153) = __p[0];
  }

  v627 = sub_1D0D3EAA0(this, this + 77, "gnss_minimum_elevation_deg", -90.0, 90.0);
  v625 = sub_1D0D3E05C(this, this + 78, "gnss_min_interval_for_adr_differences", 0.0);
  v623 = sub_1D0D3E05C(this, this + 79, "gnss_max_interval_for_adr_differences", *(this + 78));
  LOBYTE(__p[0]) = 0;
  v699 = sub_1D0D43218(this, __p, "propagate_gnss_measurements");
  if (v699)
  {
    *(this + 840) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v696 = sub_1D0D43218(this, __p, "use_latest_dwell_end_time_for_measurement_propagation");
  if (v696)
  {
    *(this + 841) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v693 = sub_1D0D43218(this, __p, "reduce_gnss_measurement_processing_order_priority_for_beidou_B1c");
  if (v693)
  {
    *(this + 640) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v690 = sub_1D0D43218(this, __p, "debug_allow_accessory_vehicle_speed_assistance");
  if (v690)
  {
    *(this + 3801) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v687 = sub_1D0D43218(this, __p, "debug_allow_activity_state_assistance");
  if (v687)
  {
    *(this + 3802) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v684 = sub_1D0D43218(this, __p, "debug_allow_altitude_assistance");
  if (v684)
  {
    *(this + 3803) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v681 = sub_1D0D43218(this, __p, "debug_allow_altitude_change_assistance");
  if (v681)
  {
    *(this + 3804) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v679 = sub_1D0D43218(this, __p, "debug_allow_attitude_change_assistance");
  if (v679)
  {
    *(this + 3805) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v677 = sub_1D0D43218(this, __p, "debug_allow_device_motion_attitude_event");
  if (v677)
  {
    *(this + 3806) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v675 = sub_1D0D43218(this, __p, "debug_allow_fitness_session_assistance");
  if (v675)
  {
    *(this + 3807) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v673 = sub_1D0D43218(this, __p, "debug_allow_l5_measurements_regardless_of_multipath_flag");
  if (v673)
  {
    *(this + 3808) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v671 = sub_1D0D43218(this, __p, "debug_allow_l1_vs_l5_innovation_difference_edits");
  if (v671)
  {
    *(this + 3809) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v669 = sub_1D0D43218(this, __p, "debug_allow_l1_or_l5_measurement_ignore_if_much_worse");
  if (v669)
  {
    *(this + 3810) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v667 = sub_1D0D43218(this, __p, "debug_allow_maps_route_hints_assistance");
  if (v667)
  {
    *(this + 3811) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v665 = sub_1D0D43218(this, __p, "debug_allow_map_vector_assistance");
  if (v665)
  {
    *(this + 3812) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v663 = sub_1D0D43218(this, __p, "debug_allow_mount_state_assistance");
  if (v663)
  {
    *(this + 3813) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v661 = sub_1D0D43218(this, __p, "debug_allow_motion_state_mediator_notifications");
  if (v661)
  {
    *(this + 3814) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v659 = sub_1D0D43218(this, __p, "debug_allow_moving_state_assistance");
  if (v659)
  {
    *(this + 3815) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v657 = sub_1D0D43218(this, __p, "debug_allow_nonholonomic_assistance");
  if (v657)
  {
    *(this + 3816) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v655 = sub_1D0D43218(this, __p, "debug_allow_odometer_assistance");
  if (v655)
  {
    *(this + 3817) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v653 = sub_1D0D43218(this, __p, "debug_allow_pca_based_horizontal_dot_assistance");
  if (v653)
  {
    *(this + 3818) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v651 = sub_1D0D43218(this, __p, "debug_allow_pedometer_assistance");
  if (v651)
  {
    *(this + 3819) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v649 = sub_1D0D43218(this, __p, "debug_allow_position_assistance");
  if (v649)
  {
    *(this + 3820) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v647 = sub_1D0D43218(this, __p, "debug_allow_position_change_assistance");
  if (v647)
  {
    *(this + 3821) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v645 = sub_1D0D43218(this, __p, "debug_allow_position_clamping");
  if (v645)
  {
    *(this + 3822) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v643 = sub_1D0D43218(this, __p, "debug_allow_tunnel_bridge_assistance");
  if (v643)
  {
    *(this + 3823) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v641 = sub_1D0D43218(this, __p, "debug_allow_tunnel_end_point_assistance");
  if (v641)
  {
    *(this + 3824) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v639 = sub_1D0D43218(this, __p, "debug_allow_velocity_assistance");
  if (v639)
  {
    *(this + 3825) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v637 = sub_1D0D43218(this, __p, "debug_allow_vio_assistance");
  if (v637)
  {
    *(this + 3826) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v441 = sub_1D0D43218(this, __p, "debug_allow_vlf_assistance");
  if (v441)
  {
    *(this + 3827) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v442 = sub_1D0D43218(this, __p, "debug_enable_gnss_msr_processing");
  if (v442)
  {
    *(this + 3828) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v443 = sub_1D0D43218(this, __p, "debug_enable_gnss_msr_processing_test_mode");
  if (v443)
  {
    *(this + 3829) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v444 = sub_1D0D43218(this, __p, "debug_enable_vl_position_msr_processing");
  if (v444)
  {
    *(this + 3830) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v445 = sub_1D0D43218(this, __p, "debug_enable_wifi_2d_to_3d_with_altitude_assistance");
  if (v445)
  {
    *(this + 3831) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v446 = sub_1D0D43218(this, __p, "debug_enable_wifi_msr_processing");
  if (v446)
  {
    *(this + 3832) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v447 = sub_1D0D43218(this, __p, "debug_enable_satellite_los_estimator");
  if (v447)
  {
    *(this + 3833) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v448 = sub_1D0D43218(this, __p, "debug_enable_satellite_los_estimator_wifi_crosschecks");
  if (v448)
  {
    *(this + 3834) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v449 = sub_1D0D43218(this, __p, "debug_enable_satellite_los_estimator_test_mode");
  if (v449)
  {
    *(this + 3835) = __p[0];
  }

  v450 = sub_1D0D3E978(this, &v888, "debug_signal_environment_override", &unk_1D0ED80C5);
  v451 = v702 | v705 | v708 | v711 | v714 | v718 | v722 | v726 | v730 | v734 | v738 | v742 | v746 | v750 | v699 | v696 | v693 | v690 | v687 | v684 | v681 | v679 | v677 | v675 | v673 | v671 | v669 | v667 | v665 | v663 | v661 | v659 | v657 | v655 | v653 | v755 | v760 | v765 | v770 | v775 | v780 | v785 | v791 | v796 | v801 | v806 | v811 | v816 | v821 | v826 | v831 | v836 | v841 | v846 | v851 | v856 | v861 | v866 | v871 | v876 | v881 | v886 | v631 | v629 | v627 | v625 | v623 | v635 | v633 | v651 | v649 | v647 | v645 | v643 | v641 | v639 | v637 | v441 | v442 | v443 | v444 | v445 | v446 | v447 | v448 | v449 | v450;
  if (!v450)
  {
    goto LABEL_1013;
  }

  v452 = HIBYTE(v888.__r_.__value_.__r.__words[2]);
  if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v453 = (&v888 + HIBYTE(v888.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v453 = (v888.__r_.__value_.__r.__words[0] + v888.__r_.__value_.__l.__size_);
  }

  if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v454 = &v888;
  }

  else
  {
    v454 = v888.__r_.__value_.__r.__words[0];
  }

  if (v454 != v453)
  {
    do
    {
      v454->__r_.__value_.__s.__data_[0] = __tolower(v454->__r_.__value_.__s.__data_[0]);
      v454 = (v454 + 1);
    }

    while (v454 != v453);
    v452 = HIBYTE(v888.__r_.__value_.__r.__words[2]);
  }

  if ((v452 & 0x80) == 0)
  {
    if (v452 <= 5u)
    {
      if (v452 <= 3u)
      {
        if (v452 != 2)
        {
          if (v452 != 3)
          {
            goto LABEL_983;
          }

          if (LOWORD(v888.__r_.__value_.__l.__data_) != 30052 || v888.__r_.__value_.__s.__data_[2] != 99)
          {
            goto LABEL_983;
          }

          goto LABEL_944;
        }

        v468 = LOWORD(v888.__r_.__value_.__l.__data_);
LABEL_960:
        if (v468 == 30052)
        {
LABEL_1009:
          v461 = 259;
          goto LABEL_1012;
        }

LABEL_983:
        if (*(this + 3837) == 1)
        {
          *(this + 3837) = 0;
        }

        v477 = sub_1D0B751F4(v900, "debug_signal_environment_override");
        v478 = std::string::append(v477, " - invalid entry: ", 0x13uLL);
        v479 = *&v478->__r_.__value_.__l.__data_;
        v889.__r_.__value_.__r.__words[2] = v478->__r_.__value_.__r.__words[2];
        *&v889.__r_.__value_.__l.__data_ = v479;
        v478->__r_.__value_.__l.__size_ = 0;
        v478->__r_.__value_.__r.__words[2] = 0;
        v478->__r_.__value_.__r.__words[0] = 0;
        if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v480 = &v888;
        }

        else
        {
          v480 = v888.__r_.__value_.__r.__words[0];
        }

        if ((v888.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v481 = HIBYTE(v888.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v481 = v888.__r_.__value_.__l.__size_;
        }

        v482 = std::string::append(&v889, v480, v481);
        v483 = *&v482->__r_.__value_.__l.__data_;
        v897.__r_.__value_.__r.__words[2] = v482->__r_.__value_.__r.__words[2];
        *&v897.__r_.__value_.__l.__data_ = v483;
        v482->__r_.__value_.__l.__size_ = 0;
        v482->__r_.__value_.__r.__words[2] = 0;
        v482->__r_.__value_.__r.__words[0] = 0;
        v484 = std::string::append(&v897, "", 1uLL);
        v485 = v484->__r_.__value_.__r.__words[0];
        v902[0] = v484->__r_.__value_.__l.__size_;
        *(v902 + 7) = *(&v484->__r_.__value_.__r.__words[1] + 7);
        v486 = HIBYTE(v484->__r_.__value_.__r.__words[2]);
        v484->__r_.__value_.__l.__size_ = 0;
        v484->__r_.__value_.__r.__words[2] = 0;
        v484->__r_.__value_.__r.__words[0] = 0;
        v487 = *(this + 6);
        v488 = *(this + 7);
        if (v487 >= v488)
        {
          v491 = *(this + 5);
          v492 = 0xAAAAAAAAAAAAAAABLL * ((v487 - v491) >> 3);
          v493 = v492 + 1;
          if (v492 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1D0C5663C();
          }

          v494 = 0xAAAAAAAAAAAAAAABLL * ((v488 - v491) >> 3);
          if (2 * v494 > v493)
          {
            v493 = 2 * v494;
          }

          if (v494 >= 0x555555555555555)
          {
            v495 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v495 = v493;
          }

          *&v892 = this + 40;
          if (v495)
          {
            sub_1D0D414A8(this + 40, v495);
          }

          v496 = 24 * v492;
          v497 = v902[0];
          *v496 = v485;
          *(v496 + 8) = v497;
          *(v496 + 15) = *(v902 + 7);
          *(v496 + 23) = v486;
          v490 = 24 * v492 + 24;
          v498 = *(this + 5);
          v499 = *(this + 6) - v498;
          v500 = (24 * v492 - v499);
          memcpy(v500, v498, v499);
          v501 = *(this + 5);
          *(this + 5) = v500;
          *(this + 6) = v490;
          v502 = *(this + 7);
          *(this + 7) = 0;
          *&v891 = v501;
          *(&v891 + 1) = v502;
          __p[1] = v501;
          __p[0] = v501;
          sub_1D0D41500(__p);
        }

        else
        {
          v489 = v902[0];
          *v487 = v485;
          *(v487 + 8) = v489;
          *(v487 + 15) = *(v902 + 7);
          *(v487 + 23) = v486;
          v490 = v487 + 24;
        }

        *(this + 6) = v490;
        if (SHIBYTE(v897.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v897.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v889.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v889.__r_.__value_.__l.__data_);
        }

        if (v901 < 0)
        {
          operator delete(v900[0]);
        }

        v451 = 0;
        goto LABEL_1013;
      }

      if (v452 != 4)
      {
        if (LODWORD(v888.__r_.__value_.__l.__data_) != 1634891122 || v888.__r_.__value_.__s.__data_[4] != 108)
        {
          if (LODWORD(v888.__r_.__value_.__l.__data_) != 1633841781 || v888.__r_.__value_.__s.__data_[4] != 110)
          {
            goto LABEL_983;
          }

          goto LABEL_936;
        }

LABEL_1011:
        v461 = 257;
        goto LABEL_1012;
      }

      v470 = v888.__r_.__value_.__l.__data_;
      goto LABEL_976;
    }

    if (v452 <= 9u)
    {
      if (v452 != 6)
      {
        if (v452 != 7)
        {
          goto LABEL_983;
        }

        if (LODWORD(v888.__r_.__value_.__l.__data_) != 1852534389 || *(v888.__r_.__value_.__r.__words + 3) != 1853321070)
        {
          v459 = &v888;
LABEL_969:
          v473 = v459->__r_.__value_.__l.__data_;
          v474 = *(v459->__r_.__value_.__r.__words + 3);
          if (v473 != 1768714086 || v474 != 1701273961)
          {
            goto LABEL_983;
          }

          v461 = 262;
LABEL_1012:
          *(this + 1918) = v461;
          goto LABEL_1013;
        }

LABEL_906:
        v461 = 256;
        goto LABEL_1012;
      }

      if (LODWORD(v888.__r_.__value_.__l.__data_) != 1769103725 || WORD2(v888.__r_.__value_.__r.__words[0]) != 25966)
      {
        goto LABEL_983;
      }

LABEL_1010:
      v461 = 261;
      goto LABEL_1012;
    }

    if (v452 == 10)
    {
      if (v888.__r_.__value_.__r.__words[0] != 0x62727565736E6564 || LOWORD(v888.__r_.__value_.__r.__words[1]) != 28257)
      {
        goto LABEL_983;
      }

      goto LABEL_1009;
    }

    if (v452 != 16)
    {
      goto LABEL_983;
    }

    if (v888.__r_.__value_.__r.__words[0] != 0x62727565736E6564 || v888.__r_.__value_.__l.__size_ != 0x6E6F796E61636E61)
    {
      goto LABEL_983;
    }

LABEL_944:
    v461 = 260;
    goto LABEL_1012;
  }

  v456 = v888.__r_.__value_.__l.__size_;
  if (v888.__r_.__value_.__l.__size_ > 5)
  {
    if (v888.__r_.__value_.__l.__size_ > 9)
    {
      if (v888.__r_.__value_.__l.__size_ == 10)
      {
        if (*v888.__r_.__value_.__l.__data_ != 0x62727565736E6564 || *(v888.__r_.__value_.__r.__words[0] + 8) != 28257)
        {
          goto LABEL_983;
        }

        goto LABEL_1009;
      }

      if (v888.__r_.__value_.__l.__size_ == 16)
      {
        if (*v888.__r_.__value_.__l.__data_ != 0x62727565736E6564 || *(v888.__r_.__value_.__r.__words[0] + 8) != 0x6E6F796E61636E61)
        {
          goto LABEL_983;
        }

        goto LABEL_944;
      }

      goto LABEL_967;
    }

    if (v888.__r_.__value_.__l.__size_ != 6)
    {
      if (v888.__r_.__value_.__l.__size_ == 7)
      {
        if (*v888.__r_.__value_.__l.__data_ == 1852534389 && *(v888.__r_.__value_.__r.__words[0] + 3) == 1853321070)
        {
          goto LABEL_906;
        }

LABEL_968:
        v459 = v888.__r_.__value_.__r.__words[0];
        goto LABEL_969;
      }

LABEL_967:
      if (v456 != 7)
      {
        goto LABEL_983;
      }

      goto LABEL_968;
    }

    if (*v888.__r_.__value_.__l.__data_ == 1769103725 && *(v888.__r_.__value_.__r.__words[0] + 4) == 25966)
    {
      goto LABEL_1010;
    }

LABEL_966:
    v456 = v888.__r_.__value_.__l.__size_;
    goto LABEL_967;
  }

  if (v888.__r_.__value_.__l.__size_ <= 3)
  {
    if (v888.__r_.__value_.__l.__size_ == 2)
    {
      v468 = *v888.__r_.__value_.__l.__data_;
      goto LABEL_960;
    }

    if (v888.__r_.__value_.__l.__size_ == 3)
    {
      if (*v888.__r_.__value_.__l.__data_ != 30052 || *(v888.__r_.__value_.__r.__words[0] + 2) != 99)
      {
        goto LABEL_983;
      }

      goto LABEL_944;
    }

    goto LABEL_967;
  }

  if (v888.__r_.__value_.__l.__size_ != 4)
  {
    if (*v888.__r_.__value_.__l.__data_ == 1634891122 && *(v888.__r_.__value_.__r.__words[0] + 4) == 108)
    {
      goto LABEL_1011;
    }

    if (*v888.__r_.__value_.__l.__data_ == 1633841781 && *(v888.__r_.__value_.__r.__words[0] + 4) == 110)
    {
LABEL_936:
      v461 = 258;
      goto LABEL_1012;
    }

    goto LABEL_966;
  }

  v470 = *v888.__r_.__value_.__l.__data_;
LABEL_976:
  if (v470 != 1701736302)
  {
    goto LABEL_983;
  }

  if (*(this + 3837) == 1)
  {
    *(this + 3837) = 0;
  }

LABEL_1013:
  LOBYTE(__p[0]) = 0;
  v503 = sub_1D0D43218(this, __p, "debug_select_use_raw_sensor_events");
  if (v503)
  {
    *(this + 3838) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  v504 = sub_1D0D43218(this, __p, "debug_allow_vehicle_fixed_parameterization");
  if (v504)
  {
    *(this + 3839) = __p[0];
  }

  LODWORD(__p[0]) = 0;
  v505 = sub_1D0D43D5C(this, __p, "debug_artificial_gnss_time_offset_ms");
  if (v505)
  {
    *(this + 960) = __p[0];
  }

  LOBYTE(__p[0]) = 0;
  if (sub_1D0D43218(this, __p, "debug_gnss_preprocessor_ignore_non_tracking_uncertainty"))
  {
    *(this + 3844) = __p[0];
LABEL_1022:
    v511 = 1;
    goto LABEL_1031;
  }

  if ((v451 | v503 | v504 | v505))
  {
    goto LABEL_1022;
  }

  *(this + 33) = 0;
  LOWORD(v897.__r_.__value_.__l.__data_) = 12;
  v889.__r_.__value_.__s.__data_[0] = 4;
  if (*(this + 31) < 0)
  {
    sub_1D0BC39B4(__p, *(this + 1), *(this + 2));
  }

  else
  {
    *__p = *(this + 8);
    *&v891 = *(this + 3);
  }

  v512 = __p;
  if (SBYTE7(v891) < 0)
  {
    LOBYTE(v512) = __p[0];
  }

  cnprint::CNPrinter::Print(&v897, &v889, "Error: Invalid configuration option: %s", v506, v507, v508, v509, v510, v512);
  if (SBYTE7(v891) < 0)
  {
    operator delete(__p[0]);
  }

  v511 = 0;
LABEL_1031:
  if (SHIBYTE(v888.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v888.__r_.__value_.__l.__data_);
  }

  v513 = *MEMORY[0x1E69E9840];
  return v511;
}