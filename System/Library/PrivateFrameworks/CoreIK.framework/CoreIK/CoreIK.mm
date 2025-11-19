double FIK::Task::Task(uint64_t a1, uint64_t *a2, int a3, char a4, uint64_t a5)
{
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 264)) = a2[1];
  *(a1 + 8) = -1;
  *(a1 + 24) = a3;
  *(a1 + 29) = a4;
  *(a1 + 30) = 16842752;
  *(a1 + 40) = a5;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1065353216;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 34) = 1;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 48) = _Q0;
  *(a1 + 72) = -3229614080;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 64) = result;
  *(a1 + 28) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t FIK::Task::setDofs(uint64_t this, unsigned int a2, int a3, int a4)
{
  if (*(this + 32) != a2 || *(this + 33) != a3 || *(this + 34) != a4)
  {
    *(this + 32) = a2;
    *(this + 33) = a3;
    *(this + 34) = a4;
    *(*(this + 128) + 381) = 1;
    return (*(*this + 136))(this, a3 | a4 | a2, 0);
  }

  return this;
}

uint64_t FIK::Task::setLength(uint64_t this, int a2)
{
  *(this + 76) = a2;
  *(*(this + 128) + 381) = 1;
  return this;
}

uint64_t FIK::Task::registerTask(uint64_t this, float **a2, float *a3)
{
  *(this + 88) = a2;
  if (*(this + 24) == 3)
  {
    v3 = *(this + 12);
    *(this + 96) = a2[*(this + 8)];
    *(this + 104) = a2[v3];
    *(this + 112) = a2[*(this + 16)];
  }

  *(this + 120) = a3;
  return this;
}

uint64_t FIK::Task::setActive(uint64_t this, int a2, int a3)
{
  if (a3)
  {
    *(this + 34) = a2;
    *(this + 33) = a2;
    *(this + 32) = a2;
  }

  if (*(this + 29) != a2)
  {
    *(this + 29) = a2;
    *(*(this + 128) + 381) = 1;
  }

  return this;
}

float FIK::Task::setPrecision(FIK::Task *this, float a2)
{
  v2 = 2.0;
  if (a2 <= 2.0)
  {
    v2 = a2;
  }

  if (a2 >= 0.001)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0.001;
  }

  *(this + 17) = v3;
  *(this + 18) = v3;
  *(this + 16) = v3;
  *(this + 34) = v3;
  return FIK::Solver::setTaskPrecision(*(this + 16), this);
}

float FIK::Task::setDofPrecision(FIK::Task *this, unsigned int a2, float a3)
{
  v3 = 2.0;
  if (a3 <= 2.0)
  {
    v3 = a3;
  }

  if (a3 >= 0.001)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.001;
  }

  *(this + a2 + 16) = v4;
  return FIK::Solver::setTaskPrecision(*(this + 16), this);
}

uint64_t FIK::Task::fillJacobian(FIK::Task *this)
{
  result = (*(*this + 168))(this);
  if ((result & 1) != 0 || (result = (*(*this + 160))(this), result))
  {
    v3 = *(this + 5);
    if (v3)
    {
      v4 = 0;
      do
      {
        if (v4 >= *(this + 19))
        {
          break;
        }

        if (*(v3 + 814) == 1)
        {
          v5 = *(v3 + 516);
          result = (*(*this + 168))(this);
          v6 = 0;
          if (result)
          {
            v7 = 3;
          }

          else
          {
            v7 = 6;
          }

          do
          {
            if (*(v3 + 808 + v6) == 1)
            {
              v8 = *(this + 6);
              if (v8)
              {
                v9 = *(this + 2);
                v10 = this + 32;
                do
                {
                  v11 = *v10++;
                  if (v11 == 1)
                  {
                    *(*(*(this + 11) + 8 * v9) + 4 * v5) = 1065353216;
                  }

                  ++v9;
                  --v8;
                }

                while (v8);
              }

              ++v5;
            }

            ++v6;
          }

          while (v6 != v7);
        }

        ++v4;
        v3 = *(v3 + 32);
      }

      while (v3);
    }
  }

  return result;
}

uint64_t covariant return thunk toFIK::Task::getDependentTask(FIK::Task *this)
{
  v1 = *(this + *(*this - 248) + 160);
  if (v1)
  {
    return v1 + *(*v1 - 264);
  }

  else
  {
    return 0;
  }
}

uint64_t covariant return thunk toFIK::Task::getDependentOnTask(FIK::Task *this)
{
  v1 = *(this + *(*this - 256) + 152);
  if (v1)
  {
    return v1 + *(*v1 - 264);
  }

  else
  {
    return 0;
  }
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245D77E50](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245D77E60](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

float32x4_t FIK::Segment::computeLookAtTarget@<Q0>(float32x4_t *a1@<X0>, int32x4_t *a2@<X1>, float32x4_t *a3@<X2>, float32x4_t *a4@<X8>)
{
  v4 = a1[28];
  v5 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v6 = vnegq_f32(v4);
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a2, *a2), *a2, 0xCuLL), v6), *a2, v5);
  v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v6), v8, v5);
  v10 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v8, v4, 3);
  v8.i64[0] = 0x4000000040000000;
  v8.i64[1] = 0x4000000040000000;
  v11 = vmlaq_f32(*a2, v8, v10);
  v12 = vmulq_f32(v11, v11);
  v12.f32[0] = sqrtf(v12.f32[2] + vaddv_f32(*v12.f32));
  v13 = 1.0 / v12.f32[0];
  v14 = v12.f32[0] == 0.0;
  v15 = 0.0;
  if (!v14)
  {
    v15 = v13;
  }

  v16 = vmulq_n_f32(v11, v15);
  v17 = vmulq_f32(*a3, v16);
  v18 = v17.f32[2] + vaddv_f32(*v17.f32);
  if (v18 >= 1.0)
  {
    v26 = xmmword_245A01E80;
  }

  else if (v18 >= -0.999999)
  {
    v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a3, *a3), *a3, 0xCuLL), vnegq_f32(v16)), *a3, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
    v27.i32[3] = sqrtf((v18 + 1.0) + (v18 + 1.0));
    v28.i32[1] = 1056964608;
    v28.i64[1] = 0x3F0000003F000000;
    *v28.i32 = 1.0 / v27.f32[3];
    v29 = vzip1q_s32(v28, v28);
    v29.f32[2] = 1.0 / v27.f32[3];
    v30 = vmulq_f32(v27, v29);
    v26 = vuzp2q_s32(vextq_s8(v30, v30, 4uLL), v30);
  }

  else
  {
    v19 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
    v20 = vmlaq_f32(vmulq_f32(v19, xmmword_245A01E90), xmmword_245A01EA0, v16);
    v21 = vmulq_f32(v20, v20);
    v22 = sqrtf(v21.f32[1] + (v21.f32[2] + v21.f32[0]));
    if (fabsf(v22) >= 0.000000001)
    {
      v24 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
      v24.i32[3] = 0;
    }

    else
    {
      v23 = vmlaq_f32(vmulq_f32(v19, xmmword_245A01EB0), xmmword_245A01EC0, v16);
      v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
      v25 = vmulq_f32(v23, v23);
      v22 = sqrtf(v25.f32[1] + (v25.f32[2] + v25.f32[0]));
    }

    v31 = 1.0 / v22;
    if (v22 == 0.0)
    {
      v31 = 0.0;
    }

    v26 = vmulq_n_f32(v24, v31);
    v26.i32[3] = 0;
  }

  v32 = vtrn2q_s32(v4, vtrn1q_s32(v4, v6));
  v33 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v4, v6, 8uLL), *v26.f32, 1), vextq_s8(v32, v32, 8uLL), v26.f32[0]);
  v34 = vrev64q_s32(v4);
  v34.i32[0] = v6.i32[1];
  v34.i32[3] = v6.i32[2];
  result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v4, v26, 3), v34, v26, 2), v33);
  *a4 = result;
  return result;
}

FIK::Segment *FIK::Segment::Segment(FIK::Segment *this, int a2, int a3)
{
  v6 = (this + 536);
  *this = &unk_285898908;
  v7 = FIK::defaultAllocator(this);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v7;
  *(this + 4) = 0;
  v8 = FIK::defaultAllocator(v7);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = v8;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 16) = xmmword_245A01E80;
  v9 = *(this + 16);
  *(this + 22) = 0u;
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 28) = xmmword_245A01E80;
  *(this + 128) = a2;
  *(this + 129) = -1;
  *(this + 532) = a3;
  *(this + 49) = xmmword_245A01E80;
  *(this + 202) = 65793;
  *(this + 406) = 0;
  *(this + 815) = 1;
  *(this + 818) = 0;
  *(this + 823) = 0;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 52) = 0u;
  __asm { FMOV            V3.2S, #1.0 }

  *(this + 69) = _D3;
  __asm { FMOV            V3.4S, #1.0 }

  *v6 = _Q3;
  *(this + 24) = xmmword_245A01E80;
  *(this + 25) = xmmword_245A01ED0;
  v16 = *MEMORY[0x277D860B0];
  v17 = *(MEMORY[0x277D860B0] + 16);
  v18 = *(MEMORY[0x277D860B0] + 32);
  *(this + 8) = v17;
  *(this + 9) = v18;
  *(this + 23) = v9;
  *(this + 10) = v16;
  *(this + 11) = v17;
  *(this + 26) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = v16;
  *(this + 14) = 0u;
  *(this + 15) = xmmword_245A01E80;
  *(this + 12) = v18;
  *(this + 13) = 0u;
  *(this + 140) = 0;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 54) = 0u;
  __asm { FMOV            V2.4S, #-1.0 }

  *(this + 40) = vnegq_f64(_Q2);
  *(this + 41) = xmmword_245A01EE0;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 680) = 0u;
  *(this + 132) = 2;
  *(this + 131) = 2;
  *(this + 36) = xmmword_245A01EC0;
  *(this + 37) = xmmword_245A01E80;
  *(this + 825) = 1;
  *(this + 535) = 1;
  *(this + 814) = 1;
  *(this + 97) = 0;
  *(this + 100) = 0;
  *(this + 408) = 0;
  *(this + 819) = 0;
  *(this + 534) = 1;
  *(this + 533) = a3;
  *(this + 189) = 0;
  *(this + 71) = 0;
  *(this + 38) = xmmword_245A01F00;
  *(this + 39) = xmmword_245A01EF0;
  FIK::Segment::setActiveDofs(this, a3, a3, a3, 0);
  return this;
}

uint64_t FIK::Segment::setActiveDofs(uint64_t this, int a2, int a3, int a4, int a5)
{
  v5 = this + 808;
  if (a5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

  if (a5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  v8 = v6 + 1;
  v9 = v5 + v7;
  if (*(v5 + v6) != a2 || *(v5 + v8) != a3 || *(v9 + 2) != a4)
  {
    *(v5 + v6) = a2;
    *(v5 + v8) = a3;
    *(v9 + 2) = a4;
    v10 = *(this + 776);
    if (v10)
    {
      *v10 = 1;
    }

    v11 = *(this + 800);
    if (v11)
    {
      *(v11 + 382) = 1;
    }

    if ((a5 & 1) == 0)
    {
      if ((*(this + 533) & 1) != 0 || *(this + 72))
      {
        *(this + 532) = a3 | a4 | a2;
      }

      else
      {
        *(this + 532) = 0;
        *(this + 813) = 0;
        *(this + 811) = 0;
      }
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    *(this + 512) = 0;
    do
    {
      if (*(v5 + v13) == 1)
      {
        *(this + 512) = ++v12;
        v14 = 1;
      }

      ++v13;
    }

    while (v13 != 6);
    if (*(this + 814) != (v14 & 1))
    {
      *(this + 814) = v14 & 1;
      if (v10)
      {
        *v10 = 1;
      }

      if (v11)
      {
        *(v11 + 382) = 1;
      }
    }
  }

  return this;
}

void *FIK::Segment::registerSegment(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[100] = a2;
  result[97] = a3;
  result[95] = a4;
  result[96] = a5;
  return result;
}

float32x4_t *FIK::Segment::resetStretch(float32x4_t *this, int a2)
{
  for (i = this[4].i64[1]; i; i = *(i + 80))
  {
    *(i + 96) = *(i + 864);
    *(i + 815) = 1;
  }

  if (this[33].i8[4])
  {
    v3 = this[54];
    this[6] = v3;
    v4 = this[13];
    v5 = v3;
  }

  else
  {
    v4 = this[14];
    this[13] = v4;
    v5 = this[6];
    v3 = this[54];
  }

  v6 = vmulq_f32(v4, v4);
  v7 = vsubq_f32(v5, v3);
  v8 = vmulq_f32(v7, v7);
  this[25].f32[0] = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v8, v8, 8uLL)), vadd_f32(vzip1_s32(*v6.i8, *v8.i8), vzip2_s32(*v6.i8, *v8.i8)))));
  if (a2)
  {
    return FIK::Segment::setActiveDofs(this, 0, 0, 0, 0);
  }

  return this;
}

uint64_t FIK::Segment::setActive(uint64_t this, int a2, int a3)
{
  if (a3)
  {
    *(this + 812) = 257 * a2;
    *(this + 808) = 16843009 * a2;
  }

  if (*(this + 814) != a2)
  {
    *(this + 814) = a2;
    v3 = *(this + 776);
    if (v3)
    {
      *v3 = 1;
    }

    v4 = *(this + 800);
    if (v4)
    {
      *(v4 + 382) = 1;
    }
  }

  return this;
}

__n128 FIK::Segment::resetSegment(FIK::Segment *this)
{
  v1 = *(this + 8);
  *(this + 10) = *(this + 7);
  *(this + 11) = v1;
  v2 = *(this + 9);
  v3 = *(this + 23);
  *(this + 15) = v3;
  v4 = *(this + 14);
  *(this + 12) = v2;
  *(this + 13) = v4;
  result = *(this + 54);
  *(this + 6) = result;
  *(this + 24) = v3;
  *(this + 815) = 1;
  return result;
}

__n128 FIK::Segment::setRestTranslation(__n128 *this, __n128 a2, float a3, float a4)
{
  a2.n128_f32[1] = a3;
  a2.n128_f32[2] = a4;
  this[6] = a2;
  this[54] = a2;
  this[50].n128_u8[15] = 1;
  result.n128_u64[0] = a2.n128_u64[0];
  result.n128_u32[2] = a2.n128_u32[2];
  return result;
}

__n128 FIK::Segment::setRestTranslation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[6] = *a2;
  a1[54] = result;
  a1[50].n128_u8[15] = 1;
  return result;
}

__n128 FIK::Segment::setRestTransform(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = vmulq_f32(v2, v2);
  v4 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  if (vaddv_f32(v4) == 0.0)
  {
    v5 = xmmword_245A01E80;
  }

  else
  {
    v6 = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
    v7 = vrsqrte_f32(v6);
    v8 = vmul_f32(v7, vrsqrts_f32(v6, vmul_f32(v7, v7)));
    v5 = vmulq_n_f32(v2, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]);
  }

  *(a1 + 368) = v5;
  v9 = *(a1 + 368);
  *(a1 + 784) = v9;
  *(a1 + 384) = v9;
  *(a1 + 240) = v9;
  if (*(a1 + 534) == 1)
  {
    *(a1 + 784) = *(a1 + 368);
  }

  _Q0 = *(a1 + 240);
  LODWORD(_S1) = HIDWORD(*(a1 + 240));
  _S3 = _Q0.i32[2];
  __asm { FMLS            S2, S3, V0.S[2] }

  _S5 = _Q0.i32[3];
  __asm { FMLA            S2, S5, V0.S[3] }

  v20 = vmuls_lane_f32(_Q0.f32[2], _Q0, 3);
  v21.f32[0] = vmuls_lane_f32(_S1, _Q0, 3);
  v22 = -(v21.f32[0] - (_Q0.f32[0] * _Q0.f32[2])) - (v21.f32[0] - (_Q0.f32[0] * _Q0.f32[2]));
  *(&_D2 + 1) = (v20 + (_Q0.f32[0] * _S1)) + (v20 + (_Q0.f32[0] * _S1));
  *&v23 = -(v20 - (_Q0.f32[0] * _S1)) - (v20 - (_Q0.f32[0] * _S1));
  __asm
  {
    FMLA            S4, S1, V0.S[1]
    FMLA            S4, S5, V0.S[3]
    FMLA            S7, S3, V0.S[1]
  }

  *(&v23 + 1) = _S4 - (_Q0.f32[0] * _Q0.f32[0]);
  v21.f32[1] = -(_Q0.f32[0] * _Q0.f32[3]);
  v27 = vmla_laneq_f32(v21, *_Q0.f32, _Q0, 2);
  __asm
  {
    FMLA            S5, S3, V0.S[2]
    FMLS            S3, S1, V0.S[1]
  }

  *(a1 + 112) = _D2;
  v30 = a1 + 112;
  *(v30 + 8) = v22;
  *(v30 + 24) = _S7 + _S7;
  *(v30 + 16) = v23;
  *(v30 + 40) = _S3;
  *(v30 + 32) = vadd_f32(v27, v27);
  v31 = *(v30 + 16);
  *(v30 + 48) = *v30;
  *(v30 + 64) = v31;
  *(v30 + 80) = *(v30 + 32);
  v32 = *(v30 + 16 * *(v30 + 416));
  *(v30 + 720) = v32;
  *(v30 + 736) = v32;
  *(v30 + 703) = 1;
  result = *a2;
  *(v30 - 16) = *a2;
  *(v30 + 752) = result;
  *(v30 + 703) = 1;
  return result;
}

__n128 FIK::Segment::setTranslation(__n128 *this, __n128 a2, float a3, float a4)
{
  a2.n128_f32[1] = a3;
  a2.n128_f32[2] = a4;
  this[6] = a2;
  this[50].n128_u8[15] = 1;
  result.n128_u64[0] = a2.n128_u64[0];
  result.n128_u32[2] = a2.n128_u32[2];
  return result;
}

__n128 FIK::Segment::setTranslation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[6] = *a2;
  a1[50].n128_u8[15] = 1;
  return result;
}

uint64_t FIK::Segment::computeReach(uint64_t this, float *a2)
{
  v2 = *a2;
  do
  {
    v2 = *(this + 400) + v2;
    *a2 = v2;
    this = *(this + 32);
  }

  while (this);
  return this;
}

double FIK::Segment::setRestOrientation(FIK::Segment *this, float32x4_t a2, float32_t a3, float a4, float a5)
{
  a2.f32[1] = a3;
  a2.i64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v6 = a2;
  *&result = FIK::Segment::setRestOrientation(this, &v6).n128_u64[0];
  return result;
}

__n128 FIK::Segment::setRestOrientation(uint64_t a1, float32x4_t *a2)
{
  v2 = *a2;
  v3 = vmulq_f32(v2, v2);
  v4 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  if (vaddv_f32(v4) == 0.0)
  {
    v5 = xmmword_245A01E80;
  }

  else
  {
    v6 = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
    v7 = vrsqrte_f32(v6);
    v8 = vmul_f32(v7, vrsqrts_f32(v6, vmul_f32(v7, v7)));
    v5 = vmulq_n_f32(v2, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]);
  }

  *(a1 + 368) = v5;
  v9 = *(a1 + 368);
  *(a1 + 784) = v9;
  *(a1 + 384) = v9;
  *(a1 + 240) = v9;
  if (*(a1 + 534) == 1)
  {
    *(a1 + 784) = *(a1 + 368);
  }

  _Q0 = *(a1 + 240);
  LODWORD(_S1) = HIDWORD(*(a1 + 240));
  _S3 = _Q0.i32[2];
  __asm { FMLS            S2, S3, V0.S[2] }

  _S5 = _Q0.i32[3];
  __asm { FMLA            S2, S5, V0.S[3] }

  v20 = vmuls_lane_f32(_Q0.f32[2], _Q0, 3);
  v21.f32[0] = vmuls_lane_f32(_S1, _Q0, 3);
  *(&_D2 + 1) = (v20 + (_Q0.f32[0] * _S1)) + (v20 + (_Q0.f32[0] * _S1));
  v22 = -(v21.f32[0] - (_Q0.f32[0] * _Q0.f32[2])) - (v21.f32[0] - (_Q0.f32[0] * _Q0.f32[2]));
  *&v23 = -(v20 - (_Q0.f32[0] * _S1)) - (v20 - (_Q0.f32[0] * _S1));
  __asm
  {
    FMLA            S4, S1, V0.S[1]
    FMLA            S4, S5, V0.S[3]
    FMLA            S17, S3, V0.S[1]
  }

  *(&v23 + 1) = _S4 - (_Q0.f32[0] * _Q0.f32[0]);
  v21.f32[1] = -(_Q0.f32[0] * _Q0.f32[3]);
  v27 = vmla_laneq_f32(v21, *_Q0.f32, _Q0, 2);
  __asm
  {
    FMLA            S5, S3, V0.S[2]
    FMLS            S3, S1, V0.S[1]
  }

  *(a1 + 112) = _D2;
  v30 = a1 + 112;
  *(v30 + 8) = v22;
  *(v30 + 24) = _S17 + _S17;
  *(v30 + 16) = v23;
  *(v30 + 40) = _S3;
  *(v30 + 32) = vadd_f32(v27, v27);
  v31 = *(v30 + 16);
  *(v30 + 48) = *v30;
  *(v30 + 64) = v31;
  *(v30 + 80) = *(v30 + 32);
  result = *(v30 + 16 * *(v30 + 416));
  *(v30 + 720) = result;
  *(v30 + 736) = result;
  *(v30 + 703) = 1;
  return result;
}

float32x4_t *FIK::Segment::setOrientation(float32x4_t *this, float32x4_t a2, float32_t a3, float a4, float a5)
{
  a2.f32[1] = a3;
  a2.i64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v5 = vmulq_f32(a2, a2);
  v6 = vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  if (vaddv_f32(v6) == 0.0)
  {
    v7 = xmmword_245A01E80;
  }

  else
  {
    v8 = vadd_f32(v6, vdup_lane_s32(v6, 1)).u32[0];
    v9 = vrsqrte_f32(v8);
    v10 = vmul_f32(v9, vrsqrts_f32(v8, vmul_f32(v9, v9)));
    v7 = vmulq_n_f32(a2, vmul_f32(v10, vrsqrts_f32(v8, vmul_f32(v10, v10))).f32[0]);
  }

  this[15] = v7;
  this[50].i8[15] = 1;
  return this;
}

float32x4_t *FIK::Segment::setOrientation(float32x4_t *result, float32x4_t *a2)
{
  v2 = *a2;
  v3 = vmulq_f32(v2, v2);
  v4 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  if (vaddv_f32(v4) == 0.0)
  {
    v5 = xmmword_245A01E80;
  }

  else
  {
    v6 = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
    v7 = vrsqrte_f32(v6);
    v8 = vmul_f32(v7, vrsqrts_f32(v6, vmul_f32(v7, v7)));
    v5 = vmulq_n_f32(v2, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]);
  }

  result[15] = v5;
  result[50].i8[15] = 1;
  return result;
}

uint64_t FIK::Segment::RayTrace(uint64_t a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, uint64_t a5)
{
  if (**(a1 + 776))
  {
    return 0;
  }

  v5 = *(a1 + 928);
  if (!v5)
  {
    return 0;
  }

  v7 = vaddq_f32(*a2, vmulq_f32(*a3, vdupq_n_s32(0xC2480000)));
  return (*(*v5 + 32))(v5, a1 + 432, &v7, a3, a4, a5);
}

float32x4_t *FIK::Segment::getQ(float32x4_t *this)
{
  v1 = this[15];
  v2 = vmulq_f32(v1, v1);
  v3 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  if (vaddv_f32(v3) == 0.0)
  {
    v4 = xmmword_245A01E80;
  }

  else
  {
    v5 = vadd_f32(v3, vdup_lane_s32(v3, 1)).u32[0];
    v6 = vrsqrte_f32(v5);
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v4 = vmulq_n_f32(v1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
  }

  this[15] = v4;
  this[16] = this[15];
  return this + 16;
}

float32x4_t *FIK::Segment::getDeltaQ(float32x4_t *this)
{
  v1 = vmulq_f32(this[23], xmmword_245A01F10);
  v2 = this[15];
  v3 = vnegq_f32(v2);
  v4 = vtrn2q_s32(v2, vtrn1q_s32(v2, v3));
  v5 = vrev64q_s32(v2);
  v5.i32[0] = v3.i32[1];
  v5.i32[3] = v3.i32[2];
  this[16] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v2, v1, 3), v5, v1, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v2, v3, 8uLL), *v1.f32, 1), vextq_s8(v4, v4, 8uLL), v1.f32[0]));
  return this + 16;
}

float32x4_t *FIK::Segment::getDeltaRotation(float32x4_t *this)
{
  v1 = vmulq_f32(this[23], xmmword_245A01F10);
  v2 = this[15];
  v3 = vnegq_f32(v2);
  v4 = vtrn2q_s32(v2, vtrn1q_s32(v2, v3));
  v5 = vrev64q_s32(v2);
  v5.i32[0] = v3.i32[1];
  v5.i32[3] = v3.i32[2];
  this[16] = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v2, v1, 3), v5, v1, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v2, v3, 8uLL), *v1.f32, 1), vextq_s8(v4, v4, 8uLL), v1.f32[0]));
  return this + 16;
}

float32x4_t *FIK::Segment::getGlobalMat(float32x4_t *this)
{
  _Q0 = this[28];
  LODWORD(_S1) = HIDWORD(this[28].i64[0]);
  _S3 = _Q0.i32[2];
  __asm { FMLS            S2, S3, V0.S[2] }

  _S5 = _Q0.i32[3];
  __asm { FMLA            S2, S5, V0.S[3] }

  v11 = vmuls_lane_f32(_Q0.f32[2], _Q0, 3);
  v12.f32[0] = vmuls_lane_f32(_S1, _Q0, 3);
  v13 = -(v12.f32[0] - (_Q0.f32[0] * _Q0.f32[2])) - (v12.f32[0] - (_Q0.f32[0] * _Q0.f32[2]));
  *(&_D2 + 1) = (v11 + (_Q0.f32[0] * _S1)) + (v11 + (_Q0.f32[0] * _S1));
  *&v14 = -(v11 - (_Q0.f32[0] * _S1)) - (v11 - (_Q0.f32[0] * _S1));
  __asm
  {
    FMLA            S4, S1, V0.S[1]
    FMLA            S4, S5, V0.S[3]
    FMLA            S7, S3, V0.S[1]
  }

  *(&v14 + 1) = _S4 - (_Q0.f32[0] * _Q0.f32[0]);
  v12.f32[1] = -(_Q0.f32[0] * _Q0.f32[3]);
  v18 = vmla_laneq_f32(v12, *_Q0.f32, _Q0, 2);
  __asm { FMLA            S5, S3, V0.S[2] }

  this[17].f32[2] = v13;
  this[17].i64[0] = _D2;
  __asm { FMLS            S3, S1, V0.S[1] }

  this[18].f32[2] = _S7 + _S7;
  this[18].i64[0] = v14;
  this[19].i32[2] = _S3;
  *this[19].f32 = vadd_f32(v18, v18);
  return this + 17;
}

void *FIK::Segment::setParent(void *this, FIK::Segment *a2)
{
  v2 = this[4];
  if (v2 != a2)
  {
    v4 = this;
    if (v2)
    {
      v5 = *(v2 + 9);
      if (v5)
      {
        if (v5 == this)
        {
          *(v2 + 9) = v5[10];
          if (!a2)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        do
        {
          v6 = v5;
          v5 = v5[10];
        }

        while (v5 != this);
        v6[10] = this[10];
      }
    }

    if (!a2)
    {
LABEL_9:
      v4[4] = a2;
      return this;
    }

LABEL_8:
    this = FIK::Segment::addChild(a2, this);
    v4[10] = *(a2 + 9);
    *(a2 + 9) = v4;
    goto LABEL_9;
  }

  return this;
}

void *FIK::Segment::addChild(FIK::Segment *this, FIK::Segment *a2)
{
  v6 = *(this + 5);
  result = (this + 40);
  v5 = v6;
  if (v6)
  {
    v7 = result[2];
    v8 = 8 * v5;
    while (*v7 != a2)
    {
      ++v7;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = FIK::IKArray<FIK::Segment *>::reserve(result, v5 + 1);
    v9 = *(this + 5);
    *(*(this + 7) + 8 * v9) = a2;
    *(this + 5) = v9 + 1;
  }

  return result;
}

float32x4_t *FIK::Segment::updateAugCenter(float32x4_t *result, float32x4_t *a2, float32x4_t *a3)
{
  v5 = result[47].f32[1];
  if (v5 != 0.0)
  {
    *a3 = vaddq_f32(*a3, vmulq_n_f32(vsubq_f32(result[56], *a2), v5));
  }

  for (i = result[4].i64[1]; i; i = *(i + 80))
  {
    result = FIK::Segment::updateAugCenter(i, a2, a3);
  }

  return result;
}

float32x4_t *FIK::Segment::computeAugCenter(float32x4_t *this)
{
  v1 = this;
  v2 = this[35].f32[3];
  if (v2 == 0.0)
  {
    v5 = 0uLL;
  }

  else
  {
    v3 = vmulq_n_f32(vsubq_f32(this[56], this[26]), this[47].f32[1]);
    this[57] = v3;
    v4 = this[4].i64[1];
    if (v4)
    {
      do
      {
        this = FIK::Segment::updateAugCenter(v4, v1 + 26, v1 + 57);
        v4 = v4[5].i64[0];
      }

      while (v4);
      v2 = v1[35].f32[3];
      v3 = v1[57];
    }

    v5 = vmulq_n_f32(v3, 1.0 / v2);
  }

  v1[57] = v5;
  return this;
}

uint64_t FIK::Segment::computeCGWeight(uint64_t this, float a2)
{
  v3 = this;
  v4 = (this + 572);
  *(this + 572) = *(this + 756);
  for (i = *(this + 72); i; i = *(i + 80))
  {
    this = FIK::Segment::updateAugMass(i, v4);
  }

  v6 = 0.0;
  if (a2 > 0.0)
  {
    v6 = *v4 / a2;
  }

  *(v3 + 568) = v6;
  return this;
}

uint64_t FIK::Segment::updateAugMass(uint64_t this, float *a2)
{
  *a2 = *(this + 756) + *a2;
  for (i = *(this + 72); i; i = *(i + 10))
  {
    this = FIK::Segment::updateAugMass(i, a2);
  }

  return this;
}

float32x4_t *FIK::Segment::setMass(FIK::Segment *this, float a2)
{
  *(this + 189) = a2;
  result = *(this + 100);
  if (result)
  {
    result = FIK::Solver::recomputeCGWeights(result);
  }

  *(this + 815) = 1;
  return result;
}

float32x4_t FIK::Segment::translateSegment(float32x4_t *this, float32x4_t a2, float32_t a3, float32_t a4)
{
  a2.f32[1] = a3;
  a2.f32[2] = a4;
  result = vaddq_f32(a2, this[6]);
  this[6] = result;
  this[50].i8[15] = 1;
  return result;
}

float32x4_t FIK::Segment::translateSegment(float32x4_t *a1, float32x4_t *a2)
{
  result = vaddq_f32(*a2, a1[6]);
  a1[6] = result;
  a1[50].i8[15] = 1;
  return result;
}

uint64_t FIK::Segment::scaleSegment(float32x4_t *this, float a2)
{
  this[6] = vmulq_n_f32(this[6], a2);
  v3 = vmulq_n_f32(this[14], a2);
  this[13] = vmulq_n_f32(this[13], a2);
  this[14] = v3;
  v4 = vmulq_n_f32(this[27], a2);
  this[26] = vmulq_n_f32(this[26], a2);
  this[27] = v4;
  this[25].f32[0] = this[25].f32[0] * a2;
  this[55] = vmulq_n_f32(this[55], a2);
  result = this[50].i64[0];
  if (result)
  {
    result = FIK::Solver::recomputeScale(result);
  }

  this[50].i8[15] = 1;
  return result;
}

void FIK::Segment::setLimits(float32x2_t *this, unsigned int a2, float32_t a3, float32_t a4)
{
  if (a2 >= 4)
  {
    v16 = a4;
    FIK::Segment::setLimits();
    a4 = v16;
LABEL_10:
    v11 = &this[a2];
    v11[80].f32[0] = a3;
    v11[80].f32[1] = a4;
    if (a2 == 2)
    {
      if (a3 <= -1.0 && a4 >= 1.0)
      {
        goto LABEL_29;
      }

      this[70].i8[2] = 1;
    }

    else if (a2 == 1)
    {
      if (a3 <= -1.0 && a4 >= 1.0)
      {
        goto LABEL_29;
      }

      this[70].i8[1] = 1;
    }

    else
    {
      if (a2 || a3 <= -1.0 && a4 >= 1.0)
      {
        goto LABEL_29;
      }

      this[70].i8[0] = 1;
    }

    this[102].i8[1] = 1;
    goto LABEL_29;
  }

  if (a2 != 3)
  {
    goto LABEL_10;
  }

  if (a3 > -180.0 || a4 < 180.0)
  {
    v15 = LODWORD(a4);
    v8.f32[0] = atan2f(this[46].f32[this[65].i32[1]], this[47].f32[1]);
    v8.i32[1] = v15;
    v9 = vmul_f32(v8, 0x3C8EFA3540000000);
    v10 = vdup_lane_s32(v9, 0);
    v10.f32[0] = a3 * 0.017453;
    this[83] = vadd_f32(v9, v10);
    this[70].i8[3] = 1;
    this[84].f32[0] = a3;
    this[84].i32[1] = v15;
  }

LABEL_29:
  if (this[70].i8[0] & 1) != 0 || (this[70].i8[1] & 1) != 0 || (this[70].i8[2])
  {
    v14 = 0;
  }

  else
  {
    v14 = this[70].i8[3] ^ 1;
  }

  this[103].i8[1] = v14 & 1;
}

uint64_t FIK::Segment::setAlwaysToRest(uint64_t this, int a2)
{
  *(this + 825) = a2;
  if (a2)
  {
    *(this + 817) = 1;
  }

  return this;
}

uint64_t FIK::Segment::enableLimits(uint64_t this, int a2)
{
  if (!a2)
  {
    v3 = 817;
    goto LABEL_12;
  }

  if (*(this + 560) & 1) != 0 || (*(this + 561) & 1) != 0 || (*(this + 562) & 1) != 0 || (*(this + 563))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 825);
  }

  *(this + 817) = v2 & 1;
  if (*(this + 825) == 1)
  {
    *(this + 384) = *(this + 368);
  }

  if ((*(this + 816) & 1) == 0)
  {
    v3 = 535;
LABEL_12:
    *(this + v3) = 0;
  }

  return this;
}

uint64_t FIK::Segment::enableRetargeting(uint64_t this, char a2, int a3)
{
  *(this + 535) = a2;
  if (a3 && (*(this + 816) & 1) == 0 && (a2 & 1) == 0)
  {
    if (*(this + 560) & 1) != 0 || (*(this + 561) & 1) != 0 || (*(this + 562) & 1) != 0 || (*(this + 563))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(this + 825);
    }

    *(this + 817) = v3 & 1;
    if (*(this + 825) == 1)
    {
      *(this + 384) = *(this + 368);
    }

    *(this + 535) = 0;
  }

  return this;
}

uint64_t FIK::Segment::setWeight(FIK::Segment *this, int a2, float a3)
{
  *(this + a2 + 134) = a3;
  result = *(this + 100);
  if (result)
  {
    return FIK::Solver::weightSegment(result, this);
  }

  return result;
}

uint64_t FIK::Segment::setWeight(FIK::Segment *a1, int a2, float a3)
{
  *(a1 + a2 + 134) = (a3 + -1.0) + 1.0;
  result = *(a1 + 100);
  if (result)
  {
    return FIK::Solver::weightSegment(result, a1);
  }

  return result;
}

{
  *(a1 + a2 + 134) = (a3 + -1.0) + 1.0;
  result = *(a1 + 100);
  if (result)
  {
    return FIK::Solver::weightSegment(result, a1);
  }

  return result;
}

uint64_t FIK::Segment::setStiffness(FIK::Segment *a1, int a2, float a3)
{
  *(a1 + a2 + 134) = 1.0 - a3;
  result = *(a1 + 100);
  if (result)
  {
    return FIK::Solver::weightSegment(result, a1);
  }

  return result;
}

{
  *(a1 + a2 + 134) = 1.0 - a3;
  result = *(a1 + 100);
  if (result)
  {
    return FIK::Solver::weightSegment(result, a1);
  }

  return result;
}

float32x4_t FIK::Segment::setTargetRotation(float32x4_t *a1, float32x4_t *a2)
{
  v2 = *a2;
  v3 = vmulq_f32(v2, v2);
  v4 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  if (vaddv_f32(v4) == 0.0)
  {
    result = xmmword_245A01E80;
  }

  else
  {
    v6 = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
    v7 = vrsqrte_f32(v6);
    v8 = vmul_f32(v7, vrsqrts_f32(v6, vmul_f32(v7, v7)));
    result = vmulq_n_f32(v2, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]);
  }

  a1[49] = result;
  if (a1[33].i8[7] == 1)
  {
    result = a1[49];
    a1[24] = result;
  }

  return result;
}

float32x4_t FIK::Segment::setTargetOrientation(float32x4_t *this, float32x4_t a2, float32_t a3, float a4, float a5)
{
  a2.f32[1] = a3;
  a2.i64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v5 = vmulq_f32(a2, a2);
  v6 = vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  if (vaddv_f32(v6) == 0.0)
  {
    result = xmmword_245A01E80;
  }

  else
  {
    v8 = vadd_f32(v6, vdup_lane_s32(v6, 1)).u32[0];
    v9 = vrsqrte_f32(v8);
    v10 = vmul_f32(v9, vrsqrts_f32(v8, vmul_f32(v9, v9)));
    result = vmulq_n_f32(a2, vmul_f32(v10, vrsqrts_f32(v8, vmul_f32(v10, v10))).f32[0]);
  }

  this[49] = result;
  if (this[33].i8[7] == 1)
  {
    result = this[49];
    this[24] = result;
  }

  return result;
}

void FIK::Segment::getStretchLimitsError(FIK::Segment *this, float *a2, float a3, float *a4)
{
  if (*(this + 4))
  {
    v4 = a4;
    v5 = a2;
    if (!a2)
    {
      v7 = *(this + 129);
      v8 = *(this + 96) + 4 * v7;
      v9 = &a4[v7];
      v10 = 1;
      if (*(this + 808))
      {
        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      v12 = &v9[v11];
      v13 = v8 + v11 * 4;
      if (!*(this + 809))
      {
        v10 = 0;
      }

      v14 = &v12[v10];
      v15 = (v13 + v10 * 4);
      v16 = *(this + 810);
      if (v16 == 1)
      {
        v4 = v14 + 1;
      }

      else
      {
        v4 = v14;
      }

      if (v16 == 1)
      {
        v5 = v15 + 1;
      }

      else
      {
        v5 = v15;
      }
    }

    v17 = *(this + 158) * a3;
    if (*(this + 533))
    {
      v18 = 864;
    }

    else
    {
      v18 = 224;
    }

    if (*(this + 533))
    {
      v19 = 96;
    }

    else
    {
      v19 = 208;
    }

    v20 = this + 811;
    v21 = (this + 708);
    v22 = 3;
    v23 = this;
    do
    {
      v24 = *v20++;
      if (v24 == 1)
      {
        v25 = *(v23 + v18) - *(v23 + v19);
        *v5 = v17 * v25;
        if (*(this + 824) == 1)
        {
          *v4++ = fmaxf(*(v23 + 137) * cosf(*v21 - (*(v21 - 1) * v25)), 0.01);
        }

        ++v5;
      }

      v23 = (v23 + 4);
      v21 += 2;
      --v22;
    }

    while (v22);
  }
}

void FIK::Segment::computeLimitsEnforcement(float32x4_t *this, float a2)
{
  if (this[50].i8[14] == 1)
  {
    v12 = v5;
    v13 = v4;
    v14 = v2;
    v15 = v3;
    if (this[51].i8[1] == 1)
    {
      FIK::Segment::limitsEnforcementCorrection(this, &v11);
      v8 = 0;
      v9 = v11.f32[3] * (this[38].f32[1] * a2);
      v10 = this[32].u32[1];
      do
      {
        if (this[50].i8[v8 + 8] == 1)
        {
          *(this[47].i64[1] + 4 * v10) = *(this[47].i64[1] + 4 * v10) + (v9 * v11.f32[v8]);
          ++v10;
        }

        ++v8;
      }

      while (v8 != 3);
    }
  }
}

void FIK::Segment::limitsEnforcementCorrection(float32x4_t *this@<X0>, float32x4_t *a2@<X8>)
{
  v3 = xmmword_245A01E80;
  *a2 = xmmword_245A01E80;
  if (this[51].i8[1] == 1)
  {
    if ((this[35].i8[0] & 1) != 0 || (this[35].i8[1] & 1) != 0 || this[35].i8[2] == 1)
    {
      v5 = this[33].i32[0];
      v87 = 0uLL;
      v87.i32[v5 % 3] = 1065353216;
      v6 = this[15];
      v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
      v8 = vnegq_f32(v6);
      v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL), v8), v87, v7);
      v10 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
      v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), v8), v10, v7);
      v12 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v10, v6, 3);
      v10.i64[0] = 0x4000000040000000;
      v10.i64[1] = 0x4000000040000000;
      v13 = vmlaq_f32(v87, v10, v12);
      v14 = v13;
      v14.i32[3] = 0;
      v12.i32[0] = this[40].i32[0];
      v12.i32[1] = this[40].i32[2];
      v12.i32[2] = this[41].i32[0];
      v15 = vmaxnmq_f32(v14, v12);
      v15.i32[3] = 0;
      v11.i32[0] = this[40].i32[1];
      v11.i32[1] = this[40].i32[3];
      v11.i32[2] = this[41].i32[1];
      v16 = vminnmq_f32(v15, v11);
      v17 = v16;
      v17.i32[3] = 0;
      v18 = vceqq_f32(v17, v14);
      v18.i32[3] = v18.i32[2];
      if ((vminvq_u32(v18) & 0x80000000) != 0)
      {
        v3 = xmmword_245A01E80;
      }

      else
      {
        v19 = vmulq_f32(v17, v17);
        v19.f32[0] = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
        v20 = 1.0 / v19.f32[0];
        v21 = v19.f32[0] == 0.0;
        v22 = 0.0;
        if (!v21)
        {
          v22 = v20;
        }

        v23 = vmulq_n_f32(v16, v22);
        v24 = vmulq_f32(v6, xmmword_245A01F10);
        v25 = vmulq_f32(v14, v23);
        *v18.i32 = v25.f32[2] + vaddv_f32(*v25.f32);
        v26 = xmmword_245A01E80;
        if (*v18.i32 < 1.0)
        {
          if (*v18.i32 >= -0.999999)
          {
            *v18.i32 = sqrtf((*v18.i32 + 1.0) + (*v18.i32 + 1.0));
            v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), vnegq_f32(v13)), v23, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
            v35 = vdivq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vdupq_lane_s32(*v18.i8, 0));
            v35.f32[3] = *v18.i32 * 0.5;
            v36 = vmulq_f32(v35, v35);
            v37 = vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
            if (vaddv_f32(v37) != 0.0)
            {
              v38 = vadd_f32(v37, vdup_lane_s32(v37, 1)).u32[0];
              v39 = vrsqrte_f32(v38);
              v40 = vmul_f32(v39, vrsqrts_f32(v38, vmul_f32(v39, v39)));
              v26 = vmulq_n_f32(v35, vmul_f32(v40, vrsqrts_f32(v38, vmul_f32(v40, v40))).f32[0]);
            }
          }

          else
          {
            v27 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
            v28 = vmlaq_f32(vmulq_f32(v27, xmmword_245A01E90), xmmword_245A01EA0, v13);
            v29 = vmulq_f32(v28, v28);
            v30 = sqrtf(v29.f32[1] + (v29.f32[2] + v29.f32[0]));
            if (fabsf(v30) >= 0.000000001)
            {
              v32 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
              v32.i32[3] = 0;
            }

            else
            {
              v31 = vmlaq_f32(vmulq_f32(v27, xmmword_245A01EB0), xmmword_245A01EC0, v13);
              v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
              v33 = vmulq_f32(v31, v31);
              v30 = sqrtf(v33.f32[1] + (v33.f32[2] + v33.f32[0]));
            }

            v41 = 1.0 / v30;
            if (v30 == 0.0)
            {
              v41 = 0.0;
            }

            v26 = vmulq_n_f32(v32, v41);
            v26.i32[3] = 0;
          }
        }

        v42 = vnegq_f32(v26);
        v43 = vtrn2q_s32(v26, vtrn1q_s32(v26, v42));
        v44 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v26, v42, 8uLL), *v24.f32, 1), vextq_s8(v43, v43, 8uLL), v24.f32[0]);
        v45 = vrev64q_s32(v26);
        v45.i32[0] = v42.i32[1];
        v45.i32[3] = v42.i32[2];
        v46 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v26, v24, 3), v45, v24, 2), v44);
        v47 = vtrn2q_s32(v6, vtrn1q_s32(v6, v8));
        v48 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v6, v8, 8uLL), *v46.f32, 1), vextq_s8(v47, v47, 8uLL), v46.f32[0]);
        v49 = vrev64q_s32(v6);
        v49.i32[0] = v8.i32[1];
        v49.i32[3] = v8.i32[2];
        v3 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v6, v46, 3), v49, v46, 2), v48);
        *a2 = v3;
      }
    }

    if (this[35].i8[3] == 1)
    {
      v86 = v3;
      v50 = this + 15;
      v51 = this[32].i32[3];
      v52 = this[15].f32[3];
      v53 = atan2f(this[15].f32[v51], v52);
      v87 = 0uLL;
      v87.i32[v51 % 3] = 1065353216;
      v54 = v53 + v53;
      v55 = this[41].f32[2];
      if (v55 >= (v54 + -6.2832))
      {
        v59 = this[41].f32[3];
        if ((v54 + 6.2832) < v59)
        {
          v60 = vmulq_f32(v87, v87);
          v61 = v60.f32[2] + vaddv_f32(*v60.f32);
          if (fabsf(v61) >= 0.000000001)
          {
            v62 = vmulq_n_f32(v87, -0.000000087423 / sqrtf(v61));
            v62.i32[3] = -1.0;
          }

          else
          {
            v62 = xmmword_245A01E80;
          }

          v69 = vnegq_f32(*v50);
          v70 = vtrn2q_s32(*v50, vtrn1q_s32(*v50, v69));
          v71 = vrev64q_s32(*v50);
          v71.i32[0] = v69.i32[1];
          v71.i32[3] = v69.i32[2];
          v72 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(*v50, v62, 3), v71, v62, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(*v50, v69, 8uLL), *v62.f32, 1), vextq_s8(v70, v70, 8uLL), v62.f32[0]));
          *v50 = v72;
          v52 = v72.f32[3];
        }
      }

      else
      {
        v56 = vmulq_f32(v87, v87);
        v57 = v56.f32[2] + vaddv_f32(*v56.f32);
        if (fabsf(v57) >= 0.000000001)
        {
          v58 = vmulq_n_f32(v87, 0.000000087423 / sqrtf(v57));
          v58.i32[3] = -1.0;
        }

        else
        {
          v58 = xmmword_245A01E80;
        }

        v63 = this[15];
        v64 = vnegq_f32(v63);
        v65 = vtrn2q_s32(v63, vtrn1q_s32(v63, v64));
        v66 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v63, v64, 8uLL), *v58.f32, 1), vextq_s8(v65, v65, 8uLL), v58.f32[0]);
        v67 = vrev64q_s32(v63);
        v67.i32[0] = v64.i32[1];
        v67.i32[3] = v64.i32[2];
        v68 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v63, v58, 3), v67, v58, 2), v66);
        this[15] = v68;
        v52 = v68.f32[3];
        v59 = this[41].f32[3];
      }

      v73 = atan2f(v50->f32[v51], v52);
      v74 = v73 + v73;
      v75 = fminf(fmaxf(v74, v55), v59);
      if (v74 != v75)
      {
        v76 = vmulq_f32(v87, v87);
        v77 = v76.f32[2] + vaddv_f32(*v76.f32);
        if (fabsf(v77) >= 0.000000001)
        {
          v79 = sqrtf(v77);
          v85 = v87;
          v80 = __sincosf_stret((v75 - v74) * 0.5);
          v78 = vmulq_n_f32(v85, v80.__sinval / v79);
          v78.i32[3] = LODWORD(v80.__cosval);
        }

        else
        {
          v78 = xmmword_245A01E80;
        }

        v81 = vnegq_f32(v86);
        v82 = vtrn2q_s32(v86, vtrn1q_s32(v86, v81));
        v83 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v86, v81, 8uLL), *v78.f32, 1), vextq_s8(v82, v82, 8uLL), v78.f32[0]);
        v84 = vrev64q_s32(v86);
        v84.i32[0] = v81.i32[1];
        v84.i32[3] = v81.i32[2];
        *a2 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v86, v78, 3), v84, v78, 2), v83);
      }
    }
  }
}

void FIK::Segment::getLimitsError(FIK::Segment *this, float a2, float a3, float *a4)
{
  if (*(this + 817))
  {
    if (*(this + 825) == 1)
    {
      v8 = *(this + 15);
      goto LABEL_41;
    }

    v9 = 0;
    v10 = 0;
    v11 = *(this + 132);
    v76 = 0u;
    v76.i32[v11 % 3] = 1065353216;
    v8 = *(this + 15);
    v12 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
    v13 = vnegq_f32(v8);
    v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL), v13), v76, v12);
    v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
    v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v13), v15, v12);
    v17 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), v15, v8, 3);
    v15.i64[0] = 0x4000000040000000;
    v15.i64[1] = 0x4000000040000000;
    v18 = vmlaq_f32(v76, v15, v17);
    v19 = v18;
    v19.i32[3] = 0;
    *(this + 821) = 0;
    v20 = v8.f32[3];
    v74 = 0u;
    v75 = v19;
    do
    {
      v21 = (&v75 + v9 * 4);
      v22 = v75.f32[v9];
      if (*(this + v10 + 644) < v22)
      {
        v21 = (this + v10 + 644);
      }

      if (v22 < *(this + v10 + 640))
      {
        v21 = (this + v10 + 640);
      }

      v74.i32[v9] = *v21;
      v10 += 8;
      ++v9;
    }

    while (v10 != 24);
    v23 = v74;
    v24 = vceqq_f32(v74, v19);
    v24.i32[3] = v24.i32[2];
    v24.i32[0] = vminvq_u32(v24);
    *(this + 821) = v24.i32[0] >= 0;
    if (v24.i32[0] < 0)
    {
      v72 = v19;
      v73 = v18;
      v36 = *(this + 131);
      v71 = v8;
      if (v36 == 3)
      {
        v37 = vtrn2q_s32(v8, vtrn1q_s32(v8, v13));
        v38 = vrev64q_s32(v8);
        v38.i32[0] = v13.i32[1];
        v38.i32[3] = v13.i32[2];
        v40 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v8, *(this + 592), 3), v38, *(this + 592), 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(*&v8, *&v13, 8uLL), *(this + 592), 1), vextq_s8(v37, v37, 8uLL), COERCE_FLOAT(*(this + 592)))).i64[1];
        v20 = *(&v40 + 1);
        v39 = *&v40;
      }

      else
      {
        v39 = *(this + v36 + 60);
      }

      v41 = atan2f(v39, v20);
      v42 = v41 + v41;
      if (v42 <= *(this + 167) && v42 >= *(this + 166))
      {
        return;
      }

      *(this + 822) = 1;
      if (*(this + 563) != 1)
      {
        return;
      }

      v30 = *(this + 53);
      v43 = vmulq_f32(v72, v30);
      v44 = v43.f32[2] + vaddv_f32(*v43.f32);
      if (v44 < 1.0)
      {
        v8 = v71;
        if (v44 >= -0.999999)
        {
          v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL), vnegq_f32(v30)), v73, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
          v33.i32[3] = sqrtf((v44 + 1.0) + (v44 + 1.0));
          v54.i32[1] = 1056964608;
          v54.i64[1] = 0x3F0000003F000000;
          *v54.i32 = 1.0 / v33.f32[3];
          v35 = vzip1q_s32(v54, v54);
          v35.f32[2] = 1.0 / v33.f32[3];
          goto LABEL_39;
        }

LABEL_30:
        v45 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
        v46 = vmlaq_f32(vmulq_f32(v45, xmmword_245A01E90), xmmword_245A01EA0, v30);
        v47 = vmulq_f32(v46, v46);
        v48 = sqrtf(v47.f32[1] + (v47.f32[2] + v47.f32[0]));
        if (fabsf(v48) >= 0.000000001)
        {
          v50 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
          v50.i32[3] = 0;
        }

        else
        {
          v49 = vmlaq_f32(vmulq_f32(v45, xmmword_245A01EB0), xmmword_245A01EC0, v30);
          v50 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
          v51 = vmulq_f32(v49, v49);
          v48 = sqrtf(v51.f32[1] + (v51.f32[2] + v51.f32[0]));
        }

        v53 = 1.0 / v48;
        if (v48 == 0.0)
        {
          v53 = 0.0;
        }

        v52 = vmulq_n_f32(v50, v53);
        v52.i32[3] = 0;
        goto LABEL_40;
      }

      v52 = xmmword_245A01E80;
      v8 = v71;
    }

    else
    {
      if (*(this + 819) != 1)
      {
        goto LABEL_41;
      }

      v25 = vmulq_f32(v23, v23);
      v25.f32[0] = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
      v26 = 1.0 / v25.f32[0];
      v27 = v25.f32[0] == 0.0;
      v28 = 0.0;
      if (!v27)
      {
        v28 = v26;
      }

      v29 = vmulq_n_f32(v23, v28);
      v30 = *(this + 53);
      v31 = vmulq_f32(v29, v30);
      v32 = v31.f32[2] + vaddv_f32(*v31.f32);
      if (v32 < 1.0)
      {
        if (v32 >= -0.999999)
        {
          v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vnegq_f32(v30)), v29, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
          v33.i32[3] = sqrtf((v32 + 1.0) + (v32 + 1.0));
          v34.i32[1] = 1056964608;
          v34.i64[1] = 0x3F0000003F000000;
          *v34.i32 = 1.0 / v33.f32[3];
          v35 = vzip1q_s32(v34, v34);
          v35.f32[2] = 1.0 / v33.f32[3];
LABEL_39:
          v55 = vmulq_f32(v33, v35);
          v52 = vuzp2q_s32(vextq_s8(v55, v55, 4uLL), v55);
          goto LABEL_40;
        }

        goto LABEL_30;
      }

      v52 = xmmword_245A01E80;
    }

LABEL_40:
    v56 = *(this + 23);
    v57 = vnegq_f32(v56);
    v58 = vtrn2q_s32(v56, vtrn1q_s32(v56, v57));
    v59 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v56, v57, 8uLL), *v52.f32, 1), vextq_s8(v58, v58, 8uLL), v52.f32[0]);
    v60 = vrev64q_s32(v56);
    v60.i32[0] = v57.i32[1];
    v60.i32[3] = v57.i32[2];
    *(this + 24) = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v56, v52, 3), v60, v52, 2), v59);
LABEL_41:
    v61 = vmulq_f32(v8, xmmword_245A01F10);
    v62 = *(this + 24);
    v63 = vnegq_f32(v62);
    v64 = vtrn2q_s32(v62, vtrn1q_s32(v62, v63));
    v65 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v62, v63, 8uLL), *v61.f32, 1), vextq_s8(v64, v64, 8uLL), v61.f32[0]);
    v66 = vrev64q_s32(v62);
    v66.i32[0] = v63.i32[1];
    v66.i32[3] = v63.i32[2];
    v76 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v62, v61, 3), v66, v61, 2), v65);
    v67 = vmuls_lane_f32(*(this + 153), v76, 3) * a2;
    v68 = *(this + 129);
    v69 = &v76;
    for (i = 808; i != 811; ++i)
    {
      if (*(this + i) == 1)
      {
        *(*(this + 96) + 4 * v68) = *(*(this + 96) + 4 * v68) + (v67 * v69->f32[0]);
        ++v68;
      }

      v69 = (v69 + 4);
    }

    if ((*(this + 532) & 1) != 0 && *(this + 818) == 1)
    {
      FIK::Segment::getStretchLimitsError(this, (*(this + 96) + 4 * v68), a3, &a4[v68]);
    }

    return;
  }

  if (*(this + 532) == 1 && *(this + 818) == 1)
  {

    FIK::Segment::getStretchLimitsError(this, 0, a3, a4);
  }
}

float32x4_t *FIK::Segment::getRetargetingError(float32x4_t *this, float a2)
{
  v2 = 0;
  v3 = vmulq_f32(this[15], xmmword_245A01F10);
  v4 = this[49];
  v5 = vnegq_f32(v4);
  v6 = vtrn2q_s32(v4, vtrn1q_s32(v4, v5));
  v7 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v4, v5, 8uLL), *v3.f32, 1), vextq_s8(v6, v6, 8uLL), v3.f32[0]);
  v8 = vrev64q_s32(v4);
  v8.i32[0] = v5.i32[1];
  v8.i32[3] = v5.i32[2];
  v9 = vmuls_lane_f32(this[38].f32[2], vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v4, v3, 3), v8, v3, 2), v7), 3) * a2;
  v10 = this[32].u32[1];
  v11 = &this[50].i8[8];
  do
  {
    if (v11[v2] == 1)
    {
      *(this[48].i64[0] + 4 * v10++) = (v9 * *&v11[4 * v2 - 188]) * *(&v12 + v2);
    }

    ++v2;
  }

  while (v2 != 3);
  return this;
}

void FIK::Segment::integrateAngle(float32x4_t *this, double a2, double a3, double a4)
{
  v5 = 0;
  v50 = *MEMORY[0x277D85DE8];
  v48 = 0uLL;
  v49 = 0;
  v6 = this[32].u32[1];
  do
  {
    if (this[50].i8[v5 + 8] == 1)
    {
      v7 = *(this[47].i64[1] + 4 * v6++);
      *(&v48 + v5) = v7;
    }

    ++v5;
  }

  while (v5 != 6);
  v8.i64[0] = v48;
  LODWORD(a3) = this[38].i32[0];
  v8.i64[1] = DWORD2(v48);
  *&a4 = -*&a3;
  v9 = vdupq_lane_s32(*&a4, 0);
  v9.i32[3] = 0;
  v10 = vmaxnmq_f32(v8, v9);
  v10.i32[3] = 0;
  v11 = vdupq_lane_s32(*&a3, 0);
  v11.i32[3] = 0;
  v12 = vminnmq_f32(v10, v11);
  v13 = vmulq_f32(v12, v12);
  v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  v15 = xmmword_245A01E80;
  v16 = xmmword_245A01E80;
  if (fabsf(v14) >= 0.000000001)
  {
    v17 = sqrtf(v14);
    v47 = v12;
    v18 = __sincosf_stret(v17 * 0.5);
    v15 = xmmword_245A01E80;
    v16 = vmulq_n_f32(v47, v18.__sinval / v17);
    v16.i32[3] = LODWORD(v18.__cosval);
  }

  v19 = this[15];
  v20 = vnegq_f32(v16);
  v21 = vtrn2q_s32(v16, vtrn1q_s32(v16, v20));
  v22 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v16, v20, 8uLL), *v19.f32, 1), vextq_s8(v21, v21, 8uLL), v19.f32[0]);
  v23 = vrev64q_s32(v16);
  v23.i32[0] = v20.i32[1];
  v23.i32[3] = v20.i32[2];
  v24 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, v19, 3), v23, v19, 2), v22);
  v25 = vmulq_f32(v24, v24);
  v26 = vadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
  if (vaddv_f32(v26) != 0.0)
  {
    v27 = vadd_f32(v26, vdup_lane_s32(v26, 1)).u32[0];
    v28 = vrsqrte_f32(v27);
    v29 = vmul_f32(v28, vrsqrts_f32(v27, vmul_f32(v28, v28)));
    v15 = vmulq_n_f32(v24, vmul_f32(v29, vrsqrts_f32(v27, vmul_f32(v29, v29))).f32[0]);
  }

  this[15] = v15;
  this[50].i8[15] = 1;
  if ((this[33].i8[4] & 1) != 0 && fabsf((*(&v48 + 3) + *&v49) + *(&v49 + 1)) >= 0.000000001)
  {
    v30.i32[3] = 0;
    v30.i32[0] = HIDWORD(v48);
    *(v30.i64 + 4) = v49;
    if (this[33].i8[5] == 1)
    {
      v31 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
      v32 = vnegq_f32(v15);
      v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), v32), v30, v31);
      v34 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
      v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v32), v34, v31);
      v36 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v34, v15, 3);
      v34.i64[0] = 0x4000000040000000;
      v34.i64[1] = 0x4000000040000000;
      v37 = vaddq_f32(vmlaq_f32(v30, v34, v36), this[6]);
      this[6] = v37;
      if (this[2].i64[0])
      {
        v38 = vsubq_f32(v37, this[54]);
        v39 = vmulq_f32(v38, v38);
        this[25].f32[1] = sqrtf(v39.f32[2] + vaddv_f32(*v39.f32));
      }
    }

    else
    {
      v40 = this[2].i64[1];
      if (v40)
      {
        v41 = this[3].i64[1];
        v42 = 8 * v40;
        do
        {
          v43 = *v41++;
          v43[6] = vaddq_f32(v30, v43[6]);
          v43[50].i8[15] = 1;
          v42 -= 8;
        }

        while (v42);
      }

      v44 = vaddq_f32(v30, this[13]);
      this[13] = v44;
      v45 = vmulq_f32(v44, v44);
      this[25].f32[0] = sqrtf(v45.f32[2] + vaddv_f32(*v45.f32));
      v45.i64[0] = 0x3F0000003F000000;
      v45.i64[1] = 0x3F0000003F000000;
      this[55] = vaddq_f32(vmulq_f32(v30, v45), this[55]);
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

float32x2_t FIK::Segment::setRotationAxis(float32x2_t *this, unsigned int a2, const float *a3)
{
  if (a2 >= 4)
  {
    FIK::Segment::setRotationAxis();
LABEL_19:
    this[65].i32[1] = a2;
    if (a2 == 2)
    {
      v34 = this + 72;
      v35 = (&this[72] + 4);
      v36 = 0x3F80000000000000;
    }

    else
    {
      if (a2 != 1)
      {
        if (a2)
        {
LABEL_27:
          v31 = this[46].f32[a2];
          v32 = this[47].f32[1];
          goto LABEL_28;
        }

        this[72].i32[0] = 1065353216;
        this[73].i32[0] = 0;
        v34 = (this + 580);
LABEL_26:
        v34->i32[0] = 0;
        goto LABEL_27;
      }

      v34 = this + 72;
      v35 = (&this[72] + 4);
      v36 = 1065353216;
    }

    *v35 = v36;
    goto LABEL_26;
  }

  if (a2 != 3)
  {
    goto LABEL_19;
  }

  for (i = 0; i != 3; ++i)
  {
    this[72].f32[i] = a3[i];
  }

  v6 = *this[72].f32;
  v7 = vmulq_f32(v6, v6);
  v7.f32[0] = sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
  v8 = 1.0 / v7.f32[0];
  v9 = v7.f32[0] == 0.0;
  v10 = 0.0;
  if (!v9)
  {
    v10 = v8;
  }

  v11 = vmulq_n_f32(v6, v10);
  *this[72].f32 = v11;
  this[65].i32[1] = 3;
  v12 = vmulq_f32(v11, xmmword_245A01EC0);
  v13 = v12.f32[2] + vaddv_f32(*v12.f32);
  if (v13 >= 1.0)
  {
    v21 = xmmword_245A01E80;
  }

  else if (v13 >= -0.999999)
  {
    v22 = vmlaq_f32(vmulq_f32(v11, xmmword_245A01E90), xmmword_245A01EC0, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
    v22.i32[3] = sqrtf((v13 + 1.0) + (v13 + 1.0));
    v23.i32[1] = 1056964608;
    v23.i64[1] = 0x3F0000003F000000;
    *v23.i32 = 1.0 / v22.f32[3];
    v24 = vzip1q_s32(v23, v23);
    v24.f32[2] = 1.0 / v22.f32[3];
    v25 = vmulq_f32(v22, v24);
    v21 = vuzp2q_s32(vextq_s8(v25, v25, 4uLL), v25);
  }

  else
  {
    v14 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
    v15 = vmlaq_f32(vmulq_f32(v14, xmmword_245A01E90), xmmword_245A01EA0, v11);
    v16 = vmulq_f32(v15, v15);
    v17 = sqrtf(v16.f32[1] + (v16.f32[2] + v16.f32[0]));
    if (fabsf(v17) >= 0.000000001)
    {
      v19 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
      v19.i32[3] = 0;
    }

    else
    {
      v18 = vmlaq_f32(vmulq_f32(v14, xmmword_245A01EB0), xmmword_245A01EC0, v11);
      v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
      v20 = vmulq_f32(v18, v18);
      v17 = sqrtf(v20.f32[1] + (v20.f32[2] + v20.f32[0]));
    }

    v26 = 1.0 / v17;
    if (v17 == 0.0)
    {
      v26 = 0.0;
    }

    v21 = vmulq_n_f32(v19, v26);
    v21.i32[3] = 0;
  }

  *this[74].f32 = v21;
  v27 = *this[46].f32;
  v28 = vnegq_f32(v27);
  v29 = vtrn2q_s32(v27, vtrn1q_s32(v27, v28));
  v30 = vrev64q_s32(v27);
  v30.i32[0] = v28.i32[1];
  v30.i32[3] = v28.i32[2];
  v33 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v27, v21, 3), v30, v21, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(*&v27, *&v28, 8uLL), *&v21, 1), vextq_s8(v29, v29, 8uLL), *&v21)).i64[1];
  v32 = *(&v33 + 1);
  v31 = *&v33;
LABEL_28:
  v37 = atan2f(v31, v32);
  *v38.i32 = v37 + v37;
  result = vadd_f32(vdup_lane_s32(v38, 0), vmul_f32(this[84], vdup_n_s32(0x3C8EFA35u)));
  this[83] = result;
  return result;
}

__n128 FIK::Segment::setProjectionAxis(float32x4_t *this, unsigned int a2)
{
  if (a2 >= 3)
  {
    FIK::Segment::setProjectionAxis();
  }

  this[33].i32[0] = a2;
  v4 = this[23];
  v5 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v6 = vnegq_f32(v4);
  v7 = vdupq_laneq_s32(v4, 3);
  if (a2 == 1)
  {
    v8 = vmulq_f32(v4, xmmword_245A01F20);
    v9 = xmmword_245A01EA0;
  }

  else if (a2)
  {
    v8 = vmulq_f32(v4, xmmword_245A01E90);
    v9 = xmmword_245A01EC0;
  }

  else
  {
    v8 = vmulq_f32(v4, xmmword_245A01EB0);
    v9 = xmmword_245A01F30;
  }

  v10 = vmlaq_f32(v8, v9, v5);
  v11 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v6), v11, v5);
  v13 = vmlaq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), v11, v7);
  v14.i64[0] = 0x4000000040000000;
  v14.i64[1] = 0x4000000040000000;
  this[53] = vmlaq_f32(v9, v14, v13);
  result = this[23];
  this[24] = result;
  return result;
}

__n128 FIK::Segment::setCenter(__n128 *this, __n128 a2, float a3, float a4)
{
  a2.n128_f32[1] = a3;
  a2.n128_f32[2] = a4;
  this[55] = a2;
  this[50].n128_u8[15] = 1;
  result.n128_u64[0] = a2.n128_u64[0];
  result.n128_u32[2] = a2.n128_u32[2];
  return result;
}

__n128 FIK::Segment::setCenterofMass(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[55] = *a2;
  a1[50].n128_u8[15] = 1;
  return result;
}

__n128 FIK::Segment::setCenterofMass(__n128 *this, __n128 a2, float a3, float a4)
{
  a2.n128_f32[1] = a3;
  a2.n128_f32[2] = a4;
  this[55] = a2;
  this[50].n128_u8[15] = 1;
  result.n128_u64[0] = a2.n128_u64[0];
  result.n128_u32[2] = a2.n128_u32[2];
  return result;
}

__n128 FIK::Segment::setCenter(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[55] = *a2;
  a1[50].n128_u8[15] = 1;
  return result;
}

uint64_t FIK::Segment::getDepthToRoot(FIK::Segment *this)
{
  LODWORD(v1) = 0;
  do
  {
    this = *(this + 4);
    v1 = (v1 + 1);
  }

  while (this);
  return v1;
}

BOOL FIK::EulerLimitsChecker::isWithinLimits(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  FIK::RangeInCircularSpace::expandLeftBy(v12, fabsf(*(a1 + 8 * *(a1 + 36)) * 0.017453));
  FIK::RangeInCircularSpace::expandRightBy(v12, fabsf(*(a1 + 8 * *(a1 + 36) + 4) * 0.017453));
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  FIK::RangeInCircularSpace::expandLeftBy(v10, fabsf(*(a1 + 8 * *(a1 + 32)) * 0.017453));
  FIK::RangeInCircularSpace::expandRightBy(v10, fabsf(*(a1 + 8 * *(a1 + 32) + 4) * 0.017453));
  v4 = *(a2 + 4 * *(a1 + 32));
  v5 = fabsf(v4);
  v6 = fabsf(*(a2 + 4 * *(a1 + 36)));
  if (v5 < 0.00001 && v6 < 0.00001)
  {
    if (*(a2 + 4 * *(a1 + 28)) < 0.0 && !FIK::RangeInCircularSpace::isInside(v12, 3.1416))
    {
      return FIK::RangeInCircularSpace::isInside(v10, 3.1416);
    }

    return 1;
  }

  if (v5 < 0.00001 || (v8 = atan2f(v4, *(a2 + 4 * *(a1 + 28))), result = FIK::RangeInCircularSpace::isInside(v12, v8)))
  {
    if (v6 < 0.00001)
    {
      return 1;
    }

    v9 = atan2f(-*(a2 + 4 * *(a1 + 36)), *(a2 + 4 * *(a1 + 28)));
    result = FIK::RangeInCircularSpace::isInside(v10, v9);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t FIK::RangeInCircularSpace::expandLeftBy(uint64_t this, float a2)
{
  v3 = this;
  if (a2 < 0.0)
  {
    this = FIK::RangeInCircularSpace::expandLeftBy();
  }

  *(v3 + 12) = *(v3 + 12) + a2;
  v4 = *(v3 + 4) - a2;
  if (v4 < -3.1416)
  {
    *(v3 + 16) = 1;
    do
    {
      v4 = v4 + 6.2832;
    }

    while (v4 < -3.1416);
  }

  *(v3 + 4) = v4;
  return this;
}

uint64_t FIK::RangeInCircularSpace::expandRightBy(uint64_t this, float a2)
{
  v3 = this;
  if (a2 < 0.0)
  {
    this = FIK::RangeInCircularSpace::expandRightBy();
  }

  v4 = *(v3 + 8);
  *(v3 + 12) = *(v3 + 12) + a2;
  v5 = v4 + a2;
  if ((v4 + a2) > 3.1416)
  {
    *(v3 + 16) = 1;
    do
    {
      v5 = v5 + -6.2832;
    }

    while (v5 > 3.1416);
  }

  *(v3 + 8) = v5;
  return this;
}

BOOL FIK::RangeInCircularSpace::isInside(FIK::RangeInCircularSpace *this, float a2)
{
  v2 = a2 - *this;
  v3 = vabds_f32(a2, *this) + -3.1416;
  if (v3 > 0.0)
  {
    v4 = -1.0;
    if (v2 > 0.0)
    {
      v4 = 1.0;
    }

    v2 = v2 + ((v4 * -6.2832) * ceilf(v3 / 6.2832));
  }

  if (*(this + 3) >= 6.2832)
  {
    return 1;
  }

  if (*(this + 16) == 1)
  {
    return *(this + 1) <= v2 || v2 <= *(this + 2);
  }

  else
  {
    return *(this + 1) <= v2 && v2 <= *(this + 2);
  }
}

void FIK::Segment::setEulerLimits(FIK::Segment *this, __int128 *a2, int a3)
{
  v156 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  *(this + 737) = *(a2 + 9);
  *(this + 728) = v4;
  *v150 = *a2;
  *&v150[9] = *(a2 + 9);
  v154 = xmmword_245A01FF8;
  v155 = 0x3F800000BF800000;
  v149[0] = (fabsf(*v150) + fabsf(*&v150[4])) > 359.0;
  v149[1] = (fabsf(*&v150[8]) + fabsf(*&v150[12])) > 359.0;
  v149[2] = (fabsf(*&v150[16]) + fabsf(*&v150[20])) > 359.0;
  if (v150[24] == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v150[24] == 1;
  }

  if (v150[24] == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = v150[24] != 2 && v150[24] != 1;
  if (v149[v6] + v149[v7] > 1)
  {
    v54 = v150[24];
  }

  else
  {
    v8 = 0;
    v9 = 240;
    if (a3)
    {
      v9 = 368;
    }

    v10 = *(this + v9);
    v11 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
    v12 = vnegq_f32(v10);
    v13 = xmmword_245A01F30;
    v14 = vmlaq_f32(vmulq_f32(v10, xmmword_245A01EB0), xmmword_245A01F30, v11);
    v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
    v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v12), v15, v11);
    v17 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), v15, v10, 3);
    v15.i64[0] = 0x4000000040000000;
    v15.i64[1] = 0x4000000040000000;
    v18 = vmlaq_f32(xmmword_245A01F30, v15, v17);
    v19 = vmlaq_f32(vmulq_f32(v10, xmmword_245A01F20), xmmword_245A01EA0, v11);
    v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
    v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v12), v20, v11);
    v153[0] = v18;
    v153[1] = vmlaq_f32(xmmword_245A01EA0, v15, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v20, v10, 3));
    v22 = vmlaq_f32(vmulq_f32(v10, xmmword_245A01E90), xmmword_245A01EC0, v11);
    v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
    v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v12), v23, v11);
    v153[2] = vmlaq_f32(xmmword_245A01EC0, v15, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v23, v10, 3));
    do
    {
      v25 = v153[v8];
      v26 = vmulq_f32(v25, xmmword_245A01F30);
      v27 = fabsf(v26.f32[2] + vaddv_f32(*v26.f32));
      v28 = vmulq_f32(v25, xmmword_245A01EA0);
      v29 = vmulq_f32(v25, xmmword_245A01EC0);
      v30 = vabs_f32(vadd_f32(vzip1_s32(*&vextq_s8(v28, v28, 8uLL), *&vextq_s8(v29, v29, 8uLL)), vadd_f32(vzip1_s32(*v28.i8, *v29.i8), vzip2_s32(*v28.i8, *v29.i8))));
      v31 = v30.f32[1];
      if (v30.f32[0] >= v30.f32[1])
      {
        v31 = v30.f32[0];
      }

      if (v27 >= v31)
      {
        v31 = v27;
      }

      if (v31 == v27)
      {
        *(&v153[3] + v8 + 1) = 0;
      }

      else if (v31 == v30.f32[0])
      {
        *(&v153[3] + v8 + 1) = 1;
      }

      else
      {
        *(&v153[3] + v8 + 1) = 2;
      }

      ++v8;
    }

    while (v8 != 3);
    v130 = v7;
    v131 = v6;
    v32 = 0;
    v133 = *(&v153[3] + v5 + 1);
    v134 = v5;
    v33 = 8 * v5;
    v34 = &v148;
    v35 = xmmword_245A01E80;
    do
    {
      if (v33 != v32)
      {
        v36 = *&v150[v32];
        v37 = *&v150[v32 + 4];
        if (v36 != 0.0 && v36 >= 0.0 != v37 < 0.0)
        {
          v148 = 0uLL;
          v34->i32[0] = 1065353216;
          v39 = fabsf(v36);
          v40 = fabsf(v37);
          v41 = v39 < v40;
          v42 = v150 | (4 * (v39 >= v40));
          v43 = *(v42 + v32);
          v44 = v43 + flt_245A01FB8[v43 > 0.0];
          v45 = vmulq_f32(v148, v148);
          v46 = v45.f32[2] + vaddv_f32(*v45.f32);
          v47 = v35;
          if (fabsf(v46) >= 0.000000001)
          {
            v48 = sqrtf(v46);
            v140 = v10;
            v143 = v148;
            v49 = __sincosf_stret((v44 * 0.017453) * 0.5);
            v35 = xmmword_245A01E80;
            v13 = xmmword_245A01F30;
            v10 = v140;
            v47 = vmulq_n_f32(v143, v49.__sinval / v48);
            v47.i32[3] = LODWORD(v49.__cosval);
          }

          v50 = vnegq_f32(v47);
          v51 = vtrn2q_s32(v47, vtrn1q_s32(v47, v50));
          v52 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v47, v50, 8uLL), *v10.f32, 1), vextq_s8(v51, v51, 8uLL), v10.f32[0]);
          v53 = vrev64q_s32(v47);
          v53.i32[0] = v50.i32[1];
          v53.i32[3] = v50.i32[2];
          v10 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v47, v10, 3), v53, v10, 2), v52);
          *((v150 | (4 * v41)) + v32) = *((v150 | (4 * v41)) + v32) - v44;
          *(v42 + v32) = v43 - v44;
        }
      }

      v32 += 8;
      v34 = (v34 + 4);
    }

    while (v32 != 24);
    v5 = v134;
    if (v134)
    {
      if (v134 == 1)
      {
        v13 = xmmword_245A01EA0;
      }

      else
      {
        v13 = xmmword_245A01EC0;
      }
    }

    v55 = 0;
    v56 = 0;
    v57 = vdupq_lane_s32(*v10.f32, 0);
    v58 = vdupq_laneq_s32(v10, 2);
    v59 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
    v60 = xmmword_245A01E80;
    v61.i64[0] = 0x4000000040000000;
    v61.i64[1] = 0x4000000040000000;
    v138 = v13;
    v141 = v10;
    v136 = v58;
    v137 = v57;
    v135 = v59;
    do
    {
      if (v55 != v5)
      {
        v62 = 0;
        v63 = &v151[3 * v56 + 2];
        v56 += 2;
        v64 = 1;
        do
        {
          v65 = v64;
          v148 = 0uLL;
          v148.i32[v55] = 1065353216;
          v66 = vmulq_f32(v148, v148);
          v67 = v66.f32[2] + vaddv_f32(*v66.f32);
          v68 = v60;
          if (fabsf(v67) >= 0.000000001)
          {
            v69 = sqrtf(v67);
            v144 = v148;
            v70 = __sincosf_stret((*&v150[8 * v55 + 4 * v62] * 0.017453) * 0.5);
            v61.i64[0] = 0x4000000040000000;
            v61.i64[1] = 0x4000000040000000;
            v60 = xmmword_245A01E80;
            v59 = v135;
            v58 = v136;
            v57 = v137;
            v13 = v138;
            v10 = v141;
            v68 = vmulq_n_f32(v144, v70.__sinval / v69);
            v68.i32[3] = LODWORD(v70.__cosval);
          }

          v64 = 0;
          v71 = vnegq_f32(v68);
          v72 = vtrn2q_s32(v68, vtrn1q_s32(v68, v71));
          v73 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v68, v71, 8uLL), *v10.f32, 1), vextq_s8(v72, v72, 8uLL), v57);
          v74 = vrev64q_s32(v68);
          v74.i32[0] = v71.i32[1];
          v74.i32[3] = v71.i32[2];
          v75 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v68, v10, 3), v74, v58), v73);
          v76 = vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL);
          v77 = vnegq_f32(v75);
          v78 = vmlaq_f32(vmulq_f32(v59, v77), v13, v76);
          v79 = vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL);
          v80 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v79, v79), v79, 0xCuLL), v77), v79, v76);
          v81 = vmlaq_f32(v13, v61, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL), v79, v75, 3));
          *(v63 - 1) = v81.i64[0];
          *v63 = v81.i32[2];
          v63 += 3;
          v62 = 1;
        }

        while ((v65 & 1) != 0);
        v5 = v134;
      }

      ++v55;
    }

    while (v55 != 3);
    v145 = vmulq_f32(v10, xmmword_245A01F10);
    FIK::EulerLimitsChecker::EulerLimitsChecker(&v148, a2, v5, v130, v131);
    v139 = vextq_s8(vuzp1q_s32(v145, v145), v145, 0xCuLL);
    v142 = vnegq_f32(v145);
    v82 = vmlaq_f32(vmulq_f32(v145, xmmword_245A01F40), xmmword_245A01F50, v139);
    v83 = vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL);
    v84 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL), v142), v83, v139);
    v85 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL), v83, v145, 3);
    v83.i64[0] = 0x4000000040000000;
    v83.i64[1] = 0x4000000040000000;
    v86 = vmlaq_f32(xmmword_245A01F50, v83, v85);
    v86.i32[3] = 0;
    v146 = v86;
    v147[0] = FIK::EulerLimitsChecker::isWithinLimits(&v148, &v146);
    v87 = vmlaq_f32(vmulq_f32(v145, xmmword_245A01EB0), xmmword_245A01F30, v139);
    v88 = vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL);
    v89 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), v142), v88, v139);
    v90 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL), v88, v145, 3);
    v88.i64[0] = 0x4000000040000000;
    v88.i64[1] = 0x4000000040000000;
    v91 = vmlaq_f32(xmmword_245A01F30, v88, v90);
    v91.i32[3] = 0;
    v146 = v91;
    v147[1] = FIK::EulerLimitsChecker::isWithinLimits(&v148, &v146);
    v92 = vmlaq_f32(vmulq_f32(v145, xmmword_245A01F60), xmmword_245A01F70, v139);
    v93 = vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL);
    v94 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL), v142), v93, v139);
    v95 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL), v93, v145, 3);
    v93.i64[0] = 0x4000000040000000;
    v93.i64[1] = 0x4000000040000000;
    v96 = vmlaq_f32(xmmword_245A01F70, v93, v95);
    v96.i32[3] = 0;
    v146 = v96;
    v147[2] = FIK::EulerLimitsChecker::isWithinLimits(&v148, &v146);
    v97 = vmlaq_f32(vmulq_f32(v145, xmmword_245A01F20), xmmword_245A01EA0, v139);
    v98 = vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL);
    v99 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL), v142), v98, v139);
    v100 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL), v98, v145, 3);
    v98.i64[0] = 0x4000000040000000;
    v98.i64[1] = 0x4000000040000000;
    v101 = vmlaq_f32(xmmword_245A01EA0, v98, v100);
    v101.i32[3] = 0;
    v146 = v101;
    v147[3] = FIK::EulerLimitsChecker::isWithinLimits(&v148, &v146);
    v102 = vmlaq_f32(vmulq_f32(v145, xmmword_245A01F80), xmmword_245A01F90, v139);
    v103 = vextq_s8(vuzp1q_s32(v102, v102), v102, 0xCuLL);
    v104 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL), v142), v103, v139);
    v105 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL), v103, v145, 3);
    v103.i64[0] = 0x4000000040000000;
    v103.i64[1] = 0x4000000040000000;
    v106 = vmlaq_f32(xmmword_245A01F90, v103, v105);
    v106.i32[3] = 0;
    v146 = v106;
    v147[4] = FIK::EulerLimitsChecker::isWithinLimits(&v148, &v146);
    v107 = vmlaq_f32(vmulq_f32(v145, xmmword_245A01E90), xmmword_245A01EC0, v139);
    v108 = vextq_s8(vuzp1q_s32(v107, v107), v107, 0xCuLL);
    v109 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL), v142), v108, v139);
    v110 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL), v108, v145, 3);
    v108.i64[0] = 0x4000000040000000;
    v108.i64[1] = 0x4000000040000000;
    v111 = vmlaq_f32(xmmword_245A01EC0, v108, v110);
    v111.i32[3] = 0;
    v146 = v111;
    isWithinLimits = FIK::EulerLimitsChecker::isWithinLimits(&v148, &v146);
    v113 = 0;
    v147[5] = isWithinLimits;
    v114 = &v152;
    v54 = v133;
    do
    {
      v115 = v114;
      for (i = 1; i != 4; ++i)
      {
        v117 = *&v151[3 * i + v113];
        v118 = v115;
        v119 = i;
        while (1)
        {
          v120 = v119 - 1;
          v121 = *&v151[3 * (v119 - 1) + v113];
          if (v121 <= v117)
          {
            break;
          }

          *v118 = v121;
          v118 -= 3;
          --v119;
          if (v120 + 1 <= 1)
          {
            LODWORD(v119) = 0;
            break;
          }
        }

        *&v151[3 * v119 + v113] = v117;
        v115 += 3;
      }

      ++v113;
      ++v114;
    }

    while (v113 != 3);
    v122 = 0;
    v123 = &v154 + 1;
    v124 = v151;
    do
    {
      if ((v147[v122] & 1) == 0)
      {
        *(v123 - 1) = *v124;
      }

      if (v147[v122 + 1] == 1)
      {
        v125 = *v123;
      }

      else
      {
        v125 = v124[9];
        *v123 = v125;
      }

      v126 = *(v123 - 1);
      if (v126 == v125)
      {
        if (v126 == 1.0)
        {
          *(v123 - 1) = 0.9998;
        }

        else if (v126 == -1.0)
        {
          *v123 = -0.9998;
        }

        else if (v126 == 0.0)
        {
          *(v123 - 1) = 0x3C75C28FBC75C28FLL;
        }
      }

      else if (v126 == 0.0)
      {
        *(v123 - 1) = 0.0001;
      }

      else if (v125 == 0.0)
      {
        *v123 = 0.0001;
      }

      v123 += 2;
      v122 += 2;
      ++v124;
    }

    while (v122 != 6);
  }

  v127 = 0;
  v128 = &v154 + 1;
  do
  {
    FIK::Segment::setLimits(this, v127++, *(v128 - 1), *v128);
    v128 += 2;
  }

  while (v127 != 3);
  FIK::Segment::setProjectionAxis(this, v5);
  FIK::Segment::setRotationAxis(this, v54, 0);
  FIK::Segment::setLimits(this, 3u, *&v150[8 * v5], *&v150[8 * v5 + 4]);
  v129 = *MEMORY[0x277D85DE8];
}

float FIK::Segment::getLimits(FIK::Segment *this, int a2)
{
  v2 = (this + 8 * a2);
  result = v2[160];
  v4 = *(v2 + 161);
  return result;
}

uint64_t FIK::Segment::setTranslating(uint64_t this, char a2, int a3)
{
  *(this + 533) = a2;
  if (a3)
  {
    return FIK::Segment::setActiveDofs(this, a2, a2, a2, 0);
  }

  return this;
}

uint64_t FIK::Segment::enableStretchLimits(uint64_t this, char a2)
{
  if (*(this + 32))
  {
    *(this + 818) = a2;
  }

  return this;
}

uint64_t FIK::Segment::getEnableStretchLimits(FIK::Segment *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    LOBYTE(v1) = *(this + 818);
  }

  return v1 & 1;
}

double FIK::Segment::setStretchLimits(FIK::Segment *this, unsigned int a2, float a3, float a4)
{
  v4 = (this + 8 * a2 + 680);
  if (a4 <= a3)
  {
    result = 0.0;
    *v4 = 0;
    *(this + a2 + 88) = 0;
  }

  else
  {
    *v4 = a3;
    *(this + 2 * a2 + 171) = a4;
    v5 = (this + 8 * a2);
    v5[176] = 3.1416 / (a4 - a3);
    *&result = (a3 + a4) * -0.5;
    v5[177] = *&result;
  }

  return result;
}

double FIK::Segment::setLimits(uint64_t a1, int a2, float a3, float a4)
{
  v4 = (a2 - 3 * ((((86 * a2) & 0x8000) != 0) + ((86 * a2) >> 8)));
  v5 = (a1 + 8 * v4 + 680);
  if (a4 <= a3)
  {
    result = 0.0;
    *v5 = 0;
    *(a1 + 8 * v4 + 704) = 0;
  }

  else
  {
    *v5 = a3;
    *(a1 + 8 * (a2 - 3 * ((((86 * a2) & 0x8000) != 0) + ((86 * a2) >> 8))) + 684) = a4;
    v6 = a1 + 8 * v4;
    *(v6 + 704) = 3.1416 / (a4 - a3);
    *&result = (a3 + a4) * -0.5;
    *(v6 + 708) = LODWORD(result);
  }

  return result;
}

__n128 FIK::Segment::setRestStretch(uint64_t a1, float32x4_t *a2)
{
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  *(a1 + 880) = vmulq_f32(*a2, v2);
  v3 = vmulq_f32(*a2, *a2);
  *(a1 + 400) = sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
  result = *a2;
  *(a1 + 208) = *a2;
  *(a1 + 224) = result;
  return result;
}

void *FIK::Segment::getName(FIK::Segment *this)
{
  if (*(this + 2))
  {
    return *(this + 1);
  }

  else
  {
    return &unk_245A04BAE;
  }
}

uint64_t FIK::Segment::enableShadowPosing(uint64_t this, int a2)
{
  v2 = 0.1;
  if (!a2)
  {
    v2 = 1.0;
  }

  *(this + 534) = a2;
  *(this + 616) = v2;
  return this;
}

void FIK::Segment::~Segment(FIK::Segment *this, void *a2)
{
  FIK::Segment::~Segment(this, a2);

  JUMPOUT(0x245D77F60);
}

{
  v3 = *(this + 116);
  if (v3)
  {
    FIK::FIKFree(v3, a2);
  }

  *(this + 5) = 0;
  v4 = *(this + 7);
  if (v4)
  {
    (*(**(this + 8) + 24))(*(this + 8), v4, 0, 8);
  }

  if (*(this + 2))
  {
    (*(**(this + 3) + 24))(*(this + 3), *(this + 1), 0, 8);
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

float32x4_t FIK::Segment::setTargetRotation(float32x4_t *this, float32x4_t a2, float32_t a3, float a4, float a5)
{
  a2.f32[1] = a3;
  a2.i64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v5 = vmulq_f32(a2, a2);
  v6 = vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  if (vaddv_f32(v6) == 0.0)
  {
    result = xmmword_245A01E80;
  }

  else
  {
    v8 = vadd_f32(v6, vdup_lane_s32(v6, 1)).u32[0];
    v9 = vrsqrte_f32(v8);
    v10 = vmul_f32(v9, vrsqrts_f32(v8, vmul_f32(v9, v9)));
    result = vmulq_n_f32(a2, vmul_f32(v10, vrsqrts_f32(v8, vmul_f32(v10, v10))).f32[0]);
  }

  this[49] = result;
  if (this[33].i8[7] == 1)
  {
    result = this[49];
    this[24] = result;
  }

  return result;
}

__n128 FIK::Segment::getLocalTransform@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[6];
  v3 = this[15];
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t FIK::Segment::GetCollisionShape(FIK::Segment *this)
{
  return *(this + 116);
}

{
  return *(this + 116);
}

uint64_t FIK::Segment::setRetargetingGain(uint64_t this, int a2, float a3)
{
  if (a2 <= 2)
  {
    *(this + 4 * a2 + 620) = a3;
  }

  return this;
}

float FIK::Segment::getRetargetingGain(FIK::Segment *this, int a2)
{
  result = -1.0;
  if (a2 <= 2)
  {
    return *(this + a2 + 155);
  }

  return result;
}

float FIK::Segment::getStiffness(uint64_t a1, int a2)
{
  return 1.0 - *(a1 + 4 * a2 + 536);
}

{
  return 1.0 - *(a1 + 4 * a2 + 536);
}

float FIK::Segment::Weight(uint64_t a1, int a2)
{
  return *(a1 + 4 * a2 + 536);
}

{
  return *(a1 + 4 * a2 + 536);
}

void FIK::Segment::setName(FIK::Segment *this, char *__s)
{
  v4 = strlen(__s);

  IKString::assign(this + 1, __s, v4);
}

__n128 FIK::Segment::getRestTransform@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[54];
  v3 = this[23];
  *a2 = result;
  a2[1] = v3;
  return result;
}

__n128 FIK::Segment::Axis@<Q0>(__n128 *this@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  result = this[a2 % 3 + 20];
  *a3 = result;
  return result;
}

__n128 FIK::Segment::Axis@<Q0>(uint64_t a1@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  result = *(a1 + 16 * (a2 - 3 * ((((86 * a2) & 0x8000) != 0) + ((86 * a2) >> 8))) + 320);
  *a3 = result;
  return result;
}

uint64_t FIK::Segment::haveMocap(FIK::Segment *this)
{
  if (*(this + 535))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 534);
  }

  return v1 & 1;
}

uint64_t FIK::Segment::ActiveDof(uint64_t a1, int a2)
{
  return *(a1 + a2 + 808);
}

{
  return *(a1 + a2 + 808);
}

uint64_t FIK::EulerLimitsChecker::EulerLimitsChecker(uint64_t a1, __int128 *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v9 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v9;
  *(a1 + 28) = a3;
  *(a1 + 32) = a4;
  *(a1 + 36) = a5;
  if (a4 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  if (v10 > a5)
  {
    v10 = a5;
  }

  if (v10)
  {
    FIK::EulerLimitsChecker::EulerLimitsChecker();
  }

  if (a3 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  if (v11 < a5)
  {
    v11 = a5;
  }

  if (v11 != 2)
  {
    FIK::EulerLimitsChecker::EulerLimitsChecker();
  }

  if (a3 == a4)
  {
    FIK::EulerLimitsChecker::EulerLimitsChecker();
  }

  if (a3 == a5)
  {
    FIK::EulerLimitsChecker::EulerLimitsChecker();
  }

  if (a4 == a5)
  {
    FIK::EulerLimitsChecker::EulerLimitsChecker();
  }

  return a1;
}

void IKString::assign(void *a1, char *__src, IKString *this)
{
  v4 = a1[1];
  if (this)
  {
    v6 = __src;
    if (v4 >= this)
    {
      memmove(*a1, __src, this);
      if (v4 != this)
      {
        bzero(this + *a1, v4 - this);
      }
    }

    else
    {
      if (v4)
      {
        (*(*a1[2] + 24))(a1[2], *a1, 0, 8);
        *a1 = 0;
        a1[1] = 0;
      }

      StringBuffer = IKString::allocateStringBuffer(this, a1[2], this);
      *a1 = StringBuffer;
      v8 = this;
      do
      {
        v9 = *v6++;
        *StringBuffer++ = v9;
        v8 = (v8 - 1);
      }

      while (v8);
    }

    a1[1] = this;
  }

  else if (v4)
  {
    (*(*a1[2] + 24))(a1[2], *a1, 0, 8);
    *a1 = 0;
    a1[1] = 0;
  }
}

uint64_t IKString::allocateStringBuffer(IKString *this, uint64_t a2, FIK::Allocator *a3)
{
  if (!this)
  {
    return 0;
  }

  v4 = (*(*a2 + 16))(a2, this + 1, 8);
  if (!v4)
  {
    IKString::allocateStringBuffer();
  }

  *(this + v4) = 0;
  return v4;
}

void *FIK::IKArray<FIK::Segment *>::reserve(void *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 8 * v4, 8);
      v6 = v5;
      if (8 * v4)
      {
        bzero(v5, 8 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    memcpy(v6, v2[2], 8 * *v2);
    v7 = v2[2];
    result = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    if (v7)
    {
      v8 = *(*result + 24);

      return v8();
    }
  }

  return result;
}

void FIK::BalanceTask::BalanceTask(FIK::BalanceTask *this, char a2, FIK::Segment *a3, int a4, char a5, char a6, uint64_t a7)
{
  *(this + 33) = off_285899728;
  *this = off_2858999A8;
  FIK::Task::Task(this, off_285899328, 3, a2, a3);
  *v12 = &unk_285898E50;
  *(v12 + 168) = a7;
  *(v12 + 176) = 0;
  *(v12 + 184) = a5;
  *(v12 + 185) = a6;
  *(v12 + 186) = 0;
  *(v12 + 192) = 0u;
  *(v12 + 208) = 0u;
  *(v12 + 224) = 0u;
  *(v12 + 240) = 0u;
  *(v12 + 256) = a3;
  *(v12 + 264) = &unk_2858991A0;
  *(v12 + 4 * a4 + 240) = 1065353216;
  if ((a6 & 1) == 0)
  {
    *(v12 + 24) = 0;
  }

  *(v12 + 29) = a5 | a6;
}

uint64_t FIK::BalanceTask::setWeightForce(float32x4_t *this, float32_t a2)
{
  this[11].f32[1] = a2;
  this[14] = vmulq_n_f32(this[15], -a2);
  return FIK::Solver::recalculateForces(this[8].i64[0], 1);
}

uint64_t FIK::BalanceTask::setGlobalUp(float32x4_t *this, float32x4_t a2, float32_t a3, float32_t a4)
{
  v4.i64[0] = __PAIR64__(LODWORD(a3), a2.u32[0]);
  v4.i64[1] = LODWORD(a4);
  a2.f32[1] = a3;
  a2.f32[2] = a4;
  v5 = vmulq_f32(v4, v4);
  v5.f32[0] = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
  v6 = 1.0 / v5.f32[0];
  v7 = v5.f32[0] == 0.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = vmulq_n_f32(a2, v8);
  this[14] = vmulq_n_f32(v9, -this[11].f32[1]);
  this[15] = v9;
  return FIK::Solver::recalculateForces(this[8].i64[0], 1);
}

uint64_t FIK::BalanceTask::setGlobalUp(float32x4_t *a1, float32x4_t *a2)
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

  v7 = vmulq_n_f32(v2, v6);
  a1[14] = vmulq_n_f32(v7, -a1[11].f32[1]);
  a1[15] = v7;
  return FIK::Solver::recalculateForces(a1[8].i64[0], 1);
}

uint64_t virtual thunk toFIK::BalanceTask::setGlobalUp(FIK::BalanceTask *this, float32x4_t a2, float32_t a3, float32_t a4)
{
  v4.i64[0] = __PAIR64__(LODWORD(a3), a2.u32[0]);
  v4.i64[1] = LODWORD(a4);
  v5 = (this + *(*this - 368));
  a2.f32[1] = a3;
  a2.f32[2] = a4;
  v6 = vmulq_f32(v4, v4);
  v6.f32[0] = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  v7 = 1.0 / v6.f32[0];
  v8 = v6.f32[0] == 0.0;
  v9 = 0.0;
  if (!v8)
  {
    v9 = v7;
  }

  v10 = vmulq_n_f32(a2, v9);
  v5[14] = vmulq_n_f32(v10, -v5[11].f32[1]);
  v5[15] = v10;
  return FIK::Solver::recalculateForces(v5[8].i64[0], 1);
}

uint64_t virtual thunk toFIK::BalanceTask::setGlobalUp(void *a1, float32x4_t *a2)
{
  v2 = (a1 + *(*a1 - 376));
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

  v8 = vmulq_n_f32(v3, v7);
  v2[14] = vmulq_n_f32(v8, -v2[11].f32[1]);
  v2[15] = v8;
  return FIK::Solver::recalculateForces(v2[8].i64[0], 1);
}

uint64_t FIK::BalanceTask::setGlobalUp(FIK::BalanceTask *this, int a2)
{
  *(this + 15) = 0u;
  v2 = (this + 240);
  v2->i32[a2] = 1065353216;
  v2[-1] = vmulq_n_f32(*v2, -v2[-4].f32[1]);
  return FIK::Solver::recalculateForces(v2[-7].i64[0], 1);
}

uint64_t virtual thunk toFIK::BalanceTask::setGlobalUp(FIK::BalanceTask *this, int a2)
{
  v2 = this + *(*this - 360);
  *(v2 + 15) = 0u;
  v2 += 240;
  *&v2[4 * a2] = 1065353216;
  *(v2 - 1) = vmulq_n_f32(*v2, -*(v2 - 15));
  return FIK::Solver::recalculateForces(*(v2 - 14), 1);
}

uint64_t FIK::BalanceTask::enableCGPosition(uint64_t this, int a2)
{
  if (*(this + 185) != a2)
  {
    *(*(this + 128) + 381) = 257;
    if (a2)
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }

    *(this + 24) = v2;
    *(this + 185) = a2;
    *(this + 29) = *(this + 184) | a2;
  }

  return this;
}

void *virtual thunk toFIK::BalanceTask::enableCGPosition(void *this, int a2)
{
  v2 = this + *(*this - 320);
  if (v2[185] != a2)
  {
    *(*(v2 + 16) + 381) = 257;
    if (a2)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }

    *(v2 + 6) = v3;
    v2[185] = a2;
    v2[29] = v2[184] | a2;
  }

  return this;
}

_BYTE *FIK::BalanceTask::enableMoments(_BYTE *this, int a2)
{
  if (this[184] != a2)
  {
    v2 = *(this + 16);
    *(v2 + 381) = 257;
    this[184] = a2;
    if (a2)
    {
      v3 = 1;
    }

    else
    {
      v3 = this[185];
    }

    this[29] = v3 & 1;
    return FIK::BalanceTask::updateTasks(this, (v2 + 112));
  }

  return this;
}

_BYTE *FIK::BalanceTask::updateTasks(_BYTE *result, void *a2)
{
  if (result[184] == 1)
  {
    v2 = result[29];
  }

  else
  {
    v2 = 0;
  }

  if (*a2)
  {
    v3 = a2[2];
    v4 = 8 * *a2;
    do
    {
      result = (*(**v3 + 160))();
      if (result)
      {
        result = FIK::PositionTask::computeTorqueDerivatives(*v3, v2 & 1);
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

__n128 FIK::BalanceTask::setTarget(__n128 *this, const float *a2, __n128 a3)
{
  a3.n128_u64[0] = *a2;
  a3.n128_f32[2] = a2[2];
  this[12] = a3;
  result.n128_u64[0] = a3.n128_u64[0];
  result.n128_u32[2] = a3.n128_u32[2];
  return result;
}

__n128 FIK::BalanceTask::setTarget(__n128 *this, __n128 a2, float a3, float a4)
{
  a2.n128_f32[1] = a3;
  a2.n128_f32[2] = a4;
  this[12] = a2;
  result.n128_u64[0] = a2.n128_u64[0];
  result.n128_u32[2] = a2.n128_u32[2];
  return result;
}

__n128 virtual thunk toFIK::BalanceTask::setTarget(FIK::BalanceTask *this, const float *a2, __n128 a3)
{
  a3.n128_u64[0] = *a2;
  a3.n128_f32[2] = a2[2];
  *(this + *(*this - 136) + 192) = a3;
  result.n128_u64[0] = a3.n128_u64[0];
  result.n128_u32[2] = a3.n128_u32[2];
  return result;
}

__n128 virtual thunk toFIK::BalanceTask::setTarget(FIK::BalanceTask *this, __n128 a2, float a3, float a4)
{
  a2.n128_f32[1] = a3;
  a2.n128_f32[2] = a4;
  *(this + *(*this - 272) + 192) = a2;
  result.n128_u64[0] = a2.n128_u64[0];
  result.n128_u32[2] = a2.n128_u32[2];
  return result;
}

__n128 FIK::BalanceTask::setTarget(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[12] = *a2;
  return result;
}

__n128 virtual thunk toFIK::BalanceTask::setTarget(void *a1, __n128 *a2)
{
  result = *a2;
  *(a1 + *(*a1 - 280) + 192) = *a2;
  return result;
}

_BYTE *FIK::BalanceTask::setActive(_BYTE *this, int a2, int a3)
{
  if (a3)
  {
    this[34] = a2;
    this[33] = a2;
    this[32] = a2;
  }

  if ((this[185] & 1) == 0)
  {
    a2 = (this[184] & a2);
  }

  if (this[29] != a2)
  {
    this[29] = a2;
    v3 = *(this + 16);
    *(v3 + 381) = 1;
    return FIK::BalanceTask::updateTasks(this, (v3 + 112));
  }

  return this;
}

float32x4_t FIK::BalanceTask::setFKTarget(FIK::BalanceTask *this)
{
  Pos = FIK::Segment::getPos(*(this + 32));
  v3.i64[0] = *Pos;
  v3.i32[2] = *(Pos + 8);
  result = vaddq_f32(*(this + 13), vaddq_f32(v3, *FIK::Segment::getAugCenter(*(this + 32))));
  *(this + 12) = result;
  return result;
}

uint64_t FIK::BalanceTask::computeDeltaX(uint64_t this, int a2)
{
  if (*(this + 185) == 1)
  {
    v2 = *(this + 120);
    v3 = *(this + 8);
    *(v2 + 4 * (v3 + 2)) = 0;
    *(v2 + 4 * (v3 + 1)) = 0;
    *(v2 + 4 * v3) = 0;
  }

  if (*(this + 184) == 1)
  {
    v4 = *(this + 120);
    *(v4 + 4 * (a2 - 1)) = 0;
    *(v4 + 4 * (a2 - 2)) = 0;
    *(v4 + 4 * (a2 - 3)) = 0;
  }

  return this;
}

void FIK::BalanceTask::getTorque(FIK::BalanceTask *this@<X0>, float32x4_t *a2@<X8>)
{
  if (*(this + 32))
  {
    if ((FIK::Solver::doneFK(*(this + 16)) & 1) == 0)
    {
      FIK::Solver::updateFK(*(this + 16));
    }

    v4 = vaddq_f32(*(*(this + 32) + 416), *FIK::Segment::getAugCenter(*(this + 32)));
    v5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(this + 14), *(this + 14)), *(this + 14), 0xCuLL), vnegq_f32(v4)), *(this + 14), vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
    v6 = vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL);
    v6.i32[3] = 0;
    v11 = v6;
    v7 = *(this + 16);
    v8 = *(v7 + 112);
    if (v8)
    {
      v9 = *(v7 + 128);
      v10 = 8 * v8;
      do
      {
        if ((*v9)[1].i8[13] == 1)
        {
          if ((*((*v9)->i64[0] + 176))(*v9))
          {
            FIK::PositionTask::getNTorque(*v9, &v12);
            v11 = vsubq_f32(v11, v12);
          }
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }

    *a2 = v11;
  }

  else
  {
    a2->i64[0] = 0;
    a2->i64[1] = 0;
  }
}

void FIK::BalanceTask::computeDerivatives(FIK::BalanceTask *this, unsigned int a2, int a3)
{
  v5 = vaddq_f32(*(*(this + 32) + 416), *FIK::Segment::getAugCenter(*(this + 32)));
  if (*(this + 185) == 1)
  {
    v49 = v5;
    if (*(this + 186) == 1)
    {
      v48 = *(this + 12);
      AugCenter = FIK::Segment::getAugCenter(*(this + 32));
    }

    else
    {
      v48 = vsubq_f32(*(this + 12), v5);
      AugCenter = FIK::Solver::getZMP(*(this + 16));
    }

    v52 = vsubq_f32(v48, *AugCenter);
    v7 = *(this + 6);
    if (v7)
    {
      v8 = 0;
      v9 = *(this + 2);
      v10 = *(this + 15);
      do
      {
        *(v10 + 4 * (v9 + v8)) = v52.i32[v8];
        ++v8;
      }

      while (v7 != v8);
    }

    v5 = v49;
  }

  if (*(this + 184) == 1)
  {
    v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vnegq_f32(*(this + 14))), v5, vextq_s8(vuzp1q_s32(*(this + 14), *(this + 14)), *(this + 14), 0xCuLL));
    v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
    v12.i32[3] = 0;
    v50 = v12;
    v13 = *(this + 16);
    v14 = *(v13 + 112);
    if (v14)
    {
      v15 = *(v13 + 128);
      v16 = 8 * v14;
      do
      {
        if ((*v15)[1].i8[13] == 1 && (*((*v15)->i64[0] + 176))(*v15))
        {
          FIK::PositionTask::getNTorque(*v15, &v52);
          v50 = vaddq_f32(v50, v52);
        }

        ++v15;
        v16 -= 8;
      }

      while (v16);
    }

    v17 = *(this + 15);
    *(v17 + 4 * (a3 - 3)) = v50.i32[0];
    *(v17 + 4 * (a3 - 2)) = v50.i32[1];
    *(v17 + 4 * (a3 - 1)) = v50.i32[2];
  }

  if (*(this + 21))
  {
    LODWORD(v18) = 0;
    v19 = *(this + 5);
    v20 = a3 - 3;
    while (1)
    {
      if (!*(v19 + 72))
      {
        FIK::Solver::checkReach(*(this + 16), *(v19 + 636));
      }

      if (*(v19 + 814) == 1)
      {
        v21 = FIK::Segment::getAugCenter(v19);
        v22 = 0;
        v23 = *v21;
        v24 = *(v19 + 516);
        v25 = v19 + 808;
        v26 = v19 + 320;
        v27 = vextq_s8(vuzp1q_s32(v23, v23), *v21, 0xCuLL);
        do
        {
          if (*(v25 + v22) == 1)
          {
            v28 = vmulq_n_f32(*(v26 + 16 * v22), *(v19 + 568));
            v29 = vmlaq_f32(vmulq_f32(v27, vnegq_f32(v28)), v23, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL));
            v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
            v52 = v30;
            if (*(this + 185) == 1)
            {
              v31 = 0;
              v32 = *(this + 2);
              v33 = *(this + 11);
              do
              {
                *(*(v33 + 8 * v32++) + 4 * v24) = v52.i32[v31++];
              }

              while (v31 != 3);
            }

            if (*(this + 184) == 1)
            {
              v34 = 0;
              v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(this + 14), *(this + 14)), *(this + 14), 0xCuLL), vnegq_f32(v30)), *(this + 14), vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
              v52 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
              v36 = *(this + 11);
              v37 = v20;
              do
              {
                *(*(v36 + 8 * v37++) + 4 * v24) = v52.i32[v34++];
              }

              while (v34 != 3);
            }

            ++v24;
          }

          ++v22;
        }

        while (v22 != 3);
        if (*(v19 + 532) == 1)
        {
          break;
        }
      }

LABEL_49:
      v18 = (v18 + 1);
      v19 += 944;
      if (*(this + 21) <= v18)
      {
        return;
      }
    }

    v38 = 0;
    while (*(v38 + v25 + 3) != 1)
    {
LABEL_48:
      if (++v38 == 3)
      {
        goto LABEL_49;
      }
    }

    v39 = vmulq_n_f32(*(v26 + 16 * v38), *(v19 + 568));
    v51 = v39;
    if (*(this + 185) == 1)
    {
      v40 = *(this + 2);
      if (*(this + 186))
      {
        v41 = *(this + 11);
        if (v19 == *(this + 32))
        {
          v42 = 3;
          do
          {
            *(*(v41 + 8 * v40++) + 4 * v24) = 0;
            --v42;
          }

          while (v42);
          goto LABEL_44;
        }
      }

      else
      {
        v41 = *(this + 11);
      }

      for (i = 0; i != 3; ++i)
      {
        *(*(v41 + 8 * v40++) + 4 * v24) = v51.i32[i];
      }
    }

LABEL_44:
    if (*(this + 184) == 1)
    {
      v44 = 0;
      v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(this + 14), *(this + 14)), *(this + 14), 0xCuLL), vnegq_f32(v39)), *(this + 14), vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
      v52 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v46 = *(this + 11);
      v47 = v20;
      do
      {
        *(*(v46 + 8 * v47++) + 4 * v24) = v52.i32[v44++];
      }

      while (v44 != 3);
    }

    ++v24;
    goto LABEL_48;
  }
}

uint64_t FIK::BalanceTask::fillJacobian(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(this + 168);
  if (v3)
  {
    LODWORD(v4) = 0;
    v5 = *(this + 40);
    v6 = a3 - 3;
    do
    {
      if (*(v5 + 814) == 1)
      {
        v7 = 0;
        v8 = *(v5 + 516);
        do
        {
          if (*(v5 + 808 + v7) == 1)
          {
            if (*(this + 185) == 1 && *(v5 + 568) != 0.0)
            {
              v9 = *(this + 8);
              v10 = 3;
              v11 = (this + 32);
              do
              {
                v12 = *v11++;
                if (v12 == 1)
                {
                  *(*(*(this + 88) + 8 * v9) + 4 * v8) = 1065353216;
                }

                ++v9;
                --v10;
              }

              while (v10);
            }

            if (*(this + 184) == 1)
            {
              v13 = *(this + 88);
              v14 = 3;
              v15 = v6;
              do
              {
                *(*(v13 + 8 * v15++) + 4 * v8) = 1065353216;
                --v14;
              }

              while (v14);
            }

            ++v8;
          }

          ++v7;
        }

        while (v7 != 6);
      }

      v4 = (v4 + 1);
      v5 += 944;
    }

    while (v3 > v4);
  }

  return this;
}

float *FIK::BalanceTask::addToTarget(float *this, float a2, float a3, float a4)
{
  this[52] = a2;
  this[53] = a3;
  this[54] = a4;
  return this;
}

void *virtual thunk toFIK::BalanceTask::addToTarget(void *this, float a2, float a3, float a4)
{
  v4 = (this + *(*this - 288));
  v4[52] = a2;
  v4[53] = a3;
  v4[54] = a4;
  return this;
}

__n128 FIK::BalanceTask::addToTarget(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[13] = *a2;
  return result;
}

__n128 virtual thunk toFIK::BalanceTask::addToTarget(void *a1, __n128 *a2)
{
  result = *a2;
  *(a1 + *(*a1 - 296) + 208) = *a2;
  return result;
}

uint64_t ikinemaAssertHandler(NSObject *a1, int a2, uint64_t a3, const char *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 16 * (a2 == 0);
  if (os_log_type_enabled(a1, v8))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = a3;
    WORD6(buf[0]) = 2080;
    *(buf + 14) = a4;
    _os_log_impl(&dword_245976000, a1, v8, "Assertion failed! %s: %s", buf, 0x16u);
  }

  result = fprintf(*MEMORY[0x277D85DF8], "Assertion failed! %s", a4);
  if (!a2)
  {
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

float FIK::ImportBone::setRestTransform(_DWORD *a1, _DWORD *a2)
{
  v2 = 0;
  a1[15] = a2[7];
  a1[16] = a2[4];
  a1[17] = a2[5];
  a1[18] = a2[6];
  do
  {
    result = *&a2[v2];
    *&a1[v2 + 12] = result;
    ++v2;
  }

  while (v2 != 3);
  return result;
}

FIK::Solver *FIK::Solver::Solver(FIK::Solver *this, FIK::IKSolver *a2, FIK::Allocator *a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  v4 = this + 552;
  *(this + 4) = a3;
  *(this + 5) = 0;
  *(this + 3) = 0u;
  *(this + 8) = a3;
  *(this + 9) = 0;
  *(this + 5) = 0u;
  *(this + 12) = a3;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = a3;
  *(this + 18) = 0;
  *(this + 152) = 0u;
  *(this + 21) = a3;
  *(this + 11) = 0u;
  *(this + 24) = 0;
  *(this + 25) = a3;
  *(this + 13) = 0u;
  *(this + 28) = 0;
  *(this + 29) = a3;
  *(this + 18) = 0u;
  *(this + 19) = xmmword_245A01E80;
  *(this + 383) = 0;
  v5 = (this + 392);
  *(this + 137) = 0;
  *(this + 20) = 0u;
  *(this + 340) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 67) = 0;
  *(this + 154) = 1065353216;
  *(this + 162) = 0;
  *(this + 656) = 0;
  v6 = (this + 664);
  *(this + 343) = 0;
  *(this + 678) = 0;
  *(this + 662) = 0u;
  *(this + 173) = 1;
  v7 = (this + 696);
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 696) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = xmmword_245A01E80;
  *(this + 106) = a3;
  *(this + 107) = a2;
  *(this + 872) = 0;
  *(this + 108) = 0;
  *(this + 55) = 0u;
  *(this + 224) = 0;
  FIK::FIKRedBlackTree<IKString,FIK::Segment *>::clear(this);
  *(this + 190) = 256;
  *(this + 136) = 1065353216;
  *(this + 144) = 1065353216;
  *(this + 89) = 1;
  *(this + 382) = 1;
  *(this + 384) = 0;
  *(this + 163) = 0;
  *(v4 + 105) = 16843009;
  *(this + 49) = 0u;
  *(this + 661) = 0;
  *(this + 82) = 0;
  *v7 = 0u;
  v7[1] = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  *(this + 67) = 0;
  *v6 = 0u;
  *(this + 71) = 0x400000003EE3D70ALL;
  *(v4 + 36) = vdupq_n_s32(0x3D4CCCCDu);
  *(this + 151) = 1041865114;
  *(this + 76) = 0x3E4CCCCD3E19999ALL;
  *(this + 159) = 1065353216;
  *(v4 + 68) = xmmword_245A02070;
  *v4 = xmmword_245A02080;
  return this;
}

uint64_t FIK::FIKRedBlackTree<IKString,FIK::Segment *>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      result = FIK::Allocator::destroy<FIK::FIKRedBlackTree<IKString,FIK::Segment *>::Node>(*(v1 + 32), v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(v1 + 8) = 0;
  return result;
}

void FIK::Solver::~Solver(FIK::Solver *this)
{
  FIK::Solver::freeTasks(this);
  if (*(this + 652) == 1)
  {
    v2.n128_f64[0] = FIK::Solver::freeMemory(this);
  }

  v3 = *(this + 57);
  if (v3)
  {
    (*(**(this + 106) + 24))(*(this + 106), v3, 0, 8, v2);
  }

  v4 = *(this + 62);
  if (v4)
  {
    (*(**(this + 106) + 24))(*(this + 106), v4, 0, 8, v2);
  }

  FIK::Solver::AuxiliaryAutoTuneParams::deallocate(this + 864, *(this + 106));
  *(this + 26) = 0;
  v5 = *(this + 28);
  if (v5)
  {
    (*(**(this + 29) + 24))(*(this + 29), v5, 0, 8);
  }

  *(this + 22) = 0;
  v6 = *(this + 24);
  if (v6)
  {
    (*(**(this + 25) + 24))(*(this + 25), v6, 0, 8);
  }

  *(this + 18) = 0;
  v7 = *(this + 20);
  if (v7)
  {
    (*(**(this + 21) + 24))(*(this + 21), v7, 0, 8);
  }

  *(this + 14) = 0;
  v8 = *(this + 16);
  if (v8)
  {
    (*(**(this + 17) + 24))(*(this + 17), v8, 0, 8);
  }

  *(this + 9) = 0;
  v9 = *(this + 11);
  if (v9)
  {
    (*(**(this + 12) + 24))(*(this + 12), v9, 0, 8);
  }

  FIK::IKArray<FIK::Segment>::~IKArray(this + 5, v9);

  FIK::FIKRedBlackTree<IKString,FIK::Segment *>::~FIKRedBlackTree(this);
}

void *FIK::Solver::freeTasks(void *this)
{
  v1 = this;
  v2 = this[14];
  if (v2)
  {
    v3 = this[16];
    v4 = 8 * v2;
    do
    {
      this = FIK::Allocator::destroy<FIK::Task>(v1[106], *v3);
      *v3++ = 0;
      v4 -= 8;
    }

    while (v4);
  }

  v1[14] = 0;
  v5 = v1[96];
  if (v5)
  {
    this = (*(*v1[106] + 24))(v1[106], v5, 0, 8);
    v1[96] = 0;
  }

  return this;
}

double FIK::Solver::freeMemory(FIK::Solver *this)
{
  v2 = *(this + 65);
  if (v2)
  {
    (*(**(this + 106) + 24))(*(this + 106), v2, 0, 8);
    *(this + 65) = 0;
  }

  v3 = *(this + 66);
  if (v3)
  {
    (*(**(this + 106) + 24))(*(this + 106), v3, 0, 8);
    *(this + 66) = 0;
  }

  v4 = *(this + 55);
  if (v4)
  {
    (*(**(this + 106) + 24))(*(this + 106), v4, 0, 8);
    *(this + 55) = 0;
  }

  v5 = *(this + 56);
  if (v5)
  {
    (*(**(this + 106) + 24))(*(this + 106), v5, 0, 8);
    *(this + 56) = 0;
  }

  v6 = *(this + 54);
  if (v6)
  {
    (*(**(this + 106) + 24))(*(this + 106), v6, 0, 8);
    *(this + 54) = 0;
  }

  v7 = *(this + 57);
  if (v7)
  {
    (*(**(this + 106) + 24))(*(this + 106), v7, 0, 8);
    *(this + 57) = 0;
  }

  FIK::Solver::AuxiliaryAutoTuneParams::deallocate(this + 864, *(this + 106));
  v8 = *(this + 58);
  if (v8)
  {
    (*(**(this + 106) + 24))(*(this + 106), v8, 0, 8);
    *(this + 58) = 0;
  }

  v9 = *(this + 59);
  if (v9)
  {
    (*(**(this + 106) + 24))(*(this + 106), v9, 0, 8);
    *(this + 59) = 0;
  }

  v10 = *(this + 60);
  if (v10)
  {
    (*(**(this + 106) + 24))(*(this + 106), v10, 0, 8);
    *(this + 60) = 0;
  }

  v11 = *(this + 61);
  if (v11)
  {
    (*(**(this + 106) + 24))(*(this + 106), v11, 0, 8);
    *(this + 61) = 0;
  }

  v12 = *(this + 62);
  if (v12)
  {
    (*(**(this + 106) + 24))(*(this + 106), v12, 0, 8);
    *(this + 62) = 0;
  }

  v13 = *(this + 49);
  if (v13)
  {
    (*(**(this + 106) + 24))(*(this + 106), v13, 0, 8);
    *(this + 49) = 0;
  }

  v14 = *(this + 63);
  if (v14)
  {
    (*(**(this + 106) + 24))(*(this + 106), v14, 0, 8);
    *(this + 63) = 0;
    v15 = *(this + 64);
    if (v15)
    {
      (*(**(this + 106) + 24))(*(this + 106), v15, 0, 8);
    }

    *(this + 64) = 0;
  }

  v16 = *(this + 53);
  if (v16)
  {
    (*(**(this + 106) + 24))(*(this + 106), v16, 0, 8);
    *(this + 53) = 0;
  }

  v17 = *(this + 50);
  if (v17)
  {
    (*(**(this + 106) + 24))(*(this + 106), v17, 0, 8);
    *(this + 50) = 0;
  }

  v18 = *(this + 51);
  if (v18)
  {
    (*(**(this + 106) + 24))(*(this + 106), v18, 0, 8);
    *(this + 51) = 0;
  }

  (*(**(this + 106) + 24))(*(this + 106), *(this + 87), 0, 8);
  (*(**(this + 106) + 24))(*(this + 106), *(this + 88), 0, 8);
  *(this + 696) = 0u;
  (*(**(this + 106) + 24))(*(this + 106), *(this + 91), 0, 8);
  *(this + 91) = 0;
  *(this + 35) = 0;
  result = 0.0;
  *(this + 664) = 0u;
  return result;
}

uint64_t FIK::Solver::AuxiliaryAutoTuneParams::deallocate(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = (*(*a2 + 24))(a2, v4, 0, 8);
    *(v3 + 16) = 0;
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    result = (*(*a2 + 24))(a2, v5, 0, 8);
    *(v3 + 24) = 0;
  }

  return result;
}

uint64_t FIK::Allocator::destroy<FIK::Task>(uint64_t result, void (***a2)(void))
{
  if (a2)
  {
    v3 = result;
    (**a2)(a2);
    v4 = *(*v3 + 24);

    return v4(v3, a2, 0, 8);
  }

  return result;
}

void FIK::Solver::auxiliaryAutoTune(const float **this)
{
  v16 = *MEMORY[0x277D85DE8];
  FIK::Solver::AuxiliaryAutoTuneParams::prepareParams((this + 108), this[62], this[57]);
  v4 = *(this + 216);
  v5 = *(this + 217);
  v6 = v4 - v5;
  v7 = vabds_f32(v4, v5);
  if (v6 > 0.0 && v7 > 0.5)
  {
    FIK::Solver::prepareStabilityParameters(this, v2, v3);
    if (FIK::Solver::computeStability(this) >= 0.975)
    {
      v9 = ikinemaLogObject()[1];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "auxiliaryAutoTune";
        _os_log_impl(&dword_245976000, v9, OS_LOG_TYPE_DEFAULT, "%s: Solver triggered auxiliary auto-tune.", &v14, 0xCu);
      }

      v12 = *(this + 140);
      while (v12 >= 0.005)
      {
        v12 = v12 * 0.95;
        *(this + 140) = v12;
        *(this + 382) = 1;
        FIK::Solver::prepareStabilityParameters(this, v10, v11);
        if (FIK::Solver::computeStability(this) < 0.975)
        {
          FIK::Solver::resetAuxiliaryAutoTuneParams(this);
          break;
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

float FIK::Solver::AuxiliaryAutoTuneParams::prepareParams(FIK::Solver::AuxiliaryAutoTuneParams *this, const float *a2, const float *a3)
{
  *this = 0;
  if (!*(this + 8))
  {
    a2 = a3;
  }

  v4 = *(this + 8);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v4)
  {
    v7 = 0;
    v8 = 4 * v4;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = *(v6 + v7);
      v9 = v9 + ((a2[v7 / 4] - v11) * (a2[v7 / 4] - v11));
      v10 = v10 + ((v11 - *&v5[v7]) * (v11 - *&v5[v7]));
      v7 += 4;
    }

    while (v8 != v7);
    *(this + 2) = v5;
    *(this + 3) = v6;
    memmove(v5, a2, v8);
  }

  else
  {
    *(this + 2) = v5;
    *(this + 3) = v6;
    v9 = 0.0;
    v10 = 0.0;
  }

  result = v10 + v9;
  *this = v10 + v9;
  return result;
}

void FIK::Solver::prepareStabilityParameters(float32x4_t *this, uint64_t a2, float *a3)
{
  if (this[23].i8[15] == 1)
  {
    v4 = this[2].i64[1];
    if (v4)
    {
      v5 = this[3].i64[1];
      v6 = 944 * v4;
      do
      {
        FIK::Solver::weightSegment(this, v5);
        v5 = (v5 + 944);
        v6 -= 944;
      }

      while (v6);
    }

    v7 = this[7].i64[0];
    if (v7)
    {
      v8 = this[8].i64[0];
      v9 = &v8[v7];
      do
      {
        FIK::Solver::setTaskParameters(this, *v8, a3);
        v10 = *v8;
        v11 = *(*v8 + 2);
        if (v11 != -1)
        {
          v12 = *(v10 + 6);
          if (v12)
          {
            v13 = (v10 + 64);
            v14 = this[26].i64[1];
            do
            {
              v15 = *v13++;
              *(v14 + 4 * v11++) = this[34].f32[3] / v15;
              --v12;
            }

            while (v12);
          }
        }

        ++v8;
      }

      while (v8 != v9);
    }
  }

  else
  {
    FIK::Solver::setup(this);
  }

  if ((this[40].i8[13] & 1) == 0)
  {
    FIK::Solver::updateForwardFromRoot(this, 0);
  }

  v16 = this[9].i64[0];
  if (v16)
  {
    v17 = this[10].i64[0];
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      FIK::PositionTask::queryAffectedSegments(v19);
      v18 -= 8;
    }

    while (v18);
  }

  FIK::Solver::computeDerivatives(this);
}

float FIK::Solver::computeStability(FIK::Solver *this)
{
  v2 = *(this + 80);
  v3 = *(this + 81);
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  v44 = FIK::defaultAllocator(this);
  LODWORD(v39[0]) = 0;
  v4 = FIK::IKArray<float>::resize(v42, (v3 * v2), v39);
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v4 = MEMORY[0x245D78220](*(*(this + 66) + v5), 1, *(this + 50), 1, v43 + 4 * v6, 1, v3);
      v6 += v3;
      v5 += 8;
    }

    while (8 * v2 != v5);
  }

  v7 = FIK::defaultAllocator(v4);
  v39[0] = 0;
  v39[1] = 0;
  __a = 0;
  v41 = v7;
  __C = 0.0;
  v8 = FIK::IKArray<float>::resize(v39, (v2 * v2), &__C);
  v9 = 0;
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      for (j = 0; j != v2; ++j)
      {
        __C = 0.0;
        vDSP_dotpr((v43 + 4 * (v3 * i)), 1, *(*(this + 66) + 8 * j), 1, &__C, v3);
        v12 = -(*(*(this + 51) + 4 * j) * __C);
        v13 = (v9 + j);
        v14 = __a;
        __a[v13] = v12;
        if (i == j)
        {
          v14[v13] = v12 + (*(*(this + 53) + 4 * i) + 1.0);
        }
      }

      LODWORD(v9) = v9 + v2;
    }

    v9 = v2;
  }

  __jobvr = 78;
  __C = *&v2;
  v36 = 0.0;
  __lda = v2;
  __ldvl = 1;
  __lwork = -1;
  v33 = 0;
  v15 = FIK::defaultAllocator(v8);
  v16 = v15;
  v17 = (v9 + 7) & 0x1FFFFFFF8;
  if (v17)
  {
    v18 = 4 * v17;
    v19 = (*(*v15 + 16))(v15, 4 * v17, 4);
    bzero(v19, v18);
    v21 = FIK::defaultAllocator(v20);
    v22 = (*(*v21 + 2))(v21, v18, 4);
    bzero(v22, v18);
  }

  else
  {
    v21 = FIK::defaultAllocator(v15);
    v19 = 0;
    v22 = 0;
  }

  v23 = sgeev_(&__jobvr, &__jobvr, &__C, __a, &__lda, v19, v22, 0, &__ldvl, 0, &__ldvl, &v36, &__lwork, &v33);
  __lwork = v36;
  v24 = v36;
  v25 = FIK::defaultAllocator(v23);
  v26 = v25;
  v27 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v27)
  {
    v28 = 4 * v27;
    v29 = (*(*v25 + 2))(v25, 4 * v27, 4);
    bzero(v29, v28);
    if (!v24)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v29 = 0;
  if (v24)
  {
LABEL_17:
    bzero(v29, 4 * v24);
  }

LABEL_18:
  sgeev_(&__jobvr, &__jobvr, &__C, __a, &__lda, v19, v22, 0, &__ldvl, 0, &__ldvl, v29, &__lwork, &v33);
  v32 = 0.0;
  vDSP_maxmgv(v19, 1, &v32, v9);
  v30 = v32;
  if (v29)
  {
    (*(*v26 + 3))(v26, v29, 0, 8);
  }

  if (v22)
  {
    (*(*v21 + 3))(v21, v22, 0, 8);
  }

  if (v19)
  {
    (*(*v16 + 24))(v16, v19, 0, 8);
  }

  v39[0] = 0;
  if (__a)
  {
    (*(*v41 + 3))(v41, __a, 0, 8);
  }

  v42[0] = 0;
  if (v43)
  {
    (*(*v44 + 3))(v44, v43, 0, 8);
  }

  return v30;
}

uint64_t FIK::Solver::setP(uint64_t this, float a2)
{
  *(this + 560) = a2;
  *(this + 382) = 1;
  return this;
}

void FIK::Solver::resetAuxiliaryAutoTuneParams(FIK::Solver *this)
{
  v2 = *(this + 86);
  *(this + 108) = 0;
  *(this + 224) = v2;
  v3 = *(this + 110);
  if (v3)
  {
    bzero(v3, 4 * v2);
  }

  v4 = *(this + 111);
  if (v4)
  {
    bzero(v4, 4 * *(this + 224));
  }

  v5 = *(this + 62);
  if (v5)
  {
    bzero(v5, 4 * *(this + 86));
  }

  v6 = *(this + 57);
  if (v6)
  {
    v7 = 4 * *(this + 86);

    bzero(v6, v7);
  }
}

uint64_t FIK::Solver::setHasAnyRetargeting(uint64_t this)
{
  if (fabsf(*(this + 588) / *(this + 592)) < 0.000000001)
  {
    goto LABEL_2;
  }

  if (*(this + 662))
  {
LABEL_4:
    v1 = 1;
    goto LABEL_5;
  }

  v2 = *(this + 40);
  if (v2)
  {
    v3 = *(this + 56) + 534;
    v4 = 944 * v2;
    while ((*(v3 + 1) & 1) == 0)
    {
      v1 = 1;
      if ((*v3 & 1) != 0 || fabsf(*(v3 + 82)) >= 0.000000001)
      {
        goto LABEL_5;
      }

      v3 += 944;
      v4 -= 944;
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    goto LABEL_4;
  }

LABEL_2:
  v1 = 0;
LABEL_5:
  *(this + 872) = v1;
  return this;
}

void FIK::Solver::computeScale(FIK::Solver *this)
{
  *(this + 136) = 0;
  if (!*(this + 5))
  {
    *(this + 160) = 0;
    goto LABEL_32;
  }

  LODWORD(v2) = 0;
  v3 = 0;
  v4 = *(this + 7);
  do
  {
    v19 = 0uLL;
    v5 = *(v4 + 72);
    if (!v5)
    {
      FIK::Segment::setRestStretch(v4, &v19);
      goto LABEL_19;
    }

    v6 = 1.0e20;
    do
    {
      v7 = vmulq_f32(v5[6], v5[6]);
      v8 = sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
      if (v3)
      {
        if (v8 > (*(this + 136) / (50 * v3)) && v8 < v6)
        {
LABEL_11:
          v19 = v5[6];
          v6 = v8;
        }
      }

      else if (v8 < v6)
      {
        goto LABEL_11;
      }

      v5 = v5[5].i64[0];
    }

    while (v5);
    FIK::Segment::setRestStretch(v4, &v19);
    if (v6 < 1.0e20)
    {
      *(this + 136) = v6 + *(this + 136);
      ++v3;
    }

LABEL_19:
    v2 = (v2 + 1);
    v4 += 944;
    v10 = *(this + 5);
  }

  while (v10 > v2);
  v11 = *(this + 7);
  *(this + 160) = 0;
  if (v10)
  {
    if (v10 == 1)
    {
      *(this + 160) = 1104537436;
      *(this + 136) = 1065353216;
      v12 = *(this + 156);
      v13 = 1;
LABEL_30:
      v16 = *(this + 7) + 756;
      v17 = 1;
      do
      {
        v18 = vmulq_f32(*(v16 + 124), *(v16 + 124));
        v18.f32[0] = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
        *v16 = v12 * (v18.f32[0] + v18.f32[0]);
        v15 = v13 > v17++;
        v16 += 944;
      }

      while (v15);
    }

    else
    {
      v14 = 1;
      do
      {
        v19.i32[0] = 0;
        FIK::Segment::computeReach(v11, v19.f32);
        if (v19.f32[0] > *(this + 160))
        {
          *(this + 160) = v19.i32[0];
        }

        v11 += 944;
        v13 = *(this + 5);
        v15 = v13 > v14++;
      }

      while (v15);
      if (v13)
      {
        v12 = *(this + 156) / *(this + 136);
        goto LABEL_30;
      }
    }
  }

LABEL_32:
  *(this + 657) = 256;
}

uint64_t FIK::Solver::checkReach(uint64_t this, float a2)
{
  if (*(this + 648) < a2)
  {
    *(this + 648) = a2;
  }

  return this;
}

void FIK::Solver::updateReach(FIK::Solver *this)
{
  v1 = *(this + 162);
  if (v1 != 0.0 && vabds_f32(v1, *(this + 160)) > *(this + 160))
  {
    *(this + 160) = v1;
    v3 = (v1 * 3.366);
    v12 = v3 / 90.0 * (v3 / 90.0);
    v5 = pow(90.0 / v3, 0.1);
    v6.f64[0] = v12;
    v6.f64[1] = v5;
    *(this + 580) = vcvt_f32_f64(vmulq_f64(v6, xmmword_245A02090));
    v7 = *(this + 14);
    if (v7)
    {
      v8 = *(this + 16);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        FIK::Solver::setTaskParameters(this, v10, v4);
        v9 -= 8;
      }

      while (v9);
    }

    v11 = *(this + 96);
    if (v11)
    {
      if (*(v11 + 185) == 1)
      {
        FIK::Solver::setTaskParameters(this, v11, v4);
      }

      FIK::Solver::weightMoments(this);
    }
  }
}

uint64_t FIK::Solver::setTaskParameters(uint64_t this, FIK::Task *a2, float *a3)
{
  v3 = *(a2 + 2);
  if (v3 != -1)
  {
    v5 = this;
    this = (*(*a2 + 192))(a2);
    if (this)
    {
      v6 = *(a2 + 6);
      if (v6)
      {
        v7 = ((*(v5 + 640) * 3.366) / 55.0);
        v8 = (*(v5 + 568) * *(v5 + 560)) / (v7 * v7 * 55.0) * *(v5 + 564);
        v9 = (a2 + 52);
        v10 = *(v5 + 408);
        do
        {
          v11 = *v9++;
          *(v10 + 4 * v3++) = v11 * v8;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      this = (*(*a2 + 160))(a2);
      v12 = *(v5 + 560);
      if (this)
      {
        v13 = ((*(v5 + 640) * 3.366) / 55.0);
        v14 = (*(v5 + 568) * v12) / (v13 * v13 * 55.0) * *(v5 + 564);
      }

      else
      {
        v14 = *(v5 + 564) * ((*(v5 + 572) * v12) / 55.0);
      }

      v15 = *(a2 + 6);
      if (v15)
      {
        v16 = (a2 + 52);
        v17 = *(v5 + 408);
        do
        {
          v18 = *v16++;
          *(v17 + 4 * v3++) = v14 * v18;
          --v15;
        }

        while (v15);
      }
    }
  }

  return this;
}

uint64_t FIK::Solver::weightMoments(uint64_t this)
{
  v1 = *(this + 768);
  if (v1)
  {
    if (*(v1 + 184) == 1)
    {
      v2 = *(this + 320);
      if (v2 >= 3)
      {
        v3 = 0;
        v4 = (v2 - 3);
        if (v4 + 1 > v2)
        {
          v2 = v4 + 1;
        }

        v5 = v2 - v4;
        v6 = vdupq_n_s64(v5 - 1);
        v7 = (80.0 / *(this + 624)) * (80.0 / *(this + 624)) * ((45.2 / (*(this + 640) * 3.366)) * (45.2 / (*(this + 640) * 3.366)) * 0.00000000199999994) * *(this + 616);
        v8 = (v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v9 = (*(this + 408) + 4 * v4 + 8);
        do
        {
          v10 = vdupq_n_s64(v3);
          v11 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v10, xmmword_245A020B0)));
          if (vuzp1_s16(v11, *v6.i8).u8[0])
          {
            *(v9 - 2) = v7;
          }

          if (vuzp1_s16(v11, *&v6).i8[2])
          {
            *(v9 - 1) = v7;
          }

          if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v10, xmmword_245A020A0)))).i32[1])
          {
            *v9 = v7;
            v9[1] = v7;
          }

          v3 += 4;
          v9 += 4;
        }

        while (v8 != v3);
      }
    }
  }

  return this;
}

uint64_t FIK::Solver::recomputeScale(uint64_t this)
{
  *(this + 657) = 257;
  *(this + 382) = 1;
  return this;
}

float32x4_t *FIK::Solver::setFigureMass(float32x4_t *this, float32_t a2)
{
  v2 = this;
  this[39].f32[0] = a2;
  v3 = this[2].u64[1];
  if (v3)
  {
    v4 = this[3].i64[1] + 756;
    v5 = 1;
    v6 = a2 / this[34].f32[0];
    do
    {
      v7 = vmulq_f32(*(v4 + 124), *(v4 + 124));
      v7.f32[0] = sqrtf(v7.f32[2] + vaddv_f32(*v7.f32));
      *v4 = v6 * (v7.f32[0] + v7.f32[0]);
      v8 = v3 > v5++;
      v4 += 944;
    }

    while (v8);
  }

  this[41].i8[2] = 1;
  if ((this[23].i8[14] & 1) == 0)
  {
    FIK::Solver::recomputeCGWeights(this);
    FIK::Solver::weightMoments(v2);
    this = *(v2 + 768);
    if (this)
    {
      v9 = *(v2 + 624) * 9.81;

      return FIK::BalanceTask::setWeightForce(this, v9);
    }
  }

  return this;
}

float32x4_t *FIK::Solver::recomputeCGWeights(float32x4_t *this)
{
  v1 = this[2].i32[2];
  if (v1)
  {
    v2 = this;
    v3 = this[3].i64[1];
    v4 = (v3 + 756);
    v5 = 0.0;
    v6 = this[2].i32[2];
    do
    {
      v5 = *v4 + v5;
      v4 += 236;
      --v6;
    }

    while (v6);
    this[39].f32[0] = v5;
    do
    {
      FIK::Segment::computeCGWeight(v3, v2[39].f32[0]);
      v3 += 944;
      --v1;
    }

    while (v1);
    this = v2[48].i64[0];
    if (this)
    {
      this = FIK::BalanceTask::setWeightForce(this, v2[39].f32[0] * 9.81);
    }

    v2[41].i8[2] = 0;
  }

  return this;
}

float32x4_t *FIK::Solver::addPositionTask(FIK::Solver *this, int a2)
{
  if (*(this + 5) <= a2)
  {
    return 0;
  }

  else
  {
    return FIK::Solver::addPositionTask(this, (*(this + 7) + 944 * a2));
  }
}

float32x4_t *FIK::Solver::addPositionTask(FIK::Solver *this, const FIK::Segment *a2)
{
  v3 = *(this + 106);
  v11 = 1;
  v10.i64[0] = a2;
  v4 = FIK::Allocator::create<FIK::PositionTask,BOOL,FIK::Segment const*>(v3, &v11, &v10);
  v5 = *(this + 14);
  v4[8].i64[0] = this;
  v4[1].i32[1] = v5;
  FIK::IKArray<FIK::Segment *>::reserve(this + 14, v5 + 1);
  v6 = *(this + 18);
  v7 = *(this + 14);
  *(*(this + 16) + 8 * v7) = v4;
  *(this + 14) = v7 + 1;
  FIK::IKArray<FIK::Segment *>::reserve(this + 18, v6 + 1);
  v8 = *(this + 18);
  *(*(this + 20) + 8 * v8) = v4;
  *(this + 18) = v8 + 1;
  *(this + 381) = 257;
  *(this + 383) = 0;
  if (*(this + 13))
  {
    if ((*(this + 653) & 1) == 0)
    {
      FIK::Solver::updateForwardFromRoot(this, 0);
      *(this + 653) = 1;
    }

    v10 = vaddq_f32(*(v4[2].i64[1] + 432), *(this + 18));
    FIK::PositionTask::setTarget(v4, &v10);
  }

  return v4;
}

float32x4_t *FIK::Solver::addPositionTask(FIK::Solver *this, const IKString *a2)
{
  Key = FIK::FIKRedBlackTree<IKString,FIK::Segment *>::FindKey(this, a2);
  if (Key)
  {
    v4 = *Key;

    return FIK::Solver::addPositionTask(this, v4);
  }

  else
  {
    fwrite("Uknown bone name\n", 0x11uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }
}

void *FIK::FIKRedBlackTree<IKString,FIK::Segment *>::FindKey(void **a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  while (1)
  {
    v4 = v2[1];
    v5 = v4 ? *v2 : &unk_245A04BAE;
    if (a2[1] == v4)
    {
      v6 = *a2;
      v7 = v4 ? *a2 : &unk_245A04BAE;
      if (!memcmp(v7, v5, v4))
      {
        break;
      }
    }

    if (IKString::operator<(a2, v2))
    {
      v8 = 5;
    }

    else
    {
      v8 = 6;
    }

    v2 = v2[v8];
    if (!v2)
    {
      return 0;
    }
  }

  return v2 + 3;
}

FIK::PositionTask *FIK::Allocator::create<FIK::PositionTask,BOOL,FIK::Segment const*>(uint64_t a1, char *a2, const FIK::Segment **a3)
{
  result = (*(*a1 + 16))(a1, 496, 16);
  if (result)
  {
    return FIK::PositionTask::PositionTask(result, *a2, *a3);
  }

  return result;
}

float32x4_t *FIK::Solver::updateForwardFromRoot(float32x4_t *this, int a2)
{
  v2 = this[4].i64[1];
  if (v2)
  {
    v3 = *(this[6].i64[1] + 520);
    v4 = this[5].i64[1];
    v5 = 240;
    if (a2)
    {
      v5 = 784;
    }

    v6 = 4 * v2;
    v7.i64[0] = 0x4000000040000000;
    v7.i64[1] = 0x4000000040000000;
    do
    {
      v8 = this[3].i64[1] + 944 * *v4;
      if (*v4 == v3)
      {
        v9 = *(v8 + 96);
        v10 = *(v8 + v5);
        v11 = vnegq_f32(v10);
        v12 = vtrn2q_s32(v10, vtrn1q_s32(v10, v11));
        v13 = this[19];
        v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v10, v11, 8uLL), *v13.f32, 1), vextq_s8(v12, v12, 8uLL), v13.f32[0]);
        v15 = vrev64q_s32(v10);
        v15.i32[0] = v11.i32[1];
        v15.i32[3] = v11.i32[2];
        v16 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v10, v13, 3), v15, v13, 2), v14);
        v17 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
        v18 = vnegq_f32(v13);
        v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v18), v9, v17);
        v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
        v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), v18), v20, v17);
        v22 = vaddq_f32(this[18], vmlaq_f32(v9, v7, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), v20, v13, 3)));
        *(v8 + 432) = v22;
        *(v8 + 448) = v16;
        *(v8 + 416) = v22;
      }

      else
      {
        v23 = *(v8 + 32);
        v24 = *(v8 + 96);
        v25 = *(v8 + v5);
        v26 = vnegq_f32(v25);
        v27 = vtrn2q_s32(v25, vtrn1q_s32(v25, v26));
        v28 = v23[28];
        v29 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v25, v26, 8uLL), *v28.f32, 1), vextq_s8(v27, v27, 8uLL), v28.f32[0]);
        v30 = vrev64q_s32(v25);
        v30.i32[0] = v26.i32[1];
        v30.i32[3] = v26.i32[2];
        v16 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v25, v28, 3), v30, v28, 2), v29);
        v31 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
        v32 = vnegq_f32(v28);
        v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v32), v24, v31);
        v34 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
        v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v32), v34, v31);
        v22 = vaddq_f32(v23[27], vmlaq_f32(v24, v7, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v34, v28, 3)));
        *(v8 + 432) = v22;
        *(v8 + 448) = v16;
        *(v8 + 416) = v22;
        *(v8 + 636) = (v23[39].f32[3] + v23[25].f32[0]) + v23[25].f32[1];
      }

      *(v8 + 815) = 0;
      v36 = *(v8 + 880);
      v37 = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
      v38 = vnegq_f32(v16);
      v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), v38), v36, v37);
      v40 = vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL);
      v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), v38), v40, v37);
      *(v8 + 896) = vaddq_f32(v22, vmlaq_f32(v36, v7, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), v40, v16, 3)));
      ++v4;
      v6 -= 4;
    }

    while (v6);
  }

  return this;
}

uint64_t FIK::Solver::addBalanceTask(FIK::Solver *this, int a2, int a3, int a4)
{
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v5 = *(this + 96);
  if (v5)
  {
    FIK::BalanceTask::setGlobalUp(v5, a2);
    FIK::BalanceTask::enableMoments(*(this + 96), a3);
    FIK::BalanceTask::enableCGPosition(*(this + 96), a4);
  }

  else
  {
    v8 = FIK::defaultAllocator(0);
    v13 = 0;
    v12 = *(this + 5);
    FIK::Allocator::create<FIK::BalanceTask,BOOL,FIK::Segment *&,unsigned int &,BOOL &,BOOL &,unsigned long>(v8, &v13, this + 13, &v16, &v15, &v14, &v12);
    *(this + 96) = v9;
    v9[8].i64[0] = this;
    v9[1].i32[1] = -1;
    FIK::BalanceTask::setWeightForce(v9, *(this + 156) * 9.81);
    *(this + 381) = 257;
    *(this + 383) = 0;
    if (*(this + 13))
    {
      if ((*(this + 653) & 1) == 0)
      {
        FIK::Solver::updateForwardFromRoot(this, 0);
        *(this + 653) = 1;
      }

      FIK::Solver::recomputeCGWeights(this);
      FIK::Segment::computeAugCenter(*(this + 13));
      v10 = vaddq_f32(*(*(this + 13) + 96), *(*(this + 13) + 912));
      *(this + 47) = v10;
      FIK::BalanceTask::setTarget(*(this + 96), v10, v10.n128_f32[1], v10.n128_f32[2]);
    }
  }

  return *(this + 96);
}

void FIK::Allocator::create<FIK::BalanceTask,BOOL,FIK::Segment *&,unsigned int &,BOOL &,BOOL &,unsigned long>(uint64_t a1, char *a2, FIK::Segment **a3, int *a4, char *a5, char *a6, uint64_t *a7)
{
  v13 = (*(*a1 + 16))(a1, 272, 16);
  if (v13)
  {
    FIK::BalanceTask::BalanceTask(v13, *a2, *a3, *a4, *a5, *a6, *a7);
  }
}

__n128 *FIK::Solver::addOrientationTask(FIK::Solver *this, const FIK::Segment *a2)
{
  v3 = *(this + 106);
  v12 = 1;
  v11 = a2;
  FIK::Allocator::create<FIK::OrientationTask,BOOL,FIK::Segment const*>(v3, &v12, &v11);
  v5 = v4;
  v6 = *(this + 14);
  v4[8].n128_u64[0] = this;
  v4[1].n128_u32[1] = v6;
  FIK::IKArray<FIK::Segment *>::reserve(this + 14, v6 + 1);
  v7 = *(this + 22);
  v8 = *(this + 14);
  *(*(this + 16) + 8 * v8) = v5;
  *(this + 14) = v8 + 1;
  FIK::IKArray<FIK::Segment *>::reserve(this + 22, v7 + 1);
  v9 = *(this + 22);
  *(*(this + 24) + 8 * v9) = v5;
  *(this + 22) = v9 + 1;
  *(this + 381) = 257;
  *(this + 383) = 0;
  if (*(this + 13))
  {
    if ((*(this + 653) & 1) == 0)
    {
      FIK::Solver::updateForwardFromRoot(this, 0);
      *(this + 653) = 1;
    }

    FIK::OrientationTask::setTarget(v5, (v5[2].n128_u64[1] + 448));
  }

  return v5;
}

double FIK::Allocator::create<FIK::OrientationTask,BOOL,FIK::Segment const*>(uint64_t a1, char *a2, const FIK::Segment **a3)
{
  v5 = (*(*a1 + 16))(a1, 288, 16);
  if (v5)
  {
    return FIK::OrientationTask::OrientationTask(v5, *a2, *a3);
  }

  return result;
}

__n128 *FIK::Solver::addOrientationTask(FIK::Solver *this, int a2)
{
  if (*(this + 5) <= a2)
  {
    return 0;
  }

  else
  {
    return FIK::Solver::addOrientationTask(this, (*(this + 7) + 944 * a2));
  }
}

__n128 *FIK::Solver::addOrientationTask(FIK::Solver *this, const IKString *a2)
{
  result = FIK::FIKRedBlackTree<IKString,FIK::Segment *>::FindKey(this, a2);
  if (result)
  {
    v4 = result->n128_u64[0];

    return FIK::Solver::addOrientationTask(this, v4);
  }

  return result;
}

uint64_t FIK::Solver::removeTask(FIK::Solver *this, int a2)
{
  result = FIK::IKArray<FIK::Task *>::IKArray(&v17, this + 14);
  *(this + 18) = 0;
  *(this + 14) = 0;
  *(this + 22) = 0;
  v5 = v18;
  if (v17)
  {
    v6 = 8 * v17;
    do
    {
      v7 = *v5;
      if (*(*v5 + 20) == a2)
      {
        *(this + 381) = 257;
        *(this + 383) = 0;
        v8 = *(v7 + 152);
        if (v8)
        {
          *(v8 + 160) = 0;
          v7 = *v5;
        }

        v9 = *(v7 + 160);
        if (v9)
        {
          *(v9 + 152) = 0;
          v7 = *v5;
        }

        result = FIK::Allocator::destroy<FIK::Task>(*(this + 106), v7);
      }

      else
      {
        FIK::IKArray<FIK::Segment *>::reserve(this + 14, *(this + 14) + 1);
        v10 = *(this + 14);
        v11 = *v5;
        *(*(this + 16) + 8 * v10) = *v5;
        *(this + 14) = v10 + 1;
        v12 = (*(*v11 + 160))(v11);
        v13 = *v5;
        if (v12)
        {
          result = FIK::IKArray<FIK::Segment *>::reserve(this + 18, *(this + 18) + 1);
          v14 = *(this + 18);
          *(*(this + 20) + 8 * v14) = v13;
          *(this + 18) = v14 + 1;
        }

        else
        {
          result = (*(*v13 + 168))(*v5);
          if (result)
          {
            v15 = *v5;
            result = FIK::IKArray<FIK::Segment *>::reserve(this + 22, *(this + 22) + 1);
            v16 = *(this + 22);
            *(*(this + 24) + 8 * v16) = v15;
            *(this + 22) = v16 + 1;
          }
        }
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
    v5 = v18;
  }

  v17 = 0;
  if (v5)
  {
    return (*(*v19 + 24))(v19, v5, 0, 8);
  }

  return result;
}

void *FIK::Solver::getSegment(void **a1, uint64_t *a2)
{
  result = FIK::FIKRedBlackTree<IKString,FIK::Segment *>::FindKey(a1, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t FIK::Solver::setTranslationWeight(uint64_t this, float a2)
{
  if (*(this + 104))
  {
    v3 = this;
    for (i = 3; i != 6; ++i)
    {
      this = FIK::Segment::setWeight(*(v3 + 104), i, a2);
    }
  }

  return this;
}

uint64_t FIK::Solver::setup(FIK::Solver *this)
{
  v2 = *(this + 5);
  if (!v2)
  {
    result = 0;
    *(this + 340) = 0;
    *(this + 137) = 0;
    return result;
  }

  v3 = 0;
  v4 = *(this + 7);
  v5 = 1;
  do
  {
    *(v4 + 516) = v3;
    *(v4 + 520) = v5 - 1;
    v6 = *(v4 + 512);
    if (!*(v4 + 32))
    {
      *(this + 13) = v4;
    }

    v3 += v6;
    v4 += 944;
  }

  while (v2 > v5++);
  v9 = (this + 112);
  v8 = *(this + 14);
  if (v8)
  {
    v10 = 0;
    v12 = (this + 128);
    v11 = *(this + 16);
    v13 = (this + 344);
    v14 = (*(this + 136) + *(this + 136)) / v2;
    v15 = 8 * v8;
    do
    {
      v16 = *v11++;
      *(v16 + 8) = v10;
      *(v16 + 12) = vadd_s32(vdup_n_s32(v10), 0x200000001);
      *(v16 + 20) = v10 / 3;
      v10 += *(v16 + 24);
      *(v16 + 140) = v14;
      v15 -= 8;
    }

    while (v15);
    *v13 = v10;
  }

  else
  {
    if (*(this + 85) == v3)
    {
      *(this + 86) = 0;
      *(this + 137) = 0;
      if (!*(this + 96) && (*(this + 652) & 1) != 0)
      {
        return 0;
      }
    }

    v10 = 0;
    v13 = (this + 344);
    *(this + 86) = 0;
    v12 = (this + 128);
  }

  v18 = *(this + 96);
  if (!v18)
  {
LABEL_22:
    if (v10)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (*(v18 + 185) == 1)
  {
    v19 = vadd_s32(vdup_n_s32(v10), 0x200000001);
    v20 = v10 / 3;
    v21 = v10 + 3;
    *v13 = v10 + 3;
  }

  else
  {
    v19 = 0x100000000;
    v20 = 1431655765;
    v21 = v10;
    v10 = -1;
  }

  *(v18 + 8) = v10;
  *(v18 + 12) = v19;
  *(v18 + 20) = v20;
  if (*(v18 + 184) == 1)
  {
    v10 = v21 + 3;
    *v13 = v21 + 3;
    goto LABEL_22;
  }

  v10 = v21;
  if (!v21)
  {
LABEL_23:
    v10 = 1;
    *v13 = 1;
  }

LABEL_24:
  if (*(this + 80) != v10 || *(this + 81) != v3)
  {
    *(this + 80) = v10;
    *(this + 85) = v3;
    *(this + 81) = v3;
    FIK::Solver::initialiseFIK(this);
  }

  if (*(this + 657) == 1)
  {
    FIK::Solver::computeScale(this);
    v22 = (*(this + 160) * 3.366);
    v69 = v22 / 90.0 * (v22 / 90.0);
    v23 = pow(90.0 / v22, 0.1);
    v24.f64[0] = v69;
    v24.f64[1] = v23;
    *(this + 580) = vcvt_f32_f64(vmulq_f64(v24, xmmword_245A02090));
  }

  if ((*(this + 653) & 1) == 0)
  {
    FIK::Solver::updateForwardFromRoot(this, 0);
  }

  if (*v9)
  {
    v25 = *v12;
    v26 = &v25[*v9];
    do
    {
      (*(**v25 + 280))(*v25, *(this + 66), *(this + 54));
      (*(**v25 + 296))();
      FIK::Solver::setTaskParameters(this, *v25, v27);
      v28 = *v25;
      v29 = *(*v25 + 2);
      if (v29 != -1)
      {
        v30 = *(v28 + 6);
        if (v30)
        {
          v31 = (v28 + 64);
          v32 = *(this + 53);
          do
          {
            v33 = *v31++;
            *(v32 + 4 * v29++) = *(this + 139) / v33;
            --v30;
          }

          while (v30);
        }
      }

      ++v25;
    }

    while (v25 != v26);
  }

  *(this + 383) = 1;
  v34 = *(this + 96);
  if (v34)
  {
    FIK::Task::registerTask(v34, *(this + 66), *(this + 54));
    FIK::BalanceTask::updateTasks(*(this + 96), this + 14);
    FIK::BalanceTask::computeDeltaX(*(this + 96), *(this + 86));
    v36 = *(this + 96);
    if (*(v36 + 185) == 1)
    {
      FIK::Solver::setTaskParameters(this, v36, v35);
      v37 = *(this + 96);
      v38 = *(v37 + 8);
      if (v38 != -1)
      {
        v39 = *(v37 + 24);
        if (v39)
        {
          v40 = (v37 + 64);
          v41 = *(this + 53);
          do
          {
            v42 = *v40++;
            *(v41 + 4 * v38++) = *(this + 139) / v42;
            --v39;
          }

          while (v39);
        }
      }
    }

    FIK::Solver::weightMoments(this);
    v43 = *(this + 96);
    if (v43)
    {
      if (*(v43 + 184) == 1)
      {
        v44 = *(this + 80);
        if (v44 >= 3)
        {
          v45 = 0;
          v46 = (v44 - 3);
          if (v46 + 1 > v44)
          {
            v44 = v46 + 1;
          }

          v47 = v44 - v46;
          v48 = vdupq_n_s64(v47 - 1);
          v49 = *(this + 155);
          v50 = (v47 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v51 = (*(this + 53) + 4 * v46 + 8);
          do
          {
            v52 = vdupq_n_s64(v45);
            v53 = vmovn_s64(vcgeq_u64(v48, vorrq_s8(v52, xmmword_245A020B0)));
            if (vuzp1_s16(v53, *v48.i8).u8[0])
            {
              *(v51 - 2) = v49;
            }

            if (vuzp1_s16(v53, *&v48).i8[2])
            {
              *(v51 - 1) = v49;
            }

            if (vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, vorrq_s8(v52, xmmword_245A020A0)))).i32[1])
            {
              *v51 = v49;
              v51[1] = v49;
            }

            v45 += 4;
            v51 += 4;
          }

          while (v50 != v45);
        }
      }
    }
  }

  v54 = *v13;
  if (v54)
  {
    v55 = *(this + 54);
    v56 = *(this + 57);
    v57 = *v13;
    do
    {
      v58 = *v55++;
      *v56++ = v58;
      --v57;
    }

    while (v57);
  }

  *(this + 108) = 0;
  *(this + 224) = v54;
  v59 = *(this + 110);
  if (v59)
  {
    bzero(v59, 4 * v54);
  }

  v60 = *(this + 111);
  if (v60)
  {
    bzero(v60, 4 * *(this + 224));
  }

  bzero(*(this + 62), 4 * *(this + 80));
  v61 = *(this + 5);
  if (v61)
  {
    v62 = *(this + 7);
    v63 = 944 * v61;
    do
    {
      FIK::Segment::registerSegment(v62, this, this + 381, *(this + 55), *(this + 49));
      FIK::Solver::weightSegment(this, v62);
      v62 = (v62 + 944);
      v63 -= 944;
    }

    while (v63);
  }

  if (*(this + 658))
  {
    FIK::Solver::recomputeCGWeights(this);
  }

  v64 = *(this + 13);
  if (v64)
  {
    if (*(v64 + 532) == 1)
    {
      v65 = *(v64 + 533);
    }

    else
    {
      v65 = 0;
    }

    *(this + 380) = v65 & 1;
  }

  result = 1;
  *(this + 381) = 1;
  v66 = *(this + 86);
  *(this + 87) = v66 >> 4;
  v67 = (v66 & 3) == 0;
  v68 = (v66 >> 2) & 3;
  if (!v67)
  {
    ++v68;
  }

  *(this + 88) = v68;
  return result;
}

float32x2_t FIK::Solver::initialiseFIK(FIK::Solver *this)
{
  if (*(this + 652) == 1)
  {
    FIK::Solver::freeMemory(this);
  }

  *(this + 41) = vrev64_s32(vadd_s32((*(this + 40) & 0xFFFFFFFCFFFFFFFCLL), 0x400000004));
  FIK::Solver::allocMasks(this);
  v2 = 4 * *(this + 83) * *(this + 82);
  v3 = (*(**(this + 106) + 16))(*(this + 106), v2, 128);
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    bzero(v3, v2);
  }

  *(this + 65) = v4;
  bzero(v4, 4 * (*(this + 82) * *(this + 83)));
  v6 = *(this + 83);
  v7 = (*(**(this + 106) + 16))(*(this + 106), 8 * v6, 128);
  v8 = v7;
  if (v6 && v7)
  {
    bzero(v7, 8 * v6);
  }

  *(this + 66) = v8;
  v9 = *(this + 83);
  v10 = *(this + 82);
  if (v9)
  {
    v11 = 0;
    v12 = *(this + 65);
    v13 = 8 * v9;
    do
    {
      *(*(this + 66) + v11) = v12;
      v11 += 8;
      v12 += 4 * v10;
    }

    while (v13 != v11);
  }

  v14 = (*(**(this + 106) + 16))(*(this + 106), 4 * v10, 128);
  v15 = v14;
  if (v10 && v14)
  {
    bzero(v14, 4 * v10);
  }

  *(this + 55) = v15;
  bzero(v15, 4 * *(this + 82));
  v16 = *(this + 82);
  v17 = (*(**(this + 106) + 16))(*(this + 106), 4 * v16, 128);
  v18 = v17;
  if (v16 && v17)
  {
    bzero(v17, 4 * v16);
  }

  *(this + 56) = v18;
  bzero(v18, 4 * *(this + 82));
  v19 = *(this + 83);
  v20 = (*(**(this + 106) + 16))(*(this + 106), 4 * v19, 128);
  v21 = v20;
  if (v19 && v20)
  {
    bzero(v20, 4 * v19);
  }

  *(this + 54) = v21;
  bzero(v21, 4 * *(this + 83));
  v22 = *(this + 83);
  v23 = (*(**(this + 106) + 16))(*(this + 106), 4 * v22, 128);
  v24 = v23;
  if (v22 && v23)
  {
    bzero(v23, 4 * v22);
  }

  *(this + 57) = v24;
  FIK::Solver::AuxiliaryAutoTuneParams::allocateZeroed(this + 864, *(this + 106), 4 * *(this + 83));
  v25 = *(this + 83);
  v26 = (*(**(this + 106) + 16))(*(this + 106), 4 * v25, 128);
  v27 = v26;
  if (v25 && v26)
  {
    bzero(v26, 4 * v25);
  }

  *(this + 58) = v27;
  v28 = *(this + 83);
  v29 = (*(**(this + 106) + 16))(*(this + 106), 4 * v28, 128);
  v30 = v29;
  if (v28 && v29)
  {
    bzero(v29, 4 * v28);
  }

  *(this + 59) = v30;
  v31 = *(this + 82);
  v32 = (*(**(this + 106) + 16))(*(this + 106), 4 * v31, 128);
  v33 = v32;
  if (v31 && v32)
  {
    bzero(v32, 4 * v31);
  }

  *(this + 60) = v33;
  v34 = *(this + 82);
  v35 = (*(**(this + 106) + 16))(*(this + 106), 4 * v34, 128);
  v36 = v35;
  if (v34 && v35)
  {
    bzero(v35, 4 * v34);
  }

  *(this + 61) = v36;
  v37 = *(this + 83);
  v38 = (*(**(this + 106) + 16))(*(this + 106), 4 * v37, 128);
  v39 = v38;
  if (v37 && v38)
  {
    bzero(v38, 4 * v37);
  }

  *(this + 62) = v39;
  bzero(v39, 4 * *(this + 83));
  v40 = *(this + 82);
  v41 = (*(**(this + 106) + 16))(*(this + 106), 4 * v40, 128);
  v42 = v41;
  if (v40 && v41)
  {
    bzero(v41, 4 * v40);
  }

  *(this + 49) = v42;
  bzero(v42, 4 * *(this + 82));
  v43 = *(this + 82);
  v44 = (*(**(this + 106) + 16))(*(this + 106), 4 * v43, 128);
  v45 = v44;
  if (v43 && v44)
  {
    bzero(v44, 4 * v43);
  }

  *(this + 63) = v45;
  v46 = *(this + 83);
  v47 = (*(**(this + 106) + 16))(*(this + 106), 4 * v46, 128);
  v48 = v47;
  if (v46 && v47)
  {
    bzero(v47, 4 * v46);
  }

  *(this + 64) = v48;
  v49 = *(this + 83);
  v50 = (*(**(this + 106) + 16))(*(this + 106), 4 * v49, 128);
  v52 = v50;
  if (v49 && v50)
  {
    bzero(v50, 4 * v49);
  }

  *(this + 53) = v52;
  v53 = *(this + 83);
  if (v53)
  {
    v51.i32[0] = *(this + 139);
    v54 = (v53 + 3) & 0x1FFFFFFFCLL;
    v55 = vdupq_n_s64(v53 - 1);
    v56 = xmmword_245A020A0;
    v57 = xmmword_245A020B0;
    v58 = v52 + 8;
    v59 = vdupq_n_s64(4uLL);
    do
    {
      v60 = vmovn_s64(vcgeq_u64(v55, v57));
      if (vuzp1_s16(v60, v51).u8[0])
      {
        *(v58 - 2) = v51.i32[0];
      }

      if (vuzp1_s16(v60, v51).i8[2])
      {
        *(v58 - 1) = v51.i32[0];
      }

      if (vuzp1_s16(v51, vmovn_s64(vcgeq_u64(v55, *&v56))).i32[1])
      {
        *v58 = v51.i32[0];
        v58[1] = v51.i32[0];
      }

      v56 = vaddq_s64(v56, v59);
      v57 = vaddq_s64(v57, v59);
      v58 += 4;
      v54 -= 4;
    }

    while (v54);
  }

  v61 = *(this + 82);
  v62 = (*(**(this + 106) + 16))(*(this + 106), 4 * v61, 128);
  v63 = v62;
  if (v61 && v62)
  {
    bzero(v62, 4 * v61);
  }

  *(this + 50) = v63;
  v64 = *(this + 82);
  if (v64)
  {
    memset_pattern16(v63, &unk_245A020C0, 4 * v64);
  }

  v65 = *(this + 83);
  v66 = (*(**(this + 106) + 16))(*(this + 106), 4 * v65, 128);
  v67 = v66;
  if (v65 && v66)
  {
    bzero(v66, 4 * v65);
  }

  *(this + 51) = v67;
  v68 = (*(this + 160) * 3.366);
  v72 = v68 / 90.0 * (v68 / 90.0);
  v69 = pow(90.0 / v68, 0.1);
  v70.f64[0] = v72;
  v70.f64[1] = v69;
  result = vcvt_f32_f64(vmulq_f64(v70, xmmword_245A02090));
  *(this + 580) = result;
  *(this + 652) = 1;
  return result;
}

float FIK::Solver::setTaskPrecision(FIK::Solver *this, FIK::Task *a2)
{
  v2 = *(a2 + 2);
  if (v2 != -1)
  {
    v3 = *(a2 + 6);
    if (v3)
    {
      v4 = (a2 + 64);
      v5 = *(this + 53);
      do
      {
        v6 = *v4++;
        result = *(this + 139) / v6;
        *(v5 + 4 * v2++) = result;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t FIK::Solver::weightSegment(uint64_t this, FIK::Segment *a2)
{
  v2 = *(this + 400);
  if (v2)
  {
    v3 = 0;
    v4 = *(a2 + 129);
    v5 = *(this + 340);
    v6 = a2 + 808;
    do
    {
      if (v4 >= v5)
      {
        break;
      }

      if (v6[v3] == 1)
      {
        v7 = *&v6[4 * v3 - 272];
        if (v3 >= 3)
        {
          v7 = (v7 * *(this + 580)) * *(this + 576);
        }

        *(v2 + 4 * v4++) = v7;
      }

      ++v3;
    }

    while (v3 != 6);
  }

  return this;
}

uint64_t FIK::Solver::translateRoot(FIK::Solver *this, int a2)
{
  if (*(this + 380) != a2)
  {
    *(this + 381) = 1;
  }

  *(this + 380) = a2;
  result = *(this + 13);
  if (result)
  {
    return FIK::Segment::setTranslating(result, a2, 1);
  }

  return result;
}

void FIK::Solver::computeDerivatives(FIK::Solver *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = 944 * v2;
    do
    {
      if (v3[50].i8[14] == 1)
      {
        FIK::Segment::updateAxes(v3);
      }

      v3 += 59;
      v4 -= 944;
    }

    while (v4);
  }

  v5 = *(this + 96);
  if (v5 && *(v5 + 29) == 1)
  {
    v6 = *(this + 5);
    if (v6)
    {
      v7 = *(this + 7);
      v8 = 944 * v6;
      do
      {
        FIK::Segment::computeAugCenter(v7);
        v7 += 59;
        v8 -= 944;
      }

      while (v8);
      v5 = *(this + 96);
    }

    FIK::BalanceTask::computeDerivatives(v5, *(this + 85), *(this + 86));
  }

  v9 = *(this + 18);
  if (v9)
  {
    v10 = *(this + 20);
    v11 = 8 * v9;
    do
    {
      v12 = *v10;
      if (*(*v10 + 29) == 1 && (*(v12 + 31) & 1) == 0)
      {
        FIK::PositionTask::computeDerivatives(v12, *(this + 85), *(this + 86));
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  v13 = *(this + 22);
  if (v13)
  {
    v14 = *(this + 24);
    v15 = 8 * v13;
    do
    {
      v16 = *v14;
      if ((*v14)[1].i8[13] == 1 && (v16[1].i8[15] & 1) == 0)
      {
        v17 = *(this + 86);
        FIK::OrientationTask::computeDerivatives(v16, *(this + 85));
      }

      ++v14;
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 26);
  if (v18)
  {
    v19 = *(this + 28);
    v20 = 8 * v18;
    do
    {
      v21 = *v19++;
      (*(*v21 + 288))(v21, *(this + 85), *(this + 86));
      v20 -= 8;
    }

    while (v20);
  }
}

float32x4_t FIK::Segment::updateAxes(float32x4_t *this)
{
  _Q0 = this[28];
  LODWORD(_S1) = HIDWORD(this[28].i64[0]);
  _S3 = _Q0.i32[2];
  __asm { FMLS            S2, S3, V0.S[2] }

  _S5 = _Q0.i32[3];
  __asm { FMLA            S2, S5, V0.S[3] }

  v11 = vmuls_lane_f32(_Q0.f32[2], _Q0, 3);
  v12.f32[0] = vmuls_lane_f32(_S1, _Q0, 3);
  v13 = -(v12.f32[0] - (_Q0.f32[0] * _Q0.f32[2])) - (v12.f32[0] - (_Q0.f32[0] * _Q0.f32[2]));
  *(&_D2 + 1) = (v11 + (_Q0.f32[0] * _S1)) + (v11 + (_Q0.f32[0] * _S1));
  *&v14 = -(v11 - (_Q0.f32[0] * _S1)) - (v11 - (_Q0.f32[0] * _S1));
  __asm
  {
    FMLA            S4, S1, V0.S[1]
    FMLA            S4, S5, V0.S[3]
    FMLA            S7, S3, V0.S[1]
  }

  *(&v14 + 1) = _S4 - (_Q0.f32[0] * _Q0.f32[0]);
  v12.f32[1] = -(_Q0.f32[0] * _Q0.f32[3]);
  v18 = vmla_laneq_f32(v12, *_Q0.f32, _Q0, 2);
  __asm
  {
    FMLA            S5, S3, V0.S[2]
    FMLS            S3, S1, V0.S[1]
  }

  this[29].f32[2] = v13;
  this[29].i64[0] = _D2;
  this[30].f32[2] = _S7 + _S7;
  this[30].i64[0] = v14;
  this[31].i32[2] = _S3;
  *this[31].f32 = vadd_f32(v18, v18);
  v21 = this[29];
  v22 = this[30];
  v23 = this[31];
  v24 = vmulq_f32(v21, 0);
  this[20] = vmlaq_f32(vmlaq_f32(v21, 0, v22), 0, v23);
  this[21] = vmlaq_f32(vaddq_f32(v22, v24), 0, v23);
  result = vaddq_f32(v23, vmlaq_f32(v24, 0, v22));
  this[22] = result;
  return result;
}

void FIK::Solver::clampToLimits(FIK::Solver *this)
{
  if (*(this + 663) == 1)
  {
    v2 = *(this + 5);
    if (v2)
    {
      v3 = *(this + 7);
      v4 = 944 * v2;
      do
      {
        FIK::Segment::computeLimitsEnforcement(v3, *(this + 149));
        v3 += 59;
        v4 -= 944;
      }

      while (v4);
    }
  }
}

void FIK::Solver::integrate(FIK::Solver *this, double a2, double a3, double a4)
{
  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(this + 7);
    v7 = 944 * v5;
    do
    {
      if (v6[50].i8[14] == 1)
      {
        FIK::Segment::integrateAngle(v6, a2, a3, a4);
        if ((v6[33].i8[7] & 1) != 0 || v6[33].i8[6] == 1)
        {
          FIK::Segment::getRetargetingError(v6, *(this + 147));
        }

        if (*(this + 661) & 1) == 0 && ((v6[33].i8[7] & 1) != 0 || (v6[33].i8[6]) || (*(this + 663))
        {
          if (v6[33].i8[4] == 1 && v6[51].i8[2] == 1)
          {
            FIK::Segment::getStretchLimitsError(v6, 0, *(this + 146), *(this + 50));
          }
        }

        else
        {
          FIK::Segment::getLimitsError(v6, *(this + 149), *(this + 146), *(this + 50));
        }
      }

      v6 += 59;
      v7 -= 944;
    }

    while (v7);
  }

  *(this + 653) = 0;
}

float FIK::anonymous namespace::vectorMaxAbsElement(FIK::_anonymous_namespace_ *this, const float *a2)
{
  v2 = a2 & 0xFFFFFFFC;
  if ((a2 & 0xFFFFFFFC) != 0)
  {
    v3 = 0;
    v4 = 0uLL;
    v5 = this;
    do
    {
      v6 = *v5;
      v5 = (v5 + 16);
      v4 = vmaxnmq_f32((v6 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v4);
      v3 += 4;
    }

    while (v3 < v2);
  }

  else
  {
    v4 = 0uLL;
  }

  result = vmaxvq_f32(v4);
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) != 2)
    {
      v8 = fabsf(*(this + (v2 | 2)));
      if (v8 >= result)
      {
        result = v8;
      }
    }

    v9 = fabsf(*(this + (v2 | 1)));
    if (v9 >= result)
    {
      result = v9;
    }
  }

  else if ((a2 & 3) == 0)
  {
    return result;
  }

  v10 = fabsf(*(this + v2));
  if (v10 >= result)
  {
    return v10;
  }

  return result;
}

float32x4_t *FIK::Solver::updateFkOfActiveBones(float32x4_t *this)
{
  v1 = this[4].i64[1];
  if (v1)
  {
    v2 = *(this[6].i64[1] + 520);
    v3 = this[5].i64[1];
    v4 = 4 * v1;
    v5.i64[0] = 0x4000000040000000;
    v5.i64[1] = 0x4000000040000000;
    do
    {
      v6 = this[3].i64[1] + 944 * *v3;
      if (*(v6 + 814) == 1)
      {
        if (*v3 == v2)
        {
          v7 = *(v6 + 96);
          v8 = *(v6 + 240);
          v9 = vnegq_f32(v8);
          v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
          v11 = this[19];
          v12 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v11.f32, 1), vextq_s8(v10, v10, 8uLL), v11.f32[0]);
          v13 = vrev64q_s32(v8);
          v13.i32[0] = v9.i32[1];
          v13.i32[3] = v9.i32[2];
          v14 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v8, v11, 3), v13, v11, 2), v12);
          v15 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
          v16 = vnegq_f32(v11);
          v17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), v16), v7, v15);
          v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
          v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v16), v18, v15);
          v20 = vaddq_f32(this[18], vmlaq_f32(v7, v5, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v18, v11, 3)));
          *(v6 + 432) = v20;
          *(v6 + 448) = v14;
          *(v6 + 416) = v20;
        }

        else
        {
          v21 = *(v6 + 32);
          v22 = *(v6 + 96);
          v23 = *(v6 + 240);
          v24 = vnegq_f32(v23);
          v25 = vtrn2q_s32(v23, vtrn1q_s32(v23, v24));
          v26 = v21[28];
          v27 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v23, v24, 8uLL), *v26.f32, 1), vextq_s8(v25, v25, 8uLL), v26.f32[0]);
          v28 = vrev64q_s32(v23);
          v28.i32[0] = v24.i32[1];
          v28.i32[3] = v24.i32[2];
          v14 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v23, v26, 3), v28, v26, 2), v27);
          v29 = vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL);
          v30 = vnegq_f32(v26);
          v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v30), v22, v29);
          v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
          v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v30), v32, v29);
          v20 = vaddq_f32(v21[27], vmlaq_f32(v22, v5, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), v32, v26, 3)));
          *(v6 + 432) = v20;
          *(v6 + 448) = v14;
          *(v6 + 416) = v20;
          *(v6 + 636) = (v21[39].f32[3] + v21[25].f32[0]) + v21[25].f32[1];
        }

        *(v6 + 815) = 0;
        v34 = *(v6 + 880);
        v35 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
        v36 = vnegq_f32(v14);
        v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v36), v34, v35);
        v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
        v39 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL), v36), v38, v35);
        *(v6 + 896) = vaddq_f32(v20, vmlaq_f32(v34, v5, vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), v38, v14, 3)));
      }

      ++v3;
      v4 -= 4;
    }

    while (v4);
  }

  return this;
}

uint64_t FIK::Solver::solve(FIK::Solver *this, unsigned int a2)
{
  kdebug_trace();
  v37 = 0.0;
  if (*(this + 382) == 1)
  {
    FIK::Solver::setup(this);
  }

  if (*(this + 381) == 1)
  {
    FIK::Solver::findZeros(this);
  }

  bzero(*(this + 49), 4 * *(this + 85));
  v4 = *(this + 5);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 7);
    v7 = 944 * v4;
    v8 = 1;
    v9 = 1;
    while ((v9 & 1) != 0)
    {
      if (v6[50].i8[14])
      {
        v9 = 1;
        if ((v8 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v10 = v6[4].i64[1];
        if (!v10)
        {
          break;
        }

        v9 = *(v10 + 814) ^ 1;
        if ((v8 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_15:
      if (v6[50].i8[8] == 1 && v6[50].i8[9] == 1 && v6[50].i8[10] == 1)
      {
        if (v6 == *(this + 13))
        {
          v8 = 1;
        }

        else
        {
          v8 = v6[33].i8[4] ^ 1;
        }

        goto LABEL_21;
      }

LABEL_20:
      v8 = 0;
LABEL_21:
      if ((v6[33].i8[7] & 1) != 0 || v6[33].i8[6] == 1)
      {
        if (v6[50].i8[14] == 1)
        {
          FIK::Segment::getRetargetingError(v6, *(this + 147));
        }

        v5 = 1;
      }

      else if (v6[50].i8[14] == 1 && (*(this + 663) & 1) == 0)
      {
        FIK::Segment::getLimitsError(v6, *(this + 149), *(this + 146), *(this + 50));
      }

      v6 += 59;
      v7 -= 944;
      if (!v7)
      {
        goto LABEL_33;
      }
    }

    v9 = 0;
    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v5 = 0;
  v9 = 1;
  v8 = 1;
LABEL_33:
  v11 = *(this + 18);
  if (v11)
  {
    v12 = *(this + 20);
    v13 = 8 * v11;
    do
    {
      v14 = *v12++;
      FIK::PositionTask::queryAffectedSegments(v14);
      v13 -= 8;
    }

    while (v13);
  }

  v15 = *(this + 96);
  if (v15)
  {
    v16 = *(v15 + 29);
  }

  else
  {
    v16 = 0;
  }

  v17 = v8 & (v16 ^ 1);
  v18 = *(this + 16);
  v19 = *(this + 14);
  if (v5)
  {
    if (v19)
    {
      v20 = 8 * v19;
      do
      {
        v21 = *v18;
        if (*(*v18 + 29) == 1)
        {
          v21[30] = 0;
          (*(*v21 + 264))(v21, v17 & 1);
        }

        v18 += 8;
        v20 -= 8;
      }

      while (v20);
    }
  }

  else if (v19)
  {
    v22 = 8 * v19;
    do
    {
      v23 = *v18;
      v18 += 8;
      v23[30] = 0;
      (*(*v23 + 264))(v23, v17 & 1);
      v22 -= 8;
    }

    while (v22);
  }

  if (v16)
  {
    if (*(this + 654) == 1 && *(*(this + 96) + 184) == 1)
    {
      FIK::Solver::balanceForces(this);
    }

    v24 = *(this + 97);
    if (v24)
    {
      v25 = v24[11];
      *(this + 49) = v25;
      *(this + 18) = vnegq_f32(v25);
    }
  }

  v36 = 1.0;
  *(this + 84) = 0;
  if (a2)
  {
    while (1)
    {
      *(this + 162) = 0;
      if (v9)
      {
        FIK::Solver::updateFkOfActiveBones(this);
      }

      else
      {
        FIK::Solver::updateForwardFromRoot(this, 0);
      }

      FIK::Solver::computeDerivatives(this);
      if (!*(this + 84))
      {
        FIK::Solver::updateReach(this);
      }

      FIK::Solver::invertFIKCombined(this);
      FIK::Solver::clampToLimits(this);
      if (!FIK::Solver::CheckSolve(this, &v37, &v36))
      {
        break;
      }

      if (*(this + 84))
      {
        LODWORD(v26) = *(this + 137);
        LODWORD(v27) = *(this + 138);
        if (*&v26 < *&v27)
        {
          FIK::Segment::integrateAngle(*(this + 13), v26, v27, v28);
          *(this + 653) = 0;
          goto LABEL_65;
        }
      }

      bzero(*(this + 49), 4 * *(this + 85));
      FIK::Solver::integrate(this, v29, v30, v31);
      v32 = *(this + 84) + 1;
      *(this + 84) = v32;
      if (v32 >= a2)
      {
        goto LABEL_65;
      }
    }

    FIK::Solver::solve(&v38);
    v34 = v38;
  }

  else
  {
LABEL_65:
    *(this + 47) = vaddq_f32(*(*(this + 13) + 96), *(*(this + 13) + 912));
    FIK::Solver::updateForwardFromRoot(this, 0);
    v33 = *(this + 84);
    kdebug_trace();
    v34 = 1;
  }

  kdebug_trace();
  return v34;
}

uint64_t FIK::Solver::findZeros(FIK::Solver *this)
{
  *(this + 173) = 0;
  bzero(*(this + 65), 4 * (*(this + 81) * *(this + 80)));
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 16);
    v4 = 8 * v2;
    do
    {
      if (*(*v3 + 29) == 1)
      {
        (*(**v3 + 272))(*v3, *(this + 85), *(this + 86));
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  result = *(this + 96);
  if (result && *(result + 29) == 1)
  {
    result = FIK::BalanceTask::fillJacobian(result, *(this + 85), *(this + 86));
  }

  if (*(this + 86))
  {
    v6 = 0;
    v7 = 0;
    v8 = *(this + 88);
    do
    {
      v9 = *(this + 85);
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        v12 = *(*(this + 66) + 8 * v6);
        do
        {
          if (*(v12 + 4 * v10) != 0.0)
          {
            v13 = v10 & 0xFFFFFFFC;
            v14 = *(this + 87);
            v15 = v7;
            if (!v11 || !v7 || (result = *(v14 + 4 * v7 - 4), result != v13))
            {
              ++v7;
              *(v14 + 4 * v15) = v13;
              ++v11;
              v9 = *(this + 85);
            }
          }

          ++v10;
        }

        while (v10 < v9);
      }

      else
      {
        v11 = 0;
      }

      *(v8 + 4 * v6++) = v11;
    }

    while (v6 < *(this + 86));
  }

  *(this + 381) = 0;
  return result;
}

uint64_t FIK::Solver::balanceForces(uint64_t this)
{
  v1 = *(this + 144);
  if (!v1)
  {
    if ((*(this + 660) & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v2 = *(this + 160);
  v3 = *(*(this + 768) + 224);
  v4 = 8 * v1;
  v5 = 8 * v1;
  v6 = v2;
  do
  {
    v7 = *v6;
    if ((*v6)[1].i8[13] == 1 && v7[18].i8[1] == 1 && (v7[18].i8[2] & 1) == 0)
    {
      v3 = vaddq_f32(v3, v7[15]);
    }

    ++v6;
    v5 -= 8;
  }

  while (v5);
  v8 = *(this + 660);
  v9 = vnegq_f32(v3);
  do
  {
    v10 = *v2;
    if ((*v2)[1].i8[13] == 1 && v10[18].i8[2] == 1)
    {
      v10[15] = vmulq_n_f32(v9, v10[20].f32[2]);
      if (v8)
      {
        if ((*v2)[2].u8[1] + (*v2)[2].u8[0] + (*v2)[2].u8[2] == 3)
        {
          LOBYTE(v8) = 0;
          *(this + 776) = *v2;
        }

        else
        {
          LOBYTE(v8) = 1;
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    ++v2;
    v4 -= 8;
  }

  while (v4);
  if (v8)
  {
LABEL_18:
    *(this + 792) = 0;
    *(this + 776) = 0u;
  }

LABEL_19:
  *(this + 654) = 0;
  return this;
}

void FIK::Solver::invertFIKCombined(FIK::Solver *this)
{
  *(this + 137) = 0;
  bzero(*(this + 56), 4 * *(this + 85));
  bzero(*(this + 63), 4 * *(this + 85));
  v4 = *(this + 86);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(this + 84) + 4 * v5);
      v8 = *(this + 64);
      if (v7)
      {
        v9 = (*(this + 83) + 4 * v6);
        v10 = *(this + 56);
        v11 = *(*(this + 51) + 4 * v5);
        v12 = *(this + 63);
        v2.f32[0] = *(*(this + 57) + 4 * v5) * v11;
        v3.f32[0] = v11 * *(*(this + 62) + 4 * v5);
        v13 = *(*(this + 66) + 8 * v5);
        v14 = *(this + 49);
        v15 = vdupq_lane_s32(v2, 0);
        v3 = vdupq_lane_s32(*v3.f32, 0);
        v16 = 0uLL;
        v17 = *(*(this + 84) + 4 * v5);
        do
        {
          v18 = *v9++;
          v19 = 4 * v18;
          *(v10 + v19) = vmlaq_f32(*(v10 + v19), v15, *(v13 + v19));
          *(v12 + v19) = vmlaq_f32(*(v12 + v19), v3, *(v13 + v19));
          v16 = vmlaq_f32(v16, *(v14 + v19), *(v13 + v19));
          --v17;
        }

        while (v17);
        v4 = *(this + 86);
      }

      else
      {
        v16 = 0uLL;
      }

      v6 += v7;
      v2 = vadd_f32(*v16.f32, *&vextq_s8(v16, v16, 8uLL));
      *(v8 + 4 * v5++) = vaddv_f32(v2);
    }

    while (v5 < v4);
  }

  v20 = *(this + 86);
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    v23 = *(this + 83);
    v24 = *(this + 84);
    v25 = *(this + 66);
    v26 = *(this + 56);
    v27 = *(this + 54);
    v28 = *(this + 63);
    v29 = *(this + 64);
    v30 = *(this + 58);
    v31 = *(this + 59);
    do
    {
      v32 = *(v24 + 4 * v21);
      if (v32)
      {
        v33 = 0uLL;
        v34 = *(v24 + 4 * v21);
        v35 = 0uLL;
        v36 = (v23 + 4 * v22);
        do
        {
          v37 = *v36++;
          v38 = 4 * v37;
          v39 = *(*(v25 + 8 * v21) + v38);
          v33 = vmlaq_f32(v33, *(v26 + v38), v39);
          v35 = vmlaq_f32(v35, *(v28 + v38), v39);
          --v34;
        }

        while (v34);
      }

      else
      {
        v35 = 0uLL;
        v33 = 0uLL;
      }

      v22 += v32;
      v30[v21] = *(v27 + 4 * v21) - vaddv_f32(vadd_f32(*v33.f32, *&vextq_s8(v33, v33, 8uLL)));
      *(v31 + 4 * v21) = *(v29 + 4 * v21) - vaddv_f32(vadd_f32(*v35.f32, *&vextq_s8(v35, v35, 8uLL)));
      v21 = (v21 + 1);
    }

    while (v21 != v20);
  }

  else
  {
    v30 = *(this + 58);
  }

  v40 = *(this + 55);
  v41 = *(this + 56);
  v42 = *(this + 49);
  v43 = *(this + 63);
  v44 = *(this + 85) & 3;
  v45 = *(this + 85) & 0xFFFFFFFC;
  if (v45)
  {
    v46 = 0;
    v47 = *(this + 55);
    v48 = *(this + 56);
    v49 = *(this + 49);
    v50 = *(this + 63);
    do
    {
      v51 = *v48++;
      v52 = v51;
      v53 = *v49++;
      v54 = v53;
      v55 = *v50++;
      *v47++ = vsubq_f32(vaddq_f32(v52, v54), v55);
      v46 += 4;
    }

    while (v46 < v45);
  }

  if (v44 > 1)
  {
    if (v44 != 2)
    {
      *(v40 + 4 * (v45 | 2)) = (*(v41 + 4 * (v45 | 2)) + *(v42 + 4 * (v45 | 2))) - *(v43 + 4 * (v45 | 2));
    }

    *(v40 + 4 * (v45 | 1)) = (*(v41 + 4 * (v45 | 1)) + *(v42 + 4 * (v45 | 1))) - *(v43 + 4 * (v45 | 1));
  }

  else if (!v44)
  {
    goto LABEL_29;
  }

  *(v40 + 4 * v45) = (*(v41 + 4 * v45) + *(v42 + 4 * v45)) - *(v43 + 4 * v45);
LABEL_29:
}

BOOL FIK::Solver::solveWithAuxiliaryAutoTune(FIK::Solver *this, unsigned int a2)
{
  kdebug_trace();
  if (*(this + 382) == 1)
  {
    FIK::Solver::setup(this);
  }

  if (*(this + 381) == 1)
  {
    FIK::Solver::findZeros(this);
  }

  bzero(*(this + 49), 4 * *(this + 85));
  v4 = *(this + 5);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 7);
    v7 = 944 * v4;
    v8 = 1;
    v9 = 1;
    while ((v9 & 1) != 0)
    {
      if (v6[50].i8[14])
      {
        v9 = 1;
        if ((v8 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v10 = v6[4].i64[1];
        if (!v10)
        {
          break;
        }

        v9 = *(v10 + 814) ^ 1;
        if ((v8 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_15:
      if (v6[50].i8[8] == 1 && v6[50].i8[9] == 1 && v6[50].i8[10] == 1)
      {
        if (v6 == *(this + 13))
        {
          v8 = 1;
        }

        else
        {
          v8 = v6[33].i8[4] ^ 1;
        }

        goto LABEL_21;
      }

LABEL_20:
      v8 = 0;
LABEL_21:
      if ((v6[33].i8[7] & 1) != 0 || v6[33].i8[6] == 1)
      {
        if (v6[50].i8[14] == 1)
        {
          FIK::Segment::getRetargetingError(v6, *(this + 147));
        }

        v5 = 1;
      }

      else if (v6[50].i8[14] == 1 && (*(this + 663) & 1) == 0)
      {
        FIK::Segment::getLimitsError(v6, *(this + 149), *(this + 146), *(this + 50));
      }

      v6 += 59;
      v7 -= 944;
      if (!v7)
      {
        goto LABEL_33;
      }
    }

    v9 = 0;
    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v5 = 0;
  v9 = 1;
  v8 = 1;
LABEL_33:
  v11 = *(this + 18);
  if (v11)
  {
    v12 = *(this + 20);
    v13 = 8 * v11;
    do
    {
      v14 = *v12++;
      FIK::PositionTask::queryAffectedSegments(v14);
      v13 -= 8;
    }

    while (v13);
  }

  v15 = *(this + 96);
  if (v15)
  {
    v16 = *(v15 + 29);
  }

  else
  {
    v16 = 0;
  }

  v17 = v8 & (v16 ^ 1);
  v18 = *(this + 16);
  v19 = *(this + 14);
  if (v5)
  {
    if (v19)
    {
      v20 = 8 * v19;
      do
      {
        v21 = *v18;
        if (*(*v18 + 29) == 1)
        {
          v21[30] = 0;
          (*(*v21 + 264))(v21, v17 & 1);
        }

        v18 += 8;
        v20 -= 8;
      }

      while (v20);
    }
  }

  else if (v19)
  {
    v22 = 8 * v19;
    do
    {
      v23 = *v18;
      v18 += 8;
      v23[30] = 0;
      (*(*v23 + 264))(v23, v17 & 1);
      v22 -= 8;
    }

    while (v22);
  }

  if (v16)
  {
    if (*(this + 654) == 1 && *(*(this + 96) + 184) == 1)
    {
      FIK::Solver::balanceForces(this);
    }

    v24 = *(this + 97);
    if (v24)
    {
      v25 = v24[11];
      *(this + 49) = v25;
      *(this + 18) = vnegq_f32(v25);
    }
  }

  FIK::Solver::setHasAnyRetargeting(this);
  *(this + 84) = 0;
  v26 = 0.0;
  if (a2)
  {
    while (1)
    {
      *(this + 162) = 0;
      if (v9)
      {
        FIK::Solver::updateFkOfActiveBones(this);
      }

      else
      {
        FIK::Solver::updateForwardFromRoot(this, 0);
      }

      FIK::Solver::computeDerivatives(this);
      if (!*(this + 84))
      {
        FIK::Solver::updateReach(this);
      }

      FIK::Solver::invertFIKCombined(this);
      FIK::Solver::auxiliaryAutoTune(this);
      FIK::Solver::clampToLimits(this);
      if (*(this + 84))
      {
        LODWORD(v27) = *(this + 137);
        LODWORD(v28) = *(this + 138);
        if (*&v27 < *&v28)
        {
          break;
        }
      }

      bzero(*(this + 49), 4 * *(this + 85));
      FIK::Solver::integrate(this, v30, v31, v32);
      *(this + 217) = *(this + 216);
      v33 = *(this + 84) + 1;
      *(this + 84) = v33;
      if (v33 >= a2)
      {
        goto LABEL_66;
      }
    }

    FIK::Segment::integrateAngle(*(this + 13), v27, v28, v29);
    *(this + 653) = 0;
  }

LABEL_66:
  *(this + 47) = vaddq_f32(*(*(this + 13) + 96), *(*(this + 13) + 912));
  FIK::Solver::updateForwardFromRoot(this, 0);
  v34 = *(this + 84);
  kdebug_trace();
  if (a2)
  {
    FIK::Solver::computeDerivatives(this);
  }

  else
  {
    v35 = 1;
  }

  kdebug_trace();
  return v35;
}

float32x4_t *FIK::Solver::updateFK(float32x4_t *this)
{
  if (this[6].i64[1])
  {
    return FIK::Solver::updateForwardFromRoot(this, 0);
  }

  return this;
}

void FIK::Solver::allocMasks(FIK::Solver *this)
{
  v2 = *(this + 87);
  if (v2)
  {
    (*(**(this + 106) + 24))(*(this + 106), v2, 0, 8);
  }

  v3 = *(this + 88);
  if (v3)
  {
    (*(**(this + 106) + 24))(*(this + 106), v3, 0, 8);
  }

  *(this + 664) = 0u;
  *(this + 87) = 0;
  *(this + 88) = 0;
  v4 = *(this + 91);
  if (v4)
  {
    (*(**(this + 106) + 24))(*(this + 106), v4, 0, 8);
  }

  *(this + 91) = 0;
  v5 = 4 * *(this + 80) * (*(this + 82) >> 2);
  v6 = (*(**(this + 106) + 16))(*(this + 106), v5, 128);
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    bzero(v6, v5);
  }

  *(this + 83) = v7;
  *(this + 87) = v7;
  v9 = *(this + 80);
  v10 = (*(**(this + 106) + 16))(*(this + 106), 4 * v9, 128);
  v11 = v10;
  if (v9 && v10)
  {
    bzero(v10, 4 * v9);
  }

  *(this + 84) = v11;
  *(this + 88) = v11;
  v12 = 4 * *(this + 83) * *(this + 81);
  v13 = (*(**(this + 106) + 16))(*(this + 106), v12, 128);
  v14 = v13;
  if (v12 && v13)
  {
    bzero(v13, v12);
  }

  *(this + 35) = v14;
  *(this + 91) = v14;
}

void FIK::Solver::AuxiliaryAutoTuneParams::allocateZeroed(uint64_t a1, uint64_t a2, size_t a3)
{
  v6 = (*(*a2 + 16))(a2, a3, 128);
  v7 = v6;
  if (a3 && v6)
  {
    bzero(v6, a3);
  }

  *(a1 + 16) = v7;
  v8 = (*(*a2 + 16))(a2, a3, 128);
  v9 = v8;
  if (a3 && v8)
  {
    bzero(v8, a3);
  }

  *(a1 + 24) = v9;
}

float32_t FIK::anonymous namespace::vectorMul(float32x4_t *this, float *a2, const float *a3)
{
  v3 = a3 & 0xFFFFFFFC;
  if ((a3 & 0xFFFFFFFC) != 0)
  {
    v4 = 0;
    v5 = a2;
    v6 = this;
    do
    {
      v7 = *v5;
      v5 += 4;
      v8 = vmulq_f32(*v6, v7);
      *v6++ = v8;
      v4 += 4;
    }

    while (v4 < v3);
  }

  if ((a3 & 3u) > 1)
  {
    if ((a3 & 3) != 2)
    {
      this->f32[v3 | 2] = a2[v3 | 2] * this->f32[v3 | 2];
    }

    this->f32[v3 | 1] = a2[v3 | 1] * this->f32[v3 | 1];
  }

  else if ((a3 & 3) == 0)
  {
    return v8.f32[0];
  }

  v8.f32[0] = a2[v3] * this->f32[v3];
  this->i32[v3] = v8.i32[0];
  return v8.f32[0];
}

float32_t FIK::anonymous namespace::vectorAddMulAdd(float32x4_t *this, float *a2, const float *a3, const float *a4)
{
  v4 = a4 & 0xFFFFFFFC;
  if ((a4 & 0xFFFFFFFC) != 0)
  {
    v5 = 0;
    v6 = a3;
    v7 = a2;
    v8 = this;
    do
    {
      v9 = *v8;
      v10 = *v7;
      v7 += 4;
      v11 = v10;
      v12 = *v6;
      v6 += 4;
      *v8 = vmlaq_f32(vaddq_f32(*v8, v12), v11, *v8);
      ++v8;
      v5 += 4;
    }

    while (v5 < v4);
  }

  if ((a4 & 3u) > 1)
  {
    if ((a4 & 3) != 2)
    {
      v13 = v4 | 2;
      this->f32[v13] = this->f32[v13] + (a3[v13] + (this->f32[v13] * a2[v13]));
    }

    v14 = v4 | 1;
    this->f32[v14] = this->f32[v14] + (a3[v14] + (this->f32[v14] * a2[v14]));
  }

  else if ((a4 & 3) == 0)
  {
    return v9.f32[0];
  }

  v9.f32[0] = this->f32[v4] + (a3[v4] + (this->f32[v4] * a2[v4]));
  this->i32[v4] = v9.i32[0];
  return v9.f32[0];
}

unint64_t *FIK::constructWalkSequenceFromBones@<X0>(unint64_t *a1@<X0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = FIK::defaultAllocator(a1);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = v7;
  v14 = 0;
  result = FIK::IKArray<unsigned int>::resize(a3, v6, &v14);
  v9 = a3[2];
  *v9 = a2;
  if (v6 >= 2)
  {
    v10 = 0;
    v11 = a1[2];
    v12 = 1;
    do
    {
      for (i = *(v11 + 944 * v9[v10] + 72); i; i = *(i + 80))
      {
        v9[v12++] = *(i + 520);
      }

      ++v10;
    }

    while (v6 > v12);
  }

  return result;
}

__n128 FIK::Solver::importBones(__n128 *this, const FIK::ImportBone *a2, unint64_t a3)
{
  FIK::Segment::Segment(&v36, 3u, 0);
  FIK::IKArray<FIK::Segment>::resize(&this[2].n128_i64[1], a3, &v36);
  FIK::Segment::~Segment(&v36, v6);
  FIK::FIKRedBlackTree<IKString,FIK::Segment *>::clear(this);
  if (this[7].n128_u64[0])
  {
    FIK::Solver::freeTasks(this);
    this[7].n128_u64[0] = 0;
    this[9].n128_u64[0] = 0;
    this[11].n128_u64[0] = 0;
  }

  if (a3)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = a2 + 144 * v7;
      v10 = (this[3].n128_u64[1] + 944 * v7);
      v10[32].n128_u32[2] = v8;
      if (*(v9 + 1))
      {
        v11 = *v9;
      }

      else
      {
        v11 = &unk_245A04BAE;
      }

      v12 = strlen(v11);
      IKString::assign(&v10->n128_u64[1], v11, v12);
      IKString::IKString(&v33, v9);
      FIK::FIKRedBlackTree<IKString,FIK::Segment *>::InsertKey(this, &v33, v10);
      if (v34)
      {
        (*(*v35 + 24))(v35, v33, 0, 8);
        v33 = 0;
        v34 = 0;
      }

      v13 = (a2 + 144 * v8 + 116);
      v36 = vextq_s8(*(v9 + 60), *(v9 + 60), 4uLL);
      FIK::Segment::setRestOrientation(v10, &v36);
      v14 = *(v9 + 14);
      v36.i64[0] = *(v9 + 6);
      v36.i64[1] = v14;
      FIK::Segment::setRestTranslation(v10, &v36);
      for (i = 0; i != 4; ++i)
      {
        FIK::Segment::setLimits(v10, i, *(v13 - 1), *v13);
        v13 += 2;
      }

      FIK::Segment::setProjectionAxis(v10, *(v9 + 22));
      v16 = *(v9 + 23);
      if (v16 < 3)
      {
        break;
      }

      if (v16 == 3)
      {
        v18 = (v9 + 100);
        v17 = v10;
        v16 = 3;
        goto LABEL_16;
      }

LABEL_17:
      FIK::Segment::enforceLimits(v10, v9[96]);
      FIK::Segment::setSegAddErrors(v10, this[41].n128_i8[5]);
      FIK::Segment::enableLimits(v10, 1);
      v10[58].n128_u64[1] = *(v9 + 10);
      FIK::Segment::registerSegment(v10, this, &this[23].n128_i64[1] + 5, this[27].n128_i64[1], this[24].n128_i64[1]);
      v7 = ++v8;
      if (v8 >= a3)
      {
        v19 = 0;
        v20 = (a2 + 24);
        v21 = 1;
        do
        {
          v22 = (this[3].n128_u64[1] + v19);
          Key = FIK::FIKRedBlackTree<IKString,FIK::Segment *>::FindKey(this, v20);
          if (Key)
          {
            FIK::Segment::setParent(v22, *Key);
          }

          else
          {
            this[6].n128_u64[1] = v22;
          }

          v24 = v21;
          v20 += 18;
          v19 += 944;
          ++v21;
        }

        while (v24 < a3);
        goto LABEL_23;
      }
    }

    v17 = v10;
    v18 = 0;
LABEL_16:
    FIK::Segment::setRotationAxis(v17, v16, v18);
    goto LABEL_17;
  }

LABEL_23:
  FIK::Solver::computeScale(this);
  this[23].n128_u8[14] = 1;
  this[41].n128_u16[1] = 257;
  this[40].n128_u32[1] = 0;
  if (a3)
  {
    v26 = (a2 + 56);
    v27 = 0.0;
    v28 = 1;
    do
    {
      v25.i64[0] = *(v26 - 1);
      v25.i32[2] = *v26;
      v25 = vmulq_f32(v25, v25);
      v27 = v27 + sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
      this[40].n128_f32[1] = v27;
      v29 = v28;
      v26 += 36;
      ++v28;
    }

    while (v29 < a3);
  }

  FIK::constructWalkSequenceFromBones(&this[2].n128_u64[1], *(this[6].n128_u64[1] + 520), &v36);
  FIK::IKArray<unsigned int>::operator=(&this[4].n128_i64[1], v36.i8);
  v36.i64[0] = 0;
  if (v37)
  {
    (*(*v38 + 24))(v38, v37, 0, 8);
  }

  v30 = this[3].n128_u64[1];
  result = *(v30 + 96);
  v32 = *(v30 + 240);
  this[51] = result;
  this[52] = v32;
  return result;
}

void FIK::IKArray<FIK::Segment>::resize(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 <= a2)
  {
    FIK::IKArray<FIK::Segment>::reserve(a1, a2);
    v11 = (a2 - *a1);
    if (a2 != *a1)
    {
      v12 = a1[2] + 944 * *a1;
      do
      {
        *v12 = &unk_285898908;
        IKString::IKString((v12 + 8), (a3 + 8));
        *(v12 + 32) = *(a3 + 32);
        FIK::IKArray<FIK::Task *>::IKArray((v12 + 40), (a3 + 40));
        *(v12 + 72) = *(a3 + 72);
        *(v12 + 96) = *(a3 + 96);
        v13 = *(a3 + 192);
        v15 = *(a3 + 144);
        v14 = *(a3 + 160);
        *(v12 + 176) = *(a3 + 176);
        *(v12 + 192) = v13;
        *(v12 + 144) = v15;
        *(v12 + 160) = v14;
        v16 = *(a3 + 128);
        *(v12 + 112) = *(a3 + 112);
        *(v12 + 128) = v16;
        *(v12 + 208) = *(a3 + 208);
        *(v12 + 224) = *(a3 + 224);
        *(v12 + 240) = *(a3 + 240);
        *(v12 + 256) = *(a3 + 256);
        v17 = *(a3 + 272);
        v18 = *(a3 + 304);
        *(v12 + 288) = *(a3 + 288);
        *(v12 + 304) = v18;
        *(v12 + 272) = v17;
        for (i = 320; i != 368; i += 16)
        {
          *(v12 + i) = *(a3 + i);
        }

        *(v12 + 368) = *(a3 + 368);
        *(v12 + 384) = *(a3 + 384);
        *(v12 + 400) = *(a3 + 400);
        *(v12 + 416) = *(a3 + 416);
        *(v12 + 432) = *(a3 + 432);
        *(v12 + 448) = *(a3 + 448);
        v20 = *(a3 + 464);
        v21 = *(a3 + 496);
        *(v12 + 480) = *(a3 + 480);
        *(v12 + 496) = v21;
        *(v12 + 464) = v20;
        v22 = *(a3 + 512);
        v23 = *(a3 + 528);
        v24 = *(a3 + 560);
        *(v12 + 544) = *(a3 + 544);
        *(v12 + 560) = v24;
        *(v12 + 512) = v22;
        *(v12 + 528) = v23;
        *(v12 + 576) = *(a3 + 576);
        *(v12 + 592) = *(a3 + 592);
        v25 = *(a3 + 608);
        v26 = *(a3 + 640);
        *(v12 + 624) = *(a3 + 624);
        *(v12 + 640) = v26;
        *(v12 + 608) = v25;
        v27 = *(a3 + 656);
        v28 = *(a3 + 672);
        v29 = *(a3 + 704);
        *(v12 + 688) = *(a3 + 688);
        *(v12 + 704) = v29;
        *(v12 + 656) = v27;
        *(v12 + 672) = v28;
        v30 = *(a3 + 720);
        v31 = *(a3 + 736);
        v32 = *(a3 + 768);
        *(v12 + 752) = *(a3 + 752);
        *(v12 + 768) = v32;
        *(v12 + 720) = v30;
        *(v12 + 736) = v31;
        *(v12 + 784) = *(a3 + 784);
        v33 = *(a3 + 800);
        *(v12 + 810) = *(a3 + 810);
        *(v12 + 800) = v33;
        *(v12 + 832) = *(a3 + 832);
        *(v12 + 848) = *(a3 + 848);
        *(v12 + 864) = *(a3 + 864);
        *(v12 + 880) = *(a3 + 880);
        *(v12 + 896) = *(a3 + 896);
        *(v12 + 912) = *(a3 + 912);
        *(v12 + 928) = *(a3 + 928);
        v12 += 944;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v6 = (a1[2] + 944 * a2);
    v7 = (a2 - v5);
    do
    {
      FIK::Segment::~Segment(v6, a2);
      v6 = (v8 + 944);
    }

    while (!__CFADD__(v7++, 1));
  }

  *a1 = a2;
}

void *FIK::FIKRedBlackTree<IKString,FIK::Segment *>::InsertKey(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v8 = a3;
  v4 = FIK::Allocator::create<FIK::FIKRedBlackTree<IKString,FIK::Segment *>::Node,IKString,FIK::Segment *>(a1[4], a2, &v8);
  FIK::FIKRedBlackTree<IKString,FIK::Segment *>::InsertBinaryTree(v3, v4);
  FIK::FIKRedBlackTree<IKString,FIK::Segment *>::InsertFixup(v3, v4);
  v5 = v3[1];
  result = FIK::IKArray<FIK::Segment *>::reserve(++v3, v5 + 1);
  v7 = *v3;
  *(v3[2] + 8 * *v3) = v4;
  *v3 = v7 + 1;
  return result;
}

void IKString::IKString(IKString *this, const IKString *a2)
{
  v4 = *(a2 + 2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v4;
  v6 = *a2;
  v5 = *(a2 + 1);
  if (v5)
  {
    v7 = *a2;
  }

  else
  {
    v7 = &unk_245A04BAE;
  }

  IKString::assign(this, v7, v5);
  v9 = *a2;
  v8 = *(a2 + 1);
  if (v8)
  {
    v10 = *a2;
  }

  else
  {
    v10 = &unk_245A04BAE;
  }

  IKString::assign(this, v10, v8);
}

uint64_t FIK::IKArray<unsigned int>::operator=(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 16) = v4;
  if (v6)
  {
    (*(*v5 + 24))(v5, v6, 0, 8);
  }

  return a1;
}

float FIK::Solver::setPrecision(FIK::Solver *this, float a2)
{
  if (a2 > 0.0)
  {
    a2 = -a2;
  }

  result = a2 * *(this + 141);
  *(this + 139) = result;
  *(this + 382) = 1;
  return result;
}

float FIK::Solver::setLimitsGain(FIK::Solver *this, float a2)
{
  result = *(this + 150) * a2;
  *(this + 149) = result;
  return result;
}

float FIK::Solver::setRetargetingGain(FIK::Solver *this, float a2)
{
  result = *(this + 148) * a2;
  *(this + 147) = result;
  return result;
}

void FIK::Solver::resetSolver(FIK::Solver *this)
{
  if (*(this + 86))
  {
    v2 = *(this + 56);
    if (v2)
    {
      bzero(v2, 4 * (*(this + 85) + 3));
    }

    v3 = *(this + 63);
    if (v3)
    {
      bzero(v3, 4 * (*(this + 85) + 3));
    }

    v4 = *(this + 62);
    if (v4)
    {
      bzero(v4, 4 * *(this + 80));
    }

    v5 = *(this + 57);
    if (v5)
    {
      v6 = *(this + 80);
      if (v6)
      {
        memset_pattern16(v5, &unk_245A020D0, 4 * v6);
      }
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = *(this + 7);
    v9 = 944 * v7;
    do
    {
      FIK::Segment::resetSegment(v8);
      v8 = (v8 + 944);
      v9 -= 944;
    }

    while (v9);
  }
}

float32x4_t FIK::Solver::setZMP(float32x4_t *a1, float32x4_t *a2)
{
  v2 = *a2;
  a1[49] = *a2;
  result = vnegq_f32(v2);
  a1[18] = result;
  a1[41].i8[4] = 0;
  a1[48].i64[1] = 0;
  a1[40].i8[13] = 0;
  return result;
}

double FIK::Solver::useDefaultZMP(FIK::Solver *this, int a2)
{
  *(this + 660) = a2;
  if (a2)
  {
    result = 0.0;
    *(this + 49) = 0u;
    *(this + 18) = 0u;
    *(this + 653) = 0;
  }

  return result;
}

uint64_t FIK::Solver::setAddErrors(uint64_t this, char a2)
{
  *(this + 661) = a2;
  v2 = *(this + 40);
  if (v2)
  {
    v3 = this;
    v4 = *(this + 56);
    v5 = 944 * v2;
    do
    {
      this = FIK::Segment::setSegAddErrors(v4, *(v3 + 661));
      v4 += 944;
      v5 -= 944;
    }

    while (v5);
  }

  return this;
}

uint64_t FIK::Solver::enableShadowPosing(uint64_t this, int a2)
{
  if (a2)
  {
    *(this + 588) = *(this + 592);
  }

  *(this + 662) = a2;
  v3 = *(this + 40);
  if (v3)
  {
    v4 = *(this + 56);
    v5 = 944 * v3;
    do
    {
      this = FIK::Segment::enableShadowPosing(v4, a2);
      v4 += 944;
      v5 -= 944;
    }

    while (v5);
  }

  return this;
}

BOOL FIK::Solver::areInputsValid(FIK::Solver *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    v2 = *(this + 20);
    v3 = 8 * v1;
    v4.i64[0] = 0x7F0000007FLL;
    v4.i64[1] = 0x7F0000007FLL;
    v5 = vnegq_f32(v4);
    do
    {
      v6 = vcgeq_s32((*(*v2 + 176) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v5);
      v6.i32[3] = v6.i32[2];
      if ((vmaxvq_u32(v6) & 0x80000000) != 0)
      {
        return 0;
      }

      v2 += 8;
      v3 -= 8;
    }

    while (v3);
  }

  v7 = *(this + 22);
  if (v7)
  {
    v8 = *(this + 24);
    v9 = 8 * v7;
    v10.i64[0] = 0x7F0000007FLL;
    v10.i64[1] = 0x7F0000007FLL;
    v11 = vnegq_f32(v10);
    while ((vmaxvq_u32(vcgeq_s32((*(*v8 + 240) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL)), v11)) & 0x80000000) == 0)
    {
      v8 += 8;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v12 = *(this + 5);
  if (!v12)
  {
    return 1;
  }

  v13 = 944 * v12 - 944;
  v14 = (*(this + 7) + 784);
  v15.i64[0] = 0x7F0000007FLL;
  v15.i64[1] = 0x7F0000007FLL;
  v16 = vnegq_f32(v15);
  do
  {
    v17.i64[0] = __PAIR64__(HIDWORD(*v14), *v14) & 0x7FFFFFFF7FFFFFFFLL;
    v17.i32[2] = v14[1] & 0x7FFFFFFF;
    v17.i32[3] = HIDWORD(*v14) & 0x7FFFFFFF;
    v17.i32[0] = vmaxvq_u32(vcgeq_s32(v17, v16));
    result = v17.i32[0] >= 0;
    if (v17.i32[0] < 0)
    {
      break;
    }

    v19 = v13;
    v13 -= 944;
    v14 += 118;
  }

  while (v19);
  return result;
}

void *FIK::IKArray<FIK::Task *>::MemoryBlock::MemoryBlock(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  if (a2)
  {
    v5 = 8 * a2;
    v6 = (*(*a3 + 16))(a3, 8 * a2, 8);
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

uint64_t FIK::FIKRedBlackTree<IKString,FIK::Segment *>::~FIKRedBlackTree(uint64_t a1)
{
  FIK::FIKRedBlackTree<IKString,FIK::Segment *>::clear(a1);
  *(a1 + 8) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(**(a1 + 32) + 24))(*(a1 + 32), v2, 0, 8);
  }

  return a1;
}

uint64_t *FIK::IKArray<FIK::Segment>::~IKArray(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    do
    {
      FIK::Segment::~Segment(v4, a2);
      v4 = (v5 + 944);
      --v3;
    }

    while (v3);
  }

  *a1 = 0;
  v6 = a1[2];
  if (v6)
  {
    (*(*a1[3] + 24))(a1[3], v6, 0, 8);
  }

  return a1;
}

uint64_t FIK::Allocator::destroy<FIK::FIKRedBlackTree<IKString,FIK::Segment *>::Node>(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(a2 + 8))
    {
      (*(**(a2 + 16) + 24))(*(a2 + 16), *a2, 0, 8);
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    v4 = *(*v3 + 24);

    return v4(v3, a2, 0, 8);
  }

  return result;
}

uint64_t IKString::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = &unk_245A04BAE;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *a2;
  }

  else
  {
    v5 = &unk_245A04BAE;
  }

  if (v4 >= v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  v7 = memcmp(v3, v5, v6);
  if (v2 < v4)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  if (v2 == v4)
  {
    v8 = 0;
  }

  if (v7)
  {
    v8 = v7;
  }

  return v8 >> 31;
}

void *FIK::IKArray<FIK::Task *>::IKArray(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = v5;
  FIK::IKArray<FIK::Task *>::MemoryBlock::MemoryBlock(a1 + 1, v4, a2[3]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a1[2];
    v8 = a2[2];
    do
    {
      v9 = *v8++;
      *v7++ = v9;
      --v6;
    }

    while (v6);
  }

  return a1;
}

unint64_t *FIK::IKArray<unsigned int>::resize(unint64_t *result, unint64_t a2, int *a3)
{
  v4 = result;
  if (*result <= a2)
  {
    result = FIK::IKArray<unsigned int>::reserve(result, a2);
    v6 = a2 - *v4;
    if (a2 != *v4)
    {
      v7 = 0;
      v8 = *a3;
      v9 = vdupq_n_s64(v6 - 1);
      v10 = (v4[2] + 4 * *v4 + 8);
      do
      {
        v11 = vdupq_n_s64(v7);
        v12 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v11, xmmword_245A020B0)));
        if (vuzp1_s16(v12, *v9.i8).u8[0])
        {
          *(v10 - 2) = v8;
        }

        if (vuzp1_s16(v12, *&v9).i8[2])
        {
          *(v10 - 1) = v8;
        }

        if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v11, xmmword_245A020A0)))).i32[1])
        {
          *v10 = v8;
          v10[1] = v8;
        }

        v7 += 4;
        v10 += 4;
      }

      while (((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v7);
    }
  }

  *v4 = a2;
  return result;
}

void *FIK::IKArray<unsigned int>::reserve(void *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 4 * v4, 4);
      v6 = v5;
      if (4 * v4)
      {
        bzero(v5, 4 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    memcpy(v6, v2[2], 4 * *v2);
    v7 = v2[2];
    result = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    if (v7)
    {
      v8 = *(*result + 24);

      return v8();
    }
  }

  return result;
}

void FIK::IKArray<FIK::Segment>::reserve(uint64_t *a1, void *a2)
{
  if (a1[1] < a2)
  {
    v3 = a1[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(a1[3], 944 * v4, 16);
      v6 = v5;
      if (944 * v4)
      {
        bzero(v5, 944 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[2];
    v8 = *a1;
    if (*a1)
    {
      v9 = v6;
      do
      {
        *v9 = &unk_285898908;
        IKString::IKString((v9 + 8), (v7 + 8));
        *(v9 + 4) = *(v7 + 32);
        FIK::IKArray<FIK::Task *>::IKArray(v9 + 5, (v7 + 40));
        *(v9 + 72) = *(v7 + 72);
        *(v9 + 6) = *(v7 + 96);
        v10 = *(v7 + 192);
        v12 = *(v7 + 144);
        v11 = *(v7 + 160);
        *(v9 + 11) = *(v7 + 176);
        *(v9 + 12) = v10;
        *(v9 + 9) = v12;
        *(v9 + 10) = v11;
        v13 = *(v7 + 128);
        *(v9 + 7) = *(v7 + 112);
        *(v9 + 8) = v13;
        *(v9 + 13) = *(v7 + 208);
        *(v9 + 14) = *(v7 + 224);
        *(v9 + 15) = *(v7 + 240);
        *(v9 + 16) = *(v7 + 256);
        v14 = *(v7 + 272);
        v15 = *(v7 + 304);
        *(v9 + 18) = *(v7 + 288);
        *(v9 + 19) = v15;
        *(v9 + 17) = v14;
        for (i = 320; i != 368; i += 16)
        {
          *&v9[i] = *(v7 + i);
        }

        *(v9 + 23) = *(v7 + 368);
        *(v9 + 24) = *(v7 + 384);
        *(v9 + 25) = *(v7 + 400);
        *(v9 + 26) = *(v7 + 416);
        *(v9 + 27) = *(v7 + 432);
        *(v9 + 28) = *(v7 + 448);
        v17 = *(v7 + 464);
        v18 = *(v7 + 496);
        *(v9 + 30) = *(v7 + 480);
        *(v9 + 31) = v18;
        *(v9 + 29) = v17;
        v19 = *(v7 + 512);
        v20 = *(v7 + 528);
        v21 = *(v7 + 560);
        *(v9 + 34) = *(v7 + 544);
        *(v9 + 35) = v21;
        *(v9 + 32) = v19;
        *(v9 + 33) = v20;
        *(v9 + 36) = *(v7 + 576);
        *(v9 + 37) = *(v7 + 592);
        v22 = *(v7 + 608);
        v23 = *(v7 + 640);
        *(v9 + 39) = *(v7 + 624);
        *(v9 + 40) = v23;
        *(v9 + 38) = v22;
        v24 = *(v7 + 656);
        v25 = *(v7 + 672);
        v26 = *(v7 + 704);
        *(v9 + 43) = *(v7 + 688);
        *(v9 + 44) = v26;
        *(v9 + 41) = v24;
        *(v9 + 42) = v25;
        v27 = *(v7 + 720);
        v28 = *(v7 + 736);
        v29 = *(v7 + 768);
        *(v9 + 47) = *(v7 + 752);
        *(v9 + 48) = v29;
        *(v9 + 45) = v27;
        *(v9 + 46) = v28;
        *(v9 + 49) = *(v7 + 784);
        v30 = *(v7 + 800);
        *(v9 + 810) = *(v7 + 810);
        *(v9 + 50) = v30;
        *(v9 + 52) = *(v7 + 832);
        *(v9 + 53) = *(v7 + 848);
        *(v9 + 54) = *(v7 + 864);
        *(v9 + 55) = *(v7 + 880);
        *(v9 + 56) = *(v7 + 896);
        *(v9 + 57) = *(v7 + 912);
        *(v9 + 58) = *(v7 + 928);
        v9 += 944;
        v7 += 944;
        --v8;
      }

      while (v8);
      v7 = a1[2];
      v31 = *a1;
    }

    else
    {
      v31 = 0;
    }

    v32 = a1[3];
    a1[1] = v4;
    a1[2] = v6;
    a1[3] = v3;
    if (v31)
    {
      v33 = v7;
      do
      {
        FIK::Segment::~Segment(v33, a2);
        v33 = (v34 + 944);
        --v31;
      }

      while (v31);
    }

    if (v7)
    {
      v35 = *(*v32 + 24);

      v35(v32, v7, 0, 8);
    }
  }
}

uint64_t FIK::Allocator::create<FIK::FIKRedBlackTree<IKString,FIK::Segment *>::Node,IKString,FIK::Segment *>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1, 64, 8);
  if (v6)
  {
    IKString::IKString(v8, a2, a2[2]);
    FIK::FIKRedBlackTree<IKString,FIK::Segment *>::Node::Node(v6, v8, *a3, a1);
    if (v8[1])
    {
      (*(*v9 + 24))(v9, v8[0], 0, 8);
    }
  }

  return v6;
}

uint64_t *IKString::IKString(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *a1 = v5;
  a1[1] = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (((*(*v7 + 32))(v7, a3) & 1) == 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = a3;
    v9 = *a1;
    v8 = a1[1];
    if (v8)
    {
      v10 = *a1;
    }

    else
    {
      v10 = &unk_245A04BAE;
    }

    IKString::assign(&v12, v10, v8);
    IKString::operator=(a1, &v12);
    if (v13)
    {
      (*(*v14 + 24))(v14, v12, 0, 8);
    }
  }

  return a1;
}

uint64_t *IKString::operator=(uint64_t *a1, uint64_t a2)
{
  IKString::IKString(&v7, a2, *(a2 + 16));
  v3 = *a1;
  v4 = a1[1];
  *a1 = v7;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v5 = a1[2];
  a1[2] = v8;
  v8 = v5;
  if (v4)
  {
    (*(*v5 + 24))(v5);
  }

  return a1;
}

uint64_t FIK::FIKRedBlackTree<IKString,FIK::Segment *>::Node::Node(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = FIK::defaultAllocator(a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  IKString::IKString(v10, a2, a4);
  IKString::operator=(a1, v10);
  if (v10[1])
  {
    (*(*v11 + 24))(v11, v10[0], 0, 8);
  }

  *(a1 + 24) = a3;
  return a1;
}

uint64_t *FIK::FIKRedBlackTree<IKString,FIK::Segment *>::InsertBinaryTree(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  *(a2 + 56) = 0;
  if (v4)
  {
    do
    {
      *(a2 + 56) = v4;
      result = IKString::operator<(a2, v4);
      if (result)
      {
        v5 = 40;
      }

      else
      {
        v5 = 48;
      }

      v4 = *(v4 + v5);
    }

    while (v4);
    v6 = *(a2 + 56);
    if (v6)
    {
      result = IKString::operator<(a2, *(a2 + 56));
      if (result)
      {
        v3 = (v6 + 40);
      }

      else
      {
        v3 = (v6 + 48);
      }
    }
  }

  *v3 = a2;
  return result;
}

void *FIK::FIKRedBlackTree<IKString,FIK::Segment *>::InsertFixup(void *result, uint64_t a2)
{
  v2 = *result;
  if (*result != a2)
  {
    v3 = a2;
    v4 = *(a2 + 56);
    v5 = (v4 + 32);
    if (!*(v4 + 32))
    {
      v6 = result;
      while (1)
      {
        v7 = *(v4 + 56);
        v8 = *(v7 + 40);
        if (v4 == v8)
        {
          v10 = *(v7 + 48);
          if (!v10 || *(v10 + 32))
          {
            if (v3 == *(v4 + 48))
            {
              result = FIK::FIKRedBlackTree<IKString,FIK::Segment *>::RotateLeft(v6, v4);
              v11 = *(v4 + 56);
              v7 = *(v11 + 56);
              v8 = *(v7 + 40);
              v3 = v4;
            }

            else
            {
              v11 = v4;
            }

            *(v11 + 32) = 1;
            *(v7 + 32) = 0;
            v14 = *(v8 + 48);
            *(v7 + 40) = v14;
            if (v14)
            {
              *(v14 + 56) = v7;
            }

            v15 = *(v7 + 56);
            *(v8 + 56) = v15;
            v16 = v6;
            if (v15)
            {
              v18 = *(v15 + 48);
              v17 = (v15 + 48);
              if (v18 == v7)
              {
                v16 = v17;
              }

              else
              {
                v16 = v17 - 1;
              }
            }

            *v16 = v8;
            *(v8 + 48) = v7;
            *(v7 + 56) = v8;
            goto LABEL_33;
          }

          *v5 = 1;
          *(v10 + 32) = 1;
          goto LABEL_26;
        }

        if (v8 && !*(v8 + 32))
        {
          *v5 = 1;
          *(v8 + 32) = 1;
LABEL_26:
          v3 = v7;
          *(v7 + 32) = 0;
          goto LABEL_33;
        }

        v9 = *(v4 + 40);
        if (v3 == v9)
        {
          break;
        }

        v9 = v4;
LABEL_32:
        *(v9 + 32) = 1;
        *(v7 + 32) = 0;
        result = FIK::FIKRedBlackTree<IKString,FIK::Segment *>::RotateLeft(v6, v7);
LABEL_33:
        v2 = *v6;
        if (v3 != *v6)
        {
          v4 = *(v3 + 56);
          v5 = (v4 + 32);
          if (!*(v4 + 32))
          {
            continue;
          }
        }

        goto LABEL_35;
      }

      v12 = *(v9 + 48);
      *(v4 + 40) = v12;
      if (v12)
      {
        *(v12 + 56) = v4;
        v7 = *(v4 + 56);
        *(v9 + 56) = v7;
        v13 = v6;
        if (!v7)
        {
LABEL_31:
          *v13 = v9;
          *(v9 + 48) = v4;
          *(v4 + 56) = v9;
          v7 = *(v9 + 56);
          v3 = v4;
          goto LABEL_32;
        }
      }

      else
      {
        *(v9 + 56) = v7;
      }

      v20 = *(v7 + 48);
      v19 = (v7 + 48);
      if (v20 == v4)
      {
        v13 = v19;
      }

      else
      {
        v13 = v19 - 1;
      }

      goto LABEL_31;
    }
  }

LABEL_35:
  *(v2 + 32) = 1;
  return result;
}

void *FIK::FIKRedBlackTree<IKString,FIK::Segment *>::RotateLeft(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 48);
    v3 = *(v2 + 40);
    *(a2 + 48) = v3;
    if (v3)
    {
      *(v3 + 56) = a2;
    }

    v4 = *(a2 + 56);
    *(v2 + 56) = v4;
    if (v4)
    {
      v6 = *(v4 + 40);
      v5 = (v4 + 40);
      if (v6 == a2)
      {
        result = v5;
      }

      else
      {
        result = v5 + 1;
      }
    }

    *result = v2;
    *(v2 + 40) = a2;
    *(a2 + 56) = v2;
  }

  return result;
}

unint64_t *FIK::IKArray<float>::resize(unint64_t *result, unint64_t a2, __int32 *a3)
{
  v4 = result;
  if (*result <= a2)
  {
    result = FIK::IKArray<unsigned int>::reserve(result, a2);
    v7 = a2 - *v4;
    if (a2 != *v4)
    {
      v8 = 0;
      v6.i32[0] = *a3;
      v9 = vdupq_n_s64(v7 - 1);
      v10 = (v4[2] + 4 * *v4 + 8);
      do
      {
        v11 = vdupq_n_s64(v8);
        v12 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v11, xmmword_245A020B0)));
        if (vuzp1_s16(v12, v6).u8[0])
        {
          *(v10 - 2) = v6.i32[0];
        }

        if (vuzp1_s16(v12, v6).i8[2])
        {
          *(v10 - 1) = v6.i32[0];
        }

        if (vuzp1_s16(v6, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v11, xmmword_245A020A0)))).i32[1])
        {
          *v10 = v6.i32[0];
          v10[1] = v6.i32[0];
        }

        v8 += 4;
        v10 += 4;
      }

      while (((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v8);
    }
  }

  *v4 = a2;
  return result;
}

float FIK::paramOfPointOnCurveAtDistanceFromReferencePoint(void (***a1)(float32x4_t *__return_ptr, void, float), float32x4_t *a2, int *a3, float a4, float a5, float a6, float a7)
{
  v7 = a5;
  *a3 = 3;
  if (a5 > a6)
  {
    return a5;
  }

  v11 = a6;
  v15 = 0;
  v16 = 0;
  v17 = 25;
  do
  {
    v8 = (v11 + v7) * 0.5;
    (**a1)(&v23, a1, v8);
    v18 = vsubq_f32(*a2, v23);
    v19 = vmulq_f32(v18, v18);
    v20 = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
    if (vabds_f32(v20, a4) <= a7)
    {
      *a3 = 0;
      return v8;
    }

    if (v20 >= a4)
    {
      v11 = (v11 + v7) * 0.5;
    }

    v16 |= v20 < a4;
    v15 |= v20 >= a4;
    if (v20 < a4)
    {
      v7 = v8;
    }

    --v17;
  }

  while (v17);
  if (v15 & 1 | ((v16 & 1) == 0))
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  *a3 = v21;
  return v8;
}

void FIK::chainOfSegmentsOnCurve(FIK *a1@<X0>, float *a2@<X1>, unint64_t a3@<X2>, int *a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>, float a7@<S1>, float a8@<S2>)
{
  *a4 = 3;
  if (a3 > 1)
  {
    v19 = a8 / (2 * a3);
    v20 = FIK::defaultAllocator(a1);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    a5[3] = v20;
    FIK::IKArray<unsigned int>::reserve(a5, a3);
    v30 = 3;
    v21 = 4 * a3;
    while (1)
    {
      v22 = *a2;
      (**a1)(&v29, a1, a6);
      v23 = FIK::paramOfPointOnCurveAtDistanceFromReferencePoint(a1, &v29, &v30, v22, a6, a7, v19);
      v24 = v30;
      if (v30)
      {
        break;
      }

      a6 = v23;
      FIK::IKArray<unsigned int>::reserve(a5, *a5 + 1);
      v25 = *a5;
      *(a5[2] + 4 * *a5) = a6;
      *a5 = v25 + 1;
      ++a2;
      v21 -= 4;
      if (!v21)
      {
        (**a1)(&v29, a1, a7);
        (**a1)(&v28, a1, a6);
        v26 = vsubq_f32(v29, v28);
        v27 = vmulq_f32(v26, v26);
        v24 = (v27.f32[2] + vaddv_f32(*v27.f32)) >= (a8 * a8);
        goto LABEL_9;
      }
    }

    if (v30 != 2)
    {
      v24 = 3;
    }

LABEL_9:
    *a4 = v24;
  }

  else
  {
    v9 = ikinemaLogObject();
    v10 = ikinemaAssertHandler(*v9, 0, "chainOfSegmentsOnCurve", "(false) At least two segments expected.");
    v11 = FIK::defaultAllocator(v10);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    a5[3] = v11;
  }
}

uint64_t *FIK::IKArray<FIK::Vector>::reserve(uint64_t *result, unint64_t a2)
{
  if (result[1] < a2)
  {
    v2 = result;
    v3 = result[3];
    v4 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v4)
    {
      v5 = (*(*v3 + 16))(result[3], 16 * v4, 16);
      v6 = v5;
      if (16 * v4)
      {
        bzero(v5, 16 * v4);
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v2[2];
    v8 = *v2;
    if (*v2)
    {
      v9 = v6;
      do
      {
        v10 = *v7++;
        *v9++ = v10;
        --v8;
      }

      while (v8);
      v7 = v2[2];
    }

    result = v2[3];
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v3;
    if (v7)
    {
      v11 = *(*result + 24);

      return v11();
    }
  }

  return result;
}

void FIK::scaleChainToFitCurve(float32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>, float a9@<S1>, float32x4_t a10@<Q2>)
{
  if (a6 <= 1)
  {
    v12 = *ikinemaLogObject();
    v13 = "(false) At least two segments expected.";
LABEL_5:
    ikinemaAssertHandler(v12, 0, "scaleChainToFitCurve", v13);
    goto LABEL_6;
  }

  v17 = a1[1];
  v18 = vsubq_f32(*a1, v17);
  v19 = vmulq_f32(v18, v18);
  if ((v19.f32[2] + vaddv_f32(*v19.f32)) < (a9 * a9))
  {
    v12 = *ikinemaLogObject();
    v13 = "(false) Start and end point must not coincide.";
    goto LABEL_5;
  }

  v23 = 0;
  v24 = vsubq_f32(v17, *a1);
  v25 = vmulq_f32(v24, v24);
  v26 = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
  if (v26 == 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = 1.0 / v26;
  }

  v28 = vmulq_n_f32(v24, v27);
  v29 = v28;
  v29.i32[3] = 0;
  v123 = 0u;
  v124 = 0u;
  v30 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
  v102 = vnegq_f32(v28);
  v31 = vmlaq_f32(vmulq_f32(v30, xmmword_245A01E90), xmmword_245A01EA0, v28);
  v32 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
  v32.i32[3] = 0;
  v33 = vmulq_f32(v31, v31);
  v34 = sqrtf(v33.f32[1] + (v33.f32[2] + v33.f32[0]));
  a10.f32[0] = fabsf(v34);
  v10.i32[0] = 814313567;
  v105 = v30;
  v104 = v28;
  v35 = vmlaq_f32(vmulq_f32(v30, xmmword_245A01EB0), xmmword_245A01EC0, v28);
  v36 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v10, a10), 0), vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v32);
  v37 = vmulq_f32(v35, v35);
  v38 = sqrtf(v37.f32[1] + (v37.f32[2] + v37.f32[0]));
  if (a10.f32[0] < 0.000000001)
  {
    v34 = v38;
  }

  if (v34 == 0.0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 1.0 / v34;
  }

  v40 = vmulq_n_f32(v36, v39);
  v40.i32[3] = 0;
  v103 = v40;
  v41 = &v123;
  v42 = 1;
  v106 = v29;
  while (1)
  {
    v43 = *(a2 + 16 * v23);
    v44 = vmulq_f32(v43, v43);
    v45 = vaddv_f32(*v44.f32);
    if ((v44.f32[2] + v45) < 0.00000001)
    {
      break;
    }

    v46 = v42;
    v47 = sqrtf(v44.f32[2] + v45);
    if (v47 == 0.0)
    {
      v48 = 0.0;
    }

    else
    {
      v48 = 1.0 / v47;
    }

    v49 = vmulq_n_f32(v43, v48);
    *v41 = v49;
    v50 = vsubq_f32(v29, v49);
    v51 = vmulq_f32(v50, v50);
    v51.n128_f32[0] = v51.n128_f32[2] + vaddv_f32(v51.n128_u64[0]);
    if (v51.n128_f32[0] >= 0.000025)
    {
      v52 = vmulq_f32(v29, v49);
      a10.f32[0] = v52.f32[2] + vaddv_f32(*v52.f32);
      if (a10.f32[0] >= 1.0)
      {
        v53 = xmmword_245A01E80;
      }

      else
      {
        v53 = v103;
        if (a10.f32[0] >= -0.999999)
        {
          a10.f32[0] = sqrtf((a10.f32[0] + 1.0) + (a10.f32[0] + 1.0));
          v54 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), v102), v49, v105);
          v55 = vdivq_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), vdupq_lane_s32(*a10.f32, 0));
          v55.f32[3] = a10.f32[0] * 0.5;
          v56 = vmulq_f32(v55, v55);
          v57 = vadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
          v53 = xmmword_245A01E80;
          if (vaddv_f32(v57) != 0.0)
          {
            v58 = vadd_f32(v57, vdup_lane_s32(v57, 1)).u32[0];
            v59 = vrsqrte_f32(v58);
            v60 = vmul_f32(v59, vrsqrts_f32(v58, vmul_f32(v59, v59)));
            v53 = vmulq_n_f32(v55, vmul_f32(v60, vrsqrts_f32(v58, vmul_f32(v60, v60))).f32[0]);
          }
        }
      }

      v61 = vmulq_f32(v53, v53);
      v107 = v61.f32[2] + vaddv_f32(*v61.f32);
      v108 = v53;
      v51.n128_f32[0] = atan2f(sqrtf(v107), v53.f32[3]);
      v62 = v51.n128_f32[0] + v51.n128_f32[0];
      v51.n128_u32[0] = *(a4 + 4 * v23);
      v29 = v106;
      if (v62 > v51.n128_f32[0])
      {
        v63 = vrsqrte_f32(LODWORD(v107));
        v64 = vmul_f32(v63, vrsqrts_f32(LODWORD(v107), vmul_f32(v63, v63)));
        v65 = vmulq_n_f32(v108, vmul_f32(v64, vrsqrts_f32(LODWORD(v107), vmul_f32(v64, v64))).f32[0]);
        v66 = vmulq_f32(v65, v65);
        v67 = v66.f32[2] + vaddv_f32(*v66.f32);
        if (fabsf(v67) >= 0.000000001)
        {
          v69 = sqrtf(v67);
          v109 = v65;
          v70 = __sincosf_stret(v51.n128_f32[0] * 0.5);
          v29 = v106;
          v68 = vmulq_n_f32(v109, v70.__sinval / v69);
          v68.i32[3] = LODWORD(v70.__cosval);
        }

        else
        {
          v68 = xmmword_245A01E80;
        }

        v71 = vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL);
        v72 = vnegq_f32(v68);
        v73 = vmlaq_f32(vmulq_f32(v105, v72), v104, v71);
        v74 = vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL);
        v75 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL), v72), v74, v71);
        v76 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL), v74, v68, 3);
        a10.i64[0] = 0x4000000040000000;
        a10.i64[1] = 0x4000000040000000;
        v51 = vmlaq_f32(v104, a10, v76);
        *v41 = v51;
      }
    }

    v42 = 0;
    v41 = &v124;
    v23 = 1;
    if ((v46 & 1) == 0)
    {
      v77 = FIK::CubicBezierCurve::CubicBezierCurve(v122, a1, &v123, a3, v51);
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 1.0 / a8;
      v83 = *(a7 + 32);
      v84 = *(a7 + 8);
      v110 = *(a7 + 16);
      v85 = 2.0;
      v86 = 0.5;
      while (1)
      {
        v87 = sqrtf(v85 * v86);
        v88 = FIK::defaultAllocator(v77);
        FIK::IKArray<float>::IKArray<float,void>(&v119, a5, a6, v88);
        v89 = v120;
        v90 = v119;
        if (v119)
        {
          v91 = 4 * v119;
          v92 = v120;
          do
          {
            *v92 = v87 * *v92;
            ++v92;
            v91 -= 4;
          }

          while (v91);
        }

        v118 = 3;
        FIK::chainOfSegmentsOnCurve(v122, v89, v90, &v118, &v115, 0.0, 1.0, a9);
        v93 = 1;
        if (v118 > 1)
        {
          if (v118 == 2)
          {
            if (v79 & 1 | (v78 < 2) || (v86 = v86 * 0.5, v79 = 0, v81 <= v86))
            {
              v80 = 1;
              v85 = v87;
            }

            else
            {
              v80 = 1;
              v85 = v87;
              v82 = v81;
              v86 = v82;
            }
          }

          else if (v118 == 3)
          {
            v83 = 0;
            v93 = 0;
            *a7 = 0;
          }
        }

        else if (v118)
        {
          if (v118 == 1)
          {
            v94 = v85 + v85;
            if (v80 & 1 | (v78 < 2))
            {
              v94 = v85;
            }

            if (v94 <= a8)
            {
              v85 = v94;
            }

            else
            {
              v85 = a8;
            }

            v79 = 1;
            v86 = v87;
          }
        }

        else
        {
          v95 = FIK::defaultAllocator(v77);
          v112 = 0;
          v113 = 0;
          *&v114 = 0;
          *(&v114 + 1) = v95;
          v77 = FIK::IKArray<FIK::Vector>::reserve(&v112, a6);
          if (v115)
          {
            v96 = v116;
            v97 = 4 * v115;
            do
            {
              v98 = *v96++;
              FIK::CubicBezierCurve::positionAtParam(v122, v98, &v111);
              v77 = FIK::IKArray<FIK::Vector>::reserve(&v112, v112 + 1);
              *(v114 + 16 * v112) = v111;
              v99 = ++v112;
              v97 -= 4;
            }

            while (v97);
          }

          else
          {
            v99 = v112;
          }

          v93 = 0;
          *a7 = v99;
          v84 = v113;
          v83 = 1;
          v110 = v114;
        }

        v115 = 0;
        if (v116)
        {
          v77 = (*(*v117 + 24))(v117, v116, 0, 8);
        }

        v119 = 0;
        if (v120)
        {
          v77 = (*(*v121 + 24))(v121, v120, 0, 8);
        }

        if ((v93 & 1) == 0)
        {
          break;
        }

        if (++v78 == 40)
        {
          *(a7 + 8) = v84;
          *(a7 + 16) = v110;
          goto LABEL_6;
        }
      }

      *(a7 + 32) = v83;
      *(a7 + 8) = v84;
      *(a7 + 16) = v110;
      return;
    }
  }

LABEL_6:
  *a7 = 0;
  *(a7 + 32) = 0;
}

void FIK::dbgPointsToAcadPolylineString(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, std::string *a5@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(a5, "(command pline");
  if (a2)
  {
    v10 = (a1 + 4 * a4);
    v11 = (a1 + 4 * a3);
    do
    {
      snprintf(__str, 0x3E8uLL, " %.3f,%.3f", *v11, *v10);
      std::string::basic_string[abi:nn200100]<0>(__p, __str);
      if ((v18 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v18 & 0x80u) == 0)
      {
        v13 = v18;
      }

      else
      {
        v13 = __p[1];
      }

      std::string::append(a5, v12, v13);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v10 += 4;
      v11 += 4;
      --a2;
    }

    while (a2);
  }

  std::string::basic_string[abi:nn200100]<0>(__str, " )");
  if ((v21 & 0x80u) == 0)
  {
    v14 = __str;
  }

  else
  {
    v14 = *__str;
  }

  if ((v21 & 0x80u) == 0)
  {
    v15 = v21;
  }

  else
  {
    v15 = v20;
  }

  std::string::append(a5, v14, v15);
  if (v21 < 0)
  {
    operator delete(*__str);
  }

  v16 = *MEMORY[0x277D85DE8];
}