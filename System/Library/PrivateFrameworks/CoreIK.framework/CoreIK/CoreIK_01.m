_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *FIK::IKArray<float>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 4 * a2;
    v6 = (*(*a3 + 16))(a3, 4 * a2, 4);
    a1[1] = v6;
    a1[2] = a3;
    if (v5)
    {
      bzero(v6, v5);
    }
  }

  else
  {
    a1[1] = 0;
    a1[2] = a3;
  }

  return a1;
}

void *FIK::IKArray<float>::IKArray<float,void>(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  FIK::IKArray<float>::MemoryBlock::MemoryBlock(a1 + 1, (a3 + 7) & 0xFFFFFFFFFFFFFFF8, a4);
  if (a3)
  {
    v7 = a1[2];
    v8 = 4 * a3;
    do
    {
      v9 = *a2++;
      *v7++ = v9;
      v8 -= 4;
    }

    while (v8);
  }

  return a1;
}

double FIK::OrientationTask::OrientationTask(FIK::OrientationTask *this, char a2, const FIK::Segment *a3)
{
  *(this + 34) = off_28589A448;
  *this = off_28589A6A0;
  FIK::Task::Task(this, off_28589A070, 3, a2, a3);
  *v3 = &unk_285899C10;
  *(v3 + 264) = 0;
  *(v3 + 272) = &unk_285899F10;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  result = 0.0;
  *(v3 + 256) = 0;
  v5 = MEMORY[0x277D860B0];
  v6 = *(MEMORY[0x277D860B0] + 16);
  *(v3 + 192) = *MEMORY[0x277D860B0];
  *(v3 + 208) = v6;
  *(v3 + 224) = *(v5 + 32);
  *(v3 + 240) = xmmword_245A01E80;
  return result;
}

__n128 FIK::OrientationTask::setTarget(__n128 *this, __n128 result, float a3, float a4, float a5)
{
  result.n128_f32[1] = a3;
  result.n128_u64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  this[15] = result;
  return result;
}

__n128 virtual thunk toFIK::OrientationTask::setTarget(FIK::OrientationTask *this, __n128 result, float a3, float a4, float a5)
{
  result.n128_f32[1] = a3;
  result.n128_u64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  *(this + *(*this - 280) + 240) = result;
  return result;
}

__n128 FIK::OrientationTask::setTarget(__n128 *a1, __n128 *a2)
{
  if ((a1[10].n128_u8[8] & 1) == 0)
  {
    result = *a2;
    a1[15] = *a2;
  }

  return result;
}

__n128 virtual thunk toFIK::OrientationTask::setTarget(void *a1, __n128 *a2)
{
  v2 = (a1 + *(*a1 - 272));
  if ((v2[10].n128_u8[8] & 1) == 0)
  {
    result = *a2;
    v2[15] = *a2;
  }

  return result;
}

float32x4_t FIK::OrientationTask::setLookAtAxis(float32x4_t *this, float32_t a2, float32_t a3, float32_t a4)
{
  this[11].f32[0] = a2;
  this[11].f32[1] = a3;
  this[11].f32[2] = a4;
  result = this[11];
  v5 = vmulq_f32(result, result);
  v6 = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
  if (fabsf(v6) >= 0.000000001)
  {
    result = vmulq_n_f32(result, 1.0 / v6);
    this[11] = result;
  }

  return result;
}

float32x4_t virtual thunk toFIK::OrientationTask::setLookAtAxis(FIK::OrientationTask *this, float a2, float a3, float a4)
{
  v4 = (this + *(*this - 304));
  v4[44] = a2;
  v4[45] = a3;
  v4[46] = a4;
  result = *(v4 + 44);
  v6 = vmulq_f32(result, result);
  v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  if (fabsf(v7) >= 0.000000001)
  {
    result = vmulq_n_f32(result, 1.0 / v7);
    *(v4 + 11) = result;
  }

  return result;
}

float32x4_t FIK::OrientationTask::setLookAtAxis(float32x4_t *a1, float32x4_t *a2)
{
  v2 = *a2;
  v3 = vmulq_f32(v2, v2);
  v3.f32[0] = sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
  v4 = 1.0 / v3.f32[0];
  v5 = v3.f32[0] == 0.0;
  v6 = 0.0;
  if (!v5)
  {
    v6 = v4;
  }

  result = vmulq_n_f32(v2, v6);
  a1[11] = result;
  return result;
}

float32x4_t virtual thunk toFIK::OrientationTask::setLookAtAxis(uint64_t *a1, float32x4_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = vmulq_f32(v3, v3);
  v4.f32[0] = sqrtf(v4.f32[2] + vaddv_f32(*v4.f32));
  v5 = 1.0 / v4.f32[0];
  v6 = v4.f32[0] == 0.0;
  v7 = 0.0;
  if (!v6)
  {
    v7 = v5;
  }

  result = vmulq_n_f32(v3, v7);
  *(a1 + *(*a1 - 312) + 176) = result;
  return result;
}

void FIK::OrientationTask::setLookAtDirection(FIK::OrientationTask *this, float a2, float a3, float a4)
{
  *(this + 64) = a2;
  *(this + 65) = a3;
  *(this + 66) = a4;
  if (*(this + 168) == 1)
  {
    v5 = vmulq_f32(*(this + 11), *(this + 11));
    v6 = *(this + 16);
    v7 = vmulq_f32(v6, v6);
    v8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v5, v5, 8uLL)), vadd_f32(vzip1_s32(*v7.i8, *v5.i8), vzip2_s32(*v7.i8, *v5.i8))));
    *v7.i8 = vcgt_f32(vdup_n_s32(0x3089705Fu), vabs_f32(v8));
    if ((v7.i32[1] | v7.i32[0]))
    {
      v9 = *(*(this + 5) + 448);
    }

    else
    {
      *(this + 16) = vmulq_n_f32(v6, 1.0 / v8.f32[0]);
      FIK::Segment::computeLookAtTarget(*(this + 5), this + 11, this + 16, &v10);
      v9 = v10;
    }

    *(this + 15) = v9;
  }
}

void FIK::OrientationTask::setLookAtDirection(uint64_t a1, float32x4_t *a2)
{
  v2 = *a2;
  *(a1 + 256) = *a2;
  if (*(a1 + 168) == 1)
  {
    v4 = vmulq_f32(v2, v2);
    v5 = sqrtf(v4.f32[2] + vaddv_f32(*v4.f32));
    if (fabsf(v5) >= 0.000000001)
    {
      *(a1 + 256) = vmulq_n_f32(v2, 1.0 / v5);
      FIK::Segment::computeLookAtTarget(*(a1 + 40), (a1 + 176), (a1 + 256), &v7);
      v6 = v7;
    }

    else
    {
      v6 = *(*(a1 + 40) + 448);
    }

    *(a1 + 240) = v6;
  }
}

__n128 FIK::OrientationTask::setFKTarget(__n128 *this)
{
  result = *(this[2].n128_u64[1] + 448);
  this[15] = result;
  return result;
}

uint64_t FIK::OrientationTask::setDerevativeRule(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = *(this + 24) == 3;
  }

  else
  {
    v2 = 0;
  }

  *(this + 28) = v2;
  return this;
}

void FIK::OrientationTask::computeDerivatives(float32x4_t *this, unsigned int a2)
{
  if (this[1].i8[12] == 1)
  {
    if (this[1].i8[15] == 1 && (this[1].i8[14] & 1) == 0)
    {
      v27 = this->u32[2];
      v28 = this[1].u32[2];
      if (v28)
      {
        v29 = this[7].i64[1];
        v30 = this[1].i32[2];
        v31 = this->u32[2];
        do
        {
          *(v29 + 4 * v31++) = 0;
          --v30;
        }

        while (v30);
      }

      bzero(*(this[5].i64[1] + 8 * v27), 4 * v28 * a2);
    }

    else
    {
      v2 = 0;
      v3 = this[2].i64[1];
      v4 = vmulq_f32(this[15], xmmword_245A01F10);
      v5 = v3[28];
      v6 = vnegq_f32(v4);
      v7 = vtrn2q_s32(v4, vtrn1q_s32(v4, v6));
      v8 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v4, v6, 8uLL), *v5.f32, 1), vextq_s8(v7, v7, 8uLL), v5.f32[0]);
      v9 = vrev64q_s32(v4);
      v9.i32[0] = v6.i32[1];
      v9.i32[3] = v6.i32[2];
      v10 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v4, v5, 3), v9, v5, 2), v8);
      v11 = vmulq_laneq_f32(v10, v10, 3);
      v12 = -v11.f32[0];
      if (!this[2].i8[0])
      {
        v12 = 0.0;
      }

      v13 = this[7].i64[1];
      v14 = this->u32[3];
      *(v13 + 4 * this->u32[2]) = v12;
      v15 = -v11.f32[1];
      if (!this[2].i8[1])
      {
        v15 = 0.0;
      }

      *(v13 + 4 * v14) = v15;
      v16 = -v11.f32[2];
      if (!this[2].i8[2])
      {
        v16 = 0.0;
      }

      *(v13 + 4 * this[1].u32[0]) = v16;
      v17 = this[4].i32[3];
      do
      {
        if (v2 == v17)
        {
          break;
        }

        if (v3[50].i8[14] == 1)
        {
          v18 = v3[32].u32[1];
          v19 = this[6].i64[0];
          v20 = this[6].i64[1];
          v21 = &v3[20].i32[2];
          v22 = 3;
          v23 = this[7].i64[0];
          do
          {
            v24 = *(v21 - 2);
            v25 = *(v21 - 1);
            v26 = *v21;
            v21 += 4;
            *(v19 + 4 * v18) = v24;
            *(v20 + 4 * v18) = v25;
            *(v23 + 4 * v18++) = v26;
            --v22;
          }

          while (v22);
        }

        v3 = v3[2].i64[0];
        ++v2;
      }

      while (v3);
    }
  }

  else
  {
    FIK::OrientationTask::computeDerivativesCommon(this, a2);
  }
}

void FIK::OrientationTask::computeDerivativesCommon(float32x4_t *this, unsigned int a2)
{
  if (this[1].i8[15] == 1 && (this[1].i8[14] & 1) == 0)
  {
    v25 = this->u32[2];
    v26 = this[1].u32[2];
    if (v26)
    {
      v27 = this[7].i64[1];
      v28 = this[1].i32[2];
      v29 = this->u32[2];
      do
      {
        *(v27 + 4 * v29++) = 0;
        --v28;
      }

      while (v28);
    }

    bzero(*(this[5].i64[1] + 8 * v25), 4 * v26 * a2);
  }

  else
  {
    v2 = this[2].i64[1];
    v3 = vmulq_f32(this[15], xmmword_245A01F10);
    v4 = vnegq_f32(v3);
    v5 = vtrn2q_s32(v3, vtrn1q_s32(v3, v4));
    v6 = vrev64q_s32(v3);
    v6.i32[0] = v4.i32[1];
    v6.i32[3] = v4.i32[2];
    v7 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v3, v2[28], 3), v6, v2[28], 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v3, v4, 8uLL), *v2[28].f32, 1), vextq_s8(v5, v5, 8uLL), COERCE_FLOAT(*&v2[28])));
    *v4.i32 = vmuls_lane_f32(v7.f32[2], v7, 3);
    *v5.i32 = (*v4.i32 + (v7.f32[0] * v7.f32[1])) + (*v4.i32 + (v7.f32[0] * v7.f32[1]));
    v8 = -(*v4.i32 - (v7.f32[0] * v7.f32[1])) - (*v4.i32 - (v7.f32[0] * v7.f32[1]));
    *v4.i8 = vmul_laneq_f32(*v7.f32, v7, 3);
    v9 = vrev64_s32(*v7.f32);
    *v6.f32 = vneg_f32(*v4.i8);
    *v4.i8 = vmla_laneq_f32(*v4.i8, v9, v7, 2);
    *v6.f32 = vmla_laneq_f32(*v6.f32, v9, v7, 2);
    *v7.f32 = vsub_f32(vadd_f32(*v4.i8, *v4.i8), vadd_f32(*v6.f32, *v6.f32));
    v7.f32[2] = *v5.i32 - v8;
    v10.i64[0] = 0xBF000000BF000000;
    v10.i64[1] = 0xBF000000BF000000;
    v31 = vmulq_f32(v7, v10);
    v11 = this->i32[2];
    v12 = this[1].i32[2];
    if (!v12)
    {
      goto LABEL_9;
    }

    v13 = 0;
    v14 = this[7].i64[1];
    v15 = this->u32[2];
    do
    {
      v16 = 0;
      if (this[2].i8[v13] == 1)
      {
        v16 = v31.i32[v13];
      }

      *(v14 + 4 * v15++) = v16;
      ++v13;
    }

    while (v12 != v13);
    if (v2)
    {
LABEL_9:
      v17 = 0;
      v18 = this[4].i32[3];
      do
      {
        if (v17 == v18)
        {
          break;
        }

        if (v2[50].i8[14] == 1)
        {
          v19 = 0;
          v20 = v2[32].u32[1];
          do
          {
            if (v2[50].i8[v19 + 8] == 1)
            {
              v30 = v2[v19 + 20];
              if (v12)
              {
                v21 = 0;
                v22 = this[5].i64[1];
                v23 = v11;
                do
                {
                  v24 = 0;
                  if (this[2].i8[v21] == 1)
                  {
                    v24 = v30.i32[v21];
                  }

                  *(*(v22 + 8 * v23++) + 4 * v20) = v24;
                  ++v21;
                }

                while (v12 != v21);
              }

              ++v20;
            }

            ++v19;
          }

          while (v19 != 3);
        }

        v2 = v2[2].i64[0];
        ++v17;
      }

      while (v2);
    }
  }
}

float32x4_t *FIK::OrientationTask::computeDeltaX(float32x4_t *this)
{
  v1 = this->u32[2];
  if (this[1].i8[13])
  {
    v2 = vmulq_f32(this[15], xmmword_245A01F10);
    v3 = *(this[2].i64[1] + 448);
    v4 = vnegq_f32(v2);
    v5 = vtrn2q_s32(v2, vtrn1q_s32(v2, v4));
    v6 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v2, v4, 8uLL), *v3.f32, 1), vextq_s8(v5, v5, 8uLL), v3.f32[0]);
    v7 = vrev64q_s32(v2);
    v7.i32[0] = v4.i32[1];
    v7.i32[3] = v4.i32[2];
    v8 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v2, v3, 3), v7, v3, 2), v6);
    *v4.i32 = vmuls_lane_f32(v8.f32[2], v8, 3);
    v7.f32[0] = (*v4.i32 + (v8.f32[0] * v8.f32[1])) + (*v4.i32 + (v8.f32[0] * v8.f32[1]));
    v3.f32[0] = -(*v4.i32 - (v8.f32[0] * v8.f32[1])) - (*v4.i32 - (v8.f32[0] * v8.f32[1]));
    *v4.i8 = vmul_laneq_f32(*v8.f32, v8, 3);
    *v6.f32 = vrev64_s32(*v8.f32);
    v9 = vneg_f32(*v4.i8);
    *v4.i8 = vmla_laneq_f32(*v4.i8, *v6.f32, v8, 2);
    v10 = vmla_laneq_f32(v9, *v6.f32, v8, 2);
    *v8.f32 = vsub_f32(vadd_f32(*v4.i8, *v4.i8), vadd_f32(v10, v10));
    v8.f32[2] = v7.f32[0] - v3.f32[0];
    v3.i64[0] = 0xBF000000BF000000;
    v3.i64[1] = 0xBF000000BF000000;
    v17 = vmulq_f32(v8, v3);
    v11 = this[1].i32[2];
    if (v11)
    {
      v12 = 0;
      v13 = this[7].i64[1];
      do
      {
        v14 = 0;
        if (this[2].i8[v12] == 1)
        {
          v14 = v17.i32[v12];
        }

        *(v13 + 4 * (v1 + v12++)) = v14;
      }

      while (v11 != v12);
    }
  }

  else
  {
    v15 = this[1].i32[2];
    if (v15)
    {
      v16 = this[7].i64[1];
      do
      {
        *(v16 + 4 * v1++) = 0;
        --v15;
      }

      while (v15);
    }
  }

  return this;
}

float32_t FIK::OrientationTask::setTarget(float32x2_t *a1, int8x16_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  LODWORD(v5) = HIDWORD(a2[1].i64[0]);
  v6 = COERCE_FLOAT(a2[2].i64[1]);
  v7 = v6 + (COERCE_FLOAT(*a2) + v5);
  if (v7 >= 0.0)
  {
    v18 = sqrtf(v7 + 1.0);
    v19 = v18 + v18;
    v20 = vrecpe_f32(COERCE_UNSIGNED_INT(v18 + v18));
    v21 = vmul_f32(v20, vrecps_f32(COERCE_UNSIGNED_INT(v18 + v18), v20));
    v21.f32[0] = vmul_f32(v21, vrecps_f32(COERCE_UNSIGNED_INT(v18 + v18), v21)).f32[0];
    _S0 = (*&v3.i32[2] - *&v4.i32[1]) * v21.f32[0];
    _D4 = vmul_n_f32(vsub_f32(vext_s8(*v2.i8, *v4.i8, 4uLL), vzip1_s32(*v3.i8, *&vextq_s8(v2, v2, 8uLL))), v21.f32[0]);
    v28 = v19 * 0.25;
  }

  else if (*v2.i32 < v5 || *v2.i32 < v6)
  {
    v9 = 1.0 - *v2.i32;
    if (v5 >= v6)
    {
      v29 = sqrtf(v5 + (v9 - v6));
      v30 = v29 + v29;
      v31 = vrecpe_f32(COERCE_UNSIGNED_INT(v29 + v29));
      v32 = vmul_f32(v31, vrecps_f32(COERCE_UNSIGNED_INT(v29 + v29), v31));
      v32.f32[0] = vmul_f32(v32, vrecps_f32(COERCE_UNSIGNED_INT(v29 + v29), v32)).f32[0];
      _S0 = (*&v2.i32[1] + *v3.i32) * v32.f32[0];
      v33.f32[1] = v30;
      v28 = (*v4.i32 - *&v2.i32[2]) * v32.f32[0];
      v32.i32[1] = 0.25;
      v33.f32[0] = *&v3.i32[2] + *&v4.i32[1];
      _D4 = vmul_f32(v33, v32);
    }

    else
    {
      v10 = sqrtf(v6 + (v9 - v5));
      v11.f32[0] = v10 + v10;
      v12 = vrecpe_f32(COERCE_UNSIGNED_INT(v10 + v10));
      v13 = vmul_f32(v12, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v12));
      v13.f32[0] = vmul_f32(v13, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v13)).f32[0];
      _S0 = (*&v2.i32[2] + *v4.i32) * v13.f32[0];
      v11.f32[1] = *&v3.i32[2] + *&v4.i32[1];
      __asm { FMOV            V3.2S, #0.25 }

      _D3.i32[1] = v13.i32[0];
      _D4 = vmul_f32(v11, _D3);
      v28 = (*&v2.i32[1] - *v3.i32) * v13.f32[0];
    }
  }

  else
  {
    v22 = sqrtf(*v2.i32 + ((1.0 - v5) - v6));
    *&v23 = v22 + v22;
    v24 = vrecpe_f32(v23);
    v25 = vmul_f32(v24, vrecps_f32(v23, v24));
    v25.f32[0] = vmul_f32(v25, vrecps_f32(v23, v25)).f32[0];
    _S0 = *&v23 * 0.25;
    _D4 = vrev64_s32(vmul_n_f32(vadd_f32(*&vextq_s8(v2, v2, 4uLL), vzip1_s32(*v3.i8, *v4.i8)), v25.f32[0]));
    v28 = (*&v3.i32[2] - *&v4.i32[1]) * v25.f32[0];
  }

  _S2 = _D4.i32[1];
  v35.f32[0] = ((vmuls_lane_f32(-_D4.f32[1], _D4, 1) + (_S0 * _S0)) - (_D4.f32[0] * _D4.f32[0])) + (v28 * v28);
  __asm { FMLA            S6, S0, V4.S[1] }

  v37.f32[0] = vmuls_lane_f32(v28, _D4, 1);
  v38 = -(v37.f32[0] - (_S0 * _D4.f32[0])) - (v37.f32[0] - (_S0 * _D4.f32[0]));
  v35.f32[1] = _S6 + _S6;
  __asm { FMLA            S6, S0, V4.S[1] }

  v40.f32[0] = _S6 + _S6;
  __asm { FMLA            S5, S2, V4.S[1] }

  v40.f32[1] = (_S5 + (v28 * v28)) - (_S0 * _S0);
  v42 = vdup_lane_s32(_D4, 0);
  v42.f32[0] = _S0;
  v37.f32[1] = -(_S0 * v28);
  v43 = vmla_f32(v37, v42, _D4);
  a1[25].f32[0] = v38;
  a1[24] = v35;
  a1[27].f32[0] = ((_S0 * v28) + (_D4.f32[1] * _D4.f32[0])) + ((_S0 * v28) + (_D4.f32[1] * _D4.f32[0]));
  a1[26] = v40;
  __asm { FMLS            S0, S2, V4.S[1] }

  a1[29].f32[0] = result;
  a1[28] = vadd_f32(v43, v43);
  return result;
}

uint64_t *ikinemaLogObject(void)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    ikinemaLogObject();
  }

  return &qword_27EE32D28;
}

__n128 FIK::CubicBezierCurve::calculatePolynomialCoeffs(float32x4_t *this)
{
  v1 = 0;
  v2 = 0;
  memset(v9, 0, sizeof(v9));
  do
  {
    v3 = 0;
    v4 = v1;
    v5 = 0uLL;
    do
    {
      if ((v2 + v3))
      {
        v6 = -1.0;
      }

      else
      {
        v6 = 1.0;
      }

      v5 = vaddq_f32(v5, vmulq_n_f32(this[v3 + 1], v6 / (*(dword_245A021C0 + v4) * dword_245A021C0[v3])));
      ++v3;
      v4 -= 4;
    }

    while (v4 != -4);
    v9[v2] = vmulq_n_f32(v5, (6 / dword_245A021C0[3 - v2]));
    ++v2;
    v1 += 4;
  }

  while (v2 != 4);
  for (i = 0; i != 4; ++i)
  {
    result = v9[i];
    this[i + 5] = result;
  }

  return result;
}

uint64_t FIK::CubicBezierCurve::CubicBezierCurve(uint64_t a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4)
{
  *a1 = &unk_28589A808;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  v5 = vsubq_f32(*a2, a2[1]);
  v6 = vmulq_f32(v5, v5);
  v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  *(a1 + 16) = *a2;
  v8 = *a3;
  v9 = vmulq_f32(v8, v8);
  v9.f32[0] = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
  v10 = 1.0 / v9.f32[0];
  v11 = v9.f32[0] == 0.0;
  v12 = 0.0;
  if (v11)
  {
    v10 = 0.0;
  }

  *(a1 + 32) = vaddq_f32(*a2, vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v8, v10), COERCE_FLOAT(*a4)), v7));
  v13 = a3[1];
  v14 = vmulq_f32(v13, v13);
  v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32));
  if (v15 != 0.0)
  {
    v12 = 1.0 / v15;
  }

  *(a1 + 48) = vsubq_f32(a2[1], vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v13, v12), *(a4 + 4)), v7));
  *(a1 + 64) = a2[1];
  FIK::CubicBezierCurve::calculatePolynomialCoeffs(a1);
  return a1;
}

float32x4_t *FIK::CubicBezierCurve::positionAtParam@<X0>(float32x4_t *this@<X0>, float a2@<S0>, float32x4_t *a3@<X8>)
{
  v3 = vmlaq_n_f32(this[5], vmlaq_n_f32(this[6], vmlaq_n_f32(this[7], this[8], a2), a2), a2);
  v3.i32[3] = 0;
  *a3 = v3;
  return this;
}

void FIK::CubicBezierCurve::dbgPrint(FIK::CubicBezierCurve *this, float a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v25 = *MEMORY[0x277D85DE8];
  puts("Cubic Bezier curve:");
  puts("Control points:");
  v10 = &v9[1].f32[2];
  v11 = 64;
  do
  {
    v12 = *(v10 - 2);
    v13 = *(v10 - 1);
    v14 = *v10;
    v10 += 4;
    printf(" %7.3f %7.3f %7.3f\n", v12, v13, v14);
    v11 -= 16;
  }

  while (v11);
  if (v8 <= 0.0)
  {
    v8 = 0.05;
  }

  puts("Points on curve:");
  bzero(v24, 0x3E80uLL);
  v15 = 0;
  *&v16 = 0;
  do
  {
    v22 = v16;
    v17 = v15;
    v18 = vmlaq_n_f32(v9[5], vmlaq_n_f32(v9[6], vmlaq_n_f32(v9[7], v9[8], *&v16), *&v16), *&v16);
    v24[v15] = v18;
    printf(" %7.3f %7.3f %7.3f\n", v18.f32[0], v18.f32[1], v18.f32[2]);
    v16 = v22;
    ++v15;
    if (v17 > 0x3E6)
    {
      break;
    }

    *&v16 = v8 + *&v22;
  }

  while ((v8 + *&v22) < 1.001);
  putchar(10);
  FIK::dbgPointsToAcadPolylineString(&v9[1], 4, v6, v4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  puts(p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  FIK::dbgPointsToAcadPolylineString(v24, v15, v6, v4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  puts(v20);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D85DE8];
}

__n128 FIK::CubicBezierCurve::startPoint@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[1];
  *a2 = result;
  return result;
}

__n128 FIK::CubicBezierCurve::endPoint@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[4];
  *a2 = result;
  return result;
}

FIK::Solver *FIK::Allocator::create<FIK::Solver,FIK::IKSolver *>(FIK::Allocator *a1, FIK::IKSolver **a2)
{
  result = (*(*a1 + 16))(a1, 912, 16);
  if (result)
  {
    return FIK::Solver::Solver(result, *a2, a1);
  }

  return result;
}

FIK::IKSolver *FIK::IKSolver::IKSolver(FIK::IKSolver *this, FIK::Allocator *a2)
{
  v4 = this;
  *this = FIK::Allocator::create<FIK::Solver,FIK::IKSolver *>(a2, &v4);
  *(this + 2) = 1;
  return this;
}

void FIK::IKSolver::~IKSolver(FIK::Solver **this)
{
  v1 = *this;
  if (*this)
  {
    v2 = *(v1 + 106);
    FIK::Solver::~Solver(*this);
    (*(*v2 + 24))(v2, v1, 0, 8);
  }
}

float32x4_t *FIK::IKSolver::addPositionTask(FIK::Solver **this, const IKString *a2)
{
  v2 = FIK::Solver::addPositionTask(*this, a2);
  if (v2)
  {
    return v2 + 30;
  }

  else
  {
    return 0;
  }
}

float32x4_t *FIK::IKSolver::addPositionTask(FIK::Solver **a1, const FIK::Segment *a2)
{
  v2 = FIK::Solver::addPositionTask(*a1, a2);
  if (v2)
  {
    return v2 + 30;
  }

  else
  {
    return 0;
  }
}

float32x4_t *FIK::IKSolver::addPositionTask(FIK::Solver **this, int a2)
{
  v2 = FIK::Solver::addPositionTask(*this, a2);
  if (v2)
  {
    return v2 + 30;
  }

  else
  {
    return 0;
  }
}

__n128 *FIK::IKSolver::addOrientationTask(FIK::Solver **this, const IKString *a2)
{
  v2 = FIK::Solver::addOrientationTask(*this, a2);
  if (v2)
  {
    return v2 + 17;
  }

  else
  {
    return 0;
  }
}

__n128 *FIK::IKSolver::addOrientationTask(FIK::Solver **this, int a2)
{
  v2 = FIK::Solver::addOrientationTask(*this, a2);
  if (v2)
  {
    return v2 + 17;
  }

  else
  {
    return 0;
  }
}

uint64_t FIK::IKSolver::addBalanceTask(FIK::Solver **this, int a2, int a3, int a4)
{
  v4 = FIK::Solver::addBalanceTask(*this, a2, a3, a4);
  if (v4)
  {
    return v4 + 264;
  }

  else
  {
    return 0;
  }
}

FIK::Solver **FIK::IKSolver::removeTask(FIK::Solver **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = (*(*a2 + 24))(a2);

    return FIK::Solver::removeTask(v2, v3);
  }

  return result;
}

uint64_t FIK::IKSolver::solve(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v24 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  if (v6 == 1)
  {
    v7 = *a1;
    v15 = FIK::Solver::getP(*a1);
    if (!FIK::Solver::areInputsValid(v7))
    {
      v17 = ikinemaLogObject()[1];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        FIK::IKSolver::solve(v17);
      }

      goto LABEL_24;
    }

    if (FIK::Solver::solveWithAuxiliaryAutoTune(v7, a2))
    {
      goto LABEL_20;
    }

    FIK::Solver::resetSolver(v7);
    if (FIK::Solver::solve(v7, a2))
    {
      LOBYTE(v5) = 1;
      *a3 = 1;
      v20 = *(v7 + 7);
      v21 = *(v20 + 240);
      *(v7 + 51) = *(v20 + 96);
      *(v7 + 52) = v21;
    }

    else
    {
      *a3 = 2;
      FIK::Solver::setP(v7, v15);
      FIK::Solver::resetSolver(v7);
      LOBYTE(v5) = 0;
    }
  }

  else if (!v6)
  {
    v7 = *a1;
    if (!FIK::Solver::solve(*a1, a2))
    {
      v8 = ikinemaLogObject()[1];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136315138;
        v23 = "autoTuneBasedOnSolve";
        _os_log_impl(&dword_245976000, v8, OS_LOG_TYPE_DEFAULT, "%s: Solver triggered auto-tune", &v22, 0xCu);
      }

      *a3 = 1;
      v9 = FIK::Solver::getP(v7);
      v10 = fminf(fmaxf(v9 / 40.0, 0.005), 0.1);
      FIK::Segment::setRestTransform(*(v7 + 7), v7 + 816);
      if ((v9 + -0.01) > v10)
      {
        v11 = 0.01;
        v12 = v9;
        do
        {
          v13 = (v12 + v11) * 0.5;
          FIK::Solver::setP(v7, v13);
          FIK::Solver::resetSolver(v7);
          v14 = FIK::Solver::solve(v7, a2);
          if (v14)
          {
            v11 = (v12 + v11) * 0.5;
          }

          else
          {
            v12 = v13;
          }

          if (v14)
          {
            v9 = v13;
          }
        }

        while ((v12 - v11) > v10);
      }

      if (v9 > 0.001)
      {
        FIK::Solver::setP(v7, v9);
      }

      FIK::Solver::resetSolver(v7);
      if ((FIK::Solver::solve(v7, a2) & 1) == 0)
      {
LABEL_24:
        LOBYTE(v5) = 0;
        *a3 = 2;
        goto LABEL_25;
      }

      goto LABEL_21;
    }

LABEL_20:
    *a3 = 0;
LABEL_21:
    v5 = *(v7 + 7);
    v16 = *(v5 + 240);
    *(v7 + 51) = *(v5 + 96);
    *(v7 + 52) = v16;
    LOBYTE(v5) = 1;
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

uint64_t FIK::IKSolver::setup(FIK::Solver **this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v5 = FIK::Solver::setup(*this);
  if (*(this + 2) == 1)
  {
    FIK::Solver::prepareStabilityParameters(v2, v3, v4);
    v6 = FIK::Solver::computeStability(v2);
    if (v6 >= 0.975)
    {
      v9 = v6;
      v10 = ikinemaLogObject()[1];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = "setup";
        _os_log_impl(&dword_245976000, v10, OS_LOG_TYPE_DEFAULT, "%s: Solver triggered setup auto-tune", &v16, 0xCu);
      }

      v11 = FIK::Solver::getP(v2);
      while (v11 >= 0.005)
      {
        v12 = v11 * (fminf(v9, 1.0) * 0.05);
        if (v12 < 0.001)
        {
          v12 = 0.001;
        }

        v11 = v11 - v12;
        FIK::Solver::setP(v2, v11);
        FIK::Solver::prepareStabilityParameters(v2, v13, v14);
        v9 = FIK::Solver::computeStability(v2);
        if (v9 < 0.975)
        {
          v15 = ikinemaLogObject()[1];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136315394;
            v17 = "setup";
            v18 = 2048;
            v19 = v11;
            _os_log_impl(&dword_245976000, v15, OS_LOG_TYPE_DEFAULT, "%s: Solver tuned (%f)", &v16, 0x16u);
          }

          break;
        }
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

__n128 FIK::IKSolver::storeRootTransform(FIK::IKSolver *this)
{
  v1 = *this;
  v2 = *(*this + 56);
  result = *(v2 + 96);
  v4 = *(v2 + 240);
  *(v1 + 816) = result;
  *(v1 + 832) = v4;
  return result;
}

uint64_t FIK::SetMemoryRoutines(uint64_t this, unint64_t a2, void (*a3)(void *))
{
  if (this && a2)
  {
    v3 = &FIK::customAllocator;
    qword_28150C530 = this;
    unk_28150C538 = a2;
  }

  else
  {
    if (this | a2)
    {
      FIK::SetMemoryRoutines();
    }

    v3 = &FIK::standardAllocator;
  }

  FIK::activeDefaultAllocator = v3;
  return this;
}

void *FIK::FIKAlloc(FIK *this, uint64_t a2)
{
  v3 = (*(*FIK::activeDefaultAllocator + 2))(FIK::activeDefaultAllocator, this, a2);
  v4 = v3;
  if (this)
  {
    bzero(v3, this);
  }

  return v4;
}

void *FIK::CrtAllocator::doAllocate(FIK::CrtAllocator *this, size_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 <= 8)
  {
    v3 = 8;
  }

  else
  {
    v3 = a3;
  }

  v4 = v3 + a2;
  v5 = v3 + a2 + 8;
  if (v5 < a2)
  {
    v6 = *ikinemaLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "doAllocate";
      _os_log_impl(&dword_245976000, v6, OS_LOG_TYPE_DEFAULT, "%s: Overflow in allocation request", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v8 = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (!v8)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v15 = v4;
  __ptr = v8 + 8;
  v10 = std::align(v3, a2, &__ptr, &v15);
  v11 = v10;
  if (v10)
  {
    *(v10 - 1) = v9;
  }

  else
  {
    v14 = *ikinemaLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "doAllocate";
      _os_log_impl(&dword_245976000, v14, OS_LOG_TYPE_DEFAULT, "%s: Unable to align new buffer.", buf, 0xCu);
    }

    free(v9);
  }

LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

FIK::PositionTask *FIK::PositionTask::PositionTask(FIK::PositionTask *this, char a2, const FIK::Segment *a3)
{
  *(this + 60) = off_28589B4E8;
  *this = off_28589B7E0;
  FIK::Task::Task(this, off_28589B070, 3, a2, a3);
  *v4 = &unk_28589AA30;
  *(v4 + 480) = &unk_28589AE70;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0;
  *(v4 + 224) = 0u;
  *(v4 + 240) = 0u;
  *(v4 + 256) = 0x3F80000000000000;
  *(v4 + 264) = 0;
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
  *(v4 + 288) = 1;
  *(v4 + 289) = 0;
  *(v4 + 292) = 0;
  v5 = FIK::defaultAllocator(v4);
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 40) = v5;
  v6 = FIK::defaultAllocator(v5);
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 45) = v6;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = xmmword_245A02220;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = xmmword_245A02230;
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 82) = 1065353216;
  return this;
}

__n128 FIK::PositionTask::AdjustNormalFilter(FIK::PositionTask *this, float a2)
{
  v2 = *(this + 16);
  *(this + 23) = v2;
  *(this + 24) = v2;
  *(this + 100) = a2;
  *(this + 101) = (a2 * 0.033333) / (1.0 - a2);
  *(this + 102) = a2;
  *(this + 103) = 1106247680;
  *(this + 26) = v2;
  *(this + 27) = v2;
  result = *(this + 25);
  *(this + 28) = result;
  return result;
}

__n128 virtual thunk toFIK::PositionTask::AdjustNormalFilter(FIK::PositionTask *this, float a2)
{
  v2 = this + *(*this - 352);
  v3 = *(v2 + 16);
  *(v2 + 23) = v3;
  *(v2 + 24) = v3;
  *(v2 + 100) = a2;
  *(v2 + 101) = (a2 * 0.033333) / (1.0 - a2);
  *(v2 + 102) = a2;
  *(v2 + 103) = 1106247680;
  *(v2 + 26) = v3;
  *(v2 + 27) = v3;
  result = *(v2 + 25);
  *(v2 + 28) = result;
  return result;
}

void FIK::PositionTask::FindSelfCollisionPlane(float32x4_t *this)
{
  v27 = 0u;
  v28 = 0u;
  v2 = this + 11;
  if (vabds_f32(this[29].f32[0], this[11].f32[0]) <= 0.0001 && vabds_f32(this[29].f32[1], this[11].f32[1]) <= 0.0001)
  {
    v23 = vabds_f32(this[29].f32[2], this[11].f32[2]);
    v26 = 0uLL;
    v25 = *v2;
    if (v23 <= 0.0001)
    {
      return;
    }
  }

  else
  {
    v26 = 0uLL;
    v25 = *v2;
  }

  if (this[21].i64[0])
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = *(this[22].i64[0] + 8 * v3);
      GlobalPos = FIK::Segment::getGlobalPos(v5);
      v7.i64[0] = *GlobalPos;
      v7.i32[2] = *(GlobalPos + 8);
      v8 = vsubq_f32(v7, v25);
      v9 = vmulq_f32(v8, v8);
      v10 = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
      if (v10 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0 / v10;
      }

      v24 = vmulq_n_f32(v8, v11);
      if (FIK::Segment::RayTrace(v5, &v25, &v24, &v28, &v27))
      {
        v12 = this[25].f32[0];
        v13 = vaddq_f32(vmulq_n_f32(v27, v12), vmulq_n_f32(this[23], 1.0 - v12));
        v14 = vaddq_f32(vmulq_n_f32(this[24], 1.0 - v12), vmulq_n_f32(v13, v12));
        this[23] = v13;
        this[24] = v14;
        v15 = vsubq_f32(vmulq_n_f32(v13, this[25].f32[1] + 2.0), vmulq_n_f32(v14, this[25].f32[1] + 1.0));
        v16 = vmulq_f32(v15, v15);
        v17 = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
        if (v17 == 0.0)
        {
          v18 = 0.0;
        }

        else
        {
          v18 = 1.0 / v17;
        }

        v19 = vmulq_n_f32(v15, v18);
        v20 = vaddq_f32(v28, vmulq_n_f32(v19, this[20].f32[3]));
        this[16] = v19;
        this[17] = v20;
        FIK::PositionTask::getPlaneError(this, &v25, &v26);
        v25 = vsubq_f32(v25, v26);
      }

      v3 = v4;
    }

    while (this[21].i64[0] > v4++);
  }

  v22 = v25;
  this[11] = v25;
  this[29] = v22;
}

void FIK::PositionTask::getPlaneError(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = vsubq_f32(*a2, *(a1 + 272));
  v4 = vmulq_f32(v3, v3);
  v5 = sqrtf(v4.f32[2] + vaddv_f32(*v4.f32));
  if (fabsf(v5) >= 0.000000001)
  {
    v6 = *(a1 + 256);
    v7 = vmulq_f32(v6, v6);
    v8 = sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
    if (fabsf(v8) >= 0.000000001)
    {
      v9 = vmulq_n_f32(v6, 1.0 / v8);
      *(a1 + 256) = v9;
      v10 = vmulq_f32(vmulq_n_f32(v3, 1.0 / v5), v9);
      if ((v10.f32[2] + vaddv_f32(*v10.f32)) < 0.0)
      {
        v11 = vmulq_f32(v9, v9);
        v12 = vmul_laneq_f32(*v9.f32, v9, 2);
        *v13.i8 = v12;
        v13.u64[1] = v12;
        v14 = vzip1q_s32(v11, v13);
        v15 = vzip2q_s32(v13, v11);
        *v13.i8 = vdup_lane_s32(v12, 1);
        *v9.f32 = vmul_lane_f32(*v9.f32, *v9.f32, 1);
        v16 = vzip1q_s32(v14, v9);
        v9.i32[3] = v12.i32[1];
        v9.i32[2] = v12.i32[1];
        *a3 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v3.f32[0]), v9, *v3.f32, 1), vzip1q_s32(v15, v13), v3, 2);
        v17 = *(a1 + 160);
        if (v17)
        {
          if ((*(v17 + 30) & 1) == 0)
          {
            FIK::OrientationTask::setLookAtDirection(*(a1 + 160), *(a1 + 256), *(a1 + 260), *(a1 + 264));
            *(v17 + 30) = 1;
          }
        }
      }
    }
  }
}

void FIK::PositionTask::setTarget(float32x4_t *this, float32x4_t *a2)
{
  this[11] = *a2;
  if ((this[18].i8[6] & 1) != 0 || this[18].i8[7] == 1)
  {
    FIK::PositionTask::FindSelfCollisionPlane(this);
  }
}

void virtual thunk toFIK::PositionTask::setTarget(void *a1, _OWORD *a2)
{
  v2 = a1 + *(*a1 - 272);
  *(v2 + 11) = *a2;
  if ((v2[294] & 1) != 0 || v2[295] == 1)
  {
    FIK::PositionTask::FindSelfCollisionPlane(v2);
  }
}

void FIK::PositionTask::setTarget(float32x4_t *this, const float *a2)
{
  this[11].i64[0] = *a2;
  this[11].f32[2] = a2[2];
  if ((this[18].i8[6] & 1) != 0 || this[18].i8[7] == 1)
  {
    FIK::PositionTask::FindSelfCollisionPlane(this);
  }
}

void virtual thunk toFIK::PositionTask::setTarget(FIK::PositionTask *this, float *a2)
{
  v2 = (this + *(*this - 136));
  v2[11].f32[0] = *a2;
  v2[11].f32[1] = a2[1];
  v2[11].f32[2] = a2[2];
  if ((v2[18].i8[6] & 1) != 0 || v2[18].i8[7] == 1)
  {
    FIK::PositionTask::FindSelfCollisionPlane(v2);
  }
}

void FIK::PositionTask::setTarget(float32x4_t *this, float32_t a2, float32_t a3, float32_t a4)
{
  this[11].f32[0] = a2;
  this[11].f32[1] = a3;
  this[11].f32[2] = a4;
  if ((this[18].i8[6] & 1) != 0 || this[18].i8[7] == 1)
  {
    FIK::PositionTask::FindSelfCollisionPlane(this);
  }
}

void virtual thunk toFIK::PositionTask::setTarget(FIK::PositionTask *this, float32_t a2, float32_t a3, float32_t a4)
{
  v4 = (this + *(*this - 280));
  v4[11].f32[0] = a2;
  v4[11].f32[1] = a3;
  v4[11].f32[2] = a4;
  if ((v4[18].i8[6] & 1) != 0 || v4[18].i8[7] == 1)
  {
    FIK::PositionTask::FindSelfCollisionPlane(v4);
  }
}

float FIK::PositionTask::setTipOffset(float32x4_t *this, float a2, float a3, float a4)
{
  v4.i64[0] = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v4.i64[1] = LODWORD(a4);
  this[12] = v4;
  v5 = vmulq_f32(v4, v4);
  result = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
  this[13].f32[0] = result;
  return result;
}

float FIK::PositionTask::setTipOffset(float32x4_t *a1, float32x4_t *a2)
{
  v2 = *a2;
  a1[12] = *a2;
  v3 = vmulq_f32(v2, v2);
  result = sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
  a1[13].f32[0] = result;
  return result;
}

float virtual thunk toFIK::PositionTask::setTipOffset(FIK::PositionTask *this, float a2, float a3, float a4)
{
  v4.i64[0] = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v5 = (this + *(*this - 296));
  v4.i64[1] = LODWORD(a4);
  v5[12] = v4;
  v6 = vmulq_f32(v4, v4);
  result = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  v5[13].f32[0] = result;
  return result;
}

float virtual thunk toFIK::PositionTask::setTipOffset(void *a1, float32x4_t *a2)
{
  v2 = (a1 + *(*a1 - 304));
  v3 = *a2;
  v2[12] = *a2;
  v4 = vmulq_f32(v3, v3);
  result = sqrtf(v4.f32[2] + vaddv_f32(*v4.f32));
  v2[13].f32[0] = result;
  return result;
}

uint64_t FIK::PositionTask::setForce(FIK::PositionTask *this, float a2, float a3, float a4)
{
  *(this + 60) = a2;
  *(this + 61) = a3;
  *(this + 62) = a4;
  return FIK::Solver::recalculateForces(*(this + 16), 1);
}

uint64_t virtual thunk toFIK::PositionTask::setForce(FIK::PositionTask *this, float a2, float a3, float a4)
{
  v4 = this + *(*this - 320);
  *(v4 + 60) = a2;
  *(v4 + 61) = a3;
  *(v4 + 62) = a4;
  return FIK::Solver::recalculateForces(*(v4 + 16), 1);
}

uint64_t virtual thunk toFIK::PositionTask::setForce(void *a1, _OWORD *a2)
{
  v2 = a1 + *(*a1 - 328);
  *(v2 + 15) = *a2;
  return FIK::Solver::recalculateForces(*(v2 + 16), 1);
}

uint64_t virtual thunk toFIK::PositionTask::setSupportRatio(FIK::PositionTask *this, float a2)
{
  v2 = this + *(*this - 368);
  *(v2 + 82) = a2;
  return FIK::Solver::recalculateForces(*(v2 + 16), 1);
}

uint64_t FIK::PositionTask::enablePosition(FIK::PositionTask *this, int a2)
{
  v2 = *(this + 16);
  if (*(this + 288) != a2)
  {
    *(v2 + 381) = 1;
  }

  *(this + 288) = a2;
  return FIK::Solver::recalculateForces(v2, 1);
}

uint64_t virtual thunk toFIK::PositionTask::enablePosition(FIK::PositionTask *this, int a2)
{
  v2 = this + *(*this - 344);
  v3 = *(v2 + 16);
  if (v2[288] != a2)
  {
    *(v3 + 381) = 1;
  }

  v2[288] = a2;
  return FIK::Solver::recalculateForces(v3, 1);
}

uint64_t FIK::PositionTask::enableForce(FIK::PositionTask *this, int a2, char a3)
{
  *(this + 289) = a2;
  *(this + 290) = a3;
  if (a2)
  {
    v3 = *(this + 292);
  }

  else
  {
    v3 = 0;
  }

  *(this + 291) = v3 & 1;
  return FIK::Solver::recalculateForces(*(this + 16), 1);
}

uint64_t virtual thunk toFIK::PositionTask::enableForce(FIK::PositionTask *this, int a2, char a3)
{
  v3 = this + *(*this - 360);
  v3[289] = a2;
  v3[290] = a3;
  if (a2)
  {
    v4 = v3[292];
  }

  else
  {
    v4 = 0;
  }

  v3[291] = v4 & 1;
  return FIK::Solver::recalculateForces(*(v3 + 16), 1);
}

_BYTE *FIK::PositionTask::computeTorqueDerivatives(_BYTE *this, char a2)
{
  this[292] = a2;
  this[291] = this[289] & a2;
  return this;
}

void *virtual thunk toFIK::PositionTask::computeTorqueDerivatives(void *this, char a2)
{
  v2 = this + *(*this - 384);
  v2[292] = a2;
  v2[291] = v2[289] & a2;
  return this;
}

__n128 FIK::PositionTask::getNTorque@<Q0>(float32x4_t *this@<X0>, __n128 *a2@<X8>)
{
  v2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(this[2].i64[1] + 416), *(this[2].i64[1] + 416)), *(this[2].i64[1] + 416), 0xCuLL), vnegq_f32(this[15])), *(this[2].i64[1] + 416), vextq_s8(vuzp1q_s32(this[15], this[15]), this[15], 0xCuLL));
  result = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

__n128 virtual thunk toFIK::PositionTask::getNTorque@<Q0>(FIK::PositionTask *this@<X0>, __n128 *a2@<X8>)
{
  v2 = (this + *(*this - 408));
  v3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v2[2].i64[1] + 416), *(v2[2].i64[1] + 416)), *(v2[2].i64[1] + 416), 0xCuLL), vnegq_f32(v2[15])), *(v2[2].i64[1] + 416), vextq_s8(vuzp1q_s32(v2[15], v2[15]), v2[15], 0xCuLL));
  result = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

void *FIK::PositionTask::addCollisionSegment(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if ((*(result + 294) & 1) != 0 || *(result + 295) == 1)
    {
      result = FIK::IKArray<FIK::Segment *>::reserve(result + 42, result[42] + 1);
      v4 = v3[42];
      *(v3[44] + 8 * v4) = a2;
      v3[42] = v4 + 1;
    }
  }

  return result;
}

float32x4_t FIK::PositionTask::scaleTarget(float32x4_t *this, float a2)
{
  result = vmulq_n_f32(this[11], a2);
  this[11] = result;
  return result;
}

float32x4_t virtual thunk toFIK::PositionTask::scaleTarget(FIK::PositionTask *this, float a2)
{
  v2 = (this + *(*this - 144));
  result = vmulq_n_f32(v2[11], a2);
  v2[11] = result;
  return result;
}

float32x4_t *FIK::PositionTask::computeDeltaX(float32x4_t *this)
{
  v1 = this->u32[2];
  if (this[1].i8[13] == 1 && this[18].i8[0] == 1)
  {
    this[14] = vsubq_f32(this[11], *(this[2].i64[1] + 432));
    v2 = this[1].i32[2];
    if (v2)
    {
      v3 = 0;
      v4 = this[7].i64[1];
      do
      {
        v5 = 0;
        if (this[2].i8[v3] == 1)
        {
          v5 = this[14].i32[v3];
        }

        *(v4 + 4 * (v1 + v3++)) = v5;
      }

      while (v2 != v3);
    }
  }

  else
  {
    v6 = this[1].i32[2];
    if (v6)
    {
      v7 = this[7].i64[1];
      do
      {
        *(v7 + 4 * v1++) = 0;
        --v6;
      }

      while (v6);
    }
  }

  return this;
}

float32x4_t FIK::PositionTask::setFKTarget(FIK::PositionTask *this)
{
  *(this + 11) = *(*(this + 5) + 432);
  if (FIK::Solver::getBalanceTask(*(this + 16)))
  {
    if (*(FIK::Solver::getBalanceTask(*(this + 16)) + 29) == 1)
    {
      result = vaddq_f32(*(this + 11), *FIK::Solver::getZMP(*(this + 16)));
      *(this + 11) = result;
    }
  }

  return result;
}

uint64_t FIK::PositionTask::setDerevativeRule(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = *(this + 24) == 3;
  }

  else
  {
    v2 = 0;
  }

  *(this + 28) = v2;
  return this;
}

void FIK::PositionTask::computeDerivatives(FIK::PositionTask *this, unsigned int a2, int a3)
{
  if (*(this + 28) == 1)
  {
    FIK::PositionTask::computeDerivativesOptimized(this);
  }

  else
  {
    FIK::PositionTask::computeDerivativesCommon(this, a2, a3);
  }
}

void FIK::PositionTask::computeDerivativesOptimized(FIK::PositionTask *this)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  v64 = v2[26];
  if (*(this + 288) != 1)
  {
    FIK::Solver::checkReach(*(this + 16), v2[39].f32[3]);
    goto LABEL_27;
  }

  if (*(this + 293) != 1)
  {
    v63 = vaddq_f32(v64, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2[29], COERCE_FLOAT(*(this + 12))), v2[30], *(this + 192), 1), v2[31], *(this + 12), 2));
    v64 = v63;
    FIK::Solver::checkReach(*(this + 16), v2[39].f32[3] + *(this + 52));
    if (*(this + 295) == 1)
    {
      v65[0] = 0uLL;
      FIK::PositionTask::getPlaneError(this, this + 11, v65);
      v18 = vsubq_f32(*(this + 11), v63);
      v19 = v65[0];
    }

    else
    {
      v19 = v63;
      if (*(this + 294) == 1)
      {
        v65[0] = 0uLL;
        FIK::PositionTask::getPlaneError(this, &v64, v65);
        v5 = vsubq_f32(0, v65[0]);
        goto LABEL_19;
      }

      v18 = *(this + 11);
    }

    v5 = vsubq_f32(v18, v19);
    goto LABEL_19;
  }

  *(this + 14) = 0u;
  v3 = v2[2].i64[0];
  v4 = v2[4].i64[1];
  v5.i32[0] = 0;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_20;
  }

  v7 = vsubq_f32(v64, v3[26]);
  v8 = vsubq_f32(v4[26], v64);
  v9 = vmulq_f32(v7, v7);
  v10 = vmulq_f32(v8, v8);
  v11 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v10, v10, 8uLL), *&vextq_s8(v9, v9, 8uLL)), vadd_f32(vzip1_s32(*v10.i8, *v9.i8), vzip2_s32(*v10.i8, *v9.i8))));
  *v10.i8 = vcgt_f32(vdup_n_s32(0x3089705Fu), vabs_f32(v11));
  if ((v10.i32[1] | v10.i32[0]))
  {
    goto LABEL_20;
  }

  v12 = vmulq_n_f32(v7, 1.0 / v11.f32[1]);
  v13 = vmulq_n_f32(v8, 1.0 / v11.f32[0]);
  v14 = vmulq_f32(v12, v13);
  if ((v14.f32[2] + vaddv_f32(*v14.f32)) > 0.98875)
  {
    goto LABEL_20;
  }

  v62 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vnegq_f32(v12)), v13, vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL));
  *(this + 14) = vsubq_f32(*(this + 11), v64);
  if (FIK::Solver::getBalanceTask(*(this + 16)))
  {
    BalanceTask = FIK::Solver::getBalanceTask(*(this + 16));
    v17 = *(this + 14);
    if (*(BalanceTask + 29) == 1)
    {
      v61 = *(this + 14);
      v15 = *FIK::Solver::getZMP(*(this + 16));
      v17 = vsubq_f32(v61, v15);
    }
  }

  else
  {
    v17 = *(this + 14);
  }

  v56 = v62;
  v15.f32[0] = vmuls_lane_f32(v62.f32[2], v62, 2);
  v57 = vmulq_f32(v56, v56).u64[0];
  v58 = vextq_s8(v56, v56, 4uLL);
  *v58.i8 = vmul_f32(*v62.f32, *v58.i8);
  v59 = vextq_s8(vzip1q_s32(v58, v58), v58, 0xCuLL);
  v15.i32[1] = v59.i32[0];
  v56.f32[0] = vmuls_lane_f32(v56.f32[0], v56, 2);
  v60 = vzip1q_s32(v15, v56);
  v56.i32[1] = v57.i32[0];
  v56.i32[2] = v58.i32[0];
  v5 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, v17.f32[0]), v56, *v17.f32, 1), vzip1q_s32(vzip2q_s32(v59, vdupq_lane_s32(v57, 1)), v58), v17, 2);
LABEL_19:
  *(this + 14) = v5;
LABEL_20:
  v20 = 0;
  if (!*(this + 32))
  {
    v5.f32[0] = 0.0;
  }

  v21 = *(this + 15);
  *(v21 + 4 * *(this + 2)) = v5.i32[0];
  v22 = 0;
  if (*(this + 33) == 1)
  {
    v22 = *(this + 57);
  }

  *(v21 + 4 * *(this + 3)) = v22;
  if (*(this + 34) == 1)
  {
    v20 = *(this + 58);
  }

  *(v21 + 4 * *(this + 4)) = v20;
LABEL_27:
  v23 = *(this + 37);
  if (v23)
  {
    v24 = *(this + 39);
    v25 = &v24[v23];
    v26 = v64;
    v27 = *(this + 12);
    v28 = *(this + 13);
    v29 = *(this + 14);
    do
    {
      v30 = 0;
      v31 = *v24;
      v32 = (*v24)[32].i32[1];
      v33 = vsubq_f32((*v24)[26], v26);
      v34 = (*v24)[22];
      v35 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
      v36 = vnegq_f32(v33);
      v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32((*v24)[20], (*v24)[20]), (*v24)[20], 0xCuLL), v36), (*v24)[20], v35);
      v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
      v38.i32[3] = 0;
      v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32((*v24)[21], (*v24)[21]), (*v24)[21], 0xCuLL), v36), (*v24)[21], v35);
      v40 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
      v40.i32[3] = 0;
      v65[0] = v38;
      v65[1] = v40;
      v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v36), v34, v35);
      v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
      v42.i32[3] = 0;
      v65[2] = v42;
      v43 = v32;
      do
      {
        *(v27 + 4 * v43++) = v65[v30++].i32[0];
      }

      while (v30 != 3);
      v44 = 1;
      v45 = v32;
      do
      {
        *(v28 + 4 * v45++) = v65[0].i32[v44];
        v44 += 4;
      }

      while (v44 != 13);
      v46 = 2;
      v47 = v32;
      do
      {
        *(v29 + 4 * v47++) = v65[0].i32[v46];
        v46 += 4;
      }

      while (v46 != 14);
      if ((v31[33].i8[4] & 1) != 0 && !v31[2].i64[0])
      {
        v48 = v32 + 3;
        v49 = &v31[50].u8[11];
        v50 = &v31[20].i32[2];
        v51 = 3;
        do
        {
          v52 = *v49++;
          if (v52 == 1)
          {
            v53 = *(v50 - 1);
            v54 = *v50;
            *(v27 + 4 * v48) = *(v50 - 2);
            *(v28 + 4 * v48) = v53;
            *(v29 + 4 * v48++) = v54;
          }

          v50 += 4;
          --v51;
        }

        while (v51);
      }

      ++v24;
    }

    while (v24 != v25);
  }

  v55 = *MEMORY[0x277D85DE8];
}

void FIK::PositionTask::computeDerivativesCommon(FIK::PositionTask *this, unsigned int a2, int a3)
{
  v5 = *(this + 5);
  v69 = v5[26];
  if (*(this + 288) != 1)
  {
    FIK::Solver::checkReach(*(this + 16), v5[39].f32[3]);
    goto LABEL_28;
  }

  if (*(this + 293) != 1)
  {
    v66 = vaddq_f32(v69, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5[29], COERCE_FLOAT(*(this + 12))), v5[30], *(this + 192), 1), v5[31], *(this + 12), 2));
    v69 = v66;
    FIK::Solver::checkReach(*(this + 16), v5[39].f32[3] + *(this + 52));
    if (FIK::Solver::getBalanceTask(*(this + 16)) && *(FIK::Solver::getBalanceTask(*(this + 16)) + 29) == 1)
    {
      v66 = vaddq_f32(v66, *FIK::Solver::getZMP(*(this + 16)));
      v69 = v66;
    }

    if (*(this + 295) == 1)
    {
      v68 = 0uLL;
      FIK::PositionTask::getPlaneError(this, this + 11, &v68);
      v20 = vsubq_f32(*(this + 11), v66);
      v21 = v68;
    }

    else
    {
      if (*(this + 294) == 1)
      {
        v68 = 0uLL;
        FIK::PositionTask::getPlaneError(this, &v69, &v68);
        v22 = vsubq_f32(0, v68);
LABEL_22:
        *(this + 14) = v22;
        goto LABEL_23;
      }

      v20 = *(this + 11);
      v21 = v66;
    }

    v22 = vsubq_f32(v20, v21);
    goto LABEL_22;
  }

  *(this + 14) = 0u;
  v6 = v5[2].i64[0];
  v7 = v5[4].i64[1];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = vsubq_f32(v69, v6[26]);
    v10 = vsubq_f32(v7[26], v69);
    v11 = vmulq_f32(v9, v9);
    v12 = vmulq_f32(v10, v10);
    v13 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v11, v11, 8uLL)), vadd_f32(vzip1_s32(*v12.i8, *v11.i8), vzip2_s32(*v12.i8, *v11.i8))));
    *v12.i8 = vcgt_f32(vdup_n_s32(0x3089705Fu), vabs_f32(v13));
    if (((v12.i32[1] | v12.i32[0]) & 1) == 0)
    {
      v14 = vmulq_n_f32(v9, 1.0 / v13.f32[1]);
      v15 = vmulq_n_f32(v10, 1.0 / v13.f32[0]);
      v16 = vmulq_f32(v14, v15);
      if ((v16.f32[2] + vaddv_f32(*v16.f32)) <= 0.98875)
      {
        v65 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(v14)), v15, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL));
        *(this + 14) = vsubq_f32(*(this + 11), v69);
        if (FIK::Solver::getBalanceTask(*(this + 16)))
        {
          BalanceTask = FIK::Solver::getBalanceTask(*(this + 16));
          v19 = *(this + 14);
          if (*(BalanceTask + 29) == 1)
          {
            v64 = *(this + 14);
            v17 = *FIK::Solver::getZMP(*(this + 16));
            v19 = vsubq_f32(v64, v17);
          }
        }

        else
        {
          v19 = *(this + 14);
        }

        v59 = v65;
        v17.f32[0] = vmuls_lane_f32(v65.f32[2], v65, 2);
        v60 = vmulq_f32(v59, v59).u64[0];
        v61 = vextq_s8(v59, v59, 4uLL);
        *v61.i8 = vmul_f32(*v65.f32, *v61.i8);
        v62 = vextq_s8(vzip1q_s32(v61, v61), v61, 0xCuLL);
        v17.i32[1] = v62.i32[0];
        v59.f32[0] = vmuls_lane_f32(v59.f32[0], v59, 2);
        v63 = vzip1q_s32(v17, v59);
        v59.i32[1] = v60.i32[0];
        v59.i32[2] = v61.i32[0];
        v22 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, v19.f32[0]), v59, *v19.f32, 1), vzip1q_s32(vzip2q_s32(v62, vdupq_lane_s32(v60, 1)), v61), v19, 2);
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  v23 = *(this + 6);
  if (v23)
  {
    v24 = 0;
    v25 = *(this + 2);
    v26 = *(this + 15);
    do
    {
      v27 = 0;
      if (*(this + v24 + 32) == 1)
      {
        v27 = *(this + v24 + 56);
      }

      *(v26 + 4 * (v25 + v24++)) = v27;
    }

    while (v23 != v24);
  }

LABEL_28:
  v28 = *(this + 37);
  if (v28)
  {
    v29 = *(this + 39);
    v30 = &v29[v28];
    v31 = v69;
    do
    {
      v32 = 0;
      v33 = *v29;
      v34 = vsubq_f32((*v29)[26], v31);
      v35 = (*v29)[32].u32[1];
      v36 = &(*v29)[50].i64[1];
      v37 = &(*v29)[20];
      v38 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
      v39 = vnegq_f32(v34);
      do
      {
        if (*(v36 + v32) == 1)
        {
          v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v37 + 16 * v32), *(v37 + 16 * v32)), *(v37 + 16 * v32), 0xCuLL), v39), *(v37 + 16 * v32), v38);
          v41 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
          v42 = v41;
          v42.i32[3] = 0;
          v68 = v42;
          if (*(this + 288) == 1)
          {
            v43 = *(this + 6);
            if (v43)
            {
              v44 = 0;
              v45 = *(this + 2);
              v46 = *(this + 11);
              do
              {
                v47 = 0;
                if (*(this + v44 + 32) == 1)
                {
                  v47 = v68.i32[v44];
                }

                *(*(v46 + 8 * (v45 + v44++)) + 4 * v35) = v47;
              }

              while (v43 != v44);
            }
          }

          if (*(this + 291) == 1)
          {
            v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(this + 15), *(this + 15)), *(this + 15), 0xCuLL), vnegq_f32(v41)), *(this + 15), vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL));
            v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
            v49.i32[3] = 0;
            v67 = v49;
            v50 = *(this + 6);
            if (v50)
            {
              v51 = 0;
              v52 = *(this + 11);
              do
              {
                v53 = *(v52 + 8 * (a3 - 3 + v51));
                *(v53 + 4 * v35) = *&v67.i32[v51++] + *(v53 + 4 * v35);
              }

              while (v50 != v51);
            }
          }

          ++v35;
        }

        ++v32;
      }

      while (v32 != 3);
      if (v33[33].i8[4] == 1)
      {
        for (i = 0; i != 3; ++i)
        {
          if (*(i + v36 + 3) == 1)
          {
            v68 = *(v37 + 16 * i);
            if (*(this + 288) == 1)
            {
              v55 = *(this + 6);
              if (v55)
              {
                v56 = 0;
                v57 = *(this + 2);
                v58 = *(this + 11);
                do
                {
                  *(*(v58 + 8 * (v57 + v56)) + 4 * v35) = v68.i32[v56];
                  ++v56;
                }

                while (v55 != v56);
              }
            }

            ++v35;
          }
        }
      }

      ++v29;
    }

    while (v29 != v30);
  }
}

void *FIK::PositionTask::queryAffectedSegments(void *this)
{
  this[37] = 0;
  v1 = this[5];
  if (v1)
  {
    v2 = this;
    v3 = 0;
    v4 = -1;
    do
    {
      if (++v4 >= *(v2 + 19))
      {
        break;
      }

      if (*(v1 + 814) == 1)
      {
        this = FIK::IKArray<FIK::Segment *>::reserve(v2 + 37, v3 + 1);
        v5 = v2[37];
        *(v2[39] + 8 * v5) = v1;
        v3 = v5 + 1;
        v2[37] = v5 + 1;
      }

      v1 = *(v1 + 32);
    }

    while (v1);
  }

  return this;
}

void FIK::PositionTask::~PositionTask(FIK::PositionTask *this)
{
  *(this + 42) = 0;
  v2 = *(this + 44);
  if (v2)
  {
    (*(**(this + 45) + 24))(*(this + 45), v2, 0, 8);
  }

  *(this + 37) = 0;
  v3 = *(this + 39);
  if (v3)
  {
    (*(**(this + 40) + 24))(*(this + 40), v3, 0, 8);
  }
}

{
  *(this + 42) = 0;
  v2 = *(this + 44);
  if (v2)
  {
    (*(**(this + 45) + 24))(*(this + 45), v2, 0, 8);
  }

  *(this + 37) = 0;
  v3 = *(this + 39);
  if (v3)
  {
    (*(**(this + 40) + 24))(*(this + 40), v3, 0, 8);
  }

  JUMPOUT(0x245D77F60);
}

float *FIK::PositionTask::setPPlaneNormal(float *this, float a2, float a3, float a4)
{
  this[64] = a2;
  this[65] = a3;
  this[66] = a4;
  return this;
}

__n128 FIK::PositionTask::setPPlaneNormal(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[16] = *a2;
  return result;
}

float *FIK::PositionTask::setPPlanePosition(float *this, float a2, float a3, float a4)
{
  this[68] = a2;
  this[69] = a3;
  this[70] = a4;
  return this;
}

__n128 FIK::PositionTask::setPPlanePosition(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[17] = *a2;
  return result;
}

void virtual thunk toFIK::PositionTask::~PositionTask(FIK::PositionTask *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 42) = 0;
  v2 = *(v1 + 44);
  if (v2)
  {
    (*(**(v1 + 45) + 24))(*(v1 + 45), v2, 0, 8);
  }

  *(v1 + 37) = 0;
  if (*(v1 + 39))
  {
    v3 = *(**(v1 + 40) + 24);

    v3();
  }
}

{
  v1 = this + *(*this - 24);
  *(v1 + 42) = 0;
  v2 = *(v1 + 44);
  if (v2)
  {
    (*(**(v1 + 45) + 24))(*(v1 + 45), v2, 0, 8);
  }

  *(v1 + 37) = 0;
  v3 = *(v1 + 39);
  if (v3)
  {
    (*(**(v1 + 40) + 24))(*(v1 + 40), v3, 0, 8);
  }

  JUMPOUT(0x245D77F60);
}

void *virtual thunk toFIK::PositionTask::setPPlaneNormal(void *this, float a2, float a3, float a4)
{
  v4 = (this + *(*this - 464));
  v4[64] = a2;
  v4[65] = a3;
  v4[66] = a4;
  return this;
}

__n128 virtual thunk toFIK::PositionTask::setPPlaneNormal(void *a1, __n128 *a2)
{
  result = *a2;
  *(a1 + *(*a1 - 472) + 256) = *a2;
  return result;
}

void *virtual thunk toFIK::PositionTask::setPPlanePosition(void *this, float a2, float a3, float a4)
{
  v4 = (this + *(*this - 488));
  v4[68] = a2;
  v4[69] = a3;
  v4[70] = a4;
  return this;
}

__n128 virtual thunk toFIK::PositionTask::setPPlanePosition(void *a1, __n128 *a2)
{
  result = *a2;
  *(a1 + *(*a1 - 496) + 272) = *a2;
  return result;
}

void JSONS::PrettyPrint()
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  v0 = 0u;
  v5 = 1024;
  v6 = 0;
  v7 = 0;
  operator new();
}

uint64_t rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::GetString(void *a1)
{
  v2 = a1[3];
  if ((a1[4] - v2) <= 0)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(a1, 1);
    v2 = a1[3];
  }

  a1[3] = v2 + 1;
  *v2 = 0;
  result = a1[2];
  --a1[3];
  return result;
}

int *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(unsigned int *a1, char *__s)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v6[1] = __s;
  v6[2] = 0x405000000000000;
  v6[0] = strlen(__s);
  v3 = *(a1 + 1);
  if (*a1)
  {
    do
    {
      if (rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::StringEqual<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(v6, v3))
      {
        break;
      }

      v3 += 12;
    }

    while (v3 != (*(a1 + 1) + 48 * *a1));
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

int *JSONS::getMemberOrLegacyMember(unsigned int *a1, char *a2, char **a3, uint64_t a4)
{
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a1, a2);
  if ((*(a1 + 1) + 48 * *a1) != Member)
  {
    return Member + 6;
  }

  if (a4)
  {
    v9 = 8 * a4;
    while (1)
    {
      Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a1, *a3);
      if ((*(a1 + 1) + 48 * *a1) != Member)
      {
        break;
      }

      ++a3;
      v9 -= 8;
      if (!v9)
      {
        return 0;
      }
    }

    return Member + 6;
  }

  return 0;
}

int *JSONS::StringFromJSON(unsigned int *a1, char *a2)
{
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a1, a2);
  if ((*(a1 + 1) + 48 * *a1) == Member)
  {
    return 0;
  }

  v4 = Member;
  v5 = *(Member + 23);
  if ((v5 & 0x400) == 0)
  {
    return 0;
  }

  v7 = Member + 6;
  if ((*(Member + 23) & 0x1000) != 0)
  {
    result = Member + 6;
  }

  else
  {
    result = *(Member + 4);
  }

  if ((v5 & 0x1000) != 0)
  {
    v9 = 21 - *(v4 + 45);
  }

  else
  {
    v8 = *v7;
  }

  return result;
}

int *JSONS::assignBoolArrayFromJSON(_DWORD *a1, unsigned int *a2, char *__s, BOOL *a4, uint64_t a5)
{
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a2, __s);
  if ((*(a2 + 1) + 48 * *a2) != result && *(result + 23) == 4 && a5 == result[6] && a5 != 0)
  {
    for (i = 22; ; i += 24)
    {
      v12 = *(*(result + 4) + i);
      if ((v12 & 8) == 0)
      {
        break;
      }

      *a4++ = v12 == 10;
      if (!--a5)
      {
        return result;
      }
    }

    *a1 = 3;
  }

  return result;
}

float JSONS::RealFromJSON(unsigned int *a1, char *a2, float a3)
{
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a1, a2);
  if ((*(a1 + 1) + 48 * *a1) != Member && (*(Member + 23) & 0x10) != 0)
  {
    return rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::GetDouble(Member + 12, v6);
  }

  return a3;
}

uint64_t JSONS::AxisFromJSON(unsigned int *a1, char *a2)
{
  v2 = JSONS::StringFromJSON(a1, a2);
  v4 = v2;
  if (v3 == 9)
  {
    if (!memcmp(v2, "NegativeX", 9uLL))
    {
      return 3;
    }

    else if (*v4 == 0x657669746167654ELL && *(v4 + 8) == 89)
    {
      return 4;
    }

    else
    {
      v10 = bswap64(*v4);
      if (v10 == 0x4E65676174697665)
      {
        v11 = *(v4 + 8) - 90;
      }

      else if (v10 < 0x4E65676174697665)
      {
        v11 = -1;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        return 1;
      }

      else
      {
        return 5;
      }
    }
  }

  else if (v3 == 1)
  {
    v5 = *v2;
    if (v5 == 90)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v5 == 89)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (v5 == 88)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t JSONS::RigTypeFromJSON(unsigned int *a1, char *a2)
{
  v2 = JSONS::StringFromJSON(a1, a2);
  if (v3 == 11)
  {
    return 2 * (memcmp(v2, "GameRigType", 0xBuLL) == 0);
  }

  if (v3 == 12)
  {
    return memcmp(v2, "MoCapRigType", 0xCuLL) == 0;
  }

  return 0;
}

uint64_t JSONS::BlendTypeFromJSON(unsigned int *a1, char *a2)
{
  v2 = JSONS::StringFromJSON(a1, a2);
  if (v3 != 15)
  {
    if (v3 == 13)
    {
      return *v2 != 0x546F54646E656C42 || *(v2 + 5) != 0x7465677261546F54;
    }

    return 1;
  }

  if (*v2 == 0x746957646E656C42 && *(v2 + 7) == 0x7465677261546874)
  {
    return 1;
  }

  v7 = 0x426C656E64576974;
  v8 = bswap64(*v2);
  if (v8 == 0x426C656E64576974 && (v7 = 0x74684F6666736574, v8 = bswap64(*(v2 + 7)), v8 == 0x74684F6666736574))
  {
    v9 = 0;
  }

  else if (v8 < v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t JSONS::BalanceTypeFromJSON(unsigned int *a1, char *a2)
{
  v2 = JSONS::StringFromJSON(a1, a2);
  if (v3 == 13)
  {
    return 2 * (memcmp(v2, "StaticBalance", 0xDuLL) == 0);
  }

  if (v3 == 12)
  {
    return memcmp(v2, "CentreOfMass", 0xCuLL) == 0;
  }

  return 0;
}

uint64_t JSONS::CollisionShapeTypeFromJSON(unsigned int *a1, char *a2)
{
  v2 = JSONS::StringFromJSON(a1, a2);
  switch(v3)
  {
    case 3:
      if (!memcmp(v2, "Box", 3uLL))
      {
        return 3;
      }

      else
      {
        return 0;
      }

    case 7:
      return 2 * (memcmp(v2, "Capsule", 7uLL) == 0);
    case 6:
      return memcmp(v2, "Sphere", 6uLL) == 0;
    default:
      return 0;
  }
}

uint64_t JSONS::AimingModeFromJSON(unsigned int *a1, char *a2)
{
  v2 = JSONS::StringFromJSON(a1, a2);
  v4 = v2;
  if (v3 == 9)
  {
    if (!memcmp(v2, "DualWield", 9uLL))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else if (v3 == 7)
  {
    if (!memcmp(v2, "TwoHand", 7uLL))
    {
      return 1;
    }

    else
    {
      v6 = *v4 == 1214606927 && *(v4 + 3) == 1684955464;
      return (2 * v6);
    }
  }

  else
  {
    return 0;
  }
}

void JSONS::QuaternionFromJSON(uint64_t a1@<X0>, float32x4_t *a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 22) == 4)
  {
    v5 = xmmword_245A01E80;
    if (*a1 == 4)
    {
      Double = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::GetDouble(*(a1 + 8), a3);
      v6 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::GetDouble((*(a1 + 8) + 24), Double);
      v7.f64[0] = Double;
      v7.f64[1] = v6;
      v22 = vcvt_f32_f64(v7);
      v18 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::GetDouble((*(a1 + 8) + 48), *&v22);
      v8 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::GetDouble((*(a1 + 8) + 72), v18);
      v9.f64[0] = v18;
      v9.f64[1] = v8;
      v10 = vcvt_f32_f64(v9);
      v5 = xmmword_245A01E80;
      v11 = vaddv_f32(vadd_f32(vmul_f32(v22, v22), vmul_f32(v10, v10)));
      if (v11 != 0.0)
      {
        v12 = vcvt_hight_f32_f64(v22, v9);
LABEL_7:
        v15 = v11;
        v16 = vrsqrte_f32(LODWORD(v11));
        v17 = vmul_f32(v16, vrsqrts_f32(LODWORD(v15), vmul_f32(v16, v16)));
        v5 = vmulq_n_f32(v12, vmul_f32(v17, vrsqrts_f32(LODWORD(v15), vmul_f32(v17, v17))).f32[0]);
      }
    }
  }

  else
  {
    v23 = JSONS::RealFromJSON(a1, "X", 0.0);
    v20 = JSONS::RealFromJSON(a1, "Y", 0.0);
    v19 = JSONS::RealFromJSON(a1, "Z", 0.0);
    v13 = JSONS::RealFromJSON(a1, "W", 1.0);
    v12.i64[0] = __PAIR64__(LODWORD(v20), LODWORD(v23));
    v12.i64[1] = __PAIR64__(LODWORD(v13), LODWORD(v19));
    v14 = vmulq_f32(v12, v12);
    v11 = vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)));
    if (v11 != 0.0)
    {
      goto LABEL_7;
    }

    v5 = xmmword_245A01E80;
  }

  *a2 = v5;
}

void JSONS::VectorFromJSON(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 22) != 4)
  {
    v6 = JSONS::RealFromJSON(a1, "X", 0.0);
    v8 = JSONS::RealFromJSON(a1, "Y", 0.0);
    v9 = JSONS::RealFromJSON(a1, "Z", 0.0);
    goto LABEL_5;
  }

  if (*a1 == 3)
  {
    Double = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::GetDouble(*(a1 + 8), a3);
    v6 = Double;
    v7 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::GetDouble((*(a1 + 8) + 24), Double);
    v8 = v7;
    v9 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::GetDouble((*(a1 + 8) + 48), v7);
LABEL_5:
    *a2 = v6;
    *(a2 + 4) = v8;
    *(a2 + 8) = v9;
    *(a2 + 12) = 0;
    return;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
}

void JSONS::VectorFromParentJSON(unsigned int *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a1, a2);
  if ((*(a1 + 1) + 48 * *a1) == Member)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = (Member + 6);

    JSONS::VectorFromJSON(v7, a3, v6);
  }
}

void JSONS::TransformFromJSON(unsigned int *a1@<X0>, char *a2@<X1>, float32x4_t *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  a3->i64[0] = 0;
  a3->i64[1] = 0;
  a3[1] = xmmword_245A01E80;
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a1, a2);
  if ((*(a1 + 1) + 48 * *a1) != Member)
  {
    v6 = Member;
    v12.i64[0] = "Rotation";
    MemberOrLegacyMember = JSONS::getMemberOrLegacyMember(Member + 6, "rotation", &v12, 1);
    if (MemberOrLegacyMember)
    {
      JSONS::QuaternionFromJSON(MemberOrLegacyMember, a3 + 1, v8);
    }

    v12.i64[0] = "Translation";
    v9 = JSONS::getMemberOrLegacyMember(v6 + 6, "translation", &v12, 1);
    if (v9)
    {
      JSONS::VectorFromJSON(v9, &v12, v10);
      *a3 = v12;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

int *JSONS::SolverSettingsFromJSON@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0x3727C5AC3E4CCCCDLL;
  *(a2 + 8) = 0x1E3F800000;
  *(a2 + 16) = 0x3F80000040800000;
  *(a2 + 24) = 1;
  *(a2 + 26) = 0;
  *(a2 + 36) = 0;
  *(a2 + 28) = 0;
  *(a2 + 44) = 0x3F80000000000000;
  *(a2 + 52) = 0;
  *(a2 + 56) = 1117782016;
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a1, "solver_conf_");
  if ((*(a1 + 1) + 48 * *a1) != result)
  {
    v5 = result;
    Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(result + 6, "balance_moments_enabled_");
    v7 = (*(v5 + 4) + 48 * v5[6]) != Member && *(Member + 23) == 10;
    *(a2 + 52) = v7;
    v8 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v5 + 6, "translate_root");
    v9 = (*(v5 + 4) + 48 * v5[6]) != v8 && *(v8 + 23) == 10;
    *(a2 + 24) = v9;
    v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v5 + 6, "enable_shadow_posing_");
    v11 = (*(v5 + 4) + 48 * v5[6]) != v10 && *(v10 + 23) == 10;
    *(a2 + 25) = v11;
    v12 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v5 + 6, "combine_errors_");
    v13 = (*(v5 + 4) + 48 * v5[6]) != v12 && *(v12 + 23) == 10;
    *(a2 + 26) = v13;
    v14 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v5 + 6, "balance_use_default_zmp");
    v15 = (*(v5 + 4) + 48 * v5[6]) != v14 && *(v14 + 23) == 10;
    *(a2 + 53) = v15;
    *(a2 + 28) = JSONS::BalanceTypeFromJSON(v5 + 6, "balance_task_type");
    v16 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v5 + 6, "max_iterations_");
    if ((*(v5 + 4) + 48 * v5[6]) != v16 && (*(v16 + 23) & 0x10) != 0)
    {
      v17 = v16[6];
    }

    else
    {
      v17 = -1;
    }

    *(a2 + 12) = v17;
    *(a2 + 16) = JSONS::RealFromJSON(v5 + 6, "task_precision_", 0.0);
    *(a2 + 56) = JSONS::RealFromJSON(v5 + 6, "balance_figure_mass_", 0.0);
    *(a2 + 20) = JSONS::RealFromJSON(v5 + 6, "limits_gain_", 0.0);
    *(a2 + 48) = JSONS::RealFromJSON(v5 + 6, "balance_moments_weight_", 0.0);
    *a2 = JSONS::RealFromJSON(v5 + 6, "p_coeff_", 0.0);
    *(a2 + 4) = JSONS::RealFromJSON(v5 + 6, "solution_tolerance_", 0.0);
    *(a2 + 8) = JSONS::RealFromJSON(v5 + 6, "retargeting_gain_", 0.0);
    JSONS::VectorFromParentJSON(v5 + 6, "balance_zero_moment_point", &v19);
    *(a2 + 32) = v19;
    result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v5 + 6, "balance_use_default_zmp");
    v18 = (*(v5 + 4) + 48 * v5[6]) != result && *(result + 23) == 10;
    *(a2 + 53) = v18;
  }

  return result;
}

double JSONS::RigBalanceTaskFromJSON@<D0>(_DWORD *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 4) = 257;
  v6 = (a3 + 4);
  *(a3 + 6) = 1;
  *(a3 + 16) = xmmword_245A022C0;
  *(a3 + 32) = xmmword_245A022D0;
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a2, "balance_task_");
  if ((*(a2 + 1) + 48 * *a2) != Member)
  {
    v9 = Member;
    v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(Member + 6, "global_up");
    if ((*(v9 + 4) + 48 * v9[6]) != v10 && (*(v10 + 23) & 0x10) != 0)
    {
      v11 = v10[6];
    }

    else
    {
      v11 = -1;
    }

    *a3 = v11;
    JSONS::assignBoolArrayFromJSON(a1, v9 + 6, "position_dof", v6, 3);
    JSONS::VectorFromParentJSON(v9 + 6, "weight", &v12);
    *(a3 + 16) = v12;
    JSONS::VectorFromParentJSON(v9 + 6, "precision", &v12);
    result = *&v12;
    *(a3 + 32) = v12;
  }

  return result;
}

double JSONS::RigBoneBaseFromJSON(float32x4_t *a1, unsigned int *a2)
{
  v4 = JSONS::StringFromJSON(a2, "name_");
  IKString::assign(&a1->i64[1], v4, v5);
  v6 = JSONS::StringFromJSON(a2, "parent_name_");
  IKString::assign(a1[2].i64, v6, v7);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a2, "solver_index_");
  if ((*(a2 + 1) + 48 * *a2) != Member && (*(Member + 23) & 0x10) != 0)
  {
    v9 = Member[6];
  }

  else
  {
    v9 = -1;
  }

  a1->i32[0] = v9;
  v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a2, "parent_index_");
  if ((*(a2 + 1) + 48 * *a2) != v10 && (*(v10 + 23) & 0x10) != 0)
  {
    v11 = v10[6];
  }

  else
  {
    v11 = -1;
  }

  a1->i32[1] = v11;
  JSONS::TransformFromJSON(a2, "rest_transform_", v14);
  result = *v14[0].i64;
  v13 = v14[1];
  a1[4] = v14[0];
  a1[5] = v13;
  return result;
}

double JSONS::RigBoneFromJSON(_DWORD *a1, uint64_t a2, unsigned int *a3)
{
  JSONS::RigBoneBaseFromJSON(a2, a3);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "active_");
  v7 = (*(a3 + 1) + 48 * *a3) != Member && *(Member + 23) == 10;
  *(a2 + 96) = v7;
  JSONS::assignBoolArrayFromJSON(a1, a3, "dof_", (a2 + 97), 3);
  v8 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "enable_limits_");
  v9 = (*(a3 + 1) + 48 * *a3) != v8 && *(v8 + 23) == 10;
  *(a2 + 103) = v9;
  v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "enable_retargeting_");
  v11 = (*(a3 + 1) + 48 * *a3) != v10 && *(v10 + 23) == 10;
  *(a2 + 100) = v11;
  v12 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "enable_target_translate_");
  v13 = (*(a3 + 1) + 48 * *a3) != v12 && *(v12 + 23) == 10;
  *(a2 + 102) = v13;
  v14 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "enable_stretch_limits_");
  v15 = (*(a3 + 1) + 48 * *a3) != v14 && *(v14 + 23) == 10;
  *(a2 + 101) = v15;
  v16 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "enforce_limits_");
  v17 = (*(a3 + 1) + 48 * *a3) != v16 && *(v16 + 23) == 10;
  *(a2 + 104) = v17;
  *(a2 + 128) = JSONS::AxisFromJSON(a3, "limits_bone_axis_");
  JSONS::VectorFromParentJSON(a3, "limits_max_degrees_", &v21);
  *(a2 + 192) = v21;
  JSONS::VectorFromParentJSON(a3, "limits_min_degrees_", &v21);
  *(a2 + 176) = v21;
  *(a2 + 124) = JSONS::RealFromJSON(a3, "limits_gain_", 0.0);
  v18 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "override_mass_");
  v19 = (*(a3 + 1) + 48 * *a3) != v18 && *(v18 + 23) == 10;
  *(a2 + 108) = v19;
  *(a2 + 112) = JSONS::RealFromJSON(a3, "mass_", 0.0);
  *(a2 + 116) = JSONS::RealFromJSON(a3, "max_velocity_", 0.0);
  *(a2 + 120) = JSONS::RealFromJSON(a3, "retargeting_gain_", 0.0);
  JSONS::VectorFromParentJSON(a3, "retargeting_gain_dof", &v21);
  *(a2 + 160) = v21;
  *(a2 + 132) = JSONS::RealFromJSON(a3, "stretch_error_gain_", 0.0);
  JSONS::VectorFromParentJSON(a3, "stretch_max_", &v21);
  *(a2 + 224) = v21;
  JSONS::VectorFromParentJSON(a3, "stretch_min_", &v21);
  *(a2 + 208) = v21;
  JSONS::VectorFromParentJSON(a3, "stretch_stiffness_", &v21);
  *(a2 + 240) = v21;
  JSONS::assignBoolArrayFromJSON(a1, a3, "stretch_on_", (a2 + 105), 3);
  JSONS::VectorFromParentJSON(a3, "weight_", &v21);
  result = *&v21;
  *(a2 + 144) = v21;
  return result;
}

void JSONS::SelfPenetrationBoneSettingsFromJSON(int *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 4) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0;
  *(a4 + 56) = a2;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = xmmword_245A01E80;
  v8 = (a4 + 80);
  *(a4 + 96) = 0x3DCCCCCD00000000;
  __asm { FMOV            V0.2S, #10.0 }

  *(a4 + 112) = _D0;
  *(a4 + 120) = 1092616192;
  *(a4 + 128) = _D0;
  *(a4 + 144) = -1;
  *(a4 + 152) = 0x4000000040000000;
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "self_penetration_enabled");
  v15 = (*(a3 + 1) + 48 * *a3) != Member && *(Member + 23) == 10;
  *a4 = v15;
  *(a4 + 4) = JSONS::CollisionShapeTypeFromJSON(a3, "collision_shape_type");
  JSONS::VectorFromParentJSON(a3, "collision_shape_extents", &v25);
  *(a4 + 16) = v25;
  JSONS::ArrayFromJSON<IKString>("colliding_segments", a1, a2, a3, &v23);
  v25 = 0u;
  v16 = v23;
  v17 = v24;
  v23 = 0u;
  *&v24 = 0;
  *(a4 + 32) = v16;
  *(a4 + 48) = v17;
  *&v26 = 0;
  *(&v26 + 1) = a2;
  FIK::IKArray<IKString>::~IKArray(&v25);
  FIK::IKArray<IKString>::~IKArray(&v23);
  JSONS::TransformFromJSON(a3, "local_offset", &v25);
  v18 = v26;
  *(a4 + 64) = v25;
  *v8 = v18;
  *(a4 + 96) = JSONS::RealFromJSON(a3, "mesh_offset", 0.0);
  *(a4 + 100) = JSONS::RealFromJSON(a3, "filter_alpha", 0.0);
  JSONS::VectorFromParentJSON(a3, "position_weight", &v25);
  *(a4 + 112) = v25;
  JSONS::VectorFromParentJSON(a3, "rotation_weight", &v25);
  *(a4 + 128) = v25;
  v19 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "position_depth");
  if ((*(a3 + 1) + 48 * *a3) != v19 && (*(v19 + 23) & 0x10) != 0)
  {
    v20 = v19[6];
  }

  else
  {
    v20 = -1;
  }

  *(a4 + 144) = v20;
  v21 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "rotation_depth");
  if ((*(a3 + 1) + 48 * *a3) != v21 && (*(v21 + 23) & 0x10) != 0)
  {
    v22 = v21[6];
  }

  else
  {
    v22 = -1;
  }

  *(a4 + 148) = v22;
  *(a4 + 152) = JSONS::RealFromJSON(a3, "position_precision", 0.0);
  *(a4 + 156) = JSONS::RealFromJSON(a3, "rotation_precision", 0.0);
}

void JSONS::ArrayFromJSON<IKString>(char *__s@<X3>, int *a2@<X0>, uint64_t a3@<X1>, int *a4@<X2>, void *a5@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = a3;
  if ((*(a4 + 1) + 48 * *a4) != rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a4, __s))
  {
    v18 = __s;
    v19 = 0x405000000000000;
    v17 = strlen(__s);
    v9 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a4, &v17);
    if (*(v9 + 11) == 4 && *v9 != 0)
    {
      v11 = v9;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        JSONS::ObjectFromJSON<IKString>(v9, v11[1] + v12, &v17);
        v15 = *a2;
        if (*a2)
        {
          v14 = 1;
        }

        else
        {
          FIK::IKArray<IKString>::push_back<IKString&,void>(a5, &v17);
        }

        if (v18)
        {
          v9 = (*(*v19 + 24))(v19, v17, 0, 8);
        }

        if (v15)
        {
          break;
        }

        ++v13;
        v12 += 24;
        if (v13 >= *v11)
        {
          goto LABEL_17;
        }
      }

      if ((v14 & 1) == 0)
      {
        FIK::IKArray<IKString>::~IKArray(a5);
      }
    }
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
}

int *JSONS::MoCapBoneFromJSON@<X0>(int *a1@<X0>, FIK::Allocator *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  FIK::MoCapBone::MoCapBone(a4, a2);
  JSONS::RigBoneFromJSON(a1, a4, a3);
  v8 = JSONS::StringFromJSON(a3, "source_name");
  IKString::assign((a4 + 256), v8, v9);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "source_index");
  if ((*(a3 + 1) + 48 * *a3) != Member && (*(Member + 23) & 0x10) != 0)
  {
    v11 = Member[6];
  }

  else
  {
    v11 = -1;
  }

  *(a4 + 280) = v11;
  JSONS::TransformFromJSON(a3, "source_rot_offset", &v38);
  v12 = v39;
  *(a4 + 288) = v38;
  *(a4 + 304) = v12;
  JSONS::TransformFromJSON(a3, "source_rot_offset_p", &v38);
  v13 = v39;
  *(a4 + 320) = v38;
  *(a4 + 336) = v13;
  *&v39 = 0x405000000000000;
  v38.i64[1] = "acp";
  v38.i64[0] = 3;
  v14 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a3, &v38);
  *&v39 = 0x405000000000000;
  v38.i64[1] = "floor_compensation";
  v38.i64[0] = 18;
  v15 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(v14, &v38);
  *&v39 = 0x405000000000000;
  v38.i64[1] = "auto_locking";
  v38.i64[0] = 12;
  v16 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(v14, &v38);
  v17 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v14, "self_penetration");
  if ((v14[1] + 48 * *v14) != v17)
  {
    JSONS::SelfPenetrationBoneSettingsFromJSON(a1, a2, v17 + 6, &v38);
    *(a4 + 384) = v38.i64[0];
    v18 = v40;
    v40 = 0uLL;
    v19 = *(a4 + 416);
    v20 = *(a4 + 432);
    *(a4 + 400) = v39;
    *(a4 + 416) = v18;
    v21 = v41;
    *&v41 = 0;
    *(a4 + 432) = v21;
    v37[0] = v19;
    v37[1] = v20;
    FIK::IKArray<IKString>::~IKArray(v37);
    v22 = v43;
    *(a4 + 448) = v42;
    *(a4 + 464) = v22;
    *(a4 + 480) = v44;
    v23 = v46;
    *(a4 + 496) = v45;
    *(a4 + 512) = v23;
    *(a4 + 528) = v47;
    FIK::IKArray<IKString>::~IKArray(&v40);
  }

  v24 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v15, "is_correcting");
  v25 = (v15[1] + 48 * *v15) != v24 && *(v24 + 23) == 10;
  *(a4 + 353) = v25;
  *(a4 + 356) = JSONS::RealFromJSON(v15, "mesh_offset", 0.0);
  v26 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v15, "enabled");
  v27 = (v15[1] + 48 * *v15) != v26 && *(v26 + 23) == 10;
  *(a4 + 352) = v27;
  v28 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v15, "offsets_hips");
  v29 = (v15[1] + 48 * *v15) != v28 && *(v28 + 23) == 10;
  *(a4 + 354) = v29;
  v30 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v16, "is_locking");
  v31 = (v16[1] + 48 * *v16) != v30 && *(v30 + 23) == 10;
  *(a4 + 361) = v31;
  *(a4 + 364) = JSONS::RealFromJSON(v16, "min_velocity_threshold", 0.0);
  *(a4 + 368) = JSONS::RealFromJSON(v16, "max_velocity_threshold", 0.0);
  v32 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v16, "enabled");
  v33 = (v16[1] + 48 * *v16) != v32 && *(v32 + 23) == 10;
  *(a4 + 360) = v33;
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v16, "blend_frames_count");
  if ((v16[1] + 48 * *v16) != result && (*(result + 23) & 0x10) != 0)
  {
    v35 = result[6];
  }

  else
  {
    v35 = -1;
  }

  *(a4 + 372) = v35;
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t JSONS::TaskPreprocessingFromJSON(int *a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 1) + 48 * *a1) == rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a1, "task_preprocessing"))
  {
    v4 = 0;
    v3 = 0.0;
  }

  else
  {
    v10[1] = "task_preprocessing";
    v10[2] = 0x405000000000000;
    v10[0] = 18;
    v2 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>(a1, v10);
    if ((v2[1] + 48 * *v2) == rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v2, "filter_strength"))
    {
      v3 = 0.0;
    }

    else
    {
      v3 = JSONS::RealFromJSON(v2, "filter_strength", 0.0);
    }

    v4 = (v2[1] + 48 * *v2) != rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v2, "locking_active") && (Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v2, "locking_active"), (v2[1] + 48 * *v2) != Member) && *(Member + 23) == 10;
    if ((v2[1] + 48 * *v2) != rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v2, "unlock_blend_frames"))
    {
      v6 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v2, "unlock_blend_frames");
      if ((v2[1] + 48 * *v2) != v6 && (*(v6 + 23) & 0x10) != 0)
      {
        v7 = v6[6];
      }
    }

    if ((v2[1] + 48 * *v2) != rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(v2, "unlock_distance"))
    {
      JSONS::RealFromJSON(v2, "unlock_distance", 0.0);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return LODWORD(v3) | (v4 << 32);
}

unint64_t JSONS::RigTaskFromJSON(_DWORD *a1, uint64_t a2, unsigned int *a3)
{
  v6 = JSONS::StringFromJSON(a3, "name_");
  IKString::assign(a2, v6, v7);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "has_position_");
  v9 = (*(a3 + 1) + 48 * *a3) != Member && *(Member + 23) == 10;
  *(a2 + 52) = v9;
  v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "has_rotation_");
  v11 = (*(a3 + 1) + 48 * *a3) != v10 && *(v10 + 23) == 10;
  *(a2 + 53) = v11;
  v12 = JSONS::StringFromJSON(a3, "target_name_");
  IKString::assign((a2 + 24), v12, v13);
  v14 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "target_index_");
  if ((*(a3 + 1) + 48 * *a3) != v14 && (*(v14 + 23) & 0x10) != 0)
  {
    v15 = v14[6];
  }

  else
  {
    v15 = -1;
  }

  *(a2 + 48) = v15;
  JSONS::VectorFromParentJSON(a3, "tip_offset_", &v24);
  *(a2 + 144) = v24;
  v16 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "position_as_pole_");
  v17 = (*(a3 + 1) + 48 * *a3) != v16 && *(v16 + 23) == 10;
  *(a2 + 54) = v17;
  JSONS::assignBoolArrayFromJSON(a1, a3, "position_dof_", (a2 + 55), 3);
  v18 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "position_depth_");
  if ((*(a3 + 1) + 48 * *a3) != v18 && (*(v18 + 23) & 0x10) != 0)
  {
    v19 = v18[6];
  }

  else
  {
    v19 = -1;
  }

  *(a2 + 64) = v19;
  JSONS::VectorFromParentJSON(a3, "position_weight_", &v24);
  *(a2 + 80) = v24;
  JSONS::VectorFromParentJSON(a3, "position_precision_", &v24);
  *(a2 + 112) = v24;
  JSONS::assignBoolArrayFromJSON(a1, a3, "rotation_dof_", (a2 + 58), 3);
  v20 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "rotation_depth_");
  if ((*(a3 + 1) + 48 * *a3) != v20 && (*(v20 + 23) & 0x10) != 0)
  {
    v21 = v20[6];
  }

  else
  {
    v21 = -1;
  }

  *(a2 + 68) = v21;
  JSONS::VectorFromParentJSON(a3, "rotation_weight_", &v24);
  *(a2 + 96) = v24;
  JSONS::VectorFromParentJSON(a3, "rotation_precision_", &v24);
  *(a2 + 128) = v24;
  result = JSONS::TaskPreprocessingFromJSON(a3);
  *(a2 + 160) = result;
  *(a2 + 168) = v23;
  return result;
}

int *JSONS::MoCapTaskFromJSON@<X0>(_DWORD *a1@<X0>, FIK::Allocator *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  FIK::RigTask::RigTask(a4, a2);
  *(a4 + 176) = 0;
  *(a4 + 184) = 0;
  *(a4 + 192) = a2;
  v8 = -1;
  *(a4 + 200) = -1;
  *(a4 + 204) = 1;
  *(a4 + 208) = 0;
  *(a4 + 216) = 0;
  *(a4 + 224) = xmmword_245A01E80;
  *(a4 + 240) = xmmword_245A01EF0;
  JSONS::RigTaskFromJSON(a1, a4, a3);
  v9 = JSONS::StringFromJSON(a3, "source_name");
  IKString::assign((a4 + 176), v9, v10);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "source_index");
  if ((*(a3 + 1) + 48 * *a3) != Member && (*(Member + 23) & 0x10) != 0)
  {
    v8 = Member[6];
  }

  *(a4 + 200) = v8;
  JSONS::TransformFromJSON(a3, "offset", v17);
  v12 = v17[1];
  *(a4 + 208) = v17[0];
  *(a4 + 224) = v12;
  JSONS::VectorFromParentJSON(a3, "scale_offset", v17);
  *(a4 + 240) = v17[0];
  v13 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "is_parent_constraint");
  v14 = (*(a3 + 1) + 48 * *a3) != v13 && *(v13 + 23) == 10;
  *(a4 + 204) = v14;
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "is_zero_offset");
  v16 = (*(a3 + 1) + 48 * *a3) != result && *(result + 23) == 10;
  *(a4 + 205) = v16;
  return result;
}

uint64_t JSONS::GameTaskFromJSON@<X0>(_DWORD *a1@<X0>, FIK::Allocator *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  FIK::RigTask::RigTask(a4, a2);
  *(a4 + 176) = 0;
  *(a4 + 184) = 1065353216;
  *(a4 + 208) = xmmword_245A01E80;
  *(a4 + 196) = 0;
  *(a4 + 188) = 0;
  *(a4 + 204) = 0;
  *(a4 + 236) = 0;
  *(a4 + 224) = 0;
  *(a4 + 232) = 0;
  JSONS::RigTaskFromJSON(a1, a4, a3);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "is_raytrace_");
  v8 = (*(a3 + 1) + 48 * *a3) != Member && *(Member + 23) == 10;
  *(a4 + 228) = v8;
  v9 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "is_chest_");
  v10 = (*(a3 + 1) + 48 * *a3) != v9 && *(v9 + 23) == 10;
  *(a4 + 229) = v10;
  v11 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "is_vr_task_");
  v12 = (*(a3 + 1) + 48 * *a3) != v11 && *(v11 + 23) == 10;
  *(a4 + 230) = v12;
  v13 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "use_fk_orientation_");
  v14 = (*(a3 + 1) + 48 * *a3) != v13 && *(v13 + 23) == 10;
  *(a4 + 231) = v14;
  v15 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "is_ls_look_at_");
  v16 = (*(a3 + 1) + 48 * *a3) != v15 && *(v15 + 23) == 10;
  *(a4 + 232) = v16;
  v17 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "is_look_at_");
  v18 = (*(a3 + 1) + 48 * *a3) != v17 && *(v17 + 23) == 10;
  *(a4 + 233) = v18;
  JSONS::VectorFromParentJSON(a3, "look_at_axis", v21);
  *(a4 + 176) = v21[0];
  *(a4 + 236) = JSONS::RealFromJSON(a3, "mesh_offset_", 0.0);
  JSONS::TransformFromJSON(a3, "motion_controller_offset_", v21);
  v19 = v21[1];
  *(a4 + 192) = v21[0];
  *(a4 + 208) = v19;
  result = JSONS::BlendTypeFromJSON(a3, "blend_type_");
  *(a4 + 224) = result;
  return result;
}

double JSONS::IKRigFromJSON(_DWORD *a1, uint64_t a2, unsigned int *a3)
{
  *(a2 + 48) = JSONS::RigTypeFromJSON(a3, "rig_type_");
  v6 = JSONS::StringFromJSON(a3, "uid");
  IKString::assign(a2, v6, v7);
  *(a2 + 24) = JSONS::RealFromJSON(a3, "unit_scale", 1.0);
  *(a2 + 28) = JSONS::AxisFromJSON(a3, "up_axis");
  *(a2 + 32) = JSONS::AxisFromJSON(a3, "forward_axis");
  *(a2 + 36) = JSONS::AxisFromJSON(a3, "right_axis");
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "left_handed");
  if ((*(a3 + 1) + 48 * *a3) != Member && (*(Member + 23) & 0x10) != 0)
  {
    v9 = Member[6];
  }

  else
  {
    v9 = -1;
  }

  *(a2 + 40) = v9;
  v10 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<FIK::RapidJsonAllocator>>::FindMember(a3, "continuous_solving_");
  v11 = (*(a3 + 1) + 48 * *a3) != v10 && *(v10 + 23) == 10;
  *(a2 + 44) = v11;
  JSONS::SolverSettingsFromJSON(a3, &v15);
  v12 = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v12;
  *(a2 + 96) = v17;
  *(a2 + 112) = v18;
  *(a2 + 120) = v19;
  JSONS::RigBalanceTaskFromJSON(a1, a3, &v15);
  *(a2 + 128) = v15;
  *(a2 + 131) = *(&v15 + 3);
  result = *&v16;
  v14 = v17;
  *(a2 + 144) = v16;
  *(a2 + 160) = v14;
  return result;
}

void **JSONS::JSONLine@<X0>(uint64_t a1@<X0>, void **a2@<X1>, const void **a3@<X2>, void **a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = FIK::defaultAllocator(a1);
  std::operator+[abi:nn200100]<char,std::char_traits<char>,FIK::FIKAllocator<char>>(a5, a3, v35);
  v10 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(v35, "", 1uLL);
  v11 = v10[2];
  v12 = v10[3];
  __src = *v10;
  v39 = v11;
  v40 = v12;
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  v13 = *(a1 + 23);
  if (v13 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v13 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  v16 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v14, v15);
  v17 = v16[2];
  v18 = v16[3];
  v41 = *v16;
  v42 = v17;
  v43 = v18;
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  v19 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v41, ":", 2uLL);
  v20 = v19[2];
  v21 = v19[3];
  v44 = *v19;
  v45 = v20;
  v46 = v21;
  v19[1] = 0;
  v19[2] = 0;
  *v19 = 0;
  v22 = *(a2 + 23);
  if (v22 >= 0)
  {
    v23 = a2;
  }

  else
  {
    v23 = *a2;
  }

  if (v22 >= 0)
  {
    v24 = *(a2 + 23);
  }

  else
  {
    v24 = a2[1];
  }

  v25 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v44, v23, v24);
  v26 = v25[2];
  v27 = v25[3];
  v47 = *v25;
  v48 = v26;
  v49 = v27;
  v25[1] = 0;
  v25[2] = 0;
  *v25 = 0;
  v28 = *(a4 + 23);
  if (v28 >= 0)
  {
    v29 = a4;
  }

  else
  {
    v29 = *a4;
  }

  if (v28 >= 0)
  {
    v30 = *(a4 + 23);
  }

  else
  {
    v30 = a4[1];
  }

  v31 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v47, v29, v30);
  v32 = v31[2];
  v33 = v31[3];
  v50 = *v31;
  v51 = v32;
  v52 = v33;
  v31[1] = 0;
  v31[2] = 0;
  *v31 = 0;
  result = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::operator=[abi:nn200100](a5, &v50);
  if (SHIBYTE(v51) < 0 && v50)
  {
    result = (*(*v52 + 24))(v52, v50, 0, 8);
  }

  if (SHIBYTE(v48) < 0 && v47)
  {
    result = (*(*v49 + 24))(v49, v47, 0, 8);
  }

  if (SHIBYTE(v45) < 0 && v44)
  {
    result = (*(*v46 + 24))(v46, v44, 0, 8);
  }

  if (SHIBYTE(v42) < 0 && v41)
  {
    result = (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (SHIBYTE(v39) < 0 && __src)
  {
    result = (*(*v40 + 24))(v40, __src, 0, 8);
  }

  if (v36 < 0)
  {
    if (v35[0])
    {
      return (*(*v37 + 24))(v37, v35[0], 0, 8);
    }
  }

  return result;
}

uint64_t std::operator+[abi:nn200100]<char,std::char_traits<char>,FIK::FIKAllocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v12 = a1[3];
  result = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100](a3, v6 + v5, &v12);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void **std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::operator=[abi:nn200100](void **a1, __int128 *a2)
{
  v4 = a1[3];
  if (v4 == *(a2 + 3))
  {
    if (*(a1 + 23) < 0 && *a1)
    {
      (*(*v4 + 24))(v4, *a1, 0, 8);
    }

    v5 = *a2;
    a1[2] = *(a2 + 2);
    *a1 = v5;
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::operator=(a1, a2);
  }

  return a1;
}

void **JSONS::JSONLineInt@<X0>(__int128 *a1@<X0>, int a2@<W1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x18uLL, "%d", a2);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, __str);
  v22 = *(a1 + 3);
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, *a1, *(a1 + 1));
  }

  else
  {
    __dst = *a1;
    v21 = *(a1 + 2);
  }

  v19 = v25;
  if (SHIBYTE(v24) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v17, v23, *(&v23 + 1));
  }

  else
  {
    v17 = v23;
    v18 = v24;
  }

  v16 = *(a3 + 3);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v14, *a3, *(a3 + 1));
  }

  else
  {
    v14 = *a3;
    v15 = *(a3 + 2);
  }

  v13 = *(a4 + 3);
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v11, *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    v12 = *(a4 + 2);
  }

  result = JSONS::JSONLine(&__dst, &v17, &v14, &v11, a5);
  if (SHIBYTE(v12) < 0 && v11)
  {
    result = (*(*v13 + 24))(v13, v11, 0, 8);
  }

  if (SHIBYTE(v15) < 0 && v14)
  {
    result = (*(*v16 + 24))(v16, v14, 0, 8);
  }

  if (SHIBYTE(v18) < 0 && v17)
  {
    result = (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (SHIBYTE(v21) < 0 && __dst)
  {
    result = (*(*v22 + 24))(v22, __dst, 0, 8);
  }

  if (SHIBYTE(v24) < 0 && v23)
  {
    result = (*(*v25 + 24))(v25, v23, 0, 8);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t JSONS::JSONLineReal@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  std::basic_ostringstream<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_ostringstream[abi:nn200100](&v26);
  *(&v28[0].__locale_ + *(v26 - 3)) = a4;
  std::ostream::operator<<();
  std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::str(&v27, &v23);
  v22 = *(a1 + 3);
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, *a1, *(a1 + 1));
  }

  else
  {
    __dst = *a1;
    v21 = *(a1 + 2);
  }

  v19 = v25;
  if (SHIBYTE(v24) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v17, v23, *(&v23 + 1));
  }

  else
  {
    v17 = v23;
    v18 = v24;
  }

  v16 = *(a2 + 3);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v14, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    v15 = *(a2 + 2);
  }

  v13 = *(a3 + 3);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v11, *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    v12 = *(a3 + 2);
  }

  JSONS::JSONLine(&__dst, &v17, &v14, &v11, a5);
  if (SHIBYTE(v12) < 0 && v11)
  {
    (*(*v13 + 24))(v13, v11, 0, 8);
  }

  if (SHIBYTE(v15) < 0 && v14)
  {
    (*(*v16 + 24))(v16, v14, 0, 8);
  }

  if (SHIBYTE(v18) < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (SHIBYTE(v21) < 0 && __dst)
  {
    (*(*v22 + 24))(v22, __dst, 0, 8);
  }

  if (SHIBYTE(v24) < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  v26 = &unk_28589B950;
  v32 = &unk_28589B978;
  v27 = &unk_28589BA20;
  if (v30 < 0 && v29)
  {
    (*(*v31 + 24))(v31, v29, 0, 8);
  }

  v27 = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(v28);
  std::ostream::~ostream();
  return MEMORY[0x245D77F30](&v32);
}

uint64_t std::basic_ostringstream<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 168) = 0;
  *a1 = &unk_28589B9C0;
  *(a1 + 120) = &unk_28589B9E8;
  std::ios_base::init((a1 + 120), (a1 + 8));
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  *a1 = &unk_28589B950;
  *(a1 + 120) = &unk_28589B978;
  std::basic_stringbuf<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_stringbuf[abi:nn200100](a1 + 8, 16);
  return a1;
}

uint64_t std::basic_ostringstream<char,std::char_traits<char>,FIK::FIKAllocator<char>>::~basic_ostringstream(uint64_t a1)
{
  *a1 = &unk_28589B950;
  v2 = a1 + 120;
  *(a1 + 120) = &unk_28589B978;
  *(a1 + 8) = &unk_28589BA20;
  if (*(a1 + 95) < 0)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      (*(**(a1 + 96) + 24))(*(a1 + 96), v3, 0, 8);
    }
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x245D77F30](v2);
  return a1;
}

void **JSONS::JSONLineBool@<X0>(__int128 *a1@<X0>, int a2@<W1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v9 = "true";
  }

  else
  {
    v9 = "false";
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, v9);
  v22 = *(a1 + 3);
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, *a1, *(a1 + 1));
  }

  else
  {
    __dst = *a1;
    v21 = *(a1 + 2);
  }

  v19 = v25;
  if (SHIBYTE(v24) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v17, v23, *(&v23 + 1));
  }

  else
  {
    v17 = v23;
    v18 = v24;
  }

  v16 = *(a3 + 3);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v14, *a3, *(a3 + 1));
  }

  else
  {
    v14 = *a3;
    v15 = *(a3 + 2);
  }

  v13 = *(a4 + 3);
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v11, *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    v12 = *(a4 + 2);
  }

  result = JSONS::JSONLine(&__dst, &v17, &v14, &v11, a5);
  if (SHIBYTE(v12) < 0 && v11)
  {
    result = (*(*v13 + 24))(v13, v11, 0, 8);
  }

  if (SHIBYTE(v15) < 0 && v14)
  {
    result = (*(*v16 + 24))(v16, v14, 0, 8);
  }

  if (SHIBYTE(v18) < 0 && v17)
  {
    result = (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (SHIBYTE(v21) < 0 && __dst)
  {
    result = (*(*v22 + 24))(v22, __dst, 0, 8);
  }

  if (SHIBYTE(v24) < 0)
  {
    if (v23)
    {
      return (*(*v25 + 24))(v25, v23, 0, 8);
    }
  }

  return result;
}

void **JSONS::JSONLineStr@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 8))
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(__src, *a2);
    v9 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::insert(__src, 0, "", 1uLL);
    v10 = v9[2];
    v11 = v9[3];
    v31 = *v9;
    v32 = v10;
    v33 = v11;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    v12 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v31, "", 1uLL);
    v13 = v12[2];
    v14 = v12[3];
    v34 = *v12;
    v35 = v13;
    v36 = v14;
    v12[1] = 0;
    v12[2] = 0;
    *v12 = 0;
    if (SHIBYTE(v32) < 0 && v31)
    {
      (*(*v33 + 24))(v33, v31, 0, 8);
    }

    if (v29 < 0 && __src[0])
    {
      (*(*v30 + 24))(v30, __src[0], 0, 8);
    }
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v34, "");
  }

  v27 = *(a1 + 3);
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, *a1, *(a1 + 1));
  }

  else
  {
    __dst = *a1;
    v26 = *(a1 + 2);
  }

  v24 = v36;
  if (SHIBYTE(v35) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v22, v34, *(&v34 + 1));
  }

  else
  {
    v22 = v34;
    v23 = v35;
  }

  v21 = *(a3 + 3);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v19, *a3, *(a3 + 1));
  }

  else
  {
    v19 = *a3;
    v20 = *(a3 + 2);
  }

  v18 = *(a4 + 3);
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v16, *a4, *(a4 + 1));
  }

  else
  {
    v16 = *a4;
    v17 = *(a4 + 2);
  }

  result = JSONS::JSONLine(&__dst, &v22, &v19, &v16, a5);
  if (SHIBYTE(v17) < 0 && v16)
  {
    result = (*(*v18 + 24))(v18, v16, 0, 8);
  }

  if (SHIBYTE(v20) < 0 && v19)
  {
    result = (*(*v21 + 24))(v21, v19, 0, 8);
  }

  if (SHIBYTE(v23) < 0 && v22)
  {
    result = (*(*v24 + 24))(v24, v22, 0, 8);
  }

  if (SHIBYTE(v26) < 0 && __dst)
  {
    result = (*(*v27 + 24))(v27, __dst, 0, 8);
  }

  if (SHIBYTE(v35) < 0)
  {
    if (v34)
    {
      return (*(*v36 + 24))(v36, v34, 0, 8);
    }
  }

  return result;
}

void **JSONS::JSONLineVect@<X0>(unint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  __src = 0uLL;
  v43 = 0;
  v44 = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "{", 1uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v35, "X");
  v10 = *a2;
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v32, ",");
  JSONS::JSONLineReal(&v35, a3, &v32, 8, &v38);
  if ((v40 & 0x80u) == 0)
  {
    v11 = &v38;
  }

  else
  {
    v11 = v38;
  }

  if ((v40 & 0x80u) == 0)
  {
    v12 = v40;
  }

  else
  {
    v12 = v39;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v11, v12);
  if (v40 < 0 && v38)
  {
    (*(*v41 + 24))(v41, v38, 0, 8);
  }

  if (v33 < 0 && v32)
  {
    (*(*v34 + 24))(v34, v32, 0, 8);
  }

  if (v36 < 0 && v35)
  {
    (*(*v37 + 24))(v37, v35, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v35, "Y");
  v13 = a2[1];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v32, ",");
  JSONS::JSONLineReal(&v35, a3, &v32, 8, &v38);
  if ((v40 & 0x80u) == 0)
  {
    v14 = &v38;
  }

  else
  {
    v14 = v38;
  }

  if ((v40 & 0x80u) == 0)
  {
    v15 = v40;
  }

  else
  {
    v15 = v39;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v14, v15);
  if (v40 < 0 && v38)
  {
    (*(*v41 + 24))(v41, v38, 0, 8);
  }

  if (v33 < 0 && v32)
  {
    (*(*v34 + 24))(v34, v32, 0, 8);
  }

  if (v36 < 0 && v35)
  {
    (*(*v37 + 24))(v37, v35, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v35, "Z");
  v16 = a2[2];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v32, &unk_245A04BAE);
  JSONS::JSONLineReal(&v35, a3, &v32, 8, &v38);
  if ((v40 & 0x80u) == 0)
  {
    v17 = &v38;
  }

  else
  {
    v17 = v38;
  }

  if ((v40 & 0x80u) == 0)
  {
    v18 = v40;
  }

  else
  {
    v18 = v39;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v17, v18);
  if (v40 < 0 && v38)
  {
    (*(*v41 + 24))(v41, v38, 0, 8);
  }

  if (v33 < 0 && v32)
  {
    (*(*v34 + 24))(v34, v32, 0, 8);
  }

  if (v36 < 0 && v35)
  {
    (*(*v37 + 24))(v37, v35, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "}", 1uLL);
  v31 = a1[3];
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, *a1, a1[1]);
  }

  else
  {
    __dst = *a1;
    v30 = a1[2];
  }

  v28 = v44;
  if (SHIBYTE(v43) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v26, __src, *(&__src + 1));
  }

  else
  {
    v26 = __src;
    v27 = v43;
  }

  v25 = *(a3 + 24);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v23, *a3, *(a3 + 8));
  }

  else
  {
    v23 = *a3;
    v24 = *(a3 + 16);
  }

  v22 = *(a4 + 3);
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v20, *a4, *(a4 + 1));
  }

  else
  {
    v20 = *a4;
    v21 = *(a4 + 2);
  }

  result = JSONS::JSONLine(&__dst, &v26, &v23, &v20, a5);
  if (SHIBYTE(v21) < 0 && v20)
  {
    result = (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (SHIBYTE(v24) < 0 && v23)
  {
    result = (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (SHIBYTE(v27) < 0 && v26)
  {
    result = (*(*v28 + 3))(v28, v26, 0, 8);
  }

  if (SHIBYTE(v30) < 0 && __dst)
  {
    result = (*(*v31 + 24))(v31, __dst, 0, 8);
  }

  if (SHIBYTE(v43) < 0)
  {
    if (__src)
    {
      return (*(*v44 + 3))(v44, __src, 0, 8);
    }
  }

  return result;
}

void **JSONS::JSONLineQuat@<X0>(unint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  __src = 0uLL;
  v46 = 0;
  v47 = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "{", 1uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, "X");
  v10 = *a2;
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v35, ",");
  JSONS::JSONLineReal(&v38, a3, &v35, 8, &v41);
  if ((v43 & 0x80u) == 0)
  {
    v11 = &v41;
  }

  else
  {
    v11 = v41;
  }

  if ((v43 & 0x80u) == 0)
  {
    v12 = v43;
  }

  else
  {
    v12 = v42;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v11, v12);
  if (v43 < 0 && v41)
  {
    (*(*v44 + 24))(v44, v41, 0, 8);
  }

  if (v36 < 0 && v35)
  {
    (*(*v37 + 24))(v37, v35, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, "Y");
  v13 = a2[1];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v35, ",");
  JSONS::JSONLineReal(&v38, a3, &v35, 8, &v41);
  if ((v43 & 0x80u) == 0)
  {
    v14 = &v41;
  }

  else
  {
    v14 = v41;
  }

  if ((v43 & 0x80u) == 0)
  {
    v15 = v43;
  }

  else
  {
    v15 = v42;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v14, v15);
  if (v43 < 0 && v41)
  {
    (*(*v44 + 24))(v44, v41, 0, 8);
  }

  if (v36 < 0 && v35)
  {
    (*(*v37 + 24))(v37, v35, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, "Z");
  v16 = a2[2];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v35, ",");
  JSONS::JSONLineReal(&v38, a3, &v35, 8, &v41);
  if ((v43 & 0x80u) == 0)
  {
    v17 = &v41;
  }

  else
  {
    v17 = v41;
  }

  if ((v43 & 0x80u) == 0)
  {
    v18 = v43;
  }

  else
  {
    v18 = v42;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v17, v18);
  if (v43 < 0 && v41)
  {
    (*(*v44 + 24))(v44, v41, 0, 8);
  }

  if (v36 < 0 && v35)
  {
    (*(*v37 + 24))(v37, v35, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, "W");
  v19 = a2[3];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v35, &unk_245A04BAE);
  JSONS::JSONLineReal(&v38, a3, &v35, 8, &v41);
  if ((v43 & 0x80u) == 0)
  {
    v20 = &v41;
  }

  else
  {
    v20 = v41;
  }

  if ((v43 & 0x80u) == 0)
  {
    v21 = v43;
  }

  else
  {
    v21 = v42;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v20, v21);
  if (v43 < 0 && v41)
  {
    (*(*v44 + 24))(v44, v41, 0, 8);
  }

  if (v36 < 0 && v35)
  {
    (*(*v37 + 24))(v37, v35, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "}", 1uLL);
  v34 = a1[3];
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, *a1, a1[1]);
  }

  else
  {
    __dst = *a1;
    v33 = a1[2];
  }

  v31 = v47;
  if (SHIBYTE(v46) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v29, __src, *(&__src + 1));
  }

  else
  {
    v29 = __src;
    v30 = v46;
  }

  v28 = *(a3 + 24);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v26, *a3, *(a3 + 8));
  }

  else
  {
    v26 = *a3;
    v27 = *(a3 + 16);
  }

  v25 = *(a4 + 3);
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v23, *a4, *(a4 + 1));
  }

  else
  {
    v23 = *a4;
    v24 = *(a4 + 2);
  }

  result = JSONS::JSONLine(&__dst, &v29, &v26, &v23, a5);
  if (SHIBYTE(v24) < 0 && v23)
  {
    result = (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (SHIBYTE(v27) < 0 && v26)
  {
    result = (*(*v28 + 24))(v28, v26, 0, 8);
  }

  if (SHIBYTE(v30) < 0 && v29)
  {
    result = (*(*v31 + 3))(v31, v29, 0, 8);
  }

  if (SHIBYTE(v33) < 0 && __dst)
  {
    result = (*(*v34 + 24))(v34, __dst, 0, 8);
  }

  if (SHIBYTE(v46) < 0)
  {
    if (__src)
    {
      return (*(*v47 + 3))(v47, __src, 0, 8);
    }
  }

  return result;
}

void **JSONS::JSONLineTransform@<X0>(unint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  __src = 0uLL;
  v38 = 0;
  v39 = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "{", 1uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v30, "translation");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v27, ",");
  JSONS::JSONLineVect(v30, a2, a3, &v27, &v33);
  if ((v35 & 0x80u) == 0)
  {
    v10 = &v33;
  }

  else
  {
    v10 = v33;
  }

  if ((v35 & 0x80u) == 0)
  {
    v11 = v35;
  }

  else
  {
    v11 = v34;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v10, v11);
  if (v35 < 0 && v33)
  {
    (*(*v36 + 24))(v36, v33, 0, 8);
  }

  if (v28 < 0 && v27)
  {
    (*(*v29 + 24))(v29, v27, 0, 8);
  }

  if (v31 < 0 && v30[0])
  {
    (*(*v32 + 24))(v32, v30[0], 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v30, "rotation");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v27, &unk_245A04BAE);
  JSONS::JSONLineQuat(v30, a2 + 4, a3, &v27, &v33);
  if ((v35 & 0x80u) == 0)
  {
    v12 = &v33;
  }

  else
  {
    v12 = v33;
  }

  if ((v35 & 0x80u) == 0)
  {
    v13 = v35;
  }

  else
  {
    v13 = v34;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v12, v13);
  if (v35 < 0 && v33)
  {
    (*(*v36 + 24))(v36, v33, 0, 8);
  }

  if (v28 < 0 && v27)
  {
    (*(*v29 + 24))(v29, v27, 0, 8);
  }

  if (v31 < 0 && v30[0])
  {
    (*(*v32 + 24))(v32, v30[0], 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "}", 1uLL);
  v26 = a1[3];
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, *a1, a1[1]);
  }

  else
  {
    __dst = *a1;
    v25 = a1[2];
  }

  v23 = v39;
  if (SHIBYTE(v38) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v21, __src, *(&__src + 1));
  }

  else
  {
    v21 = __src;
    v22 = v38;
  }

  v20 = *(a3 + 24);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v18, *a3, *(a3 + 8));
  }

  else
  {
    v18 = *a3;
    v19 = *(a3 + 16);
  }

  v17 = *(a4 + 3);
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v15, *a4, *(a4 + 1));
  }

  else
  {
    v15 = *a4;
    v16 = *(a4 + 2);
  }

  result = JSONS::JSONLine(&__dst, &v21, &v18, &v15, a5);
  if (SHIBYTE(v16) < 0 && v15)
  {
    result = (*(*v17 + 24))(v17, v15, 0, 8);
  }

  if (SHIBYTE(v19) < 0 && v18)
  {
    result = (*(*v20 + 24))(v20, v18, 0, 8);
  }

  if (SHIBYTE(v22) < 0 && v21)
  {
    result = (*(*v23 + 3))(v23, v21, 0, 8);
  }

  if (SHIBYTE(v25) < 0 && __dst)
  {
    result = (*(*v26 + 24))(v26, __dst, 0, 8);
  }

  if (SHIBYTE(v38) < 0)
  {
    if (__src)
    {
      return (*(*v39 + 3))(v39, __src, 0, 8);
    }
  }

  return result;
}

void **JSONS::JSONLineIKArrayString@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&__src, "[");
  v8 = *a2;
  if (*a2 < 2)
  {
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    do
    {
      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(&__src, 34);
      v11 = a2[2] + 24 * v9;
      if (*(v11 + 8))
      {
        v12 = *v11;
      }

      else
      {
        v12 = &unk_245A04BAE;
      }

      v13 = strlen(v12);
      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v12, v13);
      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, ",", 2uLL);
      v9 = v10;
    }

    while (v8 - 1 > v10++);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(&__src, 34);
  v15 = a2[2] + 24 * v8;
  if (*(v15 - 16))
  {
    v16 = *(v15 - 24);
  }

  else
  {
    v16 = &unk_245A04BAE;
  }

  v17 = strlen(v16);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v16, v17);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(&__src, 34);
LABEL_13:
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "]", 1uLL);
  v32 = *(a1 + 3);
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, *a1, *(a1 + 1));
  }

  else
  {
    __dst = *a1;
    v31 = *(a1 + 2);
  }

  v29 = v35;
  if (SHIBYTE(v34) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v27, __src, *(&__src + 1));
  }

  else
  {
    v27 = __src;
    v28 = v34;
  }

  v26 = *(a3 + 3);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v24, *a3, *(a3 + 1));
  }

  else
  {
    v24 = *a3;
    v25 = *(a3 + 2);
  }

  v23 = *(a4 + 3);
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v21, *a4, *(a4 + 1));
  }

  else
  {
    v21 = *a4;
    v22 = *(a4 + 2);
  }

  result = JSONS::JSONLine(&__dst, &v27, &v24, &v21, a5);
  if (SHIBYTE(v22) < 0 && v21)
  {
    result = (*(*v23 + 24))(v23, v21, 0, 8);
  }

  if (SHIBYTE(v25) < 0 && v24)
  {
    result = (*(*v26 + 24))(v26, v24, 0, 8);
  }

  if (SHIBYTE(v28) < 0 && v27)
  {
    result = (*(*v29 + 24))(v29, v27, 0, 8);
  }

  if (SHIBYTE(v31) < 0 && __dst)
  {
    result = (*(*v32 + 24))(v32, __dst, 0, 8);
  }

  if (SHIBYTE(v34) < 0)
  {
    if (__src)
    {
      return (*(*v35 + 24))(v35, __src, 0, 8);
    }
  }

  return result;
}

void **JSONS::JSONLineTargetBlendType@<X0>(FIK *a1@<X0>, int a2@<W1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 == 2)
  {
    v12 = 0;
    v13 = 0;
    v14 = FIK::defaultAllocator(a1);
    v9 = "BlendWithOffset";
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = FIK::defaultAllocator(a1);
    v9 = "BlendWithTarget";
LABEL_5:
    v10 = 15;
    goto LABEL_7;
  }

  v12 = 0;
  v13 = 0;
  v14 = FIK::defaultAllocator(a1);
  v9 = "BlendToTarget";
  v10 = 13;
LABEL_7:
  IKString::assign(&v12, v9, v10);
  result = JSONS::JSONLineStr(a1, &v12, a3, a4, a5);
  if (v13)
  {
    return (*(*v14 + 3))(v14, v12, 0, 8);
  }

  return result;
}

void **JSONS::JSONLineRigType@<X0>(FIK *a1@<X0>, int *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  if (*a2 == 2)
  {
    v13 = 0;
    v14 = 0;
    v15 = FIK::defaultAllocator(a1);
    v10 = "GameRigType";
    v11 = 11;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (v9 == 1)
    {
      v15 = FIK::defaultAllocator(a1);
      v10 = "MoCapRigType";
      v11 = 12;
    }

    else
    {
      v15 = FIK::defaultAllocator(a1);
      v10 = "IKRigType";
      v11 = 9;
    }
  }

  IKString::assign(&v13, v10, v11);
  result = JSONS::JSONLineStr(a1, &v13, a3, a4, a5);
  if (v14)
  {
    return (*(*v15 + 3))(v15, v13, 0, 8);
  }

  return result;
}

void **JSONS::JSONLineAxis@<X0>(FIK *a1@<X0>, int *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  if (*a2 > 2)
  {
    if (v9 == 3)
    {
      v13 = 0;
      v14 = 0;
      v15 = FIK::defaultAllocator(a1);
      v10 = "NegativeX";
    }

    else
    {
      v13 = 0;
      v14 = 0;
      if (v9 == 4)
      {
        v15 = FIK::defaultAllocator(a1);
        v10 = "NegativeY";
      }

      else
      {
        v15 = FIK::defaultAllocator(a1);
        v10 = "NegativeZ";
      }
    }

    v11 = 9;
  }

  else
  {
    if (v9)
    {
      v13 = 0;
      v14 = 0;
      if (v9 == 1)
      {
        v15 = FIK::defaultAllocator(a1);
        v10 = "Y";
      }

      else
      {
        v15 = FIK::defaultAllocator(a1);
        v10 = "Z";
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = FIK::defaultAllocator(a1);
      v10 = "X";
    }

    v11 = 1;
  }

  IKString::assign(&v13, v10, v11);
  result = JSONS::JSONLineStr(a1, &v13, a3, a4, a5);
  if (v14)
  {
    return (*(*v15 + 3))(v15, v13, 0, 8);
  }

  return result;
}

void **JSONS::JSONLineAimingMode@<X0>(FIK *a1@<X0>, int *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  if (*a2 <= 1)
  {
    if (!v9)
    {
      v13 = 0;
      v14 = 0;
      v15 = FIK::defaultAllocator(a1);
      v10 = "Disabled";
      v11 = 8;
      goto LABEL_9;
    }

    v13 = 0;
    v14 = 0;
    v15 = FIK::defaultAllocator(a1);
    v10 = "TwoHand";
    goto LABEL_7;
  }

  if (v9 == 2)
  {
    v13 = 0;
    v14 = 0;
    v15 = FIK::defaultAllocator(a1);
    v10 = "OneHand";
LABEL_7:
    v11 = 7;
    goto LABEL_9;
  }

  v13 = 0;
  v14 = 0;
  v15 = FIK::defaultAllocator(a1);
  v10 = "DualWield";
  v11 = 9;
LABEL_9:
  IKString::assign(&v13, v10, v11);
  result = JSONS::JSONLineStr(a1, &v13, a3, a4, a5);
  if (v14)
  {
    return (*(*v15 + 3))(v15, v13, 0, 8);
  }

  return result;
}

void **JSONS::JSONLineBalanceType@<X0>(FIK *a1@<X0>, int *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  if (*a2 == 2)
  {
    v13 = 0;
    v14 = 0;
    v15 = FIK::defaultAllocator(a1);
    v10 = "StaticBalance";
    v11 = 13;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (v9 == 1)
    {
      v15 = FIK::defaultAllocator(a1);
      v10 = "CentreOfMass";
      v11 = 12;
    }

    else
    {
      v15 = FIK::defaultAllocator(a1);
      v10 = "Disabled";
      v11 = 8;
    }
  }

  IKString::assign(&v13, v10, v11);
  result = JSONS::JSONLineStr(a1, &v13, a3, a4, a5);
  if (v14)
  {
    return (*(*v15 + 3))(v15, v13, 0, 8);
  }

  return result;
}

void **JSONS::JSONLineCollisionShapeType@<X0>(FIK *a1@<X0>, int *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  if (*a2 > 1)
  {
    v13 = 0;
    v14 = 0;
    if (v9 == 2)
    {
      v15 = FIK::defaultAllocator(a1);
      v10 = "Capsule";
      v11 = 7;
    }

    else
    {
      v15 = FIK::defaultAllocator(a1);
      v10 = "Box";
      v11 = 3;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (v9)
    {
      v15 = FIK::defaultAllocator(a1);
      v10 = "Sphere";
      v11 = 6;
    }

    else
    {
      v15 = FIK::defaultAllocator(a1);
      v10 = "None";
      v11 = 4;
    }
  }

  IKString::assign(&v13, v10, v11);
  result = JSONS::JSONLineStr(a1, &v13, a3, a4, a5);
  if (v14)
  {
    return (*(*v15 + 3))(v15, v13, 0, 8);
  }

  return result;
}

void *JSONS::JSONObject<FIK::Item>@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(a2, "{");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v16, "index");
  v4 = *a1;
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v13, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v10, ",");
  JSONS::JSONLineInt(&v16, v4, &v13, &v10, &v19);
  if ((v21 & 0x80u) == 0)
  {
    v5 = &v19;
  }

  else
  {
    v5 = v19;
  }

  if ((v21 & 0x80u) == 0)
  {
    v6 = v21;
  }

  else
  {
    v6 = v20;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v5, v6);
  if (v21 < 0 && v19)
  {
    (*(*v22 + 24))(v22, v19, 0, 8);
  }

  if (v11 < 0 && v10)
  {
    (*(*v12 + 24))(v12, v10, 0, 8);
  }

  if (v14 < 0 && v13)
  {
    (*(*v15 + 24))(v15, v13, 0, 8);
  }

  if (v17 < 0 && v16)
  {
    (*(*v18 + 24))(v18, v16, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v16, "name");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v13, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v10, &unk_245A04BAE);
  JSONS::JSONLineStr(&v16, (a1 + 2), &v13, &v10, &v19);
  if ((v21 & 0x80u) == 0)
  {
    v7 = &v19;
  }

  else
  {
    v7 = v19;
  }

  if ((v21 & 0x80u) == 0)
  {
    v8 = v21;
  }

  else
  {
    v8 = v20;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v7, v8);
  if (v21 < 0 && v19)
  {
    (*(*v22 + 24))(v22, v19, 0, 8);
  }

  if (v11 < 0 && v10)
  {
    (*(*v12 + 24))(v12, v10, 0, 8);
  }

  if (v14 < 0 && v13)
  {
    (*(*v15 + 24))(v15, v13, 0, 8);
  }

  if (v17 < 0 && v16)
  {
    (*(*v18 + 24))(v18, v16, 0, 8);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(a2, 125);
}

void *JSONS::JSONObject<FIK::TaskPreprocessing>@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(a2, "{");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, "filter_strength");
  v4 = *a1;
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, ",");
  JSONS::JSONLineReal(&v23, &v20, &v17, 8, &v26);
  if ((v28 & 0x80u) == 0)
  {
    v5 = &v26;
  }

  else
  {
    v5 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v6 = v28;
  }

  else
  {
    v6 = v27;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v5, v6);
  if (v28 < 0 && v26)
  {
    (*(*v29 + 24))(v29, v26, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, "locking_active");
  v7 = *(a1 + 4);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, ",");
  JSONS::JSONLineBool(&v23, v7, &v20, &v17, &v26);
  if ((v28 & 0x80u) == 0)
  {
    v8 = &v26;
  }

  else
  {
    v8 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v9 = v28;
  }

  else
  {
    v9 = v27;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v8, v9);
  if (v28 < 0 && v26)
  {
    (*(*v29 + 24))(v29, v26, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, "unlock_blend_frames");
  v10 = a1[2];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, ",");
  JSONS::JSONLineInt(&v23, v10, &v20, &v17, &v26);
  if ((v28 & 0x80u) == 0)
  {
    v11 = &v26;
  }

  else
  {
    v11 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v12 = v28;
  }

  else
  {
    v12 = v27;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v11, v12);
  if (v28 < 0 && v26)
  {
    (*(*v29 + 24))(v29, v26, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, "unlock_distance");
  v13 = a1[3];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, &unk_245A04BAE);
  JSONS::JSONLineReal(&v23, &v20, &v17, 8, &v26);
  if ((v28 & 0x80u) == 0)
  {
    v14 = &v26;
  }

  else
  {
    v14 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v15 = v28;
  }

  else
  {
    v15 = v27;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v14, v15);
  if (v28 < 0 && v26)
  {
    (*(*v29 + 24))(v29, v26, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(a2, 125);
}

void *JSONS::JSONObject<FIK::SelfPenetrationBone>@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(a2, "self_penetration:{");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "self_penetration_enabled");
  v4 = *a1;
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineBool(&v44, v4, &v41, &v38, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v5 = &v47;
  }

  else
  {
    v5 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v6 = v49;
  }

  else
  {
    v6 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v5, v6);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "collision_shape_type");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineCollisionShapeType(&v44, a1 + 1, &v41, &v38, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v7 = &v47;
  }

  else
  {
    v7 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v8 = v49;
  }

  else
  {
    v8 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v7, v8);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "collision_shape_extents");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineVect(&v44, a1 + 4, &v41, &v38, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v9 = &v47;
  }

  else
  {
    v9 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v10 = v49;
  }

  else
  {
    v10 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v9, v10);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "colliding_segments");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineIKArrayString(&v44, a1 + 4, &v41, &v38, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v11 = &v47;
  }

  else
  {
    v11 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v12 = v49;
  }

  else
  {
    v12 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v11, v12);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "local_offset");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineTransform(&v44, a1 + 16, &v41, &v38, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v13 = &v47;
  }

  else
  {
    v13 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v14 = v49;
  }

  else
  {
    v14 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v13, v14);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "mesh_offset");
  v15 = *(a1 + 24);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineReal(&v44, &v41, &v38, 8, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v16 = &v47;
  }

  else
  {
    v16 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v17 = v49;
  }

  else
  {
    v17 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v16, v17);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "filter_alpha");
  v18 = *(a1 + 25);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineReal(&v44, &v41, &v38, 8, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v19 = &v47;
  }

  else
  {
    v19 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v20 = v49;
  }

  else
  {
    v20 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v19, v20);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "position_weight");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineVect(&v44, a1 + 28, &v41, &v38, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v21 = &v47;
  }

  else
  {
    v21 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v22 = v49;
  }

  else
  {
    v22 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v21, v22);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "rotation_weight");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineVect(&v44, a1 + 32, &v41, &v38, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v23 = &v47;
  }

  else
  {
    v23 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v24 = v49;
  }

  else
  {
    v24 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v23, v24);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "position_depth");
  v25 = *(a1 + 36);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineInt(&v44, v25, &v41, &v38, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v26 = &v47;
  }

  else
  {
    v26 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v27 = v49;
  }

  else
  {
    v27 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v26, v27);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "rotation_depth");
  v28 = *(a1 + 37);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineInt(&v44, v28, &v41, &v38, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v29 = &v47;
  }

  else
  {
    v29 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v30 = v49;
  }

  else
  {
    v30 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v29, v30);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "position_precision");
  v31 = *(a1 + 38);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, ",");
  JSONS::JSONLineReal(&v44, &v41, &v38, 8, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v32 = &v47;
  }

  else
  {
    v32 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v33 = v49;
  }

  else
  {
    v33 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v32, v33);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v44, "rotation_precision");
  v34 = *(a1 + 39);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v41, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v38, &unk_245A04BAE);
  JSONS::JSONLineReal(&v44, &v41, &v38, 8, &v47);
  if ((v49 & 0x80u) == 0)
  {
    v35 = &v47;
  }

  else
  {
    v35 = v47;
  }

  if ((v49 & 0x80u) == 0)
  {
    v36 = v49;
  }

  else
  {
    v36 = v48;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v35, v36);
  if (v49 < 0 && v47)
  {
    (*(*v50 + 24))(v50, v47, 0, 8);
  }

  if (v39 < 0 && v38)
  {
    (*(*v40 + 24))(v40, v38, 0, 8);
  }

  if (v42 < 0 && v41)
  {
    (*(*v43 + 24))(v43, v41, 0, 8);
  }

  if (v45 < 0 && v44)
  {
    (*(*v46 + 24))(v46, v44, 0, 8);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "}", 1uLL);
}

void *JSONS::JSONObject<FIK::ACPBone>@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(a2, "{");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "floor_compensation:{", 0x16uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v40, "is_correcting");
  v4 = a1[1];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v37, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v34, ",");
  JSONS::JSONLineBool(&v40, v4, &v37, &v34, &v43);
  if ((v45 & 0x80u) == 0)
  {
    v5 = &v43;
  }

  else
  {
    v5 = v43;
  }

  if ((v45 & 0x80u) == 0)
  {
    v6 = v45;
  }

  else
  {
    v6 = v44;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v5, v6);
  if (v45 < 0 && v43)
  {
    (*(*v46 + 24))(v46, v43, 0, 8);
  }

  if (v35 < 0 && v34)
  {
    (*(*v36 + 24))(v36, v34, 0, 8);
  }

  if (v38 < 0 && v37)
  {
    (*(*v39 + 24))(v39, v37, 0, 8);
  }

  if (v41 < 0 && v40)
  {
    (*(*v42 + 24))(v42, v40, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v40, "offsets_hips");
  v7 = a1[2];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v37, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v34, ",");
  JSONS::JSONLineBool(&v40, v7, &v37, &v34, &v43);
  if ((v45 & 0x80u) == 0)
  {
    v8 = &v43;
  }

  else
  {
    v8 = v43;
  }

  if ((v45 & 0x80u) == 0)
  {
    v9 = v45;
  }

  else
  {
    v9 = v44;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v8, v9);
  if (v45 < 0 && v43)
  {
    (*(*v46 + 24))(v46, v43, 0, 8);
  }

  if (v35 < 0 && v34)
  {
    (*(*v36 + 24))(v36, v34, 0, 8);
  }

  if (v38 < 0 && v37)
  {
    (*(*v39 + 24))(v39, v37, 0, 8);
  }

  if (v41 < 0 && v40)
  {
    (*(*v42 + 24))(v42, v40, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v40, "mesh_offset");
  v10 = *(a1 + 1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v37, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v34, ",");
  JSONS::JSONLineReal(&v40, &v37, &v34, 8, &v43);
  if ((v45 & 0x80u) == 0)
  {
    v11 = &v43;
  }

  else
  {
    v11 = v43;
  }

  if ((v45 & 0x80u) == 0)
  {
    v12 = v45;
  }

  else
  {
    v12 = v44;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v11, v12);
  if (v45 < 0 && v43)
  {
    (*(*v46 + 24))(v46, v43, 0, 8);
  }

  if (v35 < 0 && v34)
  {
    (*(*v36 + 24))(v36, v34, 0, 8);
  }

  if (v38 < 0 && v37)
  {
    (*(*v39 + 24))(v39, v37, 0, 8);
  }

  if (v41 < 0 && v40)
  {
    (*(*v42 + 24))(v42, v40, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v40, "enabled");
  v13 = *a1;
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v37, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v34, &unk_245A04BAE);
  JSONS::JSONLineBool(&v40, v13, &v37, &v34, &v43);
  if ((v45 & 0x80u) == 0)
  {
    v14 = &v43;
  }

  else
  {
    v14 = v43;
  }

  if ((v45 & 0x80u) == 0)
  {
    v15 = v45;
  }

  else
  {
    v15 = v44;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v14, v15);
  if (v45 < 0 && v43)
  {
    (*(*v46 + 24))(v46, v43, 0, 8);
  }

  if (v35 < 0 && v34)
  {
    (*(*v36 + 24))(v36, v34, 0, 8);
  }

  if (v38 < 0 && v37)
  {
    (*(*v39 + 24))(v39, v37, 0, 8);
  }

  if (v41 < 0 && v40)
  {
    (*(*v42 + 24))(v42, v40, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "},", 2uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "auto_locking:{", 0x10uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v40, "is_locking");
  v16 = a1[9];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v37, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v34, ",");
  JSONS::JSONLineBool(&v40, v16, &v37, &v34, &v43);
  if ((v45 & 0x80u) == 0)
  {
    v17 = &v43;
  }

  else
  {
    v17 = v43;
  }

  if ((v45 & 0x80u) == 0)
  {
    v18 = v45;
  }

  else
  {
    v18 = v44;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v17, v18);
  if (v45 < 0 && v43)
  {
    (*(*v46 + 24))(v46, v43, 0, 8);
  }

  if (v35 < 0 && v34)
  {
    (*(*v36 + 24))(v36, v34, 0, 8);
  }

  if (v38 < 0 && v37)
  {
    (*(*v39 + 24))(v39, v37, 0, 8);
  }

  if (v41 < 0 && v40)
  {
    (*(*v42 + 24))(v42, v40, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v40, "min_velocity_threshold");
  v19 = *(a1 + 3);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v37, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v34, ",");
  JSONS::JSONLineReal(&v40, &v37, &v34, 8, &v43);
  if ((v45 & 0x80u) == 0)
  {
    v20 = &v43;
  }

  else
  {
    v20 = v43;
  }

  if ((v45 & 0x80u) == 0)
  {
    v21 = v45;
  }

  else
  {
    v21 = v44;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v20, v21);
  if (v45 < 0 && v43)
  {
    (*(*v46 + 24))(v46, v43, 0, 8);
  }

  if (v35 < 0 && v34)
  {
    (*(*v36 + 24))(v36, v34, 0, 8);
  }

  if (v38 < 0 && v37)
  {
    (*(*v39 + 24))(v39, v37, 0, 8);
  }

  if (v41 < 0 && v40)
  {
    (*(*v42 + 24))(v42, v40, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v40, "max_velocity_threshold");
  v22 = *(a1 + 4);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v37, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v34, ",");
  JSONS::JSONLineReal(&v40, &v37, &v34, 8, &v43);
  if ((v45 & 0x80u) == 0)
  {
    v23 = &v43;
  }

  else
  {
    v23 = v43;
  }

  if ((v45 & 0x80u) == 0)
  {
    v24 = v45;
  }

  else
  {
    v24 = v44;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v23, v24);
  if (v45 < 0 && v43)
  {
    (*(*v46 + 24))(v46, v43, 0, 8);
  }

  if (v35 < 0 && v34)
  {
    (*(*v36 + 24))(v36, v34, 0, 8);
  }

  if (v38 < 0 && v37)
  {
    (*(*v39 + 24))(v39, v37, 0, 8);
  }

  if (v41 < 0 && v40)
  {
    (*(*v42 + 24))(v42, v40, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v40, "enabled");
  v25 = a1[8];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v37, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v34, ",");
  JSONS::JSONLineBool(&v40, v25, &v37, &v34, &v43);
  if ((v45 & 0x80u) == 0)
  {
    v26 = &v43;
  }

  else
  {
    v26 = v43;
  }

  if ((v45 & 0x80u) == 0)
  {
    v27 = v45;
  }

  else
  {
    v27 = v44;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v26, v27);
  if (v45 < 0 && v43)
  {
    (*(*v46 + 24))(v46, v43, 0, 8);
  }

  if (v35 < 0 && v34)
  {
    (*(*v36 + 24))(v36, v34, 0, 8);
  }

  if (v38 < 0 && v37)
  {
    (*(*v39 + 24))(v39, v37, 0, 8);
  }

  if (v41 < 0 && v40)
  {
    (*(*v42 + 24))(v42, v40, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v40, "blend_frames_count");
  v28 = *(a1 + 5);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v37, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v34, &unk_245A04BAE);
  JSONS::JSONLineInt(&v40, v28, &v37, &v34, &v43);
  if ((v45 & 0x80u) == 0)
  {
    v29 = &v43;
  }

  else
  {
    v29 = v43;
  }

  if ((v45 & 0x80u) == 0)
  {
    v30 = v45;
  }

  else
  {
    v30 = v44;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v29, v30);
  if (v45 < 0 && v43)
  {
    (*(*v46 + 24))(v46, v43, 0, 8);
  }

  if (v35 < 0 && v34)
  {
    (*(*v36 + 24))(v36, v34, 0, 8);
  }

  if (v38 < 0 && v37)
  {
    (*(*v39 + 24))(v39, v37, 0, 8);
  }

  if (v41 < 0 && v40)
  {
    (*(*v42 + 24))(v42, v40, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, "},", 2uLL);
  JSONS::JSONObject<FIK::SelfPenetrationBone>(a1 + 32, &v43);
  if ((v45 & 0x80u) == 0)
  {
    v31 = &v43;
  }

  else
  {
    v31 = v43;
  }

  if ((v45 & 0x80u) == 0)
  {
    v32 = v45;
  }

  else
  {
    v32 = v44;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a2, v31, v32);
  if (v45 < 0 && v43)
  {
    (*(*v46 + 24))(v46, v43, 0, 8);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(a2, 125);
}

void **JSONS::JSONLineIKArray@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  __src = 0uLL;
  v34 = 0x100000000000000;
  v35 = FIK::defaultAllocator(a1);
  LOWORD(__src) = 91;
  if (*a2)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      snprintf(__str, 0x18uLL, "%d", *(a2[2] + 4 * v10));
      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(v30, __str);
      if ((v31 & 0x80u) == 0)
      {
        v12 = v30;
      }

      else
      {
        v12 = v30[0];
      }

      if ((v31 & 0x80u) == 0)
      {
        v13 = v31;
      }

      else
      {
        v13 = v30[1];
      }

      std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v12, v13);
      if (v31 < 0 && v30[0])
      {
        (*(*v32 + 24))(v32, v30[0], 0, 8);
      }

      v14 = *a2;
      if (*a2 - 1 > v10)
      {
        std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, ",", 1uLL);
        v14 = *a2;
      }

      v10 = v11;
    }

    while (v14 > v11++);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "]", 1uLL);
  v29 = a1[3];
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, *a1, a1[1]);
  }

  else
  {
    __dst = *a1;
    v28 = a1[2];
  }

  v26 = v35;
  if (SHIBYTE(v34) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v24, __src, *(&__src + 1));
  }

  else
  {
    v24 = __src;
    v25 = v34;
  }

  v23 = *(a3 + 3);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v21, *a3, *(a3 + 1));
  }

  else
  {
    v21 = *a3;
    v22 = *(a3 + 2);
  }

  v20 = *(a4 + 3);
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v18, *a4, *(a4 + 1));
  }

  else
  {
    v18 = *a4;
    v19 = *(a4 + 2);
  }

  result = JSONS::JSONLine(&__dst, &v24, &v21, &v18, a5);
  if (SHIBYTE(v19) < 0 && v18)
  {
    result = (*(*v20 + 24))(v20, v18, 0, 8);
  }

  if (SHIBYTE(v22) < 0 && v21)
  {
    result = (*(*v23 + 24))(v23, v21, 0, 8);
  }

  if (SHIBYTE(v25) < 0 && v24)
  {
    result = (*(*v26 + 3))(v26, v24, 0, 8);
  }

  if (SHIBYTE(v28) < 0 && __dst)
  {
    result = (*(*v29 + 24))(v29, __dst, 0, 8);
  }

  if (SHIBYTE(v34) < 0 && __src)
  {
    result = (*(*v35 + 3))(v35, __src, 0, 8);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void *JSONS::JSONfromRigBoneBase@<X0>(int *a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, "{", 1uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v29, "name_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v26, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, ",");
  JSONS::JSONLineStr(&v29, (a1 + 2), &v26, &v23, &v32);
  if ((v34 & 0x80u) == 0)
  {
    v6 = &v32;
  }

  else
  {
    v6 = v32;
  }

  if ((v34 & 0x80u) == 0)
  {
    v7 = v34;
  }

  else
  {
    v7 = v33;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v6, v7);
  if (v34 < 0 && v32)
  {
    (*(*v35 + 24))(v35, v32, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (v27 < 0 && v26)
  {
    (*(*v28 + 24))(v28, v26, 0, 8);
  }

  if (v30 < 0 && v29)
  {
    (*(*v31 + 24))(v31, v29, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v29, "parent_name_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v26, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, ",");
  JSONS::JSONLineStr(&v29, (a1 + 8), &v26, &v23, &v32);
  if ((v34 & 0x80u) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32;
  }

  if ((v34 & 0x80u) == 0)
  {
    v9 = v34;
  }

  else
  {
    v9 = v33;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v8, v9);
  if (v34 < 0 && v32)
  {
    (*(*v35 + 24))(v35, v32, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (v27 < 0 && v26)
  {
    (*(*v28 + 24))(v28, v26, 0, 8);
  }

  if (v30 < 0 && v29)
  {
    (*(*v31 + 24))(v31, v29, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v29, "solver_index_");
  v10 = *a1;
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v26, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, ",");
  JSONS::JSONLineInt(&v29, v10, &v26, &v23, &v32);
  if ((v34 & 0x80u) == 0)
  {
    v11 = &v32;
  }

  else
  {
    v11 = v32;
  }

  if ((v34 & 0x80u) == 0)
  {
    v12 = v34;
  }

  else
  {
    v12 = v33;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v11, v12);
  if (v34 < 0 && v32)
  {
    (*(*v35 + 24))(v35, v32, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (v27 < 0 && v26)
  {
    (*(*v28 + 24))(v28, v26, 0, 8);
  }

  if (v30 < 0 && v29)
  {
    (*(*v31 + 24))(v31, v29, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v29, "parent_index_");
  v13 = a1[1];
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v26, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, ",");
  JSONS::JSONLineInt(&v29, v13, &v26, &v23, &v32);
  if ((v34 & 0x80u) == 0)
  {
    v14 = &v32;
  }

  else
  {
    v14 = v32;
  }

  if ((v34 & 0x80u) == 0)
  {
    v15 = v34;
  }

  else
  {
    v15 = v33;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v14, v15);
  if (v34 < 0 && v32)
  {
    (*(*v35 + 24))(v35, v32, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (v27 < 0 && v26)
  {
    (*(*v28 + 24))(v28, v26, 0, 8);
  }

  if (v30 < 0 && v29)
  {
    (*(*v31 + 24))(v31, v29, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v29, "rest_transform_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v26, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, &unk_245A04BAE);
  JSONS::JSONLineTransform(&v29, a1 + 16, &v26, &v23, &v32);
  if ((v34 & 0x80u) == 0)
  {
    v16 = &v32;
  }

  else
  {
    v16 = v32;
  }

  if ((v34 & 0x80u) == 0)
  {
    v17 = v34;
  }

  else
  {
    v17 = v33;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v16, v17);
  if (v34 < 0 && v32)
  {
    (*(*v35 + 24))(v35, v32, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (v27 < 0 && v26)
  {
    (*(*v28 + 24))(v28, v26, 0, 8);
  }

  if (v30 < 0 && v29)
  {
    (*(*v31 + 24))(v31, v29, 0, 8);
  }

  v18 = *(a2 + 23);
  if (v18 < 0)
  {
    v18 = a2[1];
  }

  if (v18)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, ",", 1uLL);
    v19 = *(a2 + 23);
    if (v19 >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    if (v19 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = a2[1];
    }

    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v20, v21);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, "}", 1uLL);
}

void *JSONS::JSONfromRigBone@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  v83 = 0;
  v84 = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "active_");
  v6 = *(a1 + 96);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineBool(&v75, v6, &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v7 = &v78;
  }

  else
  {
    v7 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v8 = v80;
  }

  else
  {
    v8 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v7, v8);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "dof_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineFromArray<BOOL,3ul>(&v75, (a1 + 97), &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v9 = &v78;
  }

  else
  {
    v9 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v10 = v80;
  }

  else
  {
    v10 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v9, v10);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "enable_limits_");
  v11 = *(a1 + 103);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineBool(&v75, v11, &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v12 = &v78;
  }

  else
  {
    v12 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v13 = v80;
  }

  else
  {
    v13 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v12, v13);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "enable_retargeting_");
  v14 = *(a1 + 100);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineBool(&v75, v14, &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v15 = &v78;
  }

  else
  {
    v15 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v16 = v80;
  }

  else
  {
    v16 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v15, v16);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "enable_target_translate_");
  v17 = *(a1 + 102);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineBool(&v75, v17, &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v18 = &v78;
  }

  else
  {
    v18 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v19 = v80;
  }

  else
  {
    v19 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v18, v19);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "enable_stretch_limits_");
  v20 = *(a1 + 101);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineBool(&v75, v20, &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v21 = &v78;
  }

  else
  {
    v21 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v22 = v80;
  }

  else
  {
    v22 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v21, v22);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "enforce_limits_");
  v23 = *(a1 + 104);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineBool(&v75, v23, &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v24 = &v78;
  }

  else
  {
    v24 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v25 = v80;
  }

  else
  {
    v25 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v24, v25);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "limits_bone_axis_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineAxis(&v75, (a1 + 128), &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v26 = &v78;
  }

  else
  {
    v26 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v27 = v80;
  }

  else
  {
    v27 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v26, v27);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "limits_max_degrees_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineVect(&v75, (a1 + 192), &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v28 = &v78;
  }

  else
  {
    v28 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v29 = v80;
  }

  else
  {
    v29 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v28, v29);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "limits_min_degrees_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineVect(&v75, (a1 + 176), &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v30 = &v78;
  }

  else
  {
    v30 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v31 = v80;
  }

  else
  {
    v31 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v30, v31);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "limits_gain_");
  v32 = *(a1 + 124);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineReal(&v75, &v72, &v69, 8, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v33 = &v78;
  }

  else
  {
    v33 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v34 = v80;
  }

  else
  {
    v34 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v33, v34);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "override_mass_");
  v35 = *(a1 + 108);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineBool(&v75, v35, &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v36 = &v78;
  }

  else
  {
    v36 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v37 = v80;
  }

  else
  {
    v37 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v36, v37);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "mass_");
  v38 = *(a1 + 112);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineReal(&v75, &v72, &v69, 8, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v39 = &v78;
  }

  else
  {
    v39 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v40 = v80;
  }

  else
  {
    v40 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v39, v40);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "max_velocity_");
  v41 = *(a1 + 116);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineReal(&v75, &v72, &v69, 8, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v42 = &v78;
  }

  else
  {
    v42 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v43 = v80;
  }

  else
  {
    v43 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v42, v43);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "ResetToRest");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineBool(&v75, 0, &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v44 = &v78;
  }

  else
  {
    v44 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v45 = v80;
  }

  else
  {
    v45 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v44, v45);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "retargeting_gain_");
  v46 = *(a1 + 120);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineReal(&v75, &v72, &v69, 8, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v47 = &v78;
  }

  else
  {
    v47 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v48 = v80;
  }

  else
  {
    v48 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v47, v48);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "retargeting_gain_dof");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineVect(&v75, (a1 + 160), &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v49 = &v78;
  }

  else
  {
    v49 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v50 = v80;
  }

  else
  {
    v50 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v49, v50);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "stretch_error_gain_");
  v51 = *(a1 + 132);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineReal(&v75, &v72, &v69, 8, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v52 = &v78;
  }

  else
  {
    v52 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v53 = v80;
  }

  else
  {
    v53 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v52, v53);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "stretch_max_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineVect(&v75, (a1 + 224), &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v54 = &v78;
  }

  else
  {
    v54 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v55 = v80;
  }

  else
  {
    v55 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v54, v55);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "stretch_min_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineVect(&v75, (a1 + 208), &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v56 = &v78;
  }

  else
  {
    v56 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v57 = v80;
  }

  else
  {
    v57 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v56, v57);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "stretch_stiffness_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineVect(&v75, (a1 + 240), &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v58 = &v78;
  }

  else
  {
    v58 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v59 = v80;
  }

  else
  {
    v59 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v58, v59);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "stretch_on_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, ",");
  JSONS::JSONLineFromArray<BOOL,3ul>(&v75, (a1 + 105), &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v60 = &v78;
  }

  else
  {
    v60 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v61 = v80;
  }

  else
  {
    v61 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v60, v61);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v75, "weight_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v72, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v69, &unk_245A04BAE);
  JSONS::JSONLineVect(&v75, (a1 + 144), &v72, &v69, &v78);
  if ((v80 & 0x80u) == 0)
  {
    v62 = &v78;
  }

  else
  {
    v62 = v78;
  }

  if ((v80 & 0x80u) == 0)
  {
    v63 = v80;
  }

  else
  {
    v63 = v79;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v62, v63);
  if (v80 < 0 && v78)
  {
    (*(*v81 + 24))(v81, v78, 0, 8);
  }

  if (v70 < 0 && v69)
  {
    (*(*v71 + 24))(v71, v69, 0, 8);
  }

  if (v73 < 0 && v72)
  {
    (*(*v74 + 24))(v74, v72, 0, 8);
  }

  if (v76 < 0 && v75)
  {
    (*(*v77 + 24))(v77, v75, 0, 8);
  }

  v64 = *(a2 + 23);
  if (v64 < 0)
  {
    v64 = a2[1];
  }

  if (v64)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, ",", 1uLL);
    v65 = *(a2 + 23);
    if (v65 >= 0)
    {
      v66 = a2;
    }

    else
    {
      v66 = *a2;
    }

    if (v65 >= 0)
    {
      v67 = *(a2 + 23);
    }

    else
    {
      v67 = a2[1];
    }

    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v66, v67);
  }

  result = JSONS::JSONfromRigBoneBase(a1, __src, a3);
  if (SHIBYTE(v83) < 0)
  {
    if (__src[0])
    {
      return (*(*v84 + 3))(v84, __src[0], 0, 8);
    }
  }

  return result;
}

void **JSONS::JSONLineFromArray<BOOL,3ul>@<X0>(unint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  __src = 0uLL;
  v33 = 0x100000000000000;
  v34 = FIK::defaultAllocator(a1);
  LOWORD(__src) = 91;
  v10 = *a2;
  v9 = a2 + 1;
  v11 = v10 == 0;
  if (v10)
  {
    v12 = "true";
  }

  else
  {
    v12 = "false";
  }

  if (v11)
  {
    v13 = 5;
  }

  else
  {
    v13 = 4;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v12, v13);
  v14 = 0;
  do
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, ",", 1uLL);
    v15 = v14 + 1;
    if (v9[v14])
    {
      v16 = "true";
    }

    else
    {
      v16 = "false";
    }

    if (v9[v14])
    {
      v17 = 4;
    }

    else
    {
      v17 = 5;
    }

    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, v16, v17);
    ++v14;
  }

  while (v15 != 2);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&__src, "]", 1uLL);
  v31 = a1[3];
  if (*(a1 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&__dst, *a1, a1[1]);
  }

  else
  {
    __dst = *a1;
    v30 = a1[2];
  }

  v28 = v34;
  if (SHIBYTE(v33) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v26, __src, *(&__src + 1));
  }

  else
  {
    v26 = __src;
    v27 = v33;
  }

  v25 = *(a3 + 3);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v23, *a3, *(a3 + 1));
  }

  else
  {
    v23 = *a3;
    v24 = *(a3 + 2);
  }

  v22 = *(a4 + 3);
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::__init_copy_ctor_external(&v20, *a4, *(a4 + 1));
  }

  else
  {
    v20 = *a4;
    v21 = *(a4 + 2);
  }

  result = JSONS::JSONLine(&__dst, &v26, &v23, &v20, a5);
  if (SHIBYTE(v21) < 0 && v20)
  {
    result = (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (SHIBYTE(v24) < 0 && v23)
  {
    result = (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (SHIBYTE(v27) < 0 && v26)
  {
    result = (*(*v28 + 3))(v28, v26, 0, 8);
  }

  if (SHIBYTE(v30) < 0 && __dst)
  {
    result = (*(*v31 + 24))(v31, __dst, 0, 8);
  }

  if (SHIBYTE(v33) < 0)
  {
    if (__src)
    {
      return (*(*v34 + 3))(v34, __src, 0, 8);
    }
  }

  return result;
}

void *JSONS::JSONfromMoCapBone@<X0>(JSONS *this@<X0>, void *a2@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  v31 = 0;
  v32 = FIK::defaultAllocator(this);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, "acp");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, ",");
  JSONS::JSONLineObject<FIK::ACPBone>(&v23, this + 352, &v20, &v17, 1, &v26);
  if ((v28 & 0x80u) == 0)
  {
    v5 = &v26;
  }

  else
  {
    v5 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v6 = v28;
  }

  else
  {
    v6 = v27;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v5, v6);
  if (v28 < 0 && v26)
  {
    (*(*v29 + 24))(v29, v26, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, "source_rot_offset");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, ",");
  JSONS::JSONLineTransform(&v23, this + 72, &v20, &v17, &v26);
  if ((v28 & 0x80u) == 0)
  {
    v7 = &v26;
  }

  else
  {
    v7 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v8 = v28;
  }

  else
  {
    v8 = v27;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v7, v8);
  if (v28 < 0 && v26)
  {
    (*(*v29 + 24))(v29, v26, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, "source_rot_offset_p");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, ",");
  JSONS::JSONLineTransform(&v23, this + 80, &v20, &v17, &v26);
  if ((v28 & 0x80u) == 0)
  {
    v9 = &v26;
  }

  else
  {
    v9 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v10 = v28;
  }

  else
  {
    v10 = v27;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v9, v10);
  if (v28 < 0 && v26)
  {
    (*(*v29 + 24))(v29, v26, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, "source_index");
  v11 = *(this + 70);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, ",");
  JSONS::JSONLineInt(&v23, v11, &v20, &v17, &v26);
  if ((v28 & 0x80u) == 0)
  {
    v12 = &v26;
  }

  else
  {
    v12 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v13 = v28;
  }

  else
  {
    v13 = v27;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v12, v13);
  if (v28 < 0 && v26)
  {
    (*(*v29 + 24))(v29, v26, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, "source_name");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v17, &unk_245A04BAE);
  JSONS::JSONLineStr(&v23, this + 256, &v20, &v17, &v26);
  if ((v28 & 0x80u) == 0)
  {
    v14 = &v26;
  }

  else
  {
    v14 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v15 = v28;
  }

  else
  {
    v15 = v27;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v14, v15);
  if (v28 < 0 && v26)
  {
    (*(*v29 + 24))(v29, v26, 0, 8);
  }

  if (v18 < 0 && v17)
  {
    (*(*v19 + 24))(v19, v17, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  result = JSONS::JSONfromRigBone(this, __src, a2);
  if (SHIBYTE(v31) < 0)
  {
    if (__src[0])
    {
      return (*(*v32 + 3))(v32, __src[0], 0, 8);
    }
  }

  return result;
}

void *JSONS::JSONLineObject<FIK::ACPBone>@<X0>(void **a1@<X0>, unsigned __int8 *a2@<X1>, const void **a3@<X2>, void **a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  std::operator+[abi:nn200100]<char,std::char_traits<char>,FIK::FIKAllocator<char>>(a3, 34, __src);
  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = a1[1];
  }

  v14 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v12, v13);
  v15 = v14[2];
  v16 = v14[3];
  v36 = *v14;
  v37 = v15;
  v38 = v16;
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  v17 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v36, ":", 2uLL);
  v18 = v17[2];
  v19 = v17[3];
  v39 = *v17;
  v40 = v18;
  v41 = v19;
  v17[1] = 0;
  v17[2] = 0;
  *v17 = 0;
  JSONS::JSONObject<FIK::ACPBone>(a2, v30);
  if ((v31 & 0x80u) == 0)
  {
    v20 = v30;
  }

  else
  {
    v20 = v30[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v21 = v31;
  }

  else
  {
    v21 = v30[1];
  }

  v22 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v39, v20, v21);
  v23 = v22[2];
  v24 = v22[3];
  v42 = *v22;
  v43 = v23;
  v44 = v24;
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  v25 = *(a4 + 23);
  if (v25 >= 0)
  {
    v26 = a4;
  }

  else
  {
    v26 = *a4;
  }

  if (v25 >= 0)
  {
    v27 = *(a4 + 23);
  }

  else
  {
    v27 = a4[1];
  }

  result = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v42, v26, v27);
  v29 = *result;
  a6[2] = result[2];
  *a6 = v29;
  a6[3] = result[3];
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  if (SHIBYTE(v43) < 0 && v42)
  {
    result = (*(*v44 + 24))(v44, v42, 0, 8);
  }

  if (v31 < 0 && v30[0])
  {
    result = (*(*v32 + 24))(v32, v30[0], 0, 8);
  }

  if (SHIBYTE(v40) < 0 && v39)
  {
    result = (*(*v41 + 24))(v41, v39, 0, 8);
  }

  if (SHIBYTE(v37) < 0 && v36)
  {
    result = (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v34 < 0 && __src[0])
  {
    result = (*(*v35 + 24))(v35, __src[0], 0, 8);
  }

  if (a5)
  {
    return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(a6, 10);
  }

  return result;
}

void *JSONS::JSONfromRigTask@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = FIK::defaultAllocator(a1);
  v6 = *(a1 + 52);
  v7 = *(a1 + 53);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, "{", 1uLL);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "name_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineStr(&v55, a1, &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v8 = &v58;
  }

  else
  {
    v8 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v9 = v60;
  }

  else
  {
    v9 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v8, v9);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "has_position_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineBool(&v55, v6, &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v10 = &v58;
  }

  else
  {
    v10 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v11 = v60;
  }

  else
  {
    v11 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v10, v11);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "has_rotation_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineBool(&v55, v7, &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v12 = &v58;
  }

  else
  {
    v12 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v13 = v60;
  }

  else
  {
    v13 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v12, v13);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "target_name_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineStr(&v55, a1 + 24, &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v14 = &v58;
  }

  else
  {
    v14 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v15 = v60;
  }

  else
  {
    v15 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v14, v15);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "target_index_");
  v16 = *(a1 + 48);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineInt(&v55, v16, &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v17 = &v58;
  }

  else
  {
    v17 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v18 = v60;
  }

  else
  {
    v18 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v17, v18);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "position_as_pole_");
  v19 = *(a1 + 54);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineBool(&v55, v19, &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v20 = &v58;
  }

  else
  {
    v20 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v21 = v60;
  }

  else
  {
    v21 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v20, v21);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "position_dof_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineFromArray<BOOL,3ul>(&v55, (a1 + 55), &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v22 = &v58;
  }

  else
  {
    v22 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v23 = v60;
  }

  else
  {
    v23 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v22, v23);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "position_depth_");
  v24 = *(a1 + 64);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineInt(&v55, v24, &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v25 = &v58;
  }

  else
  {
    v25 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v26 = v60;
  }

  else
  {
    v26 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v25, v26);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "position_weight_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineVect(&v55, (a1 + 80), &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v27 = &v58;
  }

  else
  {
    v27 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v28 = v60;
  }

  else
  {
    v28 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v27, v28);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "position_precision_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineVect(&v55, (a1 + 112), &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v29 = &v58;
  }

  else
  {
    v29 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v30 = v60;
  }

  else
  {
    v30 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v29, v30);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "rotation_dof_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineFromArray<BOOL,3ul>(&v55, (a1 + 58), &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v31 = &v58;
  }

  else
  {
    v31 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v32 = v60;
  }

  else
  {
    v32 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v31, v32);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "rotation_depth_");
  v33 = *(a1 + 68);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineInt(&v55, v33, &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v34 = &v58;
  }

  else
  {
    v34 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v35 = v60;
  }

  else
  {
    v35 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v34, v35);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "rotation_weight_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineVect(&v55, (a1 + 96), &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v36 = &v58;
  }

  else
  {
    v36 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v37 = v60;
  }

  else
  {
    v37 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v36, v37);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "rotation_precision_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineVect(&v55, (a1 + 128), &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v38 = &v58;
  }

  else
  {
    v38 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v39 = v60;
  }

  else
  {
    v39 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v38, v39);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "tip_offset_");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, ",");
  JSONS::JSONLineVect(&v55, (a1 + 144), &v52, &v49, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v40 = &v58;
  }

  else
  {
    v40 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v41 = v60;
  }

  else
  {
    v41 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v40, v41);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v55, "task_preprocessing");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v52, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v49, &unk_245A04BAE);
  JSONS::JSONLineObject<FIK::TaskPreprocessing>(&v55, (a1 + 160), &v52, &v49, 1, &v58);
  if ((v60 & 0x80u) == 0)
  {
    v42 = &v58;
  }

  else
  {
    v42 = v58;
  }

  if ((v60 & 0x80u) == 0)
  {
    v43 = v60;
  }

  else
  {
    v43 = v59;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v42, v43);
  if (v60 < 0 && v58)
  {
    (*(*v61 + 24))(v61, v58, 0, 8);
  }

  if (v50 < 0 && v49)
  {
    (*(*v51 + 24))(v51, v49, 0, 8);
  }

  if (v53 < 0 && v52)
  {
    (*(*v54 + 24))(v54, v52, 0, 8);
  }

  if (v56 < 0 && v55)
  {
    (*(*v57 + 24))(v57, v55, 0, 8);
  }

  v44 = *(a2 + 23);
  if (v44 < 0)
  {
    v44 = a2[1];
  }

  if (v44)
  {
    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, ",", 1uLL);
    v45 = *(a2 + 23);
    if (v45 >= 0)
    {
      v46 = a2;
    }

    else
    {
      v46 = *a2;
    }

    if (v45 >= 0)
    {
      v47 = *(a2 + 23);
    }

    else
    {
      v47 = a2[1];
    }

    std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, v46, v47);
  }

  return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(a3, "}", 1uLL);
}

void *JSONS::JSONLineObject<FIK::TaskPreprocessing>@<X0>(void **a1@<X0>, int *a2@<X1>, const void **a3@<X2>, void **a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  std::operator+[abi:nn200100]<char,std::char_traits<char>,FIK::FIKAllocator<char>>(a3, 34, __src);
  v11 = *(a1 + 23);
  if (v11 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (v11 >= 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = a1[1];
  }

  v14 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v12, v13);
  v15 = v14[2];
  v16 = v14[3];
  v36 = *v14;
  v37 = v15;
  v38 = v16;
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  v17 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v36, ":", 2uLL);
  v18 = v17[2];
  v19 = v17[3];
  v39 = *v17;
  v40 = v18;
  v41 = v19;
  v17[1] = 0;
  v17[2] = 0;
  *v17 = 0;
  JSONS::JSONObject<FIK::TaskPreprocessing>(a2, v30);
  if ((v31 & 0x80u) == 0)
  {
    v20 = v30;
  }

  else
  {
    v20 = v30[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v21 = v31;
  }

  else
  {
    v21 = v30[1];
  }

  v22 = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v39, v20, v21);
  v23 = v22[2];
  v24 = v22[3];
  v42 = *v22;
  v43 = v23;
  v44 = v24;
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  v25 = *(a4 + 23);
  if (v25 >= 0)
  {
    v26 = a4;
  }

  else
  {
    v26 = *a4;
  }

  if (v25 >= 0)
  {
    v27 = *(a4 + 23);
  }

  else
  {
    v27 = a4[1];
  }

  result = std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(&v42, v26, v27);
  v29 = *result;
  a6[2] = result[2];
  *a6 = v29;
  a6[3] = result[3];
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  if (SHIBYTE(v43) < 0 && v42)
  {
    result = (*(*v44 + 24))(v44, v42, 0, 8);
  }

  if (v31 < 0 && v30[0])
  {
    result = (*(*v32 + 24))(v32, v30[0], 0, 8);
  }

  if (SHIBYTE(v40) < 0 && v39)
  {
    result = (*(*v41 + 24))(v41, v39, 0, 8);
  }

  if (SHIBYTE(v37) < 0 && v36)
  {
    result = (*(*v38 + 24))(v38, v36, 0, 8);
  }

  if (v34 < 0 && __src[0])
  {
    result = (*(*v35 + 24))(v35, __src[0], 0, 8);
  }

  if (a5)
  {
    return std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::push_back(a6, 10);
  }

  return result;
}

void *JSONS::JSONfromMoCapTask@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  v34 = 0;
  v35 = FIK::defaultAllocator(a1);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v26, "offset");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, ",");
  JSONS::JSONLineTransform(&v26, (a1 + 208), &v23, &v20, &v29);
  if ((v31 & 0x80u) == 0)
  {
    v4 = &v29;
  }

  else
  {
    v4 = v29;
  }

  if ((v31 & 0x80u) == 0)
  {
    v5 = v31;
  }

  else
  {
    v5 = v30;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v4, v5);
  if (v31 < 0 && v29)
  {
    (*(*v32 + 24))(v32, v29, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (v27 < 0 && v26)
  {
    (*(*v28 + 24))(v28, v26, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v26, "scale_offset");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, ",");
  JSONS::JSONLineVect(&v26, (a1 + 240), &v23, &v20, &v29);
  if ((v31 & 0x80u) == 0)
  {
    v6 = &v29;
  }

  else
  {
    v6 = v29;
  }

  if ((v31 & 0x80u) == 0)
  {
    v7 = v31;
  }

  else
  {
    v7 = v30;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v6, v7);
  if (v31 < 0 && v29)
  {
    (*(*v32 + 24))(v32, v29, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (v27 < 0 && v26)
  {
    (*(*v28 + 24))(v28, v26, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v26, "source_name");
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, ",");
  JSONS::JSONLineStr(&v26, a1 + 176, &v23, &v20, &v29);
  if ((v31 & 0x80u) == 0)
  {
    v8 = &v29;
  }

  else
  {
    v8 = v29;
  }

  if ((v31 & 0x80u) == 0)
  {
    v9 = v31;
  }

  else
  {
    v9 = v30;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v8, v9);
  if (v31 < 0 && v29)
  {
    (*(*v32 + 24))(v32, v29, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (v27 < 0 && v26)
  {
    (*(*v28 + 24))(v28, v26, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v26, "source_index");
  v10 = *(a1 + 200);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, ",");
  JSONS::JSONLineInt(&v26, v10, &v23, &v20, &v29);
  if ((v31 & 0x80u) == 0)
  {
    v11 = &v29;
  }

  else
  {
    v11 = v29;
  }

  if ((v31 & 0x80u) == 0)
  {
    v12 = v31;
  }

  else
  {
    v12 = v30;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v11, v12);
  if (v31 < 0 && v29)
  {
    (*(*v32 + 24))(v32, v29, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (v27 < 0 && v26)
  {
    (*(*v28 + 24))(v28, v26, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v26, "is_parent_constraint");
  v13 = *(a1 + 204);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, ",");
  JSONS::JSONLineBool(&v26, v13, &v23, &v20, &v29);
  if ((v31 & 0x80u) == 0)
  {
    v14 = &v29;
  }

  else
  {
    v14 = v29;
  }

  if ((v31 & 0x80u) == 0)
  {
    v15 = v31;
  }

  else
  {
    v15 = v30;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v14, v15);
  if (v31 < 0 && v29)
  {
    (*(*v32 + 24))(v32, v29, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (v27 < 0 && v26)
  {
    (*(*v28 + 24))(v28, v26, 0, 8);
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v26, "is_zero_offset");
  v16 = *(a1 + 205);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v23, &unk_245A04BAE);
  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::basic_string[abi:nn200100]<0>(&v20, &unk_245A04BAE);
  JSONS::JSONLineBool(&v26, v16, &v23, &v20, &v29);
  if ((v31 & 0x80u) == 0)
  {
    v17 = &v29;
  }

  else
  {
    v17 = v29;
  }

  if ((v31 & 0x80u) == 0)
  {
    v18 = v31;
  }

  else
  {
    v18 = v30;
  }

  std::basic_string<char,std::char_traits<char>,FIK::FIKAllocator<char>>::append(__src, v17, v18);
  if (v31 < 0 && v29)
  {
    (*(*v32 + 24))(v32, v29, 0, 8);
  }

  if (v21 < 0 && v20)
  {
    (*(*v22 + 24))(v22, v20, 0, 8);
  }

  if (v24 < 0 && v23)
  {
    (*(*v25 + 24))(v25, v23, 0, 8);
  }

  if (v27 < 0 && v26)
  {
    (*(*v28 + 24))(v28, v26, 0, 8);
  }

  result = JSONS::JSONfromRigTask(a1, __src, a2);
  if (SHIBYTE(v34) < 0)
  {
    if (__src[0])
    {
      return (*(*v35 + 3))(v35, __src[0], 0, 8);
    }
  }

  return result;
}