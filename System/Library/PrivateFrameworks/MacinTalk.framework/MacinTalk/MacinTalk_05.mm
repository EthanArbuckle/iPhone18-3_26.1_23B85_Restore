uint64_t PinPPTarget(float a1, float a2, uint64_t a3, uint64_t a4, float *a5)
{
  if (kMTMBLinearPitchBandwidth)
  {
    MTBEDebugParams::GetParam(kMTMBLinearPitchBandwidth, &dword_27F8F2908, a5, *&dword_27F8F2908);
    kMTMBLinearPitchBandwidth = 0;
  }

  v7 = (*&dword_27F8F2908 * a2) * 0.01;
  v8 = a2 - v7;
  v9 = v7 + a2;
  if (v8 < a1)
  {
    v8 = a1;
  }

  if (v8 < v9)
  {
    v9 = v8;
  }

  return v9;
}

uint64_t MTMBDemi::SetBoundaryPitch(MTMBDemi *this, int a2, float *a3, double a4, float a5)
{
  v44 = a3;
  v50 = *MEMORY[0x277D85DE8];
  if (kMTMBPowerThreshold)
  {
    MTBEDebugParams::GetParam(kMTMBPowerThreshold, &dword_27F8F28C8, a3, *&dword_27F8F28C8);
    kMTMBPowerThreshold = 0;
  }

  v6 = *&dword_27F8F28C8;
  if (kMTMBPPThreshold)
  {
    MTBEDebugParams::GetParam(kMTMBPPThreshold, &qword_27F8F28B8, qword_27F8F28B8);
    kMTMBPPThreshold = 0;
  }

  v45 = qword_27F8F28B8;
  if (kMTMBNumPPConsidered)
  {
    MTBEDebugParams::GetParam(kMTMBNumPPConsidered, &qword_27F8F28D8, qword_27F8F28D8);
    kMTMBNumPPConsidered = 0;
  }

  v7 = qword_27F8F28D8;
  if (qword_27F8F28D8 <= 3)
  {
    v7 = 3;
  }

  v46 = v7;
  memset(v47, 0, sizeof(v47));
  v48 = 0u;
  *(this + 84) = 0;
  *(this + 92) = 0;
  v43 = (this + 84);
  if (*(this + 2))
  {
    if (kMTMBLogBoundaryPitch)
    {
      MTBEDebugParams::GetParam(kMTMBLogBoundaryPitch, &byte_27F8F2898, byte_27F8F2898);
      kMTMBLogBoundaryPitch = 0;
    }

    if (byte_27F8F2898 == 1)
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = MTMBDemiProperties::Phon(*(this + 13), v49);
      fprintf(v8, "SetBoundaryPitch %s %d %d\n", v9, a2, v44);
    }

    if (*(this + 2) >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      LOWORD(v13) = 0;
      v14 = 0;
      v15 = 0;
      v16 = *this;
      while (1)
      {
        if (v16[8])
        {
          v13 = v16[4];
          if (v45 <= v13)
          {
            v21 = 0;
          }

          else
          {
            v21 = (MTMBSegment::RawPower(v16) * 0.00012207) > v6;
            v13 = v16[4];
          }

          if (!v15)
          {
            v15 = v13;
          }

          v18 = v13;
          if (v21 || v12 && (LOWORD(a5) = *(*(*(&v47[0] + 1) + (((*(&v48 + 1) + v48 - 1) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v48 + 1) + v48 - 1) & 0x7FF)), fabsf((v13 / LODWORD(a5)) + -1.0) < 0.05) && (v18 = v12, fabsf((v13 / v12) + -1.0) < 0.15))
          {
            if (kMTMBLogBoundaryPitch)
            {
              MTBEDebugParams::GetParam(kMTMBLogBoundaryPitch, &byte_27F8F2898, (byte_27F8F2898 & 1));
              kMTMBLogBoundaryPitch = 0;
              v22 = v16[4];
              if (byte_27F8F2898)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v22 = v13;
              if (byte_27F8F2898)
              {
LABEL_35:
                fprintf(*MEMORY[0x277D85DF8], " %d", v22);
                LOWORD(v22) = v16[4];
              }
            }

            if (!v14)
            {
              v14 = v22;
            }

            *(this + 24) = 0;
            PPRingBuffer::push_back(&v46, v22);
            if (a2 && !*v43)
            {
              *v43 = v16[4];
            }

            if (v44)
            {
              *(this + 43) = v16[4];
            }

            if (*(&v48 + 1) != v46)
            {
              goto LABEL_67;
            }

            v23 = PPRingBuffer::min(&v46);
            v25 = PPRingBuffer::max(&v46);
            if (kMTMBPPRangeTheshold)
            {
              MTBEDebugParams::GetParam(kMTMBPPRangeTheshold, &dword_27F8F28E8, v24, *&dword_27F8F28E8);
              kMTMBPPRangeTheshold = 0;
            }

            a5 = (22050.0 / v23) - (22050.0 / v25);
            if (a5 >= *&dword_27F8F28E8)
            {
              goto LABEL_67;
            }

            if ((v44 & 1) == 0)
            {
              if (kMTMBLinearPitchUseMedian)
              {
                MTBEDebugParams::GetParam(kMTMBLinearPitchUseMedian, &byte_27F8F28F8, byte_27F8F28F8);
                kMTMBLinearPitchUseMedian = 0;
              }

              if (byte_27F8F28F8 == 1)
              {
                v26 = PPRingBuffer::median(&v46);
              }

              else
              {
                v26 = *(*(*(&v47[0] + 1) + (((*(&v48 + 1) + v48 - 1) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(&v48 + 1) + v48 - 1) & 0x7FF));
              }

              *(this + 43) = v26;
            }

            if (!*v43)
            {
              v29 = byte_27F8F28F8;
              if (kMTMBLinearPitchUseMedian)
              {
                MTBEDebugParams::GetParam(kMTMBLinearPitchUseMedian, &byte_27F8F28F8, (byte_27F8F28F8 & 1));
                kMTMBLinearPitchUseMedian = 0;
                v29 = byte_27F8F28F8;
              }

              v10 = 0;
              if (v29)
              {
                *v43 = PPRingBuffer::median(&v46);
              }

              else
              {
                *v43 = *(*(*(&v47[0] + 1) + ((v48 >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v48 & 0x7FF));
              }
            }

            else
            {
LABEL_67:
              v10 = 0;
            }

            goto LABEL_68;
          }

          v27 = byte_27F8F2898;
          if (kMTMBLogBoundaryPitch)
          {
            MTBEDebugParams::GetParam(kMTMBLogBoundaryPitch, &byte_27F8F2898, (byte_27F8F2898 & 1));
            kMTMBLogBoundaryPitch = 0;
            v27 = byte_27F8F2898;
          }

          if (v27)
          {
            fprintf(*MEMORY[0x277D85DF8], " (%d)", v16[4]);
          }

          PPRingBuffer::clear(&v46);
          v28 = v16[4];
          if (!v14)
          {
            *(this + 23) += v28;
          }

          v18 = 0;
          v10 = 0;
          *(this + 24) += v28;
        }

        else
        {
          v17 = byte_27F8F2898;
          if (kMTMBLogBoundaryPitch)
          {
            MTBEDebugParams::GetParam(kMTMBLogBoundaryPitch, &byte_27F8F2898, (byte_27F8F2898 & 1));
            kMTMBLogBoundaryPitch = 0;
            v17 = byte_27F8F2898;
          }

          if (v17)
          {
            fprintf(*MEMORY[0x277D85DF8], " <%d>", v16[4]);
          }

          if (!v14)
          {
            *(this + 23) += v16[4];
          }

          PPRingBuffer::clear(&v46);
          v18 = 0;
          v19 = v16[4];
          if (v15)
          {
            v20 = 0;
          }

          else
          {
            v20 = v16[4];
          }

          v11 += v20;
          *(this + 24) += v19;
          v10 += v19;
        }

LABEL_68:
        v16 += 16;
        v12 = v18;
        if (v16 >= *this + 32 * *(this + 2))
        {
          goto LABEL_76;
        }
      }
    }

    v15 = 0;
    LOWORD(v13) = 0;
    v11 = 0;
    v10 = 0;
LABEL_76:
    if (*v43)
    {
      if (*(this + 43))
      {
LABEL_81:
        if (kMTMBWordLinearPitch)
        {
          MTBEDebugParams::GetParam(kMTMBWordLinearPitch, &byte_27F8F2868, byte_27F8F2868);
          kMTMBWordLinearPitch = 0;
        }

        if (byte_27F8F2868 == 1 && (v30 = *(this + 13)) != 0 && (MTMBDemiProperties::UseWordPitch(v30) & 1) == 0 && (v31 = *(this + 13), (v32 = *(v31 + 32)) != 0) && *v43)
        {
          v33 = *(this + 25);
          v34 = v32;
          v35 = *(v31 + 40);
          v36 = 22050.0 / *(v35 + 4 * vcvtms_s32_f32((*(this + 23) / v33) * v32));
          v37 = v33 - *(this + 24);
          *(this + 40) = v36;
          v38 = (22050.0 / *(v35 + 4 * vcvtms_s32_f32((v37 / v33) * v34)));
        }

        else
        {
          *(this + 40) = *(this + 42);
          LOWORD(v38) = *(this + 43);
        }

        *(this + 41) = v38;
        v39 = byte_27F8F2898;
        if (kMTMBLogBoundaryPitch)
        {
          MTBEDebugParams::GetParam(kMTMBLogBoundaryPitch, &byte_27F8F2898, (byte_27F8F2898 & 1));
          kMTMBLogBoundaryPitch = 0;
          v39 = byte_27F8F2898;
        }

        if (v39)
        {
          fprintf(*MEMORY[0x277D85DF8], "\n -> %d\\%d %d\\%d\n", *(this + 42), *(this + 23), *(this + 43), *(this + 24));
        }

        goto LABEL_94;
      }

      *(this + 43) = v13;
    }

    else
    {
      *(this + 42) = v15;
      *(this + 43) = v13;
      *(this + 23) = v11;
    }

    *(this + 24) = v10;
    goto LABEL_81;
  }

LABEL_94:
  result = std::deque<unsigned short>::~deque[abi:ne200100](v47);
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_257B5FC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::deque<unsigned short>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *PPRingBuffer::push_back(PPRingBuffer *this, __int16 a2)
{
  v5 = a2;
  v3 = *(this + 6);
  if (v3 == *this)
  {
    ++*(this + 5);
    *(this + 6) = v3 - 1;
    std::deque<unsigned short>::__maybe_remove_front_spare[abi:ne200100](this + 8, 1);
  }

  return std::deque<unsigned short>::push_back(this + 1, &v5);
}

uint64_t PPRingBuffer::min(PPRingBuffer *this)
{
  std::deque<unsigned short>::deque(&v7, this + 1);
  v1 = (v8 + 8 * (v10 >> 11));
  if (v9 == v8)
  {
    v2 = 0;
    v4 = 0;
    v3 = (v8 + 8 * ((v11 + v10) >> 11));
  }

  else
  {
    v2 = &(*v1)[2 * (v10 & 0x7FF)];
    v3 = (v8 + 8 * ((v11 + v10) >> 11));
    v4 = &(*v3)[2 * ((v11 + v10) & 0x7FF)];
  }

  std::__sort_dispatch[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__less<void,void>>(v1, v2, v3, v4, &v12);
  v5 = *(*(v8 + ((v10 >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v10 & 0x7FF));
  std::deque<unsigned short>::~deque[abi:ne200100](&v7);
  return v5;
}

void sub_257B5FDC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::deque<unsigned short>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t PPRingBuffer::max(PPRingBuffer *this)
{
  std::deque<unsigned short>::deque(&v7, this + 1);
  v1 = (v8 + 8 * (v10 >> 11));
  if (v9 == v8)
  {
    v2 = 0;
    v4 = 0;
    v3 = (v8 + 8 * ((v11 + v10) >> 11));
  }

  else
  {
    v2 = &(*v1)[2 * (v10 & 0x7FF)];
    v3 = (v8 + 8 * ((v11 + v10) >> 11));
    v4 = &(*v3)[2 * ((v11 + v10) & 0x7FF)];
  }

  std::__sort_dispatch[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__less<void,void>>(v1, v2, v3, v4, &v12);
  v5 = *(*(v8 + (((v11 + v10 - 1) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v11 + v10 - 1) & 0x7FF));
  std::deque<unsigned short>::~deque[abi:ne200100](&v7);
  return v5;
}

void sub_257B5FEA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::deque<unsigned short>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t PPRingBuffer::median(PPRingBuffer *this)
{
  std::deque<unsigned short>::deque(&v8, this + 1);
  v1 = (v9 + 8 * (v11 >> 11));
  if (v10 == v9)
  {
    v2 = 0;
    v4 = 0;
    v3 = (v9 + 8 * ((v12 + v11) >> 11));
  }

  else
  {
    v2 = &(*v1)[2 * (v11 & 0x7FF)];
    v3 = (v9 + 8 * ((v12 + v11) >> 11));
    v4 = &(*v3)[2 * ((v12 + v11) & 0x7FF)];
  }

  std::__sort_dispatch[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__less<void,void>>(v1, v2, v3, v4, &v13);
  v5 = v11 + (v12 >> 1);
  v6 = *(*(v9 + ((v5 >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v5 & 0x7FF));
  if ((v12 & 1) == 0)
  {
    v6 = (*(*(v9 + (((v5 - 1) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v5 - 1) & 0x7FF)) + v6) >> 1;
  }

  std::deque<unsigned short>::~deque[abi:ne200100](&v8);
  return v6;
}

void sub_257B5FFA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::deque<unsigned short>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void PPRingBuffer::clear(PPRingBuffer *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  *(this + 6) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(this + 3);
      v2 = (*(this + 2) + 8);
      *(this + 2) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 1024;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 2048;
  }

  *(this + 5) = v6;
LABEL_8:

  std::deque<unsigned short>::resize(this + 1, 0);
}

void MTMBSlackPitchInterpolator::~MTMBSlackPitchInterpolator(void **this)
{
  *this = &unk_2868F7EF8;
  MEOWVectorBase::~MEOWVectorBase(this + 4);
}

{
  *this = &unk_2868F7EF8;
  MEOWVectorBase::~MEOWVectorBase(this + 4);

  JUMPOUT(0x259C6DA90);
}

uint64_t std::deque<unsigned short>::deque(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 11));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 11));
  }

  else
  {
    v8 = &(*v7)[2 * (v4 & 0x7FF)];
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 11));
    v11 = (*v10 + 2 * (v9 & 0x7FF));
  }

  std::deque<unsigned short>::__append<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>,0>(a1, v7, v8, v10, v11);
  return a1;
}

uint64_t *std::deque<unsigned short>::__append<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>,0>(void *a1, char **a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&a5[-*a4] >> 1) + ((a4 - a2) << 8) - ((a3 - *a2) >> 1);
  }

  return std::deque<unsigned short>::__append_with_size[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>>(a1, a2, a3, v5);
}

uint64_t *std::deque<unsigned short>::__append_with_size[abi:ne200100]<std::__deque_iterator<unsigned short,unsigned short const*,unsigned short const&,unsigned short const* const*,long,2048l>>(void *a1, char **a2, char *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 8) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    std::deque<unsigned short>::__add_back_capacity(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 11));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 2 * (v11 & 0x7FF);
    v15 = v14;
  }

  v25[0] = v13;
  v25[1] = v15;
  result = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v25, a4);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = *a2;
        v21 = v14;
        do
        {
          v22 = *a3;
          a3 += 2;
          *v21++ = v22;
          if (a3 - v20 == 4096)
          {
            v23 = a2[1];
            ++a2;
            v20 = v23;
            a3 = v23;
          }
        }

        while (v21 != v19);
      }

      v18 += (v19 - v14) >> 1;
      if (v13 == result)
      {
        break;
      }

      v24 = v13[1];
      ++v13;
      v14 = v24;
    }

    while (v24 != v17);
    a1[5] = v18;
  }

  return result;
}

void *std::deque<unsigned short>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x7FF) != 0)
  {
    v5 = (v4 >> 11) + 1;
  }

  else
  {
    v5 = v4 >> 11;
  }

  v6 = result[4];
  if (v5 >= v6 >> 11)
  {
    v7 = v6 >> 11;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 11)
  {
    for (result[4] = v6 - (v7 << 11); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<unsigned short *>::emplace_back<unsigned short *&>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 11; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<unsigned short *>::emplace_back<unsigned short *&>(v2, v16);
    }
  }

  return result;
}

void sub_257B60618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 1);
    if (v4 < 1)
    {
      result -= (2047 - v4) >> 11;
      v6 = *result;
    }

    else
    {
      result += v4 >> 11;
      v5 = *result;
    }
  }

  return result;
}

char **std::__sort_dispatch[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__less<void,void>>(char **a1, unsigned __int16 *a2, char **a3, unsigned __int16 *a4, uint64_t a5)
{
  if (a4 == a2 || (v5 = ((a4 - *a3) >> 1) + ((a3 - a1) << 8), v6 = a2 - *a1, v5 == v6 >> 1))
  {
    v7 = 0;
  }

  else
  {
    v7 = 63 - __clz(v5 - (v6 >> 1));
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,false>(a1, a2, a3, a4, a5, 2 * v7, 1);
}

char **std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,false>(char **result, unsigned __int16 *a2, char **a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, char a7)
{
  v136 = result;
  v137 = a2;
  if (a4 == a2)
  {
    return result;
  }

  v9 = a4;
  v11 = a2;
  for (i = a6 - 1; ; --i)
  {
    result = v136;
    v13 = *a3;
    v14 = *v136;
    v15 = ((v9 - *a3) >> 1) + ((a3 - v136) << 8) - (v11 - *v136);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return result;
    }

    if (v15 == 2)
    {
      if (v9 == v13)
      {
        v9 = (*(a3 - 1) + 4096);
      }

      v97 = *(v9 - 1);
      if (v97 < *v11)
      {
        v98 = *v11;
        *v11 = v97;
        *(v9 - 1) = v98;
      }

      return result;
    }

LABEL_11:
    if (v15 <= 23)
    {
      if (a7)
      {
        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(v136, v11, a3, v9);
      }

      else
      {
        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(v136, v11, a3, v9);
      }
    }

    if (i == -1)
    {
      if (v11 != v9)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(v136, v11, a3, v9, a3, v9, a5);
      }

      return result;
    }

    v16 = v15 >> 1;
    std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](&v136, v15 >> 1);
    if (v15 < 0x81)
    {
      v20 = (v9 - *a3) >> 1;
      if (v20 < 2)
      {
        v21 = &a3[-((2048 - v20) >> 11)][2 * (~(2048 - v20) & 0x7FF)];
      }

      else
      {
        v21 = &(*(a3 + (((v20 - 1) >> 8) & 0xFFFFFFFFFFFFF8)))[2 * ((v20 - 1) & 0x7FF)];
      }

      v25 = v137;
      v26 = *v137;
      v27 = *v17;
      v28 = *v21;
      if (v26 >= v27)
      {
        if (v28 < v26)
        {
          *v137 = v28;
          *v21 = v26;
          v31 = *v25;
          v32 = *v17;
          if (v31 < v32)
          {
            *v17 = v31;
            *v25 = v32;
            if (a7)
            {
              goto LABEL_52;
            }

            goto LABEL_81;
          }
        }
      }

      else
      {
        if (v28 < v26)
        {
          *v17 = v28;
          goto LABEL_50;
        }

        *v17 = v26;
        *v25 = v27;
        v48 = *v21;
        if (v48 < v27)
        {
          *v25 = v48;
LABEL_50:
          *v21 = v27;
        }
      }

      if (a7)
      {
        goto LABEL_52;
      }

      goto LABEL_81;
    }

    v18 = (v9 - *a3) >> 1;
    if (v18 < 2)
    {
      v19 = &a3[-((2048 - v18) >> 11)][2 * (~(2048 - v18) & 0x7FF)];
    }

    else
    {
      v19 = &(*(a3 + (((v18 - 1) >> 8) & 0xFFFFFFFFFFFFF8)))[2 * ((v18 - 1) & 0x7FF)];
    }

    v22 = *v17;
    v23 = *v11;
    v24 = *v19;
    if (v22 >= v23)
    {
      if (v24 < v22)
      {
        *v17 = v24;
        *v19 = v22;
        v29 = *v17;
        v30 = *v11;
        if (v29 < v30)
        {
          *v11 = v29;
          *v17 = v30;
        }
      }
    }

    else
    {
      if (v24 >= v22)
      {
        *v11 = v22;
        *v17 = v23;
        v33 = *v19;
        if (v33 >= v23)
        {
          goto LABEL_36;
        }

        *v17 = v33;
      }

      else
      {
        *v11 = v24;
      }

      *v19 = v23;
    }

LABEL_36:
    v34 = v137 - *v136;
    if (v34 < 0)
    {
      v38 = 2046 - v34;
      v36 = v136[-(v38 >> 11)];
      v37 = ~v38 & 0x7FFLL;
    }

    else
    {
      v35 = v34 + 1;
      v36 = *(v136 + ((v35 >> 8) & 0xFFFFFFFFFFFFF8));
      v37 = v35 & 0x7FF;
    }

    v39 = (v36 + 2 * v37);
    std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](&v136, v16 - 1);
    v41 = (v9 - *a3) >> 1;
    if (v41 < 3)
    {
      v42 = &a3[-((2049 - v41) >> 11)][2 * (~(2049 - v41) & 0x7FF)];
    }

    else
    {
      v42 = &(*(a3 + (((v41 - 2) >> 8) & 0xFFFFFFFFFFFFF8)))[2 * ((v41 - 2) & 0x7FF)];
    }

    v43 = *v40;
    v44 = *v39;
    v45 = *v42;
    if (v43 >= v44)
    {
      if (v45 < v43)
      {
        *v40 = v45;
        *v42 = v43;
        v46 = *v40;
        v47 = *v39;
        if (v46 < v47)
        {
          *v39 = v46;
          *v40 = v47;
        }
      }
    }

    else
    {
      if (v45 >= v43)
      {
        *v39 = v43;
        *v40 = v44;
        v50 = *v42;
        if (v50 >= v44)
        {
          goto LABEL_56;
        }

        *v40 = v50;
      }

      else
      {
        *v39 = v45;
      }

      *v42 = v44;
    }

LABEL_56:
    v51 = v137 - *v136;
    if (v51 < -1)
    {
      v55 = 2045 - v51;
      v53 = v136[-(v55 >> 11)];
      v54 = ~v55 & 0x7FFLL;
    }

    else
    {
      v52 = v51 + 2;
      v53 = *(v136 + ((v52 >> 8) & 0xFFFFFFFFFFFFF8));
      v54 = v52 & 0x7FF;
    }

    v56 = (v53 + 2 * v54);
    std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](&v136, v16 + 1);
    v58 = (v9 - *a3) >> 1;
    if (v58 < 4)
    {
      v59 = &a3[-((2050 - v58) >> 11)][2 * (~(2050 - v58) & 0x7FF)];
    }

    else
    {
      v59 = &(*(a3 + (((v58 - 3) >> 8) & 0xFFFFFFFFFFFFF8)))[2 * ((v58 - 3) & 0x7FF)];
    }

    v60 = *v57;
    v61 = *v56;
    v62 = *v59;
    if (v60 >= v61)
    {
      if (v62 < v60)
      {
        *v57 = v62;
        *v59 = v60;
        v63 = *v57;
        v64 = *v56;
        if (v63 < v64)
        {
          *v56 = v63;
          *v57 = v64;
        }
      }
    }

    else
    {
      if (v62 >= v60)
      {
        *v56 = v60;
        *v57 = v61;
        v65 = *v59;
        if (v65 >= v61)
        {
          goto LABEL_71;
        }

        *v57 = v65;
      }

      else
      {
        *v56 = v62;
      }

      *v59 = v61;
    }

LABEL_71:
    std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](&v136, v16 - 1);
    v67 = v66;
    std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](&v136, v16);
    v69 = v68;
    std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](&v136, v16 + 1);
    v71 = *v69;
    v72 = *v67;
    v73 = *v70;
    if (v71 >= v72)
    {
      if (v73 < v71)
      {
        *v69 = v73;
        *v70 = v71;
        v74 = *v69;
        v75 = *v67;
        if (v74 < v75)
        {
          *v67 = v74;
          *v69 = v75;
        }
      }
    }

    else
    {
      if (v73 >= v71)
      {
        *v67 = v71;
        *v69 = v72;
        v76 = *v70;
        if (v76 >= v72)
        {
          goto LABEL_80;
        }

        *v69 = v76;
      }

      else
      {
        *v67 = v73;
      }

      *v70 = v72;
    }

LABEL_80:
    std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](&v136, v16);
    v25 = v137;
    v77 = *v137;
    *v137 = *v78;
    *v78 = v77;
    if (a7)
    {
LABEL_52:
      v49 = v136;
      goto LABEL_85;
    }

LABEL_81:
    v49 = v136;
    v79 = v25 - *v136;
    if (v79 < 2)
    {
      v80 = &v136[-((2048 - v79) >> 11)][~(2048 - v79) & 0x7FF];
    }

    else
    {
      v80 = &(*(v136 + (((v79 - 1) >> 8) & 0xFFFFFFFFFFFFF8)))[(v79 - 1) & 0x7FF];
    }

    if (*v80 >= *v25)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__less<void,void> &>(v136, v25, a3, v9);
      a7 = 0;
      v136 = result;
      v137 = v88;
      goto LABEL_98;
    }

LABEL_85:
    std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__less<void,void> &>(v49, v25, a3, v9, &v133);
    v81 = v133;
    v82 = v134;
    if ((v135 & 1) == 0)
    {
      goto LABEL_94;
    }

    v83 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(v136, v137, v133, v134);
    v84 = (v82 - *v81) >> 1;
    if (v84 < 0)
    {
      v89 = 2046 - v84;
      v86 = &v81[-(v89 >> 11)];
      v87 = (*v86 + 2 * (~v89 & 0x7FF));
    }

    else
    {
      v85 = v84 + 1;
      v86 = &v81[v85 >> 11];
      v87 = (*v86 + 2 * (v85 & 0x7FF));
    }

    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(v86, v87, a3, v9);
    if (result)
    {
      a3 = v81;
      v9 = v82;
      if (v83)
      {
        return result;
      }

      goto LABEL_98;
    }

    if (!v83)
    {
LABEL_94:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,false>(v136, v137, v81, v82, a5, i, a7 & 1);
      a7 = 0;
    }

    v90 = (v82 + 2);
    if (v82 + 2 - *v81 == 4096)
    {
      v91 = v81[1];
      ++v81;
      v90 = v91;
    }

    v136 = v81;
    v137 = v90;
LABEL_98:
    v11 = v137;
    if (v9 == v137)
    {
      return result;
    }
  }

  if (v15 == 3)
  {
    v92 = v11 - v14;
    if (v92 < 0)
    {
      v93 = &v136[-((2046 - v92) >> 11)][~(2046 - v92) & 0x7FF];
    }

    else
    {
      v93 = &(*(v136 + (((v92 + 1) >> 8) & 0xFFFFFFFFFFFFF8)))[(v92 + 1) & 0x7FF];
    }

    if (v9 == v13)
    {
      v9 = (*(a3 - 1) + 4096);
    }

    v102 = *v93;
    v103 = *v11;
    v104 = *(v9 - 1);
    if (v102 < v103)
    {
      if (v104 >= v102)
      {
        *v11 = v102;
        *v93 = v103;
        v118 = *(v9 - 1);
        if (v118 >= v103)
        {
          return result;
        }

        *v93 = v118;
      }

      else
      {
        *v11 = v104;
      }

      *(v9 - 1) = v103;
      return result;
    }

    if (v104 >= v102)
    {
      return result;
    }

    *v93 = v104;
    *(v9 - 1) = v102;
LABEL_168:
    v131 = *v93;
    v132 = *v11;
    if (v131 < v132)
    {
      *v11 = v131;
      *v93 = v132;
    }

    return result;
  }

  if (v15 == 4)
  {
    v99 = v11 - v14;
    v100 = v11 - v14;
    if (v100 < 0)
    {
      v93 = &v136[-((2046 - v100) >> 11)][~(2046 - v100) & 0x7FF];
      if (v99 != -2)
      {
        v105 = &v136[-((2045 - v100) >> 11)][~(2045 - v100) & 0x7FF];
LABEL_138:
        if (v9 == v13)
        {
          v9 = (*(a3 - 1) + 4096);
        }

        v113 = *v93;
        v114 = *v11;
        v115 = *v105;
        if (v113 >= v114)
        {
          if (v115 >= v113)
          {
            v113 = *v105;
          }

          else
          {
            *v93 = v115;
            *v105 = v113;
            v116 = *v93;
            v117 = *v11;
            if (v116 < v117)
            {
              *v11 = v116;
              *v93 = v117;
              v113 = *v105;
            }
          }
        }

        else
        {
          if (v115 >= v113)
          {
            *v11 = v113;
            *v93 = v114;
            v113 = *v105;
            if (v113 >= v114)
            {
              goto LABEL_164;
            }

            *v93 = v113;
          }

          else
          {
            *v11 = v115;
          }

          *v105 = v114;
          v113 = v114;
        }

LABEL_164:
        v128 = *(v9 - 1);
        if (v128 >= v113)
        {
          return result;
        }

        *v105 = v128;
        *(v9 - 1) = v113;
LABEL_166:
        v129 = *v105;
        v130 = *v93;
        if (v129 >= v130)
        {
          return result;
        }

        *v93 = v129;
        *v105 = v130;
        goto LABEL_168;
      }

      v101 = 1;
    }

    else
    {
      v93 = &(*(v136 + (((v100 + 1) >> 8) & 0xFFFFFFFFFFFFF8)))[(v100 + 1) & 0x7FF];
      v101 = v100 + 2;
    }

    v105 = &(*(v136 + ((v101 >> 8) & 0xFFFFFFFFFFFFF8)))[v101 & 0x7FF];
    goto LABEL_138;
  }

  if (v15 != 5)
  {
    goto LABEL_11;
  }

  v94 = v11 - v14;
  v95 = v11 - v14;
  if ((v95 & 0x8000000000000000) == 0)
  {
    v93 = &(*(v136 + (((v95 + 1) >> 8) & 0xFFFFFFFFFFFFF8)))[(v95 + 1) & 0x7FF];
    v96 = v95 + 2;
    goto LABEL_125;
  }

  v93 = &v136[-((2046 - v95) >> 11)][~(2046 - v95) & 0x7FF];
  if (v94 == -2)
  {
    v96 = 1;
LABEL_125:
    v105 = &(*(v136 + ((v96 >> 8) & 0xFFFFFFFFFFFFF8)))[v96 & 0x7FF];
    v106 = v95 + 3;
LABEL_126:
    v107 = &(*(v136 + ((v106 >> 8) & 0xFFFFFFFFFFFFF8)))[v106 & 0x7FF];
  }

  else
  {
    v105 = &v136[-((2045 - v95) >> 11)][~(2045 - v95) & 0x7FF];
    if (v95 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v106 = 1;
      goto LABEL_126;
    }

    v107 = &v136[-((2044 - v95) >> 11)][~(2044 - v95) & 0x7FF];
  }

  if (v9 == v13)
  {
    v9 = (*(a3 - 1) + 4096);
  }

  v108 = *v93;
  v109 = *v11;
  v110 = *v105;
  if (v108 >= v109)
  {
    if (v110 >= v108)
    {
      v108 = *v105;
    }

    else
    {
      *v93 = v110;
      *v105 = v108;
      v111 = *v93;
      v112 = *v11;
      if (v111 < v112)
      {
        *v11 = v111;
        *v93 = v112;
        v108 = *v105;
      }
    }
  }

  else
  {
    if (v110 < v108)
    {
      *v11 = v110;
      goto LABEL_151;
    }

    *v11 = v108;
    *v93 = v109;
    v108 = *v105;
    if (v108 < v109)
    {
      *v93 = v108;
LABEL_151:
      *v105 = v109;
      v108 = v109;
    }
  }

  v119 = *v107;
  if (v119 < v108)
  {
    *v105 = v119;
    *v107 = v108;
    v120 = *v105;
    v121 = *v93;
    if (v120 < v121)
    {
      *v93 = v120;
      *v105 = v121;
      v122 = *v93;
      v123 = *v11;
      if (v122 < v123)
      {
        *v11 = v122;
        *v93 = v123;
      }
    }
  }

  v124 = *(v9 - 1);
  v125 = *v107;
  if (v124 < v125)
  {
    *v107 = v124;
    *(v9 - 1) = v125;
    v126 = *v107;
    v127 = *v105;
    if (v126 < v127)
    {
      *v105 = v126;
      *v107 = v127;
      goto LABEL_166;
    }
  }

  return result;
}

unsigned __int16 **std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(unsigned __int16 **result, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a2 != a4)
  {
    v4 = a2 + 1;
    v5 = *result;
    while (1)
    {
      if (v4 - v5 == 4096)
      {
        v6 = result[1];
        ++result;
        v5 = v6;
        v4 = v6;
      }

      if (v4 == a4)
      {
        break;
      }

      v7 = result;
      v8 = v4;
      if (v4 == v5)
      {
        v7 = result - 1;
        v8 = (*(result - 1) + 2048);
      }

      v11 = *(v8 - 2);
      v9 = (v8 - 2);
      v10 = v11;
      v12 = *v4;
      if (v12 < v11)
      {
        v13 = v4;
        do
        {
          v14 = v9;
          *v13 = v10;
          if (v9 == a2)
          {
            break;
          }

          if (v9 == *v7)
          {
            v15 = *--v7;
            v9 = (v15 + 4096);
          }

          v16 = *--v9;
          v10 = v16;
          v13 = v14;
        }

        while (v12 < v16);
        *v14 = v12;
      }

      ++v4;
    }
  }

  return result;
}

unsigned __int16 *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(unsigned __int16 *result, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a2 != a4)
  {
    v4 = (a2 - *result) >> 1;
    if (v4 < 0)
    {
      v7 = 2046 - v4;
      v5 = ~v7;
      v6 = &result[-4 * (v7 >> 11)];
    }

    else
    {
      v5 = v4 + 1;
      v6 = &result[4 * ((v4 + 1) >> 11)];
    }

    v8 = *v6;
    v9 = (*v6 + 2 * (v5 & 0x7FF));
    while (v9 != a4)
    {
      v10 = v9 - v8;
      if (v10 < 2)
      {
        v13 = 2048 - v10;
        v11 = ~v13;
        v12 = &v6[-4 * (v13 >> 11)];
      }

      else
      {
        v11 = v10 - 1;
        v12 = &v6[4 * ((v10 - 1) >> 11)];
      }

      v14 = *v12;
      v15 = &(*v12)[v11 & 0x7FF];
      v16 = *v9;
      v17 = *v15;
      if (v16 < v17)
      {
        result = v9;
        do
        {
          v18 = v15;
          *result = v17;
          if (v15 == v14)
          {
            v19 = *--v12;
            v14 = v19;
            v15 = v19 + 2048;
          }

          v20 = *--v15;
          LOWORD(v17) = v20;
          result = v18;
        }

        while (v16 < v20);
        *v18 = v16;
      }

      if (++v9 - v8 == 4096)
      {
        v21 = *(v6 + 1);
        v6 += 4;
        v8 = v21;
        v9 = v21;
      }
    }
  }

  return result;
}

char **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__less<void,void> &>(char **result, unsigned __int16 *a2, unsigned __int16 **a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = a4 - *a3;
  if (v6 < 2)
  {
    v7 = &a3[-((2048 - v6) >> 11)][~(2048 - v6) & 0x7FF];
  }

  else
  {
    v7 = &(*(a3 + (((v6 - 1) >> 8) & 0xFFFFFFFFFFFFF8)))[(v6 - 1) & 0x7FF];
  }

  v8 = *result;
  if (v4 >= *v7)
  {
    v9 = a2;
    do
    {
      v9 += 2;
      if (v9 - v8 == 4096)
      {
        v11 = result[1];
        ++result;
        v8 = v11;
        v9 = v11;
      }
    }

    while ((result < a3 || result == a3 && v9 < a4) && v4 >= *v9);
  }

  else
  {
    v9 = a2;
    do
    {
      v9 += 2;
      if (v9 - v8 == 4096)
      {
        v10 = result[1];
        ++result;
        v8 = v10;
        v9 = v10;
      }
    }

    while (v4 >= *v9);
  }

  if (result < a3 || result == a3 && v9 < a4)
  {
    do
    {
      if (a4 == v5)
      {
        v12 = *--a3;
        v5 = v12;
        a4 = v12 + 2048;
      }

      v13 = *--a4;
    }

    while (v4 < v13);
  }

  while (result < a3 || result == a3 && v9 < a4)
  {
    v14 = *v9;
    *v9 = *a4;
    *a4 = v14;
    do
    {
      v9 += 2;
      if (v9 - v8 == 4096)
      {
        v15 = result[1];
        ++result;
        v8 = v15;
        v9 = v15;
      }
    }

    while (v4 >= *v9);
    do
    {
      if (a4 == v5)
      {
        v16 = *--a3;
        v5 = v16;
        a4 = v16 + 2048;
      }

      v17 = *--a4;
    }

    while (v4 < v17);
  }

  v18 = (v9 - v8) >> 1;
  if (v18 < 2)
  {
    v19 = &result[-((2048 - v18) >> 11)][2 * (~(2048 - v18) & 0x7FF)];
  }

  else
  {
    v19 = &(*(result + (((v18 - 1) >> 8) & 0xFFFFFFFFFFFFF8)))[2 * ((v18 - 1) & 0x7FF)];
  }

  if (v19 != a2)
  {
    *a2 = *v19;
  }

  *v19 = v4;
  return result;
}

char **std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__less<void,void> &>@<X0>(char **result@<X0>, char *a2@<X1>, char **a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *result;
  v7 = a2;
  do
  {
    v7 += 2;
    if (v7 - v6 == 4096)
    {
      v8 = result[1];
      ++result;
      v6 = v8;
      v7 = v8;
    }

    v9 = *v7;
  }

  while (v9 < v5);
  v10 = (v7 - v6) >> 1;
  if (v10 < 2)
  {
    v11 = &result[-((2048 - v10) >> 11)][2 * (~(2048 - v10) & 0x7FF)];
  }

  else
  {
    v11 = &(*(result + (((v10 - 1) >> 8) & 0xFFFFFFFFFFFFF8)))[2 * ((v10 - 1) & 0x7FF)];
  }

  if (v11 == a2)
  {
    do
    {
      if (result >= a3 && (result != a3 || v7 >= a4))
      {
        break;
      }

      if (a4 == *a3)
      {
        v15 = *--a3;
        a4 = (v15 + 4096);
      }

      v16 = *(a4 - 1);
      a4 -= 2;
    }

    while (v16 >= v5);
  }

  else
  {
    v12 = *a3;
    do
    {
      if (a4 == v12)
      {
        v13 = *--a3;
        v12 = v13;
        a4 = v13 + 4096;
      }

      v14 = *(a4 - 1);
      a4 -= 2;
    }

    while (v14 >= v5);
  }

  v18 = result != a3 || v7 >= a4;
  if (result < a3)
  {
    v18 = 0;
  }

  while (result < a3 || result == a3 && v7 < a4)
  {
    *v7 = *a4;
    *a4 = v9;
    do
    {
      v7 += 2;
      if (v7 - v6 == 4096)
      {
        v19 = result[1];
        ++result;
        v6 = v19;
        v7 = v19;
      }

      v9 = *v7;
    }

    while (v9 < v5);
    v20 = *a3;
    do
    {
      if (a4 == v20)
      {
        v21 = *--a3;
        v20 = v21;
        a4 = v21 + 4096;
      }

      v22 = *(a4 - 1);
      a4 -= 2;
    }

    while (v22 >= v5);
  }

  v23 = (v7 - v6) >> 1;
  if (v23 < 2)
  {
    v26 = 2048 - v23;
    v24 = ~v26;
    v25 = &result[-(v26 >> 11)];
  }

  else
  {
    v24 = v23 - 1;
    v25 = &result[(v23 - 1) >> 11];
  }

  v27 = &(*v25)[2 * (v24 & 0x7FF)];
  if (v27 != a2)
  {
    *a2 = *v27;
  }

  *v27 = v5;
  *a5 = v25;
  *(a5 + 8) = v27;
  *(a5 + 16) = v18;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(char *a1, unsigned __int16 *a2, char *a3, uint64_t a4)
{
  if (a4 == a2)
  {
    return 1;
  }

  v4 = *a3;
  v5 = a2 - *a1;
  v6 = v5 >> 1;
  v7 = ((a4 - *a3) >> 1) + ((a3 - a1) << 8) - (v5 >> 1);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if (v6 < 0)
      {
        v9 = (*&a1[-8 * ((2046 - v6) >> 11)] + 2 * (~(2046 - v6) & 0x7FF));
      }

      else
      {
        v9 = (*&a1[((v6 + 1) >> 8) & 0xFFFFFFFFFFFFF8] + 2 * ((v6 + 1) & 0x7FF));
      }

      if (v4 == a4)
      {
        a4 = *(a3 - 1) + 4096;
      }

      v20 = *v9;
      v21 = *a2;
      v22 = *(a4 - 2);
      if (v20 < v21)
      {
        if (v22 >= v20)
        {
          *a2 = v20;
          *v9 = v21;
          v36 = *(a4 - 2);
          if (v36 >= v21)
          {
            return 1;
          }

          *v9 = v36;
        }

        else
        {
          *a2 = v22;
        }

        *(a4 - 2) = v21;
        return 1;
      }

      if (v22 >= v20)
      {
        return 1;
      }

      *v9 = v22;
      *(a4 - 2) = v20;
LABEL_103:
      v73 = *v9;
      v74 = *a2;
      if (v73 < v74)
      {
        *a2 = v73;
        *v9 = v74;
      }

      return 1;
    }

    if (v7 != 4)
    {
      if (v7 != 5)
      {
        goto LABEL_17;
      }

      if (v6 < 0)
      {
        v9 = (*&a1[-8 * ((2046 - v6) >> 11)] + 2 * (~(2046 - v6) & 0x7FF));
        if (v5 != -2)
        {
          v23 = (*&a1[-8 * ((2045 - v6) >> 11)] + 2 * (~(2045 - v6) & 0x7FF));
          if (v6 < 0xFFFFFFFFFFFFFFFELL)
          {
            v25 = (*&a1[-8 * ((2044 - v6) >> 11)] + 2 * (~(2044 - v6) & 0x7FF));
LABEL_37:
            if (v4 == a4)
            {
              a4 = *(a3 - 1) + 4096;
            }

            v26 = *v9;
            v27 = *a2;
            v28 = *v23;
            if (v26 >= v27)
            {
              if (v28 >= v26)
              {
                v26 = *v23;
              }

              else
              {
                *v9 = v28;
                *v23 = v26;
                v29 = *v9;
                v30 = *a2;
                if (v29 < v30)
                {
                  *a2 = v29;
                  *v9 = v30;
                  v26 = *v23;
                }
              }

              goto LABEL_88;
            }

            if (v28 >= v26)
            {
              *a2 = v26;
              *v9 = v27;
              v26 = *v23;
              if (v26 >= v27)
              {
                goto LABEL_88;
              }

              *v9 = v26;
            }

            else
            {
              *a2 = v28;
            }

            *v23 = v27;
            v26 = v27;
LABEL_88:
            v61 = *v25;
            if (v61 < v26)
            {
              *v23 = v61;
              *v25 = v26;
              v62 = *v23;
              v63 = *v9;
              if (v62 < v63)
              {
                *v9 = v62;
                *v23 = v63;
                v64 = *v9;
                v65 = *a2;
                if (v64 < v65)
                {
                  *a2 = v64;
                  *v9 = v65;
                }
              }
            }

            v66 = *(a4 - 2);
            v67 = *v25;
            if (v66 >= v67)
            {
              return 1;
            }

            *v25 = v66;
            *(a4 - 2) = v67;
            v68 = *v25;
            v69 = *v23;
            if (v68 >= v69)
            {
              return 1;
            }

            *v23 = v68;
            *v25 = v69;
LABEL_101:
            v71 = *v23;
            v72 = *v9;
            if (v71 >= v72)
            {
              return 1;
            }

            *v9 = v71;
            *v23 = v72;
            goto LABEL_103;
          }

          v24 = 1;
LABEL_36:
          v25 = (*&a1[(v24 >> 8) & 0xFFFFFFFFFFFFF8] + 2 * (v24 & 0x7FF));
          goto LABEL_37;
        }

        v10 = 1;
      }

      else
      {
        v9 = (*&a1[((v6 + 1) >> 8) & 0xFFFFFFFFFFFFF8] + 2 * ((v6 + 1) & 0x7FF));
        v10 = v6 + 2;
      }

      v23 = (*&a1[(v10 >> 8) & 0xFFFFFFFFFFFFF8] + 2 * (v10 & 0x7FF));
      v24 = v6 + 3;
      goto LABEL_36;
    }

    if (v6 < 0)
    {
      v9 = (*&a1[-8 * ((2046 - v6) >> 11)] + 2 * (~(2046 - v6) & 0x7FF));
      if (v5 != -2)
      {
        v23 = (*&a1[-8 * ((2045 - v6) >> 11)] + 2 * (~(2045 - v6) & 0x7FF));
LABEL_48:
        if (v4 == a4)
        {
          a4 = *(a3 - 1) + 4096;
        }

        v31 = *v9;
        v32 = *a2;
        v33 = *v23;
        if (v31 >= v32)
        {
          if (v33 >= v31)
          {
            v31 = *v23;
          }

          else
          {
            *v9 = v33;
            *v23 = v31;
            v34 = *v9;
            v35 = *a2;
            if (v34 < v35)
            {
              *a2 = v34;
              *v9 = v35;
              v31 = *v23;
            }
          }

          goto LABEL_99;
        }

        if (v33 >= v31)
        {
          *a2 = v31;
          *v9 = v32;
          v31 = *v23;
          if (v31 >= v32)
          {
LABEL_99:
            v70 = *(a4 - 2);
            if (v70 >= v31)
            {
              return 1;
            }

            *v23 = v70;
            *(a4 - 2) = v31;
            goto LABEL_101;
          }

          *v9 = v31;
        }

        else
        {
          *a2 = v33;
        }

        *v23 = v32;
        v31 = v32;
        goto LABEL_99;
      }

      v19 = 1;
    }

    else
    {
      v9 = (*&a1[((v6 + 1) >> 8) & 0xFFFFFFFFFFFFF8] + 2 * ((v6 + 1) & 0x7FF));
      v19 = v6 + 2;
    }

    v23 = (*&a1[(v19 >> 8) & 0xFFFFFFFFFFFFF8] + 2 * (v19 & 0x7FF));
    goto LABEL_48;
  }

  if (v7 < 2)
  {
    return 1;
  }

  if (v7 == 2)
  {
    if (v4 == a4)
    {
      a4 = *(a3 - 1) + 4096;
    }

    v11 = *(a4 - 2);
    v12 = *a2;
    if (v11 < v12)
    {
      *a2 = v11;
      *(a4 - 2) = v12;
    }

    return 1;
  }

LABEL_17:
  if (v6 <= -2)
  {
    v13 = &a1[-8 * ((2045 - v6) >> 11)];
    v14 = *v13;
    v15 = (*v13 + 2 * (~(2045 - v6) & 0x7FF));
    v18 = 2046 - v6;
  }

  else
  {
    v13 = &a1[8 * ((v6 + 2) >> 11)];
    v14 = *v13;
    v15 = (*v13 + 2 * ((v6 + 2) & 0x7FF));
    v16 = __CFADD__(v6, 1);
    v17 = v6 + 1;
    if (!v16)
    {
      v37 = (*&a1[(v17 >> 8) & 0xFFFFFFFFFFFFF8] + 2 * (v17 & 0x7FF));
      goto LABEL_59;
    }

    v18 = 2047;
  }

  v37 = (*&a1[-8 * (v18 >> 11)] + 2 * (~v18 & 0x7FF));
LABEL_59:
  v38 = *v37;
  v39 = *a2;
  v40 = *v15;
  if (v38 >= v39)
  {
    if (v40 < v38)
    {
      *v37 = v40;
      *v15 = v38;
      v41 = *v37;
      v42 = *a2;
      if (v41 < v42)
      {
        *a2 = v41;
        *v37 = v42;
      }
    }
  }

  else
  {
    if (v40 >= v38)
    {
      *a2 = v38;
      *v37 = v39;
      v43 = *v15;
      if (v43 >= v39)
      {
        goto LABEL_68;
      }

      *v37 = v43;
    }

    else
    {
      *a2 = v40;
    }

    *v15 = v39;
  }

LABEL_68:
  v44 = v15 - v14;
  if (v44 < 0)
  {
    v49 = 2046 - v44;
    v46 = &v13[-8 * (v49 >> 11)];
    v47 = *v46;
    v48 = ~v49 & 0x7FFLL;
  }

  else
  {
    v45 = v44 + 1;
    v46 = &v13[8 * (v45 >> 11)];
    v47 = *v46;
    v48 = v45 & 0x7FF;
  }

  v50 = &v47[v48];
  if (v50 == a4)
  {
    return 1;
  }

  v51 = 0;
  while (1)
  {
    v52 = v50;
    v53 = v46;
    v54 = v47;
    v55 = *v50;
    v56 = *v15;
    if (v55 < v56)
    {
      v57 = v52;
      do
      {
        v58 = v15;
        *v57 = v56;
        if (v15 == a2)
        {
          break;
        }

        if (v15 == v14)
        {
          v59 = *(v13 - 1);
          v13 -= 8;
          v14 = v59;
          v15 = v59 + 2048;
        }

        v60 = *--v15;
        LOWORD(v56) = v60;
        v57 = v58;
      }

      while (v55 < v60);
      *v58 = v55;
      if (++v51 == 8)
      {
        break;
      }
    }

    v50 = v52 + 1;
    v47 = v54;
    v46 = v53;
    if ((v52 + 1) - v54 == 4096)
    {
      v46 = v53 + 8;
      v47 = *(v53 + 1);
      v50 = v47;
    }

    result = 1;
    v14 = v54;
    v13 = v53;
    v15 = v52;
    if (v50 == a4)
    {
      return result;
    }
  }

  v75 = v52 + 1;
  if ((v52 + 1) - v54 == 4096)
  {
    v75 = *(v53 + 1);
  }

  return v75 == a4;
}

char **std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(uint64_t *a1, unsigned __int16 *a2, char **a3, unsigned __int16 *a4, char **a5, unsigned __int16 *a6, uint64_t a7)
{
  if (a2 != a4)
  {
    v10 = a4;
    v11 = a3;
    v40 = a1;
    v41 = a2;
    v14 = (a3 - a1) << 8;
    v15 = *a3;
    v16 = ((a4 - *a3) >> 1) + v14 - ((a2 - *a1) >> 1);
    if (v16 >= 2)
    {
      v39 = (a3 - a1) << 8;
      v17 = (v16 - 2) >> 1;
      do
      {
        v18 = v40;
        v19 = v41;
        v20 = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](&v40, v17);
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(v18, v19, a7, v16, v20, v21);
        --v17;
      }

      while (v17 != -1);
      v15 = *v11;
      v14 = v39;
      v16 = v39 + ((v10 - *v11) >> 1) - ((a2 - *a1) >> 1);
    }

    if (v10 == a6)
    {
      a5 = v11;
    }

    else
    {
      v22 = v10;
      a5 = v11;
      do
      {
        v23 = *v22;
        v24 = *a2;
        if (v23 < v24)
        {
          *v22 = v24;
          *a2 = v23;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(a1, a2, a7, v16, a1, a2);
          v15 = *a5;
        }

        if (++v22 - v15 == 4096)
        {
          v25 = a5[1];
          ++a5;
          v15 = v25;
          v22 = v25;
        }
      }

      while (v22 != a6);
      v16 = v14 + ((v10 - *v11) >> 1) - ((a2 - *a1) >> 1);
    }

    if (v16 >= 2)
    {
      do
      {
        v26 = *a2;
        v27 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(a1, a2, a7, v16);
        v29 = v27;
        v30 = *v11;
        v31 = v10;
        if (*v11 == v10)
        {
          v31 = (*(v11 - 1) + 4096);
        }

        v32 = (v31 - 2);
        if (v32 == v28)
        {
          *v28 = v26;
        }

        else
        {
          *v28 = *v32;
          v33 = (v28 + 1);
          v34 = *v27;
          if ((v28 - *v27 + 2) == 4096)
          {
            v29 = v27 + 8;
            v33 = *(v27 + 1);
            v34 = v33;
          }

          *v32 = v26;
          if (v33 == a2)
          {
            v35 = 0;
          }

          else
          {
            v35 = ((v29 - a1) << 8) + ((v33 - v34) >> 1) - ((a2 - *a1) >> 1);
          }

          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(a1, a2, v29, v33, a7, v35);
          v30 = *v11;
        }

        if (v10 == v30)
        {
          v36 = *--v11;
          v10 = (v36 + 4096);
        }

        --v10;
      }

      while (v16-- > 2);
    }
  }

  return a5;
}

uint64_t *std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(uint64_t *result, _WORD *a2, uint64_t a3, uint64_t a4, char *a5, _WORD *a6)
{
  v6 = a6;
  v21[0] = result;
  v21[1] = a2;
  if (a6 == a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((a6 - *a5) >> 1) + ((a5 - result) << 8) - ((a2 - *result) >> 1);
  }

  v9 = a4 - 2;
  if (a4 >= 2)
  {
    v10 = v9 >> 1;
    if ((v9 >> 1) >= v8)
    {
      v11 = 2 * v8;
      v12 = (2 * v8) | 1;
      result = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v21, v12);
      if (v11 + 2 < a4)
      {
        v14 = (v13 - *result) >> 1;
        v15 = (v14 < 0 ? result[-((2046 - v14) >> 11)] + 2 * (~(2046 - v14) & 0x7FF) : *(result + (((v14 + 1) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v14 + 1) & 0x7FF));
        if (*v13 < *v15)
        {
          if ((++v13 - *result) == 4096)
          {
            v13 = result[1];
          }

          v12 = v11 + 2;
        }
      }

      v16 = *v13;
      v17 = *v6;
      if (v16 >= v17)
      {
        do
        {
          *v6 = v16;
          v6 = v13;
          if (v10 < v12)
          {
            break;
          }

          v18 = 2 * v12;
          v12 = (2 * v12) | 1;
          result = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v21, v12);
          if (v18 + 2 < a4)
          {
            v19 = (v13 - *result) >> 1;
            v20 = (v19 < 0 ? result[-((2046 - v19) >> 11)] + 2 * (~(2046 - v19) & 0x7FF) : *(result + (((v19 + 1) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v19 + 1) & 0x7FF));
            if (*v13 < *v20)
            {
              if ((++v13 - *result) == 4096)
              {
                v13 = result[1];
              }

              v12 = v18 + 2;
            }
          }

          v16 = *v13;
        }

        while (v16 >= v17);
        *v6 = v17;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  do
  {
    v5 = a2;
    if (v4 != -1)
    {
      v6 = v4 + 1 + ((a2 - *result) >> 1);
      if (v6 < 1)
      {
        v7 = 2047 - v6;
        result -= v7 >> 11;
        a2 = (*result + 2 * (~v7 & 0x7FF));
      }

      else
      {
        result += v6 >> 11;
        a2 = (*result + 2 * (v6 & 0x7FF));
      }
    }

    v8 = (2 * v4) | 1;
    v4 = 2 * v4 + 2;
    if (v4 >= a4 || ((v9 = (a2 - *result) >> 1, v9 < 0) ? (v10 = (result[-((2046 - v9) >> 11)] + 2 * (~(2046 - v9) & 0x7FF))) : (v10 = (*(result + (((v9 + 1) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v9 + 1) & 0x7FF))), *a2 >= *v10))
    {
      v4 = v8;
    }

    else if ((++a2 - *result) == 4096)
    {
      v11 = result[1];
      ++result;
      a2 = v11;
    }

    *v5 = *a2;
  }

  while (v4 <= (a4 - 2) / 2);
  return result;
}

uint64_t *std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>>(uint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = result;
  v15[1] = a2;
  v6 = a6 - 2;
  if (a6 >= 2)
  {
    v9 = v6 >> 1;
    result = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v15, v6 >> 1);
    if (*a3 == a4)
    {
      a4 = *(a3 - 1) + 4096;
    }

    v13 = *(a4 - 2);
    v11 = (a4 - 2);
    v12 = v13;
    v14 = *v10;
    if (v14 < v13)
    {
      do
      {
        *v11 = v14;
        v11 = v10;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        result = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v15, v9);
        v14 = *v10;
      }

      while (v14 < v12);
      *v11 = v12;
    }
  }

  return result;
}

void std::deque<unsigned short>::resize(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {

    std::deque<unsigned short>::__append(a1, v5);
  }

  else if (!v4)
  {
    v6 = a1[1];
    if (a1[2] == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 8 * (a1[4] >> 11)) + 2 * (a1[4] & 0x7FFLL);
    }

    v10[0] = v6 + 8 * (a1[4] >> 11);
    v10[1] = v7;
    v8 = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v10, a2);
    std::deque<unsigned short>::__erase_to_end(a1, v8, v9);
  }
}

void std::deque<unsigned short>::__append(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 8) - 1;
  }

  v7 = a1[5] + a1[4];
  v8 = v6 - v7;
  v9 = a2 > v8;
  v10 = a2 - v8;
  if (v9)
  {
    std::deque<unsigned short>::__add_back_capacity(a1, v10);
    v4 = a1[1];
    v5 = a1[2];
    v7 = a1[4] + a1[5];
  }

  v11 = (v4 + 8 * (v7 >> 11));
  if (v5 == v4)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = (*v11 + 2 * (v7 & 0x7FF));
    v13 = v12;
  }

  v23[0] = v11;
  v23[1] = v13;
  v14 = std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v23, a2);
  if (v12 != v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = a1[5];
    do
    {
      if (v11 == v16)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v11 + 4096;
      }

      if (v12 == v19)
      {
        v21 = v12;
      }

      else
      {
        v20 = ((v19 - v12 - 2) & 0xFFFFFFFFFFFFFFFELL) + 2;
        bzero(v12, v20);
        v21 = &v12[v20];
      }

      v18 += (v21 - v12) >> 1;
      if (v11 == v16)
      {
        break;
      }

      v22 = v11[1];
      ++v11;
      v12 = v22;
    }

    while (v22 != v17);
    a1[5] = v18;
  }
}

uint64_t std::deque<unsigned short>::__erase_to_end(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 11));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 2 * (v5 & 0x7FF);
  }

  if (v9 != a3)
  {
    v10 = ((v9 - *v8) >> 1) + ((v8 - a2) << 8);
    v11 = a3 - *a2;
    v12 = v10 - (v11 >> 1);
    if (v12 >= 1)
    {
      v13 = (v6 + 8 * (v4 >> 11));
      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v13 + 2 * (*(result + 32) & 0x7FFLL);
      }

      v16[0] = v13;
      v16[1] = v14;
      if (a3 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = (v11 >> 1) + ((a2 - v13) << 8) - ((v14 - *v13) >> 1);
      }

      std::__deque_iterator<unsigned short,unsigned short *,unsigned short &,unsigned short **,long,2048l>::operator+[abi:ne200100](v16, v15);
      v3[5] -= v12;
      do
      {
        result = std::deque<unsigned short>::__maybe_remove_back_spare[abi:ne200100](v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t std::deque<unsigned short>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 8) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x800)
  {
    a2 = 1;
  }

  if (v5 < 0x1000)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void MTMBSelectGlue::MTMBSelectGlue(MTMBSelectGlue *this, MEOWReader *a2, MTBEPersistentParam *a3, char a4)
{
  *this = &unk_2868F8100;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 24) = a4;
  *(this + 25) = 0;
  MTMBUnitInstructions::MTMBUnitInstructions((this + 112));
  MEOWSearchLattice::Create(a2, 1);
}

void sub_257B627E4(_Unwind_Exception *a1)
{
  MTMBUnitInstructions::~MTMBUnitInstructions((v1 + 112));
  MTFESpeechVisitor::~MTFESpeechVisitor(v1);
  _Unwind_Resume(a1);
}

void MTMBSelectGlue::~MTMBSelectGlue(MTMBSelectGlue *this)
{
  *this = &unk_2868F8100;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MTMBUnitInstructions::~MTMBUnitInstructions((this + 112));

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  MTMBSelectGlue::~MTMBSelectGlue(this);

  JUMPOUT(0x259C6DA90);
}

void MTMBSelectGlue::VisitSentence(MTMBSelectGlue *this, MTFESpeechElement *a2)
{
  (*(**(this + 4) + 144))(*(this + 4));
  v4 = *(*(this + 2) + 48);
  if (kMTMBBreathSentenceLimit)
  {
    MTBEDebugParams::GetParam(kMTMBBreathSentenceLimit, &qword_27F8F2918, qword_27F8F2918);
    kMTMBBreathSentenceLimit = 0;
  }

  if (qword_27F8F2918 >= v4)
  {
    if (kMTMBBreathSentenceLength)
    {
      MTBEDebugParams::GetParam(kMTMBBreathSentenceLength, &qword_27F8F2928, qword_27F8F2928);
      kMTMBBreathSentenceLength = 0;
    }

    v6 = qword_27F8F2928;
    v5 = *(this + 2);
  }

  else
  {
    v5 = *(this + 2);
    v6 = *(v5 + 50) - 1;
  }

  *(v5 + 50) = v6;
  if ((a2[1].var0 & 3) == 1)
  {
    if (kMTMBBreathParagraphAdjust)
    {
      MTBEDebugParams::GetParam(kMTMBBreathParagraphAdjust, &qword_27F8F2938, qword_27F8F2938);
      kMTMBBreathParagraphAdjust = 0;
      v5 = *(this + 2);
    }

    v6 = *(v5 + 50) - qword_27F8F2938;
    *(v5 + 50) = v6;
  }

  *(this + 106) = a2[1].var1 >= v6;
  if (kMTMBBreathPhraseLength)
  {
    MTBEDebugParams::GetParam(kMTMBBreathPhraseLength, &qword_27F8F2948, qword_27F8F2948);
    kMTMBBreathPhraseLength = 0;
  }

  *(this + 54) = qword_27F8F2948;
  if ((*(this + 24) & 1) == 0)
  {

    MTFESpeechElement::VisitChildren(a2, this);
  }
}

void MTMBSelectGlue::VisitIntonationalPhrase(MTMBSelectGlue *this, MTFESpeechElement *a2)
{
  if (MTBEDebugFlags::sMEOWDebug)
  {
    HIDWORD(a2[2].var5);
    operator new[]();
  }

  *(this + 5) = 0;
  v4 = (a2[2].var3 + 4 * SLODWORD(a2[2].var5));
  *(this + 7) = 0;
  *(this + 8) = v4;
  *(this + 107) = 0;
  (*(**(this + 4) + 16))(*(this + 4), a2);
  if (*(this + 106) == 1)
  {
    v5 = *(*(this + 2) + 48);
    if (kMTMBBreathPhraseLimit)
    {
      MTBEDebugParams::GetParam(kMTMBBreathPhraseLimit, &qword_27F8F2958, qword_27F8F2958);
      kMTMBBreathPhraseLimit = 0;
    }

    if (qword_27F8F2958 >= v5)
    {
      if (kMTMBBreathPhraseLength)
      {
        MTBEDebugParams::GetParam(kMTMBBreathPhraseLength, &qword_27F8F2948, qword_27F8F2948);
        kMTMBBreathPhraseLength = 0;
      }

      *(this + 54) = qword_27F8F2948;
    }

    else
    {
      --*(this + 54);
    }

    if (!a2->var7)
    {
      goto LABEL_16;
    }

    v6 = *(*(this + 2) + 48);
    if (kMTMBBreathSpacing)
    {
      MTBEDebugParams::GetParam(kMTMBBreathSpacing, &qword_27F8F2968, qword_27F8F2968);
      kMTMBBreathSpacing = 0;
    }

    if (qword_27F8F2968 <= v6 && SWORD1(a2[2].var7) >= *(this + 54))
    {
LABEL_16:
      *(this + 107) = 1;
    }
  }

  if ((*(this + 24) & 1) == 0)
  {
    MTFESpeechElement::VisitChildren(a2, this);

    MTFECommands::Visit(&a2[1].var1, this);
  }
}

uint64_t MTMBSelectGlue::VisitIntermediatePhrase(MTMBSelectGlue *this, MTFESpeechElement *a2)
{
  result = MTFESpeechElement::VisitChildren(a2, this);
  if (*(this + 24) == 1)
  {
    v4 = *(this + 5);
    if (v4)
    {
      v5 = *(v4 + 264);
      if (v5)
      {
        v6 = *(this + 7);
        v7 = *(v6 + 40);
        if (v7)
        {
          if (!*(v7 + 58))
          {
            v8 = *(v5 + 4);
            if (*(v7 + 93))
            {
              v9 = 1;
            }

            else
            {
              v9 = (v8 & 0xFE00) == 0;
            }

            if (!v9)
            {
              v10 = *(v7 + 94);
              v11 = bswap32(*(v7 + 90));
              v13 = v8;
              MTMBSelectGlue::Prev(this, &v13, &v14);
              v12 = v11 & 0xFFFF0000 | (v10 << 8);
              result = MTMBSelectGlue::FindGlue(this, v6, v7, &v14, &v12);
            }

            *(this + 5) = 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t MTMBSelectGlue::FindGlue(uint64_t result, uint64_t a2, uint64_t a3, int *a4, unsigned __int8 *a5)
{
  v9 = result;
  if (*(a4 + 1) == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a4 + 1);
  }

  if (*(a5 + 1) == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a5;
  }

  if (*(a2 + 88) == -1 || *(a2 + 93) == v10)
  {
    result = MEOWReader::CountDiphones(*(result + 8), v10, v11);
    if (result)
    {
      if (v10)
      {
        MEOWAnchorSliceInfo::MEOWAnchorSliceInfo(&v19);
        v19 = *a4;
        (*(**(v9 + 32) + 64))(*(v9 + 32), &v19);
      }

      MEOWDiphoneSliceInfo::MEOWDiphoneSliceInfo(&v19);
      LOBYTE(v19) = v10;
      BYTE1(v19) = v11;
      if ((*(a2 + 72) & 0x1400) != 0)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      if ((*(a3 + 72) & 0x1400) != 0)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v20 = v12;
      v21 = v13;
      v14 = *(v9 + 64);
      v22 = *(v9 + 88);
      v23 = v14 - 4 * v22;
      v24 = *(v9 + 105) ^ 1;
      v25 = 1;
      (*(**(v9 + 32) + 32))(*(v9 + 32), &v19);
      MTMBSelectGlue::HandleInstructions(v9);
      if (v11)
      {
        MEOWAnchorSliceInfo::MEOWAnchorSliceInfo(&v19);
        v19 = *a5;
        (*(**(v9 + 32) + 64))(*(v9 + 32), &v19);
        v15 = *(v9 + 32);
        v16 = (*(*v15 + 80))(v15) - 1;
        v17 = (*(**(v9 + 32) + 120))(*(v9 + 32));
        v18 = (*(*v15 + 136))(v15, v16, v17);
        if (!v10)
        {
LABEL_21:
          if (v11)
          {
            *(a3 + 92) = v10;
            *(a3 + 93) = v11;
            *(a3 + 88) = v18;
          }

          return (*(**(v9 + 32) + 88))(*(v9 + 32));
        }
      }

      else
      {
        v18 = (*(**(v9 + 32) + 120))(*(v9 + 32));
        if (!v10)
        {
          goto LABEL_21;
        }
      }

      *(a2 + 93) = v10;
      *(a2 + 94) = v11;
      *(a2 + 90) = v18;
      goto LABEL_21;
    }
  }

  return result;
}

void MTMBSelectGlue::Prev(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  MEOWVectorBase::MEOWVectorBase(v8, 2);
  MEOWReader::GetDemi(*(a1 + 8), a2, 0, v6);
  *(a2 + 1) = *a2;
  *a2 = v6[67];
  *(a2 + 2) = bswap32(v7) >> 16;
  *a3 = *a2;
  MEOWVectorBase::~MEOWVectorBase(v8);
}

MTFESpeechElement *MTMBSelectGlue::VisitWord(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  if ((BYTE1(this->var4) & 1) == 0)
  {
    v3 = this;
    this->var7 = a2;
    this[1].var4 = *&this[1].var1;
    LOBYTE(this[1].var7) = 1;
    BYTE1(this[1].var7) = (a2[1].var0 & 0x1000) != 0;
    *(&a2[3].var2 + 1) = 0;
    MTFECommands::Visit(&a2[2], this);
    this = MTFESpeechElement::VisitChildren(a2, v3);
    v3->var6 = v3->var7;
    v3[1].var3 = v3[1].var4;
    if ((a2[1].var0 & 0x40) == 0)
    {
      BYTE3(v3[1].var7) = 0;
      ++LOWORD(v3->var3->var7);
    }
  }

  return this;
}

uint64_t MTMBSelectGlue::VisitCommand(uint64_t this, MTFECommand *a2)
{
  var8 = a2->var8;
  v4 = var8 == 1835429746 || var8 == 1836475764 || var8 == 1836021362;
  if (v4 && (a2->var9 & 0x80000000) != 0)
  {
    MTMBUnitInstructions::AddCommand((this + 112), a2);
    v6 = *(a2->var0 + 2);

    return v6(a2);
  }

  return this;
}

void MTMBSelectGlue::VisitPhoneme(MTMBSelectGlue *this, MTFEPhoneme *a2)
{
  var13 = a2->var13;
  *(this + 12) = (var13 * a2->var14);
  if (*(this + 104) != 1)
  {
    goto LABEL_76;
  }

  v5 = *(this + 5);
  if (v5)
  {
    v6 = *(v5 + 264);
    if (v6)
    {
      v7 = *(v6 + 4);
      v8 = *(*(this + 6) + 264);
      if (v8)
      {
        v9 = *v8;
        if (BYTE1(v7) == BYTE1(*v8) || (BYTE1(v7) <= 0x24u ? (v17 = ((1 << SBYTE1(v7)) & 0x1071804001) == 0) : (v17 = 1), v17 && (BYTE1(v9) <= 0x1Eu ? (v18 = ((1 << SBYTE1(v9)) & 0x61804000) == 0) : (v18 = 1), v18)))
        {
          if (*v8 == *(v6 + 4) || (*v8 <= 0x24u ? (v24 = ((1 << v9) & 0x1071804001) == 0) : (v24 = 1), v24 && (*(v6 + 4) <= 0x1Eu ? (v29 = ((1 << v7) & 0x61804000) == 0) : (v29 = 1), v29)))
          {
            if (kMTMBForceQXGlue)
            {
              MTBEDebugParams::GetParam(kMTMBForceQXGlue, &byte_27F8F2978, byte_27F8F2978);
              kMTMBForceQXGlue = 0;
            }

            if (byte_27F8F2978 != 1)
            {
              goto LABEL_76;
            }

            if (v9 == v7)
            {
              goto LABEL_76;
            }

            v31 = v9;
            v32 = v7;
            if (!MTMBSelectGlue::NeedQXGlue(this, &v32, &v31))
            {
              goto LABEL_76;
            }
          }
        }

        if (kMTMBForceGluePitch)
        {
          MTBEDebugParams::GetParam(kMTMBForceGluePitch, &byte_27F8F2988, byte_27F8F2988);
          kMTMBForceGluePitch = 0;
        }

        if (byte_27F8F2988 == 1)
        {
          MTMBSelectGlue::ForceGluePitch(this);
        }

        v10 = *(this + 7);
        v31 = v7;
        MTMBSelectGlue::Prev(this, &v31, &v32);
        v30 = v9;
        goto LABEL_70;
      }

      var21 = a2->var21;
      if (var21 == BYTE1(v7) || (BYTE1(v7) <= 0x24u ? (v23 = ((1 << SBYTE1(v7)) & 0x1071804001) == 0) : (v23 = 1), v23 && (var21 > 0x1E || ((1 << var21) & 0x61804000) == 0)))
      {
        if (BYTE1(v7) >= 2u && var21 == 0)
        {
          var21 = 0;
        }

        else
        {
          if (kMTMBForceGlue)
          {
            MTBEDebugParams::GetParam(kMTMBForceGlue, &byte_27F8F2998, byte_27F8F2998);
            kMTMBForceGlue = 0;
          }

          if (byte_27F8F2998 != 1)
          {
            goto LABEL_76;
          }

          var21 = a2->var21;
          if (!a2->var21)
          {
            goto LABEL_76;
          }
        }
      }

      var22 = a2->var22;
      v26 = bswap32(a2->var19);
      v10 = *(this + 7);
      v31 = v7;
      MTMBSelectGlue::Prev(this, &v31, &v32);
      v31 = v26 & 0xFFFF0000 | (var22 << 8) | var21;
      goto LABEL_75;
    }
  }

  v10 = *(this + 7);
  v11 = *(*(this + 6) + 264);
  if (!v11)
  {
    if (!v10 || *(v10 + 58))
    {
      goto LABEL_76;
    }

    v32 = bswap32(a2->var19) & 0xFFFF0000 | (a2->var22 << 8) | a2->var21;
    goto LABEL_52;
  }

  if (v10 && !*(v10 + 58))
  {
    if (*v11 > 1u)
    {
      v31 = *v11;
      MTMBSelectGlue::Next(this, &v31, &v32);
      v19 = this;
      v20 = v10;
      v21 = a2;
      v22 = 1;
      goto LABEL_72;
    }

    v31 = *v11;
    MTMBSelectGlue::Next(this, &v31, &v32);
LABEL_52:
    v19 = this;
    v20 = v10;
    v21 = a2;
    v22 = 0;
LABEL_72:
    MTMBSelectGlue::FindBreath(v19, v20, v21, &v32, v22);
    goto LABEL_76;
  }

  v12 = *v11;
  v13 = *(v10 + 93);
  if (v13 != v12)
  {
    if (v12 <= 0x24u && ((1 << v12) & 0x1071804001) != 0)
    {
      goto LABEL_38;
    }

    if (v13 <= 0x1E && ((1 << v13) & 0x61804000) != 0)
    {
      goto LABEL_38;
    }
  }

  if (kMTMBForceGlue)
  {
    MTBEDebugParams::GetParam(kMTMBForceGlue, &byte_27F8F2998, byte_27F8F2998);
    kMTMBForceGlue = 0;
  }

  if (byte_27F8F2998 == 1)
  {
    v10 = *(this + 7);
    v13 = *(v10 + 93);
LABEL_38:
    v32 = bswap32(*(v10 + 88)) & 0xFFFF0000 | (v13 << 8) | *(v10 + 92);
    v30 = v12;
LABEL_70:
    MTMBSelectGlue::Next(this, &v30, &v31);
LABEL_75:
    MTMBSelectGlue::FindGlue(this, v10, a2, &v32, &v31);
  }

LABEL_76:
  *(this + 104) = 0;
  v27 = *(this + 8) + 4 * var13;
  *(this + 7) = a2;
  *(this + 8) = v27;
  *(this + 11) = var13 - *(this + 12);
}

uint64_t MTMBSelectGlue::NeedQXGlue(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  MEOWVectorBase::MEOWVectorBase(v10, 2);
  MEOWReader::GetDemi(*(a1 + 8), a2, 0, v8);
  if (v9)
  {
    v6 = 1;
  }

  else
  {
    MEOWReader::GetDemi(*(a1 + 8), a3, 0, v8);
    v6 = v9 & 1;
  }

  MEOWVectorBase::~MEOWVectorBase(v10);
  return v6;
}

void MTMBSelectGlue::ForceGluePitch(MTMBSelectGlue *this)
{
  MTMBDemi::MTMBDemi(v5);
  MTMBDemi::MTMBDemi(v4);
  MEOWVectorBase::MEOWVectorBase(&v3, 2);
  MEOWReader::GetWord(*(this + 1), *(*(this + 5) + 264), v2, 0, 1);
  operator new();
}

void sub_257B63858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MEOWVectorBase::~MEOWVectorBase((v15 + 72));
  MTMBDemi::~MTMBDemi(va);
  MTMBDemi::~MTMBDemi((v16 - 144));
  _Unwind_Resume(a1);
}

void MTMBSelectGlue::Next(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  MEOWVectorBase::MEOWVectorBase(v8, 2);
  MEOWReader::GetDemi(*(a1 + 8), a2, 1, v6);
  *a2 = *(a2 + 1);
  *(a2 + 1) = v6[67];
  *(a2 + 2) = bswap32(v7) >> 16;
  *a3 = *a2;
  MEOWVectorBase::~MEOWVectorBase(v8);
}

uint64_t MTMBSelectGlue::FindBreath(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5)
{
  v9 = result;
  v35 = *MEMORY[0x277D85DE8];
  if (*(a4 + 1) != -1 && *(result + 107) == 1 && *(a2 + 64) >= 30.0)
  {
    v10 = *a4;
    result = MEOWReader::CountDiphones(*(result + 8), 1u, v10);
    if (result)
    {
      if (a5)
      {
        MEOWDiphoneSliceInfo::MEOWDiphoneSliceInfo(&v28);
        LOBYTE(v28) = 1;
        BYTE1(v28) = v10;
        if ((*(a3 + 72) & 0x1400) != 0)
        {
          v11 = 2;
        }

        else
        {
          v11 = 1;
        }

        v29 = 1;
        v30 = v11;
        v12 = *(v9 + 64);
        v31 = *(v9 + 88);
        v32 = v12 - 4 * v31;
        v33 = 257;
        (*(**(v9 + 32) + 40))(*(v9 + 32), &v28);
        MTMBSelectGlue::HandleInstructions(v9);
        MEOWAnchorSliceInfo::MEOWAnchorSliceInfo(v20);
        *v20 = *a4;
        (*(**(v9 + 32) + 64))(*(v9 + 32), v20);
        v13 = *(v9 + 32);
        v14 = (*(*v13 + 80))(v13) - 1;
        v15 = (*(**(v9 + 32) + 120))(*(v9 + 32));
        v16 = (*(*v13 + 136))(v13, v14, v15);
      }

      else
      {
        MEOWDemiSliceInfo::MEOWDemiSliceInfo(v20, 0);
        LOBYTE(v28) = 1;
        BYTE1(v28) = v10;
        *&v31 = 0;
        BYTE8(v31) = 0;
        v34 = 0;
        v20[0] = 1;
        v20[1] = v10;
        v21 = 1;
        v17 = *(v9 + 64) - 4 * *(v9 + 88);
        v22 = *(v9 + 88);
        v23 = 0;
        v24 = v17;
        v25 = 1;
        v26 = 1;
        v27 = &v28;
        (*(**(v9 + 32) + 56))(*(v9 + 32), v20);
        MTMBSelectGlue::HandleInstructions(v9);
        v16 = (*(**(v9 + 32) + 120))(*(v9 + 32));
      }

      v18 = v16;
      if ((*(**(v9 + 32) + 128))(*(v9 + 32)) < 1000.0)
      {
        *(*(v9 + 16) + 48) = 0;
        if (kMTMBBreathPhraseLength)
        {
          MTBEDebugParams::GetParam(kMTMBBreathPhraseLength, &qword_27F8F2948, qword_27F8F2948);
          kMTMBBreathPhraseLength = 0;
        }

        *(v9 + 108) = qword_27F8F2948;
        if (kMTMBBreathSentenceLength)
        {
          MTBEDebugParams::GetParam(kMTMBBreathSentenceLength, &qword_27F8F2928, qword_27F8F2928);
          kMTMBBreathSentenceLength = 0;
        }

        *(*(v9 + 16) + 50) = qword_27F8F2928;
        *(a2 + 93) = 1;
        *(a2 + 94) = v10;
        *(a2 + 90) = v18;
        if (v10 && a5)
        {
          *(a3 + 92) = 1;
          *(a3 + 93) = v10;
          *(a3 + 88) = v18;
        }

        result = (*(**(v9 + 32) + 88))(*(v9 + 32));
        goto LABEL_23;
      }

      result = (*(**(v9 + 32) + 88))(*(v9 + 32));
    }
  }

  if (a5)
  {
    v28 = -65536;
    *v20 = *a4;
    result = MTMBSelectGlue::FindGlue(v9, a2, a3, &v28, v20);
  }

LABEL_23:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *MTMBSelectGlue::HandleInstructions(MTMBSelectGlue *this)
{
  v3 = 0;
  if (MTMBUnitInstructions::ReadyInQueue(this + 112, this + 15, &v3))
  {
    do
    {
      (*(**(this + 4) + 112))(*(this + 4), v3);
    }

    while ((MTMBUnitInstructions::ReadyInQueue(this + 112, this + 15, &v3) & 1) != 0);
  }

  if (MTMBUnitInstructions::ReadyInQueue(this + 112, this + 14, &v3))
  {
    do
    {
      (*(**(this + 4) + 96))(*(this + 4), v3);
    }

    while ((MTMBUnitInstructions::ReadyInQueue(this + 112, this + 14, &v3) & 1) != 0);
  }

  return MTMBUnitInstructions::NextSlice(this + 14);
}

void *MTMBDiphoneVariants::AddPassThrough(MTMBDiphoneVariants *this)
{
  result = MEOWVectorBase::Append(this);
  v3 = *this + 144 * *(this + 2);
  *(v3 - 144) = 0;
  *(v3 - 136) = 0;
  *(v3 - 128) = 0;
  *(v3 - 64) = 0;
  return result;
}

void *MTMBDiphoneVariants::AddVariant(void *this, MEOWReader *a2, unsigned int a3, unsigned int a4)
{
  v4 = a4;
  v5 = a3;
  v6 = this;
  v7 = this[2];
  if (v7)
  {
    v8 = (*this + 1);
    while (*(v8 - 1) != a3 || *v8 != a4)
    {
      v8 += 144;
      if (!--v7)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    this = MEOWReader::CountDiphones(a2, a3, a4);
    if (this)
    {
      this = MEOWVectorBase::Append(v6);
      v9 = *v6 + 144 * v6[2];
      *(v9 - 144) = v5;
      *(v9 - 143) = v4;
      *(v9 - 136) = 0;
      *(v9 - 128) = 0;
      *(v9 - 64) = 0;
    }
  }

  return this;
}

void *MTMBDiphoneVariants::AddVariants(void *result, MEOWReader *this, _BYTE *a3, unsigned __int8 *a4)
{
  v4 = *a3;
  if (*a3)
  {
    v8 = result;
    v9 = 0;
    v10 = a3 + 1;
    LODWORD(v11) = *a4;
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = v10[v9];
        do
        {
          v14 = a4[v12 + 1];
          result = MEOWReader::CountDiphones(this, v13, v14);
          if (result)
          {
            result = MEOWVectorBase::Append(v8);
            v15 = *v8 + 144 * v8[2];
            *(v15 - 144) = v13;
            *(v15 - 143) = v14;
            *(v15 - 136) = 0;
            *(v15 - 128) = 0;
            *(v15 - 64) = 0;
          }

          ++v12;
          v11 = *a4;
        }

        while (v12 < v11);
        v4 = *a3;
      }

      ++v9;
    }

    while (v9 < v4);
  }

  return result;
}

void MTMBDiphoneVariants::AddLeftContext(void *a1, MEOWReader *a2, void *a3)
{
  v4[0] = *a3 + 4;
  v4[1] = 8;
  v4[2] = a3[2];
  v3[0] = *a1 + 16;
  v3[1] = 144;
  v3[2] = a1[2];
  MTMBDiphoneVariants::AddContext(a1, a2, 0, v4, v3);
}

void MTMBDiphoneVariants::AddContext(void *a1, MEOWReader *this, int a3, void *a4, void *a5)
{
  if (a4[2])
  {
    v10 = 0;
    do
    {
      *__c = 0;
      v11 = (*a4 + a4[1] * v10);
      DemiRecord = MEOWReader::GetDemiRecord(this, *v11, v11[1], bswap32(*(v11 + 1)) >> 16, a3);
      MEOWReader::GetAdjacent(this, DemiRecord, &__c[1], __c);
      v13 = a5[2];
      if (v13)
      {
        v14 = 0;
        v15 = (*a4 + a4[1] * v10);
        v16 = (*a1 + 1);
        while (1)
        {
          if (a3)
          {
            v17 = *v16;
            v18 = v15[1];
          }

          else
          {
            v17 = *(v16 - 1);
            v18 = *v15;
          }

          if (v17 == v18)
          {
            break;
          }

          ++v14;
          v16 += 144;
          if (v13 == v14)
          {
            goto LABEL_13;
          }
        }

        v19 = (*a5 + a5[1] * v14);
        v20 = __c[1];
        v21 = *v19;
        if (!memchr(v19 + 1, __c[1], v21))
        {
          *v19 = v21 + 1;
          v19[v21 + 1] = v20;
        }
      }

LABEL_13:
      ++v10;
    }

    while (v10 < a4[2]);
  }
}

void MTMBDiphoneVariants::AddRightContext(void *a1, MEOWReader *a2, void *a3)
{
  v4[0] = *a3;
  v4[1] = 8;
  v4[2] = a3[2];
  v3[0] = *a1 + 80;
  v3[1] = 144;
  v3[2] = a1[2];
  MTMBDiphoneVariants::AddContext(a1, a2, 1, v4, v3);
}

uint64_t MTMBDiphoneVariants::Index2Variant(MTMBDiphoneVariants *this, unint64_t *a2)
{
  if (!*(this + 2))
  {
    return 0xFFFFFFFLL;
  }

  result = 0;
  v4 = *a2;
  v5 = (*this + 8);
  while (1)
  {
    v6 = *v5;
    v5 += 18;
    v7 = v4 >= v6;
    v4 -= v6;
    if (!v7)
    {
      break;
    }

    *a2 = v4;
    if (++result >= *(this + 2))
    {
      return 0xFFFFFFFLL;
    }
  }

  return result;
}

void MTMBWordSlice::SelectCandidate(MTMBWordSlice *this, MEOWReader *a2, unint64_t a3)
{
  v3 = *(this + 2);
  if ((v3 & 0x80000000) == 0 && v3 < *(this + 12))
  {
    a3 = *(this + 2);
  }

  MEOWReader::GetWordData(a2, this + 3, a3, (*(this + 2) + 264));
}

uint64_t MTMBFirstDemiSlice::SelectCandidate(uint64_t this, MEOWReader *a2, unint64_t a3)
{
  if (*(this + 8) >= 0)
  {
    v3 = *(this + 8);
  }

  else
  {
    v3 = a3;
  }

  v4 = *(this + 32);
  v5 = *(this + 16);
  if (v4)
  {
    v6 = 0;
    v7 = (v5 + 8);
    while (1)
    {
      v8 = *v7;
      v7 += 18;
      v9 = v3 - v8;
      if (v3 < v8)
      {
        break;
      }

      ++v6;
      v3 = v9;
      if (v4 == v6)
      {
        LOWORD(v3) = v9;
        goto LABEL_13;
      }
    }

    if (v6 == 0xFFFFFFFFLL)
    {
      v6 = 0;
      v10 = (v5 + 8);
      while (1)
      {
        v11 = *v10;
        v10 += 18;
        v3 = a3 - v11;
        if (a3 < v11)
        {
          break;
        }

        ++v6;
        a3 = v3;
        if (v4 == v6)
        {
          goto LABEL_13;
        }
      }

      LOWORD(v3) = a3;
    }
  }

  else
  {
LABEL_13:
    v6 = 0xFFFFFFFLL;
  }

  v12 = *(this + 48);
  *(v12 + 90) = v3;
  *(v12 + 94) = *(v5 + 144 * v6 + 1);
  return this;
}

uint64_t MTMBSecondDemiSlice::SelectCandidate(uint64_t this, MEOWReader *a2, unint64_t a3)
{
  if (*(this + 8) >= 0)
  {
    v3 = *(this + 8);
  }

  else
  {
    v3 = a3;
  }

  v4 = *(this + 32);
  v5 = *(this + 16);
  if (v4)
  {
    v6 = 0;
    v7 = (v5 + 8);
    while (1)
    {
      v8 = *v7;
      v7 += 18;
      v9 = v3 - v8;
      if (v3 < v8)
      {
        break;
      }

      ++v6;
      v3 = v9;
      if (v4 == v6)
      {
        LOWORD(v3) = v9;
        goto LABEL_13;
      }
    }

    if (v6 == 0xFFFFFFFFLL)
    {
      v6 = 0;
      v10 = (v5 + 8);
      while (1)
      {
        v11 = *v10;
        v10 += 18;
        v3 = a3 - v11;
        if (a3 < v11)
        {
          break;
        }

        ++v6;
        a3 = v3;
        if (v4 == v6)
        {
          goto LABEL_13;
        }
      }

      LOWORD(v3) = a3;
    }
  }

  else
  {
LABEL_13:
    v6 = 0xFFFFFFFLL;
  }

  v12 = *(this + 48);
  *(v12 + 88) = v3;
  *(v12 + 92) = *(v5 + 144 * v6);
  return this;
}

uint64_t MTMBDiphoneSlice::SelectCandidate(uint64_t this, MEOWReader *a2, __int16 a3)
{
  LOWORD(v3) = a3;
  v4 = this;
  v5 = *(this + 8);
  if ((v5 & 0x80000000) == 0)
  {
    this = MEOWReader::CountDiphones(a2, *(*(this + 16) + 93), *(*(this + 16) + 94));
    if (v5 < this)
    {
      v3 = *(v4 + 8);
    }
  }

  v6 = *(v4 + 24);
  *(*(v4 + 16) + 90) = v3;
  *(v6 + 88) = v3;
  return this;
}

void MTMBSelectUnits::MTMBSelectUnits(MTMBSelectUnits *this, MEOWReader *a2, MTBEPersistentParam *a3, BOOL a4, char a5)
{
  *this = &unk_2868F81B8;
  *(this + 1) = &unk_2868F8238;
  *(this + 2) = a2;
  var6 = a3->var6;
  *(this + 3) = a3;
  *(this + 4) = var6;
  MEOWVectorBase::MEOWVectorBase((this + 96), 8);
  MTMBUnitInstructions::MTMBUnitInstructions((this + 128));
  MEOWVectorBase::MEOWVectorBase((this + 152), 8);
  MEOWVectorBase::MEOWVectorBase((this + 184), 8);
  v9 = (MTBEDebugFlags::sMEOWDebug & 0x100) != 0 || *(a2 + 3814) == 0;
  *(this + 232) = v9;
  *(this + 233) = a5;
  *(this + 234) = 0;
  *(this + 30) = 0;
  MEOWSearchLattice::Create(a2, 0);
}

void sub_257B64544(_Unwind_Exception *a1)
{
  MEMORY[0x259C6DA90](v3, 0x10E1C40730BE78DLL);
  MEOWVectorBase::~MEOWVectorBase(v1 + 23);
  MEOWVectorBase::~MEOWVectorBase(v1 + 19);
  MTMBUnitInstructions::~MTMBUnitInstructions((v1 + 16));
  MEOWVectorBase::~MEOWVectorBase(v1 + 12);
  MTBEWorker::Task::~Task(v2);
  MTFESpeechVisitor::~MTFESpeechVisitor(v1);
  _Unwind_Resume(a1);
}

void MTMBSelectUnits::~MTMBSelectUnits(MTMBSelectUnits *this)
{
  *this = &unk_2868F81B8;
  v2 = (this + 8);
  *(this + 1) = &unk_2868F8238;
  v3 = *(this + 5);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 30);
  if (v4)
  {
    (*(*v4 + 88))(v4);
  }

  MEOWVectorBase::~MEOWVectorBase(this + 23);
  MEOWVectorBase::~MEOWVectorBase(this + 19);
  MTMBUnitInstructions::~MTMBUnitInstructions((this + 128));
  MEOWVectorBase::~MEOWVectorBase(this + 12);
  MTBEWorker::Task::~Task(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  MTMBSelectUnits::~MTMBSelectUnits(this);

  JUMPOUT(0x259C6DA90);
}

void non-virtual thunk toMTMBSelectUnits::~MTMBSelectUnits(MTMBSelectUnits *this)
{
  MTMBSelectUnits::~MTMBSelectUnits((this - 8));
}

{
  MTMBSelectUnits::~MTMBSelectUnits((this - 8));

  JUMPOUT(0x259C6DA90);
}

void MTMBSelectUnits::VisitSentence(MTMBSelectUnits *this, MTFESpeechElement *a2)
{
  (*(**(this + 5) + 144))(*(this + 5));
  *(this + 7) = 0;
  *(this + 8) = a2;
  var3 = a2->var3;
  if (var3)
  {
    while (!var3->var1)
    {
      var3 = var3->var6;
      if (!var3)
      {
        goto LABEL_6;
      }
    }

    a2[1].var4 = var3->var3;
  }

LABEL_6:
  if (*(this + 233) == 1)
  {
    pthread_once(&sScheduleInit, InitSearchSchedule);
    v5 = sUnitSearchSchedule;
    v6 = *(this + 8);

    MTBEWorker::AddTask(v5, (this + 8), v6);
  }

  else
  {
    MTFESpeechElement::VisitChildren(a2, this);
    MTMBSelectUnits::ProcessIntermediatePhrases(this, 0);
    v7 = *(*this + 88);

    v7(this);
  }
}

MTMBSelectUnits *MTMBSelectUnits::ProcessIntermediatePhrases(MTMBSelectUnits *this, MTFESpeechElement *a2)
{
  var3 = *(*(this + 8) + 80);
  if (var3 != a2)
  {
    v3 = a2;
    v4 = this;
    do
    {
      v5 = *(v4 + 30);
      if (v5)
      {
        v6 = var3;
        do
        {
          v7 = v6;
          v6 = v6->var5;
        }

        while (v6 && v6->var3 == v7);
        while (1)
        {
          (**v5)(v5, v7);
          if (v7 == var3)
          {
            break;
          }

          v7 = v7->var3;
          v5 = *(v4 + 30);
        }
      }

      if (var3->var6)
      {
        var3 = var3->var6;
      }

      else
      {
        var5 = var3->var5;
        while (1)
        {
          var5 = var5->var6;
          if (!var5)
          {
            break;
          }

          if (var5->var1)
          {
            var3 = var5->var3;
            goto LABEL_17;
          }
        }

        var3 = 0;
LABEL_17:
        if (!var3)
        {
          v3 = 0;
        }
      }
    }

    while (var3 != v3);
    pthread_mutex_lock((*(v4 + 3) + 96));
    *(*(v4 + 8) + 80) = v3;
    MTBEWorker::DebugLog("Report unit selection progress [%08x].\n", v9, v3);
    if (*(v4 + 234))
    {
      if (!var3)
      {
        v10 = *(v4 + 3);
        *(v10 + 208) = 0;
        pthread_cond_broadcast((v10 + 160));
      }
    }

    else
    {
      pthread_cond_broadcast((*(v4 + 3) + 160));
      if (!var3)
      {
        if ((MTBEDebugFlags::sMTXDebug & 2) != 0)
        {
          v11 = *MEMORY[0x277D85DF8];
          v12 = *(v4 + 2);
          v14[0] = &unk_2868F4E00;
          v14[1] = v11;
          v14[2] = v12;
          v15 = 0;
          v16 = 0;
          MTFESpeechVisitor::Visit(v14, *(v4 + 8));
          MTFESpeechVisitor::~MTFESpeechVisitor(v14);
        }

        v13 = *(v4 + 3);
        if (*(v13 + 64) != 0)
        {
          MTMBLogDiphones::MTMBLogDiphones(v14, *(v13 + 64), *(v13 + 72));
          MTFESpeechVisitor::Visit(v14, *(v4 + 8));
          MTFESpeechVisitor::~MTFESpeechVisitor(v14);
        }
      }
    }

    return pthread_mutex_unlock((*(v4 + 3) + 96));
  }

  return this;
}

void sub_257B64A88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MTFESpeechVisitor::~MTFESpeechVisitor(va);
  _Unwind_Resume(a1);
}

uint64_t MTMBSelectUnits::Execute(MTMBSelectUnits *this, void *a2)
{
  pthread_mutex_lock((*(this + 3) + 96));
  v3 = *(this + 3);
  *(v3 + 208) = this;
  pthread_mutex_unlock((v3 + 96));
  MTFESpeechElement::VisitChildren(*(this + 8), this);
  MTMBSelectUnits::ProcessIntermediatePhrases(this, 0);
  pthread_mutex_lock((*(this + 3) + 96));
  v4 = *(this + 3);
  *(v4 + 208) = 0;
  pthread_cond_broadcast((v4 + 160));
  pthread_mutex_unlock((*(this + 3) + 96));
  v5 = *(*this + 88);

  return v5(this);
}

uint64_t MTMBSelectUnits::VisitIntonationalPhrase(MTMBSelectUnits *this, MTFESpeechElement *a2)
{
  *(this + 9) = a2;
  *(this + 124) = 256;
  *(this + 11) = a2[2].var3 + 4 * SLODWORD(a2[2].var5);
  *(this + 32) = 0;
  (*(**(this + 5) + 16))(*(this + 5));
  v4 = 1;
  *(this + 216) = 1;
  if (BYTE6(a2[2].var6) - 68 >= 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x203020303uLL >> (8 * (BYTE6(a2[2].var6) - 68));
  }

  *(this + 217) = v5;
  v6 = *(this + 232);
  if ((v6 & 1) == 0)
  {
    v4 = a2[3].var6 != 0;
  }

  *(this + 232) = v4;
  MTFESpeechElement::VisitChildren(a2, this);
  MTFECommands::Visit(&a2[1].var1, this);
  *(this + 232) = v6;

  return MTMBSelectUnits::EvaluatePath(this, 1);
}

uint64_t MTMBSelectUnits::EvaluatePath(MTMBSelectUnits *this, int a2)
{
  result = (*(**(this + 5) + 80))(*(this + 5));
  if (result)
  {
    v5 = result;
    if (a2)
    {
      (*(**(this + 5) + 72))(*(this + 5));
    }

    for (i = (*(**(this + 5) + 120))(*(this + 5)); ; i = (*(v9 + 136))())
    {
      --v5;
      v7 = *(this + 14);
      v8 = *(*(this + 12) + 8 * v7 - 8);
      *(this + 14) = v7 - 1;
      (*(*v8 + 16))(v8, *(this + 2), i);
      (*(*v8 + 8))(v8);
      v9 = **(this + 5);
      if (!v5)
      {
        break;
      }
    }

    result = (*(v9 + 88))();
  }

  *(this + 248) = 0;
  return result;
}

MTMBSelectUnits *MTMBSelectUnits::VisitIntermediatePhrase(MTMBSelectUnits *this, MTFESpeechElement *a2)
{
  *(this + 10) = a2;
  var3 = a2->var3;
  if (var3)
  {
    v4 = this;
    do
    {
      if (!var3->var2)
      {
        MTBEAbort(a2);
      }

      this = (*var3->var0)(var3, v4);
      var3 = var3->var6;
    }

    while (var3);
  }

  return this;
}

uint64_t MTMBSelectUnits::FindWordCandidates(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6)
{
  v49 = *MEMORY[0x277D85DE8];
  if (MEOWReader::GetWordDescriptor(*(a1 + 16), a3, a4))
  {
    v12 = (a2 + 200);
    v13 = *a3;
    if (a2 + 200 == *a3)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  strcpy(__dst, *a3);
  v14 = strlen(__dst);
  v15 = v14;
  if (v14 < 4)
  {
    v18 = v14 - 1;
    v20 = __dst[v14 - 1];
    goto LABEL_19;
  }

  v16 = &__dst[v14];
  v17 = __dst[v14 - 2];
  if (v17 == 78)
  {
    if (*(v16 - 1) == 39)
    {
      v18 = v14 - 1;
      if (!__dst[v14])
      {
        v19 = 0;
        __dst[v18] = 71;
LABEL_9:
        v18 = v14;
        goto LABEL_21;
      }
    }

    else
    {
      v18 = v14 - 1;
    }

    v20 = __dst[v18];
LABEL_19:
    if (v20 == 39)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v18 = v14 - 1;
  v21 = &__dst[v14 - 1];
  v22 = *v21;
  if (v22 == 39)
  {
LABEL_20:
    v19 = 0;
    __dst[v18] = 0;
    goto LABEL_21;
  }

  v19 = 0;
  if (v17 != 39 || v22 != 83)
  {
    goto LABEL_24;
  }

  if (*v16)
  {
LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  if (v14 == 4)
  {
    v23 = __dst[1];
    v24 = 1;
    goto LABEL_53;
  }

  v24 = v14 - 3;
  v23 = __dst[v14 - 3];
  if (v23 != 72)
  {
LABEL_53:
    if (v23 != 83)
    {
      if (v23 == 89)
      {
        __dst[v24] = 73;
        __dst[v14 - 2] = 69;
        *a3 = __dst;
        if (MEOWReader::GetWordDescriptor(*(a1 + 16), a3, a4))
        {
          goto LABEL_28;
        }

        __dst[v24] = 89;
      }

      goto LABEL_57;
    }

LABEL_58:
    v19 = 0;
    __dst[v14 - 2] = 69;
    goto LABEL_9;
  }

  if ((__dst[v14 - 4] | 0x10) == 0x53)
  {
    goto LABEL_58;
  }

LABEL_57:
  *(v21 - 1) = 83;
  v19 = 1;
LABEL_21:
  *a3 = __dst;
  v15 = v18;
  if (MEOWReader::GetWordDescriptor(*(a1 + 16), a3, a4))
  {
    goto LABEL_28;
  }

LABEL_24:
  v25 = CFStringCreateWithCStringNoCopy(0, __dst, 0, *MEMORY[0x277CBED00]);
  *a3 = __dst;
  if (v25)
  {
    v26 = v25;
    Value = CFDictionaryGetValue(*(a1 + 32), v25);
    if (Value && CFStringGetCString(Value, __dst, 64, 0))
    {
      WordDescriptor = MEOWReader::GetWordDescriptor(*(a1 + 16), a3, a4);
      CFRelease(v26);
      if (WordDescriptor)
      {
LABEL_28:
        v12 = (a2 + 200);
        v13 = __dst;
LABEL_29:
        *a3 = strcpy(v12, v13);
LABEL_30:
        v29 = 1;
        goto LABEL_82;
      }
    }

    else
    {
      CFRelease(v26);
    }
  }

  if (!a5)
  {
    goto LABEL_78;
  }

  v30 = v15 - 1;
  if (__dst[v15 - 1] != 83 || *(a2 + 172) - *(a2 + 168) < 3 || (SLWordTagSet::find((a2 + 92)) & 1) != 0)
  {
    goto LABEL_78;
  }

  v31 = MTFELastPhoneme(a2);
  v32 = v31;
  v33 = v31[6];
  if (v15 >= 4)
  {
    v34 = &__dst[v15];
    if (__dst[v15 - 2] == 69 && *(v34 - 1) == 83 && !*v34 && *(v31 + 58) == 43)
    {
      v35 = *(v33 + 48);
      v36 = *(v33 + 58);
      if (v36 == 25 || v36 == 3)
      {
        if (v19)
        {
          goto LABEL_44;
        }

        v41 = v15 - 3;
        v42 = __dst[v15 - 3];
        if (v42 > 0x52)
        {
          if (v42 == 83)
          {
            if (__dst[v15 - 4] == 83)
            {
              goto LABEL_47;
            }
          }

          else if (v42 == 88)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v42 != 72)
          {
            if (v42 == 73)
            {
              __dst[v41] = 89;
              v43 = v15 - 2;
              v39 = &__dst[v15 - 2];
              *v39 = 0;
              *a3 = __dst;
              if (MTMBSelectUnits::IsSafeToMorph(a1, __dst, v43, *(v33 + 58)))
              {
                WordCandidates = MTMBSelectUnits::FindWordCandidates(a1, a2, a3, a4, 0, 0);
                if (WordCandidates)
                {
                  MTMBSelectUnits::AddMorphWord(WordCandidates, a2, "S");
                }
              }

              __dst[v41] = 73;
              goto LABEL_73;
            }

            goto LABEL_44;
          }

          if (((__dst[v15 - 4] - 67) & 0xEF) == 0)
          {
LABEL_47:
            v38 = v15 - 2;
            v39 = &__dst[v15 - 2];
            *v39 = 0;
            *a3 = __dst;
            if (MTMBSelectUnits::IsSafeToMorph(a1, __dst, v38, *(v35 + 58)))
            {
              v40 = MTMBSelectUnits::FindWordCandidates(a1, a2, a3, a4, 0, 0);
              if (v40)
              {
                MTMBSelectUnits::AddMorphWord(v40, a2, "ES");
              }
            }

LABEL_73:
            *v39 = 69;
            goto LABEL_74;
          }
        }

LABEL_44:
        v47 = *(v33 + 48);
        __dst[v30] = 0;
        *a3 = __dst;
        if (MTMBSelectUnits::IsSafeToMorph(a1, __dst, v15 - 1, *(v33 + 58)))
        {
          v37 = MTMBSelectUnits::FindWordCandidates(a1, a2, a3, a4, 0, 0);
          if (v37)
          {
LABEL_77:
            MTMBSelectUnits::AddMorphWord(v37, a2, "S");
          }
        }

        __dst[v30] = 83;
        v35 = v47;
        goto LABEL_47;
      }
    }
  }

LABEL_74:
  if ((*(v32 + 58) & 0xFE) == 0x2A)
  {
    __dst[v30] = 0;
    *a3 = __dst;
    if (MTMBSelectUnits::IsSafeToMorph(a1, __dst, v30, *(v33 + 58)))
    {
      v37 = MTMBSelectUnits::FindWordCandidates(a1, a2, a3, a4, 0, 0);
      if (v37)
      {
        goto LABEL_77;
      }
    }
  }

LABEL_78:
  if (a6 && MTMBSelectUnits::FindHyphenatedConstituents(a1, a2))
  {
    *a3 = a2 + 200;
    *(a3 + 8) = *(a2 + 86);
    *(a3 + 10) = *(a2 + 92);
    *(a3 + 26) = 0;
    v29 = MTMBSelectUnits::FindWordCandidates(a1, a2, a3, a4, 1, 0);
  }

  else
  {
    v29 = 0;
  }

LABEL_82:
  v45 = *MEMORY[0x277D85DE8];
  return v29;
}

BOOL MTMBSelectUnits::IsSafeToMorph(MTMBSelectUnits *this, const char *a2, uint64_t a3, int a4)
{
  if (a2[a3 - 1] == 83)
  {
    return 0;
  }

  Temp = SLTokenCreateTemp();
  v4 = SLDictLookup::Lookup(*(*(this + 3) + 88), *(*(*(this + 3) + 88) + 8), a2, a3, Temp) && SLTokenCountHomographs() <= 1 && (SLTokenGetHomograph(), *v15.var0 = SLHomographGetTags(), *&v15.var0[4] = v10, (SLWordTagSet::find(&v15) & 1) == 0) && (Phonemes = SLHomographGetPhonemes()) != 0 && (v12 = Phonemes, (Length = CFDataGetLength(Phonemes)) != 0) && CFDataGetBytePtr(v12)[Length - 1] == a4;
  SLTokenRelease();
  return v4;
}

uint64_t MTMBSelectUnits::FindHyphenatedConstituents(MTMBSelectUnits *this, MTFESpeechElement *a2)
{
  v20[31] = *MEMORY[0x277D85DE8];
  p_var5 = &a2[3].var5;
  v18 = MTFEFirstPhoneme(a2);
  v5 = &v19 - 4;
  v6 = -1;
  while (1)
  {
    v7 = v6;
    v8 = strchr(p_var5, 45);
    v9 = v8;
    v10 = v8 ? v8 - p_var5 : strlen(p_var5);
    v5[4] = p_var5;
    Temp = SLTokenCreateTemp();
    v5[5] = Temp;
    v5[6] = 0;
    if (!SLDictLookup::Lookup(*(*(this + 3) + 88), *(*(*(this + 3) + 88) + 8), p_var5, v10, Temp) || !MTMBConstituent::FindHomograph((v5 + 4), a2, &v18))
    {
      break;
    }

    p_var5 = v9 + 1;
    v5 += 4;
    v6 = v7 - 1;
    if (!v9)
    {
      if (v7 != -1)
      {
        MTMBConstituent::SplitWord(v5, a2);
      }

      MTMBConstituent::SetWord(&v19, a2);
      v12 = 1;
      goto LABEL_12;
    }
  }

  v12 = 0;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_12:
  v13 = -v7;
  v14 = v20;
  do
  {
    v15 = *v14;
    v14 += 4;
    SLTokenRelease();
    --v13;
  }

  while (v13);
LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t MTMBConstituent::FindHomograph(MTMBConstituent *this, MTFEWord *a2, MTFEPhoneme **a3)
{
  if (!*a3)
  {
    return 0;
  }

  var0_low = SLOWORD((*a3)->var5[1].var0);
  v7 = *(this + 1);
  v8 = SLTokenCountHomographs();
  if (v8 >= 1)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = *(this + 1);
      *(this + 2) = SLTokenGetHomograph();
      Phonemes = SLHomographGetPhonemes();
      BytePtr = CFDataGetBytePtr(Phonemes);
      Length = CFDataGetLength(Phonemes);
      v15 = *a3;
      if (*a3)
      {
LABEL_5:
        v16 = 0;
        while (1)
        {
          v17 = Length - v16;
          if (Length == v16)
          {
            break;
          }

          v18 = *(v15 + 32);
          if (*(v18 + 32) != a2)
          {
            break;
          }

          v19 = *(v15 + 58);
          v20 = BytePtr[v16];
          if (v19 == v20)
          {
            goto LABEL_57;
          }

          if (BytePtr[v16] <= 0x20u)
          {
            if (BytePtr[v16] > 2u)
            {
              if (BytePtr[v16] <= 9u)
              {
                if (BytePtr[v16] <= 7u)
                {
                  if ((v20 - 3) >= 2)
                  {
                    if (v20 != 7 || v19 != 22)
                    {
                      break;
                    }
                  }

                  else if (v19 != 20)
                  {
                    break;
                  }

                  goto LABEL_49;
                }

                if (v20 != 8)
                {
LABEL_39:
                  if (v19 != 23)
                  {
                    break;
                  }

LABEL_49:
                  if (Length - 1 == v16)
                  {
                    break;
                  }

                  v21 = &BytePtr[v16 + 1];
                  if (*v21 != 32)
                  {
                    break;
                  }

                  v17 = ~v16 + Length;
                  goto LABEL_58;
                }

LABEL_43:
                if (v19 != 12)
                {
                  break;
                }

                goto LABEL_49;
              }

              if (BytePtr[v16] <= 0x10u)
              {
                if (v20 != 10)
                {
                  if (v20 != 11)
                  {
                    break;
                  }

                  goto LABEL_43;
                }
              }

              else
              {
                if (v20 == 17)
                {
                  goto LABEL_39;
                }

                if (v20 != 18)
                {
                  if (v20 != 32 || v19 != 26)
                  {
                    break;
                  }

                  goto LABEL_57;
                }
              }

              if (v19 != 24)
              {
                break;
              }

              goto LABEL_49;
            }

            if ((v20 - 1) >= 2)
            {
              break;
            }
          }

          else
          {
            if ((v20 - 52) > 0x17)
            {
              goto LABEL_34;
            }

            if (((1 << (v20 - 52)) & 0xC00140) == 0)
            {
              if (v20 == 52)
              {
                if (v19 != 48)
                {
                  break;
                }

                v15 = *(v15 + 40);
                if (!v15 || *(v15 + 58) != 44)
                {
                  break;
                }
              }

              else if (v20 == 53)
              {
                if (v19 != 49)
                {
                  break;
                }

                v15 = *(v15 + 40);
                if (!v15 || *(v15 + 58) != 45)
                {
                  break;
                }
              }

              else
              {
LABEL_34:
                if (v20 == 33)
                {
                  if (v19 != 27)
                  {
                    break;
                  }
                }

                else if (v20 != 48 || v19 != 55)
                {
                  break;
                }
              }

LABEL_57:
              v21 = &BytePtr[v16];
LABEL_58:
              Length = v17 - 1;
              if (v17 != 1)
              {
                BytePtr = v21 + 1;
                v15 = *(v15 + 40);
                if (v15)
                {
                  goto LABEL_5;
                }

                break;
              }

              v18 = *(v15 + 32);
LABEL_62:
              if (v15 != *(v18 + 24))
              {
                break;
              }

              *(this + 3) = *(v18 + 56) - var0_low + 1;
              *a3 = *(v15 + 40);
              return 1;
            }
          }

          if (Length == ++v16)
          {
            goto LABEL_62;
          }
        }
      }
    }
  }

  return 0;
}

_DWORD *MTMBConstituent::SetWord(const char **this, MTFESpeechElement *a2)
{
  strcpy(&a2[3].var5, *this);
  v4 = strchr(&a2[3].var5, 45);
  if (v4)
  {
    *v4 = 0;
  }

  v5 = this[2];
  SLHomographGetPOS();
  BYTE6(a2[1].var4) = SLFirstPOSInSet();
  v6 = this[2];
  *(&a2[1].var5 + 4) = SLHomographGetTags();
  v7 = (&a2[1].var5 + 4);
  *(&a2[1].var6 + 4) = v8;
  v9 = this[1];
  v10 = SLTokenCountHomographs();
  if (v10 >= 1)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      v13 = this[1];
      if (SLTokenGetHomograph() != this[2])
      {
        v24[0] = SLHomographGetTags();
        v24[1] = v14;
        v15 = LOWORD(v24[0]);
        if (LOWORD(v24[0]))
        {
          v16 = v24 + 1;
          do
          {
            v18 = *v16++;
            v17 = v18;
            if ((SLWordTagSet::find((&a2[1].var5 + 4)) & 1) == 0)
            {
              v19 = v17 ^ 1;
              if ((SLWordTagSet::find((&a2[1].var5 + 4)) & 1) == 0)
              {
                v20 = v7->var0[0];
                if (v20 <= 6)
                {
                  v21 = v20 + 1;
                  v7->var0[0] = v21;
                  v7->var0[v21] = v19;
                }
              }
            }

            --v15;
          }

          while (v15);
        }
      }
    }
  }

  var4 = a2->var4;
  WORD2(a2[3].var0) = WORD2(var4[1].var0);
  *(&a2[3].var0 + 6) = (LOWORD(var4[1].var0) + 1);
  result = MTFEFirstPhoneme(a2);
  result[18] |= 0x10000u;
  do
  {
    if (*(*(result + 4) + 32) != a2)
    {
      break;
    }

    a2[3].var1 += *(result + 16);
    result = *(result + 5);
  }

  while (result);
  return result;
}

MTMBSelectUnits *MTMBSelectUnits::VisitWord(MTMBSelectUnits *this, MTFESpeechElement *a2)
{
  if ((*(this + 234) & 1) == 0)
  {
    v3 = this;
    *(this + 28) = a2;
    MTFECommands::Visit(&a2[2], this);
    if (*(v3 + 7) && *(MTFEFirstPhoneme(a2) + 58))
    {
      v4 = *(v3 + 3);
      v5 = *(v4 + 32);
      *(v3 + 11) = *(v3 + 11) + 4 * v5 - 4;
      *(*(v3 + 7) + 64) = (v5 + -1.0) + *(*(v3 + 7) + 64);
      *(v3 + 7) = 0;
      *(v4 + 32) = 0;
    }

    var5 = a2[3].var5;
    if (var5)
    {
      if (BYTE1(a2[3].var5))
      {
        var5 = 0;
      }

      else
      {
        var5 = (a2[1].var0 & 0xC) != 0;
      }
    }

    if (*(v3 + 232) & 1) != 0 || (var5 & 1) != 0 || (BYTE1(a2[1].var0) & 0x10) != 0 || (SLWordTagSet::find((&a2[1].var5 + 4)))
    {

      return MTFESpeechElement::VisitChildren(a2, v3);
    }

    else
    {
      MEOWWordSliceInfo::MEOWWordSliceInfo(&p_var5);
      if (kMTMBAllowHyphenatedWordUnits)
      {
        MTBEDebugParams::GetParam(kMTMBAllowHyphenatedWordUnits, &byte_27F8F29B8, byte_27F8F29B8);
        kMTMBAllowHyphenatedWordUnits = 0;
      }

      v7 = byte_27F8F29B8 == 1 && strchr(&a2[3].var5, 45) != 0;
      p_var5 = &a2[3].var5;
      v22 = BYTE6(a2[1].var4);
      v23 = *(&a2[1].var5 + 4);
      v24 = (a2[1].var0 & 0x200) != 0;
      if (MTMBSelectUnits::FindWordCandidates(v3, a2, &p_var5, &v20, 1, v7))
      {
        MEOWVectorBase::MEOWVectorBase(v19, 1);
        MEOWVectorBase::MEOWVectorBase(v18, 8);
        MEOWReader::GetWordData(*(v3 + 2), &v20, v18, v19);
        if (*(v3 + 248) == 3)
        {
          MTMBSelectUnits::AddFirstDemiSlice(v3);
        }

        MEOWVectorBase::Swap(v3 + 19, v18);
        v8 = *(v3 + 11) + 4 * *(v3 + 32);
        var1 = a2[3].var1;
        v27 = v8;
        v9 = a2->var5;
        v10 = *(v3 + 216);
        if (v9 == v9->var5->var4)
        {
          var4 = v9->var4;
          if (var4 == a2 || (var6 = a2->var6, var6 == var4) && (var6[1].var0 & 0x40) != 0)
          {
            v10 = *(v3 + 217);
          }
        }

        v28 = (4 * LOBYTE(a2[1].var0)) & 0x30 | v10;
        v25 = SWORD2(a2[3].var0) - SLOWORD(a2[3].var0);
        v13 = MTFEFirstPhoneme(a2);
        v14 = MEOWPhon::sP2M[v13[58]];
        v15 = v13[59];
        v16 = MTFELastPhoneme(a2);
        v17 = v16[59] + MEOWPhon::sP2M[v16[58]];
        v29 = v15 + v14;
        v30 = v17;
        *(v3 + 248) = 1;
        MEOWVectorBase::~MEOWVectorBase(v18);
        MEOWVectorBase::~MEOWVectorBase(v19);
      }

      this = MTFESpeechElement::VisitChildren(a2, v3);
      if (*(v3 + 248) == 1)
      {
        (*(**(v3 + 5) + 24))(*(v3 + 5), &p_var5);
        operator new();
      }
    }
  }

  return this;
}

void sub_257B661B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

void MTMBSelectUnits::AddFirstDemiSlice(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 48) + 40);
  if (!v1)
  {
    v1 = &MTFEPhonemeFlags::sSIL;
  }

  v2 = v1[5];
  operator new();
}

uint64_t *MTMBSelectUnits::AddSlice(MTMBSelectUnits *this, MTMBUnitSlice *a2)
{
  if (!*(this + 14) && *(this + 248) != 2)
  {
    MTMBSelectUnits::ProcessIntermediatePhrases(this, *(this + 10));
    if (kMTMBConcurrencyTorture)
    {
      MTBEDebugParams::GetParam(kMTMBConcurrencyTorture, &byte_27F8F29C8, byte_27F8F29C8);
      kMTMBConcurrencyTorture = 0;
    }

    if (byte_27F8F29C8 == 1)
    {
      sleep(1u);
    }
  }

  MEOWVectorBase::Append(this + 12);
  *(*(this + 12) + 8 * *(this + 14) - 8) = a2;
  v5 = 0;
  if (MTMBUnitInstructions::ReadyInQueue(this + 128, this + 17, &v5))
  {
    do
    {
      (*(**(this + 5) + 112))(*(this + 5), v5);
    }

    while ((MTMBUnitInstructions::ReadyInQueue(this + 128, this + 17, &v5) & 1) != 0);
  }

  if (MTMBUnitInstructions::ReadyInQueue(this + 128, this + 16, &v5))
  {
    do
    {
      (*(**(this + 5) + 96))(*(this + 5), v5);
    }

    while ((MTMBUnitInstructions::ReadyInQueue(this + 128, this + 16, &v5) & 1) != 0);
  }

  if (MTMBUnitInstructions::ReadyInQueue(this + 128, this + 18, &v5))
  {
    do
    {
      (*(**(this + 5) + 104))(*(this + 5), v5);
      *(a2 + 2) = v5;
    }

    while ((MTMBUnitInstructions::ReadyInQueue(this + 128, this + 18, &v5) & 1) != 0);
  }

  return MTMBUnitInstructions::NextSlice(this + 16);
}

MTMBSelectUnits *MTMBSelectUnits::VisitCommand(MTMBSelectUnits *this, MTFECommand *a2)
{
  var8 = a2->var8;
  v4 = var8 == 1835429746 || var8 == 1836475764 || var8 == 1836021362;
  if (v4 && (a2->var9 & 0x80000000) == 0)
  {
    MTMBUnitInstructions::AddCommand(this + 16, a2);
    v6 = *(a2->var0 + 2);

    return v6(a2);
  }

  return this;
}

MTMBSelectUnits *MTMBSelectUnits::VisitPhoneme(MTMBSelectUnits *this, MTFESpeechElement *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  if (*(this + 234))
  {
    goto LABEL_59;
  }

  v3 = this;
  if (*(this + 249))
  {
    *(this + 134) = 0;
    v4 = BYTE2(a2[1].var0);
    v5 = BYTE3(a2[1].var0) + MEOWPhon::sP2M[BYTE2(a2[1].var0)];
    *(this + 270) = v5;
    *(this + 265) = 0;
    *(this + 266) = v5;
    *(this + 251) = 0;
    *(this + 249) = 0;
  }

  else
  {
    v4 = BYTE2(a2[1].var0);
  }

  var6 = a2->var6;
  if (!var6)
  {
    var6 = &MTFEPhonemeFlags::sSIL;
  }

  if (v4)
  {
    v7 = *(this + 7);
    v8 = *(this + 3);
    if (v7)
    {
      v9 = *(v8 + 32);
      *(this + 11) = *(this + 11) + 4 * v9 - 4;
      *(v7 + 64) = (v9 + -1.0) + *(v7 + 64);
      *(this + 7) = 0;
    }

    *(v8 + 32) = 0;
  }

  else
  {
    v10 = *(this + 3);
    v11 = *(v10 + 32);
    if (v11 == 0.0)
    {
      v14 = *&a2[1].var1;
      v15 = fminf(v14, 200.0);
      *(v10 + 32) = v15;
      *&a2[1].var1 = v14 - (v15 + -1.0);
      *(this + 7) = a2;
    }

    else
    {
      v12 = v11 + -1.0;
      *&a2[1].var1 = v12 + *&a2[1].var1;
      v13 = *(this + 9);
      if (v13)
      {
        *(v13 + 144) -= v12;
        *(this + 11) -= 4 * v12;
      }

      *(v10 + 32) = 0;
      *(this + 7) = 0;
    }
  }

  *(this + 250) = *(this + 251);
  if ((a2[1].var3 & 0x1400) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  *(this + 251) = v16;
  v17 = (this + 267);
  *(this + 267) = *(this + 134);
  *(this + 269) = *(this + 270);
  v18 = BYTE3(var6[1].var0) + MEOWPhon::sP2M[BYTE2(var6[1].var0)];
  *(this + 270) = v18;
  v19 = *(this + 265);
  *(this + 264) = v19;
  v20 = *(this + 266);
  *(this + 265) = v20;
  *(this + 266) = v18;
  if (!(v19 | v20))
  {
    MEOWReader::SubstituteFirst(*(this + 2), this + 264, this + 265);
  }

  LOWORD(v46) = 0;
  this = MEOWReader::SubstituteDemis(*(v3 + 2), v3 + 264, v3 + 265, v3 + 266, &v46 + 1, &v46);
  v21 = this;
  if (this)
  {
    if ((this & 0x80000000) != 0)
    {
      v24 = *MEMORY[0x277D85DF8];
      v25 = MEOWPhon::Name(*(v3 + 268));
      v26 = MEOWPhon::Name(*(v3 + 269));
      v27 = MEOWPhon::Name(*(v3 + 270));
      fprintf(v24, "MacinTalk Fatal Error: This voice is broken beyond repair.\n  There are no units for %s-%s-%s, and no even remotely\n  conceivable substitutions.\n", v25, v26, v27);
      this = MTBEAbort(a2);
    }

    else if ((MTBEDebugFlags::sMEOWDebug & 0x800) != 0)
    {
      v22 = (this & 1) == 0;
      v23 = *MEMORY[0x277D85DF8];
      MEOWPhon::Name(*(v3 + 268));
      MEOWPhon::Name(*(v3 + 269));
      MEOWPhon::Name(*(v3 + 264));
      if (v22)
      {
        MEOWPhon::Name(*(v3 + 265));
        this = fprintf(v23, "MEOW Substitution %s-%s -> %s-%s\n");
      }

      else
      {
        MEOWPhon::Name(BYTE1(v46));
        MEOWPhon::Name(v46);
        MEOWPhon::Name(*(v3 + 265));
        this = fprintf(v23, "MEOW Substitution %s-%s -> %s(-%s)-(%s-)%s\n");
      }
    }
  }

  v28 = vcvtms_u32_f32(*&a2[1].var1 * *(&a2[1].var2 + 2));
  v29 = *(v3 + 248);
  if ((v29 - 3) >= 2)
  {
    if (*(v3 + 248) && v29 != 2)
    {
      goto LABEL_56;
    }

    goto LABEL_45;
  }

  if (v21)
  {
    if (*(v3 + 264))
    {
      *(*(v3 + 6) + 94) = BYTE1(v46);
      operator new();
    }

LABEL_45:
    v36 = *(v3 + 265);
    if (v36)
    {
      BYTE4(a2[1].var5) = *(v3 + 264);
      BYTE5(a2[1].var5) = v36;
      BYTE6(a2[1].var5) = *(v3 + 266);
      MEOWDemiSliceInfo::MEOWDemiSliceInfo(v39, 1);
      if (*(v3 + 248) == 2)
      {
        __s[0] = 0;
        *v47 = *(v3 + 19) + 4;
        v48 = 8;
        v49 = *(v3 + 21);
        MEOWDemiSliceInfo::PhonemeSet::AddPhonemes(__s, v47);
        operator new();
      }

      operator new();
    }

    goto LABEL_54;
  }

  v30 = *(v3 + 265);
  if ((v21 & 2) != 0)
  {
    *(*(v3 + 6) + 94) = v30;
  }

  BYTE4(a2[1].var5) = *(v3 + 264);
  BYTE5(a2[1].var5) = v30;
  BYTE6(a2[1].var5) = *(v3 + 266);
  MEOWDiphoneSliceInfo::MEOWDiphoneSliceInfo(v39);
  v31 = *(v3 + 265);
  v39[0] = *(v3 + 264);
  v39[1] = v31;
  v40 = *v17;
  v41 = *(v3 + 125);
  v32 = *(v3 + 11);
  v42 = *(v3 + 32);
  v43 = v28;
  v44 = v32;
  var5 = a2->var5;
  if (var5->var3 == a2)
  {
    v34 = *(v3 + 28);
    while (var5 != v34 || (*(v34 + 57) & 0x10) != 0)
    {
      v35 = var5->var5->var3 == var5;
      var5 = var5->var5;
      if (!v35)
      {
        goto LABEL_40;
      }
    }

    v45 = 1;
    if (v31)
    {
LABEL_51:
      (*(**(v3 + 5) + 32))(*(v3 + 5), v39);
      operator new();
    }
  }

  else
  {
LABEL_40:
    if (v31)
    {
      goto LABEL_51;
    }
  }

  this = (*(**(v3 + 5) + 80))(*(v3 + 5));
  if (this)
  {
    goto LABEL_51;
  }

  if (!*(v3 + 265))
  {
LABEL_54:
    this = MTMBSelectUnits::EvaluatePath(v3, 1);
    v37 = 4;
    goto LABEL_55;
  }

  v37 = 3;
LABEL_55:
  *(v3 + 248) = v37;
LABEL_56:
  *(v3 + 11) += 4 * *(v3 + 32) + 4 * v28;
  *(v3 + 32) = *&a2[1].var1 - v28;
  *(v3 + 6) = a2;
  if (*(v3 + 269))
  {
    *(v3 + 216) = 0;
  }

  *(v3 + 9) = 0;
LABEL_59:
  v38 = *MEMORY[0x277D85DE8];
  return this;
}

const char *MTMBSelectUnits::AbortUnitSelection(MTMBSelectUnits *this, const char *a2)
{
  *(this + 234) = 1;
  v2 = *(this + 30);
  if (v2)
  {
    *(v2 + 25) = 1;
  }

  result = MTBEWorker::DebugLog("Aborting unit search.\n", a2);
  __dmb(0xBu);
  return result;
}

MTMBSelectUnits *MTMBSelectUnits::DeletePhrase(MTMBSelectUnits *this, MTFESpeechElement *a2, MTBEPersistentParam *a3)
{
  v3 = this;
  if (a3)
  {
    this = sUnitSearchSchedule;
    if (sUnitSearchSchedule)
    {
      MTBEWorker::PurgeTasks(sUnitSearchSchedule, v3);
      pthread_mutex_lock(&a2[1].var6);
      var6 = a2[3].var6;
      if (var6 && *&var6[1].var1 == v3)
      {
        var6[4].var2 = 1;
        var3 = var6[4].var3;
        if (var3)
        {
          BYTE1(var3->var4) = 1;
        }

        MTBEWorker::DebugLog("Aborting unit search.\n", v5);
        __dmb(0xBu);
        do
        {
          pthread_cond_wait(&a2[2].var7, &a2[1].var6);
          v8 = a2[3].var6;
        }

        while (v8 && *&v8[1].var1 == v3);
      }

      this = pthread_mutex_unlock(&a2[1].var6);
    }
  }

  if (v3)
  {
    v9 = *(*v3 + 16);

    return v9(v3);
  }

  return this;
}

void MTMBFirstDemiSlice::~MTMBFirstDemiSlice(void **this)
{
  MEOWVectorBase::~MEOWVectorBase(this + 2);
}

{
  MEOWVectorBase::~MEOWVectorBase(this + 2);

  JUMPOUT(0x259C6DA90);
}

void MTMBSecondDemiSlice::~MTMBSecondDemiSlice(void **this)
{
  MEOWVectorBase::~MEOWVectorBase(this + 2);
}

{
  MEOWVectorBase::~MEOWVectorBase(this + 2);

  JUMPOUT(0x259C6DA90);
}

void MEOWWordSliceInfo::MEOWWordSliceInfo(MEOWWordSliceInfo *this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 55) = 0;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 55) = 0;
}

__n128 MEOWWordSliceInfo::MEOWWordSliceInfo(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 55) = 0;
  return result;
}

{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 55) = 0;
  return result;
}

void MEOWDiphoneSliceInfo::MEOWDiphoneSliceInfo(MEOWDiphoneSliceInfo *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

void MEOWDemiSliceInfo::MEOWDemiSliceInfo(MEOWDemiSliceInfo *this, char a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *this = 0u;
  *(this + 56) = a2;
  *(this + 32) = 1;
}

{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *this = 0u;
  *(this + 56) = a2;
  *(this + 32) = 1;
}

_BYTE *MEOWDemiSliceInfo::PhonemeSet::AddPhonemes(_BYTE *__s, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = __s;
    v5 = 0;
    v6 = __s + 1;
    v7 = *__s;
    do
    {
      v8 = *(*a2 + a2[1] * v5);
      v9 = v7;
      __s = memchr(v6, v8, v7);
      if (!__s)
      {
        *v4 = ++v7;
        *(v6 + v9) = v8;
        v2 = a2[2];
      }

      ++v5;
    }

    while (v5 < v2);
  }

  return __s;
}

void MEOWAnchorSliceInfo::MEOWAnchorSliceInfo(MEOWAnchorSliceInfo *this)
{
  *this = 0;
}

{
  *this = 0;
}

void MEOWSearchLatticeImpl::MEOWSearchLatticeImpl(MEOWSearchLatticeImpl *this, MEOWReader *a2)
{
  *this = &unk_2868F8458;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 6) = 0;
  MEOWVectorBase::MEOWVectorBase((this + 40), 2);
  MEOWVectorBase::MEOWVectorBase((this + 72), 8);
  MEOWVectorBase::MEOWVectorBase((this + 104), 2);
  SLML::Vector<float>::Vector(this + 34, 0);
}

void sub_257B67524(_Unwind_Exception *a1)
{
  MEOWVectorBase::~MEOWVectorBase((v1 + 360));
  MEOWVectorBase::~MEOWVectorBase((v1 + 328));
  MEOWVectorBase::~MEOWVectorBase((v1 + 296));
  SLML::Storage<float>::RemoveReference(*(v1 + 280));
  SLML::Storage<float>::RemoveReference(*(v1 + 256));
  SLML::Storage<float>::RemoveReference(*(v1 + 224));
  SLML::Storage<float>::RemoveReference(*(v1 + 200));
  MEOWVectorBase::~MEOWVectorBase((v1 + 160));
  SLML::Storage<float>::RemoveReference(*(v1 + 144));
  MEOWVectorBase::~MEOWVectorBase((v1 + 104));
  MEOWVectorBase::~MEOWVectorBase((v1 + 72));
  MEOWVectorBase::~MEOWVectorBase((v1 + 40));
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeImpl::~MEOWSearchLatticeImpl(MEOWSearchLatticeImpl *this)
{
  *this = &unk_2868F8458;
  MEOWVectorBase::~MEOWVectorBase(this + 49);
  MEOWVectorBase::~MEOWVectorBase(this + 45);
  MEOWVectorBase::~MEOWVectorBase(this + 41);
  MEOWVectorBase::~MEOWVectorBase(this + 37);
  SLML::Storage<float>::RemoveReference(*(this + 35));
  SLML::Storage<float>::RemoveReference(*(this + 32));
  SLML::Storage<float>::RemoveReference(*(this + 28));
  SLML::Storage<float>::RemoveReference(*(this + 25));
  MEOWVectorBase::~MEOWVectorBase(this + 20);
  SLML::Storage<float>::RemoveReference(*(this + 18));
  MEOWVectorBase::~MEOWVectorBase(this + 13);
  MEOWVectorBase::~MEOWVectorBase(this + 9);
  MEOWVectorBase::~MEOWVectorBase(this + 5);
}

{
  MEOWSearchLatticeImpl::~MEOWSearchLatticeImpl(this);

  JUMPOUT(0x259C6DA90);
}

void MEOWSearchLatticeImpl::AddWordSlice(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  MEOWVectorBase::MEOWVectorBase(v13, 8);
  MEOWVectorBase::MEOWVectorBase(v12, 1);
  MEOWReader::GetWordDescriptor(*(a1 + 8), a2, __C);
  MEOWReader::GetWordData(*(a1 + 8), __C, v13, v12);
  __N = v14;
  MEOWSearchLatticeImpl::AllocateCostVectors(a1, v14, 4);
  v6 = *(a1 + 56);
  MEOWVectorBase::Append((a1 + 72));
  *(*(a1 + 72) + 8 * *(a1 + 88) - 8) = v6;
  v7 = *(a1 + 24);
  if (v7)
  {
    if (v7 == 3)
    {
      MEOWSearchLatticeImpl::Demi2WordCull(a1, a2, v13, a3);
    }

    else if (v7 == 6)
    {
      MEOWSearchLatticeImpl::Word2WordCull(a1, a2, v13, a3);
    }

    else
    {
      fwrite("Illegal concatenation for word slice.\n", 0x26uLL, 1uLL, *MEMORY[0x277D85DF8]);
      MTBEAbort(*(a1 + 16));
    }
  }

  else
  {
    MEOWSearchLatticeImpl::Null2WordCull(a1, a2, v13, a3);
  }

  MEOWUnitCostWindow::MEOWUnitCostWindow(v11, *(a2 + 40), 1, 0.0);
  SLML::Vector<float>::Vector(&v10, __N);
}

void sub_257B68054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  SLML::Storage<float>::RemoveReference(a45);
  SLML::Storage<float>::RemoveReference(*(v45 - 248));
  MEOWVectorBase::~MEOWVectorBase((v45 - 232));
  MEOWVectorBase::~MEOWVectorBase((v45 - 200));
  MEOWVectorBase::~MEOWVectorBase((v45 - 168));
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeImpl::AllocateCostVectors(MEOWSearchLatticeImpl *this, unint64_t a2, int a3)
{
  if (*(*(this + 25) + 12) < a2)
  {
    SLML::Vector<float>::ResizeStorage();
  }

  *(this + 48) = a2;
  if (*(*(this + 28) + 12) < a2)
  {
    SLML::Vector<float>::ResizeStorage();
  }

  *(this + 54) = a2;
  if (*(this + 23) < a2)
  {
    MEOWVectorBase::Allocate((this + 160), a2, 1);
  }

  *(this + 22) = a2;
  if ((a3 & 0x80000000) == 0)
  {
    v6 = *(this + 32);
    if (*(v6 + 8) < a2 || *(v6 + 12) < a3)
    {
      SLML::Matrix<float>::ResizeStorage();
    }

    *(this + 60) = a2;
    *(this + 61) = a3;
    SLML::Matrix<float>::operator=(this + 240, 0.0);
    if (*(*(this + 35) + 12) < a2)
    {
      SLML::Vector<float>::ResizeStorage();
    }

    *(this + 68) = a2;
    catlas_sset(a2, 0.0, *(this + 36), *(this + 69));
  }

  catlas_sset(*(this + 48), 500000.0, *(this + 26), *(this + 49));
  catlas_sset(*(this + 54), 500000.0, *(this + 29), *(this + 55));
  if (a2)
  {
    v7 = 0;
    v8 = *(this + 20);
    do
    {
      *v8++ = v7++;
    }

    while (a2 > v7);
  }
}

void sub_257B68D0C(_Unwind_Exception *a1)
{
  SLML::Storage<float>::RemoveReference(*(v1 - 168));
  SLML::Storage<float>::RemoveReference(*(v1 - 136));
  _Unwind_Resume(a1);
}

uint64_t MEOWSearchLatticeImpl::ApplyWeightedCosts(uint64_t this)
{
  if (*(this + 29) == 1)
  {
    v1 = *(this + 240);
    v2 = *(this + 248);
    v3 = *(this + 256);
    ++*(v3 + 4);
    SLML::MatrixRows<float>::sum(&v1, &v4);
  }

  return this;
}

void sub_257B68E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  SLML::Storage<float>::RemoveReference(a15);
  SLML::Storage<float>::RemoveReference(a12);
  _Unwind_Resume(a1);
}

uint64_t MEOWSearchLatticeImpl::RecomputePathCost(MEOWSearchLatticeImpl *this)
{
  MEOWVectorBase::Swap(this + 13, (this + 160));
  v2 = *(this + 17);
  *(this + 17) = *(this + 24);
  *(this + 24) = v2;
  v3 = *(this + 26);
  v4 = *(this + 9);
  *(this + 18) = *(this + 25);
  *(this + 19) = v3;
  *(this + 200) = v4;
  v5 = *(this + 13);
  v6 = *(this + 15);
  v10 = v3;
  v7 = 126 - 2 * __clz(v6);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return std::__introsort<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *,false>(v5, (v5 + 2 * v6), &v10, v8, 1);
}

void MEOWSearchLatticeImpl::AddDiphoneSlice(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = MEOWReader::CountDiphones(*(a1 + 8), *a2, a2[1]);
  v7 = v6;
  MEOWSearchLatticeImpl::AllocateCostVectors(a1, v6, 3);
  v8 = *(a1 + 56);
  MEOWVectorBase::Append((a1 + 72));
  *(*(a1 + 72) + 8 * *(a1 + 88) - 8) = v8;
  v9 = *(a1 + 24);
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 5)
      {
        MEOWSearchLatticeImpl::Anchor2Diphone(a1, a2, a3);
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    MEOWSearchLatticeImpl::Demi2Diphone(a1, a2, a3);
  }

  else
  {
    if (v9)
    {
      if (v9 == 1)
      {
        MEOWSearchLatticeImpl::Diphone2Diphone(a1, a2, a3);
        goto LABEL_11;
      }

LABEL_8:
      fwrite("Illegal concatenation for diphone slice.\n", 0x29uLL, 1uLL, *MEMORY[0x277D85DF8]);
      MTBEAbort(*(a1 + 16));
      goto LABEL_11;
    }

    MEOWSearchLatticeImpl::Null2Diphone(a1, a2, a3);
  }

LABEL_11:
  SLML::Vector<float>::Vector(&v10, v7);
}

void sub_257B69550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  SLML::Storage<float>::RemoveReference(a22);
  SLML::Storage<float>::RemoveReference(a25);
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeImpl::AddBreathDiphoneSlice(uint64_t a1, unsigned __int8 *a2)
{
  __N = MEOWReader::CountDiphones(*(a1 + 8), *a2, a2[1]);
  MEOWSearchLatticeImpl::AllocateCostVectors(a1, __N, 3);
  v3 = *(a1 + 56);
  MEOWVectorBase::Append((a1 + 72));
  *(*(a1 + 72) + 8 * *(a1 + 88) - 8) = v3;
  if (*(a1 + 24))
  {
    fwrite("Illegal concatenation for breath diphone slice.\n", 0x30uLL, 1uLL, *MEMORY[0x277D85DF8]);
    MTBEAbort(*(a1 + 16));
  }

  else
  {
    catlas_sset(*(a1 + 192), 0.0, *(a1 + 208), *(a1 + 196));
    catlas_sset(*(a1 + 216), 0.0, *(a1 + 232), *(a1 + 220));
  }

  SLML::Vector<float>::Vector(&v5, __N);
}

void MEOWSearchLatticeImpl::AddDemiSlice(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (*(a2 + 40))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = (*(a2 + 48) + v6);
      v10 = MEOWReader::CountDiphones(*(a1 + 8), *v9, v9[1]);
      *(v9 + 1) = v10;
      v7 += v10;
      ++v8;
      v6 += 144;
    }

    while (v8 < *(a2 + 40));
  }

  else
  {
    v7 = 0;
  }

  MEOWSearchLatticeImpl::AllocateCostVectors(a1, v7, 3);
  v11 = *(a1 + 56);
  MEOWVectorBase::Append((a1 + 72));
  *(*(a1 + 72) + 8 * *(a1 + 88) - 8) = v11;
  v12 = *(a1 + 24);
  if (*(a2 + 56))
  {
    if (!v12)
    {
      catlas_sset(*(a1 + 192), 0.0, *(a1 + 208), *(a1 + 196));
      catlas_sset(*(a1 + 216), 0.0, *(a1 + 232), *(a1 + 220));
      MEOWSearchLatticeImpl::Null2Demi(a1, a2);
      goto LABEL_18;
    }

    if (v12 == 6)
    {
      MEOWSearchLatticeImpl::Word2Demi(a1, a2);
    }

    v13 = *MEMORY[0x277D85DF8];
    v14 = "Illegal concatenation for demi- slice.\n";
  }

  else
  {
    if (v12 == 3)
    {
      MEOWSearchLatticeImpl::Demi2Demi(a1, a2, a3);
      goto LABEL_18;
    }

    if (v12 == 1)
    {
      MEOWSearchLatticeImpl::Diphone2Demi(a1, a2, a3);
      goto LABEL_18;
    }

    v13 = *MEMORY[0x277D85DF8];
    v14 = "Illegal concatenation for -demi slice.\n";
  }

  fwrite(v14, 0x27uLL, 1uLL, v13);
  MTBEAbort(*(a1 + 16));
LABEL_18:
  SLML::Vector<float>::Vector(&v15, v7);
}

void MEOWSearchLatticeImpl::AddBreathDemiSlice(uint64_t a1, uint64_t a2)
{
  __N = MEOWReader::CountDiphones(*(a1 + 8), **(a2 + 48), *(*(a2 + 48) + 1));
  MEOWSearchLatticeImpl::AllocateCostVectors(a1, __N, 3);
  v3 = *(a1 + 56);
  MEOWVectorBase::Append((a1 + 72));
  *(*(a1 + 72) + 8 * *(a1 + 88) - 8) = v3;
  if (*(a1 + 24))
  {
    fwrite("Illegal concatenation for -demi slice.\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
    MTBEAbort(*(a1 + 16));
  }

  else
  {
    catlas_sset(*(a1 + 192), 0.0, *(a1 + 208), *(a1 + 196));
    catlas_sset(*(a1 + 216), 0.0, *(a1 + 232), *(a1 + 220));
  }

  SLML::Vector<float>::Vector(&v5, __N);
}

uint64_t MEOWSearchLatticeImpl::AddAnchorSlice(uint64_t a1, unsigned __int8 *a2)
{
  MEOWSearchLatticeImpl::AllocateCostVectors(a1, 1uLL, 0);
  v4 = *(a1 + 56);
  MEOWVectorBase::Append((a1 + 72));
  *(*(a1 + 72) + 8 * *(a1 + 88) - 8) = v4;
  v5 = *(a1 + 24);
  if (v5 == 1)
  {
    MEOWSearchLatticeImpl::Diphone2Anchor(a1, a2);
  }

  else if (v5)
  {
    fwrite("Illegal concatenation for anchor slice.\n", 0x28uLL, 1uLL, *MEMORY[0x277D85DF8]);
    MTBEAbort(*(a1 + 16));
  }

  else
  {
    **(a1 + 208) = 0;
    **(a1 + 232) = 0;
  }

  if (*(a1 + 29) == 1)
  {
    v6 = MEMORY[0x277D85E08];
    v7 = *MEMORY[0x277D85E08];
    v8 = MEOWPhon::Name(*a2);
    v9 = MEOWPhon::Name(a2[1]);
    fprintf(v7, "Anchor %s-%s#%u\n", v8, v9, bswap32(*(a2 + 1)) >> 16);
    if (*(a1 + 24))
    {
      v10 = *(a1 + 40);
      v11 = *v6;
      if (v10)
      {
        v12 = *(v10 + 2 * *(*(a1 + 72) + 8 * *(a1 + 88) - 8));
LABEL_12:
        fprintf(v11, "   0 %3d   %6g  %6g\n", v12, **(a1 + 208), **(a1 + 232));
        fflush(*v6);
        goto LABEL_13;
      }
    }

    else
    {
      v11 = *v6;
    }

    v12 = -1;
    goto LABEL_12;
  }

LABEL_13:
  result = MEOWSearchLatticeImpl::RecomputePathCost(a1);
  *(a1 + 24) = 5;
  *(a1 + 536) = *a2;
  return result;
}

uint64_t MEOWSearchLatticeImpl::BestPath(MEOWSearchLatticeImpl *this)
{
  if (*(this + 29) == 1)
  {
    v2 = MEMORY[0x277D85E08];
    fprintf(*MEMORY[0x277D85E08], "Best %d\n", **(this + 13));
    fflush(*v2);
  }

  return **(this + 13);
}

uint64_t MEOWSearchLatticeImpl::Force(uint64_t this, unint64_t a2)
{
  if (*(this + 136) > a2)
  {
    v2 = a2;
    v3 = this;
    if (*(this + 29) == 1)
    {
      v4 = MEMORY[0x277D85E08];
      fprintf(*MEMORY[0x277D85E08], "Force %lu\n", a2);
      this = fflush(*v4);
    }

    if (!v3[16])
    {
      this = MEOWVectorBase::Allocate((v3 + 13), 1uLL, 1);
    }

    v3[15] = 1;
    *v3[13] = v2;
  }

  return this;
}

uint64_t MEOWSearchLatticeImpl::Override(uint64_t this, unint64_t a2)
{
  if (*(this + 136) > a2 && *(this + 29) == 1)
  {
    v3 = MEMORY[0x277D85E08];
    fprintf(*MEMORY[0x277D85E08], "Override %lu\n", a2);
    v4 = *v3;

    return fflush(v4);
  }

  return this;
}

uint64_t MEOWSearchLatticeImpl::Veto(uint64_t this, uint64_t a2)
{
  v3 = this;
  if (*(this + 29) == 1)
  {
    v4 = MEMORY[0x277D85E08];
    fprintf(*MEMORY[0x277D85E08], "Veto %lu\n", a2);
    this = fflush(*v4);
  }

  v5 = v3[15];
  if (v5)
  {
    this = v3[13];
    v6 = 1 - v5;
    while (*this != a2)
    {
      ++v6;
      this += 2;
      if (v6 == 1)
      {
        return this;
      }
    }

    this = memmove(this, (this + 2), -v6);
    if (v3[16] < (v5 - 1))
    {
      this = MEOWVectorBase::Allocate((v3 + 13), v5 - 1, 1);
    }

    v3[15] = v5 - 1;
  }

  return this;
}

void MEOWSearchLatticeImpl::clear(void **this)
{
  MEOWVectorBase::clear(this + 5);
  MEOWVectorBase::clear(this + 9);
  *(this + 6) = 0;
}

uint64_t SLML::Matrix<float>::operator=(uint64_t a1, float a2)
{
  if (*(a1 + 4) >= 1)
  {
    v4 = 0;
    do
    {
      catlas_sset(*a1, a2, (*(a1 + 24) + 4 * *(a1 + 8) * v4++), 1);
    }

    while (v4 < *(a1 + 4));
  }

  return a1;
}

void SLML::copy(unsigned int *a1, unsigned int *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 != v5)
  {
    SLML::Fatal("%s %d != %d", a2, "Size", v4, v5);
  }

  v6 = *(a1 + 2);
  v7 = a1[1];
  v8 = *(a2 + 2);
  v9 = a2[1];

  cblas_scopy(v4, v6, v7, v8, v9);
}

void SLML::matmul(unsigned int **a1@<X0>, const char *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *a2;
  if (**a1 == v3)
  {
    SLML::Matrix<float>::Matrix(a3, (*a1)[1], *(a2 + 1));
  }

  SLML::Fatal("%s %d != %d", a2, "Dimension", **a1, v3);
}

uint64_t SLML::MatrixColumns<float>::operator*=(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 4);
  v5 = *a2;
  if (v4 != v5)
  {
    SLML::Fatal("%s %d != %d", a2, "Dimension", *(a1 + 4), v5);
  }

  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 2) + 4 * *(a2 + 1) * v6);
      v8 = *a1;
      v9 = *(a1 + 16);
      v10 = (*(a1 + 24) + 4 * *(a1 + 8) * v6);
      ++*(v9 + 4);
      cblas_sscal(v8, v7, v10, 1);
      SLML::Storage<float>::RemoveReference(v9);
      ++v6;
    }

    while (v6 < *(a1 + 4));
  }

  return a1;
}

float **SLML::Vector<float>::operator+=(float **a1, unsigned int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    SLML::Fatal("%s %d != %d", a2, "Size", v3, v4);
  }

  cblas_saxpy(v3, 1.0, *(a2 + 2), a2[1], a1[2], *(a1 + 1));
  return a1;
}

void sub_257B6B224(_Unwind_Exception *a1)
{
  SLML::Storage<float>::RemoveReference(v2);
  SLML::Storage<float>::RemoveReference(*(v1 + 8));
  _Unwind_Resume(a1);
}

void SLML::Matrix<float>::Matrix(_DWORD *a1, int a2, int a3)
{
  *a1 = a2;
  a1[1] = a3;
  operator new();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *,false>(uint64_t result, unsigned __int16 *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v70 = *(a2 - 1);
        v64 = *v9;
        if (*(*a3 + 4 * v70) >= *(*a3 + 4 * v64))
        {
          return result;
        }

        *v9 = v70;
LABEL_102:
        *(a2 - 1) = v64;
        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v71 = v9 + 1;
      v72 = v9[1];
      v73 = v9 + 2;
      v74 = v9[2];
      v75 = *a3;
      v76 = *(*a3 + 4 * v72);
      v77 = *v9;
      v78 = *(*a3 + 4 * v77);
      v79 = *(*a3 + 4 * v74);
      if (v76 >= v78)
      {
        if (v79 < v76)
        {
          *v71 = v74;
          *v73 = v72;
          v80 = v9;
          v81 = v9 + 1;
          result = v72;
          v84 = v72;
          if (v79 < v78)
          {
            goto LABEL_104;
          }

LABEL_106:
          v86 = *(a2 - 1);
          if (*(v75 + 4 * v86) < *(v75 + 4 * v72))
          {
            *v73 = v86;
            *(a2 - 1) = v84;
            v87 = *v73;
            v88 = *v71;
            v89 = *(v75 + 4 * v87);
            if (v89 < *(v75 + 4 * v88))
            {
              v9[1] = v87;
              v9[2] = v88;
              v90 = *v9;
              if (v89 < *(v75 + 4 * v90))
              {
                *v9 = v87;
                v9[1] = v90;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v79 < v76)
        {
          v80 = v9;
          v81 = v9 + 2;
          v72 = *v9;
          result = v72;
          goto LABEL_104;
        }

        *v9 = v72;
        v9[1] = v77;
        v80 = v9 + 1;
        v81 = v9 + 2;
        v72 = v77;
        result = v77;
        if (v79 < v78)
        {
LABEL_104:
          *v80 = v74;
          *v81 = v77;
          v84 = result;
          goto LABEL_106;
        }
      }

      v72 = v74;
      v84 = v74;
      goto LABEL_106;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *,unsigned short *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *(a2 - 1);
    v17 = *(*a3 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = *(v15 + 4 * v18);
      v21 = *(v15 + 4 * v19);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v13;
          v27 = *v9;
          if (*(v15 + 4 * v26) < *(v15 + 4 * v27))
          {
            *v9 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v30 = *(a2 - 1);
        if (*(v15 + 4 * v30) < v21)
        {
          *v13 = v30;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = v9[1];
      v34 = *(v15 + 4 * v32);
      v35 = *(v15 + 4 * v33);
      v36 = *(a2 - 2);
      v37 = *(v15 + 4 * v36);
      if (v34 >= v35)
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v9[1];
          if (*(v15 + 4 * v38) < *(v15 + 4 * v39))
          {
            v9[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v9[1] = v36;
          goto LABEL_43;
        }

        v9[1] = v32;
        *v31 = v33;
        v41 = *(a2 - 2);
        if (*(v15 + 4 * v41) < v35)
        {
          *v31 = v41;
LABEL_43:
          *(a2 - 2) = v33;
        }
      }

      v44 = v13[1];
      v42 = v13 + 1;
      v43 = v44;
      v45 = v9[2];
      v46 = *(v15 + 4 * v44);
      v47 = *(v15 + 4 * v45);
      v48 = *(a2 - 3);
      v49 = *(v15 + 4 * v48);
      if (v46 >= v47)
      {
        if (v49 < v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v9[2];
          if (*(v15 + 4 * v50) < *(v15 + 4 * v51))
          {
            v9[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 < v46)
        {
          v9[2] = v48;
          goto LABEL_52;
        }

        v9[2] = v43;
        *v42 = v45;
        v52 = *(a2 - 3);
        if (*(v15 + 4 * v52) < v47)
        {
          *v42 = v52;
LABEL_52:
          *(a2 - 3) = v45;
        }
      }

      v53 = *v14;
      v54 = *v31;
      v55 = *(v15 + 4 * v53);
      v56 = *(v15 + 4 * v54);
      v57 = *v42;
      v58 = *(v15 + 4 * v57);
      if (v55 >= v56)
      {
        if (v58 < v55)
        {
          *v14 = v57;
          *v42 = v53;
          v42 = v14;
          LOWORD(v53) = v54;
          if (v58 < v56)
          {
            goto LABEL_59;
          }

          LOWORD(v53) = v57;
        }
      }

      else
      {
        if (v58 >= v55)
        {
          *v31 = v53;
          *v14 = v54;
          v31 = v14;
          LOWORD(v53) = v57;
          if (v58 >= v56)
          {
            LOWORD(v53) = v54;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v31 = v57;
        *v42 = v54;
      }

LABEL_60:
      v59 = *v9;
      *v9 = v53;
      *v14 = v59;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v13;
    v24 = *(v15 + 4 * v22);
    v25 = *(v15 + 4 * v23);
    if (v24 < v25)
    {
      if (v17 < v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v40 = *(a2 - 1);
      if (*(v15 + 4 * v40) < v25)
      {
        *v9 = v40;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 >= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v28 = *v9;
    v29 = *v14;
    if (*(v15 + 4 * v28) >= *(v15 + 4 * v29))
    {
      goto LABEL_39;
    }

    *v14 = v28;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v15 + 4 * *(v9 - 1)) >= *(v15 + 4 * *v9))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned short *,MEOWCompareIndexed &>(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v60 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned short *,MEOWCompareIndexed &>(v9, a2, a3);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(v9, v60, a3);
    v9 = v60 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(v60 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *,false>(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = v9[1];
  v64 = *v9;
  v65 = *a3;
  v66 = *(*a3 + 4 * v63);
  v67 = *(*a3 + 4 * v64);
  v68 = *(a2 - 1);
  v69 = *(*a3 + 4 * v68);
  if (v66 < v67)
  {
    if (v69 >= v66)
    {
      *v9 = v63;
      v9[1] = v64;
      v85 = *(a2 - 1);
      if (*(v65 + 4 * v85) >= v67)
      {
        return result;
      }

      v9[1] = v85;
    }

    else
    {
      *v9 = v68;
    }

    goto LABEL_102;
  }

  if (v69 < v66)
  {
    v9[1] = v68;
    *(a2 - 1) = v63;
    v82 = v9[1];
    v83 = *v9;
    if (*(v65 + 4 * v82) < *(v65 + 4 * v83))
    {
      *v9 = v82;
      v9[1] = v83;
    }
  }

  return result;
}

_WORD *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *,0>(_WORD *result, unsigned __int16 *a2, __int16 *a3, _WORD *a4, _WORD *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *a2;
  v8 = *result;
  v9 = *a6;
  v10 = *(*a6 + 4 * v6);
  v11 = *(*a6 + 4 * v8);
  v12 = *a3;
  v13 = *(*a6 + 4 * v12);
  if (v10 < v11)
  {
    if (v13 < v10)
    {
      *result = v12;
LABEL_9:
      *a3 = v8;
      v6 = v8;
      v7 = v8;
      goto LABEL_12;
    }

    *result = v6;
    *a2 = v8;
    v6 = *a3;
    if (*(v9 + 4 * v6) < v11)
    {
      *a2 = v6;
      goto LABEL_9;
    }

LABEL_11:
    v7 = v6;
    goto LABEL_12;
  }

  if (v13 >= v10)
  {
    v6 = *a3;
    v7 = *a3;
    goto LABEL_12;
  }

  *a2 = v12;
  *a3 = v6;
  v14 = *a2;
  v15 = *result;
  if (*(v9 + 4 * v14) < *(v9 + 4 * v15))
  {
    *result = v14;
    *a2 = v15;
    v6 = *a3;
    goto LABEL_11;
  }

LABEL_12:
  v16 = *a4;
  if (*(v9 + 4 * v16) < *(v9 + 4 * v6))
  {
    *a3 = v16;
    *a4 = v7;
    v17 = *a3;
    v18 = *a2;
    if (*(v9 + 4 * v17) < *(v9 + 4 * v18))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *result;
      if (*(v9 + 4 * v19) < *(v9 + 4 * v20))
      {
        *result = v19;
        *a2 = v20;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  if (*(v9 + 4 * v21) < *(v9 + 4 * v22))
  {
    *a4 = v21;
    *a5 = v22;
    v23 = *a4;
    v24 = *a3;
    if (*(v9 + 4 * v23) < *(v9 + 4 * v24))
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      if (*(v9 + 4 * v25) < *(v9 + 4 * v26))
      {
        *a2 = v25;
        *a3 = v26;
        v27 = *a2;
        v28 = *result;
        if (*(v9 + 4 * v27) < *(v9 + 4 * v28))
        {
          *result = v27;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(unsigned __int16 *result, unsigned __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v7 = v6[1];
        v8 = *v6;
        v6 = v3;
        v9 = *(v5 + 4 * v7);
        if (v9 < *(v5 + 4 * v8))
        {
          v10 = v4;
          while (1)
          {
            *(result + v10 + 2) = v8;
            if (!v10)
            {
              break;
            }

            v8 = *(result + v10 - 2);
            v10 -= 2;
            if (v9 >= *(v5 + 4 * v8))
            {
              v11 = (result + v10 + 2);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
        }

        v3 = v6 + 1;
        v4 += 2;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

unsigned __int16 *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(unsigned __int16 *result, unsigned __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      do
      {
        v5 = result[1];
        v6 = *result;
        result = v3;
        v7 = *(v4 + 4 * v5);
        if (v7 < *(v4 + 4 * v6))
        {
          do
          {
            *v3 = v6;
            v6 = *(v3 - 2);
            --v3;
          }

          while (v7 < *(v4 + 4 * v6));
          *v3 = v5;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

unsigned __int16 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned short *,MEOWCompareIndexed &>(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = *(*a3 + 4 * v3);
  if (v5 >= *(*a3 + 4 * *(a2 - 1)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 >= *(v4 + 4 * *v6));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 >= *(v4 + 4 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 < *(v4 + 4 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 >= *(v4 + 4 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 < *(v4 + 4 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

_WORD *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned short *,MEOWCompareIndexed &>(_WORD *a1, _WORD *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3;
  v6 = *(*a3 + 4 * v4);
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 4 * v7) < v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 4 * v11) >= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 4 * v10) >= v6);
  }

  if (v8 < a2)
  {
    v12 = *a2;
    v13 = v7;
    v14 = v8;
    v15 = a2;
    do
    {
      *v14 = v12;
      *v15 = v13;
      do
      {
        v16 = v14[1];
        ++v14;
        v13 = v16;
      }

      while (*(v5 + 4 * v16) < v6);
      do
      {
        v17 = *--v15;
        v12 = v17;
      }

      while (*(v5 + 4 * v17) >= v6);
    }

    while (v14 < v15);
    v9 = v14 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1[1];
      v5 = *a1;
      v7 = *a3;
      v8 = *(*a3 + 4 * v6);
      v9 = *(*a3 + 4 * v5);
      v10 = *(a2 - 1);
      v11 = *(*a3 + 4 * v10);
      if (v8 >= v9)
      {
        if (v11 < v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v34 = a1[1];
          v35 = *a1;
          if (*(v7 + 4 * v34) < *(v7 + 4 * v35))
          {
            *a1 = v34;
            a1[1] = v35;
          }
        }

        return 1;
      }

      if (v11 < v8)
      {
        *a1 = v10;
        goto LABEL_42;
      }

      *a1 = v6;
      a1[1] = v5;
      v46 = *(a2 - 1);
      if (*(v7 + 4 * v46) < v9)
      {
        a1[1] = v46;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a3;
    v27 = *(*a3 + 4 * v23);
    v28 = *a1;
    v29 = *(*a3 + 4 * v28);
    v30 = *(*a3 + 4 * v25);
    if (v27 >= v29)
    {
      if (v30 < v27)
      {
        *v22 = v25;
        *v24 = v23;
        v31 = a1;
        v32 = a1 + 1;
        v33 = v23;
        v45 = v23;
        if (v30 >= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v30 < v27)
      {
        v31 = a1;
        v32 = a1 + 2;
        v23 = *a1;
        v33 = *a1;
LABEL_44:
        *v31 = v25;
        *v32 = v28;
        v45 = v33;
LABEL_46:
        v47 = *(a2 - 1);
        if (*(v26 + 4 * v47) < *(v26 + 4 * v23))
        {
          *v24 = v47;
          *(a2 - 1) = v45;
          v48 = *v24;
          v49 = *v22;
          v50 = *(v26 + 4 * v48);
          if (v50 < *(v26 + 4 * v49))
          {
            a1[1] = v48;
            a1[2] = v49;
            v51 = *a1;
            if (v50 < *(v26 + 4 * v51))
            {
              *a1 = v48;
              a1[1] = v51;
            }
          }
        }

        return 1;
      }

      *a1 = v23;
      a1[1] = v28;
      v31 = a1 + 1;
      v32 = a1 + 2;
      v23 = v28;
      v33 = v28;
      if (v30 < v29)
      {
        goto LABEL_44;
      }
    }

    v23 = v25;
    v45 = v25;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) < *(*a3 + 4 * v5))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a3;
  v16 = *(*a3 + 4 * v14);
  v17 = *a1;
  v18 = *(*a3 + 4 * v17);
  v19 = *(*a3 + 4 * v12);
  if (v16 < v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 >= v16)
    {
      *a1 = v14;
      a1[1] = v17;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 >= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v20 = v12;
    *v21 = v17;
    goto LABEL_26;
  }

  if (v19 < v16)
  {
    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 < v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v36 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v37 = 0;
  for (i = 6; ; i += 2)
  {
    v39 = *v36;
    v40 = *v13;
    v41 = *(v15 + 4 * v39);
    if (v41 < *(v15 + 4 * v40))
    {
      v42 = i;
      while (1)
      {
        *(a1 + v42) = v40;
        v43 = v42 - 2;
        if (v42 == 2)
        {
          break;
        }

        v40 = *(a1 + v42 - 4);
        v42 -= 2;
        if (v41 >= *(v15 + 4 * v40))
        {
          v44 = (a1 + v43);
          goto LABEL_34;
        }
      }

      v44 = a1;
LABEL_34:
      *v44 = v39;
      if (++v37 == 8)
      {
        break;
      }
    }

    v13 = v36++;
    if (v36 == a2)
    {
      return 1;
    }
  }

  return v36 + 1 == a2;
}

unsigned __int16 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *,unsigned short *>(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*(*a4 + 4 * v13) < *(*a4 + 4 * v14))
        {
          *v12 = v14;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *a1;
        v17 = *a4;
        v18 = a1;
        do
        {
          v19 = v18;
          v20 = &v18[v15];
          v21 = 2 * v15;
          v18 = v20 + 1;
          v15 = (2 * v15) | 1;
          v22 = v21 + 2;
          if (v22 < v8)
          {
            v24 = v20[2];
            v23 = v20 + 2;
            if (*(v17 + 4 * *(v23 - 1)) < *(v17 + 4 * v24))
            {
              v18 = v23;
              v15 = v22;
            }
          }

          *v19 = *v18;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v16;
        }

        else
        {
          *v18 = *v6;
          *v6 = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(uint64_t result, uint64_t *a2, uint64_t a3, _WORD *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 1)
    {
      v6 = (v4 + 1);
      v7 = (result + 2 * (v4 + 1));
      v8 = (v4 + 2);
      v9 = *a2;
      if (v8 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 4 * v11);
      if (*(v9 + 4 * v10) >= v12)
      {
        do
        {
          v13 = v7;
          *a4 = v10;
          if (v5 < v6)
          {
            break;
          }

          v14 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 2 * v6);
          v15 = v14 + 2;
          if (v15 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v15;
          }

          v10 = *v7;
          a4 = v13;
        }

        while (*(v9 + 4 * v10) >= v12);
        *v13 = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MEOWCompareIndexed &,unsigned short *>(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 2 * v4);
    v6 = *v5;
    v9 = *(a2 - 2);
    v7 = (a2 - 2);
    v8 = v9;
    v10 = *a3;
    v11 = *(*a3 + 4 * v9);
    if (*(*a3 + 4 * v6) < v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 2 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (*(v10 + 4 * v6) < v11);
      *v12 = v8;
    }
  }

  return result;
}

void MEOWSearchLatticeImpl::Cookie2Cookie(uint64_t a1, unsigned __int16 **a2, uint64_t a3, uint64_t a4, float *a5, float *a6, void *a7, float a8)
{
  v14 = **a2;
  if ((MTBEDebugFlags::sMEOWDebug & 0x200) != 0)
  {
    SLML::Vector<float>::Vector(&__N, *(a3 + 16));
  }

  if (a2[2])
  {
    v16 = 0;
    v17 = 3.4028e38;
    v18 = 3.4028e38;
    do
    {
      v19 = (*a2)[v16];
      v20 = *(*(a1 + 152) + 4 * *(a1 + 140) * v19);
      if (v20 >= v17)
      {
        break;
      }

      v21 = MEOWDistance(*a3 + 60 * (*a2)[v16], a4) * a8;
      if ((v20 + v21) < v17)
      {
        v14 = v19;
        v18 = v21;
        v17 = v20 + v21;
      }

      ++v16;
    }

    while (v16 < a2[2]);
  }

  else
  {
    v18 = 3.4028e38;
    v17 = 3.4028e38;
  }

  *a5 = v17;
  *a6 = v18;
  *a7 = v14;
}

void MEOWSearchLatticeImpl::Cookie2Cookie(uint64_t a1, unsigned __int16 **a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v8 = a7;
  v9 = a6;
  if (a6)
  {
    if (a7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(a1 + 208);
    a5 = *(a1 + 192);
    if (a7)
    {
      goto LABEL_3;
    }
  }

  v8 = *(a1 + 232);
LABEL_3:
  v16 = *(a1 + 56);
  if (*(a1 + 64) < (v16 + a5))
  {
    MEOWVectorBase::Allocate((a1 + 40), v16 + a5, 1);
  }

  *(a1 + 56) = v16 + a5;
  bzero((*(a1 + 40) + 2 * v16), 2 * a5);
  v17 = *(a1 + 176);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      v19 = *(*(a1 + 160) + 2 * i);
      v21 = 0;
      v22 = 0;
      MEOWSearchLatticeImpl::Cookie2Cookie(a1, a2, a3, *a4 + 60 * v19, &v22 + 1, &v22, &v21, a8);
      v20 = v22;
      *(v9 + 4 * v19) = HIDWORD(v22);
      *(v8 + 4 * v19) = v20;
      *(*(a1 + 40) + 2 * v16 + 2 * v19) = v21;
    }
  }
}

void MEOWSearchLatticeImpl::MatchContexts(void *a1, void *a2, char a3, MEOWPhon *this)
{
  v7 = *MEOWPhon::Match(this);
  v8 = a1[39];
  v9 = a2[2];
  if (v9 > v8)
  {
    if (a1[40] < v9)
    {
      MEOWVectorBase::Allocate((a1 + 37), a2[2], 1);
    }

    a1[39] = v9;
    bzero((a1[37] + v8), v9 - v8);
    v9 = a2[2];
  }

  if (v9)
  {
    v10 = 0;
    do
    {
      *(a1[37] + v10) += v7[51 * a3 + *(*a2 + a2[1] * v10)];
      ++v10;
    }

    while (v10 < a2[2]);
  }
}

void MEOWSearchLatticeImpl::MatchContexts(void *a1, __int128 *a2, uint64_t a3, MEOWPhon *this)
{
  if (*(a3 + 16) == 1)
  {
    v14 = *a2;
    v15 = *(a2 + 2);
    MEOWSearchLatticeImpl::MatchContexts(a1, &v14, **a3, this);
  }

  else
  {
    v7 = *MEOWPhon::Match(this);
    v8 = a1[39];
    v9 = *(a2 + 2);
    if (v9 > v8)
    {
      if (a1[40] < v9)
      {
        MEOWVectorBase::Allocate((a1 + 37), *(a2 + 2), 1);
      }

      a1[39] = v9;
      bzero((a1[37] + v8), v9 - v8);
      v9 = *(a2 + 2);
    }

    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = *(a3 + 16);
        if (v11)
        {
          v12 = *a3;
          v13 = 50;
          do
          {
            if (v13 >= v7[51 * *v12 + *(*a2 + *(a2 + 1) * v10)])
            {
              v13 = v7[51 * *v12 + *(*a2 + *(a2 + 1) * v10)];
            }

            v12 += *(a3 + 8);
            --v11;
          }

          while (v11);
        }

        else
        {
          LOBYTE(v13) = 50;
        }

        *(a1[37] + v10++) += v13;
      }

      while (v10 < *(a2 + 2));
    }
  }
}

void MEOWSearchLatticeImpl::MatchWordBoundaries(MEOWSearchLatticeImpl *this, int a2, int a3)
{
  v6 = *(this + 39);
  v7 = *(this + 43);
  if (v7 > v6)
  {
    if (*(this + 40) < v7)
    {
      MEOWVectorBase::Allocate((this + 296), v7, 1);
    }

    *(this + 39) = v7;
    bzero((*(this + 37) + v6), v7 - v6);
    v7 = *(this + 43);
  }

  if (a3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  if (a2)
  {
    v9 = a3;
  }

  else
  {
    v8 = 0;
    v9 = 3;
  }

  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v11 = *(*(this + 41) + i);
      if ((v11 & v8) != 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = a2 ^ 1;
      }

      v13 = v9 & v11;
      if (v12 != 1 || v13 != 0)
      {
        *(*(this + 37) + i) += 100;
        v7 = *(this + 43);
      }
    }
  }
}

void MEOWSearchLatticeImpl::CookieStride(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = *a1 + 52;
  a2[1] = 60;
  a2[2] = a1[2];
}

void MEOWSearchLatticeImpl::VariantStride(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = 144;
  a3[2] = a2;
}

void MEOWSearchLatticeImpl::SetStride(unsigned __int8 *a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = a1 + 1;
  a2[1] = 1;
  a2[2] = v2;
}

void MEOWSearchLatticeImpl::MatchContexts(MEOWReader **this, unsigned int a2, unsigned int a3, char a4, MEOWPhon *a5)
{
  MEOWVectorBase::MEOWVectorBase(v11, 1);
  MEOWReader::GetAdjacent(this[1], a2, a3, a5 ^ 1, v11, (this + 41));
  v10[0] = v11[0];
  v10[1] = 1;
  v10[2] = v11[2];
  MEOWSearchLatticeImpl::MatchContexts(this, v10, a4, a5);
  MEOWVectorBase::~MEOWVectorBase(v11);
}

void sub_257B6CCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeImpl::MatchContexts(uint64_t a1, unsigned int a2, unsigned int a3, __int128 *a4, MEOWPhon *a5)
{
  MEOWVectorBase::MEOWVectorBase(v14, 1);
  MEOWReader::GetAdjacent(*(a1 + 8), a2, a3, a5 ^ 1, v14, (a1 + 328));
  *&v12 = v14[0];
  *(&v12 + 1) = 1;
  v13 = v14[2];
  v10 = *a4;
  v11 = *(a4 + 2);
  MEOWSearchLatticeImpl::MatchContexts(a1, &v12, &v10, a5);
  MEOWVectorBase::~MEOWVectorBase(v14);
}

void sub_257B6CDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeImpl::WeedCandidates(uint64_t a1, void *a2)
{
  MEOWVectorBase::MEOWVectorBase(v7, 2);
  v4 = *(a1 + 176);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 160) + 2 * i);
      if (!*(*a2 + a2[1] * v6))
      {
        MEOWVectorBase::Append(v7);
        *(v7[0] + v8 - 1) = v6;
        v4 = *(a1 + 176);
      }
    }
  }

  if (v8)
  {
    MEOWVectorBase::Swap(v7, (a1 + 160));
  }

  MEOWVectorBase::~MEOWVectorBase(v7);
}

void MEOWSearchLatticeImpl::WeedCandidates(MEOWSearchLatticeImpl *this, unsigned int a2, unsigned int a3)
{
  MEOWVectorBase::MEOWVectorBase(v10, 2);
  if (*(this + 22))
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 20) + 2 * v6);
      v8 = *(this + 1);
      DemiRecord = MEOWReader::GetDemiRecord(v8, a2, a3, v7, 0);
      if (MEOWReader::IsWordOnly(v8, DemiRecord))
      {
        break;
      }

      MEOWVectorBase::Append(v10);
      *(v10[0] + v11 - 1) = v7;
      ++v6;
    }

    while (v6 < *(this + 22));
  }

  if (v11)
  {
    MEOWVectorBase::Swap(v10, (this + 160));
  }

  MEOWVectorBase::~MEOWVectorBase(v10);
}

void MEOWSearchLatticeImpl::CullCandidates(MEOWSearchLatticeImpl *this, unint64_t a2, const char *a3, ...)
{
  v16[201] = *MEMORY[0x277D85DE8];
  bzero(v16, 0x648uLL);
  v5 = *(this + 22);
  if (v5)
  {
    v6 = *(this + 20);
    v7 = *(this + 37);
    do
    {
      v8 = *v6++;
      ++v16[*(v7 + v8)];
      --v5;
    }

    while (v5);
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v10 += v16[v9];
    if (v10 >= a2)
    {
      break;
    }

    ++v9;
  }

  while (v9 != 201);
  if (v10 > 2 * a2)
  {
    LODWORD(v9) = v9 - (v10 - v16[v9] > a2 >> 1);
  }

  MEOWVectorBase::MEOWVectorBase(v15, 2);
  v11 = *(this + 22);
  if (v11)
  {
    for (i = 0; i < v11; ++i)
    {
      v13 = *(*(this + 20) + 2 * i);
      if (v9 >= *(*(this + 37) + v13))
      {
        MEOWVectorBase::Append(v15);
        *(v15[0] + v15[2] - 1) = v13;
        v11 = *(this + 22);
      }
    }
  }

  MEOWVectorBase::Swap(v15, (this + 160));
  MEOWVectorBase::~MEOWVectorBase(v15);
  v14 = *MEMORY[0x277D85DE8];
}

void MEOWSearchLatticeImpl::Null2Diphone(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  MEOWSearchLatticeImpl::WeedCandidates(a1, *a2, a2[1]);
  if (kDiphoneThreshold)
  {
    MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
    kDiphoneThreshold = 0;
  }

  if (qword_27F8F2AA8)
  {
    *(a1 + 312) = 0;
    MEOWVectorBase::MEOWVectorBase(v22, 1);
    MEOWReader::GetAdjacent(*(a1 + 8), *a2, a2[1], 0, v22, (a1 + 328));
    MEOWSearchLatticeImpl::MatchWordBoundaries(a1, a2[32], a2[33]);
    v6 = *a2;
    v7 = a2[1];
    v8 = *a3;
    *&v20 = a3 + 1;
    *(&v20 + 1) = 1;
    v21 = v8;
    MEOWSearchLatticeImpl::MatchContexts(a1, v6, v7, &v20, 0);
    if (kDiphoneThreshold)
    {
      MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
      kDiphoneThreshold = 0;
    }

    v9 = qword_27F8F2AA8;
    v10 = MEOWPhon::Name(*a2);
    v11 = MEOWPhon::Name(a2[1]);
    MEOWSearchLatticeImpl::CullCandidates(a1, v9, v12, v10, v11);
    MEOWVectorBase::~MEOWVectorBase(v22);
  }

  v13 = *(a1 + 176);
  if (v13)
  {
    v14 = *(a1 + 160);
    v15 = *(a1 + 208);
    v16 = *(a1 + 196);
    v17 = *(a1 + 232);
    v18 = *(a1 + 220);
    do
    {
      v19 = *v14++;
      *(v15 + 4 * v16 * v19) = 0;
      *(v17 + 4 * v18 * v19) = 0;
      --v13;
    }

    while (v13);
  }
}

void sub_257B6D24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeImpl::Diphone2Diphone(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  MEOWVectorBase::MEOWVectorBase(v17, 60);
  MEOWVectorBase::MEOWVectorBase(v16, 60);
  v6 = MEOWPhon::sDWt[*a2];
  MEOWSearchLatticeImpl::WeedCandidates(a1, *a2, a2[1]);
  if (kDiphoneThreshold)
  {
    MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
    kDiphoneThreshold = 0;
  }

  if (qword_27F8F2AA8)
  {
    *(a1 + 312) = 0;
    MEOWSearchLatticeImpl::MatchContexts(a1, *a2, a2[1], *(a1 + 432), 1);
    MEOWSearchLatticeImpl::MatchWordBoundaries(a1, a2[32], a2[33]);
    v7 = a2[1];
    if (a2[1])
    {
      v8 = *a2;
      v9 = *a3;
      *&v14 = a3 + 1;
      *(&v14 + 1) = 1;
      v15 = v9;
      MEOWSearchLatticeImpl::MatchContexts(a1, v8, v7, &v14, 0);
    }

    if (kDiphoneThreshold)
    {
      MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
      kDiphoneThreshold = 0;
    }

    v10 = qword_27F8F2AA8;
    v11 = MEOWPhon::Name(*a2);
    v12 = MEOWPhon::Name(a2[1]);
    MEOWSearchLatticeImpl::CullCandidates(a1, v10, v13, v11, v12);
  }

  MEOWReader::GetDistanceCookies(*(a1 + 8), *(a1 + 432), *(a1 + 433), 1, v17, (a1 + 104));
  MEOWReader::GetDistanceCookies(*(a1 + 8), *a2, a2[1], 0, v16, (a1 + 160));
  MEOWSearchLatticeImpl::Cookie2Cookie(a1, (a1 + 104), v17, v16, 0, 0, 0, v6);
  MEOWVectorBase::~MEOWVectorBase(v16);
  MEOWVectorBase::~MEOWVectorBase(v17);
}

void sub_257B6D410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeImpl::Demi2Diphone(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *a2;
  v7 = MEOWPhon::sDWt[v6];
  MEOWSearchLatticeImpl::WeedCandidates(a1, v6, a2[1]);
  if (kDiphoneThreshold)
  {
    MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
    kDiphoneThreshold = 0;
  }

  if (qword_27F8F2AA8)
  {
    *(a1 + 312) = 0;
    v8 = a2[1];
    if (a2[1])
    {
      v9 = *a2;
      v10 = *a3;
      *&v28 = a3 + 1;
      *(&v28 + 1) = 1;
      v29 = v10;
      MEOWSearchLatticeImpl::MatchContexts(a1, v9, v8, &v28, 0);
    }
  }

  if (*(a1 + 512) == 1)
  {
    MEOWVectorBase::MEOWVectorBase(&v28, 60);
    MEOWVectorBase::MEOWVectorBase(__src, 60);
    if (kDiphoneThreshold)
    {
      MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
      kDiphoneThreshold = 0;
    }

    if (qword_27F8F2AA8)
    {
      MEOWSearchLatticeImpl::MatchContexts(a1, *a2, a2[1], **(a1 + 520), 1);
      MEOWSearchLatticeImpl::MatchWordBoundaries(a1, a2[32], 0);
      if (kDiphoneThreshold)
      {
        MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
        kDiphoneThreshold = 0;
      }

      v11 = qword_27F8F2AA8;
      v12 = MEOWPhon::Name(*a2);
      v13 = MEOWPhon::Name(a2[1]);
      MEOWSearchLatticeImpl::CullCandidates(a1, v11, v14, v12, v13);
    }

    MEOWReader::GetDistanceCookies(*(a1 + 8), **(a1 + 520), *(*(a1 + 520) + 1), 1, &v28, (a1 + 104));
    MEOWReader::GetDistanceCookies(*(a1 + 8), *a2, a2[1], 0, __src, (a1 + 160));
    MEOWSearchLatticeImpl::Cookie2Cookie(a1, (a1 + 104), &v28, __src, 0, 0, 0, v7);
  }

  else
  {
    MEOWVectorBase::MEOWVectorBase(&v28, 60);
    MEOWVectorBase::MEOWVectorBase(__src, 60);
    MEOWVectorBase::MEOWVectorBase(v26, 60);
    if (*(a1 + 512))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        MEOWReader::GetDistanceCookies(*(a1 + 8), *(*(a1 + 520) + v15), *(*(a1 + 520) + v15 + 1), 1, __src, 0);
        MEOWVectorBase::Append(&v28, __src[0], __src[2]);
        ++v16;
        v15 += 144;
      }

      while (v16 < *(a1 + 512));
    }

    if (kDiphoneThreshold)
    {
      MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
      kDiphoneThreshold = 0;
    }

    if (qword_27F8F2AA8)
    {
      v17 = *a2;
      v18 = a2[1];
      v19 = *(a1 + 512);
      *&v24 = *(a1 + 520);
      *(&v24 + 1) = 144;
      v25 = v19;
      MEOWSearchLatticeImpl::MatchContexts(a1, v17, v18, &v24, 1);
      MEOWSearchLatticeImpl::MatchWordBoundaries(a1, a2[32], 0);
      if (kDiphoneThreshold)
      {
        MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
        kDiphoneThreshold = 0;
      }

      v20 = qword_27F8F2AA8;
      v21 = MEOWPhon::Name(*a2);
      v22 = MEOWPhon::Name(a2[1]);
      MEOWSearchLatticeImpl::CullCandidates(a1, v20, v23, v21, v22);
    }

    MEOWReader::GetDistanceCookies(*(a1 + 8), *a2, a2[1], 0, v26, (a1 + 160));
    MEOWSearchLatticeImpl::Cookie2Cookie(a1, (a1 + 104), &v28, v26, 0, 0, 0, v7);
    MEOWVectorBase::~MEOWVectorBase(v26);
  }

  MEOWVectorBase::~MEOWVectorBase(__src);
  MEOWVectorBase::~MEOWVectorBase(&v28);
}

void sub_257B6D77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MEOWVectorBase::~MEOWVectorBase(va);
  MEOWVectorBase::~MEOWVectorBase((v11 - 96));
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeImpl::Null2Demi(MEOWSearchLatticeImpl *this, const MEOWDemiSliceInfo *a2)
{
  if (*(a2 + 5) == 1)
  {
    v4 = *(a2 + 6);
    v5 = *v4;
    v6 = v4[1];

    MEOWSearchLatticeImpl::WeedCandidates(this, v5, v6);
  }

  else
  {
    MEOWVectorBase::MEOWVectorBase(v11, 60);
    MEOWVectorBase::MEOWVectorBase(__src, 60);
    if (*(a2 + 5))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        MEOWReader::GetDistanceCookies(*(this + 1), *(*(a2 + 6) + v7), *(*(a2 + 6) + v7 + 1), 0, __src, 0);
        MEOWVectorBase::Append(v11, __src[0], __src[2]);
        ++v8;
        v7 += 144;
      }

      while (v8 < *(a2 + 5));
    }

    v9[0] = v11[0] + 53;
    v9[1] = 60;
    v9[2] = v11[2];
    MEOWSearchLatticeImpl::WeedCandidates(this, v9);
    MEOWVectorBase::~MEOWVectorBase(__src);
    MEOWVectorBase::~MEOWVectorBase(v11);
  }
}

void sub_257B6D8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  MEOWVectorBase::~MEOWVectorBase(va);
  MEOWVectorBase::~MEOWVectorBase(va1);
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeImpl::Demi2Demi(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = MEOWPhon::sDWt[**(a2 + 48)];
  if (*(a1 + 512) == 1 && *(a2 + 40) == 1)
  {
    MEOWVectorBase::MEOWVectorBase(v32, 60);
    MEOWVectorBase::MEOWVectorBase(v30, 60);
    MEOWSearchLatticeImpl::WeedCandidates(a1, **(a2 + 48), *(*(a2 + 48) + 1));
    if (kDiphoneThreshold)
    {
      MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
      kDiphoneThreshold = 0;
    }

    if (qword_27F8F2AA8)
    {
      *(a1 + 312) = 0;
      if (*(a2 + 1))
      {
        v17 = *(a2 + 48);
        v18 = *v17;
        v19 = v17[1];
        v20 = *a3;
        *&__src = a3 + 1;
        *(&__src + 1) = 1;
        v29 = v20;
        MEOWSearchLatticeImpl::MatchContexts(a1, v18, v19, &__src, 0);
      }

      MEOWSearchLatticeImpl::MatchContexts(a1, **(a2 + 48), *(*(a2 + 48) + 1), **(a1 + 520), 1);
      if (kDiphoneThreshold)
      {
        MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
        kDiphoneThreshold = 0;
      }

      v21 = qword_27F8F2AA8;
      v22 = MEOWPhon::Name(**(a2 + 48));
      v23 = MEOWPhon::Name(*(*(a2 + 48) + 1));
      MEOWSearchLatticeImpl::CullCandidates(a1, v21, v24, v22, v23);
    }

    MEOWReader::GetDistanceCookies(*(a1 + 8), **(a1 + 520), *(*(a1 + 520) + 1), 1, v32, (a1 + 104));
    MEOWReader::GetDistanceCookies(*(a1 + 8), **(a2 + 48), *(*(a2 + 48) + 1), 0, v30, (a1 + 160));
    MEOWSearchLatticeImpl::Cookie2Cookie(a1, (a1 + 104), v32, v30, 0, 0, 0, v5);
  }

  else
  {
    MEOWVectorBase::MEOWVectorBase(v32, 60);
    MEOWVectorBase::MEOWVectorBase(v30, 60);
    MEOWVectorBase::MEOWVectorBase(&__src, 60);
    if (kDiphoneThreshold)
    {
      MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
      kDiphoneThreshold = 0;
    }

    if (qword_27F8F2AA8)
    {
      *(a1 + 312) = 0;
    }

    if (*(a1 + 512))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        MEOWReader::GetDistanceCookies(*(a1 + 8), *(*(a1 + 520) + v7), *(*(a1 + 520) + v7 + 1), 1, &__src, 0);
        MEOWVectorBase::Append(v32, __src, v29);
        ++v8;
        v7 += 144;
      }

      while (v8 < *(a1 + 512));
    }

    if (*(a2 + 40))
    {
      v9 = 0;
      v10 = 0;
      do
      {
        MEOWReader::GetDistanceCookies(*(a1 + 8), *(*(a2 + 48) + v9), *(*(a2 + 48) + v9 + 1), 0, &__src, 0);
        MEOWVectorBase::Append(v30, __src, v29);
        ++v10;
        v9 += 144;
      }

      while (v10 < *(a2 + 40));
    }

    *&v26 = v30[0] + 53;
    *(&v26 + 1) = 60;
    v27 = v31;
    MEOWSearchLatticeImpl::WeedCandidates(a1, &v26);
    if (kDiphoneThreshold)
    {
      MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
      kDiphoneThreshold = 0;
    }

    if (qword_27F8F2AA8)
    {
      *&v26 = v30[0] + 52;
      *(&v26 + 1) = 60;
      v27 = v31;
      v11 = *(a1 + 512);
      v25[0] = *(a1 + 520);
      v25[1] = 144;
      v25[2] = v11;
      MEOWSearchLatticeImpl::MatchContexts(a1, &v26, v25, 1);
      MEOWSearchLatticeImpl::MatchWordBoundaries(a1, *(a2 + 32), 0);
      if (kDiphoneThreshold)
      {
        MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
        kDiphoneThreshold = 0;
      }

      v12 = qword_27F8F2AA8;
      v13 = MEOWPhon::Name(**(a2 + 48));
      v14 = MEOWPhon::Name(*(*(a2 + 48) + 1));
      MEOWSearchLatticeImpl::CullCandidates(a1, v12, v15, v13, v14);
    }

    MEOWSearchLatticeImpl::Cookie2Cookie(a1, (a1 + 104), v32, v30, 0, 0, 0, v5);
    MEOWVectorBase::~MEOWVectorBase(&__src);
  }

  MEOWVectorBase::~MEOWVectorBase(v30);
  MEOWVectorBase::~MEOWVectorBase(v32);
}

void sub_257B6DCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEOWVectorBase::~MEOWVectorBase(va);
  MEOWVectorBase::~MEOWVectorBase((v13 - 96));
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeImpl::Anchor2Diphone(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  MEOWVectorBase::MEOWVectorBase(v23, 60);
  MEOWVectorBase::MEOWVectorBase(v22, 60);
  v6 = *(a1 + 536);
  v7 = MEOWPhon::sDWt[*a2];
  MEOWSearchLatticeImpl::WeedCandidates(a1, *a2, a2[1]);
  if (kDiphoneThreshold)
  {
    MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
    kDiphoneThreshold = 0;
  }

  if (qword_27F8F2AA8)
  {
    *(a1 + 312) = 0;
    v8 = a2[1];
    if (a2[1])
    {
      v9 = *a2;
      v10 = *a3;
      *&v17 = a3 + 1;
      *(&v17 + 1) = 1;
      *&v18 = v10;
      MEOWSearchLatticeImpl::MatchContexts(a1, v9, v8, &v17, 0);
      v8 = a2[1];
    }

    MEOWSearchLatticeImpl::MatchContexts(a1, *a2, v8, *(a1 + 536), 1);
    MEOWSearchLatticeImpl::MatchWordBoundaries(a1, a2[32], a2[33]);
    if (kDiphoneThreshold)
    {
      MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
      kDiphoneThreshold = 0;
    }

    v11 = qword_27F8F2AA8;
    v12 = MEOWPhon::Name(*a2);
    v13 = MEOWPhon::Name(a2[1]);
    MEOWSearchLatticeImpl::CullCandidates(a1, v11, v14, v12, v13);
  }

  MEOWReader::GetDistanceCookie(*(a1 + 8), v6, BYTE1(v6), bswap32(v6), 1, v20);
  v17 = v20[0];
  v18 = v20[1];
  v19[0] = *v21;
  *(v19 + 12) = *&v21[12];
  MEOWVectorBase::Append(v23);
  v15 = v23[0] + 60 * v23[2];
  v16 = v18;
  *(v15 - 60) = v17;
  *(v15 - 44) = v16;
  *(v15 - 28) = v19[0];
  *(v15 - 1) = *(v19 + 12);
  MEOWReader::GetDistanceCookies(*(a1 + 8), *a2, a2[1], 0, v22, (a1 + 160));
  MEOWSearchLatticeImpl::Cookie2Cookie(a1, (a1 + 104), v23, v22, 0, 0, 0, v7);
  MEOWVectorBase::~MEOWVectorBase(v22);
  MEOWVectorBase::~MEOWVectorBase(v23);
}

void MEOWSearchLatticeImpl::Diphone2Anchor(uint64_t a1, _DWORD *a2)
{
  MEOWVectorBase::MEOWVectorBase(v12, 60);
  MEOWVectorBase::MEOWVectorBase(v11, 60);
  LODWORD(a2) = *a2;
  v4 = MEOWPhon::sDWt[a2];
  MEOWReader::GetDistanceCookies(*(a1 + 8), *(a1 + 432), *(a1 + 433), 1, v12, (a1 + 104));
  MEOWReader::GetDistanceCookie(*(a1 + 8), a2, BYTE1(a2), bswap32(a2), 0, v9);
  v6 = v9[0];
  v7 = v9[1];
  *v8 = *v10;
  *&v8[12] = *&v10[12];
  MEOWVectorBase::Append(v11);
  v5 = v11[0] + 60 * v11[2];
  *(v5 - 60) = v6;
  *(v5 - 44) = v7;
  *(v5 - 28) = *v8;
  *(v5 - 1) = *&v8[12];
  MEOWSearchLatticeImpl::Cookie2Cookie(a1, (a1 + 104), v12, v11, 0, 0, 0, v4);
  MEOWVectorBase::~MEOWVectorBase(v11);
  MEOWVectorBase::~MEOWVectorBase(v12);
}

void MEOWSearchLatticeImpl::Word2Demi(uint64_t a1, uint64_t a2)
{
  if (kDemiThreshold)
  {
    MTBEDebugParams::GetParam(kDemiThreshold, &qword_27F8F2AB8, qword_27F8F2AB8);
    kDemiThreshold = 0;
  }

  *(a2 + 40);
  MEOWVectorBase::MEOWVectorBase(&v5, 2);
  MEOWVectorBase::MEOWVectorBase(v4, 1);
  SLML::Vector<float>::Vector(&v3, 0);
}

void sub_257B6E5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  SLML::Storage<float>::RemoveReference(a25);
  SLML::Storage<float>::RemoveReference(a28);
  MEOWVectorBase::~MEOWVectorBase(&a30);
  MEOWVectorBase::~MEOWVectorBase((v30 - 152));
  _Unwind_Resume(a1);
}

int *SLML::Vector<float>::insert<SLML::Vector<float>::iterator>(int *result, const char *a2, uint64_t a3, float **a4)
{
  v6 = result;
  if (*a2 != *(result + 2) + 4 * result[1] * *result)
  {
    SLML::Fatal("Only inserts at end() are implemented!", a2);
  }

  for (i = *a3; i != *a4; *a3 = i)
  {
    result = SLML::Vector<float>::push_back(v6, *i);
    i = (*a3 + 4 * *(a3 + 8));
  }

  return result;
}

void MEOWSearchLatticeImpl::Diphone2Demi(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = MEOWPhon::sDWt[*(a1 + 433)];
  if (*(a2 + 40) != 1)
  {
    MEOWVectorBase::MEOWVectorBase(v22, 60);
    MEOWVectorBase::MEOWVectorBase(__src, 60);
    MEOWVectorBase::MEOWVectorBase(&v19, 60);
    if (kDemiThreshold)
    {
      MTBEDebugParams::GetParam(kDemiThreshold, &qword_27F8F2AB8, qword_27F8F2AB8);
      kDemiThreshold = 0;
    }

    if ((*(a2 + 40) - 1) > 1)
    {
      v11 = *(a2 + 40) - 1;
    }

    MEOWVectorBase::MEOWVectorBase(&v18, 2);
    SLML::Vector<float>::Vector(&v17, 0);
  }

  MEOWVectorBase::MEOWVectorBase(v22, 60);
  MEOWVectorBase::MEOWVectorBase(__src, 60);
  MEOWSearchLatticeImpl::WeedCandidates(a1, **(a2 + 48), *(*(a2 + 48) + 1));
  if (kDiphoneThreshold)
  {
    MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
    kDiphoneThreshold = 0;
  }

  if (qword_27F8F2AA8)
  {
    *(a1 + 312) = 0;
    v7 = *(a2 + 48);
    v8 = v7[80];
    v9 = *v7;
    v10 = v7[1];
    if (v7[80])
    {
      *&v19 = v7 + 81;
      *(&v19 + 1) = 1;
      v20 = v8;
      MEOWSearchLatticeImpl::MatchContexts(a1, v9, v10, &v19, 0);
    }

    else
    {
      v12 = *a3;
      *&v19 = a3 + 1;
      *(&v19 + 1) = 1;
      v20 = v12;
      MEOWSearchLatticeImpl::MatchContexts(a1, v9, v10, &v19, 0);
    }

    MEOWSearchLatticeImpl::MatchContexts(a1, **(a2 + 48), *(*(a2 + 48) + 1), *(a1 + 432), 1);
    MEOWSearchLatticeImpl::MatchWordBoundaries(a1, *(a2 + 32), 0);
    if (kDiphoneThreshold)
    {
      MTBEDebugParams::GetParam(kDiphoneThreshold, &qword_27F8F2AA8, qword_27F8F2AA8);
      kDiphoneThreshold = 0;
    }

    v13 = qword_27F8F2AA8;
    v14 = MEOWPhon::Name(**(a2 + 48));
    v15 = MEOWPhon::Name(*(*(a2 + 48) + 1));
    MEOWSearchLatticeImpl::CullCandidates(a1, v13, v16, v14, v15);
  }

  MEOWReader::GetDistanceCookies(*(a1 + 8), *(a1 + 432), *(a1 + 433), 1, v22, (a1 + 104));
  MEOWReader::GetDistanceCookies(*(a1 + 8), **(a2 + 48), *(*(a2 + 48) + 1), 0, __src, (a1 + 160));
  MEOWSearchLatticeImpl::Cookie2Cookie(a1, (a1 + 104), v22, __src, 0, 0, 0, v5);
  MEOWVectorBase::~MEOWVectorBase(__src);
  MEOWVectorBase::~MEOWVectorBase(v22);
}

void sub_257B6EB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  MEOWVectorBase::~MEOWVectorBase(&a26);
  MEOWVectorBase::~MEOWVectorBase(&a30);
  MEOWVectorBase::~MEOWVectorBase((v30 - 136));
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeImpl::Word2WordCull(MEOWSearchLatticeImpl *a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  *&v17[63] = *MEMORY[0x277D85DE8];
  if (kWordThreshold)
  {
    MTBEDebugParams::GetParam(kWordThreshold, &qword_27F8F2B08, qword_27F8F2B08);
    kWordThreshold = 0;
  }

  if (qword_27F8F2B08 && a3[2] > qword_27F8F2B08)
  {
    *(a1 + 39) = 0;
    __s = 0;
    *&v14 = *(a1 + 45) + 4;
    *(&v14 + 1) = 8;
    v15 = *(a1 + 47);
    MEOWDemiSliceInfo::PhonemeSet::AddPhonemes(&__s, &v14);
    *&v14 = *a3;
    *(&v14 + 1) = 8;
    v15 = a3[2];
    v11 = v17;
    v12 = 1;
    v13 = __s;
    MEOWSearchLatticeImpl::MatchContexts(a1, &v14, &v11, 0);
    *&v14 = *a3 + 5;
    *(&v14 + 1) = 8;
    v15 = a3[2];
    v8 = *a4;
    v11 = a4 + 1;
    v12 = 1;
    v13 = v8;
    MEOWSearchLatticeImpl::MatchContexts(a1, &v14, &v11, 1);
    *&v14 = *a3 + 1;
    *(&v14 + 1) = 8;
    v15 = a3[2];
    MEOWSearchLatticeImpl::MatchContexts(a1, &v14, *(a2 + 57), 1);
    *&v14 = *a3 + 4;
    *(&v14 + 1) = 8;
    v15 = a3[2];
    MEOWSearchLatticeImpl::MatchContexts(a1, &v14, *(a2 + 58), 0);
    if (kWordThreshold)
    {
      MTBEDebugParams::GetParam(kWordThreshold, &qword_27F8F2B08, qword_27F8F2B08);
      kWordThreshold = 0;
    }

    MEOWSearchLatticeImpl::CullCandidates(a1, qword_27F8F2B08, v9, *a2);
  }

  v10 = *MEMORY[0x277D85DE8];
}

_UNKNOWN **MEOWSearchLatticeImpl::Word2Word(uint64_t a1, float a2, uint64_t a3, float *a4, uint64_t *a5)
{
  v9 = *(a1 + 424);
  if (kWordLeftBias)
  {
    MTBEDebugParams::GetParam(kWordLeftBias, &dword_27F8F2B18, a4, *&dword_27F8F2B18);
    kWordLeftBias = 0;
  }

  if ((v9 + *&dword_27F8F2B18) >= a2)
  {
    a2 = v9 + *&dword_27F8F2B18;
  }

  v10 = *(a4 + 2);
  v11 = *(a1 + 56);
  v12 = v10 + v11;
  if (*(a1 + 64) < (v10 + v11))
  {
    MEOWVectorBase::Allocate((a1 + 40), v10 + v11, 1);
  }

  *(a1 + 56) = v12;
  bzero((*(a1 + 40) + 2 * v11), 2 * *(a4 + 2));
  if (kWordContextSubst)
  {
    MTBEDebugParams::GetParam(kWordContextSubst, &dword_27F8F2B28, v13, *&dword_27F8F2B28);
    kWordContextSubst = 0;
  }

  v14 = *&dword_27F8F2B28;
  if (kWordKeepWithNext)
  {
    MTBEDebugParams::GetParam(kWordKeepWithNext, &dword_27F8F2AF8, v13, *&dword_27F8F2AF8);
    kWordKeepWithNext = 0;
  }

  v15 = *&dword_27F8F2AF8;
  if (kWordKeepWithPrev)
  {
    MTBEDebugParams::GetParam(kWordKeepWithPrev, &dword_27F8F2B38, v13, *&dword_27F8F2B38);
    kWordKeepWithPrev = 0;
  }

  v16 = *&dword_27F8F2B38;
  v17 = MEOWPhon::Match(0);
  result = MEOWPhon::Match(1);
  v19 = *(a1 + 176);
  if (v19)
  {
    v20 = 0;
    v21 = *(a1 + 160);
    v22 = *a4;
    v23 = *a5;
    v24 = *(a1 + 104);
    v25 = *(a1 + 120);
    v26 = *(a1 + 208);
    v27 = *(a1 + 196);
    v28 = *(a1 + 232);
    v29 = *(a1 + 220);
    v30 = *(a1 + 40) + 2 * v11;
    do
    {
      v31 = *(v21 + 2 * v20);
      v32 = *v24;
      if (v25)
      {
        v33 = *(v22 + 8 * v31);
        v34 = 3.4028e38;
        v35 = v24;
        v36 = v25;
        v37 = 3.4028e38;
        do
        {
          v39 = *v35++;
          v38 = v39;
          v40 = *(*(a1 + 152) + 4 * (*(a1 + 140) * v39));
          if (v40 >= v34)
          {
            break;
          }

          v41 = *(*(a1 + 360) + 8 * v38 + 4);
          v42 = 0.0;
          if (v41 != v33)
          {
            v42 = ((a2 + (v14 * *(*result + 51 * v33 + v41))) + (v14 * *(*v17 + 51 * SBYTE1(v41) + SBYTE1(v33)))) + 0.0;
            if (*(*(a1 + 392) + v38) < 0)
            {
              v42 = v15 + v42;
            }

            if ((*(v23 + v31) & 0x40) != 0)
            {
              v42 = v16 + v42;
            }
          }

          v43 = v40 + v42;
          if (v43 < v34)
          {
            v37 = v42;
            v32 = v38;
            v34 = v43;
          }

          --v36;
        }

        while (v36);
      }

      else
      {
        v37 = 3.4028e38;
        v34 = 3.4028e38;
      }

      *(v26 + 4 * v27 * v31) = v34;
      *(v28 + 4 * v29 * v31) = v37;
      *(v30 + 2 * v31) = v32;
      ++v20;
    }

    while (v20 != v19);
  }

  return result;
}

void MEOWSearchLatticeImpl::Null2WordCull(MEOWSearchLatticeImpl *a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (kWordThreshold)
  {
    MTBEDebugParams::GetParam(kWordThreshold, &qword_27F8F2B08, qword_27F8F2B08);
    kWordThreshold = 0;
  }

  if (qword_27F8F2B08 && a3[2] > qword_27F8F2B08)
  {
    *(a1 + 39) = 0;
    v15 = 1;
    *&v13 = *a3;
    *(&v13 + 1) = 8;
    v14 = a3[2];
    v11 = &v15 + 1;
    v12 = vdupq_n_s64(1uLL);
    MEOWSearchLatticeImpl::MatchContexts(a1, &v13, &v11, 0);
    *&v13 = *a3 + 5;
    *(&v13 + 1) = 8;
    v14 = a3[2];
    v8 = *a4;
    v11 = (a4 + 1);
    v12.i64[0] = 1;
    v12.i64[1] = v8;
    MEOWSearchLatticeImpl::MatchContexts(a1, &v13, &v11, 1);
    *&v13 = *a3 + 1;
    *(&v13 + 1) = 8;
    v14 = a3[2];
    MEOWSearchLatticeImpl::MatchContexts(a1, &v13, *(a2 + 57), 1);
    *&v13 = *a3 + 4;
    *(&v13 + 1) = 8;
    v14 = a3[2];
    MEOWSearchLatticeImpl::MatchContexts(a1, &v13, *(a2 + 58), 0);
    if (kWordThreshold)
    {
      MTBEDebugParams::GetParam(kWordThreshold, &qword_27F8F2B08, qword_27F8F2B08);
      kWordThreshold = 0;
    }

    MEOWSearchLatticeImpl::CullCandidates(a1, qword_27F8F2B08, v9, *a2);
  }

  v10 = *MEMORY[0x277D85DE8];
}

unint64_t MEOWSearchLatticeImpl::Null2Word(uint64_t a1, float a2, uint64_t a3, float *a4, uint64_t *a5)
{
  if (kWordContextSubst)
  {
    MTBEDebugParams::GetParam(kWordContextSubst, &dword_27F8F2B28, a4, *&dword_27F8F2B28);
    kWordContextSubst = 0;
  }

  v9 = *&dword_27F8F2B28;
  if (kWordKeepWithPrev)
  {
    MTBEDebugParams::GetParam(kWordKeepWithPrev, &dword_27F8F2B38, a4, *&dword_27F8F2B38);
    kWordKeepWithPrev = 0;
  }

  v10 = *&dword_27F8F2B38;
  result = MEOWPhon::Match(1);
  v12 = *(a1 + 176);
  if (v12)
  {
    v13 = *result;
    v14 = *(a1 + 160);
    v15 = *a4;
    v16 = *a5;
    v17 = *(a1 + 208);
    v18 = *(a1 + 196);
    v19 = *(a1 + 232);
    v20 = *(a1 + 220);
    do
    {
      v22 = *v14++;
      v21 = v22;
      v23 = *(v15 + 8 * v22);
      v24 = 0.0;
      if (v23 >= 2u)
      {
        v24 = (a2 + (v9 * *(v13 + 51 * v23))) + 0.0;
        if ((*(v16 + v21) & 0x40) != 0)
        {
          v24 = v10 + v24;
        }
      }

      *(v17 + 4 * v18 * v21) = v24;
      result = (v20 * v21);
      *(v19 + 4 * result) = v24;
      --v12;
    }

    while (v12);
  }

  return result;
}

void MEOWSearchLatticeImpl::Demi2WordCull(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  if (kWordThreshold)
  {
    MTBEDebugParams::GetParam(kWordThreshold, &qword_27F8F2B08, qword_27F8F2B08);
    kWordThreshold = 0;
  }

  if (qword_27F8F2B08 && a3[2] > qword_27F8F2B08)
  {
    *(a1 + 312) = 0;
    *&v11 = *a3;
    *(&v11 + 1) = 8;
    v12 = a3[2];
    MEOWSearchLatticeImpl::MatchContexts(a1, &v11, **(a1 + 520), 0);
    *&v11 = *a3 + 5;
    *(&v11 + 1) = 8;
    v12 = a3[2];
    v8 = *a4;
    v10[0] = a4 + 1;
    v10[1] = 1;
    v10[2] = v8;
    MEOWSearchLatticeImpl::MatchContexts(a1, &v11, v10, 1);
    *&v11 = *a3 + 1;
    *(&v11 + 1) = 8;
    v12 = a3[2];
    MEOWSearchLatticeImpl::MatchContexts(a1, &v11, *(a2 + 57), 1);
    *&v11 = *a3 + 4;
    *(&v11 + 1) = 8;
    v12 = a3[2];
    MEOWSearchLatticeImpl::MatchContexts(a1, &v11, *(a2 + 58), 0);
    if (kWordThreshold)
    {
      MTBEDebugParams::GetParam(kWordThreshold, &qword_27F8F2B08, qword_27F8F2B08);
      kWordThreshold = 0;
    }

    MEOWSearchLatticeImpl::CullCandidates(a1, qword_27F8F2B08, v9, *a2);
  }
}

void MEOWSearchLatticeImpl::Demi2Word(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a3[2];
  v8 = *(a1 + 56);
  v9 = v7 + v8;
  if (*(a1 + 64) < (v7 + v8))
  {
    MEOWVectorBase::Allocate((a1 + 40), v7 + v8, 1);
  }

  *(a1 + 56) = v9;
  bzero((*(a1 + 40) + 2 * v8), 2 * a3[2]);
  if (kWordInstanceMismatch)
  {
    MTBEDebugParams::GetParam(kWordInstanceMismatch, &dword_27F8F2AC8, v10, *&dword_27F8F2AC8);
    kWordInstanceMismatch = 0;
  }

  v11 = *&dword_27F8F2AC8;
  if (kWordInnerMismatch)
  {
    MTBEDebugParams::GetParam(kWordInnerMismatch, &dword_27F8F2AD8, v10, *&dword_27F8F2AD8);
    kWordInnerMismatch = 0;
  }

  v12 = *&dword_27F8F2AD8;
  if (kWordOuterMismatch)
  {
    MTBEDebugParams::GetParam(kWordOuterMismatch, &dword_27F8F2AE8, v10, *&dword_27F8F2AE8);
    kWordOuterMismatch = 0;
  }

  v13 = *&dword_27F8F2AE8;
  if (kWordKeepWithPrev)
  {
    MTBEDebugParams::GetParam(kWordKeepWithPrev, &dword_27F8F2B38, v10, *&dword_27F8F2B38);
    kWordKeepWithPrev = 0;
  }

  v14 = *(a1 + 176);
  if (v14)
  {
    v15 = 0;
    v16 = *&dword_27F8F2B38;
    v17 = *(a1 + 160);
    v18 = *a3;
    v19 = *a4;
    v20 = *(a1 + 104);
    v21 = *(a1 + 120);
    v22 = *(a1 + 208);
    v23 = *(a1 + 196);
    v24 = *(a1 + 232);
    v25 = *(a1 + 40) + 2 * v8;
    v26 = *(a1 + 220);
    do
    {
      v27 = *(v17 + 2 * v15);
      v28 = *v20;
      if (v21)
      {
        v29 = 0;
        v30 = *(v18 + 8 * v27);
        v31 = 3.4028e38;
        v32 = 3.4028e38;
        do
        {
          v33 = v20[v29];
          v34 = *(*(a1 + 152) + 4 * *(a1 + 140) * v33);
          if (v34 >= v31)
          {
            break;
          }

          v35 = *(a1 + 520);
          v36 = *(v35 + 1);
          if (v36 >= v33)
          {
            LODWORD(v37) = v20[v29];
          }

          else
          {
            v37 = v20[v29];
            do
            {
              v37 -= v36;
              v36 = *(v35 + 19);
              v35 += 144;
            }

            while (v37 > v36);
          }

          v38 = *v35;
          v39 = v35[1];
          v40 = 0.0;
          if ((bswap32(v37) & 0xFFFF0000 | (v39 << 8) | v38) != v30)
          {
            if (v39 == BYTE1(v30))
            {
              v40 = v11 + 0.0;
            }

            else
            {
              v40 = (v11 + 0.0) + v12;
            }

            if (v38 != v30)
            {
              v40 = v13 + v40;
            }

            if ((*(v19 + v27) & 0x40) != 0)
            {
              v40 = v16 + v40;
            }
          }

          v41 = v34 + v40;
          if (v41 < v31)
          {
            v32 = v40;
            v28 = v20[v29];
            v31 = v41;
          }

          ++v29;
        }

        while (v29 < v21);
      }

      else
      {
        v32 = 3.4028e38;
        v31 = 3.4028e38;
      }

      *(v22 + 4 * v23 * v27) = v31;
      *(v24 + 4 * v26 * v27) = v32;
      *(v25 + 2 * v27) = v28;
      ++v15;
    }

    while (v15 != v14);
  }
}

unint64_t MEOWSearchLatticeImpl::Word2Null(uint64_t a1, float a2, uint64_t a3, float *a4, uint64_t *a5)
{
  if (kWordContextSubst)
  {
    MTBEDebugParams::GetParam(kWordContextSubst, &dword_27F8F2B28, a4, *&dword_27F8F2B28);
    kWordContextSubst = 0;
  }

  v9 = *&dword_27F8F2B28;
  if (kWordKeepWithNext)
  {
    MTBEDebugParams::GetParam(kWordKeepWithNext, &dword_27F8F2AF8, a4, *&dword_27F8F2AF8);
    kWordKeepWithNext = 0;
  }

  v10 = *&dword_27F8F2AF8;
  result = MEOWPhon::Match(0);
  v12 = *(a1 + 176);
  if (v12)
  {
    v13 = *result;
    v14 = *(a1 + 160);
    v15 = *a4;
    v16 = *a5;
    v17 = *(a1 + 208);
    v18 = *(a1 + 196);
    v19 = *(a1 + 232);
    v20 = *(a1 + 220);
    do
    {
      v22 = *v14++;
      v21 = v22;
      v23 = *(v15 + 8 * v22 + 4);
      v24 = 0.0;
      if (BYTE1(v23))
      {
        v24 = (a2 + (v9 * *(v13 + 51 * SBYTE1(v23)))) + 0.0;
        if (*(v16 + v21) < 0)
        {
          v24 = v10 + v24;
        }
      }

      *(v17 + 4 * v18 * v21) = v24 + *(v17 + 4 * v18 * v21);
      result = (v20 * v21);
      *(v19 + 4 * result) = v24 + *(v19 + 4 * result);
      --v12;
    }

    while (v12);
  }

  return result;
}

__n128 MEOWSearchLatticeLookahead::AddWordSlice(MEOWSearchLatticeLookahead *this, const MEOWWordSliceInfo *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 135))
  {
    __s[0] = 0;
    if (*(this + 6) == 6)
    {
      MEOWVectorBase::MEOWVectorBase(v10, 8);
      MEOWVectorBase::MEOWVectorBase(v9, 1);
      MEOWReader::GetWordDescriptor(*(this + 1), a2, v11);
      MEOWReader::GetWordData(*(this + 1), v11, v10, v9);
      v8[0] = v10[0] + 1;
      v8[1] = 8;
      v8[2] = v10[2];
      MEOWDemiSliceInfo::PhonemeSet::AddPhonemes(__s, v8);
      MEOWVectorBase::~MEOWVectorBase(v9);
      MEOWVectorBase::~MEOWVectorBase(v10);
    }

    MEOWSearchLatticeLookahead::DispatchCurrentSlice(this, __s);
  }

  *(this + 135) = 6;
  result = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  *(this + 699) = *(a2 + 43);
  *(this + 42) = v5;
  *(this + 43) = v6;
  *(this + 41) = result;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_257B6FA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

void MEOWSearchLatticeLookahead::DispatchCurrentSlice(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 540);
  if (v3 <= 3)
  {
    switch(v3)
    {
      case 1:
        MEOWSearchLatticeImpl::AddDiphoneSlice(a1, (a1 + 544), a2);
      case 2:
        MEOWSearchLatticeImpl::AddBreathDiphoneSlice(a1, (a1 + 544));
      case 3:
        MEOWSearchLatticeImpl::AddDemiSlice(a1, a1 + 584, a2);
    }

LABEL_12:
    fwrite("What am I doing here?\n", 0x16uLL, 1uLL, *MEMORY[0x277D85DF8]);
    MTBEAbort(*(a1 + 16));
    goto LABEL_15;
  }

  if (v3 == 4)
  {
    MEOWSearchLatticeImpl::AddBreathDemiSlice(a1, a1 + 584);
  }

  if (v3 != 5)
  {
    if (v3 == 6)
    {
      MEOWSearchLatticeImpl::AddWordSlice(a1, a1 + 656, a2);
    }

    goto LABEL_12;
  }

  MEOWSearchLatticeImpl::AddAnchorSlice(a1, (a1 + 648));
LABEL_15:
  if (*(a1 + 736))
  {
    v4 = *(a1 + 720);
    do
    {
      v5 = *v4++;
      MEOWSearchLatticeImpl::Veto(a1, v5);
    }

    while (v4 != (*(a1 + 720) + 8 * *(a1 + 736)));
  }

  MEOWVectorBase::clear((a1 + 720));
  v6 = *(a1 + 752);
  if (v6 != 0xFFFFFFFF)
  {
    MEOWSearchLatticeImpl::Force(a1, v6);
    *(a1 + 752) = 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 760);
  if (v7 != 0xFFFFFFFF)
  {
    MEOWSearchLatticeImpl::Override(a1, v7);
    *(a1 + 760) = 0xFFFFFFFFLL;
  }
}

__n128 MEOWSearchLatticeLookahead::AddDiphoneSlice(__n128 *this, __n128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[33].n128_u32[3])
  {
    v4 = a2->n128_u8[1];
    v8[0] = 1;
    v8[1] = v4;
    MEOWSearchLatticeLookahead::DispatchCurrentSlice(this, v8);
  }

  this[33].n128_u32[3] = 1;
  result = *a2;
  v6 = a2[1];
  this[36].n128_u16[0] = a2[2].n128_u16[0];
  this[34] = result;
  this[35] = v6;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 MEOWSearchLatticeLookahead::AddBreathDiphoneSlice(__n128 *this, __n128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (this[33].n128_u32[3])
  {
    v4 = a2->n128_u8[1];
    v8[0] = 1;
    v8[1] = v4;
    MEOWSearchLatticeLookahead::DispatchCurrentSlice(this, v8);
  }

  this[33].n128_u32[3] = 2;
  result = *a2;
  v6 = a2[1];
  this[36].n128_u16[0] = a2[2].n128_u16[0];
  this[34] = result;
  this[35] = v6;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 MEOWSearchLatticeLookahead::AddDemiSlice(MEOWSearchLatticeLookahead *this, const MEOWDemiSliceInfo *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(this + 135))
  {
    __s[0] = 0;
    v4 = *(a2 + 5);
    v9[0] = *(a2 + 6) + 1;
    v9[1] = 144;
    v9[2] = v4;
    MEOWDemiSliceInfo::PhonemeSet::AddPhonemes(__s, v9);
    MEOWSearchLatticeLookahead::DispatchCurrentSlice(this, __s);
  }

  *(this + 135) = 3;
  result = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  *(this + 625) = *(a2 + 41);
  *(this + 600) = v6;
  *(this + 616) = v7;
  *(this + 584) = result;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 MEOWSearchLatticeLookahead::AddBreathDemiSlice(MEOWSearchLatticeLookahead *this, const MEOWDemiSliceInfo *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(this + 135))
  {
    v8[0] = 0;
    MEOWSearchLatticeLookahead::DispatchCurrentSlice(this, v8);
  }

  *(this + 135) = 4;
  result = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  *(this + 625) = *(a2 + 41);
  *(this + 600) = v5;
  *(this + 616) = v6;
  *(this + 584) = result;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void MEOWSearchLatticeLookahead::AddAnchorSlice(MEOWSearchLatticeLookahead *this, const MEOWAnchorSliceInfo *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(this + 135))
  {
    v4 = *(a2 + 1);
    v6[0] = 1;
    v6[1] = v4;
    MEOWSearchLatticeLookahead::DispatchCurrentSlice(this, v6);
  }

  *(this + 135) = 5;
  *(this + 162) = *a2;
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t MEOWSearchLatticeLookahead::AddSilenceSlice(MEOWSearchLatticeLookahead *this)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(this + 135))
  {
    v4[0] = 1;
    MEOWSearchLatticeLookahead::DispatchCurrentSlice(this, v4);
  }

  *(this + 135) = 0;
  LOBYTE(v4[0]) = 0;
  result = MEOWSearchLatticeImpl::AddSilenceSlice(this);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *MEOWSearchLatticeLookahead::Veto(MEOWSearchLatticeLookahead *this, uint64_t a2)
{
  result = MEOWVectorBase::Append(this + 90);
  *(*(this + 90) + 8 * *(this + 92) - 8) = a2;
  return result;
}

uint64_t MEOWSearchLatticeLookahead::BestPath(MEOWSearchLatticeLookahead *this)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(this + 135))
  {
    v4[0] = 0;
    MEOWSearchLatticeLookahead::DispatchCurrentSlice(this, v4);
    *(this + 135) = 0;
  }

  result = MEOWSearchLatticeImpl::BestPath(this);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MEOWSearchLatticeLookahead::size(MEOWSearchLatticeLookahead *this)
{
  result = MEOWSearchLatticeImpl::size(this);
  if (*(this + 135))
  {
    ++result;
  }

  return result;
}

void MEOWSearchLatticeLookahead::clear(MEOWSearchLatticeLookahead *this)
{
  *(this + 135) = 0;
  MEOWVectorBase::clear(this + 90);
  *(this + 94) = 0xFFFFFFFFLL;

  MEOWSearchLatticeImpl::clear(this);
}

void MEOWSearchLatticeLookahead::~MEOWSearchLatticeLookahead(void **this)
{
  *this = &unk_2868F8528;
  MEOWVectorBase::~MEOWVectorBase(this + 90);

  MEOWSearchLatticeImpl::~MEOWSearchLatticeImpl(this);
}

{
  *this = &unk_2868F8528;
  MEOWVectorBase::~MEOWVectorBase(this + 90);
  MEOWSearchLatticeImpl::~MEOWSearchLatticeImpl(this);

  JUMPOUT(0x259C6DA90);
}

const __CFDictionary *GetCoeffValue(const __CFDictionary *a1, const __CFString *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID())
    {
      return v3;
    }

    else if (v4 == CFDictionaryGetTypeID())
    {
      result = CFDictionaryGetValue(v3, @"Value");
      if (!result)
      {

        return CFDictionaryGetValue(v3, @"Default");
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SetFloatCoeff(const __CFDictionary *a1, const __CFString *a2, float *a3)
{
  CoeffValue = GetCoeffValue(a1, a2);
  valuePtr = 0.0;
  if (CoeffValue && (result = CFNumberGetValue(CoeffValue, kCFNumberDoubleType, &valuePtr), result))
  {
    v7 = valuePtr;
    *a3 = v7;
  }

  else
  {
    v8 = *MEMORY[0x277D85DF8];
    CStringPtr = CFStringGetCStringPtr(a2, 0);
    return fprintf(v8, "Cannot read real number %s from plist.\n", CStringPtr);
  }

  return result;
}

uint64_t SetIntCoeff(const __CFDictionary *a1, const __CFString *a2, int *a3)
{
  CoeffValue = GetCoeffValue(a1, a2);
  valuePtr = 0;
  if (CoeffValue && (result = CFNumberGetValue(CoeffValue, kCFNumberIntType, &valuePtr), result))
  {
    *a3 = valuePtr;
  }

  else
  {
    v7 = *MEMORY[0x277D85DF8];
    CStringPtr = CFStringGetCStringPtr(a2, 0);
    return fprintf(v7, "Cannot read integer %s from plist.\n", CStringPtr);
  }

  return result;
}

void MTFELogVisitor::MTFELogVisitor(MTFELogVisitor *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2868F85E8;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2868F85E8;
}

void MTFELogVisitor::~MTFELogVisitor(MTFELogVisitor *this)
{
  *this = &unk_2868F85E8;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  MTFELogVisitor::~MTFELogVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFELogVisitor::VisitSentence(MTFELogVisitor *this, MTFESentence *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2, a2);
  }

  operator new();
}

void SpeechElementLog::SpeechElementLog(SpeechElementLog *this)
{
  *(this + 1) = this + 8;
  *(this + 2) = this + 8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_2868F8670;
  *(this + 5) = &unk_2868F86A0;
  *(this + 6) = &unk_2868F86C0;
  *(this + 7) = &unk_2868F86E8;
}

void SentenceLog::SentenceLog(SentenceLog *this)
{
  *(this + 1) = this + 8;
  *(this + 2) = this + 8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_2868F8710;
  *(this + 5) = &unk_2868F8748;
  *(this + 6) = &unk_2868F8768;
  *(this + 7) = &unk_2868F8790;
}

{
  *(this + 1) = this + 8;
  *(this + 2) = this + 8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_2868F8710;
  *(this + 5) = &unk_2868F8748;
  *(this + 6) = &unk_2868F8768;
  *(this + 7) = &unk_2868F8790;
}