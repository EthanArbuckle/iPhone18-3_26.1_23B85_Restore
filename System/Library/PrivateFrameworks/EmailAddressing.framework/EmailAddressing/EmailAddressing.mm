void sub_249FAD65C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_249FAD96C(_Unwind_Exception *a1)
{
  objc_sync_exit(@"com.apple.EmailAddressing.rawAddressesLock");

  _Unwind_Resume(a1);
}

id _createStringByApplyingIDNATranslationWithRange(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, _OWORD *, unint64_t, uint64_t, void, _DWORD *, int *))
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a1;
  if (_createStringByApplyingIDNATranslationWithRange_onceToken != -1)
  {
    _createStringByApplyingIDNATranslationWithRange_cold_1();
  }

  if (!_createStringByApplyingIDNATranslationWithRange_sIDNA)
  {
    goto LABEL_5;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[30] = v8;
  v25[31] = v8;
  v25[28] = v8;
  v25[29] = v8;
  v25[26] = v8;
  v25[27] = v8;
  v25[24] = v8;
  v25[25] = v8;
  v25[22] = v8;
  v25[23] = v8;
  v25[20] = v8;
  v25[21] = v8;
  v25[18] = v8;
  v25[19] = v8;
  v25[16] = v8;
  v25[17] = v8;
  v25[14] = v8;
  v25[15] = v8;
  v25[12] = v8;
  v25[13] = v8;
  v25[10] = v8;
  v25[11] = v8;
  v25[8] = v8;
  v25[9] = v8;
  v25[6] = v8;
  v25[7] = v8;
  v25[4] = v8;
  v25[5] = v8;
  v25[2] = v8;
  v25[3] = v8;
  v25[0] = v8;
  v25[1] = v8;
  if (a3 >> 31)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_32;
  }

  if (a3 < 0x101)
  {
    v10 = v25;
  }

  else
  {
    v10 = MEMORY[0x24C20B220](*MEMORY[0x277CBECE8], 2 * a3, 0x1000040BDFB0063, 0);
  }

  [v7 getCharacters:v10 range:{a2, a3}];
  v24 = 0;
  LOWORD(v23[0]) = 16;
  memset(v23 + 2, 0, 14);
  v11 = a4(_createStringByApplyingIDNATranslationWithRange_sIDNA, v10, a3, 0, 0, v23, &v24);
  v12 = v11;
  v14 = v24 < 1 && v23[1] == 0;
  if (v24 != 15 && !v14)
  {
    goto LABEL_25;
  }

  v15 = *MEMORY[0x277CBECE8];
  v16 = MEMORY[0x24C20B220](*MEMORY[0x277CBECE8], 2 * (v11 + 1), 0x1000040BDFB0063, 0);
  v17 = v16;
  v18 = v16 ? 0 : 7;
  v24 = v18;
  if (!v16)
  {
    goto LABEL_25;
  }

  LOWORD(v22[0]) = 16;
  memset(v22 + 2, 0, 14);
  a4(_createStringByApplyingIDNATranslationWithRange_sIDNA, v10, a3, v16, (v12 + 1), v22, &v24);
  if (v24 > 0 || v22[1])
  {
    CFAllocatorDeallocate(v15, v17);
LABEL_25:
    v19 = 0;
    goto LABEL_26;
  }

  v19 = CFStringCreateWithCharactersNoCopy(v15, v17, v12, v15);
LABEL_26:
  if (a3 >= 0x101)
  {
    CFAllocatorDeallocate(*MEMORY[0x277CBECE8], v10);
  }

  if (v19)
  {
    v9 = [v7 mutableCopy];
    [v9 replaceCharactersInRange:a2 withString:{a3, v19}];
  }

  else
  {
    v9 = 0;
  }

LABEL_32:
  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

void ___createStringByApplyingIDNATranslationWithRange_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  code = U_ZERO_ERROR;
  _createStringByApplyingIDNATranslationWithRange_sIDNA = MEMORY[0x24C20B650](60, &code);
  if (code >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v0 = +[EAEmailAddressParser log];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      v1 = u_errorName(code);
      ___createStringByApplyingIDNATranslationWithRange_block_invoke_cold_1(v1, buf, v0);
    }

    _createStringByApplyingIDNATranslationWithRange_sIDNA = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
}

void sub_249FAF4A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_249FB0244(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_249FB0320(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_249FB0404(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

unsigned __int8 *EAAddressComment(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3)
{
  v4 = a2;
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = a1[v6];
      if (v10 != 92)
      {
        if (v10 == 34 && v8 == 0)
        {
          v8 = 0;
          v7 ^= 1u;
        }

        else if ((v10 != 40) | v7 & 1)
        {
          if ((v10 != 41) | v7 & 1)
          {
            if (v10 == 60 && ((v7 ^ 1) & 1) != 0 && !v8)
            {
              v47 = 1;
              goto LABEL_19;
            }
          }

          else
          {
            v7 = 0;
            --v8;
          }
        }

        else
        {
          v7 = 0;
          ++v8;
        }
      }

      v6 = v9++;
    }

    while (v6 < a2);
    v47 = 0;
LABEL_19:
    v12 = NSZoneMalloc(0, a2 + 1);
    v13 = 0;
    v14 = 0;
    ptr = v12;
    v49 = 0;
    __src = 0;
    v50 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
    v51 = v12;
    v20 = a3;
    v21 = MEMORY[0x277D85DE0];
    while (1)
    {
      v22 = &a1[v13];
      v23 = a1[v13];
      if (v23 != 92)
      {
        break;
      }

      if (v15 & 1 | (v22[1] == 0))
      {
        v24 = 92;
        goto LABEL_41;
      }

      v15 = 1;
LABEL_74:
      v13 = v19++;
      if (v13 >= v4)
      {
        LOBYTE(v4) = (v18 != 0) | v17;
        goto LABEL_78;
      }
    }

    if (v23 == 34 && v18 == 0)
    {
      v18 = 0;
      v17 ^= 1u;
      v24 = 34;
      goto LABEL_41;
    }

    if (!((v23 != 41) | v17 & 1))
    {
      v17 = 0;
      --v18;
      v24 = 41;
      goto LABEL_41;
    }

    if (v23 == 60 && ((v17 ^ 1) & 1) != 0 && !v18)
    {
      if ((v50 & 1) == 0)
      {
        v49 = 0;
        v50 = 0;
        v18 = 0;
        v16 = 1;
        v24 = 60;
        v51 = ptr;
        __src = v20;
        goto LABEL_41;
      }

      v26 = NSZoneMalloc(0, v4 + 1);
      v27 = v20 - __src;
      memcpy(v26, __src, v27);
      memcpy(__src, ptr, v49);
      v28 = &__src[v49];
      if (v14 >= 1)
      {
        *v28++ = 32;
      }

      v14 -= v14 > 0;
      memcpy(v28, v26, v27);
      v20 = &v28[v27];
      NSZoneFree(0, v26);
      v18 = 0;
      v50 = 0;
      v49 = 0;
      LOBYTE(v23) = *v22;
      v16 = 1;
      __src = v20;
      v51 = ptr;
      v21 = MEMORY[0x277D85DE0];
    }

    v24 = v23;
    if ((v23 & 0x80) != 0)
    {
      v29 = __maskrune(v23, 0x4000uLL);
      v21 = MEMORY[0x277D85DE0];
      if (!v29)
      {
LABEL_47:
        v32 = *v22;
        if (v32 != 44 || v20 <= a3)
        {
LABEL_57:
          if (v32 != 34 || v18)
          {
            if (v47)
            {
              if (v16)
              {
                goto LABEL_66;
              }

LABEL_63:
              *v20++ = v32;
              goto LABEL_68;
            }

            if (v18 >= 1)
            {
              goto LABEL_63;
            }

            if (v16)
            {
LABEL_66:
              *v51++ = v32;
              ++v49;
              v16 = 1;
              goto LABEL_68;
            }

            v16 = 0;
          }

LABEL_68:
          v36 = *v22;
          if ((v36 != 40) | v17 & 1)
          {
            v15 = 0;
            if (!((v36 != 62) | v17 & 1) && !v18)
            {
              v18 = 0;
              v17 = 0;
              if (v16)
              {
                v16 = 0;
                v15 = 0;
                *v51 = 0;
                v50 = 1;
              }

              else
              {
                v16 = 0;
                v15 = 0;
              }
            }
          }

          else
          {
            v17 = 0;
            v15 = 0;
            ++v18;
          }

          goto LABEL_74;
        }

        v34 = *(v20 - 1);
        if ((v34 & 0x80000000) != 0)
        {
          v35 = __maskrune(v34, 0x4000uLL);
          v21 = MEMORY[0x277D85DE0];
          if (v35)
          {
            goto LABEL_54;
          }
        }

        else if ((*(v21 + 4 * v34 + 60) & 0x4000) != 0)
        {
LABEL_54:
          *(v20 - 1) = 44;
          goto LABEL_68;
        }

        v32 = *v22;
        goto LABEL_57;
      }

LABEL_42:
      if (v20 != a3)
      {
        v30 = *(v20 - 1);
        if ((v30 & 0x80000000) != 0)
        {
          v31 = __maskrune(v30, 0x4000uLL);
          v21 = MEMORY[0x277D85DE0];
          if (!v31)
          {
            goto LABEL_47;
          }
        }

        else if ((*(v21 + 4 * v30 + 60) & 0x4000) == 0)
        {
          goto LABEL_47;
        }
      }

      ++v14;
      goto LABEL_68;
    }

LABEL_41:
    if ((*(v21 + 4 * v24 + 60) & 0x4000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  ptr = NSZoneMalloc(0, 1uLL);
  v20 = a3;
  v21 = MEMORY[0x277D85DE0];
LABEL_78:
  while (1)
  {
    v37 = v20;
    if (v20 <= a3)
    {
      break;
    }

    --v20;
    v38 = *(v37 - 1);
    if ((v38 & 0x80000000) != 0)
    {
      v39 = __maskrune(v38, 0x4000uLL);
      v21 = MEMORY[0x277D85DE0];
      if (!v39)
      {
        break;
      }
    }

    else if ((*(v21 + 4 * v38 + 60) & 0x4000) == 0)
    {
      break;
    }
  }

  *v37 = 0;
  if (v4)
  {
    v40 = a1;
  }

  else if (v37 <= a3 + 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = 0;
    do
    {
      v41 = *a3;
      if (v41 == 39)
      {
        if (*(v37 - 1) != 39)
        {
          goto LABEL_95;
        }
      }

      else if (v41 != 34 || *(v37 - 1) != 34)
      {
        goto LABEL_95;
      }

      *--v37 = 0;
      v40 = a3 + 1;
    }

    while (v37 > a3 + 1);
    v40 = a3 + 1;
  }

LABEL_95:
  if (v37 == a3)
  {
    v42 = 0;
  }

  else
  {
    v42 = a3;
  }

  if (!v40)
  {
    v40 = v42;
  }

  if (v40)
  {
    v43 = 0;
  }

  else
  {
    v43 = v37 == a3;
  }

  if (v43)
  {
    v44 = a1;
  }

  else
  {
    v44 = v40;
  }

  NSZoneFree(0, ptr);
  return v44;
}

void ___createStringByApplyingIDNATranslationWithRange_block_invoke_cold_1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_249FAA000, log, OS_LOG_TYPE_ERROR, "failed to create UIDNA pointer, IDNA domain names will be broken: %s", buf, 0xCu);
}