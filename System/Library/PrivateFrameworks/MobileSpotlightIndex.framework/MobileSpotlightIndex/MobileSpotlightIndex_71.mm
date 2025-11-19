uint64_t _PayloadScannerReadBytes(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  while (1)
  {
    v3 = *(a1 + 56);
    if (v3 >= *(a1 + 64))
    {
      break;
    }

    *(a1 + 56) = v3 + 1;
    *a2 = *v3;
LABEL_3:
    ++a2;
    if (!--a3)
    {
      return 1;
    }
  }

  v4 = a1;
  v5 = a2;
  v6 = a3;
  NextChar = _PayloadScannerReadNextChar(a1, a2);
  a2 = v5;
  a3 = v6;
  v8 = NextChar;
  a1 = v4;
  if (v8)
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t PayloadScannerReadVInt64(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v31 = 0;
  v1 = *(a1 + 56);
  if (v1 >= *(a1 + 64))
  {
    v15 = &v31;
    v16 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v31))
    {
      goto LABEL_55;
    }

    a1 = v16;
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v1 + 1;
    LOBYTE(v31) = *v1;
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_56;
    }
  }

  v2 = *(a1 + 56);
  if (v2 >= *(a1 + 64))
  {
    v15 = (&v31 + 1);
    v23 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v31 + 1))
    {
      goto LABEL_55;
    }

    a1 = v23;
    if ((v31 & 0x8000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v2 + 1;
    BYTE1(v31) = *v2;
    if ((v31 & 0x8000) == 0)
    {
      goto LABEL_56;
    }
  }

  v3 = *(a1 + 56);
  if (v3 >= *(a1 + 64))
  {
    v15 = &v31 + 1;
    v24 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v31 + 2))
    {
      goto LABEL_55;
    }

    a1 = v24;
    if ((v31 & 0x800000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v3 + 1;
    BYTE2(v31) = *v3;
    if ((v31 & 0x800000) == 0)
    {
      goto LABEL_56;
    }
  }

  v4 = *(a1 + 56);
  if (v4 >= *(a1 + 64))
  {
    v15 = (&v31 + 3);
    v25 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v31 + 3))
    {
      goto LABEL_55;
    }

    a1 = v25;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v4 + 1;
    BYTE3(v31) = *v4;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }
  }

  v5 = *(a1 + 56);
  if (v5 >= *(a1 + 64))
  {
    v15 = &v31 + 2;
    v26 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v31 + 4))
    {
      goto LABEL_55;
    }

    a1 = v26;
    if ((v31 & 0x8000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v5 + 1;
    BYTE4(v31) = *v5;
    if ((v31 & 0x8000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  v6 = *(a1 + 56);
  if (v6 >= *(a1 + 64))
  {
    v15 = (&v31 + 5);
    v27 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v31 + 5))
    {
      goto LABEL_55;
    }

    a1 = v27;
    if ((v31 & 0x800000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v6 + 1;
    BYTE5(v31) = *v6;
    if ((v31 & 0x800000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  v7 = *(a1 + 56);
  if (v7 >= *(a1 + 64))
  {
    v15 = &v31 + 3;
    v28 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v31 + 6))
    {
      goto LABEL_55;
    }

    a1 = v28;
    if ((v31 & 0x80000000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v7 + 1;
    BYTE6(v31) = *v7;
    if ((v31 & 0x80000000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  v8 = *(a1 + 56);
  if (v8 >= *(a1 + 64))
  {
    v15 = (&v31 + 7);
    v29 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v31 + 7))
    {
      goto LABEL_55;
    }

    a1 = v29;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v8 + 1;
    HIBYTE(v31) = *v8;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }
  }

  v9 = *(a1 + 56);
  if (v9 >= *(a1 + 64))
  {
    v15 = &v32;
    v30 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v32))
    {
      goto LABEL_55;
    }

    a1 = v30;
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    *(a1 + 56) = v9 + 1;
    LOBYTE(v32) = *v9;
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_56;
    }
  }

  v10 = *(a1 + 56);
  if (v10 < *(a1 + 64))
  {
    *(a1 + 56) = v10 + 1;
    HIBYTE(v32) = *v10;
    if (v32 < 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

  v15 = (&v32 + 1);
  if (!_PayloadScannerReadNextChar(a1, &v32 + 1))
  {
LABEL_55:
    *v15 = 0;
    goto LABEL_56;
  }

  if (v32 < 0)
  {
LABEL_21:
    v11 = __si_assert_copy_extra_2708(0);
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 329, "i < 10", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      v14 = 2989;
    }

    else
    {
      v14 = 3072;
    }

    *v14 = -559038737;
    abort();
  }

LABEL_56:
  v17 = 0;
  result = 0;
  v19 = &v31;
  do
  {
    v20 = *v19++;
    result |= (v20 & 0x7F) << v17;
    if ((v20 & 0x80) == 0)
    {
      break;
    }

    v21 = v17 == 63;
    v17 += 7;
  }

  while (!v21);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PayloadScannerReadVInt32(uint64_t a1)
{
  v20[0] = 0;
  v19 = 0;
  v1 = *(a1 + 56);
  if (v1 >= *(a1 + 64))
  {
    v7 = &v19;
    v8 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v19))
    {
      goto LABEL_43;
    }

    a1 = v8;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 56) = v1 + 1;
    LOBYTE(v19) = *v1;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_11;
    }
  }

  v2 = *(a1 + 56);
  if (v2 >= *(a1 + 64))
  {
    v7 = (&v19 + 1);
    v16 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v19 + 1))
    {
      goto LABEL_43;
    }

    a1 = v16;
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 56) = v2 + 1;
    BYTE1(v19) = *v2;
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_11;
    }
  }

  v3 = *(a1 + 56);
  if (v3 >= *(a1 + 64))
  {
    v7 = (&v19 + 2);
    v17 = a1;
    if (!_PayloadScannerReadNextChar(a1, &v19 + 2))
    {
      goto LABEL_43;
    }

    a1 = v17;
    if ((v19 & 0x800000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 56) = v3 + 1;
    BYTE2(v19) = *v3;
    if ((v19 & 0x800000) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(a1 + 56);
  if (v4 < *(a1 + 64))
  {
    *(a1 + 56) = v4 + 1;
    HIBYTE(v19) = *v4;
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v7 = (&v19 + 3);
  v18 = a1;
  if (!_PayloadScannerReadNextChar(a1, &v19 + 3))
  {
LABEL_43:
    *v7 = 0;
    goto LABEL_11;
  }

  a1 = v18;
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v5 = *(a1 + 56);
  if (v5 < *(a1 + 64))
  {
    *(a1 + 56) = v5 + 1;
    v20[0] = *v5;
    if ((v20[0] & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_39:
    v12 = __si_assert_copy_extra_2708(0);
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 342, "i < 5", v14);
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

  v7 = v20;
  if (!_PayloadScannerReadNextChar(a1, v20))
  {
    goto LABEL_43;
  }

  if ((v20[0] & 0x80) != 0)
  {
    goto LABEL_39;
  }

LABEL_11:
  result = v19;
  if (v19 < 0)
  {
    if (SBYTE1(v19) < 0)
    {
      if (SBYTE2(v19) < 0)
      {
        if (SHIBYTE(v19) < 0)
        {
          if ((v20[0] & 0x80000000) != 0)
          {
            v9 = __si_assert_copy_extra_2708(0);
            v10 = v9;
            v11 = "";
            if (v9)
            {
              v11 = v9;
            }

            __message_assert("%s:%u: failed assertion '%s' %s readVInt32: exceeds max size for uint32_t", "VIntUtils.h", 342, "(b4 & 0x80) == 0", v11);
            free(v10);
            if (__valid_fs(-1))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          return ((HIBYTE(v19) & 0x7F) << 21) | (v20[0] << 28) | ((BYTE2(v19) & 0x7F) << 14) | ((BYTE1(v19) & 0x7F) << 7) | v19 & 0x7Fu;
        }

        else
        {
          return ((BYTE2(v19) & 0x7F) << 14) | (HIBYTE(v19) << 21) | ((BYTE1(v19) & 0x7F) << 7) | v19 & 0x7Fu;
        }
      }

      else
      {
        return ((BYTE1(v19) & 0x7F) << 7) | (BYTE2(v19) << 14) | v19 & 0x7Fu;
      }
    }

    else
    {
      return v19 & 0x7F | (BYTE1(v19) << 7);
    }
  }

  return result;
}

uint64_t PayloadPulsesWriteBytesFromScanner(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = result;
  v7 = *(a2 + 24);
  if (a3 < v7)
  {
    v8 = *(a2 + 48);
LABEL_4:
    *(a2 + 56) = v8;
    *(a2 + 64) = v8;
    v9 = v8;
    v7 = a3;
    *(a2 + 24) = a3;
    goto LABEL_6;
  }

  v8 = *(a2 + 48);
  if (v7 + *(a2 + 64) - v8 < a3)
  {
    goto LABEL_4;
  }

  v9 = v8 + a3 - v7;
  *(a2 + 56) = v9;
LABEL_6:
  if (v7 + v9 - v8 != a3)
  {
    v20 = __si_assert_copy_extra_2708(0);
    v21 = v20;
    v22 = "";
    if (v20)
    {
      v22 = v20;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 100, "PayloadScannerPosition(scanner) == position", v22);
    free(v21);
    if (__valid_fs(-1))
    {
      v23 = 2989;
    }

    else
    {
      v23 = 3072;
    }

    *v23 = -559038737;
    abort();
  }

  if (a4)
  {
    while (!*(v6 + 60))
    {
      v10 = *(v6 + 32);
      v11 = *(v6 + 40);
      if (v11 - v10 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11 - v10;
      }

      if (v11 == v10)
      {
        goto LABEL_9;
      }

      v13 = *(v6 + 48);
      v14 = *(a2 + 56);
      if ((*(a2 + 64) - v14) < v12)
      {
        result = _PayloadScannerReadBytes(a2, (v13 + v10), v12);
        if ((result & 1) == 0)
        {
          if (!*(a2 + 72))
          {
            v17 = __si_assert_copy_extra_2708(*(a2 + 16));
            v18 = v17;
            v19 = "";
            if (v17)
            {
              v19 = v17;
            }

            __message_assert("%s:%u: failed assertion '%s' %s offset: %lld end: %lld", "CIPayloadCompact.c", 493, "false", v19, *(a2 + 24) + *(a2 + 56) - *(a2 + 48), *(a2 + 32));
            free(v18);
            if (__valid_fsp(*(a2 + 16)))
            {
              MEMORY[0xBAD] = -559038737;
              abort();
            }

            MEMORY[0xC00] = -559038737;
            abort();
          }

          return result;
        }
      }

      else
      {
        result = memcpy((v13 + v10), v14, v12);
        *(a2 + 56) += v12;
      }

      v15 = *(v6 + 40);
      v16 = *(v6 + 32) + v12;
      *(v6 + 32) = v16;
      if (v16 == v15)
      {
LABEL_9:
        result = PayloadPulsesWrite(v6);
      }

      v4 -= v12;
      if (!v4)
      {
        return result;
      }
    }
  }

  return result;
}

void *PayloadScannerSkipPositionsData(void *result)
{
  v18 = 0;
  while (1)
  {
    v1 = result[7];
    if (v1 < result[8])
    {
      break;
    }

    v7 = result;
    result = _PayloadScannerReadNextChar(result, &v18);
    if (!result)
    {
      return result;
    }

    result = v7;
    v2 = v18;
    if (!v18)
    {
      goto LABEL_4;
    }

LABEL_6:
    if ((v2 & 0x80) != 0)
    {
      if (v2 >= 0xC0)
      {
        if (v2 >= 0xE0)
        {
          if (v2 >= 0xF0)
          {
            if (v2 >= 0xF8)
            {
              if (v2 == 255)
              {
                v4 = 8;
              }

              else
              {
                v4 = 7;
              }

              if (v2 < 0xFE)
              {
                v4 = 6;
              }

              if (v2 < 0xFC)
              {
                v4 = 5;
              }
            }

            else
            {
              v4 = 4;
            }
          }

          else
          {
            v4 = 3;
          }
        }

        else
        {
          v4 = 2;
        }
      }

      else
      {
        v4 = 1;
      }

      v6 = result[7];
      v5 = result[8];
      if (v5 < v6 + v4)
      {
        v9 = result[3];
        v10 = result[6];
        v11 = v4 + v6 + v9 - v10;
        v12 = v11 - v9;
        if (v11 >= v9 && v9 + v5 - v10 >= v11)
        {
          v13 = v10 + v12;
          result[7] = v10 + v12;
        }

        else
        {
          result[7] = v10;
          result[8] = v10;
          v13 = v10;
          v9 = v11;
          result[3] = v11;
        }

        if (v9 - v10 + v13 != v11)
        {
          v14 = __si_assert_copy_extra_2708(0);
          v15 = v14;
          v16 = "";
          if (v14)
          {
            v16 = v14;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 100, "PayloadScannerPosition(scanner) == position", v16);
          free(v15);
          if (__valid_fs(-1))
          {
            v17 = 2989;
          }

          else
          {
            v17 = 3072;
          }

          *v17 = -559038737;
          abort();
        }
      }

      else
      {
        result[7] = v6 + v4;
      }
    }
  }

  result[7] = v1 + 1;
  v2 = *v1;
  v18 = v2;
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v3 = result[7];
  if (v3 < result[8])
  {
    result[7] = v3 + 1;
    v2 = *v3;
    v18 = v2;
    if (!v2)
    {
      return result;
    }

    goto LABEL_6;
  }

  v8 = result;
  result = _PayloadScannerReadNextChar(result, &v18);
  if (result)
  {
    result = v8;
    v2 = v18;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t PayloadScannerFirstPostingIfLink(void *a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  VInt64 = PayloadScannerReadVInt64(a1);
  if (VInt64)
  {
    VInt32 = PayloadScannerReadVInt32(a1);
    if (a1[3] + VInt32 + a1[7] - a1[6] <= a1[4])
    {
      goto LABEL_6;
    }

    v15 = __si_assert_copy_extra_2708(0);
    v16 = v15;
    v17 = "";
    if (v15)
    {
      v17 = v15;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 757, "PayloadScannerPosition(s) + remaining <= s->end", v17);
LABEL_13:
    free(v16);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v9 = PayloadScannerReadVInt64(a1);
  *a2 = 1;
  *(a2 + 4) = v9 >> 1;
  if ((v9 & 1) == 0)
  {
    v10 = PayloadScannerReadVInt32(a1);
    *a2 = v10;
    if (!v10)
    {
      v14 = PayloadScannerReadVInt32(a1);
      if (v14 < 3)
      {
        v12 = v14;
        VInt32 = 0;
        goto LABEL_7;
      }

      v18 = __si_assert_copy_extra_2708(0);
      v16 = v18;
      v19 = "";
      if (v18)
      {
        v19 = v18;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 767, "_type >= 0 && _type <= 2", v19);
      goto LABEL_13;
    }
  }

  VInt32 = 0;
LABEL_6:
  v12 = 0;
LABEL_7:
  *a3 = VInt32;
  *a4 = VInt64;
  return v12;
}

uint64_t packPostingChunkForSingleDocIDOfType(_BYTE *a1, unint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v6 = writeVInt64(a1, 0, a2);
    v7 = writeVInt64(a1, v6, a2);
    if (a3 >> 28)
    {
      v10 = &a1[v7];
      *v10 = a3 | 0x80;
      v10[1] = (a3 >> 7) | 0x80;
      v10[2] = (a3 >> 14) | 0x80;
      v10[3] = (a3 >> 21) | 0x80;
      v9 = v7 + 5;
      v10[4] = a3 >> 28;
    }

    else if (a3 >= 0x200000)
    {
      v11 = &a1[v7];
      *v11 = a3 | 0x80;
      v11[1] = (a3 >> 7) | 0x80;
      v11[2] = (a3 >> 14) | 0x80;
      v9 = v7 + 4;
      v11[3] = a3 >> 21;
    }

    else
    {
      v8 = &a1[v7];
      if (a3 >= 0x4000)
      {
        *v8 = a3 | 0x80;
        v8[1] = (a3 >> 7) | 0x80;
        v9 = v7 + 3;
        v8[2] = a3 >> 14;
      }

      else if (a3 >= 0x80)
      {
        *v8 = a3 | 0x80;
        v9 = v7 + 2;
        v8[1] = a3 >> 7;
      }

      else
      {
        v9 = v7 + 1;
        *v8 = a3;
      }
    }
  }

  else if (a2 >> 28)
  {
    *a1 = a2 | 0x80;
    a1[1] = (a2 >> 7) | 0x80;
    a1[2] = (a2 >> 14) | 0x80;
    a1[3] = (a2 >> 21) | 0x80;
    a1[4] = a2 >> 28;
    v9 = 5;
  }

  else if (a2 >= 0x200000)
  {
    *a1 = a2 | 0x80;
    a1[1] = (a2 >> 7) | 0x80;
    a1[2] = (a2 >> 14) | 0x80;
    a1[3] = a2 >> 21;
    v9 = 4;
  }

  else if (a2 >= 0x4000)
  {
    *a1 = a2 | 0x80;
    a1[1] = (a2 >> 7) | 0x80;
    a1[2] = a2 >> 14;
    v9 = 3;
  }

  else if (a2 >= 0x80)
  {
    *a1 = a2 | 0x80;
    a1[1] = a2 >> 7;
    v9 = 2;
  }

  else
  {
    *a1 = a2;
    v9 = 1;
  }

  a1[v9] = 0;
  return v9 + 1;
}

uint64_t scratch_file_grow(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8) + a2;
  if (*a1 >= v3)
  {
    result = 1;
    goto LABEL_17;
  }

  if (!*(a1 + 32))
  {
    v6 = *(a1 + 24);
    if (v6 != -1)
    {
      munmap(v6, v2);
      v2 = *a1;
      v3 = *(a1 + 8) + a2;
    }

    *(a1 + 24) = -1;
    do
    {
      v2 *= 2;
    }

    while (v2 < v3);
    if (_fd_ftruncate(*(a1 + 16), v2) == -1)
    {
      *(a1 + 32) = *__error();
      v9 = *__error();
      v10 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v11 = *(a1 + 32);
      v15 = 136315906;
      v16 = "scratch_file_grow";
      v17 = 1024;
      v18 = 1946;
      v19 = 1024;
      v20 = v11;
      v21 = 1024;
      v22 = v2;
      v12 = "%s:%d: ftruncate err:%d size:%d";
    }

    else
    {
      v8 = mmap(0, v2, 3, 1025, *(a1 + 16), 0);
      *(a1 + 24) = v8;
      if (v8 != -1)
      {
        result = 1;
LABEL_16:
        *a1 = v2;
        goto LABEL_17;
      }

      *(a1 + 32) = *__error();
      v9 = *__error();
      v10 = _SILogForLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        *__error() = v9;
        close(*(a1 + 16));
        v2 = 0;
        result = 0;
        *(a1 + 16) = -1;
        goto LABEL_16;
      }

      v14 = *(a1 + 32);
      v15 = 136315906;
      v16 = "scratch_file_grow";
      v17 = 1024;
      v18 = 1955;
      v19 = 1024;
      v20 = v14;
      v21 = 1024;
      v22 = v2;
      v12 = "%s:%d: mmap err:%d size:%d";
    }

    _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, v12, &v15, 0x1Eu);
    goto LABEL_15;
  }

  result = 0;
LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

char *PositionRunInfoListAdd(char **a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 2);
  v6 = *(a1 + 3);
  result = *a1;
  if (v6 == v7)
  {
    v9 = 2 * v6;
    *(a1 + 2) = v9;
    result = reallocf(result, 16 * v9);
    *a1 = result;
    if (!result)
    {
      v11 = __si_assert_copy_extra_2708(0);
      v12 = v11;
      v13 = "";
      if (v11)
      {
        v13 = v11;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "CIPayloadCompact.c", 939, "list->items", v13);
      free(v12);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v6 = *(a1 + 3);
  }

  *(a1 + 3) = v6 + 1;
  v10 = &result[16 * v6];
  *v10 = a2;
  *(v10 + 1) = a3;
  a1[2] += a3;
  return result;
}

uint64_t PayloadReorderInfoCompare(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

void PayloadReorderInfoDestroyScanner(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
    if (*a1)
    {
      v2 = *(v1 + 48);
      if (v2)
      {
        free(v2);
        *(v1 + 48) = 0;
      }
    }
  }
}

void PositionRunInfoListFree(void **a1)
{
  if (a1)
  {
    free(*a1);

    free(a1);
  }
}

void PayloadReorderInfoFree(void **a1)
{
  if (a1)
  {
    free(*a1);
  }
}

uint64_t postingsOffsetCompare(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = 0;
  v6 = *a2 > *a1 && v4 >= 2;
  if (v6)
  {
    v7 = *a2;
    do
    {
      ++v5;
      v6 = v7 >= 3;
      v8 = v7 == 3;
      v7 >>= 1;
    }

    while (!v8 && v6);
  }

  v9 = *a3;
  v6 = *a3 >= v3;
  v8 = *a3 == v3;
  v10 = 0;
  if (!v8 && v6 && v9 >= 2)
  {
    v12 = *a3;
    do
    {
      ++v10;
      v6 = v12 >= 3;
      v8 = v12 == 3;
      v12 >>= 1;
    }

    while (!v8 && v6);
  }

  v13 = v4 > v9;
  if (v5 > v10)
  {
    v13 = -1;
  }

  if (v4 >= v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  if (v5 >= v10)
  {
    return v14;
  }

  else
  {
    return 1;
  }
}

void CICompactPayloadsCtxFree(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    _fd_unlink_with_origin(v2, 0);
    fd_release(*a1);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _fd_unlink_with_origin(v3, 0);
    fd_release(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 192);
  if (v4)
  {
    free(v4);
    *(a1 + 192) = 0;
  }

  free(*(a1 + 40));
  *(a1 + 40) = 0;
  free(*(a1 + 64));
  *(a1 + 64) = 0;
  free(*(a1 + 104));
  *(a1 + 104) = 0;
  free(*(a1 + 128));
  *(a1 + 128) = 0;
}

char *PRPommesStemWordWithCString(const char *a1, int a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = strlen(a1);
  v7 = v6;
  if (v6 > a2)
  {
    return 0;
  }

  v8 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
  strcpy(v8, a1);
  v57 = 0;
  v9 = v7 - 1;
  if (v7 < 3)
  {
    goto LABEL_159;
  }

  v56 = v8;
  LODWORD(v57) = v7 - 1;
  if (v8[v9] == 115)
  {
    if (ends(&v56, "\x04sses") || ends(&v56, "\x02's"))
    {
      v10 = v57 - 2;
LABEL_8:
      LODWORD(v57) = v10;
      goto LABEL_9;
    }

    if (ends(&v56, "\x03ies"))
    {
      v27 = HIDWORD(v57);
      v56[SHIDWORD(v57) + 1] = 105;
      v10 = v27 + 1;
      goto LABEL_8;
    }

    if (v8[v57 - 1] != 115)
    {
      v10 = v57 - 1;
      goto LABEL_8;
    }
  }

LABEL_9:
  if (ends(&v56, "\x02s'"))
  {
    v9 = v57 - 2;
LABEL_11:
    LODWORD(v57) = v9;
    goto LABEL_12;
  }

  if (ends(&v56, "\x03eed"))
  {
    if (m(&v56) >= 1)
    {
      v9 = v57 - 1;
      goto LABEL_11;
    }

    goto LABEL_50;
  }

  if (!ends(&v56, "\x02ed") && !ends(&v56, "\x03ing") || v57 < 0)
  {
LABEL_50:
    v9 = v57;
    goto LABEL_12;
  }

  v18 = 0;
  while (1)
  {
    v19 = 0;
    for (i = v18; ; --i)
    {
      HIDWORD(v22) = v56[i] - 97;
      LODWORD(v22) = HIDWORD(v22);
      v21 = v22 >> 1;
      if (v21 != 12)
      {
        break;
      }

      if (!i)
      {
        goto LABEL_46;
      }

      v19 ^= 1u;
    }

    if (v21 <= 0xA && ((1 << v21) & 0x495) != 0)
    {
      v24 = 0;
      goto LABEL_47;
    }

LABEL_46:
    v24 = 1;
LABEL_47:
    if (v24 == v19)
    {
      break;
    }

    v16 = v18++ == HIDWORD(v57);
    if (v16)
    {
      goto LABEL_50;
    }
  }

  LODWORD(v57) = HIDWORD(v57);
  if (ends(&v56, "\x02at"))
  {
    v28 = HIDWORD(v57);
    v29 = &v56[SHIDWORD(v57)];
    v29[3] = 101;
    v30 = 29793;
LABEL_172:
    *(v29 + 1) = v30;
    v9 = v28 + 3;
    goto LABEL_11;
  }

  if (ends(&v56, "\x02bl"))
  {
    v28 = HIDWORD(v57);
    v29 = &v56[SHIDWORD(v57)];
    v29[3] = 101;
    v30 = 27746;
    goto LABEL_172;
  }

  if (ends(&v56, "\x02iz"))
  {
    v28 = HIDWORD(v57);
    v29 = &v56[SHIDWORD(v57)];
    v29[3] = 101;
    v30 = 31337;
    goto LABEL_172;
  }

  v9 = v57;
  v43 = v57 - 1;
  if (v57 < 1)
  {
    goto LABEL_204;
  }

  v44 = v56[v57];
  if (v44 != v56[v57 - 1])
  {
    goto LABEL_204;
  }

  v45 = 0;
  v46 = v57;
  while (1)
  {
    HIDWORD(v48) = v44 - 97;
    LODWORD(v48) = HIDWORD(v48);
    v47 = v48 >> 1;
    if (v47 != 12)
    {
      break;
    }

    if (!v46)
    {
      v50 = 1;
      goto LABEL_191;
    }

    LOBYTE(v44) = v56[--v46];
    v45 ^= 1u;
  }

  v49 = v47 > 0xA || ((1 << v47) & 0x495) == 0;
  v50 = v49;
LABEL_191:
  if (v50 == v45)
  {
LABEL_204:
    if (m(&v56) == 1 && cvc(&v56, v9))
    {
      v51 = HIDWORD(v57);
      v56[SHIDWORD(v57) + 1] = 101;
      v9 = v51 + 1;
      goto LABEL_11;
    }

    goto LABEL_50;
  }

  LODWORD(v57) = v57 - 1;
  v52 = v8[v43] - 108;
  v53 = v52 > 0xE;
  v54 = (1 << v52) & 0x4081;
  if (!v53 && v54 != 0)
  {
    goto LABEL_11;
  }

  v9 = v43;
LABEL_12:
  if (v9 >= 1)
  {
    if (ends(&v56, "\x01y") && (v57 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      while (1)
      {
        v12 = 0;
        for (j = v11; ; --j)
        {
          HIDWORD(v15) = v56[j] - 97;
          LODWORD(v15) = HIDWORD(v15);
          v14 = v15 >> 1;
          if (v14 != 12)
          {
            break;
          }

          if (!j)
          {
            goto LABEL_25;
          }

          v12 ^= 1u;
        }

        v16 = v14 > 0xA || ((1 << v14) & 0x495) == 0;
        if (!v16)
        {
          v17 = 0;
          goto LABEL_26;
        }

LABEL_25:
        v17 = 1;
LABEL_26:
        if (v17 == v12)
        {
          break;
        }

        v16 = v11++ == HIDWORD(v57);
        if (v16)
        {
          goto LABEL_52;
        }
      }

      v56[v57] = 105;
    }

LABEL_52:
    v25 = v56[v57 - 1];
    if (v25 <= 0x6B)
    {
      if (v56[v57 - 1] <= 0x64u)
      {
        if (v25 != 97)
        {
          if (v25 != 99)
          {
            goto LABEL_96;
          }

          if (ends(&v56, "\x04enci"))
          {
            v26 = "\x04ence";
          }

          else
          {
            if (!ends(&v56, "\x04anci"))
            {
              goto LABEL_96;
            }

            v26 = "\x04ance";
          }

          goto LABEL_94;
        }

        if (!ends(&v56, "\aational"))
        {
          if (!ends(&v56, "\x06tional"))
          {
            goto LABEL_96;
          }

          v26 = "\x04tion";
          goto LABEL_94;
        }

        goto LABEL_78;
      }

      if (v25 != 101)
      {
        if (v25 != 103 || !ends(&v56, "\x04logi"))
        {
          goto LABEL_96;
        }

        v26 = "\x03log";
        goto LABEL_94;
      }

      if (!ends(&v56, "\x04izer"))
      {
        goto LABEL_96;
      }

LABEL_82:
      v26 = "\x03ize";
      goto LABEL_94;
    }

    if (v56[v57 - 1] <= 0x72u)
    {
      if (v25 != 108)
      {
        if (v25 != 111)
        {
          goto LABEL_96;
        }

        if (!ends(&v56, "\aization"))
        {
          if (!ends(&v56, "\x05ation") && !ends(&v56, "\x04ator"))
          {
            goto LABEL_96;
          }

LABEL_78:
          v26 = "\x03ate";
          goto LABEL_94;
        }

        goto LABEL_82;
      }

      if (ends(&v56, "\x03bli"))
      {
LABEL_80:
        v26 = "\x03ble";
        goto LABEL_94;
      }

      if (ends(&v56, "\x04alli"))
      {
        goto LABEL_93;
      }

      if (ends(&v56, "\x05entli"))
      {
        v26 = "\x03ent";
        goto LABEL_94;
      }

      if (ends(&v56, "\x03eli"))
      {
        v26 = "\x01e";
LABEL_94:
        if (m(&v56) >= 1)
        {
          v31 = *v26;
          v32 = HIDWORD(v57);
          memmove(&v56[SHIDWORD(v57) + 1], v26 + 1, *v26);
          LODWORD(v57) = v32 + v31;
        }

LABEL_96:
        v33 = v56[v57];
        if (v33 <= 0x6B)
        {
          if (v33 != 101)
          {
            if (v33 != 105 || !ends(&v56, "\x05iciti"))
            {
              goto LABEL_115;
            }

            goto LABEL_109;
          }

          if (!ends(&v56, "\x05icate"))
          {
            if (!ends(&v56, "\x05ative"))
            {
              if (!ends(&v56, "\x05alize"))
              {
                goto LABEL_115;
              }

              v35 = "\x02al";
              goto LABEL_113;
            }

            goto LABEL_112;
          }

LABEL_109:
          v35 = "\x02ic";
          goto LABEL_113;
        }

        if (v33 == 108)
        {
          if (ends(&v56, "\x04ical"))
          {
            goto LABEL_109;
          }

          v34 = "\x03ful";
        }

        else
        {
          if (v33 != 115)
          {
            goto LABEL_115;
          }

          v34 = "\x04ness";
        }

        if (!ends(&v56, v34))
        {
          goto LABEL_115;
        }

LABEL_112:
        v35 = &byte_1C2C00804;
LABEL_113:
        if (m(&v56) >= 1)
        {
          v36 = *v35;
          v37 = HIDWORD(v57);
          memcpy(&v56[SHIDWORD(v57) + 1], v35 + 1, *v35);
          LODWORD(v57) = v37 + v36;
        }

LABEL_115:
        if (a3)
        {
          step5(&v56);
LABEL_158:
          step5(&v56);
          v9 = v57;
          goto LABEL_159;
        }

        v38 = v56[v57 - 1];
        if (v38 > 0x6E)
        {
          if (v56[v57 - 1] > 0x74u)
          {
            switch(v38)
            {
              case 'u':
                v39 = "\x03ous";
                break;
              case 'v':
                v39 = "\x03ive";
                break;
              case 'z':
                v39 = "\x03ize";
                break;
              default:
                goto LABEL_158;
            }

            goto LABEL_155;
          }

          if (v38 == 111)
          {
            if (ends(&v56, "\x03ion") && (v57 & 0x8000000000000000) == 0 && v56[HIDWORD(v57)] - 115 < 2)
            {
              goto LABEL_156;
            }

            v39 = "\x02ou";
            goto LABEL_155;
          }

          if (v38 != 115)
          {
            if (v38 != 116)
            {
              goto LABEL_158;
            }

            if (!ends(&v56, "\x03ate"))
            {
              v39 = "\x03iti";
              goto LABEL_155;
            }

            goto LABEL_156;
          }

          v39 = "\x03ism";
        }

        else
        {
          if (v56[v57 - 1] <= 0x68u)
          {
            switch(v38)
            {
              case 'a':
                v39 = "\x02al";
                break;
              case 'c':
                if (ends(&v56, "\x04ance"))
                {
                  goto LABEL_156;
                }

                v39 = "\x04ence";
                break;
              case 'e':
                v39 = "\x02er";
                break;
              default:
                goto LABEL_158;
            }

            goto LABEL_155;
          }

          if (v38 != 105)
          {
            if (v38 == 108)
            {
              if (ends(&v56, "\x04able"))
              {
                goto LABEL_156;
              }

              v39 = "\x04ible";
              goto LABEL_155;
            }

            if (v38 != 110)
            {
              goto LABEL_158;
            }

            if (!ends(&v56, "\x03ant") && !ends(&v56, "\x05ement") && !ends(&v56, "\x04ment"))
            {
              v39 = "\x03ent";
              goto LABEL_155;
            }

LABEL_156:
            if (m(&v56) >= 2)
            {
              LODWORD(v57) = HIDWORD(v57);
            }

            goto LABEL_158;
          }

          v39 = "\x02ic";
        }

LABEL_155:
        if (!ends(&v56, v39))
        {
          goto LABEL_158;
        }

        goto LABEL_156;
      }

      v42 = "\x05ousli";
LABEL_183:
      if (!ends(&v56, v42))
      {
        goto LABEL_96;
      }

      v26 = "\x03ous";
      goto LABEL_94;
    }

    if (v25 == 115)
    {
      if (!ends(&v56, "\x05alism"))
      {
        if (!ends(&v56, "\aiveness"))
        {
          if (ends(&v56, "\afulness"))
          {
            v26 = "\x03ful";
            goto LABEL_94;
          }

          v42 = "\aousness";
          goto LABEL_183;
        }

LABEL_85:
        v26 = "\x03ive";
        goto LABEL_94;
      }
    }

    else
    {
      if (v25 != 116)
      {
        goto LABEL_96;
      }

      if (!ends(&v56, "\x05aliti"))
      {
        if (!ends(&v56, "\x05iviti"))
        {
          if (!ends(&v56, "\x06biliti"))
          {
            goto LABEL_96;
          }

          goto LABEL_80;
        }

        goto LABEL_85;
      }
    }

LABEL_93:
    v26 = "\x02al";
    goto LABEL_94;
  }

LABEL_159:
  v40 = v9 + 1;
  v8[v40] = 0;
  if ((isStopWord(v8) & 1) != 0 || v40 >= v7 + a3)
  {
    free(v8);
    return 0;
  }

  return v8;
}

const char *getClientInfo(const __CFString *a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  v4 = *(a2 + 28);
  if ((v4 & 0x40) != 0)
  {
    v5 = "Photos";
    v6 = "client: Photos";
  }

  else if ((v4 & 0x200) != 0)
  {
    v5 = "SearchTool";
    v6 = "client: SearchTool";
  }

  else if ((v4 & 0x400) != 0)
  {
    v5 = "SpotlightUI";
    v6 = "client: SpotlightUI";
  }

  else if ((v4 & 0x10) != 0)
  {
    v5 = "Mail";
    v6 = "client: Mail";
  }

  else if ((v4 & 0x20) != 0)
  {
    v5 = "Messages";
    v6 = "client: Messages";
  }

  else if ((v4 & 0x80) != 0)
  {
    v5 = "Settings";
    v6 = "client: Settings";
  }

  else
  {
    if ((v4 & 8) == 0)
    {
LABEL_9:
      v5 = "Unk";
      v6 = "client: Unk";
      goto LABEL_20;
    }

    if (a1 && CFStringCompare(a1, @"com.apple.pommesctl", 0) == kCFCompareEqualTo)
    {
      v5 = "pommesctl";
      v6 = "client: pommesctl";
    }

    else
    {
      v5 = "Ctl";
      v6 = "client: Ctl";
    }
  }

LABEL_20:
  if (a3)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

void configureContext(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, const __CFArray *a6, uint64_t a7, const __CFString *a8, CFArrayRef theArray)
{
  v71 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_107;
  }

  *a1 = a2;
  *(a1 + 8) = a5;
  *(a1 + 32) = a7;
  *(a1 + 28) = *(a1 + 28) & 0xFFFFFFFE | a3;
  if (a3)
  {
    if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
    {
      v13 = Count;
      v14 = 0;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (ValueAtIndex)
        {
          v17 = ValueAtIndex;
          if (CFStringCompare(ValueAtIndex, @"com.apple.mobilemail", 0) && CFStringCompare(v17, @"com.apple.email.SearchIndexer", 0))
          {
            if (CFStringCompare(v17, @"com.apple.mobilesafari", 0) && CFStringCompare(v17, @"com.argos.BlendABApp2", 0))
            {
              if (CFStringCompare(v17, @"com.apple.Preferences", 0))
              {
                if (CFStringCompare(v17, @"com.apple.mobileslideshow", 0))
                {
                  if (CFStringCompare(v17, @"com.apple.mobilecal", 0))
                  {
                    if (CFStringCompare(v17, @"com.apple.MobileSMS", 0))
                    {
                      if (CFStringCompare(v17, @"com.apple.CloudDocs.MobileDocumentsFileProvider", 0) && CFStringCompare(v17, @"com.apple.CloudDocs.iCloudDriveFileProvider", 0) && CFStringCompare(v17, @"com.apple.FileProvider.LocalStorage", 0))
                      {
                        if (CFStringCompare(v17, @"com.apple.mobilenotes", 0))
                        {
                          if (CFStringCompare(v17, @"com.apple.reminders", 0))
                          {
                            if (CFStringCompare(v17, @"com.apple.spotlight.events", 0))
                            {
                              v18 = (CFStringCompare(v17, @"com.apple.Passbook", 0) == kCFCompareEqualTo) << 11;
                            }

                            else
                            {
                              v18 = 256;
                            }
                          }

                          else
                          {
                            v18 = 64;
                          }
                        }

                        else
                        {
                          v18 = 128;
                        }
                      }

                      else
                      {
                        v18 = 32;
                      }
                    }

                    else
                    {
                      v18 = 16;
                    }
                  }

                  else
                  {
                    v18 = 8;
                  }
                }

                else
                {
                  v18 = 4;
                }
              }

              else
              {
                v18 = 1024;
              }
            }

            else
            {
              v18 = 2;
            }
          }

          else
          {
            v18 = 1;
          }
        }

        else
        {
          v18 = 0;
        }

        v14 |= v18;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if (bundleIDTypeMaskForMDS_onceToken != -1)
    {
      dispatch_once(&bundleIDTypeMaskForMDS_onceToken, &__block_literal_global_11115);
    }

    if (bundleIDTypeMaskForMDS_bundleIDType)
    {
      v14 = 544;
    }

    else
    {
      v14 = 0;
    }
  }

  *(a1 + 24) = v14;
  if (a8)
  {
    if (CFStringCompare(a8, @"com.apple.plphotosctl", 0) == kCFCompareEqualTo || CFStringCompare(a8, @"com.apple.pommesctl", 0) == kCFCompareEqualTo)
    {
      v20 = *(a1 + 28);
LABEL_47:
      *(a1 + 28) = v20 | 8;
      v21 = CFStringCompare(a8, @"com.apple.pommesctl", 0) == kCFCompareEqualTo;
      goto LABEL_61;
    }

    v19 = CFStringCompare(a8, @"com.apple.search", 0);
    v20 = *(a1 + 28);
    if (v19 == kCFCompareEqualTo)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v20 = *(a1 + 28);
  }

  *(a1 + 28) = v20 & 0xFFFFFFF7;
  v22 = isPhotosClient(a8);
  v21 = 0;
  if (v22)
  {
    v23 = 64;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a1 + 28) & 0xFFFFFFBF | v23;
  *(a1 + 28) = v24;
  if (!v22)
  {
    if (a8)
    {
      if (CFStringHasPrefix(a8, @"com.apple.omniSearch") || CFStringHasPrefix(a8, @"com.apple.intelligenceflow"))
      {
        v25 = *(a1 + 28);
LABEL_57:
        v21 = 0;
        v26 = v25 | 0x200;
LABEL_60:
        *(a1 + 28) = v26;
        goto LABEL_61;
      }

      HasPrefix = CFStringHasPrefix(a8, @"com.apple.ondeviceeval");
      v25 = *(a1 + 28);
      if (HasPrefix)
      {
        goto LABEL_57;
      }

      *(a1 + 28) = v25 & 0xFFFFFDFF;
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a8);
      if (MutableCopy)
      {
        v53 = MutableCopy;
        CFStringLowercase(MutableCopy, 0);
        if (CFStringHasPrefix(v53, @"com.apple.spotlight"))
        {
          CFRelease(v53);
          v54 = *(a1 + 28);
LABEL_119:
          v21 = 0;
          v26 = v54 | 0x400;
          goto LABEL_60;
        }

        v61 = CFStringHasPrefix(v53, @"com.apple.search.framework");
        CFRelease(v53);
        v54 = *(a1 + 28);
        if (v61)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v54 = *(a1 + 28);
      }

      *(a1 + 28) = v54 & 0xFFFFFBFF;
      if (CFStringCompare(a8, @"com.apple.mobilemail", 0))
      {
        v55 = CFStringCompare(a8, @"com.apple.email.SearchIndexer", 0);
        v56 = *(a1 + 28);
        if (v55)
        {
          *(a1 + 28) = v56 & 0xFFFFFFEF;
          v57 = CFStringCompare(a8, @"com.apple.Preferences", 0);
          v58 = *(a1 + 28);
          if (v57 == kCFCompareEqualTo)
          {
            v21 = 0;
            v26 = v58 | 0x80;
            goto LABEL_60;
          }

          *(a1 + 28) = v58 & 0xFFFFFF7F;
          v59 = CFStringCompare(a8, @"com.apple.Passbook", 0);
          v60 = *(a1 + 28);
          if (v59 == kCFCompareEqualTo)
          {
            v21 = 0;
            v26 = v60 | 0x100;
            goto LABEL_60;
          }

          *(a1 + 28) = v60 & 0xFFFFFEFF;
          v27 = 32 * (CFStringCompare(a8, @"com.apple.MobileSMS", 0) == kCFCompareEqualTo);
          v28 = *(a1 + 28);
          goto LABEL_59;
        }
      }

      else
      {
        v56 = *(a1 + 28);
      }

      v21 = 0;
      v26 = v56 | 0x10;
      goto LABEL_60;
    }

    v27 = 0;
    v28 = v24 & 0xFFFFF86F;
LABEL_59:
    v21 = 0;
    v26 = v28 & 0xFFFFFFDF | v27;
    goto LABEL_60;
  }

LABEL_61:
  if (*(a1 + 24))
  {
    *(a1 + 28) = *(a1 + 28) & 0xFFFFDFFF | (((*(a1 + 24) >> 2) & 1) << 13);
    v29 = isPhotosClient(a8);
    if (v29)
    {
      v30 = 64;
    }

    else
    {
      v30 = 0;
    }

    v31 = *(a1 + 28) & 0xFFFFFFBF | v30;
    *(a1 + 28) = v31;
    if (v29)
    {
      goto LABEL_107;
    }

    goto LABEL_73;
  }

  if (!v21)
  {
    if ((*(a1 + 29) & 2) == 0)
    {
      goto LABEL_107;
    }

    *(a1 + 24) = 2047;
    v33 = *__error();
    v34 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v66 = a2;
      v67 = 2080;
      v68 = a5;
      v69 = 2112;
      v70 = theArray;
      _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES]Using union of all bundleIDTypes for processing un-supported bundles for SearchTool %@", buf, 0x20u);
    }

    *__error() = v33;
    v31 = *(a1 + 28);
LABEL_73:
    v32 = *(a1 + 24);
    if ((v31 & 8) != 0 && v32 == 4)
    {
      goto LABEL_107;
    }

    goto LABEL_75;
  }

  v32 = 1;
  *(a1 + 24) = 1;
  v31 = *(a1 + 28);
LABEL_75:
  *(a1 + 26) = v32 & 0xFFFB;
  if (a4)
  {
    v35 = 4;
  }

  else
  {
    v35 = 0;
  }

  v36 = v31 & 0xFFFFFFFB | v35;
  *(a1 + 28) = v36;
  if (a6)
  {
    v37 = (CFArrayGetCount(a6) > 0) << 11;
    v36 = *(a1 + 28);
    v32 = *(a1 + 24);
  }

  else
  {
    v37 = 0;
  }

  *(a1 + 28) = v36 & 0xFFFF27FF | v37 & 0xFFFFAFFF | ((v32 != 4) << 15) | ((v32 & 1) << 12) & 0xBFFF | (((v32 >> 1) & 1) << 14);
  if (a6 && (v38 = CFArrayGetCount(a6)) != 0)
  {
    v39 = v38;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v38, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v39 >= 1)
    {
      for (j = 0; j != v39; ++j)
      {
        v42 = CFArrayGetValueAtIndex(a6, j);
        v43 = [v42 originalToken];
        if (v43)
        {
          v44 = v43;
          if (CFStringGetLength(v43))
          {
            if ([objc_msgSend(v42 "variations")])
            {
              CFDictionarySetValue(Mutable, v44, [v42 variations]);
            }
          }
        }
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  *(a1 + 40) = Mutable;
  if (isLLMEnabled_onceToken != -1)
  {
    dispatch_once(&isLLMEnabled_onceToken, &__block_literal_global_27_11187);
  }

  v45 = *(a1 + 28);
  if (isLLMEnabled_ffStatus == 1 && (v45 & 0x200) != 0)
  {
    v46 = v45 | 0x20000;
  }

  else
  {
    *(a1 + 28) = v45 & 0xFFFDFFFF;
    if (isQUEnabled_onceToken != -1)
    {
      dispatch_once(&isQUEnabled_onceToken, &__block_literal_global_23_11183);
    }

    v47 = *(a1 + 28);
    if (isQUEnabled_ffStatus == 1)
    {
      v48 = 1880;
    }

    else
    {
      v48 = 1096;
    }

    if ((v47 & v48) != 0)
    {
      v49 = 0x10000;
    }

    else
    {
      v49 = 0;
    }

    v46 = v47 & 0xFFFEFFFF | v49;
  }

  *(a1 + 28) = v46;
LABEL_107:
  v50 = *MEMORY[0x1E69E9840];
}

void SQueueDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      do
      {
        v3 = v2[1];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    free(*(a1 + 16));

    free(a1);
  }
}

void *SQueueDropData(void *a1, unint64_t a2)
{
  result = a1[3];
  if (!result)
  {
    __assert_rtn("SQueueDropData", "SlabQueue.c", 150, "squeue->firstSlab");
  }

  v5 = result[3];
  v6 = gSlabs;
  while (1)
  {
    if (a2 >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = a2;
    }

    result[3] = v5 - v7;
    a1[1] -= v7;
    a1[5] += v7;
    if (!result[3] && result != a1[4])
    {
      v8 = result[1];
      a1[3] = v8;
      a1[5] = 0;
      if (v8)
      {
        *v8 = 0;
        v8 = a1[3];
        a1[5] = v8 + 4;
      }

      if (a1[2])
      {
        free(result);
        gSlabs = --v6;
        result = a1[3];
      }

      else
      {
        a1[2] = result;
        result = v8;
      }
    }

    a2 -= v7;
    if (!a2)
    {
      break;
    }

    v5 = result[3];
    if (!v5)
    {
      __assert_rtn("SQueueDropData", "SlabQueue.c", 182, "length == 0");
    }
  }

  if (!result)
  {
    if (!a1[1])
    {
      return result;
    }

LABEL_21:
    __assert_rtn("SQueueDropData", "SlabQueue.c", 179, "(squeue->firstSlab == NULL && squeue->totalSize == 0) || (squeue->firstSlab != NULL && squeue->firstSlab->availableToRead == 0 && squeue->totalSize == 0) || (squeue->firstSlab != NULL && squeue->firstSlab->availableToRead <= squeue->totalSize)");
  }

  v9 = result[3];
  if (v9 && v9 > a1[1])
  {
    goto LABEL_21;
  }

  return result;
}

void *SQueueOpenPushData(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v4)
  {
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && !*(v4 + 24))
  {
    result = (v4 + 32);
    goto LABEL_12;
  }

  if (!v3)
  {
    NewSlab = squeue_getNewSlab(a1, a2);
    NewSlab[3] = 0;
    *NewSlab = 0;
    NewSlab[1] = 0;
    *(a1 + 24) = NewSlab;
    *(a1 + 32) = NewSlab;
    result = NewSlab + 4;
LABEL_12:
    *(a1 + 40) = result;
    goto LABEL_13;
  }

  result = *(a1 + 48);
  if ((v3 - result + *(v3 + 16) + 32) >= a2)
  {
    return result;
  }

  v7 = squeue_getNewSlab(a1, a2);
  *(*(a1 + 32) + 8) = v7;
  v7[3] = 0;
  *v7 = *(a1 + 32);
  v7[1] = 0;
  *(a1 + 32) = v7;
  result = v7 + 4;
LABEL_13:
  *(a1 + 48) = result;
  return result;
}

_DWORD *squeue_getNewSlab(unsigned int *a1, unint64_t a2)
{
  result = *(a1 + 2);
  if (result && result[4] >= a2)
  {
    *(a1 + 2) = 0;
  }

  else
  {
    v4 = *a1;
    if (v4 <= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v4;
    }

    result = malloc_type_malloc(v5 + 32, 0x1020040CD42B41CuLL);
    result[4] = v5;
    ++gSlabs;
  }

  return result;
}

double SQueueEmpty(void *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v4 = v2[1];
      if (a1[2])
      {
        free(v2);
        --gSlabs;
      }

      else
      {
        a1[2] = v2;
      }

      v2 = v4;
    }

    while (v4);
  }

  a1[1] = 0;
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

BOOL equalDBO(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v21[1024] = *MEMORY[0x1E69E9840];
  if (*v1 != *v2)
  {
    goto LABEL_7;
  }

  if (*(v1 + 24) != *(v2 + 24))
  {
    goto LABEL_7;
  }

  if (*(v1 + 32) != *(v2 + 32))
  {
    goto LABEL_7;
  }

  if (*(v1 + 16) != *(v2 + 16))
  {
    goto LABEL_7;
  }

  v3 = *(v1 + 12);
  if (v3 != *(v2 + 12) || *(v2 + 40) != *(v1 + 40))
  {
    goto LABEL_7;
  }

  v6 = v1;
  v7 = v2;
  bzero(v21, 0x2000uLL);
  bzero(__base, 0x2000uLL);
  if (v3 < 0x31)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = 0;
    v9 = v6 + 48;
    do
    {
      v10 = v8;
      v21[v8] = v9;
      v9 += *(v9 + 8) + 13;
      ++v8;
    }

    while (v9 < v6 + v3);
    v11 = v7 + 48;
    v12 = -1;
    v13 = __base;
    do
    {
      *v13++ = v11;
      v11 += *(v11 + 8) + 13;
      ++v12;
    }

    while (v11 < v7 + v3);
    if (v10 != v12)
    {
LABEL_7:
      result = 0;
      goto LABEL_8;
    }
  }

  v14 = v8;
  qsort_b(v21, v8, 8uLL, &__block_literal_global_14338);
  qsort_b(__base, v8, 8uLL, &__block_literal_global_14338);
  if (v8)
  {
    v15 = v21[0];
    v16 = __base[0];
    if (*v21[0] == *__base[0])
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = *(v15 + 2);
        if (v19 != *(v16 + 2))
        {
          break;
        }

        if (v15[1] != v16[1])
        {
          break;
        }

        if (*(v15 + 1) != *(v16 + 1))
        {
          break;
        }

        if (memcmp(v15 + 13, v16 + 13, v19))
        {
          break;
        }

        v17 = v18 >= v14;
        if (v14 == v18)
        {
          break;
        }

        v15 = v21[v18];
        v16 = __base[v18++];
      }

      while (*v15 == *v16);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

  result = v17;
LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *getRawLocalizedUniquedField(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  string_and_length_for_id = get_string_and_length_for_id(a1, 4u, a2, a4);
  if (!string_and_length_for_id)
  {
    return 0;
  }

  v7 = *string_and_length_for_id;
  if (*string_and_length_for_id < 0)
  {
    if (v7 > 0xBF)
    {
      if (v7 > 0xDF)
      {
        if (v7 > 0xEF)
        {
          v7 = *(string_and_length_for_id + 1);
          v8 = 5;
          if (v7)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v7 = ((v7 & 0xF) << 24) | (string_and_length_for_id[1] << 16) | (string_and_length_for_id[2] << 8) | string_and_length_for_id[3];
          v8 = 4;
          if (v7)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        v7 = ((v7 & 0x1F) << 16) | (string_and_length_for_id[1] << 8) | string_and_length_for_id[2];
        v8 = 3;
        if (v7)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v8 = 2;
      v7 = string_and_length_for_id[1] | ((v7 & 0x3F) << 8);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  v8 = 1;
  if (!*string_and_length_for_id)
  {
    return 0;
  }

LABEL_4:
  v9 = v8 + 1;
  v10 = &string_and_length_for_id[v8];
  v11 = string_and_length_for_id[v8];
  if (string_and_length_for_id[v8] < 0)
  {
    if (v11 > 0xBF)
    {
      if (v11 > 0xDF)
      {
        if (v11 > 0xEF)
        {
          v11 = *&string_and_length_for_id[v9];
          v9 = v8 + 5;
        }

        else
        {
          v11 = ((v11 & 0xF) << 24) | (string_and_length_for_id[v9] << 16) | (v10[2] << 8) | v10[3];
          v9 = v8 + 4;
        }
      }

      else
      {
        v11 = ((v11 & 0x1F) << 16) | (string_and_length_for_id[v9] << 8) | v10[2];
        v9 = v8 + 3;
      }
    }

    else
    {
      v12 = string_and_length_for_id[v9] | ((v11 & 0x3F) << 8);
      v9 = v8 + 2;
      v11 = v12;
    }
  }

  v13 = v9 - v8;
  v14 = v7 - v13;
  if (v7 < v13)
  {
    v17 = __si_assert_copy_extra_2708(*(a1 + 848));
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s %s", "ldb.c", 334, "len >= (off1-off)", v19, "len >= (off1-off)");
    free(v18);
    if (__valid_fsp(*(a1 + 848)))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v15 = string_and_length_for_id;
  if (v14 + 13 < 0x401 || (a3 = malloc_type_malloc(v14 + 13, 0x78D2615EuLL)) != 0)
  {
    *a3 = 9437195;
    a3[1] = v11;
    a3[2] = v14;
    memcpy(a3 + 13, &v15[v9], v14);
  }

  return a3;
}

void hexdumpDBOBuffer(uint64_t a1, unint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    v14[1] = v14;
    MEMORY[0x1EEE9AC00]();
    bzero(v13, 0x32AuLL);
    v4 = 0;
    *&v5 = 136316418;
    v15 = v5;
    do
    {
      v6 = 0;
      v7 = v4;
      v4 += 400;
      if (v4 >= a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = v4;
      }

      v9 = v7;
      do
      {
        sprintf(&v13[v6], "%02x", *(a1 + v9));
        v6 += 2;
        ++v9;
      }

      while (v9 < v8);
      v13[v6 & 0xFFFFFFFE] = 0;
      v10 = *__error();
      v11 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = v15;
        v17 = "hexdumpDBOBuffer";
        v18 = 1024;
        v19 = 1217;
        v20 = 2048;
        v21 = v7;
        v22 = 1024;
        v23 = v6 >> 1;
        v24 = 2048;
        v25 = a2;
        v26 = 2080;
        v27 = v13;
        _os_log_error_impl(&dword_1C278D000, v11, OS_LOG_TYPE_ERROR, "%s:%d: Corrupt DBO pos:%lu, sz:%d, total:%lu, data: 0x%s", buf, 0x36u);
      }

      *__error() = v10;
    }

    while (v4 < a2);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t matchingCorruptObjMissingParentSysObj(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, void *a5, int a6, void *a7, uint64_t a8)
{
  v96 = *MEMORY[0x1E69E9840];
  if (a4 != 76)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  result = 0;
  if (a6 == 111 && *a5 == 60)
  {
    if (*(a3 + 2) != 0x124B254AD435508 || *(a3 + 10) != 512)
    {
      goto LABEL_8;
    }

    v77 = a7;
    v78 = a8;
    v14 = a1;
    id_for_field_locked = db2_get_id_for_field_locked(a1, "_kMDItemExternalID");
    if (id_for_field_locked - 1 >= 0x7F)
    {
      v32 = *__error();
      v33 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *v80 = "matchingCorruptObjMissingParentSysObj";
        *&v80[8] = 1024;
        v81 = 1243;
        v82 = 1024;
        v83 = id_for_field_locked;
        _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: #matchingCorruptObjMissingParentSysObj: invalid extID_ID %u", buf, 0x18u);
      }

      v34 = __error();
      result = 0;
      *v34 = v32;
    }

    else
    {
      v16 = db2_get_id_for_field_locked(v14, "_kMDItemBundleID");
      v17 = v16;
      v18 = v16 - id_for_field_locked;
      if (v16 <= id_for_field_locked || v16 >= 0x80)
      {
        v35 = *__error();
        v36 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *v80 = "matchingCorruptObjMissingParentSysObj";
          *&v80[8] = 1024;
          v81 = 1248;
          v82 = 1024;
          v83 = v17;
          v84 = 1024;
          v85 = id_for_field_locked;
          _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: #matchingCorruptObjMissingParentSysObj: invalid bunID_ID %u (%u)", buf, 0x1Eu);
        }

        v37 = __error();
        result = 0;
        *v37 = v35;
      }

      else
      {
        id_for_string = db2_get_id_for_string(*(v14 + 804), *(v14 + 888), "com.apple.searchd");
        v20 = id_for_string;
        if (id_for_string == -2)
        {
          v21 = *__error();
          v22 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "#matchingCorruptObjMissingParentSysObj: Creating uniqued value for searchd bundle", buf, 2u);
          }

          *__error() = v21;
          id_for_string = db_create_id_for_value(v14, "com.apple.searchd");
          v20 = id_for_string;
        }

        if (v20 >= 0xFFFFFFFE)
        {
          v23 = *__error();
          v24 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *v80 = "matchingCorruptObjMissingParentSysObj";
            *&v80[8] = 1024;
            v81 = 1258;
            v82 = 1024;
            v83 = v20;
            _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: #matchingCorruptObjMissingParentSysObj: invalid searchdBundle_ID %u", buf, 0x18u);
          }

          id_for_string = __error();
          *id_for_string = v23;
        }

        v76 = v72;
        MEMORY[0x1EEE9AC00](id_for_string);
        LOBYTE(v71[0]) = id_for_field_locked;
        strcpy(v71 + 1, "com.apple.spotlight.missingparent");
        BYTE4(v71[4]) = v18;
        BYTE5(v71[4]) = 18;
        *(&v25 + 1) = *"e.searchd";
        strcpy(&v71[4] + 6, "com.apple.searchd");
        if (*(a3 + 20) == v71[0] && *(a3 + 28) == (*"com.apple.spotlight.missingparent" >> 48) && *(a3 + 36) == v71[2] && *(a3 + 44) == (*"ght.missingparent" >> 48) && *(a3 + 52) == v71[4] && *(a3 + 60) == v71[5] && *(a3 + 68) == v71[6])
        {
          v38 = a2 + 3;
          v39 = a2[3] - 13;
          a2[3] = v39;
          if (v39 < 0x31)
          {
            v40 = 0;
LABEL_79:
            v54 = *__error();
            v55 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *v80 = "matchingCorruptObjMissingParentSysObj";
              *&v80[8] = 1024;
              v81 = 1305;
              v82 = 1024;
              v83 = v40;
              v56 = "%s:%d: #matchingCorruptObjMissingParentSysObj: mismatch %d != two fields";
              v57 = v55;
              v58 = 24;
LABEL_85:
              _os_log_error_impl(&dword_1C278D000, v57, OS_LOG_TYPE_ERROR, v56, buf, v58);
            }

LABEL_86:
            v70 = __error();
            result = 0;
            *v70 = v54;
          }

          else
          {
            v40 = 0;
            v75 = v20 < 0xFFFFFFFE;
            v41 = (a2 + 12);
            v72[1] = v78 + 16;
            *&v25 = 67109120;
            v74 = v25;
            *&v25 = 67109376;
            v73 = v25;
            do
            {
              if (v40 == 1)
              {
                if (*(v41 + 1) != v17 || *(v41 + 2) != 4 || *v41 != 11 || (v41[1] & 0x10) == 0 || *(v41 + 13) != 18)
                {
                  v54 = *__error();
                  v59 = _SILogForLogForCategory(7);
                  if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_86;
                  }

                  v60 = *(v41 + 1);
                  v61 = *(v41 + 2);
                  v62 = *v41;
                  v63 = v41[1];
                  v64 = *(v41 + 13);
                  *buf = 136317186;
                  *v80 = "matchingCorruptObjMissingParentSysObj";
                  *&v80[8] = 1024;
                  v81 = 1283;
                  v82 = 1024;
                  v83 = v60;
                  v84 = 1024;
                  v85 = id_for_field_locked;
                  v86 = 1024;
                  v87 = v61;
                  v88 = 1024;
                  v89 = v62;
                  v90 = 1024;
                  v91 = v63;
                  v92 = 1024;
                  v93 = v64;
                  v94 = 2048;
                  v95 = 18;
                  v56 = "%s:%d: #matchingCorruptObjMissingParentSysObj: mismatch second field %u,%u,%u,%u,%u,%u,%lu";
                  v57 = v59;
                  v58 = 64;
                  goto LABEL_85;
                }

                v42 = *__error();
                v43 = _SILogForLogForCategory(7);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v74;
                  *v80 = v75;
                  _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "#matchingCorruptObjMissingParentSysObj: uniqued val: %d", buf, 8u);
                }

                *__error() = v42;
                if (v20 <= 0xFFFFFFFD)
                {
                  *(v41 + 13) = v20;
                }

                else
                {
                  *v38 -= *(v41 + 2);
                  *(v41 + 2) = 18;
                  v44 = *v38 + 18;
                  *v38 = v44;
                  if (v44 >= a2[2])
                  {
                    v45 = *__error();
                    v46 = _SILogForLogForCategory(7);
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                    {
                      v47 = a2[2];
                      v48 = *v38;
                      *buf = v73;
                      *v80 = v47;
                      *&v80[4] = 1024;
                      *&v80[6] = v48;
                      _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "#matchingCorruptObjMissingParentSysObj: growing dbo from %u to %u", buf, 0xEu);
                    }

                    *__error() = v45;
                    v49 = *v38;
                    v50 = a2[2];
                    if (v50 <= v49)
                    {
                      v51 = 2 * v50;
                      do
                      {
                        v52 = v51;
                        v51 *= 2;
                      }

                      while (v52 <= v49);
                      if (v78)
                      {
                        v53 = (*(v78 + 16))(v78, a2);
                      }

                      else
                      {
                        v53 = malloc_type_realloc(a2, v52, 0x96D6F8AuLL);
                      }

                      a2 = v53;
                      v53[2] = v52;
                    }

                    *v77 = a2;
                  }

                  memcpy(v41 + 13, "com.apple.searchd", *(v41 + 2));
                  v41[1] &= ~0x10u;
                }
              }

              else if (!v40 && (*(v41 + 1) != id_for_field_locked || *(v41 + 2) != 34 || *v41 != 11 || (v41[1] & 0x10) != 0))
              {
                v54 = *__error();
                v65 = _SILogForLogForCategory(7);
                if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_86;
                }

                v66 = *(v41 + 1);
                v67 = *(v41 + 2);
                v68 = *v41;
                v69 = v41[1];
                *buf = 136316674;
                *v80 = "matchingCorruptObjMissingParentSysObj";
                *&v80[8] = 1024;
                v81 = 1278;
                v82 = 1024;
                v83 = v66;
                v84 = 1024;
                v85 = id_for_field_locked;
                v86 = 1024;
                v87 = v67;
                v88 = 1024;
                v89 = v68;
                v90 = 1024;
                v91 = v69;
                v56 = "%s:%d: #matchingCorruptObjMissingParentSysObj: mismatch first field %u,%u,%u,%u,%u";
                v57 = v65;
                v58 = 48;
                goto LABEL_85;
              }

              v41 = (v41 + *(v41 + 2) + 13);
              ++v40;
              v38 = a2 + 3;
            }

            while (v41 < (a2 + a2[3]));
            if (v40 != 2)
            {
              goto LABEL_79;
            }

            result = 1;
          }
        }

        else
        {
          result = 0;
        }
      }
    }
  }

LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _enumerate_dbo(_DWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  v11 = 0;
  v9 = 0;
  for (i = 0; ; (*(a4 + 16))(a4, i, v9))
  {
    result = db_next_field(a1, a2, a3, &v11, &i, &v9);
    if (result != 35)
    {
      break;
    }
  }

  return result;
}

CFDictionaryRef decodeVector(const __CFAllocator *a1, CFIndex length, const UInt8 **a3, unint64_t a4, void *a5, void *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if (&(*a3)[length] <= a4)
  {
    v10 = length;
    v12 = CFDataCreate(a1, *a3, length);
    *a3 += v10;
    *keys = xmmword_1E8198998;
    v17 = *off_1E81989A8;
    v18 = @"vec_version";
    values[0] = a5;
    values[1] = a6;
    values[3] = 0;
    values[4] = 0;
    values[2] = v12;
    v13 = CFDictionaryCreate(a1, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v12);
    result = v13;
  }

  else
  {
    result = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

const char *_SIGetErrorString()
{
  result = __si_error_str_key;
  if (__si_error_str_key)
  {
    result = pthread_getspecific(__si_error_str_key);
  }

  if (!result)
  {
    return "";
  }

  return result;
}

const char *SIGetRebuildReason()
{
  result = __si_index_rebuild_reason_key;
  if (__si_index_rebuild_reason_key)
  {
    result = pthread_getspecific(__si_index_rebuild_reason_key);
  }

  if (!result)
  {
    return "Error: unknown";
  }

  return result;
}

void __si_set_rebuild_reason(uint64_t a1, uint64_t a2, char *a3, ...)
{
  va_start(va, a3);
  v3[0] = 0;
  va_copy(&v3[1], va);
  vasprintf(v3, a3, va);
  _si_set_rebuild_reason(v3[0], 1, 1);
  free(v3[0]);
}

void _si_load_error_from_file(unsigned int a1, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1 >= 0x20)
  {
    v3 = *__error();
    v4 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v37 = "_si_load_error_from_file";
      v38 = 1024;
      v39 = 145;
      v40 = 1024;
      v41 = a1;
      _os_log_error_impl(&dword_1C278D000, v4, OS_LOG_TYPE_ERROR, "%s:%d: invalid pc_priority %u", buf, 0x18u);
    }

    *__error() = v3;
    goto LABEL_31;
  }

  if ((sFetchedPCs & (1 << a1)) != 0)
  {
    goto LABEL_31;
  }

  sFetchedPCs |= 1 << a1;
  v5 = fd_create_protected(a2, "errorFile", 0, 3u);
  if (v5)
  {
    v6 = v5;
    v7 = fd_lseek(v5, 0, 2);
    if (v7 < 0)
    {
      v8 = *__error();
      v9 = *__error();
      v10 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v37 = "_si_load_error_from_file";
        v38 = 1024;
        v39 = 169;
        v40 = 1024;
        v41 = a1;
        v42 = 1024;
        v43 = v8;
        _os_log_error_impl(&dword_1C278D000, v10, OS_LOG_TYPE_ERROR, "%s:%d: (%u) lseek error on error file: %d", buf, 0x1Eu);
      }

      *__error() = v9;
      *__error() = v8;
      _si_set_error_from_file(0);
    }

    bzero(buf, 0x400uLL);
    if (v7 <= 1023)
    {
      v11 = 1023;
    }

    else
    {
      v11 = v7;
    }

    v12 = fd_pread(v6, buf, v11, 0);
    if (v12 < 0)
    {
      v20 = *__error();
      v21 = *__error();
      v22 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v26 = 136315906;
        v27 = "_si_load_error_from_file";
        v28 = 1024;
        v29 = 178;
        v30 = 1024;
        v31 = a1;
        v32 = 1024;
        LODWORD(v33) = v20;
        _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: (%u) pread error on error file: %d", &v26, 0x1Eu);
      }

      *__error() = v21;
      *__error() = v20;
    }

    else
    {
      v13 = v12;
      if (v12 == v7)
      {
        v14 = buf;
LABEL_27:
        _si_set_error_from_file(v14);
        fd_release(v6);
        goto LABEL_31;
      }

      v23 = *__error();
      v24 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v26 = 136316162;
        v27 = "_si_load_error_from_file";
        v28 = 1024;
        v29 = 182;
        v30 = 1024;
        v31 = a1;
        v32 = 2048;
        v33 = v13;
        v34 = 2048;
        v35 = v7;
        _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: (%u) pread error on error file %lld != %lld", &v26, 0x2Cu);
      }

      *__error() = v23;
    }

    v14 = 0;
    goto LABEL_27;
  }

  v15 = *__error();
  v16 = *__error();
  v17 = _SILogForLogForCategory(0);
  v18 = v17;
  if (v15 == 2)
  {
    v19 = 2 * (gSILogLevels[0] < 4);
    if (os_log_type_enabled(v17, v19))
    {
      *buf = 67109120;
      LODWORD(v37) = a1;
      _os_log_impl(&dword_1C278D000, v18, v19, "(%u) No error file", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v37 = "_si_load_error_from_file";
    v38 = 1024;
    v39 = 159;
    v40 = 1024;
    v41 = a1;
    v42 = 1024;
    v43 = v15;
    _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, "%s:%d: (%u) Error opening error file: %d", buf, 0x1Eu);
  }

  *__error() = v16;
  *__error() = v15;
  _si_set_error_from_file(0);
LABEL_31:
  v25 = *MEMORY[0x1E69E9840];
}

void _si_set_error_from_file(const char *a1)
{
  if (__si_error_from_file_key)
  {
    v2 = pthread_getspecific(__si_error_from_file_key);
    v3 = __si_error_from_file_key;
    if (!a1)
    {
      v4 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    pthread_key_create(&__si_error_from_file_key, MEMORY[0x1E69E9B38]);
    v2 = 0;
    v3 = __si_error_from_file_key;
  }

  v4 = strdup(a1);
LABEL_7:
  if (pthread_setspecific(v3, v4) != -1)
  {

    free(v2);
  }
}

void *SIGetPreviousError()
{
  result = __si_error_from_file_key;
  if (__si_error_from_file_key)
  {
    return pthread_getspecific(__si_error_from_file_key);
  }

  return result;
}

void __si_write_error_to_file(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v33 = *MEMORY[0x1E69E9840];
  if (__si_error_str_key)
  {
    pthread_getspecific(__si_error_str_key);
    if (__si_error_str_key)
    {
      pthread_getspecific(__si_error_str_key);
    }
  }

  __s[0] = 0;
  __s[1] = &a9;
  vasprintf(__s, "%s:%u: %s", &a9);
  _si_set_error_str(__s[0], 1);
  _si_load_error_from_file(a2, a3);
  v11 = fd_create_protected(a3, "errorFile", 513, 3u);
  v12 = v11;
  if (!v11)
  {
    v16 = *__error();
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315906;
    v24 = "__si_write_error_to_file";
    v25 = 1024;
    v26 = 218;
    v27 = 1024;
    v28 = a2;
    v29 = 1024;
    LODWORD(v30) = v16;
    v20 = "%s:%d: (%u) Could not open/create error file: %d";
LABEL_16:
    _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x1Eu);
    goto LABEL_17;
  }

  if ((fd_truncate(v11, 0) & 0x80000000) != 0)
  {
    v16 = *__error();
    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315906;
    v24 = "__si_write_error_to_file";
    v25 = 1024;
    v26 = 224;
    v27 = 1024;
    v28 = a2;
    v29 = 1024;
    LODWORD(v30) = v16;
    v20 = "%s:%d: (%u) Could not truncate error file: %d";
    goto LABEL_16;
  }

  v13 = strlen(__s[0]);
  v14 = fd_pwrite(v12, __s[0], v13, 0);
  if (v14 != v13)
  {
    v15 = v14;
    v16 = *__error();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v24 = "__si_write_error_to_file";
        v25 = 1024;
        v26 = 235;
        v27 = 1024;
        v28 = a2;
        v29 = 2048;
        v30 = v15;
        v31 = 2048;
        v32 = v13;
        _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: (%u) Error writing to error file %lld != %lld", buf, 0x2Cu);
      }

      goto LABEL_18;
    }

    v18 = *__error();
    v19 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v24 = "__si_write_error_to_file";
      v25 = 1024;
      v26 = 232;
      v27 = 1024;
      v28 = a2;
      v29 = 1024;
      LODWORD(v30) = v16;
      v20 = "%s:%d: (%u) Error %d writing to error file";
      goto LABEL_16;
    }

LABEL_17:
    *__error() = v18;
LABEL_18:
    *__error() = v16;
  }

  fd_release(v12);
  free(__s[0]);
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t _si_set_invalid_term_update_set()
{
  v1 = __si_invalid_term_update_set_key;
  if (!__si_invalid_term_update_set_key)
  {
    pthread_key_create(&__si_invalid_term_update_set_key, MEMORY[0x1E69E9B38]);
    v1 = __si_invalid_term_update_set_key;
    v0 = vars8;
  }

  return pthread_setspecific(v1, "\x01");
}

xpc_object_t __db2_read_query_block_invoke(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  v3 = strstr((*(a1 + 32) + 324), "Library/Spotlight/CoreSpotlight");
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "invalid";
  }

  xpc_dictionary_set_string(empty, "name", v4);
  xpc_dictionary_set_uint64(empty, "pgoff", *(*(a1 + 40) + 2016));
  xpc_dictionary_set_uint64(empty, "pgsize", *(*(*(a1 + 40) + 16) + 44));
  xpc_dictionary_set_int64(empty, "signature", **(*(a1 + 40) + 2040));
  xpc_dictionary_set_uint64(empty, "size", *(*(*(a1 + 40) + 2040) + 4));
  xpc_dictionary_set_int64(empty, "used_bytes", *(*(*(a1 + 40) + 2040) + 8));
  xpc_dictionary_set_int64(empty, "flags", *(*(*(a1 + 40) + 2040) + 12));
  return empty;
}

void sdb2_die(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v8 = *__error();
  v9 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316418;
    v14 = "sdb2_die";
    v15 = 1024;
    v16 = 418;
    v17 = 2080;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 2080;
    v22 = a1 + 324;
    v23 = 2080;
    v24 = a2;
    _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: %s:%d : %s : %s\n", buf, 0x36u);
  }

  *__error() = v8;
  v10 = __si_assert_copy_extra_3233(*(a1 + 840), -1);
  v11 = v10;
  v12 = "";
  if (v10)
  {
    v12 = v10;
  }

  __message_assert("%s:%u: failed assertion '%s' %s %s:%d : %s : %s\n", "sdb2.c", 419, "0", v12, a3, a4, (a1 + 324), a2);
  free(v11);
  if (__valid_fsp(*(a1 + 840)))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

unsigned int *db2_swap_page(unsigned int *result)
{
  v1 = *result;
  if (*result == 1684172850 || v1 == 846226020)
  {
    v3 = result[3];
    if (v1 == 846226020)
    {
      if (v3 >> 28)
      {
        v4 = result[2];
        v5 = bswap32(v4);
        if (v5 < 0x21)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else if ((v3 & 0xF0) != 0)
    {
      v4 = result[2];
      v5 = v4;
      if (v4 < 0x21)
      {
LABEL_15:
        result[5] = bswap32(result[5]);
        v10 = bswap32(v1);
        v11 = result[1];
LABEL_17:
        *result = v10;
        result[1] = bswap32(v11);
        result[2] = bswap32(v4);
        result[3] = bswap32(v3);
        result[4] = bswap32(result[4]);
        return result;
      }

LABEL_12:
      v6 = result;
      v7 = result + 8;
      v8 = 32;
      do
      {
        *v7 = bswap32(*v7);
        v9 = strlen(v7 + 4) + 4;
        v7 = (v7 + v9);
        v8 += v9;
      }

      while (v8 < v5);
      result = v6;
      v1 = *v6;
      v4 = v6[2];
      v3 = v6[3];
      goto LABEL_15;
    }

    v10 = bswap32(v1);
    v11 = result[1];
    v4 = result[2];
    goto LABEL_17;
  }

  return result;
}

void _db2_unmap_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 816);
  if (v5)
  {
    v6 = *(v5 + 16);

    v6();
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v9 = dispatch_time(v5, 1000000000);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = ___db2_unmap_callback_block_invoke;
    v10[3] = &__block_descriptor_tmp_128_14612;
    v10[4] = a2;
    v10[5] = a3;
    dispatch_after(v9, MEMORY[0x1E69E96A0], v10);
  }
}

uint64_t _db2_synced_block_callback(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 824);
  if (v2)
  {
    return (*(v2 + 16))();
  }

  else
  {
    return (*(a2 + 16))(a2);
  }
}

char *db2_create_datastore_with_ctx(uint64_t a1)
{
  v133 = *MEMORY[0x1E69E9840];
  v111 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  if (sdb_map_zone_once != -1)
  {
    dispatch_once(&sdb_map_zone_once, &__block_literal_global_131);
  }

  v5 = malloc_type_zone_calloc(sdb_map_zone, 0x1000uLL, 1uLL, 0x10A0040B82A6DE8uLL);
  if (!v5)
  {
    goto LABEL_77;
  }

  bzero(v132, 0x400uLL);
  bzero(__dst, 0x400uLL);
  *(v5 + 246) = *(a1 + 20);
  if (fcntl(v111, 50, v132) < 0 || !LOBYTE(v132[0]))
  {
    __strlcpy_chk();
  }

  if (v132[0] != 47)
  {
    __strlcat_chk();
  }

  __strlcat_chk();
  v6 = *(a1 + 16);
  v7 = strrchr(v2, 47);
  if (v7)
  {
    v8 = v7;
    strlcpy(__dst, v2, v7 - v2 + 2);
    strlcat(__dst, ".", 0x400uLL);
    v9 = v8 + 1;
  }

  else
  {
    strcpy(__dst, ".");
    v9 = v2;
  }

  strlcat(__dst, v9, 0x400uLL);
  v10 = v5 + 760;
  v11 = v6 << 13 >> 31;
  *(v5 + 105) = fd_create_protected(v111, v2, 1538, v11 & 3);
  v12 = fd_create_protected(v111, __dst, 1538, v11 & 3);
  *(v5 + 106) = v12;
  if (!*(v5 + 105) || !v12)
  {
    v17 = *__error();
    v18 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      *__str = 136315906;
      *&__str[4] = "db2_create_datastore_with_ctx";
      *&__str[12] = 1024;
      *&__str[14] = 6268;
      v127 = 2080;
      v128 = v132;
      v129 = 2080;
      v130 = v20;
      v21 = "%s:%d: db2_create_datastore: ERR: Can't create file (%s : %s)\n";
      goto LABEL_124;
    }

    goto LABEL_63;
  }

  *(v12 + 28) |= 4u;
  __strlcpy_chk();
  *v5 = 1685287992;
  *(v5 + 1) = v3 | 0x10;
  *(v5 + 28) = 1;
  *(v5 + 9) = 4096;
  *(v5 + 11) = 0x4000;
  *(v5 + 3) = 12;
  *(v5 + 201) = (v3 >> 10) & 2 | v3 & 8 | (v3 >> 14) & 4 | (v3 >> 8) & 1 | (v3 >> 13) & 0x10;
  if (!((v3 >> 14) & 4 | (v3 >> 13) & 0x10) && sdb_string_zone_once != -1)
  {
    dispatch_once(&sdb_string_zone_once, &__block_literal_global_136);
  }

  if (sdb_map_zone_once != -1)
  {
    dispatch_once(&sdb_map_zone_once, &__block_literal_global_131);
  }

  *(v5 + 99) = 0;
  *(v5 + 760) = 0u;
  *(v5 + 776) = 0u;
  *(v5 + 728) = 0u;
  *(v5 + 744) = 0u;
  *(v5 + 696) = 0u;
  *(v5 + 712) = 0u;
  *(v5 + 664) = 0u;
  *(v5 + 680) = 0u;
  *(v5 + 632) = 0u;
  *(v5 + 648) = 0u;
  *(v5 + 600) = 0u;
  *(v5 + 616) = 0u;
  *(v5 + 584) = 0u;
  pthread_mutex_init((v5 + 584), 0);
  v13 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v13 = __THREAD_SLOT_KEY;
  }

  v110 = (v5 + 584);
  v109 = pthread_getspecific(v13);
  HIDWORD(v15) = qos_class_self() - 9;
  LODWORD(v15) = HIDWORD(v15);
  v14 = v15 >> 2;
  if (v14 > 6)
  {
    v16 = 0;
  }

  else
  {
    v16 = dword_1C2BFF8F0[v14];
  }

  v22 = pthread_mutex_lock(v110);
  if (!*(v5 + 96) && !*(v5 + 195) && (v5[796] & 1) == 0)
  {
    if (v16 > 5)
    {
LABEL_122:
      *(v5 + 96) = pthread_self();
      v23 = (v5 + 584);
      goto LABEL_30;
    }

    v84 = v16 - 6;
    v85 = &v5[16 * v16 + 648];
    while (!*v85)
    {
      v85 += 16;
      if (__CFADD__(v84++, 1))
      {
        goto LABEL_122;
      }
    }
  }

  v23 = (v5 + 584);
  db_rwlock_wait(v110, v16, 2);
LABEL_30:
  pthread_mutex_unlock(v23);
  if (v22)
  {
    v104 = *__error();
    v105 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315650;
      *&__str[4] = "db2_create_datastore_with_ctx";
      *&__str[12] = 1024;
      *&__str[14] = 6299;
      v127 = 1024;
      LODWORD(v128) = v22;
      _os_log_error_impl(&dword_1C278D000, v105, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", __str, 0x18u);
    }

    *__error() = v104;
    sdb2_die(v5, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 6299);
  }

  v108 = v109 - 1;
  if (v109)
  {
    v107 = CIOnThreadCleanUpPush(v109 - 1, db_write_unlock, v23);
  }

  else
  {
    v107 = -1;
  }

  *(v5 + 116) = db_cache_alloc(v5);
  v24 = malloc_type_zone_calloc(sdb_map_zone, 0x4000uLL, 1uLL, 0x10000408AA14F5FuLL);
  if (v24)
  {
    v25 = v24;
    if ((*(v5 + 1) & 0x100) != 0)
    {
      v26 = 1684172082;
    }

    else
    {
      v26 = 1684172081;
    }

    *v24 = v26;
    v24[1] = 0x4000;
    _add_dirty_chunk(v5, *(v5 + 9) >> *(v5 + 3), 0x4000u, 0);
    if (v5[4] < 0)
    {
      v27 = *(v5 + 107);
      v28 = v27[2];
      v29 = *v27;
      if (*v27 == 846029412 || (v30 = v27[2], v29 == 829252196))
      {
        v30 = bswap32(v28);
      }

      if (v30 >= 1)
      {
        v31 = (v27 + 7);
        do
        {
          v31[-1] = bswap64(*&v31[-1]);
          *v31 = vrev32_s8(*v31);
          v31 += 2;
          --v30;
        }

        while (v30);
      }

      v32 = bswap32(v27[1]);
      *v27 = bswap32(v29);
      v27[1] = v32;
      v27[2] = bswap32(v28);
      v27[4] = bswap32(v27[4]);
    }

    v33 = *(v5 + 9);
    if ((v33 & 0xFFF) != 0)
    {
      v100 = __si_assert_copy_extra_3233(0, -1);
      v101 = v100;
      v102 = "";
      if (v100)
      {
        v102 = v100;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 99, "(offset & ((1 << 12)-1)) == 0", v102);
      free(v101);
      if (__valid_fs(-1))
      {
        v103 = 2989;
      }

      else
      {
        v103 = 3072;
      }

      *v103 = -559038737;
      abort();
    }

    v34 = fd_pwrite(*(v5 + 106), v25, 0x4000uLL, v33);
    v35 = *(v5 + 1);
    if ((v35 & 0x80) != 0)
    {
      v36 = *(v5 + 107);
      v37 = v36[2];
      v38 = *v36;
      v39 = *v36 == 846029412 || v38 == 829252196;
      v40 = bswap32(v37);
      if (!v39)
      {
        v40 = v36[2];
      }

      if (v40 >= 1)
      {
        v41 = (v36 + 7);
        do
        {
          v41[-1] = bswap64(*&v41[-1]);
          *v41 = vrev32_s8(*v41);
          v41 += 2;
          --v40;
        }

        while (v40);
      }

      v42 = bswap32(v36[1]);
      *v36 = bswap32(v38);
      v36[1] = v42;
      v36[2] = bswap32(v37);
      v36[4] = bswap32(v36[4]);
    }

    if (v34 == 0x4000)
    {
      *(v5 + 10) = 0x4000;
      *(v5 + 107) = v25;
LABEL_78:
      v106 = v4;
      v54 = 0;
      v55 = v5 + 880;
      *(v5 + 122) = *(a1 + 24);
      while (1)
      {
        while (v54 == 5 || (*(v5 + 201) & 0x14) != 0)
        {
          bzero(__str, 0x400uLL);
          v67 = strcmp(v2, "store.db");
          v68 = "db";
          if (v67)
          {
            v68 = v2;
          }

          v69 = v54 + 1;
          snprintf(__str, 0x400uLL, "%sStr-%d.map", v68, v54 + 1);
          v113 = 0u;
          v115 = 0u;
          v116 = 0u;
          v114 = 0u;
          v112[0] = v111;
          v112[1] = __str;
          v70 = data_map_flags[v54];
          LODWORD(v113) = table_extra_bytes_14628[v54];
          DWORD1(v113) = v70 | 1;
          *(&v113 + 1) = _db2_synced_block_callback;
          *(&v114 + 1) = 0;
          *&v115 = 0;
          *&v114 = _db2_unmap_callback;
          v71 = *(v5 + 122);
          *(&v115 + 1) = v5;
          *&v116 = v71;
          DWORD2(v116) = v54;
          if (v54 <= 5 && ((1 << v54) & 0x29) != 0)
          {
            DWORD1(v113) = v70 | 0x201;
          }

          v72 = data_map_init_with_ctx(v112);
          *&v55[8 * v54] = v72;
          if (!v72)
          {
            v77 = *__error();
            v78 = _SILogForLogForCategory(7);
            if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_113;
            }

            v98 = __error();
            v99 = strerror(*v98);
            *buf = 136315906;
            v119 = "db2_create_datastore_with_ctx";
            v120 = 1024;
            v121 = 6345;
            v122 = 2080;
            v123 = __str;
            v124 = 2080;
            v125 = v99;
            v81 = buf;
LABEL_137:
            _os_log_error_impl(&dword_1C278D000, v78, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: can't init the string table! (%s)\n", v81, 0x26u);
LABEL_113:
            *__error() = v77;
            v10 = v5 + 760;
            v43 = *(v5 + 107);
            if (v43)
            {
              goto LABEL_64;
            }

            goto LABEL_65;
          }

          ++v54;
          if (v69 == 6)
          {
LABEL_102:
            if (fd_pwrite(*(v5 + 105), v5, 0x1000uLL, 0) == 4096)
            {
              v74 = *(v5 + 105);
              v10 = v5 + 760;
              if (_gSystemStatusBool == 1)
              {
                pthread_mutex_lock(&_gSystemStatusLock);
                if (_gSystemStatusBool == 1)
                {
                  do
                  {
                    pthread_cond_wait(&_gSystemStatusCond, &_gSystemStatusLock);
                  }

                  while ((_gSystemStatusBool & 1) != 0);
                }

                pthread_mutex_unlock(&_gSystemStatusLock);
              }

              *__str = 0;
              v75 = _fd_acquire_fd(v74, __str);
              if (v75 != -1)
              {
                if (v106)
                {
                  v76 = (*(v74 + 56) & 8) == 0;
                }

                else
                {
                  v76 = 0;
                }

                v89 = v75;
                prot_fsync(v75, v76);
                _fd_release_fd(v74, v89, 0, *__str);
              }

              if (fd_pwrite(*(v5 + 106), v5, 0x1000uLL, 0) == 4096)
              {
                *(v5 + 1000) = *(a1 + 40);
                *(v5 + 1) &= ~0x10u;
                if (db_write_unlock(v110))
                {
                  sdb2_die(v5, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 6386);
                }

                if (v109)
                {
                  CIOnThreadCleanUpClearItem(v108, v107);
                  v90 = &threadData[9 * v108];
                  v93 = *(v90 + 14);
                  v91 = v90 + 7;
                  v92 = v93;
                  if (v107 + 1 == v93)
                  {
                    *v91 = v92 - 1;
                  }
                }

                v94 = malloc_type_malloc(0x48uLL, 0x10A004087A21FEBuLL);
                *v94 = 0u;
                v94[1] = 0u;
                *(v94 + 8) = 1065353216;
                *(v94 + 40) = 0u;
                *(v94 + 56) = 0u;
                *(v5 + 124) = v94;
                db2_sync_datastore(v5, v106);
                db_cache_clear_offset_hints(*(v5 + 116));
                *(v5 + 808) = 0u;
                db2_set_garbage_collector(v5, &__block_literal_global_14636, &__block_literal_global_20_14637, &__block_literal_global_24);
                *(v5 + 104) = 0;
                goto LABEL_77;
              }

              v17 = *__error();
              v18 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v96 = __error();
                v97 = strerror(*v96);
                *__str = 136315906;
                *&__str[4] = "db2_create_datastore_with_ctx";
                *&__str[12] = 1024;
                *&__str[14] = 6366;
                v127 = 2080;
                v128 = v5 + 324;
                v129 = 2080;
                v130 = v97;
                v21 = "%s:%d: %s : ERR: Can't write shadow DST header (%s)\n";
                goto LABEL_124;
              }

              goto LABEL_63;
            }

            v17 = *__error();
            v18 = _SILogForLogForCategory(7);
            v10 = v5 + 760;
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_63;
            }

            v82 = __error();
            v83 = strerror(*v82);
            *__str = 136315906;
            *&__str[4] = "db2_create_datastore_with_ctx";
            *&__str[12] = 1024;
            *&__str[14] = 6360;
            v127 = 2080;
            v128 = v5 + 324;
            v129 = 2080;
            v130 = v83;
            v21 = "%s:%d: %s : ERR: Can't write DST header (%s)\n";
LABEL_124:
            _os_log_error_impl(&dword_1C278D000, v18, OS_LOG_TYPE_ERROR, v21, __str, 0x26u);
            goto LABEL_63;
          }
        }

        v56 = table_extra_bytes_14628[v54];
        *__str = 0;
        *buf = 0;
        v57 = malloc_type_zone_calloc(string_table_zone, 1uLL, 0x48uLL, 0x10B00402199480CuLL);
        *&v55[8 * v54] = v57;
        *v57 = -1;
        v58 = db_string_page_flags[v54];
        if (_page_alloc_fetch(v5, __str, 0, buf, v112, v58))
        {
          v77 = *__error();
          v78 = _SILogForLogForCategory(7);
          if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_113;
          }

          v79 = __error();
          v80 = strerror(*v79);
          *__str = 136315906;
          *&__str[4] = "db2_create_datastore_with_ctx";
          *&__str[12] = 1024;
          *&__str[14] = 6352;
          v127 = 2080;
          v128 = v5 + 324;
          v129 = 2080;
          v130 = v80;
          v81 = __str;
          goto LABEL_137;
        }

        v59 = *__str;
        v60 = *(*__str + 12) | v58;
        *(*__str + 8) = 32;
        *(v59 + 12) = v60;
        *(v59 + 20) = 0;
        *(v59 + 24) = 0;
        v61 = malloc_type_zone_valloc(string_table_zone, 0x4000uLL, 0x1022040893D1972uLL);
        v62 = *(v59 + 16);
        *v61 = *v59;
        v61[1] = v62;
        *(v61 + 1) = 0x4000;
        v63 = *buf;
        page_release(v5, v59, *buf, 1u, 0);
        *&v5[4 * v54 + 48] = v63;
        v64 = *&v55[8 * v54];
        *(v64 + 60) = 1;
        *(v64 + 24) = v61;
        *(v64 + 48) = 16;
        *(v64 + 32) = malloc_type_zone_malloc(string_table_zone, 0x80uLL, 0x10040436913F5uLL);
        if (v54 > 1)
        {
          *(v64 + 56) = 1;
          if (sdb_uniquing_zone_once != -1)
          {
            dispatch_once(&sdb_uniquing_zone_once, &__block_literal_global_13);
          }

          v73 = malloc_type_zone_calloc(sdb_uniquing_zone, 1uLL, 0x8E8uLL, 0x107004098C11689uLL);
          if (v73)
          {
            v66 = v73;
            v56 = 0;
            goto LABEL_101;
          }
        }

        else
        {
          *(v64 + 40) = malloc_type_malloc(*(v64 + 48), 0x18A24453uLL);
          *(v64 + 56) = 1;
          if (sdb_uniquing_zone_once != -1)
          {
            dispatch_once(&sdb_uniquing_zone_once, &__block_literal_global_15707);
          }

          v65 = malloc_type_zone_calloc(sdb_uniquing_zone, 1uLL, 0x8E8uLL, 0x107004098C11689uLL);
          if (v65)
          {
            v66 = v65;
LABEL_101:
            pthread_rwlock_init(v66, 0);
            v66[1].__sig = v56;
            *&v66[11].__opaque[64] = 1024;
            *&v66[11].__opaque[56] = malloc_type_zone_calloc(sdb_uniquing_zone, 1uLL, 0x4000uLL, 0x1050040DB1D6C16uLL);
            *(v64 + 16) = v66;
            goto LABEL_80;
          }
        }

        *(v64 + 16) = 0;
        free(v61);
        page_free(v5, v63, &v117, 0);
LABEL_80:
        *(v64 + 64) = 0;
        ++v54;
        v55 = v5 + 880;
        if (v54 == 6)
        {
          goto LABEL_102;
        }
      }
    }

    *(v5 + 1) = v35 | 2;
    free(v25);
    if (!*__error())
    {
      *__error() = 22;
    }

    *(v5 + 200) = *__error();
    if (!*__error())
    {
      goto LABEL_78;
    }
  }

  v17 = *__error();
  v18 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v87 = __error();
    v88 = strerror(*v87);
    *__str = 136315906;
    *&__str[4] = "db2_create_datastore_with_ctx";
    *&__str[12] = 1024;
    *&__str[14] = 6311;
    v127 = 2080;
    v128 = v5 + 324;
    v129 = 2080;
    v130 = v88;
    v21 = "%s:%d: %s : ERR: can't init the map! (%s)\n";
    goto LABEL_124;
  }

LABEL_63:
  *__error() = v17;
  v43 = *(v5 + 107);
  if (v43)
  {
LABEL_64:
    free(v43);
    *(v5 + 107) = 0;
  }

LABEL_65:
  cleanup_string_tables(v5);
  v44 = *(v5 + 105);
  if (v44)
  {
    fd_release(v44);
    *(v5 + 105) = 0;
  }

  v45 = *(v5 + 106);
  if (v45)
  {
    fd_release(v45);
    *(v5 + 106) = 0;
  }

  v46 = *(v5 + 116);
  if (v46)
  {
    db_cache_clear(*(v5 + 116), &__block_literal_global_14_16022);
    *&__str[8] = 0;
    *__str = *v46;
    if (atomic_load(v46 + 62))
    {
      for (i = 0; i < v49; ++i)
      {
        *&__str[8] = i;
        _cache_remove(__str);
        v49 = atomic_load(v46 + 62);
      }
    }

    atomic_store(0, v46 + 62);
    free(v46);
    pthread_mutex_lock((v5 + 584));
    *(v5 + 197) = 0;
    v50 = *(v5 + 95);
    *v10 = 0;
    v10[1] = 0;
    v51 = *(v5 + 195) != 0;
    v5[796] = 0;
    db_rwlock_wakeup((v5 + 584), v51, 0);
    pthread_mutex_unlock((v5 + 584));
    if (v50)
    {
      pthread_override_qos_class_end_np(v50);
    }

    db_rwlock_destroy((v5 + 584));
  }

  free(v5);
  v5 = 0;
LABEL_77:
  v52 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _page_alloc_fetch(uint64_t a1, int8x16_t **a2, int a3, unsigned int *a4, signed int *a5, unsigned int a6)
{
  v9 = a3;
  v45 = *MEMORY[0x1E69E9840];
  if (a3 <= 4095)
  {
    v9 = *(a1 + 44);
  }

  v12 = fd_lseek(*(a1 + 848), 0, 2);
  if (v12 == -1)
  {
    goto LABEL_17;
  }

  v13 = v12;
  if ((v12 & 0xFFF) != 0)
  {
    v14 = *__error();
    v15 = _SILogForLogForCategory(7);
    v16 = dword_1EBF46AE8 < 3;
    if (os_log_type_enabled(v15, (dword_1EBF46AE8 < 3)))
    {
      *v36 = 0;
      _os_log_impl(&dword_1C278D000, v15, v16, "*warn* sdb not page-size aligned. Extending.", v36, 2u);
    }

    *__error() = v14;
    v13 = (v13 & 0xFFFFFFFFFFFFF000) + 4096;
    fd_truncate(*(a1 + 848), v13);
  }

  v17 = malloc_type_calloc(v9, 1uLL, 0x1000040A86A77D5uLL);
  if (!v17)
  {
    *__error() = 12;
LABEL_17:
    result = *__error();
    goto LABEL_38;
  }

  v18 = v17;
  v17->i32[0] = 1684172850;
  v17->i32[1] = v9;
  v17->i32[2] = 20;
  v17->i32[3] = a6 | 1;
  if ((a6 & 4) != 0)
  {
    v17[1].i32[0] = v9;
  }

  _add_dirty_chunk(a1, v13 >> *(a1 + 12), v9, (a6 >> 14) & 1);
  if ((*(a1 + 4) & 0x80) != 0)
  {
    *v18 = vrev32q_s8(*v18);
    v18[1].i32[0] = bswap32(v18[1].u32[0]);
  }

  v19 = sdb_pwrite(*(a1 + 848), v18, v9, v13);
  if (v19 != v9)
  {
    v20 = *__error();
    if ((*(a1 + 4) & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v20 = 0;
  if ((*(a1 + 4) & 0x80) != 0)
  {
LABEL_19:
    *v18 = vrev32q_s8(*v18);
    v18[1].i32[0] = bswap32(v18[1].u32[0]);
  }

LABEL_20:
  if (v19 == v9)
  {
    *a4 = v13 >> *(a1 + 12);
    *a5 = v9;
    v22 = *(a1 + 928);
    v23 = *a4;
    *v36 = 0;
    *&v36[8] = 0;
    v24 = atomic_load((v22 + 248));
    if (v24 > v23)
    {
      *&v36[8] = 0;
      *v36 = *v22;
      *&v36[8] = v23;
      _cache_remove(v36);
    }

    v25 = *(v22 + 220);
    if (v25 >= 1)
    {
      v26 = 0;
      v27 = v22 + 252;
      while (*(v27 + 4 * v26) != v23)
      {
        if (v25 == ++v26)
        {
          goto LABEL_37;
        }
      }

      v34 = v22 + 48 * v26;
      free(*(v34 + 280));
      free(*(v34 + 272));
      *(v34 + 288) = 0u;
      *(v34 + 304) = 0u;
      *(v34 + 272) = 0u;
      *(v27 + 4 * v26) = 0;
    }

LABEL_37:
    result = 0;
    *a2 = v18;
  }

  else
  {
    *(a1 + 4) |= 2u;
    v28 = *__error();
    v29 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v36 = 136315394;
      *&v36[4] = "_page_alloc_fetch";
      *&v36[12] = 1024;
      *&v36[14] = 2138;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: Failed allocating page", v36, 0x12u);
    }

    *__error() = v28;
    *a4 = -1;
    free(v18);
    if (v20)
    {
      v30 = v20;
    }

    else
    {
      v30 = 22;
    }

    v31 = v30;
    *(a1 + 800) = v30;
    v32 = *__error();
    v33 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v36 = 136316418;
      *&v36[4] = "_page_alloc_fetch";
      *&v36[12] = 1024;
      *&v36[14] = 2146;
      v37 = 2080;
      v38 = a1 + 324;
      v39 = 1024;
      v40 = v9;
      v41 = 2048;
      v42 = v13;
      v43 = 1024;
      v44 = v31;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: pwrite(%s, %d, %lld) error: %d", v36, 0x32u);
    }

    *__error() = v32;
    result = v31;
  }

LABEL_38:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

void page_free(uint64_t a1, unsigned int a2, _DWORD *a3, unsigned int a4)
{
  v79 = *MEMORY[0x1E69E9840];
  memset(v74, 0, 20);
  memset(&v73, 0, sizeof(v73));
  v8 = *(a1 + 928);
  *buf = 0;
  *&buf[8] = 0;
  v9 = atomic_load((v8 + 248));
  if (v9 > a2)
  {
    *&buf[8] = 0;
    *buf = *v8;
    *&buf[8] = a2;
    _cache_remove(buf);
  }

  v10 = *(a1 + 928);
  *buf = 0;
  *&buf[8] = 0;
  v11 = atomic_load((v10 + 248));
  if (v11 > a2)
  {
    *&buf[8] = 0;
    *buf = *v10;
    *&buf[8] = a2;
    _cache_remove(buf);
  }

  v12 = *(v10 + 220);
  if (v12 < 1)
  {
LABEL_9:
    v15 = fd_pread(*(a1 + 848), v74, 0x14uLL, a2 << *(a1 + 12));
    if (v15 != 20)
    {
      v17 = v15;
      v18 = *__error();
      v19 = *__error();
      v20 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "page_free";
        *&buf[12] = 1024;
        *&buf[14] = 2195;
        v76 = 1024;
        *v77 = a2;
        *&v77[4] = 1024;
        *&v77[6] = v18;
        *v78 = 2080;
        *&v78[2] = a1 + 324;
        *&v78[10] = 2048;
        *&v78[12] = v17;
        *&v78[20] = 2048;
        *&v78[22] = 20;
        _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: Failed reading pgnum %d error:%d (%s) %zd != %zd", buf, 0x3Cu);
      }

      *__error() = v19;
      *__error() = v18;
      *(a1 + 4) |= 4u;
      if (!*__error())
      {
        *__error() = 22;
      }

      __error();
      goto LABEL_27;
    }

    v16 = v74[0];
    if ((*(a1 + 4) & 0x80) != 0 && LODWORD(v74[0]) == 846226020)
    {
      LODWORD(v74[0]) = 1684172850;
      *(v74 + 4) = vrev32q_s8(*(v74 + 4));
      if ((BYTE12(v74[0]) & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v13 = 0;
    v14 = v10 + 252;
    while (*(v14 + 4 * v13) != a2)
    {
      if (v12 == ++v13)
      {
        goto LABEL_9;
      }
    }

    v21 = v10 + 272;
    v22 = v10 + 272 + 48 * v13;
    v23 = **v22;
    LODWORD(v74[1]) = *(*v22 + 16);
    v74[0] = v23;
    *(v14 + 4 * v13) = 0;
    *(v22 + 16) = 0;
    *v22 = 0;
    v24 = v21 + 48 * v13;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0;
    v25 = *(v22 + 8);
    if (v25)
    {
      free(v25);
      *(v22 + 8) = 0;
    }

    v16 = v74[0];
  }

  if (v16 != 1684172850 || (BYTE12(v74[0]) & 1) == 0)
  {
LABEL_24:
    v26 = *__error();
    v27 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "page_free";
      *&buf[12] = 1024;
      *&buf[14] = 2212;
      v76 = 2080;
      *v77 = a1 + 324;
      *&v77[8] = 1024;
      *v78 = a2;
      *&v78[4] = 1024;
      *&v78[6] = v74[0];
      *&v78[10] = 1024;
      strcpy(&v78[12], "2pbd");
      v78[17] = 4;
      *&v78[18] = HIDWORD(v74[0]);
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: %s : free: ERR: Danger! page num 0x%x looks bad (signature 0x%x expected 0x%x flags 0x%x)\n", buf, 0x34u);
    }

    goto LABEL_26;
  }

LABEL_28:
  v29 = *(a1 + 848);
  if (!v29)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v30 = fstatat(*(v29 + 44), *(v29 + 72), &v73, 2048);
    v31 = g_prot_error_callback;
    if (v30 != -1 || g_prot_error_callback == 0)
    {
      break;
    }

    v33 = *(v29 + 40);
    v34 = __error();
    if (((*(v31 + 16))(v31, v33, *v34, 8) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v30)
  {
    goto LABEL_27;
  }

  v35 = a2;
  v36 = a2 << *(a1 + 12);
  v37 = v74 + 1;
  if ((BYTE12(v74[0]) & 4) != 0)
  {
    v37 = &v74[1];
  }

  v38 = v36 + *v37;
  v39 = (*(a1 + 40) + *(a1 + 36));
  if (v38 != v73.st_size || v36 < v39)
  {
    if (v36 < v39)
    {
      v26 = *__error();
      v41 = _SILogForLogForCategory(7);
      v42 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v41, v42))
      {
        *buf = 67109120;
        *&buf[4] = a2;
        _os_log_impl(&dword_1C278D000, v41, v42, "page_free: ERR: tried to free the first & only page of the file (pgnum 0x%x).\n", buf, 8u);
      }

LABEL_26:
      *__error() = v26;
      goto LABEL_27;
    }

    *a3 = 1;
    v47 = malloc_type_valloc(0x4000uLL, 0x1000040A86A77D5uLL);
    v48 = fd_pread(*(a1 + 848), v47, 0x4000uLL, v73.st_size - 0x4000);
    if (v48 == 0x4000)
    {
      if (sdb_pwrite(*(a1 + 848), v47, 0x4000uLL, a2 << *(a1 + 12)) == 0x4000)
      {
        v49 = v47[3];
        if ((*(a1 + 4) & 0x80) != 0 && v49 >> 28)
        {
          v49 = bswap32(v49);
          free(v47);
        }

        else
        {
          free(v47);
          if ((v49 & 0xF0) == 0)
          {
            v59 = (v73.st_size - 0x4000) >> *(a1 + 12);
            if (dword_1EBF46AE8 >= 5)
            {
              v71 = *__error();
              v72 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *&buf[4] = v59;
                *&buf[8] = 1024;
                *&buf[10] = a2;
                _os_log_impl(&dword_1C278D000, v72, OS_LOG_TYPE_DEFAULT, "Object page move from %d to %d", buf, 0xEu);
              }

              *__error() = v71;
            }

            db_cache_move_page(*(a1 + 928), v59, a2);
            if (map_change_pgnum(a1, v59, a2))
            {
              v60 = *__error();
              v61 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = "page_free";
                *&buf[12] = 1024;
                *&buf[14] = 2324;
                v76 = 2048;
                *v77 = v73.st_size - 0x4000;
                *&v77[8] = 1024;
                *v78 = a2;
                _os_log_error_impl(&dword_1C278D000, v61, OS_LOG_TYPE_ERROR, "%s:%d: page_free: ERR: failed to change the map page offset from %lld to %d\n", buf, 0x22u);
              }

              *__error() = v60;
            }

            page_cache_move(*(a1 + 928), a2, (v73.st_size - 0x4000) >> *(a1 + 12));
            goto LABEL_76;
          }
        }

        v55 = (v73.st_size - 0x4000) >> *(a1 + 12);
        if ((*(a1 + 804) & 0x14) != 0)
        {
          if (dword_1EBF46AE8 >= 5)
          {
            v56 = *__error();
            v57 = _SILogForLogForCategory(7);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = v55;
              *&buf[8] = 1024;
              *&buf[10] = a2;
              _os_log_impl(&dword_1C278D000, v57, OS_LOG_TYPE_DEFAULT, "Skipping string page move from %d to %d -- no string table!", buf, 0xEu);
            }

            *__error() = v56;
          }
        }

        else
        {
          update_string_table(a1, (v73.st_size - 0x4000) >> *(a1 + 12), a2, v49);
        }

LABEL_76:
        _add_dirty_chunk(a1, a2, 0x4000u, (a4 >> 14) & 1);
        db_downgrade_lock((a1 + 584));
        v62 = fd_truncate(*(a1 + 848), v73.st_size - 0x4000);
        v63 = *__error();
        db_upgrade_lock(a1 + 584);
        if (!v62)
        {
          goto LABEL_27;
        }

        v45 = *__error();
        v46 = _SILogForLogForCategory(7);
        if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_49;
        }

        *buf = 136316162;
        *&buf[4] = "page_free";
        *&buf[12] = 1024;
        *&buf[14] = 2342;
        v76 = 2080;
        *v77 = a1 + 324;
        *&v77[8] = 2048;
        *v78 = v73.st_size - 0x4000;
        *&v78[8] = 1024;
        *&v78[10] = v63;
        goto LABEL_69;
      }

      v51 = *__error();
      v54 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v64 = v73.st_size - 0x4000;
        v65 = __error();
        v66 = strerror(*v65);
        *buf = 136316162;
        *&buf[4] = "page_free";
        *&buf[12] = 1024;
        *&buf[14] = 2283;
        v76 = 2048;
        *v77 = v64;
        *&v77[8] = 1024;
        *v78 = a2;
        *&v78[4] = 2080;
        *&v78[6] = v66;
        _os_log_error_impl(&dword_1C278D000, v54, OS_LOG_TYPE_ERROR, "%s:%d: page_free: ERR: error moving page from %lld to %d (%s)\n", buf, 0x2Cu);
      }
    }

    else
    {
      v50 = v48;
      v51 = *__error();
      v52 = *__error();
      v53 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "page_free";
        *&buf[12] = 1024;
        *&buf[14] = 2347;
        v76 = 2048;
        *v77 = v73.st_size - 0x4000;
        *&v77[8] = 1024;
        *v78 = v51;
        *&v78[4] = 2080;
        *&v78[6] = a1 + 324;
        *&v78[14] = 2048;
        *&v78[16] = v50;
        *&v78[24] = 2048;
        *&v78[26] = 0x4000;
        _os_log_error_impl(&dword_1C278D000, v53, OS_LOG_TYPE_ERROR, "%s:%d: Failed reading pgnum %lld error:%d (%s) %zd != %zd", buf, 0x40u);
      }

      *__error() = v52;
    }

    *__error() = v51;
    free(v47);
    goto LABEL_27;
  }

  *a3 = 1;
  if (((a2 << *(a1 + 12)) & 0xFFF) != 0)
  {
    v67 = __si_assert_copy_extra_3233(0, -1);
    v68 = v67;
    v69 = "";
    if (v67)
    {
      v69 = v67;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 2227, "(((off_t)(pgnum) << (dst->pg_shift)) & ((1 << 12)-1))==0", v69);
    free(v68);
    if (__valid_fs(-1))
    {
      v70 = 2989;
    }

    else
    {
      v70 = 3072;
    }

    *v70 = -559038737;
    abort();
  }

  pthread_mutex_lock((a1 + 584));
  *(a1 + 796) = 1;
  db_rwlock_wakeup(a1 + 584, 1, 1);
  pthread_mutex_unlock((a1 + 584));
  v43 = fd_truncate(*(a1 + 848), a2 << *(a1 + 12));
  v44 = *__error();
  db_upgrade_lock(a1 + 584);
  if (v43)
  {
    v45 = *__error();
    v46 = _SILogForLogForCategory(7);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
LABEL_49:
      *__error() = v45;
      goto LABEL_27;
    }

    v58 = v35 << *(a1 + 12);
    *buf = 136316162;
    *&buf[4] = "page_free";
    *&buf[12] = 1024;
    *&buf[14] = 2238;
    v76 = 2080;
    *v77 = a1 + 324;
    *&v77[8] = 2048;
    *v78 = v58;
    *&v78[8] = 1024;
    *&v78[10] = v44;
LABEL_69:
    _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: ftruncate(%s, %lld) error: %d", buf, 0x2Cu);
    goto LABEL_49;
  }

LABEL_27:
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t db2_sync_datastore(uint64_t result, int a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if ((*(result + 804) & 8) != 0)
  {
    goto LABEL_41;
  }

  v2 = result;
  v3 = __THREAD_SLOT_KEY;
  if (!__THREAD_SLOT_KEY)
  {
    makeThreadId();
    v3 = __THREAD_SLOT_KEY;
  }

  v4 = pthread_getspecific(v3);
  HIDWORD(v6) = qos_class_self() - 9;
  LODWORD(v6) = HIDWORD(v6);
  v5 = v6 >> 2;
  if (v5 > 6)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_1C2BFF8F0[v5];
  }

  v8 = pthread_mutex_lock((v2 + 584));
  if (*(v2 + 768) || *(v2 + 780) || (*(v2 + 796) & 1) != 0)
  {
    goto LABEL_10;
  }

  if (v7 <= 5)
  {
    v30 = v7 - 6;
    v31 = (v2 + 16 * v7 + 648);
    while (!*v31)
    {
      v31 += 2;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_47;
      }
    }

LABEL_10:
    db_rwlock_wait(v2 + 584, v7, 2);
    goto LABEL_11;
  }

LABEL_47:
  *(v2 + 768) = pthread_self();
LABEL_11:
  pthread_mutex_unlock((v2 + 584));
  if (v8)
  {
    v48 = *__error();
    v49 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v54 = "db2_sync_datastore";
      *&v54[8] = 1024;
      v55 = 9066;
      v56 = 1024;
      LODWORD(v57) = v8;
      _os_log_error_impl(&dword_1C278D000, v49, OS_LOG_TYPE_ERROR, "%s:%d: Lock failed with error %d", buf, 0x18u);
    }

    *__error() = v48;
    sdb2_die(v2, "Multiple threads entering in sdb!", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9066);
  }

  if (!v4)
  {
    v9 = -1;
    if ((*(v2 + 4) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_33:
    v20 = *__error();
    v21 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v54 = "db2_sync_datastore";
      *&v54[8] = 1024;
      v55 = 9069;
      v56 = 2080;
      v57 = v2 + 324;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_sync_datastore: !WARNING! prior write-errors invalidate sync.\n", buf, 0x1Cu);
    }

    *__error() = v20;
    v22 = pthread_mutex_lock((v2 + 584));
    *(v2 + 788) = 0;
    v23 = *(v2 + 760);
    *(v2 + 760) = 0u;
    v24 = *(v2 + 780) != 0;
    *(v2 + 796) = 0;
    db_rwlock_wakeup(v2 + 584, v24, 0);
    result = pthread_mutex_unlock((v2 + 584));
    if (v23)
    {
      result = pthread_override_qos_class_end_np(v23);
    }

    if (v22)
    {
      sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9070);
    }

    goto LABEL_38;
  }

  v9 = CIOnThreadCleanUpPush(v4 - 1, db_write_unlock, v2 + 584);
  if ((*(v2 + 4) & 2) != 0)
  {
    goto LABEL_33;
  }

LABEL_14:
  for (i = 0; i != 6; ++i)
  {
    v11 = v2 + 8 * i;
    v12 = *(v11 + 880);
    if (i == 5 || (*(v2 + 804) & 0x14) != 0)
    {
      _data_map_sync_data(v12);
    }

    else
    {
      v13 = *(v12 + 8);
      if (v13)
      {
        page_release(v2, v13, *v12, 5u, 0);
        if (dword_1EBF46AE8 >= 5)
        {
          v51 = *__error();
          log = _SILogForLogForCategory(7);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            v14 = **(v11 + 880);
            *buf = 67109376;
            *v54 = v14;
            *&v54[4] = 1024;
            *&v54[6] = i;
            _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "Push dirty string page %d to disk (%d)", buf, 0xEu);
          }

          *__error() = v51;
        }
      }
    }
  }

  if (!_db2_flush_all_cache(v2, 0) && !map_write(v2))
  {
    v33 = *(v2 + 4);
    if (v33)
    {
      result = db_write_unlock(v2 + 584);
      if (result)
      {
        sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9097);
      }

      goto LABEL_38;
    }

    if ((v33 & 2) == 0)
    {
      *(v2 + 4) = v33 | 1;
    }

    fd_sync(*(v2 + 848), a2);
    if ((*(v2 + 4) & 0x80) != 0)
    {
      *v2 = vrev32q_s8(*v2);
      *(v2 + 16) = bswap32(*(v2 + 16));
      *(v2 + 20) = vrev64q_s8(*(v2 + 20));
      *(v2 + 36) = vrev32q_s8(*(v2 + 36));
      *(v2 + 52) = vrev32q_s8(*(v2 + 52));
    }

    if (fd_pwrite(*(v2 + 848), v2, 0x1000uLL, 0) != 4096)
    {
      v38 = *__error();
      if ((*(v2 + 4) & 0x80000000) != 0)
      {
        *v2 = vrev32q_s8(*v2);
        *(v2 + 16) = bswap32(*(v2 + 16));
        *(v2 + 20) = vrev64q_s8(*(v2 + 20));
        *(v2 + 36) = vrev32q_s8(*(v2 + 36));
        *(v2 + 52) = vrev32q_s8(*(v2 + 52));
      }

      v39 = *__error();
      v40 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v42 = strerror(v38);
        *buf = 136315906;
        *v54 = "db2_sync_datastore";
        *&v54[8] = 1024;
        v55 = 9124;
        v56 = 2080;
        v57 = v2 + 324;
        v58 = 2080;
        v59 = v42;
        _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_sync_datastore: ERR: Can't write DST header (%s)\n", buf, 0x26u);
      }

      *__error() = v39;
      *(v2 + 4) |= 2u;
      *(v2 + 800) = v38;
      result = db_write_unlock(v2 + 584);
      if (result)
      {
        sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9127);
      }

      goto LABEL_38;
    }

    if ((*(v2 + 804) & 0x14) != 0)
    {
      _data_map_sync_header(*(v2 + 880));
      if ((*(v2 + 804) & 0x14) != 0)
      {
        _data_map_sync_header(*(v2 + 888));
        if ((*(v2 + 804) & 0x14) != 0)
        {
          _data_map_sync_header(*(v2 + 896));
          if ((*(v2 + 804) & 0x14) != 0)
          {
            _data_map_sync_header(*(v2 + 904));
            if ((*(v2 + 804) & 0x14) != 0)
            {
              _data_map_sync_header(*(v2 + 912));
            }
          }
        }
      }
    }

    _data_map_sync_header(*(v2 + 920));
    v34 = fd_sync(*(v2 + 848), a2);
    if (v34 || (v34 = sync_dirty_chunks(v2)) != 0)
    {
      if ((*(v2 + 4) & 0x80000000) != 0)
      {
        *v2 = vrev32q_s8(*v2);
        *(v2 + 16) = bswap32(*(v2 + 16));
        *(v2 + 20) = vrev64q_s8(*(v2 + 20));
        *(v2 + 36) = vrev32q_s8(*(v2 + 36));
        *(v2 + 52) = vrev32q_s8(*(v2 + 52));
      }

      if (v34 == 28)
      {
        goto LABEL_67;
      }

      v35 = v34;
      v36 = *__error();
      v37 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
LABEL_66:
        *__error() = v36;
        *(v2 + 4) |= 2u;
        *(v2 + 800) = v35;
LABEL_67:
        result = db_write_unlock(v2 + 584);
        if (result)
        {
          sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9177);
        }

        goto LABEL_38;
      }

      *buf = 136315394;
      *v54 = "db2_sync_datastore";
      *&v54[8] = 1024;
      v55 = 9171;
    }

    else
    {
      v41 = fd_sync(*(v2 + 840), a2);
      if (!v41)
      {
        v43 = fd_pwrite(*(v2 + 840), v2, 0x1000uLL, 0);
        v44 = *__error();
        if ((*(v2 + 4) & 0x80000000) != 0)
        {
          *v2 = vrev32q_s8(*v2);
          *(v2 + 16) = bswap32(*(v2 + 16));
          *(v2 + 20) = vrev64q_s8(*(v2 + 20));
          *(v2 + 36) = vrev32q_s8(*(v2 + 36));
          *(v2 + 52) = vrev32q_s8(*(v2 + 52));
        }

        if (v43 != 4096)
        {
          v45 = *__error();
          v46 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = strerror(v44);
            *buf = 136315906;
            *v54 = "db2_sync_datastore";
            *&v54[8] = 1024;
            v55 = 9154;
            v56 = 2080;
            v57 = v2 + 324;
            v58 = 2080;
            v59 = v47;
            _os_log_error_impl(&dword_1C278D000, v46, OS_LOG_TYPE_ERROR, "%s:%d: %s : ERR: Can't write DST header (2: %s)\n", buf, 0x26u);
          }

          *__error() = v45;
          *(v2 + 4) |= 2u;
          *(v2 + 800) = v44;
        }

        fd_sync(*(v2 + 840), a2);
        goto LABEL_67;
      }

      v35 = v41;
      v36 = *__error();
      v37 = _SILogForLogForCategory(7);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 136315394;
      *v54 = "db2_sync_datastore";
      *&v54[8] = 1024;
      v55 = 9161;
    }

    _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: Failed syncing db", buf, 0x12u);
    goto LABEL_66;
  }

  v15 = *__error();
  v16 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *v54 = "db2_sync_datastore";
    *&v54[8] = 1024;
    v55 = 9088;
    v56 = 2080;
    v57 = v2 + 324;
    _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: %s : db2_sync_datastore: !WARNING! write-errors flushing cache/writing map.\n", buf, 0x1Cu);
  }

  *__error() = v15;
  v17 = pthread_mutex_lock((v2 + 584));
  *(v2 + 788) = 0;
  v18 = *(v2 + 760);
  *(v2 + 760) = 0u;
  v19 = *(v2 + 780) != 0;
  *(v2 + 796) = 0;
  db_rwlock_wakeup(v2 + 584, v19, 0);
  result = pthread_mutex_unlock((v2 + 584));
  if (v18)
  {
    result = pthread_override_qos_class_end_np(v18);
  }

  if (v17)
  {
    sdb2_die(v2, "Multiple threads in sdb! (leaving)", "/Library/Caches/com.apple.xbs/Sources/Spotlight_frameworks/spotlight/core-db/serial-db2/sdb2.c", 9089);
  }

LABEL_38:
  if (v4)
  {
    result = CIOnThreadCleanUpClearItem(v4 - 1, v9);
    v25 = &threadData[9 * (v4 - 1)];
    v28 = *(v25 + 14);
    v26 = v25 + 7;
    v27 = v28;
    if (v9 + 1 == v28)
    {
      *v26 = v27 - 1;
    }
  }

LABEL_41:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void db2_set_garbage_collector(void *a1, void *aBlock, void *a3, void *a4)
{
  v5 = a3;
  if (aBlock)
  {
    v7 = _Block_copy(aBlock);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = _Block_copy(v5);
  }

LABEL_4:
  if (a4)
  {
    a4 = _Block_copy(a4);
  }

  v8 = a1[101];
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = a1[102];
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = a1[103];
  if (v10)
  {
    _Block_release(v10);
  }

  a1[101] = v7;
  a1[102] = v5;
  a1[103] = a4;
}

void cleanup_string_tables(uint64_t a1)
{
  if ((*(a1 + 804) & 0x14) != 0)
  {
    v2 = *(a1 + 880);
    if (v2)
    {
      data_map_destroy(v2);
      *(a1 + 880) = 0;
    }
  }

  else
  {
    destroy_string_table(a1, 0);
  }

  if ((*(a1 + 804) & 0x14) != 0)
  {
    v3 = *(a1 + 888);
    if (v3)
    {
      data_map_destroy(v3);
      *(a1 + 888) = 0;
    }
  }

  else
  {
    destroy_string_table(a1, 1u);
  }

  if ((*(a1 + 804) & 0x14) != 0)
  {
    v4 = *(a1 + 896);
    if (v4)
    {
      data_map_destroy(v4);
      *(a1 + 896) = 0;
    }
  }

  else
  {
    destroy_string_table(a1, 2u);
  }

  if ((*(a1 + 804) & 0x14) != 0)
  {
    v5 = *(a1 + 904);
    if (v5)
    {
      data_map_destroy(v5);
      *(a1 + 904) = 0;
    }
  }

  else
  {
    destroy_string_table(a1, 3u);
  }

  if ((*(a1 + 804) & 0x14) == 0)
  {
    destroy_string_table(a1, 4u);
    v7 = *(a1 + 920);
    if (!v7)
    {
      return;
    }

    goto LABEL_21;
  }

  v6 = *(a1 + 912);
  if (v6)
  {
    data_map_destroy(v6);
    *(a1 + 912) = 0;
  }

  v7 = *(a1 + 920);
  if (v7)
  {
LABEL_21:
    data_map_destroy(v7);
    *(a1 + 920) = 0;
  }
}

void destroy_string_table(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 880;
  v3 = *(a1 + 880 + 8 * a2);
  if (v3)
  {
    v5 = *(v3 + 24);
    if (v5)
    {
      while (*(v5 + 20))
      {
        v6 = *(v5 + 24);
        free(v5);
        v5 = v6;
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      free(v5);
LABEL_7:
      v3 = *(v2 + 8 * a2);
    }

    v7 = *(v3 + 16);
    if (v7)
    {
      pthread_rwlock_destroy(*(v3 + 16));
      free(v7[283]);
      free(v7);
      *(*(v2 + 8 * a2) + 16) = 0;
      v3 = *(v2 + 8 * a2);
    }

    v8 = *(v3 + 32);
    if (v8)
    {
      free(v8);
      *(*(v2 + 8 * a2) + 32) = 0;
      v3 = *(v2 + 8 * a2);
    }

    v9 = *(v3 + 40);
    if (v9)
    {
      free(v9);
      *(*(v2 + 8 * a2) + 32) = 0;
      v3 = *(v2 + 8 * a2);
    }

    *(v3 + 24) = 0;
    *(*(v2 + 8 * a2) + 60) = 0;
    *(*(v2 + 8 * a2) + 56) = 0;
    free(*(v2 + 8 * a2));
    *(v2 + 8 * a2) = 0;
  }
}

uint64_t _db2_flush_all_cache(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 16385;
  }

  else
  {
    v3 = 0;
  }

  result = flush_updateset_locked(a1);
  if (!result)
  {
    if (*(a1 + 1000) && *(a1 + 1008))
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(7);
      v7 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v6, v7, "_db2_flush_all_cache: start callback", buf, 2u);
      }

      *__error() = v5;
      (*(a1 + 1008))(*(a1 + 1000), 0);
    }

    v8 = *(a1 + 928);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v22 = ___db2_flush_all_cache_block_invoke;
    v23 = &__block_descriptor_tmp_160_14669;
    v24 = a1;
    v25 = v3;
    v9 = *(v8 + 220);
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = (v8 + 272);
      v12 = 0uLL;
      do
      {
        v13 = v8 + 4 * v10;
        v14 = *(v13 + 252);
        if (v14 && (v15 = *v11) != 0)
        {
          v16 = *(v11 + 4);
          if (v16)
          {
            *v27 = v12;
            v28 = v12;
            *&buf[4] = DWORD1(v12);
            *buf = v14;
            *&buf[8] = v15;
            v27[0] = v11[1];
            LODWORD(v27[1]) = v16;
            *&v28 = v11[3];
            DWORD2(v28) = *(v11 + 8);
            v29 = v11[5];
            v22(v21, buf);
            if (*&buf[8])
            {
              *v11 = *&buf[8];
              v11[1] = v27[0];
              *(v11 + 4) = v27[1];
              v11[3] = v28;
              *(v11 + 8) = DWORD2(v28);
              v11[5] = v29;
              v17 = *buf;
              v12 = 0uLL;
            }

            else
            {
              free(v27[0]);
              v17 = 0;
              v12 = 0uLL;
              *(v11 + 1) = 0u;
              *(v11 + 2) = 0u;
              *v11 = 0u;
            }

            *(v13 + 252) = v17;
            v9 = *(v8 + 220);
          }
        }

        else
        {
          *(v11 + 4) = 0;
        }

        ++v10;
        v11 += 6;
      }

      while (v10 < v9);
    }

    if (*(a1 + 1000) && *(a1 + 1008))
    {
      v18 = *__error();
      v19 = _SILogForLogForCategory(7);
      v20 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v19, v20))
      {
        *buf = 0;
        _os_log_impl(&dword_1C278D000, v19, v20, "_db2_flush_all_cache: end callback", buf, 2u);
      }

      *__error() = v18;
      (*(a1 + 1008))(*(a1 + 1000), 1);
    }

    return 0;
  }

  return result;
}

uint64_t map_write(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 856) + 12) & 1) == 0)
  {
    goto LABEL_23;
  }

  _add_dirty_chunk(a1, *(a1 + 36) >> *(a1 + 12), *(a1 + 40), 1);
  v2 = *(a1 + 36);
  v3 = *(a1 + 856);
  v3[3] &= ~1u;
  if ((*(a1 + 4) & 0x80) != 0)
  {
    v4 = v3[2];
    v5 = *v3;
    v6 = *v3 == 846029412 || v5 == 829252196;
    v7 = bswap32(v4);
    if (!v6)
    {
      v7 = v3[2];
    }

    if (v7 >= 1)
    {
      v8 = (v3 + 7);
      do
      {
        v8[-1] = bswap64(*&v8[-1]);
        *v8 = vrev32_s8(*v8);
        v8 += 2;
        --v7;
      }

      while (v7);
    }

    v9 = bswap32(v3[1]);
    *v3 = bswap32(v5);
    v3[1] = v9;
    v3[2] = bswap32(v4);
    v3[4] = bswap32(v3[4]);
  }

  v10 = sdb_pwrite(*(a1 + 848), v3, *(a1 + 40), v2);
  v11 = *(a1 + 4);
  if ((v11 & 0x80) != 0)
  {
    v12 = *(a1 + 856);
    v13 = v12[2];
    v14 = *v12;
    v15 = *v12 == 846029412 || v14 == 829252196;
    v16 = bswap32(v13);
    if (!v15)
    {
      v16 = v12[2];
    }

    if (v16 >= 1)
    {
      v17 = (v12 + 7);
      do
      {
        v17[-1] = bswap64(*&v17[-1]);
        *v17 = vrev32_s8(*v17);
        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v18 = bswap32(v12[1]);
    *v12 = bswap32(v14);
    v12[1] = v18;
    v12[2] = bswap32(v13);
    v12[4] = bswap32(v12[4]);
  }

  if (v10 != *(a1 + 40))
  {
    *(a1 + 4) = v11 | 2;
    v20 = *__error();
    v21 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "map_write";
      v25 = 1024;
      v26 = 2056;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: Failed writing map", &v23, 0x12u);
    }

    *__error() = v20;
    if (!*__error())
    {
      *__error() = 22;
    }

    *(a1 + 800) = *__error();
    result = *__error();
  }

  else
  {
LABEL_23:
    result = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *map_split(uint64_t a1, int *a2, uint64_t a3, int a4, uint64_t a5, __int32 a6)
{
  v36 = *MEMORY[0x1E69E9840];
  result = map_check_size(a1);
  if (result)
  {
    goto LABEL_22;
  }

  v13 = *(a1 + 856);
  v14 = *a2;
  v15 = v13[2].i32[0];
  v16 = v13[1].i32[0];
  if (v16 <= v15 || v15 <= -1)
  {
    v15 = 0;
  }

  if (v15 >= v16)
  {
LABEL_12:
    if (!v15)
    {
LABEL_16:
      v23 = *__error();
      v24 = _SILogForLogForCategory(7);
      v25 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = *a2;
        v32 = 136315394;
        v33 = a1 + 324;
        v34 = 1024;
        v35 = v26;
        _os_log_impl(&dword_1C278D000, v24, v25, "%s : ERR: map_split_page: BAD NEWS! pgnum 0x%x not found\n", &v32, 0x12u);
      }

      result = __error();
      *result = v23;
      goto LABEL_22;
    }

    v19 = 0;
    v21 = &v13[3] + 1;
    while (1)
    {
      v22 = *v21;
      v21 += 4;
      if (v22 == v14)
      {
        break;
      }

      if (v15 == ++v19)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v18 = &v13[2 * v15 + 3] + 1;
    v19 = v15;
    while (1)
    {
      v20 = *v18;
      v18 += 4;
      if (v20 == v14)
      {
        break;
      }

      if (v16 == ++v19)
      {
        goto LABEL_12;
      }
    }
  }

  v13[2].i32[0] = v19;
  v27 = &v13[2 * v19];
  result = memmove(&v27[4] + 4, &v27[2] + 4, 16 * (v16 - v19));
  *(&v27[2] + 4) = a3;
  v27[4].i32[0] = v27[4].i32[0] & 0xFFFFFFF | (a4 << 28);
  v27[5].i32[1] = a6;
  v28 = 16;
  if ((*(a5 + 12) & 4) == 0)
  {
    v28 = 4;
  }

  v27[6].i32[0] = v27[6].i32[0] & 0xF0000000 | *(a5 + v28) & 0xFFFFFFF;
  v29 = v13[1];
  v30.i32[0] = vadd_s32(v29, 0x100000001).u32[0];
  v30.i32[1] = (*&v29 | 0x100000001uLL) >> 32;
  v13[1] = v30;
LABEL_22:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t map_check_size(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 856);
  v2 = v1[2];
  if (v2 + 1 > ((v1[1] - 36) >> 4))
  {
    if (v2 < 1)
    {
      LODWORD(v4) = 0;
    }

    else
    {
      v4 = 0;
      v5 = (v1 + 7);
      while (1)
      {
        v6 = *v5;
        v5 += 4;
        if (v6 << *(a1 + 12) == *(a1 + 36) + *(a1 + 40))
        {
          break;
        }

        if (v2 == ++v4)
        {
          v7 = 0x4000;
          v8 = 1;
          goto LABEL_12;
        }
      }
    }

    if (v4 >= v2)
    {
      v7 = 0x4000;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v7 = v1[4 * v4 + 8] & 0xFFFFFFF;
    }

    LODWORD(v2) = v4;
LABEL_12:
    v45 = 0;
    v9 = (*(a1 + 36) + *(a1 + 40)) >> *(a1 + 12);
    v10 = v7;
    v11 = malloc_type_malloc(v7, 0x5BDC7B0BuLL);
    v44 = v9;
    v12 = fd_pread(*(a1 + 848), v11, v10, v9 << *(a1 + 12));
    if (v12 != v10)
    {
      v16 = v12;
      *(a1 + 4) |= 4u;
      v17 = *__error();
      v18 = *__error();
      v19 = _SILogForLogForCategory(7);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "db_shove_page";
        v48 = 1024;
        v49 = 1228;
        v50 = 1024;
        *v51 = v44;
        *&v51[4] = 1024;
        *&v51[6] = v17;
        *v52 = 2080;
        *&v52[2] = a1 + 324;
        *&v52[10] = 2048;
        *&v52[12] = v16;
        v53 = 2048;
        v54 = v10;
        _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: Failed reading pgnum %d error:%d (%s) %zd != %zd", buf, 0x3Cu);
      }

      *__error() = v18;
      *__error() = v17;
      if (!*__error())
      {
        *__error() = 22;
      }

      free(v11);
      if (*__error())
      {
        goto LABEL_54;
      }

LABEL_46:
      v30 = malloc_type_zone_malloc(sdb_map_zone, (*(a1 + 40) + v10), 0x10000408AA14F5FuLL);
      if (v30)
      {
        v31 = v30;
        memcpy(v30, v1, *(a1 + 40));
        if ((v8 & 1) == 0)
        {
          v31[4 * v2 + 7] = v45;
        }

        *(a1 + 40) += v10;
        v31[1] += v10;
        free(v1);
        v31[3] |= 1u;
        *(a1 + 856) = v31;
        v32 = ((v31[1] << 28) - 0x140000000) >> 32;
        if (v32 > v31[2] + 1)
        {
          goto LABEL_50;
        }

        v34 = *__error();
        v35 = _SILogForLogForCategory(7);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v37 = v31[2] + 1;
          *buf = 136316162;
          *&buf[4] = "map_check_size";
          v48 = 1024;
          v49 = 1418;
          v50 = 2080;
          *v51 = a1 + 324;
          *&v51[8] = 1024;
          *v52 = v37;
          *&v52[4] = 2048;
          *&v52[6] = v32;
          _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: %s : map_check_size: ERR FATAL: too many entries! %d / %ld\n", buf, 0x2Cu);
        }

        *__error() = v34;
      }

LABEL_54:
      result = 28;
      goto LABEL_55;
    }

    v13 = v11[3];
    if ((v13 & 0xF0) != 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      v38 = __si_assert_copy_extra_3233(0, -1);
      v39 = v38;
      v40 = "";
      if (v38)
      {
        v40 = v38;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 1239, "do_string_update || (flags & 0x000000f0)==0", v40);
      free(v39);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    *buf = 0;
    if (_page_alloc_fetch(a1, buf, v10, &v45, &v46, 0))
    {
      updated = 28;
      goto LABEL_45;
    }

    v41 = v13;
    v42 = v11;
    free(*buf);
    v20 = v45;
    v43 = v8;
    if ((v8 & 1) != 0 || (v21 = *(a1 + 928), v22 = *(v21 + 220), v22 < 1))
    {
LABEL_35:
      v11 = v42;
      v28 = fd_pwrite(*(a1 + 848), v42, v10, v20 << *(a1 + 12));
      LOBYTE(v8) = v43;
      if (v28 == v10)
      {
        v29 = v43;
      }

      else
      {
        v29 = 0;
      }

      if (v28 == v10)
      {
        updated = 0;
      }

      else
      {
        updated = 28;
      }

      if (v29 == 1)
      {
        if ((*(a1 + 804) & 0x14) != 0)
        {
          updated = 0;
        }

        else
        {
          updated = update_string_table(a1, v44, v20, v41);
        }
      }

LABEL_45:
      free(v11);
      if (updated)
      {
        goto LABEL_54;
      }

      goto LABEL_46;
    }

    v23 = 0;
    v24 = (v21 + 252);
    v25 = v21 + 272;
    while (1)
    {
      if (*v24 == v20)
      {
        *v24 = 0;
        *(v25 + 24) = 0;
        *(v25 + 32) = 0;
        *(v25 + 40) = 0;
        free(*(v25 + 8));
        *(v25 + 8) = 0;
        free(*v25);
        v26 = v25;
      }

      else
      {
        if (*v24 != v44)
        {
          goto LABEL_30;
        }

        *v24 = v20;
        v27 = *(v25 + 8);
        if (!v27)
        {
          goto LABEL_30;
        }

        v26 = (v21 + 272 + 48 * v23 + 8);
        free(v27);
      }

      *v26 = 0;
      v22 = *(v21 + 220);
LABEL_30:
      ++v23;
      v25 += 48;
      ++v24;
      if (v23 >= v22)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_50:
  result = 0;
LABEL_55:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t update_string_table(uint64_t a1, int a2, int a3, int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = *__error();
  v9 = _SILogForLogForCategory(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v35 = a2;
    v36 = 1024;
    v37 = a3;
    _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "Moving string page from %d to %d", buf, 0xEu);
  }

  v33 = a3;
  v10 = 0;
  *__error() = v8;
  v11 = a1 + 880;
  v32 = a1;
  v12 = a1 + 48;
  do
  {
    if ((db_string_page_flags[v10] & a4) != 0)
    {
      v13 = *(v11 + 8 * v10);
      os_unfair_lock_lock(v13 + 17);
      v14 = *(v11 + 8 * v10);
      v15 = *(v14 + 3);
      v16 = *(v12 + 4 * v10);
      v17 = *v14;
      if (*v14 == a2)
      {
        *v14 = v33;
        if (dword_1EBF46AE8 >= 5)
        {
          v31 = *__error();
          log = _SILogForLogForCategory(7);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            v35 = a2;
            v36 = 1024;
            v37 = v33;
            v38 = 1024;
            v39 = v10;
            _os_log_impl(&dword_1C278D000, log, OS_LOG_TYPE_DEFAULT, "Change dirty string page %d to %d (%d)", buf, 0x14u);
          }

          *__error() = v31;
        }
      }

      if (*(v12 + 4 * v10) == a2)
      {
        *(v12 + 4 * v10) = v33;
        if (dword_1EBF46AE8 >= 5)
        {
          v28 = *__error();
          v29 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            v35 = a2;
            v36 = 1024;
            v37 = v33;
            v38 = 1024;
            v39 = v10;
            _os_log_impl(&dword_1C278D000, v29, OS_LOG_TYPE_DEFAULT, "Change first string page %d to %d (%d)", buf, 0x14u);
          }

          v20 = 0;
          *__error() = v28;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_24;
      }

      if (v15)
      {
        while (1)
        {
          v18 = *(v15 + 20);
          if (v18 == a2)
          {
            break;
          }

          v15 = *(v15 + 24);
          if (!v15)
          {
            goto LABEL_4;
          }

          v16 = v18;
        }

        *(v15 + 20) = v33;
        v19 = *(v15 + 4);
        if (v19 == 0x4000)
        {
          v19 = 0;
        }

        else
        {
          *(v15 + 4) = 0x4000;
        }

        v20 = page_release(v32, v15);
        if (dword_1EBF46AE8 >= 5)
        {
          v26 = *__error();
          v27 = _SILogForLogForCategory(7);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v35 = v16;
            v36 = 1024;
            v37 = v10;
            _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "Push chain string page %d to disk (%d)", buf, 0xEu);
          }

          *__error() = v26;
          if (v19)
          {
LABEL_23:
            *(v15 + 4) = v19;
          }
        }

        else if (v19)
        {
          goto LABEL_23;
        }

LABEL_24:
        os_unfair_lock_unlock(v13 + 17);
        goto LABEL_25;
      }

LABEL_4:
      if (v17 == a2)
      {
        v23 = __si_assert_copy_extra_3233(0, -1);
        v24 = v23;
        v25 = "";
        if (v23)
        {
          v25 = v23;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 11146, "!updatedDirty", v25);
        free(v24);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      os_unfair_lock_unlock(v13 + 17);
    }

    ++v10;
  }

  while (v10 != 5);
  v20 = 2;
LABEL_25:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

xpc_object_t ___page_fetch_with_fd_block_invoke_204(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  v3 = strstr((*(a1 + 32) + 324), "Library/Spotlight/CoreSpotlight");
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = "invalid";
  }

  xpc_dictionary_set_string(empty, "name", v4);
  xpc_dictionary_set_uint64(empty, "pgoff", *(a1 + 48) << *(*(a1 + 32) + 12));
  xpc_dictionary_set_uint64(empty, "pgsize", *(*(a1 + 32) + 44));
  xpc_dictionary_set_int64(empty, "signature", **(a1 + 40));
  xpc_dictionary_set_uint64(empty, "size", *(*(a1 + 40) + 4));
  xpc_dictionary_set_int64(empty, "used_bytes", *(*(a1 + 40) + 8));
  xpc_dictionary_set_int64(empty, "flags", *(*(a1 + 40) + 12));
  return empty;
}

void *map_delete(void *result, uint64_t a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = result[107];
  v4 = v3[1].i32[0];
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = result;
  v6 = v3[2].i32[0];
  if (v6 < v4)
  {
    v7 = &v3[2 * v6];
    v9 = *(&v7[2] + 4);
    v8 = (&v7[2] + 4);
    if (v9 == a2)
    {
      v10 = *(v8 + 3);
      if (a3 == v10 >> 28)
      {
        goto LABEL_22;
      }
    }
  }

  if (v4 >= 1)
  {
    v11 = 0;
    v12 = v3[1].u32[0];
    while (1)
    {
      v14 = (v12 + v11) >> 1;
      v15 = &v3[2 * v14 + 2] + 4;
      v16 = a3 - (*(v15 + 12) >> 28);
      if (v16)
      {
        v17 = v16;
        v13 = (v12 + v11) >> 1;
        if ((v17 & 0x8000000000000000) == 0)
        {
LABEL_13:
          if (!v17)
          {
            v18 = 0;
            goto LABEL_17;
          }

          v11 = v14 + 1;
          v13 = v12;
        }
      }

      else
      {
        v17 = a2 - *v15;
        v13 = (v12 + v11) >> 1;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }
      }

      v12 = v13;
      if (v11 >= v13)
      {
        v18 = v17 > 0;
        goto LABEL_17;
      }
    }
  }

  v18 = 0;
  v14 = 0;
LABEL_17:
  v19 = v4 - 1 > v14 && v18;
  v6 = v14 + v19;
  v20 = &v3[2 * v6];
  v3[2].i32[0] = v6;
  v21 = *(&v20[2] + 4);
  v8 = (&v20[2] + 4);
  if (v21 == a2)
  {
    v10 = *(v8 + 3);
LABEL_22:
    if (a3 == v10 >> 28)
    {
      result = memmove(&v3[2 * v6 + 2] + 4, &v3[2 * v6 + 4] + 4, 16 * (v4 + ~v6));
      v22 = v3[1];
      v23.i32[0] = vadd_s32(v22, -1).u32[0];
      v23.i32[1] = (*&v22 | 0x100000001uLL) >> 32;
      v3[1] = v23;
      goto LABEL_27;
    }
  }

  v26 = *__error();
  v27 = _SILogForLogForCategory(7);
  v28 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *v8;
    v30 = *(v8 + 3) >> 28;
    v32 = 136316162;
    v33 = v5 + 324;
    v34 = 2048;
    v35 = a2;
    v36 = 2048;
    v37 = v29;
    v38 = 1024;
    v39 = a3;
    v40 = 1024;
    v41 = v30;
    _os_log_impl(&dword_1C278D000, v27, v28, "%s : ERR: map_delete: trying to delete non-existent oid %.16llx (%.16llx), (%d, %d)\n", &v32, 0x2Cu);
  }

  result = __error();
  *result = v26;
LABEL_27:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void rebuild_map_locked(uint64_t a1)
{
  v50 = 0;
  v2 = *(a1 + 856);
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v3 = *(a1 + 36);
  v4 = *(a1 + 40);
  v5 = malloc_type_valloc(*(a1 + 44), 0x1000040A86A77D5uLL);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v8 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, a1, 0x40000000, add_explicit + 1);
  v49 = v8;
  v9 = threadData[9 * v8 + 1] + 320 * HIDWORD(v8);
  v48 = HIDWORD(v8);
  v47 = __PAIR64__(v10, v11);
  *(v9 + 216) = 0;
  v12 = *(v9 + 312);
  v13 = *(v9 + 224);
  if (v13)
  {
    v13(*(v9 + 288));
  }

  v46 = v49;
  v45 = v48;
  v44 = v47;
  if (_setjmp(v9))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v9 + 312) = v12;
    if (__THREAD_SLOT_KEY)
    {
      v14 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v14)
      {
        goto LABEL_51;
      }
    }

    else
    {
      makeThreadId();
      v14 = pthread_getspecific(__THREAD_SLOT_KEY);
      if (!v14)
      {
        goto LABEL_51;
      }
    }

    v15 = v14;
    if (v14 < 0x801)
    {
LABEL_10:
      v16 = &threadData[9 * v15];
      v18 = *(v16 - 4);
      v17 = v16 - 2;
      if (v18 > v44)
      {
        v19 = v15 - 1;
        do
        {
          CIOnThreadCleanUpPop(v19);
        }

        while (*v17 > v44);
      }

      dropThreadId(v46, 1, add_explicit + 1);
      CICleanUpReset(v46, HIDWORD(v44));
      goto LABEL_48;
    }

LABEL_51:
    makeThreadId();
    v15 = pthread_getspecific(__THREAD_SLOT_KEY);
    goto LABEL_10;
  }

  v20 = v4 + v3;
  for (i = v6; ; v20 += i[1])
  {
    while (1)
    {
      v22 = *(a1 + 928);
      v23 = *(v22 + 220);
      if (v23 < 1)
      {
        break;
      }

      v24 = v20 >> *(a1 + 12);
      v25 = (v22 + 252);
      v26 = 1;
      do
      {
        v28 = *v25++;
        v27 = v28;
        if (v26 >= v23)
        {
          break;
        }

        ++v26;
      }

      while (v27 != v24);
      if (v27 != v24)
      {
        break;
      }

LABEL_15:
      v20 += 0x4000;
    }

    v29 = fd_pread(*(a1 + 848), i, *(a1 + 44), v20);
    if (v29 <= 0)
    {
      break;
    }

    if (*i != 846226020 && *i != 1684172850)
    {
      goto LABEL_15;
    }

    if (db2_page_uncompress_swap(a1, i, &v50, 0))
    {
      goto LABEL_38;
    }

    if (v50)
    {
      v31 = v50;
    }

    else
    {
      v31 = i;
    }

    i = v31;
    *buf = 0;
    v43 = 0;
    get_max_oid(a1, v31, buf, &v43);
    if (*buf)
    {
      map_force(a1, v20 >> *(a1 + 12), i[4], *buf, v43);
    }

    if (v50)
    {
      free(v50);
      v50 = 0;
      i = v6;
    }
  }

  if (v29 < 0)
  {
    *(a1 + 4) |= 4u;
  }

LABEL_38:
  v32 = 0;
  v33 = *(a1 + 928);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 0x40000000;
  v39 = __rebuild_map_locked_block_invoke;
  v40 = &__block_descriptor_tmp_155_14757;
  v41 = a1;
  v42 = i;
  for (j = (v33 + 312); v32 < *(v33 + 220); j += 6)
  {
    if (v32 != *(v33 + 224))
    {
      v35 = *(v33 + 4 * v32 + 252);
      if (v35)
      {
        *&buf[16] = 0u;
        v52 = 0u;
        *buf = 0u;
        *buf = v35;
        *&buf[8] = *(j - 5);
        *&buf[24] = *(j - 6);
        *&v52 = *(j - 2);
        DWORD2(v52) = *(j - 2);
        v53 = *j;
        if (v39(v38, buf))
        {
          break;
        }
      }
    }

    ++v32;
  }

  v36 = threadData[9 * v46 + 1] + 320 * v45;
  *(v36 + 312) = v12;
  v37 = *(v36 + 232);
  if (v37)
  {
    v37(*(v36 + 288));
  }

  dropThreadId(v46, 0, add_explicit + 1);
  if (v50)
  {
    free(v50);
  }

LABEL_48:
  free(v6);
}

uint64_t map_force(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  result = map_check_size(a1);
  if (result)
  {
    return result;
  }

  v11 = *(a1 + 856);
  v12 = v11[2];
  if (!v12)
  {
    v13 = 0;
    v11[4] = 0;
LABEL_16:
    v25 = &v11[4 * v13];
    *(v25 + 5) = a4;
    v25[7] = a2;
    v25[8] = a3 & 0xFFFFFFF | (a5 << 28);
    v11[2] = v12 + 1;
    goto LABEL_31;
  }

  v13 = v11[4];
  if (v13 < v12)
  {
    v14 = &v11[4 * v13];
    v16 = *(v14 + 5);
    v15 = v14 + 5;
    if (v16 == a4)
    {
      v17 = v15[3];
      if (a5 == v17 >> 28)
      {
        goto LABEL_23;
      }
    }
  }

  if (v12 < 1)
  {
    v26 = 0;
    v20 = 0;
    goto LABEL_20;
  }

  v18 = 0;
  v19 = v11[2];
  while (1)
  {
    v20 = (v19 + v18) >> 1;
    v21 = &v11[4 * v20 + 5];
    v22 = a5 - (*(v21 + 12) >> 28);
    if (!v22)
    {
      break;
    }

    v23 = v22;
    v24 = (v19 + v18) >> 1;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    v19 = v24;
    if (v18 >= v24)
    {
      v26 = v23 > 0;
      goto LABEL_20;
    }
  }

  v23 = a4 - *v21;
  v24 = (v19 + v18) >> 1;
  if (v23 < 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (v23)
  {
    v18 = v20 + 1;
    v24 = v19;
    goto LABEL_8;
  }

  v26 = 0;
LABEL_20:
  if (v12 - 1 <= v20)
  {
    v26 = 0;
  }

  v13 = v20 + v26;
  v27 = &v11[4 * v20 + 4 * v26];
  v11[4] = v13;
  v15 = v27 + 5;
  v17 = v27[8];
LABEL_23:
  LODWORD(v28) = a5 - (v17 >> 28);
  if (v28)
  {
    v28 = v28;
    if (v12 < 1)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v28 = a4 - *v15;
  if (v12 >= 1)
  {
LABEL_27:
    if (v28)
    {
      goto LABEL_29;
    }

    return 0;
  }

LABEL_29:
  if (v15[2] != a2)
  {
    if (v12 - 1 == v13 && v28 >= 1)
    {
      v11[4] = ++v13;
    }

    else
    {
      memmove(&v11[4 * v13 + 9], &v11[4 * v13 + 5], 16 * (v12 - v13));
      v12 = v11[2];
    }

    goto LABEL_16;
  }

  v11[4 * v13 + 8] = v11[4 * v13 + 8] & 0xFFFFFFF | (a5 << 28);
  *v15 = a4;
LABEL_31:
  result = 0;
  v11[3] |= 1u;
  return result;
}

uint64_t get_max_oid(uint64_t result, uint64_t a2, unint64_t *a3, int *a4)
{
  if (*a2 != 1684172850 || (*(a2 + 12) & 0xF0) != 0 || (v4 = *(a2 + 8), v4 < 21))
  {
    v7 = 0;
  }

  else
  {
    v5 = a2 + v4;
    v6 = a2 + 20;
    do
    {
      v12 = v6 + 4;
      v13 = *(v6 + 4);
      if (*(v6 + 4) < 0)
      {
        v15 = *(v6 + 4);
        if (v15 > 0xBF)
        {
          if (v15 > 0xDF)
          {
            if (v15 > 0xEF)
            {
              if (v15 > 0xF7)
              {
                if (v15 > 0xFB)
                {
                  if (v15 > 0xFD)
                  {
                    if (v15 == 255)
                    {
                      v13 = *(v6 + 5);
                      v14 = 9;
                    }

                    else
                    {
                      v13 = (*(v6 + 5) << 48) | (*(v6 + 6) << 40) | (*(v6 + 7) << 32) | (*(v6 + 8) << 24) | (*(v6 + 9) << 16) | (*(v6 + 10) << 8) | *(v6 + 11);
                      v14 = 8;
                    }
                  }

                  else
                  {
                    v13 = ((v13 & 1) << 48) | (*(v6 + 5) << 40) | (*(v6 + 6) << 32) | (*(v6 + 7) << 24) | (*(v6 + 8) << 16) | (*(v6 + 9) << 8) | *(v6 + 10);
                    v14 = 7;
                  }
                }

                else
                {
                  v13 = ((v13 & 3) << 40) | (*(v6 + 5) << 32) | (*(v6 + 6) << 24) | (*(v6 + 7) << 16) | (*(v6 + 8) << 8) | *(v6 + 9);
                  v14 = 6;
                }
              }

              else
              {
                v13 = ((v13 & 7) << 32) | (*(v6 + 5) << 24) | (*(v6 + 6) << 16) | (*(v6 + 7) << 8) | *(v6 + 8);
                v14 = 5;
              }
            }

            else
            {
              v13 = ((v13 & 0xF) << 24) | (*(v6 + 5) << 16) | (*(v6 + 6) << 8) | *(v6 + 7);
              v14 = 4;
            }
          }

          else
          {
            v13 = ((v13 & 0x1F) << 16) | (*(v6 + 5) << 8) | *(v6 + 6);
            v14 = 3;
          }
        }

        else
        {
          v14 = 2;
          v13 = *(v6 + 5) | ((v13 & 0x3F) << 8);
        }
      }

      else
      {
        v14 = 1;
      }

      *a3 = v13;
      v16 = v12 + v14;
      v17 = *(v12 + v14);
      v9 = v17;
      if (v17 < 0)
      {
        if (v17 < 0xC0u)
        {
          v8 = 1;
        }

        else
        {
          if (v17 >= 0xE0u)
          {
            v18 = __si_assert_copy_extra_3233(0, -1);
            v19 = v18;
            v20 = "";
            if (v18)
            {
              v20 = v18;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v20);
            free(v19);
            if (__valid_fs(-1))
            {
              v21 = 2989;
            }

            else
            {
              v21 = 3072;
            }

            *v21 = -559038737;
            abort();
          }

          v8 = 2;
        }

        v9 = *(v16 + v8);
      }

      v10 = (*v6 + 4);
      v6 += v10;
      if (v10)
      {
        v11 = v6 >= v5;
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
    v7 = (v9 >> 5) & 1;
  }

  *a4 = *(result + 804) & v7;
  return result;
}

uint64_t __rebuild_map_locked_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 0;
  get_max_oid(*(a1 + 32), *(a2 + 8), &v6, &v5);
  if (v6)
  {
    map_force(*(a1 + 32), *a2, *(*(a1 + 40) + 16), v6, v5);
  }

  return 0;
}

uint64_t map_insert(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  v41 = *MEMORY[0x1E69E9840];
  result = map_check_size(a1);
  if (result)
  {
    goto LABEL_33;
  }

  v11 = *(a1 + 856);
  v12 = v11[4];
  v13 = v11[2];
  if (v12 < v13)
  {
    v14 = &v11[4 * v12];
    v16 = *(v14 + 5);
    v15 = v14 + 5;
    if (v16 == a4)
    {
      v17 = v15[3];
      if (a5 == v17 >> 28)
      {
        goto LABEL_20;
      }
    }
  }

  if (v13 < 1)
  {
    v25 = 0;
    v20 = 0;
    goto LABEL_17;
  }

  v18 = 0;
  v19 = v11[2];
  while (1)
  {
    v20 = (v19 + v18) >> 1;
    v21 = &v11[4 * v20 + 5];
    v22 = a5 - (*(v21 + 12) >> 28);
    if (!v22)
    {
      break;
    }

    v23 = v22;
    v24 = (v19 + v18) >> 1;
    if ((v23 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_7:
    v19 = v24;
    if (v18 >= v24)
    {
      v25 = v23 > 0;
      goto LABEL_17;
    }
  }

  v23 = a4 - *v21;
  v24 = (v19 + v18) >> 1;
  if (v23 < 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  if (v23)
  {
    v18 = v20 + 1;
    v24 = v19;
    goto LABEL_7;
  }

  v25 = 0;
LABEL_17:
  if (v13 - 1 <= v20)
  {
    v25 = 0;
  }

  v12 = v20 + v25;
  v26 = &v11[4 * v20 + 4 * v25];
  v11[4] = v12;
  v15 = v26 + 5;
  v17 = v26[8];
LABEL_20:
  v27 = a5 - (v17 >> 28);
  if (v27)
  {
    v28 = v27;
    if (v13 >= 1)
    {
      goto LABEL_24;
    }

LABEL_28:
    v32 = v12;
    if (v13 - 1 == v12 && v28 >= 1)
    {
      v11[4] = v12 + 1;
      v32 = v12 + 1;
    }

    else
    {
      memmove(&v11[4 * v12 + 9], &v11[4 * v12 + 5], 16 * (v13 - v12));
      v13 = v11[2];
    }

    result = 0;
    v33 = &v11[4 * v32];
    *(v33 + 5) = a4;
    v33[7] = a2;
    v33[8] = a3 & 0xFFFFFFF | (a5 << 28);
    LODWORD(v33) = v11[3] | 1;
    v11[2] = v13 + 1;
    v11[3] = v33;
    goto LABEL_33;
  }

  v28 = a4 - *v15;
  if (v13 < 1)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v28)
  {
    goto LABEL_28;
  }

  v29 = *__error();
  v30 = _SILogForLogForCategory(7);
  v31 = 2 * (dword_1EBF46AE8 < 4);
  if (os_log_type_enabled(v30, v31))
  {
    v35 = 136315650;
    v36 = a1 + 324;
    v37 = 1024;
    v38 = v12;
    v39 = 2048;
    v40 = a4;
    _os_log_impl(&dword_1C278D000, v30, v31, "%s : ERR: map_insert: key already present! idx %d %.16llx\n", &v35, 0x1Cu);
  }

  *__error() = v29;
  result = 22;
LABEL_33:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t page_split(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4, __int16 a5)
{
  v7 = a3;
  v9 = a1;
  v128 = *MEMORY[0x1E69E9840];
  v115 = a4;
  v116 = a3;
  v113 = 0;
  __src = 0;
  value_out = 0;
  result = _page_fetch_with_fd(a1, &value_out, a3, a4, 0, buf, 0xFFFFFFFFLL, 0);
  if (result)
  {
    goto LABEL_2;
  }

  v12 = value_out;
  if ((*(value_out + 12) & 0xF0) != 0)
  {
    v102 = *__error();
    v103 = _SILogForLogForCategory(7);
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "page_split";
      v118 = 1024;
      *v119 = 4545;
      *&v119[4] = 1024;
      *&v119[6] = v7;
      _os_log_error_impl(&dword_1C278D000, v103, OS_LOG_TYPE_ERROR, "%s:%d: page_split: ERR: tried to read attr name table data! pgnum 0x%x\n", buf, 0x18u);
    }

    *__error() = v102;
    v104 = __si_assert_copy_extra_3233(0, -1);
    v105 = v104;
    if (v104)
    {
      v106 = v104;
    }

    else
    {
      v106 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "sdb2.c", 4546, v106);
    free(v105);
    goto LABEL_204;
  }

  v13 = *(value_out + 2);
  v14 = value_out + v13;
  v113 = value_out + v13;
  v16 = (a2 + 4);
  v15 = *(a2 + 4);
  if ((v15 & 0x80) != 0)
  {
    if (v15 > 0xBF)
    {
      if (v15 > 0xDF)
      {
        if (v15 > 0xEF)
        {
          if (v15 > 0xF7)
          {
            if (v15 > 0xFB)
            {
              if (v15 > 0xFD)
              {
                if (v15 == 255)
                {
                  v15 = *(a2 + 5);
                  v17 = 9;
                }

                else
                {
                  v15 = (*(a2 + 5) << 48) | (*(a2 + 6) << 40) | (*(a2 + 7) << 32) | (*(a2 + 8) << 24) | (*(a2 + 9) << 16) | (*(a2 + 10) << 8) | *(a2 + 11);
                  v17 = 8;
                }
              }

              else
              {
                v15 = ((v15 & 1) << 48) | (*(a2 + 5) << 40) | (*(a2 + 6) << 32) | (*(a2 + 7) << 24) | (*(a2 + 8) << 16) | (*(a2 + 9) << 8) | *(a2 + 10);
                v17 = 7;
              }
            }

            else
            {
              v15 = ((v15 & 3) << 40) | (*(a2 + 5) << 32) | (*(a2 + 6) << 24) | (*(a2 + 7) << 16) | (*(a2 + 8) << 8) | *(a2 + 9);
              v17 = 6;
            }
          }

          else
          {
            v15 = ((v15 & 7) << 32) | (*(a2 + 5) << 24) | (*(a2 + 6) << 16) | (*(a2 + 7) << 8) | *(a2 + 8);
            v17 = 5;
          }
        }

        else
        {
          v15 = ((v15 & 0xF) << 24) | (*(a2 + 5) << 16) | (*(a2 + 6) << 8) | *(a2 + 7);
          v17 = 4;
        }
      }

      else
      {
        v15 = ((v15 & 0x1F) << 16) | (*(a2 + 5) << 8) | *(a2 + 6);
        v17 = 3;
      }
    }

    else
    {
      v17 = 2;
      v15 = *(a2 + 5) | ((v15 & 0x3F) << 8);
    }
  }

  else
  {
    v17 = 1;
  }

  v18 = &v16[v17];
  v19 = *v18;
  if (*v18 < 0)
  {
    if (v19 >= 0xC0)
    {
      if (v19 >= 0xE0)
      {
        goto LABEL_220;
      }

      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v19 = v18[v20];
  }

  v21 = value_out + 20;
  v111 = a5;
  if (v13 < 21)
  {
    v25 = 0;
    v26 = 0;
    v27 = value_out + v13;
    v28 = value_out;
  }

  else
  {
    v22 = *(v9 + 804);
    v23 = *(value_out + 24);
    if (*(value_out + 24) < 0)
    {
      v29 = *(value_out + 24);
      if (v29 > 0xBF)
      {
        if (v29 > 0xDF)
        {
          if (v29 > 0xEF)
          {
            if (v29 > 0xF7)
            {
              if (v29 > 0xFB)
              {
                if (v29 > 0xFD)
                {
                  if (v29 == 255)
                  {
                    v23 = *(value_out + 25);
                    v24 = 9;
                  }

                  else
                  {
                    v23 = (*(value_out + 25) << 48) | (*(value_out + 26) << 40) | (*(value_out + 27) << 32) | (*(value_out + 28) << 24) | (*(value_out + 29) << 16) | (*(value_out + 30) << 8) | *(value_out + 31);
                    v24 = 8;
                  }
                }

                else
                {
                  v23 = ((v23 & 1) << 48) | (*(value_out + 25) << 40) | (*(value_out + 26) << 32) | (*(value_out + 27) << 24) | (*(value_out + 28) << 16) | (*(value_out + 29) << 8) | *(value_out + 30);
                  v24 = 7;
                }
              }

              else
              {
                v23 = ((v23 & 3) << 40) | (*(value_out + 25) << 32) | (*(value_out + 26) << 24) | (*(value_out + 27) << 16) | (*(value_out + 28) << 8) | *(value_out + 29);
                v24 = 6;
              }
            }

            else
            {
              v23 = ((v23 & 7) << 32) | (*(value_out + 25) << 24) | (*(value_out + 26) << 16) | (*(value_out + 27) << 8) | *(value_out + 28);
              v24 = 5;
            }
          }

          else
          {
            v23 = ((v23 & 0xF) << 24) | (*(value_out + 25) << 16) | (*(value_out + 26) << 8) | *(value_out + 27);
            v24 = 4;
          }
        }

        else
        {
          v23 = ((v23 & 0x1F) << 16) | (*(value_out + 25) << 8) | *(value_out + 26);
          v24 = 3;
        }
      }

      else
      {
        v24 = 2;
        v23 = *(value_out + 25) | ((v23 & 0x3F) << 8);
      }
    }

    else
    {
      v24 = 1;
    }

    v30 = value_out + v24 + 24;
    v31 = *v30;
    if (*v30 < 0)
    {
      if (v31 >= 0xC0)
      {
        if (v31 >= 0xE0)
        {
          goto LABEL_220;
        }

        v32 = 2;
      }

      else
      {
        v32 = 1;
      }

      v31 = v30[v32];
    }

    v109 = v7;
    v25 = 0;
    v26 = 0;
    v33 = v22 & (v19 >> 5) & 1;
    v34 = v22 & (v31 >> 5) & 1;
    v35 = value_out + 20;
    while (v34 < v33 || v34 == v33 && v23 < v15)
    {
      v35 += (*v35 + 4);
      if (v35 >= v14)
      {
        break;
      }

      v25 = v35[4];
      if (v35[4] < 0)
      {
        v39 = v35[4];
        if (v39 > 0xBF)
        {
          if (v39 > 0xDF)
          {
            if (v39 > 0xEF)
            {
              if (v39 > 0xF7)
              {
                if (v39 > 0xFB)
                {
                  if (v39 > 0xFD)
                  {
                    if (v39 == 255)
                    {
                      v25 = *(v35 + 5);
                      v38 = 9;
                    }

                    else
                    {
                      v25 = (v35[5] << 48) | (v35[6] << 40) | (v35[7] << 32) | (v35[8] << 24) | (v35[9] << 16) | (v35[10] << 8) | v35[11];
                      v38 = 8;
                    }
                  }

                  else
                  {
                    v25 = ((v25 & 1) << 48) | (v35[5] << 40) | (v35[6] << 32) | (v35[7] << 24) | (v35[8] << 16) | (v35[9] << 8) | v35[10];
                    v38 = 7;
                  }
                }

                else
                {
                  v25 = ((v25 & 3) << 40) | (v35[5] << 32) | (v35[6] << 24) | (v35[7] << 16) | (v35[8] << 8) | v35[9];
                  v38 = 6;
                }
              }

              else
              {
                v25 = ((v25 & 7) << 32) | (v35[5] << 24) | (v35[6] << 16) | (v35[7] << 8) | v35[8];
                v38 = 5;
              }
            }

            else
            {
              v25 = ((v25 & 0xF) << 24) | (v35[5] << 16) | (v35[6] << 8) | v35[7];
              v38 = 4;
            }
          }

          else
          {
            v25 = ((v25 & 0x1F) << 16) | (v35[5] << 8) | v35[6];
            v38 = 3;
          }
        }

        else
        {
          v38 = 2;
          v25 = v35[5] | ((v25 & 0x3F) << 8);
        }
      }

      else
      {
        v38 = 1;
      }

      v40 = &v35[v38 + 4];
      v37 = *v40;
      if (*v40 < 0)
      {
        if (v37 < 0xC0)
        {
          v36 = 1;
        }

        else
        {
          if (v37 >= 0xE0)
          {
            goto LABEL_201;
          }

          v36 = 2;
        }

        v37 = v40[v36];
      }

      v26 = v22 & (v37 >> 5) & 1;
      v23 = v25;
      v34 = v26;
    }

    if (v35 <= v14)
    {
      v27 = value_out + v13;
      v28 = value_out;
      v21 = v35;
      v7 = v109;
    }

    else
    {
      v107 = v9;
      v108 = v13;
      v41 = a2;
      v42 = (a2 + 4);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 134218496;
        *&buf[4] = v35;
        v118 = 2048;
        *v119 = v14;
        *&v119[8] = 2048;
        *&v119[10] = v12 + 5;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "dbo %p beyond end of page at %p. Resetting to last at %p", buf, 0x20u);
        v28 = value_out;
        v27 = v113;
      }

      else
      {
        v27 = v14;
        v28 = v12;
      }

      v7 = v109;
      v16 = v42;
      a2 = v41;
      v9 = v107;
      LODWORD(v13) = v108;
    }
  }

  v43 = v21 - v12;
  if (v21 >= v14)
  {
    v43 = v13;
  }

  v44 = v43;
  v45 = v27 - v28;
  if (*(*(v9 + 856) + 16) != *(*(v9 + 856) + 8) - 1 || v45 > v43)
  {
    v47 = v28 + v43;
    __src = v28 + v44;
    if (v45 <= v44)
    {
      v51 = 0;
      v52 = 1;
      goto LABEL_132;
    }

    v48 = v47[4];
    if (v47[4] < 0)
    {
      v49 = v47[4];
      if (v49 <= 0xBF)
      {
        v48 = v47[5] | ((v48 & 0x3F) << 8);
        goto LABEL_114;
      }

      if (v49 > 0xDF)
      {
        if (v49 > 0xEF)
        {
          if (v49 > 0xF7)
          {
            if (v49 > 0xFB)
            {
              if (v49 > 0xFD)
              {
                if (v49 == 255)
                {
                  v48 = *(v47 + 5);
                  goto LABEL_114;
                }

                v53 = (v47[5] << 48) | (v47[6] << 40) | (v47[7] << 32) | (v47[8] << 24) | (v47[9] << 16) | (v47[10] << 8);
                v54 = v47[11];
              }

              else
              {
                v53 = ((v48 & 1) << 48) | (v47[5] << 40) | (v47[6] << 32) | (v47[7] << 24) | (v47[8] << 16) | (v47[9] << 8);
                v54 = v47[10];
              }
            }

            else
            {
              v53 = ((v48 & 3) << 40) | (v47[5] << 32) | (v47[6] << 24) | (v47[7] << 16) | (v47[8] << 8);
              v54 = v47[9];
            }
          }

          else
          {
            v53 = ((v48 & 7) << 32) | (v47[5] << 24) | (v47[6] << 16) | (v47[7] << 8);
            v54 = v47[8];
          }
        }

        else
        {
          v53 = ((v48 & 0xF) << 24) | (v47[5] << 16) | (v47[6] << 8);
          v54 = v47[7];
        }
      }

      else
      {
        v53 = ((v48 & 0x1F) << 16) | (v47[5] << 8);
        v54 = v47[6];
      }

      v48 = v53 | v54;
    }

LABEL_114:
    v55 = *v16;
    if (*v16 < 0)
    {
      v56 = *v16;
      if (v56 > 0xBF)
      {
        if (v56 > 0xDF)
        {
          if (v56 > 0xEF)
          {
            if (v56 > 0xF7)
            {
              if (v56 > 0xFB)
              {
                if (v56 > 0xFD)
                {
                  if (v56 == 255)
                  {
                    v55 = *(a2 + 5);
                    goto LABEL_131;
                  }

                  v57 = (*(a2 + 5) << 48) | (*(a2 + 6) << 40) | (*(a2 + 7) << 32) | (*(a2 + 8) << 24) | (*(a2 + 9) << 16) | (*(a2 + 10) << 8);
                  v58 = *(a2 + 11);
                }

                else
                {
                  v57 = ((v55 & 1) << 48) | (*(a2 + 5) << 40) | (*(a2 + 6) << 32) | (*(a2 + 7) << 24) | (*(a2 + 8) << 16) | (*(a2 + 9) << 8);
                  v58 = *(a2 + 10);
                }
              }

              else
              {
                v57 = ((v55 & 3) << 40) | (*(a2 + 5) << 32) | (*(a2 + 6) << 24) | (*(a2 + 7) << 16) | (*(a2 + 8) << 8);
                v58 = *(a2 + 9);
              }
            }

            else
            {
              v57 = ((v55 & 7) << 32) | (*(a2 + 5) << 24) | (*(a2 + 6) << 16) | (*(a2 + 7) << 8);
              v58 = *(a2 + 8);
            }
          }

          else
          {
            v57 = ((v55 & 0xF) << 24) | (*(a2 + 5) << 16) | (*(a2 + 6) << 8);
            v58 = *(a2 + 7);
          }
        }

        else
        {
          v57 = ((v55 & 0x1F) << 16) | (*(a2 + 5) << 8);
          v58 = *(a2 + 6);
        }

        v55 = v57 | v58;
        goto LABEL_131;
      }

      v55 = *(a2 + 5) | ((v55 & 0x3F) << 8);
    }

LABEL_131:
    v51 = v48 == v55;
    v52 = v48 != v55;
LABEL_132:
    v110 = v52;
    v59 = v16;
    if (a4 - 20 <= (*a2 + 4))
    {
      v60 = a2;
    }

    else
    {
      result = try_push_insert_obj(v9, v28, v7, a2, v44, v111 & 0x4000);
      if (!result)
      {
        goto LABEL_2;
      }

      v60 = a2;
      v28 = value_out;
    }

    v61 = *(v9 + 928);
    pthread_rwlock_wrlock((v61 + 8));
    v62 = *(v61 + 220);
    if (v62 >= 1)
    {
      v63 = v61 + 272;
      while (*v63 != v28)
      {
        v63 += 48;
        if (!--v62)
        {
          goto LABEL_142;
        }
      }

      *(v63 + 24) = 0;
      *(v63 + 32) = 0;
      *(v63 + 40) = 0;
    }

LABEL_142:
    pthread_rwlock_unlock((v61 + 8));
    v67 = *v60 + 4;
    if (v51)
    {
      v68 = __src;
      v69 = *__src + 4;
      if (v67 <= v69)
      {
        goto LABEL_147;
      }

      v70 = *v60 - *__src;
      v71 = *(value_out + 2);
      if (v70 <= *(value_out + 1) - v71)
      {
        goto LABEL_147;
      }

      v72 = page_resize(v9, &value_out, 1, v70 + v71, &__src, v64, v65, v66, &v113);
      if (!v72)
      {
        v68 = __src;
        v67 = *v60 + 4;
        v69 = *__src + 4;
LABEL_147:
        memmove(&v68[v67], &v68[v69], v113 - &v68[v69]);
        v73 = __src;
        *(value_out + 2) += *v60 - *__src;
LABEL_153:
        memcpy(v73, v60, (*v60 + 4));
        v80 = __src < v113 || v51;
        v81 = *(v60 + 4);
        if (v80)
        {
          if ((v81 & 0x80) != 0)
          {
            if (v81 > 0xBF)
            {
              if (v81 > 0xDF)
              {
                if (v81 > 0xEF)
                {
                  if (v81 > 0xF7)
                  {
                    if (v81 > 0xFB)
                    {
                      if (v81 > 0xFD)
                      {
                        if (v81 == 255)
                        {
                          v81 = *(v60 + 5);
                          v82 = 9;
                        }

                        else
                        {
                          v81 = (*(v60 + 5) << 48) | (*(v60 + 6) << 40) | (*(v60 + 7) << 32) | (*(v60 + 8) << 24) | (*(v60 + 9) << 16) | (*(v60 + 10) << 8) | *(v60 + 11);
                          v82 = 8;
                        }
                      }

                      else
                      {
                        v81 = ((v81 & 1) << 48) | (*(v60 + 5) << 40) | (*(v60 + 6) << 32) | (*(v60 + 7) << 24) | (*(v60 + 8) << 16) | (*(v60 + 9) << 8) | *(v60 + 10);
                        v82 = 7;
                      }
                    }

                    else
                    {
                      v81 = ((v81 & 3) << 40) | (*(v60 + 5) << 32) | (*(v60 + 6) << 24) | (*(v60 + 7) << 16) | (*(v60 + 8) << 8) | *(v60 + 9);
                      v82 = 6;
                    }
                  }

                  else
                  {
                    v81 = ((v81 & 7) << 32) | (*(v60 + 5) << 24) | (*(v60 + 6) << 16) | (*(v60 + 7) << 8) | *(v60 + 8);
                    v82 = 5;
                  }
                }

                else
                {
                  v81 = ((v81 & 0xF) << 24) | (*(v60 + 5) << 16) | (*(v60 + 6) << 8) | *(v60 + 7);
                  v82 = 4;
                }
              }

              else
              {
                v81 = ((v81 & 0x1F) << 16) | (*(v60 + 5) << 8) | *(v60 + 6);
                v82 = 3;
              }
            }

            else
            {
              v82 = 2;
              v81 = *(v60 + 5) | ((v81 & 0x3F) << 8);
            }
          }

          else
          {
            v82 = 1;
          }

          if (v59[v82] < 0xE0u)
          {
            if (dword_1EBF46AE8 >= 5)
            {
              v98 = v7;
              v99 = *__error();
              v100 = _SILogForLogForCategory(7);
              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
              {
                v101 = __src + *__src;
                *buf = 136316930;
                *&buf[4] = v9 + 324;
                v118 = 1024;
                *v119 = v98;
                *&v119[4] = 2048;
                *&v119[6] = v25;
                *&v119[14] = 2048;
                *&v119[16] = v81;
                v120 = 2048;
                v121 = __src;
                v122 = 2048;
                v123 = v113;
                v124 = 2048;
                v125 = v101;
                v126 = 2048;
                v127 = value_out;
                _os_log_impl(&dword_1C278D000, v100, OS_LOG_TYPE_DEFAULT, "%s : no map update for split at pgnum %d oid (%.16llx) to(%.16llx) dbo:%p end:%p next:%p dbp:%p\n", buf, 0x4Eu);
              }

              *__error() = v99;
              v7 = v98;
            }

            goto LABEL_192;
          }

LABEL_201:
          v86 = __si_assert_copy_extra_3233(0, -1);
          v87 = v86;
          v88 = "";
          if (v86)
          {
            v88 = v86;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v88);
          free(v87);
          if (!__valid_fs(-1))
          {
            v89 = 3072;
LABEL_206:
            *v89 = -559038737;
            abort();
          }

LABEL_204:
          v89 = 2989;
          goto LABEL_206;
        }

        if ((v81 & 0x80) != 0)
        {
          if (v81 > 0xBF)
          {
            if (v81 > 0xDF)
            {
              if (v81 > 0xEF)
              {
                if (v81 > 0xF7)
                {
                  if (v81 > 0xFB)
                  {
                    if (v81 > 0xFD)
                    {
                      if (v81 == 255)
                      {
                        v81 = *(v60 + 5);
                        v83 = 9;
                      }

                      else
                      {
                        v81 = (*(v60 + 5) << 48) | (*(v60 + 6) << 40) | (*(v60 + 7) << 32) | (*(v60 + 8) << 24) | (*(v60 + 9) << 16) | (*(v60 + 10) << 8) | *(v60 + 11);
                        v83 = 8;
                      }
                    }

                    else
                    {
                      v81 = ((v81 & 1) << 48) | (*(v60 + 5) << 40) | (*(v60 + 6) << 32) | (*(v60 + 7) << 24) | (*(v60 + 8) << 16) | (*(v60 + 9) << 8) | *(v60 + 10);
                      v83 = 7;
                    }
                  }

                  else
                  {
                    v81 = ((v81 & 3) << 40) | (*(v60 + 5) << 32) | (*(v60 + 6) << 24) | (*(v60 + 7) << 16) | (*(v60 + 8) << 8) | *(v60 + 9);
                    v83 = 6;
                  }
                }

                else
                {
                  v81 = ((v81 & 7) << 32) | (*(v60 + 5) << 24) | (*(v60 + 6) << 16) | (*(v60 + 7) << 8) | *(v60 + 8);
                  v83 = 5;
                }
              }

              else
              {
                v81 = ((v81 & 0xF) << 24) | (*(v60 + 5) << 16) | (*(v60 + 6) << 8) | *(v60 + 7);
                v83 = 4;
              }
            }

            else
            {
              v81 = ((v81 & 0x1F) << 16) | (*(v60 + 5) << 8) | *(v60 + 6);
              v83 = 3;
            }
          }

          else
          {
            v83 = 2;
            v81 = *(v60 + 5) | ((v81 & 0x3F) << 8);
          }
        }

        else
        {
          v83 = 1;
        }

        v90 = &v59[v83];
        v91 = *v90;
        if ((*v90 & 0x80000000) == 0)
        {
          goto LABEL_214;
        }

        if (v91 < 0xC0)
        {
          v92 = 1;
LABEL_213:
          v91 = v90[v92];
LABEL_214:
          v93 = *(v9 + 804) & (v91 >> 5);
          if (v25)
          {
            v94 = map_update(v9, v7, a4, v25, v81, v26, v93 & 1, 1);
            if (!v94)
            {
LABEL_192:
              if ((*(v9 + 804) & 2) != 0)
              {
                v84 = 114688;
              }

              else
              {
                v84 = 196608;
              }

              if (*(value_out + 2) <= v84)
              {
                v85 = 1;
              }

              else
              {
                v85 = 3;
              }

              page_release(v9, value_out, v7, v111 & 0x4000 | v85, 0);
              result = 0;
              if (v110)
              {
                ++*(v9 + 20);
              }

              goto LABEL_2;
            }
          }

          else
          {
            v94 = map_force(v9, v7, a4, v81, v93 & 1);
            if (!v94)
            {
              goto LABEL_192;
            }
          }

          v75 = value_out;
          v79 = v111 & 0x4000;
          v76 = v94;
          v77 = v9;
          v78 = v7;
LABEL_219:
          page_release(v77, v75, v78, v79, 0);
          result = v76;
          goto LABEL_2;
        }

        if (v91 < 0xE0)
        {
          v92 = 2;
          goto LABEL_213;
        }

LABEL_220:
        v95 = __si_assert_copy_extra_3233(0, -1);
        v96 = v95;
        v97 = "";
        if (v95)
        {
          v97 = v95;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v97);
        free(v96);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

LABEL_150:
      v75 = value_out;
      v76 = v72;
      v77 = v9;
      v78 = v7;
      v79 = 0;
      goto LABEL_219;
    }

    v74 = *(value_out + 2);
    if (v67 > *(value_out + 1) - v74)
    {
      v72 = page_resize(v9, &value_out, 1, v74 + v67, &__src, v64, v65, v66, &v113);
      if (v72)
      {
        goto LABEL_150;
      }

      v67 = *v60 + 4;
    }

    memmove(__src + v67, __src, v113 - __src);
    *(value_out + 2) += *v60 + 4;
    v73 = __src;
    goto LABEL_153;
  }

  v50 = 4 * ((v28[3] & 0xC) != 0);
  page_release(v9, v28, v7, 0, 0);
  *buf = 0;
  result = _page_alloc_fetch(v9, buf, 0, &v116, &v115, v50);
  if (!result)
  {
    free(*buf);
    result = _real_page_insert_obj(v9, a2, v111 & 0x4000, v116, v115);
  }

LABEL_2:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t try_push_insert_obj(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned __int8 *a4, int a5, __int16 a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 856);
  v9 = v8[4];
  v10 = v8[2];
  if (v10 <= v9 || v9 <= -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8[4];
  }

  if (v12 >= v10)
  {
LABEL_11:
    if (!v12)
    {
LABEL_15:
      v18 = *__error();
      v19 = _SILogForLogForCategory(7);
      v20 = 2 * (dword_1EBF46AE8 < 4);
      if (os_log_type_enabled(v19, v20))
      {
        v34 = 136315394;
        v35 = a1 + 324;
        v36 = 1024;
        v37 = a3;
        _os_log_impl(&dword_1C278D000, v19, v20, "%s : ERR: try_push_insert_obj: BAD NEWS! pgnum 0x%x not found\n", &v34, 0x12u);
      }

      *__error() = v18;
      result = 22;
      goto LABEL_18;
    }

    v14 = 0;
    v16 = v8 + 7;
    while (1)
    {
      v17 = *v16;
      v16 += 4;
      if (v17 == a3)
      {
        break;
      }

      if (v12 == ++v14)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v13 = &v8[4 * v12 + 7];
    v14 = v12;
    while (1)
    {
      v15 = *v13;
      v13 += 4;
      if (v15 == a3)
      {
        break;
      }

      if (v10 == ++v14)
      {
        goto LABEL_11;
      }
    }
  }

  v8[4] = v14;
  if (v14 + 1 < v10)
  {
    v23 = &v8[4 * v14 + 4];
    v24 = v23[7];
    v25 = v23[8] & 0xFFFFFFF;
    if (v14 < 1)
    {
      goto LABEL_21;
    }

LABEL_24:
    v32 = &v8[4 * v14];
    v27 = v32[3];
    v26 = v32[4] & 0xFFFFFFF;
    if (!v24)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v25 = 0;
  v24 = 0;
  if (v14 >= 1)
  {
    goto LABEL_24;
  }

LABEL_21:
  v26 = 0;
  v27 = 0;
  if (!v24)
  {
LABEL_22:
    v28 = a2;
    v29 = a6;
    v30 = a4;
    v31 = a5;
    result = 28;
    goto LABEL_26;
  }

LABEL_25:
  v29 = a6;
  v28 = a2;
  v30 = a4;
  v31 = a5;
  result = try_push_right(a1, a2, a3, a4, a5, v24, v25, a6 & 0x4000);
  if (!result)
  {
LABEL_18:
    v22 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_26:
  if (!v27)
  {
    goto LABEL_18;
  }

  v33 = *MEMORY[0x1E69E9840];

  return try_push_left(a1, v28, a3, v30, v31, v27, v26, v29 & 0x4000);
}

uint64_t try_push_right(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned __int8 *a4, int a5, uint64_t a6, signed int a7, unsigned int a8)
{
  v10 = a6;
  v85 = *MEMORY[0x1E69E9840];
  v78 = 0;
  value_out = 0;
  result = _page_fetch_with_fd(a1, &value_out, a6, a7, 1, buf, 0xFFFFFFFFLL, 0);
  if (result)
  {
    goto LABEL_86;
  }

  v77 = a8;
  if ((*(value_out + 12) & 0xF0) != 0)
  {
    goto LABEL_83;
  }

  v17 = *(value_out + 1);
  v18 = *(value_out + 2);
  v19 = v17 - v18;
  if (a7 < 4 * (v17 - v18))
  {
    goto LABEL_83;
  }

  v20 = a2[2];
  if (v20 <= a5)
  {
    goto LABEL_83;
  }

  v21 = a2 + a5;
  v22 = v21[4];
  if (v21[4] < 0)
  {
    v23 = v21[4];
    if (v23 <= 0xBF)
    {
      v22 = v21[5] | ((v22 & 0x3F) << 8);
      goto LABEL_22;
    }

    if (v23 > 0xDF)
    {
      if (v23 > 0xEF)
      {
        if (v23 > 0xF7)
        {
          if (v23 > 0xFB)
          {
            if (v23 > 0xFD)
            {
              if (v23 == 255)
              {
                v22 = *(v21 + 5);
                goto LABEL_22;
              }

              v24 = (v21[5] << 48) | (v21[6] << 40) | (v21[7] << 32) | (v21[8] << 24) | (v21[9] << 16) | (v21[10] << 8);
              v25 = v21[11];
            }

            else
            {
              v24 = ((v22 & 1) << 48) | (v21[5] << 40) | (v21[6] << 32) | (v21[7] << 24) | (v21[8] << 16) | (v21[9] << 8);
              v25 = v21[10];
            }
          }

          else
          {
            v24 = ((v22 & 3) << 40) | (v21[5] << 32) | (v21[6] << 24) | (v21[7] << 16) | (v21[8] << 8);
            v25 = v21[9];
          }
        }

        else
        {
          v24 = ((v22 & 7) << 32) | (v21[5] << 24) | (v21[6] << 16) | (v21[7] << 8);
          v25 = v21[8];
        }
      }

      else
      {
        v24 = ((v22 & 0xF) << 24) | (v21[5] << 16) | (v21[6] << 8);
        v25 = v21[7];
      }
    }

    else
    {
      v24 = ((v22 & 0x1F) << 16) | (v21[5] << 8);
      v25 = v21[6];
    }

    v22 = v24 | v25;
  }

LABEL_22:
  v26 = a4[4];
  if (a4[4] < 0)
  {
    v27 = a4[4];
    if (v27 > 0xBF)
    {
      if (v27 > 0xDF)
      {
        if (v27 > 0xEF)
        {
          if (v27 > 0xF7)
          {
            if (v27 > 0xFB)
            {
              if (v27 > 0xFD)
              {
                if (v27 == 255)
                {
                  v26 = *(a4 + 5);
                  goto LABEL_39;
                }

                v28 = (a4[5] << 48) | (a4[6] << 40) | (a4[7] << 32) | (a4[8] << 24) | (a4[9] << 16) | (a4[10] << 8);
                v29 = a4[11];
              }

              else
              {
                v28 = ((v26 & 1) << 48) | (a4[5] << 40) | (a4[6] << 32) | (a4[7] << 24) | (a4[8] << 16) | (a4[9] << 8);
                v29 = a4[10];
              }
            }

            else
            {
              v28 = ((v26 & 3) << 40) | (a4[5] << 32) | (a4[6] << 24) | (a4[7] << 16) | (a4[8] << 8);
              v29 = a4[9];
            }
          }

          else
          {
            v28 = ((v26 & 7) << 32) | (a4[5] << 24) | (a4[6] << 16) | (a4[7] << 8);
            v29 = a4[8];
          }
        }

        else
        {
          v28 = ((v26 & 0xF) << 24) | (a4[5] << 16) | (a4[6] << 8);
          v29 = a4[7];
        }
      }

      else
      {
        v28 = ((v26 & 0x1F) << 16) | (a4[5] << 8);
        v29 = a4[6];
      }

      v26 = v28 | v29;
      goto LABEL_39;
    }

    v26 = a4[5] | ((v26 & 0x3F) << 8);
  }

LABEL_39:
  v30 = *a4;
  if (v22 == v26)
  {
    v31 = v30 - *v21;
  }

  else
  {
    v31 = v30 + 4;
  }

  if (!v31 || v31 >= v19)
  {
    goto LABEL_83;
  }

  v32 = 0;
  v33 = a2 + v20;
  v34 = a2[1];
  v35 = v34 / 10 >= v19 ? v17 - v18 : v34 / 10;
  v36 = v31 >= v34 / 10 ? v31 : v35;
  v37 = a2 + a5;
  v38 = v37;
  do
  {
    v39 = v38;
    v40 = (*v38 + 4);
    v32 += v40;
    v38 = &v39[v40];
    v41 = v38 < v33;
    if (v32 > v36 && v38 < v33 && v37 < v38)
    {
      do
      {
        v44 = (*v37 + 4);
        v32 -= v44;
        v37 += v44;
      }

      while (v32 > v36 && v37 < v38);
      v41 = 1;
    }
  }

  while (v41);
  if (v37 == v21)
  {
    v46 = (*v21 + 4);
    v32 -= v46;
    v37 = &v21[v46];
  }

  v47 = v32 < v36 && v32 < v31;
  if (v47)
  {
    goto LABEL_83;
  }

  if (v32 >= v19)
  {
    v48 = (*v37 + 4);
    v32 -= v48;
    if (v32 >= v19 || v32 < v31)
    {
      goto LABEL_83;
    }

    v37 += v48;
  }

  if (v33 - v37 != v32)
  {
    v54 = *__error();
    v55 = _SILogForLogForCategory(7);
    v56 = 2 * (dword_1EBF46AE8 < 4);
    if (os_log_type_enabled(v55, v56))
    {
      *buf = 134218496;
      *&buf[4] = v33;
      v81 = 2048;
      v82 = v37;
      v83 = 1024;
      v84 = v32;
      _os_log_impl(&dword_1C278D000, v55, v56, "try_push_right: weird! end %p first %p but num_bytes %d\n", buf, 0x1Cu);
    }

    *__error() = v54;
    goto LABEL_83;
  }

  if (v32 + v18 >= v17 || v31 + v20 - v32 >= v34)
  {
LABEL_83:
    if (v78)
    {
      free(v78);
    }

    page_release(a1, value_out, v10, 0, 0);
    result = 28;
    goto LABEL_86;
  }

  v72 = v31;
  v73 = v26;
  __src = (a2 + a5);
  v75 = v22;
  __n = v33 - v37;
  memmove(value_out + v33 - v37 + 20, value_out + 20, v18 - 20);
  v49 = value_out;
  memcpy(value_out + 20, v37, __n);
  v49[2] += v32;
  a2[2] -= v32;
  v50 = page_compress(a1, v49, &v78, 0, (*(a1 + 804) & 2) != 0);
  v51 = a2[2];
  if (v50)
  {
    a2[2] = v51 + v32;
    v52 = value_out;
    v53 = *(value_out + 2) - v32;
    *(value_out + 2) = v53;
    memmove(v52 + 20, &v52[__n + 20], v53 - 20);
    goto LABEL_83;
  }

  if (v75 == v73)
  {
    memmove(__src + (*__src + 4) + v72, __src + (*__src + 4), a2 + v51 - (__src + (*__src + 4)));
    memcpy(__src, a4, (*a4 + 4));
    v58 = a2[2] + v72;
  }

  else
  {
    memmove(__src + (*a4 + 4), __src, v51 - a5);
    memcpy(__src, a4, (*a4 + 4));
    v58 = *a4 + a2[2] + 4;
  }

  a2[2] = v58;
  v59 = a2 + v58;
  if (v58 <= a5 && v39 >= v59)
  {
    v69 = __si_assert_copy_extra_3233(0, -1);
    v70 = v69;
    v71 = "";
    if (v69)
    {
      v71 = v69;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 4056, "dbo<end || prev_dbo<end", v71);
    free(v70);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v47 = v58 <= a5;
  v60 = a2 + a5;
  if (!v47)
  {
    do
    {
      v39 = v60;
      v60 += (*v60 + 4);
    }

    while (v60 < v59);
  }

  *buf = 0;
  v61 = v39[4];
  if (v39[4] < 0)
  {
    v63 = v39[4];
    if (v63 > 0xBF)
    {
      if (v63 > 0xDF)
      {
        if (v63 > 0xEF)
        {
          if (v63 > 0xF7)
          {
            if (v63 > 0xFB)
            {
              if (v63 > 0xFD)
              {
                if (v63 == 255)
                {
                  v61 = *(v39 + 5);
                  v62 = 9;
                }

                else
                {
                  v61 = (v39[5] << 48) | (v39[6] << 40) | (v39[7] << 32) | (v39[8] << 24) | (v39[9] << 16) | (v39[10] << 8) | v39[11];
                  v62 = 8;
                }
              }

              else
              {
                v61 = ((v61 & 1) << 48) | (v39[5] << 40) | (v39[6] << 32) | (v39[7] << 24) | (v39[8] << 16) | (v39[9] << 8) | v39[10];
                v62 = 7;
              }
            }

            else
            {
              v61 = ((v61 & 3) << 40) | (v39[5] << 32) | (v39[6] << 24) | (v39[7] << 16) | (v39[8] << 8) | v39[9];
              v62 = 6;
            }
          }

          else
          {
            v61 = ((v61 & 7) << 32) | (v39[5] << 24) | (v39[6] << 16) | (v39[7] << 8) | v39[8];
            v62 = 5;
          }
        }

        else
        {
          v61 = ((v61 & 0xF) << 24) | (v39[5] << 16) | (v39[6] << 8) | v39[7];
          v62 = 4;
        }
      }

      else
      {
        v61 = ((v61 & 0x1F) << 16) | (v39[5] << 8) | v39[6];
        v62 = 3;
      }
    }

    else
    {
      v62 = 2;
      v61 = v39[5] | ((v61 & 0x3F) << 8);
    }
  }

  else
  {
    v62 = 1;
  }

  *buf = v62;
  VInt16 = ldb_readVInt16((v39 + 4), buf);
  v65 = *(a1 + 804);
  v66 = *(a1 + 856);
  v67 = *(v66 + 12);
  v68 = v66 + 16 * *(v66 + 16);
  *(v68 + 20) = v61;
  *(v68 + 32) = (v65 << 31 >> 31) & (((VInt16 >> 5) & 1) << 28) & 0xF0000000 | *(v68 + 32) & 0xFFFFFFF;
  *(v66 + 12) = v67 | 1;
  if (v75 != v73)
  {
    ++*(a1 + 20);
  }

  db_cache_set_offset_hint(*(a1 + 928), value_out, 0, 0, 0);
  db_cache_set_offset_hint(*(a1 + 928), a2, 0, 0, 0);
  page_release(a1, a2, a3, 1u, 0);
  page_release_dirty_compressed(a1, value_out, v78, v10, v77);
  result = 0;
LABEL_86:
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t try_push_left(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned __int8 *a4, int a5, uint64_t a6, signed int a7, unsigned int a8)
{
  v10 = a6;
  v134 = *MEMORY[0x1E69E9840];
  v129 = 0;
  value_out = 0;
  result = _page_fetch_with_fd(a1, &value_out, a6, a7, 1, buf, 0xFFFFFFFFLL, 0);
  if (result)
  {
    goto LABEL_5;
  }

  v17 = value_out;
  if ((*(value_out + 12) & 0xF0) != 0)
  {
    goto LABEL_4;
  }

  v18 = *(value_out + 1);
  v19 = *(value_out + 2);
  v20 = v18 - v19;
  if (a7 < 4 * (v18 - v19))
  {
    goto LABEL_4;
  }

  v22 = a2 + a5;
  v23 = a2[2];
  if (v23 <= a5)
  {
    goto LABEL_43;
  }

  v24 = v22[4];
  if (v22[4] < 0)
  {
    v25 = v22[4];
    if (v25 <= 0xBF)
    {
      v24 = v22[5] | ((v24 & 0x3F) << 8);
      goto LABEL_24;
    }

    if (v25 > 0xDF)
    {
      if (v25 > 0xEF)
      {
        if (v25 > 0xF7)
        {
          if (v25 > 0xFB)
          {
            if (v25 > 0xFD)
            {
              if (v25 == 255)
              {
                v24 = *(v22 + 5);
                goto LABEL_24;
              }

              v26 = (v22[5] << 48) | (v22[6] << 40) | (v22[7] << 32) | (v22[8] << 24) | (v22[9] << 16) | (v22[10] << 8);
              v27 = v22[11];
            }

            else
            {
              v26 = ((v24 & 1) << 48) | (v22[5] << 40) | (v22[6] << 32) | (v22[7] << 24) | (v22[8] << 16) | (v22[9] << 8);
              v27 = v22[10];
            }
          }

          else
          {
            v26 = ((v24 & 3) << 40) | (v22[5] << 32) | (v22[6] << 24) | (v22[7] << 16) | (v22[8] << 8);
            v27 = v22[9];
          }
        }

        else
        {
          v26 = ((v24 & 7) << 32) | (v22[5] << 24) | (v22[6] << 16) | (v22[7] << 8);
          v27 = v22[8];
        }
      }

      else
      {
        v26 = ((v24 & 0xF) << 24) | (v22[5] << 16) | (v22[6] << 8);
        v27 = v22[7];
      }
    }

    else
    {
      v26 = ((v24 & 0x1F) << 16) | (v22[5] << 8);
      v27 = v22[6];
    }

    v24 = v26 | v27;
  }

LABEL_24:
  v28 = a4[4];
  if ((a4[4] & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  v29 = a4[4];
  if (v29 <= 0xBF)
  {
    v28 = a4[5] | ((v28 & 0x3F) << 8);
    goto LABEL_41;
  }

  if (v29 > 0xDF)
  {
    if (v29 > 0xEF)
    {
      if (v29 > 0xF7)
      {
        if (v29 > 0xFB)
        {
          if (v29 > 0xFD)
          {
            if (v29 == 255)
            {
              v28 = *(a4 + 5);
              goto LABEL_41;
            }

            v30 = (a4[5] << 48) | (a4[6] << 40) | (a4[7] << 32) | (a4[8] << 24) | (a4[9] << 16) | (a4[10] << 8);
            v31 = a4[11];
          }

          else
          {
            v30 = ((v28 & 1) << 48) | (a4[5] << 40) | (a4[6] << 32) | (a4[7] << 24) | (a4[8] << 16) | (a4[9] << 8);
            v31 = a4[10];
          }
        }

        else
        {
          v30 = ((v28 & 3) << 40) | (a4[5] << 32) | (a4[6] << 24) | (a4[7] << 16) | (a4[8] << 8);
          v31 = a4[9];
        }
      }

      else
      {
        v30 = ((v28 & 7) << 32) | (a4[5] << 24) | (a4[6] << 16) | (a4[7] << 8);
        v31 = a4[8];
      }
    }

    else
    {
      v30 = ((v28 & 0xF) << 24) | (a4[5] << 16) | (a4[6] << 8);
      v31 = a4[7];
    }
  }

  else
  {
    v30 = ((v28 & 0x1F) << 16) | (a4[5] << 8);
    v31 = a4[6];
  }

  v28 = v30 | v31;
LABEL_41:
  if (v24 == v28)
  {
    v32 = 0;
    v33 = *a4 - *v22;
    goto LABEL_44;
  }

LABEL_43:
  v33 = *a4 + 4;
  v32 = 1;
LABEL_44:
  if (!v33 || v33 >= v20)
  {
    goto LABEL_4;
  }

  if (v19 >= v18 / 4 || (v34 = v20 / 2 - v33, v33 >= v34))
  {
    v35 = a2[1] / 10;
    if (v35 >= v20)
    {
      v36 = v18 - v19;
    }

    else
    {
      v36 = a2[1] / 10;
    }

    if (v33 >= v35)
    {
      v34 = v33;
    }

    else
    {
      v34 = v36;
    }
  }

  if (v23 < 21)
  {
    v72 = __si_assert_copy_extra_3233(0, -1);
    v73 = v72;
    v74 = "";
    if (v72)
    {
      v74 = v72;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "sdb2.c", 4196, "copy_end < end", v74);
    free(v73);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v37 = 0;
  v38 = a2 + v23;
  v39 = a2[5] + 4;
  v40 = a2 + v39 + 20;
  v41 = (a2 + 5);
  v42 = (a2 + 5);
  if (v40 < a2 + v23 && v34 >= 1)
  {
    if (v32)
    {
      v37 = 0;
      v42 = (a2 + 5);
      do
      {
        v41 = v42;
        v42 = v40;
        v37 += v39;
        v39 = (*v40 + 4);
        v40 += v39;
      }

      while (v40 < v38 && v37 < v34);
    }

    else
    {
      if (v40 < v22)
      {
        v37 = a2[5] + 4;
        v41 = (a2 + 5);
        v42 = a2 + v39 + 20;
        goto LABEL_68;
      }

      v37 = a2[5] + 4;
      v41 = (a2 + 5);
      v42 = a2 + v39 + 20;
      if (v39 + v33 < v20)
      {
LABEL_68:
        while (1)
        {
          v44 = v42;
          v45 = (*v42 + 4);
          v42 += v45;
          if (v42 >= v38 || v37 >= v34)
          {
            break;
          }

          v37 += v45;
          v47 = v42 < v22 || v37 + v33 < v20;
          v41 = v44;
          if (!v47)
          {
            goto LABEL_77;
          }
        }

        v42 = v44;
      }
    }
  }

LABEL_77:
  if (v37 < v34 && v37 < v33 && v42 <= v22)
  {
    goto LABEL_4;
  }

  if (v37 >= v20)
  {
    v37 = v37 - *v41 - 4;
    if (v37 >= v20)
    {
      goto LABEL_4;
    }

    if (v37 < v33 && v41 <= v22)
    {
      goto LABEL_4;
    }

    v128 = a8;
    v54 = (a2 + 5);
    do
    {
      v48 = v54;
      v54 += (*v54 + 4);
    }

    while (v54 < v41);
    if (v48 == v41)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v128 = a8;
    v48 = v41;
    v41 = v42;
  }

  if (v37 + v19 >= v18)
  {
    goto LABEL_4;
  }

  if (v41 > v22)
  {
    if (v37 + v33 <= v20)
    {
      v119 = v37 + v33;
      v121 = a2 + v23;
      v125 = (a2 + a5);
      v49 = a5 - 20;
      v124 = v32;
      memcpy(value_out + v19, a2 + 5, a5 - 20);
      v50 = value_out;
      v51 = *(value_out + 2) + (a5 - 20);
      *(value_out + 2) = v51;
      memcpy(&v50[v51], a4, (*a4 + 4));
      *(value_out + 2) += *a4 + 4;
      if (v124)
      {
        v52 = a2 + a5;
      }

      else
      {
        v56 = (*v125 + 4);
        v49 += v56;
        v52 = v125 + v56;
      }

      v127 = v52;
      v115 = v49;
      if (v52 == v41)
      {
        v57 = (a4 + 4);
        v58 = a4[4];
        if (a4[4] < 0)
        {
          v63 = a4[4];
          if (v63 <= 0xBF)
          {
            v60 = a4[5];
            goto LABEL_113;
          }

          if (v63 <= 0xDF)
          {
            v64 = ((v58 & 0x1F) << 16) | (a4[5] << 8);
            v65 = a4[6];
            goto LABEL_120;
          }

          if (v63 <= 0xEF)
          {
            v66 = ((v58 & 0xF) << 24) | (a4[5] << 16) | (a4[6] << 8);
            v67 = a4[7];
            goto LABEL_127;
          }

          if (v63 <= 0xF7)
          {
            v68 = ((v58 & 7) << 32) | (a4[5] << 24) | (a4[6] << 16) | (a4[7] << 8);
            v69 = a4[8];
            goto LABEL_134;
          }

          if (v63 <= 0xFB)
          {
            v70 = ((v58 & 3) << 40) | (a4[5] << 32) | (a4[6] << 24) | (a4[7] << 16) | (a4[8] << 8);
            v71 = a4[9];
            goto LABEL_145;
          }

          if (v63 <= 0xFD)
          {
            v75 = ((v58 & 1) << 48) | (a4[5] << 40) | (a4[6] << 32) | (a4[7] << 24) | (a4[8] << 16) | (a4[9] << 8);
            v76 = a4[10];
            goto LABEL_153;
          }

          if (v63 == 255)
          {
            v58 = *(a4 + 5);
            goto LABEL_178;
          }

          v92 = (a4[5] << 48) | (a4[6] << 40) | (a4[7] << 32) | (a4[8] << 24) | (a4[9] << 16) | (a4[10] << 8);
          v93 = a4[11];
LABEL_183:
          v58 = v92 | v93;
          v62 = 8;
          goto LABEL_184;
        }
      }

      else
      {
        *buf = 0;
        v57 = (v48 + 4);
        v58 = v48[4];
        if (v48[4] < 0)
        {
          v59 = v48[4];
          if (v59 <= 0xBF)
          {
            v60 = v48[5];
LABEL_113:
            v62 = 2;
            v58 = v60 & 0xFFFFFFFFFFFFC0FFLL | ((v58 & 0x3F) << 8);
            goto LABEL_184;
          }

          if (v59 <= 0xDF)
          {
            v64 = ((v58 & 0x1F) << 16) | (v48[5] << 8);
            v65 = v48[6];
LABEL_120:
            v58 = v64 | v65;
            v62 = 3;
            goto LABEL_184;
          }

          if (v59 <= 0xEF)
          {
            v66 = ((v58 & 0xF) << 24) | (v48[5] << 16) | (v48[6] << 8);
            v67 = v48[7];
LABEL_127:
            v58 = v66 | v67;
            v62 = 4;
            goto LABEL_184;
          }

          if (v59 <= 0xF7)
          {
            v68 = ((v58 & 7) << 32) | (v48[5] << 24) | (v48[6] << 16) | (v48[7] << 8);
            v69 = v48[8];
LABEL_134:
            v58 = v68 | v69;
            v62 = 5;
            goto LABEL_184;
          }

          if (v59 <= 0xFB)
          {
            v70 = ((v58 & 3) << 40) | (v48[5] << 32) | (v48[6] << 24) | (v48[7] << 16) | (v48[8] << 8);
            v71 = v48[9];
LABEL_145:
            v58 = v70 | v71;
            v62 = 6;
            goto LABEL_184;
          }

          if (v59 <= 0xFD)
          {
            v75 = ((v58 & 1) << 48) | (v48[5] << 40) | (v48[6] << 32) | (v48[7] << 24) | (v48[8] << 16) | (v48[9] << 8);
            v76 = v48[10];
LABEL_153:
            v58 = v75 | v76;
            v62 = 7;
            goto LABEL_184;
          }

          if (v59 == 255)
          {
            v58 = *(v48 + 5);
LABEL_178:
            v62 = 9;
            goto LABEL_184;
          }

          v92 = (v48[5] << 48) | (v48[6] << 40) | (v48[7] << 32) | (v48[8] << 24) | (v48[9] << 16) | (v48[10] << 8);
          v93 = v48[11];
          goto LABEL_183;
        }
      }

      v62 = 1;
LABEL_184:
      *buf = v62;
      VInt16 = ldb_readVInt16(v57, buf);
      v95 = *(a1 + 804);
      v96 = v41 - v127;
      memcpy(value_out + *(value_out + 2), v127, v41 - v127);
      v97 = value_out;
      *(value_out + 2) += v41 - v127;
      v98 = page_compress(a1, v97, &v129, 0, (*(a1 + 804) & 2) != 0);
      v79 = v119;
      if (v98)
      {
LABEL_185:
        v99 = v129;
        v17 = value_out;
        *(value_out + 2) -= v79;
        if (v99)
        {
          free(v99);
          v17 = value_out;
        }

        goto LABEL_4;
      }

      v87 = v95 & (VInt16 >> 5) & 1;
      v100 = v115 + v96;
      memmove(a2 + 5, v41, v121 - v41);
      a2[2] -= v115 + v96;
      if (v115 + v96 != v37)
      {
        v118 = v87;
        v101 = v58;
        v102 = *__error();
        v103 = _SILogForLogForCategory(7);
        v104 = 2 * (dword_1EBF46AE8 < 4);
        if (os_log_type_enabled(v103, v104))
        {
          *buf = 67109376;
          *&buf[4] = v100;
          v132 = 1024;
          v133 = v37;
          _os_log_impl(&dword_1C278D000, v103, v104, "try_push_left: issshhhn't dat strange? decrease %d num_bytes %d\n", buf, 0xEu);
        }

        *__error() = v102;
        v85 = v128;
        v88 = v124;
        v58 = v101;
        v87 = v118;
        goto LABEL_198;
      }

      v85 = v128;
      goto LABEL_197;
    }

LABEL_4:
    page_release(a1, v17, v10, 0, 0);
    result = 28;
    goto LABEL_5;
  }

  if (v33 + v23 - v37 >= a2[1])
  {
    goto LABEL_4;
  }

  v122 = a2 + v23;
  __src = (a2 + 5);
  *buf = 0;
  v120 = v48[4];
  v124 = v32;
  v126 = a2 + a5;
  v113 = v23;
  v114 = a5;
  if (v48[4] < 0)
  {
    v61 = v48[4];
    if (v61 > 0xBF)
    {
      if (v61 > 0xDF)
      {
        if (v61 > 0xEF)
        {
          if (v61 > 0xF7)
          {
            if (v61 > 0xFB)
            {
              if (v61 > 0xFD)
              {
                if (v61 == 255)
                {
                  v120 = *(v48 + 5);
                  v55 = 9;
                }

                else
                {
                  v120 = (v48[5] << 48) | (v48[6] << 40) | (v48[7] << 32) | (v48[8] << 24) | (v48[9] << 16) | (v48[10] << 8) | v48[11];
                  v55 = 8;
                }
              }

              else
              {
                v120 = ((v120 & 1) << 48) | (v48[5] << 40) | (v48[6] << 32) | (v48[7] << 24) | (v48[8] << 16) | (v48[9] << 8) | v48[10];
                v55 = 7;
              }
            }

            else
            {
              v120 = ((v120 & 3) << 40) | (v48[5] << 32) | (v48[6] << 24) | (v48[7] << 16) | (v48[8] << 8) | v48[9];
              v55 = 6;
            }
          }

          else
          {
            v120 = ((v120 & 7) << 32) | (v48[5] << 24) | (v48[6] << 16) | (v48[7] << 8) | v48[8];
            v55 = 5;
          }
        }

        else
        {
          v120 = ((v120 & 0xF) << 24) | (v48[5] << 16) | (v48[6] << 8) | v48[7];
          v55 = 4;
        }
      }

      else
      {
        v120 = ((v120 & 0x1F) << 16) | (v48[5] << 8) | v48[6];
        v55 = 3;
      }
    }

    else
    {
      v55 = 2;
      v120 = v48[5] | ((v120 & 0x3F) << 8);
    }
  }

  else
  {
    v55 = 1;
  }

  *buf = v55;
  v116 = ldb_readVInt16((v48 + 4), buf);
  v77 = *(a1 + 804);
  memcpy(value_out + *(value_out + 2), __src, v37);
  v78 = value_out;
  *(value_out + 2) += v37;
  if (page_compress(a1, v78, &v129, 0, (*(a1 + 804) & 2) != 0))
  {
    v79 = v37;
    goto LABEL_185;
  }

  v117 = v77 & (v116 >> 5) & 1;
  memmove(__src, v41, v126 - v41);
  v80 = &__src[v126 - v41];
  v81 = *v126;
  memcpy(v80, a4, (*a4 + 4));
  if (v124)
  {
    v82 = v113 - v114;
    v83 = &v80[*v80 + 4];
    v84 = v126;
  }

  else
  {
    v84 = &v126[v81 + 4];
    v82 = v122 - v84;
    v83 = &v80[*v80 + 4];
  }

  memmove(v83, v84, v82);
  v85 = v128;
  v86 = a2[2] - v37 + v33;
  a2[2] = v86;
  v87 = v117;
  if (&v80[*v80 + 4] >= a2 + v86)
  {
    v89 = v80[4];
    v58 = v120;
    if (v80[4] < 0)
    {
      v91 = v80[4];
      if (v91 > 0xBF)
      {
        if (v91 > 0xDF)
        {
          if (v91 > 0xEF)
          {
            if (v91 > 0xF7)
            {
              if (v91 > 0xFB)
              {
                if (v91 > 0xFD)
                {
                  if (v91 == 255)
                  {
                    v89 = *(v80 + 5);
                    v90 = 9;
                  }

                  else
                  {
                    v89 = (v80[5] << 48) | (v80[6] << 40) | (v80[7] << 32) | (v80[8] << 24) | (v80[9] << 16) | (v80[10] << 8) | v80[11];
                    v90 = 8;
                  }
                }

                else
                {
                  v89 = ((v89 & 1) << 48) | (v80[5] << 40) | (v80[6] << 32) | (v80[7] << 24) | (v80[8] << 16) | (v80[9] << 8) | v80[10];
                  v90 = 7;
                }
              }

              else
              {
                v89 = ((v89 & 3) << 40) | (v80[5] << 32) | (v80[6] << 24) | (v80[7] << 16) | (v80[8] << 8) | v80[9];
                v90 = 6;
              }
            }

            else
            {
              v89 = ((v89 & 7) << 32) | (v80[5] << 24) | (v80[6] << 16) | (v80[7] << 8) | v80[8];
              v90 = 5;
            }
          }

          else
          {
            v89 = ((v89 & 0xF) << 24) | (v80[5] << 16) | (v80[6] << 8) | v80[7];
            v90 = 4;
          }
        }

        else
        {
          v89 = ((v89 & 0x1F) << 16) | (v80[5] << 8) | v80[6];
          v90 = 3;
        }

        v58 = v120;
        v87 = v117;
      }

      else
      {
        v90 = 2;
        v89 = v80[5] | ((v89 & 0x3F) << 8);
      }
    }

    else
    {
      v90 = 1;
    }

    *buf = v90;
    v105 = ldb_readVInt16((v80 + 4), buf);
    v106 = *(a1 + 804);
    v107 = *(a1 + 856);
    v108 = *(v107 + 12);
    v109 = v107 + 16 * *(v107 + 16);
    *(v109 + 20) = v89;
    *(v109 + 32) = (v106 << 31 >> 31) & (((v105 >> 5) & 1) << 28) & 0xF0000000 | *(v109 + 32) & 0xFFFFFFF;
    *(v107 + 12) = v108 | 1;
    v85 = v128;
LABEL_197:
    v88 = v124;
    goto LABEL_198;
  }

  v88 = v124;
  v58 = v120;
LABEL_198:
  v110 = *(a1 + 856);
  v111 = *(v110 + 12);
  v112 = v110 + 16 * *(v110 + 16);
  *(v112 + 4) = v58;
  *(v112 + 16) = *(v112 + 16) & 0xFFFFFFF | (v87 << 28);
  *(v110 + 12) = v111 | 1;
  if (v88)
  {
    ++*(a1 + 20);
  }

  db_cache_set_offset_hint(*(a1 + 928), value_out, 0, 0, 0);
  db_cache_set_offset_hint(*(a1 + 928), a2, 0, 0, 0);
  page_release(a1, a2, a3, 1u, 0);
  page_release_dirty_compressed(a1, value_out, v129, v10, v85);
  result = 0;
LABEL_5:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}