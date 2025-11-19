void sub_257B3E058(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

uint64_t MEOWReader::CountDiphones(MEOWReader *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 3829);
  if (v3)
  {
    return *(v3 + 50 * a2 + a3);
  }

  else
  {
    return bswap32(*(*(this + 3830) + 100 * a2 + 2 * a3)) >> 16;
  }
}

void MEOWReader::~MEOWReader(MEOWReader *this)
{
  close(*this);
  if (kTrackDecodingRatio)
  {
    MTBEDebugParams::GetParam(kTrackDecodingRatio, &byte_27F8F21D8, byte_27F8F21D8);
    kTrackDecodingRatio = 0;
  }

  if (byte_27F8F21D8 == 1)
  {
    v2 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "Samples decoded: %lu used: %lu ratio: %5.2f%%\n", 0, *(this + 3821), ((*(this + 3821) * 100.0) / 0.0));
    fprintf(*v2, "      requested: %lu used: %lu ratio: %5.2f%%\n", *(this + 3820), *(this + 3821), ((*(this + 3821) * 100.0) / *(this + 3820)));
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEOWVectorBase::~MEOWVectorBase((v3 + 192));
    MEOWTreeBase::~MEOWTreeBase((v3 + 136));
    MEOWVectorBase::~MEOWVectorBase((v3 + 104));
    SLML::Storage<float>::RemoveReference(*(v3 + 88));
    SLML::Storage<float>::RemoveReference(*(v3 + 64));
    SLML::Storage<float>::RemoveReference(*(v3 + 40));
    SLML::Storage<float>::RemoveReference(*(v3 + 16));
    MEMORY[0x259C6DA90](v3, 0x10A0C40ED9C5895);
  }

  v4 = 0;
  v5 = this + 10416;
  do
  {
    v6 = *(this + v4 + 2);
    if (v6)
    {
      MEOWVectorBase::~MEOWVectorBase(v6);
      MEMORY[0x259C6DA90]();
    }

    for (i = 0; i != 400; i += 8)
    {
      v8 = *&v5[i];
      if (v8)
      {
        MEMORY[0x259C6DA70](v8, 0x60C8044C4A2DFLL);
      }
    }

    ++v4;
    v5 += 400;
  }

  while (v4 != 50);
  v9 = *(this + 3818);
  if (v9)
  {
    MEOWSampleCache::~MEOWSampleCache(v9);
    MEMORY[0x259C6DA90]();
  }

  v10 = *(this + 3819);
  if (v10)
  {
    MEOWSpectralCost::~MEOWSpectralCost(v10);
    MEMORY[0x259C6DA90]();
  }

  v11 = *(this + 3822);
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }
}

uint64_t MEOWReader::MappedSize(MEOWReader *this, uint64_t a2)
{
  v3 = this;
  if ((MEOWSampleCache::MapSamples(this) & 1) == 0)
  {
    pread(v3, __buf, 0x2CuLL, 0);
    if (__rev16(v7) > 1 || v7 == 256 && bswap32(v8) >> 16 >= 6)
    {
      if (v10)
      {
        if (kUseHeapBasedDemis)
        {
          MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, byte_27F8F21E8);
          kUseHeapBasedDemis = 0;
        }

        if (byte_27F8F21E8 == 1)
        {
          v4 = v9;
        }

        else
        {
          v4 = v10;
        }

        return bswap32(v4);
      }
    }
  }

  return a2;
}

void MEOWReader::AdvisePreload(MEOWReader *this, __int128 *a2, unint64_t a3)
{
  v5 = this;
  if (kPreloadVoice)
  {
    MTBEDebugParams::GetParam(kPreloadVoice, &qword_27F8F21F8, qword_27F8F21F8);
    kPreloadVoice = 0;
  }

  if (qword_27F8F21F8)
  {
    v6 = a2[1];
    v23 = *a2;
    *v24 = v6;
    *&v24[12] = *(a2 + 28);
    ComputeSectionLengths(&v23, &v17);
    if (kPreloadVoice)
    {
      MTBEDebugParams::GetParam(kPreloadVoice, &qword_27F8F21F8, qword_27F8F21F8);
      kPreloadVoice = 0;
    }

    if (qword_27F8F21F8 != 3)
    {
      if (qword_27F8F21F8 == 2)
      {
        v15 = bswap32(HIDWORD(v23));
        v16 = bswap32(HIDWORD(v17));
        fcntl(v5, 44, &v15);
        v14[0] = bswap32(*&v24[12]);
        v14[1] = bswap32(v20);
        fcntl(v5, 44, v14);
        v13[0] = bswap32(*&v24[8]);
        v13[1] = bswap32(v19);
        fcntl(v5, 44, v13);
        v12[0] = bswap32(*&v24[4]);
        v12[1] = bswap32(v18);
        fcntl(v5, 44, v12);
        if (!v22)
        {
          return;
        }

        v11[0] = bswap32(*&v24[16]);
        v11[1] = bswap32(v21);
        v8 = v11;
        goto LABEL_18;
      }

      if (qword_27F8F21F8 != 1)
      {
        return;
      }

      v15 = bswap32(*&v24[4]);
      v16 = 0;
      v7 = bswap32(v18);
LABEL_17:
      LODWORD(v16) = v7;
      v8 = &v15;
LABEL_18:
      fcntl(v5, 44, v8);
      return;
    }

    if (v22)
    {
      v9 = bswap32(*&v24[24]);
      v10 = v9 + bswap32(v22);
      if (!v9)
      {
LABEL_15:
        if (v10 >= a3)
        {
          return;
        }

        v15 = v10;
        v16 = 0;
        v7 = a3 - v10;
        goto LABEL_17;
      }
    }

    else
    {
      v9 = bswap32(*&v24[16]);
      v10 = bswap32(v21) + v9;
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    v15 = 0;
    v16 = v9;
    fcntl(v5, 44, &v15);
    goto LABEL_15;
  }
}

void MEOWReader::MEOWAdvanceDemi(void *a1, unint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  if (kUseHeapBasedDemis)
  {
    MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, byte_27F8F21E8);
    kUseHeapBasedDemis = 0;
  }

  if (byte_27F8F21E8)
  {
    v10 = MEOWReader::HeapDemiForMappedDemi(a1, *a2, a3, a4, 1);
    if (a5)
    {
      LODWORD(v11) = 0;
      do
      {
        v12 = *v10;
        v11 = (v11 + v12);
        v10 += 4 * v12;
        --a5;
      }

      while (a5);
    }

    else
    {
      v11 = 0;
    }

    v13 = (*a2 + 4 * v11);
  }

  else
  {
    if (!a5)
    {
      return;
    }

    v13 = *a2;
    do
    {
      v13 += 4 * *v13;
      --a5;
    }

    while (a5);
  }

  *a2 = v13;
}

unint64_t MEOWReader::HeapDemiForMappedDemi(void *a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  if (a5)
  {
    pthread_mutex_lock(&sDemiCacheLock);
  }

  if (a2)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v11 = *(&a1[25 * a3 + 52] + a4);
    v10 = a1[3807] + bswap32(*(a1[3806] + 200 * a3 + 4 * a4));
    a2 = v10;
  }

  v12 = a1 + 3802;
  v13 = a1[3802];
  if (!v13)
  {
    v15 = 0;
    v14 = 0;
LABEL_16:
    if (v11)
    {
      goto LABEL_59;
    }

    if (a4 | a3)
    {
      v20 = a1[3807] + bswap32(*(a1[3806] + 200 * a3 + 4 * a4));
    }

    else if (!v10)
    {
      v26 = 0;
      v27 = a1 + 1302;
      v28 = a1 + 52;
      do
      {
        for (i = 0; i != 50; ++i)
        {
          v30 = v27[i];
          if (v30)
          {
            v31 = *v30;
            v32 = *v30 && a2 >= v31;
            if (v32 && *(v28 + i) + v31 > a2)
            {
              a3 = v26;
              a4 = i;
              goto LABEL_45;
            }
          }
        }

        v27 += 50;
        v28 += 25;
        v32 = v26++ >= 0x31;
      }

      while (!v32);
    }

LABEL_45:
    v33 = a1[3829];
    if (v33)
    {
      v34 = *(v33 + 50 * a3 + a4);
    }

    else
    {
      v34 = bswap32(*(a1[3830] + 100 * a3 + 2 * a4)) >> 16;
    }

    if (!v34)
    {
LABEL_58:
      puts("Help, attempting to read 0 bytes for a demi.");
      v11 = 0;
      goto LABEL_59;
    }

    v11 = 0;
    v35 = (2 * v34 + 31) >> 5;
    v36 = a1[50 * a3 + 1302 + a4];
    v37 = v35 - 1;
    v38 = v36 + 1;
    while (1)
    {
      if (v35 == 1)
      {
        v39 = v36[v37];
        if (a2 >= v39)
        {
          v40 = *(&a1[25 * a3 + 52] + a4) + *v36;
          v41 = v40 - v39;
          if (v40 > a2)
          {
            v11 = v41;
          }
        }
      }

      else
      {
        v42 = *(v38 - 1);
        if (a2 >= v42)
        {
          v43 = *v38;
          if (a2 < *v38)
          {
            v11 = v43 - v42;
            if (v43 == v42)
            {
              goto LABEL_58;
            }

LABEL_59:
            if (v11 + v15 > 0x80000 && v14 != 0)
            {
              do
              {
                v45 = a1[3803];
                if (v45)
                {
                  v47 = *v45;
                  v46 = *(v45 + 8);
                  if (v46)
                  {
                    v48 = *(v45 + 8);
                  }

                  else
                  {
                    v48 = a1 + 3802;
                  }

                  *v48 = v47;
                  if (!v47)
                  {
                    v47 = a1 + 3802;
                  }

                  v47[1] = v46;
                }

                --v14;
                free(*(v45 + 32));
                MEMORY[0x259C6DA90](v45, 0x10E0C40A8F1378CLL);
              }

              while (v14);
            }

            operator new();
          }
        }
      }

      ++v38;
      if (!--v35)
      {
        if (!v11)
        {
          goto LABEL_58;
        }

        goto LABEL_59;
      }
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = a1[3802];
  while (1)
  {
    v17 = v16[2];
    if (v17)
    {
      v18 = *(v16 + 6);
      v19 = v18 + v17;
      if (v19 <= a2 && a2 + v11 < v19 + *(v16 + 7))
      {
        break;
      }
    }

    if (v15 + v11 > 0x80000)
    {
      ++v14;
    }

    v15 += *(v16 + 7);
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  if (v16 != v13)
  {
    v22 = *v16;
    v21 = v16[1];
    if (v21)
    {
      v23 = v16[1];
    }

    else
    {
      v23 = a1 + 3802;
    }

    *v23 = v22;
    if (!v22)
    {
      v22 = a1 + 3802;
    }

    v22[1] = v21;
    v24 = *v12;
    if (*v12)
    {
      *(v24 + 8) = v16;
    }

    *v16 = v24;
    v16[1] = 0;
    *v12 = v16;
    v19 = v18 + v16[2];
  }

  v25 = a2 + v16[4] - v19;
  if (a5)
  {
    pthread_mutex_unlock(&sDemiCacheLock);
  }

  return v25;
}

unint64_t MEOWReader::GetDemiRecord(MEOWReader *this, unsigned int a2, unsigned int a3, unint64_t a4, int a5)
{
  v10 = this + 400 * a2 + 8 * a3;
  v11 = *(v10 + 1302);
  if (!v11)
  {
    pthread_mutex_lock(&sDemiCacheLock);
    if (!*(v10 + 1302))
    {
      v12 = MEOWReader::ComputeDemiCache(this, a2, a3);
      __dmb(0xBu);
      *(v10 + 1302) = v12;
    }

    pthread_mutex_unlock(&sDemiCacheLock);
    v11 = *(v10 + 1302);
  }

  v14 = *(v11 + ((a4 >> 1) & 0x3FFFFFFFFFFFFFF8));
  MEOWReader::MEOWAdvanceDemi(this, &v14, a2, a3, a5 & 0xFFFFFFE1 | (2 * (a4 & 0xF)));
  return v14;
}

uint64_t MEOWReader::ComputeDemiCache(MEOWReader *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 3829);
  if (v3)
  {
    if (*(v3 + 50 * a2 + a3))
    {
      goto LABEL_3;
    }
  }

  else if (bswap32(*(*(this + 3830) + 100 * a2 + 2 * a3)) >> 16)
  {
LABEL_3:
    operator new[]();
  }

  return 0;
}

void sub_257B3EE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

double MEOWReader::GetDemi(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  if (kUseHeapBasedDemis)
  {
    MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, byte_27F8F21E8);
    kUseHeapBasedDemis = 0;
  }

  if (byte_27F8F21E8 == 1)
  {
    a2 = MEOWReader::HeapDemiForMappedDemi(a1, a2, 0, 0, 1);
  }

  if ((*(a2 + 1) & 0x3F) == 2)
  {
    a2 = *(a1 + 30456) + bswap32(*(a2 + 4));
    v8 = byte_27F8F21E8;
    if (kUseHeapBasedDemis)
    {
      MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, (byte_27F8F21E8 & 1));
      kUseHeapBasedDemis = 0;
      v8 = byte_27F8F21E8;
    }

    if (v8)
    {
      a2 = MEOWReader::HeapDemiForMappedDemi(a1, a2, 0, 0, 1);
    }
  }

  *(a4 + 67) = -1;
  *(a4 + 68) = -1;
  *(a4 + 65) = 0;
  v9 = *(a2 + 1);
  v10 = v9 & 0x3F;
  *(a4 + 64) = v9 & 0x3F;
  if (v10 <= 3)
  {
    if ((v9 & 0x3F) == 0)
    {
LABEL_41:
      result = 0.0;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    if (v10 == 1 || v10 == 3)
    {
      v12 = 0;
      *(a4 + 24) = bswap32(*(a2 + 6)) >> 16;
      goto LABEL_27;
    }

LABEL_40:
    fprintf(*MEMORY[0x277D85DF8], "MEOW: Bad Demi Format %d @ %08x\n", v10, a2 - *(a1 + 30432));
    goto LABEL_41;
  }

  if ((v9 & 0x3Fu) <= 6)
  {
    if (v10 - 4 < 2)
    {
      goto LABEL_26;
    }

    if (v10 == 6)
    {
      *(a4 + 68) = bswap32(*(a2 + 42)) >> 16;
      *(a4 + 67) = *(a2 + 41);
      if ((a3 & 1) == 0)
      {
        v11 = 40;
LABEL_25:
        *(a4 + 65) = *(a2 + v11);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    goto LABEL_40;
  }

  if (v10 != 7)
  {
    if (v10 == 8)
    {
      result = 0.0;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 65) = 0x80;
      return result;
    }

    goto LABEL_40;
  }

  *(a4 + 68) = bswap32(*(a2 + 10)) >> 16;
  *(a4 + 67) = *(a2 + 9);
  if ((a3 & 1) == 0)
  {
    v11 = 8;
    goto LABEL_25;
  }

LABEL_26:
  *(a4 + 24) = *(a2 + 6);
  v12 = *(a2 + 7);
LABEL_27:
  *(a4 + 66) = v12;
  v14 = 1 << v10;
  if ((v14 & 0x68) != 0)
  {
    v15 = a2 + 8;
    goto LABEL_31;
  }

  if ((v14 & 0x92) != 0)
  {
    v15 = 0;
LABEL_31:
    *(a4 + 56) = v15;
  }

  v16 = (***(a1 + 30576))(*(a1 + 30576), a1, (bswap32(*(a2 + 2)) >> 16) & 0xFFFCFFFF | ((((v9 & 0xC0) >> 6) & 3) << 16), *(a2 + 4));
  (*(*v16 + 24))(v16, *(a2 + 5));
  *a4 = (bswap32(*(a2 + 2)) >> 16) & 0xFFFCFFFF | ((((*(a2 + 1) & 0xC0) >> 6) & 3) << 16);
  *(a4 + 4) = *(a2 + 4);
  *(a4 + 6) = *(a2 + 5);
  *(a4 + 40) = v16[4];
  *(a4 + 8) = 0;
  *(a4 + 88) = 0;
  if (a3)
  {
    *(a4 + 16) = 0;
    (*(*v16 + 32))(v16, *(a4 + 24), a4 + 72);
    *(a4 + 44) = v16[4] - *(a4 + 40);
    *(a4 + 48) = (*(*v16 + 64))(v16) - *(a1 + 30432);
    v17 = (*(*v16 + 56))(v16, a4 + 72);
    v18 = *(a4 + 72);
  }

  else
  {
    *(a4 + 48) = (*(*v16 + 64))(v16) - *(a1 + 30432);
    *(a4 + 8) = (*(*v16 + 48))(v16, a4 + 72);
    *(a4 + 16) = *(a4 + 88);
    (*(*v16 + 32))(v16, *(a4 + 24), a4 + 72);
    *(a4 + 44) = v16[4] - *(a4 + 40);
    v18 = *(a4 + 72);
    v17 = *(a4 + 8) == 1 && ((v18[5] | v18[4] | v18[3]) & 0x8000u) == 0;
  }

  *(a4 + 8) = v17;
  *(a4 + 32) = v18;
  v19 = *(*v16 + 8);

  v19(v16);
  return result;
}

void MEOWReader::GetDemiCookie(uint64_t a1, unint64_t a2, int a3, int a4, uint64_t a5)
{
  if (kUseHeapBasedDemis)
  {
    MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, byte_27F8F21E8);
    kUseHeapBasedDemis = 0;
  }

  if (byte_27F8F21E8 == 1)
  {
    a2 = MEOWReader::HeapDemiForMappedDemi(a1, a2, 0, 0, 1);
  }

  if ((*(a2 + 1) & 0x3F) == 2)
  {
    a2 = *(a1 + 30456) + bswap32(*(a2 + 4));
    v10 = byte_27F8F21E8;
    if (kUseHeapBasedDemis)
    {
      MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, (byte_27F8F21E8 & 1));
      kUseHeapBasedDemis = 0;
      v10 = byte_27F8F21E8;
    }

    if (v10)
    {
      a2 = MEOWReader::HeapDemiForMappedDemi(a1, a2, 0, 0, 1);
    }
  }

  *(a5 + 52) = 255;
  v11 = *(a2 + 1) & 0x3F;
  if (v11 <= 5)
  {
    if (v11 == 3)
    {
      v12 = bswap32(*(a2 + 6)) >> 16;
      goto LABEL_28;
    }

    if (v11 != 5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v11 != 6)
    {
      if (v11 != 7)
      {
        if (v11 == 8)
        {
          *(a5 + 53) = 1;
          if (!a4)
          {
            return;
          }
        }

LABEL_18:
        fprintf(*MEMORY[0x277D85DF8], "MEOW: Bad Demi Format %d @ %08x\n", v11, a2 - *(a1 + 30432));
        *a5 = 0u;
        *(a5 + 16) = 0u;
        *(a5 + 32) = 0u;
        *(a5 + 44) = 0u;
        return;
      }

      *(a5 + 52) = *(a2 + 9);
      if ((a3 & 1) != 0 || (*(a2 + 8) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    *(a5 + 52) = *(a2 + 41);
    if ((a3 & 1) == 0 && *(a2 + 40) < 0)
    {
LABEL_25:
      *(a5 + 53) = 1;
      if (!a4)
      {
        return;
      }
    }
  }

LABEL_26:
  v12 = *(a2 + 6);
LABEL_28:
  MEOWSVDDistanceEncoder::UnpackCookie((a2 + 8), a5);
  v13 = (***(a1 + 30576))(*(a1 + 30576), a1, (bswap32(*(a2 + 2)) >> 16) & 0xFFFCFFFF | ((((*(a2 + 1) & 0xC0) >> 6) & 3) << 16), *(a2 + 4));
  (*(*v13 + 16))(v13, *(a2 + 5));
  if (a3)
  {
    (*(*v13 + 16))(v13, v12);
  }

  *(a5 + 56) = (*(*v13 + 64))(v13) - *(a1 + 30432);
  v14 = *(*v13 + 8);

  v14(v13);
}

uint64_t MEOWReader::IsWordOnly(void *a1, unint64_t a2)
{
  if (kUseHeapBasedDemis)
  {
    MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, byte_27F8F21E8);
    kUseHeapBasedDemis = 0;
  }

  if (byte_27F8F21E8 == 1)
  {
    a2 = MEOWReader::HeapDemiForMappedDemi(a1, a2, 0, 0, 1);
  }

  if ((*(a2 + 1) & 0x3F) == 2)
  {
    a2 = a1[3807] + bswap32(*(a2 + 4));
    v4 = byte_27F8F21E8;
    if (kUseHeapBasedDemis)
    {
      MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, (byte_27F8F21E8 & 1));
      kUseHeapBasedDemis = 0;
      v4 = byte_27F8F21E8;
    }

    if (v4)
    {
      a2 = MEOWReader::HeapDemiForMappedDemi(a1, a2, 0, 0, 1);
    }
  }

  v5 = *(a2 + 1) & 0x3F;
  switch(v5)
  {
    case 6:
      v6 = *(a2 + 40);
      return v6 < 0;
    case 8:
      return 1;
    case 7:
      v6 = *(a2 + 8);
      return v6 < 0;
  }

  return 0;
}

void MEOWReader::GetAdjacent(void *a1, unint64_t a2, _BYTE *a3, char *a4)
{
  if (kUseHeapBasedDemis)
  {
    MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, byte_27F8F21E8);
    kUseHeapBasedDemis = 0;
  }

  if (byte_27F8F21E8 == 1)
  {
    a2 = MEOWReader::HeapDemiForMappedDemi(a1, a2, 0, 0, 1);
  }

  if ((*(a2 + 1) & 0x3F) == 2)
  {
    a2 = a1[3807] + bswap32(*(a2 + 4));
    v8 = byte_27F8F21E8;
    if (kUseHeapBasedDemis)
    {
      MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, (byte_27F8F21E8 & 1));
      kUseHeapBasedDemis = 0;
      v8 = byte_27F8F21E8;
    }

    if (v8)
    {
      a2 = MEOWReader::HeapDemiForMappedDemi(a1, a2, 0, 0, 1);
    }
  }

  *a3 = -1;
  *a4 = 0;
  v9 = *(a2 + 1) & 0x3F;
  if ((*(a2 + 1) & 0x3F) != 0)
  {
    if (v9 == 6)
    {
      *a3 = *(a2 + 41);
      v10 = *(a2 + 40);
    }

    else
    {
      if (v9 != 7)
      {
        return;
      }

      *a3 = *(a2 + 9);
      v10 = *(a2 + 8);
    }
  }

  else
  {
    v10 = 2;
  }

  *a4 = v10;
}

void MEOWReader::PrefetchDemi(MEOWReader *this, unsigned int a2, unsigned int a3, unint64_t a4, int a5)
{
  MEOWVectorBase::MEOWVectorBase(v12, 2);
  DemiRecord = MEOWReader::GetDemiRecord(this, a2, a3, a4, a5);
  MEOWReader::GetDemi(this, DemiRecord, a5, v11);
  MEOWReader::PrefetchSamples(this, v11[0], v11[10], v11[11]);
  MEOWVectorBase::~MEOWVectorBase(v12);
}

MEOWReader *MEOWReader::PrefetchSamples(MEOWReader *this, int a2, unsigned int a3, unsigned int a4)
{
  v4 = a4;
  v5 = this;
  v6 = (*(this + 3811) + bswap32(*(*(this + 3808) + 12 * a2)));
  v7 = *(this + 15269);
  if (v7 >= 2)
  {
    v8 = v6 + 1;
    v9 = bswap32(*v6) >> 16;
    goto LABEL_3;
  }

  if (v7 == 1)
  {
    v17 = *(this + 15270);
    if (v17 >= 3)
    {
      v8 = v6 + 1;
      v9 = bswap32(*v6) >> 16;
      if (v17 <= 4)
      {
        v10 = 0;
        v11 = &v8[3 * v9];
        if (!v9)
        {
          return this;
        }

        goto LABEL_4;
      }

LABEL_3:
      v10 = v8;
      v11 = &v6[6 * v9 + 1];
      v8 = 0;
      if (!v9)
      {
        return this;
      }

LABEL_4:
      v12 = 1 - v9;
      while (1)
      {
        if (v10)
        {
          v13 = bswap32(*(v10 + 2));
          if (a3 < v13)
          {
            goto LABEL_20;
          }

          v14 = bswap32(*(v10 + 1));
          v10 += 6;
        }

        else
        {
          v15 = bswap32(v8[2]);
          if (a3 < HIWORD(v15))
          {
LABEL_20:
            if (a4)
            {
              v19 = -v12;
              do
              {
                if (v10)
                {
                  v20 = bswap32(*(v10 + 2)) - a3;
                  v21 = v4 >= v20;
                  v22 = v4 - v20;
                  if (v21)
                  {
                    v4 = v22;
                  }

                  else
                  {
                    v4 = 0;
                  }

                  this = Prefetch(v11, (v11 - *(v5 + 7608)), bswap32(*(v10 + 1)));
                  v23 = bswap32(*(v10 + 1));
                  v10 += 6;
                }

                else
                {
                  v24 = (bswap32(v8[2]) >> 16) - a3;
                  v21 = v4 >= v24;
                  v25 = v4 - v24;
                  if (v21)
                  {
                    v4 = v25;
                  }

                  else
                  {
                    v4 = 0;
                  }

                  this = Prefetch(v11, (v11 - *(v5 + 7608)), bswap32(*v8) >> 16);
                  v26 = *v8;
                  v8 += 3;
                  v23 = bswap32(v26) >> 16;
                }

                v21 = v19-- != 0;
                if (!v21)
                {
                  break;
                }

                a3 = 0;
                v11 += v23;
              }

              while (v4);
            }

            return this;
          }

          v10 = 0;
          v13 = HIWORD(v15);
          v16 = *v8;
          v8 += 3;
          v14 = bswap32(v16) >> 16;
        }

        a3 -= v13;
        v11 += v14;
        if (++v12 == 1)
        {
          return this;
        }
      }
    }
  }

  v18 = *(this + 7608);

  return Prefetch(&v6[a3], v6 + 2 * a3 - v18, a4);
}

uint64_t Prefetch(const unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (MTBEDebugFlags::sMEOWDebug)
  {
    result = fprintf(*MEMORY[0x277D85DF8], "Prefetch %lu@%08lx\n", (a3 + 4095) >> 12, a2);
  }

  if (a3)
  {
    v5 = a3 + 2048;
    do
    {
      v5 -= 2048;
    }

    while (v5 > 0x800);
  }

  return result;
}

uint64_t MEOWReader::ReadSamples(MEOWReader *this, int a2, uint64_t a3, unsigned int a4, __int16 *a5, unint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v13 = this + 28672;
  v14 = *(*(this + 3808) + 12 * a2);
  v15 = *(this + 3811);
  *(this + 3821) += a4;
  pthread_mutex_lock(&sSampleCacheLock);
  v16 = *(v13 + 933);
  v17 = v16 == 1;
  if (v16 > 1)
  {
    goto LABEL_2;
  }

  v25 = (v15 + bswap32(v14));
  if (!v17 || (v26 = *(v13 + 934), v26 < 3))
  {
    v40 = v9;
    v47 = *(this + 7608);
    v48 = &v25[a3];
    *a6 = (v48 - v47);
    *a7 = v48 + 2 * v9 - v47;
    if (v9)
    {
      v49 = 0;
      do
      {
        a5[v49] = bswap32(v48[v49]) >> 16;
        ++v49;
      }

      while (v9 != v49);
    }

    else
    {
      v40 = 0;
    }

    goto LABEL_45;
  }

  if (v26 >= 6)
  {
LABEL_2:
    v18 = (*(this + 3811) + bswap32(*(*(this + 3808) + 12 * a2)));
    v19 = __rev16(*v18);
    v20 = (*(this + 3813) + bswap32(*(v18 + 1)));
    v66 = v18;
    v21 = (v18 + 4);
    if (*v18)
    {
      while (1)
      {
        v22 = bswap32(v21[1]);
        v23 = a3 - v22;
        if (a3 < v22)
        {
          break;
        }

        v24 = *v21;
        v21 += 2;
        v20 += bswap32(v24);
        a3 = a3 - v22;
        if (!--v19)
        {
          goto LABEL_28;
        }
      }
    }

    v23 = a3;
LABEL_28:
    v40 = 0;
    *a6 = v23 | ((v21 - *(this + 7608)) << 32);
    if (v19 && v9)
    {
      LODWORD(v40) = 0;
      do
      {
        v41 = *v21;
        v42 = bswap32(v21[1]);
        v43 = v42 - v23;
        if (v42 - v23 >= v9)
        {
          v44 = v9;
        }

        else
        {
          v44 = v42 - v23;
        }

        *(this + 3820) += v42;
        v45 = MEOWSampleCache::Samples(*(this + 3818), bswap32(v66[1]) >> 16, bswap32(v41), v42, v20, v23, v44);
        memcpy(a5, v45, 2 * v44);
        if (v9 <= v43)
        {
          *a7 = (v44 + v23) | ((v21 - *(this + 7608)) << 32);
        }

        else
        {
          v23 = 0;
          v46 = *v21;
          v21 += 2;
          v20 += bswap32(v46);
          --v19;
        }

        v40 = v44 + v40;
        if (!v19)
        {
          break;
        }

        a5 += v44;
        v9 -= v44;
      }

      while (v9);
    }
  }

  else
  {
    v27 = a6;
    v30 = *v25;
    v28 = v25 + 1;
    v29 = v30;
    v31 = __rev16(v30);
    v32 = bswap32(v30) >> 16;
    if (v26 == 5)
    {
      v33 = v28;
    }

    else
    {
      v33 = 0;
    }

    if (v26 == 5)
    {
      v34 = 0;
    }

    else
    {
      v34 = v28;
    }

    if (v26 == 5)
    {
      v35 = &v33[6 * v31];
    }

    else
    {
      v35 = &v34[3 * v31];
    }

    if (!v29)
    {
      goto LABEL_48;
    }

    while (v33)
    {
      v36 = bswap32(*(v33 + 2));
      if (a3 < v36)
      {
        v51 = v33;
        goto LABEL_51;
      }

      v37 = bswap32(*(v33 + 1));
      v33 += 6;
LABEL_25:
      a3 = a3 - v36;
      v35 = (v35 + v37);
      if (!--v32)
      {
        goto LABEL_48;
      }
    }

    v38 = bswap32(v34[2]);
    if (a3 >= HIWORD(v38))
    {
      v33 = 0;
      v36 = HIWORD(v38);
      v39 = *v34;
      v34 += 3;
      v37 = bswap32(v39) >> 16;
      goto LABEL_25;
    }

    v33 = 0;
LABEL_48:
    if (v33)
    {
      v51 = v33;
    }

    else
    {
      v51 = v34;
    }

LABEL_51:
    v40 = 0;
    *v27 = a3 | ((v51 - *(this + 7608)) << 32);
    if (v32 && v9)
    {
      LODWORD(v40) = 0;
      while (1)
      {
        if (v33)
        {
          v52 = *(v33 + 1);
          v53 = bswap32(*(v33 + 2));
          if (v53 - a3 >= v9)
          {
            v54 = v9;
          }

          else
          {
            v54 = v53 - a3;
          }

          *(this + 3820) += v53;
          v55 = bswap32(*v33) >> 16;
          v56 = bswap32(v52);
        }

        else
        {
          v53 = bswap32(v34[2]) >> 16;
          if (v53 - a3 >= v9)
          {
            v54 = v9;
          }

          else
          {
            v54 = v53 - a3;
          }

          *(this + 3820) += v53;
          v55 = bswap32(v34[1]) >> 16;
          v56 = bswap32(*v34) >> 16;
        }

        v57 = MEOWSampleCache::Samples(*(this + 3818), v55, v56, v53, v35, a3, v54);
        memcpy(a5, v57, 2 * v54);
        v58 = v9 - v54;
        if (v9 == v54)
        {
          if (v33)
          {
            v59 = bswap32(*(v33 + 2)) - a3;
            v60 = v33;
            if (v59 != v9)
            {
              goto LABEL_74;
            }

            if (*v33 != -1)
            {
              v60 = v33;
              if (v59 == v9)
              {
                v60 = v33;
                if (*v33 == -1)
                {
                  v61 = v33 + 12;
                  goto LABEL_84;
                }
              }

LABEL_74:
              v62 = (v9 + a3) | ((v60 - *(this + 7608)) << 32);
              goto LABEL_75;
            }

            goto LABEL_77;
          }

          if ((bswap32(v34[2]) >> 16) - a3 != v9 || v34[1] != -1)
          {
            v60 = v34;
            if ((bswap32(v34[2]) >> 16) - a3 != v9)
            {
              goto LABEL_74;
            }

            v60 = v34;
            if (v34[1] != -1)
            {
              goto LABEL_74;
            }

            v61 = v34 + 6;
LABEL_84:
            v62 = (v61 - *(this + 7608)) << 32;
LABEL_75:
            *a7 = v62;
            goto LABEL_80;
          }
        }

        if (!v33)
        {
          v64 = *v34;
          v34 += 3;
          v63 = bswap32(v64) >> 16;
          goto LABEL_79;
        }

LABEL_77:
        v63 = bswap32(*(v33 + 1));
        v33 += 6;
LABEL_79:
        a3 = 0;
        v35 = (v35 + v63);
        --v32;
LABEL_80:
        v40 = v54 + v40;
        if (v32)
        {
          a5 += v54;
          v9 -= v54;
          if (v58)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_45:
  pthread_mutex_unlock(&sSampleCacheLock);
  return v40;
}

BOOL MEOWReader::IsAlias(void *a1, unint64_t a2, _WORD *a3)
{
  if (kUseHeapBasedDemis)
  {
    MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, byte_27F8F21E8);
    kUseHeapBasedDemis = 0;
  }

  if (byte_27F8F21E8 == 1)
  {
    a2 = MEOWReader::HeapDemiForMappedDemi(a1, a2, 0, 0, 1);
  }

  v6 = *(a2 + 1) & 0x3F;
  if (a3 && v6 == 2)
  {
    *a3 = bswap32(*(a2 + 2)) >> 16;
  }

  return v6 == 2;
}

void MEOWReader::GetDistanceCookies(uint64_t a1, unsigned int a2, unsigned int a3, int a4, MEOWVectorBase *a5, void *a6)
{
  v11 = a1 + 28672;
  v12 = *(a1 + 30538);
  if (v12 > 1 || (v16 = 1.0, v15 = 0.5, v12 == 1) && *(a1 + 30540) >= 4u)
  {
      ;
    }

    v14 = a3;
    if (!a4)
    {
      v14 = a2;
    }

    v15 = COERCE_FLOAT(bswap32(*&i[4 * v14 + 106])) * 0.5;
    v16 = 1.0 / expf(COERCE_FLOAT(bswap32(*&i[4 * v14 + 104])));
  }

  v17 = *(v11 + 1864);
  if (v17 == 3)
  {
    goto LABEL_19;
  }

  if (v17 == 2)
  {
    if (a4)
    {
      v20 = 0x10000;
    }

    else
    {
      v20 = 0;
    }

    srandom(a2 | (a3 << 8) | v20);
LABEL_19:
    v21 = *(a1 + 30632);
    if (v21)
    {
      v22 = *(v21 + 50 * a2 + a3);
    }

    else
    {
      v22 = bswap32(*(*(a1 + 30640) + 100 * a2 + 2 * a3)) >> 16;
    }

    v23 = v22;
    if (a6)
    {
      v23 = a6[2];
    }

    DemiRecord = MEOWReader::GetDemiRecord(a1, a2, a3, 0, a4);
    v43 = DemiRecord;
    MEOWVectorBase::MEOWVectorBase(v42, 2);
    MEOWReader::GetDemi(a1, DemiRecord, a4, v39);
    if (*(a5 + 3) < v22)
    {
      MEOWVectorBase::Allocate(a5, v22, 1);
    }

    *(a5 + 2) = v22;
    if (v23)
    {
      for (j = 0; j != v23; ++j)
      {
        if (a6)
        {
          v26 = *(*a6 + 2 * j);
          v27 = MEOWReader::GetDemiRecord(a1, a2, a3, v26, a4);
          MEOWReader::GetDemi(a1, v27, a4, v39);
        }

        else if (j)
        {
          MEOWReader::MEOWAdvanceDemi(a1, &v43, a2, a3, 1);
          MEOWReader::MEOWAdvanceDemi(a1, &v43, a2, a3, 1);
          MEOWReader::GetDemi(a1, v43, a4, v39);
          v26 = j;
        }

        else
        {
          v26 = 0;
        }

        v28 = *a5 + 60 * v26;
        *(v28 + 56) = v40 | 0x40000000;
        if (*(v11 + 1864) == 2)
        {
          *(*a5 + 60 * v26) = vcvts_n_f32_s64(random(), 0x3FuLL);
        }

        else
        {
          *v28 = (a4 ^ 1u);
        }
      }
    }

    goto LABEL_52;
  }

  if (*(v11 + 1864))
  {
    return;
  }

  v18 = *(a1 + 30632);
  if (v18)
  {
    v19 = *(v18 + 50 * a2 + a3);
  }

  else
  {
    v19 = bswap32(*(*(a1 + 30640) + 100 * a2 + 2 * a3)) >> 16;
  }

  v29 = v19;
  if (a6)
  {
    v29 = a6[2];
  }

  if (!v29)
  {
    *(a5 + 2) = 0;
    return;
  }

  v30 = MEOWReader::GetDemiRecord(a1, a2, a3, 0, a4);
  v43 = v30;
  MEOWVectorBase::MEOWVectorBase(v42, 2);
  v37 = v30;
  MEOWReader::GetDemi(a1, v30, a4, v39);
  if (!v41)
  {
    MEOWReader::GetDistanceCookies();
  }

  if (*(a5 + 3) < v19)
  {
    MEOWVectorBase::Allocate(a5, v19, 1);
  }

  v31 = 0;
  v32 = 0;
  *(a5 + 2) = v19;
  do
  {
    if (a6)
    {
      v33 = *(*a6 + 2 * v32);
      v34 = *a5;
      v35 = MEOWReader::GetDemiRecord(a1, a2, a3, v33, a4);
      MEOWReader::GetDemiCookie(a1, v35, a4, 0, v34 + 60 * v33);
    }

    else
    {
      if (v32)
      {
        MEOWReader::MEOWAdvanceDemi(a1, &v43, a2, a3, 1);
        MEOWReader::MEOWAdvanceDemi(a1, &v43, a2, a3, 1);
        v37 = v43;
      }

      MEOWReader::GetDemiCookie(a1, v37, a4, 0, *a5 + v31);
      v33 = v32;
    }

    v36 = *a5 + 60 * v33;
    *(v36 + 56) |= 0x80000000;
    *(v36 + 44) = v16;
    *(v36 + 48) = v15;
    ++v32;
    v31 += 60;
  }

  while (v29 != v32);
LABEL_52:
  MEOWVectorBase::~MEOWVectorBase(v42);
}

void sub_257B40614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

void MEOWReader::GetDistanceCookie(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4, int a5, uint64_t a6)
{
  v12 = a1 + 28672;
  v13 = *(a1 + 30538);
  if (v13 > 1 || (v17 = 1.0, v16 = 0.5, v13 == 1) && *(a1 + 30540) >= 4u)
  {
      ;
    }

    if (a5)
    {
      v15 = a3;
    }

    else
    {
      v15 = a2;
    }

    v16 = COERCE_FLOAT(bswap32(*&i[4 * v15 + 106])) * 0.5;
    v17 = 1.0 / expf(COERCE_FLOAT(bswap32(*&i[4 * v15 + 104])));
  }

  MEOWVectorBase::MEOWVectorBase(v28, 2);
  DemiRecord = MEOWReader::GetDemiRecord(a1, a2, a3, a4, a5);
  MEOWReader::GetDemi(a1, DemiRecord, a5, v23);
  v19 = *(v12 + 1864);
  if (!*(v12 + 1864))
  {
    MEOWSVDDistanceEncoder::UnpackCookie(v25, a6);
    *(a6 + 52) = v27;
    *(a6 + 53) = v26 >> 7;
    *(a6 + 56) = v24 | 0x80000000;
    *(a6 + 44) = v17;
    *(a6 + 48) = v16;
    goto LABEL_23;
  }

  if (v19 == 2)
  {
    if (a5)
    {
      v20 = 0x10000;
    }

    else
    {
      v20 = 0;
    }

    srandom(a2 | (a3 << 8) | v20);
    v21 = *(v12 + 1864);
    *(a6 + 56) = v24 | 0x40000000;
    if (v21 == 2)
    {
      v22 = vcvts_n_f32_s64(random(), 0x3FuLL);
LABEL_21:
      *a6 = v22;
      goto LABEL_23;
    }

LABEL_20:
    v22 = (a5 ^ 1u);
    goto LABEL_21;
  }

  if (v19 == 3)
  {
    *(a6 + 56) = v24 | 0x40000000;
    goto LABEL_20;
  }

LABEL_23:
  MEOWVectorBase::~MEOWVectorBase(v28);
}

void MEOWReader::GetAdjacent(MEOWReader *this, unsigned int a2, unsigned int a3, int a4, MEOWVectorBase *a5, MEOWVectorBase *a6)
{
  v11 = *(this + 3829);
  if (v11)
  {
    v12 = *(v11 + 50 * a2 + a3);
  }

  else
  {
    v12 = bswap32(*(*(this + 3830) + 100 * a2 + 2 * a3)) >> 16;
  }

  DemiRecord = MEOWReader::GetDemiRecord(this, a2, a3, 0, a4);
  v15 = DemiRecord;
  if (*(a5 + 3) < v12)
  {
    MEOWVectorBase::Allocate(a5, v12, 1);
  }

  *(a5 + 2) = v12;
  if (*(a6 + 3) >= v12)
  {
    *(a6 + 2) = v12;
    if (!v12)
    {
      return;
    }
  }

  else
  {
    MEOWVectorBase::Allocate(a6, v12, 1);
    *(a6 + 2) = v12;
  }

  v14 = 0;
  do
  {
    if (v14)
    {
      MEOWReader::MEOWAdvanceDemi(this, &v15, a2, a3, 1);
      MEOWReader::MEOWAdvanceDemi(this, &v15, a2, a3, 1);
      DemiRecord = v15;
    }

    MEOWReader::GetAdjacent(this, DemiRecord, (*a5 + v14), (*a6 + v14));
    ++v14;
  }

  while (v12 != v14);
}

uint64_t MEOWReader::DescribeDemi(MEOWReader *a1, unsigned int a2, unsigned int a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, MEOWVectorBase *a8)
{
  DemiRecord = MEOWReader::GetDemiRecord(a1, a2, a3, a4, a5);
  MEOWReader::GetDemi(a1, DemiRecord, a5, a6);
  v17 = *(a6 + 24);
  if (v17)
  {
    if (a5)
    {
      v18 = v17 - 1;
      if (v17 != 1)
      {
        v19 = *(a6 + 40);
        v20 = 2 * v17;
        v21 = *(a6 + 32);
        do
        {
          v22 = *v21++;
          v19 += v22 & 0x7FFF;
          --v18;
        }

        while (v18);
        *(a6 + 32) = *(a6 + 32) + v20 - 2;
        *(a6 + 40) = v19;
      }

      if ((*(a6 + 8) & 1) == 0)
      {
        *(a6 + 40) = *(a6 + 40) + (**(a6 + 32) & 0x7FFF) - 110;
LABEL_16:

        return MEOWReader::GetVoicelessPPs(a1, a6, a7, a8);
      }
    }

    else
    {
      *(a6 + 32) += 2 * *(a6 + 16);
      if (*(a6 + 8) != 1)
      {
        goto LABEL_16;
      }
    }

    return MEOWReader::GetVoicedPPs(a1, a6, a7, a8);
  }

  else
  {
    v23 = 60;
    if (a5)
    {
      v23 = 62;
    }

    return fprintf(*MEMORY[0x277D85DF8], "Empty demi %d%c%d#%lu\n", a2, v23, a3, a4);
  }
}

uint64_t MEOWReader::GetVoicedPPs(MEOWReader *this, uint64_t a2, uint64_t a3, MEOWVectorBase *a4)
{
  v8 = *(a2 + 32);
  v9 = v8[-1].u16[2] + v8[-1].u16[1] + v8[-1].u16[3];
  v10 = vaddvq_s32(vmovl_u16(*v8));
  v11 = (v10 + v9);
  if (*(a4 + 3) < v11)
  {
    MEOWVectorBase::Allocate(a4, (v10 + v9), 1);
    v9 = v8[-1].u16[1] + v8[-1].u16[2] + v8[-1].u16[3];
  }

  *(a4 + 2) = v11;
  result = MEOWReader::ReadSamples(this, *a2, (*(a2 + 40) - v9), v11, *a4, &v18, &v17);
  v13 = 0;
  v14 = a3 + 4;
  for (i = 0x7FFFFFFFFFFFFFFDLL; i != 4; ++i)
  {
    *(v14 + 4) = 0;
    v16 = v8->u16[i];
    *(v14 - 4) = v13;
    *v14 = v16;
    v13 += v16;
    v14 += 12;
  }

  return result;
}

uint64_t MEOWReader::GetVoicelessPPs(MEOWReader *this, int *a2, uint64_t a3, MEOWVectorBase *a4)
{
  if (*(a4 + 3) <= 0x301uLL)
  {
    MEOWVectorBase::Allocate(a4, 0x302uLL, 1);
  }

  *(a4 + 2) = 770;
  result = MEOWReader::ReadSamples(this, *a2, (a2[10] - 330), 0x302u, *a4, &v12, &v11);
  v9 = 0;
  v10 = (a3 + 8);
  do
  {
    *(v10 - 2) = v9;
    *(v10 - 1) = 110;
    *v10 = 1;
    v10 += 12;
    v9 += 110;
  }

  while (v9 != 770);
  return result;
}

void MEOWReader::GetUnitCosts(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    a14 = 0;
  }

  MEOWUnitCostWindow::MEOWUnitCostWindow(v23, a5 + a4, 1, 0.0);
  v18 = *(a1 + 30632);
  if (v18)
  {
    v19 = *(v18 + 50 * a2 + a3);
    if (!a14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v21 = bswap32(*(*(a1 + 30640) + 100 * a2 + 2 * a3)) >> 16;
    if (!a14)
    {
LABEL_7:
      SLML::Vector<float>::Vector(&v22, 0);
    }
  }

  v20 = *(a14 + 16);
  goto LABEL_7;
}

void sub_257B411CC(_Unwind_Exception *a1)
{
  SLML::Storage<float>::RemoveReference(*(v1 - 168));
  MEOWVectorBase::~MEOWVectorBase((v1 - 152));
  _Unwind_Resume(a1);
}

void MEOWReader::GetUnitCost(MEOWReader *a1, unsigned int a2, unsigned int a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  MEOWUnitCostWindow::MEOWUnitCostWindow(v12, a6 + a5, 1, 0.0);
  v11[4] = MEOWReader::GetDemiRecord(a1, a2, a3, a4, 0);
  MEOWVectorBase::MEOWVectorBase(v11, 2);
  SLML::Vector<float>::Vector(&v10, 0);
}

void sub_257B41488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MEOWVectorBase::~MEOWVectorBase(va);
  MEOWVectorBase::~MEOWVectorBase((v15 - 136));
  _Unwind_Resume(a1);
}

void MEOWReader::GetSpectralCosts(MEOWReader *this, int a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, float *a8)
{
  v12 = *(this + 3819);
  if (v12 && (MEOWSpectralCost::GetSpectralCookie(v12, a2, a3, a4, a7, v21) & 1) != 0)
  {
    MEOWVectorBase::MEOWVectorBase(v19, 60);
    MEOWReader::GetDistanceCookies(this, a5, a6, a7, v19, 0);
    if (v20)
    {
      v14 = 0;
      for (i = 0; i < v20; ++i)
      {
        v16 = MEOWRawSVDDistance(v21, (v19[0] + v14));
        a8[i] = powf(v16, 0.33333);
        v14 += 60;
      }
    }

    MEOWVectorBase::~MEOWVectorBase(v19);
  }

  else
  {
    v17 = *(this + 3829);
    if (v17)
    {
      v18 = *(v17 + 50 * a5 + a6);
    }

    else
    {
      v18 = bswap32(*(*(this + 3830) + 100 * a5 + 2 * a6)) >> 16;
    }

    bzero(a8, 4 * v18);
  }
}

void MEOWReader::GetSpectralCost(MEOWReader *this, int a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, uint64_t a7, unsigned int a8, float *a9)
{
  v10 = *(this + 3819);
  if (v10 && (MEOWSpectralCost::GetSpectralCookie(v10, a2, a3, a4, a8, v17) & 1) != 0)
  {
    MEOWVectorBase::MEOWVectorBase(v16, 60);
    MEOWReader::GetDistanceCookies(this, a5, a6, a8, v16, 0);
    v15 = MEOWRawSVDDistance(v17, v16[0] + 15 * a7);
    *a9 = powf(v15, 0.33333);
    MEOWVectorBase::~MEOWVectorBase(v16);
  }

  else
  {
    *a9 = 0.0;
  }
}

uint64_t MEOWReader::SubstituteDemis(MEOWReader *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(this + 3829);
  if (!v8)
  {
    v11 = *(this + 3830);
    if (*(v11 + 100 * *a2 + 2 * v7))
    {
      v10 = bswap32(*(v11 + 100 * *a3 + 2 * *a4)) >> 16;
      if (!v10)
      {
        goto LABEL_9;
      }

      return 0;
    }

LABEL_8:
    v10 = 1;
    goto LABEL_9;
  }

  if (!*(v8 + 50 * *a2 + v7))
  {
    goto LABEL_8;
  }

  v9 = v8 + 50 * *a3;
  v10 = *(v9 + *a4);
  if (*(v9 + *a4))
  {
    return 0;
  }

LABEL_9:
  if (*a3 <= 0x13u)
  {
    if (*a3 > 3u)
    {
      if (v7 == 4)
      {
        v12 = 8;
        if (!v8)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v7 != 5)
        {
          goto LABEL_43;
        }

        v12 = 20;
        if (!v8)
        {
          goto LABEL_40;
        }
      }
    }

    else if (v7 == 2)
    {
      v12 = 3;
      if (!v8)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_43;
      }

      v12 = 2;
      if (!v8)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_36;
  }

  if (*a3 <= 0x17u)
  {
    if (v7 == 20)
    {
      v12 = 5;
      if (!v8)
      {
LABEL_40:
        v13 = *(this + 3830);
        if (*(v13 + 100 * *a2 + 2 * v12) && bswap32(*(v13 + 100 * v12 + 2 * *a4)) >> 16)
        {
LABEL_42:
          *a3 = v12;
          return 2;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (v7 != 23)
      {
        goto LABEL_43;
      }

      v12 = 24;
      if (!v8)
      {
        goto LABEL_40;
      }
    }

LABEL_36:
    if (*(v8 + 50 * *a2 + v12) && *(v8 + 50 * v12 + *a4))
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  switch(v7)
  {
    case 0x18:
      v12 = 23;
      if (!v8)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    case 0x2F:
      v12 = 32;
      if (!v8)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    case 0x1B:
      v12 = 26;
      if (!v8)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
  }

LABEL_43:
  if (!v10)
  {
    return v10;
  }

  v14 = 1;
  while (2)
  {
    v15 = 0;
    v16 = 42;
    while (1)
    {
      if (v8)
      {
        if (*(v8 + 50 * v6 + v16))
        {
          break;
        }

        goto LABEL_50;
      }

      if (bswap32(*(*(this + 3830) + 100 * v6 + 2 * v16)) >> 16)
      {
        break;
      }

LABEL_50:
      v16 = asc_257B98D8B[++v15];
      if (v15 == 4)
      {
        v17 = 0;
        *a5 = 0;
        do
        {
          v18 = *a2;
          v19 = *(this + 3829);
          if (v19)
          {
            if (*(v19 + 50 * *a2 + v17))
            {
              goto LABEL_59;
            }
          }

          else if (bswap32(*(*(this + 3830) + 100 * *a2 + 2 * v17)) >> 16)
          {
            goto LABEL_59;
          }

          *a5 = ++v17;
        }

        while (v17 != 50);
        return 0xFFFFFFFFLL;
      }
    }

    *a5 = v16;
    v19 = *(this + 3829);
LABEL_59:
    v20 = 0;
    v21 = *a3;
    v22 = 42;
    do
    {
      if (v19)
      {
        if (*(v19 + 50 * v22 + v21))
        {
          goto LABEL_77;
        }
      }

      else if (bswap32(*(*(this + 3830) + 100 * v22 + 2 * v21)) >> 16)
      {
LABEL_77:
        *a6 = v22;
        return v14;
      }

      v22 = asc_257B98D8B[++v20];
    }

    while (v20 != 4);
    v23 = 0;
    *a6 = 0;
    v24 = 1;
    do
    {
      v25 = *a3;
      v26 = *(this + 3829);
      if (v26)
      {
        if (*(v26 + v25 + v23))
        {
          return v14;
        }
      }

      else if (bswap32(*(*(this + 3830) + 2 * v25 + 2 * v23)) >> 16)
      {
        return v14;
      }

      *a6 = v24;
      v23 += 50;
      ++v24;
    }

    while (v23 != 2500);
    if (!*a3)
    {
      return 0xFFFFFFFFLL;
    }

    *a3 = 0;
    v6 = *a2;
    v8 = *(this + 3829);
    if (v8)
    {
      v27 = *(v8 + 50 * *a2);
    }

    else
    {
      v27 = bswap32(*(*(this + 3830) + 100 * *a2)) >> 16;
    }

    v10 = 2;
    v14 = 3;
    if (!v27)
    {
      continue;
    }

    return v10;
  }
}

uint64_t MEOWReader::SubstituteFirst(MEOWReader *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  while (1)
  {
    *a2 = 42;
    v3 = *a3;
    v4 = *(this + 3829);
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + v3 + 2100);
    if (v5)
    {
      return 1;
    }

LABEL_5:
    *a2 = 0;
    v6 = 1;
    do
    {
      v7 = *a3;
      v8 = *(this + 3829);
      if (v8)
      {
        if (*(v8 + v7 + v5))
        {
          return 1;
        }
      }

      else if (bswap32(*(*(this + 3830) + 2 * v7 + 2 * v5)) >> 16)
      {
        return 1;
      }

      *a2 = v6;
      v5 += 50;
      ++v6;
    }

    while (v5 != 2500);
    *a3 = 0;
  }

  v5 = bswap32(*(*(this + 3830) + 2 * v3 + 4200)) >> 16;
  if (!v5)
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t MEOWReader::SubstituteSecond(MEOWReader *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  while (1)
  {
    *a3 = 42;
    v3 = *a2;
    v4 = *(this + 3829);
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 50 * *a2 + 42);
    if (*(v4 + 50 * *a2 + 42))
    {
      return 1;
    }

LABEL_5:
    *a3 = 0;
    do
    {
      v6 = *a2;
      v7 = *(this + 3829);
      if (v7)
      {
        if (*(v7 + 50 * *a2 + v5))
        {
          return 1;
        }
      }

      else if (bswap32(*(*(this + 3830) + 100 * *a2 + 2 * v5)) >> 16)
      {
        return 1;
      }

      *a3 = ++v5;
    }

    while (v5 != 50);
    *a2 = 0;
  }

  v5 = bswap32(*(*(this + 3830) + 100 * *a2 + 84)) >> 16;
  if (!v5)
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t MEOWReader::GetWordEntry(uint64_t a1, const char **a2, uint64_t *a3)
{
  v3 = *(a1 + 30512);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 30496);
  v6 = v5 + bswap32(*(v3 + 16));
  v7 = *a2;
  v8 = strlen(*a2);
  v9 = v8 >= 5 ? 5 : v8;
  if (v8)
  {
    v30 = v5;
    v31 = v8;
    v10 = v3 + 4;
    v11 = *(v3 + 4 + 2 * v9);
    v32 = a3;
    do
    {
      v12 = v9--;
      v13 = bswap32(v11);
      v11 = *(v10 + 2 * v9);
      v14 = __rev16(v11);
      v15 = HIWORD(v13);
      while (v14 < v15)
      {
        v16 = (v14 + v15) >> 1;
        v17 = memcmp(v7, (v6 + 8 * v16), v12);
        if (v17 >= 1)
        {
          v14 = v16 + 1;
        }

        if (v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = 6;
        }

        if (v17 < 0)
        {
          v15 = v16;
          v18 = 0;
        }

        if (v18)
        {
          v9 = v12;
          goto LABEL_20;
        }
      }

      v10 = v3 + 4;
    }

    while (v9);
    v16 = 0;
LABEL_20:
    v8 = v31;
    a3 = v32;
    v5 = v30;
  }

  else
  {
    v16 = 0;
  }

  v19 = v5 + bswap32(*(v3 + 20)) + bswap32(*(v6 + 8 * v16 + 4) & 0xFFFFFF00);
  v20 = *(v19 + 4);
  *a3 = v19;
  a3[1] = v19;
  if (!v20)
  {
    return 0;
  }

  v21 = 0;
  v22 = v19 + 6;
  v23 = __rev16(v20);
  v24 = v19 + 6 + 2 * v23;
  v25 = v8 - v9;
  while (1)
  {
    v26 = (v21 + v23) >> 1;
    v27 = (v24 + (bswap32(*(v22 + (2 * v26))) >> 16));
    v28 = memcmp(&v7[v9], v27, v25);
    if (v28 < 1)
    {
      break;
    }

    v21 = v26 + 1;
    v26 = v23;
LABEL_28:
    v23 = v26;
    if (v21 >= v26)
    {
      return 0;
    }
  }

  if (v28 < 0 || *(v27 + v25))
  {
    goto LABEL_28;
  }

  return v27 + v25 + 1;
}

uint64_t MEOWReader::GetHomophoneClusterEntry(MEOWReader *this, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v4 = *(this + 3815);
  v5 = bswap32(*v4) >> 16;
  result = *(this + 3812) + bswap32(*(*(this + 3814) + 20)) + bswap32(*&v4[2 * (a2 / v5) + 2]);
  v7 = (result + 6 + 2 * (bswap32(*(result + 4)) >> 16) + (bswap32(*(result + 6 + 2 * (a2 % v5))) >> 16));
  v9 = *v7;
  v8 = v7 + 1;
  v10 = v9;
  if (v9 < 0)
  {
    v12 = 0;
    do
    {
      v13 = v10 & 0x7F | (v12 << 7);
      v14 = *v8++;
      v10 = v14;
      v12 = v13;
    }

    while (v14 < 0);
    v11 = v13 << 7;
  }

  else
  {
    v11 = 0;
  }

  *a3 = (v10 + v11);
  v15 = *v8;
  if (*v8 < 0)
  {
    v17 = 0;
    v18 = v8 + 1;
    do
    {
      v19 = v15 & 0x7F | (v17 << 7);
      v20 = *v18++;
      v15 = v20;
      v17 = v19;
    }

    while (v20 < 0);
    v16 = v19 << 7;
  }

  else
  {
    v16 = 0;
  }

  *a4 = (v15 + v16);
  return result;
}

uint64_t MEOWReader::GetWordDescriptor(uint64_t a1, const char **a2, void *a3)
{
  result = MEOWReader::GetWordEntry(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v122 = a2;
  v116 = *a3;
  v7 = *(a1 + 30512);
  v8 = *(a1 + 30496);
  v9 = *(v7 + 24);
  v10 = *(v7 + 28);
  a3[5] = 0;
  v12 = (result + 1);
  v11 = *result;
  if ((v11 & 0x80) != 0)
  {
    v14 = 0;
    do
    {
      v15 = v11 & 0x7F | (v14 << 7);
      v16 = *v12++;
      v11 = v16;
      v14 = v15;
    }

    while (v16 < 0);
    v13 = v15 << 7;
  }

  else
  {
    v13 = 0;
  }

  v123 = (v11 + v13);
  if (!v123)
  {
    v89 = v12 + 1;
    v90 = *v12;
    if (v90 == 128)
    {
      v91 = *v89;
      v92 = *v89;
      v93 = v122;
      if (v91 < 0)
      {
        v100 = 0;
        v101 = v12 + 2;
        do
        {
          v102 = v92 & 0x7F | (v100 << 7);
          v103 = *v101++;
          v92 = v103;
          v100 = v102;
        }

        while (v103 < 0);
        v94 = v102 << 7;
      }

      else
      {
        v94 = 0;
      }

      *a3 = MEOWReader::GetHomophoneClusterEntry(a1, (v92 + v94), a3 + 2, a3 + 3);
    }

    else
    {
      v93 = v122;
      if ((v90 & 0x80) != 0)
      {
        v104 = 0;
        do
        {
          v105 = v90 & 0x7F | (v104 << 7);
          v106 = *v89++;
          v90 = v106;
          v104 = v105;
        }

        while (v106 < 0);
        v95 = v105 << 7;
      }

      else
      {
        v95 = 0;
      }

      a3[2] = (v90 + v95);
      v107 = *v89;
      if (*v89 < 0)
      {
        v109 = 0;
        v110 = v89 + 1;
        do
        {
          v111 = v107 & 0x7F | (v109 << 7);
          v112 = *v110++;
          v107 = v112;
          v109 = v111;
        }

        while (v112 < 0);
        v108 = v111 << 7;
      }

      else
      {
        v108 = 0;
      }

      a3[3] = (v107 + v108);
    }

    if (kDebugHomographs)
    {
      MTBEDebugParams::GetParam(kDebugHomographs, &byte_27F8F2298, byte_27F8F2298);
      kDebugHomographs = 0;
    }

    if (byte_27F8F2298 == 1)
    {
    }

    return 1;
  }

  v117 = a3;
  v17 = bswap32(v9);
  v18 = bswap32(v10);
  if (kDebugHomographs)
  {
    MTBEDebugParams::GetParam(kDebugHomographs, &byte_27F8F2298, byte_27F8F2298);
    kDebugHomographs = 0;
  }

  v118 = v8 + v17;
  v19 = v8 + v18;
  v20 = MEMORY[0x277D85DF8];
  if (byte_27F8F2298 == 1)
  {
    v21 = "";
    if (*(v122 + 26))
    {
      v21 = "!";
    }

    v22 = *(v122 + 10);
    if (v22)
    {
      v23 = 0;
      do
      {
        v24 = *(v122 + 18);
        v25 = *v20;
        *v125.var0 = v22;
        *&v125.var0[4] = v24;
        v26 = v23 + 1;
        v27 = SLTagEng::Name(v125.var0[v23 + 1]);
        fprintf(v25, " %s", v27);
        v22 = *(v122 + 10);
        v23 = v26;
      }

      while (v26 < v22);
    }

    fputc(10, *v20);
  }

  v119 = 0;
  v28 = 0;
  v29 = v122;
  do
  {
    v30 = v12 + 1;
    v31 = *v12;
    if (*v12 < 0)
    {
      v33 = 0;
      do
      {
        v34 = v31 & 0x7F | (v33 << 7);
        v35 = *v30++;
        v31 = v35;
        v33 = v34;
      }

      while (v35 < 0);
      v32 = v34 << 7;
    }

    else
    {
      v32 = 0;
    }

    v36 = *(v118 + 4 * (v31 + v32));
    v37 = bswap32(v36);
    if (v36)
    {
      v38 = 41;
    }

    else
    {
      v38 = 0;
    }

    v39 = byte_27F8F2298;
    if (kDebugHomographs)
    {
      MTBEDebugParams::GetParam(kDebugHomographs, &byte_27F8F2298, (byte_27F8F2298 & 1));
      kDebugHomographs = 0;
      v39 = byte_27F8F2298;
    }

    if (v39)
    {
      fwrite("  {", 3uLL, 1uLL, *v20);
      v40 = 0;
      v41 = "";
      do
      {
        if ((v37 >> v40))
        {
          fprintf(*v20, "%s%s", v41, *(MEMORY[0x277D65538] + 8 * v40));
          v41 = ", ";
        }

        ++v40;
      }

      while (v40 != 32);
      fputc(125, *v20);
      v29 = v122;
    }

    v42 = *(v29 + 8);
    if (((v37 >> v42) & 1) == 0)
    {
      if (*(v29 + 26))
      {
        if (v42 == 19 && (v37 & 0x80) != 0 || v42 <= 1 && (v37 & 0x10C) != 0 || v42 == 6 && (v37 & 1) != 0)
        {
          v38 = 31;
        }

        else if ((v37 & 0x12000) != 0 && v42 == 0)
        {
          v38 = 31;
        }

        else
        {
          v38 -= 50;
        }
      }

      else
      {
        v38 -= 50;
      }
    }

    v120 = v28;
    v121 = 0;
    --v123;
LABEL_45:
    v29 = v122;
    while (1)
    {
      v43 = *v30++;
      v44 = v43;
      if (v43 < 0)
      {
        v46 = 0;
        do
        {
          v47 = v44 & 0x7F | (v46 << 7);
          v48 = *v30++;
          v44 = v48;
          v46 = v47;
        }

        while (v48 < 0);
        v45 = v47 << 7;
      }

      else
      {
        v45 = 0;
      }

      v49 = (v44 + v45);
      if (!v49)
      {
        break;
      }

      v50 = bswap32(*(v19 + 2 * v49)) >> 16;
      if (*(a1 + 30537))
      {
LABEL_55:
        if (v50)
        {
          v125 = *(v122 + 10);
          if (SLWordTagSet::find(&v125))
          {
            if ((v50 & 0xFFFE) == 0x42)
            {
              v51 = -10;
            }

            else
            {
              v51 = -50;
            }

            v38 += v51;
            v52 = 45;
          }

          else
          {
            v125 = *(v122 + 10);
            if (SLWordTagSet::find(&v125))
            {
              v38 += 5;
              v52 = 43;
            }

            else
            {
              if (v50 == 74)
              {
                v125 = *(v122 + 10);
                v53 = SLWordTagSet::find(&v125);
                v121 |= v53 ^ 1;
                if (v53)
                {
                  v38 -= 50;
                }
              }

              else
              {
                if ((v50 & 0xFFFE) == 0x48)
                {
                  v38 -= 50;
                  v52 = 32;
                  goto LABEL_69;
                }

                if (v50)
                {
                  --v38;
                }

                else
                {
                  v38 -= 2;
                }
              }

              v52 = 63;
            }
          }

LABEL_69:
          if (kDebugHomographs)
          {
            MTBEDebugParams::GetParam(kDebugHomographs, &byte_27F8F2298, byte_27F8F2298);
            kDebugHomographs = 0;
          }

          if (byte_27F8F2298 == 1)
          {
            v54 = *v20;
            v55 = SLTagEng::Name(v50);
            fprintf(v54, " %s%c", v55, v52);
          }

          goto LABEL_45;
        }
      }

      else if (v50 - 34 <= 0x21)
      {
        LOWORD(v50) = *(&sTagMappings + ((v50 - 34) & 0xFFFFFFFE)) | v50 & 1;
        goto LABEL_55;
      }
    }

    v56 = byte_27F8F2298;
    if (kDebugHomographs)
    {
      MTBEDebugParams::GetParam(kDebugHomographs, &byte_27F8F2298, (byte_27F8F2298 & 1));
      kDebugHomographs = 0;
      v56 = byte_27F8F2298;
    }

    v28 = v120;
    if (v56)
    {
      fprintf(*v20, " -> %d", v38);
    }

    v124 = 0;
    *v125.var0 = 0;
    v58 = v30 + 1;
    v57 = *v30;
    if (v57 == 128)
    {
      v12 = v30 + 2;
      v59 = v30[1];
      if (v30[1] < 0)
      {
        v63 = 0;
        v61 = v121;
        do
        {
          v64 = v59 & 0x7F | (v63 << 7);
          v65 = *v12++;
          v59 = v65;
          v63 = v64;
        }

        while (v65 < 0);
        v60 = v64 << 7;
      }

      else
      {
        v60 = 0;
        v61 = v121;
      }

      *v125.var0 = (v59 + v60);
      if ((v61 & (v38 > v120)) != 0 || v38 > v119)
      {
        HomophoneClusterEntry = MEOWReader::GetHomophoneClusterEntry(a1, (v59 + v60), v125.var0, &v124);
      }

      else
      {
        HomophoneClusterEntry = 0;
      }
    }

    else
    {
      if ((v57 & 0x80) != 0)
      {
        v67 = 0;
        v61 = v121;
        do
        {
          v68 = v57 & 0x7F | (v67 << 7);
          v69 = *v58++;
          v57 = v69;
          v67 = v68;
        }

        while (v69 < 0);
        v62 = v68 << 7;
      }

      else
      {
        v62 = 0;
        v61 = v121;
      }

      *v125.var0 = (v57 + v62);
      v70 = *v58;
      v12 = v58 + 1;
      v71 = v70;
      if (v70 < 0)
      {
        v73 = 0;
        do
        {
          v74 = v71 & 0x7F | (v73 << 7);
          v75 = *v12++;
          v71 = v75;
          v73 = v74;
        }

        while (v75 < 0);
        v72 = v74 << 7;
      }

      else
      {
        v72 = 0;
      }

      HomophoneClusterEntry = 0;
      v124 = (v71 + v72);
    }

    if ((v61 & (v38 > v120)) != 1)
    {
      if (v38 <= v119)
      {
        goto LABEL_119;
      }

      v78 = v116;
      if (HomophoneClusterEntry)
      {
        v78 = HomophoneClusterEntry;
      }

      *v117 = v78;
      v79 = v124;
      v117[2] = *v125.var0;
      v117[3] = v79;
      if (kDebugHomographs)
      {
        MTBEDebugParams::GetParam(kDebugHomographs, &byte_27F8F2298, (byte_27F8F2298 & 1));
        kDebugHomographs = 0;
        if ((byte_27F8F2298 & 1) == 0)
        {
          v119 = v38;
LABEL_113:
          v80 = byte_27F8F2298;
          goto LABEL_121;
        }
      }

      else if ((byte_27F8F2298 & 1) == 0)
      {
        v119 = v38;
        goto LABEL_119;
      }

      v81 = 33;
      v119 = v38;
      goto LABEL_118;
    }

    v76 = v116;
    if (HomophoneClusterEntry)
    {
      v76 = HomophoneClusterEntry;
    }

    v117[1] = v76;
    v77 = v124;
    v117[4] = *v125.var0;
    v117[5] = v77;
    if (kDebugHomographs)
    {
      MTBEDebugParams::GetParam(kDebugHomographs, &byte_27F8F2298, (byte_27F8F2298 & 1));
      kDebugHomographs = 0;
      if ((byte_27F8F2298 & 1) == 0)
      {
        v28 = v38;
        goto LABEL_113;
      }

LABEL_115:
      v81 = 63;
      v28 = v38;
LABEL_118:
      fputc(v81, *v20);
    }

    else
    {
      if (byte_27F8F2298)
      {
        goto LABEL_115;
      }

      v28 = v38;
    }

LABEL_119:
    v80 = byte_27F8F2298;
    if (kDebugHomographs)
    {
      MTBEDebugParams::GetParam(kDebugHomographs, &byte_27F8F2298, (byte_27F8F2298 & 1));
      kDebugHomographs = 0;
      v80 = byte_27F8F2298;
    }

LABEL_121:
    if (v80)
    {
      fputc(10, *v20);
    }
  }

  while (v123);
  if (v28 < 1)
  {
    v83 = v117;
  }

  else
  {
    v83 = v117;
    if (v28 < v119 - 3)
    {
      goto LABEL_149;
    }

    if (v119 <= 0)
    {
      *v117 = v117[1];
      v88 = v117[5];
      v117[2] = v117[4];
      goto LABEL_148;
    }

    if (*v117 == v117[1])
    {
      v85 = v117[2];
      v84 = v117[3];
      v87 = v117[4];
      v86 = v117[5];
      if (v87 == v84 + v85)
      {
        goto LABEL_140;
      }

      if (v85 == v86 + v87)
      {
        v117[2] = v87;
LABEL_140:
        v88 = v86 + v84;
        v28 = v119;
LABEL_148:
        v117[3] = v88;
        v119 = v28;
LABEL_149:
        v117[5] = 0;
      }
    }
  }

  v96 = byte_27F8F2298;
  if (kDebugHomographs)
  {
    MTBEDebugParams::GetParam(kDebugHomographs, &byte_27F8F2298, (byte_27F8F2298 & 1));
    kDebugHomographs = 0;
    v96 = byte_27F8F2298;
  }

  if (v96)
  {
    if (v119 < 1)
    {
      fwrite("  -> No matching instances.\n", 0x1CuLL, 1uLL, *v20);
    }

    else
    {
      v97 = *v20;
      v99 = v83[2];
      v98 = v83[3];
      if (v83[5])
      {
        v114 = v83[5];
        v115 = v83[4];
        fprintf(v97, "  -> %lu@%lu, %lu@%lu\n");
      }

      else
      {
        v113 = v83[3];
        fprintf(v97, "  -> %lu@%lu\n");
      }
    }
  }

  return v119 > 0;
}

uint64_t MEOWReader::TranslateTag(MEOWReader *this, uint64_t a2)
{
  if (!*(this + 30537))
  {
    if ((a2 - 34) > 0x21)
    {
      return 0;
    }

    else
    {
      return *(&sTagMappings + ((a2 - 34) & 0xFFFFFFFE)) | (a2 & 1);
    }
  }

  return a2;
}

void MEOWReader::GetWordData(int a1, unsigned __int16 **a2, MEOWVectorBase *this, void **a4)
{
  v7 = *a2 + (bswap32((*a2)[1]) >> 16);
  v8 = *a2 + (bswap32(**a2) >> 16);
  v10 = (a2 + 5);
  v9 = a2[5];
  if (v9)
  {
    v11 = a2[1];
    v12 = v11 + (bswap32(v11[1]) >> 16);
    v13 = v11 + (bswap32(*v11) >> 16);
    v14 = a2[3];
    if (v14)
    {
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,MEOWWordInstance const*,MEOWWordInstance const*,std::back_insert_iterator<MEOWVector<MEOWWordInstance>>,0>(&v7[8 * a2[2]], &v7[8 * a2[2] + 8 * v14], this);
      v15 = a2[3];
      if (v15)
      {
        v16 = a2[2] + v8;
        do
        {
          v17 = *v16++;
          MEOWVectorBase::Append(a4);
          *(a4[2] + *a4 - 1) = v17;
          v15 = (v15 - 1);
        }

        while (v15);
      }

      std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,MEOWWordInstance const*,MEOWWordInstance const*,std::back_insert_iterator<MEOWVector<MEOWWordInstance>>,0>(&v12[8 * a2[4]], &v12[8 * a2[4] + 8 * a2[5]], this);
      v18 = a2[5];
      if (v18)
      {
        v19 = a2[4] + v13;
        do
        {
          v20 = *v19++;
          MEOWVectorBase::Append(a4);
          *(a4[2] + *a4 - 1) = v20;
          v18 = (v18 - 1);
        }

        while (v18);
      }

      return;
    }

    v21 = a2 + 4;
    MEOWVectorBase::Map(this, &v12[8 * a2[4]], v9);
  }

  else
  {
    v21 = a2 + 2;
    v10 = (a2 + 3);
    MEOWVectorBase::Map(this, &v7[8 * a2[2]], a2[3]);
    v13 = v8;
  }

  v22 = *v10;
  v23 = &v13[*v21];

  MEOWVectorBase::Map(a4, v23, v22);
}

void MEOWReader::GetWordData(uint64_t a1, void *a2, unint64_t a3, _DWORD *a4)
{
  v4 = a2[3];
  v5 = a2[4] - v4;
  v6 = v4 > a3;
  v7 = v4 <= a3;
  if (v6)
  {
    v5 = a2[2];
  }

  v8 = (a2[v7] + (bswap32(*(a2[v7] + 2)) >> 16) + 8 * v5 + 8 * a3);
  *a4 = *v8;
  a4[1] = v8[1];
}

void MEOWReader::GetWordData(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v4 = a2[3];
  v5 = a2[4] - v4;
  v6 = v4 > a3;
  v7 = v4 <= a3;
  if (v6)
  {
    v5 = a2[2];
  }

  *a4 = a2[v7] + (bswap32(*(a2[v7] + 2)) >> 16) + 8 * v5 + 8 * a3;
}

void MEOWReader::GetWordGlue(MEOWReader *a1, unsigned __int8 *a2, uint64_t a3)
{
  MEOWVectorBase::MEOWVectorBase(v9, 2);
  MEOWReader::GetDemi(a1, a2, 1, v6);
  *a3 = v7;
  *(a3 + 2) = bswap32(v8) >> 16;
  MEOWReader::GetDemi(a1, a2 + 4, 0, v6);
  *(a3 + 1) = v7;
  *(a3 + 4) = bswap32(v8) >> 16;
  MEOWVectorBase::~MEOWVectorBase(v9);
}

double MEOWReader::GetDemi(MEOWReader *a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  DemiRecord = MEOWReader::GetDemiRecord(a1, *a2, a2[1], bswap32(*(a2 + 1)) >> 16, a3);

  return MEOWReader::GetDemi(a1, DemiRecord, a3, a4);
}

uint64_t MEOWReader::GetWord(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, char a5)
{
  DemiRecord = MEOWReader::GetDemiRecord(a1, *a2, a2[1], bswap32(*(a2 + 1)) >> 16, 1);
  v11 = MEOWReader::GetDemiRecord(a1, a2[4], a2[5], bswap32(*(a2 + 3)) >> 16, 0);
  if (kUseHeapBasedDemis)
  {
    MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, byte_27F8F21E8);
    kUseHeapBasedDemis = 0;
  }

  if (byte_27F8F21E8 == 1)
  {
    DemiRecord = MEOWReader::HeapDemiForMappedDemi(a1, DemiRecord, 0, 0, 1);
    v11 = MEOWReader::HeapDemiForMappedDemi(a1, v11, 0, 0, 1);
  }

  v12 = (***(a1 + 30576))(*(a1 + 30576), a1, (bswap32(*(DemiRecord + 2)) >> 16) & 0xFFFCFFFF | ((((*(DemiRecord + 1) & 0xC0) >> 6) & 3) << 16), *(DemiRecord + 4));
  v13 = *(DemiRecord + 1);
  *a3 = (bswap32(*(DemiRecord + 2)) >> 16) & 0xFFFCFFFF | ((((v13 & 0xC0) >> 6) & 3) << 16);
  *(a3 + 4) = *(DemiRecord + 4);
  v14 = *(DemiRecord + 5);
  *(a3 + 6) = v14;
  if (a4)
  {
    v15 = v13 & 0x3F;
    if ((v15 - 4) >= 4)
    {
      if (v15 == 3 || v15 == 1)
      {
        v14 = v14 + (bswap32(*(DemiRecord + 6)) >> 16);
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "MEOW: Bad Demi Format %d @ %08x\n", v15, DemiRecord - *(a1 + 30432));
      }
    }

    else
    {
      v14 = *(DemiRecord + 6) + v14;
    }
  }

  (*(*v12 + 24))(v12, v14);
  v17 = (bswap32(*(v11 + 2)) >> 16) & 0xFFFCFFFF | ((((*(v11 + 1) & 0xC0) >> 6) & 3) << 16);
  v18 = *(v11 + 4);
  v19 = (***(a1 + 30576))();
  v20 = *(v11 + 5);
  if ((a5 & 1) == 0)
  {
    v21 = *(v11 + 1) & 0x3F;
    if ((v21 - 4) >= 4)
    {
      if (v21 == 3 || v21 == 1)
      {
        v20 = v20 + (bswap32(*(v11 + 6)) >> 16);
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "MEOW: Bad Demi Format %d @ %08x\n", *(v11 + 1) & 0x3F, v11 - *(a1 + 30432));
      }
    }

    else
    {
      v20 = *(v11 + 6) + v20;
    }
  }

  (*(*v19 + 24))(v19, v20);
  v23 = (*(*v19 + 64))(v19);
  (*(*v19 + 8))(v19);
  *(a3 + 40) = v12[4];
  *(a3 + 8) = 0;
  *(a3 + 88) = 0;
  (*(*v12 + 40))(v12, v23, a3 + 72);
  *(a3 + 44) = v12[4] - *(a3 + 40);
  *(a3 + 48) = (*(*v12 + 64))(v12) - *(a1 + 30432);
  v24 = *(a3 + 88);
  *(a3 + 16) = 0;
  *(a3 + 24) = v24;
  *(a3 + 32) = *(a3 + 72);
  v25 = *(*v12 + 8);

  return v25(v12);
}

void MEOWReader::GetInclusion(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4, uint64_t a5)
{
  DemiRecord = MEOWReader::GetDemiRecord(a1, a2, a3, a4, 0);
  v11 = MEOWReader::GetDemiRecord(a1, a2, a3, a4, 1);
  if (kUseHeapBasedDemis)
  {
    MTBEDebugParams::GetParam(kUseHeapBasedDemis, &byte_27F8F21E8, byte_27F8F21E8);
    kUseHeapBasedDemis = 0;
  }

  if (byte_27F8F21E8 == 1)
  {
    DemiRecord = MEOWReader::HeapDemiForMappedDemi(a1, DemiRecord, 0, 0, 1);
    v11 = MEOWReader::HeapDemiForMappedDemi(a1, v11, 0, 0, 1);
  }

  v12 = *(DemiRecord + 1);
  if ((v12 & 0x3F) == 6)
  {
    v13 = 40;
  }

  else
  {
    if ((v12 & 0x3F) != 7)
    {
      *(a5 + 65) = 0;
      goto LABEL_13;
    }

    v13 = 8;
  }

  v14 = *(DemiRecord + v13);
  *(a5 + 65) = v14;
  if ((v14 & 3) == 0)
  {
LABEL_13:
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  v15 = (***(a1 + 30576))(*(a1 + 30576), a1, (bswap32(*(DemiRecord + 2)) >> 16) & 0xFFFCFFFF | ((((v12 & 0xC0) >> 6) & 3) << 16), *(DemiRecord + 4));
  *a5 = (bswap32(*(DemiRecord + 2)) >> 16) & 0xFFFCFFFF | ((((*(DemiRecord + 1) & 0xC0) >> 6) & 3) << 16);
  *(a5 + 4) = *(DemiRecord + 4);
  v16 = *(DemiRecord + 5);
  *(a5 + 6) = v16;
  (*(*v15 + 24))(v15, *(DemiRecord + 6) + v16);
  if ((*(v11 + 1) & 0x3F) != 0)
  {
    v17 = (***(a1 + 30576))(*(a1 + 30576), a1, (bswap32(*(v11 + 2)) >> 16) & 0xFFFCFFFF | ((((*(v11 + 1) & 0xC0) >> 6) & 3) << 16), *(v11 + 4));
    (*(*v17 + 24))(v17, *(v11 + 5));
    v18 = (*(*v17 + 64))(v17);
    (*(*v17 + 8))(v17);
  }

  else
  {
    v18 = (*(*v15 + 64))(v15);
  }

  *(a5 + 40) = v15[4];
  *(a5 + 8) = 0;
  *(a5 + 88) = 0;
  (*(*v15 + 40))(v15, v18, a5 + 72);
  *(a5 + 44) = v15[4] - *(a5 + 40);
  *(a5 + 48) = (*(*v15 + 64))(v15) - *(a1 + 30432);
  v19 = *(a5 + 88);
  *(a5 + 16) = 0;
  *(a5 + 24) = v19;
  *(a5 + 32) = *(a5 + 72);
  v20 = *(*v15 + 8);

  v20(v15);
}

uint64_t MEOWReader::InclusionLength(MEOWReader *a1, unsigned __int8 *a2)
{
  MEOWVectorBase::MEOWVectorBase(v12, 2);
  MEOWReader::GetDemi(a1, a2, 0, v8);
  if ((v11 & 3) != 0)
  {
    v4 = v9;
    v5 = v10;
    MEOWReader::GetDemi(a1, a2, 1, v8);
    if (v9)
    {
      v6 = (v9 - (v5 + v4));
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  MEOWVectorBase::~MEOWVectorBase(v12);
  return v6;
}

uint64_t MEOWReader::TouchMetadata(MEOWReader *this)
{
  v8 = 0;
  v1 = *(this + 3804);
  v2 = 40;
  if (!*(this + 3813))
  {
    v2 = 32;
  }

  v3 = bswap32(*&v1[v2]);
  if (v3 >= 1)
  {
    v4 = &v1[v3];
    v5 = getpagesize();
    do
    {
      v6 = *v1;
      if (v8 >= v6)
      {
        v6 = v8;
      }

      v8 = v6;
      v1 += v5;
    }

    while (v1 < v4);
  }

  return 0;
}

uint64_t MEOWReader::ReadMetadataAsync(MEOWReader *this)
{
  v1 = 40;
  if (!*(this + 3813))
  {
    v1 = 32;
  }

  v2 = bswap32(*(*(this + 3804) + v1));
  v4[0] = 0;
  v4[1] = v2;
  fcntl(*this, 44, v4);
  return 0;
}

uint64_t MEOWReader::MakeMetadataResident(MEOWReader *this, int a2)
{
  if (a2 == 2)
  {
    v2 = 40;
    if (!*(this + 3813))
    {
      v2 = 32;
    }

    v3 = bswap32(*(*(this + 3804) + v2));
    v5[0] = 0;
    v5[1] = v3;
    fcntl(*this, 44, v5);
    return 0;
  }

  if (a2 == 1)
  {
    MEOWReader::TouchMetadata(this);
    return 0;
  }

  return 1;
}

void MEOWReader::PercentageResidentMetadata(MEOWReader *this)
{
  v2 = getpagesize();
  v3 = 40;
  if (!*(this + 3813))
  {
    v3 = 32;
  }

  v4 = (*(this + 3804) - (v2 * (*(this + 3804) / v2) + v2) + bswap32(*(*(this + 3804) + v3))) / v2;
  operator new[]();
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,MEOWWordInstance const*,MEOWWordInstance const*,std::back_insert_iterator<MEOWVector<MEOWWordInstance>>,0>(uint64_t *a1, uint64_t *a2, MEOWVectorBase *this)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4++;
      MEOWVectorBase::Append(this);
      *(*this + 8 * *(this + 2) - 8) = v6;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t MEOWTreePage::MEOWTreePage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2868F6C80;
  *(a1 + 8) = 0;
  *(a1 + 10) = *(a3 + 18);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL);
  v4.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v4.i64[1] = *(a1 + 10);
  *(*(a1 + 24) + 24) = vaddq_s64(*(*(a1 + 24) + 24), v4);
  return a1;
}

void MEOWTreePage::~MEOWTreePage(void **this)
{
  *this = &unk_2868F6C80;
  free(this[4]);
}

{
  *this = &unk_2868F6C80;
  free(this[4]);
}

{
  *this = &unk_2868F6C80;
  free(this[4]);

  JUMPOUT(0x259C6DA90);
}

BOOL MEOWTreePage::LowerBound(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  v7 = (*(**(a1 + 24) + 16))(*(a1 + 24), a3, *(a1 + 32), *(a1 + 8), &v10);
  v8 = *(a1 + 8);
  if (v7 != v8)
  {
    *a4 = a2;
    *(a4 + 2 * a2) = v7;
    *(a4 + 8) = a1;
  }

  return v7 != v8;
}

BOOL MEOWTreePage::Insert(uint64_t a1, int a2, void *__src, unsigned __int16 *a4)
{
  v6 = &a4[a2];
  v7 = *(a1 + 8);
  if (*a4 < a2)
  {
    v6 = (a1 + 8);
  }

  v8 = *v6;
  v9 = *(a1 + 24);
  v10 = *(v9 + 16);
  v11 = (*(a1 + 32) + v10 * v8);
  if (v8 < v7)
  {
    memmove(&v11[v10], (*(a1 + 32) + *(v9 + 16) * v8), (v7 - v8) * *(v9 + 16));
  }

  memcpy(v11, __src, v10);
  v12 = *(a1 + 8) + 1;
  *(a1 + 8) = v12;
  return *(a1 + 10) == v12;
}

uint64_t MEOWTreePage::Rebalance(MEOWTreePage *this, uint64_t a2, unsigned int a3)
{
  v4 = *(*(*(*(this + 2) + 40) + 8 * a2 + 8) + 8);
  v5 = *(this + 4) + a3;
  result = (*(*this + 32))(this);
  ++*(*(this + 3) + 40);
  return result;
}

void *MEOWTreePage::DoRebalance(MEOWTreePage *this, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = *(*(*(this + 2) + 40) + 8 * a2 + 8);
  v10 = *(*(this + 3) + 16);
  v11 = (*(*(this + 2) + 32) + v10 * a2);
  v12 = *(this + 4);
  if (v12 >= a3)
  {
    v16 = a4 - *(v9 + 8);
    v17 = v16 * v10;
    memmove((*(v9 + 32) + v16 * v10), *(v9 + 32), *(v9 + 8) * *(*(this + 3) + 16));
    if (a5)
    {
      v17 = (v16 - 1) * v10;
      memcpy((*(v9 + 32) + v17), v11, v10);
    }

    memcpy(*(v9 + 32), (*(this + 4) + v10 + v10 * a3), v17);
    result = memcpy(v11, (*(this + 4) + v10 * a3), v10);
  }

  else
  {
    if (a5)
    {
      v13 = *(this + 4);
      *(this + 4) = v12 + 1;
      memcpy((v13 + v12 * v10), v11, v10);
      v12 = *(this + 4);
    }

    v14 = (a3 - v12) * v10;
    memcpy((*(this + 4) + v12 * v10), *(v9 + 32), v14);
    memcpy(v11, (*(v9 + 32) + v14), v10);
    result = memmove(*(v9 + 32), (*(v9 + 32) + v10 + v14), v10 * a4);
  }

  *(this + 4) = a3;
  *(v9 + 8) = a4;
  return result;
}

uint64_t MEOWTreePage::Begin(uint64_t result, int a2, uint64_t a3)
{
  *a3 = a2;
  *(a3 + 2 * a2) = 0;
  *(a3 + 8) = result;
  return result;
}

uint64_t MEOWTreePage::Next(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(a3 + 2 * a2) + 1;
  *(a3 + 2 * a2) = v3;
  if (*(result + 8) == v3)
  {
    v4 = a2 - 1;
    while (v4)
    {
      v5 = *(a3 + 2 * v4);
      result = *(result + 16);
      --v4;
      LOWORD(a2) = a2 - 1;
      if (v5 != *(result + 8))
      {
        goto LABEL_7;
      }
    }

    LOWORD(a2) = 0;
  }

LABEL_7:
  *a3 = a2;
  *(a3 + 8) = result;
  return result;
}

uint64_t MEOWTreePage::SanityCheck(MEOWTreePage *this, int a2, int a3)
{
  v3 = *(this + 4);
  if (!*(this + 4) || *(this + 5) <= v3)
  {
    abort();
  }

  if (a3)
  {
    printf("%.*s%8p %3u %08X %08X\n", a2, "               ", this, v3, **(this + 4), *(*(this + 4) + *(*(this + 3) + 16) * (v3 - 1)));
    return *(this + 4);
  }

  return v3;
}

uint64_t MEOWTreeBranch::SetupBranches(uint64_t this)
{
  v1 = *(this + 24);
  v2 = *(this + 32);
  v3 = *(v1 + 20);
  *(this + 10) = v3;
  *(this + 40) = v2 + 8 * ~v3 + 0x2000;
  *(v1 + 32) = *(v1 + 32) + v3 - *(v1 + 18);
  return this;
}

uint64_t MEOWTreeBranch::MEOWTreeBranch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEOWTreePage::MEOWTreePage(a1, a2, a3);
  *result = &unk_2868F6CE0;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(v4 + 20);
  *(result + 10) = v6;
  *(result + 40) = v5 + 8 * ~v6 + 0x2000;
  *(v4 + 32) = *(v4 + 32) + v6 - *(v4 + 18);
  return result;
}

{
  result = MEOWTreePage::MEOWTreePage(a1, a2, a3);
  *result = &unk_2868F6CE0;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(v4 + 20);
  *(result + 10) = v6;
  *(result + 40) = v5 + 8 * ~v6 + 0x2000;
  *(v4 + 32) = *(v4 + 32) + v6 - *(v4 + 18);
  return result;
}

uint64_t MEOWTreeBranch::MEOWTreeBranch(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = MEOWTreePage::MEOWTreePage(a1, a2, a4);
  *v6 = &unk_2868F6CE0;
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v9 = *(v7 + 20);
  *(v6 + 10) = v9;
  v10 = v8 + 8 * ~v9;
  *(v6 + 40) = v10 + 0x2000;
  *(v7 + 32) = *(v7 + 32) + v9 - *(v7 + 18);
  *(v10 + 0x2000) = a3;
  a3[2] = v6;
  (*(*a3 + 40))(a3, 0);
  *(a1 + 8) = 1;
  return a1;
}

void sub_257B43E70(_Unwind_Exception *a1)
{
  *v1 = &unk_2868F6C80;
  free(*(v1 + 32));
  _Unwind_Resume(a1);
}

void MEOWTreeBranch::~MEOWTreeBranch(MEOWTreeBranch *this)
{
  v2 = 0;
  *this = &unk_2868F6CE0;
  do
  {
    v3 = *(*(this + 5) + 8 * v2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  while (v2++ < *(this + 4));
  *this = &unk_2868F6C80;
  free(*(this + 4));
}

{
  MEOWTreeBranch::~MEOWTreeBranch(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MEOWTreeBranch::LowerBound(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v8 = (*(**(a1 + 24) + 16))(*(a1 + 24), a3, *(a1 + 32), *(a1 + 8), &v12);
  v9 = v8;
  *(a4 + 2 * a2) = v8;
  if ((v12 & 1) == 0)
  {
    v10 = *(*(a1 + 40) + 8 * v8);
    if ((*(*v10 + 16))(v10, (a2 + 1), a3, a4))
    {
      return 1;
    }

    if (v9 == *(a1 + 8))
    {
      return 0;
    }
  }

  *a4 = a2;
  *(a4 + 8) = a1;
  return 1;
}

uint64_t MEOWTreeBranch::Insert(uint64_t a1, int a2, uint64_t a3, unsigned __int16 *a4)
{
  if (*a4 >= a2)
  {
    v5 = &a4[a2];
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  v7 = *(*(a1 + 40) + 8 * v6);
  result = (*(*v7 + 24))(v7, (a2 + 1));
  if (result)
  {
    v10 = *(a1 + 40);
    v11 = (v10 + 8 * v6);
    v12 = *v11;
    v13 = (7 * *(*v11 + 5)) >> 3;
    v14 = *(a1 + 8);
    v15 = v6 < v14;
    if (v6)
    {
      v16 = v6 >= v14;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (*(*(v11 - 1) + 4) >= *(v11[1] + 4))
      {
        goto LABEL_17;
      }

      v15 = 0;
    }

    v17 = v6 - 1;
    v18 = *(v10 + 8 * (v6 - 1));
    if (v13 > v18[4])
    {
      v12 = v18;
LABEL_19:
      MEOWTreePage::Rebalance(v12, v17, 1u);
      return 0;
    }

LABEL_16:
    if (!v15)
    {
LABEL_20:
      v9 = *(*(a1 + 24) + 16);
      memmove((*(a1 + 32) + v9 + v9 * v6), (*(a1 + 32) + v9 * v6), (v14 - v6) * v9);
      memmove((*(a1 + 40) + 8 * v6 + 16), (*(a1 + 40) + 8 * v6 + 8), 8 * (*(a1 + 8) - v6));
      v19 = *(*(a1 + 40) + 8 * v6);
      (*(*v19 + 40))(v19, v6);
      v20 = *(a1 + 8) + 1;
      *(a1 + 8) = v20;
      return *(a1 + 10) == v20;
    }

LABEL_17:
    if (v13 > *(v11[1] + 4))
    {
      v17 = v6;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  return result;
}

void *MEOWTreeBranch::DoRebalance(MEOWTreeBranch *this, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = *(*(*(this + 2) + 40) + 8 * a2 + 8);
  v11 = *(this + 4);
  v12 = a3 + 1;
  if (a3 + 1 <= v11)
  {
    v18 = *(v10 + 8);
    if (*(v10 + 8))
    {
      v19 = a4 - v18;
    }

    else
    {
      v19 = a4 - v18 + 1;
    }

    if (*(v10 + 8))
    {
      memmove((*(v10 + 40) + 8 * v19), *(v10 + 40), 8 * v18 + 8);
    }

    memcpy(*(v10 + 40), (*(this + 5) + 8 * a3 + 8), 8 * v19);
    if (v19)
    {
      v20 = *(v10 + 40);
      do
      {
        v21 = *v20++;
        *(v21 + 16) = v10;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v13 = a3 + 1 - v11 - a5;
    memcpy((*(this + 5) + 8 * v11 + 8 * a5), *(v10 + 40), 8 * v13);
    memmove(*(v10 + 40), (*(v10 + 40) + 8 * v13), 8 * a4 + 8);
    v14 = *(this + 4);
    if (v12 > v14)
    {
      v15 = a3 - v14 + 1;
      v16 = (*(this + 5) + 8 * v14);
      do
      {
        v17 = *v16++;
        *(v17 + 16) = this;
        --v15;
      }

      while (v15);
    }
  }

  return MEOWTreePage::DoRebalance(this, a2, a3, a4, a5);
}

uint64_t MEOWTreeBranch::Next(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a3 + 2 * a2) + 1;
  *(a3 + 2 * a2) = v4;
  return (*(**(v3 + 8 * v4) + 48))(*(v3 + 8 * v4), (a2 + 1));
}

uint64_t MEOWTreeBranch::SanityCheck(MEOWTreeBranch *this, int a2, uint64_t a3)
{
  v6 = MEOWTreePage::SanityCheck(this, a2, a3);
  v7 = 0;
  do
  {
    v8 = *(*(this + 5) + 8 * v7);
    v6 += (*(*v8 + 64))(v8, (a2 + 1), a3);
  }

  while (v7++ < *(this + 4));
  return v6;
}

uint64_t MEOWTreeBranch::SetTree(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 24) = a2;
  do
  {
    v5 = *(*(a1 + 40) + 8 * v4);
    result = (*(*v5 + 72))(v5, a2);
  }

  while (v4++ < *(a1 + 8));
  return result;
}

void MEOWTreeBase::MEOWTreeBase(MEOWTreeBase *this, unsigned __int16 a2)
{
  *this = &unk_2868F6D40;
  *(this + 1) = 0;
  *(this + 8) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 9) = 0x2000u / a2;
  *(this + 10) = 0x1FF8 / (a2 + 8);
  operator new();
}

void MEOWTreeBase::~MEOWTreeBase(MEOWTreeBase *this)
{
  *this = &unk_2868F6D40;
  v1 = *(this + 6);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

void MEOWTreeBase::clear(MEOWTreeBase *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  operator new();
}

uint64_t MEOWTreeBase::LowerBound(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  result = (*(**(a1 + 48) + 16))(*(a1 + 48), 1, a2, a3);
  if (result)
  {
    v5 = *a3;
    if (*a3)
    {
      v5 = *(*(a3 + 1) + 32) + *(*(*(a3 + 1) + 24) + 16) * a3[(v5 - 1) + 1];
    }
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 2) = v5;
  return result;
}

unsigned __int16 *MEOWTreeIterBase::Deref(unsigned __int16 *this)
{
  v1 = *this;
  if (*this)
  {
    v1 = *(*(this + 1) + 32) + *(*(*(this + 1) + 24) + 16) * this[(v1 - 1) + 1];
  }

  *(this + 2) = v1;
  return this;
}

uint64_t MEOWTreeBase::Insert(MEOWTreeBase *this, const void *a2, const MEOWTreeIterBase *a3)
{
  ++*(this + 1);
  result = (*(**(this + 6) + 24))(*(this + 6), 1, a2, a3);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t MEOWTreeBase::Begin(MEOWTreeBase *this, MEOWTreeIterBase *a2)
{
  result = (*(**(this + 6) + 48))(*(this + 6), 1, a2);
  v4 = *a2;
  if (*a2)
  {
    v4 = *(*(a2 + 1) + 32) + *(*(*(a2 + 1) + 24) + 16) * *(a2 + (v4 - 1) + 1);
  }

  *(a2 + 2) = v4;
  return result;
}

uint64_t MEOWTreeBase::Swap(MEOWTreeBase *this, MEOWTreeBase *a2)
{
  v3 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  v7 = *(this + 6);
  v8 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = v8;
  *(a2 + 5) = v6;
  *(a2 + 6) = v7;
  (*(**(this + 6) + 72))(*(this + 6), this);
  v9 = *(**(a2 + 6) + 72);

  return v9();
}

uint64_t MEOWTreeBase::Dump(MEOWTreeBase *this)
{
  printf("%lu Elements %lu Pages (%4.1f%%) %lu Rebalances\n", *(this + 1), *(this + 3), *(this + 1) * 100.0 / *(this + 4), *(this + 5));
  v2 = *(this + 1);
  result = (*(**(this + 6) + 64))(*(this + 6), 1, 0);
  if (v2 != result)
  {
    abort();
  }

  return result;
}

uint64_t MEOWTreeIterBase::operator++(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    result = (*(**(result + 8) + 56))(*(result + 8));
    v2 = *v1;
    if (*v1)
    {
      v2 = *(*(v1 + 1) + 32) + *(*(*(v1 + 1) + 24) + 16) * v1[(v2 - 1) + 1];
    }

    *(v1 + 2) = v2;
  }

  return result;
}

BOOL MEOWTreeIterBase::Equal(MEOWTreeIterBase *this, const MEOWTreeIterBase *a2)
{
  v2 = *this;
  if (v2 != *a2)
  {
    return 0;
  }

  if (!*this)
  {
    return 1;
  }

  if (*(this + 1) != *(a2 + 1))
  {
    return 0;
  }

  v4 = (this + 2);
  v5 = (a2 + 2);
  v6 = v2 - 1;
  do
  {
    v8 = *v4++;
    v7 = v8;
    v9 = *v5++;
    result = v7 == v9;
  }

  while (v7 == v9 && v6-- != 0);
  return result;
}

void *MTMBCFArrayBuilder::AddElement(void *this, const void *a2)
{
  if (a2)
  {
    v3 = this;
    this = MEOWVectorBase::Append(this);
    *(*v3 + 8 * v3[2] - 8) = a2;
  }

  return this;
}

void MTMBCFArrayBuilder::~MTMBCFArrayBuilder(MTMBCFArrayBuilder *this)
{
  if (*(this + 2))
  {
    v2 = 0;
    do
    {
      CFRelease(*(*this + 8 * v2++));
    }

    while (v2 < *(this + 2));
  }

  MEOWVectorBase::~MEOWVectorBase(this);
}

void MTMBCFDictBuilder::MTMBCFDictBuilder(MTMBCFDictBuilder *this, const __CFString *a2)
{
  MEOWVectorBase::MEOWVectorBase(this, 8);
  MEOWVectorBase::MEOWVectorBase((v4 + 32), 8);
  v5 = CFRetain(@"IsA");
  MTMBCFDictBuilder::AddPair(this, v5, a2);
}

void *MTMBCFDictBuilder::AddPair(void *this, const void *a2, const void *a3)
{
  if (a2)
  {
    if (a3)
    {
      v5 = this;
      MEOWVectorBase::Append(this);
      *(*v5 + 8 * v5[2] - 8) = a2;
      this = MEOWVectorBase::Append(v5 + 4);
      *(v5[4] + 8 * v5[6] - 8) = a3;
    }
  }

  return this;
}

void MTMBCFDictBuilder::MTMBCFDictBuilder(MTMBCFDictBuilder *this, const __CFString *a2, MTMBCFArrayBuilder *a3)
{
  MEOWVectorBase::MEOWVectorBase(this, 8);
  MEOWVectorBase::MEOWVectorBase((v6 + 32), 8);
  v7 = CFRetain(@"IsA");
  MTMBCFDictBuilder::AddPair(this, v7, a2);
  v8 = CFArrayCreate(0, *a3, *(a3 + 2), MEMORY[0x277CBF128]);
  v9 = CFRetain(@"Children");
  MTMBCFDictBuilder::AddPair(this, v9, v8);
}

void MTMBCFDictBuilder::~MTMBCFDictBuilder(MTMBCFDictBuilder *this)
{
  if (*(this + 2))
  {
    v2 = 0;
    do
    {
      CFRelease(*(*this + 8 * v2));
      CFRelease(*(*(this + 4) + 8 * v2++));
    }

    while (v2 < *(this + 2));
  }

  MEOWVectorBase::~MEOWVectorBase(this + 4);

  MEOWVectorBase::~MEOWVectorBase(this);
}

void MTMBLogDiphones::MTMBLogDiphones(MTMBLogDiphones *this, __CFArray *a2, MTMBDiphoneStatistics *a3)
{
  *this = &unk_2868F6DA0;
  *(this + 1) = a2;
  *(this + 4) = a3;
}

{
  *this = &unk_2868F6DA0;
  *(this + 1) = a2;
  *(this + 4) = a3;
}

void MTMBLogDiphones::VisitSentence(MTMBLogDiphones *this, MTFESpeechElement *a2)
{
  MEOWVectorBase::MEOWVectorBase(v7, 8);
  *(this + 2) = v7;
  MTFESpeechElement::VisitChildren(a2, this);
  if (*(this + 1))
  {
    v4 = CFRetain(@"Sentence");
    MTMBCFDictBuilder::MTMBCFDictBuilder(keys, v4, v7);
    v5 = CFDictionaryCreate(0, keys[0], keys[4], keys[2], MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFArrayAppendValue(*(this + 1), v5);
    CFRelease(v5);
    MTMBCFDictBuilder::~MTMBCFDictBuilder(keys);
  }

  MTMBCFArrayBuilder::~MTMBCFArrayBuilder(v7);
}

void sub_257B44FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MTMBCFArrayBuilder::~MTMBCFArrayBuilder(va);
  _Unwind_Resume(a1);
}

void MTMBLogDiphones::VisitIntonationalPhrase(MTMBLogDiphones *this, MTFESpeechElement *a2)
{
  MEOWVectorBase::MEOWVectorBase(v12, 8);
  v4 = *(this + 2);
  *(this + 26) = BYTE6(a2[2].var6) == 71;
  *(this + 2) = v12;
  MTFESpeechElement::VisitChildren(a2, this);
  *(this + 2) = v4;
  if (*(this + 1))
  {
    v5 = CFRetain(@"IntonationalPhrase");
    MTMBCFDictBuilder::MTMBCFDictBuilder(keys, v5, v12);
    v6 = *(this + 26);
    v7 = @"H%";
    if ((v6 & 1) == 0 && (BYTE6(a2[2].var6) & 0xFE) != 0x44)
    {
      v7 = @"L%";
    }

    v8 = CFRetain(@"FinalBoundary");
    v9 = CFRetain(v7);
    MTMBCFDictBuilder::AddPair(keys, v8, v9);
    v10 = CFDictionaryCreate(0, keys[0], keys[4], keys[2], MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v10)
    {
      MEOWVectorBase::Append(v4);
      *(*v4 + 8 * v4[2] - 8) = v10;
    }

    MTMBCFDictBuilder::~MTMBCFDictBuilder(keys);
  }

  MTMBCFArrayBuilder::~MTMBCFArrayBuilder(v12);
}

void sub_257B45134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MTMBCFArrayBuilder::~MTMBCFArrayBuilder(va);
  _Unwind_Resume(a1);
}

void MTMBLogDiphones::VisitIntermediatePhrase(MTMBLogDiphones *this, MTFESpeechElement *a2)
{
  MEOWVectorBase::MEOWVectorBase(v11, 8);
  v4 = *(this + 2);
  *(this + 2) = v11;
  MTFESpeechElement::VisitChildren(a2, this);
  *(this + 2) = v4;
  if (*(this + 1))
  {
    v5 = CFRetain(@"IntermediatePhrase");
    MTMBCFDictBuilder::MTMBCFDictBuilder(keys, v5, v11);
    v6 = @"L-";
    if (a2->var5->var4 == a2 && *(this + 26))
    {
      v6 = @"H-";
    }

    v7 = CFRetain(@"PhraseAccent");
    v8 = CFRetain(v6);
    MTMBCFDictBuilder::AddPair(keys, v7, v8);
    v9 = CFDictionaryCreate(0, keys[0], keys[4], keys[2], MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v9)
    {
      MEOWVectorBase::Append(v4);
      *(*v4 + 8 * v4[2] - 8) = v9;
    }

    MTMBCFDictBuilder::~MTMBCFDictBuilder(keys);
  }

  MTMBCFArrayBuilder::~MTMBCFArrayBuilder(v11);
}

void sub_257B45284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MTMBCFArrayBuilder::~MTMBCFArrayBuilder(va);
  _Unwind_Resume(a1);
}

void MTMBLogDiphones::VisitWord(MTMBLogDiphones *this, MTFESpeechElement *a2)
{
  MEOWVectorBase::MEOWVectorBase(v30, 8);
  v4 = *(this + 2);
  *(this + 2) = v30;
  MTFESpeechElement::VisitChildren(a2, this);
  *(this + 2) = v4;
  if (*(this + 1))
  {
    v5 = CFRetain(@"Word");
    MTMBCFDictBuilder::MTMBCFDictBuilder(v29, v5, v30);
    if (LOBYTE(a2[3].var5))
    {
      v6 = CFRetain(@"Text");
      v7 = CFStringCreateWithCString(0, &a2[3].var5, 0x8000100u);
      MTMBCFDictBuilder::AddPair(v29, v6, v7);
    }

    if ((BYTE1(a2[1].var0) & 0x10) != 0)
    {
      v8 = CFRetain(@"MorphEnding");
      v9 = CFRetain(*MEMORY[0x277CBED28]);
      MTMBCFDictBuilder::AddPair(v29, v8, v9);
    }

    if (HIBYTE(a2[1].var0) - 1 <= 1)
    {
      v10 = CFRetain(@"Compound");
      v11 = CFRetain(*MEMORY[0x277CBED28]);
      MTMBCFDictBuilder::AddPair(v29, v10, v11);
    }

    if (a2[4].var6)
    {
      MTMBCFDictBuilder::MTMBCFDictBuilder(keys);
      v12 = CFRetain(@"Start");
      v13 = DiphoneDict(a2[4].var6->var0, BYTE1(a2[4].var6->var0), bswap32(WORD1(a2[4].var6->var0)) >> 16);
      MTMBCFDictBuilder::AddPair(keys, v12, v13);
      v14 = CFRetain(@"End");
      v15 = DiphoneDict(BYTE4(a2[4].var6->var0), BYTE5(a2[4].var6->var0), bswap32(HIWORD(a2[4].var6->var0)) >> 16);
      MTMBCFDictBuilder::AddPair(keys, v14, v15);
      v16 = CFRetain(@"Instance");
      v17 = CFDictionaryCreate(0, keys[0], values, numValues, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      MTMBCFDictBuilder::AddPair(v29, v16, v17);
      MTMBCFDictBuilder::~MTMBCFDictBuilder(keys);
    }

    if (BYTE6(a2[1].var4) != 255)
    {
      v18 = CFRetain(@"PartOfSpeech");
      v19 = CFStringCreateWithCString(0, *(MEMORY[0x277D65538] + 8 * BYTE6(a2[1].var4)), 0x8000100u);
      MTMBCFDictBuilder::AddPair(v29, v18, v19);
    }

    if (WORD2(a2[1].var5))
    {
      MEOWVectorBase::MEOWVectorBase(keys, 8);
      if (WORD2(a2[1].var5))
      {
        v20 = 0;
        do
        {
          v21 = SLTagEng::Name(*(&a2[1].var5 + v20 + 3));
          v22 = CFStringCreateWithCString(0, v21, 0x8000100u);
          if (v22)
          {
            MEOWVectorBase::Append(keys);
            keys[0][numValues - 1] = v22;
          }

          ++v20;
        }

        while (v20 < WORD2(a2[1].var5));
      }

      v23 = CFRetain(@"Tags");
      v24 = CFArrayCreate(0, keys[0], numValues, MEMORY[0x277CBF128]);
      MTMBCFDictBuilder::AddPair(v29, v23, v24);
      MTMBCFArrayBuilder::~MTMBCFArrayBuilder(keys);
    }

    v25 = CFDictionaryCreate(0, v29[0], v29[4], v29[2], MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v25)
    {
      MEOWVectorBase::Append(v4);
      *(*v4 + 8 * v4[2] - 8) = v25;
    }

    MTMBCFDictBuilder::~MTMBCFDictBuilder(v29);
  }

  MTMBCFArrayBuilder::~MTMBCFArrayBuilder(v30);
}

void sub_257B45610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MTMBCFDictBuilder::~MTMBCFDictBuilder(va);
  MTMBCFArrayBuilder::~MTMBCFArrayBuilder((v9 - 80));
  _Unwind_Resume(a1);
}

void MTMBLogDiphones::VisitSyllable(MTMBLogDiphones *this, MTFESpeechElement *a2)
{
  MEOWVectorBase::MEOWVectorBase(v8, 8);
  v4 = *(this + 2);
  *(this + 12) = HIWORD(a2[1].var0);
  *(this + 2) = v8;
  MTFESpeechElement::VisitChildren(a2, this);
  *(this + 2) = v4;
  if (*(this + 1))
  {
    v5 = CFRetain(@"Syllable");
    MTMBCFDictBuilder::MTMBCFDictBuilder(keys, v5, v8);
    v6 = CFDictionaryCreate(0, keys[0], keys[4], keys[2], MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v6)
    {
      MEOWVectorBase::Append(v4);
      *(*v4 + 8 * v4[2] - 8) = v6;
    }

    MTMBCFDictBuilder::~MTMBCFDictBuilder(keys);
  }

  MTMBCFArrayBuilder::~MTMBCFArrayBuilder(v8);
}

void sub_257B45740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MTMBCFArrayBuilder::~MTMBCFArrayBuilder(va);
  _Unwind_Resume(a1);
}

MTMBDiphoneStatistics *MTMBLogDiphones::VisitPhoneme(MTMBLogDiphones *this, MTFEPhoneme *a2)
{
  if (!*(this + 1))
  {
    goto LABEL_16;
  }

  v4 = CFRetain(@"Phoneme");
  MTMBCFDictBuilder::MTMBCFDictBuilder(v22, v4);
  var9 = a2->var9;
  if (!a2->var10)
  {
    v6 = MEMORY[0x277D65550];
    goto LABEL_6;
  }

  LODWORD(var9) = var9 - 46;
  if (var9 < 5)
  {
    var9 = var9;
    v6 = off_2798518E8;
LABEL_6:
    v7 = v6[var9];
    goto LABEL_8;
  }

  v7 = "!!!";
LABEL_8:
  v8 = CFRetain(@"Name");
  v9 = CFStringCreateWithCString(0, v7, 0x8000100u);
  MTMBCFDictBuilder::AddPair(v22, v8, v9);
  if (*(this + 12) && (*(MEMORY[0x277D65568] + 4 * a2->var9) & 1) != 0)
  {
    v10 = CFRetain(@"Accent");
    v11 = CFStringCreateWithCString(0, MTFEToBI::sTone[*(this + 12)], 0x8000100u);
    MTMBCFDictBuilder::AddPair(v22, v10, v11);
  }

  if (a2->var21)
  {
    MTMBCFDictBuilder::MTMBCFDictBuilder(keys);
    v12 = CFRetain(@"Left");
    v13 = DiphoneDict(a2->var20, a2->var21, a2->var18);
    MTMBCFDictBuilder::AddPair(keys, v12, v13);
    v14 = CFRetain(@"Right");
    v15 = DiphoneDict(a2->var21, a2->var22, a2->var19);
    MTMBCFDictBuilder::AddPair(keys, v14, v15);
    v16 = CFRetain(@"Instance");
    v17 = CFDictionaryCreate(0, keys[0], keys[4], keys[2], MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    MTMBCFDictBuilder::AddPair(v22, v16, v17);
    MTMBCFDictBuilder::~MTMBCFDictBuilder(keys);
  }

  v18 = *(this + 2);
  v19 = CFDictionaryCreate(0, v22[0], v22[4], v22[2], MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v19)
  {
    MEOWVectorBase::Append(v18);
    *(*v18 + 8 * v18[2] - 8) = v19;
  }

  MTMBCFDictBuilder::~MTMBCFDictBuilder(v22);
LABEL_16:
  result = *(this + 4);
  if (result)
  {
    if (a2->var21)
    {
      MTMBDiphoneStatistics::LogDiphone(result, a2->var20, a2->var21, a2->var18);
      return MTMBDiphoneStatistics::LogDiphone(*(this + 4), a2->var21, a2->var22, a2->var19);
    }
  }

  return result;
}

void sub_257B459C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MTMBCFDictBuilder::~MTMBCFDictBuilder(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef DiphoneDict(char a1, char a2, uint64_t a3)
{
  valuePtr = a1;
  v13 = a2;
  v12 = a3;
  MTMBCFDictBuilder::MTMBCFDictBuilder(keys);
  v3 = CFRetain(@"FirstPhoneme");
  v4 = CFNumberCreate(0, kCFNumberSInt8Type, &valuePtr);
  MTMBCFDictBuilder::AddPair(keys, v3, v4);
  v5 = CFRetain(@"SecondPhoneme");
  v6 = CFNumberCreate(0, kCFNumberSInt8Type, &v13);
  MTMBCFDictBuilder::AddPair(keys, v5, v6);
  v7 = CFRetain(@"Index");
  v8 = CFNumberCreate(0, kCFNumberLongType, &v12);
  MTMBCFDictBuilder::AddPair(keys, v7, v8);
  v9 = CFDictionaryCreate(0, keys[0], keys[4], keys[2], MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  MTMBCFDictBuilder::~MTMBCFDictBuilder(keys);
  return v9;
}

void MTMBLogDiphones::~MTMBLogDiphones(MTMBLogDiphones *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MT3UnicodeString::MT3UnicodeString(MT3UnicodeString *this, CFStringRef theString)
{
  v49 = *MEMORY[0x277D85DE8];
  *(this + 8) = 0u;
  v4 = (this + 8);
  *this = &unk_2868F6E68;
  *(this + 24) = 0u;
  *(this + 5) = this + 40;
  *(this + 6) = this + 40;
  *(this + 7) = 0;
  Length = CFStringGetLength(theString);
  CharactersPtr = CFStringGetCharactersPtr(theString);
  v45 = 0;
  v46 = 0;
  v47 = 0;
  isCurrentlyProcessingEmoji = 0;
  if (!CharactersPtr)
  {
    std::vector<unsigned short>::resize(&v45, Length);
    CharactersPtr = v45;
    v50.location = 0;
    v50.length = Length;
    CFStringGetCharacters(theString, v50, v45);
  }

  v44 = 0;
  uiter_setString(&iter, CharactersPtr, Length);
  v7 = 24;
  v8 = v48;
  while (1)
  {
    v9 = (iter.getIndex)(&iter, 1);
    v10 = unorm_next();
    v11 = v10;
    if (v44 == 15 && v10 > v7)
    {
      if (v48 != v8)
      {
        free(v8);
      }

      v8 = malloc_type_malloc(2 * v11, 0x1000040BDFB0063uLL);
      if (v8)
      {
        iter.index = v9;
        v44 = 0;
        v7 = v11;
        v11 = unorm_next();
      }

      else
      {
        v7 = v11;
      }
    }

    if (v11 < 1)
    {
      break;
    }

    do
    {
      v35 = v9;
      std::vector<long>::push_back[abi:ne200100](v4, &v35);
      --v11;
    }

    while (v11);
  }

  v35 = v9;
  std::vector<long>::push_back[abi:ne200100](v4, &v35);
  if (v48 != v8 && v8)
  {
    free(v8);
  }

  if (CEMStringContainsEmoji())
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x4002000000;
    v38 = __Block_byref_object_copy_;
    v39 = __Block_byref_object_dispose_;
    __p = 0;
    v41 = 0;
    v42 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = 0;
    v13 = CFStringGetLength(theString);
    MutableCopy = CFStringCreateMutableCopy(0, v13, theString);
    if (EmojiLocaleData(void)::token != -1)
    {
      MT3UnicodeString::MT3UnicodeString();
    }

    CFStringGetLength(theString);
    CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
    v15 = v36[5];
    v16 = v36[6];
    if (v15 != v16)
    {
      v17 = (v16 - v15) >> 4;
      if (v17 >= 1)
      {
        v18 = v17 + 1;
        v19 = 16 * v17;
        do
        {
          v20 = v36[5];
          if (v18 - 2 >= (v36[6] - v20) >> 4)
          {
            std::vector<CFRange>::__throw_out_of_range[abi:ne200100]();
          }

          v21 = v20 + v19;
          v22 = *(v21 - 16);
          v23 = *(v21 - 8);
          if (v22 < CFStringGetLength(MutableCopy) - 1)
          {
            CFArrayGetValueAtIndex(v32[3], v18 - 2);
            v24 = CEMEmojiTokenCreateWithString();
            v25 = CEMEmojiTokenCopyName();
            CFRelease(v24);
            if (v25)
            {
              v26 = CFStringGetLength(MutableCopy);
              MT3UnicodeString::AddMapping(this, v22, v23, v25, v26, 1);
              v27 = CFStringGetLength(v25);
              v28 = CFStringCreateMutableCopy(0, v27, v25);
              CFRelease(v25);
              CFStringInsert(v28, 0, @"( ");
              CFStringAppend(v28, @""));
              v51.location = v22;
              v51.length = v23;
              CFStringReplace(MutableCopy, v51, v28);
              operator new();
            }
          }

          --v18;
          v19 -= 16;
        }

        while (v18 > 1);
      }
    }

    v29 = v32[3];
    if (v29)
    {
      CFRelease(v29);
    }

    *(this + 4) = MutableCopy;
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    if (__p)
    {
      v41 = __p;
      operator delete(__p);
    }
  }

  else
  {
    *(this + 4) = CFRetain(theString);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

void std::vector<long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TheoreticalAccentShape::KeyPoint>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

__n128 __Block_byref_object_copy_(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN16MT3UnicodeStringC2EPK10__CFString_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  }

  v7 = *(*(a1 + 40) + 8);
  v9 = v7[6];
  v8 = v7[7];
  if (v9 >= v8)
  {
    v11 = v7[5];
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
    v17 = 0xFFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>((v7 + 5), v17);
    }

    v18 = (16 * v13);
    *v18 = a3;
    v18[1] = a4;
    v10 = 16 * v13 + 16;
    memcpy(0, v11, v12);
    v19 = v7[5];
    v7[5] = 0;
    v7[6] = v10;
    v7[7] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v9 = a3;
    *(v9 + 1) = a4;
    v10 = (v9 + 16);
  }

  v7[6] = v10;
  v20 = *(*(*(a1 + 32) + 8) + 24);
  String = CEMEmojiTokenGetString();

  CFArrayAppendValue(v20, String);
}

void MT3UnicodeString::AddMapping(MT3UnicodeString *this, uint64_t a2, uint64_t a3, CFStringRef theString, uint64_t a5, int a6)
{
  Length = CFStringGetLength(theString);
  v12 = Length;
  v13 = 4;
  if (a6)
  {
    v14 = 2;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = Length + 1;
  std::vector<long>::resize(this + 1, Length + 1 - a3 + a5 + v13);
  v16 = *(this + 1);
  v17 = (v16 + 8 * a2 + 8 * a3);
  v18 = v16 + 8 * a5 + 8;
  if (v18 != v17)
  {
    memmove((*(this + 2) - (v18 - v17)), v17, v18 - v17);
    v16 = *(this + 1);
  }

  if (v15 + v14)
  {
    v19 = 0;
    v20 = (v16 + 8 * a2);
    v23 = *v20;
    v21 = v20 + 2;
    v22 = v23;
    v24 = vdupq_n_s64(v12 + v14);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v19), xmmword_257B895F0)));
      if (v25.i8[0])
      {
        *(v21 - 1) = v22;
      }

      if (v25.i8[4])
      {
        *v21 = v22;
      }

      v19 += 2;
      v21 += 2;
    }

    while (((v15 + v14 + 1) & 0xFFFFFFFFFFFFFFFELL) != v19);
  }

  v26 = (v16 + 8 * (v12 + v14 + a2));
  v27 = v26[2];
  *v26 = v27;
  v26[1] = v27;
}

void std::vector<long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<long>::__append(a1, a2 - v2);
  }
}

uint64_t MT3UnicodeString::shouldReturnWordCallback(MT3UnicodeString *this, CFRange a2)
{
  v2 = *(this + 7);
  if (v2 && ((v3 = *(this + 6), v4 = v3[2], v5 = *(this + 1), v6 = (*(this + 2) - v5) >> 3, v6 <= a2.location) ? (v7 = -1) : (v7 = *(v5 + 8 * a2.location)), v4 == v7 || (v6 <= a2.location + a2.length ? (v8 = -1) : (v8 = *(v5 + 8 * (a2.location + a2.length))), v4 == v8)))
  {
    v9 = v2 - 1;
    if (isCurrentlyProcessingEmoji == 1)
    {
      isCurrentlyProcessingEmoji = 0;
      v11 = *v3;
      v10 = v3[1];
      *(v11 + 8) = v10;
      *v10 = v11;
      *(this + 7) = v9;
      operator delete(v3);
      v12 = 0;
    }

    else
    {
      v12 = 1;
      isCurrentlyProcessingEmoji = 1;
      v14 = *v3;
      v13 = v3[1];
      *(v14 + 8) = v13;
      *v13 = v14;
      *(this + 7) = v9;
      operator delete(v3);
    }
  }

  else
  {
    v12 = isCurrentlyProcessingEmoji ^ 1;
  }

  return v12 & 1;
}

uint64_t MT3UnicodeString::MapIndexToSrc(MT3UnicodeString *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (a2 >= (*(this + 2) - v2) >> 3)
  {
    return -1;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

void MT3UnicodeString::~MT3UnicodeString(MT3UnicodeString *this)
{
  *this = &unk_2868F6E68;
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  std::__list_imp<SpeechChannelManager *>::clear(this + 5);
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  MT3UnicodeString::~MT3UnicodeString(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MT3UnicodeString::MapRangeToSrc(MT3UnicodeString *this, CFRange a2)
{
  if (isCurrentlyProcessingEmoji == 1)
  {
    v3 = *(this + 1);
    if (a2.location >= ((*(this + 2) - v3) >> 3))
    {
      result = -1;
    }

    else
    {
      result = *(v3 + 8 * a2.location);
    }

    v7 = (*(this + 6) + 16);
    goto LABEL_11;
  }

  v5 = *(this + 1);
  v6 = (*(this + 2) - v5) >> 3;
  if (v6 <= a2.location)
  {
    result = -1;
  }

  else
  {
    result = *(v5 + 8 * a2.location);
  }

  if (v6 > a2.location + a2.length)
  {
    v7 = (v5 + 8 * (a2.location + a2.length));
LABEL_11:
    v8 = *v7;
  }

  return result;
}

uint64_t ___ZL15EmojiLocaleDatav_block_invoke()
{
  result = CEMCreateEmojiLocaleData();
  EmojiLocaleData(void)::sEmojiLocaleData = result;
  return result;
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CFRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279851760, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::vector<long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TheoreticalAccentShape::KeyPoint>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

MTMBDiphoneStatistics *MTMBDiphoneStatistics::LogDiphone(MTMBDiphoneStatistics *this, int a2, unsigned int a3, unint64_t a4)
{
  v5 = (this + 1600 * a2 + 32 * a3);
  if (v5[2] <= a4)
  {
    do
    {
      this = MEOWVectorBase::Append(v5);
      v6 = *v5;
      *(*v5 + 8 * v5[2] - 8) = 0;
    }

    while (v5[2] <= a4);
  }

  else
  {
    v6 = *v5;
  }

  ++*(v6 + 8 * a4);
  return this;
}

uint64_t MTMBDiphoneStatistics::CreateArray(MTMBDiphoneStatistics *this)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  v1 = (this + 16);
  v2 = 2500;
  do
  {
    v3 = CFDataCreate(0, *(v1 - 2), 4 * *v1);
    v4 = v15;
    if (v15 >= v16)
    {
      v6 = (v15 - __p) >> 3;
      if ((v6 + 1) >> 61)
      {
        std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
      }

      v7 = (v16 - __p) >> 2;
      if (v7 <= v6 + 1)
      {
        v7 = v6 + 1;
      }

      if (v16 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      if (v8)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&__p, v8);
      }

      v9 = (8 * v6);
      *v9 = v3;
      v5 = 8 * v6 + 8;
      v10 = v9 - (v15 - __p);
      memcpy(v10, __p, v15 - __p);
      v11 = __p;
      __p = v10;
      v15 = v5;
      v16 = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v15 = v3;
      v5 = (v4 + 8);
    }

    v1 += 4;
    v15 = v5;
    --v2;
  }

  while (v2);
  Array = SLCFArrayBuilder::CreateArray(&__p);
  SLCFArrayBuilder::~SLCFArrayBuilder(&__p);
  return Array;
}

void sub_257B46CEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SLCFArrayBuilder::~SLCFArrayBuilder(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

CFDictionaryRef MTBEDebugParams::OverrideDefaults(CFDictionaryRef theDict, const __CFDictionary *a2)
{
  if (sSynthesisOverrideParam)
  {
    CFRelease(sSynthesisOverrideParam);
  }

  result = CFDictionaryCreateCopy(0, theDict);
  sSynthesisOverrideParam = result;
  return result;
}

CFPropertyListRef GetParam(CFStringRef key)
{
  if (!sSynthesisDebugParam)
  {
    v2 = getenv("MTX_DEBUG_PARAM");
    if (!v2 || (v3 = CFStringCreateWithCString(0, v2, 0x8000100u)) == 0)
    {
      v3 = @"com.apple.speech.synthesis.debugparam";
    }

    sSynthesisDebugParam = v3;
    v4 = getenv("MTX_DEBUG_PARAM_VALUES");
    if (v4)
    {
      v5 = v4;
      MEOWVectorBase::MEOWVectorBase(keys, 8);
      MEOWVectorBase::MEOWVectorBase(values, 8);
      __lasts = 0;
      v6 = strtok_r(v5, " \t", &__lasts);
      if (v6)
      {
        v7 = v6;
        v8 = *MEMORY[0x277CBED10];
        v9 = *MEMORY[0x277CBED28];
        do
        {
          v10 = strchr(v7, 61);
          v11 = v10;
          if (v10)
          {
            *v10 = 0;
          }

          v12 = CFStringCreateWithCString(0, v7, 0x8000100u);
          MEOWVectorBase::Append(keys);
          keys[0][numValues - 1] = v12;
          if (v11)
          {
            v13 = v11[1];
            if (v13 == 102)
            {
              v14 = CFRetain(v8);
              MEOWVectorBase::Append(values);
            }

            else if (v13 == 116)
            {
              v14 = CFRetain(v9);
              MEOWVectorBase::Append(values);
            }

            else
            {
              if (strchr(v11 + 1, 46))
              {
                v16 = atof(v11 + 1);
                *&v19 = v16;
                v14 = CFNumberCreate(0, kCFNumberFloatType, &v19);
              }

              else
              {
                v19 = atol(v11 + 1);
                v14 = CFNumberCreate(0, kCFNumberLongType, &v19);
              }

              MEOWVectorBase::Append(values);
            }

            values[0][v22 - 1] = v14;
            *v11 = 61;
          }

          else
          {
            v15 = CFRetain(v9);
            MEOWVectorBase::Append(values);
            values[0][v22 - 1] = v15;
          }

          v7 = strtok_r(0, " \t", &__lasts);
        }

        while (v7);
      }

      if (numValues)
      {
        sSynthesisOverrideParam = CFDictionaryCreate(0, keys[0], values[0], numValues, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (numValues)
        {
          for (i = 0; i < numValues; ++i)
          {
            CFRelease(keys[0][i]);
            CFRelease(values[0][i]);
          }
        }
      }

      MEOWVectorBase::~MEOWVectorBase(values);
      MEOWVectorBase::~MEOWVectorBase(keys);
    }
  }

  if (!sSynthesisOverrideParam)
  {
    return CFPreferencesCopyAppValue(key, sSynthesisDebugParam);
  }

  result = CFDictionaryGetValue(sSynthesisOverrideParam, key);
  if (!result)
  {
    return CFPreferencesCopyAppValue(key, sSynthesisDebugParam);
  }

  return result;
}

void sub_257B4706C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEOWVectorBase::~MEOWVectorBase(va);
  MEOWVectorBase::~MEOWVectorBase(va1);
  _Unwind_Resume(a1);
}

void MTBEDebugParams::GetParam(const __CFString *this, const __CFString *a2, BOOL *a3)
{
  v3 = a3;
  Param = GetParam(this);
  if (Param)
  {
    v7 = Param;
    v8 = CFGetTypeID(Param);
    if (v8 == CFBooleanGetTypeID())
    {
      v9 = CFBooleanGetValue(v7) != 0;
      LOBYTE(a2->isa) = v9;
      if ((MTBEDebugFlags::sMEOWDebug & 0x4000) != 0 && v9 != v3)
      {
        ExternalRepresentation = CFStringCreateExternalRepresentation(0, this, 0x8000100u, 0);
        v11 = *MEMORY[0x277D85DF8];
        Length = CFDataGetLength(ExternalRepresentation);
        BytePtr = CFDataGetBytePtr(ExternalRepresentation);
        v14 = "false";
        if (v3)
        {
          v15 = "true";
        }

        else
        {
          v15 = "false";
        }

        if (LOBYTE(a2->isa))
        {
          v14 = "true";
        }

        fprintf(v11, "Param %.*s default %s now %s\n", Length, BytePtr, v15, v14);

        CFRelease(ExternalRepresentation);
      }
    }
  }
}

void MTBEDebugParams::GetParam(const __CFString *this, const __CFString *a2, uint64_t *a3)
{
  Param = GetParam(this);
  if (Param)
  {
    valuePtr = 0;
    if (CFNumberGetValue(Param, kCFNumberLongType, &valuePtr))
    {
      v7 = valuePtr;
      a2->isa = valuePtr;
      if ((MTBEDebugFlags::sMEOWDebug & 0x4000) != 0 && v7 != a3)
      {
        ExternalRepresentation = CFStringCreateExternalRepresentation(0, this, 0x8000100u, 0);
        v9 = *MEMORY[0x277D85DF8];
        Length = CFDataGetLength(ExternalRepresentation);
        BytePtr = CFDataGetBytePtr(ExternalRepresentation);
        fprintf(v9, "Param %.*s default %ld now %ld\n", Length, BytePtr, a3, a2->isa);
        CFRelease(ExternalRepresentation);
      }
    }
  }
}

void MTBEDebugParams::GetParam(const __CFString *this, const __CFString *a2, float *a3, float a4)
{
  Param = GetParam(this);
  if (Param)
  {
    valuePtr = 0.0;
    if (CFNumberGetValue(Param, kCFNumberDoubleType, &valuePtr))
    {
      v8 = valuePtr;
      *&a2->isa = v8;
      if ((MTBEDebugFlags::sMEOWDebug & 0x4000) != 0 && v8 != a4)
      {
        ExternalRepresentation = CFStringCreateExternalRepresentation(0, this, 0x8000100u, 0);
        v10 = *MEMORY[0x277D85DF8];
        Length = CFDataGetLength(ExternalRepresentation);
        BytePtr = CFDataGetBytePtr(ExternalRepresentation);
        fprintf(v10, "Param %.*s default %g now %g\n", Length, BytePtr, a4, *&a2->isa);
        CFRelease(ExternalRepresentation);
      }
    }
  }
}

uint64_t MTBEDebugFlags::Update(MTBEDebugFlags *this)
{
  v1 = getenv("MTX_DEBUG");
  v2 = getenv("MEOW_DEBUG");
  if (v1)
  {
    v3 = atoi(v1);
  }

  else
  {
    if (kMTXDebugParam)
    {
      MTBEDebugParams::GetParam(kMTXDebugParam, &qword_27F8F22A8, qword_27F8F22A8);
      kMTXDebugParam = 0;
    }

    v3 = qword_27F8F22A8;
  }

  MTBEDebugFlags::sMTXDebug = v3;
  if (v2)
  {
    result = atoi(v2);
  }

  else
  {
    if (kMEOWDebugParam)
    {
      MTBEDebugParams::GetParam(kMEOWDebugParam, &qword_27F8F22B8, qword_27F8F22B8);
      kMEOWDebugParam = 0;
    }

    result = qword_27F8F22B8;
  }

  MTBEDebugFlags::sMEOWDebug = result;
  return result;
}

MTFESpeechElement *MTBEAbort(MTFESpeechElement *result)
{
  if (MTBEAbort(MTFESpeechElement *)::sAborting != 1)
  {
    MTBEAbort(MTFESpeechElement *)::sAborting = 1;
    if (result)
    {
      do
      {
        v1 = result;
        result = result->var5;
      }

      while (result);
      memset(v6, 0, sizeof(v6));
      v2 = funopen(v6, 0, MTBEBufferWriteFun, 0, 0);
      fputs("While processing:\n", v2);
      v3[0] = &unk_2868F4E00;
      v3[1] = v2;
      v3[2] = 0;
      v4 = 0;
      v5 = 0;
      MTFESpeechVisitor::Visit(v3, v1);
      MTBEAbort(v2, v3, v6);
    }

    abort();
  }

  return result;
}

void sub_257B47538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_257B47678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MTFVoice;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t MEOWUnitWeightStrategy::PitchStrategy(MEOWUnitWeightStrategy *this)
{
  if (!MEOWUnitWeightStrategy::sPitchStrategy)
  {
    if (kPitchPowerStrategy)
    {
      MTBEDebugParams::GetParam(kPitchPowerStrategy, &byte_27F8F22C8, byte_27F8F22C8);
      kPitchPowerStrategy = 0;
    }

    if (byte_27F8F22C8 == 1)
    {
      operator new();
    }

    if (kUsePitchRMS)
    {
      MTBEDebugParams::GetParam(kUsePitchRMS, &byte_27F8F22F8, byte_27F8F22F8);
      kUsePitchRMS = 0;
    }

    operator new();
  }

  return MEOWUnitWeightStrategy::sPitchStrategy;
}

uint64_t MEOWUnitWeightStrategy::DurationStrategy(MEOWUnitWeightStrategy *this)
{
  if (!MEOWUnitWeightStrategy::sDurationStrategy)
  {
    if (kDurationPowerStrategy)
    {
      MTBEDebugParams::GetParam(kDurationPowerStrategy, &byte_27F8F2308, byte_27F8F2308);
      kDurationPowerStrategy = 0;
    }

    if (byte_27F8F2308 == 1)
    {
      operator new();
    }

    operator new();
  }

  return MEOWUnitWeightStrategy::sDurationStrategy;
}

uint64_t MEOWUnitWeightStrategy::WordPitchStrategy(MEOWUnitWeightStrategy *this)
{
  if (!MEOWUnitWeightStrategy::sWordPitchStrategy)
  {
    if (kWordPitchPowerStrategy)
    {
      MTBEDebugParams::GetParam(kWordPitchPowerStrategy, &byte_27F8F2338, byte_27F8F2338);
      kWordPitchPowerStrategy = 0;
    }

    if (byte_27F8F2338 == 1)
    {
      operator new();
    }

    if (kUsePitchRMS)
    {
      MTBEDebugParams::GetParam(kUsePitchRMS, &byte_27F8F22F8, byte_27F8F22F8);
      kUsePitchRMS = 0;
    }

    operator new();
  }

  return MEOWUnitWeightStrategy::sWordPitchStrategy;
}

uint64_t MEOWUnitWeightStrategy::WordDurationStrategy(MEOWUnitWeightStrategy *this)
{
  if (!MEOWUnitWeightStrategy::sWordDurationStrategy)
  {
    if (kWordDurationPowerStrategy)
    {
      MTBEDebugParams::GetParam(kWordDurationPowerStrategy, &byte_27F8F2368, byte_27F8F2368);
      kWordDurationPowerStrategy = 0;
    }

    if (byte_27F8F2368 == 1)
    {
      operator new();
    }

    operator new();
  }

  return MEOWUnitWeightStrategy::sWordDurationStrategy;
}

void MEOWUnitCostWindow::MEOWUnitCostWindow(MEOWUnitCostWindow *this, int64_t a2, int a3, float a4)
{
  MEOWVectorBase::MEOWVectorBase(this, 4, a2);
  if (!a3)
  {
    goto LABEL_29;
  }

  if (kUseUnitCostWindow)
  {
    MTBEDebugParams::GetParam(kUseUnitCostWindow, &byte_27F8F2398, byte_27F8F2398);
    kUseUnitCostWindow = 0;
  }

  if (byte_27F8F2398 == 1)
  {
    if (kCostWindowSlope)
    {
      MTBEDebugParams::GetParam(kCostWindowSlope, &qword_27F8F23A8, qword_27F8F23A8);
      kCostWindowSlope = 0;
    }

    v9 = qword_27F8F23A8;
    if ((a2 + 1) >> 1 >= qword_27F8F23A8)
    {
      v10 = qword_27F8F23A8;
    }

    else
    {
      v10 = (a2 + 1) >> 1;
    }

    v11 = *&dword_27F8F23B8;
    if (kCostWindowTrough)
    {
      MTBEDebugParams::GetParam(kCostWindowTrough, &dword_27F8F23B8, qword_27F8F23A8, *&dword_27F8F23B8);
      kCostWindowTrough = 0;
      v9 = qword_27F8F23A8;
      v11 = *&dword_27F8F23B8;
      if (kCostWindowSlope)
      {
        MTBEDebugParams::GetParam(kCostWindowSlope, &qword_27F8F23A8, qword_27F8F23A8);
        kCostWindowSlope = 0;
        v9 = qword_27F8F23A8;
      }
    }

    v12 = 0;
    if (v10)
    {
      v13 = (1.0 - v11) / v9;
      if (v13 != 0.0)
      {
        v14 = *this;
        v15 = (*this + 4 * a2 - 4);
        v16 = 1.0;
        v17 = v10;
        do
        {
          *v15-- = v16;
          *v14++ = v16;
          v16 = v16 - v13;
          --v17;
        }

        while (v17);
        v12 = v10;
      }
    }

    if (a2 > 2 * v12)
    {
      v18 = (4 * a2 - 8 * v12) >> 2;
      v19 = v18 - 1;
      if (v18 >= 1)
      {
        v20 = 0;
        v21 = (v18 + 3) & 0x7FFFFFFFFFFFFFFCLL;
        v22 = vdupq_n_s64(v19);
        v23 = (*this + 4 * v12 + 8);
        do
        {
          v24 = vdupq_n_s64(v20);
          v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_257B895F0)));
          if (vuzp1_s16(v25, *v22.i8).u8[0])
          {
            *(v23 - 2) = v11;
          }

          if (vuzp1_s16(v25, *&v22).i8[2])
          {
            *(v23 - 1) = v11;
          }

          if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_257B895E0)))).i32[1])
          {
            *v23 = v11;
            v23[1] = v11;
          }

          v20 += 4;
          v23 += 4;
        }

        while (v21 != v20);
      }
    }
  }

  else
  {
LABEL_29:
    if (a2 >= 1)
    {
      v26 = 0;
      *v8.i32 = 1.0 - a4;
      v27 = vdupq_n_s64(a2 - 1);
      v28 = (*this + 8);
      do
      {
        v29 = vdupq_n_s64(v26);
        v30 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_257B895F0)));
        if (vuzp1_s16(v30, v8).u8[0])
        {
          *(v28 - 2) = v8.i32[0];
        }

        if (vuzp1_s16(v30, v8).i8[2])
        {
          *(v28 - 1) = v8.i32[0];
        }

        if (vuzp1_s16(v8, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_257B895E0)))).i32[1])
        {
          *v28 = v8.i32[0];
          v28[1] = v8.i32[0];
        }

        v26 += 4;
        v28 += 4;
      }

      while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v26);
    }
  }
}

float MEOWComputeUnitCost(MEOWUnitWeightStrategy *a1, unint64_t a2, __int16 *a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (!a4)
  {
    return 0.0;
  }

  v16 = MEOWUnitWeightStrategy::PitchStrategy(a1);
  v18 = MEOWUnitWeightStrategy::DurationStrategy(v16);
  v19 = a4;
  v41 = a4;
  if (!a2)
  {
    v24 = (*(*v16 + 16))(v16, 200.0, 100.0);
    v25 = 1.0;
    a2 = 1;
LABEL_26:
    if (kVoicedPitchWeight)
    {
      MTBEDebugParams::GetParam(kVoicedPitchWeight, &dword_27F8F23E8, v17, *&dword_27F8F23E8);
      kVoicedPitchWeight = 0;
    }

    v37 = *&dword_27F8F23E8;
    v35 = v37 * (*(*v16 + 8))(v16, v24 / a2);
    v22 = v25;
    goto LABEL_29;
  }

  v20 = 0;
  v21 = v19 / a1;
  v22 = 0.0;
  v23 = a2;
  v24 = 0.0;
  v25 = 0.0;
  do
  {
    v26 = *a3++;
    v27 = (v26 & 0x7FFF);
    if (v26 < 0)
    {
      ++v20;
    }

    else
    {
      v28 = (v21 * v22);
      v29 = *(a6 + 4 * v28);
      v30 = 22050.0 / *(a5 + 4 * v28);
      v24 = v24 + ((*(*v16 + 16))(v16, v30, v27) * v29);
      v25 = v25 + v30;
    }

    v22 = v22 + v27;
    --v23;
  }

  while (v23);
  if (!v20)
  {
    goto LABEL_26;
  }

  if (a7)
  {
    v31 = &kUnvoicedPenalty;
  }

  else
  {
    v31 = &kUnvoicedPitchCost;
  }

  if (*v31)
  {
    if (a7)
    {
      v32 = &kUnvoicedPenalty;
    }

    else
    {
      v32 = &kUnvoicedPitchCost;
    }

    if (a7)
    {
      v33 = &unk_27F8F23C8;
    }

    else
    {
      v33 = algn_27F8F23D8;
    }

    MTBEDebugParams::GetParam(*v31, v33, v17, *(v32 + 2));
    *v31 = 0;
  }

  if (a7)
  {
    v34 = &kUnvoicedPenalty;
  }

  else
  {
    v34 = &kUnvoicedPitchCost;
  }

  v35 = *(v34 + 2);
LABEL_29:
  if (kDurWeight)
  {
    MTBEDebugParams::GetParam(kDurWeight, &dword_27F8F23F8, v17, *&dword_27F8F23F8);
    kDurWeight = 0;
  }

  v38 = *&dword_27F8F23F8;
  v39 = v38 * (*(*v18 + 16))(v18, (v41 * 22050.0) / 200.0, v22);
  if (a8)
  {
    v40 = *(a8 + 16);
    *v40 = v35 + *v40;
    v40[*(a8 + 4)] = v39 + v40[*(a8 + 4)];
  }

  return v35 + v39;
}

float MEOWComputeBreathCost(MEOWUnitWeightStrategy *a1, unint64_t a2, uint64_t a3, float *a4)
{
  v9 = MEOWUnitWeightStrategy::DurationStrategy(a1);
  v10 = (a2 * 22050.0) / 200.0;
  if (kBreathProportion)
  {
    MTBEDebugParams::GetParam(kBreathProportion, &dword_27F8F2408, v8, *&dword_27F8F2408);
    kBreathProportion = 0;
  }

  v11 = v10 * *&dword_27F8F2408;
  if (kMaxBreathLength)
  {
    MTBEDebugParams::GetParam(kMaxBreathLength, &dword_27F8F2418, v8, *&dword_27F8F2418);
    kMaxBreathLength = 0;
  }

  if ((*&dword_27F8F2418 * 22.05) < v11)
  {
    v11 = *&dword_27F8F2418 * 22.05;
  }

  if (v10 < a1)
  {
    if (kExcessiveBreathCost)
    {
      MTBEDebugParams::GetParam(kExcessiveBreathCost, &dword_27F8F2428, v8, *&dword_27F8F2428);
      kExcessiveBreathCost = 0;
    }

    v12 = *&dword_27F8F2428;
    if (!a3)
    {
      return v12;
    }

LABEL_15:
    v14 = *&dword_27F8F2428;
    if (kExcessiveBreathCost)
    {
      MTBEDebugParams::GetParam(kExcessiveBreathCost, &dword_27F8F2428, v8, *&dword_27F8F2428);
      kExcessiveBreathCost = 0;
      v14 = *&dword_27F8F2428;
    }

    if (v12 != v14)
    {
      a4 = (*(a3 + 16) + 4 * *(a3 + 4));
    }

    *a4 = v12 + *a4;
    return v12;
  }

  if (kBreathWeight)
  {
    MTBEDebugParams::GetParam(kBreathWeight, &dword_27F8F2438, v8, *&dword_27F8F2438);
    kBreathWeight = 0;
  }

  v13 = *&dword_27F8F2438;
  v12 = v13 * (*(*v9 + 16))(v9, v11, a1);
  if (a3)
  {
    goto LABEL_15;
  }

  return v12;
}

void MEOWComputeWordUnitCost(MEOWUnitWeightStrategy *a1, uint64_t a2, float *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v7 = a2;
    if (a2)
    {
      v12 = a3;
      v14 = MEOWUnitWeightStrategy::WordPitchStrategy(a1);
      v16 = MEOWUnitWeightStrategy::WordDurationStrategy(v14);
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      v31 = 0.0;
      do
      {
        v21 = *v12;
        v12 = (v12 + 2);
        v22 = (v21 & 0x7FFF);
        if (v21 < 0)
        {
          v31 = v31 + v22;
        }

        else
        {
          v23 = ((a4 / a1) * v17);
          v24 = *(a6 + 4 * v23);
          v25 = 22050.0 / *(a5 + 4 * v23);
          v18 = v18 + ((*(*v14 + 16))(v14, v25, v22) * v24);
          v19 = v19 + v25;
          v20 = v20 + 1.0;
        }

        v17 = v17 + v22;
        --v7;
      }

      while (v7);
      if (v20 == 0.0)
      {
        if (kUnvoicedWordCost)
        {
          MTBEDebugParams::GetParam(kUnvoicedWordCost, &dword_27F8F2458, v15, *&dword_27F8F2458);
          kUnvoicedWordCost = 0;
        }

        v27 = *&dword_27F8F2458;
      }

      else
      {
        if (kVoicedPitchWeight)
        {
          MTBEDebugParams::GetParam(kVoicedPitchWeight, &dword_27F8F23E8, v15, *&dword_27F8F23E8);
          kVoicedPitchWeight = 0;
        }

        v26 = *&dword_27F8F23E8;
        v27 = v26 * (*(*v14 + 8))(v14, v18 / v20);
      }

      if (kDurWeight)
      {
        MTBEDebugParams::GetParam(kDurWeight, &dword_27F8F23F8, v15, *&dword_27F8F23F8);
        kDurWeight = 0;
      }

      v28 = *&dword_27F8F23F8;
      v29 = v28 * (*(*v16 + 16))(v16, a4 * 110.25, v31 + v19);
      if (a7)
      {
        v30 = *(a7 + 16);
        *v30 = v27 + *v30;
        v30[*(a7 + 4)] = v29 + v30[*(a7 + 4)];
      }
    }

    else if (kMissingWeight)
    {
      MTBEDebugParams::GetParam(kMissingWeight, &dword_27F8F2448, a3, *&dword_27F8F2448);
      kMissingWeight = 0;
    }
  }
}

void MEOWComputeAccentCost(int a1, int a2, uint64_t a3)
{
  v4 = 0.0;
  if ((MTBEDebugFlags::sMEOWDebug & 0x8000) == 0)
  {
    if (kAccentCostWeight)
    {
      MTBEDebugParams::GetParam(kAccentCostWeight, &dword_27F8F2468, a3, *&dword_27F8F2468);
      kAccentCostWeight = 0;
    }

    v4 = *&dword_27F8F2468 * sAccentCost[3 * a1 - 3 + a2];
  }

  if (a3)
  {
    *(*(a3 + 16) + 8 * *(a3 + 4)) = v4 + *(*(a3 + 16) + 8 * *(a3 + 4));
  }
}

void MEOWPowerStrategy::weigh(MEOWPowerStrategy *this, float a2, float a3, uint64_t a4, float *a5)
{
  v7 = *(this + 2);
  v8 = *(this + 3);
  if (kPowerClipMax)
  {
    MTBEDebugParams::GetParam(kPowerClipMax, &dword_27F8F2478, a5, *&dword_27F8F2478);
    kPowerClipMax = 0;
  }

  powf(fabsf((a3 - a2) / a3), v7);
}

void MEOWByteSwapDecoder::Decode(MEOWByteSwapDecoder *this, unsigned int a2, char *a3, unsigned int a4, unsigned int a5, unsigned int a6, __int16 *a7)
{
  if (a6)
  {
    v7 = 2 * a6;
    do
    {
      v8 = *a3;
      a3 += 2;
      *a7++ = bswap32(v8) >> 16;
      v7 -= 2;
    }

    while (v7);
  }
}

void MEOWCodebookDecoder::MEOWCodebookDecoder(MEOWCodebookDecoder *this, unsigned int a2, int a3, int a4, int a5, char **a6)
{
  *this = &unk_2868F6FB8;
  if (a4)
  {
    v10 = 96;
  }

  else
  {
    v10 = 160;
  }

  if (a5)
  {
    v11 = 7;
  }

  else
  {
    v11 = 6;
  }

  *(this + 3) = v10;
  *(this + 4) = v11;
  v12 = a2;
  MEOWVectorBase::MEOWVectorBase((this + 24), 8, a2);
  if (a3 > 13)
  {
    if (a3 == 14)
    {
      v13 = 8;
    }

    else
    {
      if (a3 != 24)
      {
        goto LABEL_17;
      }

      v13 = 16;
    }
  }

  else if (a3 == 4)
  {
    v13 = 2;
  }

  else
  {
    if (a3 != 7)
    {
      goto LABEL_17;
    }

    v13 = 4;
  }

  *(this + 2) = v13;
LABEL_17:
  v14 = *a6;
  if (a2)
  {
    v15 = 0;
    v16 = 2 * *(this + 2);
    do
    {
      *(*(this + 3) + v15) = v14;
      v15 += 8;
      v14 += v16;
    }

    while (8 * v12 != v15);
  }

  *a6 = v14;
}

uint64_t MEOWCodebookDecoder::Decode(MEOWCodebookDecoder *this, unsigned int a2, unsigned __int8 *a3, unsigned int a4, unsigned int a5, unsigned int a6, __int16 *a7)
{
  v10 = a3 + 1;
  v9 = a3[1];
  v11 = a3[1];
  v12 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    v13 = *(this + 3) / *(this + 2) + 2;
    do
    {
      MEOWCodebookDecoder::Expand(this, v10, v11, a7, v12);
      v10 += v13;
      v12 += *(this + 3);
      v11 = *v10;
    }

    while ((*v10 & 0x80000000) == 0);
  }

  v14 = v10[(v11 & 0x7F) + 2];

  return MEOWCodebookDecoder::Expand(this, v10, v14, a7, v12);
}

uint64_t MEOWCodebookDecoder::Expand(uint64_t this, const unsigned __int8 *a2, int a3, __int16 *a4, int a5)
{
  v7 = this;
  v8 = (a3 & 0xF) + 1;
  v9 = a2[1];
  v10 = v9 + *(this + 12) - 1;
  v11 = *(this + 16) - (a3 >> 4);
  v12 = &a4[a5];
  if (v10 <= a5)
  {
    v13 = &a4[a5];
  }

  else
  {
    v13 = &a4[v10];
  }

  if (v10 <= a5)
  {
    v14 = &v12[-v10];
  }

  else
  {
    v14 = a4;
  }

  if (v10 <= a5)
  {
    v15 = *(this + 12);
  }

  else
  {
    v15 = a5 - (v9 - 1);
  }

  if ((MTBEDebugFlags::sMEOWDebug & 0x400) != 0)
  {
    v40 = v15;
    fprintf(*MEMORY[0x277D85DF8], "X %02x%02x %2d %2d %3d %4d %4d -> %4d %3d | ", a3, v9, v11, (a3 & 0xF) + 1, v10, a5, (v14 - a4) >> 1, (v13 - a4) >> 1, v15);
    this = fputc(10, *MEMORY[0x277D85DF8]);
    v15 = v40;
  }

  v16 = a2 + 2;
  if (v11 < 1)
  {
    v24 = *(v7 + 12);
    if (v11 < 0)
    {
      if (v24 >= 1)
      {
        v31 = 0;
        v32 = *(v7 + 24);
        v33 = *(v7 + 8);
        do
        {
          if (v33 >= 1)
          {
            v34 = *(v32 + 8 * *v16);
            v35 = v33;
            do
            {
              v36 = *v34++;
              *v12++ = bswap32(v36) >> 16 << -v11;
              --v35;
            }

            while (v35);
          }

          ++v16;
          v31 += v33;
        }

        while (v31 < v24);
      }
    }

    else if (v24 >= 1)
    {
      v25 = 0;
      v26 = *(v7 + 24);
      v27 = *(v7 + 8);
      do
      {
        if (v27 >= 1)
        {
          v28 = *(v26 + 8 * *v16);
          v29 = v27;
          do
          {
            v30 = *v28++;
            *v12++ = bswap32(v30) >> 16;
            --v29;
          }

          while (v29);
        }

        ++v16;
        v25 += v27;
      }

      while (v25 < v24);
    }
  }

  else
  {
    v17 = *(v7 + 12);
    if (v17 >= 1)
    {
      v18 = 0;
      v19 = *(v7 + 24);
      v20 = *(v7 + 8);
      do
      {
        if (v20 >= 1)
        {
          v21 = *(v19 + 8 * *v16);
          v22 = v20;
          do
          {
            v23 = *v21++;
            *v12++ = bswap32(v23) >> 16 >> v11;
            --v22;
          }

          while (v22);
        }

        ++v16;
        v18 += v20;
      }

      while (v18 < v17);
    }
  }

  if (v15 >= 1)
  {
    if (a5 >= v10)
    {
      v37 = v10;
    }

    else
    {
      v37 = a5;
    }

    v38 = v37 - v9 + 2;
    do
    {
      v39 = *v14++;
      *v13++ += (v8 * v39) >> 4;
      --v38;
    }

    while (v38 > 1);
  }

  return this;
}

void MEOWCodebookDecoder::Filter14to16(MEOWCodebookDecoder *this, __int16 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    do
    {
      v3 = *a2 - (v3 >> 5) + ((7 * v3) >> 3);
      if (v3 >= 0x1FFF)
      {
        v3 = 0x1FFF;
      }

      if (v3 <= -8191)
      {
        v3 = -8191;
      }

      *a2++ = 4 * v3;
      --a3;
    }

    while (a3);
  }
}

uint64_t MEOWACDecoder::MEOWACDecoder(uint64_t a1, unsigned __int16 *a2)
{
  *a1 = &unk_2868F6FE0;
  *&inSourceFormat.mSampleRate = bswap64(*(a2 + 2));
  *&inSourceFormat.mFormatID = vrev32q_s8(*(a2 + 6));
  *&inSourceFormat.mBytesPerFrame = vrev32_s8(*(a2 + 14));
  inSourceFormat.mBitsPerChannel = bswap32(*(a2 + 9));
  inSourceFormat.mReserved = 0;
  if (inSourceFormat.mFormatID == 1869641075)
  {
    if (MEOWACDecoder::LoadOpus(void)::sHasOpus != -1)
    {
      MEOWACDecoder::MEOWACDecoder();
    }
  }

  else if (inSourceFormat.mFormatID == 1633772320)
  {
    inSourceFormat.mFormatFlags = 0;
    inSourceFormat.mBytesPerFrame = 0;
    inSourceFormat.mBitsPerChannel = 0;
  }

  if (!AudioConverterNew(&inSourceFormat, &MEOWACDecoder::MEOWACDecoder(MEOWACCodecParam const&)::sACUncompressed, (a1 + 8)))
  {
    inPropertyData = 2;
    AudioConverterSetProperty(*(a1 + 8), 0x70726D6Du, 4u, &inPropertyData);
    v12 = 2112;
    *(a1 + 24) = 2112;
    if (inSourceFormat.mFormatID == 1869641075)
    {
      *(a1 + 24) = 4800;
      outPropertyData = 1650553971;
      LODWORD(v12) = 156;
      AudioConverterSetProperty(*(a1 + 8), 0x73726361u, 4u, &outPropertyData);
    }

    AudioConverterSetProperty(*(a1 + 8), 0x7072696Du, 8u, &v12);
    AudioConverterSetProperty(*(a1 + 8), 0x646D6763u, ((bswap32(*a2) >> 14) & 0x3FFFC) - 44, a2 + 22);
    v10 = 4;
    outPropertyData = 0;
    if (inSourceFormat.mFormatID == 1869641075)
    {
      mBytesPerPacket = -1;
    }

    else
    {
      Property = AudioFormatGetProperty(0x66657866u, 0x28u, &inSourceFormat, &v10, &outPropertyData);
      if (outPropertyData)
      {
        v7 = Property == 0;
      }

      else
      {
        v7 = 0;
      }

      mBytesPerPacket = inSourceFormat.mBytesPerPacket;
      if (v7)
      {
        mBytesPerPacket = -1;
      }
    }

    LODWORD(v4) = inSourceFormat.mFramesPerPacket;
    v8 = MEOWACDecoder::MEOWACDecoder(MEOWACCodecParam const&)::sACUncompressed.mSampleRate * v4 / inSourceFormat.mSampleRate;
    *(a1 + 16) = mBytesPerPacket;
    *(a1 + 20) = v8;
  }

  return a1;
}

{
  *a1 = &unk_2868F6FE0;
  v4 = *(a2 + 3);
  v5 = bswap32(v4);
  v6 = bswap32(*a2) >> 16;
  outPropertyData.mSampleRate = vcvts_n_f32_u32(bswap32(*(a2 + 2)), 0x10uLL);
  if (v4 == 1630826605)
  {
    v5 = 1633772320;
  }

  outPropertyData.mFormatID = v5;
  *&outPropertyData.mFramesPerPacket = 0;
  *&outPropertyData.mFormatFlags = 0;
  v7 = *(a2 + 3);
  *&outPropertyData.mBitsPerChannel = 0;
  outPropertyData.mChannelsPerFrame = v7;
  ioPropertyDataSize = 40;
  if (v6 < 5 || v4 == 1630826605)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = 4 * v6 - 16;
    v10 = a2 + 8;
  }

  AudioFormatGetProperty(0x666D7469u, v9, v10, &ioPropertyDataSize, &outPropertyData);
  if (!AudioConverterNew(&outPropertyData, &MEOWACDecoder::MEOWACDecoder(MEOWQTCodecParam const&)::sACUncompressed, (a1 + 8)))
  {
    inPropertyData = 2;
    AudioConverterSetProperty(*(a1 + 8), 0x70726D6Du, 4u, &inPropertyData);
    v18 = 2112;
    *(a1 + 24) = 2112;
    AudioConverterSetProperty(*(a1 + 8), 0x7072696Du, 8u, &v18);
    AudioConverterSetProperty(*(a1 + 8), 0x646D6763u, 4 * v6 - 16, a2 + 8);
    v17 = 0;
    ioPropertyDataSize = 4;
    Property = AudioFormatGetProperty(0x66657866u, 0x28u, &outPropertyData, &ioPropertyDataSize, &v17);
    if (v17)
    {
      v13 = Property == 0;
    }

    else
    {
      v13 = 0;
    }

    v14 = bswap32(a2[3]) >> 16;
    LODWORD(v12) = outPropertyData.mFramesPerPacket;
    v15 = (MEOWACDecoder::MEOWACDecoder(MEOWQTCodecParam const&)::sACUncompressed.mSampleRate * v12 / outPropertyData.mSampleRate);
    if (v13)
    {
      v14 = -1;
    }

    *(a1 + 16) = v14;
    *(a1 + 20) = v15;
  }

  return a1;
}

void MEOWACDecoder::LoadOpus(MEOWACDecoder *this)
{
  if (MEOWACDecoder::LoadOpus(void)::sHasOpus != -1)
  {
    MEOWACDecoder::MEOWACDecoder();
  }
}

void MEOWACDecoder::~MEOWACDecoder(AudioConverterRef *this)
{
  *this = &unk_2868F6FE0;
  AudioConverterDispose(this[1]);
}

{
  MEOWACDecoder::~MEOWACDecoder(this);

  JUMPOUT(0x259C6DA90);
}

void MEOWACIterator::MEOWACIterator(MEOWACIterator *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, char *a6, unsigned int a7)
{
  *this = a2;
  if ((a2 & 0x80000000) != 0)
  {
    v8 = (a7 - a4) / a3;
    if (a7 <= a4)
    {
      v8 = 0;
    }

    if (a5 < 2)
    {
      v11 = 0;
      v12 = a6;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      LODWORD(v11) = 0;
      v12 = a6;
      do
      {
        v13 = *v12;
        v12 += 2;
        v14 = bswap32(v13);
        v15 = HIWORD(v14);
        if (v9 >= v8)
        {
          v15 = 0;
        }

        v11 = v11 + v15;
        v10 += HIWORD(v14) + 2;
        ++v9;
      }

      while (a5 - 1 > v10);
    }

    *(this + 1) = ((v12 - a6) >> 1) - v8;
    *(this + 1) = &a6[2 * v8];
    *(this + 2) = &v12[v11];
    *(this + 3) = 0;
    *(this + 8) = 0;
    v16 = v8 * a3;
  }

  else
  {
    *(this + 1) = 0;
    if (a2)
    {
      v7 = a5 / a2;
    }

    else
    {
      v7 = 0;
    }

    v16 = 0;
    *(this + 1) = v7;
    *(this + 2) = a6;
  }

  *(this + 10) = v16;
}

uint64_t MEOWACIterator::FetchData(uint64_t this, unsigned int *a2, AudioBuffer *a3, AudioStreamPacketDescription **a4)
{
  v4 = *(this + 4);
  if ((*this & 0x80000000) != 0)
  {
    if (v4 >= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(this + 4);
    }

    *a2 = v9;
    if (v4)
    {
      v10 = *(this + 8);
      v11 = *(this + 16);
      v12 = bswap32(*v10) >> 16;
      a3->mData = v11;
      a3->mNumberChannels = 1;
      a3->mDataByteSize = v12;
      *(this + 36) = v12;
      *(this + 8) = v10 + 1;
      *(this + 16) = &v11[v12];
      *a4 = (this + 24);
      v8 = *(this + 4) - 1;
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 >= *a2)
    {
      v4 = *a2;
    }

    *a2 = v4;
    if (v4)
    {
      a3->mNumberChannels = 1;
      v5 = *(this + 16);
      a3->mData = v5;
      v6 = *(this + 4);
      v7 = *this * *a2;
      a3->mDataByteSize = v7;
      *(this + 16) = &v5[v7];
      v8 = v6 - *a2;
LABEL_11:
      *(this + 4) = v8;
    }
  }

  return this;
}

const char *MEOWACDecoder::Decode(MEOWACDecoder *this, unsigned int a2, char *a3, unsigned int a4, int a5, uint64_t a6, __int16 *a7)
{
  MEOWACIterator::MEOWACIterator(inInputDataProcUserData, *(this + 4), *(this + 5), *(this + 6), a2, a3, a4);
  MTBEWorker::DebugLog("Decode %d samples\n", v12, a6);
  outOutputData.mNumberBuffers = 1;
  outOutputData.mBuffers[0].mNumberChannels = 1;
  v13 = v22;
  v14 = a5 + a4 - v22;
  while (1)
  {
    outOutputData.mBuffers[0].mDataByteSize = 2 * v14 + 2048;
    outOutputData.mBuffers[0].mData = &a7[v13];
    if (v13)
    {
      bzero(a7, 2 * v13);
    }

    ioOutputDataPacketSize = v14;
    v15 = AudioConverterFillComplexBuffer(*(this + 1), MEOWACFetchData, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0) || ioOutputDataPacketSize == 0;
    if (v15 || ioOutputDataPacketSize >= v14)
    {
      break;
    }

    a7 += ioOutputDataPacketSize;
    v14 -= ioOutputDataPacketSize;
    v13 = v22;
  }

  AudioConverterReset(*(this + 1));
  return MTBEWorker::DebugLog("Decoded\n", v17);
}

void *___ZN13MEOWACDecoder8LoadOpusEv_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioCodecs", 5);
  if (result)
  {
    v1 = result;
    v2 = dlsym(result, "ACOpusDecoderFactory");
    if (v2)
    {
      *&v3.componentType = xmmword_257B8C780;
      v3.componentFlagsMask = 0;
      result = AudioComponentRegister(&v3, &stru_2868FA498, 0, v2);
      MEOWACDecoder::LoadOpus(void)::sOpusDecoderComponent = result;
      if (result)
      {
        return result;
      }

      return dlclose(v1);
    }

    result = MEOWACDecoder::LoadOpus(void)::sOpusDecoderComponent;
    if (!MEOWACDecoder::LoadOpus(void)::sOpusDecoderComponent)
    {
      return dlclose(v1);
    }
  }

  return result;
}

void MEOWCodebookDecoder::~MEOWCodebookDecoder(void **this)
{
  *this = &unk_2868F6FB8;
  MEOWVectorBase::~MEOWVectorBase(this + 3);
}

{
  *this = &unk_2868F6FB8;
  MEOWVectorBase::~MEOWVectorBase(this + 3);

  JUMPOUT(0x259C6DA90);
}

uint64_t MEOWSampleCache::MapSamples(MEOWSampleCache *this)
{
  if (kMapSamples)
  {
    MTBEDebugParams::GetParam(kMapSamples, &byte_27F8F24D8, byte_27F8F24D8);
    kMapSamples = 0;
  }

  return byte_27F8F24D8;
}

void MEOWSampleCache::MEOWSampleCache(MEOWSampleCache *this, MEOWReader *a2)
{
  *this = a2;
  *(this + 1) = this + 8;
  *(this + 2) = this + 8;
  *(this + 3) = 0;
  MEOWReader::GetGlobalParams(a2, 1);
  MEOWReader::GetGlobalParams(a2, 3);
  MEOWReader::GetGlobalParams(a2, 4);
  GlobalParams = MEOWReader::GetGlobalParams(a2, 2);
  v6 = GlobalParams + 3;
  if (GlobalParams)
  {
    v5 = *(GlobalParams + 3);
    *(this + 5) = v5;
    if (v5 == 255)
    {
      *(this + 5) = GlobalParams[3];
      v6 = GlobalParams + 4;
    }
  }

  else
  {
    *(this + 5) = 0;
  }

  operator new[]();
}

void MEOWSampleCache::~MEOWSampleCache(MEOWSampleCache *this)
{
  while (*(this + 3))
  {
    free(*(*(this + 2) + 32));
    v2 = *(this + 2);
    v3 = *(this + 3);
    v5 = *v2;
    v4 = v2[1];
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 3) = v3 - 1;
    operator delete(v2);
  }

  v6 = *(this + 5);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*(this + 4) + 8 * i);
      if (v8)
      {
        (*(*v8 + 16))(v8);
        v6 = *(this + 5);
      }
    }
  }

  v9 = 0;
  do
  {
    v10 = *(*(this + 4) + 8 * v9 - 8);
    if (v10)
    {
      (*(*v10 + 16))(v10);
    }

    --v9;
  }

  while (v9 > 0xFFFFFFFFFFFFFFFDLL);
  MEMORY[0x259C6DA70](*(this + 4) - 24, 0x20C8093837F09);
  std::__list_imp<SpeechChannelManager *>::clear(this + 1);
}

uint64_t MEOWSampleCache::Samples(MEOWSampleCache *this, __int16 a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unsigned int a7)
{
  v14 = *(this + 2);
  if (v14 == (this + 8))
  {
    goto LABEL_14;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    if (*(v14 + 16) == a5)
    {
      v17 = *(v14 + 24);
      if (a6 >= v17 && *(v14 + 28) + v17 >= a7 + a6)
      {
        break;
      }
    }

    if (v15 < a7)
    {
      ++v16;
    }

    v15 += *(v14 + 28);
    v14 = *(v14 + 8);
    if (v14 == (this + 8))
    {
      if (v15 + a7 > 0x10000 && v16 != 0)
      {
        do
        {
          --v16;
          free(*(*(this + 2) + 32));
          v19 = *(this + 2);
          v20 = *(this + 3);
          v22 = *v19;
          v21 = v19[1];
          *(v22 + 8) = v21;
          *v21 = v22;
          *(this + 3) = v20 - 1;
          operator delete(v19);
        }

        while (v16);
      }

LABEL_14:
      MEOWVectorBase::MEOWVectorBase(__buf, 1);
      if (kMapSamples)
      {
        MTBEDebugParams::GetParam(kMapSamples, &byte_27F8F24D8, byte_27F8F24D8);
        kMapSamples = 0;
      }

      v23 = a5;
      if ((byte_27F8F24D8 & 1) == 0)
      {
        CFAbsoluteTimeGetCurrent();
        if (__buf[3] < a3)
        {
          MEOWVectorBase::Allocate(__buf, a3, 1);
        }

        __buf[2] = a3;
        pread(**this, __buf[0], a3, (a5 - *(*this + 30432)));
        v23 = __buf[0];
        CFAbsoluteTimeGetCurrent();
      }

      if (a7 + 1300 + a6 >= a4)
      {
        v24 = (a4 - a6);
      }

      else
      {
        v24 = a7 + 1300;
      }

      v25 = malloc_type_calloc(2uLL, (a4 + 1024), 0x1000040BDFB0063uLL);
      CFAbsoluteTimeGetCurrent();
      v26 = *(*(this + 4) + 8 * a2);
      (**v26)(v26, a3, v23, a6, v24, a4, v25);
      CFAbsoluteTimeGetCurrent();
      v27 = malloc_type_malloc(2 * v24, 0x1000040BDFB0063uLL);
      memcpy(v27, &v25[2 * a6], 2 * v24);
      operator new();
    }
  }

  return *(v14 + 32) + 2 * (a6 - v17);
}

uint64_t MTMBSmartSegmentAssembler::CountDemi(uint64_t result, unsigned __int16 **a2, int a3, _OWORD *a4)
{
  v6 = result;
  v7 = a2[2];
  v8 = 0.0;
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = *a2;
    v11 = &(*a2)[16 * v7];
    do
    {
      v9 += v10[4];
      v10 += 16;
    }

    while (v10 < v11);
    if (v9)
    {
      v8 = a3 / v9;
    }
  }

  *(a4 + 28) = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v12 = a2[2];
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = *a2;
    v16 = *a2;
    do
    {
      v17 = v16[8];
      if (v17)
      {
        result = (*(**(v6 + 8) + 16))(*(v6 + 8), (*(v6 + 24) + (v8 * v14)) + (v16[4] >> 1), v16[4]);
        v19 = result;
        v18 = v16[4];
        v13 = *a4;
        v17 = v16[8];
        v15 = *a2;
        v12 = a2[2];
      }

      else
      {
        v18 = v16[4];
        v19 = v18;
      }

      v16[6] = v19;
      v14 += v18;
      v13 += v19;
      *a4 = v13;
      *(a4 + ((v17 >> 3) & 3) + 3) += v19;
      *(a4 + ((v17 >> 5) & 3) + 7) += v19;
      v16 += 16;
    }

    while (v16 < &v15[16 * v12]);
  }

  return result;
}

float MTMBSmartSegmentAssembler::AdjustForWSOLA(MTMBSmartSegmentAssembler *this, MTMBDemi *a2, float *a3, int a4, int a5)
{
  v5 = 1.0;
  if (*a3 > a5 + a4)
  {
    v9 = a4;
    if (kMTMBWSOLAMinSamples)
    {
      MTBEDebugParams::GetParam(kMTMBWSOLAMinSamples, &qword_27F8F24E8, qword_27F8F24E8);
      kMTMBWSOLAMinSamples = 0;
    }

    if (qword_27F8F24E8 < v9)
    {
      if (kMTMBWSOLAMinScale)
      {
        MTBEDebugParams::GetParam(kMTMBWSOLAMinScale, &dword_27F8F24F8, a3, *&dword_27F8F24F8);
        kMTMBWSOLAMinScale = 0;
      }

      v5 = *&dword_27F8F24F8;
      if (kMTMBWSOLAMaxScale)
      {
        MTBEDebugParams::GetParam(kMTMBWSOLAMaxScale, &dword_27F8F2508, a3, *&dword_27F8F2508);
        kMTMBWSOLAMaxScale = 0;
      }

      v10 = *&dword_27F8F2508;
      v11 = *a3 / a4;
      if (v11 < *&dword_27F8F2508)
      {
        v10 = *a3 / a4;
      }

      if (v5 < v10)
      {
        v5 = v10;
      }

      MTMBDemi::ScaleSpeechRate(a2, 1.0 / v5, v11);
      *a3 = a4;
    }
  }

  return v5;
}

float MTMBSmartSegmentAssembler::AdjustForWSOLA(MTMBSmartSegmentAssembler *this, MTMBDemi *a2, MTMBDemi *a3, float *a4, int a5, int a6)
{
  v7 = MTMBSmartSegmentAssembler::AdjustForWSOLA(this, a2, a4, a5, a6);
  MTMBDemi::ScaleSpeechRate(a3, 1.0 / v7, v8);
  return v7;
}

uint64_t MTMBSmartSegmentAssembler::AdjustWantSamples(MTMBSmartSegmentAssembler *this, int a2, float *a3)
{
  v3 = a3;
  v6 = a3 - a2;
  if (kMTMBSmoothDuration)
  {
    MTBEDebugParams::GetParam(kMTMBSmoothDuration, &dword_27F8F2518, a3, *&dword_27F8F2518);
    kMTMBSmoothDuration = 0;
  }

  v7 = v6;
  if (!a2 || *&dword_27F8F2518 == 0.0)
  {
    if (kMTMBDurationSlack)
    {
      MTBEDebugParams::GetParam(kMTMBDurationSlack, &dword_27F8F2528, a3, *&dword_27F8F2528);
      kMTMBDurationSlack = 0;
    }

    return (v3 - ((*&dword_27F8F2528 * v7) * 0.01));
  }

  else
  {
    v8 = v7 / a2;
    v9 = ((v8 * (100.0 - *&dword_27F8F2518)) + (*&dword_27F8F2518 * *(this + 18))) * 0.01;
    v10 = 0.0;
    if ((v8 * v9) >= 0.0)
    {
      v10 = v7 / a2;
      if (fabsf(v9) < fabsf(v8))
      {
        v10 = ((v8 * (100.0 - *&dword_27F8F2518)) + (*&dword_27F8F2518 * *(this + 18))) * 0.01;
      }
    }

    result = ((v10 + 1.0) * a2);
    *(this + 18) = v10;
  }

  return result;
}

void MTMBSmartSegmentAssembler::Assemble(MTMBSmartSegmentAssembler *this, MTMBDemi *a2, MTMBDemi *a3)
{
  v3 = *(*(a2 + 13) + 32);
  v4 = *(*(a3 + 13) + 32);
  MTMBPitchInterpolator::CreatePhonemeInterpolator(a2, a3, a3);
}

uint64_t MTMBSmartSegmentAssembler::StretchDemi(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, unsigned int a5)
{
  MEOWVectorBase::clear((a1 + 32));
  *(a1 + 64) = 0;
  v12 = *(a2 + 16);
  if (!*(a2 + 100))
  {
    if (v12)
    {
      MTMBSmartSegmentAssembler::CopySegment(a1, *a2);
    }

    return 0;
  }

  if (v12 < 1)
  {
    return 0;
  }

  v13 = *a2;
  v14 = *a2 + 32 * v12;
  v15 = a3[2];
  do
  {
    v16 = v13[8];
    if ((v16 & 0x60u) >= a5)
    {
      v18 = v16 & 1;
      if (v13 >= v14)
      {
        v19 = 0;
        v17 = v13;
      }

      else
      {
        v19 = 0;
        v17 = v13;
        do
        {
          if (v18 != (v17[8] & 1) || (v17[8] & 0x60u) < a5)
          {
            break;
          }

          v19 += v17[6];
          v17 += 16;
        }

        while (v17 < v14);
      }

      v21 = (*(a1 + 64) + a4 - (*a3 + *(a1 + 68))) & ~((*(a1 + 64) + a4 - (*a3 + *(a1 + 68))) >> 31);
      if (v15)
      {
        v21 = v21 * v19 / v15;
      }

      v22 = v21 + v19;
      if (v18)
      {
        MTMBSmartSegmentAssembler::StretchVoicedRange(a1, v13, v17, v11, v22);
      }

      else
      {
        MTMBSmartSegmentAssembler::StretchUnvoicedRange(a1, v13, v10, v19, v22);
      }

      v15 -= v19;
      *(a1 + 64) += v19;
    }

    else
    {
      *(a1 + 64) += v13[6];
      v17 = v13 + 16;
      MTMBSmartSegmentAssembler::CopySegment(a1, v13);
    }

    v14 = *a2 + 32 * *(a2 + 16);
    v13 = v17;
  }

  while (v17 < v14);
  return *(a1 + 68);
}

void MTMBSmartSegmentAssembler::CopyAssembledSegments(MTMBSmartSegmentAssembler *this, MTMBDemi *a2)
{
  {
    if (kMTMBPowerThreshold)
    {
      MTBEDebugParams::GetParam(kMTMBPowerThreshold, &dword_27F8F2538, v24, *&dword_27F8F2538);
      kMTMBPowerThreshold = 0;
    }

    *&MTMBSmartSegmentAssembler::CopyAssembledSegments(MTMBDemi *)::kLinPowerThreshold = ((*&dword_27F8F2538 * *&dword_27F8F2538) * 8192.0) * 8192.0;
  }

  v5 = *(a2 + 13);
  v6 = *v5 + *(this + 12) - *(a2 + 4);
  *v5 = v6;
  if (v6 <= 0)
  {
    MEMORY[0x259C6DA90]();
  }

  MEOWVectorBase::Swap(a2, (this + 32));
  if (kDoAmplitudeNormalization)
  {
    MTBEDebugParams::GetParam(kDoAmplitudeNormalization, &byte_27F8F2548, byte_27F8F2548);
    kDoAmplitudeNormalization = 0;
  }

  if (byte_27F8F2548)
  {
    if (*(a2 + 2) < 1)
    {
      v7 = 0;
      v25 = 0.0;
      v26 = 0.0;
      v11 = 0.0;
      v10 = 0.0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = *a2;
      v10 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      v11 = 0.0;
      do
      {
        if (*(v9 + 16))
        {
          v13 = MTMBSegment::LinPower(v9);
          LOWORD(v2) = *(v9 + 12);
          if (kAmplitudeScaleThreshold)
          {
            MTBEDebugParams::GetParam(kAmplitudeScaleThreshold, &dword_27F8F2558, v12, *&dword_27F8F2558);
            kAmplitudeScaleThreshold = 0;
          }

          v14 = 22050.0 / v2;
          v15 = sqrtf(fmaxf(((v14 * -292600.0) + ((v14 * 3560.0) * v14)) + 10450000.0, 10000000.0) / v13);
          if (v15 < *&dword_27F8F2558 && v13 > *&MTMBSmartSegmentAssembler::CopyAssembledSegments(MTMBDemi *)::kLinPowerThreshold)
          {
            v17 = (v8 + (*(v9 + 8) >> 1));
            v10 = v10 + v17;
            v11 = v11 + v15;
            v25 = v25 + (v17 * v15);
            v26 = v26 + (v17 * v17);
            ++v7;
          }
        }

        v8 += *(v9 + 8);
        v9 += 32;
      }

      while (v9 < *a2 + 32 * *(a2 + 2));
    }

    if (kAmplitudeMinPP)
    {
      MTBEDebugParams::GetParam(kAmplitudeMinPP, &qword_27F8F2568, qword_27F8F2568);
      kAmplitudeMinPP = 0;
    }

    v18 = v7;
    v19 = v11 / v7;
    if (!v7)
    {
      v19 = 1.0;
    }

    v20 = ((v18 * v25) - (v10 * v11)) / ((v18 * v26) - (v10 * v10));
    v21 = (v11 - (v20 * v10)) / v18;
    if (v7 >= qword_27F8F2568)
    {
      v22 = v21;
    }

    else
    {
      v20 = 0.0;
      v22 = v19;
    }

    v23 = *(a2 + 13);
    *(v23 + 72) = v22;
    *(v23 + 76) = v20;
    *(v23 + 80) = 1;
  }
}

uint64_t MTMBSmartSegmentAssembler::ShrinkDemi(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, unsigned int a5)
{
  MEOWVectorBase::clear((a1 + 32));
  *(a1 + 64) = 0;
  if (*(a2 + 100))
  {
    v12 = *a2;
    v13 = *(a2 + 16);
    v14 = *a2 + 32 * v13;
    if (v13 < 1)
    {
      result = 0;
      if (!v13)
      {
        return result;
      }
    }

    else
    {
      v15 = a3[1];
      do
      {
        v16 = *(v12 + 8);
        if ((v16 & 0x18u) >= a5)
        {
          v18 = v16 & 1;
          if (v12 >= v14)
          {
            v19 = 0;
            v17 = v12;
          }

          else
          {
            v19 = 0;
            v17 = v12;
            do
            {
              if (v18 != (v17[8] & 1) || (v17[8] & 0x18u) < a5)
              {
                break;
              }

              v19 += v17[6];
              v17 += 16;
            }

            while (v17 < v14);
          }

          v21 = v19 - ((*a3 - (*(a1 + 64) + a4) + *(a1 + 68)) & ~((*a3 - (*(a1 + 64) + a4) + *(a1 + 68)) >> 31)) * v19 / v15;
          if (v18)
          {
            MTMBSmartSegmentAssembler::ShrinkVoicedRange(a1, v12, v17, v11, v21);
          }

          else
          {
            MTMBSmartSegmentAssembler::ShrinkUnvoicedRange(a1, v12, v10, v19, v21);
          }

          v15 -= v19;
          *(a1 + 64) += v19;
        }

        else
        {
          *(a1 + 64) += *(v12 + 6);
          v17 = (v12 + 32);
          MTMBSmartSegmentAssembler::CopySegment(a1, v12);
        }

        v22 = *(a2 + 16);
        v14 = *a2 + 32 * v22;
        v12 = v17;
      }

      while (v17 < v14);
      result = *(a1 + 68);
      if (!v22)
      {
        return result;
      }
    }

    if (!result)
    {
      MTMBSmartSegmentAssembler::CopySegment(a1, (v14 - 32));
      return *(a1 + 68);
    }

    return result;
  }

  if (*(a2 + 16))
  {
    MTMBSmartSegmentAssembler::CopySegment(a1, *a2);
  }

  return 0;
}

void MTMBSmartSegmentAssembler::Assemble(MTMBSmartSegmentAssembler *this, MTMBDemi *a2)
{
  if (*(a2 + 2))
  {
    v2 = *(a2 + 13);
    if (*(v2 + 32))
    {
      if ((*(v2 + 18) & 0x80000000) == 0)
      {
        MTMBPitchInterpolator::CreateDemiInterpolator(a2, a2);
      }

      MTMBPitchInterpolator::CreateWordInterpolator(a2, a2);
    }
  }
}

void *MTMBSmartSegmentAssembler::CopySegment(MTMBSmartSegmentAssembler *this, const MTMBSegment *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  *v14 = *(a2 + 18);
  *&v14[6] = *(a2 + 3);
  v9 = *(this + 6);
  if (v9)
  {
    v10 = ((v3 - *(*(this + 4) + 32 * v9 - 32)) >> 2) - *(*(this + 4) + 32 * v9 - 24);
    if (v10)
    {
      if (v10 < 0)
      {
        v8 |= 4u;
        if ((v8 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v8 |= 2u;
    }
  }

  if (v8)
  {
LABEL_6:
    v6 = (*(**(this + 1) + 16))(*(this + 1), (*(this + 17) + (v4 >> 1) + *(this + 6)), v4);
  }

LABEL_7:
  *(this + 17) += v6;
  result = MEOWVectorBase::Append(this + 4);
  v12 = *(this + 4) + 32 * *(this + 6);
  *(v12 - 32) = v3;
  *(v12 - 24) = v4;
  *(v12 - 22) = v5;
  *(v12 - 20) = v6;
  *(v12 - 18) = v7;
  *(v12 - 16) = v8;
  *(v12 - 14) = *v14;
  *(v12 - 8) = *&v14[6];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void *MTMBSmartSegmentAssembler::StretchVoicedRange(void *this, const MTMBSegment *a2, const MTMBSegment *a3, int a4, int a5)
{
  if (a2 < a3)
  {
    v7 = this;
    v8 = 0;
    v9 = a5;
    v10 = (a3 - a2) >> 5;
    v11 = a2;
    do
    {
      this = (*(**(v7 + 8) + 16))(*(v7 + 8), (*(v7 + 68) + *(v7 + 24) + (v11[4] >> 1)), v11[4]);
      if ((v9 + v9 * ((v11 - a2) >> 5)) / v10 <= v8 + this / 2)
      {
        v11 += 16;
      }

      else
      {
        this = MTMBSmartSegmentAssembler::CopySegment(v7, v11);
        v8 += *(*(v7 + 32) + 32 * *(v7 + 48) - 20);
      }
    }

    while (v11 < a3);
  }

  return this;
}

MTMBSmartSegmentAssembler *MTMBSmartSegmentAssembler::StretchUnvoicedRange(MTMBSmartSegmentAssembler *this, const MTMBSegment *a2, const MTMBSegment *a3, int a4, int a5)
{
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = *(a2 + 7);
  v8 = a5 - a4;
  v9 = 220.0;
  if (a4 < 220)
  {
    v9 = 80.0;
  }

  v10 = a5 / v9;
  v11 = vcvtps_s32_f32(v10);
  v12 = (a5 / ceilf(v10)) * 0.9;
  if (a4 < 80)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  if (a4 < 80)
  {
    v8 = 0;
  }

  if (v8 >= 16)
  {
    v14 = v8;
  }

  else
  {
    v12 = 100000.0;
    v14 = 0;
  }

  v15 = vcvtps_s32_f32(v14 / v12);
  v16 = *a2;
  v17 = *(a2 + 1);
  if (v13 - 1 >= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v13 - 1;
  }

  v29[0] = *a2;
  v29[1] = v17;
  if (v13)
  {
    v20 = this;
    v21 = 0;
    v22 = a4 / (v18 + 1);
    v23 = v22;
    if (v8 >= 16)
    {
      v24 = a5;
    }

    else
    {
      v24 = a4;
    }

    v25 = v5 + 4 * v6 + 4 * v7;
    v26 = v22;
    do
    {
      v27 = v24 / v13;
      WORD4(v29[0]) = v24 / v13;
      WORD6(v29[0]) = WORD4(v29[0]);
      if (v21 && v18 && v26 < (v27 + v21))
      {
        v28 = v14 / v18--;
        v14 -= v28;
        v21 -= v28;
        v26 = v26 + v23;
      }

      *&v29[0] = *a2 + 4 * v21;
      HIWORD(v29[0]) = ((v25 - LODWORD(v29[0])) >> 2) - v27;
      this = MTMBSmartSegmentAssembler::CopySegment(v20, v29);
      v21 += v27;
      v24 -= v27;
      --v13;
    }

    while (v13);
  }

  return this;
}

void *MTMBSmartSegmentAssembler::ShrinkVoicedRange(void *this, const MTMBSegment *a2, const MTMBSegment *a3, int a4, int a5)
{
  if (a2 < a3)
  {
    v7 = this;
    v8 = 0;
    v9 = a5;
    v10 = (a3 - a2) >> 5;
    v11 = a2;
    do
    {
      this = (*(**(v7 + 8) + 16))(*(v7 + 8), (*(v7 + 68) + *(v7 + 24) + (v11[4] >> 1)), v11[4]);
      if ((v9 + v9 * ((v11 - a2) >> 5)) / v10 <= v8 + this / 2)
      {
        v11 += 16;
      }

      else
      {
        this = MTMBSmartSegmentAssembler::CopySegment(v7, v11);
        v8 += *(*(v7 + 32) + 32 * *(v7 + 48) - 20);
      }
    }

    while (v11 < a3);
  }

  return this;
}

MTMBSmartSegmentAssembler *MTMBSmartSegmentAssembler::ShrinkUnvoicedRange(MTMBSmartSegmentAssembler *this, const MTMBSegment *a2, const MTMBSegment *a3, int a4, int a5)
{
  v6 = this;
  v7 = 220.0;
  if (a4 < 220)
  {
    v7 = 80.0;
  }

  v8 = (a4 - a5);
  if (a4 - a5 >= 16)
  {
    v9 = a5;
  }

  else
  {
    v9 = a4;
  }

  v10 = 100000.0;
  if (a4 - a5 >= 16)
  {
    v10 = v7;
  }

  v11 = 0.0;
  if (a4 - a5 < 16)
  {
    v8 = 0.0;
  }

  v12 = vcvtps_s32_f32(v9 / v7);
  v13 = v12 & ~(v12 >> 31);
  v14 = vcvtps_s32_f32(v8 / v10);
  if (v13 - 1 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13 - 1;
  }

  if (v9 <= a4 - (v7 * v15))
  {
    v16 = a4 - (v7 * v15);
  }

  else
  {
    v16 = v9;
  }

  if (v15 != -1)
  {
    v11 = (v16 / (v15 + 1));
  }

  v17 = *(a2 + 1);
  v23[0] = *a2;
  v23[1] = v17;
  if (v12 >= 1)
  {
    v18 = 0;
    v19 = a4 - v16;
    v20 = v11;
    do
    {
      v21 = v16 / v13;
      WORD4(v23[0]) = v16 / v13;
      WORD6(v23[0]) = WORD4(v23[0]);
      if (v18 && v15 && v20 < (v21 + v18))
      {
        v22 = v19 / v15--;
        v19 -= v22;
        v18 += v22;
        v20 = v11 + v20;
      }

      *&v23[0] = *a2 + 4 * v18;
      this = MTMBSmartSegmentAssembler::CopySegment(v6, v23);
      v18 += v21;
      v16 -= v21;
      --v13;
    }

    while (v13);
  }

  return this;
}

void MTMBSmartSegmentAssembler::SmoothAmplitude(MTMBSmartSegmentAssembler *this, MTMBDemi *a2, MTMBDemi *a3)
{
  v3 = *(a2 + 2);
  if (v3 >= 2 && *(a3 + 2) > 1uLL)
  {
    v5 = *(a2 + 13);
    v6 = *(v5 + 72);
    v7 = *(v5 + 76);
    v8 = *(a3 + 13);
    v17 = *(v8 + 72);
    v18 = v6;
    v9 = *a2;
    if (v3 != 2)
    {
      v10 = (v9 + 8);
      v11 = v3 - 2;
      do
      {
        v12 = *v10;
        v10 += 16;
        v6 = v6 + (v12 * v7);
        --v11;
      }

      while (v11);
      v18 = v6;
    }

    v13 = *(v8 + 76);
    __dst[0] = 0;
    __dst[1] = 0;
    v15 = 1;
    v16 = 0;
    MTMBSegment::Allocate(__dst, *(v9 + 32 * v3 - 24) + *(v9 + 32 * (v3 - 2) + 8));
  }

  if (MTBEDebugFlags::sMEOWDebug)
  {
    v4 = *MEMORY[0x277D85DF8];

    fwrite("Phoneme smoothing skipped due to insufficient material\n", 0x37uLL, 1uLL, v4);
  }
}

void MTMBWsolaSegmentAssembler::MTMBWsolaSegmentAssembler(MTMBWsolaSegmentAssembler *this)
{
  *this = &unk_2868F7110;
}

{
  *this = &unk_2868F7110;
}

uint64_t MTMBWsolaSegmentAssembler::ProcessDemi(uint64_t a1, unsigned __int16 **a2)
{
  v2 = a2[2];
  if (v2 < 1)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = 0;
  v7 = *a2;
  v8 = *a2;
  do
  {
    if (v8[8])
    {
      v10 = (*(**(a1 + 8) + 16))(*(a1 + 8), (*(a1 + 16) + v6 + (v8[4] >> 1)), v8[4]);
      v9 = v8[4];
      v7 = *a2;
      v2 = a2[2];
    }

    else
    {
      v9 = v8[4];
      v10 = v9;
    }

    v8[6] = v10;
    v6 += v9;
    v5 = (v5 + v10);
    v8 += 16;
  }

  while (v8 < &v7[16 * v2]);
  return v5;
}

void MTMBWsolaSegmentAssembler::Assemble(MTMBWsolaSegmentAssembler *this, MTMBDemi *a2)
{
  if (*(a2 + 25))
  {
    if (*(*(a2 + 13) + 32))
    {
      MTMBPitchInterpolator::CreateWordInterpolator(a2, a2);
    }
  }
}

uint64_t MTMBAssemblerCreator::Create(int a1)
{
  if (a1 == 1)
  {
    operator new();
  }

  if (!a1)
  {
    operator new();
  }

  return 0;
}

void MTMBAssemblerCreator::MTMBAssemblerCreator(MTMBAssemblerCreator *this)
{
  *this = &unk_2868F7190;
}

{
  *this = &unk_2868F7190;
}

void MTMBSmartSegmentAssembler::~MTMBSmartSegmentAssembler(MTMBSmartSegmentAssembler *this)
{
  MTMBSmartSegmentAssembler::~MTMBSmartSegmentAssembler(this);

  JUMPOUT(0x259C6DA90);
}

{
  *this = &unk_2868F71B0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MEOWVectorBase::~MEOWVectorBase(this + 4);
}

void MTMBSimpleSignalProcessor::MTMBSimpleSignalProcessor(MTMBSimpleSignalProcessor *this)
{
  *this = &unk_2868F7240;
  *(this + 2) = 0;
  MTMBCrossfader::Create(this);
}

{
  *this = &unk_2868F7240;
  *(this + 2) = 0;
  MTMBCrossfader::Create(this);
}

void MTMBSimpleSignalProcessor::~MTMBSimpleSignalProcessor(MTMBSimpleSignalProcessor *this)
{
  *this = &unk_2868F7240;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_2868F7240;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_2868F7240;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x259C6DA90);
}

MTMBSegment *MTMBSimpleSignalProcessor::BlendSegments(MTMBSimpleSignalProcessor *this, MTMBSegment *a2, const float **a3)
{
  if (*(a2 + 8) & 1) != 0 && (a3[2])
  {
    return MTMBSimpleSignalProcessor::BlendVoicedSegments(this, a2, a3);
  }

  else
  {
    return MTMBSimpleSignalProcessor::BlendUnvoicedSegments(this, a2, a3);
  }
}

uint64_t MTMBSimpleSignalProcessor::BlendVoicedSegments(MTMBSimpleSignalProcessor *this, MTMBSegment *a2, MTMBSegment *a3)
{
  MTMBSegment::Modify(a2);
  MTMBSegment::Modify(a3);
  v6 = *(a2 + 4);
  v7 = 512 - v6;
  if (512 - v6 >= v6)
  {
    v7 = *(a2 + 4);
  }

  if (v7)
  {
    memmove((*a2 + 4 * v6), *a2, 4 * v7);
    LODWORD(v6) = *(a2 + 4);
  }

  v8 = *a2;
  if (v6 >= 2)
  {
    v9 = v8[2] + ((*v8 - v8[1]) * 3.0);
    v10 = &v8[v6];
    v12 = *(v10 - 1);
    v11 = v10 - 1;
    v13 = v9 - v12;
    v14 = *v8 - v12;
    if (vabds_f32(v9, v12) <= vabds_f32(*v8, v12))
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = v6 >> 1;
    do
    {
      *v11 = v15 + *v11;
      --v11;
      v15 = v15 * 0.9375;
      --v16;
    }

    while (v16);
  }

  v17 = 0;
  v18 = a3 + 8;
  if (*(a3 + 4) >= v6)
  {
    v18 = a2 + 8;
  }

  v19 = *v18;
  LODWORD(v20) = 512 - v19;
  if (512 - v19 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v20;
  }

  v21 = 1.0e20;
LABEL_17:
  result = v20;
  v23 = &v8[(v20 - 1) + 1];
  while (1)
  {
    v24 = __OFSUB__(v20, 1);
    v20 = (v20 - 1);
    if ((v20 < 0) ^ v24 | (v20 == 0))
    {
      break;
    }

    v23 -= 4;
    if (result > (v6 >> 1) || v20 <= 512 - v6)
    {
      if (v19)
      {
        v25 = 0;
        v26 = 0.0;
        do
        {
          v26 = v26 + vabds_f32(*(*a3 + v25), *(v23 + v25));
          v25 += 16;
        }

        while (((4 * v19 + 12) & 0x7FFF0) != v25);
      }

      else
      {
        v26 = 0.0;
      }

      if (v26 < v21)
      {
        v21 = v26;
        v17 = v20;
      }

      goto LABEL_17;
    }
  }

  if (v17 >= (v6 >> 1))
  {
    LOWORD(v6) = 0;
  }

  *(a2 + 4) = v6 + v17;
  if (512 - v17 >= v19)
  {
    v27 = v19;
  }

  else
  {
    v27 = (512 - v17);
  }

  if (v27)
  {
    v28 = *a3;
    v29 = *(this + 2);
    v30 = *a3;

    return MTMBCrossfader::CrossfadePartial(v29, v27, 1, v27, &v8[v17], v28, v30);
  }

  return result;
}

MTMBSegment *MTMBSimpleSignalProcessor::BlendUnvoicedSegments(MTMBSimpleSignalProcessor *this, MTMBSegment *a2, const float **a3)
{
  if (kBlendUnvoicedWindow)
  {
    MTBEDebugParams::GetParam(kBlendUnvoicedWindow, &qword_27F8F2578, qword_27F8F2578);
    kBlendUnvoicedWindow = 0;
  }

  v6 = *(a3 + 4);
  if (v6 >= *(a2 + 4))
  {
    v6 = *(a2 + 4);
  }

  if (v6 >= qword_27F8F2578)
  {
    v7 = qword_27F8F2578;
  }

  else
  {
    v7 = v6;
  }

  result = MTMBSegment::Modify(a2);
  v9 = *(a2 + 4) - v7;
  *(a2 + 4) = v9;
  if (v7)
  {
    v10 = *a3;
    v11 = (*a2 + 4 * v9);
    v12 = *(this + 2);
    v13 = *a3;

    return MTMBCrossfader::CrossfadePartial(v12, v7, 1, v7, v11, v10, v13);
  }

  return result;
}

void MTMBSimpleSignalProcessor::AdjustAmplitude(MTMBSimpleSignalProcessor *this, MTMBSegment *a2, float *a3, float a4, int a5)
{
  __B = a4;
  if (a4 != 0.0)
  {
    MEOWVectorBase::MEOWVectorBase(__C, 4, *(a2 + 4));
    vDSP_vramp(a3, &__B, __C[0], 1, *(a2 + 4));
    LOWORD(v9) = *(a2 + 4);
    v10 = *a3 + (__B * v9);
    if (!a5)
    {
LABEL_36:
      MEMORY[0x259C6E700](*a2, 1, __C[0], 1, *a2, 1, *(a2 + 4));
      *a3 = v10;
      if (a5)
      {
        if (kAmplitudeMinScale)
        {
          MTBEDebugParams::GetParam(kAmplitudeMinScale, &dword_27F8F2588, v21, *&dword_27F8F2588);
          kAmplitudeMinScale = 0;
        }

        v22 = __B;
        if (v10 <= *&dword_27F8F2588 && __B < 0.0)
        {
          goto LABEL_45;
        }

        v23 = *a3;
        if (kAmplitudeMaxScale)
        {
          MTBEDebugParams::GetParam(kAmplitudeMaxScale, &dword_27F8F2598, v21, *&dword_27F8F2598);
          kAmplitudeMaxScale = 0;
          v22 = __B;
        }

        if (v23 >= *&dword_27F8F2598 && v22 > 0.0)
        {
LABEL_45:
          __B = 0.0;
        }
      }

      MEOWVectorBase::~MEOWVectorBase(__C);
      return;
    }

    if (kAmplitudeMinScale)
    {
      MTBEDebugParams::GetParam(kAmplitudeMinScale, &dword_27F8F2588, v8, *&dword_27F8F2588);
      kAmplitudeMinScale = 0;
    }

    v11 = *&dword_27F8F2588;
    if (v10 >= *&dword_27F8F2588)
    {
      if (kAmplitudeMaxScale)
      {
        MTBEDebugParams::GetParam(kAmplitudeMaxScale, &dword_27F8F2598, v8, *&dword_27F8F2598);
        kAmplitudeMaxScale = 0;
        v12 = kAmplitudeMinScale;
        v11 = *&dword_27F8F2588;
        if (v10 > *&dword_27F8F2598)
        {
LABEL_31:
          if (v12)
          {
            MTBEDebugParams::GetParam(v12, &dword_27F8F2588, v8, v11);
            kAmplitudeMinScale = 0;
            v11 = *&dword_27F8F2588;
          }

          goto LABEL_33;
        }

        v13 = *a3;
        if (kAmplitudeMinScale)
        {
          MTBEDebugParams::GetParam(kAmplitudeMinScale, &dword_27F8F2588, v8, *&dword_27F8F2588);
          kAmplitudeMinScale = 0;
          v11 = *&dword_27F8F2588;
        }
      }

      else
      {
        if (v10 > *&dword_27F8F2598)
        {
          goto LABEL_33;
        }

        v13 = *a3;
      }

      if (v13 >= v11)
      {
        v18 = *a3;
        v19 = *&dword_27F8F2598;
        if (kAmplitudeMaxScale)
        {
          MTBEDebugParams::GetParam(kAmplitudeMaxScale, &dword_27F8F2598, v8, *&dword_27F8F2598);
          kAmplitudeMaxScale = 0;
          v19 = *&dword_27F8F2598;
        }

        if (v18 <= v19)
        {
          goto LABEL_36;
        }

        v12 = kAmplitudeMinScale;
        v11 = *&dword_27F8F2588;
        goto LABEL_31;
      }
    }

LABEL_33:
    v25 = v11;
    v20 = dword_27F8F2598;
    if (kAmplitudeMaxScale)
    {
      MTBEDebugParams::GetParam(kAmplitudeMaxScale, &dword_27F8F2598, v8, *&dword_27F8F2598);
      kAmplitudeMaxScale = 0;
      v20 = dword_27F8F2598;
    }

    v24 = v20;
    vDSP_vclip(__C[0], 1, &v25, &v24, __C[0], 1, *(a2 + 4));
    goto LABEL_36;
  }

  v14 = *a3;
  if (*a3 != 1.0)
  {
    if (a5)
    {
      if (kAmplitudeMinScale)
      {
        MTBEDebugParams::GetParam(kAmplitudeMinScale, &dword_27F8F2588, a3, *&dword_27F8F2588);
        kAmplitudeMinScale = 0;
      }

      v15 = *&dword_27F8F2588;
      if (kAmplitudeMaxScale)
      {
        MTBEDebugParams::GetParam(kAmplitudeMaxScale, &dword_27F8F2598, a3, *&dword_27F8F2598);
        kAmplitudeMaxScale = 0;
      }

      v14 = *&dword_27F8F2598;
      if (*a3 < *&dword_27F8F2598)
      {
        v14 = *a3;
      }

      if (v15 >= v14)
      {
        v14 = v15;
      }

      *a3 = v14;
    }

    v16 = *(a2 + 4);
    v17 = *a2;

    cblas_sscal(v16, v14, v17, 1);
  }
}

void sub_257B4C950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

uint64_t MTMBSimpleSignalProcessor::SmoothSegment(MTMBCrossfader **this, MTMBSegment *a2, MTMBSegment *a3)
{
  MTMBSegment::Modify(a3);
  v7 = *(a3 + 8);
  if ((v7 & 6) != 0)
  {
    if (*(a2 + 7) >= *(a3 + 4))
    {
      v8 = *(a3 + 4);
    }

    else
    {
      v8 = *(a2 + 7);
    }

    if ((v7 & 1) != 0 || v8 < 0x10)
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = (*a2 + 4 * *(a2 + 4));
    }

    else
    {
      v9 = (*a2 + 4 * *(a2 + 4));
      v8 = 15;
    }

    MTMBCrossfader::CrossfadePartial(this[2], v8, 1, v8, v9, *a3, *a3);
  }

LABEL_11:
  v10 = *(a3 + 3);
  v6.n128_u32[0] = *(v10 + 76);
  v11 = *(v10 + 80);
  v12 = *(*this + 4);

  return v12(this, a3, v10 + 72, v11, v6);
}

void MTMBSimpleSignalProcessor::ChangePitch(MTMBCrossfader **this, MTMBSegment *a2, const float **a3)
{
  v3 = *(a2 + 4);
  if (v3 != *(a2 + 6))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      *(a2 + 6) = v3;
      return;
    }

    MTMBSegment::Modify(a2);
    v7 = *(a2 + 6);
    v8 = *(a2 + 4);
    v9 = v7 / v8;
    if (v9 >= 1.5 || v9 <= 0.5)
    {
      if (v9 <= 1.0)
      {
        if (!*(a2 + 6))
        {
LABEL_39:
          *(a2 + 4) = *(a2 + 6);
          return;
        }

        if (v7 >= 0x10)
        {
          v13 = 16;
        }

        else
        {
          v13 = *(a2 + 6);
        }

        v14 = (*a2 + 4 * v8 - 4 * v13);
        v15 = *a2 + 4 * v7;
      }

      else
      {
        v11 = (*a2 + 4 * v8);
        if (v7 - v8 >= 1)
        {
          bzero((*a2 + 4 * v8), 4 * (v7 - v8));
        }

        if (v7 != v8)
        {
          if (v7 - v8 >= 16)
          {
            v12 = 16;
          }

          else
          {
            v12 = (v7 - v8);
          }

          MTMBCrossfader::CrossfadePartial(this[2], v12, 1, v12, *a3, v11, v11);
          LODWORD(v7) = *(a2 + 4);
        }

        if (!v7)
        {
          goto LABEL_39;
        }

        if (v7 >= 0x10)
        {
          v13 = 16;
        }

        else
        {
          v13 = v7;
        }

        v14 = (*a2 + 4 * v7 - 4 * v13);
        v15 = *a2 + 4 * *(a2 + 6);
      }

      v17 = (v15 - 4 * v13);
    }

    else
    {
      if (v9 <= 1.0)
      {
        MTMBSegment::Modify(a3);
        v21 = *(a2 + 4);
        v22 = *(a2 + 6);
        v23 = (v21 - v22);
        if (2 * v23 >= v22)
        {
          v24 = *(a2 + 6);
        }

        else
        {
          v24 = (2 * v23);
        }

        v25 = (*a2 + 4 * v21 - 4 * v24);
        MTMBCrossfader::CrossfadePartial(this[2], v24, 1, (v24 - v23), v25, (*a2 + 4 * v22), v25);
        v18 = this[2];
        v17 = *a3;
        v14 = (*a2 + 4 * *(a2 + 6));
        v13 = v24;
        v19 = v23;
        v20 = 1;
        goto LABEL_38;
      }

      v16 = v7 - v8;
      if (v7 != v8)
      {
        memmove((*a2 + 4 * v8), (*a2 + 4 * v8 - 4 * v16), 4 * v16);
        LODWORD(v7) = *(a2 + 4);
      }

      if (v16 == v7)
      {
        goto LABEL_39;
      }

      v13 = (v7 - v16);
      v14 = *a2;
      v17 = (*a2 + 4 * v16);
    }

    v18 = this[2];
    v19 = 1;
    v20 = v13;
LABEL_38:
    MTMBCrossfader::CrossfadePartial(v18, v13, v19, v20, v17, v14, v17);
    goto LABEL_39;
  }
}

void MTMBAltSignalProcessor::ChangePitch(MTMBCrossfader **this, MTMBSegment *a2, MTMBSegment *a3)
{
  v3 = *(a2 + 4);
  if (v3 == *(a2 + 6))
  {
    return;
  }

  if ((*(a2 + 8) & 1) == 0)
  {
    *(a2 + 6) = v3;
    return;
  }

  MTMBSegment::Modify(a2);
  if (*(a2 + 6) <= *(a2 + 4))
  {
    v13 = byte_27F8F25A8;
    if (kPitchChangeUseHann)
    {
      MTBEDebugParams::GetParam(kPitchChangeUseHann, &byte_27F8F25A8, (byte_27F8F25A8 & 1));
      kPitchChangeUseHann = 0;
      v13 = byte_27F8F25A8;
    }

    if (v13)
    {
      MEOWVectorBase::MEOWVectorBase(__C, 4, *(a2 + 6));
      MEOWVectorBase::MEOWVectorBase(__src, 4, *(a2 + 6));
      vDSP_hann_window(__C[0], 2 * *(a2 + 6), 1);
      MEMORY[0x259C6E700](*a2, 1, &__C[0][*(a2 + 6) - 1], -1, __src[0], 1);
      MEMORY[0x259C6E6D0](*a2 + 4 * (*(a2 + 4) - *(a2 + 6)), 1, __C[0], 1, __src[0], 1, __src[0], 1, *(a2 + 6));
LABEL_47:
      v34 = *(a2 + 6);
      if (*(a2 + 6))
      {
        memmove(*a2, __src[0], 4 * v34);
        LOWORD(v34) = *(a2 + 6);
      }

      *(a2 + 4) = v34;
      MEOWVectorBase::~MEOWVectorBase(__src);
      MEOWVectorBase::~MEOWVectorBase(__C);
      return;
    }
  }

  else
  {
    if (kPitchChangeUseHann)
    {
      MTBEDebugParams::GetParam(kPitchChangeUseHann, &byte_27F8F25A8, byte_27F8F25A8);
      kPitchChangeUseHann = 0;
    }

    if (byte_27F8F25A8 == 1)
    {
      if (kPitchChangeHannProportion)
      {
        MTBEDebugParams::GetParam(kPitchChangeHannProportion, &dword_27F8F25B8, v7, *&dword_27F8F25B8);
        kPitchChangeHannProportion = 0;
      }

      v8 = *&dword_27F8F25B8;
      v9 = *(a2 + 4);
      MEOWVectorBase::MEOWVectorBase(__C, 4, v9);
      MEOWVectorBase::MEOWVectorBase(__src, 4, *(a2 + 6));
      vDSP_hann_window(__C[0], 2 * *(a2 + 4), 1);
      MEMORY[0x259C6E700](*a2, 1, &__C[0][*(a2 + 4) - 1], -1, __src[0], 1);
      LODWORD(v9) = vcvtps_s32_f32(v8 * v9);
      vDSP_hann_window(__C[0], (2 * v9), 1);
      v10 = *(a2 + 6);
      v11 = *(a2 + 4);
      v12 = __src[0] + 4 * v11;
      if (v10 <= v11 + v9)
      {
        bzero(v12, 4 * (v10 - v11));
        v33 = __src[0] + 4 * (*(a2 + 6) - v9);
        MEMORY[0x259C6E6D0](*a2 + 4 * (*(a2 + 4) - v9), 1, __C[0], 1, v33, 1, v33, 1, v9);
      }

      else
      {
        bzero(v12, 4 * (v10 - (v11 + v9)));
        MEMORY[0x259C6E700](*a2 + 4 * (*(a2 + 4) - v9), 1, __C[0], 1, __src[0] + 4 * (*(a2 + 6) - v9), 1, v9);
      }

      goto LABEL_47;
    }
  }

  if (kPitchDetectExcitation)
  {
    MTBEDebugParams::GetParam(kPitchDetectExcitation, &byte_27F8F25C8, byte_27F8F25C8);
    kPitchDetectExcitation = 0;
  }

  v14 = *(a2 + 4);
  if (byte_27F8F25C8 == 1)
  {
    v15 = cblas_isamax(v14, *a2, 1);
    v14 = *(a2 + 4);
    v16 = v15 < (v14 >> 1);
  }

  else
  {
    v16 = 1;
  }

  v17 = *(a2 + 6);
  if (v17 <= 2 * v14)
  {
    v19 = v17 - v14;
    if (v17 <= v14)
    {
      if (kPitchIncreaseWindow)
      {
        MTBEDebugParams::GetParam(kPitchIncreaseWindow, &dword_27F8F25F8, v7, *&dword_27F8F25F8);
        kPitchIncreaseWindow = 0;
        v17 = *(a2 + 6);
      }

      v31 = *&dword_27F8F25F8 * v17;
      v29 = v31;
      if (!v16)
      {
        v35 = *a2;
        v36 = *a2 + 4 * *(a2 + 4);
        v37 = (v36 - 4 * v17);
        if (v29)
        {
          MTMBCrossfader::CrossfadePartial(this[2], v29, 1, v31, *a2, (v36 - 4 * v17), (v36 - 4 * v17));
          v17 = *(a2 + 6);
        }

        if (v17)
        {
          memmove(v35, v37, 4 * v17);
        }

        goto LABEL_59;
      }

      if (v29)
      {
        v26 = (*a2 + 4 * *(a2 + 4) - 4 * v29);
        v28 = (*a2 + 4 * v17 - 4 * v29);
        v27 = this[2];
        v30 = v31;
        goto LABEL_45;
      }
    }

    else
    {
      if (kPitchDecreaseWindow)
      {
        MTBEDebugParams::GetParam(kPitchDecreaseWindow, &dword_27F8F25D8, v7, *&dword_27F8F25D8);
        kPitchDecreaseWindow = 0;
      }

      v20 = (*&dword_27F8F25D8 * v19);
      if (kPitchDecreaseMinWin)
      {
        MTBEDebugParams::GetParam(kPitchDecreaseMinWin, &qword_27F8F25E8, qword_27F8F25E8);
        kPitchDecreaseMinWin = 0;
      }

      if (v20 <= qword_27F8F25E8)
      {
        v21 = qword_27F8F25E8;
      }

      else
      {
        v21 = v20;
      }

      v22 = *(a2 + 4);
      if (v22 - v19 >= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = (v22 - v19);
      }

      v24 = *a2;
      if (!v16)
      {
        if (*(a2 + 4))
        {
          memmove((v24 + 4 * *(a2 + 6) - 4 * v22), *a2, 4 * v22);
        }

        if (!v23)
        {
          goto LABEL_59;
        }

        v26 = (v24 + 4 * v19);
        v28 = &v26[v19];
        v27 = this[2];
        v29 = v23;
        v30 = v23;
        v32 = v26;
        goto LABEL_54;
      }

      v25 = (v24 + 4 * v22);
      memmove(v25, &v25[-4 * v19], 4 * v19);
      if (v23)
      {
        v26 = &v25[-4 * v19 + -4 * v23];
        v27 = this[2];
        v28 = &v25[-4 * v23];
        v29 = v23;
        v30 = v23;
LABEL_45:
        v32 = v28;
LABEL_54:
        MTMBCrossfader::CrossfadePartial(v27, v29, 1, v30, v28, v26, v32);
      }
    }

LABEL_59:
    *(a2 + 4) = *(a2 + 6);
    return;
  }

  do
  {
    v18 = 2 * (v14 & 0x7FFF);
    if (v18 >= v17)
    {
      LOWORD(v18) = v17;
    }

    *(a2 + 6) = v18;
    (*(*this + 5))(this, a2, a3);
    v14 = *(a2 + 4);
  }

  while (v14 < v17);
}

void sub_257B4D1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEOWVectorBase::~MEOWVectorBase(va);
  _Unwind_Resume(a1);
}

uint64_t MTMBSimpleSignalProcessor::BlendBeg(uint64_t this, const float **a2)
{
  if (*(a2 + 4))
  {
    if (*(a2 + 4) >= 0xFu)
    {
      v2 = 15;
    }

    else
    {
      v2 = *(a2 + 4);
    }

    return MTMBCrossfader::CrossfadePartial(*(this + 16), v2, 1, v2, MTMBSimpleSignalProcessor::BlendBeg(MTMBSegment *)::sZero, *a2, *a2);
  }

  return this;
}

void MTMBSimpleSignalProcessor::BlendEnd(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v3 = *a2 + 4 * v2;
    v5 = *(v3 - 4);
    v4 = (v3 - 4);
    v6 = v5 < 0.0;
    if (v5 <= 0.0)
    {
      if (v6)
      {
        v10 = v4;
        do
        {
          v11 = *--v10;
          *v4 = 0.0;
          v12 = v11 < 0.0 && v2 > 1;
          LODWORD(v2) = v2 - 1;
          v4 = v10;
        }

        while (v12);
      }
    }

    else
    {
      v7 = v4;
      do
      {
        v8 = *--v7;
        *v4 = 0.0;
        v9 = v8 > 0.0 && v2 > 1;
        LODWORD(v2) = v2 - 1;
        v4 = v7;
      }

      while (v9);
    }
  }
}

uint64_t MTMBSimpleSignalProcessor::ChangeAmplitude(uint64_t this, MTMBSegment *a2, float a3, float a4, float a5, int a6)
{
  if (!*(a2 + 4))
  {
    return this;
  }

  v11 = this;
  MTMBSegment::Modify(a2);
  if (a6)
  {
    v12 = *(a2 + 4);
    if (*(a2 + 4))
    {
      v13 = *a2;
      do
      {
        v14 = ((*(v11 + 8) * 27.0) * 0.03125) + *v13;
        *(v11 + 8) = v14;
        *v13++ = v14 * 4.0;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    a3 = a3 * 1.05;
    a4 = a4 * 1.05;
  }

  if (a4 == a3)
  {
    cblas_sscal(*(a2 + 4), a3, *a2, 1);
    LODWORD(v15) = *(a2 + 4);
    v16 = *a2;
    if (*(a2 + 4))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = *(a2 + 4);
    v16 = *a2;
    if (*(a2 + 4))
    {
      v17 = (a4 - a3) / v15;
      v18 = *a2;
      do
      {
        a3 = v17 + a3;
        *v18 = a3 * *v18;
        ++v18;
      }

      while (v18 < &v16[v15]);
      if (v15)
      {
LABEL_13:
        v19 = 0;
        v20 = v15;
        v21 = 4 * v15;
        do
        {
          v22 = fabsf(v16[v19 / 4]);
          if ((LODWORD(v16[v19 / 4]) & 0x7FFFFFFFu) > 0x7F7FFFFF || v22 > (a5 * 4.0))
          {
            v16[v19 / 4] = 0.0;
          }

          v19 += 4;
        }

        while (v21 != v19);
        goto LABEL_23;
      }
    }
  }

  v20 = 0;
LABEL_23:
  this = cblas_isamax(v20, v16, 1);
  v24 = *a2;
  v25 = (*a2 + 4 * this);
  for (i = fabsf(*v25); i > a5; i = fabsf(*v25))
  {
    v27 = a5 / i;
    v28 = (1.0 - v27) / 10.0;
    if (this <= 10)
    {
      v29 = 10;
    }

    else
    {
      v29 = this;
    }

    v30 = v29 - 10;
    v31 = this + 10;
    v32 = *(a2 + 4);
    if (v32 - 1 < this + 10)
    {
      v31 = v32 - 1;
    }

    if (this > v30)
    {
      v33 = v25 - 1;
      v34 = this;
      v35 = v27;
      do
      {
        --v34;
        v35 = v28 + v35;
        *v33 = v35 * *v33;
        --v33;
      }

      while (v34 > v30);
    }

    if (this < v32)
    {
      if (this > v31)
      {
        v31 = this;
      }

      v36 = v31 - this + 1;
      do
      {
        *v25 = v27 * *v25;
        ++v25;
        v27 = v28 + v27;
        --v36;
      }

      while (v36);
    }

    this = cblas_isamax(v32, v24, 1);
    v24 = *a2;
    v25 = (*a2 + 4 * this);
  }

  return this;
}

void MTMBAltSignalProcessor::~MTMBAltSignalProcessor(MTMBAltSignalProcessor *this)
{
  *this = &unk_2868F7240;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_2868F7240;
  v1 = *(this + 2);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x259C6DA90);
}

uint64_t MTMBSegment::SetProperties(uint64_t result, _DWORD *a2)
{
  *(result + 24) = a2;
  ++*a2;
  return result;
}

void MTMBSegment::Allocate(MTMBSegment *this, int a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    ++*v4;
  }

  MTMBSegment::Free(this);
  if (a2 <= 512)
  {
    v5 = 512;
  }

  else
  {
    v5 = a2;
  }

  *(this + 5) = v5;
  operator new[]();
}

_DWORD *MTMBSegment::Free(MTMBSegment *this)
{
  if (*(this + 8) < 0)
  {
    v2 = *this;
    if (*this)
    {
      if (*(v2 - 4) != -1091585519 || *(v2 + 4 * *(this + 5)) != -1091585519)
      {
        MTBEAbort(0);
        v2 = *this;
      }

      MEMORY[0x259C6DA70](v2 - 4, 0x1000C8052888210);
    }
  }

  *this = 0;
  result = *(this + 3);
  if (result)
  {
    if ((*result)-- == 1)
    {

      JUMPOUT(0x259C6DA90);
    }
  }

  return result;
}

uint64_t MTMBSegment::Grow(uint64_t this)
{
  if (*(this + 16) < 0)
  {
    if (*this)
    {
      v1 = *(this + 8);
      operator new[]();
    }
  }

  return this;
}

MTMBSegment *MTMBSegment::Modify(MTMBSegment *this)
{
  if ((*(this + 8) & 0x80000000) == 0)
  {
    v1 = *this;
    MTMBSegment::Allocate(this, *(this + 4));
  }

  return this;
}

int *MTMBSegment::Abstract(MTMBSegment **this)
{
  v2 = *this;
  v3 = (this[2] & 0x80000000) == 0 || *(v2 - 1) == -1091585519 && *(v2 + *(this + 5)) == -1091585519;
  MTMBSegment::Abstract(v2, *(this + 4), v3);
  return &MTMBSegment::Abstract(float const*,int,BOOL)::sBuf;
}

int *MTMBSegment::Abstract(MTMBSegment *this, const float *a2, char a3)
{
  v3 = a2;
  if (a2 < 1)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0.0;
    v9 = this;
    v10 = a2;
    do
    {
      v11 = *v9;
      v9 = (v9 + 4);
      v12 = v11;
      v13 = v8;
      if (v6 <= v7)
      {
        v14 = v7;
      }

      else
      {
        v14 = v6;
      }

      if (v6 <= v7)
      {
        v13 = v5;
      }

      if (v12 == v8)
      {
        ++v6;
      }

      else
      {
        v7 = v14;
        v6 = 1;
      }

      if (v12 != v8)
      {
        v5 = v13;
        v8 = v12;
      }

      --v10;
    }

    while (v10);
  }

  if (v6 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v6;
  }

  v16 = &MTMBSegment::Abstract(float const*,int,BOOL)::sBuf;
  if ((a3 & 1) == 0)
  {
    strcpy(&MTMBSegment::Abstract(float const*,int,BOOL)::sBuf, "!!! ");
    v16 = &byte_27F8F2E78;
  }

  v17 = sprintf(v16, "[%u]", a2);
  if (v3)
  {
    v18 = fabsf(*(this + cblas_isamax(v3, this, 1)));
  }

  else
  {
    v18 = 0.0;
  }

  v19 = &v16[v17];
  if (v18 > 100000.0)
  {
    *v19 = 3940670;
    v19 += 3;
  }

  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        strcpy(v19, "{}");
        v30 = 2;
        goto LABEL_83;
      case 1:
        if (v18 > 0.0001 && v18 < 10.0)
        {
          v21 = "{%.5f}";
        }

        else
        {
          v21 = "{%.0f}";
        }

        v22 = *this;
        goto LABEL_82;
      case 2:
        if (v18 > 0.0001 && v18 < 10.0)
        {
          v21 = "{%.5f %.5f}";
        }

        else
        {
          v21 = "{%.0f %.0f}";
        }

        v22 = *this;
        v23 = *(this + 1);
        goto LABEL_81;
    }

    goto LABEL_56;
  }

  if (v3 > 4)
  {
    if (v3 == 5)
    {
      if (v18 > 0.0001 && v18 < 10.0)
      {
        v21 = "{%.5f %.5f %.5f %.5f %.5f}";
      }

      else
      {
        v21 = "{%.0f %.0f %.0f %.0f %.0f}";
      }

      v22 = *this;
      v23 = *(this + 1);
      v24 = *(this + 2);
      v25 = *(this + 3);
      v29 = *(this + 4);
      goto LABEL_78;
    }

    if (v3 == 6)
    {
      if (v18 > 0.0001 && v18 < 10.0)
      {
        v21 = "{%.5f %.5f %.5f %.5f %.5f %.5f}";
      }

      else
      {
        v21 = "{%.0f %.0f %.0f %.0f %.0f %.0f}";
      }

      v22 = *this;
      v23 = *(this + 1);
      v24 = *(this + 2);
      v25 = *(this + 3);
      v28 = *(this + 5);
      v29 = *(this + 4);
LABEL_63:
      v41 = v28;
LABEL_78:
      v40 = v29;
      goto LABEL_79;
    }

LABEL_56:
    if (v18 > 0.0001 && v18 < 10.0)
    {
      v21 = "{%.5f %.5f %.5f ... %.5f %.5f %.5f}";
    }

    else
    {
      v21 = "{%.0f %.0f %.0f ... %.0f %.0f %.0f}";
    }

    v22 = *this;
    v23 = *(this + 1);
    v24 = *(this + 2);
    v32 = (this + 4 * v3);
    v25 = *(v32 - 3);
    v29 = *(v32 - 2);
    v28 = *(v32 - 1);
    goto LABEL_63;
  }

  if (v3 == 3)
  {
    if (v18 > 0.0001 && v18 < 10.0)
    {
      v21 = "{%.5f %.5f %.5f}";
    }

    else
    {
      v21 = "{%.0f %.0f %.0f}";
    }

    v22 = *this;
    v23 = *(this + 1);
    v24 = *(this + 2);
    goto LABEL_80;
  }

  if (v18 > 0.0001 && v18 < 10.0)
  {
    v21 = "{%.5f %.5f %.5f %.5f}";
  }

  else
  {
    v21 = "{%.0f %.0f %.0f %.0f}";
  }

  v22 = *this;
  v23 = *(this + 1);
  v24 = *(this + 2);
  v25 = *(this + 3);
LABEL_79:
  v39 = v25;
LABEL_80:
  v38 = v24;
LABEL_81:
  v37 = v23;
LABEL_82:
  v30 = sprintf(v19, v21, *&v22, *&v37, *&v38, *&v39, *&v40, *&v41);
LABEL_83:
  if (v15 >= 3)
  {
    if (v15 == v3)
    {
      sprintf(&v19[v30], " all %d");
    }

    else
    {
      sprintf(&v19[v30], " run %d len %d");
    }
  }

  return &MTMBSegment::Abstract(float const*,int,BOOL)::sBuf;
}