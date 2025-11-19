float MTMBSegment::RawPower(MTMBSegment *this)
{
  v2 = *(this + 4);
  if (!v2 || (*(this + 8) & 1) == 0)
  {
    return 0.0;
  }

  v4 = cblas_sdot(v2, *this, 1, *this, 1);
  LOWORD(v5) = *(this + 4);
  return sqrtf(v4 / v5);
}

float MTMBSegment::LinPower(const float **this)
{
  v2 = *(this + 4);
  result = 0.0;
  if (v2)
  {
    if (this[2])
    {
      v4 = cblas_sdot(v2, *this, 1, *this, 1);
      LOWORD(v5) = *(this + 4);
      return v4 / v5;
    }
  }

  return result;
}

MTFESpeechElement *MTMBSegment::Check(MTFESpeechElement *this)
{
  if (SLOWORD(this->var3) < 0 && (*(this->var0 - 1) != -1091585519 || *(this->var0 + *&this->var2) != -1091585519))
  {

    return MTBEAbort(0);
  }

  return this;
}

void MTMBDemiProperties::MTMBDemiProperties(MTMBDemiProperties *this)
{
  *this = 1;
  *(this + 6) = 0;
  *(this + 17) = 0;
  *(this + 9) = 1065353216;
  *(this + 80) = 0;
}

{
  *this = 1;
  *(this + 6) = 0;
  *(this + 17) = 0;
  *(this + 9) = 1065353216;
  *(this + 80) = 0;
}

const char *MTMBDemiProperties::Phon(MTMBDemiProperties *this, char *a2)
{
  v2 = *(this + 1);
  if (!v2 || !*v2)
  {
    return "";
  }

  if (*(this + 18) == 255)
  {
    return *(this + 1);
  }

  v3 = a2;
  if (*(this + 18))
  {
    sprintf(a2, ">%s");
  }

  else
  {
    sprintf(a2, "%s<");
  }

  return v3;
}

uint64_t MTMBDemiProperties::UseWordPitch(MTMBDemiProperties *this)
{
  if (*(this + 18) < 0)
  {
    if (*(this + 8))
    {
      if (kMTMBEnforceTunes)
      {
        MTBEDebugParams::GetParam(kMTMBEnforceTunes, &byte_27F8F2608, byte_27F8F2608);
        kMTMBEnforceTunes = 0;
      }

      v1 = byte_27F8F2608 ^ 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t MTMBDemiProperties::UseGluePitch(MTMBDemiProperties *this)
{
  if ((*(this + 8) & 0x10) != 0)
  {
    if (kMTMBForceGluePitch)
    {
      MTBEDebugParams::GetParam(kMTMBForceGluePitch, &byte_27F8F2618, byte_27F8F2618);
      kMTMBForceGluePitch = 0;
    }

    v1 = byte_27F8F2618;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void MTMBDemi::MTMBDemi(MTMBDemi *this)
{
  MEOWVectorBase::MEOWVectorBase(this, 32);
  MEOWVectorBase::MEOWVectorBase((v2 + 32), 4);
  *(this + 25) = 0;
  *(this + 13) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
}

void MTMBDemi::~MTMBDemi(MTMBDemi *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    if ((*v2)-- == 1)
    {
      MEMORY[0x259C6DA90]();
    }
  }

  MEOWVectorBase::~MEOWVectorBase(this + 4);

  MEOWVectorBase::~MEOWVectorBase(this);
}

void MTMBDemi::Load(unint64_t a1, MEOWReader *this, uint64_t a3, uint64_t a4, unsigned __int16 *a5, int a6, float *a7)
{
  *(a1 + 104) = a3;
  GlobalParams = MEOWReader::GetGlobalParams(this, 1);
  Segments = MTMBDemi::LoadSegments(a1, *(a4 + 24), (*(a4 + 32) + 2 * *(a4 + 16)), bswap32(GlobalParams[2]) >> 16);
  if (Segments)
  {
    v15 = 200;
  }

  else
  {
    v15 = 0;
  }

  v27 = 0;
  v28 = 0;
  MEOWVectorBase::MEOWVectorBase(v24, 2, Segments + v15);
  Samples = MEOWReader::ReadSamples(this, *a4, *(a4 + 40), Segments, v24[0], (a1 + 64), (a1 + 72));
  v17 = Samples + MEOWReader::ReadSamples(this, *a4, *(a4 + 40) + Samples, v15, &v24[0][Samples], &v28, &v27);
  if (*(a1 + 56) < v17)
  {
    MEOWVectorBase::Allocate((a1 + 32), v17, 1);
  }

  *(a1 + 48) = v17;
  if (v26 >= v17)
  {
    v25 = v17;
    *(a1 + 100) = Samples;
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEOWVectorBase::Allocate(v24, v17, 1);
    v25 = v17;
    *(a1 + 100) = Samples;
  }

  v18 = v24[0];
  v19 = *(a1 + 32);
  v20 = 2 * v17;
  do
  {
    v21 = *v18++;
    *v19++ = v21;
    v20 -= 2;
  }

  while (v20);
LABEL_11:
  MTMBDemi::ProtectSegments(a1, a5, 0);
  MTMBDemi::SetBoundaryPitch(a1, a6, a7, v22, v23);
  if ((MTBEDebugFlags::sMTXDebug & 0x10000) != 0)
  {
    MTMBDemi::DumpSBXF(a1);
  }

  MEOWVectorBase::~MEOWVectorBase(v24);
}

uint64_t MTMBDemi::LoadSegments(void **this, uint64_t a2, const unsigned __int16 *a3, unsigned int a4)
{
  MEOWVectorBase::clear(this);
  if (a2)
  {
    v8 = 0;
    v9 = 4 * a4;
    v20 = a4 >> 1;
    v21 = a4;
    do
    {
      v10 = *a3 & 0x7FFF;
      if ((*a3 & 0x8000) != 0 || v10 > v9)
      {
        if ((v10 != 0) <= ((v10 + v20) / v21))
        {
          v13 = (v10 + v20) / v21;
        }

        else
        {
          v13 = v10 != 0;
        }

        if (v13)
        {
          v14 = *a3 & 0x7FFF;
          do
          {
            v15 = this[13];
            ++*v15;
            MEOWVectorBase::Append(this);
            v16 = *this + 32 * this[2];
            *(v16 - 32) = 0;
            *(v16 - 24) = (v14 / v13);
            *(v16 - 20) = v14 / v13;
            *(v16 - 18) = 0;
            *(v16 - 8) = v15;
            v14 -= (v14 / v13--);
          }

          while (v13);
        }
      }

      else
      {
        v11 = this[13];
        ++*v11;
        MEOWVectorBase::Append(this);
        v12 = *this + 32 * this[2];
        *(v12 - 32) = 0;
        *(v12 - 24) = v10;
        *(v12 - 22) = 0;
        *(v12 - 20) = v10;
        *(v12 - 18) = 0x10000;
        *(v12 - 8) = v11;
      }

      v8 += v10;
      ++a3;
      --a2;
    }

    while (a2);
  }

  else
  {
    v17 = this[13];
    ++*v17;
    MEOWVectorBase::Append(this);
    v8 = 0;
    v18 = *this + 32 * this[2];
    *(v18 - 32) = 0;
    *(v18 - 24) = 0;
    *(v18 - 16) = 0;
    *(v18 - 8) = v17;
  }

  return v8;
}

unint64_t MTMBDemi::ProtectSegments(unint64_t result, unsigned __int16 *a2, int a3)
{
  v3 = *a2;
  if (v3 != 0xFFFF)
  {
    v6 = 0;
    v7 = v3 >> 12;
    v8 = (v3 >> 8) & 0xF;
    v5 = v3 & 0xF;
    v9 = v3 >> 4;
    goto LABEL_11;
  }

  v4 = *(result + 104);
  if (*(v4 + 18))
  {
    v5 = 0;
    v6 = 0;
LABEL_10:
    v9 = 0;
    v8 = 0;
    v7 = 0;
    goto LABEL_11;
  }

  v10 = *(v4 + 8);
  v6 = 882;
  if (*v10 != 107)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v5 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (v10[1])
  {
    v6 = 882;
  }

  else
  {
    v6 = 1102;
  }

LABEL_11:
  v11 = *(result + 16);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 32);
    v14 = *result + 32 * v11;
    v15 = v13 + 4 * *(result + 48);
    v16 = (*result + 16);
    result = 32 * v11;
    while (1)
    {
      *(v16 - 2) = v13;
      v17 = v16 - 8;
      v18 = *(v16 - 4);
      v13 += 4 * v18;
      *(v16 - 1) = (v15 - v13) >> 2;
      if (v6 < 1)
      {
        break;
      }

      v6 -= v18;
LABEL_53:
      v16 += 16;
      result -= 32;
      ++v12;
      if ((v17 + 16) >= v14)
      {
        return result;
      }
    }

    v19 = (result >> 5) - 1;
    if (v7 > v12 || v19 < v8)
    {
      if (!v12 || (result >> 5) == 1)
      {
LABEL_22:
        if (v9 > v12 || v19 < v5)
        {
          if (v12 && (result >> 5) != 1)
          {
            v21 = *v16 | 0x20;
            *v16 |= 0x20u;
            goto LABEL_30;
          }
        }

        else
        {
          *v16 |= 0x60u;
        }

        if (!v12)
        {
LABEL_51:
          if (a3)
          {
            *v16 |= 0x800u;
          }

          goto LABEL_53;
        }

        v21 = *v16;
LABEL_30:
        if ((*(v16 - 16) ^ v21))
        {
          v22 = (v21 & 1) == 0;
          if (v21)
          {
            v23 = 0;
          }

          else
          {
            v23 = -1;
          }

          v24 = 16 * v23;
          v25 = v16[v24];
          if (v22)
          {
            v26 = 0;
          }

          else
          {
            v26 = -1;
          }

          v27 = v16[v24] & 0x18;
          if ((v25 & 0x10) != 0)
          {
            v27 = 16;
          }

          v28 = v27 | v25 & 0xFF87;
          if ((v25 & 0x40) != 0)
          {
            v29 = 64;
          }

          else
          {
            v29 = v16[v24] & 0x60;
          }

          v16[v24] = v28 | v29;
          v30 = 16 * v26;
          v31 = v16[16 * v26];
          v32 = v31 & 0x18;
          if ((v31 & 0x18) != 0)
          {
            v32 = 8;
          }

          v33 = v32 | v31 & 0xFF87;
          if ((v31 & 0x60) != 0)
          {
            v34 = 32;
          }

          else
          {
            v34 = 0;
          }

          v16[v30] = v33 | v34;
        }

        if ((result >> 5) != 1)
        {
          v35 = v16[12] + *(v16 - 20);
          if (((v35 >> 1) - v18) > (v35 >> 3))
          {
            *v16 &= 0xFF87u;
          }
        }

        goto LABEL_51;
      }

      v20 = 8;
    }

    else
    {
      v20 = 24;
    }

    *v16 |= v20;
    goto LABEL_22;
  }

  return result;
}

size_t MTMBDemi::DumpSBXF(size_t this)
{
  v1 = this;
  v17 = *MEMORY[0x277D85DE8];
  if (*(this + 16) || *(*(this + 104) + 32))
  {
    v2 = MEMORY[0x277D85E08];
    if ((MTMBDemi::DumpSBXF(void)::sHasHeader & 1) == 0)
    {
      fwrite("R 1.0\n", 6uLL, 1uLL, *MEMORY[0x277D85E08]);
      MTMBDemi::DumpSBXF(void)::sHasHeader = 1;
    }

    v3 = *v2;
    v4 = MTMBDemiProperties::Phon(*(v1 + 104), v16);
    fprintf(v3, "W %s %4.2f 0x%16llx 0x%16llx\n", v4, vcvts_n_f32_s64(*(*(v1 + 104) + 24), 0x10uLL), *(v1 + 64), *(v1 + 72));
    v5 = *(*(v1 + 104) + 32);
    if (v5)
    {
      fprintf(*v2, "D %ld\n", 5 * v5);
      MTFEPitchTargets::MTFEPitchTargets(v15, 1, *(*(v1 + 104) + 40), *(*(v1 + 104) + 32));
      fputc(80, *v2);
      if (SLODWORD(v15[0]) >= 1)
      {
        v6 = 1;
        do
        {
          fprintf(*v2, " %5.1f:%d", ((v15[v6] & 0xFFFFFFLL) / 100.0), v15[v6] >> 24);
        }

        while (v6++ < SLODWORD(v15[0]));
      }

      fputc(10, *v2);
      fputc(70, *v2);
      v8 = *(v1 + 104);
      if (*(v8 + 32))
      {
        v9 = 0;
        do
        {
          fprintf(*v2, " %5.1f", *(*(v8 + 40) + 4 * v9++));
          v8 = *(v1 + 104);
        }

        while (v9 < *(v8 + 32));
      }

      fputc(10, *v2);
    }

    if (*(v1 + 16))
    {
      v10 = 0;
      do
      {
        v11 = *v1 + 32 * v10;
        if (*(v11 + 16))
        {
          v12 = 86;
        }

        else
        {
          v12 = 85;
        }

        fputc(v12, *v2);
        if (*(v11 + 8))
        {
          v13 = 0;
          do
          {
            fprintf(*v2, " %.0f", *(*v11 + 4 * v13++));
          }

          while (v13 < *(v11 + 8));
        }

        fputc(10, *v2);
        ++v10;
      }

      while (v10 < *(v1 + 16));
    }

    this = fwrite("E\n", 2uLL, 1uLL, *v2);
  }

  v14 = *MEMORY[0x277D85DE8];
  return this;
}

void MTMBDemi::Load(unint64_t a1, MEOWReader *this, uint64_t a3)
{
  v6 = bswap32(MEOWReader::GetGlobalParams(this, 1)[2]) >> 16;
  *(a1 + 104) = 0;
  Segments = MTMBDemi::LoadSegments(a1, *(a3 + 24), (*(a3 + 32) + 2 * *(a3 + 16)), v6);
  v8 = Segments;
  v21 = 0;
  v20 = 0;
  MEOWVectorBase::MEOWVectorBase(v18, 2, Segments + 200);
  Samples = MEOWReader::ReadSamples(this, *a3, *(a3 + 40), v8, v18[0], (a1 + 64), (a1 + 72));
  v10 = Samples + MEOWReader::ReadSamples(this, *a3, *(a3 + 40) + Samples, 0xC8u, &v18[0][Samples], &v21, &v20);
  if (*(a1 + 56) < v10)
  {
    MEOWVectorBase::Allocate((a1 + 32), v10, 1);
  }

  *(a1 + 48) = v10;
  *(a1 + 100) = Samples;
  if (v19)
  {
    v11 = v18[0];
    v12 = *(a1 + 32);
    v13 = 2 * v19;
    do
    {
      v14 = *v11++;
      *v12++ = v14;
      v13 -= 2;
    }

    while (v13);
  }

  v17 = 0;
  MTMBDemi::ProtectSegments(a1, &v17, 0);
  MTMBDemi::SetBoundaryPitch(a1, 0, 0, v15, v16);
  if ((MTBEDebugFlags::sMTXDebug & 0x10000) != 0)
  {
    MTMBDemi::DumpSBXF(a1);
  }

  MEOWVectorBase::~MEOWVectorBase(v18);
}

void sub_257B4EC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

uint64_t MTMBDemi::Load(MTMBDemi *this, uint64_t a2, void *a3, const void *a4, unsigned int a5, unsigned int a6)
{
  *(this + 13) = a2;
  v10 = a3[3];
  if (a4 || v10)
  {
    Segments = MTMBDemi::LoadSegments(this, v10, (a3[4] + 2 * a3[2]), 0xC8u);
    v12 = (this + 32);
    if (*(this + 7) < Segments)
    {
      MEOWVectorBase::Allocate((this + 32), Segments, 1);
    }

    *(this + 6) = Segments;
    *(this + 25) = Segments;
    if (a4)
    {
      memcpy(*v12, a4, 4 * Segments);
      goto LABEL_9;
    }
  }

  else
  {
    MEOWVectorBase::clear(this);
    Segments = 0;
    v12 = (this + 32);
    *(this + 6) = 0;
    *(this + 25) = 0;
  }

  bzero(*v12, 4 * Segments);
LABEL_9:
  *(this + 8) = a5;
  *(this + 9) = a6;
  v16 = 0;
  MTMBDemi::ProtectSegments(this, &v16, a4 == 0);

  return MTMBDemi::SetBoundaryPitch(this, 0, 0, v13, v14);
}

void MTMBDemi::Load(unint64_t a1, PROWReader *a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5)
{
  *(a1 + 104) = a3;
  Segments = MTMBDemi::LoadSegments(a1, *(a4 + 8), *(a4 + 16), bswap32(*(*a2 + 2)) >> 16);
  MEOWVectorBase::MEOWVectorBase(v21, 2, Segments + 512);
  Samples = PROWReader::ReadSamples(a2, *(a4 + 24), Segments, v21[0]);
  if (*(a1 + 56) < Samples)
  {
    MEOWVectorBase::Allocate((a1 + 32), Samples, 1);
  }

  *(a1 + 48) = Samples;
  *(a1 + 100) = Samples;
  if (Samples)
  {
    v11 = v21[0];
    v12 = *(a1 + 32);
    v13 = 2 * Samples;
    do
    {
      v14 = *v11++;
      *v12++ = v14;
      v13 -= 2;
    }

    while (v13);
  }

  MTMBDemi::ProtectSegments(a1, a5, 0);
  MTMBDemi::SetBoundaryPitch(a1, 0, 0, v15, v16);
  v17 = 4;
  if (!*a4)
  {
    v17 = 0;
  }

  v18 = 3;
  if (!*a4)
  {
    v18 = 0;
  }

  if (*(*(a1 + 104) + 18))
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (*(*(a1 + 104) + 18))
  {
    v17 = 2;
  }

  *(a1 + 64) = v19;
  *(a1 + 72) = v17;
  v20 = *(a1 + 16);
  if (v20)
  {
    *(*a1 + 32 * v20 - 16) &= 0xFF87u;
  }

  if ((MTBEDebugFlags::sMTXDebug & 0x10000) != 0)
  {
    MTMBDemi::DumpSBXF(a1);
  }

  *(a1 + 80) = -1;
  MEOWVectorBase::~MEOWVectorBase(v21);
}

void MTMBDemi::Unload(MTMBDemi *this)
{
  if (*(this + 2))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      MTMBSegment::Free((*this + v2));
      ++v3;
      v2 += 32;
    }

    while (v3 < *(this + 2));
  }

  MEOWVectorBase::clear(this + 4);
}

uint64_t *MTMBDemi::swap(MTMBDemi *this, MTMBDemi *a2)
{
  MEOWVectorBase::Swap(this, a2);
  result = MEOWVectorBase::Swap(this + 4, (a2 + 32));
  v5 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v7;
  LOWORD(v7) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  LOWORD(v7) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v7;
  LOWORD(v7) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v7;
  LOWORD(v7) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v7;
  LOWORD(v7) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v7;
  LOWORD(v7) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v7;
  LODWORD(v7) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v7;
  LODWORD(v7) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v8 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v8;
  return result;
}

void MTMBDemi::clear(void **this)
{
  MEOWVectorBase::clear(this);
  MEOWVectorBase::clear(this + 4);
  *(this + 25) = 0;
  this[8] = 0;
  this[9] = 0;
}

uint64_t MTMBDemi::Dump(uint64_t this, __sFILE *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  if (*(this + 100))
  {
    v3 = this;
    v4 = *(this + 104);
    if (v4 && **(v4 + 1))
    {
      v5 = *(v3 + 16);
      if (v5)
      {
        v6 = 0;
        v7 = (*v3 + 12);
        do
        {
          v8 = *v7;
          v7 += 16;
          v6 += v8;
          --v5;
        }

        while (v5);
      }

      else
      {
        v6 = 0;
      }

      v9 = MTMBDemiProperties::Phon(v4, v42);
      v10 = *(v3 + 104);
      v11 = 110250 * *(v10 + 32) / 0x3E8uLL;
      v12 = (*(v10 + 16) & 1) == 0;
      v13 = "";
      if (!v12)
      {
        v13 = "!";
      }

      fprintf(a2, "Unit %s  Samples %lu->%lu[%lu]  %sFrames", v9, *(v3 + 100), v6, v11, v13);
      v14 = *(v3 + 104);
      if (*(v14 + 32))
      {
        v15 = 0;
        do
        {
          fprintf(a2, " %.0f", *(*(v14 + 40) + 4 * v15++));
          v14 = *(v3 + 104);
        }

        while (v15 < *(v14 + 32));
      }

      fputc(10, a2);
      if (*(*(v3 + 104) + 48))
      {
        fwrite("OrigFrames", 0xAuLL, 1uLL, a2);
        v16 = *(v3 + 104);
        if (*(v16 + 32))
        {
          v17 = 0;
          do
          {
            fprintf(a2, " %.0f", *(*(v16 + 48) + 4 * v17++));
            v16 = *(v3 + 104);
          }

          while (v17 < *(v16 + 32));
        }

        fputc(10, a2);
      }
    }

    fprintf(a2, "Start Parcel %016llx  End Parcel %016llx", *(v3 + 64), *(v3 + 72));
    v18 = *(v3 + 84);
    v19 = *(v3 + 88);
    v20 = *(v3 + 92);
    Factor = MTMBDemi::FirstFactor(v3, v21, v22, v23);
    v25 = Factor;
    v26 = *(v3 + 86);
    v27 = *(v3 + 90);
    v28 = *(v3 + 96);
    v29 = MTMBDemi::LastFactor(v3, Factor);
    fprintf(a2, "  First PP %u->%u\\%u [%4.2f] Last PP %u->%u\\%u [%4.2f]", v18, v19, v20, v25, v26, v27, v28, v29);
    if (kMTMBPowerThreshold)
    {
      MTBEDebugParams::GetParam(kMTMBPowerThreshold, &dword_27F8F2628, v30, *&dword_27F8F2628);
      kMTMBPowerThreshold = 0;
    }

    if (*&dword_27F8F2628 != 0.0)
    {
      fprintf(a2, " Threshold %5.3f", *&dword_27F8F2628);
    }

    fprintf(a2, " Rate %d/%d", *(*(v3 + 104) + 64), *(*(v3 + 104) + 66));
    fprintf(a2, " Power* %f", *(*(v3 + 104) + 72));
    v31 = *(v3 + 104);
    v32 = *(v31 + 76);
    if (v32 != 0.0)
    {
      fprintf(a2, "-%f", (*(v31 + 72) + (*(v3 + 100) * v32)));
    }

    this = fputc(10, a2);
    if (*(v3 + 16) >= 1)
    {
      v33 = *v3;
      while (1)
      {
        fprintf(a2, "%p %5d %3d->%-3d [", *(v33 + 24), (*v33 - *(v3 + 32)) >> 2, *(v33 + 8), *(v33 + 12));
        v34 = *(v33 + 16);
        if (v34)
        {
          break;
        }

        v35 = "";
        if ((v34 & 2) != 0)
        {
          goto LABEL_31;
        }

LABEL_32:
        if ((v34 & 0x18) != 0)
        {
          fprintf(a2, "%sSkip%s", v35, *(&sPrio + (v34 & 0x18)));
          v34 = *(v33 + 16);
          v35 = ", ";
        }

        if ((v34 & 4) != 0)
        {
          fprintf(a2, "%sIs Copy");
        }

        else
        {
          v36 = v34 & 0x60;
          if (!v36)
          {
            goto LABEL_39;
          }

          v41 = *(&sPrio + (v36 >> 5));
          fprintf(a2, "%sCopy%s");
        }

        v35 = ", ";
LABEL_39:
        v37 = *(v33 + 16);
        if ((v37 & 0x800) != 0)
        {
          fprintf(a2, "%sSilence", v35);
          v37 = *(v33 + 16);
          v35 = ", ";
          if ((v37 & 0x1000) == 0)
          {
LABEL_41:
            if ((v37 & 0x2000) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_42;
          }
        }

        else if ((v37 & 0x1000) == 0)
        {
          goto LABEL_41;
        }

        fprintf(a2, "%sBlendBeg", v35);
        v37 = *(v33 + 16);
        v35 = ", ";
        if ((v37 & 0x2000) != 0)
        {
LABEL_55:
          fprintf(a2, "%sBlendEnd", v35);
          v37 = *(v33 + 16);
          v35 = ", ";
          if ((v37 & 0x4000) == 0)
          {
            goto LABEL_44;
          }

LABEL_43:
          fprintf(a2, "%sBlend", v35);
          v37 = *(v33 + 16);
          v35 = ", ";
          goto LABEL_44;
        }

LABEL_42:
        if ((v37 & 0x4000) != 0)
        {
          goto LABEL_43;
        }

LABEL_44:
        if ((v37 & 0x380) != 0)
        {
          if ((v37 >> 7))
          {
            fprintf(a2, "%sEndOfPhon", v35);
            v35 = ", ";
          }

          v38 = (v37 >> 7) & 7;
          if ((v38 & 2) != 0)
          {
            fprintf(a2, "%sEndOfWord", v35);
            v35 = ", ";
          }

          if (v38 >= 4)
          {
            fprintf(a2, "%sEndOfSentence", v35);
          }
        }

        v39 = (MTMBSegment::RawPower(v33) * 0.00012207);
        MTMBSegment::Abstract(v33);
        this = fprintf(a2, "] %5.3f %s\n", v39, &MTMBSegment::Abstract(float const*,int,BOOL)::sBuf);
        v33 += 32;
        if (v33 >= *v3 + 32 * *(v3 + 16))
        {
          goto LABEL_57;
        }
      }

      fprintf(a2, "%sVoiced", "");
      v34 = *(v33 + 16);
      v35 = ", ";
      if ((v34 & 2) == 0)
      {
        goto LABEL_32;
      }

LABEL_31:
      fprintf(a2, "%sFollows Gap", v35);
      v34 = *(v33 + 16);
      v35 = ", ";
      goto LABEL_32;
    }
  }

LABEL_57:
  v40 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t MTMBDemi::SetNaturalSize(uint64_t this, uint64_t a2)
{
  v2 = *(this + 104);
  if (v2)
  {
    *(v2 + 56) = a2;
  }

  return this;
}

float MTMBDemi::ScaleSpeechRate(MTMBDemi *this, float result, float a3)
{
  v3 = *(this + 13);
  if (v3)
  {
    LOWORD(a3) = *(v3 + 66);
    result = LODWORD(a3) * result;
    *(v3 + 66) = result;
  }

  return result;
}

void MTMBConsumerComponent::~MTMBConsumerComponent(MTMBConsumerComponent *this)
{
  *this = &unk_2868F7388;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }
}

{
  *this = &unk_2868F7388;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }
}

{
  *this = &unk_2868F7388;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  JUMPOUT(0x259C6DA90);
}

void MTCBSegmentProducer::MTCBSegmentProducer(MTCBSegmentProducer *this, MTFEFrameFiller *a2, MTBEParam *a3)
{
  *this = &unk_2868F73A8;
  *(this + 1) = a2;
  *(this + 2) = a3;
  v5 = MTMBAssemblerCreator::Create(0);
  *(this + 2) = 0u;
  *(this + 3) = v5;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  MTMBDemi::MTMBDemi((this + 128));
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 64) = -1;
  *(a2 + 11) = MTBEDelayedNotifier::MTBEDelayedNotifier((this + 280), *(a2 + 11));
}

void sub_257B4F834(_Unwind_Exception *a1)
{
  MTMBDemi::~MTMBDemi((v2 + 12));
  std::deque<unsigned short>::~deque[abi:ne200100]((v1 + 80));
  std::deque<MTMBDemi>::~deque[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void MTCBSegmentProducer::~MTCBSegmentProducer(MTCBSegmentProducer *this)
{
  *this = &unk_2868F73A8;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 30);
  while (1)
  {
    while (v3 != *(this + 31))
    {
      v4 = (v3 + 32);
      MTMBSegment::Free(v3);
      v3 = v4;
    }

    v5 = *(this + 64) + 1;
    *(this + 64) = v5;
    if (*(this + 9) <= v5)
    {
      break;
    }

    v6 = *(*(this + 5) + 8 * ((*(this + 8) + v5) / 0x24)) + 112 * ((*(this + 8) + v5) % 0x24);
    v3 = *v6;
    *(this + 31) = *v6 + 32 * *(v6 + 16);
  }

  MTBEDelayedNotifier::~MTBEDelayedNotifier((this + 280));
  MTMBDemi::~MTMBDemi((this + 128));
  std::deque<unsigned short>::~deque[abi:ne200100](this + 10);
  std::deque<MTMBDemi>::~deque[abi:ne200100](this + 4);
}

uint64_t MTCBSegmentProducer::NextSegment(int64x2_t *this, MTMBSegment *a2)
{
  if (!this[4].i64[1])
  {
    std::deque<MTMBDemi>::resize(&this[2], 4uLL);
    v32 = 2;
    std::deque<unsigned short>::push_back(this[5].i64, &v32);
    this[16].i32[0] = 3;
  }

  v4 = this[15].i64[0];
  if (v4 != this[15].i64[1])
  {
LABEL_16:
    this[15].i64[0] = (v4 + 2);
    v14 = v4[1];
    *a2 = *v4;
    *(a2 + 1) = v14;
    return 1;
  }

  v5 = this[16].i32[0];
  v6 = MEMORY[0x277D85DF8];
  while (1)
  {
    v7 = v5 + 1;
    this[16].i32[0] = v5 + 1;
    if (((v5 + 1) & 3) == 0)
    {
      break;
    }

LABEL_15:
    v11 = *(this[2].i64[1] + 8 * ((this[4].i64[0] + v7) / 0x24uLL)) + 112 * ((this[4].i64[0] + v7) % 0x24uLL);
    v4 = *v11;
    v12 = *(v11 + 16);
    v13 = *v11 + 32 * v12;
    this[15].i64[0] = v4;
    this[15].i64[1] = v13;
    v5 = v7;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  if (v5 >= 4)
  {
    MTCBSegmentProducer::DiscardUnit(this);
    v7 = this[16].i32[0];
  }

  if (this[4].i64[1] == v7)
  {
    MTCBSegmentProducer::GetNextUnit(this);
    v7 = this[16].i32[0];
  }

  v8 = this[7].i64[0] + v7 / 4;
  if (*(*(this[5].i64[1] + ((v8 >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v8 & 0x7FF)))
  {
    MTCBSegmentProducer::AssembleUnit(this, v7);
    if (MTBEDebugFlags::sMEOWDebug)
    {
      v9 = this[16].i32[0];
      do
      {
        MTMBDemi::Dump(*(this[2].i64[1] + 8 * ((v9 + this[4].i64[0]) / 0x24uLL)) + 112 * ((v9 + this[4].i64[0]) % 0x24uLL), *v6);
      }

      while (v9++ < this[16].i32[0] + 3);
    }

    MTBEDelayedNotifier::ForwardUnit(&this[17].u64[1]);
    v7 = this[16].i32[0];
    goto LABEL_15;
  }

  v16 = this[2].i64[1];
  v17 = this[3].i64[0];
  if (v17 == v16)
  {
    v17 = this[2].i64[1];
  }

  else
  {
    v18 = this[4].u64[0];
    v19 = &v16[v18 / 0x24];
    v20 = (*v19 + 112 * (v18 % 0x24));
    v21 = v16[(this[4].i64[1] + v18) / 0x24] + 112 * ((this[4].i64[1] + v18) % 0x24);
    if (v20 != v21)
    {
      do
      {
        MTMBDemi::~MTMBDemi(v20);
        v20 = (v22 + 112);
        if (v20 - *v19 == 4032)
        {
          v23 = v19[1];
          ++v19;
          v20 = v23;
        }
      }

      while (v20 != v21);
      v16 = this[2].i64[1];
      v17 = this[3].i64[0];
    }
  }

  this[4].i64[1] = 0;
  v24 = v17 - v16;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v16);
      v25 = this[3].i64[0];
      v16 = (this[2].i64[1] + 8);
      this[2].i64[1] = v16;
      v24 = (v25 - v16) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v26 = 18;
LABEL_30:
    this[4].i64[0] = v26;
  }

  else if (v24 == 2)
  {
    v26 = 36;
    goto LABEL_30;
  }

  v27 = this[5].i64[1];
  v28 = this[6].i64[0];
  this[7].i64[1] = 0;
  v29 = (v28 - v27) >> 3;
  if (v29 >= 3)
  {
    do
    {
      operator delete(*v27);
      v30 = this[6].i64[0];
      v27 = (this[5].i64[1] + 8);
      this[5].i64[1] = v27;
      v29 = (v30 - v27) >> 3;
    }

    while (v29 > 2);
  }

  if (v29 == 1)
  {
    v31 = 1024;
LABEL_37:
    result = 0;
    this[7].i64[0] = v31;
  }

  else
  {
    if (v29 == 2)
    {
      v31 = 2048;
      goto LABEL_37;
    }

    return 0;
  }

  return result;
}

MTMBDemi *std::deque<MTMBDemi>::resize(MTMBDemi *result, unint64_t a2)
{
  v2 = result;
  v3 = *(result + 5);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {

    return std::deque<MTMBDemi>::__append(result, v5);
  }

  else if (!v4)
  {
    v6 = *(result + 4);
    v7 = *(result + 1);
    v8 = (v7 + 8 * (v6 / 0x24));
    if (*(result + 2) == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = (*v8 + 112 * (v6 % 0x24));
    }

    v10 = v8;
    v11 = v9;
    std::__deque_iterator<MTMBDemi,MTMBDemi*,MTMBDemi&,MTMBDemi**,long,36l>::operator+=[abi:ne200100](&v10, a2);
    return std::deque<MTMBDemi>::__erase_to_end(v2, v10, v11);
  }

  return result;
}

void *std::deque<unsigned short>::push_back(void *result, _WORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 8) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<unsigned short>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v9 & 0x7FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

uint64_t MTCBSegmentProducer::DiscardUnit(int64x2_t *this)
{
  v2 = this[4].i64[0] + 3;
  v3 = -4;
  while (v3)
  {
    v4 = (*(this[2].i64[1] + 8 * (v2 / 0x24)) + 112 * (v2 % 0x24));
    ++v3;
    --v2;
    if (*(v4 + 25))
    {
      MTMBDemi::swap(&this[8], v4);
      break;
    }
  }

  v5 = 4;
  do
  {
    std::deque<MTMBDemi>::pop_front(this + 2);
    --v5;
  }

  while (v5);
  this[7] = vaddq_s64(this[7], xmmword_257B8C8E0);
  result = std::deque<unsigned short>::__maybe_remove_front_spare[abi:ne200100](this[5].i64, 1);
  this[16].i32[0] -= 4;
  return result;
}

void *MTCBSegmentProducer::GetNextUnit(MTCBSegmentProducer *this)
{
  MTBEDelayedNotifier::StartUnit((this + 280));
  Frame = MTFEFrameFiller::FillNextFrame(*(this + 1), 0);
  v3 = *(this + 9);
  v13 = 0;
  std::deque<MTMBDemi>::resize((this + 32), v3 + 4);
  if (Frame)
  {
    v13 = 2;
    *(this + 33) = MTBEParam::GetVolume(*(this + 2));
    v4 = *(this + 2);
    *(this + 137) = *(*(*(this + 1) + 280) + 178);
    if (MTBEParam::GetUsePostDurMod(v4))
    {
      DurModFakeRate = MTBEParam::GetDurModFakeRate(*(this + 2));
      v6 = *(this + 137);
    }

    else
    {
      v6 = *(this + 137);
      DurModFakeRate = *(this + 137);
    }

    *(this + 136) = DurModFakeRate;
    *(this + 89) = DurModFakeRate / v6;
    v7 = *(this + 1);
    if (*(*(v7 + 280) + 264) || *(v7 + 288))
    {
      if ((*(*this + 40))(this, v3, &v13))
      {
        v8 = 12;
      }

      else
      {
        v8 = 4;
      }

      v9 = v8 | v13;
    }

    else
    {
      v12 = *this;
      if (*(*(v7 + 272) + 93) == 1)
      {
        (v12[2].i64[0])(this, v3);
        v9 = 98;
      }

      else
      {
        (v12[1].i64[1])(this, v3);
        v9 = 66;
      }
    }

    v13 = v9;
    v10 = *(this + 1);
    if (*(*(v10 + 280) + 264))
    {
      MTFEFrameFiller::SkipWord(v10);
      v10 = *(this + 1);
      v9 = v13;
    }

    v13 = v9 | (*(v10 + 80) << 7);
  }

  return std::deque<unsigned short>::push_back(this + 10, &v13);
}

uint64_t MTCBSegmentProducer::AssembleUnit(MTCBSegmentProducer *this, unint64_t a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 2;
  if ((*(*(*(this + 11) + (((*(this + 14) + (a2 >> 2)) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(this + 14) + (a2 >> 2)) & 0x7FF)) & 4) == 0 || (MTBEDebugFlags::sMEOWDebug & 0x2000) != 0)
  {
    (*(**(this + 3) + 40))(*(this + 3));
    v14 = a2 + 3;
  }

  else
  {
    if (v4 == *(this + 15) - 1)
    {
      MTCBSegmentProducer::GetNextUnit(this);
    }

    if (kMTMBLinearSlack)
    {
      MTBEDebugParams::GetParam(kMTMBLinearSlack, &byte_27F8F2638, byte_27F8F2638);
      kMTMBLinearSlack = 0;
    }

    if (byte_27F8F2638 == 1 && (MTMBDemiProperties::UseWordPitch(*(*(*(this + 5) + 8 * ((a2 + *(this + 8) + 3) / 0x24)) + 112 * ((a2 + *(this + 8) + 3) % 0x24) + 104)) & 1) == 0)
    {
      v5 = *(this + 14);
      v6 = *(this + 11);
      v7 = *(*(v6 + (((v4 + v5 + 1) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v4 + v5 + 1) & 0x7FF));
      if ((v7 & 0x70) == 0x20 || (v7 & 0x440) == 0x400)
      {
        v8 = v4 + 2;
        do
        {
          if (v8 == *(this + 15))
          {
            MTCBSegmentProducer::GetNextUnit(this);
            v5 = *(this + 14);
            v6 = *(this + 11);
          }

          v9 = *(*(v6 + (((v5 + v8) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v5 + v8) & 0x7FF));
          ++v8;
        }

        while ((v9 & 0x70) == 0x20 || (v9 & 0x440) == 0x400);
      }
    }

    v10 = *(this + 8);
    v11 = *(this + 5);
    v12 = (v11 + 8 * (v10 / 0x24));
    if (*(this + 6) == v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = *v12 + 112 * (v10 % 0x24);
    }

    *v89 = v12;
    v90 = v13;
    std::__deque_iterator<MTMBDemi,MTMBDemi*,MTMBDemi&,MTMBDemi**,long,36l>::operator+=[abi:ne200100](v89, a2);
    v56 = *(this + 8);
    v57 = *(this + 5);
    v58 = (v57 + 8 * (v56 / 0x24));
    if (*(this + 6) == v57)
    {
      v59 = 0;
    }

    else
    {
      v59 = *v58 + 112 * (v56 % 0x24);
    }

    v60 = *v89;
    v61 = v90;
    *v89 = v58;
    v90 = v59;
    std::__deque_iterator<MTMBDemi,MTMBDemi*,MTMBDemi&,MTMBDemi**,long,36l>::operator+=[abi:ne200100](v89, a2);
    v62 = v90 - **v89;
    v63 = 0x6DB6DB6DB6DB6DB7 * (v62 >> 4);
    if (v62 < -447)
    {
      v67 = 31 - v63;
      v65 = (*v89 - 8 * (v67 / 0x24));
      v66 = *v65 + 112 * (36 * (v67 / 0x24) - v67) + 3920;
    }

    else
    {
      v64 = v63 + 4;
      v65 = (*v89 + 8 * (v64 / 0x24));
      v66 = *v65 + 112 * (v64 % 0x24);
    }

    v68 = *(this + 8) + *(this + 9);
    v69 = *(this + 5);
    v70 = (v69 + 8 * (v68 / 0x24));
    if (*(this + 6) == v69)
    {
      v71 = 0;
    }

    else
    {
      v71 = *v70 + 112 * (v68 % 0x24);
    }

    v72 = *(this + 15) + *(this + 14) - 1;
    if (*(*(*(this + 11) + ((v72 >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * (v72 & 0x7FF)))
    {
      v73 = 0;
    }

    else
    {
      v73 = -4;
    }

    *v89 = v70;
    v90 = v71;
    std::__deque_iterator<MTMBDemi,MTMBDemi*,MTMBDemi&,MTMBDemi**,long,36l>::operator+=[abi:ne200100](v89, v73);
    v76 = MTMBPitchStrategy::SetPitchTargets(v60, v61, v65, v66, *v89, v90, v74, v75);
    v77 = v76;
    if (MTBEDebugFlags::sMEOWDebug)
    {
      v87 = v76;
      v88 = v4;
      v78 = MEMORY[0x277D85DF8];
      fwrite("Assemble", 8uLL, 1uLL, *MEMORY[0x277D85DF8]);
      if (*(this + 9))
      {
        v79 = 0;
        do
        {
          if (!*(*(*(this + 11) + (((*(this + 14) + (v79 >> 2)) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((*(this + 14) + (v79 >> 2)) & 0x7FF)))
          {
            break;
          }

          v80 = *(*(this + 5) + 8 * ((v79 + *(this + 8)) / 0x24)) + 112 * ((v79 + *(this + 8)) % 0x24);
          if (*(v80 + 16))
          {
            v81 = *(v80 + 104);
            v82 = v81[18] >= 0 ? "" : "";
            v83 = *v78;
            v84 = MTMBDemiProperties::Phon(v81, v89);
            fprintf(v83, " %s%s%s (%d:%d %d:%d)", v82, v84, v82, *(v80 + 80), *(v80 + 88), *(v80 + 82), *(v80 + 90));
          }

          else
          {
            fwrite(" ()", 3uLL, 1uLL, *v78);
          }

          ++v79;
        }

        while (v79 < *(this + 9));
      }

      fputc(10, *v78);
      v4 = v88;
      v77 = v87;
    }

    v85 = *(this + 3);
    if (v77)
    {
      (*(*v85 + 24))(v85, *(*(this + 5) + 8 * ((*(this + 8) + a2) / 0x24)) + 112 * ((*(this + 8) + a2) % 0x24));
      (*(**(this + 3) + 24))(*(this + 3), *(*(this + 5) + 8 * ((a2 + *(this + 8) + 1) / 0x24)) + 112 * ((a2 + *(this + 8) + 1) % 0x24));
      (*(**(this + 3) + 24))(*(this + 3), *(*(this + 5) + 8 * ((a2 + *(this + 8) + 2) / 0x24)) + 112 * ((a2 + *(this + 8) + 2) % 0x24));
      v14 = a2 + 3;
      (*(**(this + 3) + 24))(*(this + 3), *(*(this + 5) + 8 * ((a2 + 3 + *(this + 8)) / 0x24)) + 112 * ((a2 + 3 + *(this + 8)) % 0x24));
    }

    else
    {
      v86 = *(this + 8);
      v14 = a2 + 3;
      (*(*v85 + 16))(v85, *(*(this + 5) + 8 * ((a2 + v86 + 2) / 0x24)) + 112 * ((a2 + v86 + 2) % 0x24), *(*(this + 5) + 8 * ((a2 + 3 + v86) / 0x24)) + 112 * ((a2 + 3 + v86) % 0x24));
    }
  }

  if (a2 > 0xFFFFFFFFFFFFFFFCLL)
  {
    goto LABEL_28;
  }

  v15 = v14;
  do
  {
    v16 = *(this + 8);
    v17 = *(this + 5);
    v18 = (*(v17 + 8 * ((v16 + v15) / 0x24)) + 112 * ((v16 + v15) % 0x24));
    if (!*(v18 + 2))
    {
      v19 = v16 - 1;
      v20 = v15;
      while (v20 > a2)
      {
        v21 = v19 + v20--;
        v22 = (*(v17 + 8 * (v21 / 0x24)) + 112 * (v21 % 0x24));
        if (*(v22 + 2))
        {
          MTMBDemi::swap(v18, v22);
          break;
        }
      }
    }

    --v15;
  }

  while (v15 > a2);
  if (a2 == -4)
  {
LABEL_28:
    v23 = 0;
  }

  else
  {
    v24 = *(this + 8);
    v25 = v24 + a2;
    v26 = *(this + 5);
    v27 = 3;
    v28 = a2;
    while (1)
    {
      v29 = *(v26 + 8 * (v25 / 0x24)) + 112 * (v25 % 0x24);
      if (*(v29 + 100))
      {
        break;
      }

      ++v28;
      ++v25;
      if (--v27 == -1)
      {
        goto LABEL_48;
      }
    }

    if (*(v29 + 64))
    {
      v30 = v28;
    }

    else
    {
      v30 = 0;
    }

    if (v28 + 1 < a2 + 4)
    {
      do
      {
        v31 = *(*(v26 + 8 * (v25 / 0x24)) + 112 * (v25 % 0x24) + 72);
        if (v31)
        {
          v32 = (*(v26 + 8 * ((v25 + 1) / 0x24)) + 112 * ((v25 + 1) % 0x24));
          if (v31 != v32[8])
          {
            *(*v32 + 16) |= 0x4000u;
          }
        }

        ++v25;
        --v27;
      }

      while (v27);
    }

    if (v30)
    {
      v33 = -a2;
      v34 = v24 + a2 - 1;
      while (v33)
      {
        v35 = *(v26 + 8 * (v34 / 0x24)) + 112 * (v34 % 0x24);
        ++v33;
        --v34;
        if (*(v35 + 100))
        {
          v36 = *(v35 + 72);
          if (v36)
          {
            v37 = (*(v26 + 8 * ((v24 + v30) / 0x24)) + 112 * ((v24 + v30) % 0x24));
            if (v36 != v37[8])
            {
              *(*v37 + 16) |= 0x4000u;
            }
          }

          break;
        }
      }
    }

LABEL_48:
    v23 = 1;
  }

  v38 = *(this + 14);
  v39 = *(this + 11);
  v40 = *(v39 + (((v38 + v4) >> 8) & 0xFFFFFFFFFFFFF8));
  v41 = (v38 + v4) & 0x7FF;
  v42 = *(v40 + 2 * v41);
  v43 = *(this + 8);
  v44 = *(this + 5);
  if ((v42 & 8) != 0 && v23)
  {
    v45 = v43 + a2;
    v46 = 4;
    while (1)
    {
      v47 = (*(v44 + 8 * (v45 / 0x24)) + 112 * (v45 % 0x24));
      if (v47[25])
      {
        break;
      }

      ++v45;
      if (!--v46)
      {
        goto LABEL_56;
      }
    }

    *(*v47 + 16) |= 0x1000u;
    v42 = *(v40 + 2 * v41);
  }

LABEL_56:
  v48 = v42 & 0x380;
  result = 36;
  v50 = *(v44 + 8 * ((v43 + v14) / 0x24)) + 112 * ((v43 + v14) % 0x24);
  v51 = *v50 + 32 * *(v50 + 16);
  v52 = *(v51 - 16) | v48;
  *(v51 - 16) = v52;
  if (v4 == *(this + 15) - 1 || ((v53 = *(*(v39 + (((v4 + v38 + 1) >> 8) & 0xFFFFFFFFFFFFF8)) + 2 * ((v4 + v38 + 1) & 0x7FF))) != 0 ? (v54 = (v53 & 0x40) == 0) : (v54 = 0), !v54))
  {
    if (*(v50 + 100) && (*(v40 + 2 * v41) & 0x40) == 0)
    {
      *(v51 - 16) = v52 | 0x2000;
    }
  }

  if ((*(v40 + 2 * v41) & 0x800) != 0)
  {
    result = (*(**(this + 3) + 32))(*(this + 3), *(v44 + 8 * ((a2 + v43 + 2) / 0x24)) + 112 * ((a2 + v43 + 2) % 0x24));
  }

  v55 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::deque<MTMBDemi>::pop_front(int64x2_t *a1)
{
  MTMBDemi::~MTMBDemi((*(a1->i64[1] + 8 * (a1[2].i64[0] / 0x24uLL)) + 112 * (a1[2].i64[0] % 0x24uLL)));
  a1[2] = vaddq_s64(a1[2], xmmword_257B8C8E0);

  return std::deque<MTMBDemi>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

void sub_257B50BA8(_Unwind_Exception *a1)
{
  MEMORY[0x259C6DA90](v1, 0x10D0C4050FF3235);
  MEOWVectorBase::~MEOWVectorBase((v2 + 72));
  _Unwind_Resume(a1);
}

void MTCBSegmentProducer::LoadSilence(MTCBSegmentProducer *this)
{
  if (MTBEDebugFlags::sMEOWDebug)
  {
    fprintf(*MEMORY[0x277D85DF8], "Fetch SIL %5.1fms\n", (*(*(this + 1) + 346) * 5.0));
  }

  v2 = *(*(this + 1) + 346);
  MTCBSegmentProducer::LoadPseudo(this);
}

void MTMBSegmentProducer::MTMBSegmentProducer(MTMBSegmentProducer *this, MTFEFrameFiller *a2, MEOWReader *a3, MTBEParam *a4)
{
  MTCBSegmentProducer::MTCBSegmentProducer(this, a2, a4);
  *v5 = &unk_2868F73E8;
  *(v5 + 424) = a3;
  *(v5 + 434) = -1;
}

{
  MTCBSegmentProducer::MTCBSegmentProducer(this, a2, a4);
  *v5 = &unk_2868F73E8;
  *(v5 + 424) = a3;
  *(v5 + 434) = -1;
}

void MTMBSegmentProducer::LoadBreath(MTMBSegmentProducer *this)
{
  *(this + 33) = MTBEParam::GetVolume(*(this + 2));
  v2 = *(this + 1);
  v3 = *(v2 + 346);
  v4 = *(v2 + 272);
  v5 = *(v4 + 93);
  v6 = *(v4 + 94);
  v7 = *(v4 + 90);
  v8 = *(v2 + 72);
  v9 = *(v2 + 64);
  MTCBSegmentProducer::LoadPseudo(this);
}

void MTMBSegmentProducer::LoadUnit(MTMBSegmentProducer *this, unint64_t a2, unsigned __int16 *a3)
{
  v5 = *(this + 1);
  v6 = *(v5 + 280);
  v7 = (*(v6 + 56) & 0x801) != 0 && (*(v6 + 56) & 2) == 0;
  if (v7 || *(*(v5 + 96) + 208))
  {
    *a3 |= 0x400u;
  }

  if (kMTMBSilenceGlue)
  {
    MTBEDebugParams::GetParam(kMTMBSilenceGlue, &byte_27F8F2648, byte_27F8F2648);
    kMTMBSilenceGlue = 0;
  }

  if (byte_27F8F2648 == 1)
  {
    v8 = v6;
    do
    {
      v8 = *(v8 + 40);
      if (!v8)
      {
        v9 = *(*(v6 + 32) + 40);
        if (!v9)
        {
          break;
        }

        v8 = *(v9 + 16);
        if (!v8)
        {
          break;
        }
      }

      v10 = *(v8 + 56);
      if ((v10 & 0x40) != 0)
      {
        break;
      }
    }

    while ((v10 & 0x1000) != 0);
  }

  v11 = *(this + 1);
  v12 = *(*(v11 + 280) + 264);
  if (v12)
  {
    v13 = *(*(v6 + 16) + 16);
    v14 = *(*(v6 + 24) + 24);
    v15 = *(v13 + 88);
    v16 = *(v14 + 90);
    v17 = *a3;
    if (v13 != v14 || v15 == 0xFFFF || v16 == 0xFFFF)
    {
      *a3 = v17 | 0x10;
      if (v15 != 0xFFFF || v16 != 0xFFFF)
      {
        MEOWReader::GetWordGlue(*(this + 53), v12, v54);
      }

      if (MTBEDebugFlags::sMEOWDebug)
      {
        v21 = MEMORY[0x277D85DF8];
        fprintf(*MEMORY[0x277D85DF8], "Fetch %s ", (*(*(this + 1) + 280) + 200));
        v22 = *v21;
        if (v15 == 0xFFFF)
        {
          MEOWPhon::Name(*v12);
          MEOWPhon::Name(v12[1]);
          v23 = v12;
          v42 = bswap32(*(v12 + 1)) >> 16;
          fprintf(v22, "%s>%s#%d");
        }

        else
        {
          MEOWPhon::Name(*(v13 + 92));
          v23 = v12;
          MEOWPhon::Name(v12[1]);
          MEOWPhon::Name(v54[0]);
          v24 = *(v13 + 88);
          fprintf(v22, "%s>%s-%s#(%d,%d)");
        }

        v37 = *v21;
        if (v16 == 0xFFFF)
        {
          v12 = v23;
          MEOWPhon::Name(v23[4]);
          MEOWPhon::Name(v23[5]);
          v43 = bswap32(*(v23 + 3)) >> 16;
          fprintf(v37, " - %s<%s#%d\n");
        }

        else
        {
          MEOWPhon::Name(v54[1]);
          MEOWPhon::Name(v23[4]);
          MEOWPhon::Name(*(v14 + 94));
          v44 = *(v14 + 90);
          v12 = v23;
          fprintf(v37, " - %s-%s<%s#(%d,%d)\n");
        }
      }

      MEOWVectorBase::MEOWVectorBase(&v53, 2);
      MEOWVectorBase::MEOWVectorBase(&v52, 2);
      if (v15 == 0xFFFF)
      {
        v38 = 0;
      }

      else
      {
        v38 = (*(v13 + 68) * *(v13 + 64));
      }

      v39 = *(this + 1);
      v46 = v38;
      if (v16 == 0xFFFF)
      {
        v45 = 0;
      }

      else
      {
        v45 = ((1.0 - *(v14 + 68)) * *(v14 + 64));
      }

      v40 = *(v39 + 64);
      v49 = *(v39 + 72);
      MEOWReader::GetWord(*(this + 53), v12, v50, v15 != 0xFFFF, v16 != 0xFFFF);
      if (!v51)
      {
        if (v45 + v46)
        {
          v41 = *(*(*(this + 1) + 280) + 176);
        }

        MTCBSegmentProducer::LoadPseudo(this);
      }

      if (v15 != 0xFFFF)
      {
        if (*(v13 + 88) == bswap32(*(this + 217)) >> 16 && *(this + 432) == *(v13 + 92) && *(this + 433) == *(v13 + 93))
        {
          MTMBSegmentProducer::LoadInclusion(this);
        }

        MTCBSegmentProducer::LoadPseudo(this);
      }

      MTCBSegmentProducer::LoadPseudo(this);
    }
  }

  else
  {
    v17 = *a3;
  }

  *a3 = v17 | 0x20;
  v25 = *(v11 + 272);
  v26 = *(v25 + 92);
  v27 = *(v25 + 93);
  v28 = *(v25 + 94);
  v29 = *(v25 + 88);
  v30 = *(v25 + 90);
  if (kMTMBPhonemeAmplitudeSmoothing)
  {
    MTBEDebugParams::GetParam(kMTMBPhonemeAmplitudeSmoothing, &byte_27F8F2658, byte_27F8F2658);
    kMTMBPhonemeAmplitudeSmoothing = 0;
  }

  if (byte_27F8F2658 == 1 && (v27 - 2) <= 0x19u)
  {
    *a3 |= 0x800u;
  }

  v48 = v30;
  if (MTBEDebugFlags::sMEOWDebug)
  {
    v47 = *MEMORY[0x277D85DF8];
    v31 = MEOWPhon::Name(v26);
    v32 = MEOWPhon::Name(v27);
    v33 = MEOWPhon::Name(v27);
    v34 = MEOWPhon::Name(v28);
    v35 = MEOWReader::NoSkipDup(*(this + 53), v27, 1u);
    v36 = MEOWReader::NoSkipDup(*(this + 53), v27, 0);
    fprintf(v47, "Fetch %s>%s#%lu|%s<%s#%lu SkipDup %04x%04x\n", v31, v32, v29, v33, v34, v48, v35, v36);
  }

  MTCBSegmentProducer::LoadPseudo(this);
}

void sub_257B5224C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  MEMORY[0x259C6DA90](v38, 0x10D0C4050FF3235);
  MEOWVectorBase::~MEOWVectorBase(&a38);
  MEOWVectorBase::~MEOWVectorBase((v39 - 128));
  _Unwind_Resume(a1);
}

void MTMBSegmentProducer::LoadInclusion(MTMBSegmentProducer *this)
{
  v2 = *(this + 1);
  if ((*(*(v2 + 280) + 56) & 3) != 1)
  {
    v3 = *(*(v2 + 96) + 208);
  }

  MEOWVectorBase::MEOWVectorBase(&v9, 2);
  MEOWReader::GetInclusion(*(this + 53), *(this + 432), *(this + 433), bswap32(*(this + 217)) >> 16, v7);
  if (v8)
  {
    if (MTBEDebugFlags::sMEOWDebug)
    {
      v4 = *MEMORY[0x277D85DF8];
      v5 = MEOWPhon::Name(*(this + 432));
      v6 = MEOWPhon::Name(*(this + 433));
      fprintf(v4, "Fetch Inclusion %s[]%s#%d\n", v5, v6, bswap32(*(this + 217)) >> 16);
    }

    operator new();
  }

  MTCBSegmentProducer::LoadPseudo(this);
}

void MTPBSegmentProducer::MTPBSegmentProducer(MTPBSegmentProducer *this, MTFEFrameFiller *a2, PROWReader *a3, MTBEParam *a4)
{
  MTCBSegmentProducer::MTCBSegmentProducer(this, a2, a4);
  *v5 = &unk_2868F7428;
  *(v5 + 424) = a3;
  *(v5 + 432) = 0;
}

{
  MTCBSegmentProducer::MTCBSegmentProducer(this, a2, a4);
  *v5 = &unk_2868F7428;
  *(v5 + 424) = a3;
  *(v5 + 432) = 0;
}

void MTPBSegmentProducer::LoadUnit(MTPBSegmentProducer *this, unint64_t a2, unsigned __int16 *a3)
{
  v4 = *(this + 1);
  if ((*(*(v4 + 280) + 56) & 3) != 1)
  {
    v5 = *(*(v4 + 96) + 208);
  }

  v6 = *(this + 432);
  v7 = PROWPhonEng::sP2M[*(v4 + 288)] + *(v4 + 289);
  v14 = PROWPhonEng::sP2M[*(v4 + 293)] + *(v4 + 294);
  *(this + 432) = v7;
  if (MTBEDebugFlags::sMEOWDebug)
  {
    v8 = *MEMORY[0x277D85DF8];
    v9 = PROWPhonEng::sName[v6];
    v10 = PROWPhonEng::sName[v7];
    v11 = PROWPhonEng::sName[v14];
    v12 = PROWReader::NoSkipDup(*(this + 53), v7, 1u);
    v13 = PROWReader::NoSkipDup(*(this + 53), v7, 0);
    fprintf(v8, "Fetch %s>%s<%s SkipDup %04x%04x\n", v9, v10, v11, v12, v13);
  }

  MTCBSegmentProducer::LoadPseudo(this);
}

void MTWBSegmentProducer::MTWBSegmentProducer(MTWBSegmentProducer *this, const MTMBDemi *a2)
{
  v2 = *a2;
  *this = &unk_2868F7468;
  *(this + 1) = v2;
  *(this + 2) = v2 + 32 * *(a2 + 2);
  if (MTBEDebugFlags::sMEOWDebug)
  {
    MTMBDemi::Dump(a2, *MEMORY[0x277D85DF8]);
  }
}

BOOL MTWBSegmentProducer::NextSegment(MTWBSegmentProducer *this, MTMBSegment *a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 < v3)
  {
    *(this + 1) = v2 + 2;
    v4 = v2[1];
    *a2 = *v2;
    *(a2 + 1) = v4;
  }

  return v2 < v3;
}

uint64_t MTMBSmoothSegment::NextSegment(MTMBSmoothSegment *this, MTMBSegment *a2)
{
  v4 = *(this + 3);
  *&v13.var0 = *(this + 2);
  *&v13.var3 = v4;
  v5 = (***(this + 1))(*(this + 1), this + 32);
  if (v5)
  {
    v6 = *(this + 3);
    *a2 = *(this + 2);
    *(a2 + 1) = v6;
    v7 = MEMORY[0x277D85DF8];
    if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = MTMBSegment::Abstract(a2);
      fprintf(v8, "Smooth      %s -> ", v9);
    }

    (*(**(this + 3) + 24))(*(this + 3), &v13, a2);
    if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
    {
      v10 = *v7;
      v11 = MTMBSegment::Abstract(a2);
      fprintf(v10, "%s\n", v11);
    }

    MTMBSegment::Check(&v13);
    MTMBSegment::Check(a2);
  }

  return v5;
}

void MTMBSmoothSegment::~MTMBSmoothSegment(MTMBSmoothSegment *this)
{
  *this = &unk_2868F7388;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }
}

{
  *this = &unk_2868F7388;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }
}

{
  *this = &unk_2868F7388;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  JUMPOUT(0x259C6DA90);
}

void non-virtual thunk toMTMBSmoothSegment::~MTMBSmoothSegment(MTMBSmoothSegment *this)
{
  *(this - 2) = &unk_2868F7388;
  v1 = *(this - 1);
  if (v1)
  {
    (*(*v1 + 16))();
  }
}

{
  MTMBSmoothSegment::~MTMBSmoothSegment((this - 16));
}

void MTMBChangePitch::MTMBChangePitch(MTMBChangePitch *this, MTMBProducerComponent *a2, MTMBSignalProcessor *a3)
{
  *this = &unk_2868F7490;
  *(this + 1) = a2;
  *(this + 2) = &unk_2868F74B8;
  *(this + 3) = a3;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 65) = 1;
}

{
  *this = &unk_2868F7490;
  *(this + 1) = a2;
  *(this + 2) = &unk_2868F74B8;
  *(this + 3) = a3;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 65) = 1;
}

uint64_t MTMBChangePitch::NextSegment(MTMBChangePitch *this, MTMBSegment *a2)
{
  if (*(this + 65))
  {
    *(this + 65) = 0;
    v4 = (***(this + 1))(*(this + 1), this + 32);
    *(this + 64) = v4;
    if ((v4 & 1) == 0)
    {
LABEL_3:
      result = 0;
      *(this + 65) = 1;
      return result;
    }
  }

  else if ((*(this + 64) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 3);
  *a2 = *(this + 2);
  *(a2 + 1) = v6;
  v7 = (***(this + 1))(*(this + 1), this + 32);
  *(this + 64) = v7;
  v8 = MEMORY[0x277D85DF8];
  if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
  {
    v9 = *MEMORY[0x277D85DF8];
    v10 = MTMBSegment::Abstract(a2);
    fprintf(v9, "ChangePitch %s -> ", v10);
    if ((*(this + 64) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
LABEL_9:
    (*(**(this + 3) + 40))(*(this + 3), a2, this + 32);
  }

LABEL_10:
  if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
  {
    v11 = *v8;
    v12 = MTMBSegment::Abstract(a2);
    fprintf(v11, "%s\n", v12);
  }

  MTMBSegment::Check(a2);
  if (*(this + 64) == 1)
  {
    MTMBSegment::Check((this + 32));
  }

  return 1;
}

void MTMBChangePitch::~MTMBChangePitch(MTMBChangePitch *this)
{
  *this = &unk_2868F7490;
  *(this + 2) = &unk_2868F74B8;
  if ((*(this + 65) & 1) == 0 && *(this + 64) == 1)
  {
    MTMBSegment::Free((this + 32));
  }

  *this = &unk_2868F7388;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

{
  MTMBChangePitch::~MTMBChangePitch(this);

  JUMPOUT(0x259C6DA90);
}

void non-virtual thunk toMTMBChangePitch::~MTMBChangePitch(MTMBChangePitch *this)
{
  MTMBChangePitch::~MTMBChangePitch((this - 16));
}

{
  MTMBChangePitch::~MTMBChangePitch((this - 16));

  JUMPOUT(0x259C6DA90);
}

void MTMBBlend::MTMBBlend(MTMBBlend *this, MTMBProducerComponent *a2, MTMBSignalProcessor *a3)
{
  *this = &unk_2868F74E0;
  *(this + 1) = a2;
  *(this + 2) = &unk_2868F7508;
  *(this + 3) = a3;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 65) = 1;
}

{
  *this = &unk_2868F74E0;
  *(this + 1) = a2;
  *(this + 2) = &unk_2868F7508;
  *(this + 3) = a3;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 65) = 1;
}

uint64_t MTMBBlend::NextSegment(MTMBBlend *this, MTMBSegment *a2)
{
  if (*(this + 65))
  {
    *(this + 65) = 0;
    v4 = (***(this + 1))(*(this + 1), this + 32);
    *(this + 64) = v4;
    if ((v4 & 1) == 0)
    {
LABEL_3:
      result = 0;
      *(this + 65) = 1;
      return result;
    }
  }

  else if ((*(this + 64) & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 3);
  *a2 = *(this + 2);
  *(a2 + 1) = v6;
  v7 = (***(this + 1))(*(this + 1), this + 32);
  *(this + 64) = v7;
  if (!v7)
  {
    goto LABEL_16;
  }

  while (!*(this + 20))
  {
    MTMBSegment::Free((this + 32));
    v8 = (***(this + 1))(*(this + 1), this + 32);
    *(this + 64) = v8;
    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ((*(this + 24) & 0x1000) != 0)
  {
    if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
    {
      v17 = *MEMORY[0x277D85DF8];
      v18 = MTMBSegment::Abstract(this + 4);
      fprintf(v17, "BlendBeg    %s -> ", v18);
    }

    if (kMTMBBlendingLog)
    {
      MTBEDebugParams::GetParam(kMTMBBlendingLog, &byte_27F8F2668, byte_27F8F2668);
      kMTMBBlendingLog = 0;
    }

    if (byte_27F8F2668 == 1)
    {
      BlendingLog("   ", a2);
      v19 = byte_27F8F2668;
      if (kMTMBBlendingLog)
      {
        MTBEDebugParams::GetParam(kMTMBBlendingLog, &byte_27F8F2668, (byte_27F8F2668 & 1));
        kMTMBBlendingLog = 0;
        v19 = byte_27F8F2668;
      }

      if (v19)
      {
        BlendingLog("- <", this + 4);
      }
    }

    (*(**(this + 3) + 48))(*(this + 3), this + 32);
    if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
    {
      v20 = *MEMORY[0x277D85DF8];
      v21 = MTMBSegment::Abstract(this + 4);
      fprintf(v20, "%s\n", v21);
    }

    if (kMTMBBlendingLog)
    {
      MTBEDebugParams::GetParam(kMTMBBlendingLog, &byte_27F8F2668, byte_27F8F2668);
      kMTMBBlendingLog = 0;
    }

    if (byte_27F8F2668 != 1)
    {
      goto LABEL_33;
    }

    v9 = "+ <";
LABEL_31:
    v10 = (this + 32);
    goto LABEL_32;
  }

  if ((*(a2 + 8) & 0x2000) != 0)
  {
LABEL_16:
    v11 = MEMORY[0x277D85DF8];
    if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
    {
      v12 = *MEMORY[0x277D85DF8];
      v13 = MTMBSegment::Abstract(a2);
      fprintf(v12, "BlendEnd    %s -> ", v13);
    }

    if (kMTMBBlendingLog)
    {
      MTBEDebugParams::GetParam(kMTMBBlendingLog, &byte_27F8F2668, byte_27F8F2668);
      kMTMBBlendingLog = 0;
    }

    if (byte_27F8F2668 == 1)
    {
      BlendingLog("   ", a2);
      v14 = byte_27F8F2668;
      if (kMTMBBlendingLog)
      {
        MTBEDebugParams::GetParam(kMTMBBlendingLog, &byte_27F8F2668, (byte_27F8F2668 & 1));
        kMTMBBlendingLog = 0;
        v14 = byte_27F8F2668;
      }

      if (v14)
      {
        BlendingLog("- >", this + 4);
      }
    }

    (*(**(this + 3) + 56))(*(this + 3), a2);
    if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
    {
      v15 = *v11;
      v16 = MTMBSegment::Abstract(a2);
      fprintf(v15, "%s\n", v16);
    }

    if (kMTMBBlendingLog)
    {
      MTBEDebugParams::GetParam(kMTMBBlendingLog, &byte_27F8F2668, byte_27F8F2668);
      kMTMBBlendingLog = 0;
    }

    if (byte_27F8F2668 != 1)
    {
      goto LABEL_33;
    }

    v9 = "+ >";
    goto LABEL_31;
  }

  if ((*(this + 24) & 0x4000) != 0)
  {
    if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
    {
      v22 = MEMORY[0x277D85DF8];
      v23 = *MEMORY[0x277D85DF8];
      v24 = MTMBSegment::Abstract(a2);
      fprintf(v23, "Blend       %s ", v24);
      v25 = *v22;
      v26 = MTMBSegment::Abstract(this + 4);
      fprintf(v25, "%s\n", v26);
    }

    if (kMTMBBlendingLog)
    {
      MTBEDebugParams::GetParam(kMTMBBlendingLog, &byte_27F8F2668, byte_27F8F2668);
      kMTMBBlendingLog = 0;
    }

    if (byte_27F8F2668 == 1)
    {
      BlendingLog("- =", a2);
      v27 = byte_27F8F2668;
      if (kMTMBBlendingLog)
      {
        MTBEDebugParams::GetParam(kMTMBBlendingLog, &byte_27F8F2668, (byte_27F8F2668 & 1));
        kMTMBBlendingLog = 0;
        v27 = byte_27F8F2668;
      }

      if (v27)
      {
        BlendingLog("- =", this + 4);
      }
    }

    (*(**(this + 3) + 16))(*(this + 3), a2, this + 32);
    if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
    {
      v28 = MEMORY[0x277D85DF8];
      v29 = *MEMORY[0x277D85DF8];
      v30 = MTMBSegment::Abstract(a2);
      fprintf(v29, " -> %s ", v30);
      v31 = *v28;
      v32 = MTMBSegment::Abstract(this + 4);
      fprintf(v31, "%s\n", v32);
    }

    if (kMTMBBlendingLog)
    {
      MTBEDebugParams::GetParam(kMTMBBlendingLog, &byte_27F8F2668, byte_27F8F2668);
      kMTMBBlendingLog = 0;
    }

    if (byte_27F8F2668 == 1)
    {
      BlendingLog("+ =", a2);
      v33 = byte_27F8F2668;
      if (kMTMBBlendingLog)
      {
        MTBEDebugParams::GetParam(kMTMBBlendingLog, &byte_27F8F2668, (byte_27F8F2668 & 1));
        kMTMBBlendingLog = 0;
        v33 = byte_27F8F2668;
      }

      if (v33)
      {
        BlendingLog("+ =", this + 4);
      }
    }

    MTMBSegment::Check((this + 32));
    goto LABEL_33;
  }

  if (kMTMBBlendingLog)
  {
    MTBEDebugParams::GetParam(kMTMBBlendingLog, &byte_27F8F2668, byte_27F8F2668);
    kMTMBBlendingLog = 0;
  }

  if (byte_27F8F2668 == 1)
  {
    v9 = "   ";
    v10 = a2;
LABEL_32:
    BlendingLog(v9, v10);
  }

LABEL_33:
  MTMBSegment::Check(a2);
  return 1;
}

uint64_t BlendingLog(const char *a1, MTMBDemiProperties **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = MTMBDemiProperties::Phon(a2[3], v9);
  v5 = 85;
  if (a2[2])
  {
    v5 = 86;
  }

  printf("%s %s %c %u", a1, v4, v5, *(a2 + 4));
  if (*(a2 + 4))
  {
    v6 = 0;
    do
    {
      printf(" %.0f", *(*a2 + v6++));
    }

    while (v6 < *(a2 + 4));
  }

  result = putchar(10);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void MTMBBlend::~MTMBBlend(MTMBBlend *this)
{
  *this = &unk_2868F74E0;
  *(this + 2) = &unk_2868F7508;
  if ((*(this + 65) & 1) == 0 && *(this + 64) == 1)
  {
    MTMBSegment::Free((this + 32));
  }

  *this = &unk_2868F7388;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

{
  MTMBBlend::~MTMBBlend(this);

  JUMPOUT(0x259C6DA90);
}

void non-virtual thunk toMTMBBlend::~MTMBBlend(MTMBBlend *this)
{
  MTMBBlend::~MTMBBlend((this - 16));
}

{
  MTMBBlend::~MTMBBlend((this - 16));

  JUMPOUT(0x259C6DA90);
}

void MTMBChangeAmplitude::MTMBChangeAmplitude(MTMBChangeAmplitude *this, MTMBProducerComponent *a2, MTMBSignalProcessor *a3, char a4)
{
  *this = &unk_2868F7530;
  *(this + 1) = a2;
  *(this + 2) = &unk_2868F7558;
  *(this + 3) = a3;
  *(this + 4) = 0x3800000038000000;
  *(this + 5) = 0;
  *(this + 48) = a4;
}

{
  *this = &unk_2868F7530;
  *(this + 1) = a2;
  *(this + 2) = &unk_2868F7558;
  *(this + 3) = a3;
  *(this + 4) = 0x3800000038000000;
  *(this + 5) = 0;
  *(this + 48) = a4;
}

uint64_t MTMBChangeAmplitude::NextSegment(MTMBChangeAmplitude *this, MTFESpeechElement *a2)
{
  v4 = (***(this + 1))(*(this + 1));
  if (v4)
  {
    var4 = a2->var4;
    if (var4 != *(this + 5))
    {
      *(this + 5) = var4;
      if (var4)
      {
        *(this + 9) = vcvts_n_f32_s64(var4->var4, 0x1FuLL);
      }

      if ((a2->var3 & 0x1000) != 0)
      {
        *(this + 8) = *(this + 9);
      }
    }

    v6 = MEMORY[0x277D85DF8];
    if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
    {
      v7 = *MEMORY[0x277D85DF8];
      v8 = MTMBSegment::Abstract(a2);
      fprintf(v7, "ChangeAmp   %s -> ", v8);
    }

    v9 = (this + 36);
    v10 = *(this + 9);
    v11 = *(this + 8);
    if (v10 <= v11)
    {
      v18 = v11 + -0.1;
      v12 = v10 < (v11 + -0.1);
      v13 = &v18;
    }

    else
    {
      v19 = v11 + 0.1;
      v12 = (v11 + 0.1) < v10;
      v13 = &v19;
    }

    if (v12)
    {
      v9 = v13;
    }

    v14 = *v9;
    (*(**(this + 3) + 64))(*(this + 3), a2, *(this + 48));
    *(this + 8) = v14;
    if ((~MTBEDebugFlags::sMEOWDebug & 0x11) == 0)
    {
      v15 = *v6;
      v16 = MTMBSegment::Abstract(a2);
      fprintf(v15, "%s %f\n", v16, v14);
    }

    MTMBSegment::Check(a2);
  }

  return v4;
}

void MTMBSpeechRateModifier::MTMBSpeechRateModifier(MTMBSpeechRateModifier *this, MTMBProducerComponent *a2)
{
  *this = &unk_2868F7580;
  *(this + 1) = a2;
  *(this + 2) = &unk_2868F75A8;
  MTMBModRate::CreateConcreteModifier(this);
}

void sub_257B53CF0(_Unwind_Exception *a1)
{
  MEOWVectorBase::~MEOWVectorBase((v1 + 32));
  *v1 = &unk_2868F7388;
  v3 = *(v1 + 8);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  _Unwind_Resume(a1);
}

void MTMBSpeechRateModifier::~MTMBSpeechRateModifier(MTMBSpeechRateModifier *this)
{
  *this = &unk_2868F7580;
  *(this + 2) = &unk_2868F75A8;
  if (*(this + 17))
  {
    MTMBSegment::Free((*(this + 16) + 16));
    v2 = *(this + 16);
    v3 = *(this + 17);
    v5 = *v2;
    v4 = v2[1];
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = v3 - 1;
    operator delete(v2);
  }

  v6 = *(this + 3);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::__list_imp<SpeechChannelManager *>::clear(this + 15);
  std::__list_imp<SpeechChannelManager *>::clear(this + 12);
  MEOWVectorBase::~MEOWVectorBase(this + 8);
  MEOWVectorBase::~MEOWVectorBase(this + 4);
  *this = &unk_2868F7388;
  v7 = *(this + 1);
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }
}

{
  MTMBSpeechRateModifier::~MTMBSpeechRateModifier(this);

  JUMPOUT(0x259C6DA90);
}

void non-virtual thunk toMTMBSpeechRateModifier::~MTMBSpeechRateModifier(MTMBSpeechRateModifier *this)
{
  MTMBSpeechRateModifier::~MTMBSpeechRateModifier((this - 16));
}

{
  MTMBSpeechRateModifier::~MTMBSpeechRateModifier((this - 16));

  JUMPOUT(0x259C6DA90);
}

uint64_t MTMBSpeechRateModifier::NextSegment(MTMBSpeechRateModifier *this, MTMBSegment *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = 0;
  __src = 0;
  v29 = 0;
  v30 = 0;
  if (*(this + 17))
  {
LABEL_41:
    v21 = *(this + 16);
    v22 = *(v21 + 32);
    *a2 = *(v21 + 16);
    *(a2 + 1) = v22;
    MTMBSegment::Modify(a2);
    v23 = *(this + 16);
    v25 = *v23;
    v24 = v23[1];
    *(v25 + 8) = v24;
    *v24 = v25;
    --*(this + 17);
    operator delete(v23);
    MTMBSegment::Check(a2);
    *(this + 37) += *(a2 + 4);
    result = 1;
  }

  else
  {
    v4 = this + 96;
    v5 = MEMORY[0x277D85DF8];
    while ((*(this + 145) & 1) != 0)
    {
      v6 = (***(this + 1))(*(this + 1), &__src);
      v9 = v6;
      *(this + 145) = v6;
      if (v6)
      {
        v10 = v31;
        LOWORD(v7) = *(v31 + 32);
        LOWORD(v8) = *(v31 + 33);
        v11 = v7 / v8;
        if (*(this + 144))
        {
          goto LABEL_6;
        }

        v12 = *(v31 + 17);
        if (v12 == *(this + 38))
        {
          goto LABEL_19;
        }

        *(this + 38) = v12;
        if (!v12)
        {
          goto LABEL_19;
        }

        v13 = *(this + 37) - v12;
        v14 = 1.1;
        if (v13 >= -4410)
        {
          v14 = 1.05;
          if (v13 >= -2205)
          {
            v14 = 1.02;
            if (v13 >= -1100)
            {
              v14 = 1.01;
              if (v13 >= -550)
              {
                v14 = 1.0;
                if (v13 >= 550)
                {
                  v14 = 0.99;
                  if (v13 >= 0x44C)
                  {
                    v14 = 0.98;
                    if (v13 >= 0x89D)
                    {
                      v14 = flt_257B8C910[v13 >> 1 < 0x89D];
                    }
                  }
                }
              }
            }
          }
        }

        *(this + 39) = v14;
        if (MTBEDebugFlags::sMEOWDebug & 1) != 0 && (v15 = *v5, v16 = MTMBDemiProperties::Phon(v10, v32), fprintf(v15, "Unit %s Target %u Actual %u Diff %d [%5.2fs] Tweak %5.2f\n", v16, *(this + 38), *(this + 37), v13, (v13 / 22050.0), *(this + 39)), (*(this + 144)))
        {
LABEL_6:
          (*(**(this + 3) + 48))(*(this + 3), v11 * *(this + 39));
          MEOWVectorBase::clear(this + 4);
          *(this + 144) = 0;
          *(this + 37) = 0;
          *(this + 38) = 0;
        }

        else
        {
LABEL_19:
          (*(**(this + 3) + 32))(*(this + 3), v11 * *(this + 39));
        }

        if (((v30 >> 7) & 7) != 0)
        {
          v17 = *(this + 12);
          operator new();
        }

        MEOWVectorBase::Append((this + 32), __src, v29);
        MTMBSegment::Free(&__src);
      }

      if ((*(**(this + 3) + 16))(*(this + 3), *(this + 12)))
      {
        (*(**(this + 3) + 24))(*(this + 3), this + 32, this + 64, v32, 0);
        v18 = v33;
        if (v33 < 0)
        {
          v20 = 0;
        }

        else if (v33 >= *v32)
        {
          v20 = *(this + 14);
        }

        else
        {
          v19 = *(this + 13);
          if (v19 == v4)
          {
            v20 = 0;
          }

          else
          {
            v20 = 0;
            do
            {
              if (*(v19 + 16) >= v33)
              {
                break;
              }

              ++v20;
              v19 = *(v19 + 8);
            }

            while (v19 != v4);
          }

          while (v19 != v4)
          {
            *(v19 + 16) -= v18;
            v19 = *(v19 + 8);
          }
        }

        MTMBSpeechRateModifier::PushToQueue(this, this + 64, this + 96, v20);
      }

      if ((v9 & 1) == 0)
      {
        (*(**(this + 3) + 24))(*(this + 3), this + 32, this + 64, v32, 1);
        if (*(this + 10))
        {
          MTMBSpeechRateModifier::PushToQueue(this, this + 64, this + 96, *(this + 14));
        }
      }

      if (*(this + 17))
      {
        goto LABEL_41;
      }
    }

    result = 0;
    *(this + 72) = 257;
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void MTMBSpeechRateModifier::PushToQueue(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!*(a2 + 16))
  {
    MTBEAbort(0);
  }

  if (a4)
  {
    v6 = *(a2 + 16) % a4;
    operator new();
  }

  operator new();
}

void MTMBSegmentProducer::~MTMBSegmentProducer(MTMBSegmentProducer *this)
{
  MTCBSegmentProducer::~MTCBSegmentProducer(this);

  JUMPOUT(0x259C6DA90);
}

void MTPBSegmentProducer::~MTPBSegmentProducer(MTPBSegmentProducer *this)
{
  MTCBSegmentProducer::~MTCBSegmentProducer(this);

  JUMPOUT(0x259C6DA90);
}

void MTMBChangeAmplitude::~MTMBChangeAmplitude(MTMBChangeAmplitude *this)
{
  *this = &unk_2868F7388;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }
}

{
  *this = &unk_2868F7388;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  JUMPOUT(0x259C6DA90);
}

void non-virtual thunk toMTMBChangeAmplitude::~MTMBChangeAmplitude(MTMBChangeAmplitude *this)
{
  *(this - 2) = &unk_2868F7388;
  v1 = *(this - 1);
  if (v1)
  {
    (*(*v1 + 16))();
  }
}

{
  *(this - 2) = &unk_2868F7388;
  v1 = *(this - 1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  JUMPOUT(0x259C6DA90);
}

uint64_t std::deque<MTMBDemi>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 / 0x24];
    v7 = (*v6 + 112 * (v5 % 0x24));
    v8 = v2[(a1[5] + v5) / 0x24] + 112 * ((a1[5] + v5) % 0x24);
    if (v7 != v8)
    {
      do
      {
        MTMBDemi::~MTMBDemi(v7);
        v7 = (v9 + 112);
        if (v7 - *v6 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
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
    v12 = 18;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 36;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<MTMBDemi *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<MTMBDemi *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::deque<unsigned short>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 1024;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 2048;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<MTMBDemi *>::~__split_buffer(a1);
}

MTMBDemi *std::deque<MTMBDemi>::__append(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 36 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[5] + a1[4];
  v8 = v6 - v7;
  v9 = a2 > v8;
  v10 = a2 - v8;
  if (v9)
  {
    std::deque<MTMBDemi>::__add_back_capacity(a1, v10);
    v4 = a1[1];
    v5 = a1[2];
    v7 = a1[4] + a1[5];
  }

  v11 = (v4 + 8 * (v7 / 0x24));
  if (v5 == v4)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *v11 + 112 * (v7 % 0x24);
    v13 = v12;
  }

  v20 = v11;
  v21 = v13;
  result = std::__deque_iterator<MTMBDemi,MTMBDemi*,MTMBDemi&,MTMBDemi**,long,36l>::operator+=[abi:ne200100](&v20, a2);
  v15 = v21;
  if (v12 != v21)
  {
    v16 = v20;
    do
    {
      if (v11 == v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = *v11 + 4032;
      }

      if (v12 == v17)
      {
        v17 = v12;
      }

      else
      {
        v18 = 0;
        result = v12;
        do
        {
          result = (MTMBDemi::MTMBDemi(result) + 112);
          v18 -= 112;
        }

        while (result != v17);
      }

      a1[5] += 0x6DB6DB6DB6DB6DB7 * ((v17 - v12) >> 4);
      if (v11 == v16)
      {
        break;
      }

      v19 = v11[1];
      ++v11;
      v12 = v19;
    }

    while (v19 != v15);
  }

  return result;
}

uint64_t std::deque<MTMBDemi>::__erase_to_end(uint64_t result, void *a2, MTMBDemi *a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 / 0x24));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = (*v8 + 112 * (v5 % 0x24));
  }

  if (v9 != a3)
  {
    v10 = (a3 - *a2) >> 4;
    v11 = 36 * (v8 - a2) + 0x6DB6DB6DB6DB6DB7 * ((v9 - *v8) >> 4) - 0x6DB6DB6DB6DB6DB7 * v10;
    if (v11 >= 1)
    {
      v12 = (v6 + 8 * (v4 / 0x24));
      if (v7 == v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = (*v12 + 112 * (v4 % 0x24));
      }

      if (a3 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 36 * (a2 - v12) + 0x6DB6DB6DB6DB6DB7 * v10 - 0x6DB6DB6DB6DB6DB7 * ((v13 - *v12) >> 4);
      }

      v19 = v12;
      v20 = v13;
      std::__deque_iterator<MTMBDemi,MTMBDemi*,MTMBDemi&,MTMBDemi**,long,36l>::operator+=[abi:ne200100](&v19, v14);
      v15 = v20;
      if (v20 != v9)
      {
        v16 = v19;
        do
        {
          MTMBDemi::~MTMBDemi(v15);
          v15 = (v17 + 112);
          if ((v15 - *v16) == 4032)
          {
            v18 = v16[1];
            ++v16;
            v15 = v18;
          }
        }

        while (v15 != v9);
      }

      v3[5] -= v11;
      do
      {
        result = std::deque<MTMBDemi>::__maybe_remove_back_spare[abi:ne200100](v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void *std::deque<MTMBDemi>::__add_back_capacity(void *result, unint64_t a2)
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

  if (v4 % 0x24)
  {
    v5 = v4 / 0x24 + 1;
  }

  else
  {
    v5 = v4 / 0x24;
  }

  v6 = result[4];
  if (v5 >= v6 / 0x24)
  {
    v7 = v6 / 0x24;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x24)
  {
    for (result[4] = v6 - 36 * v7; v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<MTMBDemi *>::emplace_back<MTMBDemi *&>(v2, v16);
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
        std::__allocate_at_least[abi:ne200100]<std::allocator<MTMBDemi *>>(result, v12);
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

    for (result[4] -= 36 * v7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<MTMBDemi *>::emplace_back<MTMBDemi *&>(v2, v16);
    }
  }

  return result;
}

void sub_257B55090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<MTMBDemi *>::emplace_back<MTMBDemi *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTMBDemi *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<MTMBDemi *>::emplace_front<MTMBDemi *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTMBDemi *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<MTMBDemi *>::emplace_back<MTMBDemi *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTMBDemi *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<MTMBDemi *>::emplace_front<MTMBDemi *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTMBDemi *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTMBDemi *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<MTMBDemi>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 36 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x24)
  {
    a2 = 1;
  }

  if (v5 < 0x48)
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

void *std::deque<unsigned short>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x800;
  v3 = v1 - 2048;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned short *>::emplace_back<unsigned short *&>(a1, &v10);
}

void sub_257B55774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned short *>::emplace_back<unsigned short *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned short *>::emplace_front<unsigned short *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<unsigned short *>::emplace_back<unsigned short *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned short *>::emplace_front<unsigned short *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<MTMBDemi>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x24)
  {
    a2 = 1;
  }

  if (v2 < 0x48)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 36;
  }

  return v4 ^ 1u;
}

uint64_t std::deque<unsigned short>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x800)
  {
    a2 = 1;
  }

  if (v2 < 0x1000)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 2048;
  }

  return v4 ^ 1u;
}

void *std::__deque_iterator<MTMBDemi,MTMBDemi*,MTMBDemi&,MTMBDemi**,long,36l>::operator+=[abi:ne200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x6DB6DB6DB6DB6DB7 * ((result[1] - **result) >> 4);
    if (v3 < 1)
    {
      v5 = 35 - v3;
      v6 = &v2[-(v5 / 0x24)];
      *result = v6;
      v4 = *v6 + 112 * (36 * (v5 / 0x24) - v5) + 3920;
    }

    else
    {
      *result = &v2[v3 / 0x24];
      v4 = v2[v3 / 0x24] + 112 * (v3 % 0x24);
    }

    result[1] = v4;
  }

  return result;
}

MTFESpeechElement *MTFEAdjustPhrasing::VisitIntonationalPhrase(MTFEAdjustPhrasing *this, MTFESpeechElement *a2)
{
  MTFEAdjustPhrasing::PeekInto(this, a2);

  return MTFESpeechElement::VisitChildren(a2, this);
}

void MTFEAdjustPhrasing::PeekInto(MTFEAdjustPhrasing *this, MTFESpeechElement *a2)
{
  MTFESpeechIterator::MTFESpeechIterator(v12, a2);
  v3 = v13;
  if (!v13 || (v4 = *(this + 2), v13 == v4))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *(v4 + 24);
      }

      while (v4);
      v6 = **v5;
      *(this + 4) = v7;
      if (v7)
      {
        LOBYTE(v4) = v7[58] == 0;
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }

    else
    {
      *(this + 4) = 0;
    }

    *(this + 2) = v3;
    *(this + 40) = *(this + 41);
    *(this + 41) = *(v3 + 158);
  }

  v8 = v14;
  if (v14 != *(this + 3))
  {
    *(this + 3) = v14;
    *(this + 42) = *(this + 43);
    *(this + 43) = *(v8 + 80);
    if ((v4 & 1) == 0)
    {
      v9 = v16;
      if (*(v16 + 58))
      {
        v9 = 0;
      }

      *(this + 4) = v9;
    }
  }

  if (v15)
  {
    v10 = *(v15 + 178);
    *(this + 4) = v10;
    v11 = 180.0 / v10;
    *(this + 3) = v11;
  }

  MTFESpeechVisitor::~MTFESpeechVisitor(v12);
}

uint64_t MTFEAdjustPhrasing::DemoteIntonationalPhrase(uint64_t this, MTFESpeechElement *a2)
{
  v3 = this;
  var3 = a2->var3;
  var7 = a2->var7;
  if (var7)
  {
    if (var3)
    {
      v6 = var3;
      do
      {
        v7 = v6;
        v6 = v6->var3;
      }

      while (v6);
      do
      {
        v8 = var7;
        var7 = var7->var4;
      }

      while (var7);
      MTFESpeechElement::SetPrevCousin(v7, v8);
      var7 = a2->var7;
    }

    MTFESpeechElement::TransferChildren(a2, var7);
    this = (*(a2->var0 + 2))(a2);
  }

  if (var3)
  {
    do
    {
      var6 = var3->var6;
      this = (*var3->var0)(var3, v3);
      var3 = var6;
    }

    while (var6);
  }

  return this;
}

float MTFEAdjustPhrasing::VisitIntermediatePhrase(MTFEAdjustPhrasing *this, MTFESpeechElement *a2)
{
  MTFEAdjustPhrasing::PeekInto(this, a2);
  if (*(this + 4) >= 200)
  {
    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(v4 + 72);
      if ((v5 & 0x8000) != 0)
      {
        v6 = *(v4 + 64) * 5.0;
      }

      else
      {
        v6 = MTFEPhonemeFlags::sBoundaryDur[(v5 >> 20) & 0x1F];
      }

      *(v4 + 72) = v5 | 0x8000;
      result = (v6 * 0.5) / 5.0;
      *(v4 + 64) = result;
    }
  }

  return result;
}

float MTFEAdjustPhrasing::SetPause(MTFEAdjustPhrasing *this, float result)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(v2 + 72) |= 0x8000u;
    result = result / 5.0;
    *(v2 + 64) = result;
  }

  return result;
}

float MTFEAdjustPhrasing::GetPause(MTFEAdjustPhrasing *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(v1 + 72);
  if ((v2 & 0x8000) != 0)
  {
    return *(v1 + 64) * 5.0;
  }

  else
  {
    return MTFEPhonemeFlags::sBoundaryDur[(v2 >> 20) & 0x1F];
  }
}

void MTFEAdjustPhrasing::DemoteIntermediatePhrase(MTFEAdjustPhrasing *this, MTFESpeechElement *a2)
{
  var7 = a2->var7;
  if (var7)
  {
    MTFESpeechElement::TransferChildren(a2, var7);
    v4 = *(a2->var0 + 2);

    v4(a2);
  }
}

void MTFEAdjustPhrasing::~MTFEAdjustPhrasing(MTFEAdjustPhrasing *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTFESkipContext::VisitSentence(MTFESkipContext *this, MTFESpeechElement *a2)
{
  result = (*(*this + 96))(this);
  if (result)
  {
    *(this + 8) = 0;

    return MTFESpeechElement::VisitChildren(a2, this);
  }

  return result;
}

uint64_t MTFESkipContext::VisitIntonationalPhrase(MTFESkipContext *this, MTFESpeechElement *a2)
{
  *(this + 9) = 0;
  MTFESpeechElement::VisitChildren(a2, this);
  result = MTFECommands::Visit(&a2[1].var1, this);
  if (a2 && (*(this + 9) & 1) == 0)
  {
    v5 = *(a2->var0 + 2);

    return v5(a2);
  }

  return result;
}

uint64_t MTFESkipTextContext::VisitIntonationalPhrase(MTFESkipContext *this, MTFESpeechElement *a2)
{
  if (HIDWORD(a2[2].var5))
  {
    v2 = a2[2].var3 + 4 * SLODWORD(a2[2].var5);
  }

  else
  {
    v2 = 0;
  }

  *(this + 2) = v2;
  *(this + 3) = v2;
  return MTFESkipContext::VisitIntonationalPhrase(this, a2);
}

MTFESpeechElement *MTFESkipContext::VisitIntermediatePhrase(MTFESkipContext *this, MTFESpeechElement *a2)
{
  v4 = *(this + 9);
  *(this + 9) = 0;
  result = MTFESpeechElement::VisitChildren(a2, this);
  if (!a2->var1 || (*(this + 9) & 1) == 0 && a2->var7 && a2->var6)
  {
    result = (*(a2->var0 + 2))(a2);
  }

  *(this + 9) |= v4;
  return result;
}

MTFESpeechElement *MTFESkipContext::VisitWord(MTFESkipContext *this, MTFESpeechElement *a2)
{
  v4 = *(this + 8);
  MTFECommands::Visit(&a2[2], this);
  if (*(this + 8) == 1)
  {
    if ((a2[1].var0 & 0x40) != 0)
    {

      return MTFESpeechElement::VisitChildren(a2, this);
    }

    else
    {
      if ((v4 & 1) == 0 && a2->var5 && a2[2].var1 >= 1)
      {
        operator new();
      }

      v5 = *(a2->var0 + 2);

      return v5(a2);
    }
  }

  else
  {
    v7 = *(*this + 112);

    return v7(this, a2);
  }
}

MTFESpeechElement *MTFESkipContext::DeleteWord(MTFESkipContext *this, MTFESpeechElement *a2)
{
  if ((a2[1].var0 & 0x40) != 0)
  {
    return MTFESpeechElement::VisitChildren(a2, this);
  }

  else
  {
    return (*(a2->var0 + 2))(a2);
  }
}

uint64_t MTFESkipContext::KeepWord(uint64_t this, MTFEWord *a2)
{
  if ((a2->var8 & 0x40) == 0)
  {
    *(this + 9) = 1;
  }

  return this;
}

uint64_t MTFESkipWordContext::VisitCommand(uint64_t this, MTFECommand *a2)
{
  if (a2->var8 == 1668577396)
  {
    *(this + 8) = a2->var9 == 1465076560;
  }

  return this;
}

uint64_t MTFESkipTextContext::VisitCommand(uint64_t this, MTFECommand *a2)
{
  if (a2->var8 == 1668577396)
  {
    *(this + 8) = a2->var9 == 1414744912;
  }

  return this;
}

uint64_t MTFESkipWordContext::KeepWord(uint64_t this, MTFEWord *a2)
{
  if ((a2->var8 & 0x40) == 0)
  {
    *(this + 9) = 1;
  }

  a2->var10 = 1;
  return this;
}

char *MTFESkipTextContext::KeepWord(MTFESkipTextContext *this, MTFEWord *a2)
{
  if ((a2->var8 & 0x40) == 0)
  {
    *(this + 9) = 1;
  }

  result = *(this + 2);
  if (result)
  {
    v5 = *(this + 3);
    if (v5 > result)
    {
      memmove(result, v5, 4 * a2->var21);
      result = *(this + 2);
    }

    *(this + 2) = &result[4 * a2->var21];
  }

  return result;
}

uint64_t MTFESkipTextContext::VisitWord(MTFESkipTextContext *this, MTFEWord *a2)
{
  if (*(this + 2))
  {
    v4 = *(this + 3) + 4 * a2->var21;
  }

  else
  {
    v4 = 0;
  }

  MTFECommands::Visit(&a2->var18, this);
  v5 = *this;
  if (*(this + 8) == 1)
  {
    result = (*(v5 + 104))(this, a2);
  }

  else
  {
    result = (*(v5 + 112))(this, a2);
  }

  *(this + 3) = v4;
  return result;
}

uint64_t MTFESkipToWord::VisitWord(MTFESkipToWord *this, MTFEWord *a2)
{
  v2 = *(this + 4);
  if (v2 == a2)
  {
    v2 = 0;
    *(this + 4) = 0;
  }

  *(this + 8) = v2 != 0;
  return MTFESkipTextContext::VisitWord(this, a2);
}

float MTFESkipTextContext::VisitPhoneme(MTFESkipTextContext *this, MTFEPhoneme *a2)
{
  a2->var13 = 1.0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 3);
    result = *v3;
    *v2 = *v3;
    *(this + 2) = v2 + 1;
  }

  return result;
}

void MTFESkipTextContext::~MTFESkipTextContext(MTFESkipTextContext *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESkipToWord::~MTFESkipToWord(MTFESkipToWord *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESkipWordContext::~MTFESkipWordContext(MTFESkipWordContext *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void PROWReader::PROWReader(PROWReader *this, const void *a2, BOOL a3)
{
  *this = a2;
  MEOWVectorBase::MEOWVectorBase((this + 80), 2);
  v5 = *this;
  v6 = *this + bswap32(*(*this + 20));
  *(this + 1) = *this + bswap32(*(*this + 16));
  *(this + 2) = v6;
  v7 = bswap32(*(v5 + 44));
  *(this + 3) = v5 + bswap32(*(v5 + 40));
  *(this + 4) = v5 + v7;
  *(this + 7) = v5 + bswap32(*(v5 + 60));
  *(this + 10) = bswap32(*(v5 + 24));
  *(this + 11) = bswap32(*(v5 + 28));
  *(this + 12) = bswap32(*(v5 + 32) | 0x80);
  *(this + 13) = bswap32(*(v5 + 36) | 0x80);
  v9 = v5 + bswap32(*(v5 + 56));
  MEOWDecoder::CreateCodebookDecoder(0x100, *(v5 + 14), bswap32(*(v5 + 2)) >> 16 < 165, a3, &v9, v8);
}

void PROWReader::~PROWReader(PROWReader *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  MEOWVectorBase::~MEOWVectorBase(this + 10);
}

void PROWReader::GetDemi(void **a1, char a2, char a3, unsigned int a4, uint64_t a5)
{
  LOBYTE(v7) = a3;
  LOBYTE(v8) = a2;
  MEOWVectorBase::clear(a1 + 10);
  *a5 = 0;
  v10 = a1[a4 + 1];
  v11 = *a1;
  v12 = (bswap32(**a1) >> 16);
  while (1)
  {
    v13 = &v10[4 * v12 * v8 + 4 * v7];
    v15 = *v13;
    v14 = v13[1];
    v16 = bswap32(v15);
    if (v16 != 0xFFFF)
    {
      break;
    }

    *a5 = 1;
    v8 = v14 >> 8;
    v7 = HIBYTE(v14);
  }

  if (v16 == -1)
  {
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    if (a4)
    {
      v17 = v7;
    }

    else
    {
      v17 = v8;
    }

    if (PROWPhonEng::sVoiced[v17] == 1)
    {
      v18 = *(v11 + 3);
      *(a5 + 24) = (v16 << v11[15]) + *(a1 + a4 + 10);
      v19 = a1[a4 + 3];
      v20 = bswap32(v14);
      v21 = v19[v20];
      if (v21 == 0xFFFF)
      {
        v26 = a1[12];
        v25 = a1[10];
      }

      else
      {
        v22 = bswap32(v18) >> 16;
        v23 = &v19[v20 + 1];
        do
        {
          v24 = v22 + (bswap32(v21) >> 16);
          MEOWVectorBase::Append(a1 + 10);
          v25 = a1[10];
          v26 = a1[12];
          v25[v26 - 1] = v24;
          v27 = *v23++;
          v21 = v27;
        }

        while (v27 != 0xFFFF);
      }
    }

    else
    {
      *(a5 + 24) = (v16 << v11[15]) + *(a1 + a4 + 12);
      v28 = bswap32(v14);
      v29 = (v28 + (bswap32(*(v11 + 2)) >> 16) * HIWORD(v28)) ^ 0x8000;
      MEOWVectorBase::Append(a1 + 10);
      v25 = a1[10];
      v26 = a1[12];
      v25[v26 - 1] = v29;
    }

    *(a5 + 8) = v26;
    *(a5 + 16) = v25;
  }
}

uint64_t PROWReader::NoSkipDup(PROWReader *this, unsigned int a2, unsigned int a3)
{
  if (a2 <= 0x2A)
  {
    v4 = (*(this + 7) + 8 * a2 + 4 * a3);
    return ((v4[1] << 8) | (*v4 << 12) | (16 * v4[2]) | v4[3]);
  }

  else
  {
    return -1;
  }
}

void sub_257B56E5C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x259C6DA90](v3, 0x10A1C4036524A53);
  MTBEPhraseProcessor::~MTBEPhraseProcessor(v1);
  _Unwind_Resume(a1);
}

void MT3BPhraseProcessor::InsertPlosiveReleases(MT3BPhraseProcessor *this, MTFESpeechElement *a2)
{
  v3 = 0;
  v2[0] = &unk_2868F5F50;
  MTFESpeechVisitor::Visit(v2, a2);
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);
}

void MT3BPhraseProcessor::~MT3BPhraseProcessor(MT3BPhraseProcessor *this)
{
  MTBEPhraseProcessor::~MTBEPhraseProcessor(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MTMBCrossfader::CrossfadePartial(MTMBCrossfader *this, uint64_t a2, uint64_t a3, uint64_t a4, const float *a5, const float *a6, const float *a7)
{
  v7 = a4 - a3;
  if (a4 - a3 < 0)
  {
    v7 = a3 - a4;
  }

  v8 = (v7 + 1);
  v9 = &a5[v8];
  v10 = &a6[v8];
  if ((a7 <= a5 || v9 <= a7) && (a7 <= a6 || v10 <= a7))
  {
    return (*(*this + 16))(this, a2, a3);
  }

  else
  {
    return (*(*this + 16))(this, a2, a4, a3, 0xFFFFFFFFLL, v9 - 1, v10 - 1, &a7[v8 - 1]);
  }
}

float MTMBLinearCrossfader::Fade(MTMBLinearCrossfader *this, int a2, int a3, int a4, int a5, const float *a6, const float *a7, float *a8)
{
  v8 = 0;
  v9 = a4 - a3;
  v10 = 1.0 / (a2 + 1);
  result = a3 * v10;
  v12 = -v10;
  if (a4 - a3 >= 0)
  {
    v12 = 1.0 / (a2 + 1);
  }

  if (a3 - a4 > v9)
  {
    v9 = a3 - a4;
  }

  v13 = v9 + 1;
  do
  {
    a8[v8] = (result * a7[v8]) + (a6[v8] * (1.0 - result));
    result = v12 + result;
    v8 += a5;
    --v13;
  }

  while (v13);
  return result;
}

float MTMBRaisedSineCrossfader::Fade(MTMBRaisedSineCrossfader *this, int a2, int a3, int a4, int a5, const float *a6, const float *a7, float *a8)
{
  v8 = 0;
  v9 = a4 - a3;
  v10 = 129.0 / (a2 + 1);
  result = v10 * a3;
  if (a4 - a3 < 0)
  {
    v10 = -v10;
  }

  if (a3 - a4 > v9)
  {
    v9 = a3 - a4;
  }

  v12 = v9 + 1;
  do
  {
    v13 = MTMBRaisedSineCrossfader::sCoeffs[result];
    a8[v8] = (v13 * a7[v8]) + (a6[v8] * (1.0 - v13));
    result = v10 + result;
    v8 += a5;
    --v12;
  }

  while (v12);
  return result;
}

MTMBCrossfader *MTMBCrossfade(uint64_t a1, const float *a2, const float *a3, const float *a4)
{
  result = MTMBCrossfade::sXF;
  if (!MTMBCrossfade::sXF)
  {
    operator new();
  }

  if (a1)
  {

    return MTMBCrossfader::CrossfadePartial(result, a1, 1, a1, a2, a3, a4);
  }

  return result;
}

void MEOWTriphoneSum(unint64_t *a1, unint64_t *a2, float *__Y, uint64_t a4)
{
  v6 = a1[2];
  if (v6 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = *a1;
    v11 = *a2;
    v12 = *a1;
    do
    {
      for (i = *a2 + 60 * a2[2]; v11 < i; v11 += 60)
      {
        if (*(v12 + 56) <= *(v11 + 56))
        {
          break;
        }
      }

      if (v11 == i)
      {
        break;
      }

      if (*(v12 + 56) == *(v11 + 56))
      {
        ++v9;
        cblas_saxpy(11, 1.0, v12, 1, __Y, 1);
        cblas_saxpy(11, 1.0, v11, 1, a4, 1);
        v10 = *a1;
        v6 = a1[2];
      }

      v12 += 60;
    }

    while (v12 < v10 + 60 * v6);
  }

  *(__Y + 14) += v9;
  *(a4 + 56) += v9;
}

void MEOWSpectralCost::MEOWSpectralCost(MEOWSpectralCost *this, MEOWReader *a2)
{
  *this = a2;
  MEOWVectorBase::MEOWVectorBase((this + 8), 60, 0x1FA4uLL);
  bzero(*(this + 1), 0x76A70uLL);
}

{
  *this = a2;
  MEOWVectorBase::MEOWVectorBase((this + 8), 60, 0x1FA4uLL);
  bzero(*(this + 1), 0x76A70uLL);
}

void MEOWSpectralCost::~MEOWSpectralCost(void **this)
{
  MEOWVectorBase::~MEOWVectorBase(this + 1);
}

{
  MEOWVectorBase::~MEOWVectorBase(this + 1);
}

uint64_t MEOWSpectralCost::GetSpectralCookie(uint64_t *a1, int a2, unsigned int a3, int a4, unsigned int a5, _OWORD *a6)
{
  v6 = a1[1] + 60 * (2 * (9 * (a3 + 50 * sMEOWSpectralClass[a2]) + sMEOWSpectralClass[a4]));
  v7 = *(v6 + 56);
  if (!v7)
  {
    v26 = a5;
    v27 = a6;
    v10 = 0;
    v11 = sMEOWSpectralClass[a2];
    v12 = sMEOWSpectralClass[a4];
    do
    {
      if (sMEOWSpectralClass[v10] == v11)
      {
        MEOWVectorBase::MEOWVectorBase(v30, 60);
        MEOWReader::GetDistanceCookies(*a1, v10, a3, 1, v30, 0);
        v14 = 126 - 2 * __clz(v31);
        if (v31)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *,false>(v30[0], (v30[0] + 60 * v31), v28, v15, 1, v13);
        for (i = 0; i != 50; ++i)
        {
          if (sMEOWSpectralClass[i] == v12)
          {
            MEOWVectorBase::MEOWVectorBase(v28, 60);
            MEOWReader::GetDistanceCookies(*a1, a3, i, 0, v28, 0);
            v18 = 126 - 2 * __clz(v29);
            if (v29)
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            std::__introsort<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *,false>(v28[0], (v28[0] + 60 * v29), &v32, v19, 1, v17);
            MEOWTriphoneSum(v30, v28, v6, v6 + 60);
            MEOWVectorBase::~MEOWVectorBase(v28);
          }
        }

        MEOWVectorBase::~MEOWVectorBase(v30);
      }

      ++v10;
    }

    while (v10 != 50);
    v20 = *(v6 + 56);
    if (!v20)
    {
      result = 0;
      *(v6 + 56) = -1;
      return result;
    }

    cblas_sscal(11, 1.0 / v20, v6, 1);
    cblas_sscal(11, 1.0 / *(v6 + 56), (v6 + 60), 1);
    v7 = *(v6 + 56) | 0x80000000;
    *(v6 + 56) = v7;
    *(v6 + 116) |= 0x80000000;
    a6 = v27;
    a5 = v26;
  }

  if (v7 == -1)
  {
    return 0;
  }

  v21 = (v6 + 60 * a5);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  *(a6 + 44) = *(v21 + 44);
  a6[1] = v23;
  a6[2] = v24;
  *a6 = v22;
  return 1;
}

void sub_257B576CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *,false>(unint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-4].n128_u8[4];
  v10 = &a2[-8].n128_i8[8];
  v11 = (&a2[-12].n128_f64[1] + 4);
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - v12) >> 2);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return result;
      }

      if (v16 == 2)
      {
        if (a2[-1].n128_u32[3] < *(v12 + 56))
        {
          *&v230[12] = *(v12 + 44);
          v198 = *(v12 + 16);
          *v230 = *(v12 + 32);
          v169 = *v12;
          v118 = *(&a2[-4] + 4);
          v119 = *(&a2[-3] + 4);
          v120 = *(&a2[-2] + 4);
          *(v12 + 44) = a2[-1];
          *(v12 + 16) = v119;
          *(v12 + 32) = v120;
          *v12 = v118;
          *(&a2[-4] + 4) = v169;
          *(a2 - 44) = v198;
          *(a2 - 28) = *v230;
          result = *&v230[12];
          a2[-1] = *&v230[12];
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v121 = *(v12 + 116);
      v122 = *(v12 + 176);
      if (v121 >= *(v12 + 56))
      {
        if (v122 < v121)
        {
          *v233 = *(v12 + 92);
          *&v233[12] = *(v12 + 104);
          v129 = *(v12 + 60);
          v200 = *(v12 + 76);
          *(v12 + 60) = *(v12 + 120);
          *(v12 + 76) = *(v12 + 136);
          *(v12 + 92) = *(v12 + 152);
          *(v12 + 104) = *(v12 + 164);
          *(v12 + 120) = v129;
          *(v12 + 164) = *&v233[12];
          result = *v233;
          *(v12 + 152) = *v233;
          *(v12 + 136) = v200;
          if (*(v12 + 116) < *(v12 + 56))
          {
            *&v234[12] = *(v12 + 44);
            v201 = *(v12 + 16);
            *v234 = *(v12 + 32);
            v171 = *v12;
            v130 = *(v12 + 76);
            *v12 = *(v12 + 60);
            *(v12 + 16) = v130;
            *(v12 + 32) = *(v12 + 92);
            *(v12 + 44) = *(v12 + 104);
            result = v171;
            *(v12 + 104) = *&v234[12];
            *(v12 + 92) = *v234;
            *(v12 + 76) = v201;
            *(v12 + 60) = v171;
          }
        }
      }

      else if (v122 >= v121)
      {
        *&v237[12] = *(v12 + 44);
        v204 = *(v12 + 16);
        *v237 = *(v12 + 32);
        v174 = *v12;
        v141 = *(v12 + 76);
        *v12 = *(v12 + 60);
        *(v12 + 16) = v141;
        *(v12 + 32) = *(v12 + 92);
        *(v12 + 44) = *(v12 + 104);
        result = v174;
        *(v12 + 104) = *&v237[12];
        *(v12 + 92) = *v237;
        *(v12 + 76) = v204;
        *(v12 + 60) = v174;
        if (v122 < *(v12 + 116))
        {
          *v238 = *(v12 + 92);
          *&v238[12] = *(v12 + 104);
          v142 = *(v12 + 60);
          v205 = *(v12 + 76);
          *(v12 + 60) = *(v12 + 120);
          *(v12 + 76) = *(v12 + 136);
          *(v12 + 92) = *(v12 + 152);
          *(v12 + 104) = *(v12 + 164);
          *(v12 + 120) = v142;
          *(v12 + 164) = *&v238[12];
          result = *v238;
          *(v12 + 152) = *v238;
          *(v12 + 136) = v205;
        }
      }

      else
      {
        *&v231[12] = *(v12 + 44);
        v199 = *(v12 + 16);
        *v231 = *(v12 + 32);
        v170 = *v12;
        v123 = *(v12 + 136);
        *v12 = *(v12 + 120);
        *(v12 + 16) = v123;
        *(v12 + 32) = *(v12 + 152);
        *(v12 + 44) = *(v12 + 164);
        result = v170;
        *(v12 + 164) = *&v231[12];
        *(v12 + 152) = *v231;
        *(v12 + 136) = v199;
        *(v12 + 120) = v170;
      }

      if (a2[-1].n128_u32[3] < *(v12 + 176))
      {
        *v239 = *(v12 + 152);
        *&v239[12] = *(v12 + 164);
        v143 = *(v12 + 136);
        v144 = *(v12 + 120);
        v146 = *(&a2[-3] + 4);
        v145 = *(&a2[-2] + 4);
        v147 = a2[-1];
        *(v12 + 120) = *v9;
        *(v12 + 164) = v147;
        *(v12 + 152) = v145;
        *(v12 + 136) = v146;
        *v9 = v144;
        *(a2 - 44) = v143;
        *(a2 - 28) = *v239;
        result = *&v239[12];
        a2[-1] = *&v239[12];
        if (*(v12 + 176) < *(v12 + 116))
        {
          *v240 = *(v12 + 92);
          *&v240[12] = *(v12 + 104);
          v148 = *(v12 + 60);
          v206 = *(v12 + 76);
          *(v12 + 60) = *(v12 + 120);
          *(v12 + 76) = *(v12 + 136);
          *(v12 + 92) = *(v12 + 152);
          *(v12 + 104) = *(v12 + 164);
          *(v12 + 120) = v148;
          *(v12 + 164) = *&v240[12];
          result = *v240;
          *(v12 + 152) = *v240;
          *(v12 + 136) = v206;
LABEL_109:
          if (*(v12 + 116) < *(v12 + 56))
          {
            *&v241[12] = *(v12 + 44);
            v207 = *(v12 + 16);
            *v241 = *(v12 + 32);
            v175 = *v12;
            v149 = *(v12 + 76);
            *v12 = *(v12 + 60);
            *(v12 + 16) = v149;
            *(v12 + 32) = *(v12 + 92);
            *(v12 + 44) = *(v12 + 104);
            result = v175;
            *(v12 + 104) = *&v241[12];
            *(v12 + 92) = *v241;
            *(v12 + 76) = v207;
            *(v12 + 60) = v175;
          }

          return result;
        }
      }

      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *,0>(v12, (v12 + 60), (v12 + 120), (v12 + 180), &a2[-4].n128_u8[4], result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 1439)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *>(v12, a2);
      }

      else if (v12 != a2)
      {
        while ((a1 + 60) != a2)
        {
          v131 = *(a1 + 116);
          v132 = *(a1 + 56);
          v135 = a1 + 60;
          a1 += 60;
          if (v131 < v132)
          {
            v242 = *(v135 + 48);
            v202 = *(v135 + 16);
            v235 = *(v135 + 32);
            v172 = *v135;
            do
            {
              v133 = *(v135 - 44);
              *v135 = *(v135 - 60);
              *(v135 + 16) = v133;
              *(v135 + 32) = *(v135 - 28);
              *(v135 + 44) = *(v135 - 16);
              v134 = *(v135 - 64);
              v135 -= 60;
            }

            while (v131 < v134);
            result = v172;
            *(v135 + 48) = v242;
            *(v135 + 16) = v202;
            *(v135 + 32) = v235;
            *v135 = v172;
            *(v135 + 56) = v131;
          }
        }
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *,MEOWDistanceCookie *>(v12, a2, a2, a3);
      }

      return result;
    }

    v17 = v16 >> 1;
    v18 = v12 + 60 * (v16 >> 1);
    v19 = a2[-1].n128_u32[3];
    if (v15 >= 0x1E01)
    {
      v20 = *(v18 + 56);
      if (v20 >= *(v12 + 56))
      {
        if (v19 < v20)
        {
          *&v210[12] = *(v18 + 44);
          v178 = *(v18 + 16);
          *v210 = *(v18 + 32);
          v153 = *v18;
          v28 = *v9;
          v29 = *(&a2[-3] + 4);
          v30 = *(&a2[-2] + 4);
          *(v18 + 44) = a2[-1];
          *(v18 + 16) = v29;
          *(v18 + 32) = v30;
          *v18 = v28;
          *v9 = v153;
          *(a2 - 44) = v178;
          *(a2 - 28) = *v210;
          a2[-1] = *&v210[12];
          if (*(v18 + 56) < *(v12 + 56))
          {
            *&v211[12] = *(v12 + 44);
            v179 = *(v12 + 16);
            *v211 = *(v12 + 32);
            v154 = *v12;
            v31 = *v18;
            v32 = *(v18 + 16);
            v33 = *(v18 + 32);
            *(v12 + 44) = *(v18 + 44);
            *(v12 + 16) = v32;
            *(v12 + 32) = v33;
            *v12 = v31;
            *(v18 + 44) = *&v211[12];
            *(v18 + 16) = v179;
            *(v18 + 32) = *v211;
            *v18 = v154;
          }
        }
      }

      else
      {
        if (v19 < v20)
        {
          *&v208[12] = *(v12 + 44);
          v176 = *(v12 + 16);
          *v208 = *(v12 + 32);
          v151 = *v12;
          v21 = *v9;
          v22 = *(&a2[-3] + 4);
          v23 = *(&a2[-2] + 4);
          *(v12 + 44) = a2[-1];
          *(v12 + 16) = v22;
          *(v12 + 32) = v23;
          *v12 = v21;
          goto LABEL_27;
        }

        *&v214[12] = *(v12 + 44);
        v182 = *(v12 + 16);
        *v214 = *(v12 + 32);
        v157 = *v12;
        v40 = *v18;
        v41 = *(v18 + 16);
        v42 = *(v18 + 32);
        *(v12 + 44) = *(v18 + 44);
        *(v12 + 16) = v41;
        *(v12 + 32) = v42;
        *v12 = v40;
        *(v18 + 44) = *&v214[12];
        *(v18 + 16) = v182;
        *(v18 + 32) = *v214;
        *v18 = v157;
        if (a2[-1].n128_u32[3] < *(v18 + 56))
        {
          *&v208[12] = *(v18 + 44);
          v176 = *(v18 + 16);
          *v208 = *(v18 + 32);
          v151 = *v18;
          v43 = *v9;
          v44 = *(&a2[-3] + 4);
          v45 = *(&a2[-2] + 4);
          *(v18 + 44) = a2[-1];
          *(v18 + 16) = v44;
          *(v18 + 32) = v45;
          *v18 = v43;
LABEL_27:
          *v9 = v151;
          *(a2 - 44) = v176;
          *(a2 - 28) = *v208;
          a2[-1] = *&v208[12];
        }
      }

      v46 = v12 + 60 * v17;
      v47 = v46 - 60;
      v48 = *(v46 - 4);
      v49 = a2[-4].n128_u32[0];
      if (v48 >= *(v12 + 116))
      {
        if (v49 < v48)
        {
          *&v216[12] = *(v47 + 44);
          v183 = *(v47 + 16);
          *v216 = *(v47 + 32);
          v158 = *v47;
          v55 = *v10;
          v56 = *(&a2[-7] + 8);
          v57 = *(&a2[-6] + 8);
          *(v47 + 44) = *(a2 - 76);
          *(v47 + 16) = v56;
          *(v47 + 32) = v57;
          *v47 = v55;
          *v10 = v158;
          *(a2 - 104) = v183;
          *(a2 - 88) = *v216;
          *(a2 - 76) = *&v216[12];
          if (*(v47 + 56) < *(v12 + 116))
          {
            v58 = *(v12 + 60);
            v184 = *(v12 + 76);
            *&v217[12] = *(v12 + 104);
            *v217 = *(v12 + 92);
            v59 = *(v47 + 44);
            v61 = *(v47 + 16);
            v60 = *(v47 + 32);
            *(v12 + 60) = *v47;
            *(v12 + 92) = v60;
            *(v12 + 104) = v59;
            *(v12 + 76) = v61;
            *(v47 + 44) = *&v217[12];
            *(v47 + 16) = v184;
            *(v47 + 32) = *v217;
            *v47 = v58;
          }
        }
      }

      else
      {
        if (v49 < v48)
        {
          *v215 = *(v12 + 92);
          *&v215[12] = *(v12 + 104);
          v50 = *(v12 + 76);
          v51 = *(v12 + 60);
          v53 = *(&a2[-7] + 8);
          v52 = *(&a2[-6] + 8);
          v54 = *(&a2[-5] + 4);
          *(v12 + 60) = *v10;
          *(v12 + 104) = v54;
          *(v12 + 92) = v52;
          *(v12 + 76) = v53;
          *v10 = v51;
          goto LABEL_39;
        }

        v68 = *(v12 + 60);
        v186 = *(v12 + 76);
        *&v219[12] = *(v12 + 104);
        *v219 = *(v12 + 92);
        v69 = *(v47 + 44);
        v71 = *(v47 + 16);
        v70 = *(v47 + 32);
        *(v12 + 60) = *v47;
        *(v12 + 92) = v70;
        *(v12 + 104) = v69;
        *(v12 + 76) = v71;
        *(v47 + 44) = *&v219[12];
        *(v47 + 16) = v186;
        *(v47 + 32) = *v219;
        *v47 = v68;
        if (a2[-4].n128_u32[0] < *(v47 + 56))
        {
          *&v215[12] = *(v47 + 44);
          v187 = *(v47 + 16);
          *v215 = *(v47 + 32);
          v160 = *v47;
          v72 = *v10;
          v73 = *(&a2[-7] + 8);
          v74 = *(&a2[-6] + 8);
          *(v47 + 44) = *(a2 - 76);
          *(v47 + 16) = v73;
          *(v47 + 32) = v74;
          *v47 = v72;
          *v10 = v160;
          v50 = v187;
LABEL_39:
          *(a2 - 104) = v50;
          *(a2 - 88) = *v215;
          *(a2 - 76) = *&v215[12];
        }
      }

      v75 = v12 + 60 * v17;
      v76 = *(v75 + 116);
      v77 = a2[-8].n128_u32[1];
      if (v76 >= *(v12 + 176))
      {
        if (v77 < v76)
        {
          *&v221[12] = *(v75 + 104);
          v188 = *(v75 + 76);
          *v221 = *(v75 + 92);
          v161 = *(v75 + 60);
          v83 = *v11;
          v84 = *(&a2[-11] + 12);
          v85 = *(&a2[-10] + 12);
          *(v75 + 104) = *(a2 - 136);
          *(v75 + 92) = v85;
          *(v75 + 76) = v84;
          *(v75 + 60) = v83;
          *v11 = v161;
          *(a2 - 164) = v188;
          *(a2 - 148) = *v221;
          *(a2 - 136) = *&v221[12];
          if (*(v75 + 116) < *(v12 + 176))
          {
            v86 = *(v12 + 120);
            v189 = *(v12 + 136);
            *&v222[12] = *(v12 + 164);
            *v222 = *(v12 + 152);
            v87 = *(v75 + 76);
            v88 = *(v75 + 104);
            v89 = *(v75 + 92);
            *(v12 + 120) = *(v75 + 60);
            *(v12 + 152) = v89;
            *(v12 + 164) = v88;
            *(v12 + 136) = v87;
            *(v75 + 104) = *&v222[12];
            *(v75 + 92) = *v222;
            *(v75 + 76) = v189;
            *(v75 + 60) = v86;
          }
        }
      }

      else
      {
        if (v77 < v76)
        {
          *v220 = *(v12 + 152);
          *&v220[12] = *(v12 + 164);
          v78 = *(v12 + 136);
          v79 = *(v12 + 120);
          v81 = *(&a2[-11] + 12);
          v80 = *(&a2[-10] + 12);
          v82 = *(&a2[-9] + 8);
          *(v12 + 120) = *v11;
          *(v12 + 164) = v82;
          *(v12 + 152) = v80;
          *(v12 + 136) = v81;
          *v11 = v79;
          goto LABEL_48;
        }

        v90 = *(v12 + 120);
        v190 = *(v12 + 136);
        *&v223[12] = *(v12 + 164);
        *v223 = *(v12 + 152);
        v91 = *(v75 + 76);
        v92 = *(v75 + 104);
        v93 = *(v75 + 92);
        *(v12 + 120) = *(v75 + 60);
        *(v12 + 152) = v93;
        *(v12 + 164) = v92;
        *(v12 + 136) = v91;
        *(v75 + 104) = *&v223[12];
        *(v75 + 92) = *v223;
        *(v75 + 76) = v190;
        *(v75 + 60) = v90;
        if (a2[-8].n128_u32[1] < *(v75 + 116))
        {
          *&v220[12] = *(v75 + 104);
          v191 = *(v75 + 76);
          *v220 = *(v75 + 92);
          v162 = *(v75 + 60);
          v94 = *v11;
          v95 = *(&a2[-11] + 12);
          v96 = *(&a2[-10] + 12);
          *(v75 + 104) = *(a2 - 136);
          *(v75 + 92) = v96;
          *(v75 + 76) = v95;
          *(v75 + 60) = v94;
          *v11 = v162;
          v78 = v191;
LABEL_48:
          *(a2 - 164) = v78;
          *(a2 - 148) = *v220;
          *(a2 - 136) = *&v220[12];
        }
      }

      v97 = *(v18 + 56);
      v98 = *(v75 + 116);
      if (v97 >= *(v47 + 56))
      {
        if (v98 < v97)
        {
          *&v225[12] = *(v18 + 44);
          v193 = *(v18 + 16);
          *v225 = *(v18 + 32);
          v164 = *v18;
          v100 = *(v75 + 76);
          *v18 = *(v75 + 60);
          *(v18 + 16) = v100;
          *(v18 + 32) = *(v75 + 92);
          *(v18 + 44) = *(v75 + 104);
          *(v75 + 76) = v193;
          *(v75 + 92) = *v225;
          *(v75 + 104) = *&v225[12];
          *(v75 + 60) = v164;
          if (*(v18 + 56) < *(v47 + 56))
          {
            *&v226[12] = *(v47 + 44);
            v194 = *(v47 + 16);
            *v226 = *(v47 + 32);
            v165 = *v47;
            v101 = *(v18 + 16);
            *v47 = *v18;
            *(v47 + 16) = v101;
            *(v47 + 32) = *(v18 + 32);
            *(v47 + 44) = *(v18 + 44);
            *(v18 + 16) = v194;
            *(v18 + 32) = *v226;
            *(v18 + 44) = *&v226[12];
            *v18 = v165;
          }
        }
      }

      else
      {
        if (v98 < v97)
        {
          *&v224[12] = *(v47 + 44);
          v192 = *(v47 + 16);
          *v224 = *(v47 + 32);
          v163 = *v47;
          v99 = *(v75 + 76);
          *v47 = *(v75 + 60);
          *(v47 + 16) = v99;
          *(v47 + 32) = *(v75 + 92);
          *(v47 + 44) = *(v75 + 104);
          goto LABEL_57;
        }

        *&v227[12] = *(v47 + 44);
        v195 = *(v47 + 16);
        *v227 = *(v47 + 32);
        v166 = *v47;
        v102 = *(v18 + 16);
        *v47 = *v18;
        *(v47 + 16) = v102;
        *(v47 + 32) = *(v18 + 32);
        *(v47 + 44) = *(v18 + 44);
        *(v18 + 16) = v195;
        *(v18 + 32) = *v227;
        *(v18 + 44) = *&v227[12];
        *v18 = v166;
        if (*(v75 + 116) < *(v18 + 56))
        {
          *&v224[12] = *(v18 + 44);
          v192 = *(v18 + 16);
          *v224 = *(v18 + 32);
          v163 = *v18;
          v103 = *(v75 + 76);
          *v18 = *(v75 + 60);
          *(v18 + 16) = v103;
          *(v18 + 32) = *(v75 + 92);
          *(v18 + 44) = *(v75 + 104);
LABEL_57:
          *(v75 + 76) = v192;
          *(v75 + 92) = *v224;
          *(v75 + 104) = *&v224[12];
          *(v75 + 60) = v163;
        }
      }

      *&v228[12] = *(v12 + 44);
      v196 = *(v12 + 16);
      *v228 = *(v12 + 32);
      v167 = *v12;
      v104 = *v18;
      v105 = *(v18 + 16);
      v106 = *(v18 + 32);
      *(v12 + 44) = *(v18 + 44);
      *(v12 + 16) = v105;
      *(v12 + 32) = v106;
      *v12 = v104;
      *(v18 + 44) = *&v228[12];
      *(v18 + 16) = v196;
      *(v18 + 32) = *v228;
      *v18 = v167;
      goto LABEL_59;
    }

    v24 = *(v12 + 56);
    if (v24 >= *(v18 + 56))
    {
      if (v19 < v24)
      {
        *&v212[12] = *(v12 + 44);
        v180 = *(v12 + 16);
        *v212 = *(v12 + 32);
        v155 = *v12;
        v34 = *v9;
        v35 = *(&a2[-3] + 4);
        v36 = *(&a2[-2] + 4);
        *(v12 + 44) = a2[-1];
        *(v12 + 16) = v35;
        *(v12 + 32) = v36;
        *v12 = v34;
        *v9 = v155;
        *(a2 - 44) = v180;
        *(a2 - 28) = *v212;
        a2[-1] = *&v212[12];
        if (*(v12 + 56) < *(v18 + 56))
        {
          *&v213[12] = *(v18 + 44);
          v181 = *(v18 + 16);
          *v213 = *(v18 + 32);
          v156 = *v18;
          v37 = *v12;
          v38 = *(v12 + 16);
          v39 = *(v12 + 32);
          *(v18 + 44) = *(v12 + 44);
          *(v18 + 16) = v38;
          *(v18 + 32) = v39;
          *v18 = v37;
          *(v12 + 44) = *&v213[12];
          *(v12 + 16) = v181;
          *(v12 + 32) = *v213;
          *v12 = v156;
        }
      }
    }

    else
    {
      if (v19 < v24)
      {
        *&v209[12] = *(v18 + 44);
        v177 = *(v18 + 16);
        *v209 = *(v18 + 32);
        v152 = *v18;
        v25 = *v9;
        v26 = *(&a2[-3] + 4);
        v27 = *(&a2[-2] + 4);
        *(v18 + 44) = a2[-1];
        *(v18 + 16) = v26;
        *(v18 + 32) = v27;
        *v18 = v25;
LABEL_36:
        *v9 = v152;
        *(a2 - 44) = v177;
        *(a2 - 28) = *v209;
        a2[-1] = *&v209[12];
        goto LABEL_59;
      }

      *&v218[12] = *(v18 + 44);
      v185 = *(v18 + 16);
      *v218 = *(v18 + 32);
      v159 = *v18;
      v62 = *v12;
      v63 = *(v12 + 16);
      v64 = *(v12 + 32);
      *(v18 + 44) = *(v12 + 44);
      *(v18 + 16) = v63;
      *(v18 + 32) = v64;
      *v18 = v62;
      *(v12 + 44) = *&v218[12];
      *(v12 + 16) = v185;
      *(v12 + 32) = *v218;
      *v12 = v159;
      if (a2[-1].n128_u32[3] < *(v12 + 56))
      {
        *&v209[12] = *(v12 + 44);
        v177 = *(v12 + 16);
        *v209 = *(v12 + 32);
        v152 = *v12;
        v65 = *v9;
        v66 = *(&a2[-3] + 4);
        v67 = *(&a2[-2] + 4);
        *(v12 + 44) = a2[-1];
        *(v12 + 16) = v66;
        *(v12 + 32) = v67;
        *v12 = v65;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *(v12 - 4) >= *(v12 + 56))
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MEOWDistanceCookie *,MEOWSortCookieByCutPoint &>(v12, a2);
      goto LABEL_66;
    }

    v107 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MEOWDistanceCookie *,MEOWSortCookieByCutPoint &>(v12, a2);
    if ((v109 & 1) == 0)
    {
      goto LABEL_64;
    }

    v110 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *>(v12, v107, v108);
    v12 = v107 + 60;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *>(v107 + 60, a2, v111))
    {
      a4 = -v14;
      a2 = v107;
      if (v110)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v110)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *,false>(a1, v107, a3, -v14, a5 & 1);
      v12 = v107 + 60;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v112 = *(v12 + 116);
  v113 = a2[-1].n128_u32[3];
  if (v112 >= *(v12 + 56))
  {
    if (v113 >= v112)
    {
      return result;
    }

    *v232 = *(v12 + 92);
    *&v232[12] = *(v12 + 104);
    v124 = *(v12 + 76);
    v125 = *(v12 + 60);
    v127 = *(&a2[-3] + 4);
    v126 = *(&a2[-2] + 4);
    v128 = a2[-1];
    *(v12 + 60) = *v9;
    *(v12 + 104) = v128;
    *(v12 + 92) = v126;
    *(v12 + 76) = v127;
    *v9 = v125;
    *(a2 - 44) = v124;
    *(a2 - 28) = *v232;
    result = *&v232[12];
    a2[-1] = *&v232[12];
    goto LABEL_109;
  }

  if (v113 >= v112)
  {
    *&v236[12] = *(v12 + 44);
    v203 = *(v12 + 16);
    *v236 = *(v12 + 32);
    v173 = *v12;
    v136 = *(v12 + 76);
    *v12 = *(v12 + 60);
    *(v12 + 16) = v136;
    *(v12 + 32) = *(v12 + 92);
    *(v12 + 44) = *(v12 + 104);
    result = v173;
    *(v12 + 104) = *&v236[12];
    *(v12 + 92) = *v236;
    *(v12 + 76) = v203;
    *(v12 + 60) = v173;
    if (a2[-1].n128_u32[3] >= *(v12 + 116))
    {
      return result;
    }

    *v229 = *(v12 + 92);
    *&v229[12] = *(v12 + 104);
    v117 = *(v12 + 76);
    v137 = *(v12 + 60);
    v139 = *(&a2[-3] + 4);
    v138 = *(&a2[-2] + 4);
    v140 = a2[-1];
    *(v12 + 60) = *v9;
    *(v12 + 104) = v140;
    *(v12 + 92) = v138;
    *(v12 + 76) = v139;
    *v9 = v137;
  }

  else
  {
    *&v229[12] = *(v12 + 44);
    v197 = *(v12 + 16);
    *v229 = *(v12 + 32);
    v168 = *v12;
    v114 = *v9;
    v115 = *(&a2[-3] + 4);
    v116 = *(&a2[-2] + 4);
    *(v12 + 44) = a2[-1];
    *(v12 + 16) = v115;
    *(v12 + 32) = v116;
    *v12 = v114;
    *v9 = v168;
    v117 = v197;
  }

  *(a2 - 44) = v117;
  *(a2 - 28) = *v229;
  result = *&v229[12];
  a2[-1] = *&v229[12];
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __n128 result)
{
  v6 = *(a2 + 14);
  v7 = *(a3 + 14);
  if (v6 >= *(a1 + 14))
  {
    if (v7 < v6)
    {
      *v67 = a2[2];
      *&v67[12] = *(a2 + 44);
      v14 = *a2;
      v13 = a2[1];
      v16 = a3[1];
      v15 = a3[2];
      v17 = *a3;
      *(a2 + 44) = *(a3 + 44);
      a2[1] = v16;
      a2[2] = v15;
      *a2 = v17;
      *a3 = v14;
      a3[1] = v13;
      a3[2] = *v67;
      result = *&v67[12];
      *(a3 + 44) = *&v67[12];
      if (*(a2 + 14) < *(a1 + 14))
      {
        *v68 = a1[2];
        *&v68[12] = *(a1 + 44);
        v19 = *a1;
        v18 = a1[1];
        v21 = a2[1];
        v20 = a2[2];
        v22 = *a2;
        *(a1 + 44) = *(a2 + 44);
        a1[1] = v21;
        a1[2] = v20;
        *a1 = v22;
        *a2 = v19;
        a2[1] = v18;
        a2[2] = *v68;
        result = *&v68[12];
        *(a2 + 44) = *&v68[12];
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      *v66 = a1[2];
      *&v66[12] = *(a1 + 44);
      v9 = *a1;
      v8 = a1[1];
      v11 = a3[1];
      v10 = a3[2];
      v12 = *a3;
      *(a1 + 44) = *(a3 + 44);
      a1[1] = v11;
      a1[2] = v10;
      *a1 = v12;
LABEL_9:
      *a3 = v9;
      a3[1] = v8;
      a3[2] = *v66;
      result = *&v66[12];
      *(a3 + 44) = *&v66[12];
      goto LABEL_10;
    }

    *v69 = a1[2];
    *&v69[12] = *(a1 + 44);
    v24 = *a1;
    v23 = a1[1];
    v26 = a2[1];
    v25 = a2[2];
    v27 = *a2;
    *(a1 + 44) = *(a2 + 44);
    a1[1] = v26;
    a1[2] = v25;
    *a1 = v27;
    *a2 = v24;
    a2[1] = v23;
    a2[2] = *v69;
    result = *&v69[12];
    *(a2 + 44) = *&v69[12];
    if (*(a3 + 14) < *(a2 + 14))
    {
      *v66 = a2[2];
      *&v66[12] = *(a2 + 44);
      v9 = *a2;
      v8 = a2[1];
      v29 = a3[1];
      v28 = a3[2];
      v30 = *a3;
      *(a2 + 44) = *(a3 + 44);
      a2[1] = v29;
      a2[2] = v28;
      *a2 = v30;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 14) < *(a3 + 14))
  {
    *v70 = a3[2];
    *&v70[12] = *(a3 + 44);
    v32 = *a3;
    v31 = a3[1];
    v34 = a4[1];
    v33 = a4[2];
    v35 = *a4;
    *(a3 + 44) = *(a4 + 44);
    a3[1] = v34;
    a3[2] = v33;
    *a3 = v35;
    *a4 = v32;
    a4[1] = v31;
    a4[2] = *v70;
    result = *&v70[12];
    *(a4 + 44) = *&v70[12];
    if (*(a3 + 14) < *(a2 + 14))
    {
      *v71 = a2[2];
      *&v71[12] = *(a2 + 44);
      v37 = *a2;
      v36 = a2[1];
      v39 = a3[1];
      v38 = a3[2];
      v40 = *a3;
      *(a2 + 44) = *(a3 + 44);
      a2[1] = v39;
      a2[2] = v38;
      *a2 = v40;
      *a3 = v37;
      a3[1] = v36;
      a3[2] = *v71;
      result = *&v71[12];
      *(a3 + 44) = *&v71[12];
      if (*(a2 + 14) < *(a1 + 14))
      {
        *v72 = a1[2];
        *&v72[12] = *(a1 + 44);
        v42 = *a1;
        v41 = a1[1];
        v44 = a2[1];
        v43 = a2[2];
        v45 = *a2;
        *(a1 + 44) = *(a2 + 44);
        a1[1] = v44;
        a1[2] = v43;
        *a1 = v45;
        *a2 = v42;
        a2[1] = v41;
        a2[2] = *v72;
        result = *&v72[12];
        *(a2 + 44) = *&v72[12];
      }
    }
  }

  if (*(a5 + 14) < *(a4 + 14))
  {
    *v73 = a4[2];
    *&v73[12] = *(a4 + 44);
    v47 = *a4;
    v46 = a4[1];
    v49 = a5[1];
    v48 = a5[2];
    v50 = *a5;
    *(a4 + 44) = *(a5 + 44);
    a4[1] = v49;
    a4[2] = v48;
    *a4 = v50;
    *a5 = v47;
    a5[1] = v46;
    a5[2] = *v73;
    result = *&v73[12];
    *(a5 + 44) = *&v73[12];
    if (*(a4 + 14) < *(a3 + 14))
    {
      *v74 = a3[2];
      *&v74[12] = *(a3 + 44);
      v52 = *a3;
      v51 = a3[1];
      v54 = a4[1];
      v53 = a4[2];
      v55 = *a4;
      *(a3 + 44) = *(a4 + 44);
      a3[1] = v54;
      a3[2] = v53;
      *a3 = v55;
      *a4 = v52;
      a4[1] = v51;
      a4[2] = *v74;
      result = *&v74[12];
      *(a4 + 44) = *&v74[12];
      if (*(a3 + 14) < *(a2 + 14))
      {
        *v75 = a2[2];
        *&v75[12] = *(a2 + 44);
        v57 = *a2;
        v56 = a2[1];
        v59 = a3[1];
        v58 = a3[2];
        v60 = *a3;
        *(a2 + 44) = *(a3 + 44);
        a2[1] = v59;
        a2[2] = v58;
        *a2 = v60;
        *a3 = v57;
        a3[1] = v56;
        a3[2] = *v75;
        result = *&v75[12];
        *(a3 + 44) = *&v75[12];
        if (*(a2 + 14) < *(a1 + 14))
        {
          *v76 = a1[2];
          *&v76[12] = *(a1 + 44);
          v62 = *a1;
          v61 = a1[1];
          v64 = a2[1];
          v63 = a2[2];
          v65 = *a2;
          *(a1 + 44) = *(a2 + 44);
          a1[1] = v64;
          a1[2] = v63;
          *a1 = v65;
          *a2 = v62;
          a2[1] = v61;
          a2[2] = *v76;
          result = *&v76[12];
          *(a2 + 44) = *&v76[12];
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 60;
    if (result + 60 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 116);
        v6 = *(v4 + 56);
        v4 = v2;
        if (v5 < v6)
        {
          v11 = *v2;
          v12 = *(v2 + 16);
          v13 = *(v2 + 32);
          v14 = *(v2 + 48);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            v9 = *(result + v7 + 16);
            *(v8 + 60) = *(result + v7);
            *(v8 + 76) = v9;
            *(v8 + 92) = *(result + v7 + 32);
            *(v8 + 104) = *(result + v7 + 44);
            if (!v7)
            {
              break;
            }

            v7 -= 60;
            if (v5 >= *(v8 - 4))
            {
              v10 = result + v7 + 60;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v11;
          *(v10 + 16) = v12;
          *(v10 + 32) = v13;
          *(v10 + 48) = v14;
          *(v10 + 56) = v5;
        }

        v2 = v4 + 60;
        v3 += 60;
      }

      while (v4 + 60 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MEOWDistanceCookie *,MEOWSortCookieByCutPoint &>(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v24 = a1[2];
  v25 = *(a1 + 6);
  v4 = *(a1 + 14);
  if (v4 >= *(a2 - 1))
  {
    v8 = a1 + 60;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      v9 = *(v8 + 56);
      v8 += 60;
    }

    while (v4 >= v9);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5 + 60;
      v7 = *(v5 + 29);
      v5 = (v5 + 60);
    }

    while (v4 >= v7);
  }

  if (v6 >= a2)
  {
    v10 = a2;
  }

  else
  {
    do
    {
      v10 = (a2 - 60);
      v11 = *(a2 - 1);
      a2 = (a2 - 60);
    }

    while (v4 < v11);
  }

  while (v6 < v10)
  {
    *&v28[12] = *(v6 + 44);
    v27 = *(v6 + 16);
    *v28 = *(v6 + 32);
    v26 = *v6;
    v12 = *v10;
    v13 = v10[1];
    v14 = v10[2];
    *(v6 + 44) = *(v10 + 44);
    *(v6 + 16) = v13;
    *(v6 + 32) = v14;
    *v6 = v12;
    *(v10 + 44) = *&v28[12];
    v10[1] = v27;
    v10[2] = *v28;
    *v10 = v26;
    do
    {
      v15 = *(v6 + 116);
      v6 += 60;
    }

    while (v4 >= v15);
    do
    {
      v16 = *(v10 - 1);
      v10 = (v10 - 60);
    }

    while (v4 < v16);
  }

  v17 = (v6 - 60);
  if ((v6 - 60) != a1)
  {
    v18 = *v17;
    v19 = *(v6 - 44);
    v20 = *(v6 - 28);
    *(a1 + 44) = *(v6 - 16);
    a1[1] = v19;
    a1[2] = v20;
    *a1 = v18;
  }

  *(v6 - 12) = v25;
  *(v6 - 44) = v23;
  *(v6 - 28) = v24;
  *v17 = v22;
  *(v6 - 4) = v4;
  return v6;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MEOWDistanceCookie *,MEOWSortCookieByCutPoint &>(__int128 *a1, _OWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v26 = a1[2];
  v27 = *(a1 + 6);
  v5 = *(a1 + 14);
  do
  {
    v6 = *(a1 + v2 + 116);
    v2 += 60;
  }

  while (v6 < v5);
  v7 = a1 + v2;
  if (v2 == 60)
  {
    while (v7 < a2)
    {
      v8 = (a2 - 60);
      v10 = *(a2 - 1);
      a2 = (a2 - 60);
      if (v10 < v5)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = (a2 - 60);
      v9 = *(a2 - 1);
      a2 = (a2 - 60);
    }

    while (v9 >= v5);
  }

LABEL_9:
  v11 = v7;
  if (v7 < v8)
  {
    v12 = v8;
    do
    {
      v13 = *v11;
      v28 = *(v11 + 16);
      *&v29[12] = *(v11 + 44);
      *v29 = *(v11 + 32);
      v14 = *(v12 + 44);
      v15 = v12[2];
      v16 = *v12;
      *(v11 + 16) = v12[1];
      *(v11 + 32) = v15;
      *(v11 + 44) = v14;
      *v11 = v16;
      *(v12 + 44) = *&v29[12];
      v12[1] = v28;
      v12[2] = *v29;
      *v12 = v13;
      do
      {
        v17 = *(v11 + 116);
        v11 += 60;
      }

      while (v17 < v5);
      do
      {
        v18 = *(v12 - 1);
        v12 = (v12 - 60);
      }

      while (v18 >= v5);
    }

    while (v11 < v12);
  }

  v19 = (v11 - 60);
  if ((v11 - 60) != a1)
  {
    v20 = *v19;
    v21 = *(v11 - 44);
    v22 = *(v11 - 28);
    *(a1 + 44) = *(v11 - 16);
    a1[1] = v21;
    a1[2] = v22;
    *a1 = v20;
  }

  *(v11 - 12) = v27;
  *(v11 - 44) = v25;
  *(v11 - 28) = v26;
  *v19 = v24;
  *(v11 - 4) = v5;
  return v11 - 60;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1) >> 2);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v9 = (a2 - 60);
      v10 = *(a1 + 116);
      v11 = *(a2 - 4);
      if (v10 < *(a1 + 56))
      {
        if (v11 >= v10)
        {
          v44 = *(a1 + 16);
          *v89 = *(a1 + 32);
          *&v89[12] = *(a1 + 44);
          v45 = *a1;
          v46 = *(a1 + 76);
          *a1 = *(a1 + 60);
          *(a1 + 16) = v46;
          *(a1 + 32) = *(a1 + 92);
          *(a1 + 44) = *(a1 + 104);
          *(a1 + 60) = v45;
          *(a1 + 104) = *&v89[12];
          *(a1 + 92) = *v89;
          *(a1 + 76) = v44;
          if (*(a2 - 4) >= *(a1 + 116))
          {
            return 1;
          }

          *v81 = *(a1 + 92);
          *&v81[12] = *(a1 + 104);
          v12 = *(a1 + 76);
          v13 = *(a1 + 60);
          v48 = *(a2 - 44);
          v47 = *(a2 - 28);
          v49 = *(a2 - 16);
          *(a1 + 60) = *v9;
          *(a1 + 104) = v49;
          *(a1 + 92) = v47;
          *(a1 + 76) = v48;
        }

        else
        {
          *v81 = *(a1 + 32);
          *&v81[12] = *(a1 + 44);
          v13 = *a1;
          v12 = *(a1 + 16);
          v15 = *(a2 - 44);
          v14 = *(a2 - 28);
          v16 = *v9;
          *(a1 + 44) = *(a2 - 16);
          *(a1 + 16) = v15;
          *(a1 + 32) = v14;
          *a1 = v16;
        }

        *v9 = v13;
        *(a2 - 44) = v12;
        *(a2 - 28) = *v81;
        *(a2 - 16) = *&v81[12];
        return 1;
      }

      if (v11 >= v10)
      {
        return 1;
      }

      *v84 = *(a1 + 92);
      *&v84[12] = *(a1 + 104);
      v30 = *(a1 + 76);
      v31 = *(a1 + 60);
      v33 = *(a2 - 44);
      v32 = *(a2 - 28);
      v34 = *(a2 - 16);
      *(a1 + 60) = *v9;
      *(a1 + 104) = v34;
      *(a1 + 92) = v32;
      *(a1 + 76) = v33;
      *v9 = v31;
      *(a2 - 44) = v30;
      *(a2 - 28) = *v84;
      *(a2 - 16) = *&v84[12];
LABEL_50:
      if (*(a1 + 116) < *(a1 + 56))
      {
        v71 = *(a1 + 16);
        *v95 = *(a1 + 32);
        *&v95[12] = *(a1 + 44);
        v72 = *a1;
        v73 = *(a1 + 76);
        *a1 = *(a1 + 60);
        *(a1 + 16) = v73;
        *(a1 + 32) = *(a1 + 92);
        *(a1 + 44) = *(a1 + 104);
        *(a1 + 60) = v72;
        *(a1 + 104) = *&v95[12];
        *(a1 + 92) = *v95;
        *(a1 + 76) = v71;
        return 1;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *,0>(a1, (a1 + 60), (a1 + 120), (a1 + 180), (a2 - 60), a3);
      return 1;
    }

    v24 = *(a1 + 116);
    v25 = *(a1 + 56);
    v26 = *(a1 + 176);
    if (v24 >= v25)
    {
      if (v26 < v24)
      {
        *v87 = *(a1 + 92);
        *&v87[12] = *(a1 + 104);
        v40 = *(a1 + 60);
        v77 = *(a1 + 76);
        *(a1 + 60) = *(a1 + 120);
        *(a1 + 76) = *(a1 + 136);
        *(a1 + 92) = *(a1 + 152);
        *(a1 + 104) = *(a1 + 164);
        *(a1 + 120) = v40;
        *(a1 + 164) = *&v87[12];
        *(a1 + 152) = *v87;
        *(a1 + 136) = v77;
        if (*(a1 + 116) < v25)
        {
          v41 = *(a1 + 16);
          *v88 = *(a1 + 32);
          *&v88[12] = *(a1 + 44);
          v42 = *a1;
          v43 = *(a1 + 76);
          *a1 = *(a1 + 60);
          *(a1 + 16) = v43;
          *(a1 + 32) = *(a1 + 92);
          *(a1 + 44) = *(a1 + 104);
          *(a1 + 60) = v42;
          *(a1 + 104) = *&v88[12];
          *(a1 + 92) = *v88;
          *(a1 + 76) = v41;
        }
      }

      goto LABEL_47;
    }

    if (v26 >= v24)
    {
      v61 = *(a1 + 16);
      *v92 = *(a1 + 32);
      *&v92[12] = *(a1 + 44);
      v62 = *a1;
      v63 = *(a1 + 76);
      *a1 = *(a1 + 60);
      *(a1 + 16) = v63;
      *(a1 + 32) = *(a1 + 92);
      *(a1 + 44) = *(a1 + 104);
      *(a1 + 60) = v62;
      *(a1 + 104) = *&v92[12];
      *(a1 + 92) = *v92;
      *(a1 + 76) = v61;
      if (v26 >= *(a1 + 116))
      {
        goto LABEL_47;
      }

      *v83 = *(a1 + 92);
      *&v83[12] = *(a1 + 104);
      v28 = *(a1 + 60);
      v27 = *(a1 + 76);
      *(a1 + 60) = *(a1 + 120);
      *(a1 + 76) = *(a1 + 136);
      *(a1 + 92) = *(a1 + 152);
      *(a1 + 104) = *(a1 + 164);
    }

    else
    {
      v27 = *(a1 + 16);
      *v83 = *(a1 + 32);
      *&v83[12] = *(a1 + 44);
      v28 = *a1;
      v29 = *(a1 + 136);
      *a1 = *(a1 + 120);
      *(a1 + 16) = v29;
      *(a1 + 32) = *(a1 + 152);
      *(a1 + 44) = *(a1 + 164);
    }

    *(a1 + 120) = v28;
    *(a1 + 164) = *&v83[12];
    *(a1 + 152) = *v83;
    *(a1 + 136) = v27;
LABEL_47:
    if (*(a2 - 4) >= *(a1 + 176))
    {
      return 1;
    }

    v64 = (a2 - 60);
    *v93 = *(a1 + 152);
    *&v93[12] = *(a1 + 164);
    v65 = *(a1 + 136);
    v66 = *(a1 + 120);
    v68 = *(a2 - 44);
    v67 = *(a2 - 28);
    v69 = *(a2 - 16);
    *(a1 + 120) = *(a2 - 60);
    *(a1 + 164) = v69;
    *(a1 + 152) = v67;
    *(a1 + 136) = v68;
    *v64 = v66;
    v64[1] = v65;
    v64[2] = *v93;
    *(v64 + 44) = *&v93[12];
    if (*(a1 + 176) >= *(a1 + 116))
    {
      return 1;
    }

    *v94 = *(a1 + 92);
    *&v94[12] = *(a1 + 104);
    v70 = *(a1 + 60);
    v79 = *(a1 + 76);
    *(a1 + 60) = *(a1 + 120);
    *(a1 + 76) = *(a1 + 136);
    *(a1 + 92) = *(a1 + 152);
    *(a1 + 104) = *(a1 + 164);
    *(a1 + 120) = v70;
    *(a1 + 164) = *&v94[12];
    *(a1 + 152) = *v94;
    *(a1 + 136) = v79;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 4) < *(a1 + 56))
    {
      *v80 = *(a1 + 32);
      *&v80[12] = *(a1 + 44);
      v5 = *a1;
      v4 = *(a1 + 16);
      v6 = *(a2 - 44);
      v7 = *(a2 - 28);
      v8 = *(a2 - 60);
      *(a1 + 44) = *(a2 - 16);
      *(a1 + 16) = v6;
      *(a1 + 32) = v7;
      *a1 = v8;
      *(a2 - 60) = v5;
      *(a2 - 44) = v4;
      *(a2 - 28) = *v80;
      *(a2 - 16) = *&v80[12];
    }

    return 1;
  }

LABEL_13:
  v17 = a1 + 120;
  v18 = *(a1 + 116);
  v19 = *(a1 + 56);
  v20 = *(a1 + 176);
  if (v18 >= v19)
  {
    if (v20 < v18)
    {
      *v85 = *(a1 + 92);
      *&v85[12] = *(a1 + 104);
      v35 = *(a1 + 60);
      v36 = *(a1 + 136);
      *(a1 + 60) = *v17;
      v76 = *(a1 + 76);
      *(a1 + 76) = v36;
      *(a1 + 92) = *(a1 + 152);
      *(a1 + 104) = *(a1 + 164);
      *(a1 + 164) = *&v85[12];
      *(a1 + 136) = v76;
      *(a1 + 152) = *v85;
      *v17 = v35;
      if (*(a1 + 116) < v19)
      {
        v37 = *(a1 + 16);
        *v86 = *(a1 + 32);
        *&v86[12] = *(a1 + 44);
        v38 = *a1;
        v39 = *(a1 + 76);
        *a1 = *(a1 + 60);
        *(a1 + 16) = v39;
        *(a1 + 32) = *(a1 + 92);
        *(a1 + 44) = *(a1 + 104);
        *(a1 + 60) = v38;
        *(a1 + 104) = *&v86[12];
        *(a1 + 92) = *v86;
        *(a1 + 76) = v37;
      }
    }
  }

  else
  {
    if (v20 >= v18)
    {
      v50 = *(a1 + 16);
      *v90 = *(a1 + 32);
      *&v90[12] = *(a1 + 44);
      v51 = *a1;
      v52 = *(a1 + 76);
      *a1 = *(a1 + 60);
      *(a1 + 16) = v52;
      *(a1 + 32) = *(a1 + 92);
      *(a1 + 44) = *(a1 + 104);
      *(a1 + 60) = v51;
      *(a1 + 104) = *&v90[12];
      *(a1 + 92) = *v90;
      *(a1 + 76) = v50;
      if (v20 >= *(a1 + 116))
      {
        goto LABEL_33;
      }

      *v82 = *(a1 + 92);
      *&v82[12] = *(a1 + 104);
      v22 = *(a1 + 60);
      v53 = *(a1 + 136);
      *(a1 + 60) = *v17;
      v21 = *(a1 + 76);
      *(a1 + 76) = v53;
      *(a1 + 92) = *(a1 + 152);
      *(a1 + 104) = *(a1 + 164);
    }

    else
    {
      v21 = *(a1 + 16);
      *v82 = *(a1 + 32);
      *&v82[12] = *(a1 + 44);
      v22 = *a1;
      v23 = *(a1 + 136);
      *a1 = *v17;
      *(a1 + 16) = v23;
      *(a1 + 32) = *(a1 + 152);
      *(a1 + 44) = *(a1 + 164);
    }

    *(a1 + 164) = *&v82[12];
    *(a1 + 136) = v21;
    *(a1 + 152) = *v82;
    *v17 = v22;
  }

LABEL_33:
  v54 = a1 + 180;
  if (a1 + 180 == a2)
  {
    return 1;
  }

  v55 = 0;
  v56 = 0;
  while (1)
  {
    v57 = *(v54 + 56);
    if (v57 < *(v17 + 56))
    {
      v75 = *v54;
      v78 = *(v54 + 16);
      v91 = *(v54 + 32);
      v96 = *(v54 + 48);
      v58 = v55;
      while (1)
      {
        v59 = a1 + v58;
        *(v59 + 180) = *(a1 + v58 + 120);
        *(v59 + 196) = *(a1 + v58 + 136);
        *(v59 + 212) = *(a1 + v58 + 152);
        *(v59 + 224) = *(a1 + v58 + 164);
        if (v58 == -120)
        {
          break;
        }

        v58 -= 60;
        if (v57 >= *(v59 + 116))
        {
          v60 = a1 + v58 + 180;
          goto LABEL_41;
        }
      }

      v60 = a1;
LABEL_41:
      *v60 = v75;
      *(v60 + 16) = v78;
      *(v60 + 32) = v91;
      *(v60 + 48) = v96;
      *(v60 + 56) = v57;
      if (++v56 == 8)
      {
        return v54 + 60 == a2;
      }
    }

    v17 = v54;
    v55 += 60;
    v54 += 60;
    if (v54 == a2)
    {
      return 1;
    }
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *,MEOWDistanceCookie *>(uint64_t a1, __n128 *a2, __n128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1) >> 2);
    if (a2 - a1 >= 61)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 60 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *>(a1, a4, v9, v12);
        v12 = (v12 - 60);
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (v13[3].n128_u32[2] < *(a1 + 56))
        {
          *v38 = v13[2];
          *&v38[12] = *(v13 + 44);
          v15 = *v13;
          v14 = v13[1];
          v17 = *(a1 + 16);
          v16 = *(a1 + 32);
          v18 = *a1;
          *(v13 + 44) = *(a1 + 44);
          v13[1] = v17;
          v13[2] = v16;
          *v13 = v18;
          *a1 = v15;
          *(a1 + 16) = v14;
          *(a1 + 32) = *v38;
          *(a1 + 44) = *&v38[12];
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *>(a1, a4, v9, a1);
        }

        v13 = (v13 + 60);
      }

      while (v13 != a3);
    }

    if (v8 >= 61)
    {
      v19 = 0xEEEEEEEEEEEEEEEFLL * (v8 >> 2);
      do
      {
        v20 = 0;
        v36 = *a1;
        v37 = *(a1 + 16);
        *v39 = *(a1 + 32);
        *&v39[12] = *(a1 + 44);
        v21 = a1;
        do
        {
          v22 = v21 + 60 * v20;
          v23 = (v22 + 60);
          v24 = (2 * v20) | 1;
          v20 = 2 * v20 + 2;
          if (v20 >= v19)
          {
            v20 = v24;
          }

          else
          {
            v25 = *(v22 + 29);
            v26 = *(v22 + 44);
            v27 = (v22 + 120);
            if (v25 >= v26)
            {
              v20 = v24;
            }

            else
            {
              v23 = v27;
            }
          }

          v28 = *v23;
          v29 = v23[1];
          v30 = v23[2];
          *(v21 + 44) = *(&v23[2] + 12);
          v21[1] = v29;
          v21[2] = v30;
          *v21 = v28;
          v21 = v23;
        }

        while (v20 <= ((v19 - 2) >> 1));
        v6 = (v6 - 60);
        if (v23 == v6)
        {
          *(v23 + 44) = *&v39[12];
          v23[1] = v37;
          v23[2] = *v39;
          *v23 = v36;
        }

        else
        {
          v31 = *v6;
          v32 = v6[1];
          v33 = v6[2];
          *(v23 + 44) = *(v6 + 44);
          v23[1] = v32;
          v23[2] = v33;
          *v23 = v31;
          *v6 = v36;
          v6[1] = v37;
          v6[2] = *v39;
          *(v6 + 44) = *&v39[12];
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *>(a1, &v23[3].n128_i64[1] + 4, a4, 0xEEEEEEEEEEEEEEEFLL * ((&v23[3].n128_i64[1] - a1 + 4) >> 2));
        }
      }

      while (v19-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xEEEEEEEEEEEEEEEFLL * ((a4 - a1) >> 2)))
    {
      v5 = (0xDDDDDDDDDDDDDDDELL * ((a4 - a1) >> 2)) | 1;
      v6 = (a1 + 60 * v5);
      if ((0xDDDDDDDDDDDDDDDELL * ((a4 - a1) >> 2) + 2) < a3)
      {
        v7 = *(v6 + 14) >= *(v6 + 29);
        v8 = 60;
        if (*(v6 + 14) >= *(v6 + 29))
        {
          v8 = 0;
        }

        v6 = (v6 + v8);
        if (!v7)
        {
          v5 = 0xDDDDDDDDDDDDDDDELL * ((a4 - a1) >> 2) + 2;
        }
      }

      v9 = a4[3].n128_u32[2];
      if (*(v6 + 14) >= v9)
      {
        v21 = *a4;
        v22 = a4[1];
        v23 = a4[2];
        v24 = a4[3].n128_i64[0];
        do
        {
          v10 = a4;
          a4 = v6;
          v11 = *v6;
          v12 = v6[1];
          v13 = v6[2];
          *(&v10[2] + 12) = *(v6 + 44);
          v10[1] = v12;
          v10[2] = v13;
          *v10 = v11;
          if (v4 < v5)
          {
            break;
          }

          v14 = (2 * v5) | 1;
          v6 = (a1 + 60 * v14);
          v15 = 2 * v5 + 2;
          if (v15 < a3)
          {
            v16 = *(v6 + 14);
            v17 = *(v6 + 29);
            v18 = v16 >= v17;
            if (v16 >= v17)
            {
              v19 = 0;
            }

            else
            {
              v19 = 60;
            }

            v6 = (v6 + v19);
            if (!v18)
            {
              v14 = v15;
            }
          }

          v5 = v14;
        }

        while (*(v6 + 14) >= v9);
        result = v21;
        a4[3].n128_u64[0] = v24;
        a4[1] = v22;
        a4[2] = v23;
        *a4 = v21;
        a4[3].n128_u32[2] = v9;
      }
    }
  }

  return result;
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MEOWSortCookieByCutPoint &,MEOWDistanceCookie *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (a1 + 60 * (v4 >> 1));
    v7 = *(a2 - 4);
    if (*(v6 + 14) < v7)
    {
      v8 = (a2 - 60);
      v14 = *(a2 - 60);
      v15 = *(a2 - 44);
      v16 = *(a2 - 28);
      v17 = *(a2 - 12);
      do
      {
        v9 = v8;
        v8 = v6;
        v10 = *v6;
        v11 = v6[1];
        v12 = v6[2];
        *(v9 + 44) = *(v6 + 44);
        v9[1] = v11;
        v9[2] = v12;
        *v9 = v10;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 60 * v5);
      }

      while (*(v6 + 14) < v7);
      *v8 = v14;
      v8[1] = v15;
      result = v16;
      v8[2] = v16;
      *(v8 + 6) = v17;
      *(v8 + 14) = v7;
    }
  }

  return result;
}

void MTBEPhraseMemo::MTBEPhraseMemo(MTBEPhraseMemo *this, const MTBEPhraseParam *a2)
{
  MTBEPersistentParam::MTBEPersistentParam((this + 8), *(a2 + 5));
  v4 = *(a2 + 3);
  *(this + 28) = &unk_2868F4960;
  v5 = *(v4 + 8);
  v6 = *(v4 + 24);
  v7 = *(v4 + 40);
  *(this + 70) = *(v4 + 56);
  *(this + 264) = v7;
  *(this + 248) = v6;
  *(this + 232) = v5;
  v8[0] = &unk_2868F7C60;
  *this = MTFEClone::Clone(v8, *(a2 + 1));
  MTFESpeechVisitor::~MTFESpeechVisitor(v8);
}

void sub_257B59B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MTFESpeechVisitor::~MTFESpeechVisitor(va);
  MTBENotifier::~MTBENotifier(v3);
  MTBEPersistentParam::~MTBEPersistentParam((v2 + 8));
  _Unwind_Resume(a1);
}

void MTBEPhraseMemo::~MTBEPhraseMemo(MTBEPhraseMemo *this)
{
  v2 = *this;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  MTBENotifier::~MTBENotifier((this + 224));
  MTBEPersistentParam::~MTBEPersistentParam((this + 8));
}

__n128 MTBEPhraseMemo::Thaw(MTBEPhraseMemo *this, MTBEPhraseParam *a2)
{
  *(a2 + 1) = *this;
  *this = 0;
  MTBEPersistentParam::operator=(*(a2 + 5), this + 8);
  v4 = *(a2 + 3);
  v5 = *(this + 70);
  result = *(this + 264);
  v7 = *(this + 248);
  *(v4 + 8) = *(this + 232);
  *(v4 + 24) = v7;
  *(v4 + 40) = result;
  *(v4 + 56) = v5;
  return result;
}

uint64_t MTFEClone::Clone(MTFEClone *this, MTFESpeechElement *a2)
{
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  (*a2->var0)(a2, this);
  return *(this + 3);
}

MTFESpeechElement *MTFEClone::PushRoot(MTFEClone *this, MTFESpeechElement *a2)
{
  if (!*(this + 3))
  {
    *(this + 3) = a2;
  }

  MTFESpeechElement::CleanseClone(a2);
  result = *(this + 1);
  if (result)
  {
    result = MTFESpeechElement::AddChildAfter(result, a2, result->var4);
  }

  *(this + 1) = a2;
  return result;
}

void MTFEClone::~MTFEClone(MTFEClone *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MT3BFloatSegmentProducer::MT3BFloatSegmentProducer(uint64_t a1, uint64_t a2, MT3BFloatSegmentProducer *this, __int16 *a4)
{
  *a1 = &unk_2868F7CE8;
  *(a1 + 8) = a2;
  *(a1 + 16) = this;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 96) = -1;
  *(a1 + 100) = 0;
  v5 = a4[6];
  *(a1 + 452) = 4096;
  *(a1 + 448) = v5 * 0.04;
  v6 = &MT3BFloatSegmentProducer::sHPNoise;
  if (a4[30] == 1)
  {
    v6 = &MT3BFloatSegmentProducer::sNoiseWave;
  }

  if (a4[30])
  {
    v7 = v6;
  }

  else
  {
    v7 = &MT3BFloatSegmentProducer::sBandNoise;
  }

  *(a1 + 472) = v7;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v8 = a4[8];
  if (v8 >= 801)
  {
    v8 = MTBEParam::HzToPitch(this, a4[8]);
    this = *(a1 + 16);
    a4 = *(a1 + 24);
  }

  v9 = MTBEParam::HzToPitch(this, a4[10]);
  v10 = MTBEParam::HzToPitch(*(a1 + 16), *(*(a1 + 24) + 24));
  v11 = MTBEParam::HzToPitch(*(a1 + 16), 0x125Cu);
  v12 = MTBEParam::HzToPitch(*(a1 + 16), *(*(a1 + 24) + 32));
  *(a1 + 440) = v12;
  MT3BFloatSegmentProducer::CalcPoleCoefficients(v12, v8, *(*(a1 + 24) + 18), (a1 + 324), (a1 + 328), (a1 + 332));
  MT3BFloatSegmentProducer::CalcPoleCoefficients(v13, v9, *(*(a1 + 24) + 22), (a1 + 360), (a1 + 364), (a1 + 368));
  *(a1 + 360) = *(a1 + 360) * 0.4;
  MT3BFloatSegmentProducer::CalcPoleCoefficients(v14, v10, *(*(a1 + 24) + 26), (a1 + 336), (a1 + 340), (a1 + 344));
  *(a1 + 336) = *(a1 + 336) * 0.4;
  MT3BFloatSegmentProducer::CalcPoleCoefficients(v15, v11, *(*(a1 + 24) + 30), (a1 + 348), (a1 + 352), (a1 + 356));
  *(a1 + 348) = *(a1 + 348) * 0.4;
  MT3BFloatSegmentProducer::CalcPoleCoefficients(v16, *(a1 + 440), *(*(a1 + 24) + 36), (a1 + 384), (a1 + 388), (a1 + 392));
  *(a1 + 180) = 0u;
  *(a1 + 428) = 0;
  *(a1 + 196) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 424) = *(a1 + 448) * 0.4;
  *(a1 + 176) = 0;
  *(a1 + 464) = 0;
  v17 = *(a1 + 24);
  *(a1 + 444) = *(v17 + 312) * 0.01;
  v18 = *(v17 + 310);
  *(a1 + 456) = v18;
  if (v18 > 100)
  {
    v18 = 100;
LABEL_12:
    *(a1 + 456) = v18;
    goto LABEL_13;
  }

  if (v18 <= 9)
  {
    v18 = 10;
    goto LABEL_12;
  }

LABEL_13:
  *(a1 + 456) = (v18 << 16) / 100;
  *(a1 + 480) = (2318 * ((v18 << 16) / 100)) >> 16;
  *(a1 + 482) = (2909 * ((v18 << 16) / 100)) >> 16;
  *(a1 + 484) = (3723 * ((v18 << 16) / 100)) >> 16;
  v19 = ((v18 << 16) / 100) >> 4;
  *(a1 + 486) = v19;
  *(a1 + 438) = v19;
  *(a1 + 436) = 0;
  bzero((a1 + 496), 0x2000uLL);
}

float MT3BFloatSegmentProducer::CalcPoleCoefficients(MT3BFloatSegmentProducer *this, float a2, float a3, float *a4, float *a5, float *a6)
{
  if (a3 > 1225.0)
  {
    a3 = 1225.0;
  }

  if (a3 < 50.0)
  {
    a3 = 50.0;
  }

  if (a2 < 256.0)
  {
    a2 = 256.0;
  }

  v6 = (((1717986919 * (a3 - 50)) >> 33) + ((1717986919 * (a3 - 50)) >> 63));
  *a6 = sCcoeffTbl[v6];
  v7 = sCosTbl[a2 - 256] * sBcoeffTbl[v6];
  *a5 = v7;
  result = (1.0 - v7) - *a6;
  *a4 = result;
  return result;
}

BOOL MT3BFloatSegmentProducer::NextSegment(MT3BFloatSegmentProducer *this, MTMBSegment *a2)
{
  v4 = *(this + 24);
  if ((v4 & 0x80000000) == 0)
  {
    if (!v4)
    {
      return v4 != 0;
    }

LABEL_5:
    v27 = *(this + 20);
    v19 = *(this + 42);
    v21 = *(this + 22);
    v26 = *(this + 23);
    v5 = *(this + 24);
    v6 = *(this + 25);
    v7 = *(this + 26);
    v8 = *(this + 27);
    v22 = *(this + 28);
    v23 = *(this + 29);
    v24 = *(this + 30);
    v25 = *(this + 31);
    v17 = *(this + 32);
    v20 = *(this + 33);
    v9 = *(this + 34);
    v10 = *(this + 35);
    v16 = *(this + 36);
    v18 = *(this + 10);
    v15 = *(this + 11);
    Frame = MTFEFrameFiller::FillNextFrame(*(this + 1), this + 40);
    *(this + 24) = Frame;
    if (!Frame || *(this + 42))
    {
      *(this + 226) |= *(this + 100) << 7;
      *(this + 100) = *(*(this + 1) + 80);
    }

    if (v19)
    {
      v12 = *(this + 4);
      if (v12)
      {
        if ((*v12)-- == 1)
        {
          MEMORY[0x259C6DA90]();
        }
      }

      operator new();
    }

    MTMBSegment::Allocate(a2, 0);
  }

  v4 = MTFEFrameFiller::FillNextFrame(*(this + 1), this + 40);
  *(this + 24) = v4;
  *(this + 100) = *(*(this + 1) + 80);
  if (v4)
  {
    goto LABEL_5;
  }

  return v4 != 0;
}

float MT3BFloatSegmentProducer::CalcZeroCoefficients(MT3BFloatSegmentProducer *this, float a2, float a3, float *a4, float *a5, float *a6)
{
  if (a3 > 1225.0)
  {
    a3 = 1225.0;
  }

  v6 = (((1717986919 * (a3 - 50)) >> 33) + ((1717986919 * (a3 - 50)) >> 63));
  *a6 = -sCcoeffTbl[v6];
  v7 = -(sBcoeffTbl[v6] * sCosTbl[a2 - 256]);
  *a5 = v7;
  result = (v7 + 1.0) + *a6;
  *a4 = result;
  return result;
}

void MT3BFloatSegmentProducer::~MT3BFloatSegmentProducer(MT3BFloatSegmentProducer *this)
{
  MTMBProducerComponent::~MTMBProducerComponent(this);

  JUMPOUT(0x259C6DA90);
}

void MTMBModRateWsola::MTMBModRateWsola(MTMBModRateWsola *this)
{
  *this = &unk_2868F7D58;
  *(this + 5) = 0;
  MEOWVectorBase::MEOWVectorBase((this + 24), 4);
  MEOWVectorBase::MEOWVectorBase((this + 56), 4);
  MEOWVectorBase::MEOWVectorBase((this + 88), 4);
  MEOWVectorBase::MEOWVectorBase((this + 120), 4);
  *(this + 152) = 1;
  *(this + 39) = 0;
  *(this + 1) = 0x1A000000058;
  *(this + 4) = 208;
  if (*(this + 6) > 0xCFuLL)
  {
    v2 = 416;
  }

  else
  {
    MEOWVectorBase::Allocate((this + 24), 0xD0uLL, 1);
    v2 = *(this + 3);
  }

  *(this + 5) = 208;
  v3 = v2;
  if (*(this + 10) < v2)
  {
    MEOWVectorBase::Allocate((this + 56), v2, 1);
    v3 = *(this + 3);
  }

  *(this + 9) = v2;
  v4 = v3;
  if (*(this + 18) < v3)
  {
    MEOWVectorBase::Allocate((this + 120), v3, 1);
    v4 = *(this + 3);
  }

  *(this + 17) = v3;
  v5 = v4;
  if (*(this + 14) < v4)
  {
    MEOWVectorBase::Allocate((this + 88), v4, 1);
    v5 = *(this + 3);
  }

  *(this + 13) = v4;
  vDSP_hann_window(*(this + 11), v5, 0);
  (*(*this + 32))(this, 1.0);
  if (kModRateUseFFT)
  {
    MTBEDebugParams::GetParam(kModRateUseFFT, &byte_27F8F2808, byte_27F8F2808);
    kModRateUseFFT = 0;
  }

  if (byte_27F8F2808 == 1)
  {
    operator new();
  }

  operator new();
}

void sub_257B5B7E0(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x259C6DA90](v3, 0x1081C40EA7901CCLL);
  MEOWVectorBase::~MEOWVectorBase(v1 + 15);
  MEOWVectorBase::~MEOWVectorBase(v1 + 11);
  MEOWVectorBase::~MEOWVectorBase(v1 + 7);
  MEOWVectorBase::~MEOWVectorBase(v1 + 3);
  _Unwind_Resume(a1);
}

void MTMBModRateWsola::~MTMBModRateWsola(MTMBModRateWsola *this)
{
  *this = &unk_2868F7D58;
  v2 = *(this + 22);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MEOWVectorBase::~MEOWVectorBase(this + 15);
  MEOWVectorBase::~MEOWVectorBase(this + 11);
  MEOWVectorBase::~MEOWVectorBase(this + 7);
  MEOWVectorBase::~MEOWVectorBase(this + 3);
}

{
  MTMBModRateWsola::~MTMBModRateWsola(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTMBModRateWsola::SetScaleFactor(MTFESpeechElement *this, float a2)
{
  if (*(&this[2].var6 + 1) != a2)
  {
    v3 = this;
    if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      this = MTBEAbort(0);
    }

    *(v3 + 156) = a2;
    *(v3 + 160) = rintf(*(v3 + 16) / a2);
  }

  return this;
}

uint64_t MTMBModRateWsola::Reset(MTMBModRateWsola *this, float a2)
{
  *(this + 152) = 1;
  *(this + 5) = 0;
  result = (*(*this + 32))(this, a2);
  *(this + 41) = 0;
  *(this + 42) = 0;
  return result;
}

BOOL MTMBModRateWsola::HasEnoughData(MTMBModRateWsola *this, unsigned int a2)
{
  if (*(this + 152) == 1)
  {
    v2 = *(this + 4) + *(this + 3);
  }

  else
  {
    v2 = vaddvq_s32(*(this + 8));
  }

  return v2 <= a2;
}

void MTMBModRateWsola::ModifyRate(uint64_t a1, MEOWVectorBase *this, MEOWVectorBase *a3, _DWORD *a4, int a5)
{
  *a4 = *(this + 2);
  v10 = *(a1 + 16);
  if (*(a3 + 2) != v10)
  {
    if (*(a3 + 3) < v10)
    {
      MEOWVectorBase::Allocate(a3, v10, 1);
    }

    *(a3 + 2) = v10;
  }

  if (*(a1 + 152))
  {
    v11 = 0;
    *(a1 + 152) = 0;
    *(a1 + 164) = 0;
LABEL_8:
    v12 = *(this + 4) - v11;
    if (*(a1 + 16) < v12)
    {
      v12 = *(a1 + 16);
    }

    v13 = v12 & ~(v12 >> 31);
    if (v12 >= 1)
    {
      memcpy(*a3, (*this + 4 * v11), 4 * v12);
    }

    if (*(a3 + 3) < v13)
    {
      MEOWVectorBase::Allocate(a3, v13, 1);
    }

    *(a3 + 2) = v13;
    goto LABEL_15;
  }

  v11 = *(a1 + 20);
  if (*(a1 + 156) == 1.0)
  {
    goto LABEL_8;
  }

  v29 = *(a1 + 8);
  v30 = *(this + 4);
  v31 = v30 - *(a1 + 12);
  if (v31 >= v29 + v11)
  {
    v32 = (v29 + v11);
  }

  else
  {
    v32 = v31;
  }

  v33 = v30 - v11;
  if (v30 >= v11)
  {
    v40 = (v11 - v29) & ~((v11 - v29) >> 31);
    if (v32 <= v40)
    {
      v44 = *(a1 + 16);
      if (v44 >= v33)
      {
        v45 = v33;
      }

      else
      {
        v45 = *(a1 + 16);
      }

      if (v45 >= 1)
      {
        memcpy(*(a1 + 120), (*this + 4 * v11), 4 * v45);
        v44 = *(a1 + 16);
      }

      v35 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (!((v46 < 0) ^ v35 | (v46 == 0)))
      {
        bzero((*(a1 + 120) + 4 * v45), 4 * v46);
      }

      if ((MTBEDebugFlags::sMTXDebug & 0x20000) != 0)
      {
        fprintf(*MEMORY[0x277D85DF8], "WSOLA overlap-add %d %d\n", v11, *(this + 2));
      }

      __N = *(a1 + 16);
      v48 = *(a1 + 88);
      v49 = &v48[__N];
      v50 = *(a1 + 24);
      v51 = *(a1 + 120);
    }

    else
    {
      v41 = *(a1 + 164);
      v42 = *(a1 + 172);
      if (v41 + v40 > v42 || v41 + v32 < v42)
      {
        v11 = (*(**(a1 + 176) + 16))(*(a1 + 176), this, a1 + 56, a1 + 88, v40, v32);
        v52 = "highest correlation";
      }

      else
      {
        v11 = v42 - v41;
        v52 = "optimal";
      }

      if ((MTBEDebugFlags::sMTXDebug & 0x20000) != 0)
      {
        fprintf(*MEMORY[0x277D85DF8], "WSOLA found %s %d %d %d %d\n", v52, v11, *(this + 2), v40, v32);
      }

      __N = *(a1 + 16);
      v48 = *(a1 + 88);
      v49 = &v48[__N];
      v50 = *(a1 + 24);
      v51 = (*this + 4 * v11);
    }

    vDSP_vmma(v49, 1, v50, 1, v48, 1, v51, 1, *a3, 1, __N);
  }

  else
  {
    if ((MTBEDebugFlags::sMTXDebug & 0x20000) != 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "WSOLA no data %d %d\n", *(a1 + 20), v30);
    }

    memcpy(*a3, *(a1 + 24), 4 * *(a1 + 16));
  }

LABEL_15:
  if ((MTBEDebugFlags::sMTXDebug & 0x20000) != 0)
  {
    v14 = (*(a1 + 164) + v11) / 22050.0;
    fprintf(*MEMORY[0x277D85DF8], "%d %d [%f,%f]\n", v11, *(a1 + 164), v14, v14 + 0.02);
  }

  v15 = *(a1 + 16);
  if (a5)
  {
    v16 = (v15 + v11);
    v17 = *(this + 2);
    if (v17 > v16)
    {
      MEOWVectorBase::Append(a3, (*this + 4 * v16), v17 - v16);
    }

    MEOWVectorBase::clear(this);
    if ((MTBEDebugFlags::sMTXDebug & 0x20000) != 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "last segment [%f,%f]\n", (*(a1 + 16) + v11 + *(a1 + 164)) / 22050.0, (*(this + 2) + *(a1 + 164)) / 22050.0);
    }

    (*(*a1 + 48))(a1, *(a1 + 156));
    v18 = *(a1 + 24);
    v19 = 4 * *(a1 + 16);

    bzero(v18, v19);
  }

  else
  {
    v20 = *(this + 4) - (v15 + v11);
    if (v20 >= v15)
    {
      v20 = *(a1 + 16);
    }

    v21 = v20 & ~(v20 >> 31);
    if (v20 >= 1)
    {
      memcpy(*(a1 + 24), (*this + 4 * (v15 + v11)), 4 * v20);
      v15 = *(a1 + 16);
    }

    if (v15 > v21)
    {
      bzero((*(a1 + 24) + 4 * v21), 4 * (v15 - v21));
      v15 = *(a1 + 16);
    }

    v22 = v15 + v11;
    *(a1 + 172) = v22 + *(a1 + 164);
    v23 = *(a1 + 12);
    v24 = *(this + 4) - v22;
    if (v24 >= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    v26 = v25 & ~(v25 >> 31);
    if (v25 >= 1)
    {
      v27 = (*(**(a1 + 176) + 24))(*(a1 + 176));
      v28 = *this + 4 * (*(a1 + 16) + v11);
      if (v27)
      {
        MEMORY[0x259C6E700](*(a1 + 88), 1, *this + 4 * (*(a1 + 16) + v11), 1, *(a1 + 56), 1, v25);
      }

      else
      {
        memcpy(*(a1 + 56), (*this + 4 * (*(a1 + 16) + v11)), 4 * v25);
      }
    }

    v34 = *(a1 + 12);
    v35 = __OFSUB__(v34, v26);
    v36 = v34 - v26;
    if (!((v36 < 0) ^ v35 | (v36 == 0)))
    {
      bzero((*(a1 + 56) + 4 * v26), 4 * v36);
    }

    v37 = *(a1 + 160) + *(a1 + 20);
    v38 = v37 - *(a1 + 8);
    a4[1] = v38;
    if (v38 < 0)
    {
      *(a1 + 20) = v37;
    }

    else
    {
      v39 = *(this + 2);
      if (v38 >= v39)
      {
        *(a1 + 20) = v37 - v39;
        *(a1 + 164) += v39;
        MEOWVectorBase::clear(this);
      }

      else
      {
        MEOWVector<float>::MEOWVector(v53, (*this + 4 * v38), *this + 4 * v39);
        MEOWVector<float>::operator=(this, v53);
        *(a1 + 20) = *(a1 + 8);
        *(a1 + 164) += v38;
        MEOWVectorBase::~MEOWVectorBase(v53);
      }
    }

    ++*(a1 + 168);
  }
}

void sub_257B5C048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

void MEOWVector<float>::operator=(uint64_t *a1, const MEOWVectorBase *a2)
{
  MEOWVectorBase::MEOWVectorBase(v3, a2);
  MEOWVectorBase::Swap(a1, v3);
  MEOWVectorBase::~MEOWVectorBase(v3);
}

void CorrelationFFT::CorrelationFFT(CorrelationFFT *this, int a2, int a3)
{
  *this = &unk_2868F7DA0;
  MEOWVectorBase::MEOWVectorBase((this + 8), 4);
  *(this + 28) = a3;
  *(this + 29) = a2;
  v6 = vcvtps_u32_f32(log2f((2 * (a3 + a2) - 2)));
  *(this + 12) = v6;
  v7 = (1 << v6);
  *(this + 26) = v7;
  *(this + 27) = v7 >> 1;
  if (*(this + 4) < v7)
  {
    MEOWVectorBase::Allocate((this + 8), v7, 1);
    v8 = *(this + 27);
  }

  *(this + 3) = v7;
  operator new[]();
}

void CorrelationFFT::~CorrelationFFT(CorrelationFFT *this)
{
  *this = &unk_2868F7DA0;
  v2 = CorrelationFFT::deallocComplexSplit(this, (this + 40));
  v3 = CorrelationFFT::deallocComplexSplit(v2, (this + 56));
  CorrelationFFT::deallocComplexSplit(v3, (this + 72));
  vDSP_destroy_fftsetup(*(this + 11));
  MEOWVectorBase::~MEOWVectorBase(this + 1);
}

{
  CorrelationFFT::~CorrelationFFT(this);

  JUMPOUT(0x259C6DA90);
}

float *CorrelationFFT::deallocComplexSplit(CorrelationFFT *this, DSPSplitComplex *a2)
{
  if (a2->realp)
  {
    MEMORY[0x259C6DA70](a2->realp, 0x1000C8052888210);
  }

  result = a2->imagp;
  if (result)
  {

    JUMPOUT(0x259C6DA70);
  }

  return result;
}

uint64_t CorrelationFFT::FindBestCorrelationIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v11 = (a1 + 40);
  v12 = 4 * *(a1 + 108);
  bzero(*(a1 + 40), v12);
  bzero(*(a1 + 48), v12);
  v13 = 4 * *(a1 + 108);
  bzero(*(a1 + 56), v13);
  bzero(*(a1 + 64), v13);
  v14 = a6 - a5 + *(a1 + 116);
  v15 = *(a2 + 16) - a5 - (*(a1 + 116) >> 1);
  if (v15 >= v14)
  {
    v15 = a6 - a5 + *(a1 + 116);
  }

  v16 = v15 & 0xFFFFFFFE;
  v17 = *(a3 + 16);
  vDSP_ctoz((*a2 + 4 * a5), 2, v11, 1, v14 >> 1);
  vDSP_ctoz(*a3, 2, (a1 + 56), 1, v17 >> 1);
  vDSP_fft_zrip(*(a1 + 88), v11, 1, *(a1 + 96), 1);
  vDSP_fft_zrip(*(a1 + 88), (a1 + 56), 1, *(a1 + 96), 1);
  vDSP_zvcmul((a1 + 56), 1, v11, 1, (a1 + 72), 1, *(a1 + 108));
  vDSP_fft_zrip(*(a1 + 88), (a1 + 72), 1, *(a1 + 96), -1);
  bzero(*(a1 + 8), 4 * *(a1 + 24));
  vDSP_ztoc((a1 + 72), 1, *(a1 + 8), 2, *(a1 + 108));
  __C = 0.0;
  v19 = 0;
  vDSP_maxvi(*(a1 + 8), 1, &__C, &v19, v16);
  return (v19 + a5);
}

void CorrelationFFT::zeroFillComplexSplit(CorrelationFFT *this, DSPSplitComplex *a2, int a3)
{
  v4 = 4 * a3;
  bzero(a2->realp, v4);
  imagp = a2->imagp;

  bzero(imagp, v4);
}

void CorrelationTimeDomain::CorrelationTimeDomain(CorrelationTimeDomain *this, unsigned int a2)
{
  *this = &unk_2868F7DD0;
  MEOWVectorBase::MEOWVectorBase((this + 8), 4);
  *(this + 10) = a2;
  if (*(this + 4) < a2)
  {
    MEOWVectorBase::Allocate((this + 8), a2, 1);
  }

  *(this + 3) = a2;
}

uint64_t CorrelationTimeDomain::FindBestCorrelationIndex(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5, int a6)
{
  MEOWVectorBase::MEOWVectorBase(__dst, 4, *(a4 + 16));
  v12 = 0;
  __C = 0.0;
  if (a5 <= a6)
  {
    LODWORD(v12) = 0;
    v13 = a6 + 1;
    v14 = 4 * a5;
    v15 = 3.4028e38;
    do
    {
      memcpy(__dst[0], (*a2 + v14), 4 * *(a1 + 40));
      MEMORY[0x259C6E6F0](*a4, 1, __dst[0], 1, *a3, 1, *(a1 + 8), 1, *(a1 + 40));
      vDSP_svemg(*(a1 + 8), 1, &__C, *(a1 + 40));
      if (__C > v15)
      {
        v12 = v12;
      }

      else
      {
        v15 = __C;
        v12 = a5;
      }

      v14 += 4;
      ++a5;
    }

    while (v13 != a5);
  }

  MEOWVectorBase::~MEOWVectorBase(__dst);
  return v12;
}

void sub_257B5C75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

void CorrelationTimeDomain::~CorrelationTimeDomain(void **this)
{
  *this = &unk_2868F7DD0;
  MEOWVectorBase::~MEOWVectorBase(this + 1);
}

{
  *this = &unk_2868F7DD0;
  MEOWVectorBase::~MEOWVectorBase(this + 1);

  JUMPOUT(0x259C6DA90);
}

MEOWVectorBase *MEOWVector<float>::MEOWVector(MEOWVectorBase *a1, const void *a2, uint64_t a3)
{
  MEOWVectorBase::MEOWVectorBase(a1, 4);
  MEOWVectorBase::Append(v6, a2, (a3 - a2) >> 2);
  return a1;
}

uint64_t MTMBPitchInterpolatorBase::SetEstimatedLength(uint64_t this, float a2)
{
  v2 = *(this + 8) * (*(this + 12) / a2);
  if (v2 > 4.0)
  {
    v2 = 4.0;
  }

  *(this + 8) = v2;
  *(this + 12) = a2;
  return this;
}

void MTMBModelPitchInterpolator::MTMBModelPitchInterpolator(MTMBModelPitchInterpolator *this, const float *a2, int a3)
{
  *(this + 2) = 1065353216;
  *(this + 3) = a3 * 110.25;
  *this = &unk_2868F7EB0;
  *(this + 2) = a2;
  *(this + 6) = a3;
}

{
  *(this + 2) = 1065353216;
  *(this + 3) = a3 * 110.25;
  *this = &unk_2868F7EB0;
  *(this + 2) = a2;
  *(this + 6) = a3;
}

uint64_t MTMBModelPitchInterpolator::PeriodLenAtSample(MTMBModelPitchInterpolator *this, float a2, float a3)
{
  v3 = (*(this + 2) * a2) * 0.0090703;
  v4 = *(this + 6) - 1;
  if (v3 >= v4)
  {
    v6 = *(*(this + 2) + 4 * v4);
  }

  else
  {
    v5 = (*(this + 2) + 4 * vcvtms_s32_f32(v3));
    v6 = *v5 + ((v5[1] - *v5) * (v3 - floorf(v3)));
  }

  v7 = (22050.0 / v6);
  if (v7 >= 512)
  {
    return 512;
  }

  else
  {
    return v7;
  }
}

void MTMBSlackPitchInterpolator::MTMBSlackPitchInterpolator(MTMBSlackPitchInterpolator *this, const float *a2, float *a3)
{
  v3 = a3;
  *(this + 2) = 1065353216;
  *(this + 3) = a3 * 110.25;
  *(this + 2) = a2;
  *(this + 6) = a3;
  *this = &unk_2868F7EF8;
  if (kMTMBUseSlackWindow)
  {
    MTBEDebugParams::GetParam(kMTMBUseSlackWindow, &byte_27F8F2818, byte_27F8F2818);
    kMTMBUseSlackWindow = 0;
  }

  v5 = byte_27F8F2818;
  if (kMTMBPitchSlack)
  {
    MTBEDebugParams::GetParam(kMTMBPitchSlack, &dword_27F8F2828, a3, *&dword_27F8F2828);
    kMTMBPitchSlack = 0;
  }

  MEOWUnitCostWindow::MEOWUnitCostWindow((this + 32), v3, v5, *&dword_27F8F2828 / 100.0);
}

uint64_t MTMBSlackPitchInterpolator::PeriodLenAtSample(MTMBSlackPitchInterpolator *this, float a2, float a3)
{
  v3 = (*(this + 2) * a2) * 0.0090703;
  v4 = *(this + 6);
  if (v3 >= (v4 - 1))
  {
    v7 = *(*(this + 2) + 4 * (v4 - 1));
    v8 = (*(this + 4) + 4 * v4 - 4);
  }

  else
  {
    v5 = vcvtms_s32_f32(v3);
    v6 = (*(this + 2) + 4 * v5);
    v7 = *v6 + ((v6[1] - *v6) * (v3 - floorf(v3)));
    v8 = (*(this + 4) + 4 * v5);
  }

  v9 = (((1.0 - *v8) * a3) + ((22050.0 / v7) * *v8));
  if (v9 >= 512)
  {
    return 512;
  }

  else
  {
    return v9;
  }
}

void MTMBLinearPitchInterpolator::MTMBLinearPitchInterpolator(MTMBLinearPitchInterpolator *this, int a2, float a3, float a4)
{
  *(this + 2) = 1065353216;
  v4 = a2 * 110.25;
  *(this + 3) = v4;
  *(this + 4) = a3;
  *this = &unk_2868F7F40;
  if (a2)
  {
    v5 = (a4 - a3) / v4;
  }

  else
  {
    v5 = 1.0;
  }

  *(this + 5) = v5;
}

{
  *(this + 2) = 1065353216;
  v4 = a2 * 110.25;
  *(this + 3) = v4;
  *(this + 4) = a3;
  *this = &unk_2868F7F40;
  if (a2)
  {
    v5 = (a4 - a3) / v4;
  }

  else
  {
    v5 = 1.0;
  }

  *(this + 5) = v5;
}

uint64_t MTMBLinearPitchInterpolator::PeriodLenAtSample(MTMBLinearPitchInterpolator *this, float a2, float a3)
{
  v3 = ((*(this + 4) + ((*(this + 2) * a2) * *(this + 5))) * a3);
  if (v3 >= 512)
  {
    return 512;
  }

  else
  {
    return v3;
  }
}

void MTMBSawtoothPitchInterpolator::MTMBSawtoothPitchInterpolator(MTMBSawtoothPitchInterpolator *this, int a2, int a3, float a4, float a5, float a6, float a7)
{
  *(this + 2) = 1065353216;
  *(this + 3) = (a3 + a2) * 110.25;
  *this = &unk_2868F7F88;
  *(this + 6) = 1065353216;
  v7 = a2 * 110.25;
  *(this + 7) = v7;
  *(this + 8) = a4;
  *(this + 2) = &unk_2868F7F40;
  v8 = 1.0;
  v9 = 1.0;
  if (a2)
  {
    v9 = (a5 - a4) / v7;
  }

  *(this + 9) = v9;
  *(this + 12) = 1065353216;
  v10 = a3 * 110.25;
  *(this + 13) = v10;
  *(this + 14) = a6;
  *(this + 5) = &unk_2868F7F40;
  if (a3)
  {
    v8 = (a7 - a6) / v10;
  }

  *(this + 15) = v8;
  *(this + 16) = v7;
  *(this + 68) = 0;
}

float *MTMBSawtoothPitchInterpolator::SetEstimatedFirstLength(float *this, float a2)
{
  this[16] = a2;
  v2 = this[6] * (this[7] / a2);
  if (v2 > 4.0)
  {
    v2 = 4.0;
  }

  this[6] = v2;
  this[7] = a2;
  v3 = this[3] - a2;
  v4 = this[12] * (this[13] / v3);
  if (v4 > 4.0)
  {
    v4 = 4.0;
  }

  this[12] = v4;
  this[13] = v3;
  return this;
}

uint64_t MTMBSawtoothPitchInterpolator::PeriodLenAtSample(MTMBSawtoothPitchInterpolator *this, float a2, float a3)
{
  if (*(this + 68) == 1)
  {
    v3 = *(this + 15);
    v4 = (a2 - *(this + 16)) * *(this + 12);
    v5 = *(this + 14);
  }

  else
  {
    v4 = *(this + 6) * a2;
    v5 = *(this + 8);
    v3 = *(this + 9);
  }

  v6 = ((v5 + (v4 * v3)) * a3);
  if (v6 >= 512)
  {
    return 512;
  }

  else
  {
    return v6;
  }
}

float MTMBMetaPitchInterpolator::MTMBMetaPitchInterpolator(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 1065353216;
  result = a2 * 110.25;
  *(a1 + 12) = result;
  *a1 = &unk_2868F7FD0;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  return result;
}

{
  *(a1 + 8) = 1065353216;
  result = a2 * 110.25;
  *(a1 + 12) = result;
  *a1 = &unk_2868F7FD0;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  return result;
}

void MTMBMetaPitchInterpolator::~MTMBMetaPitchInterpolator(MTMBMetaPitchInterpolator *this)
{
  *this = &unk_2868F7FD0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  MTMBMetaPitchInterpolator::~MTMBMetaPitchInterpolator(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MTMBMetaPitchInterpolator::PeriodLenAtSample(MTMBMetaPitchInterpolator *this, float a2, float a3)
{
  v6 = fminf(a2 / *(this + 3), 1.0);
  (*(**(this + 2) + 16))(*(this + 2), a2, a3);
  return ((v6 * (*(**(this + 3) + 16))(*(this + 3), a2, a3)) + ((1.0 - v6) * v7));
}

uint64_t MTMBMetaPitchInterpolator::ForceFirst(MTMBMetaPitchInterpolator *this)
{
  (*(**(this + 2) + 24))(*(this + 2));
  v2 = *(**(this + 3) + 24);

  return v2();
}

uint64_t MTMBMetaPitchInterpolator::ForceSecond(MTMBMetaPitchInterpolator *this)
{
  (*(**(this + 2) + 32))(*(this + 2));
  v2 = *(**(this + 3) + 32);

  return v2();
}

uint64_t MTMBMetaPitchInterpolator::SetEstimatedLength(MTMBMetaPitchInterpolator *this, float a2)
{
  (*(**(this + 2) + 40))(*(this + 2));
  result = (*(**(this + 3) + 40))(*(this + 3), a2);
  v5 = *(this + 2) * (*(this + 3) / a2);
  if (v5 > 4.0)
  {
    v5 = 4.0;
  }

  *(this + 2) = v5;
  *(this + 3) = a2;
  return result;
}

uint64_t MTMBMetaPitchInterpolator::SetEstimatedFirstLength(MTMBMetaPitchInterpolator *this, float a2)
{
  (*(**(this + 2) + 48))(*(this + 2));
  v4 = *(**(this + 3) + 48);
  v5.n128_f32[0] = a2;

  return v4(v5);
}

void MTMBPitchInterpolator::CreateWordInterpolator(MTMBPitchInterpolator *this, MTMBDemi *a2)
{
  v3 = *(this + 13);
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  if (MTMBDemiProperties::UseWordPitch(v3))
  {
    if (kMTMBSilenceConform)
    {
      MTBEDebugParams::GetParam(kMTMBSilenceConform, &byte_27F8F2838, byte_27F8F2838);
      kMTMBSilenceConform = 0;
    }

    if (byte_27F8F2838 != 1 || (*(*(this + 13) + 16) & 8) == 0)
    {
      if (kMTMBUseLinearPitch)
      {
        MTBEDebugParams::GetParam(kMTMBUseLinearPitch, &byte_27F8F2848, byte_27F8F2848);
        kMTMBUseLinearPitch = 0;
      }

      if (byte_27F8F2848 == 1)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

float MTMBDemi::FirstFactor(MTMBDemi *this, float a2, double a3, float a4)
{
  v4 = *(this + 42);
  if (!*(this + 42))
  {
    return 1.0;
  }

  LOWORD(a2) = *(this + 44);
  v5 = v4;
  result = LODWORD(a2) / v4;
  v7 = *(this + 23);
  if (v7)
  {
    LOWORD(v5) = *(this + 45);
    LOWORD(a4) = *(this + 43);
    v8 = (LODWORD(v5) / LODWORD(a4)) - result;
    v9 = v8 * 0.5;
    v10 = (v8 / (*(this + 25) - (v7 + *(this + 24)))) * v7;
    v13 = v10;
    v14 = v8 * 0.5;
    if (v8 >= 0.0)
    {
      v11 = v10 < v9;
    }

    else
    {
      v11 = v9 < v10;
    }

    v12 = &v14;
    if (v11)
    {
      v12 = &v13;
    }

    result = result - *v12;
  }

  if (result > 4.0)
  {
    result = 4.0;
  }

  if (result < 0.25)
  {
    return 0.25;
  }

  return result;
}

float MTMBDemi::LastFactor(MTMBDemi *this, float a2)
{
  if (!*(this + 43))
  {
    return 1.0;
  }

  LOWORD(a2) = *(this + 45);
  result = LODWORD(a2) / *(this + 43);
  if (result > 4.0)
  {
    result = 4.0;
  }

  if (result < 0.25)
  {
    return 0.25;
  }

  return result;
}

void MTMBPitchInterpolator::CreateDemiInterpolator(MTMBPitchInterpolator *this, MTMBDemi *a2)
{
  v2 = *(this + 13);
  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (kMTMBUseLinearPitch)
  {
    MTBEDebugParams::GetParam(kMTMBUseLinearPitch, &byte_27F8F2848, byte_27F8F2848);
    kMTMBUseLinearPitch = 0;
  }

  if (byte_27F8F2848 == 1)
  {
    if (kMTMBLinearSlack)
    {
      MTBEDebugParams::GetParam(kMTMBLinearSlack, &byte_27F8F2858, byte_27F8F2858);
      kMTMBLinearSlack = 0;
    }

    if ((byte_27F8F2858 & 1) == 0)
    {
      operator new();
    }
  }

  operator new();
}

void MTMBPitchInterpolator::CreatePhonemeInterpolator(MTMBPitchInterpolator *this, MTMBDemi *a2, MTMBDemi *a3)
{
  v5 = *(this + 13);
  v6 = *(v5 + 40);
  v7 = (*(*(a2 + 13) + 32) + *(v5 + 32));
  if (kMTMBUseLinearPitch)
  {
    MTBEDebugParams::GetParam(kMTMBUseLinearPitch, &byte_27F8F2848, byte_27F8F2848);
    kMTMBUseLinearPitch = 0;
  }

  if (byte_27F8F2848 == 1)
  {
    if (kMTMBLinearSlack)
    {
      MTBEDebugParams::GetParam(kMTMBLinearSlack, &byte_27F8F2858, byte_27F8F2858);
      kMTMBLinearSlack = 0;
    }

    if ((byte_27F8F2858 & 1) == 0 && *(this + 40) != -1)
    {
      if (kMTMBWordLinearPitch)
      {
        MTBEDebugParams::GetParam(kMTMBWordLinearPitch, &byte_27F8F2868, byte_27F8F2868);
        kMTMBWordLinearPitch = 0;
      }

      if ((byte_27F8F2868 & 1) == 0 && *(this + 9) == *(a2 + 8) && *(this + 40))
      {
        if (*(a2 + 40))
        {
          operator new();
        }
      }

      operator new();
    }
  }

  operator new();
}

float *SetLinearPitchTargets(float *a1, MTMBDemi *this, float *a3, unint64_t a4, float *a5, unint64_t a6, double a7, float a8)
{
  v12 = this;
  if (!*(this + 44))
  {
    MTMBDemi::SetFirstPPTarget(this, *(this + 40), a3);
  }

  v14 = *(v12 + 9);
  v15 = *(v12 + 25);
  v16 = v12 - *a1;
  v17 = 0x6DB6DB6DB6DB6DB7 * (v16 >> 4);
  if (v16 < -111)
  {
    v22 = 34 - v17;
    v23 = 34 - v17;
    v19 = &a1[-2 * ((34 - v17) / 0x24uLL)];
    v20 = *v19;
    v21 = *v19 + 112 * (36 * (v23 / 0x24) - v22) + 3920;
  }

  else
  {
    v18 = v17 + 1;
    v19 = &a1[2 * ((v17 + 1) / 0x24uLL)];
    v20 = *v19;
    v21 = *v19 + 112 * (v18 % 0x24);
  }

  v24 = v12;
  v25 = a1;
  v26 = v12;
  v27 = *(v12 + 41);
LABEL_7:
  v28 = v21 - 4032;
  while (1)
  {
    v29 = v19 == a5;
    if (v21 >= a6)
    {
      v29 = 0;
    }

    if (v19 >= a5 && !v29)
    {
      break;
    }

    v30 = *(v21 + 100);
    if (v30)
    {
      if (*(v21 + 64) != v14 || v25 >= a3 && (v25 != a3 || v24 >= a4) || *(*(v21 + 104) + 18) < 0)
      {
        v24 = v21;
        v25 = v19;
        break;
      }

      if (*(v21 + 82))
      {
        v27 = *(v21 + 82);
      }

      v14 = *(v21 + 72);
      v15 += v30;
      v24 = v21;
      v25 = v19;
      v26 = v21;
    }

    v21 += 112;
    v28 += 112;
    if (v20 == v28)
    {
      v31 = *(v19 + 1);
      v19 += 2;
      v20 = v31;
      v21 = v31;
      goto LABEL_7;
    }
  }

  if (v24 == v12)
  {
    MTMBDemi::SetLastPPTarget(v12, *(v12 + 41), a3);
    return a1;
  }

  v32 = v27;
  v33 = *(v24 + 80);
  if (*(v24 + 64) == v14)
  {
    MTMBDemi::SetFirstPPTarget(v24, v33, a3);
LABEL_60:
    v50 = v27;
    goto LABEL_63;
  }

  if (*(v24 + 80))
  {
    v35 = v33;
    if (v32 > v33)
    {
      v36 = v32 / v33;
    }

    else
    {
      v36 = v33 / v32;
    }

    if (kMTMBUnvoicedBackoff)
    {
      MTBEDebugParams::GetParam(kMTMBUnvoicedBackoff, &dword_27F8F2888, a3, *&dword_27F8F2888);
      kMTMBUnvoicedBackoff = 0;
    }

    if (*&dword_27F8F2888 != 0.0)
    {
      v37 = *(v24 + 92);
      v38 = *v25;
      v39 = v24;
      v40 = v25;
      while (1)
      {
        if (v39 == v38)
        {
          v42 = *(v40 - 1);
          v40 -= 2;
          v38 = v42;
          v41 = v42 + 4032;
        }

        else
        {
          v41 = v39;
        }

        v39 = v41 - 112;
        if (v40 < a1 || v40 == a1 && v39 < v12)
        {
          break;
        }

        if (*(v41 - 12))
        {
          v37 = v37 + *(v41 - 16);
          if (*(v41 - 30))
          {
            break;
          }
        }
      }

      v43 = 1.0;
      if (v37 != 0.0)
      {
        v43 = exp2f(v37 / (*&dword_27F8F2888 * 22.05));
      }

      v36 = fmaxf(v36 / v43, 1.0);
    }

    v44 = sqrtf(v36);
    if (v32 <= v35)
    {
      v46 = v44 * v32;
      v45 = v35 / v44;
    }

    else
    {
      v45 = v44 * v35;
      v46 = v32 / v44;
    }

    v50 = v46;
    MTMBDemi::SetFirstPPTarget(v24, v45, a3);
  }

  else
  {
    if ((*(*(v24 + 104) + 16) & 2) == 0 || (v47 = *(v12 + 13)) == 0 || !*(v47 + 40) || !*(v47 + 32))
    {
      v15 += *(v24 + 100);
      goto LABEL_60;
    }

    v48 = 22050.0 / *(*(*(v26 + 104) + 40) + 4 * vcvtms_s32_f32(((*(v26 + 100) - *(v26 + 96)) / *(v26 + 100)) * *(*(v26 + 104) + 32)));
    if (kMTMBFinalSlack)
    {
      MTBEDebugParams::GetParam(kMTMBFinalSlack, &dword_27F8F2878, a3, *&dword_27F8F2878);
      kMTMBFinalSlack = 0;
    }

    HIWORD(a8) = 18350;
    v49 = ((*&dword_27F8F2878 * v32) + (v48 * (100.0 - *&dword_27F8F2878))) * 0.01;
    if (v32 >= v49)
    {
      v50 = v27;
    }

    else
    {
      v50 = ((*&dword_27F8F2878 * v32) + (v48 * (100.0 - *&dword_27F8F2878))) * 0.01;
    }
  }

LABEL_63:
  v51 = 1.0;
  v52 = 1.0;
  if (*(v12 + 40))
  {
    LOWORD(a8) = *(v12 + 44);
    v52 = LODWORD(a8) / *(v12 + 40);
  }

  if (v27)
  {
    v51 = v50 / v32;
  }

  v53 = v51 - v52;
  v54 = v53 / v15;
  v55 = 0.0;
LABEL_68:
  v56 = v12;
  while (1)
  {
    v57 = a1 == v25;
    if (v56 >= v24)
    {
      v57 = 0;
    }

    if (a1 >= v25 && !v57)
    {
      return a1;
    }

    v58 = *(v56 + 100);
    if (v58)
    {
      if (v55 != 0.0)
      {
        LOWORD(v53) = *(v56 + 80);
        MTMBDemi::SetFirstPPTarget(v56, ((v52 + (v54 * v55)) * LODWORD(v53)), a3);
        v58 = *(v56 + 100);
      }

      *&v59 = v58;
      v55 = v55 + v58;
      LOWORD(v59) = *(v56 + 82);
      MTMBDemi::SetLastPPTarget(v56, ((v52 + (v54 * v55)) * v59), a3);
    }

    v56 += 112;
    v12 = (v12 + 112);
    if ((*a1 + 4032) == v12)
    {
      v60 = *(a1 + 1);
      a1 += 2;
      v12 = v60;
      goto LABEL_68;
    }
  }
}

uint64_t MTMBDemi::SetFirstPPTarget(uint64_t this, uint64_t a2, float *a3)
{
  v3 = this;
  if (a2)
  {
    v4 = *(this + 104);
    if (v4)
    {
      v5 = *(v4 + 40);
      if (v5)
      {
        v6 = *(v4 + 32);
        if (v6)
        {
          this = PinPPTarget(a2, 22050.0 / *(v5 + 4 * vcvtms_s32_f32((*(this + 92) / *(this + 100)) * v6)), this, a2, a3);
          LOWORD(a2) = this;
        }
      }
    }
  }

  *(v3 + 88) = a2;
  return this;
}

uint64_t MTMBDemi::SetLastPPTarget(uint64_t this, uint64_t a2, float *a3)
{
  v3 = this;
  if (a2)
  {
    v4 = *(this + 104);
    if (v4)
    {
      v5 = *(v4 + 40);
      if (v5)
      {
        v6 = *(v4 + 32);
        if (v6)
        {
          this = PinPPTarget(a2, 22050.0 / *(v5 + 4 * vcvtms_s32_f32(((*(this + 100) - *(this + 96)) / *(this + 100)) * v6)), this, a2, a3);
          LOWORD(a2) = this;
        }
      }
    }
  }

  *(v3 + 90) = a2;
  return this;
}

void SetCompromisePitchTargets(MTMBDemi *this, MTMBDemi *a2, float a3, float a4, float a5, float *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a3 <= a4;
  v12 = a4 / a3;
  v13 = a3 / a4;
  if (v11)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (kMTMBUnvoicedBackoff)
  {
    MTBEDebugParams::GetParam(kMTMBUnvoicedBackoff, &dword_27F8F2888, a6, *&dword_27F8F2888);
    kMTMBUnvoicedBackoff = 0;
  }

  if (*&dword_27F8F2888 == 0.0)
  {
    v17 = 0.0;
    v18 = 0.0;
  }

  else
  {
    v15 = (*(a2 + 23) + *(this + 24)) + a5;
    v16 = 1.0;
    if (v15 != 0.0)
    {
      v16 = exp2f(v15 / (*&dword_27F8F2888 * 22.05));
    }

    v14 = fmaxf(v14 / v16, 1.0);
    v17 = v15;
    v18 = v16;
  }

  v19 = sqrtf(v14);
  if (a3 > a4)
  {
    v20 = a3 / v19;
    MTMBDemi::SetLastPPTarget(this, (a3 / v19), a6);
    v21 = v19 * a4;
    MTMBDemi::SetFirstPPTarget(a2, (v19 * a4), v22);
    if (kMTMBLogBoundaryPitch)
    {
      MTBEDebugParams::GetParam(kMTMBLogBoundaryPitch, &byte_27F8F2898, byte_27F8F2898);
      kMTMBLogBoundaryPitch = 0;
    }

    if ((byte_27F8F2898 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v24 = *MEMORY[0x277D85DF8];
    v25 = MTMBDemiProperties::Phon(*(this + 13), v29);
    v26 = MTMBDemiProperties::Phon(*(a2 + 13), v28);
    fprintf(v24, "Compromise %s-%s %5.1f %5.1f -> %5.1f %5.1f [%5.2f] (%f\\%f->%f)\n", v25, v26, a3, a4, v20, v21, v19, v17, a5, v18);
    goto LABEL_20;
  }

  v20 = v19 * a3;
  MTMBDemi::SetLastPPTarget(this, (v19 * a3), a6);
  v21 = a4 / v19;
  MTMBDemi::SetFirstPPTarget(a2, (a4 / v19), v23);
  if (kMTMBLogBoundaryPitch)
  {
    MTBEDebugParams::GetParam(kMTMBLogBoundaryPitch, &byte_27F8F2898, byte_27F8F2898);
    kMTMBLogBoundaryPitch = 0;
  }

  if (byte_27F8F2898 == 1)
  {
    goto LABEL_19;
  }

LABEL_20:
  v27 = *MEMORY[0x277D85DE8];
}

void *SetLinearSlackPitchTargets(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  v9 = a2;
  v107 = *MEMORY[0x277D85DE8];
  if (MTMBDemiProperties::UseWordPitch(*(a2 + 104)))
  {
    if (!*(v9 + 88))
    {
      MTMBDemi::SetFirstPPTarget(v9, *(v9 + 80), v11);
    }

    v13 = v9 - *a1;
    v14 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 4);
    if (v13 < -111)
    {
      v32 = 34 - v14;
      v33 = 34 - v14;
      v16 = &a1[-((34 - v14) / 0x24uLL)];
      v17 = *v16;
      v18 = *v16 + 112 * (36 * (v33 / 0x24) - v32) + 3920;
    }

    else
    {
      v15 = v14 + 1;
      v16 = &a1[(v14 + 1) / 0x24uLL];
      v17 = *v16;
      v18 = *v16 + 112 * (v15 % 0x24);
    }

LABEL_20:
    v34 = v17 - v18 + 4032;
    while (1)
    {
      v35 = v16 == a5;
      if (v18 >= a6)
      {
        v35 = 0;
      }

      if (v16 >= a5 && !v35 || *(v18 + 100))
      {
        break;
      }

      v18 += 112;
      v34 -= 112;
      if (!v34)
      {
        v36 = v16[1];
        ++v16;
        v17 = v36;
        v18 = v36;
        goto LABEL_20;
      }
    }

    if (v18 == a6)
    {
      MTMBDemi::SetLastPPTarget(v9, *(v9 + 82), v11);
      if (kMTMBDebugPitchAssembly)
      {
        MTBEDebugParams::GetParam(kMTMBDebugPitchAssembly, &byte_27F8F28A8, byte_27F8F28A8);
        kMTMBDebugPitchAssembly = 0;
      }

      if (byte_27F8F28A8 == 1)
      {
        v51 = *MEMORY[0x277D85E08];
        v52 = MTMBDemiProperties::Phon(*(v9 + 104), v106);
        fprintf(v51, "Pitch %s (%d:%d) (%d:%d) [%d]\n", v52, *(v9 + 80), *(v9 + 88), *(v9 + 82), *(v9 + 90), 779);
      }
    }

    else
    {
      v37 = *(v9 + 104);
      if ((*(v37 + 16) & 8) != 0)
      {
        LOWORD(v6) = *(v9 + 82);
        if (kMTMBSilenceConform)
        {
          MTBEDebugParams::GetParam(kMTMBSilenceConform, &byte_27F8F2838, byte_27F8F2838);
          kMTMBSilenceConform = 0;
        }

        v53 = 22050.0 / *(*(*(v9 + 104) + 40) + 4 * vcvtms_s32_f32(((*(v9 + 100) - *(v9 + 96)) / *(v9 + 100)) * *(*(v9 + 104) + 32)));
        if ((byte_27F8F2838 & 1) == 0)
        {
          v54 = v6;
          if (kMTMBFinalSlack)
          {
            MTBEDebugParams::GetParam(kMTMBFinalSlack, &dword_27F8F2878, v11, *&dword_27F8F2878);
            kMTMBFinalSlack = 0;
          }

          v55 = ((*&dword_27F8F2878 * v54) + (v53 * (100.0 - *&dword_27F8F2878))) * 0.01;
          if (v54 >= v55)
          {
            v53 = v54;
          }

          else
          {
            v53 = ((*&dword_27F8F2878 * v54) + (v53 * (100.0 - *&dword_27F8F2878))) * 0.01;
          }
        }

        MTMBDemi::SetLastPPTarget(v9, v53, v11);
        if (kMTMBDebugPitchAssembly)
        {
          MTBEDebugParams::GetParam(kMTMBDebugPitchAssembly, &byte_27F8F28A8, byte_27F8F28A8);
          kMTMBDebugPitchAssembly = 0;
        }

        if (byte_27F8F28A8 == 1)
        {
          v42 = *MEMORY[0x277D85E08];
          v43 = MTMBDemiProperties::Phon(*(v9 + 104), v106);
          v44 = *(v9 + 80);
          v45 = *(v9 + 88);
          v46 = *(v9 + 82);
          v47 = *(v9 + 90);
          v48 = 793;
          goto LABEL_155;
        }
      }

      else
      {
        v38 = *(v18 + 104);
        if (*(v18 + 80))
        {
          if (MTMBDemiProperties::UseWordPitch(v38))
          {
            LOWORD(v40) = *(v9 + 82);
            LOWORD(v41) = *(v18 + 80);
            SetCompromisePitchTargets(v9, v18, v40, v41, 0.0, v39);
            if (kMTMBDebugPitchAssembly)
            {
              MTBEDebugParams::GetParam(kMTMBDebugPitchAssembly, &byte_27F8F28A8, byte_27F8F28A8);
              kMTMBDebugPitchAssembly = 0;
            }

            if (byte_27F8F28A8 == 1)
            {
              v42 = *MEMORY[0x277D85E08];
              v43 = MTMBDemiProperties::Phon(*(v9 + 104), v106);
              v44 = *(v9 + 80);
              v45 = *(v9 + 88);
              v46 = *(v9 + 82);
              v47 = *(v9 + 90);
              v48 = 827;
              goto LABEL_155;
            }
          }

          else if (MTMBDemiProperties::UseGluePitch(*(v18 + 104)))
          {
            v66 = v18;
            v67 = v16;
LABEL_73:
            v68 = v66 - 4032;
            while (1)
            {
              v69 = v67 == a5;
              if (v66 >= a6)
              {
                v69 = 0;
              }

              if (v67 >= a5 && !v69)
              {
                break;
              }

              v70 = *(v66 + 104);
              if ((*(v70 + 8) & 0x10) == 0 && *(v66 + 100))
              {
                if (v67 < a5)
                {
                  goto LABEL_146;
                }

                break;
              }

              v66 += 112;
              v68 += 112;
              if (*v67 == v68)
              {
                v71 = v67[1];
                ++v67;
                v66 = v71;
                goto LABEL_73;
              }
            }

            if (v67 != a5 || v66 >= a6)
            {
              goto LABEL_151;
            }

            v70 = *(v66 + 104);
LABEL_146:
            if (!MTMBDemiProperties::UseWordPitch(v70))
            {
              goto LABEL_151;
            }

            if (kMTMBDebugPitchAssembly)
            {
              MTBEDebugParams::GetParam(kMTMBDebugPitchAssembly, &byte_27F8F28A8, byte_27F8F28A8);
              kMTMBDebugPitchAssembly = 0;
            }

            if (byte_27F8F28A8 == 1)
            {
              v42 = *MEMORY[0x277D85E08];
              v43 = MTMBDemiProperties::Phon(*(v9 + 104), v106);
              v44 = *(v9 + 80);
              v45 = *(v9 + 88);
              v46 = *(v9 + 82);
              v47 = *(v9 + 90);
              v48 = 839;
              goto LABEL_155;
            }
          }

          else
          {
LABEL_151:
            LOWORD(v65) = *(v9 + 82);
            SetCompromisePitchTargets(v9, v18, v65, 22050.0 / *(*(*(v18 + 104) + 40) + 4 * vcvtms_s32_f32((*(v18 + 92) / *(v18 + 100)) * *(*(v18 + 104) + 32))), 0.0, v64);
            if (kMTMBDebugPitchAssembly)
            {
              MTBEDebugParams::GetParam(kMTMBDebugPitchAssembly, &byte_27F8F28A8, byte_27F8F28A8);
              kMTMBDebugPitchAssembly = 0;
            }

            if (byte_27F8F28A8 == 1)
            {
              v42 = *MEMORY[0x277D85E08];
              v43 = MTMBDemiProperties::Phon(*(v9 + 104), v106);
              v44 = *(v9 + 80);
              v45 = *(v9 + 88);
              v46 = *(v9 + 82);
              v47 = *(v9 + 90);
              v48 = 849;
LABEL_155:
              fprintf(v42, "Pitch %s (%d:%d) (%d:%d) [%d]\n", v43, v44, v45, v46, v47, v48);
            }
          }
        }

        else if ((*(v38 + 8) & 2) != 0 && (v59 = *(v37 + 40)) != 0 && (v60 = *(v37 + 32)) != 0)
        {
          LOWORD(v12) = *(v9 + 82);
          v61 = v12;
          v62 = 22050.0 / *(v59 + 4 * vcvtms_s32_f32(((*(v9 + 100) - *(v9 + 96)) / *(v9 + 100)) * v60));
          if (kMTMBFinalSlack)
          {
            MTBEDebugParams::GetParam(kMTMBFinalSlack, &dword_27F8F2878, v11, *&dword_27F8F2878);
            kMTMBFinalSlack = 0;
          }

          v63 = ((*&dword_27F8F2878 * v61) + (v62 * (100.0 - *&dword_27F8F2878))) * 0.01;
          if (v61 >= v63)
          {
            v63 = v61;
          }

          MTMBDemi::SetLastPPTarget(v9, v63, v11);
          if (kMTMBDebugPitchAssembly)
          {
            MTBEDebugParams::GetParam(kMTMBDebugPitchAssembly, &byte_27F8F28A8, byte_27F8F28A8);
            kMTMBDebugPitchAssembly = 0;
          }

          if (byte_27F8F28A8 == 1)
          {
            v42 = *MEMORY[0x277D85E08];
            v43 = MTMBDemiProperties::Phon(*(v9 + 104), v106);
            v44 = *(v9 + 80);
            v45 = *(v9 + 88);
            v46 = *(v9 + 82);
            v47 = *(v9 + 90);
            v48 = 812;
            goto LABEL_155;
          }
        }

        else
        {
          MTMBDemi::SetLastPPTarget(v9, *(v9 + 82), v11);
          MTMBDemi::SetFirstPPTarget(v18, *(v9 + 90), v72);
          if (kMTMBDebugPitchAssembly)
          {
            MTBEDebugParams::GetParam(kMTMBDebugPitchAssembly, &byte_27F8F28A8, byte_27F8F28A8);
            kMTMBDebugPitchAssembly = 0;
          }

          if (byte_27F8F28A8 == 1)
          {
            v42 = *MEMORY[0x277D85E08];
            v43 = MTMBDemiProperties::Phon(*(v9 + 104), v106);
            v44 = *(v9 + 80);
            v45 = *(v9 + 88);
            v46 = *(v9 + 82);
            v47 = *(v9 + 90);
            v48 = 819;
            goto LABEL_155;
          }
        }
      }
    }

    goto LABEL_156;
  }

  v19 = *(v9 + 104);
  if (!v19 || !*(v19 + 5) || !*(v19 + 4))
  {
    MTMBDemi::SetLastPPTarget(v9, *(v9 + 82), v11);
    v28 = v9 - *a1;
    v29 = 0x6DB6DB6DB6DB6DB7 * (v28 >> 4);
    if (v28 < -111)
    {
      v49 = 34 - v29;
      v16 = &a1[-(v49 / 0x24)];
      v50 = *v16 + 112 * (36 * (v49 / 0x24) - v49) + 3920;
    }

    else
    {
      v30 = v29 + 1;
      v16 = &a1[v30 / 0x24];
      v31 = *v16 + 112 * (v30 % 0x24);
    }

    if (kMTMBDebugPitchAssembly)
    {
      MTBEDebugParams::GetParam(kMTMBDebugPitchAssembly, &byte_27F8F28A8, byte_27F8F28A8);
      kMTMBDebugPitchAssembly = 0;
    }

    if (byte_27F8F28A8 == 1)
    {
      v42 = *MEMORY[0x277D85E08];
      v43 = MTMBDemiProperties::Phon(*(v9 + 104), v106);
      v44 = *(v9 + 80);
      v45 = *(v9 + 88);
      v46 = *(v9 + 82);
      v47 = *(v9 + 90);
      v48 = 858;
      goto LABEL_155;
    }

    goto LABEL_156;
  }

  if (MTMBDemiProperties::UseGluePitch(v19))
  {
    if (*(v9 + 100))
    {
      v21 = *(v9 + 104);
      if (v21)
      {
        v22 = *(v21 + 40);
        if (v22)
        {
          if (*(v21 + 32))
          {
            MTMBDemi::SetFirstPPTarget(v9, (22050.0 / *v22), v20);
            MTMBDemi::SetLastPPTarget(v9, (22050.0 / *(*(*(v9 + 104) + 40) + 4 * *(*(v9 + 104) + 32) - 4)), v23);
          }
        }
      }
    }

    v24 = v9 - *a1;
    v25 = 0x6DB6DB6DB6DB6DB7 * (v24 >> 4);
    if (v24 < -111)
    {
      v73 = 34 - v25;
      v16 = &a1[-(v73 / 0x24)];
      v74 = *v16 + 112 * (36 * (v73 / 0x24) - v73) + 3920;
    }

    else
    {
      v26 = v25 + 1;
      v16 = &a1[v26 / 0x24];
      v27 = *v16 + 112 * (v26 % 0x24);
    }

    if (kMTMBDebugPitchAssembly)
    {
      MTBEDebugParams::GetParam(kMTMBDebugPitchAssembly, &byte_27F8F28A8, byte_27F8F28A8);
      kMTMBDebugPitchAssembly = 0;
    }

    if (byte_27F8F28A8 == 1)
    {
      v42 = *MEMORY[0x277D85E08];
      v43 = MTMBDemiProperties::Phon(*(v9 + 104), v106);
      v44 = *(v9 + 80);
      v45 = *(v9 + 88);
      v46 = *(v9 + 82);
      v47 = *(v9 + 90);
      v48 = 873;
      goto LABEL_155;
    }

    goto LABEL_156;
  }

  v56 = *(v9 + 104);
  v57 = *(v56 + 40);
  if (*(v9 + 88))
  {
    v58 = *(v9 + 88);
  }

  else
  {
    v58 = 22050.0 / v57[vcvtms_s32_f32((*(v9 + 92) / *(v9 + 100)) * *(v56 + 32))];
  }

  v75 = v9 - *a1;
  v76 = 0x6DB6DB6DB6DB6DB7 * (v75 >> 4);
  if (v75 < -111)
  {
    v79 = 34 - v76;
    v16 = &a1[-(v79 / 0x24)];
    v78 = *v16 + 112 * (36 * (v79 / 0x24) - v79) + 3920;
  }

  else
  {
    v77 = v76 + 1;
    v16 = &a1[v77 / 0x24];
    v78 = *v16 + 112 * (v77 % 0x24);
  }

  v80 = v9;
LABEL_96:
  v81 = v78 - 4032;
  while (1)
  {
    v82 = v16 == a5;
    if (v78 >= a6)
    {
      v82 = 0;
    }

    if (v16 >= a5 && !v82)
    {
LABEL_110:
      v86 = *(v80 + 104);
      v88 = *(v86 + 32);
      v87 = *(v86 + 40);
      v89 = v87 + 4 * v88;
      goto LABEL_111;
    }

    if (*(v78 + 100))
    {
      break;
    }

LABEL_108:
    v78 += 112;
    v81 += 112;
    if (*v16 == v81)
    {
      v85 = v16[1];
      ++v16;
      v78 = v85;
      goto LABEL_96;
    }
  }

  v83 = *(v78 + 104);
  if ((*(v83 + 8) & 4) != 0)
  {
    goto LABEL_110;
  }

  if (!MTMBDemiProperties::UseWordPitch(v83))
  {
    v84 = *(v78 + 104);
    if (v84 && *(v84 + 40) && *(v84 + 32))
    {
      v80 = v78;
    }

    goto LABEL_108;
  }

  if ((MTMBDemiProperties::UseGluePitch(*(v80 + 104)) & 1) == 0)
  {
    HIWORD(v102) = 18092;
    LOWORD(v102) = *(v78 + 80);
    SetCompromisePitchTargets(v80, v78, 22050.0 / *(*(*(v80 + 104) + 40) + 4 * vcvtms_s32_f32(((*(v80 + 100) - *(v80 + 96)) / *(v80 + 100)) * *(*(v80 + 104) + 32))), v102, 0.0, v20);
  }

  v103 = *(v80 + 104);
  v88 = *(v103 + 32);
  v87 = *(v103 + 40);
  v89 = v87 + 4 * v88;
  if (!*(v80 + 90))
  {
LABEL_111:
    v90 = vcvtms_s32_f32(((*(v80 + 100) - *(v80 + 96)) / *(v80 + 100)) * v88);
    v91 = 22050.0 / *(v87 + 4 * v90);
    goto LABEL_112;
  }

  v91 = *(v80 + 90);
  v90 = vcvtms_s32_f32(((*(v80 + 100) - *(v80 + 96)) / *(v80 + 100)) * v88);
LABEL_112:
  v92 = (*(*(v9 + 104) + 40) + 4 * vcvtms_s32_f32((*(v9 + 92) / *(v9 + 100)) * *(*(v9 + 104) + 32)));
  v93 = (22050.0 / *v92) / v58;
  v94 = (v87 + 4 * v90);
  v95 = 1.0;
  if (v92 < v94)
  {
    v95 = (((22050.0 / *v94) / v91) - v93) / (v94 - v92);
  }

  while (v57 < v92)
  {
    *v57 = v93 * *v57;
    ++v57;
  }

  while (v57 < v94)
  {
    *v57 = v93 * *v57;
    ++v57;
    v93 = v95 + v93;
  }

  while (v57 < v89)
  {
    *v57 = v93 * *v57;
    ++v57;
  }

LABEL_122:
  v96 = v9 - 4032;
  while (1)
  {
    v97 = a1 == v16;
    if (v9 >= v78)
    {
      v97 = 0;
    }

    if (a1 >= v16 && !v97)
    {
      break;
    }

    if (*(v9 + 100))
    {
      v98 = *(v9 + 104);
      if (v98)
      {
        v99 = *(v98 + 40);
        if (v99)
        {
          if (*(v98 + 32))
          {
            MTMBDemi::SetFirstPPTarget(v9, (22050.0 / *v99), v20);
            MTMBDemi::SetLastPPTarget(v9, (22050.0 / *(*(*(v9 + 104) + 40) + 4 * *(*(v9 + 104) + 32) - 4)), v100);
          }
        }
      }
    }

    v9 += 112;
    v96 += 112;
    if (*a1 == v96)
    {
      v101 = a1[1];
      ++a1;
      v9 = v101;
      goto LABEL_122;
    }
  }

  if (kMTMBDebugPitchAssembly)
  {
    MTBEDebugParams::GetParam(kMTMBDebugPitchAssembly, &byte_27F8F28A8, byte_27F8F28A8);
    kMTMBDebugPitchAssembly = 0;
  }

  if (byte_27F8F28A8 == 1)
  {
    v42 = *MEMORY[0x277D85E08];
    v43 = MTMBDemiProperties::Phon(*(v9 + 104), v106);
    v44 = *(v9 + 80);
    v45 = *(v9 + 88);
    v46 = *(v9 + 82);
    v47 = *(v9 + 90);
    v48 = 957;
    goto LABEL_155;
  }

LABEL_156:
  v104 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t MTMBPitchStrategy::SetPitchTargets(float *a1, MTMBDemi *this, float *a3, unint64_t a4, float *a5, unint64_t a6, double a7, float a8)
{
  v12 = this;
  v13 = a1;
  v14 = this;
  v15 = a1;
LABEL_2:
  v16 = v14 - 4032;
  while (1)
  {
    v17 = v15 == a3;
    if (v14 >= a4)
    {
      v17 = 0;
    }

    if (v15 >= a3 && !v17)
    {
      v19 = 0;
      goto LABEL_13;
    }

    if (*(v14 + 25) && *(*(v14 + 13) + 18) < 0)
    {
      break;
    }

    v16 += 112;
    v14 = (v14 + 112);
    if (*v15 == v16)
    {
      v18 = *(v15 + 1);
      v15 += 2;
      v14 = v18;
      goto LABEL_2;
    }
  }

  v19 = 1;
LABEL_13:
  v20 = v12 - 4032;
  while (1)
  {
    v21 = v13 == a3;
    if (v12 >= a4)
    {
      v21 = 0;
    }

    if (v13 >= a3 && !v21)
    {
      break;
    }

    if (*(v12 + 25))
    {
      v22 = *(v12 + 13);
      if (v22)
      {
        if (*(v22 + 40) && *(v22 + 32) && (!*(v12 + 45) || !*(v12 + 44)))
        {
          break;
        }
      }
    }

    v12 = (v12 + 112);
    v20 += 112;
    if (*v13 == v20)
    {
      v23 = *(v13 + 1);
      v13 += 2;
      v12 = v23;
      goto LABEL_13;
    }
  }

LABEL_26:
  v24 = v12;
  while (1)
  {
    v25 = v13 == a3;
    if (v24 >= a4)
    {
      v25 = 0;
    }

    if (v13 >= a3 && !v25)
    {
      return v19;
    }

    if (*(v24 + 40))
    {
      if (kMTMBLinearSlack)
      {
        MTBEDebugParams::GetParam(kMTMBLinearSlack, &byte_27F8F2858, byte_27F8F2858);
        kMTMBLinearSlack = 0;
      }

      if (byte_27F8F2858 == 1)
      {
        v27 = SetLinearSlackPitchTargets(v13, v12, a3, a4, a5, a6);
      }

      else
      {
        v27 = SetLinearPitchTargets(v13, v12, a3, a4, a5, a6, a7, a8);
      }

      v13 = v27;
      v12 = v28;
      goto LABEL_26;
    }

    v12 = (v12 + 112);
    v24 = (v24 + 112);
    if ((*v13 + 4032) == v12)
    {
      v26 = *(v13 + 1);
      v13 += 2;
      v12 = v26;
      goto LABEL_26;
    }
  }
}

void MTMBPitchStrategy::ForceGluePitch(MTMBPitchStrategy *this, MTMBDemi *a2, MTMBDemi *a3)
{
  v5 = *(*(this + 13) + 32);
  v6 = *(*(this + 13) + 40);
  v7 = (v6 + 4 * vcvtms_s32_f32(((*(this + 25) - *(this + 24)) / *(this + 25)) * v5));
  v8 = *(*(a2 + 13) + 40);
  *&v9 = *(*(a2 + 13) + 32);
  v10 = (*(a2 + 23) / *(a2 + 25)) * *&v9;
  v11 = v8 + 4 * vcvtms_s32_f32(v10);
  v12 = v6 + 4 * v5 + 4;
  LOWORD(v10) = *(this + 41);
  LOWORD(v9) = *(a2 + 40);
  SetCompromisePitchTargets(this, a2, LODWORD(v10), v9, (((v11 - v7) >> 2) * 22.05) * 5.0, a3);
  v16 = *(this + 45);
  v17 = *(a2 + 44);
  if (*(this + 45))
  {
    if (*(this + 24))
    {
      v18 = *this + 32 * *(this + 2);
      if (*(v18 - 16))
      {
        LOWORD(v13) = *(v18 - 24);
        v19 = v13;
        if (*(this + 43))
        {
          *&v14 = v16 / *(this + 43);
          if (*&v14 > 4.0)
          {
            *&v14 = 4.0;
          }

          v15 = 0.25;
          if (*&v14 < 0.25)
          {
            *&v14 = 0.25;
          }
        }

        else
        {
          LODWORD(v14) = 1.0;
        }

        v16 = *&v14 * v19;
        if (kMTMBPPThreshold)
        {
          MTBEDebugParams::GetParam(kMTMBPPThreshold, &qword_27F8F28B8, qword_27F8F28B8);
          kMTMBPPThreshold = 0;
        }

        if (v16 > qword_27F8F28B8)
        {
          v16 = qword_27F8F28B8;
        }

        v7 = v12;
      }
    }
  }

  v20 = v17;
  if (v17 && *(a2 + 23) && (*(*a2 + 16) & 1) != 0)
  {
    LOWORD(v20) = *(*a2 + 8);
    v21 = MTMBDemi::FirstFactor(a2, v20, v14, v15) * LODWORD(v20);
    v22 = qword_27F8F28B8;
    if (kMTMBPPThreshold)
    {
      MTBEDebugParams::GetParam(kMTMBPPThreshold, &qword_27F8F28B8, qword_27F8F28B8);
      kMTMBPPThreshold = 0;
      v22 = qword_27F8F28B8;
    }

    v20 = v22;
    if (v21 <= v22)
    {
      v20 = v21;
    }

    v11 = v8;
  }

  if (v16 == 0.0)
  {
    v23 = v20;
    if (v20 == 0.0)
    {
      return;
    }
  }

  else
  {
    if (v20 == 0.0)
    {
      v23 = v16;
    }

    else
    {
      v23 = v20;
    }

    v20 = v16;
  }

  if (v11 >= v7)
  {
    v24 = 22050.0 / v20;
    v25 = ((22050.0 / v23) - v24) / ((v11 - v7) >> 2);
    do
    {
      if (v7 >= v12 && v7 <= v8)
      {
        *v7 = v24;
      }

      v24 = v25 + v24;
      ++v7;
    }

    while (v7 <= v11);
  }
}