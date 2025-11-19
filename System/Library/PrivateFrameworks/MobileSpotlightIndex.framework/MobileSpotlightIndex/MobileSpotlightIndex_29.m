uint64_t SIUINT64SetCreate()
{
  if (!__kSIUINT64SetTypeID)
  {
    __kSIUINT64SetTypeID = _CFRuntimeRegisterClass();
  }

  return _CFRuntimeCreateInstance();
}

void __SIUINT64SetFinalize(char *a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = *(a1 + 6);
  do
  {
    v5 = *&v3[v2];
    if (v5)
    {
      if ((v5 & 1) == 0)
      {
        (*(*v5 + 72))(*&v3[v2]);
        CFAllocatorDeallocate(v4, v5);
      }

      *&v3[v2] = 0;
    }

    v2 += 8;
  }

  while (v2 != 128);
  v6 = *(a1 + 4);
  if (v6)
  {
    SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(v6, *(a1 + 6), *(a1 + 5));
    CFAllocatorDeallocate(*(a1 + 6), *(a1 + 4));
    *(a1 + 4) = 0;
  }
}

double __SIUINT64SetInit(char *a1)
{
  v2 = CFGetAllocator(a1);
  *(a1 + 2) = 0;
  *(a1 + 6) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = v2;
  v3 = MEMORY[0x1C691E420]();
  bzero(v3, 0x1F88uLL);
  *(a1 + 4) = v3;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  a1[184] = 1;
  return result;
}

uint64_t SIUINT64SetGetTypeID()
{
  result = __kSIUINT64SetTypeID;
  if (!__kSIUINT64SetTypeID)
  {
    result = _CFRuntimeRegisterClass();
    __kSIUINT64SetTypeID = result;
  }

  return result;
}

uint64_t SIUINT64SetContainsValue(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 184))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    if ((*(a1 + 16) ^ a2) >> (-4 * v2))
    {
      return 0;
    }
  }

  v3 = *(a1 + 8 * ((a2 >> (60 - 4 * v2)) & 0xF) + 56);
  if (v3)
  {
    v4 = v2 + 2;
    do
    {
      v3 = *((v3 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((a2 >> (64 - 4 * v4++)) & 0xF));
    }

    while ((v3 & 1) != 0);
  }

  if (!v3)
  {
    return 0;
  }

  else
  {
    return (*(*v3 + 16))();
  }
}

uint64_t SIValueSet<unsigned long long>::SIValueSetInsert(unint64_t *a1, unint64_t a2)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = 4 * v4;
    v6 = *a1;
    if ((*a1 ^ a2) >> (-4 * v4))
    {
      v7 = a1 + 5;
      do
      {
        v17 = *(a1 + 2);
        *(a1 + 2) = v17 - 1;
        if (v17 <= 0)
        {
          v23 = __si_assert_copy_extra_332();
          v24 = v23;
          v25 = "";
          if (v23)
          {
            v25 = v23;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1650, "s->sharedDepth>=0", v25);
          free(v24);
          if (__valid_fs(-1))
          {
            v26 = 2989;
          }

          else
          {
            v26 = 3072;
          }

          *v26 = -559038737;
          abort();
        }

        if (v17 == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 = -1 << (-4 * (v17 - 1));
        }

        *a1 = v6 & v18;
        v9 = a1[3];
        if (v9 == 63 || (v8 = a1[2]) == 0)
        {
          v8 = MEMORY[0x1C691E420](a1[4], 8072, 0xA00408091C53FLL, 0);
          *v8 = a1[2];
          bzero(v8 + 1, 0x1F80uLL);
          v9 = 0;
          a1[2] = v8;
        }

        a1[3] = v9 + 1;
        v10 = *v7;
        v11 = *(a1 + 7);
        v12 = *(a1 + 9);
        v13 = &v8[16 * v9];
        *(v13 + 7) = *(a1 + 11);
        *(v13 + 5) = v12;
        *(v13 + 3) = v11;
        *(v13 + 1) = v10;
        v14 = *(a1 + 13);
        v15 = *(a1 + 15);
        v16 = *(a1 + 17);
        *(v13 + 15) = *(a1 + 19);
        *(v13 + 13) = v16;
        *(v13 + 11) = v15;
        *(v13 + 9) = v14;
        *(a1 + 9) = 0u;
        *(a1 + 11) = 0u;
        *(a1 + 13) = 0u;
        *(a1 + 15) = 0u;
        *(a1 + 17) = 0u;
        *(a1 + 19) = 0u;
        *v7 = 0u;
        *(a1 + 7) = 0u;
        *(v7 + ((v6 >> (64 - 4 * v17)) & 0xF)) = (v13 + 1) | 1;
        v6 = *a1;
      }

      while (*a1 != (v18 & a2));
      v4 = *(a1 + 2);
      v5 = 4 * v4;
    }

    if ((v5 - 61) <= 0xFFFFFFBE)
    {
      v19 = __si_assert_copy_extra_332();
      v20 = v19;
      v21 = "";
      if (v19)
      {
        v21 = v19;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1670, "((sizeof(ValueType) * 8) -4*(1+(s->sharedDepth))) <= sizeof(ValueType)*8", v21);
      free(v20);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  else if (*(a1 + 168) == 1)
  {
    v4 = 12;
    *(a1 + 2) = 12;
    *a1 = a2 & 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 168) = 0;

  return SIValueSet<unsigned long long>::_SIValueSetInnerInsert((a1 + 5), a2, v4, (a1 + 2));
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerInsert(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = 60 - 4 * a3;
  v7 = 60 - 4 * a3;
  v8 = (a2 >> v7) & 0xF;
  v9 = *(a1 + 8 * v8);
  if (v9)
  {
    do
    {
      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      v6 = 56 - 4 * v5;
      v7 = 56 - 4 * v5;
      v8 = (a2 >> v7) & 0xF;
      v9 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8 * v8);
      v5 = (v5 + 1);
    }

    while ((v9 & 1) != 0);
  }

  else
  {
    v10 = a1;
  }

  if (v6 < 13)
  {
    if (!v9)
    {
      v12 = a2;
      v13 = MEMORY[0x1C691E420](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
      a2 = v12;
      v9 = v13;
      *v13 = &unk_1F42811C8;
      *(v13 + 24) = 0u;
      *(v13 + 40) = 0u;
      *(v13 + 56) = 0u;
      *(v13 + 72) = 0u;
      *(v13 + 88) = 0u;
      *(v13 + 104) = 0u;
      *(v13 + 120) = 0u;
      *(v13 + 136) = 0u;
      *(v13 + 152) = 0u;
      *(v13 + 168) = 0u;
      *(v13 + 184) = 0u;
      *(v13 + 200) = 0u;
      *(v13 + 216) = 0u;
      *(v13 + 232) = 0u;
      *(v13 + 248) = 0u;
      *(v13 + 8) = 0u;
      *(v13 + 264) = 0u;
      *(v13 + 280) = 0u;
      *(v13 + 296) = 0u;
      *(v13 + 312) = 0u;
      *(v13 + 328) = 0u;
      *(v13 + 344) = 0u;
      *(v13 + 360) = 0u;
      *(v13 + 376) = 0u;
      *(v13 + 392) = 0u;
      *(v13 + 408) = 0u;
      *(v13 + 424) = 0u;
      *(v13 + 440) = 0u;
      *(v13 + 456) = 0u;
      *(v13 + 472) = 0u;
      *(v13 + 488) = 0u;
      *(v13 + 504) = 0u;
      *(v10 + 8 * v8) = v13;
    }

    v14 = a2 & ~(-1 << v7);
    v15 = *(v9 + 8 + 8 * (v14 >> 6));
    if ((v15 & (1 << v14)) != 0)
    {
      return 0;
    }

    else
    {
      *(v9 + 8 + 8 * ((v14 << 16) >> 22)) = v15 | (1 << v14);
      return 1;
    }
  }

  else
  {
    if (v9)
    {
      v11 = *v9;
    }

    else
    {
      v17 = a2;
      if (v6 < 0x20u)
      {
        v18 = *(a4 + 16);
        if (v6 < 0x10u)
        {
          v9 = MEMORY[0x1C691E420](v18, 136, 0x1081040C0A9C235, 0);
          v11 = &unk_1F4281128;
          *v9 = &unk_1F4281128;
          *(v9 + 8) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 40) = 0u;
          *(v9 + 56) = 0u;
          *(v9 + 72) = 0u;
          *(v9 + 88) = 0u;
          *(v9 + 104) = 0u;
          *(v9 + 120) = 0u;
        }

        else
        {
          v9 = MEMORY[0x1C691E420](v18, 264, 0x10810409D866994, 0);
          v11 = &unk_1F4281088;
          *v9 = &unk_1F4281088;
          *(v9 + 8) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 40) = 0u;
          *(v9 + 56) = 0u;
          *(v9 + 72) = 0u;
          *(v9 + 88) = 0u;
          *(v9 + 104) = 0u;
          *(v9 + 120) = 0u;
          *(v9 + 136) = 0u;
          *(v9 + 152) = 0u;
          *(v9 + 168) = 0u;
          *(v9 + 184) = 0u;
          *(v9 + 200) = 0u;
          *(v9 + 216) = 0u;
          *(v9 + 232) = 0u;
          *(v9 + 248) = 0u;
        }
      }

      else
      {
        v9 = MEMORY[0x1C691E420](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
        v11 = &unk_1F4280FE8;
        *v9 = &unk_1F4280FE8;
        *(v9 + 24) = 0u;
        *(v9 + 40) = 0u;
        *(v9 + 56) = 0u;
        *(v9 + 72) = 0u;
        *(v9 + 88) = 0u;
        *(v9 + 104) = 0u;
        *(v9 + 120) = 0u;
        *(v9 + 136) = 0u;
        *(v9 + 152) = 0u;
        *(v9 + 168) = 0u;
        *(v9 + 184) = 0u;
        *(v9 + 200) = 0u;
        *(v9 + 216) = 0u;
        *(v9 + 232) = 0u;
        *(v9 + 248) = 0u;
        *(v9 + 8) = 0u;
        *(v9 + 264) = 0u;
        *(v9 + 280) = 0u;
        *(v9 + 296) = 0u;
        *(v9 + 312) = 0u;
        *(v9 + 328) = 0u;
        *(v9 + 344) = 0u;
        *(v9 + 360) = 0u;
        *(v9 + 376) = 0u;
        *(v9 + 392) = 0u;
        *(v9 + 408) = 0u;
        *(v9 + 424) = 0u;
        *(v9 + 440) = 0u;
        *(v9 + 456) = 0u;
        *(v9 + 472) = 0u;
        *(v9 + 488) = 0u;
        *(v9 + 504) = 0u;
      }

      *(v10 + 8 * v8) = v9;
      a2 = v17;
    }

    v19 = (*v11)(v9, a2, ~(-1 << v7));
    if ((*(*v9 + 56))(v9) >= 0x3E)
    {
      *(v10 + 8 * v8) = SIValueSet<unsigned long long>::_SIValueSetBurstRLE(v9, v5, a4);
    }

    return v19;
  }
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetBurstRLE(void *a1, int a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 8);
  if (v6 == 63 || (v7 = *a3) == 0)
  {
    v7 = MEMORY[0x1C691E420](*(a3 + 16), 8072, 0xA00408091C53FLL, 0);
    *v7 = *a3;
    bzero(v7 + 1, 0x1F80uLL);
    v6 = 0;
    *a3 = v7;
  }

  *(a3 + 8) = v6 + 1;
  v8 = &v7[16 * v6];
  *(v8 + 1) = 0u;
  v9 = (v8 + 1);
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  v10 = (a2 + 1);
  v11 = 64 - 4 * v10;
  *(v9 + 16) = 0u;
  if (v11 >= 32)
  {
    v12 = a1[1];
    if (v12 > 0x3F)
    {
      goto LABEL_71;
    }

    v45 = &v44;
    v13 = a1 + 2;
    v14 = &a1[v12 + 2];
    bzero(v46, 0x400uLL);
    v15 = 0;
    v16 = 0;
LABEL_7:
    v17 = 0;
    while (1)
    {
      if (v16)
      {
        --v16;
        ++v15;
      }

      else
      {
        if (v13 >= v14)
        {
          if (v17)
          {
            v28 = v46;
            do
            {
              v29 = *v28++;
              SIValueSet<unsigned long long>::_SIValueSetInnerInsert(v9, v29, v10, a3);
              --v17;
            }

            while (v17);
          }

          goto LABEL_71;
        }

        v18 = v13 + 1;
        v15 = *v13;
        if ((v13 + 1) >= v14)
        {
          v16 = 0;
          ++v13;
        }

        else
        {
          if (*v18 < 0)
          {
            v13 += 2;
          }

          else
          {
            ++v13;
          }

          if (*v18 < 0)
          {
            v16 = *v18 & 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = 0;
          }
        }
      }

      v46[v17++] = v15;
      if (v17 == 128)
      {
        for (i = 0; i != 128; ++i)
        {
          SIValueSet<unsigned long long>::_SIValueSetInnerInsert(v9, v46[i], v10, a3);
        }

        goto LABEL_7;
      }
    }
  }

  if (v11 >= 16)
  {
    v20 = *(a1 + 2);
    if (v20 > 0x3F)
    {
      goto LABEL_71;
    }

    v45 = &v44;
    v21 = a1 + 3;
    v22 = a1 + 4 * v20 + 12;
    bzero(v46, 0x400uLL);
    v23 = 0;
    v24 = 0;
LABEL_26:
    v25 = 0;
    while (1)
    {
      if (v24)
      {
        --v24;
        ++v23;
      }

      else
      {
        if (v21 >= v22)
        {
          if (v25)
          {
            v38 = v46;
            do
            {
              v39 = *v38++;
              SIValueSet<unsigned long long>::_SIValueSetInnerInsert(v9, v39, v10, a3);
              --v25;
            }

            while (v25);
          }

          goto LABEL_71;
        }

        v23 = *v21;
        if ((v21 + 1) >= v22)
        {
          v24 = 0;
          ++v21;
        }

        else
        {
          v26 = v21[1];
          if (v26 < 0)
          {
            v21 += 2;
          }

          else
          {
            ++v21;
          }

          if (v26 < 0)
          {
            v24 = v26 & 0x7FFFFFFF;
          }

          else
          {
            v24 = 0;
          }
        }
      }

      v46[v25++] = v23;
      if (v25 == 128)
      {
        for (j = 0; j != 128; ++j)
        {
          SIValueSet<unsigned long long>::_SIValueSetInnerInsert(v9, v46[j], v10, a3);
        }

        goto LABEL_26;
      }
    }
  }

  v30 = *(a1 + 4);
  if (v30 > 0x3F)
  {
    goto LABEL_71;
  }

  v45 = &v44;
  v31 = a1 + 5;
  v32 = a1 + 2 * v30 + 10;
  bzero(v46, 0x400uLL);
  v33 = 0;
  v34 = 0;
LABEL_48:
  v35 = 0;
  while (v34)
  {
    --v34;
    ++v33;
LABEL_60:
    v46[v35++] = v33;
    if (v35 == 128)
    {
      for (k = 0; k != 128; ++k)
      {
        SIValueSet<unsigned long long>::_SIValueSetInnerInsert(v9, v46[k], v10, a3);
      }

      goto LABEL_48;
    }
  }

  if (v31 < v32)
  {
    v33 = *v31;
    if ((v31 + 1) >= v32)
    {
      v34 = 0;
      ++v31;
    }

    else
    {
      v36 = v31[1];
      if (v36 < 0)
      {
        v34 = v36 & 0x7FFF;
      }

      else
      {
        v34 = 0;
      }

      if (v36 < 0)
      {
        v31 += 2;
      }

      else
      {
        ++v31;
      }
    }

    goto LABEL_60;
  }

  if (v35)
  {
    v40 = v46;
    do
    {
      v41 = *v40++;
      SIValueSet<unsigned long long>::_SIValueSetInnerInsert(v9, v41, v10, a3);
      --v35;
    }

    while (v35);
  }

LABEL_71:
  (*(*a1 + 72))(a1);
  CFAllocatorDeallocate(*(a3 + 16), a1);
  v42 = *MEMORY[0x1E69E9840];
  return v9 | 1;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::valueIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F4281238;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1 + 8;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::BitmapIterator::hasMore(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 4095)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  while (1)
  {
    v3 = *(v2 + 8 * (v1 >> 6));
    if (v3)
    {
      break;
    }

    v1 += 64;
    *(a1 + 24) = v1;
LABEL_9:
    if (v1 >= 4096)
    {
      return 0;
    }
  }

  v4 = v1 & 0x3F;
  while (((v3 >> v4) & 1) == 0)
  {
    *(a1 + 24) = ++v1;
    if (++v4 == 64)
    {
      goto LABEL_9;
    }
  }

  return 1;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::BitmapIterator::nextKey(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  if (v2 > 4095)
  {
    return v1;
  }

  v3 = *(a1 + 16);
  while (1)
  {
    v4 = *(v3 + 8 * (v2 >> 6));
    if (v4)
    {
      break;
    }

    v2 += 64;
    *(a1 + 24) = v2;
LABEL_9:
    if (v2 >= 4096)
    {
      return v1;
    }
  }

  v5 = v2 & 0x3F;
  while (((v4 >> v5) & 1) == 0)
  {
    *(a1 + 24) = ++v2;
    if (++v5 == 64)
    {
      goto LABEL_9;
    }
  }

  v7 = *(a1 + 8);
  *(a1 + 24) = v2 + 1;
  return v7 | v2 | v1;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 0);
  v4 = *(*a2 + 16);

  return v4(a2, a1 + 8, 512);
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::IsEmpty(uint64_t a1)
{
  LOWORD(v1) = 0;
  while (1)
  {
    v2 = *(a1 + 8 + 8 * (v1 >> 6));
    if (v2)
    {
      break;
    }

LABEL_2:
    v1 = (v1 + 64);
    if (v1 >= 4096)
    {
      return 1;
    }
  }

  v3 = v1 & 0x3F;
  LOWORD(v1) = v1 & 0xFFC0;
  while (((v2 >> v3) & 1) == 0)
  {
    if (++v3 == 64)
    {
      goto LABEL_2;
    }
  }

  return 0;
}

void SIValueSet<unsigned long long>::BitmapHolder::Apply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v25[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  v12 = 0;
  v13 = 0;
  v14 = a1 + 8;
  do
  {
    while (1)
    {
      v15 = *(v14 + 8 * (v13 >> 6));
      if (v15)
      {
        break;
      }

LABEL_2:
      v13 = (v13 + 64);
      if (v13 >= 4096)
      {
        goto LABEL_23;
      }
    }

    v16 = v13 & 0x3F;
    v17 = v13 & 0xFFC0;
    while (((v15 >> v16) & 1) == 0)
    {
      ++v13;
      if (++v16 == 64)
      {
        LOWORD(v13) = v17;
        goto LABEL_2;
      }
    }

    if (v13 > 4095)
    {
      v19 = 0;
    }

    else
    {
      v18 = v13;
      while (1)
      {
        v20 = *(v14 + 8 * (v18 >> 6));
        if (v20)
        {
          break;
        }

LABEL_11:
        v18 = (v18 + 64);
        if (v18 >= 4096)
        {
          v19 = 0;
          v13 = v18;
          goto LABEL_18;
        }
      }

      v21 = v18 & 0x3F;
      v22 = v18 & 0xFFC0;
      while (1)
      {
        v13 = v18 + 1;
        if ((v20 >> v21))
        {
          break;
        }

        ++v21;
        ++v18;
        if (v21 == 64)
        {
          LOWORD(v18) = v22;
          goto LABEL_11;
        }
      }

      v19 = v18;
    }

LABEL_18:
    *&v11[8 * v12++] = v19 | a3;
    if (v12 == a2)
    {
      v23 = a4(v11, a2, a5);
      v12 = 0;
      if (v23)
      {
        break;
      }
    }
  }

  while (v13 < 4096);
LABEL_23:
  if (v12)
  {
    a4(v11, v12, a5);
  }

  v24 = *MEMORY[0x1E69E9840];
}

BOOL SIValueSet<unsigned long long>::BitmapHolder::RemoveKey(uint64_t a1, int a2, int a3)
{
  v3 = 1 << (a3 & a2);
  v4 = *(a1 + 8 + 8 * ((a3 & a2) << 16 >> 22));
  if ((v4 & v3) != 0)
  {
    *(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) = v4 ^ v3;
  }

  return (v4 & v3) != 0;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::CloseKey(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1 + 8;
  if ((*(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) >> (a3 & a2)))
  {
    return a2;
  }

  LOWORD(v5) = a3 & a2;
  result = a2;
  while (1)
  {
    v5 = (v5 + 1);
    if (v5 >= 64)
    {
      break;
    }

    ++result;
    if ((*(v3 + 8 * (v5 >> 6)) >> v5))
    {
      return result;
    }
  }

  v6 = (a3 & a2);
  result = a2;
  while (v6 >= 1)
  {
    --v6;
    --result;
    if ((*(v3 + 8 * (v6 >> 6)) >> v6))
    {
      return result;
    }
  }

  return 0;
}

BOOL SIValueSet<unsigned long long>::BitmapHolder::AddKey(uint64_t a1, int a2, int a3)
{
  v3 = 1 << (a3 & a2);
  v4 = *(a1 + 8 + 8 * ((a3 & a2) << 16 >> 22));
  if ((v4 & v3) == 0)
  {
    *(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) = v4 | v3;
  }

  return (v4 & v3) == 0;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::valueIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_1F4281198;
  *(a3 + 8) = a1 + 10;
  *(a3 + 16) = a1 + 10 + 2 * v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::RLEKeyIterator::nextKey(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 26))
  {
    --*(a1 + 26);
    v2 = *(a1 + 24) + 1;
    *(a1 + 24) = v2;
  }

  else
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    v2 = *v3;
    *(a1 + 8) = v3 + 1;
    *(a1 + 24) = v2;
    if ((v3 + 1) < v4)
    {
      v5 = v3[1];
      if (v5 < 0)
      {
        *(a1 + 8) = v3 + 2;
        *(a1 + 26) = v5 & 0x7FFF;
      }
    }
  }

  return v1 | v2;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 2);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 2 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 10, v4);
}

void SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::Apply(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 10);
  v14 = v9 + 10 + 2 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[8 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      v18 = v13[1];
      if (v18 < 0)
      {
        v16 = v18 & 0x7FFF;
      }

      else
      {
        v16 = 0;
      }

      if (v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::RemoveKey(uint64_t a1, int a2, unsigned int a3)
{
  v3 = a2 & a3 & 0x7FFFLL;
  v4 = a1 + 10;
  v5 = *(a1 + 8);
  v6 = a1 + 10 + 2 * v5;
  if (v5 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 10 + 2 * v5;
    v7 = (a1 + 10);
    do
    {
      v10 = (v7 + (v8 & 0xFFFFFFFFFFFFFFFELL));
      v11 = *v10;
      if (v11 < 0)
      {
        v12 = *--v10;
        LOWORD(v11) = v12;
      }

      if (v10 <= v7)
      {
        break;
      }

      if (v3 == v11)
      {
        v7 = v10;
        if (v10 >= v6)
        {
          return 0;
        }

        goto LABEL_17;
      }

      if (v11 > v3)
      {
        v9 = v10;
      }

      else
      {
        v7 = v10;
      }

      v8 = (v9 - v7) >> 1;
    }

    while (v9 > v7 && v8 > 2);
    if (v7 >= v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = (a1 + 10);
    if (v4 >= v6)
    {
      return 0;
    }
  }

LABEL_17:
  v14 = v7 + 1;
  v15 = *v7;
  if (v3 == v15)
  {
    if (v14 >= v6)
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

  while (1)
  {
    if ((v15 & 0x8000) == 0)
    {
      v17 = 0;
      if (v3 < v15 || v14 >= v6)
      {
        return v17;
      }

      goto LABEL_20;
    }

    v18 = *(v14 - 2);
    v19 = (v18 + (v15 & 0x7FFF));
    if (v3 > v18 && v3 <= v19)
    {
      break;
    }

    if (v14 >= v6)
    {
      return 0;
    }

LABEL_20:
    v16 = *v14++;
    v15 = v16;
    if (v3 == v16)
    {
      v7 = v14 - 1;
      if (v14 >= v6)
      {
        goto LABEL_43;
      }

LABEL_35:
      v21 = *v14;
      if ((v21 & 0x80000000) == 0)
      {
        v22 = v6 - v14;
        v23 = a1;
        v24 = v7;
LABEL_39:
        memmove(v24, v14, v22);
        --*(v23 + 8);
        return 1;
      }

      *v7 = v15 + 1;
      if ((v21 & 0x7FFF) == 1)
      {
        v25 = v7 + 2;
        v22 = v6 - v25;
        v23 = a1;
        v24 = v14;
        v14 = v25;
        goto LABEL_39;
      }

      v29 = v21 - 1;
LABEL_47:
      *v14 = v29 | 0x8000;
      return 1;
    }
  }

  v26 = v14 - 1;
  if ((v15 & 0x7FFF) != 1)
  {
    if (v3 == v19)
    {
      *v26 = (v15 - 1) | 0x8000;
      return 1;
    }

    if (v3 == v18 + 1)
    {
      *v26 = v3 + 1;
      if (v19 - 1 == v3)
      {
        return 1;
      }

      v30 = *(a1 + 8);
      if (v30 < 0x3F)
      {
        v31 = (v14 - v4) >> 1;
        if (v30 != v31)
        {
          v32 = a1;
          v33 = v14;
          memmove(v14 + 1, v14, 2 * (v30 - v31));
          v14 = v33;
          a1 = v32;
          LOWORD(v30) = *(v32 + 8);
        }

        *(a1 + 8) = v30 + 1;
        v29 = v19 + ~v3;
        goto LABEL_47;
      }
    }

    else
    {
      *(v14 - 1) = (v3 + ~v18) | 0x8000;
      v34 = *(a1 + 8);
      if (v34 < 0x3F)
      {
        v35 = (v14 - v4) >> 1;
        if (v34 != v35)
        {
          v36 = a1;
          v37 = v14;
          memmove(v14 + 1, v14, 2 * (v34 - v35));
          v14 = v37;
          a1 = v36;
          LOWORD(v34) = *(v36 + 8);
        }

        *(a1 + 8) = v34 + 1;
        *v14 = v3 + 1;
        v38 = ~v3;
        v39 = v19 + ~v3;
        if (!(v19 + v38))
        {
          return 1;
        }

        v40 = *(a1 + 8);
        if (v40 < 0x3F)
        {
          v41 = (v26 - v4 + 4) >> 1;
          if (v40 != v41)
          {
            v42 = a1;
            memmove(v26 + 3, v26 + 2, 2 * (v40 - v41));
            a1 = v42;
            LOWORD(v40) = *(v42 + 8);
          }

          *(a1 + 8) = v40 + 1;
          v26[2] = v39 | 0x8000;
          return 1;
        }
      }
    }

    v43 = __si_assert_copy_extra_332();
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 649, v45);
    free(v44);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (v14 < v6)
  {
    v27 = a1;
    memmove(v14 - 1, v14, v6 - v14);
    a1 = v27;
    LOWORD(v5) = *(v27 + 8);
  }

LABEL_43:
  *(a1 + 8) = v5 - 1;
  return 1;
}

unint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::CloseKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFF;
  v5 = (a1 + 10);
  v6 = a1 + 10 + 2 * v3;
  if (v3 < 3)
  {
LABEL_16:
    if (v5 >= v6)
    {
LABEL_31:
      result = *(v6 - 2);
      if (*(v6 - 2) < 0)
      {
        return (result & 0x7FFF) + *(v6 - 4);
      }

      return result;
    }
  }

  else
  {
    v7 = a1 + 10 + 2 * v3;
    while (1)
    {
      v8 = (v5 + (v3 & 0xFFFFFFFFFFFFFFFELL));
      if (*v8 < 0)
      {
        v10 = *--v8;
        v9 = v10;
        if (v8 <= v5)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = *v8;
        if (v8 <= v5)
        {
          goto LABEL_16;
        }
      }

      if (v9 == v4)
      {
        break;
      }

      if (v9 > v4)
      {
        v7 = v8;
      }

      else
      {
        v5 = v8;
      }

      v3 = (v7 - v5) >> 1;
      if (v7 <= v5 || v3 <= 2)
      {
        goto LABEL_16;
      }
    }

    v5 = v8;
    if (v8 >= v6)
    {
      goto LABEL_31;
    }
  }

  v12 = v5;
  while (1)
  {
    v16 = *v12++;
    result = v16;
    if (v4 == v16)
    {
      return a2 & a3 & 0x7FFF;
    }

    if ((result & 0x8000) != 0)
    {
      v13 = *(v5 - 1);
      if (v4 >= v13 && v4 <= v13 + (result & 0x7FFF))
      {
        return a2 & a3 & 0x7FFF;
      }
    }

    else if (v4 < result)
    {
      return result;
    }

    v5 = v12;
    if (v12 >= v6)
    {
      goto LABEL_31;
    }
  }
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::ContainsKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a2 & a3 & 0x7FFF;
  v4 = (a1 + 10);
  v5 = *(a1 + 8);
  v6 = a1 + 10 + 2 * v5;
  if (v5 < 3)
  {
LABEL_15:
    if (v4 >= v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = a1 + 10 + 2 * v5;
    while (1)
    {
      v8 = (v4 + (v5 & 0xFFFFFFFFFFFFFFFELL));
      if (*v8 < 0)
      {
        v10 = *--v8;
        v9 = v10;
        if (v8 <= v4)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v9 = *v8;
        if (v8 <= v4)
        {
          goto LABEL_15;
        }
      }

      if (v9 == v3)
      {
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 1;
      if (v7 <= v4 || v5 <= 2)
      {
        goto LABEL_15;
      }
    }

    v4 = v8;
    if (v8 >= v6)
    {
      return 0;
    }
  }

  v12 = *v4;
  if (v3 != v12)
  {
    v14 = (v4 + 1);
    v15 = v12;
    do
    {
      if (v15 < 0)
      {
        v17 = *(v14 - 2);
        v18 = v17 + (v15 & 0x7FFF);
        if (v3 >= v17 && v3 <= v18)
        {
          return 1;
        }

        if (v14 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v3 < v12 || v14 >= v6)
        {
          return result;
        }
      }

      v16 = *v14++;
      v12 = v16;
      v15 = v16;
    }

    while (v3 != v16);
  }

  return 1;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::AddSortedKeysWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (*a2 >= a2[1] || (a2[3] & **a2) != a2[2])
  {
    return 0;
  }

  v6 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
  v7 = v6;
  v8 = a1;
  v9 = *(a1 + 8);
  v10 = 2 * v9 + 10;
  v11 = (a1 + 10);
  if (v9 >= 3)
  {
    v12 = (a1 + v10);
    v11 = (a1 + 10);
    do
    {
      v13 = (v11 + (v9 & 0xFFFFFFFFFFFFFFFELL));
      v14 = *v13;
      if (v14 < 0)
      {
        v15 = *--v13;
        LOWORD(v14) = v15;
      }

      if (v13 <= v11)
      {
        break;
      }

      if (v14 == v6)
      {
        v11 = v13;
        break;
      }

      if (v14 > v6)
      {
        v12 = v13;
      }

      else
      {
        v11 = v13;
      }

      v9 = v12 - v11;
    }

    while (v12 > v11 && v9 > 2);
  }

  v70 = a1 + 10;
  v71 = a1;
  v18 = 0;
  result = 0;
  v72 = a1 + 136;
  v19 = v11;
  v20 = 1;
  v75 = a3;
  while (2)
  {
    v73 = v10;
    v74 = v19;
    LOWORD(v23) = 0;
    v24 = 0;
    v21 = v8 + v10;
    v25 = v11;
    while (1)
    {
      v27 = v24;
      v28 = v23;
      if (v25 >= v21)
      {
        break;
      }

LABEL_32:
      v23 = *v25;
      if (v23 > v7)
      {
        break;
      }

      v30 = 1;
LABEL_57:
      if ((v25 + 1) >= v21)
      {
        v44 = 1;
        v24 = 1;
        if (v27)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v41 = v25[1];
        v42 = v41 & 0x7FFF;
        v43 = v41 >= 0;
        v44 = 2;
        if (v43)
        {
          v44 = 1;
          v24 = 1;
        }

        else
        {
          v24 = v42 + 1;
        }

        if (v27)
        {
LABEL_64:
          v45 = v24 + v23;
          if (v27 + v28 < v23 || v45 < v28)
          {
            goto LABEL_77;
          }

          v47 = v27 - v24 + v28;
          v48 = v47 + v23;
          v49 = v28 > v23;
          if (v28 < v23)
          {
            LOWORD(v23) = v28;
          }

          if (!v49)
          {
            v47 = v27;
            v48 = v27 + v28;
          }

          if (v45 > v48)
          {
            v24 = v47 + v45 - v48;
          }

          else
          {
            v24 = v47;
          }
        }
      }

      v25 += v44;
      if (v24 + v23 >= v7)
      {
        v26 = v30;
      }

      else
      {
        v26 = 0;
      }

      if ((v26 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    while (2)
    {
      if (v27)
      {
        v29 = v27 + v28;
        v30 = 1;
        if (v29 < v7 || v7 + 1 < v28)
        {
          goto LABEL_55;
        }

        v31 = v28;
        v32 = v27 + v28 - 1;
        v33 = v28 > v7;
        if (v28 >= v7)
        {
          v28 = v7;
        }

        if (v31 > v7)
        {
          v27 = v32;
          v29 = v32 + v7;
        }

        if (v29 <= v7)
        {
          v27 = v27 + v7 + 1 - v29;
          goto LABEL_43;
        }
      }

      else
      {
        v27 = 1;
        v28 = v7;
LABEL_43:
        v33 = 1;
      }

      v34 = *a2 + 1;
      v35 = **a2;
      *a2 = v34;
      v36 = a2[3];
      if ((v36 & v35) != a2[2])
      {
        v53 = __si_assert_copy_extra_332();
        v54 = v53;
        v55 = "";
        if (v53)
        {
          v55 = v53;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 172, "(key & fMask) == fPfx", v55);
        goto LABEL_95;
      }

      if (v7 != (v35 & ~v36))
      {
        v56 = __si_assert_copy_extra_332();
        v57 = v56;
        v58 = "";
        if (v56)
        {
          v58 = v56;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v58);
        free(v57);
        if (!__valid_fs(-1))
        {
          v59 = 3072;
LABEL_103:
          *v59 = -559038737;
          abort();
        }

LABEL_100:
        v59 = 2989;
        goto LABEL_103;
      }

      if (v33)
      {
        ++result;
      }

      else if (v75)
      {
        v37 = result;
        v38 = v21;
        SIValueSet<unsigned long long>::SIValueSetInsert(*(v75 + 8), *v75 | v7);
        v21 = v38;
        result = v37;
        v34 = *a2;
      }

      if (v34 < a2[1])
      {
        v39 = *v34;
        v40 = a2[3];
        if ((v40 & v39) == a2[2])
        {
          v7 = v39 & ~v40;
          ++v20;
          ++v18;
          if (v25 < v21)
          {
            goto LABEL_32;
          }

          continue;
        }
      }

      break;
    }

    v30 = 0;
    ++v18;
LABEL_55:
    if (v25 < v21)
    {
      v23 = *v25;
      goto LABEL_57;
    }

LABEL_77:
    LOWORD(v23) = v28;
    v24 = v27;
LABEL_78:
    if (v24 == 1)
    {
      v50 = v74;
      if (v74 < v25)
      {
        v11 = v25;
        v8 = v71;
        v10 = v73;
LABEL_21:
        *v50 = v23;
        v19 = v50 + 1;
        goto LABEL_22;
      }

      if (v73 < 133)
      {
        v11 = (v72 - (v21 - v25));
        if (v21 != v25)
        {
          v51 = result;
          memmove((v72 - (v21 - v25)), v25, v21 - v25);
          result = v51;
          v50 = v74;
        }

        v10 = 136;
        v8 = v71;
        goto LABEL_21;
      }

LABEL_118:
      v67 = __si_assert_copy_extra_332();
      v68 = v67;
      if (v67)
      {
        v69 = v67;
      }

      else
      {
        v69 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v69);
      free(v68);
      goto LABEL_100;
    }

    if (v24)
    {
      if (v74 + 1 < v25)
      {
        v11 = v25;
        v8 = v71;
        v10 = v73;
        goto LABEL_91;
      }

      if (v73 >= 133)
      {
        goto LABEL_118;
      }

      v11 = (v72 - (v21 - v25));
      if (v21 != v25)
      {
        v52 = result;
        memmove((v72 - (v21 - v25)), v25, v21 - v25);
        result = v52;
      }

      v10 = 136;
      v8 = v71;
LABEL_91:
      *v74 = v23;
      v74[1] = (v24 - 1) | 0x8000;
      v19 = v74 + 2;
LABEL_22:
      v21 = v8 + v10;
      if (v19 + v8 + v10 - v11 + 4 <= v72)
      {
        v22 = v30;
      }

      else
      {
        v22 = 0;
      }

      if ((v22 & 1) == 0)
      {
        goto LABEL_105;
      }

      continue;
    }

    break;
  }

  v11 = v25;
  v8 = v71;
  v19 = v74;
LABEL_105:
  if (!v30)
  {
    if (v18 == v20)
    {
      goto LABEL_112;
    }

    v65 = __si_assert_copy_extra_332();
    v54 = v65;
    v66 = "";
    if (v65)
    {
      v66 = v65;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v66);
LABEL_95:
    free(v54);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v18 >= v20)
  {
    v60 = __si_assert_copy_extra_332();
    v54 = v60;
    v61 = "";
    if (v60)
    {
      v61 = v60;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v61);
    goto LABEL_95;
  }

LABEL_112:
  v62 = v21 - v11;
  if (v21 > v11)
  {
    v63 = v8;
    v64 = result;
    memmove(v19, v11, v21 - v11);
    result = v64;
    v8 = v63;
    LODWORD(v19) = v19 + v62;
  }

  *(v8 + 8) = (v19 - v70) >> 1;
  return result;
}

BOOL SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::AddKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LOWORD(v3) = a3 & a2;
  v72 = a3 & a2;
  v4 = *(a1 + 8);
  v5 = 2 * v4 + 10;
  v6 = (a1 + 10);
  if (v4 >= 3)
  {
    v7 = (a1 + v5);
    v6 = (a1 + 10);
    do
    {
      v8 = (v6 + (v4 & 0xFFFFFFFFFFFFFFFELL));
      v9 = *v8;
      if (v9 < 0)
      {
        v10 = *--v8;
        LOWORD(v9) = v10;
      }

      if (v8 <= v6)
      {
        break;
      }

      if (v9 == v3)
      {
        v6 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v6 = v8;
      }

      v4 = v7 - v6;
    }

    while (v7 > v6 && v4 > 2);
  }

  v66 = a1 + 10;
  v12 = 0;
  v13 = 0;
  v14 = a1 + 136;
  v15 = &v72;
  v16 = v6;
  v17 = 1;
  v68 = a1 + 136;
  v69 = a1;
  while (2)
  {
    v20 = 0;
    v21 = 0;
    v18 = a1 + v5;
    v22 = v6;
    while (2)
    {
      if (v22 >= v18)
      {
        v15 += 4;
        v35 = v15 - 4;
        if (!v21)
        {
          goto LABEL_62;
        }

LABEL_50:
        v36 = v21 + v20;
        if (v36 < v3 || v3 + 1 < v20)
        {
          v34 = 1;
          v15 = v35;
          goto LABEL_70;
        }

        v37 = v20;
        v38 = v21 + v20 - 1;
        v39 = v38 + v3;
        if (v20 > v3)
        {
          v20 = v3;
        }

        if (v37 <= v3)
        {
          v40 = 0;
        }

        else
        {
          v21 = v38;
          v40 = 1;
        }

        if (v37 > v3)
        {
          v36 = v39;
        }

        if (v36 > v3)
        {
          v41 = v40;
        }

        else
        {
          v21 = v21 + v3 + 1 - v36;
          v41 = 1;
        }

        while (*v35 == v3)
        {
          v13 += v41;
          if (v35 >= &v72)
          {
            v34 = 0;
            v12 = (v12 + 1);
            goto LABEL_70;
          }

          v42 = *v15;
          v15 += 4;
          LOWORD(v3) = v42;
          ++v17;
          v12 = (v12 + 1);
          v35 = v15 - 4;
          if (v21)
          {
            goto LABEL_50;
          }

LABEL_62:
          v20 = v3;
          v21 = 1;
          v41 = 1;
        }

LABEL_112:
        v53 = __si_assert_copy_extra_332();
        v54 = v53;
        v55 = "";
        if (v53)
        {
          v55 = v53;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v55);
        goto LABEL_115;
      }

      v24 = *v22;
      if (v24 <= v3)
      {
        v34 = 1;
        goto LABEL_72;
      }

      v25 = v15 + 4;
      v26 = v12;
      while (1)
      {
        v12 = v26;
        v15 = v25;
        v27 = v25 - 4;
        if (!v21)
        {
          v20 = v3;
          v21 = 1;
          v33 = 1;
          goto LABEL_45;
        }

        v28 = v21 + v20;
        if (v28 < v3 || v3 + 1 < v20)
        {
          break;
        }

        v29 = v20;
        v30 = v21 + v20 - 1;
        v31 = v30 + v3;
        if (v20 > v3)
        {
          v20 = v3;
        }

        if (v29 <= v3)
        {
          v32 = 0;
        }

        else
        {
          v21 = v30;
          v32 = 1;
        }

        if (v29 > v3)
        {
          v28 = v31;
        }

        if (v28 > v3)
        {
          v33 = v32;
        }

        else
        {
          v21 = v21 + v3 + 1 - v28;
          v33 = 1;
        }

LABEL_45:
        if (*v27 != v3)
        {
          goto LABEL_112;
        }

        v13 += v33;
        if (v27 >= &v72)
        {
          v34 = 0;
          v12 = (v12 + 1);
          goto LABEL_70;
        }

        v25 = v15 + 4;
        v3 = *v15;
        ++v17;
        v26 = (v12 + 1);
        if (v24 <= v3)
        {
          v34 = 1;
          v12 = (v12 + 1);
          goto LABEL_70;
        }
      }

      v34 = 1;
      v15 = v27;
LABEL_70:
      if (v22 >= v18)
      {
        goto LABEL_97;
      }

      v24 = *v22;
LABEL_72:
      if ((v22 + 1) >= v18)
      {
        v45 = 1;
        v46 = 1;
        if (!v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v43 = v22[1];
        v44 = v43 >= 0;
        if (v43 < 0)
        {
          v45 = 2;
        }

        else
        {
          v45 = 1;
        }

        if (v44)
        {
          v46 = 1;
        }

        else
        {
          v46 = (v22[1] & 0x7FFF) + 1;
        }

        if (!v21)
        {
          goto LABEL_24;
        }
      }

      v47 = v46 + v24;
      if (v21 + v20 < v24 || v47 < v20)
      {
LABEL_97:
        LOWORD(v24) = v20;
        v46 = v21;
        break;
      }

      v49 = v21 - v46 + v20 + v24;
      v50 = v20 > v24;
      if (v20 < v24)
      {
        LOWORD(v24) = v20;
      }

      if (v50)
      {
        v21 = v21 - v46 + v20;
        v51 = v49;
      }

      else
      {
        v51 = v21 + v20;
      }

      if (v47 > v51)
      {
        v46 = v21 + v47 - v51;
      }

      else
      {
        v46 = v21;
      }

LABEL_24:
      v22 += v45;
      if (v46 + v24 >= v3)
      {
        v23 = v34;
      }

      else
      {
        v23 = 0;
      }

      v20 = v24;
      v21 = v46;
      if (v23)
      {
        continue;
      }

      break;
    }

    if (v46 == 1)
    {
      if (v16 < v22)
      {
        v6 = v22;
      }

      else
      {
        if (v5 >= 133)
        {
LABEL_132:
          v63 = __si_assert_copy_extra_332();
          v64 = v63;
          if (v63)
          {
            v65 = v63;
          }

          else
          {
            v65 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v65);
          free(v64);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        v6 = (v14 - (v18 - v22));
        if (v18 != v22)
        {
          v52 = v16;
          v70 = (v14 - (v18 - v22));
          memmove(v70, v22, v18 - v22);
          a1 = v69;
          v6 = v70;
          v14 = v68;
          v16 = v52;
        }

        v5 = 136;
      }

      *v16++ = v24;
      goto LABEL_19;
    }

    if (v46)
    {
      if (v16 + 1 < v22)
      {
        v6 = v22;
        goto LABEL_111;
      }

      if (v5 >= 133)
      {
        goto LABEL_132;
      }

      v6 = (v14 - (v18 - v22));
      if (v18 != v22)
      {
        v67 = v16;
        v71 = (v14 - (v18 - v22));
        memmove(v71, v22, v18 - v22);
        a1 = v69;
        v6 = v71;
        v16 = v67;
        v14 = v68;
      }

      v5 = 136;
LABEL_111:
      *v16 = v24;
      v16[1] = (v46 - 1) | 0x8000;
      v16 += 2;
LABEL_19:
      v18 = a1 + v5;
      if (v16 + a1 + v5 - v6 + 4 <= v14)
      {
        v19 = v34;
      }

      else
      {
        v19 = 0;
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_119;
      }

      continue;
    }

    break;
  }

  v6 = v22;
LABEL_119:
  if (!v34)
  {
    if (v12 == v17)
    {
      goto LABEL_126;
    }

    v61 = __si_assert_copy_extra_332();
    v54 = v61;
    v62 = "";
    if (v61)
    {
      v62 = v61;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v62);
LABEL_115:
    free(v54);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v12 >= v17)
  {
    v56 = __si_assert_copy_extra_332();
    v54 = v56;
    v57 = "";
    if (v56)
    {
      v57 = v56;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v57);
    goto LABEL_115;
  }

LABEL_126:
  v58 = v18 - v6;
  if (v18 > v6)
  {
    v59 = v16;
    memmove(v16, v6, v18 - v6);
    a1 = v69;
    LODWORD(v16) = v59 + v58;
  }

  *(a1 + 8) = (v16 - v66) >> 1;
  return v13 != 0;
}

void *SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::valueIterator(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_1F42810F8;
  a3[1] = a1 + 12;
  a3[2] = a1 + 12 + 4 * v3;
  a3[3] = 0;
  a3[4] = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::RLEKeyIterator::nextKey(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 28);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(a1 + 24) + 1;
    *(a1 + 24) = v4;
    *(a1 + 28) = v3;
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v4 = *v5;
    *(a1 + 8) = v5 + 1;
    *(a1 + 24) = v4;
    if ((v5 + 1) < v6)
    {
      v7 = v5[1];
      if ((v7 & 0x80000000) != 0)
      {
        *(a1 + 8) = v5 + 2;
        *(a1 + 28) = v7 & 0x7FFFFFFF;
      }
    }
  }

  return v1 | v4;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 4);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 4 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 12, v4);
}

void SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::Apply(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 12);
  v14 = v9 + 12 + 4 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[8 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v18 = v13 + 1;
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      if (*v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }

      if (*v18 < 0)
      {
        v16 = *v18 & 0x7FFFFFFF;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::RemoveKey(uint64_t a1, int a2, int a3)
{
  v3 = a2 & a3 & 0x7FFFFFFF;
  v4 = a1 + 12;
  v5 = *(a1 + 8);
  v6 = a1 + 12 + 4 * v5;
  if (v5 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 12 + 4 * v5;
    v7 = (a1 + 12);
    do
    {
      v10 = &v7[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x80000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v7)
      {
        break;
      }

      if (v11 == v3)
      {
        v7 = v10;
        if (v10 >= v6)
        {
          return 0;
        }

        goto LABEL_17;
      }

      if (v11 > v3)
      {
        v9 = v10;
      }

      else
      {
        v7 = v10;
      }

      v8 = (v9 - v7) >> 2;
    }

    while (v9 > v7 && v8 > 2);
    if (v7 >= v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = (a1 + 12);
    if (v4 >= v6)
    {
      return 0;
    }
  }

LABEL_17:
  v14 = v7 + 1;
  v15 = *v7;
  if (v3 == v15)
  {
    if (v14 >= v6)
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

  while (1)
  {
    if ((v15 & 0x80000000) == 0)
    {
      v17 = 0;
      if (v3 < v15 || v14 >= v6)
      {
        return v17;
      }

      goto LABEL_20;
    }

    v18 = *(v14 - 2);
    v19 = v18 + (v15 & 0x7FFFFFFF);
    if (v3 > v18 && v3 <= v19)
    {
      break;
    }

    if (v14 >= v6)
    {
      return 0;
    }

LABEL_20:
    v16 = *v14++;
    v15 = v16;
    if (v3 == v16)
    {
      v7 = v14 - 1;
      if (v14 >= v6)
      {
        goto LABEL_43;
      }

LABEL_35:
      v21 = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        v22 = v6 - v14;
        v23 = a1;
        v24 = v7;
LABEL_39:
        memmove(v24, v14, v22);
        --*(v23 + 8);
        return 1;
      }

      *v7 = v15 + 1;
      if ((v21 & 0x7FFFFFFF) == 1)
      {
        v25 = v7 + 2;
        v22 = v6 - v25;
        v23 = a1;
        v24 = v14;
        v14 = v25;
        goto LABEL_39;
      }

      v29 = v21 - 1;
LABEL_47:
      *v14 = v29 | 0x80000000;
      return 1;
    }
  }

  v26 = v14 - 1;
  if ((v15 & 0x7FFFFFFF) != 1)
  {
    if (v3 == v19)
    {
      *v26 = (v15 - 1) | 0x80000000;
      return 1;
    }

    if (v3 == v18 + 1)
    {
      *v26 = v3 + 1;
      if (v19 == v3 + 1)
      {
        return 1;
      }

      v30 = *(a1 + 8);
      if (v30 < 0x3F)
      {
        v31 = (v14 - v4) >> 2;
        if (v30 != v31)
        {
          v32 = a1;
          v33 = v14;
          memmove(v14 + 1, v14, 4 * (v30 - v31));
          v14 = v33;
          a1 = v32;
          LODWORD(v30) = *(v32 + 8);
        }

        *(a1 + 8) = v30 + 1;
        v29 = v19 + ~v3;
        goto LABEL_47;
      }
    }

    else
    {
      *(v14 - 1) = (v3 + ~v18) | 0x80000000;
      v34 = *(a1 + 8);
      if (v34 < 0x3F)
      {
        v35 = (v14 - v4) >> 2;
        if (v34 != v35)
        {
          v36 = a1;
          v37 = v14;
          memmove(v14 + 1, v14, 4 * (v34 - v35));
          v14 = v37;
          a1 = v36;
          LODWORD(v34) = *(v36 + 8);
        }

        *(a1 + 8) = v34 + 1;
        *v14 = v3 + 1;
        v38 = v19 + ~v3;
        if (!v38)
        {
          return 1;
        }

        v39 = *(a1 + 8);
        if (v39 < 0x3F)
        {
          v40 = (v26 - v4 + 8) >> 2;
          if (v39 != v40)
          {
            v41 = a1;
            memmove(v26 + 3, v26 + 2, 4 * (v39 - v40));
            a1 = v41;
            LODWORD(v39) = *(v41 + 8);
          }

          *(a1 + 8) = v39 + 1;
          v26[2] = v38 | 0x80000000;
          return 1;
        }
      }
    }

    v42 = __si_assert_copy_extra_332();
    v43 = v42;
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 649, v44);
    free(v43);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (v14 < v6)
  {
    v27 = a1;
    memmove(v14 - 1, v14, v6 - v14);
    a1 = v27;
    v5 = *(v27 + 8);
  }

LABEL_43:
  *(a1 + 8) = v5 - 1;
  return 1;
}

unint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::CloseKey(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFFFFFF;
  v5 = a1 + 12;
  v6 = a1 + 12 + 4 * v3;
  v7 = (a1 + 12);
  if (v3 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 12 + 4 * v3;
    v7 = (a1 + 12);
    do
    {
      v10 = &v7[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x80000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v7)
      {
        break;
      }

      if (v11 == v4)
      {
        v7 = v10;
        if (v10 < v6)
        {
          goto LABEL_16;
        }

        goto LABEL_30;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v7 = v10;
      }

      v8 = (v9 - v7) >> 2;
    }

    while (v9 > v7 && v8 > 2);
  }

  if (v7 >= v6)
  {
LABEL_30:
    result = *(v5 + 4 * (v3 - 1));
    if ((result & 0x80000000) != 0)
    {
      return *(v5 + 4 * (v3 - 2)) + (result & 0x7FFFFFFF);
    }
  }

  else
  {
LABEL_16:
    v14 = v7;
    while (1)
    {
      v18 = *v14++;
      result = v18;
      if (v4 == v18)
      {
        return a2 & a3 & 0x7FFFFFFF;
      }

      if ((result & 0x80000000) != 0)
      {
        v15 = *(v7 - 1);
        if (v4 >= v15 && v4 <= v15 + (result & 0x7FFFFFFF))
        {
          return a2 & a3 & 0x7FFFFFFF;
        }
      }

      else if (v4 < result)
      {
        return result;
      }

      v7 = v14;
      if (v14 >= v6)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

BOOL SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::AddKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 & a2;
  v77 = a3 & a2;
  v4 = (a1 + 12);
  v5 = *(a1 + 8);
  v6 = 4 * v5 + 12;
  v71 = a1 + 12;
  if (v5 >= 3)
  {
    v7 = (a1 + v6);
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x80000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = v7 - v4;
    }

    while (v7 > v4 && v5 > 2);
  }

  v12 = 0;
  v13 = 0;
  v14 = a1 + 264;
  v15 = &v77;
  v16 = v4;
  v17 = 1;
  v73 = a1 + 264;
  v74 = a1;
  while (2)
  {
    v20 = 0;
    v21 = 0;
    v18 = a1 + v6;
    v22 = v4;
    while (1)
    {
      if (v22 >= v18)
      {
        v15 += 2;
        v36 = (v15 - 2);
        if (!v21)
        {
          while (1)
          {
            v20 = v3;
            v21 = 1;
            v43 = 1;
LABEL_67:
            if (v3 != *v36)
            {
              break;
            }

            v13 += v43;
            if (v36 >= &v77)
            {
              v35 = 0;
              v26 = (v12 + 1);
              if (v22 >= v18)
              {
                goto LABEL_107;
              }

              goto LABEL_80;
            }

            v44 = *v15;
            v15 += 2;
            v3 = v44;
            ++v17;
            v12 = (v12 + 1);
            v36 = (v15 - 2);
            if (v21)
            {
              goto LABEL_52;
            }
          }

LABEL_123:
          v58 = __si_assert_copy_extra_332();
          v59 = v58;
          v60 = "";
          if (v58)
          {
            v60 = v58;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v60);
          goto LABEL_126;
        }

LABEL_52:
        v37 = v3 + 1;
        v38 = v21 + v20;
        if (v38 >= v3 && v37 >= v20)
        {
          v40 = v20 > v3;
          if (v20 <= v3)
          {
            v41 = 0;
          }

          else
          {
            v20 = v3;
            v21 = v38 - 1;
            v41 = 1;
          }

          if (v40)
          {
            v38 = v38 - 1 + v3;
          }

          v42 = v21 + v37 - v38;
          if (v38 > v3)
          {
            v43 = v41;
          }

          else
          {
            v21 = v42;
            v43 = 1;
          }

          goto LABEL_67;
        }

        v35 = 1;
        v15 = v36;
        v26 = v12;
        if (v22 >= v18)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v24 = *v22;
        if (v3 >= *v22)
        {
          v35 = 1;
          goto LABEL_81;
        }

        v25 = v15 + 2;
        while (1)
        {
          v26 = v12;
          v15 = v25;
          v27 = (v25 - 2);
          if (v21)
          {
            v28 = v3 + 1;
            v29 = v21 + v20;
            if (v29 < v3 || v28 < v20)
            {
              v35 = 1;
              v15 = v27;
              if (v22 >= v18)
              {
                goto LABEL_107;
              }

              goto LABEL_80;
            }

            v31 = v20 > v3;
            if (v20 <= v3)
            {
              v32 = 0;
            }

            else
            {
              v20 = v3;
              v21 = v29 - 1;
              v32 = 1;
            }

            if (v31)
            {
              v29 = v29 - 1 + v3;
            }

            v33 = v21 + v28 - v29;
            if (v29 > v3)
            {
              v34 = v32;
            }

            else
            {
              v21 = v33;
              v34 = 1;
            }
          }

          else
          {
            v20 = v3;
            v21 = 1;
            v34 = 1;
          }

          if (v3 != *v27)
          {
            goto LABEL_123;
          }

          v13 += v34;
          if (v27 >= &v77)
          {
            break;
          }

          v25 = v15 + 2;
          v3 = *v15;
          ++v17;
          v12 = (v12 + 1);
          if (v24 <= *v15)
          {
            v35 = 1;
            goto LABEL_77;
          }
        }

        v35 = 0;
LABEL_77:
        v26 = (v26 + 1);
        if (v22 >= v18)
        {
LABEL_107:
          v12 = v26;
          goto LABEL_108;
        }
      }

LABEL_80:
      v24 = *v22;
      v12 = v26;
LABEL_81:
      if ((v22 + 1) < v18)
      {
        break;
      }

      v48 = 1;
      v49 = 1;
      if (v21)
      {
        goto LABEL_91;
      }

LABEL_24:
      v22 += v48;
      if (v49 + v24 >= v3)
      {
        v23 = v35;
      }

      else
      {
        v23 = 0;
      }

      v20 = v24;
      v21 = v49;
      if ((v23 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    v45 = v22[1];
    v46 = v45 & 0x7FFFFFFF;
    v47 = v45 >= 0;
    if (v45 < 0)
    {
      v48 = 2;
    }

    else
    {
      v48 = 1;
    }

    if (v47)
    {
      v49 = 1;
    }

    else
    {
      v49 = v46 + 1;
    }

    if (!v21)
    {
      goto LABEL_24;
    }

LABEL_91:
    v50 = v49 + v24;
    v51 = v21 + v20;
    if (v51 >= v24 && v50 >= v20)
    {
      v53 = v21 - v49 + v20 + v24;
      v54 = v20 > v24;
      if (v20 < v24)
      {
        v24 = v20;
      }

      if (v54)
      {
        v55 = v21 - v49 + v20;
      }

      else
      {
        v55 = v21;
      }

      if (v54)
      {
        v56 = v53;
      }

      else
      {
        v56 = v51;
      }

      if (v50 > v56)
      {
        v49 = v55 + v50 - v56;
      }

      else
      {
        v49 = v55;
      }

      goto LABEL_24;
    }

LABEL_108:
    v24 = v20;
    v49 = v21;
LABEL_109:
    if (v49 == 1)
    {
      if (v16 < v22)
      {
        v4 = v22;
      }

      else
      {
        if (v6 >= 257)
        {
LABEL_143:
          v68 = __si_assert_copy_extra_332();
          v69 = v68;
          if (v68)
          {
            v70 = v68;
          }

          else
          {
            v70 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v70);
          free(v69);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        v4 = (v14 - (v18 - v22));
        if (v18 != v22)
        {
          v57 = v16;
          v75 = (v14 - (v18 - v22));
          memmove(v75, v22, v18 - v22);
          a1 = v74;
          v4 = v75;
          v14 = v73;
          v16 = v57;
        }

        v6 = 264;
      }

      *v16++ = v24;
      goto LABEL_19;
    }

    if (v49)
    {
      if (v16 + 1 < v22)
      {
        v4 = v22;
        goto LABEL_122;
      }

      if (v6 >= 257)
      {
        goto LABEL_143;
      }

      v4 = (v14 - (v18 - v22));
      if (v18 != v22)
      {
        v72 = v16;
        v76 = (v14 - (v18 - v22));
        memmove(v76, v22, v18 - v22);
        a1 = v74;
        v4 = v76;
        v16 = v72;
        v14 = v73;
      }

      v6 = 264;
LABEL_122:
      *v16 = v24;
      v16[1] = (v49 - 1) | 0x80000000;
      v16 += 2;
LABEL_19:
      v18 = a1 + v6;
      if (v16 + a1 + v6 - v4 + 8 <= v14)
      {
        v19 = v35;
      }

      else
      {
        v19 = 0;
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_130;
      }

      continue;
    }

    break;
  }

  v4 = v22;
LABEL_130:
  if (!v35)
  {
    if (v12 == v17)
    {
      goto LABEL_137;
    }

    v66 = __si_assert_copy_extra_332();
    v59 = v66;
    v67 = "";
    if (v66)
    {
      v67 = v66;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v67);
LABEL_126:
    free(v59);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v12 >= v17)
  {
    v61 = __si_assert_copy_extra_332();
    v59 = v61;
    v62 = "";
    if (v61)
    {
      v62 = v61;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v62);
    goto LABEL_126;
  }

LABEL_137:
  v63 = v18 - v4;
  if (v18 > v4)
  {
    v64 = v16;
    memmove(v16, v4, v18 - v4);
    a1 = v74;
    v16 = (v64 + v63);
  }

  *(a1 + 8) = (v16 - v71) >> 2;
  return v13 != 0;
}

void *SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::valueIterator(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_1F4281058;
  a3[1] = a1 + 16;
  a3[2] = a1 + 16 + 8 * v3;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RLEKeyIterator::nextKey(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  if (v2)
  {
    v3 = v2 - 1;
    v4 = a1[3] + 1;
    a1[3] = v4;
    a1[4] = v3;
    return v4 | v1;
  }

  else
  {
    v6 = a1[1];
    v7 = a1[2];
    v8 = *v6;
    a1[1] = v6 + 1;
    a1[3] = v8;
    if ((v6 + 1) < v7 && (v9 = v6[1], v9 < 0))
    {
      a1[1] = v6 + 2;
      a1[4] = v9 & 0x7FFFFFFFFFFFFFFFLL;
      return v8 | v1;
    }

    else
    {
      return v8 | v1;
    }
  }
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 8);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 8 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 16, v4);
}

void SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::Apply(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 16);
  v14 = v9 + 16 + 8 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[8 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v18 = v13 + 1;
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      if (*v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }

      if (*v18 < 0)
      {
        v16 = *v18 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
  v4 = a1 + 16;
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  if (v5 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 16 + 8 * v5;
    v7 = (a1 + 16);
    do
    {
      v10 = &v7[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x8000000000000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v7)
      {
        break;
      }

      if (v11 == v3)
      {
        v7 = v10;
        if (v10 >= v6)
        {
          return 0;
        }

        goto LABEL_17;
      }

      if (v11 > v3)
      {
        v9 = v10;
      }

      else
      {
        v7 = v10;
      }

      v8 = (v9 - v7) >> 3;
    }

    while (v9 > v7 && v8 > 2);
    if (v7 >= v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = (a1 + 16);
    if (v4 >= v6)
    {
      return 0;
    }
  }

LABEL_17:
  v14 = v7 + 1;
  v15 = *v7;
  if (*v7 == v3)
  {
    if (v14 >= v6)
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

  while (1)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      if (v15 > v3 || v14 >= v6)
      {
        return v17;
      }

      goto LABEL_20;
    }

    v18 = *(v14 - 2);
    v19 = v18 + (v15 & 0x7FFFFFFFFFFFFFFFLL);
    if (v3 > v18 && v3 <= v19)
    {
      break;
    }

    if (v14 >= v6)
    {
      return 0;
    }

LABEL_20:
    v16 = *v14++;
    v15 = v16;
    if (v16 == v3)
    {
      v7 = v14 - 1;
      if (v14 >= v6)
      {
        goto LABEL_43;
      }

LABEL_35:
      v21 = *v14;
      if ((*v14 & 0x8000000000000000) == 0)
      {
        v22 = v6 - v14;
        v23 = a1;
        v24 = v7;
LABEL_39:
        memmove(v24, v14, v22);
        --*(v23 + 8);
        return 1;
      }

      *v7 = v3 + 1;
      if ((v21 & 0x7FFFFFFFFFFFFFFFLL) == 1)
      {
        v25 = v7 + 2;
        v22 = v6 - v25;
        v23 = a1;
        v24 = v14;
        v14 = v25;
        goto LABEL_39;
      }

      v29 = (v21 - 1) | 0x8000000000000000;
LABEL_47:
      *v14 = v29;
      return 1;
    }
  }

  v26 = v14 - 1;
  if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 1)
  {
    if (v3 == v19)
    {
      *v26 = (v15 - 1) | 0x8000000000000000;
      return 1;
    }

    if (v3 == v18 + 1)
    {
      *v26 = v3 + 1;
      v30 = v19 + ~v3;
      if (!v30)
      {
        return 1;
      }

      v31 = *(a1 + 8);
      if (v31 < 0x3F)
      {
        v32 = (v14 - v4) >> 3;
        if (v31 != v32)
        {
          v33 = a1;
          v34 = v14;
          memmove(v14 + 1, v14, 8 * (v31 - v32));
          v14 = v34;
          a1 = v33;
          v32 = *(v33 + 8);
        }

        *(a1 + 8) = v32 + 1;
        v29 = v30 | 0x8000000000000000;
        goto LABEL_47;
      }
    }

    else
    {
      *(v14 - 1) = (v3 + ~v18) | 0x8000000000000000;
      v35 = *(a1 + 8);
      if (v35 < 0x3F)
      {
        v36 = (v14 - v4) >> 3;
        if (v35 != v36)
        {
          v37 = a1;
          v38 = v14;
          memmove(v14 + 1, v14, 8 * (v35 - v36));
          v14 = v38;
          a1 = v37;
          v36 = *(v37 + 8);
        }

        *(a1 + 8) = v36 + 1;
        *v14 = v3 + 1;
        v39 = v19 + ~v3;
        if (!v39)
        {
          return 1;
        }

        v40 = *(a1 + 8);
        if (v40 < 0x3F)
        {
          v41 = (v26 - v4 + 16) >> 3;
          if (v40 != v41)
          {
            v42 = a1;
            memmove(v26 + 3, v26 + 2, 8 * (v40 - v41));
            a1 = v42;
            v41 = *(v42 + 8);
          }

          *(a1 + 8) = v41 + 1;
          v26[2] = v39 | 0x8000000000000000;
          return 1;
        }
      }
    }

    v43 = __si_assert_copy_extra_332();
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 649, v45);
    free(v44);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  if (v14 < v6)
  {
    v27 = a1;
    memmove(v14 - 1, v14, v6 - v14);
    a1 = v27;
    v5 = *(v27 + 8);
  }

LABEL_43:
  *(a1 + 8) = v5 - 1;
  return 1;
}

unint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::CloseKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
  v5 = (a1 + 16);
  v6 = a1 + 16 + 8 * v3;
  if (v3 >= 3)
  {
    v7 = a1 + 16 + 8 * v3;
    do
    {
      v8 = &v5[v3 >> 1];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v5)
      {
        break;
      }

      if (v9 == v4)
      {
        v5 = v8;
        if (v8 < v6)
        {
          goto LABEL_16;
        }

        goto LABEL_30;
      }

      if (v9 > v4)
      {
        v7 = v8;
      }

      else
      {
        v5 = v8;
      }

      v3 = (v7 - v5) >> 3;
    }

    while (v7 > v5 && v3 > 2);
  }

  if (v5 >= v6)
  {
LABEL_30:
    result = *(v6 - 8);
    if ((result & 0x8000000000000000) != 0)
    {
      return *(v6 - 16) + (result & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
LABEL_16:
    v12 = v5;
    while (1)
    {
      v16 = *v12++;
      result = v16;
      if (v16 == v4)
      {
        return a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        v13 = *(v5 - 1);
        if (v4 >= v13 && v4 <= v13 + (result & 0x7FFFFFFFFFFFFFFFLL))
        {
          return a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else if (result > v4)
      {
        return result;
      }

      v5 = v12;
      if (v12 >= v6)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::ContainsKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 16 + 8 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        if (v8 < v6)
        {
          goto LABEL_15;
        }

        return 0;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 3;
      if (v7 > v4)
      {
        v11 = v5 >= 2;
        v12 = v5 == 2;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }
    }

    while (!v12 && v11);
  }

  if (v4 >= v6)
  {
    return 0;
  }

LABEL_15:
  v13 = *v4;
  if (*v4 != v3)
  {
    v15 = v4 + 1;
    do
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        v17 = *(v15 - 2);
        v18 = v17 + (v13 & 0x7FFFFFFFFFFFFFFFLL);
        if (v3 >= v17)
        {
          v19 = v3 >= v18;
          v20 = v3 == v18;
        }

        else
        {
          v19 = 1;
          v20 = 0;
        }

        if (v20 || !v19)
        {
          return 1;
        }

        if (v15 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v13 > v3 || v15 >= v6)
        {
          return result;
        }
      }

      v16 = *v15++;
      v13 = v16;
    }

    while (v16 != v3);
  }

  return 1;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedKeysWithContext(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  if (*a2 >= a2[1] || (a2[3] & **a2) != a2[2])
  {
    return 0;
  }

  v5 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
  v6 = v5;
  v7 = a1;
  v8 = *(a1 + 8);
  v9 = a1 + 16 + 8 * v8;
  if (v8 >= 3)
  {
    v13 = a1 + 16 + 8 * v8;
    v10 = (a1 + 16);
    v11 = a3;
    do
    {
      v14 = &v10[v8 >> 1];
      v15 = *v14;
      if ((*v14 & 0x8000000000000000) != 0)
      {
        v16 = *--v14;
        v15 = v16;
      }

      if (v14 <= v10)
      {
        break;
      }

      if (v15 == v5)
      {
        v10 = v14;
        break;
      }

      if (v15 > v5)
      {
        v13 = v14;
      }

      else
      {
        v10 = v14;
      }

      v8 = (v13 - v10) >> 3;
    }

    while (v13 > v10 && v8 > 2);
  }

  else
  {
    v10 = (a1 + 16);
    v11 = a3;
  }

  v68 = a1 + 16;
  v69 = a1;
  v18 = 0;
  result = 0;
  v19 = v10;
  v20 = 1;
  v70 = v7 + 520;
  while (2)
  {
    v71 = v19;
    v22 = 0;
    v23 = 0;
    v24 = v10;
    while (1)
    {
      v26 = v23;
      v27 = v22;
      if (v24 >= v9)
      {
        break;
      }

LABEL_33:
      v22 = *v24;
      if (v6 < *v24)
      {
        break;
      }

      v28 = 1;
LABEL_61:
      if ((v24 + 1) >= v9)
      {
        v41 = 1;
        v23 = 1;
        if (v26)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v40 = v24[1];
        if (v40 < 0)
        {
          v41 = 2;
        }

        else
        {
          v41 = 1;
        }

        if (v40 < 0)
        {
          v23 = (v40 & 0x7FFFFFFFFFFFFFFFLL) + 1;
        }

        else
        {
          v23 = 1;
        }

        if (v26)
        {
LABEL_71:
          if (v26 + v27 < v22)
          {
            goto LABEL_81;
          }

          v42 = v23 + v22;
          if (v23 + v22 < v27)
          {
            goto LABEL_81;
          }

          v23 = v26 + v27 - v23;
          v43 = v27 > v22;
          if (v27 < v22)
          {
            v22 = v27;
          }

          if (!v43)
          {
            v23 = v26;
          }

          if (v42 > v23 + v22)
          {
            v23 = v42 - v22;
          }
        }
      }

      v24 += v41;
      if (v6 <= v23 + v22)
      {
        v25 = v28;
      }

      else
      {
        v25 = 0;
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_82;
      }
    }

    while (2)
    {
      if (v26)
      {
        v28 = 1;
        if (v26 + v27 < v6)
        {
          goto LABEL_59;
        }

        v29 = v6 + 1;
        if (v6 + 1 < v27)
        {
          goto LABEL_59;
        }

        v30 = v26 + v27 - 1;
        v31 = v27 > v6;
        v32 = v27 > v6;
        if (v27 >= v6)
        {
          v27 = v6;
        }

        if (!v31)
        {
          v30 = v26;
        }

        if (v29 > v30 + v27)
        {
          v26 = v29 - v27;
        }

        else
        {
          v26 = v30;
        }

        v33 = v29 > v30 + v27 || v32;
      }

      else
      {
        v26 = 1;
        v27 = v6;
        v33 = 1;
      }

      v34 = *a2 + 1;
      v35 = **a2;
      *a2 = v34;
      v36 = a2[3];
      if ((v36 & v35) != a2[2])
      {
        v52 = __si_assert_copy_extra_332();
        v53 = v52;
        v54 = "";
        if (v52)
        {
          v54 = v52;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 172, "(key & fMask) == fPfx", v54);
        free(v53);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      if ((v35 & ~v36) != v6)
      {
        v55 = __si_assert_copy_extra_332();
        v56 = v55;
        v57 = "";
        if (v55)
        {
          v57 = v55;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v57);
        goto LABEL_103;
      }

      if (v33)
      {
        ++result;
      }

      else if (v11)
      {
        v37 = result;
        SIValueSet<unsigned long long>::SIValueSetInsert(*(v11 + 8), *v11 | v6);
        result = v37;
        v11 = a3;
        v34 = *a2;
      }

      if (v34 < a2[1])
      {
        v38 = *v34;
        v39 = a2[3];
        if ((v39 & v38) == a2[2])
        {
          v6 = v38 & ~v39;
          ++v20;
          ++v18;
          if (v24 < v9)
          {
            goto LABEL_33;
          }

          continue;
        }
      }

      break;
    }

    v28 = 0;
    ++v18;
LABEL_59:
    if (v24 < v9)
    {
      v22 = *v24;
      goto LABEL_61;
    }

LABEL_81:
    v22 = v27;
    v23 = v26;
LABEL_82:
    v44 = v23 - 1;
    if (v23 == 1)
    {
      v45 = v70;
      if (v71 < v24)
      {
        v10 = v24;
      }

      else
      {
        if (v9 + 16 > v70)
        {
LABEL_122:
          v65 = __si_assert_copy_extra_332();
          v66 = v65;
          if (v65)
          {
            v67 = v65;
          }

          else
          {
            v67 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v67);
          free(v66);
          goto LABEL_104;
        }

        v10 = (v70 - (v9 - v24));
        v46 = v9 - v24;
        if (v9 != v24)
        {
          v47 = result;
          v48 = (v70 - (v9 - v24));
          memmove(v48, v24, v46);
          v10 = v48;
          v45 = v70;
          result = v47;
          v11 = a3;
        }

        v9 = v45;
      }

      *v71 = v22;
      v19 = v71 + 1;
      goto LABEL_23;
    }

    v45 = v70;
    v19 = v71;
    if (v23)
    {
      if (v71 + 1 < v24)
      {
        v10 = v24;
        goto LABEL_95;
      }

      if (v9 + 16 > v70)
      {
        goto LABEL_122;
      }

      v10 = (v70 - (v9 - v24));
      v49 = v9 - v24;
      if (v9 != v24)
      {
        v50 = result;
        v51 = (v70 - (v9 - v24));
        memmove(v51, v24, v49);
        v10 = v51;
        result = v50;
        v45 = v70;
        v19 = v71;
        v11 = a3;
      }

      v9 = v45;
LABEL_95:
      *v19 = v22;
      v19[1] = v44 | 0x8000000000000000;
      v19 += 2;
LABEL_23:
      if (v19 + v9 - v10 + 16 <= v45)
      {
        v21 = v28;
      }

      else
      {
        v21 = 0;
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_109;
      }

      continue;
    }

    break;
  }

  v10 = v24;
LABEL_109:
  if (!v28)
  {
    if (v18 == v20)
    {
      goto LABEL_116;
    }

    v63 = __si_assert_copy_extra_332();
    v56 = v63;
    v64 = "";
    if (v63)
    {
      v64 = v63;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v64);
LABEL_103:
    free(v56);
    if (!__valid_fs(-1))
    {
      v58 = 3072;
LABEL_107:
      *v58 = -559038737;
      abort();
    }

LABEL_104:
    v58 = 2989;
    goto LABEL_107;
  }

  if (v18 >= v20)
  {
    v59 = __si_assert_copy_extra_332();
    v56 = v59;
    v60 = "";
    if (v59)
    {
      v60 = v59;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v60);
    goto LABEL_103;
  }

LABEL_116:
  v61 = v9 - v10;
  if (v9 > v10)
  {
    v62 = result;
    memmove(v19, v10, v9 - v10);
    result = v62;
    v19 = (v19 + v61);
  }

  *(v69 + 8) = (v19 - v68) >> 3;
  return result;
}

BOOL SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 & a2;
  v65 = a3 & a2;
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  v59 = a1 + 16;
  if (v5 >= 3)
  {
    v7 = a1 + 16 + 8 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 3;
    }

    while (v7 > v4 && v5 > 2);
  }

  v12 = 0;
  v13 = 0;
  v14 = a1 + 520;
  v15 = &v65;
  v16 = v4;
  v17 = 1;
  v62 = a1 + 520;
  while (2)
  {
    v19 = 0;
    v20 = 0;
    v21 = v4;
    while (1)
    {
      if (v21 >= v6)
      {
        v30 = v15++;
        if (!v20)
        {
          while (1)
          {
            v20 = 1;
            v19 = v3;
            v40 = 1;
LABEL_64:
            if (*v30 != v3)
            {
              break;
            }

            v13 += v40;
            if (v30 >= &v65)
            {
              goto LABEL_68;
            }

            v41 = *v15++;
            v3 = v41;
            ++v17;
            v12 = (v12 + 1);
            v30 = v15 - 1;
            if (v20)
            {
              goto LABEL_54;
            }
          }

LABEL_101:
          v46 = __si_assert_copy_extra_332();
          v47 = v46;
          v48 = "";
          if (v46)
          {
            v48 = v46;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 761, "v==key", v48);
          goto LABEL_104;
        }

LABEL_54:
        if (v20 + v19 >= v3)
        {
          v36 = v3 + 1;
          if (v3 + 1 >= v19)
          {
            v37 = v20 + v19 - 1;
            v38 = v19 > v3;
            v39 = v19 > v3;
            if (v19 >= v3)
            {
              v19 = v3;
            }

            if (v38)
            {
              v20 = v37;
            }

            if (v36 <= v20 + v19)
            {
              v40 = v39;
            }

            else
            {
              v20 = v36 - v19;
              v40 = 1;
            }

            goto LABEL_64;
          }
        }

LABEL_71:
        v35 = 1;
        v15 = v30;
        if (v21 >= v6)
        {
          goto LABEL_86;
        }

        goto LABEL_72;
      }

      v24 = *v21;
      if (v3 < *v21)
      {
        break;
      }

      v35 = 1;
LABEL_74:
      if ((v21 + 1) >= v6)
      {
        v43 = 1;
        v26 = 1;
        if (v20)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v42 = v21[1];
        if (v42 < 0)
        {
          v43 = 2;
        }

        else
        {
          v43 = 1;
        }

        if (v42 < 0)
        {
          v26 = (v42 & 0x7FFFFFFFFFFFFFFFLL) + 1;
        }

        else
        {
          v26 = 1;
        }

        if (v20)
        {
LABEL_84:
          if (v20 + v19 < v24)
          {
            goto LABEL_86;
          }

          v44 = v26 + v24;
          if (v26 + v24 < v19)
          {
            goto LABEL_86;
          }

          v22 = v20 + v19 - v26;
          v23 = v19 > v24;
          if (v19 < v24)
          {
            v24 = v19;
          }

          if (v23)
          {
            v25 = v22;
          }

          else
          {
            v25 = v20;
          }

          v26 = v44 - v24;
          if (v44 <= v25 + v24)
          {
            v26 = v25;
          }
        }
      }

      v21 += v43;
      if (v3 <= v26 + v24)
      {
        v27 = v35;
      }

      else
      {
        v27 = 0;
      }

      v19 = v24;
      v20 = v26;
      if ((v27 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    v28 = v15 + 1;
    v29 = v12;
    while (1)
    {
      v12 = v29;
      v15 = v28;
      v30 = v28 - 1;
      if (v20)
      {
        if (v20 + v19 < v3 || v3 + 1 < v19)
        {
          goto LABEL_71;
        }

        v31 = v20 + v19 - 1;
        v32 = v19 > v3;
        v33 = v19 > v3;
        if (v19 >= v3)
        {
          v19 = v3;
        }

        if (v32)
        {
          v20 = v31;
        }

        if (v3 < v20 + v19)
        {
          v34 = v33;
        }

        else
        {
          v20 = v3 + 1 - v19;
          v34 = 1;
        }
      }

      else
      {
        v20 = 1;
        v19 = v3;
        v34 = 1;
      }

      if (*v30 != v3)
      {
        goto LABEL_101;
      }

      v13 += v34;
      if (v30 >= &v65)
      {
        break;
      }

      v28 = v15 + 1;
      v3 = *v15;
      ++v17;
      v29 = (v12 + 1);
      if (*v15 >= v24)
      {
        v35 = 1;
        goto LABEL_69;
      }
    }

LABEL_68:
    v35 = 0;
LABEL_69:
    v12 = (v12 + 1);
    if (v21 < v6)
    {
LABEL_72:
      v24 = *v21;
      goto LABEL_74;
    }

LABEL_86:
    v24 = v19;
    v26 = v20;
LABEL_87:
    v45 = v26 - 1;
    if (v26 == 1)
    {
      if (v16 < v21)
      {
        v4 = v21;
      }

      else
      {
        if (v6 + 16 > v14)
        {
LABEL_121:
          v56 = __si_assert_copy_extra_332();
          v57 = v56;
          if (v56)
          {
            v58 = v56;
          }

          else
          {
            v58 = "";
          }

          __message_assert("%s:%u: Unexpected code path %s ", "SIValueSetInternals.h", 626, v58);
          free(v57);
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        v4 = (v14 - (v6 - v21));
        if (v6 != v21)
        {
          v63 = v16;
          memmove((v14 - (v6 - v21)), v21, v6 - v21);
          v14 = v62;
          v16 = v63;
        }

        v6 = v14;
      }

      *v16++ = v24;
      goto LABEL_19;
    }

    if (v26)
    {
      if (v16 + 1 < v21)
      {
        v4 = v21;
        goto LABEL_100;
      }

      if (v6 + 16 > v14)
      {
        goto LABEL_121;
      }

      v4 = (v14 - (v6 - v21));
      if (v6 != v21)
      {
        v64 = v16;
        v61 = v26 - 1;
        memmove((v14 - (v6 - v21)), v21, v6 - v21);
        v45 = v61;
        v14 = v62;
        v16 = v64;
      }

      v6 = v14;
LABEL_100:
      *v16 = v24;
      v16[1] = v45 | 0x8000000000000000;
      v16 += 2;
LABEL_19:
      if (v16 + v6 - v4 + 16 <= v14)
      {
        v18 = v35;
      }

      else
      {
        v18 = 0;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_108;
      }

      continue;
    }

    break;
  }

  v4 = v21;
LABEL_108:
  if (!v35)
  {
    if (v12 == v17)
    {
      goto LABEL_115;
    }

    v54 = __si_assert_copy_extra_332();
    v47 = v54;
    v55 = "";
    if (v54)
    {
      v55 = v54;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 811, "popped==peeked", v55);
LABEL_104:
    free(v47);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (v12 >= v17)
  {
    v49 = __si_assert_copy_extra_332();
    v47 = v49;
    v50 = "";
    if (v49)
    {
      v50 = v49;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 810, "popped<peeked", v50);
    goto LABEL_104;
  }

LABEL_115:
  v51 = v6 - v4;
  if (v6 > v4)
  {
    v52 = v16;
    memmove(v16, v4, v6 - v4);
    v16 = (v52 + v51);
  }

  *(a1 + 8) = (v16 - v59) >> 3;
  return v13 != 0;
}

uint64_t SIUINT64SetRemoveValue(uint64_t result, unint64_t a2)
{
  if ((*(result + 184) & 1) == 0)
  {
    v2 = *(result + 24);
    if (!v2 || *(result + 16) == ((-1 << (-4 * v2)) & a2))
    {
      return SIValueSet<unsigned long long>::_SIValueSetInnerRemove(result + 56, a2, v2, result + 32);
    }
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerRemove(unint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  v6 = (a2 >> (60 - 4 * a3)) & 0xF;
  v7 = *(a1 + 8 * v6);
  if (v7)
  {
    do
    {
      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      v6 = (a2 >> (56 - 4 * v5)) & 0xF;
      v7 = *((v7 & 0xFFFFFFFFFFFFFFFELL) + 8 * v6);
      ++v5;
    }

    while ((v7 & 1) != 0);
  }

  else
  {
    v8 = a1;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = (*(*v7 + 32))(v7);
  v10 = (*(*v7 + 56))(v7);
  if (v10 >= 0x3E)
  {
    v11 = SIValueSet<unsigned long long>::_SIValueSetBurstRLE(v7, v5, a4);
LABEL_10:
    *(v8 + 8 * v6) = v11;
    return v9;
  }

  if (!v10)
  {
    (*(*v7 + 72))(v7);
    CFAllocatorDeallocate(*(a4 + 16), v7);
    v11 = 0;
    goto LABEL_10;
  }

  return v9;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerIterate(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = 0;
  v12 = (a3 + 1);
  v13 = 64 - 4 * (a3 + 1);
  do
  {
    result = *(a1 + 8 * v11);
    if (result)
    {
      v15 = v11 << v13;
      if (result)
      {
        result = SIValueSet<unsigned long long>::_SIValueSetInnerIterate(result & 0xFFFFFFFFFFFFFFFELL, v15 | a2, v12, a4, a5, a6);
      }

      else
      {
        result = (*(*result + 40))(result, a6, v15 | a2, a4, a5);
      }
    }

    ++v11;
  }

  while (v11 != 16);
  return result;
}

void compaction_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

void utility_query_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

void volume_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

void preheat_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

void shutdown_runLoop(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = pthread_self();
  v7 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = v6;
  dispatch_sync(v7, &v9);
  a2(a3, 0);
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __si_scheduler_set_thread_block_invoke;
  v12 = &__block_descriptor_tmp_29_1536;
  v13 = a1;
  v14 = 0;
  dispatch_sync(v8, &v9);
}

void releaseMatcherContext(uint64_t a1, atomic_uint *a2)
{
  if (atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
  {
    v4 = *a2;
    icu_ctx_release();

    free(a2);
  }
}

uint64_t retainMatcherContext(uint64_t a1, uint64_t a2)
{
  result = a2;
  atomic_fetch_add((a2 + 8), 1u);
  return result;
}

void initCountsArray_block_invoke(int a1, CFMutableArrayRef theArray, uint64_t a3)
{
  if (theArray)
  {
    v3 = a3;
    if (a3 >= 1)
    {
      if (initCountsArray_block_invoke_onceToken != -1)
      {
        dispatch_once(&initCountsArray_block_invoke_onceToken, &__block_literal_global_637);
      }

      do
      {
        CFArrayAppendValue(theArray, initCountsArray_block_invoke_cfZero);
        --v3;
      }

      while (v3);
    }
  }
}

CFNumberRef initCountsArray_block_invoke_2()
{
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &initCountsArray_block_invoke_zero);
  initCountsArray_block_invoke_cfZero = result;
  return result;
}

void readFromAllCountsArray_block_invoke_3(int a1, CFArrayRef theArray, __CFArray *a3, char a4, uint64_t a5)
{
  if (theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      if (a5 >= 1)
      {
        v10 = 0;
        v11 = vcnt_s8((valuePtr & ~(-1 << a4)));
        v11.i16[0] = vaddlv_u8(v11);
        v12 = v11.u32[0] + 1;
        do
        {
          if ((valuePtr >> (a4 + v10)))
          {
            v13 = v12 + 1;
            v14 = CFArrayGetValueAtIndex(theArray, v12);
            CFArraySetValueAtIndex(a3, v10, v14);
            v12 = v13;
          }

          ++v10;
        }

        while (a5 != v10);
      }
    }
  }
}

void _journalPlaybackResume(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      si_indexingWatchdogResume(*(*a1 + 64));
    }
  }
}

void _journalPlaybackSuspend(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      si_indexingWatchdogSuspend(*(*a1 + 64));
    }
  }
}

BOOL _journalMatchAddress(uint64_t *a1, char *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  v3 = v2 + a1[3];
  v6 = v2 != -1 && v2 <= a2 && v3 > a2;
  if (v6)
  {
    bzero(v33, 0x400uLL);
    v9 = fd_name(a1[1], v33, 0x400uLL);
    memset(&v24, 0, sizeof(v24));
    v10 = *__error();
    v11 = _SILogForLogForCategory(10);
    v12 = dword_1EBF46AF4 < 3;
    if (os_log_type_enabled(v11, (dword_1EBF46AF4 < 3)))
    {
      *buf = 134218754;
      v26 = a2;
      v27 = 2048;
      v28 = v2;
      v29 = 2048;
      st_size = v3;
      v31 = 2080;
      v32 = v9;
      _os_log_impl(&dword_1C278D000, v11, v12, "*warn* Got a journal exception at address:%p, map:[%p, %p), name: %s.", buf, 0x2Au);
    }

    *__error() = v10;
    v13 = fd_stat(a1[1], &v24);
    v14 = *__error();
    v15 = _SILogForLogForCategory(10);
    v16 = dword_1EBF46AF4 < 3;
    v17 = os_log_type_enabled(v15, (dword_1EBF46AF4 < 3));
    if (v13)
    {
      if (v17)
      {
        *buf = 136315138;
        v26 = v9;
        v18 = "*warn* Stat failed for name: %s.";
        v19 = v15;
        v20 = v16;
        v21 = 12;
LABEL_18:
        _os_log_impl(&dword_1C278D000, v19, v20, v18, buf, v21);
      }
    }

    else if (v17)
    {
      *buf = 134218496;
      v26 = v2;
      v27 = 2048;
      v28 = v3;
      v29 = 2048;
      st_size = v24.st_size;
      v18 = "*warn* map:[%p, %p), size: %llx";
      v19 = v15;
      v20 = v16;
      v21 = 32;
      goto LABEL_18;
    }

    *__error() = v14;
    fd_assert_not_unlinked(a1[1]);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v6;
}

void _journalCtxResume(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      si_indexingWatchdogResume(*(*a1 + 64));
    }
  }
}

void _journalCtxSuspend(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      si_indexingWatchdogSuspend(*(*a1 + 64));
    }
  }
}

void si_routine_thirdParty(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsToMeRankingNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsToMeRanking(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsToMeNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsToMe(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsFromMeRankingNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsFromMeRanking(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsFromMeNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsFromMe(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingTextContentMatchNot2(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingTextContentMatchNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingTextContentMatch(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRanking(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingPreExtractionNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingPreExtraction(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingOCRTextContentMatchNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingOCRTextContentMatch(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingOCRNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingOCR(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingTokenNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingToken(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingSpanNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeRankingSpan(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeTextContentMatchNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeTextContentMatch(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMeNot(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsMe(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_kSPDerivedIsFromToMe(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_fixup(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_searchtool(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_Contacts(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_contentlinkingd(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_duetexpertd(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_pommesctl(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_photoAnalysis(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_photos(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_notes(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_localFileProvider(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_fileProvider(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_calendar(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

void si_routine_mail(_BYTE *a1)
{
  (*a1)(*(a1 + 1));
  if (a1[16] == 1)
  {
    free(a1);
  }
}

uint64_t si_vector_index_contains_address(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 1384);
    if (*(v4 + 8))
    {
      v5 = 0;
      while ((_indexMatchAddress(*(*v4 + 8 * v5), a2) & 1) == 0)
      {
        ++v5;
        v4 = *(v3 + 1384);
        if (v5 >= *(v4 + 8))
        {
          goto LABEL_6;
        }
      }

      return 1;
    }

    else
    {
LABEL_6:
      v6 = *(v3 + 1392);
      if (*(v6 + 8))
      {
        v7 = 0;
        do
        {
          result = _indexMatchAddress(*(*v6 + 8 * v7), a2);
          if (result)
          {
            break;
          }

          ++v7;
          v6 = *(v3 + 1392);
        }

        while (v7 < *(v6 + 8));
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t si_get_contentindex_for_id(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 1384);
  v3 = *(v2 + 2);
  if (!v3)
  {
LABEL_6:
    v6 = *(a1 + 1392);
    v7 = *(v6 + 2);
    if (v7)
    {
      for (i = *v6; ; ++i)
      {
        v5 = *i;
        if (*(*i + 56) == a2)
        {
          break;
        }

        if (!--v7)
        {
          return 0;
        }
      }

      return v5;
    }

    return 0;
  }

  v4 = *v2;
  while (1)
  {
    v5 = *v4;
    if (*(*v4 + 56) == a2)
    {
      return v5;
    }

    ++v4;
    if (!--v3)
    {
      goto LABEL_6;
    }
  }
}

uint64_t si_copy_all_index_ids(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = SIUINT32SetCreate();
  v4 = *(a1 + 1384);
  if (*(v4 + 8))
  {
    v5 = 0;
    do
    {
      SIValueSet<unsigned int>::SIValueSetInsert((v3 + 16), *(*(*v4 + 8 * v5++) + 56));
      v4 = *(a1 + 1384);
    }

    while (v5 < *(v4 + 8));
  }

  v6 = *(a1 + 1392);
  if (*(v6 + 8))
  {
    v7 = 0;
    do
    {
      SIValueSet<unsigned int>::SIValueSetInsert((v3 + 16), *(*(*v6 + 8 * v7++) + 56));
      v6 = *(a1 + 1392);
    }

    while (v7 < *(v6 + 8));
  }

  return v3;
}

uint64_t si_recover_vector_ids(uint64_t a1, uint64_t a2)
{
  for (i = 1; ; i = 0)
  {
    v5 = i;
    v6 = *(a1 + 1384);
    if (*(v6 + 8))
    {
      break;
    }

LABEL_6:
    v8 = *(a1 + 1392);
    if (*(v8 + 8))
    {
      v9 = 0;
      while ((ContentIndexRecoverVectorIds(*(*v8 + 8 * v9), v5 & 1, a2) & 1) != 0)
      {
        ++v9;
        v8 = *(a1 + 1392);
        if (v9 >= *(v8 + 8))
        {
          goto LABEL_10;
        }
      }

      return 0;
    }

LABEL_10:
    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  v7 = 0;
  while ((ContentIndexRecoverVectorIds(*(*v6 + 8 * v7), v5 & 1, a2) & 1) != 0)
  {
    ++v7;
    v6 = *(a1 + 1384);
    if (v7 >= *(v6 + 8))
    {
      goto LABEL_6;
    }
  }

  return 0;
}

void si_power_info_init(uint64_t a1, xpc_object_t object, uint64_t a3, NSObject *a4)
{
  *a1 = 0;
  *(a1 + 16) = a3;
  if (object)
  {
    v6 = xpc_retain(object);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = v6;
  if (a4)
  {
    *(a1 + 24) = a4;
    dispatch_retain(a4);
    v7 = *(a1 + 24);

    dispatch_group_enter(v7);
  }

  else
  {
    *(a1 + 24) = 0;
  }
}

uint64_t si_power_info_assert_power(uint64_t result, uint64_t a2)
{
  if (!*(result + 24))
  {
    v2 = result;
    if (!*result)
    {
      v3 = *(a2 + 2360);
      if (v3)
      {
        v4 = *(v3 + 64);
        if (v4)
        {
          result = v4(*(v3 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SIStoring.c");
          *v2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t _si_store_property_cache(uint64_t result, char **a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (*(result + 2460) == 1 && *(result + 1192) && (*(result + 828) & 4) == 0)
    {
      if (a2)
      {
        indexmetadata = *a2;
        if (!indexmetadata)
        {
          goto LABEL_25;
        }
      }

      else
      {
        pthread_mutex_lock((result + 1504));
        indexmetadata = si_create_indexmetadata(v3, 0);
        if (!indexmetadata)
        {
LABEL_24:
          result = pthread_mutex_unlock((v3 + 1504));
          goto LABEL_25;
        }
      }

      Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], *(v3 + 1496), kCFPropertyListXMLFormat_v1_0, 0, 0);
      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(Data);
      v10 = db_add_field(*(v3 + 1192), &indexmetadata, 1u, "kMDStoreProperties", 0, 0x108u, 14, BytePtr, v9, Length);
      if (v10)
      {
        v11 = v10;
        v12 = *__error();
        v13 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v21 = "_si_store_property_cache";
          v22 = 1024;
          v23 = 17411;
          v24 = 2080;
          v25 = "kMDStoreProperties";
          v26 = 2048;
          v27 = Length;
          v28 = 1024;
          v29 = v11;
          _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: Failed to add field %s, length:%ld, rc:%d", buf, 0x2Cu);
        }

        *__error() = v12;
      }

      v14 = indexmetadata;
      if (a2)
      {
        *a2 = indexmetadata;
      }

      CFRelease(Data);
      result = db_store_obj(*(v3 + 1192), v14, 12);
      v15 = result;
      if (a3 && !result)
      {
        result = si_set_obj_state(v3, *(v3 + 1192));
        v15 = result;
        *(v3 + 2460) = 0;
      }

      if (v15)
      {
        v16 = *__error();
        v17 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v21 = "_si_store_property_cache";
          v22 = 1024;
          v23 = 17424;
          v24 = 2080;
          v25 = "kMDStoreProperties";
          v26 = 1024;
          LODWORD(v27) = v15;
          _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Failed to store the dbo for field %s, rc:%d", buf, 0x22u);
        }

        result = __error();
        *result = v16;
      }

      if (!a2)
      {
        free(v14);
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __syncIndex_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a2 + 36));
  if ((v2 & 2) == 0 && (*(a2 + 15203) & 1) == 0 && (*(a2 + 15200) & 6) == 2)
  {
    v5 = *(a1 + 32);
    if ((*(v5 + 6944) & 1) == 0 && *(v5 + 6960) <= 0)
    {
      v6 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
      *v6 = *(a1 + 32);
      v6[1] = a2;
      *(v6 + 5) = *(a2 + 56);
      si_forceSplitIndex();
    }
  }

  return 1;
}

uint64_t ContentIndexListsApply(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && (v5 = result, *(result + 8)))
  {
    v6 = 0;
    while (1)
    {
      result = (*(a3 + 16))(a3, *(*v5 + 8 * v6), 0);
      if (!result)
      {
        break;
      }

      if (++v6 >= *(v5 + 8))
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (a2 && *(a2 + 8))
    {
      v7 = 0;
      do
      {
        result = (*(a3 + 16))(a3, *(*a2 + 8 * v7), 1);
        if (!result)
        {
          break;
        }

        ++v7;
      }

      while (v7 < *(a2 + 8));
    }
  }

  return result;
}

void si_deleteExhaustedRemappings(uint64_t a1, CFArrayRef theArray)
{
  v11 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    for (i = 0; i < CFArrayGetCount(theArray); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v6 = *(a1 + 32);
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "remapping%ld", ValueAtIndex[5]);
      v7 = fd_create_protected(v6, __str, 0, 3u);
      _fd_unlink_with_origin(v7, 0);
      fd_release(v7);
    }

    v8 = *MEMORY[0x1E69E9840];

    CFRelease(theArray);
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
  }
}

void si_makeUnavailable(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (**(a1 + 6592) || (atomic_load_explicit((a1 + 2439), memory_order_acquire) & 1) != 0 || (v9 = 0, atomic_compare_exchange_strong((a1 + 2439), &v9, 1u), v9))
  {
    v28 = *__error();
    v29 = _SILogForLogForCategory(0);
    v30 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v29, (gSILogLevels[0] < 3)))
    {
      *v40 = 67109634;
      v41 = a2;
      v42 = 2080;
      v43 = a5;
      v44 = 2048;
      v45 = a3;
      _os_log_impl(&dword_1C278D000, v29, v30, "*warn* Index already unavailable, error:%d, reason:%s, options:0x%lx", v40, 0x1Cu);
    }

    *__error() = v28;
  }

  else
  {
    bzero(v40, 0x400uLL);
    v11 = fcntl(*(a1 + 32), 50, v40);
    v12 = v40[0];
    v13 = *__error();
    v14 = _SILogForLogForCategory(0);
    v15 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v14, (gSILogLevels[0] < 3)))
    {
      if (v12)
      {
        v16 = v11 < 0;
      }

      else
      {
        v16 = 1;
      }

      *buf = 67109890;
      v33 = a2;
      v17 = v40;
      if (v16)
      {
        v17 = 0;
      }

      v34 = 2080;
      v35 = a5;
      v36 = 2048;
      v37 = a3;
      v38 = 2080;
      v39 = v17;
      _os_log_impl(&dword_1C278D000, v14, v15, "*warn* Marking the index as unavailable, error:%d, reason:%s, options:0x%lx, path:%s", buf, 0x26u);
    }

    *__error() = v13;
    bzero(buf, 0x400uLL);
    v18 = snprintf(buf, 0x400uLL, "%d, %u, %u, %s", a2, a4, a3, a5);
    __si_write_error_to_file(v18, *(a1 + 60), *(a1 + 32), v19, v20, v21, v22, v23, "SpotlightIndex.c");
    for (i = 0; i != 168; i += 8)
    {
      v25 = *(a1 + 1008 + i);
      if (v25)
      {
        *(v25 + 36) = 1;
      }
    }

    if (a3)
    {
      SINotifyLowspace(*(a1 + 32));
    }

    else
    {
      v26 = *(a1 + 2360);
      v27 = *(v26 + 32);
      if (v27)
      {
        if ((a3 & 2) != 0)
        {
          touch_crash_state(*(a1 + 32));
          v26 = *(a1 + 2360);
          v27 = *(v26 + 32);
        }

        v27(*(v26 + 144), a2, a3, a5);
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t delete_index_recovery_files(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(__s, 0x400uLL);
  result = fcntl(a1, 50, __s);
  if ((result & 0x80000000) == 0 && __s[0])
  {
    v3 = strlen(__s);
    sprintf(&__s[v3], "/%s", "store.db.recover");
    if (gSILogLevels[0] >= 5)
    {
      v6 = *__error();
      v7 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = __s;
        _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "deleting %s", buf, 0xCu);
      }

      *__error() = v6;
    }

    unlink(__s);
    sprintf(&__s[v3], "/%s", ".store.db.recover");
    if (gSILogLevels[0] >= 5)
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = __s;
        _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "deleting %s", buf, 0xCu);
      }

      *__error() = v8;
    }

    unlink(__s);
    for (i = 1; i != 6; ++i)
    {
      sprintf(&__s[v3], "/store.db.recoverStr-%d.map.header", i);
      unlink(__s);
      sprintf(&__s[v3], "/store.db.recoverStr-%d.map.offsets", i);
      unlink(__s);
      sprintf(&__s[v3], "/store.db.recoverStr-%d.map.data", i);
      unlink(__s);
      sprintf(&__s[v3], "/store.db.recoverStr-%d.map.buckets", i);
      result = unlink(__s);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL SINotifyLowspace(int a1)
{
  v28 = *MEMORY[0x1E69E9840];
  bzero(v27, 0x400uLL);
  memset(&v20, 0, sizeof(v20));
  v2 = fstat(a1, &v20);
  if (v2 == -1)
  {
    v10 = *__error();
    v11 = _SILogForLogForCategory(0);
    v12 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *__error();
      *values = 67109376;
      *&values[4] = a1;
      *&values[8] = 1024;
      *&values[10] = v13;
      _os_log_impl(&dword_1C278D000, v11, v12, "fstat(%d) err: %d", values, 0xEu);
    }

    *__error() = v10;
  }

  else
  {
    v3 = fcntl(a1, 50, v27);
    v4 = v27[0];
    v5 = *__error();
    v6 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (v4)
      {
        v16 = v3 < 0;
      }

      else
      {
        v16 = 1;
      }

      v17 = v27;
      if (v16)
      {
        v17 = 0;
      }

      *values = 136315906;
      *&values[4] = "SINotifyLowspace";
      *&values[12] = 1024;
      v22 = 17294;
      v23 = 1024;
      st_dev = v20.st_dev;
      v25 = 2080;
      v26 = v17;
      _os_log_error_impl(&dword_1C278D000, v6, OS_LOG_TYPE_ERROR, "%s:%d: low space for device %d (%s)", values, 0x22u);
    }

    *__error() = v5;
    valuePtr = v20.st_dev;
    v7 = *MEMORY[0x1E695E480];
    *values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    keys = @"DeviceNumber";
    v8 = CFDictionaryCreate(v7, &keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"com.apple.Spotlight.lowdiskspace", 0, v8, 1u);
    CFRelease(*values);
    CFRelease(v8);
  }

  result = v2 != -1;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t lowDiskSpaceCallback(uint64_t a1)
{
  pthread_mutex_lock(&mergeMutex);
  v2 = *(a1 + 2435);
  if (v2 == 1)
  {
    ++*(a1 + 2428);
    do
    {
      pthread_cond_wait(&mergeCond, &mergeMutex);
    }

    while ((*(a1 + 2435) & 1) != 0);
    --*(a1 + 2428);
  }

  pthread_mutex_unlock(&mergeMutex);
  return v2;
}

char *__si_assert_copy_extra_661(int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = v9;
  bzero(v9, 0x400uLL);
  if (a1 == -1 || fcntl(a1, 50, v9) < 0 || !v9[0])
  {
    v3 = getcwd(v9, 0x400uLL);
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v2 = "";
    }
  }

  v8 = 0;
  v4 = pthread_getspecific(__THREAD_STR_DATA_KEY);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  asprintf(&v8, "%s %s", v2, v5);
  result = v8;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __si_set_obj_state_locked_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 15201);
  v3 = *(a1 + 40);
  if (v2 != 4 && v2 != v3)
  {
    *(a2 + 15201) = v3;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 1;
}

const char *SISetCrashCStr(const char *result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (gSICrashBufferSize && gSICrashBuffer != 0)
    {
      v2 = result;
      pthread_mutex_lock(&sSICrashStrLock);
      bzero(__source, 0x800uLL);
      v3 = gSICrashBuffer;
      if (*gSICrashBuffer)
      {
        __strlcpy_chk();
        __strlcat_chk();
        v3 = gSICrashBuffer;
      }

      *v3 = 0;
      v4 = pthread_self();
      snprintf(v3, 0x800uLL, "[%p] %s", v4, v2);
      if (__source[0])
      {
        strlcat(gSICrashBuffer, __source, gSICrashBufferSize);
      }

      result = pthread_mutex_unlock(&sSICrashStrLock);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t retire_docs(uint64_t a1, uint64_t *a2)
{
  v3 = a2[7];
  v2 = a2[8];
  v5 = a2[4];
  v4 = a2[5];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[3];
  v9 = a2[6];
  v10 = a2[12];
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v14[0] = a2[2];
  v14[1] = v4;
  v14[2] = v2;
  v14[3] = v6;
  v14[4] = v5;
  v14[5] = v3;
  v14[6] = v7;
  v14[7] = v8;
  v14[8] = v9;
  v15 = *(a2 + 5);
  v16 = v10;
  return v12(v11, 0, v14);
}

uint64_t commit_shadow(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = __si_assert_copy_extra_661(-1);
    v3 = v2;
    v4 = "";
    if (v2)
    {
      v4 = v2;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 1705, "!ctx->syncDirtyChunks", v4);
    free(v3);
    if (__valid_fs(-1))
    {
      v5 = 2989;
    }

    else
    {
      v5 = 3072;
    }

    *v5 = -559038737;
    abort();
  }

  db_commit_shadow_complete_datastore(*(a1 + 24));
  return 0;
}

uint64_t post_shadow_datastore(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    v12 = __si_assert_copy_extra_661(-1);
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 1674, "!ctx->syncDirtyChunks", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      v15 = 2989;
    }

    else
    {
      v15 = 3072;
    }

    *v15 = -559038737;
    abort();
  }

  v2 = si_set_obj_state_locked(*(a1 + 32), 0, 4);
  if (v2)
  {
    v3 = v2;
    v4 = *__error();
    v5 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "post_shadow_datastore";
      v18 = 1024;
      v19 = 1678;
      v20 = 1024;
      v21 = v3;
      v6 = "%s:%d: si_set_index_state err:%d";
LABEL_17:
      _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0x18u);
    }
  }

  else
  {
    v7 = db_commit_shadow_datastore(*(a1 + 24));
    if (v7)
    {
      v3 = v7;
      v4 = *__error();
      v5 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v17 = "post_shadow_datastore";
        v18 = 1024;
        v19 = 1684;
        v20 = 1024;
        v21 = v3;
        v6 = "%s:%d: db_commit_shadow_datastore err:%d";
        goto LABEL_17;
      }
    }

    else
    {
      v3 = db_store_dirty_chunk_info(*(*(a1 + 32) + 1192), *(*(a1 + 32) + 32), 1, 0);
      v10 = *(*(a1 + 32) + 6624);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = commitShadowReverseStore(v10);
      if (!v11)
      {
        v3 = reverseStoreStoreDirtyBitmap(*(*(a1 + 32) + 6624));
        if (!v3)
        {
          goto LABEL_8;
        }

        v4 = *__error();
        v5 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        *buf = 136315650;
        v17 = "post_shadow_datastore";
        v18 = 1024;
        v19 = 1695;
        v20 = 1024;
        v21 = v3;
        v6 = "%s:%d: reverseStoreStoreDirtyBitmap err:%d";
        goto LABEL_17;
      }

      v3 = v11;
      v4 = *__error();
      v5 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v17 = "post_shadow_datastore";
        v18 = 1024;
        v19 = 1692;
        v20 = 1024;
        v21 = v3;
        v6 = "%s:%d: commitShadowReverseStore err:%d";
        goto LABEL_17;
      }
    }
  }

LABEL_7:
  *__error() = v4;
LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t shadow_datastore(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    v15 = __si_assert_copy_extra_661(-1);
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 1644, "!ctx->syncDirtyChunks", v17);
    free(v16);
    if (__valid_fs(-1))
    {
      v18 = 2989;
    }

    else
    {
      v18 = 3072;
    }

    *v18 = -559038737;
    abort();
  }

  v2 = db_shadow_datastore(*(a1 + 24), *(a1 + 42));
  if (!v2)
  {
    v6 = *(a1 + 32);
    v9 = *(v6 + 6624);
    if (v9)
    {
      v10 = shadowReverseStore(v9, 0, *(v6 + 6592));
      if (v10)
      {
        v3 = v10;
        v4 = *__error();
        v5 = _SILogForLogForCategory(0);
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        *buf = 136315650;
        v20 = "shadow_datastore";
        v21 = 1024;
        v22 = 1653;
        v23 = 1024;
        v24 = v3;
        v11 = "%s:%d: shadowReverseStore err:%d";
LABEL_13:
        _os_log_error_impl(&dword_1C278D000, v5, OS_LOG_TYPE_ERROR, v11, buf, 0x18u);
        goto LABEL_4;
      }

      v6 = *(a1 + 32);
    }

    v7 = (v6 + 2224);
    os_unfair_lock_lock((v6 + 2224));
    v3 = 0;
    v8 = 7;
    goto LABEL_11;
  }

  v3 = v2;
  v4 = *__error();
  v5 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v20 = "shadow_datastore";
    v21 = 1024;
    v22 = 1647;
    v23 = 1024;
    v24 = v3;
    v11 = "%s:%d: db_shadow_datastore err:%d";
    goto LABEL_13;
  }

LABEL_4:
  *__error() = v4;
  v6 = *(a1 + 32);
  v7 = (v6 + 2224);
  os_unfair_lock_lock((v6 + 2224));
  v8 = 8;
LABEL_11:
  Current = CFAbsoluteTimeGetCurrent();
  activityJournalWriteVInt64(v6 + 2192, v8, Current);
  os_unfair_lock_unlock(v7);
  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t commit_sync_datastore(uint64_t a1, int a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = si_set_obj_state_locked(v4, 0, v5);
  if (v6)
  {
    v7 = v6;
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315650;
      *&__str[4] = "commit_sync_datastore";
      *&__str[12] = 1024;
      *&__str[14] = 1615;
      *&__str[18] = 1024;
      *&__str[20] = v7;
      v10 = "%s:%d: si_set_index_state err:%d";
LABEL_34:
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, v10, __str, 0x18u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v11 = db_commit_sync_datastore(*(a1 + 24), a2);
  if (v11)
  {
    v7 = v11;
    v8 = *__error();
    v9 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315650;
      *&__str[4] = "commit_sync_datastore";
      *&__str[12] = 1024;
      *&__str[14] = 1619;
      *&__str[18] = 1024;
      *&__str[20] = v7;
      v10 = "%s:%d: db_commit_sync_datastore err:%d";
      goto LABEL_34;
    }

    goto LABEL_9;
  }

  v22 = *(*(a1 + 32) + 6624);
  if (v22)
  {
    v7 = commitSyncReverseStore(v22, a2);
    if (v7)
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315650;
        *&__str[4] = "commit_sync_datastore";
        *&__str[12] = 1024;
        *&__str[14] = 1625;
        *&__str[18] = 1024;
        *&__str[20] = v7;
        v10 = "%s:%d: commitSyncReverseStore err:%d";
        goto LABEL_34;
      }

LABEL_9:
      *__error() = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = *(*(a1 + 32) + 1296);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(__str, 0, sizeof(__str));
  snprintf(__str, 0x200uLL, "doc_store_sync(%p)", v12);
  v27[0] = 0;
  v27[1] = 0;
  ScopeLogger::ScopeLogger(v27, __str);
  if (v12)
  {
    std::mutex::lock((v12 + 40));
    v13 = fsync(*(v12 + 4));
    std::mutex::unlock((v12 + 40));
    v14 = *__error();
    v15 = _SILogForLogForCategory(8);
    v16 = 2 * (dword_1EBF46AEC < 4);
    if (os_log_type_enabled(v15, v16))
    {
      *buf = 136315394;
      v29 = "doc_store_sync";
      v30 = 1024;
      v31 = v13;
      _os_log_impl(&dword_1C278D000, v15, v16, "%s returns %d\n", buf, 0x12u);
    }

    *__error() = v14;
  }

  ScopeLogger::~ScopeLogger(v27);
  v17 = *(a1 + 32);
  v18 = *(v17 + 2408);
  memset(__str, 0, sizeof(__str));
  os_unfair_lock_lock((v17 + 2224));
  Current = CFAbsoluteTimeGetCurrent();
  v20 = Current;
  if (Current > 0x7F)
  {
    if (v20 >> 14)
    {
      if (v20 >> 21)
      {
        if (v20 >> 28)
        {
          if (v20 >> 35)
          {
            if (v20 >> 42)
            {
              if (v20 >> 49)
              {
                if (HIBYTE(v20))
                {
                  __str[0] = -1;
                  *&__str[1] = Current;
                  v21 = 9;
                }

                else
                {
                  __str[0] = -2;
                  __str[1] = Current >> 48;
                  __str[2] = (Current >> 32) >> 8;
                  __str[3] = Current >> 32;
                  __str[4] = Current >> 24;
                  __str[5] = Current >> 16;
                  __str[6] = Current >> 8;
                  v21 = 8;
                  __str[7] = Current;
                }
              }

              else
              {
                __str[0] = BYTE6(v20) | 0xFC;
                __str[1] = (Current >> 32) >> 8;
                __str[2] = Current >> 32;
                __str[3] = Current >> 24;
                __str[4] = Current >> 16;
                __str[5] = Current >> 8;
                v21 = 7;
                __str[6] = Current;
              }
            }

            else
            {
              __str[0] = BYTE5(v20) | 0xF8;
              __str[1] = Current >> 32;
              __str[2] = Current >> 24;
              __str[3] = Current >> 16;
              __str[4] = Current >> 8;
              __str[5] = Current;
              v21 = 6;
            }
          }

          else
          {
            __str[0] = BYTE4(v20) | 0xF0;
            __str[1] = Current >> 24;
            __str[2] = Current >> 16;
            __str[3] = Current >> 8;
            __str[4] = Current;
            v21 = 5;
          }
        }

        else
        {
          __str[0] = BYTE3(v20) | 0xE0;
          __str[1] = Current >> 16;
          __str[2] = Current >> 8;
          __str[3] = Current;
          v21 = 4;
        }
      }

      else
      {
        __str[0] = BYTE2(v20) | 0xC0;
        __str[1] = Current >> 8;
        __str[2] = Current;
        v21 = 3;
      }
    }

    else
    {
      __str[0] = BYTE1(v20) | 0x80;
      __str[1] = Current;
      v21 = 2;
    }
  }

  else
  {
    __str[0] = Current;
    v21 = 1;
  }

  v23 = v2_writeVInt64_11288(__str, v21, v18);
  if (v7)
  {
    v24 = 6;
  }

  else
  {
    v24 = 40;
  }

  activityJournalWrite(v17 + 2192, v24, __str, v23);
  os_unfair_lock_unlock((v17 + 2224));
  if (!v7)
  {
    *(*(a1 + 32) + 2152) = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sync_datastore(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 2481) == 3)
  {
    v3 = 89;
    goto LABEL_8;
  }

  v6 = *a1;
  if (*a1)
  {
    v8 = a3[7];
    v7 = a3[8];
    v10 = a3[4];
    v9 = a3[5];
    v12 = *a3;
    v11 = a3[1];
    v13 = a3[3];
    v14 = a3[6];
    v15 = *(a3 + 5);
    v16 = a3[12];
    v17 = *(a1 + 16);
    *buf = a3[2];
    *&buf[8] = v9;
    *&buf[16] = v7;
    *&buf[24] = v11;
    *&buf[32] = v10;
    *&buf[40] = v8;
    *&buf[48] = v12;
    *&buf[56] = v13;
    *&buf[64] = v14;
    v68 = v15;
    v69 = v16;
    v6(v17, buf);
  }

  v18 = db_flush_datastore(*(a1 + 24), a2);
  if (v18)
  {
    v3 = v18;
    v19 = *__error();
    v20 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      *__error() = v19;
      goto LABEL_8;
    }

    *buf = 136315650;
    *&buf[4] = "sync_datastore";
    *&buf[12] = 1024;
    *&buf[14] = 1500;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    v35 = "%s:%d: db_flush_datastore err:%d";
    goto LABEL_26;
  }

  v23 = *(a1 + 32);
  if (*(v23 + 6872) == 1)
  {
    v24 = fd_create_protected(*(v23 + 32), "tmp.spotlight.loc", 536872450, 0);
    memset(buf, 0, 64);
    if (store_stream_init(buf, v24, 1))
    {
      v25 = *&buf[40];
      if (*&buf[32] - *&buf[40] < 6uLL)
      {
        *&__src[9] = 0;
        *&__src[1] = 0;
        *&__src[24] = 0;
        *&__src[17] = 0;
        __src[0] = 13;
        store_stream_write_bytes(buf, __src, 1uLL);
        v26 = *&buf[40];
      }

      else
      {
        v26 = *&buf[40] + 1;
        *(*&buf[48] + *&buf[40]) = 13;
        *&buf[40] = v25 + 1;
      }

      v27 = (v23 + 6856);
      v28 = v26 + 16;
      v29 = *&buf[32];
      v30 = 16;
      while (v28 >= v29)
      {
        v31 = v29 - v26;
        memcpy((*&buf[48] + v26), v27, v29 - v26);
        *&buf[40] += v31;
        if (store_stream_flush(buf, 0))
        {
          goto LABEL_19;
        }

        v27 += v31;
        v30 -= v31;
        v26 = *&buf[40];
        v29 = *&buf[32];
        v28 = *&buf[40] + v30;
      }

      memcpy((*&buf[48] + v26), v27, v30);
      *&buf[40] += v30;
LABEL_19:
      v32 = *(v23 + 1192);
      if (*v32 != 1685287992)
      {
        v60 = *__error();
        v61 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v62 = *v32;
          *__src = 136315650;
          *&__src[4] = "db_copy_delete_localized_term_ids";
          *&__src[12] = 1024;
          *&__src[14] = 442;
          *&__src[18] = 1024;
          *&__src[20] = v62;
          _os_log_error_impl(&dword_1C278D000, v61, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", __src, 0x18u);
        }

        *__error() = v60;
        v63 = __si_assert_copy_extra_332();
        v64 = v63;
        if (v63)
        {
          v65 = v63;
        }

        else
        {
          v65 = "";
        }

        __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 442, v65);
        free(v64);
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      if ((v32[201] & 0x14) != 0)
      {
        v33 = data_map_copy_deleted_ids(*(v32 + 114));
        TermUpdateSetStore(*(v23 + 6648), v33, buf, 0);
        if (v33)
        {
          v34 = v33[2];
          if (v34)
          {
            CFRelease(v34);
          }

          free(v33);
        }
      }

      else
      {
        TermUpdateSetStore(*(v23 + 6648), 0, buf, 0);
      }

      *(v23 + 6872) = 0;
      store_stream_flush(buf, 0);
    }

    else
    {
      _fd_unlink_with_origin(v24, 0);
    }

    store_stream_destroy(buf);
    fd_release(v24);
  }

  db_downgrade_datastore(*(a1 + 24));
  v36 = *(*(a1 + 32) + 6624);
  if (!v36)
  {
LABEL_70:
    if (*(a1 + 40) != 1 || !*a2)
    {
      goto LABEL_79;
    }

    v54 = db_store_dirty_chunk_info(*(*(a1 + 32) + 1192), *(*(a1 + 32) + 32), 0, *(a1 + 41));
    if (v54)
    {
      v3 = v54;
      v19 = *__error();
      v20 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      *buf = 136315650;
      *&buf[4] = "sync_datastore";
      *&buf[12] = 1024;
      *&buf[14] = 1591;
      *&buf[18] = 1024;
      *&buf[20] = v3;
      v35 = "%s:%d: db_store_dirty_chunk_info err:%d";
      goto LABEL_26;
    }

    v55 = *(*(a1 + 32) + 6624);
    if (!v55)
    {
LABEL_79:
      v3 = 0;
      goto LABEL_8;
    }

    v3 = reverseStoreStoreDirtyBitmap(v55);
    if (!v3)
    {
      goto LABEL_8;
    }

    v19 = *__error();
    v20 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    *&buf[4] = "sync_datastore";
    *&buf[12] = 1024;
    *&buf[14] = 1598;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    v35 = "%s:%d: reverseStoreStoreDirtyBitmap err:%d";
LABEL_26:
    _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, v35, buf, 0x18u);
    goto LABEL_7;
  }

  v37 = flushReverseStore(v36);
  if (v37)
  {
    v3 = v37;
    v19 = *__error();
    v20 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136315650;
    *&buf[4] = "sync_datastore";
    *&buf[12] = 1024;
    *&buf[14] = 1512;
    *&buf[18] = 1024;
    *&buf[20] = v3;
    v35 = "%s:%d: flushReverseStore err:%d";
    goto LABEL_26;
  }

  db_downgrade_lock((*(*(a1 + 32) + 6624) + 4424));
  v38 = *(a1 + 32);
  if (!*(v38 + 6640))
  {
    if ((*(v38 + 6944) & 1) == 0 && *(v38 + 6960) <= 0)
    {
      deleteStaleOverlay(*(v38 + 32));
    }

    goto LABEL_70;
  }

  if (!*(a1 + 48) || !*(a1 + 56))
  {
    v56 = __si_assert_copy_extra_661(-1);
    v57 = v56;
    v58 = "";
    if (v56)
    {
      v58 = v56;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 1517, "ctx->syncSet && ctx->liveSet", v58);
    free(v57);
    if (__valid_fs(-1))
    {
      v59 = 2989;
    }

    else
    {
      v59 = 3072;
    }

    *v59 = -559038737;
    abort();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x5800000000;
  memset(&buf[24], 0, 48);
  v68 = 0u;
  v39 = fd_create_protected(*(v38 + 32), "tmp.dirStore.overlay", 1538, 0);
  if (store_stream_init(*&buf[8] + 24, v39, 1))
  {
    v40 = *(a1 + 48);
    if (*(v40 + 8))
    {
      v41 = 0;
      do
      {
        if (CFSetContainsValue(*(*(a1 + 32) + 6640), *(*(*v40 + 8 * v41) + 56)))
        {
          v42 = *&buf[8];
          ++v41;
          v43 = *(*&buf[8] + 64);
          if ((*(*&buf[8] + 56) - v43) < 0xB)
          {
            memset(__src, 0, 32);
            v44 = writeVInt64(__src, 0, v41);
            store_stream_write_bytes(v42 + 24, __src, v44);
          }

          else
          {
            *(v42 + 64) = writeVInt64(*(*&buf[8] + 72), v43, v41);
          }
        }

        else
        {
          ++v41;
        }

        v40 = *(a1 + 48);
      }

      while (v41 < *(v40 + 8));
    }

    store_stream_write_vint((*&buf[8] + 24));
    v45 = *(a1 + 56);
    if (*(v45 + 8))
    {
      v46 = 0;
      do
      {
        if (CFSetContainsValue(*(*(a1 + 32) + 6640), *(*(*v45 + 8 * v46) + 56)))
        {
          v47 = *&buf[8];
          ++v46;
          v48 = *(*&buf[8] + 64);
          if ((*(*&buf[8] + 56) - v48) < 0xB)
          {
            memset(__src, 0, 32);
            v49 = writeVInt64(__src, 0, v46);
            store_stream_write_bytes(v47 + 24, __src, v49);
          }

          else
          {
            *(v47 + 64) = writeVInt64(*(*&buf[8] + 72), v48, v46);
          }
        }

        else
        {
          ++v46;
        }

        v45 = *(a1 + 56);
      }

      while (v46 < *(v45 + 8));
    }

    store_stream_write_vint((*&buf[8] + 24));
    v50 = *(*&buf[8] + 64);
    v3 = *(*&buf[8] + 40);
    if (v3)
    {
      v51 = *__error();
      v52 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *__src = 136315650;
        *&__src[4] = "sync_datastore";
        *&__src[12] = 1024;
        *&__src[14] = 1545;
        *&__src[18] = 1024;
        *&__src[20] = v3;
        _os_log_error_impl(&dword_1C278D000, v52, OS_LOG_TYPE_ERROR, "%s:%d: store dirStore overlay err:%d", __src, 0x18u);
      }

      *__error() = v51;
    }

    else
    {
      v53 = *(*(a1 + 32) + 6632);
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 0x40000000;
      v66[2] = __sync_datastore_block_invoke;
      v66[3] = &unk_1E81914E0;
      v66[4] = buf;
      directoryOverlayProcessPaths(v53, v66);
    }

    if (*(*&buf[8] + 64) == v50)
    {
      _fd_unlink_with_origin(v39, 0);
      deleteStaleOverlay(*(*(a1 + 32) + 32));
    }

    else
    {
      store_stream_write_vint32((*&buf[8] + 24), 0);
      store_stream_write_vint32((*&buf[8] + 24), 0);
      store_stream_flush((*&buf[8] + 24), 0);
      fd_rename(v39, "dirStore.overlay");
    }

    store_stream_destroy(*&buf[8] + 24);
  }

  else
  {
    v3 = *(*&buf[8] + 40);
  }

  fd_release(v39);
  _Block_object_dispose(buf, 8);
  if (!v3)
  {
    goto LABEL_70;
  }

LABEL_8:
  v21 = *MEMORY[0x1E69E9840];
  return v3;
}

void *store_stream_write_vint(void *result)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = result[5];
  if ((result[4] - v1) < 0xB)
  {
    memset(v3, 0, sizeof(v3));
    result = store_stream_write_bytes(result, v3, 1uLL);
  }

  else
  {
    *(result[6] + v1) = 0;
    result[5] = v1 + 1;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __sync_datastore_block_invoke(uint64_t result, unsigned int a2, unint64_t *a3, int a4, unint64_t *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    LODWORD(v6) = a4;
    LODWORD(v8) = a2;
    v9 = result;
    store_stream_write_vint32((*(*(result + 32) + 8) + 24), a2);
    if (v8 >= 1)
    {
      v8 = v8;
      do
      {
        v10 = *(*(v9 + 32) + 8);
        v12 = *a3++;
        v11 = v12;
        v13 = v10[8];
        if ((v10[7] - v13) < 0xB)
        {
          v21 = 0u;
          v22 = 0u;
          v14 = writeVInt64(&v21, 0, v11);
          store_stream_write_bytes((v10 + 3), &v21, v14);
        }

        else
        {
          v10[8] = writeVInt64(v10[9], v13, v11);
        }

        --v8;
      }

      while (v8);
    }

    result = store_stream_write_vint32((*(*(v9 + 32) + 8) + 24), v6);
    if (v6 >= 1)
    {
      v6 = v6;
      do
      {
        v15 = *(*(v9 + 32) + 8);
        v17 = *a5++;
        v16 = v17;
        v18 = v15[8];
        if ((v15[7] - v18) < 0xB)
        {
          v21 = 0u;
          v22 = 0u;
          v19 = writeVInt64(&v21, 0, v16);
          result = store_stream_write_bytes((v15 + 3), &v21, v19);
        }

        else
        {
          result = writeVInt64(v15[9], v18, v16);
          v15[8] = result;
        }

        --v6;
      }

      while (v6);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void deleteStaleOverlay(int a1)
{
  v1 = fd_create_protected(a1, "dirStore.overlay", 1026, 0);
  if (v1)
  {
    v2 = v1;
    _fd_unlink_with_origin(v1, 0);

    fd_release(v2);
  }
}

uint64_t unlock_datastore(uint64_t a1)
{
  os_unfair_lock_unlock((*(a1 + 32) + 6576));
  v2 = *(*(a1 + 32) + 6624);
  if (v2)
  {
    db_write_unlock(v2 + 4424);
  }

  v3 = *(a1 + 24);

  return db_unlock_datastore(v3);
}

void lock_datastore(uint64_t a1)
{
  db_lock_datastore(*(a1 + 24));
  v2 = *(a1 + 32);
  v3 = *(v2 + 6624);
  if (v3)
  {
    _db_write_lock(v3 + 4424);
    v2 = *(a1 + 32);
  }

  os_unfair_lock_lock((v2 + 6576));
}

uint64_t si_indexDeleteByOid(uint64_t a1, uint64_t a2)
{
  result = RLEOIDArrayIsEmpty(a2);
  if (!result)
  {
    v5 = *(a1 + 1384);
    v6 = *(a1 + 1392);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v10 = __si_indexDeleteByOid_block_invoke;
    v11 = &__block_descriptor_tmp_297;
    v12 = a2;
    if (v5 && *(v5 + 8))
    {
      v7 = 0;
      while (1)
      {
        result = (v10)(v9, *(*v5 + 8 * v7), 0);
        if (!result)
        {
          break;
        }

        if (++v7 >= *(v5 + 8))
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      if (v6 && *(v6 + 8))
      {
        v8 = 0;
        do
        {
          result = (v10)(v9, *(*v6 + 8 * v8), 1);
          if (!result)
          {
            break;
          }

          ++v8;
        }

        while (v8 < *(v6 + 8));
      }
    }
  }

  return result;
}

void si_indexDeleteDeferredItemsIfReady(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2 && RLEOIDArrayGetOidCount(v2, 0x10000) >= 0xFFFF)
  {
    os_unfair_lock_lock((a1 + 280));
    v3 = *(a1 + 288);
    if (v3)
    {
      RLEOIDArrayGetOidCount(v3, 1);
      si_indexDeleteByOid(a1, *(a1 + 288));
      __dmb(0xBu);
      v4 = *(a1 + 288);
      *(a1 + 288) = 0;
      *(a1 + 296) = v4;
      RLEOIDArrayClear(v4);
    }

    os_unfair_lock_unlock((a1 + 280));
  }
}

uint64_t attrsKeyValueMatchesString(__int128 *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 2);
  result = _MDPlistDictionaryGetPlistObjectForKey();
  if (result)
  {
    result = 0;
    if (_MDPlistGetPlistObjectType() == 244)
    {
      Value = _MDPlistStringGetValue();
      if (!a5 && !memcmp(Value, a4, 0))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t attrsKeyValueEnabled(__int128 *a1)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  result = _MDPlistDictionaryGetPlistObjectForKey();
  if (result)
  {
    PlistObjectType = _MDPlistGetPlistObjectType();
    if (PlistObjectType > 225)
    {
      if ((PlistObjectType - 226) > 1)
      {
        return 0;
      }
    }

    else if (PlistObjectType != 35 && PlistObjectType != 51)
    {
      return PlistObjectType == 225 && _MDPlistBooleanGetValue();
    }

    return _MDPlistNumberGetIntValue() != 0;
  }

  return result;
}

uint64_t _SIProtectionClass(uint64_t a1)
{
  v1 = *(a1 + 60);
  if (v1)
  {
    return 3;
  }

  else
  {
    return v1 >> 1;
  }
}

void *si_compact_lock(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock(&mergeMutex);
  *(a1 + 2435) = 0;
  if (*(a1 + 2428))
  {
    pthread_cond_signal(&mergeCond);
  }

  pthread_mutex_unlock(&mergeMutex);
  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x2004093837F09uLL);
  v2[4] = _si_scheduler_suspend(*(a1 + 896), "SpotlightIndex.c", 7077);
  *v2 = _si_scheduler_suspend(*(a1 + 864), "SpotlightIndex.c", 7079);
  atomic_fetch_add((a1 + 1452), 1u);
  v3 = _si_scheduler_suspend(*(a1 + 872), "SpotlightIndex.c", 2139);
  atomic_fetch_add((a1 + 1452), 0xFFFFFFFF);
  v2[1] = v3;
  v2[2] = _si_scheduler_suspend(*(a1 + 880), "SpotlightIndex.c", 7084);
  v2[8] = _si_scheduler_suspend(*(a1 + 928), "SpotlightIndex.c", 7085);
  v2[9] = _si_scheduler_suspend(*(a1 + 936), "SpotlightIndex.c", 7086);
  return v2;
}

void si_compact_unlock(uint64_t a1, const void **a2)
{
  if (a1 && a2)
  {
    pthread_mutex_lock(&mergeMutex);
    *(a1 + 2435) = 1;
    pthread_mutex_unlock(&mergeMutex);
    si_scheduler_resume(*(a1 + 936), a2[9], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7100);
    si_scheduler_resume(*(a1 + 928), a2[8], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7101);
    si_scheduler_resume(*(a1 + 880), a2[2], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7102);
    si_scheduler_resume(*(a1 + 872), a2[1], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7103);
    si_scheduler_resume(*(a1 + 864), *a2, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7104);
    si_scheduler_resume(*(a1 + 896), a2[4], "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 7105);
  }

  else if (!a2)
  {
    return;
  }

  free(a2);
}

BOOL si_compact_should_cancel(uint64_t a1)
{
  if (*(a1 + 2428) || **(a1 + 6592))
  {
    si_scheduler_voluntary_gc_inline(*(a1 + 944));
    return 1;
  }

  else
  {
    si_suspend_if_bad_time(a1, 0);
    return *(a1 + 2428) != 0;
  }
}

void si_suspend_if_bad_time(uint64_t a1, uint64_t a2)
{
  if (sInGameMode == 1)
  {
    pthread_mutex_lock(&sGameModeMutex);
    if (sInGameMode == 1)
    {
      do
      {
        if (*(a1 + 2428))
        {
          break;
        }

        if (*(a1 + 2432))
        {
          break;
        }

        pthread_cond_wait(&sGameModeCond, &sGameModeMutex);
      }

      while ((sInGameMode & 1) != 0);
    }

    pthread_mutex_unlock(&sGameModeMutex);
  }

  fd_system_status_stall_if_busy();
  if (*(a1 + 2328))
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      if (*(a2 + 16) && xpc_activity_should_defer(v5) && xpc_activity_set_state(*(a2 + 8), 3))
      {
        pthread_mutex_lock(&mergeMutex);
        v6 = *(a2 + 8);
        v7 = *(a2 + 16);
        *v7 = 1;
        if (v6)
        {
          do
          {
            if (!*(a2 + 16))
            {
              break;
            }

            if (!xpc_activity_should_defer(v6))
            {
              break;
            }

            if (*(a1 + 2428))
            {
              break;
            }

            if (*(a1 + 2432))
            {
              break;
            }

            pthread_cond_wait(&mergeCond, &mergeMutex);
            v6 = *(a2 + 8);
          }

          while (v6);
          v7 = *(a2 + 16);
        }

        *v7 = 0;

        pthread_mutex_unlock(&mergeMutex);
      }
    }
  }
}

NSObject *copyHoldQueue(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 1160);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    dispatch_retain(*(v1 + 16));
    dispatch_suspend(v2);
  }

  return v2;
}

void si_cleanup(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x10A0040A9CEF559uLL);
  v5 = 0;
  atomic_store(1u, v4);
  *(v4 + 1) = a1;
  *(v4 + 2) = a2;
  *(v4 + 3) = 0;
  *(v4 + 4) = DeallocContentIndexList;
  do
  {
    si_enqueue_cleanup_if_busy(*(a1 + 1008 + v5), v4);
    v5 += 8;
  }

  while (v5 != 144);

  SIGCContextRelease(v4);
}

void DeallocContentIndexList(os_unfair_lock_s *a1, void **a2, uint64_t a3, int a4)
{
  if (a4)
  {

    ContentIndexListFree(a2);
  }

  else
  {
    os_unfair_lock_lock(a1 + 1645);
    ContentIndexListFree(a2);

    os_unfair_lock_unlock(a1 + 1645);
  }
}

void si_clone_index_metadata_to_inflight(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v37 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x7800000000;
  v31 = 0u;
  v30 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  LODWORD(v31) = -1;
  CIMetaInfoCreateWithPrefix(*(v1 + 32), &v30, 0, 0, *(v1 + 60), "tmp");
  v7 = v28;
  v8 = v28[4];
  v9 = *(v28 + 10);
  v10 = v28[6];
  v11 = *(v6 + 1200);
  *(v28 + 5) = *(v6 + 1216);
  *(v7 + 3) = v11;
  v12 = *(v6 + 1264);
  v13 = *(v6 + 1280);
  v14 = *(v6 + 1248);
  *(v7 + 7) = *(v6 + 1232);
  *(v7 + 9) = v14;
  *(v7 + 13) = v13;
  *(v7 + 11) = v12;
  *(v7 + 10) = v9;
  v7[6] = v10;
  v7[4] = v8;
  v15 = MEMORY[0x1E69E9820];
  v7[8] = 0;
  v7[9] = 0;
  v23[0] = v15;
  v23[1] = 0x40000000;
  v24 = __si_clone_index_metadata_to_inflight_block_invoke;
  v25 = &unk_1E8190FC0;
  v26 = &v27;
  if (v5 && *(v5 + 8))
  {
    v16 = 0;
    while (v24(v23, *(*v5 + 8 * v16), 0))
    {
      if (++v16 >= *(v5 + 8))
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (v3 && *(v3 + 8))
    {
      v17 = 0;
      do
      {
        if (!v24(v23, *(*v3 + 8 * v17), 1))
        {
          break;
        }

        ++v17;
      }

      while (v17 < *(v3 + 8));
    }
  }

  _CIMetaInfoSync((v28 + 3), gTerminating == 0);
  CIMetaInfoClose((v28 + 3));
  if (v6)
  {
    v18 = (*(v6 + 830) >> 2) & 1;
  }

  else
  {
    v18 = 0;
  }

  bzero(v36, 0x1000uLL);
  serialize_to_state(v5, v3, v18, v36);
  si_store_index_state(*(v6 + 32), "tmp.spotlight.state.transition", *(v6 + 2072), 1, v36, v19, v20, v21);
  _Block_object_dispose(&v27, 8);
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __si_clone_index_metadata_to_inflight_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 15201);
  if (a3)
  {
    if (v3 != 1)
    {
      ++*(*(*(a1 + 32) + 8) + 68);
      if (v3 == 4)
      {
        ++*(*(*(a1 + 32) + 8) + 76);
      }
    }
  }

  else if (v3 != 1)
  {
    ++*(*(*(a1 + 32) + 8) + 64);
    if (v3 == 4)
    {
      ++*(*(*(a1 + 32) + 8) + 72);
    }
  }

  return 1;
}

void delayed_op3(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(a1 + 16))(*a1);

    free(a1);
  }

  else
  {
    if (*(a1 + 24) == 4)
    {
      v3 = delayed_op_final;
    }

    else
    {
      v3 = delayed_op4;
    }

    v4 = *(*(a1 + 8) + 1064);

    si_enqueue_work_with_qos(v4, 5, v3, a1);
  }
}

void delayed_op4(void *a1, int a2)
{
  if (!a2 && (v3 = a1[1], (*(v3 + 6584) & 0x10) != 0))
  {
    v4 = *(v3 + 1096);

    si_enqueue_work_with_qos(v4, 5, delayed_op_final, a1);
  }

  else
  {
    (a1[2])(*a1);

    free(a1);
  }
}

int *_fullyDrained(int *result, int a2)
{
  if (!a2)
  {
    v2 = result;
    if ((*(result + 2438) & 1) == 0)
    {
      *(result + 2438) = 1;
      v3 = *(result + 173);
      LODWORD(v4) = *(v3 + 8);
      if (v4 >= 3)
      {
        v5 = 0;
        do
        {
          ContentIndexSetEmergency(*(*v3 + 8 * v5), 0);
          v6 = v5 + 3;
          ++v5;
          v4 = *(v3 + 8);
        }

        while (v6 < v4);
      }

      result = *(*v3 + 8 * (v4 - 1));
      if (result && *(result + 44) == 1)
      {
        ContentIndexSetEmergency(result, 0);
        _SIIssueSplit(v2, 1);

        return SIInitialIndexingEnded(v2, 0);
      }
    }
  }

  return result;
}

void _SIIssueSplit(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 1384);
    if (!v4 || !*(v4 + 8))
    {
      return;
    }
  }

  else
  {
    v5 = *(a1 + 1392);
    if (!v5 || !*(v5 + 8) || !*(a1 + 1240))
    {
      return;
    }
  }

  v6 = *__error();
  v7 = _SILogForLogForCategory(4);
  v8 = 2 * (dword_1EBF46ADC < 4);
  if (os_log_type_enabled(v7, v8))
  {
    *v12 = 0;
    _os_log_impl(&dword_1C278D000, v7, v8, "_SIIssueSplit called", v12, 2u);
  }

  *__error() = v6;
  v9 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B0040E0DE4348uLL);
  *v9 = a1;
  if (a2)
  {
    LiveIndex = si_getLiveIndex(*(a1 + 1384));
  }

  else
  {
    LiveIndex = si_getSyncIndex(a1, 0);
  }

  *(v9 + 1) = LiveIndex;
  v11 = LiveIndex[14];
  *(v9 + 4) = 2;
  *(v9 + 5) = v11;
  si_scheduler_async_suspend_and_enqueue(*(a1 + 872), *(a1 + 1040), _swapIndex, v9, v9 + 11);
}

int *SIInitialIndexingEnded(int *result, int a2)
{
  v3 = result;
  v20 = *MEMORY[0x1E69E9840];
  if (a2 == -1 && *(result + 860) && *(result + 6893) == 1)
  {
    v14 = *MEMORY[0x1E69E9840];

    return SISyncIndex(result);
  }

  else
  {
    if ((result[207] & 4) == 0)
    {
      bzero(v19, 0x400uLL);
      v5 = si_sync_ctx_create_with_defer_fd(v3, 0);
      v6 = v4;
      *(v4 + 80) = a2;
      if (!*(v4 + 128) && !*(v4 + 104))
      {
        v15 = *(v3 + 2360);
        if (v15)
        {
          v16 = *(v15 + 64);
          if (v16)
          {
            *(v4 + 104) = v16(*(v15 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 21990, "void SIInitialIndexingEnded(SIRef, int32_t)", v5);
          }
        }
      }

      si_enqueue_work_with_qos(*(v3 + 1104), 9, si_initialIndexingEndedQueueOnHold, v6);
      v7 = *__error();
      v8 = _SILogForLogForCategory(0);
      v9 = 2 * (gSILogLevels[0] < 4);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = fcntl(*(v3 + 48), 50, v19);
        if (v19[0])
        {
          v11 = v10 < 0;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = v19;
        }

        *buf = 136315138;
        v18 = v12;
        _os_log_impl(&dword_1C278D000, v8, v9, "Finished initial indexing of %s", buf, 0xCu);
      }

      result = __error();
      *result = v7;
    }

    v13 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void si_initialIndexingEndedQueueOnHold(atomic_uint *a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    v4 = *a1;
    v5 = *(*a1 + 1160);
    if (v5)
    {
      if ((*(v4 + 2072) & 1) == 0 && (*(v4 + 2437) & 1) == 0)
      {
        attachJournal(v3);
        v5 = *(v4 + 1160);
      }

      si_enqueue_barrier_with_qos(v5, 9, si_initialIndexingEndedQueueOnSet, v3);
      v3 = 0;
    }
  }

  si_sync_ctx_free(v3, a2 != 0);
}

void si_initialIndexingEndedQueueOnSet(uint64_t a1, int a2)
{
  v3 = a1;
  if (!a2)
  {
    si_enqueue_barrier_with_qos(*(*a1 + 1048), 9, si_initialIndexingEndedQueueOnFlush, a1);
    v3 = 0;
  }

  si_sync_ctx_free(v3, a2 != 0);
}

void si_initialIndexingEndedQueueOnFlush(uint64_t a1, int a2)
{
  v3 = a1;
  if (a2)
  {
    goto LABEL_52;
  }

  v4 = *a1;
  v5 = *(a1 + 80);
  v53 = 0;
  if (!fd_setDir(*(v4 + 32), &v53))
  {
    goto LABEL_52;
  }

  v6 = v4 + 1392;
  *(v4 + 2436) = 0;
  v7 = *(v4 + 1392);
  v8 = *(v7 + 2);
  if (v8)
  {
    v9 = *(*v7 + 8 * (v8 - 1));
    v10 = atomic_load((v9 + 36));
    if ((v10 & 3) == 0 && (*(v9 + 15203) & 1) == 0)
    {
      *(*v6 + 16) = -1;
      while (1)
      {
        v11 = *(v4 + 1392);
        v7 = ContentIndexListClone(v11);
        *(v7 + 4) = -1;
        if (si_swapIndexSet(v4, v11, v7, (v4 + 1392), v12, v13, v14, v15))
        {
          break;
        }

        ContentIndexListFree(v7);
      }

      _CIDisableUpdates(*(*v7 + 8 * (*(v7 + 2) - 1)));
    }
  }

  if (v5 == 1)
  {
    v16 = *(*v7 + 8 * (*(v7 + 2) - 1));
    si_perform_livequeries_bulk_updates(v4);
LABEL_39:
    v43 = 0;
    goto LABEL_41;
  }

  v17 = *(v4 + 1384);
  LODWORD(v18) = *(v17 + 16);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_39;
  }

  v19 = 0;
  v20 = 0;
  while (v19 < *(v17 + 8) - 1)
  {
    v21 = *(*v17 + 8 * v19);
    if ((*(v21 + 44) & 1) != 0 || v5 && v5 < *(v21 + 40))
    {
      break;
    }

    ++v20;
    if (v19 != v18)
    {
      goto LABEL_25;
    }

    v22 = ContentIndexListClone(v17);
    v23 = v22;
    do
    {
      v24 = *(v22 + 4) + 1;
      *(v22 + 4) = v24;
      if (v24 >= *(v22 + 2))
      {
        break;
      }

      v25 = *(*v22 + 8 * v24);
      v26 = atomic_load((v25 + 36));
    }

    while ((v26 & 3) != 0 || (*(v25 + 15203) & 1) != 0);
    v27 = v17;
    atomic_compare_exchange_strong((v4 + 1384), &v27, v22);
    if (v27 == v17)
    {
      si_cleanup(v4, v17);
      atomic_fetch_add_explicit((v4 + 1400), 1u, memory_order_relaxed);
      _si_log_indexes(v4);
      v21 = *(*v23 + 8 * v19);
      v17 = v23;
LABEL_25:
      v28 = atomic_load((v21 + 36));
      if ((v28 & 3) == 0 && (*(v21 + 15203) & 1) == 0)
      {
        _CIDisableUpdates(*(*v17 + 8 * v19));
        v29 = *(*v17 + 8 * v19);
        si_perform_livequeries_bulk_updates(v4);
        v30 = *(*v17 + 8 * *(v17 + 16));
        v31 = atomic_load((v30 + 36));
        if ((v31 & 3) != 0 || *(v30 + 15203) == 1)
        {
          v48 = __si_assert_copy_extra_661(-1);
          v49 = v48;
          v50 = "";
          if (v48)
          {
            v50 = v48;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 10045, "ContentIndexWritable(indexSet->index[indexSet->currentIndex])", v50);
          free(v49);
          if (__valid_fs(-1))
          {
            v51 = 2989;
          }

          else
          {
            v51 = 3072;
          }

          *v51 = -559038737;
          abort();
        }

        v32 = malloc_type_calloc(1uLL, 0x90uLL, 0x10B00402663C8FFuLL);
        v33 = v32;
        *v32 = *v3;
        v34 = *(v3 + 64);
        v36 = *(v3 + 16);
        v35 = *(v3 + 32);
        v32[3] = *(v3 + 48);
        v32[4] = v34;
        v32[1] = v36;
        v32[2] = v35;
        v37 = *(v3 + 128);
        v39 = *(v3 + 80);
        v38 = *(v3 + 96);
        v32[7] = *(v3 + 112);
        v32[8] = v37;
        v32[5] = v39;
        v32[6] = v38;
        *(v3 + 104) = 0;
        *(v3 + 120) = 0;
        *(v3 + 128) = 0;
        *(v3 + 112) = 0;
        *(v32 + 1) = *(*v17 + 8 * v19);
        *(v3 + 64) = 0;
        if (!*(v32 + 16) && !*(v32 + 26))
        {
          v41 = *(v4 + 2360);
          if (v41)
          {
            v42 = *(v41 + 64);
            if (v42)
            {
              *(v32 + 26) = v42(*(v41 + 144), "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 10051, "void si_initialIndexingEndedQueueOnFlush(si_sync_ctx *, Boolean)");
            }
          }
        }

        si_indexDeleteDeferredItems(*v3);
        si_enqueue_work_with_qos(*(v4 + 1040), 9, si_scanEnded, v33);
      }

      v18 = *(v17 + 16);
      if (v19++ >= v18)
      {
        break;
      }
    }

    else
    {
      free(*v22);
      free(v23);
      v19 = 0;
      v17 = *(v4 + 1384);
      LODWORD(v18) = *(v17 + 16);
      if ((v18 & 0x80000000) != 0)
      {
        break;
      }
    }
  }

  v43 = v20 > 2;
LABEL_41:
  v44 = *__error();
  v45 = _SILogForLogForCategory(4);
  v46 = 2 * (dword_1EBF46ADC < 4);
  if (os_log_type_enabled(v45, v46))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v45, v46, "Advanced transaction id", buf, 2u);
  }

  *__error() = v44;
  if (v5 != 1)
  {
    if (!v43)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (*(*v6 + 8) != 0 || v43)
  {
LABEL_47:
    si_enqueue_work_with_qos(*(v4 + 1040), 9, si_initialIndexingEnded, v3);
    v3 = 0;
  }

LABEL_48:
  if (!*(*(v4 + 1384) + 8))
  {
    SISetScanCount(v4, 1, 1);
  }

  v47 = v53;
  MEMORY[0x1C6921200](v53);
  if ((v47 & 0x80000000) == 0)
  {
    close(v47);
  }

LABEL_52:
  si_sync_ctx_free(v3, a2 != 0);
}

int *_si_log_indexes(int *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 173);
    if (v2)
    {
      ContentIndexListDump(v2);
    }

    result = *(v1 + 174);
    if (result)
    {

      return ContentIndexListDump(result);
    }
  }

  return result;
}

uint64_t SISetScanCount(uint64_t a1, const char *a2, int a3)
{
  v103 = *MEMORY[0x1E69E9840];
  makeThreadId();
  if (a1 && *(a1 + 1048))
  {
    os_unfair_lock_lock((a1 + 6580));
    v98 = 0;
    v6 = fd_setDir(*(a1 + 32), &v98);
    v7 = 0;
    if (!v6)
    {
LABEL_37:
      v38 = v7;
      os_unfair_lock_unlock((a1 + 6580));
      result = v38;
      goto LABEL_38;
    }

    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v9 = setThreadIdAndInfo(*(a1 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
    v96 = HIDWORD(v9);
    v97 = v9;
    v94 = v11;
    v95 = v10;
    v12 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
    *(v12 + 216) = 0;
    v13 = *(v12 + 312);
    v14 = *(v12 + 224);
    v15 = v12;
    if (v14)
    {
      v14(*(v12 + 288));
    }

    if (_setjmp(v15))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
      }

      v15[78] = v13;
      CIOnThreadCleanUpReset(v94);
      dropThreadId(v97, 1, add_explicit + 1);
      CICleanUpReset(v97, v95);
      v16 = 0;
LABEL_34:
      v37 = v98;
      MEMORY[0x1C6921200](v98);
      if ((v37 & 0x80000000) == 0)
      {
        close(v37);
      }

      v7 = v16;
      goto LABEL_37;
    }

    v18 = *(a1 + 1392);
    if (!v18 || !*v18 || (v19 = *(a1 + 1384)) == 0 || (v20 = *v19) == 0)
    {
      v31 = *__error();
      v32 = _SILogForLogForCategory(0);
      v33 = gSILogLevels[0] < 3;
      if (os_log_type_enabled(v32, (gSILogLevels[0] < 3)))
      {
        *buf = 136315138;
        v100 = "int32_t SISetScanCount(SIRef, CFIndex, _Bool)";
        _os_log_impl(&dword_1C278D000, v32, v33, "*warn* %s called on fs-only index", buf, 0xCu);
      }

      *__error() = v31;
      v34 = 0;
LABEL_31:
      v35 = threadData[9 * v97 + 1] + 320 * v96;
      *(v35 + 312) = v13;
      v36 = *(v35 + 232);
      if (v36)
      {
        v36(*(v35 + 288));
      }

      dropThreadId(v97, 0, add_explicit + 1);
      v16 = v34;
      goto LABEL_34;
    }

    v93 = v13;
    v21 = *(v19 + 8);
    if (v21)
    {
      v22 = v21 - 1;
      do
      {
        if (*(v20 + 8 * v22))
        {
          break;
        }

        *(v19 + 8) = v22--;
      }

      while (v22 != -1);
    }

    v23 = *__error();
    v24 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = "no";
      if (a3)
      {
        v25 = "yes";
      }

      *buf = 134218242;
      v100 = a2;
      v101 = 2080;
      v102 = v25;
      _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_DEFAULT, "SISetScanCount:%ld full:%s", buf, 0x16u);
    }

    v26 = a3;
    v27 = a3;
    *__error() = v23;
    v28 = *(v19 + 8);
    if (v28)
    {
      if (*(*(*v19 + 8 * (v28 - 1)) + 68) <= 1u)
      {
        v29 = *(v18 + 8);
        if (!v29)
        {
          checkIndexSets(a1);
          v60 = 1;
          goto LABEL_69;
        }

        if (v28 == 1)
        {
          v30 = (*v18 + 8 * (v29 - 1));
        }

        else
        {
          v30 = (*v19 + 8 * v28 - 16);
        }

        v61 = *v30;
        if (a2)
        {
          v62 = v28 - 1;
          LODWORD(v28) = *(v61 + 68);
          if (v28 >= 2)
          {
            v28 = v28;
          }

          else
          {
            v28 = 0;
          }

          rebaseIndexes(v19, v62, &a2[*(v61 + 80) + 1025 + v28]);
        }

        v54 = *(v61 + 40);
        v53 = 1;
LABEL_65:
        v63 = v54;
        v64 = v53;
        checkIndexSets(a1);
        v59 = v63;
        v58 = v64;
        v60 = v64;
        if (v63)
        {
LABEL_66:
          v60 = v58;
          v65 = *(a1 + 6876);
          if (v65 >= v59)
          {
            v65 = v59;
          }

          v66 = v59;
          goto LABEL_70;
        }

LABEL_69:
        v66 = 0;
        v65 = *(a1 + 6876);
LABEL_70:
        v91 = v60;
        v92 = v66;
        *(a1 + 6876) = v65;
        if (v65 >= 3)
        {
          v67 = *__error();
          v68 = _SILogForLogForCategory(0);
          v69 = 2 * (gSILogLevels[0] < 4);
          if (os_log_type_enabled(v68, v69))
          {
            v70 = *(a1 + 6876);
            *buf = 67109120;
            LODWORD(v100) = v70;
            _os_log_impl(&dword_1C278D000, v68, v69, "Starting cleanup for transactions below %d", buf, 8u);
          }

          *__error() = v67;
          SIInitialIndexingEnded(a1, (*(a1 + 6876) - 1));
        }

        if (current_index_not_writable(*(a1 + 1384)))
        {
          while (1)
          {
            v71 = ContentIndexListClone(v19);
            v72 = *(v71 + 4);
            if (v72 == -1)
            {
              break;
            }

            v73 = v71;
            if (v72 < *(v71 + 2))
            {
              do
              {
                v74 = *(*v71 + 8 * v72);
                v75 = atomic_load((v74 + 36));
                if ((v75 & 3) == 0 && *(v74 + 15203) != 1)
                {
                  break;
                }

                v76 = *(v71 + 4) + 1;
                *(v71 + 4) = v76;
                v72 = v76;
              }

              while (v76 < *(v71 + 2));
            }

            v77 = _si_scheduler_suspend(*(a1 + 944), "SpotlightIndex.c", 22664);
            if (si_swapIndexSet(a1, v19, v73, (a1 + 1384), v78, v79, v80, v81))
            {
              si_scheduler_resume(*(a1 + 944), v77, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 22671);
              break;
            }

            free(*v73);
            free(v73);
            si_scheduler_resume(*(a1 + 944), v77, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 22667);
          }
        }

        if (v91)
        {
          v82 = *(a1 + 872);
          v13 = v93;
          if (v82)
          {
            v83 = *(v82 + 168);
            *(v82 + 168) = 0;
            v84 = *(a1 + 872);
          }

          else
          {
            v84 = 0;
            v83 = 0;
          }

          si_scheduler_resume(v84, v83, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 22680);
          v34 = v92;
        }

        else
        {
          v34 = v92;
          v13 = v93;
        }

        goto LABEL_31;
      }

      if (!a3)
      {
        v40 = ContentIndexListClone(v19);
        v41 = count_IndexSetForWriting(v40, *(v40 + 2) - 1);
        v42 = *__error();
        v43 = _SILogForLogForCategory(11);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v100) = v41;
          _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "SISetScanCount: Counted %d live indexes", buf, 8u);
        }

        *__error() = v42;
        v44 = *v40;
        v45 = *(v40 + 2) - 1;
        if ((!a2 || v41 > 14 || (v46 = v44[v45]) != 0 && *(v46 + 44) == 1) && (v47 = v44[v45]) != 0 && (v48 = atomic_load((v47 + 36)), (v48 & 3) == 0) && (*(v47 + 15203) & 1) == 0)
        {
          v85 = *(v40 + 2) - 1;
          if (*(v40 + 4) == -1)
          {
            *(v40 + 4) = v85;
          }

          v86 = *(*v40 + 8 * v85);
          v50 = v86[10];
          if (a2)
          {
            ContentIndexSetEmergency(v86, 1);
          }

          v51 = 1;
        }

        else
        {
          v49 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200408F8695FCuLL);
          v49[20] = v27;
          *(v49 + 4) = 0;
          *v49 = a1;
          *(v49 + 1) = a2;
          v50 = *(*(*v40 + 8 * (*(v40 + 2) - 1)) + 40);
          si_enqueue_work_with_qos(*(a1 + 1064), 17, si_set_scan_count, v49);
          v51 = 0;
        }

        v52 = v51;
        free(*v40);
        free(v40);
        v53 = v52;
        v54 = v50;
        goto LABEL_65;
      }
    }

    v55 = *__error();
    v56 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v100 = a2;
      _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "full scan:%ld", buf, 0xCu);
    }

    *__error() = v55;
    if (v26 && *(v19 + 8) && *(**v19 + 80) < a2)
    {
      v87 = __si_assert_copy_extra_661(-1);
      v88 = v87;
      v89 = "";
      if (v87)
      {
        v89 = v87;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 22606, "oldLiveSet->indexCount==0 || (CFIndex)ContentIndexBaseDocId(oldLiveSet->index[0]) >= count", v89);
      free(v88);
      if (__valid_fs(-1))
      {
        v90 = 2989;
      }

      else
      {
        v90 = 3072;
      }

      *v90 = -559038737;
      abort();
    }

    v57 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200408F8695FCuLL);
    v57[20] = v27;
    *(v57 + 4) = 1;
    *v57 = a1;
    *(v57 + 1) = a2;
    si_enqueue_work_with_qos(*(a1 + 1064), 17, si_set_scan_count, v57);
    checkIndexSets(a1);
    v58 = 0;
    v59 = 1;
    goto LABEL_66;
  }

  result = 0;
LABEL_38:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

void checkIndexSets(uint64_t a1)
{
  v2 = *(a1 + 1392);
  do
  {
    do
    {
      v3 = v2;
      v4 = *(a1 + 1384);
      __dmb(0xBu);
      v2 = *(a1 + 1392);
    }

    while (v3 != v2);
  }

  while (v4 != *(a1 + 1384));
  __checkIndexSetDocIdOrder(a1, v4);

  __checkIndexSetDocIdOrder(a1, v3);
}

void rebaseIndexes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) > a2)
  {
    v4 = a2;
    do
    {
      _CIRebaseDocId(*(*a1 + 8 * v4), *(*(*a1 + 8 * v4) + 80) + a3, 22540);
      ++v4;
    }

    while (v4 < *(a1 + 8));
  }
}

uint64_t current_index_not_writable(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 16), v1 == -1))
  {
    v4 = 0;
  }

  else
  {
    v2 = *(*a1 + 8 * v1);
    v3 = atomic_load((v2 + 36));
    if ((v3 & 3) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v2 + 15203);
    }
  }

  return v4 & 1;
}

uint64_t si_swapIndexSet(int *a1, uint64_t a2, unint64_t a3, atomic_ullong *a4, uint64_t a5, int a6, int a7, int a8)
{
  v8 = a2;
  atomic_compare_exchange_strong(a4, &v8, a3);
  if (v8 != a2)
  {
    return 0;
  }

  v11 = 1;
  si_write_index_state(a1, 1, 0, a4, a5, a6, a7, a8);
  si_cleanup(a1, a2);
  atomic_fetch_add_explicit(a1 + 350, 1u, memory_order_relaxed);
  _si_log_indexes(a1);
  return v11;
}

void si_set_scan_count(uint64_t *a1, int a2)
{
  v189 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    goto LABEL_2;
  }

  v4 = *a1;
  if (!*(*a1 + 1048))
  {
    goto LABEL_2;
  }

  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 20);
  v163 = 0;
  if (!fd_setDir(*(v4 + 32), &v163))
  {
    goto LABEL_2;
  }

  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v9 = setThreadIdAndInfo(*(v4 + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v162 = v9;
  v161 = __PAIR64__(HIDWORD(v9), v10);
  v160 = v11;
  v12 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
  *(v12 + 216) = 0;
  v13 = *(v12 + 312);
  v14 = *(v12 + 224);
  v15 = v12;
  if (v14)
  {
    v14(*(v12 + 288));
  }

  v159 = v162;
  v158 = HIDWORD(v161);
  v157 = __PAIR64__(v161, v160);
  if (_setjmp(v15))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &buf, 2u);
    }

    v15[78] = v13;
    CIOnThreadCleanUpReset(v157);
    dropThreadId(v159, 1, add_explicit + 1);
    CICleanUpReset(v159, HIDWORD(v157));
    goto LABEL_107;
  }

  v149 = add_explicit;
  v145 = v7;
  v146 = v6;
  v148 = v13;
  v16 = *(v4 + 1392);
  if (!v16)
  {
LABEL_101:
    v98 = *__error();
    v99 = _SILogForLogForCategory(0);
    v100 = gSILogLevels[0] < 3;
    if (os_log_type_enabled(v99, (gSILogLevels[0] < 3)))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "void si_set_scan_count(void *, Boolean)";
      _os_log_impl(&dword_1C278D000, v99, v100, "*warn* %s called on fs-only index", &buf, 0xCu);
    }

    *__error() = v98;
    v101 = v148;
    goto LABEL_104;
  }

  v17 = (v4 + 1384);
  v147 = (v4 + 1384);
  while (1)
  {
    v18 = *v17;
    if (*v16)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_101;
    }

    v20 = *v18;
    if (!*v18)
    {
      goto LABEL_101;
    }

    v21 = *(v18 + 8);
    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = (v21 - 1);
    v23 = -v21;
    while (!*(v20 + 8 * v22))
    {
      *(v18 + 8) = v22--;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_26;
      }
    }

    if (v145)
    {
      break;
    }

    v29 = ContentIndexListClone(v18);
    v44 = count_IndexSetForWriting(v29, *(v29 + 2) - 1);
    v45 = *__error();
    v46 = _SILogForLogForCategory(11);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v44;
      _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "si_set_scancount: Counted %d live indexes", &buf, 8u);
    }

    *__error() = v45;
    v51 = *v29;
    v52 = *(v29 + 2);
    v53 = v52 - 1;
    if (!v146 || v44 > 14 || (v54 = v51[v53]) != 0 && *(v54 + 44) == 1)
    {
      v55 = v51[v53];
      if (v55)
      {
        v56 = atomic_load((v55 + 36));
        if ((v56 & 3) != 0)
        {
          v52 = *(v29 + 2);
        }

        else
        {
          v52 = *(v29 + 2);
          if ((*(v55 + 15203) & 1) == 0)
          {
            v93 = *(v29 + 2) - 1;
            if (*(v29 + 4) == -1)
            {
              *(v29 + 4) = v93;
            }

            v94 = (*v29)[v93];
            v36 = v94[10];
            v17 = v147;
            if (v146)
            {
              ContentIndexSetEmergency(v94, 1);
            }

            v92 = -1;
            goto LABEL_87;
          }
        }
      }
    }

    if (v52 == *(v29 + 3))
    {
      *(v29 + 3) = 2 * v52;
      v57 = malloc_type_realloc(*v29, 8 * (2 * v52), 0x2004093837F09uLL);
      *v29 = v57;
      bzero(&v57[8 * *(v29 + 2)], 8 * (*(v29 + 3) - *(v29 + 2)));
    }

    v182 = 0u;
    memset(v183, 0, sizeof(v183));
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v171 = 0u;
    memset(__str, 0, sizeof(__str));
    snprintf(__str, 0xFFuLL, "live.%d.", *(v18 + 8));
    v144 = *((*v29)[*(v29 + 2) - 1] + 40);
    v58 = ((*(v5 + 828) & 1) << 6) ^ 0x50;
    if (*(v5 + 2072))
    {
      v58 |= 0x100u;
    }

    if (*(v5 + 2073))
    {
      v58 |= 0x400u;
    }

    v59 = *(v5 + 6584);
    v60 = v58 | (v59 >> 13) & 0x800;
    if (*(v4 + 6944))
    {
      v61 = v60 | 0x1000;
    }

    else
    {
      v61 = v60;
    }

    v153[0] = MEMORY[0x1E69E9820];
    v153[1] = 0x40000000;
    v153[2] = __si_set_scan_count_block_invoke_1944;
    v153[3] = &__block_descriptor_tmp_1945;
    v153[4] = v5;
    v62 = *(v5 + 32);
    v63 = (*v29)[*(v29 + 2) - 1];
    v64 = *(v63 + 68);
    v65 = *(v63 + 80);
    if (v64 >= 2)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0;
    }

    v67 = *(v5 + 1284);
    v68 = *(v5 + 1192);
    if (v68)
    {
      v142 = v4;
      v69 = v61;
      vector_store = db_get_vector_store(v68);
      v61 = v69;
      v4 = v142;
      v71 = vector_store;
    }

    else
    {
      v71 = 0;
    }

    v152[0] = MEMORY[0x1E69E9820];
    v152[1] = 0x40000000;
    v152[2] = __si_set_scan_count_block_invoke_2_1946;
    v152[3] = &__block_descriptor_tmp_1947;
    v152[4] = v5;
    New = ContentIndexCreateNew(v62, @"tmp.", v146 + 1025 + v65 + v66, v144 + 1, v61 | ~(v59 >> 7) & 0x8000, 1, v67, v71, v152, v153, *(v5 + 60));
    v73 = *(v29 + 2);
    (*v29)[v73] = New;
    v143 = New;
    if (New)
    {
      v74 = (*v29)[v73];
      v151[0] = MEMORY[0x1E69E9820];
      v151[1] = 0x40000000;
      v151[2] = __si_set_scan_count_block_invoke_3_1948;
      v151[3] = &__block_descriptor_tmp_1949;
      v151[4] = v5;
      v151[5] = v74;
      ContentIndexSetDirtyCallback(v74, v151);
      v150[0] = MEMORY[0x1E69E9820];
      v150[1] = 0x40000000;
      v150[2] = __si_set_scan_count_block_invoke_4;
      v150[3] = &__block_descriptor_tmp_1950;
      v150[4] = v5;
      v150[5] = v74;
      ContentIndexSetDirtyCallback(v74, v150);
      *(v74 + 15201) = 4;
      v188 = 0;
      v186 = 0u;
      v187 = 0u;
      buf = 0u;
      v185 = 0u;
      *v164 = 0;
      ContentIndexSyncIndex(v74, &buf, v164);
      bzero(&buf + 8, 0x208uLL);
      *&buf = 0x6D6F76650A00;
      DWORD2(buf) = 2;
      BYTE12(buf) = 1;
      LODWORD(v185) = *(v18 + 8);
      HIDWORD(v185) = 1;
      v75 = *(v5 + 1392);
      si_clone_index_metadata_to_inflight(v5);
      __strlcpy_chk();
      v76 = si_openat_protected(*(v5 + 32), "tmp.movePlan", 1538, 3);
      pwrite(v76, &buf, 0x210uLL, 0);
      fcntl(v76, 85);
      ContentIndexChangePrefix(v74);
      unlinkat(*(v5 + 32), "tmp.movePlan", 2048);
      unlinkat(*(v5 + 32), "tmp.spotlight.state.transition", 2048);
      close(v76);
      *(v74 + 15201) = 4;
      v77 = *(v29 + 2) + 1;
      *(v29 + 2) = v77;
      v78 = 1;
    }

    else
    {
      bzero(&buf, 0x400uLL);
      v79 = *__error();
      v80 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        v95 = fcntl(*(v5 + 32), 50, &buf);
        p_buf = 0;
        *v164 = 136315650;
        if (buf)
        {
          v97 = v95 < 0;
        }

        else
        {
          v97 = 1;
        }

        v165 = "si_set_scan_count";
        if (!v97)
        {
          p_buf = &buf;
        }

        v166 = 1024;
        v167 = 22468;
        v168 = 2080;
        v169 = p_buf;
        _os_log_error_impl(&dword_1C278D000, v80, OS_LOG_TYPE_ERROR, "%s:%d: Couldn't create live store at %s.", v164, 0x1Cu);
      }

      *__error() = v79;
      v77 = *(v29 + 2);
      v78 = -1;
    }

    v81 = *(v29 + 4);
    if (v81 == -1)
    {
      v81 = v77 - 1;
      *(v29 + 4) = v77 - 1;
    }

    if (v81 >= v77)
    {
      v87 = v81;
    }

    else
    {
      do
      {
        v82 = (*v29)[v81];
        v83 = atomic_load((v82 + 36));
        if ((v83 & 3) != 0)
        {
          v84 = *(v29 + 4);
          v85 = *(v29 + 2);
        }

        else
        {
          v86 = *(v82 + 15203);
          v84 = *(v29 + 4);
          v85 = *(v29 + 2);
          v77 = v85;
          v87 = v84;
          if (v86 != 1)
          {
            break;
          }
        }

        v88 = v85;
        v89 = v84 + 1;
        *(v29 + 4) = v89;
        v81 = v89;
        v87 = v89;
        v77 = v88;
      }

      while (v89 < v88);
    }

    if (v87 == v77)
    {
      *(v29 + 4) = -1;
    }

    else
    {
      bzero(&buf, 0x400uLL);
      if (v143)
      {
        if (v87 != -1)
        {
          v90 = (*v29)[v87];
          v91 = atomic_load((v90 + 36));
          if ((v91 & 3) != 0 || *(v90 + 15203) == 1)
          {
            v131 = __si_assert_copy_extra_661(*(v5 + 32));
            v132 = v131;
            if (v131)
            {
              v133 = v131;
            }

            else
            {
              v133 = "";
            }

            v134 = fcntl(*(v5 + 32), 50, &buf);
            v135 = 0;
            if (buf)
            {
              v136 = v134 < 0;
            }

            else
            {
              v136 = 1;
            }

            if (!v136)
            {
              v135 = &buf;
            }

            __message_assert("%s:%u: failed assertion '%s' %s No writable index available for %s", "SpotlightIndex.c", 22483, "(ci_rc != ContentIndex_OpenedNew) || (indexSet->currentIndex==~0) || ContentIndexWritable(indexSet->index[indexSet->currentIndex])", v133, v135);
            free(v132);
            v137 = *(v5 + 32);
LABEL_167:
            if (__valid_fs(v137))
            {
              v141 = 2989;
            }

            else
            {
              v141 = 3072;
            }

            *v141 = -559038737;
            abort();
          }
        }
      }
    }

    v36 = v144;
    v92 = v78;
    v17 = v147;
LABEL_87:
    if (si_swapIndexSet(v5, v18, v29, v17, v47, v48, v49, v50))
    {
      goto LABEL_112;
    }

    if (v92 == 1)
    {
      v43 = &(*v29)[*(v29 + 2) - 1];
      goto LABEL_39;
    }

LABEL_40:
    free(*v29);
    free(v29);
    v16 = *(v5 + 1392);
    if (!v16)
    {
      goto LABEL_101;
    }
  }

  if (*(*v20 + 80) < v146)
  {
    v127 = __si_assert_copy_extra_661(-1);
    v128 = v127;
    v129 = "";
    if (v127)
    {
      v129 = v127;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 22295, "oldLiveSet->indexCount==0 || (CFIndex)ContentIndexBaseDocId(oldLiveSet->index[0]) >= count", v129);
    free(v128);
    if (__valid_fs(-1))
    {
      v130 = 2989;
    }

    else
    {
      v130 = 3072;
    }

    *v130 = -559038737;
    abort();
  }

LABEL_26:
  v25 = ((*(v5 + 828) & 1) << 6) ^ 0x50;
  if (*(v5 + 2072))
  {
    v25 |= 0x100u;
  }

  if (*(v5 + 2073))
  {
    v25 |= 0x400u;
  }

  v26 = *(v5 + 6584);
  v27 = v25 | (v26 >> 13) & 0x800;
  if (*(v4 + 6944))
  {
    v28 = v27 | 0x1000;
  }

  else
  {
    v28 = v27;
  }

  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 0x40000000;
  v156[2] = __si_set_scan_count_block_invoke;
  v156[3] = &__block_descriptor_tmp_1941;
  v156[4] = v5;
  v29 = ContentIndexListClone(v18);
  v30 = *(v5 + 32);
  v31 = *(v5 + 1284);
  v32 = *(v5 + 1192);
  if (v32)
  {
    v33 = db_get_vector_store(v32);
  }

  else
  {
    v33 = 0;
  }

  v155[0] = MEMORY[0x1E69E9820];
  v155[1] = 0x40000000;
  v155[2] = __si_set_scan_count_block_invoke_2;
  v155[3] = &__block_descriptor_tmp_1942;
  v155[4] = v5;
  v34 = ContentIndexCreateNew(v30, @"tmp.", v146 + 1025, 2, v28 | ~(v26 >> 7) & 0x8000, 1, v31, v33, v155, v156, *(v5 + 60));
  **v29 = v34;
  if (!v34)
  {
    bzero(&buf, 0x400uLL);
    v105 = *__error();
    v106 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      v124 = fcntl(*(v5 + 32), 50, &buf);
      v125 = 0;
      *__str = 136315650;
      *&__str[4] = "si_set_scan_count";
      if (buf)
      {
        v126 = v124 < 0;
      }

      else
      {
        v126 = 1;
      }

      if (!v126)
      {
        v125 = &buf;
      }

      *&__str[12] = 1024;
      *&__str[14] = 22370;
      *&__str[18] = 2080;
      *&__str[20] = v125;
      _os_log_error_impl(&dword_1C278D000, v106, OS_LOG_TYPE_ERROR, "%s:%d: Couldn't create live store at %s.", __str, 0x1Cu);
    }

    *__error() = v105;
    v36 = 1;
    v107 = 0;
    goto LABEL_113;
  }

  v35 = **v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __si_set_scan_count_block_invoke_3;
  aBlock[3] = &__block_descriptor_tmp_1943;
  aBlock[4] = v5;
  aBlock[5] = v35;
  ContentIndexSetDirtyCallback(v35, aBlock);
  *(v35 + 15201) = 4;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  buf = 0u;
  v185 = 0u;
  *__str = 0;
  ContentIndexSyncIndex(v35, &buf, __str);
  bzero(&buf + 8, 0x208uLL);
  *&buf = 0x6D6F76650A00;
  DWORD2(buf) = 2;
  v36 = 1;
  BYTE12(buf) = 1;
  HIDWORD(v185) = 1;
  *(v29 + 2) = 1;
  *(v29 + 4) = -1;
  v37 = *(v5 + 1392);
  si_clone_index_metadata_to_inflight(v5);
  v38 = **v29;
  __strlcpy_chk();
  LODWORD(v35) = si_openat_protected(*(v5 + 32), "tmp.movePlan", 1538, 3);
  pwrite(v35, &buf, 0x210uLL, 0);
  fcntl(v35, 85);
  ContentIndexChangePrefix(**v29);
  unlinkat(*(v5 + 32), "tmp.movePlan", 2048);
  close(v35);
  v17 = v147;
  if (!si_swapIndexSet(v5, v18, v29, v147, v39, v40, v41, v42))
  {
    v43 = *v29;
LABEL_39:
    ContentIndexDeleteIndex(*v43, 1);
    goto LABEL_40;
  }

  v92 = 1;
LABEL_112:
  v107 = v92 >= 0;
LABEL_113:
  v101 = v148;
  v108 = *v147;
  if (*v147)
  {
    *&buf = v5;
    __checkIndexSetDocIdOrder(v5, v108);
  }

  v109 = *(v5 + 1392);
  if (v109)
  {
    *&buf = v5;
    __checkIndexSetDocIdOrder(v5, v109);
  }

  v110 = *(v5 + 6876);
  if (v110 >= v36)
  {
    v111 = v36;
  }

  else
  {
    v111 = *(v5 + 6876);
  }

  if (v36)
  {
    v110 = v111;
  }

  *(v5 + 6876) = v110;
  if (v110 >= 3)
  {
    v112 = *__error();
    v113 = _SILogForLogForCategory(0);
    v114 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v113, v114))
    {
      v115 = *(v5 + 6876);
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v115;
      _os_log_impl(&dword_1C278D000, v113, v114, "Starting cleanup for transactions below %d", &buf, 8u);
    }

    *__error() = v112;
    SIInitialIndexingEnded(v5, (*(v5 + 6876) - 1));
  }

  v116 = *v147;
  if (*v147)
  {
    v117 = *(v116 + 16);
    if (v117 != -1)
    {
      v118 = *(*v116 + 8 * v117);
      v119 = atomic_load((v118 + 36));
      if ((v119 & 3) != 0 || *(v118 + 15203) == 1)
      {
        v138 = __si_assert_copy_extra_661(-1);
        v139 = v138;
        v140 = "";
        if (v138)
        {
          v140 = v138;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 22511, "!ref->liveSet || ref->liveSet->currentIndex==~0 || ContentIndexWritable(ref->liveSet->index[ref->liveSet->currentIndex])", v140);
        free(v139);
        v137 = -1;
        goto LABEL_167;
      }
    }
  }

  if (v107)
  {
    v120 = *(v5 + 872);
    if (v120)
    {
      v121 = *(v120 + 168);
      *(v120 + 168) = 0;
      v122 = *(v5 + 872);
    }

    else
    {
      v122 = 0;
      v121 = 0;
    }

    si_scheduler_resume(v122, v121, "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/index/SpotlightIndex/SpotlightIndex.c", 22516);
  }

  else
  {
    if ((atomic_load_explicit((v4 + 2439), memory_order_acquire) & 1) == 0)
    {
      if (SIIsAppleInternal_onceToken != -1)
      {
        dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
      }

      if (SIIsAppleInternal_internal)
      {
        if (!atomic_fetch_add_explicit(&si_set_scan_count__crashCount, 1u, memory_order_relaxed))
        {
          v123 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"si_set_scan_count, rc:%d", 0xFFFFFFFFLL);
          getpid();
          SISimulateCrashForPid(0, v123);
          if (v123)
          {
            CFRelease(v123);
          }
        }
      }
    }

    si_makeUnavailable(v5, 22, 2, 14, "could not create live index");
  }

LABEL_104:
  v102 = threadData[9 * v159 + 1] + 320 * v158;
  *(v102 + 312) = v101;
  v103 = *(v102 + 232);
  if (v103)
  {
    v103(*(v102 + 288));
  }

  dropThreadId(v159, 0, v149 + 1);
LABEL_107:
  v104 = v163;
  MEMORY[0x1C6921200](v163);
  if ((v104 & 0x80000000) == 0)
  {
    close(v104);
  }

LABEL_2:
  free(a1);
  v3 = *MEMORY[0x1E69E9840];
}