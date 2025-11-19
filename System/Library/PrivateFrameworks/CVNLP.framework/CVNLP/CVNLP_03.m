void sub_1D9D39BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D39C28(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F554D9A8;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_1F554DAC0;
  sub_1D9D41EE4(a1 + 24, a2);
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (atomic_load_explicit(dword_1EECD0AC0, memory_order_acquire))
  {
    sub_1D9D4D060(dword_1EECD0AC0);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_1D9D39CD4(_Unwind_Exception *a1)
{
  sub_1D9D3C4B0(v2);
  sub_1D9D41FB0(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D39CF4(uint64_t a1)
{
  sub_1D9D39D38(a1);
  sub_1D9D31E08((a1 + 8));
  sub_1D9D3C4B0((a1 + 56));
  sub_1D9D41FB0(a1 + 24);
  return a1;
}

uint64_t sub_1D9D39D38(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_1D9D418C4(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3145);
    v3 = sub_1D9D418DC(v12, "CHECK failed: GetArena() == nullptr: ");
    sub_1D9D41A18(&v11, &v3->__r_.__value_.__l.__data_);
    result = sub_1D9D41A20(v12);
  }

LABEL_4:
  if (v1 != &unk_1ECB71F38)
  {
    v4 = *(v1 + 80);
    if (v4)
    {
      v5 = sub_1D9D34FA4(v4);
      MEMORY[0x1DA741280](v5, 0x10A1C4074230EEALL);
    }

    v6 = *(v1 + 88);
    if (v6)
    {
      v7 = sub_1D9D37670(v6);
      MEMORY[0x1DA741280](v7, 0x10A1C402CDD3876);
    }

    v8 = *(v1 + 96);
    if (v8)
    {
      v9 = sub_1D9D38BDC(v8);
      MEMORY[0x1DA741280](v9, 0x10A1C4075D007F8);
    }

    result = *(v1 + 104);
    if (result)
    {
      v10 = sub_1D9D37670(result);
      return MEMORY[0x1DA741280](v10, 0x10A1C402CDD3876);
    }
  }

  return result;
}

void sub_1D9D39E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D39E64(uint64_t a1)
{
  sub_1D9D39CF4(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D39E9C(uint64_t a1)
{
  sub_1D9D39CF4(a1 - 16);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D39ED8(uint64_t a1)
{
  sub_1D9D45964((a1 + 24));
  result = sub_1D9D3BFA0((a1 + 56));
  v3 = *(a1 + 48);
  if ((v3 & 0xF) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 80);
      if (!v4)
      {
        sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3178);
        v5 = sub_1D9D418DC(v15, "CHECK failed: trainer_spec_ != nullptr: ");
        sub_1D9D41A18(&v14, &v5->__r_.__value_.__l.__data_);
        sub_1D9D41A20(v15);
        v4 = *(a1 + 80);
      }

      result = sub_1D9D352B4(v4);
    }

    if ((v3 & 2) != 0)
    {
      v6 = *(a1 + 88);
      if (!v6)
      {
        sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3182);
        v7 = sub_1D9D418DC(v15, "CHECK failed: normalizer_spec_ != nullptr: ");
        sub_1D9D41A18(&v14, &v7->__r_.__value_.__l.__data_);
        sub_1D9D41A20(v15);
        v6 = *(a1 + 88);
      }

      result = sub_1D9D37880(v6);
    }

    if ((v3 & 4) != 0)
    {
      v8 = *(a1 + 96);
      if (!v8)
      {
        sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3186);
        v9 = sub_1D9D418DC(v15, "CHECK failed: self_test_data_ != nullptr: ");
        sub_1D9D41A18(&v14, &v9->__r_.__value_.__l.__data_);
        sub_1D9D41A20(v15);
        v8 = *(a1 + 96);
      }

      result = sub_1D9D38CD8(v8);
    }

    if ((v3 & 8) != 0)
    {
      v10 = *(a1 + 104);
      if (!v10)
      {
        sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3190);
        v11 = sub_1D9D418DC(v15, "CHECK failed: denormalizer_spec_ != nullptr: ");
        sub_1D9D41A18(&v14, &v11->__r_.__value_.__l.__data_);
        sub_1D9D41A20(v15);
        v10 = *(a1 + 104);
      }

      result = sub_1D9D37880(v10);
    }
  }

  *(a1 + 48) = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 31) < 0)
    {
      **(v13 + 8) = 0;
      *(v13 + 16) = 0;
    }

    else
    {
      *(v13 + 8) = 0;
      *(v13 + 31) = 0;
    }
  }

  return result;
}

void sub_1D9D3A08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D3A0BC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  if ((sub_1D9D34224(a3, &v32, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v32 + 1;
      v7 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      v28 = sub_1D9D4E760(v32, v8 - 128);
      v32 = v28;
      if (!v28)
      {
        return 0;
      }

      v6 = v28;
      v7 = v29;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        if (v9 == 3)
        {
          if (v7 == 26)
          {
            *(a1 + 48) |= 2u;
            v10 = *(a1 + 88);
            if (!v10)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = sub_1D9D3AFC0(v16);
              *(a1 + 88) = v10;
LABEL_32:
              v6 = v32;
            }

LABEL_33:
            v15 = sub_1D9DD9614(a3, v10, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 4)
        {
          if (v7 == 34)
          {
            *(a1 + 48) |= 4u;
            v17 = *(a1 + 96);
            if (!v17)
            {
              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = sub_1D9D3B160(v18);
              *(a1 + 96) = v17;
              v6 = v32;
            }

            v15 = sub_1D9DD96DC(a3, v17, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 5 && v7 == 42)
        {
          *(a1 + 48) |= 8u;
          v10 = *(a1 + 104);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v10 = sub_1D9D3AFC0(v11);
            *(a1 + 104) = v10;
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        goto LABEL_54;
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_54;
        }

        v19 = v6 - 1;
        while (2)
        {
          v20 = v19 + 1;
          v32 = v19 + 1;
          v21 = *(a1 + 72);
          if (!v21)
          {
            v22 = *(a1 + 68);
            goto LABEL_44;
          }

          v26 = *(a1 + 64);
          v22 = *v21;
          if (v26 >= *v21)
          {
            if (v22 == *(a1 + 68))
            {
LABEL_44:
              sub_1D9D53A28(a1 + 56, v22 + 1);
              v21 = *(a1 + 72);
              v22 = *v21;
            }

            *v21 = v22 + 1;
            v23 = sub_1D9D3B230(*(a1 + 56));
            v24 = *(a1 + 64);
            v25 = *(a1 + 72) + 8 * v24;
            *(a1 + 64) = v24 + 1;
            *(v25 + 8) = v23;
            v20 = v32;
          }

          else
          {
            *(a1 + 64) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
          }

          v19 = sub_1D9DD9484(a3, v23, v20);
          v32 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v9 == 2 && v7 == 18)
      {
        *(a1 + 48) |= 1u;
        v13 = *(a1 + 80);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = sub_1D9D3AEF0(v14);
          *(a1 + 80) = v13;
          v6 = v32;
        }

        sub_1D9DD954C(a3, v13, v6);
        goto LABEL_65;
      }

LABEL_54:
      if (v7)
      {
        v27 = (v7 & 7) == 4;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        a3[10].i32[0] = v7 - 1;
        return v32;
      }

      if (v7 < 0x640)
      {
        v30 = *(a1 + 8);
        if (v30)
        {
          v31 = (v30 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v31 = sub_1D9D34364((a1 + 8));
          v6 = v32;
        }

        v15 = sub_1D9D4EC60(v7, v31, v6, a3);
      }

      else
      {
        v15 = sub_1D9D46E98((a1 + 24), v7, v6, &unk_1ECB71F38, (a1 + 8), a3);
      }

LABEL_65:
      v32 = v15;
      if (!v15)
      {
        return 0;
      }

LABEL_66:
      if (sub_1D9D34224(a3, &v32, a3[11].i32[1]))
      {
        return v32;
      }
    }

    v6 = v32 + 2;
LABEL_6:
    v32 = v6;
    goto LABEL_7;
  }

  return v32;
}

char *sub_1D9D3A424(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_1D9D40E38(a3, a2);
      }

      v8 = sub_1D9D11200(a1 + 56, i);
      *a2 = 10;
      v9 = *(v8 + 44);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = sub_1D9D397B0(v8, v10, a3);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    if (*a3 <= a2)
    {
      a2 = sub_1D9D40E38(a3, a2);
    }

    v15 = *(a1 + 80);
    *a2 = 18;
    v16 = *(v15 + 48);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = a2 + 3;
        do
        {
          *(v17 - 1) = v18 | 0x80;
          v19 = v18 >> 7;
          ++v17;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        *(v17 - 1) = v19;
      }

      else
      {
        a2[2] = v18;
        v17 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v16;
      v17 = a2 + 2;
    }

    a2 = sub_1D9D3557C(v15, v17, a3);
    if ((v14 & 2) == 0)
    {
LABEL_15:
      if ((v14 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = sub_1D9D40E38(a3, a2);
  }

  v21 = *(a1 + 88);
  *a2 = 26;
  v22 = *(v21 + 52);
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = a2 + 3;
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      a2[2] = v24;
      v23 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v22;
    v23 = a2 + 2;
  }

  a2 = sub_1D9D37D88(v21, v23, a3);
  if ((v14 & 4) == 0)
  {
LABEL_16:
    if ((v14 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = sub_1D9D40E38(a3, a2);
  }

  v27 = *(a1 + 96);
  *a2 = 34;
  v28 = *(v27 + 64);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = a2 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v28;
    v29 = a2 + 2;
  }

  a2 = sub_1D9D38F30(v27, v29, a3);
  if ((v14 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= a2)
    {
      a2 = sub_1D9D40E38(a3, a2);
    }

    v33 = *(a1 + 104);
    *a2 = 42;
    v34 = *(v33 + 52);
    if (v34 > 0x7F)
    {
      a2[1] = v34 | 0x80;
      v36 = v34 >> 7;
      if (v34 >> 14)
      {
        v35 = a2 + 3;
        do
        {
          *(v35 - 1) = v36 | 0x80;
          v37 = v36 >> 7;
          ++v35;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
        *(v35 - 1) = v37;
      }

      else
      {
        a2[2] = v36;
        v35 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v34;
      v35 = a2 + 2;
    }

    a2 = sub_1D9D37D88(v33, v35, a3);
  }

LABEL_58:
  v39 = sub_1D9D47C4C(a1 + 24, 200, 0x20000000, a2, a3);
  v40 = v39;
  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v40;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if ((*a3 - v39) >= v44)
  {
    v46 = v44;
    memcpy(v39, v45, v44);
    v40 += v46;
    return v40;
  }

  return sub_1D9D40F50(a3, v45, v44, v39);
}

uint64_t sub_1D9D3A81C(uint64_t a1)
{
  v2 = sub_1D9D4A86C(a1 + 24);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_1D9D39958(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 48);
  if ((v10 & 0xF) == 0)
  {
    goto LABEL_13;
  }

  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v15 = sub_1D9D37F98(*(a1 + 88));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v14 = sub_1D9D36710(*(a1 + 80));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v10 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v16 = sub_1D9D390B4(*(a1 + 96));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) != 0)
  {
LABEL_12:
    v11 = sub_1D9D37F98(*(a1 + 104));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFELL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v4 += v18;
  }

  *(a1 + 52) = v4;
  return v4;
}

void sub_1D9D3A9A0(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_1F554E010, &unk_1F554DC10, 0))
  {
    sub_1D9D34B68();
  }

  sub_1D9D3AA28(a1, lpsrc);
}

void sub_1D9D3AA28(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1D9D418C4(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3397);
    v4 = sub_1D9D418DC(v27, "CHECK failed: (&from) != (this): ");
    sub_1D9D41A18(&v26, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v27);
  }

  sub_1D9DD97A4(a1 + 24, a2 + 24);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_1D9D34364((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_1D9D3C570(a1 + 56, a2 + 56);
  v13 = *(a2 + 48);
  if ((v13 & 0xF) != 0)
  {
    if (v13)
    {
      *(a1 + 48) |= 1u;
      v14 = *(a1 + 80);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = sub_1D9D3AEF0(v15);
        *(a1 + 80) = v14;
      }

      if (*(a2 + 80))
      {
        v16 = *(a2 + 80);
      }

      else
      {
        v16 = &unk_1ECB71DF0;
      }

      sub_1D9D37028(v14, v16);
    }

    if ((v13 & 2) != 0)
    {
      *(a1 + 48) |= 2u;
      v17 = *(a1 + 88);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = sub_1D9D3AFC0(v18);
        *(a1 + 88) = v17;
      }

      if (*(a2 + 88))
      {
        v19 = *(a2 + 88);
      }

      else
      {
        v19 = &unk_1ECB71D50;
      }

      sub_1D9D38180(v17, v19);
      if ((v13 & 4) == 0)
      {
LABEL_25:
        if ((v13 & 8) == 0)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    else if ((v13 & 4) == 0)
    {
      goto LABEL_25;
    }

    *(a1 + 48) |= 4u;
    v20 = *(a1 + 96);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = sub_1D9D3B160(v21);
      *(a1 + 96) = v20;
    }

    if (*(a2 + 96))
    {
      v22 = *(a2 + 96);
    }

    else
    {
      v22 = &unk_1ECB71DA8;
    }

    sub_1D9D391E4(v20, v22);
    if ((v13 & 8) != 0)
    {
LABEL_43:
      *(a1 + 48) |= 8u;
      v23 = *(a1 + 104);
      if (!v23)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = sub_1D9D3AFC0(v24);
        *(a1 + 104) = v23;
      }

      if (*(a2 + 104))
      {
        v25 = *(a2 + 104);
      }

      else
      {
        v25 = &unk_1ECB71D50;
      }

      sub_1D9D38180(v23, v25);
    }
  }
}

void sub_1D9D3AC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D3AC58(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_1D9D39ED8(a1);

    sub_1D9D3AA28(a1, a2);
  }
}

uint64_t sub_1D9D3ACA4(uint64_t a1)
{
  result = sub_1D9D46AF4(a1 + 24);
  if (!result)
  {
    return result;
  }

  result = sub_1D9D3AE88(a1 + 56);
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      sub_1D9D418C4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4741);
      v5 = sub_1D9D418DC(v13, "CHECK failed: !value || trainer_spec_ != nullptr: ");
      sub_1D9D41A18(&v12, &v5->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v13);
      v4 = *(a1 + 80);
    }

    result = sub_1D9D46AF4(v4 + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 48);
  }

  if ((v3 & 2) != 0)
  {
    v6 = *(a1 + 88);
    if (!v6)
    {
      sub_1D9D418C4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4824);
      v7 = sub_1D9D418DC(v13, "CHECK failed: !value || normalizer_spec_ != nullptr: ");
      sub_1D9D41A18(&v12, &v7->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v13);
      v6 = *(a1 + 88);
    }

    result = sub_1D9D46AF4(v6 + 24);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 48);
  }

  if ((v3 & 4) == 0)
  {
LABEL_18:
    if ((v3 & 8) == 0)
    {
      return 1;
    }

    v10 = *(a1 + 104);
    if (!v10)
    {
      sub_1D9D418C4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4990);
      v11 = sub_1D9D418DC(v13, "CHECK failed: !value || denormalizer_spec_ != nullptr: ");
      sub_1D9D41A18(&v12, &v11->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v13);
      v10 = *(a1 + 104);
    }

    result = sub_1D9D46AF4(v10 + 24);
    if (result)
    {
      return 1;
    }

    return result;
  }

  v8 = *(a1 + 96);
  if (!v8)
  {
    sub_1D9D418C4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4907);
    v9 = sub_1D9D418DC(v13, "CHECK failed: !value || self_test_data_ != nullptr: ");
    sub_1D9D41A18(&v12, &v9->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v13);
    v8 = *(a1 + 96);
  }

  result = sub_1D9D46AF4(v8 + 16);
  if (result)
  {
    v3 = *(a1 + 48);
    goto LABEL_18;
  }

  return result;
}

void sub_1D9D3AE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

BOOL sub_1D9D3AE88(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_1D9D11200(a1, v2);
  }

  while ((sub_1D9D46AF4(v5 + 16) & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1D9D3AEF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F554DB68, 328);
  }

  v2 = sub_1D9D401C0(a1, 328);
  sub_1D9D34E44(v2, a1);
  return v2;
}

uint64_t sub_1D9D3AFC0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F554DB90, 88);
  }

  v2 = sub_1D9D401C0(a1, 88);
  sub_1D9D375B4(v2, a1);
  return v2;
}

void *sub_1D9D3B090(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F554DBC8, 40);
  }

  v2 = sub_1D9D401C0(a1, 40);
  sub_1D9D3837C(v2, a1);
  return v2;
}

uint64_t sub_1D9D3B160(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F554DBE0, 72);
  }

  v2 = sub_1D9D401C0(a1, 72);
  sub_1D9D38B40(v2, a1);
  return v2;
}

void *sub_1D9D3B230(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F554DBF8, 64);
  }

  v2 = sub_1D9D401C0(a1, 64);
  sub_1D9D392EC(v2, a1);
  return v2;
}

uint64_t sub_1D9D3B300(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F554DC10, 112);
  }

  v2 = sub_1D9D401C0(a1, 112);
  sub_1D9D39C28(v2, a1);
  return v2;
}

unint64_t sub_1D9D3B4A8(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[22];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1ECB718A8, memory_order_acquire);
    if (!result)
    {
      result = sub_1D9D40314(&off_1ECB71890);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1D9D3B50C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[23];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1ECB71868, memory_order_acquire);
    if (!result)
    {
      result = sub_1D9D40314(&off_1ECB71850);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1D9D3B570(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[24];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1ECB71840, memory_order_acquire);
    if (!result)
    {
      result = sub_1D9D40314(&off_1ECB71828);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1D9D3B5D4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[25];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1ECB71820, memory_order_acquire);
    if (!result)
    {
      result = sub_1D9D40314(&off_1ECB71808);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1D9D3B638(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[26];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1ECB71888, memory_order_acquire);
    if (!result)
    {
      result = sub_1D9D40314(&off_1ECB71870);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t sub_1D9D3B69C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  return v1[248];
}

uint64_t sub_1D9D3B6B8(uint64_t a1)
{
  v1 = &unk_1ECB71DF0;
  if (*(a1 + 80))
  {
    v1 = *(a1 + 80);
  }

  return (v1[40] >> 3) & 1;
}

void *sub_1D9D3B6D8(uint64_t a1, int a2)
{
  v2 = *(sub_1D9D11200(a1 + 56, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

char *sub_1D9D3B818(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    v1 = &unk_1ECB71D50;
  }

  return v1 + 16;
}

char *sub_1D9D3B834(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    v1 = &unk_1ECB71D50;
  }

  return v1 + 16;
}

uint64_t sub_1D9D3B850(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1D9D3B884(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[22];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1ECB718A8, memory_order_acquire);
    if (!result)
    {
      result = sub_1D9D40314(&off_1ECB71890);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1D9D3B8E8(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[23];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1ECB71868, memory_order_acquire);
    if (!result)
    {
      result = sub_1D9D40314(&off_1ECB71850);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1D9D3B94C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[24];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1ECB71840, memory_order_acquire);
    if (!result)
    {
      result = sub_1D9D40314(&off_1ECB71828);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1D9D3B9B0(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[25];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1ECB71820, memory_order_acquire);
    if (!result)
    {
      result = sub_1D9D40314(&off_1ECB71808);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1D9D3BA14(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[26];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1ECB71888, memory_order_acquire);
    if (!result)
    {
      result = sub_1D9D40314(&off_1ECB71870);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t sub_1D9D3BA78(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  return v1[248];
}

uint64_t sub_1D9D3BA94(uint64_t a1)
{
  v1 = &unk_1ECB71DF0;
  if (*(a1 + 64))
  {
    v1 = *(a1 + 64);
  }

  return (v1[40] >> 3) & 1;
}

uint64_t sub_1D9D3BAB4(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1ECB71DF0;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void *sub_1D9D3BAE0(uint64_t a1, int a2)
{
  v2 = *(sub_1D9D11200(a1 + 40, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

char *sub_1D9D3BC20(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v1 = &unk_1ECB71D50;
  }

  return v1 + 16;
}

char *sub_1D9D3BC3C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    v1 = &unk_1ECB71D50;
  }

  return v1 + 16;
}

void sub_1D9D3BC58(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_1D9D3BC6C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1D9D3BD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D3BD4C(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_1D9D418C4(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v4 = sub_1D9D418DC(v6, "CHECK failed: (n) >= (0): ");
    sub_1D9D41A18(&v5, &v4->__r_.__value_.__l.__data_);
    return sub_1D9D41A20(v6);
  }

  else if (v1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

void sub_1D9D3BDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D3BE10(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1D9D418DC(v8, "CHECK failed: (index) >= (0): ");
    sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1D9D418DC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1D9D3BED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D3BEF0(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_1D9D418C4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_1D9D418DC(v7, "CHECK failed: (n) >= (0): ");
    sub_1D9D41A18(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_1D9D41A20(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1D9D3857C(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_1D9D3BF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1D9D3BFA0(unsigned __int8 *result)
{
  v1 = *(result + 2);
  if ((v1 & 0x80000000) != 0)
  {
    sub_1D9D418C4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_1D9D418DC(v7, "CHECK failed: (n) >= (0): ");
    sub_1D9D41A18(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_1D9D41A20(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1D9D394D0(v4);
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_1D9D3C038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D3C050(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_1D9D418DC(v11, "CHECK failed: (&other) != (this): ");
    sub_1D9D41A18(&v10, &v4->__r_.__value_.__l.__data_);
    result = sub_1D9D41A20(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_1D9D53A3C(v3, v5);
    result = sub_1D9D3C13C(v3, v7, (v6 + 8), v5, **(v3 + 16) - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = *(v3 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void sub_1D9D3C124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

std::string *sub_1D9D3C13C(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = std::string::operator=(v15, v13);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19;
      if (!v18)
      {
        operator new();
      }

      if (*(v18 + 24))
      {
        sub_1D9D3C8C8(v18 + 32);
      }

      v22 = sub_1D9D3FEC4(v18, 0x18uLL, sub_1D9D3BC58);
      v22->__r_.__value_.__r.__words[0] = 0;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      ++v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_1D9D3C244(uint64_t *a1)
{
  sub_1D9D3C280(a1);

  return sub_1D9D34660(a1);
}

void sub_1D9D3C280(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_1D9D383EC(*v3);
          MEMORY[0x1DA741280](v5, 0x1081C400F7E8713);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

unint64_t sub_1D9D3C304(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_1D9D418DC(v11, "CHECK failed: (&other) != (this): ");
    sub_1D9D41A18(&v10, &v4->__r_.__value_.__l.__data_);
    result = sub_1D9D41A20(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_1D9D53A3C(v3, v5);
    result = sub_1D9D3C3F0(v3, v7, (v6 + 8), v5, **(v3 + 16) - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = *(v3 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void sub_1D9D3C3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1D9D3C3F0(unint64_t result, unint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_1D9D3C4A0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_1D9D3B090(v18);
      result = sub_1D9D3C4A0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_1D9D3C4B0(uint64_t *a1)
{
  sub_1D9D3C4EC(a1);

  return sub_1D9D34660(a1);
}

void sub_1D9D3C4EC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_1D9D39378(*v3);
          MEMORY[0x1DA741280](v5, 0x10A1C40F497E4DALL);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_1D9D3C570(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_1D9D418DC(v11, "CHECK failed: (&other) != (this): ");
    sub_1D9D41A18(&v10, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_1D9D53A3C(a1, v5);
    sub_1D9D3C65C(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_1D9D3C644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D3C65C(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_1D9D3C70C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_1D9D3B230(v18);
      sub_1D9D3C70C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

unint64_t sub_1D9D3C748()
{

  return sub_1D9D3FEC4(v0, 0x18uLL, sub_1D9D3BC58);
}

uint64_t *sub_1D9D3C7C0()
{
  result = *(*(v0 + 32) + 32);
  v2 = *result;
  return result;
}

void *sub_1D9D3C838(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_1D9D3C868()
{

  operator new();
}

void sub_1D9D3C880(unint64_t *a1, unint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_1D9D34364(a1);
  }

  sub_1D9D4E600(3, a2, v3);
}

void *sub_1D9D3C9C8(void *a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_1F554DC68;
  v6 = a1 + 1;
  sub_1D9D3F470(a1 + 1);
  if (a3)
  {
    operator new();
  }

  v7 = MEMORY[0x1E69E52F0];
  a1[2] = MEMORY[0x1E69E52F0];
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    v15 = 5;
    sub_1D9D100A8(&v16);
    sub_1D9D12280(&v16, "", 1);
    v8 = strlen(a2);
    sub_1D9D12280(&v16, a2, v8);
    sub_1D9D12280(&v16, ": ", 3);
    v9 = __error();
    sub_1D9D3D690(*v9);
    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = __p[1];
    }

    sub_1D9D12280(&v16, v10, v11);
    sub_1D9D0CE90(&v15, &v21);
    sub_1D9D3F690(v6, &v21);
    sub_1D9D3F478(&v21);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = *MEMORY[0x1E69E54E8];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x1DA7411E0](&v20);
  }

  return a1;
}

void sub_1D9D3CC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1D9D3F478((v16 - 56));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D0CF20(&a15);
  sub_1D9D3F478(v15);
  _Unwind_Resume(a1);
}

void sub_1D9D3CCD4(void *a1)
{
  sub_1D9D3CF18(a1);

  JUMPOUT(0x1DA741280);
}

BOOL sub_1D9D3CD18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v8);
  v6 = sub_1D9D3CF9C(v3, a2, v5);
  return (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
}

BOOL sub_1D9D3CDFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E52F0];
  if (v2 == MEMORY[0x1E69E52F0])
  {
    if (sub_1D9D3D4EC() <= 2)
    {
      v12 = 0;
      v4 = sub_1D9D12280(MEMORY[0x1E69E5300], "filesystem.cc", 13);
      v5 = sub_1D9D12280(v4, "(", 1);
      v6 = MEMORY[0x1DA741080](v5, 55);
      v7 = sub_1D9D12280(v6, ") ", 2);
      v8 = sub_1D9D12280(v7, "LOG(", 4);
      v9 = sub_1D9D12280(v8, "ERROR", 5);
      v10 = sub_1D9D12280(v9, ") ", 2);
      sub_1D9D12280(v10, "ReadAll is not supported for stdin.", 35);
      sub_1D9D103D8(&v12);
    }
  }

  else
  {
    sub_1D9D3D190(a2, *(v2 + *(*v2 - 24) + 40), 0);
  }

  return v2 != v3;
}

void *sub_1D9D3CF18(void *a1)
{
  *a1 = &unk_1F554DC68;
  v2 = a1[2];
  if (v2 != MEMORY[0x1E69E52F0] && v2 != 0)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1D9D3F478(a1 + 1);
  return a1;
}

void *sub_1D9D3CF9C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1DA740FD0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1D9D3D100(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1D9D3D0C0);
  }

  __cxa_rethrow();
}

void sub_1D9D3D190(uint64_t a1, void *a2, void *a3)
{
  sub_1D9D3D210(&__p, a2, a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  MEMORY[0x1DA740EE0](a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D9D3D1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1D9D3D210(std::string *a1, void *a2, void *a3)
{
  v11 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v6 = (*(*a2 + 72))(a2);
        v5 = v6 == -1;
        if (v6 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }

    result = sub_1D9D3D370(&v11);
    if (v5 == result)
    {
      break;
    }

    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(a1, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  return result;
}

void sub_1D9D3D340(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

BOOL sub_1D9D3D370(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[3] != v2[4])
    {
      return 0;
    }

    if ((*(*v2 + 72))(v2) != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

uint64_t sub_1D9D3D3F0()
{
  v0 = atomic_load(&dword_1ECB718B0);
  if (v0 != -1)
  {
    return atomic_load(&dword_1ECB718B0);
  }

  sub_1D9D3D478(&v3);
  v1 = MEMORY[0x1DA7410D0](&v3);
  std::random_device::~random_device(&v3);
  return v1;
}

void sub_1D9D3D450(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12)
{
  std::random_device::~random_device(&a11);
  __cxa_begin_catch(a1);
  atomic_load(v12);
  __cxa_end_catch();
  JUMPOUT(0x1D9D3D43CLL);
}

std::random_device *sub_1D9D3D478(std::random_device *a1)
{
  sub_1D9D94D70(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1D9D3D4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D3D4FC(char *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if ((v3 & 0x80000000) == 0)
  {
    *a3 = 1;
    return *a1;
  }

  v5 = a2 - a1;
  if ((a2 - a1) >= 2)
  {
    if ((v3 & 0xE0) == 0xC0)
    {
      v6 = a1[1];
      if (v6 <= -65)
      {
        v7 = (v3 & 0x1F) << 6;
        if (v7 >= 0x80)
        {
          result = v7 | v6 & 0x3F;
          v8 = 2;
LABEL_8:
          *a3 = v8;
          return result;
        }
      }
    }

    else if (v5 != 2)
    {
      if ((v3 & 0xF0) == 0xE0)
      {
        v9 = a1[1];
        if (v9 <= -65)
        {
          v10 = a1[2];
          if (v10 <= -65)
          {
            v11 = (v3 & 0xF) << 12;
            v12 = v11 & 0xFFFFF03F | ((v9 & 0x3F) << 6);
            if (v12 >= 0x800 && ((v11 - 57344) < 0x102000 || v12 >> 11 <= 0x1A))
            {
              result = v11 & 0xFFFFF000 | ((v9 & 0x3F) << 6) | v10 & 0x3F;
              v8 = 3;
              goto LABEL_8;
            }
          }
        }
      }

      else if (v5 >= 4 && (v3 & 0xF8) == 0xF0)
      {
        v13 = a1[1];
        if (v13 <= -65)
        {
          v14 = a1[2];
          if (v14 <= -65)
          {
            v15 = a1[3];
            if (v15 <= -65)
            {
              v16 = ((v3 & 7) << 18) | ((v13 & 0x3F) << 12);
              if (v16 >= 0x10000)
              {
                result = v15 & 0x3F | ((v14 & 0x3F) << 6) | v16;
                if (v16 - 57344 < 0x102000 || result >> 11 <= 0x1A)
                {
                  v8 = 4;
                  goto LABEL_8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = 1;
  return 65533;
}

uint64_t sub_1D9D3D64C()
{
  if ((*off_1EECD0B50() & 1) == 0)
  {
    sub_1D9D3DB18();
  }

  return off_1EECD0B38(&off_1EECD0B38);
}

uint64_t sub_1D9D3D690(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  strerror_r(a1, __strerrbuf, 0x3FFuLL);
  sub_1D9D100A8(&v7);
  v2 = strlen(__strerrbuf);
  v3 = sub_1D9D12280(&v7, __strerrbuf, v2);
  v4 = sub_1D9D12280(v3, " Error #", 8);
  MEMORY[0x1DA741080](v4, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  result = MEMORY[0x1DA7411E0](&v11);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D9D3D874(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    sub_1D9D3DB9C();
  }

  return (a1 + a2 - 1) / a2 * a2;
}

void sub_1D9D3D89C(std::string *this)
{
  LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if ((size & 3) != 0)
  {
    do
    {
      std::string::push_back(this, 0);
      LOBYTE(v3) = *(&this->__r_.__value_.__s + 23);
      if ((v3 & 0x80u) != 0)
      {
        v3 = this->__r_.__value_.__l.__size_;
      }
    }

    while ((v3 & 3) != 0);
  }
}

void *sub_1D9D3D904@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    *a1 += a2;
    a1[1] = v6;

    return sub_1D9D3F470(a3);
  }

  else
  {
    v9 = 13;
    v7 = sub_1D9D100A8(&v10);
    sub_1D9D12280(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.cc", 63);
    sub_1D9D12280(&v10, "(", 1);
    MEMORY[0x1DA741080](&v10, 287);
    sub_1D9D12280(&v10, ") [", 3);
    sub_1D9D12280(&v10, "string.size() >= size", 21);
    sub_1D9D12280(&v10, "] ", 2);
    sub_1D9D0CE90(&v9, a3);
    v10 = *MEMORY[0x1E69E54E8];
    *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v11 = MEMORY[0x1E69E5548] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    return MEMORY[0x1DA7411E0](&v14);
  }
}

_BYTE *sub_1D9D3DB18()
{
  sub_1D9D3D3F0();
  v0 = off_1EECD0B38(&off_1EECD0B38);
  *v0 = v3;
  do
  {
    v4 = v2(v1);
    *(v4 + 4 * v6) = v5;
  }

  while (v6 != 623);
  *(v2(v1) + 2496) = 0;
  result = off_1EECD0B50();
  *result = 1;
  return result;
}

uint64_t sub_1D9D3DBC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9D2DDBC(a1);
  *v4 = &unk_1F554DCC8;
  v4[1] = a2 + 16;
  sub_1D9D0E29C(v4);
  return a1;
}

void *sub_1D9D3DC30(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = sub_1D9D0C22C(a1, a2, a3, a4);
  *result = &unk_1F554DCC8;
  return result;
}

void sub_1D9D3DC68(void *a1)
{
  sub_1D9D0D13C(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9D3DCA0(uint64_t *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v71 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(v57);
  if (*&v57[0])
  {
    sub_1D9D3F478(v57);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_4;
  }

  sub_1D9D3F478(v57);
  if (!a3)
  {
    goto LABEL_3;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v62 = 0uLL;
  if (a3 >> 59)
  {
    sub_1D9D84AB0();
  }

  sub_1D9D3EB24(v57, a3, 0, &__p);
  v11 = (*(&v57[0] + 1) - (v62 - __p));
  memcpy(v11, __p, v62 - __p);
  v12 = __p;
  v13 = *(&v62 + 1);
  __p = v11;
  v62 = v57[1];
  *&v57[1] = v12;
  *(&v57[1] + 1) = v13;
  *&v57[0] = v12;
  *(&v57[0] + 1) = v12;
  if (v12)
  {
    operator delete(v12);
  }

  memset(v59, 0, sizeof(v59));
  v60 = 1065353216;
  memset(v57 + 8, 0, 40);
  v58 = 256;
  v56[0] = a1;
  v56[1] = v57;
  v56[2] = &__p;
  v56[3] = &v65;
  v56[4] = v59;
  *&v57[0] = &unk_1F554DDE0;
  v14 = 1;
  do
  {
    v64 = 0uLL;
    v15 = sub_1D9D1750C(a1[2], a2, a3, &v63 + 8);
    *&v64 = a2;
    *(&v64 + 1) = v15;
    a3 -= v15;
    if (a3)
    {
      v16 = v14;
    }

    else
    {
      v16 = -1;
    }

    LODWORD(v63) = v14 - 2;
    DWORD1(v63) = v16;
    v17 = v62;
    if (v62 >= *(&v62 + 1))
    {
      v20 = (v62 - __p) >> 5;
      v21 = v20 + 1;
      if ((v20 + 1) >> 59)
      {
        sub_1D9D84AB0();
      }

      v22 = *(&v62 + 1) - __p;
      if ((*(&v62 + 1) - __p) >> 4 > v21)
      {
        v21 = v22 >> 4;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFE0)
      {
        v23 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      sub_1D9D3EB24(&v68, v23, v20, &__p);
      v24 = v70;
      v25 = v64;
      *v70 = v63;
      *(v24 + 16) = v25;
      *&v70 = v70 + 32;
      v26 = &v69[-(v62 - __p)];
      memcpy(v26, __p, v62 - __p);
      v27 = __p;
      v28 = *(&v62 + 1);
      __p = v26;
      v29 = v70;
      v62 = v70;
      *&v70 = v27;
      *(&v70 + 1) = v28;
      v68 = v27;
      v69 = v27;
      if (v27)
      {
        v55 = v29;
        operator delete(v27);
        v29 = v55;
      }

      v19 = v29;
    }

    else
    {
      v18 = v64;
      *v62 = v63;
      *(v17 + 16) = v18;
      v19 = (v17 + 32);
    }

    a2 += v15;
    *&v62 = v19;
    ++v14;
  }

  while (a3);
  if (__p != v19)
  {
    if ((v19 - __p) >= 0x21)
    {
      v30 = 1;
      do
      {
        sub_1D9D3E408(v56, v30 - 1, v30);
        ++v30;
      }

      while (v30 < (v62 - __p) >> 5);
    }

    v31 = v65;
    v32 = v66;
    if (v65 == v66)
    {
LABEL_55:
      *(&v64 + 1) = 0;
      operator new();
    }

    v33 = 0;
    while (1)
    {
      v34 = *v31;
      v35 = v32 - v31;
      if (v35 >= 2)
      {
        v36 = 0;
        v37 = v31;
        do
        {
          v38 = v37;
          v37 += v36 + 1;
          v39 = 2 * v36;
          v36 = (2 * v36) | 1;
          v40 = v39 + 2;
          if (v40 < v35)
          {
            v41 = v37[1];
            v42 = *(*v37 + 2);
            v43 = *(v41 + 2);
            if (v42 < v43 || v42 == v43 && **v37 > *v41)
            {
              ++v37;
              v36 = v40;
            }
          }

          *v38 = *v37;
        }

        while (v36 <= ((v35 - 2) >> 1));
        v44 = v32 - 1;
        if (v37 == v44)
        {
          *v37 = v34;
        }

        else
        {
          *v37 = *v44;
          *v44 = v34;
          sub_1D9D3E7F0(v31, (v37 + 1), v37 + 1 - v31);
        }
      }

      --v66;
      v45 = *v34;
      v46 = *v34;
      v47 = __p;
      v48 = *(__p + 4 * v46 + 3);
      if (!v48)
      {
        goto LABEL_54;
      }

      v49 = v34[1];
      v50 = *(__p + 4 * v49 + 3);
      if (!v50 || v50 + v48 != *(v34 + 2))
      {
        goto LABEL_54;
      }

      if (a5 > 0.0)
      {
        if (a5 >= 1.0)
        {
          goto LABEL_54;
        }

        if (!v33)
        {
          v33 = sub_1D9D3D64C();
        }

        v51 = sub_1D9D2AB1C(v33);
        if ((v51 + sub_1D9D2AB1C(v33) * 4294967300.0) * 5.42101086e-20 < a5)
        {
          goto LABEL_54;
        }

        v47 = __p;
        v45 = *v34;
        v49 = v34[1];
        v46 = *v34;
      }

      v52 = &v47[8 * v46];
      v53 = &v47[8 * v49];
      *(v52 + 3) += *(v53 + 3);
      v54 = *(v53 + 1);
      *(v52 + 1) = v54;
      if ((v54 & 0x80000000) == 0)
      {
        v47[8 * v54] = v45;
      }

      *(v53 + 2) = "";
      *(v53 + 3) = 0;
      sub_1D9D3E408(v56, *(__p + 8 * v46), v45);
      sub_1D9D3E408(v56, *v34, *(__p + 8 * *v34 + 1));
LABEL_54:
      v31 = v65;
      v32 = v66;
      if (v65 == v66)
      {
        goto LABEL_55;
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_1D9D3E724(v57);
  sub_1D9D2D3FC(v59);
  if (__p)
  {
    *&v62 = __p;
    operator delete(__p);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1D9D3E36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  sub_1D9D3EBD4(&a33);
  sub_1D9D3E724(&a18);
  sub_1D9D2D3FC(&a25);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  v35 = *(v33 - 208);
  if (v35)
  {
    *(v33 - 200) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

double sub_1D9D3E408(uint64_t *a1, int a2, int a3)
{
  if (a2 != -1)
  {
    v37[14] = v3;
    v37[15] = v4;
    if (a3 != -1)
    {
      v6 = a2;
      v7 = *a1[2];
      v8 = v7 + 32 * a2;
      if ((*(v8 + 8) & 1) == 0)
      {
        v9 = a3;
        v10 = v7 + 32 * a3;
        if ((*(v10 + 8) & 1) == 0)
        {
          v11 = *a1;
          v12 = *(v8 + 16);
          v13 = *(v10 + 24) + *(v8 + 24);
          v37[0] = v12;
          v37[1] = v13;
          v14 = *(v11 + 40);
          v15 = *v14;
          if (v13)
          {
            v16 = 0;
            v17 = v13;
            while (1)
            {
              v18 = *v12++;
              v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v18;
              v15 = v14[v16];
              if ((v15 & 0x800000FF) != v18)
              {
                break;
              }

              if (!--v17)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            v19 = *v12;
            if (*v12)
            {
              v16 = 0;
              v20 = v12 + 1;
              while (1)
              {
                v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v19;
                v15 = v14[v16];
                if ((v15 & 0x800000FF) != v19)
                {
                  break;
                }

                v21 = *v20++;
                v19 = v21;
                if (!v21)
                {
                  goto LABEL_16;
                }
              }
            }

            else
            {
              v16 = 0;
LABEL_16:
              if ((v15 & 0x100) != 0)
              {
                v22 = v14[v16 ^ (v15 >> 10 << ((v15 >> 6) & 8))];
                v23 = a1[1];
                v24 = v23[5];
                v25 = v23[6];
                v26 = v23[4];
                if (v26 >= v25)
                {
                  v26 = 0;
                  ++v24;
                  v23[4] = 0;
                  v23[5] = v24;
                }

                v27 = v23[1];
                if (v24 == (v23[2] - v27) >> 3)
                {
                  is_mul_ok(v25, 0x18uLL);
                  operator new[]();
                }

                v28 = *(v27 + 8 * v24) + 24 * v26;
                v23[4] = v26 + 1;
                v36 = v28;
                *v28 = a2;
                *(v28 + 4) = a3;
                *(v28 + 8) = (*(*v11 + 136))(v11, v22 & 0x7FFFFFFF);
                *(v28 + 16) = v13;
                v29 = a1[3];
                sub_1D9D30968(v29, &v36);
                sub_1D9D3E7F0(*v29, v29[1], (v29[1] - *v29) >> 3);
                if ((*(**(v11 + 8) + 128))(*(v11 + 8), v22 & 0x7FFFFFFF))
                {
                  v31 = *a1[2];
                  v34 = *(v31 + 32 * v6 + 16);
                  v35 = *(v31 + 32 * v9 + 16);
                  v32 = a1[4];
                  v37[3] = v37;
                  v33 = sub_1D9D3E88C(v32, v37);
                  result = *&v34;
                  *(v33 + 2) = v34;
                  *(v33 + 3) = v35;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9D3E6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_1D9D3EC54();
  }

  return (*(*v4 + 48))(v4, v7, &v6);
}

void *sub_1D9D3E724(void *a1)
{
  *a1 = &unk_1F554DDE0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1DA741250](*v2, 0x1000C801E56706BLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1D9D3E7F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = (result + 8 * (v3 >> 1));
    v6 = *v5;
    v7 = *(a2 - 8);
    v8 = *(*v5 + 8);
    v9 = *(v7 + 8);
    if (v8 < v9 || v8 == v9 && *v6 > *v7)
    {
      *(a2 - 8) = v6;
      if (v3 >= 2)
      {
        v10 = (result + 8 * (v3 >> 1));
        while (1)
        {
          v11 = v4 - 1;
          v4 = (v4 - 1) >> 1;
          v5 = (result + 8 * v4);
          v12 = *v5;
          v13 = *(*v5 + 8);
          if (v13 >= v9 && (v13 != v9 || *v12 <= *v7))
          {
            break;
          }

          *v10 = v12;
          v10 = (result + 8 * v4);
          if (v11 <= 1)
          {
            goto LABEL_13;
          }
        }

        v5 = v10;
      }

LABEL_13:
      *v5 = v7;
    }
  }

  return result;
}

uint64_t **sub_1D9D3E88C(void *a1, uint64_t a2)
{
  v4 = sub_1D9D3EAFC(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

void *sub_1D9D3EB24(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  *result = 0;
  result[1] = 32 * a3;
  result[2] = 32 * a3;
  result[3] = 0;
  return result;
}

void sub_1D9D3EB9C(void *a1)
{
  sub_1D9D3E724(a1);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D3EBD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1D9D3EC54()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

__n128 sub_1D9D3ED1C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F554DE10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1D9D3ED54(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v5 = *a3;
  *&v21 = *a2;
  *(&v21 + 1) = v4;
  v6 = *(a1 + 8);
  v7 = ((*v6)[14])(v6, v21, v4);
  if (v7 != -1 && ((*(*v6[1] + 128))(v6[1], v7) & 1) != 0 && (v8 = sub_1D9D3EF58(*(a1 + 24), &v21)) != 0)
  {
    v9 = v8;
    sub_1D9D3E6C8(*(a1 + 16), v9[4], v9[5], v5);
    sub_1D9D3E6C8(*(a1 + 16), v9[6], v9[7], v5);
  }

  else
  {
    v11 = *(v5 + 8);
    v10 = *(v5 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v5) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1D9D84AB0();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v5) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        sub_1D9D11FDC(v5, v16);
      }

      v17 = 24 * v13;
      *v17 = v21;
      *(v17 + 16) = v7;
      v12 = 24 * v13 + 24;
      v18 = *(v5 + 8) - *v5;
      v19 = v17 - v18;
      memcpy((v17 - v18), *v5, v18);
      v20 = *v5;
      *v5 = v19;
      *(v5 + 8) = v12;
      *(v5 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = v21;
      *(v11 + 16) = v7;
      v12 = v11 + 24;
    }

    *(v5 + 8) = v12;
  }
}

uint64_t sub_1D9D3EF0C(uint64_t a1, uint64_t a2)
{
  if (sub_1D9D3F06C(a2, &unk_1F554DE80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_1D9D3EF58(void *a1, uint64_t a2)
{
  v4 = sub_1D9D3EAFC(a1, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL sub_1D9D3F06C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_1D9D3F0C0(void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9D3F318(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1D9D3FB90(a1);
}

void sub_1D9D3F324()
{
  if (!dword_1ECB71FD8)
  {
    v0 = sub_1D9D3F36C(MEMORY[0x1E69E5300], "Program terminated with an unrecoverable error.");
    v1 = sub_1D9D3F3B4(v0);
    sub_1D9D3F46C(v1);
    exit(-1);
  }

  dword_1ECB71FD8 = 2;
}

void *sub_1D9D3F36C(void *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1D9D12280(a1, __s, v4);
}

void *sub_1D9D3F3B4(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t *sub_1D9D3F478(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1D9D3F864(a1, v2);
  }

  return a1;
}

void sub_1D9D3F5BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_1D9D3F864(v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D9D3F5E0(void *result, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *result = 0;
  return result;
}

void sub_1D9D3F690(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    if (*a2)
    {
      operator new();
    }

    *a1 = 0;
    if (v3)
    {

      sub_1D9D3F864(a1, v3);
    }
  }
}

const char *sub_1D9D3F770(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return "";
  }

  result = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

std::string *sub_1D9D3F79C@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v4 = result;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *v3 - 1;
    if (v5 < 0x10)
    {
      MEMORY[0x1DA740ED0](a2, off_1E858DDC8[v5]);
    }

    std::string::append(a2, ": ");
    v6 = *(v4->__r_.__value_.__r.__words[0] + 31);
    if (v6 >= 0)
    {
      v7 = (v4->__r_.__value_.__r.__words[0] + 8);
    }

    else
    {
      v7 = *(v4->__r_.__value_.__r.__words[0] + 8);
    }

    if (v6 >= 0)
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 31);
    }

    else
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 16);
    }

    return std::string::append(a2, v7, v8);
  }

  else
  {
    *(a2 + 23) = 2;
    strcpy(a2, "OK");
  }

  return result;
}

void sub_1D9D3F844(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9D3F864(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    JUMPOUT(0x1DA741280);
  }
}

void *sub_1D9D3F8C0()
{
  if ((atomic_load_explicit(&qword_1ECB71BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECB71BB8))
  {
    operator new();
  }

  v0 = qword_1ECB71BB0;

  return sub_1D9D3F990(v0);
}

void sub_1D9D3F958(_Unwind_Exception *a1)
{
  MEMORY[0x1DA741280](v1, 0x1000C4000313F17);
  __cxa_guard_abort(&qword_1ECB71BB8);
  _Unwind_Resume(a1);
}

void *sub_1D9D3F990(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v2 = operator new(0x40uLL, 0x40uLL);
    *v2 = xmmword_1D9DDD650;
    v2[2] = 0;
    pthread_setspecific(*a1, v2);
  }

  return v2;
}

uint64_t sub_1D9D3F9F8(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) < a2)
  {
    sub_1D9D418C4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 111);
    v4 = sub_1D9D418DC(v7, "CHECK failed: n <= size_: ");
    sub_1D9D41A18(&v6, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v7);
  }

  return a1 + a2;
}

void sub_1D9D3FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D3FAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = v6 + 72;
  if (v6 + 72 > *(a1 + 16))
  {
    sub_1D9D418C4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 398);
    v8 = sub_1D9D418DC(v13, "CHECK failed: (pos + ArenaImpl::kSerialArenaSize) <= (b->size()): ");
    sub_1D9D41A18(&v12, &v8->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v13);
  }

  v9 = sub_1D9D3F9F8(a1, v6);
  *(a1 + 8) = v7;
  *v9 = a3;
  v9[1] = a2;
  v9[2] = a1;
  v9[5] = sub_1D9D3F9F8(a1, v7);
  v10 = sub_1D9D3F9F8(a1, *(a1 + 16));
  v9[3] = 0;
  v9[7] = 0;
  v9[8] = 0;
  v9[6] = v10;
  return v9;
}

void sub_1D9D3FB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D3FBC0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  if (a2 == -1)
  {
    if (v5)
    {
      v7 = *v5;
    }

    else
    {
      v7 = 256;
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0x2000;
    }

    if (v6 >= 2 * a2)
    {
      v7 = 2 * a2;
    }

    else
    {
      v7 = v6;
    }
  }

  if (a3 >= 0xFFFFFFFFFFFFFFE8)
  {
    sub_1D9D418C4(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 245);
    v8 = sub_1D9D418DC(v12, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - kBlockHeaderSize): ");
    sub_1D9D41A18(&v11, &v8->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v12);
    v5 = *(a1 + 32);
  }

  if (v7 <= a3 + 24)
  {
    v9 = a3 + 24;
  }

  else
  {
    v9 = v7;
  }

  if (v5)
  {
    result = (*(v5 + 16))(v9);
  }

  else
  {
    result = operator new(v9);
  }

  atomic_fetch_add_explicit((a1 + 16), v9, memory_order_relaxed);
  return result;
}

void sub_1D9D3FCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D3FCC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = -1;
  }

  v7 = sub_1D9D3FBC0(a3, v6, a2);

  return sub_1D9D40258(v7, v8, a1, 0, 0);
}

void *sub_1D9D3FD20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = a1[3];
  do
  {
    if (result)
    {
      if ((2 * *result) >= 0x40)
      {
        v7 = 64;
      }

      else
      {
        v7 = 2 * *result;
      }
    }

    else
    {
      v7 = 8;
    }

    result = sub_1D9D3FDBC(a1, (16 * v7 + 23) & 0xFF0);
    v8 = a1[3];
    *result = v7;
    result[1] = v8;
    a1[3] = result;
    a1[7] = (result + 2);
    a1[8] = &result[2 * v7 + 2];
  }

  while (!v7);
  result[2] = a2;
  result[3] = a3;
  a1[7] = (result + 4);
  return result;
}

unint64_t sub_1D9D3FDBC(uint64_t *a1, unint64_t a2)
{
  if (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != a2)
  {
    sub_1D9D418C4(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 159);
    v4 = sub_1D9D418DC(v9, "CHECK failed: (internal::AlignUpTo8(n)) == (n): ");
    sub_1D9D41A18(&v8, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v9);
  }

  result = a1[5];
  v6 = a1[6];
  if (v6 < result)
  {
    sub_1D9D418C4(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 160);
    v7 = sub_1D9D418DC(v9, "CHECK failed: (limit_) >= (ptr_): ");
    sub_1D9D41A18(&v8, &v7->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v9);
    result = a1[5];
    v6 = a1[6];
  }

  if (v6 - result < a2)
  {
    return sub_1D9D40144(a1, a2);
  }

  a1[5] = result + a2;
  return result;
}

void sub_1D9D3FEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1D9D3FEC4(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1D9D3F8C0();
  if (v6[1] == a1[3])
  {
    explicit = v6[2];
    goto LABEL_3;
  }

  v9 = sub_1D9D3F8C0();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v9)
  {
LABEL_3:

    return sub_1D9D3FF70(explicit, a2, a3);
  }

  return sub_1D9D3FFD0(a1, a2, a3);
}

unint64_t sub_1D9D3FF70(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1D9D3FDBC(a1, a2);
  v6 = v5;
  v7 = a1[7];
  if (v7 == a1[8])
  {
    sub_1D9D3FD20(a1, v5, a3);
  }

  else
  {
    *v7 = v5;
    v7[1] = a3;
    a1[7] = (v7 + 2);
  }

  return v6;
}

unint64_t sub_1D9D3FFD0(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1D9D3F8C0();
  v7 = sub_1D9D4007C(a1, v6);

  return sub_1D9D3FF70(v7, a2, a3);
}

unint64_t sub_1D9D40034(void *a1, unint64_t a2)
{
  v4 = sub_1D9D3F8C0();
  v5 = sub_1D9D4007C(a1, v4);

  return sub_1D9D3FDBC(v5, a2);
}

unint64_t sub_1D9D4007C(void *a1, uint64_t a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit)
  {
    while (*(explicit + 8) != a2)
    {
      explicit = *(explicit + 32);
      if (!explicit)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v5 = sub_1D9D3FBC0(a1, -1, 0x48uLL);
    *v5 = xmmword_1D9DDD660;
    v5[2] = v6;
    v7 = sub_1D9D3FAA4(v5, a2, a1);
    explicit = v7;
    v8 = *a1;
    v7[4] = *a1;
    v9 = v8;
    atomic_compare_exchange_strong_explicit(a1, &v9, v7, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      v10 = v9;
      do
      {
        v7[4] = v9;
        atomic_compare_exchange_strong_explicit(a1, &v10, v7, memory_order_release, memory_order_relaxed);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }
  }

  sub_1D9D3F8C0()[2] = explicit;
  v12 = a1[3];
  sub_1D9D3F8C0()[1] = v12;
  atomic_store(explicit, a1 + 1);
  return explicit;
}

uint64_t sub_1D9D40144(uint64_t *a1, unint64_t a2)
{
  v4 = a1[2];
  *(v4 + 8) = *(v4 + 16) - a1[6] + a1[5];
  v5 = sub_1D9D3FCC4(v4, a2, *a1);
  a1[2] = v5;
  a1[5] = sub_1D9D3F9F8(v5, v5[1]);
  a1[6] = sub_1D9D3F9F8(a1[2], *(a1[2] + 16));

  return sub_1D9D3FDBC(a1, a2);
}

unint64_t sub_1D9D401C4(void *a1, unint64_t a2)
{
  v4 = sub_1D9D3F8C0();
  if (v4[1] == a1[3])
  {
    explicit = v4[2];
    goto LABEL_3;
  }

  v7 = sub_1D9D3F8C0();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v7)
  {
LABEL_3:

    return sub_1D9D3FDBC(explicit, a2);
  }

  return sub_1D9D40034(a1, a2);
}

uint64_t *sub_1D9D40258(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v6 = 2;
  if (!a5)
  {
    v6 = 0;
  }

  *a1 = v6 | a4 | a3;
  a1[1] = 24;
  a1[2] = a2;
  if ((a3 & 3) != 0)
  {
    sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 107);
    v7 = sub_1D9D418DC(v10, "CHECK failed: (reinterpret_cast<uintptr_t>(next) & 3) == (0u): ");
    sub_1D9D41A18(&v9, &v7->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v10);
  }

  return a1;
}

void sub_1D9D402EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D40304(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x1DA741270);
  }

  return result;
}

unint64_t sub_1D9D40314(unint64_t *a1)
{
  if ((atomic_load_explicit(&qword_1ECB71B78, memory_order_acquire) & 1) == 0)
  {
    sub_1D9D4099C();
  }

  std::mutex::lock(&stru_1ECB71780);
  explicit = atomic_load_explicit(a1 + 3, memory_order_acquire);
  if (!explicit)
  {
    v3 = a1[1];
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1D9D12168();
    }

    v4 = *a1;
    if (v3 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = v3;
    if (v3)
    {
      memmove(a1, v4, v3);
    }

    *(a1 + v3) = 0;
    atomic_store(a1, a1 + 3);
    explicit = a1;
  }

  std::mutex::unlock(&stru_1ECB71780);
  return explicit;
}

unint64_t sub_1D9D40410(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 != a2)
  {
    sub_1D9D34150(a1);
    if (*(a3 + 23) >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v6 = *a3;
      v7 = *(a3 + 1);
    }

    JUMPOUT(0x1DA740EE0);
  }

  if (!a4)
  {
    operator new();
  }

  if (*(a4 + 24))
  {
    sub_1D9D40A04(a4);
  }

  result = sub_1D9D3FEC4(a4, 0x18uLL, sub_1D9D3BC58);
  v10 = result;
  if (*(a3 + 23) < 0)
  {
    result = sub_1D9D12B94(result, *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(result + 16) = *(a3 + 2);
    *result = v11;
  }

  *a1 = v10;
  return result;
}

void sub_1D9D40554(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 == a2)
  {
    if (!a4)
    {
      operator new();
    }

    if (*(a4 + 24))
    {
      v11 = a4;
      sub_1D9D40A04(a4);
      a4 = v11;
    }

    v9 = sub_1D9D3FEC4(a4, 0x18uLL, sub_1D9D3BC58);
    v10 = *(a3 + 2);
    *v9 = *a3;
    *(v9 + 16) = v10;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    *a1 = v9;
  }

  else
  {
    v6 = sub_1D9D34150(a1);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v8 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v8;
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

uint64_t *sub_1D9D40688(uint64_t *a1, uint64_t a2)
{
  if (*a1 == &qword_1ECB71FE0)
  {
    return sub_1D9D406A4(a1, a2);
  }

  else
  {
    return sub_1D9D34150(a1);
  }
}

uint64_t *sub_1D9D406A4(uint64_t **a1, uint64_t a2)
{
  if (*a1 != &qword_1ECB71FE0)
  {
    sub_1D9D418C4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v4 = sub_1D9D418DC(v7, "CHECK failed: IsDefault(default_value): ");
    sub_1D9D41A18(&v6, &v4->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v7);
  }

  if (!a2)
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    sub_1D9D40A34(a2);
  }

  result = sub_1D9D3FEC4(a2, 0x18uLL, sub_1D9D3BC58);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *a1 = result;
  return result;
}

void sub_1D9D4077C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1D9D40794(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return sub_1D9D34150(a1);
  }

  else
  {
    return sub_1D9D407B0(a1, a3, a2);
  }
}

unint64_t sub_1D9D407B0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    sub_1D9D418C4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v6 = sub_1D9D418DC(v13, "CHECK failed: IsDefault(default_value): ");
    sub_1D9D41A18(&v12, &v6->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v13);
  }

  explicit = atomic_load_explicit((a3 + 24), memory_order_acquire);
  if (explicit)
  {
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator new();
  }

  explicit = sub_1D9D40314(a3);
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(a2 + 24))
  {
    sub_1D9D40A34(a2);
  }

  v8 = sub_1D9D3FEC4(a2, 0x18uLL, sub_1D9D3BC58);
  v9 = v8;
  if (*(explicit + 23) < 0)
  {
    sub_1D9D12B94(v8, *explicit, *(explicit + 8));
  }

  else
  {
    v10 = *explicit;
    *(v8 + 16) = *(explicit + 16);
    *v8 = v10;
  }

  *a1 = v9;
  return v9;
}

std::string *sub_1D9D40914(std::string *result, uint64_t a2)
{
  if (result->__r_.__value_.__r.__words[0])
  {
    v3 = sub_1D9D34150(result);
    explicit = atomic_load_explicit((a2 + 24), memory_order_acquire);
    if (!explicit)
    {
      explicit = sub_1D9D40314(a2);
    }

    return std::string::operator=(v3, explicit);
  }

  return result;
}

uint64_t *sub_1D9D40988(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

void sub_1D9D4099C()
{
  if (__cxa_guard_acquire(&qword_1ECB71B78))
  {
    __cxa_atexit(std::mutex::~mutex, &unk_1ECB71780, &dword_1D9D0A000);

    __cxa_guard_release(&qword_1ECB71B78);
  }
}

int64_t sub_1D9D40A74(uint64_t a1, char *a2)
{
  while (1)
  {
    v5 = *a1;
    v4 = *(a1 + 8);
    if (!v4)
    {
      v10 = v5 - a2;
      v9 = v10 + 16;
      *(a1 + 8) = a2;
      if (((v10 + 16) & 0x80000000) == 0)
      {
        return v9;
      }

      goto LABEL_12;
    }

    v6 = a2 - v5;
    if (a2 <= v5)
    {
      break;
    }

    if (*(a1 + 56) == 1)
    {
      sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 685);
      v7 = sub_1D9D418DC(v15, "CHECK failed: !had_error_: ");
      sub_1D9D41A18(&v14, &v7->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v15);
    }

    if (v6 >= 17)
    {
      sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 686);
      v8 = sub_1D9D418DC(v15, "CHECK failed: overrun <= kSlopBytes: ");
      sub_1D9D41A18(&v14, &v8->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v15);
    }

    a2 = &sub_1D9D40C10(a1)[v6];
    if (*(a1 + 56))
    {
      return 0;
    }
  }

  memcpy(v4, (a1 + 16), &a2[-a1 - 16]);
  v11 = *a1;
  *(a1 + 8) += &a2[-a1 - 16];
  v9 = v11 - a2;
  if (((v11 - a2) & 0x80000000) == 0)
  {
    return v9;
  }

LABEL_12:
  sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 700);
  v12 = sub_1D9D418DC(v15, "CHECK failed: s >= 0: ");
  sub_1D9D41A18(&v14, &v12->__r_.__value_.__l.__data_);
  sub_1D9D41A20(v15);
  return v9;
}

void sub_1D9D40BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D40C10(char **a1)
{
  if (*(a1 + 56) == 1)
  {
    sub_1D9D418C4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 788);
    v2 = sub_1D9D418DC(v13, "CHECK failed: !had_error_: ");
    sub_1D9D41A18(&v12, &v2->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v13);
  }

  if (a1[6])
  {
    v3 = (a1 + 2);
    v5 = *a1;
    v4 = a1[1];
    if (v4)
    {
      memcpy(v4, a1 + 2, v5 - v3);
      v12 = 0;
      do
      {
        v13[0].__r_.__value_.__r.__words[0] = 0;
        if (((*(*a1[6] + 16))(a1[6], v13, &v12) & 1) == 0)
        {
          *(a1 + 56) = 1;
          goto LABEL_14;
        }

        v6 = v12;
      }

      while (!v12);
      v5 = v13[0].__r_.__value_.__r.__words[0];
      if (v12 >= 17)
      {
        *v13[0].__r_.__value_.__l.__data_ = **a1;
        *a1 = &v5[v6 - 16];
        a1[1] = 0;
        return v5;
      }

      if (v12 <= 0)
      {
        v10 = v13[0].__r_.__value_.__r.__words[0];
        sub_1D9D418C4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 810);
        v9 = sub_1D9D418DC(v13, "CHECK failed: size > 0: ");
        sub_1D9D41A18(&v11, &v9->__r_.__value_.__l.__data_);
        sub_1D9D41A20(v13);
        LODWORD(v6) = v12;
        v5 = v10;
      }

      *v3 = **a1;
      v7 = &v3[v6];
    }

    else
    {
      *v3 = *v5;
      v7 = (a1 + 4);
    }

    *a1 = v7;
    a1[1] = v5;
  }

  else
  {
    *(a1 + 56) = 1;
    v3 = (a1 + 2);
LABEL_14:
    *a1 = (a1 + 4);
  }

  return v3;
}

void sub_1D9D40DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D40DCC(uint64_t a1, char *a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = sub_1D9D40A74(a1, a2);
    if (v3)
    {
      (*(**(a1 + 48) + 24))(*(a1 + 48), v3);
    }

    a2 = (a1 + 16);
    *a1 = a1 + 16;
    *(a1 + 8) = a1 + 16;
  }

  return a2;
}

char *sub_1D9D40E38(uint64_t a1, char *a2)
{
  while (*(a1 + 56) != 1)
  {
    v3 = &a2[-*a1];
    if ((v3 & 0x80000000) != 0)
    {
      sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 829);
      v5 = sub_1D9D418DC(v8, "CHECK failed: overrun >= 0: ");
      sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
      goto LABEL_6;
    }

    if (v3 > 0x10)
    {
      sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 830);
      v4 = sub_1D9D418DC(v8, "CHECK failed: overrun <= kSlopBytes: ");
      sub_1D9D41A18(&v7, &v4->__r_.__value_.__l.__data_);
LABEL_6:
      sub_1D9D41A20(v8);
    }

    a2 = &sub_1D9D40C10(a1)[v3];
    if (a2 < *a1)
    {
      return a2;
    }
  }

  return (a1 + 16);
}

void sub_1D9D40F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D40F50(uint64_t *a1, char *a2, int a3, unint64_t a4)
{
  v4 = a4;
  for (i = sub_1D9D40FF4(a1, a4); a3 > i; i = sub_1D9D40FF4(a1, v4))
  {
    memcpy(v4, a2, i);
    a3 -= i;
    a2 += i;
    v4 = sub_1D9D40E38(a1, &v4[i]);
  }

  memcpy(v4, a2, a3);
  return &v4[a3];
}

uint64_t sub_1D9D40FF4(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (*a1 + 16 < a2)
  {
    sub_1D9D418C4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 838);
    v5 = sub_1D9D418DC(v8, "CHECK failed: ptr <= end_ + kSlopBytes: ");
    sub_1D9D41A18(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v8);
    v3 = *a1;
  }

  return v3 - a2 + 16;
}

void sub_1D9D41078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D41090(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  if (sub_1D9D40FF4(a1, a4) <= a3)
  {
    v8 = sub_1D9D40DCC(a1, a4);
    if (((*(**(a1 + 48) + 40))(*(a1 + 48), a2, a3) & 1) == 0)
    {
      *(a1 + 56) = 1;
      v8 = (a1 + 16);
      *a1 = a1 + 32;
    }

    return v8;
  }

  if (*a1 - a4 >= a3)
  {
    memcpy(a4, a2, a3);
    return &a4[a3];
  }

  return sub_1D9D40F50(a1, a2, a3, a4);
}

char *sub_1D9D41198(unint64_t *a1, int a2, void **a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_1D9D40E38(a1, a4);
    v8 = *a1;
  }

  if (*(a3 + 23) >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  if (v8 <= v4)
  {
    sub_1D9D418C4(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_1D9D418DC(v23, "CHECK failed: ptr < end_: ");
    sub_1D9D41A18(&v22, &v10->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v23);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  return sub_1D9D41320(a1, v18, v9, v17);
}

void sub_1D9D41308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D41320(uint64_t a1, void *a2, uint64_t a3, char *__dst)
{
  if (*(a1 + 57) == 1)
  {

    return sub_1D9D41090(a1, a2, a3, __dst);
  }

  else if (*a1 - __dst < a3)
  {

    return sub_1D9D40F50(a1, a2, a3, __dst);
  }

  else
  {
    v6 = a3;
    memcpy(__dst, a2, a3);
    return &__dst[v6];
  }
}

char *sub_1D9D413B0(uint64_t *a1, int a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_1D9D40E38(a1, a4);
    v8 = *a1;
  }

  if (*(a3 + 23) >= 0)
  {
    LODWORD(v9) = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  if (v8 <= v4)
  {
    sub_1D9D418C4(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_1D9D418DC(v23, "CHECK failed: ptr < end_: ");
    sub_1D9D41A18(&v22, &v10->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v23);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (*a1 - v17 < v9)
  {
    return sub_1D9D40F50(a1, v18, v9, v17);
  }

  memcpy(v17, v18, v9);
  return &v17[v9];
}

void sub_1D9D41548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void sub_1D9D41560(int a1, int a2, const std::string::value_type *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2 > 3014000)
  {
    LODWORD(v21) = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v23 = 76;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program requires version ");
    sub_1D9D4194C(a2, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v6 = &v18;
    }

    else
    {
      v6 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = v19;
    }

    std::string::append(&v24, v6, v7);
    std::string::append(&v24, " of the Protocol Buffer runtime library, but the installed version is ");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v26 = 0;
    sub_1D9D94D70(&__p, __str);
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v9 = v17;
    }

    else
    {
      v9 = v16;
    }

    std::string::append(&v24, p_p, v9);
    std::string::append(&v24, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    sub_1D9D41BD4(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (a1 < 3014000)
  {
    LODWORD(v21) = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v23 = 87;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program was compiled against version ");
    sub_1D9D4194C(a1, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v10 = &v18;
    }

    else
    {
      v10 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = v19;
    }

    std::string::append(&v24, v10, v11);
    std::string::append(&v24, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v26 = 0;
    sub_1D9D94D70(&__p, __str);
    if ((v17 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v16;
    }

    std::string::append(&v24, v12, v13);
    std::string::append(&v24, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    sub_1D9D41BD4(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1D9D41854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9D418C4(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *sub_1D9D41908(std::string *a1, const std::string::value_type *a2)
{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  std::string::append(a1 + 1, a2, v4);
  return a1;
}

_BYTE *sub_1D9D4194C@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x80uLL, "%d.%d.%d", a1 / 1000000, a1 / 1000 % 1000, a1 % 1000);
  __str[127] = 0;
  result = sub_1D9D94D70(a2, __str);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9D41A20(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_1D9D41A54(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = MEMORY[0x1E69E9848];
    if (*(a4 + 23) >= 0)
    {
      v5 = a4;
    }

    else
    {
      v5 = *a4;
    }

    fprintf(*MEMORY[0x1E69E9848], "[libprotobuf %s %s:%d] %s\n", off_1E858DE48[result], a2, a3, v5);
    v6 = *v4;

    return fflush(v6);
  }

  return result;
}

std::string *sub_1D9D41AD4(std::string *a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

std::string *sub_1D9D41B54(std::string *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

const char **sub_1D9D41BD4(const char **result)
{
  v1 = result;
  if (*result == 3)
  {
    v2 = 3;
  }

  else
  {
    v3 = atomic_load(&unk_1ECB71BC0);
    if (v3 > 0)
    {
      goto LABEL_6;
    }

    v2 = *result;
  }

  result = off_1EECD0B30(v2, v1[1], *(v1 + 4), (v1 + 3));
LABEL_6:
  if (*v1 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_1D9D41C94(exception, v1[1], *(v1 + 4), v1 + 3);
    __cxa_throw(exception, &unk_1F554DE90, sub_1D9D41C98);
  }

  return result;
}

void sub_1D9D41C9C(std::exception *this)
{
  this->__vftable = &unk_1F554DEB8;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

void sub_1D9D41CFC(std::exception *a1)
{
  sub_1D9D41C9C(a1);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9D41D34(uint64_t a1)
{
  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_1D9D41D50(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_1F554DEB8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_1D9D12B94((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

uint64_t sub_1D9D41DD0(uint64_t a1, int a2, _OWORD *a3)
{
  if (qword_1ECB71BC8)
  {
    v3 = *(qword_1ECB71BC8 + 8);
    if (v3)
    {
      v4 = *(a1 + 8);
      v5 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
      v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
      v7 = (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47))) ^ a2;
      v8 = vcnt_s8(v3);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = v7;
        if (v7 >= *&v3)
        {
          v9 = v7 % *&v3;
        }
      }

      else
      {
        v9 = (*&v3 - 1) & v7;
      }

      v10 = *(*qword_1ECB71BC8 + 8 * v9);
      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = i[1];
          if (v7 == v12)
          {
            if (i[2] == v4 && *(i + 6) == a2)
            {
              v14 = *(i + 3);
              *a3 = *(i + 2);
              a3[1] = v14;
              return 1;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v12 >= *&v3)
              {
                v12 %= *&v3;
              }
            }

            else
            {
              v12 &= *&v3 - 1;
            }

            if (v12 != v9)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D9D41EE4(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1D9D41EF4(uint64_t a1)
{
  if (!*a1)
  {
    v2 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_1D9D4B818(*v2, (v2 + 8));
    }

    else if (*(a1 + 10))
    {
      v3 = 32 * *(a1 + 10);
      v4 = (v2 + 8);
      do
      {
        sub_1D9D4B540(v4);
        v4 += 32;
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_1D9D4C910(v5 == 0, *(a1 + 16));
    }

    else if (v5)
    {
      MEMORY[0x1DA741250](*(a1 + 16), 0x1062C802AB6010CLL);
    }
  }

  return a1;
}

unsigned __int8 *sub_1D9D41FB4(unsigned __int8 *result)
{
  v1 = result;
  if (result[9] == 1)
  {
    v2 = result[8];
    if ((v2 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v3 = sub_1D9D418DC(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v10, &v3->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v11);
    }

    v4 = dword_1D9DDD9F0[v2];
    if (v4 > 5)
    {
      if (v4 <= 8)
      {
LABEL_20:
        **v1 = 0;
        return result;
      }

      if (v4 == 9)
      {
        return sub_1D9D3BD4C(*v1);
      }

      else if (v4 == 10)
      {
        return sub_1D9D4C110(*v1);
      }
    }

    else if (v4 > 2 || v4 == 1 || v4 == 2)
    {
      goto LABEL_20;
    }
  }

  else if ((result[10] & 1) == 0)
  {
    v5 = result[8];
    if ((v5 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v6 = sub_1D9D418DC(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v10, &v6->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v11);
    }

    v7 = dword_1D9DDD9F0[v5];
    if (v7 == 10)
    {
      v9 = **v1;
      if ((v1[10] & 0x10) != 0)
      {
        result = (*(v9 + 112))();
      }

      else
      {
        result = (*(v9 + 40))();
      }
    }

    else if (v7 == 9)
    {
      v8 = *v1;
      if (*(*v1 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
      }
    }

    v1[10] = v1[10] & 0xF0 | 1;
  }

  return result;
}

void sub_1D9D421D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D421F0(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_1D9D469D0(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[a3] != 1)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v12 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_1D9D41A18(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v13 = sub_1D9D418DC(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1D9D41A18(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[v14] != 1)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v16 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_1D9D41A18(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1D9D423CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D42404(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_1D9D469D0(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[a3] != 1)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v15 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_1D9D41A18(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_1D9D4C968(*a1);
    }

    v17 = sub_1D9D3FEC4(v16, 0x10uLL, sub_1D9D4B888);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v18 = sub_1D9D418DC(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1D9D41A18(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[v19] != 1)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v21 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_1D9D41A18(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v22 = sub_1D9D418DC(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1D9D41A18(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1D9D51444(v23, v24 + 1);
    result = sub_1D9D518B4(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_1D9D518B4(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1D9D426D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D42714(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_1D9D469D0(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[a3] != 2)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v12 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_1D9D41A18(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v13 = sub_1D9D418DC(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1D9D41A18(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[v14] != 2)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v16 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_1D9D41A18(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1D9D428F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D42928(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1D9D469D0(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[a3] != 2)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v15 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_1D9D41A18(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_1D9D4C9A8(*a1);
    }

    v17 = sub_1D9D3FEC4(v16, 0x10uLL, sub_1D9D4B88C);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v18 = sub_1D9D418DC(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1D9D41A18(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[v19] != 2)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v21 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_1D9D41A18(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v22 = sub_1D9D418DC(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1D9D41A18(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1D9D5209C(v23, v24 + 1);
    result = sub_1D9D5250C(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_1D9D5250C(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1D9D42BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D42C38(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_1D9D469D0(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[a3] != 3)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v12 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_1D9D41A18(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v13 = sub_1D9D418DC(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1D9D41A18(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[v14] != 3)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v16 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_1D9D41A18(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1D9D42E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D42E4C(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_1D9D469D0(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[a3] != 3)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v15 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_1D9D41A18(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_1D9D4C9E8(*a1);
    }

    v17 = sub_1D9D3FEC4(v16, 0x10uLL, sub_1D9D4B890);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v18 = sub_1D9D418DC(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1D9D41A18(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[v19] != 3)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v21 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_1D9D41A18(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v22 = sub_1D9D418DC(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1D9D41A18(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1D9D51A70(v23, v24 + 1);
    result = sub_1D9D51EE0(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_1D9D51EE0(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1D9D4311C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D4315C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_1D9D469D0(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[a3] != 4)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v12 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_1D9D41A18(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v13 = sub_1D9D418DC(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1D9D41A18(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[v14] != 4)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v16 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_1D9D41A18(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1D9D43338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D43370(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1D9D469D0(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[a3] != 4)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v15 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_1D9D41A18(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_1D9D4CA28(*a1);
    }

    v17 = sub_1D9D3FEC4(v16, 0x10uLL, sub_1D9D4B894);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v18 = sub_1D9D418DC(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1D9D41A18(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[v19] != 4)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v21 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_1D9D41A18(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v22 = sub_1D9D418DC(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1D9D41A18(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1D9D526C8(v23, v24 + 1);
    result = sub_1D9D52B38(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_1D9D52B38(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1D9D43640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D43680(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  result = sub_1D9D469D0(a1, a2);
  v9 = result;
  *(result + 16) = a4;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[a3] != 6)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v12 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_1D9D41A18(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v13 = sub_1D9D418DC(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1D9D41A18(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[v14] != 6)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v16 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_1D9D41A18(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
  return result;
}

void sub_1D9D43864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D4389C(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, float a6)
{
  v11 = sub_1D9D469D0(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[a3] != 6)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v15 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_1D9D41A18(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_1D9D4CA68(*a1);
    }

    v17 = sub_1D9D3FEC4(v16, 0x10uLL, sub_1D9D4B898);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v18 = sub_1D9D418DC(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1D9D41A18(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[v19] != 6)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v21 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_1D9D41A18(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v22 = sub_1D9D418DC(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1D9D41A18(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1D9D52CF4(v23, v24 + 1);
    result = sub_1D9D53164(v23);
    *(result + 4 * v24) = a6;
  }

  else
  {
    result = sub_1D9D53164(v23);
    *(result + 4 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1D9D43B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D43BB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  result = sub_1D9D469D0(a1, a2);
  v9 = result;
  *(result + 16) = a4;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[a3] != 5)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v12 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_1D9D41A18(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v13 = sub_1D9D418DC(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1D9D41A18(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[v14] != 5)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v16 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_1D9D41A18(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
  return result;
}

void sub_1D9D43D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D43DD0(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6)
{
  v11 = sub_1D9D469D0(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[a3] != 5)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v15 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_1D9D41A18(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_1D9D4CAA8(*a1);
    }

    v17 = sub_1D9D3FEC4(v16, 0x10uLL, sub_1D9D4B89C);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v18 = sub_1D9D418DC(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1D9D41A18(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[v19] != 5)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v21 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_1D9D41A18(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v22 = sub_1D9D418DC(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1D9D41A18(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1D9D53320(v23, v24 + 1);
    result = sub_1D9D53790(v23);
    *(result + 8 * v24) = a6;
  }

  else
  {
    result = sub_1D9D53790(v23);
    *(result + 8 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1D9D440A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D440E8(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  result = sub_1D9D469D0(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[a3] != 7)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v12 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_1D9D41A18(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    v9[9] = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v13 = sub_1D9D418DC(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1D9D41A18(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    v14 = v9[8];
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[v14] != 7)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v16 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_1D9D41A18(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }
  }

  v9[10] &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1D9D442C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D442FC(uint64_t *a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6)
{
  v11 = sub_1D9D469D0(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[a3] != 7)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v15 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_1D9D41A18(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_1D9D4CAE8(*a1);
    }

    v17 = sub_1D9D3FEC4(v16, 0x10uLL, sub_1D9D4B8A0);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v18 = sub_1D9D418DC(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1D9D41A18(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[v19] != 7)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v21 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_1D9D41A18(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v22 = sub_1D9D418DC(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1D9D41A18(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1D9D50E20(v23, v24 + 1);
    result = sub_1D9D5128C(v23);
    *(result + v24) = a5;
  }

  else
  {
    result = sub_1D9D5128C(v23);
    *(result + v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1D9D445CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D4460C(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v9 = sub_1D9D469D0(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if ((v11 & 1) == 0)
  {
    return *v10;
  }

  *(v9 + 9) = 1;
  *(v9 + 8) = a3;
  *(v9 + 11) = a4;
  v12 = dword_1D9DDD9F0[a3];
  if (v12 > 5)
  {
    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            sub_1D9D4CBE8(v13);
          }

          v14 = sub_1D9D4B898;
          goto LABEL_48;
        }
      }

      else
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            sub_1D9D4CBB8(v13);
          }

          v14 = sub_1D9D4B8A0;
          goto LABEL_48;
        }
      }

      goto LABEL_49;
    }

    switch(v12)
    {
      case 8:
        v13 = *a1;
        if (!v13)
        {
          goto LABEL_49;
        }

        if (*(v13 + 24))
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 9:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            sub_1D9D4CB58(v15);
          }

          v16 = sub_1D9D4B8A4;
          goto LABEL_54;
        }

        break;
      case 10:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            sub_1D9D4CB28(v15);
          }

          v16 = sub_1D9D4B8A8;
LABEL_54:
          v17 = sub_1D9D3FEC4(v15, 0x18uLL, v16);
          v17[2] = 0;
          *v17 = v15;
          v17[1] = 0;
          goto LABEL_56;
        }

        break;
      default:
        return *v10;
    }

    operator new();
  }

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_1D9D4CC78(v13);
        }

        v14 = sub_1D9D4B890;
        goto LABEL_48;
      }
    }

    else if (v12 == 4)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_1D9D4CC48(v13);
        }

        v14 = sub_1D9D4B894;
        goto LABEL_48;
      }
    }

    else
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_1D9D4CC18(v13);
        }

        v14 = sub_1D9D4B89C;
        goto LABEL_48;
      }
    }

LABEL_49:
    operator new();
  }

  if (v12 == 1)
  {
    v13 = *a1;
    if (!v13)
    {
      goto LABEL_49;
    }

    if (*(v13 + 24))
    {
LABEL_42:
      sub_1D9D4CB88(v13);
    }

LABEL_43:
    v14 = sub_1D9D4B888;
LABEL_48:
    v17 = sub_1D9D3FEC4(v13, 0x10uLL, v14);
    *v17 = 0;
    v17[1] = v13;
LABEL_56:
    *v10 = v17;
    return *v10;
  }

  if (v12 == 2)
  {
    v13 = *a1;
    if (v13)
    {
      if (*(v13 + 24))
      {
        sub_1D9D4CCA8(v13);
      }

      v14 = sub_1D9D4B88C;
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  return *v10;
}

uint64_t sub_1D9D448FC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_1D9D469D0(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[a3] != 8)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 460);
      v12 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_1D9D41A18(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v13 = sub_1D9D418DC(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1D9D41A18(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1D9D418DC(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }

    if (dword_1D9DDD9F0[v14] != 8)
    {
      sub_1D9D418C4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v16 = sub_1D9D418DC(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_1D9D41A18(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1D9D41A20(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1D9D44AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D44B10(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_1D9D469D0(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[a3] != 8)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 488);
      v15 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_1D9D41A18(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_1D9D4C968(*a1);
    }

    v17 = sub_1D9D3FEC4(v16, 0x10uLL, sub_1D9D4B888);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v18 = sub_1D9D418DC(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1D9D41A18(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1D9D418DC(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (dword_1D9DDD9F0[v19] != 8)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v21 = sub_1D9D418DC(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_1D9D41A18(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1D9D418C4(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 495);
      v22 = sub_1D9D418DC(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1D9D41A18(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1D9D51444(v23, v24 + 1);
    result = sub_1D9D518B4(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_1D9D518B4(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1D9D44DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D44E20(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_1D9D469D0(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_1D9D418DC(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v19, &v10->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v20);
    }

    if (dword_1D9DDD9F0[a3] != 9)
    {
      sub_1D9D418C4(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 520);
      v11 = sub_1D9D418DC(v20, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_1D9D41A18(&v19, &v11->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v20);
    }

    v8[9] = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      sub_1D9D40A34(v12);
    }

    v13 = sub_1D9D3FEC4(v12, 0x18uLL, sub_1D9D3BC58);
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    *v8 = v13;
  }

  else
  {
    if (*(v7 + 9))
    {
      sub_1D9D418C4(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v14 = sub_1D9D418DC(v20, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1D9D41A18(&v19, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v20);
    }

    v15 = v8[8];
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_1D9D418DC(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v19, &v16->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v20);
    }

    if (dword_1D9DDD9F0[v15] != 9)
    {
      sub_1D9D418C4(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v17 = sub_1D9D418DC(v20, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_1D9D41A18(&v19, &v17->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v20);
    }
  }

  v8[10] &= 0xF0u;
  return *v8;
}

void sub_1D9D4505C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

void *sub_1D9D45094(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_1D9D469D0(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_1D9D418DC(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v26, &v10->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v27);
    }

    if (dword_1D9DDD9F0[a3] != 9)
    {
      sub_1D9D418C4(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 550);
      v11 = sub_1D9D418DC(v27, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_1D9D41A18(&v26, &v11->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v27);
    }

    *(v8 + 9) = 1;
    *(v8 + 11) = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      sub_1D9D4CCD8(v12);
    }

    v13 = sub_1D9D3FEC4(v12, 0x18uLL, sub_1D9D4B8A4);
    v13[2] = 0;
    *v13 = v12;
    v13[1] = 0;
    *v8 = v13;
  }

  else
  {
    if ((*(v7 + 9) & 1) == 0)
    {
      sub_1D9D418C4(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v14 = sub_1D9D418DC(v27, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1D9D41A18(&v26, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v27);
    }

    v15 = *(v8 + 8);
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_1D9D418DC(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v26, &v16->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v27);
    }

    if (dword_1D9DDD9F0[v15] != 9)
    {
      sub_1D9D418C4(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v17 = sub_1D9D418DC(v27, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_1D9D41A18(&v26, &v17->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v27);
    }
  }

  v18 = *v8;
  v19 = *(v18 + 16);
  if (!v19)
  {
    v21 = *(v18 + 12);
LABEL_22:
    sub_1D9D53A28(v18, v21 + 1);
    v19 = *(v18 + 16);
    v21 = *v19;
    goto LABEL_23;
  }

  v20 = *(v18 + 8);
  v21 = *v19;
  if (v20 < *v19)
  {
    *(v18 + 8) = v20 + 1;
    return *&v19[2 * v20 + 2];
  }

  if (v21 == *(v18 + 12))
  {
    goto LABEL_22;
  }

LABEL_23:
  *v19 = v21 + 1;
  v23 = *v18;
  if (!*v18)
  {
    operator new();
  }

  if (*(v23 + 24))
  {
    sub_1D9D40A34(*v18);
  }

  result = sub_1D9D3FEC4(v23, 0x18uLL, sub_1D9D3BC58);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v24 = *(v18 + 8);
  v25 = *(v18 + 16) + 8 * v24;
  *(v18 + 8) = v24 + 1;
  *(v25 + 8) = result;
  return result;
}

void sub_1D9D453A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D453E0(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9D469D0(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_1D9D418DC(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v20, &v12->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v21);
    }

    if (dword_1D9DDD9F0[a3] != 10)
    {
      sub_1D9D418C4(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 591);
      v13 = sub_1D9D418DC(v21, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_1D9D41A18(&v20, &v13->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v21);
    }

    *(v10 + 9) = 0;
    *(v10 + 10) &= 0xFu;
    result = (*(*a4 + 32))(a4, *a1);
    *v10 = result;
    *(v10 + 10) &= 0xF0u;
  }

  else
  {
    if (*(v9 + 9))
    {
      sub_1D9D418C4(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v15 = sub_1D9D418DC(v21, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1D9D41A18(&v20, &v15->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v21);
    }

    v16 = *(v10 + 8);
    if ((v16 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v17 = sub_1D9D418DC(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v20, &v17->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v21);
    }

    if (dword_1D9DDD9F0[v16] != 10)
    {
      sub_1D9D418C4(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v18 = sub_1D9D418DC(v21, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_1D9D41A18(&v20, &v18->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v21);
    }

    v19 = *(v10 + 10);
    *(v10 + 10) = v19 & 0xF0;
    result = *v10;
    if ((v19 & 0x10) != 0)
    {
      return (*(*result + 32))(result, a4);
    }
  }

  return result;
}

void sub_1D9D4563C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D45674(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9D469D0(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_1D9D418DC(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v25, &v12->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v26);
    }

    if (dword_1D9DDD9F0[a3] != 10)
    {
      sub_1D9D418C4(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 762);
      v13 = sub_1D9D418DC(v26, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_1D9D41A18(&v25, &v13->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v26);
    }

    v10[9] = 1;
    v14 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v14 + 24))
    {
      sub_1D9D4CD18(*a1);
    }

    v15 = sub_1D9D3FEC4(v14, 0x18uLL, sub_1D9D4B8A8);
    v15[2] = 0;
    *v15 = v14;
    v15[1] = 0;
    *v10 = v15;
  }

  else
  {
    if ((*(v9 + 9) & 1) == 0)
    {
      sub_1D9D418C4(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v16 = sub_1D9D418DC(v26, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1D9D41A18(&v25, &v16->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v26);
    }

    v17 = v10[8];
    if ((v17 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v18 = sub_1D9D418DC(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v25, &v18->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v26);
    }

    if (dword_1D9DDD9F0[v17] != 10)
    {
      sub_1D9D418C4(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v19 = sub_1D9D418DC(v26, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_1D9D41A18(&v25, &v19->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v26);
    }
  }

  v20 = *v10;
  v21 = *(*v10 + 16);
  if (!v21 || (v22 = *(v20 + 8), v22 >= *v21) || (*(v20 + 8) = v22 + 1, (v23 = *&v21[2 * v22 + 2]) == 0))
  {
    v23 = (*(*a4 + 32))(a4, *a1);
    sub_1D9D4B9C0(*v10, v23);
  }

  return v23;
}

void sub_1D9D4592C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1D9D45964(unsigned __int8 *result)
{
  v2 = *(result + 2);
  if (*(result + 4) >= 0x101u)
  {
    v7 = *v2;
    v6 = (v2 + 1);
    v5 = v7;

    return sub_1D9D4BAF4(v5, v6);
  }

  else if (*(result + 5))
  {
    v3 = 32 * *(result + 5);
    v4 = (v2 + 1);
    do
    {
      result = sub_1D9D41FB4(v4);
      v4 += 32;
      v3 -= 32;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D9D459CC(uint64_t result, size_t __sz)
{
  v2 = *(result + 8);
  if (v2 <= 0x100 && v2 < __sz)
  {
    v4 = result;
    do
    {
      if (v2)
      {
        LOWORD(v2) = 4 * v2;
      }

      else
      {
        LOWORD(v2) = 1;
      }
    }

    while (v2 < __sz);
    v5 = *(result + 16);
    v6 = *(result + 10);
    v7 = *result;
    if (v2 < 0x101u)
    {
      v8 = 32 * v2;
      if (v7)
      {
        if (*(v7 + 24))
        {
          sub_1D9D4CD58(*result);
          v8 = 32 * v2;
        }

        result = sub_1D9D401C0(v7, v8);
      }

      else
      {
        result = operator new[](32 * v2);
      }

      v9 = result;
      if (v6)
      {
        result = memmove(result, v5, 32 * v6);
      }
    }

    else
    {
      if (!v7)
      {
        operator new();
      }

      if (*(v7 + 24))
      {
        sub_1D9D4CD94(*result);
      }

      result = sub_1D9D3FEC4(v7, 0x18uLL, sub_1D9D4C338);
      v9 = result;
      *(result + 8) = 0;
      v10 = (result + 8);
      *(result + 16) = 0;
      *result = result + 8;
      if (v6)
      {
        v11 = &v5[32 * v6];
        v12 = v5;
        do
        {
          v15 = *v12;
          v13 = *(v12 + 3);
          v16 = *(v12 + 8);
          v17 = v13;
          result = sub_1D9D4C340(v9, v10, &v15);
          v10 = result;
          v12 += 32;
        }

        while (v12 != v11);
      }
    }

    if (*v4)
    {
      v14 = 1;
    }

    else
    {
      v14 = v5 == 0;
    }

    if (!v14)
    {
      result = MEMORY[0x1DA741250](v5, 0x1062C802AB6010CLL);
    }

    *(v4 + 8) = v2;
    *(v4 + 16) = v9;
    if (v2 >= 0x101u)
    {
      *(v4 + 10) = 0;
    }
  }

  return result;
}

uint64_t sub_1D9D45B8C(char *a1, char *a2, void *a3, void *a4)
{
  v4 = 0;
  if (a1 != a2 && a3 != a4)
  {
    v4 = 0;
    do
    {
      v5 = *(a3 + 8);
      if (*a1 >= v5)
      {
        if (*a1 == v5)
        {
          a1 += 32;
          v6 = a3[1];
          if (v6)
          {
            do
            {
              a3 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = a3;
              a3 = a3[2];
            }

            while (*a3 != v7);
          }
        }

        else
        {
          v8 = a3[1];
          if (v8)
          {
            do
            {
              a3 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = a3;
              a3 = a3[2];
            }

            while (*a3 != v9);
          }
        }
      }

      else
      {
        a1 += 32;
      }

      ++v4;
    }

    while (a1 != a2 && a3 != a4);
  }

  if (a3 == a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = a3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = a3[2];
          v13 = *v12 == a3;
          a3 = v12;
        }

        while (!v13);
      }

      ++v10;
      a3 = v12;
    }

    while (v12 != a4);
  }

  return v4 + ((a2 - a1) >> 5) + v10;
}

void sub_1D9D45C94(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a3 + 9) != 1)
  {
    if (*(a3 + 10))
    {
      return;
    }

    v11 = *(a3 + 8);
    if ((v11 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_1D9D418DC(v69, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v68, &v12->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v69);
    }

    v13 = dword_1D9DDD9F0[v11];
    if (v13 <= 5)
    {
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          sub_1D9D421F0(a1, a2, *(a3 + 8), *a3, a3[2]);
        }

        else if (v13 == 2)
        {
          sub_1D9D42714(a1, a2, *(a3 + 8), *a3, a3[2]);
        }
      }

      else if (v13 == 3)
      {
        sub_1D9D42C38(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      else if (v13 == 4)
      {
        sub_1D9D4315C(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      else
      {
        sub_1D9D43BB4(a1, a2, *(a3 + 8), a3[2], *a3);
      }

      return;
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        sub_1D9D43680(a1, a2, *(a3 + 8), a3[2], *a3);
      }

      else
      {
        sub_1D9D440E8(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      return;
    }

    if (v13 == 8)
    {
      sub_1D9D448FC(a1, a2, *(a3 + 8), *a3, a3[2]);
      return;
    }

    if (v13 == 9)
    {
      v44 = *(a3 + 8);
      v45 = *a3;
      if (*(*a3 + 23) < 0)
      {
        sub_1D9D12B94(&v66, *v45, *(v45 + 1));
      }

      else
      {
        v46 = *v45;
        v67 = *(v45 + 2);
        v66 = v46;
      }

      v54 = sub_1D9D44E20(a1, a2, v44, a3[2]);
      v55 = v54;
      if (*(v54 + 23) < 0)
      {
        operator delete(*v54);
      }

      v56 = v66;
      *(v55 + 16) = v67;
      *v55 = v56;
      return;
    }

    if (v13 != 10)
    {
      return;
    }

    v24 = a3[2];
    v25 = sub_1D9D469D0(a1, a2);
    v26 = v25;
    v25[2] = v24;
    if (v27)
    {
      *(v25 + 8) = *(a3 + 8);
      *(v25 + 11) = *(a3 + 11);
      *(v25 + 9) = 0;
      v28 = *(v25 + 10) & 0xF;
      if ((*(a3 + 10) & 0x10) != 0)
      {
        *(v25 + 10) = v28 | 0x10;
        v65 = (*(**a3 + 16))(*a3, *a1);
        *v26 = v65;
        (*(*v65 + 104))(v65, *a3);
        goto LABEL_151;
      }

      *(v25 + 10) = v28;
      v29 = (*(**a3 + 32))(*a3, *a1);
      *v26 = v29;
LABEL_118:
      (*(*v29 + 64))(v29, *a3);
LABEL_151:
      *(v26 + 10) &= 0xF0u;
      return;
    }

    if (*(v25 + 8) != *(a3 + 8))
    {
      sub_1D9D418C4(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1026);
      v47 = sub_1D9D418DC(v69, "CHECK failed: (extension->type) == (other_extension.type): ");
      sub_1D9D41A18(&v68, &v47->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v69);
    }

    if (*(v26 + 11) != *(a3 + 11))
    {
      sub_1D9D418C4(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1027);
      v48 = sub_1D9D418DC(v69, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      sub_1D9D41A18(&v68, &v48->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v69);
    }

    if (*(v26 + 9) == 1)
    {
      sub_1D9D418C4(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1028);
      v49 = sub_1D9D418DC(v69, "CHECK failed: !extension->is_repeated: ");
      sub_1D9D41A18(&v68, &v49->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v69);
    }

    v50 = *(v26 + 10);
    v51 = *v26;
    v52 = *a3;
    if ((*(a3 + 10) & 0x10) != 0)
    {
      if ((*(v26 + 10) & 0x10) != 0)
      {
        (*(*v51 + 104))(*v26, v52);
        goto LABEL_151;
      }

      v52 = (*(*v52 + 24))(*a3, *v26);
      v53 = *v51;
    }

    else
    {
      v53 = *v51;
      if ((*(v26 + 10) & 0x10) != 0)
      {
        v29 = (*(v53 + 32))(*v26, v52);
        goto LABEL_118;
      }
    }

    (*(v53 + 64))(v51, v52);
    goto LABEL_151;
  }

  v6 = a3[2];
  v7 = sub_1D9D469D0(a1, a2);
  v8 = v7;
  v10 = v9;
  v7[2] = v6;
  if (v9)
  {
    *(v7 + 8) = *(a3 + 8);
    *(v7 + 11) = *(a3 + 11);
    *(v7 + 9) = 1;
  }

  else
  {
    if (*(v7 + 8) != *(a3 + 8))
    {
      sub_1D9D418C4(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 931);
      v14 = sub_1D9D418DC(v69, "CHECK failed: (extension->type) == (other_extension.type): ");
      sub_1D9D41A18(&v68, &v14->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v69);
    }

    if (*(v8 + 11) != *(a3 + 11))
    {
      sub_1D9D418C4(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 932);
      v15 = sub_1D9D418DC(v69, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      sub_1D9D41A18(&v68, &v15->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v69);
    }

    if ((*(v8 + 9) & 1) == 0)
    {
      sub_1D9D418C4(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 933);
      v16 = sub_1D9D418DC(v69, "CHECK failed: extension->is_repeated: ");
      sub_1D9D41A18(&v68, &v16->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v69);
    }
  }

  v17 = *(a3 + 8);
  if ((v17 - 19) <= 0xFFFFFFED)
  {
    sub_1D9D418C4(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v18 = sub_1D9D418DC(v69, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_1D9D41A18(&v68, &v18->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v69);
  }

  v19 = dword_1D9DDD9F0[v17];
  if (v19 <= 5)
  {
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        if (v10)
        {
          v37 = *a1;
          if (!v37)
          {
            operator new();
          }

          if (*(v37 + 24))
          {
            sub_1D9D4C9E8(v37);
          }

          v38 = sub_1D9D3FEC4(v37, 0x10uLL, sub_1D9D4B890);
          *v38 = 0;
          *(v38 + 8) = v37;
          *v8 = v38;
        }

        else
        {
          v38 = *v8;
        }

        sub_1D9D51F6C(v38, *a3);
      }

      else if (v19 == 4)
      {
        if (v10)
        {
          v40 = *a1;
          if (!v40)
          {
            operator new();
          }

          if (*(v40 + 24))
          {
            sub_1D9D4CA28(v40);
          }

          v41 = sub_1D9D3FEC4(v40, 0x10uLL, sub_1D9D4B894);
          *v41 = 0;
          *(v41 + 8) = v40;
          *v8 = v41;
        }

        else
        {
          v41 = *v8;
        }

        sub_1D9D52BC4(v41, *a3);
      }

      else
      {
        if (v10)
        {
          v20 = *a1;
          if (!v20)
          {
            operator new();
          }

          if (*(v20 + 24))
          {
            sub_1D9D4CAA8(v20);
          }

          v21 = sub_1D9D3FEC4(v20, 0x10uLL, sub_1D9D4B89C);
          *v21 = 0;
          *(v21 + 8) = v20;
          *v8 = v21;
        }

        else
        {
          v21 = *v8;
        }

        sub_1D9D5381C(v21, *a3);
      }

      return;
    }

    if (v19 != 1)
    {
      if (v19 == 2)
      {
        if (v10)
        {
          v30 = *a1;
          if (!v30)
          {
            operator new();
          }

          if (*(v30 + 24))
          {
            sub_1D9D4C9A8(v30);
          }

          v31 = sub_1D9D3FEC4(v30, 0x10uLL, sub_1D9D4B88C);
          *v31 = 0;
          *(v31 + 8) = v30;
          *v8 = v31;
        }

        else
        {
          v31 = *v8;
        }

        sub_1D9D52598(v31, *a3);
      }

      return;
    }

    if (v10)
    {
      v34 = *a1;
      if (v34)
      {
        if (*(v34 + 24))
        {
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      goto LABEL_107;
    }

    goto LABEL_82;
  }

  if (v19 <= 7)
  {
    if (v19 == 6)
    {
      if (v10)
      {
        v35 = *a1;
        if (!v35)
        {
          operator new();
        }

        if (*(v35 + 24))
        {
          sub_1D9D4CA68(v35);
        }

        v36 = sub_1D9D3FEC4(v35, 0x10uLL, sub_1D9D4B898);
        *v36 = 0;
        *(v36 + 8) = v35;
        *v8 = v36;
      }

      else
      {
        v36 = *v8;
      }

      sub_1D9D531F0(v36, *a3);
    }

    else
    {
      if (v10)
      {
        v32 = *a1;
        if (!v32)
        {
          operator new();
        }

        if (*(v32 + 24))
        {
          sub_1D9D4CAE8(v32);
        }

        v33 = sub_1D9D3FEC4(v32, 0x10uLL, sub_1D9D4B8A0);
        *v33 = 0;
        *(v33 + 8) = v32;
        *v8 = v33;
      }

      else
      {
        v33 = *v8;
      }

      sub_1D9D51318(v33, *a3);
    }
  }

  else
  {
    switch(v19)
    {
      case 8:
        if (v10)
        {
          v34 = *a1;
          if (v34)
          {
            if (*(v34 + 24))
            {
LABEL_80:
              sub_1D9D4C968(v34);
            }

LABEL_81:
            v39 = sub_1D9D3FEC4(v34, 0x10uLL, sub_1D9D4B888);
            *v39 = 0;
            *(v39 + 8) = v34;
            *v8 = v39;
LABEL_108:
            sub_1D9D51940(v39, *a3);
            return;
          }

LABEL_107:
          operator new();
        }

LABEL_82:
        v39 = *v8;
        goto LABEL_108;
      case 9:
        if (v10)
        {
          v42 = *a1;
          if (!v42)
          {
            operator new();
          }

          if (*(v42 + 24))
          {
            sub_1D9D4CCD8(v42);
          }

          v43 = sub_1D9D3FEC4(v42, 0x18uLL, sub_1D9D4B8A4);
          v43[2] = 0;
          *v43 = v42;
          v43[1] = 0;
          *v8 = v43;
        }

        else
        {
          v43 = *v8;
        }

        sub_1D9D3C050(v43, *a3);
        break;
      case 10:
        if (v10)
        {
          v22 = *a1;
          if (!*a1)
          {
            operator new();
          }

          if (*(v22 + 24))
          {
            sub_1D9D4CD18(*a1);
          }

          v23 = sub_1D9D3FEC4(v22, 0x18uLL, sub_1D9D4B8A8);
          v23[2] = 0;
          *v23 = v22;
          v23[1] = 0;
          *v8 = v23;
        }

        v57 = *a3;
        if (*(v57 + 8) >= 1)
        {
          v58 = 0;
          do
          {
            v59 = sub_1D9D4B8E0(v57, v58);
            v60 = v59;
            v61 = *v8;
            v62 = *(*v8 + 16);
            if (!v62 || (v63 = *(v61 + 8), v63 >= *v62) || (*(v61 + 8) = v63 + 1, (v64 = *&v62[2 * v63 + 2]) == 0))
            {
              v64 = (*(*v59 + 32))(v59, *a1);
              sub_1D9D4B9C0(*v8, v64);
            }

            (*(*v64 + 64))(v64, v60);
            ++v58;
          }

          while (v58 < *(v57 + 8));
        }

        break;
    }
  }
}

uint64_t sub_1D9D46904(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*result == *a2)
  {
    v4 = *(result + 8);
    *(result + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = *(result + 10);
    *(result + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
    v6 = *(result + 16);
    *(result + 16) = *(a2 + 16);
    *(a2 + 16) = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1D9DD97A4(&v7, a2);
    sub_1D9D45964(a2);
    sub_1D9DD97A4(a2, v3);
    sub_1D9D45964(v3);
    sub_1D9DD97A4(v3, &v7);
    return sub_1D9D41EF4(&v7);
  }

  return result;
}

void sub_1D9D469BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D41EF4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D9D469D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= 0x101)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = a2;
    return sub_1D9D4C26C(v4, &v14) + 5;
  }

  else
  {
    v6 = *(a1 + 10);
    v7 = &v4[32 * v6];
    if (*(a1 + 10))
    {
      v8 = *(a1 + 10);
      do
      {
        v9 = v8 >> 1;
        v10 = &v4[32 * (v8 >> 1)];
        v12 = *v10;
        v11 = (v10 + 8);
        v8 += ~(v8 >> 1);
        if (v12 < a2)
        {
          v4 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
    }

    if (v4 == v7)
    {
      if (v6 < v3)
      {
LABEL_15:
        *(a1 + 10) = v6 + 1;
        *v4 = a2;
        *(v4 + 1) = 0;
        result = (v4 + 8);
        *(v4 + 2) = 0;
        *(v4 + 3) = 0;
        return result;
      }
    }

    else
    {
      if (*v4 == a2)
      {
        return (v4 + 8);
      }

      if (v6 < v3)
      {
        memmove(v4 + 32, v4, v7 - v4);
        LOWORD(v6) = *(a1 + 10);
        goto LABEL_15;
      }
    }

    sub_1D9D459CC(a1, v6 + 1);
    return sub_1D9D469D0(a1, a2);
  }
}

uint64_t sub_1D9D46AF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    v8 = *v1;
    v7 = (v1 + 1);
    v6 = v8;
    if (v8 == v7)
    {
      return 1;
    }

    else
    {
      do
      {
        v4 = sub_1D9D46BC8(v6 + 40);
        if (!v4)
        {
          break;
        }

        v9 = *(v6 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v6 + 2);
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v7);
    }
  }

  else
  {
    while (1)
    {
      v3 = *(a1 + 16) + 32 * *(a1 + 10);
      v4 = v1 == v3;
      if (v1 == v3)
      {
        break;
      }

      v5 = (v1 + 1);
      if (!sub_1D9D46BC8(v5))
      {
        break;
      }

      v1 = v5 + 24;
      if (*(a1 + 8) > 0x100u)
      {
        sub_1D9D4CDC4();
      }
    }
  }

  return v4;
}

uint64_t sub_1D9D46BC8(unsigned __int8 *a1)
{
  v2 = a1[8];
  if ((v2 - 19) <= 0xFFFFFFED)
  {
    sub_1D9D418C4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v3 = sub_1D9D418DC(v10, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_1D9D41A18(&v9, &v3->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v10);
  }

  if (dword_1D9DDD9F0[v2] != 10)
  {
    return 1;
  }

  if (a1[9] == 1)
  {
    v4 = *a1;
    if (*(*a1 + 8) >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = sub_1D9D4B8E0(v4, v5);
        if (((*(*v6 + 48))(v6) & 1) == 0)
        {
          break;
        }

        ++v5;
        v4 = *a1;
        if (v5 >= *(*a1 + 8))
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  if (a1[10])
  {
    return 1;
  }

  v8 = **a1;
  if ((a1[10] & 0x10) != 0)
  {
    return ((*(v8 + 72))() & 1) != 0;
  }

  result = (*(v8 + 48))();
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_1D9D46D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9D46D3C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, _BYTE *a6)
{
  result = (*(*a4 + 16))(a4, a3, a5);
  if (result)
  {
    v10 = *a5;
    if ((v10 - 19) <= 0xFFFFFFED)
    {
      sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1D9D418DC(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1D9D41A18(&v14, &v11->__r_.__value_.__l.__data_);
      sub_1D9D41A20(v15);
    }

    v12 = dword_1D9DDDA3C[v10];
    *a6 = 0;
    if (a2 == 2 && (a5[1] & 1) != 0)
    {
      if (v12 > 5)
      {
        sub_1D9D418C4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 82);
        v13 = sub_1D9D418DC(v15, "can't reach here.");
        sub_1D9D41A18(&v14, &v13->__r_.__value_.__l.__data_);
        sub_1D9D41A20(v15);
      }

      else
      {
        result = 1;
        if (((1 << v12) & 0x1C) == 0)
        {
          *a6 = 1;
          return result;
        }
      }
    }

    return v12 == a2;
  }

  return result;
}

void sub_1D9D46E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D46E98(uint64_t *a1, unint64_t a2, char *a3, uint64_t a4, unint64_t *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = &unk_1F554DEF0;
  v16[1] = a4;
  v11 = a2 >> 3;
  v15 = 0;
  if (sub_1D9D46D3C(a1, a2 & 7, a2 >> 3, v16, v14, &v15))
  {
    return sub_1D9D46F78(a1, v11, v15, v14, a5, a3, a6);
  }

  if (*a5)
  {
    v13 = (*a5 & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v13 = sub_1D9D34364(a5);
  }

  return sub_1D9D4EC60(v9, v13, a3, a6);
}

char *sub_1D9D46F78(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, char *a6, int32x2_t *a7)
{
  v8 = a6;
  v11 = a2;
  v12 = a1;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v46 = sub_1D9D4460C(a1, a2, 1, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4EAF8(v46, v8, a7);
        break;
      case 2:
        v47 = sub_1D9D4460C(a1, a2, 2, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4EA7C(v47, v8, a7);
        break;
      case 3:
        v36 = sub_1D9D4460C(a1, a2, 3, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4E83C(v36, v8, a7);
        break;
      case 4:
        v42 = sub_1D9D4460C(a1, a2, 4, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4E84C(v42, v8, a7);
        break;
      case 5:
        v28 = sub_1D9D4460C(a1, a2, 5, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4E81C(v28, v8, a7);
        break;
      case 6:
        v53 = sub_1D9D4460C(a1, a2, 6, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4E984(v53, v8, a7);
        break;
      case 7:
        v61 = sub_1D9D4460C(a1, a2, 7, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4E88C(v61, v8, a7);
        break;
      case 8:
        v44 = sub_1D9D4460C(a1, a2, 8, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4E87C(v44, v8, a7);
        break;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        sub_1D9D418C4(&v92, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/extension_set_inl.h", 79);
        v13 = sub_1D9D418DC(&v92, "Non-primitive types can't be packed.");
        sub_1D9D41A18(&v91, &v13->__r_.__value_.__l.__data_);
        sub_1D9D41A20(&v92);
        goto LABEL_170;
      case 0xD:
        v29 = sub_1D9D4460C(a1, a2, 13, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4E82C(v29, v8, a7);
        break;
      case 0xE:
        v92.__r_.__value_.__r.__words[0] = sub_1D9D4460C(a1, a2, 14, *(a4 + 2), *(a4 + 24));
        *&v92.__r_.__value_.__r.__words[1] = *(a4 + 8);
        v93 = a5;
        v94 = v11;
        v8 = sub_1D9D4BC54(a7, v8, &v92);
        goto LABEL_170;
      case 0xF:
        v19 = sub_1D9D4460C(a1, a2, 15, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4E908(v19, v8, a7);
        break;
      case 0x10:
        v38 = sub_1D9D4460C(a1, a2, 16, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4EA00(v38, v8, a7);
        break;
      case 0x11:
        v16 = sub_1D9D4460C(a1, a2, 17, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4E85C(v16, v8, a7);
        break;
      case 0x12:
        v50 = sub_1D9D4460C(a1, a2, 18, *(a4 + 2), *(a4 + 24));

        result = sub_1D9D4E86C(v50, v8, a7);
        break;
      default:
        goto LABEL_170;
    }
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v8 = a6 + 8;
        v48 = *a6;
        if (*(a4 + 1) == 1)
        {
          sub_1D9D43DD0(a1, a2, 1, *(a4 + 2), *(a4 + 24), v48);
        }

        else
        {
          sub_1D9D43BB4(a1, a2, 1, *(a4 + 24), v48);
        }

        goto LABEL_170;
      case 2:
        v8 = a6 + 4;
        v49 = *a6;
        if (*(a4 + 1) == 1)
        {
          sub_1D9D4389C(a1, a2, 2, *(a4 + 2), *(a4 + 24), v49);
        }

        else
        {
          sub_1D9D43680(a1, a2, 2, *(a4 + 24), v49);
        }

        goto LABEL_170;
      case 3:
        v37 = *a6;
        if (v37 < 0)
        {
          v37 = (a6[1] << 7) + v37 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_1D9D4E718(a6, v37);
            if (!v8)
            {
              goto LABEL_170;
            }

            v37 = v87;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v41 = 3;
          goto LABEL_158;
        }

        v71 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v72 = 3;
        goto LABEL_160;
      case 4:
        v43 = *a6;
        if (v43 < 0)
        {
          v43 = (a6[1] << 7) + v43 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_1D9D4E718(a6, v43);
            if (!v8)
            {
              goto LABEL_170;
            }

            v43 = v88;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v54 = *(a4 + 2);
          v55 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v56 = 4;
          goto LABEL_148;
        }

        v73 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v74 = 4;
        goto LABEL_150;
      case 5:
        v31 = *a6;
        if (v31 < 0)
        {
          v31 = (a6[1] << 7) + v31 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_1D9D4E718(a6, v31);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v31) = v86;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v23 = 5;
          v83 = v31;
          goto LABEL_136;
        }

        v69 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v70 = 5;
        v84 = v31;
        goto LABEL_138;
      case 6:
        v8 = a6 + 8;
        v43 = *a6;
        if (*(a4 + 1) == 1)
        {
          v54 = *(a4 + 2);
          v55 = *(a4 + 24);
          v56 = 6;
LABEL_148:
          sub_1D9D43370(a1, a2, v56, v54, v43, v55);
        }

        else
        {
          v73 = *(a4 + 24);
          v74 = 6;
LABEL_150:
          sub_1D9D4315C(a1, a2, v74, v43, v73);
        }

        goto LABEL_170;
      case 7:
        v8 = a6 + 4;
        v62 = *a6;
        if (*(a4 + 1) == 1)
        {
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          v65 = 7;
          v66 = v62;
          goto LABEL_129;
        }

        v79 = *(a4 + 24);
        v80 = 7;
        v81 = *a6;
        goto LABEL_131;
      case 8:
        v45 = *a6;
        if (v45 < 0)
        {
          v45 = (a6[1] << 7) + v45 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_1D9D4E718(a6, v45);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          sub_1D9D442FC(v12, v11, 8, *(a4 + 2), v45 != 0, *(a4 + 24));
        }

        else
        {
          sub_1D9D440E8(v12, v11, 8, v45 != 0, *(a4 + 24));
        }

        goto LABEL_170;
      case 9:
      case 0xC:
        v14 = *(a4 + 1);
        v15 = *(a4 + 24);
        if (v14 == 1)
        {
          v32 = sub_1D9D45094(a1, a2, 9, v15);
        }

        else
        {
          v32 = sub_1D9D44E20(a1, a2, 9, v15);
        }

        v33 = v32;
        v34 = *v8;
        if (*v8 < 0)
        {
          v67 = sub_1D9DD9CE8(v8, *v8);
          if (!v67)
          {
LABEL_101:
            v8 = 0;
            goto LABEL_170;
          }

          v35 = v67;
          v34 = v68;
        }

        else
        {
          v35 = (v8 + 1);
        }

        return sub_1D9D4BBE8(a7, v35, v34, v33);
      case 0xA:
        v57 = *(a4 + 1);
        v58 = *(a4 + 8);
        v59 = *(a4 + 24);
        if (v57 == 1)
        {
          v60 = sub_1D9D45674(a1, a2, 10, v58, v59);
        }

        else
        {
          v60 = sub_1D9D453E0(a1, a2, 10, v58, v59);
        }

        v75 = a7[11].i32[0];
        v76 = __OFSUB__(v75--, 1);
        a7[11].i32[0] = v75;
        if (v75 < 0 != v76)
        {
          goto LABEL_101;
        }

        ++a7[11].i32[1];
        v77 = (*(*v60 + 88))(v60, v8, a7);
        a7[11] = vadd_s32(a7[11], 0xFFFFFFFF00000001);
        v78 = a7[10].i32[0];
        a7[10].i32[0] = 0;
        if (v78 == ((8 * v11) | 3))
        {
          v8 = v77;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_170;
      case 0xB:
        v24 = *(a4 + 1);
        v25 = *(a4 + 8);
        v26 = *(a4 + 24);
        if (v24 == 1)
        {
          v27 = sub_1D9D45674(a1, a2, 11, v25, v26);
        }

        else
        {
          v27 = sub_1D9D453E0(a1, a2, 11, v25, v26);
        }

        return sub_1D9D4E5FC(a7, v27, v8);
      case 0xD:
        v30 = *a6;
        if (v30 < 0)
        {
          v30 = (a6[1] << 7) + v30 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_1D9D4E718(a6, v30);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v30) = v85;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v65 = 13;
          v66 = v30;
LABEL_129:
          sub_1D9D42E4C(a1, a2, v65, v63, v66, v64);
        }

        else
        {
          v79 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v80 = 13;
          v81 = v30;
LABEL_131:
          sub_1D9D42C38(a1, a2, v80, v81, v79);
        }

        goto LABEL_170;
      case 0xE:
        v52 = *a6;
        if ((v52 & 0x8000000000000000) != 0)
        {
          v82 = (a6[1] << 7) + v52;
          v52 = (v82 - 128);
          if (a6[1] < 0)
          {
            v8 = sub_1D9D4E718(a6, (v82 - 128));
            if (!v8)
            {
              goto LABEL_170;
            }

            v52 = v89;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if ((*(a4 + 8))(*(a4 + 16), v52))
        {
          if (*(a4 + 1) == 1)
          {
            sub_1D9D44B10(v12, v11, 14, *(a4 + 2), v52, *(a4 + 24));
          }

          else
          {
            sub_1D9D448FC(v12, v11, 14, v52, *(a4 + 24));
          }
        }

        else
        {
          if (*a5)
          {
            v90 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v90 = sub_1D9D34364(a5);
          }

          sub_1D9D4E600(v11, v52, v90);
        }

        goto LABEL_170;
      case 0xF:
        v8 = a6 + 4;
        v20 = *a6;
        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          v23 = 15;
          goto LABEL_122;
        }

        v69 = *(a4 + 24);
        v70 = 15;
        goto LABEL_124;
      case 0x10:
        v8 = a6 + 8;
        v37 = *a6;
        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          v41 = 16;
          goto LABEL_158;
        }

        v71 = *(a4 + 24);
        v72 = 16;
        goto LABEL_160;
      case 0x11:
        v18 = *a6;
        if (v18 < 0)
        {
          v18 = (a6[1] << 7) + v18 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_1D9D4E718(a6, v18);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        v20 = -(v18 & 1) ^ (v18 >> 1);
        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v23 = 17;
LABEL_122:
          v83 = v20;
LABEL_136:
          sub_1D9D42404(a1, a2, v23, v21, v83, v22);
        }

        else
        {
          v69 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v70 = 17;
LABEL_124:
          v84 = v20;
LABEL_138:
          sub_1D9D421F0(a1, a2, v70, v84, v69);
        }

        goto LABEL_170;
      case 0x12:
        v51 = *a6;
        if ((v51 & 0x8000000000000000) != 0)
        {
          v51 = (a6[1] << 7) + v51 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_1D9D4E718(a6, v51);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        v37 = -(v51 & 1) ^ (v51 >> 1);
        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v41 = 18;
LABEL_158:
          sub_1D9D42928(a1, a2, v41, v39, v37, v40);
        }

        else
        {
          v71 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v72 = 18;
LABEL_160:
          sub_1D9D42714(a1, a2, v72, v37, v71);
        }

LABEL_170:
        result = v8;
        break;
      default:
        goto LABEL_170;
    }
  }

  return result;
}

void sub_1D9D47C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D9D41A20(va);
  _Unwind_Resume(a1);
}

char *sub_1D9D47C4C(uint64_t a1, signed int a2, int a3, char *a4, uint64_t *a5)
{
  v7 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    v18 = *(v7 + 1);
    v17 = v7 + 2;
    v16 = v18;
    if (v18)
    {
      v19 = v17;
      do
      {
        if (*(v16 + 32) >= a2)
        {
          v19 = v16;
        }

        v16 = *(v16 + 8 * (*(v16 + 32) < a2));
      }

      while (v16);
      if (v19 != v17)
      {
        do
        {
          v20 = *(v19 + 8);
          if (v20 >= a3)
          {
            break;
          }

          a4 = sub_1D9D47D78(v19 + 40, v20, a4, a5);
          v21 = *(v19 + 1);
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = *(v19 + 2);
              v23 = *v22 == v19;
              v19 = v22;
            }

            while (!v23);
          }

          v19 = v22;
        }

        while (v22 != v17);
      }
    }
  }

  else
  {
    v8 = *(a1 + 10);
    v9 = &v7[8 * v8];
    while (v8)
    {
      v10 = v8 >> 1;
      v11 = &v7[8 * (v8 >> 1)];
      v13 = *v11;
      v12 = v11 + 8;
      v8 += ~(v8 >> 1);
      if (v13 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v10;
      }
    }

    while (v7 != v9)
    {
      v14 = *v7;
      if (v14 >= a3)
      {
        break;
      }

      a4 = sub_1D9D47D78(v7 + 8, v14, a4, a5);
      v7 += 8;
    }
  }

  return a4;
}

char *sub_1D9D47D78(unsigned __int8 *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v5 = a3;
  if (a1[9] == 1)
  {
    if (a1[11] == 1)
    {
      if (*(a1 + 3))
      {
        if (*a4 <= a3)
        {
          v5 = sub_1D9D40E38(a4, a3);
        }

        v8 = 8 * a2;
        if ((8 * a2) > 0x7F)
        {
          *v5 = v8 | 0x82;
          v33 = v8 >> 7;
          if (v8 >> 14)
          {
            v9 = v5 + 2;
            do
            {
              *(v9 - 1) = v33 | 0x80;
              v34 = v33 >> 7;
              ++v9;
              v35 = v33 >> 14;
              v33 >>= 7;
            }

            while (v35);
            *(v9 - 1) = v34;
          }

          else
          {
            v5[1] = v33;
            v9 = v5 + 2;
          }
        }

        else
        {
          *v5 = v8 | 2;
          v9 = v5 + 1;
        }

        v36 = *(a1 + 3);
        if (v36 > 0x7F)
        {
          *v9 = v36 | 0x80;
          v37 = v36 >> 7;
          if (v36 >> 14)
          {
            v5 = v9 + 2;
            do
            {
              *(v5 - 1) = v37 | 0x80;
              v38 = v37 >> 7;
              ++v5;
              v39 = v37 >> 14;
              v37 >>= 7;
            }

            while (v39);
            *(v5 - 1) = v38;
          }

          else
          {
            v9[1] = v37;
            v5 = v9 + 2;
          }
        }

        else
        {
          *v9 = v36;
          v5 = v9 + 1;
        }

        v40 = a1[8];
        if ((v40 - 19) <= 0xFFFFFFED)
        {
          sub_1D9D418C4(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
          v41 = sub_1D9D418DC(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
          sub_1D9D41A18(&v426, &v41->__r_.__value_.__l.__data_);
          sub_1D9D41A20(v427);
        }

        switch(v40)
        {
          case 1:
            v343 = *a1;
            if (**a1 >= 1)
            {
              v344 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v343 = *a1;
                }

                *v5 = *sub_1D9D53664(v343, v344);
                v5 += 8;
                ++v344;
                v343 = *a1;
              }

              while (v344 < **a1);
            }

            break;
          case 2:
            v345 = *a1;
            if (**a1 >= 1)
            {
              v346 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v345 = *a1;
                }

                *v5 = *sub_1D9D53038(v345, v346);
                v5 += 4;
                ++v346;
                v345 = *a1;
              }

              while (v346 < **a1);
            }

            break;
          case 3:
            v327 = *a1;
            if (**a1 >= 1)
            {
              v328 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v327 = *a1;
                }

                v329 = *sub_1D9D523E0(v327, v328);
                if (v329 > 0x7F)
                {
                  *v5 = v329 | 0x80;
                  v330 = v329 >> 7;
                  if (v329 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v330 | 0x80;
                      v331 = v330 >> 7;
                      ++v5;
                      v332 = v330 >> 14;
                      v330 >>= 7;
                    }

                    while (v332);
                    *(v5 - 1) = v331;
                  }

                  else
                  {
                    v5[1] = v330;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v329;
                }

                ++v328;
                v327 = *a1;
              }

              while (v328 < **a1);
            }

            break;
          case 4:
            v335 = *a1;
            if (**a1 >= 1)
            {
              v336 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v335 = *a1;
                }

                v337 = *sub_1D9D52A0C(v335, v336);
                if (v337 > 0x7F)
                {
                  *v5 = v337 | 0x80;
                  v338 = v337 >> 7;
                  if (v337 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v338 | 0x80;
                      v339 = v338 >> 7;
                      ++v5;
                      v340 = v338 >> 14;
                      v338 >>= 7;
                    }

                    while (v340);
                    *(v5 - 1) = v339;
                  }

                  else
                  {
                    v5[1] = v338;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v337;
                }

                ++v336;
                v335 = *a1;
              }

              while (v336 < **a1);
            }

            break;
          case 5:
            v315 = *a1;
            if (**a1 >= 1)
            {
              v316 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v315 = *a1;
                }

                v317 = *sub_1D9D51788(v315, v316);
                if (v317 > 0x7F)
                {
                  *v5 = v317 | 0x80;
                  v318 = v317 >> 7;
                  if (v317 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v318 | 0x80;
                      v319 = v318 >> 7;
                      ++v5;
                      v320 = v318 >> 14;
                      v318 >>= 7;
                    }

                    while (v320);
                    *(v5 - 1) = v319;
                  }

                  else
                  {
                    v5[1] = v318;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v317;
                }

                ++v316;
                v315 = *a1;
              }

              while (v316 < **a1);
            }

            break;
          case 6:
            v360 = *a1;
            if (**a1 >= 1)
            {
              v361 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v360 = *a1;
                }

                *v5 = *sub_1D9D52A0C(v360, v361);
                v5 += 8;
                ++v361;
                v360 = *a1;
              }

              while (v361 < **a1);
            }

            break;
          case 7:
            v362 = *a1;
            if (**a1 >= 1)
            {
              v363 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v362 = *a1;
                }

                *v5 = *sub_1D9D51DB4(v362, v363);
                v5 += 4;
                ++v363;
                v362 = *a1;
              }

              while (v363 < **a1);
            }

            break;
          case 8:
            v341 = *a1;
            if (**a1 >= 1)
            {
              v342 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v341 = *a1;
                }

                *v5++ = *sub_1D9D51160(v341, v342++);
                v341 = *a1;
              }

              while (v342 < **a1);
            }

            break;
          case 9:
          case 10:
          case 11:
          case 12:
            sub_1D9D418C4(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1966);
            v42 = sub_1D9D418DC(v427, "Non-primitive types can't be packed.");
            sub_1D9D41A18(&v426, &v42->__r_.__value_.__l.__data_);
            sub_1D9D41A20(v427);
            break;
          case 13:
            v321 = *a1;
            if (**a1 >= 1)
            {
              v322 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v321 = *a1;
                }

                v323 = *sub_1D9D51DB4(v321, v322);
                if (v323 > 0x7F)
                {
                  *v5 = v323 | 0x80;
                  v324 = v323 >> 7;
                  if (v323 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v324 | 0x80;
                      v325 = v324 >> 7;
                      ++v5;
                      v326 = v324 >> 14;
                      v324 >>= 7;
                    }

                    while (v326);
                    *(v5 - 1) = v325;
                  }

                  else
                  {
                    v5[1] = v324;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v323;
                }

                ++v322;
                v321 = *a1;
              }

              while (v322 < **a1);
            }

            break;
          case 14:
            v354 = *a1;
            if (**a1 >= 1)
            {
              v355 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v354 = *a1;
                }

                v356 = *sub_1D9D51788(v354, v355);
                if (v356 > 0x7F)
                {
                  *v5 = v356 | 0x80;
                  v357 = v356 >> 7;
                  if (v356 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v357 | 0x80;
                      v358 = v357 >> 7;
                      ++v5;
                      v359 = v357 >> 14;
                      v357 >>= 7;
                    }

                    while (v359);
                    *(v5 - 1) = v358;
                  }

                  else
                  {
                    v5[1] = v357;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v356;
                }

                ++v355;
                v354 = *a1;
              }

              while (v355 < **a1);
            }

            break;
          case 15:
            v313 = *a1;
            if (**a1 >= 1)
            {
              v314 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v313 = *a1;
                }

                *v5 = *sub_1D9D51788(v313, v314);
                v5 += 4;
                ++v314;
                v313 = *a1;
              }

              while (v314 < **a1);
            }

            break;
          case 16:
            v333 = *a1;
            if (**a1 >= 1)
            {
              v334 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v333 = *a1;
                }

                *v5 = *sub_1D9D523E0(v333, v334);
                v5 += 8;
                ++v334;
                v333 = *a1;
              }

              while (v334 < **a1);
            }

            break;
          case 17:
            v306 = *a1;
            if (**a1 >= 1)
            {
              v307 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v306 = *a1;
                }

                v308 = sub_1D9D51788(v306, v307);
                v309 = (2 * *v308) ^ (*v308 >> 31);
                if (v309 > 0x7F)
                {
                  *v5 = v309 | 0x80;
                  v310 = v309 >> 7;
                  if (v309 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v310 | 0x80;
                      v311 = v310 >> 7;
                      ++v5;
                      v312 = v310 >> 14;
                      v310 >>= 7;
                    }

                    while (v312);
                    *(v5 - 1) = v311;
                  }

                  else
                  {
                    v5[1] = v310;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v309;
                }

                ++v307;
                v306 = *a1;
              }

              while (v307 < **a1);
            }

            break;
          case 18:
            v347 = *a1;
            if (**a1 >= 1)
            {
              v348 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_1D9D40E38(a4, v5);
                  v347 = *a1;
                }

                v349 = sub_1D9D523E0(v347, v348);
                v350 = (2 * *v349) ^ (*v349 >> 63);
                if (v350 > 0x7F)
                {
                  *v5 = v350 | 0x80;
                  v351 = v350 >> 7;
                  if (v350 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v351 | 0x80;
                      v352 = v351 >> 7;
                      ++v5;
                      v353 = v351 >> 14;
                      v351 >>= 7;
                    }

                    while (v353);
                    *(v5 - 1) = v352;
                  }

                  else
                  {
                    v5[1] = v351;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v350;
                }

                ++v348;
                v347 = *a1;
              }

              while (v348 < **a1);
            }

            break;
          default:
            return v5;
        }
      }
    }

    else
    {
      v11 = a1[8];
      if ((v11 - 19) <= 0xFFFFFFED)
      {
        sub_1D9D418C4(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v12 = sub_1D9D418DC(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_1D9D41A18(&v426, &v12->__r_.__value_.__l.__data_);
        sub_1D9D41A20(v427);
      }

      switch(v11)
      {
        case 1:
          v13 = *a1;
          if (**a1 >= 1)
          {
            v14 = 0;
            v15 = 8 * a2;
            v16 = (8 * a2) | 0x81;
            v17 = (a2 >> 4) & 0x1FFFFFF;
            v18 = (8 * a2) | 1;
            v19 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v13 = *a1;
              }

              v20 = *sub_1D9D53664(v13, v14);
              if (v15 > 0x7F)
              {
                *v5 = v16;
                if (v15 >= 0x4000)
                {
                  v21 = v5 + 2;
                  v22 = v17;
                  do
                  {
                    *(v21 - 1) = v22 | 0x80;
                    v23 = v22 >> 7;
                    v21 = (v21 + 1);
                    v24 = v22 >> 14;
                    v22 >>= 7;
                  }

                  while (v24);
                  *(v21 - 1) = v23;
                }

                else
                {
                  v5[1] = v19;
                  v21 = v5 + 2;
                }
              }

              else
              {
                *v5 = v18;
                v21 = v5 + 1;
              }

              *v21 = v20;
              v5 = (v21 + 1);
              ++v14;
              v13 = *a1;
            }

            while (v14 < **a1);
          }

          break;
        case 2:
          v205 = *a1;
          if (**a1 >= 1)
          {
            v206 = 0;
            v207 = 8 * a2;
            v208 = (a2 >> 4) & 0x1FFFFFF;
            v209 = (8 * a2) | 5;
            v210 = (8 * a2) >> 7;
            v211 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v205 = *a1;
              }

              v212 = *sub_1D9D53038(v205, v206);
              if (v207 > 0x7F)
              {
                *v5 = v211;
                if (v207 >= 0x4000)
                {
                  v213 = v5 + 2;
                  v214 = v208;
                  do
                  {
                    *(v213 - 1) = v214 | 0x80;
                    v215 = v214 >> 7;
                    v213 = (v213 + 1);
                    v216 = v214 >> 14;
                    v214 >>= 7;
                  }

                  while (v216);
                  *(v213 - 1) = v215;
                }

                else
                {
                  v5[1] = v210;
                  v213 = v5 + 2;
                }
              }

              else
              {
                *v5 = v209;
                v213 = v5 + 1;
              }

              *v213 = v212;
              v5 = (v213 + 1);
              ++v206;
              v205 = *a1;
            }

            while (v206 < **a1);
          }

          break;
        case 3:
          v153 = *a1;
          if (**a1 >= 1)
          {
            v154 = 0;
            v155 = 8 * a2;
            v156 = (8 * a2) | 0x80;
            v157 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v153 = *a1;
              }

              v158 = *sub_1D9D523E0(v153, v154);
              if (v155 > 0x7F)
              {
                *v5 = v156;
                if (v155 >= 0x4000)
                {
                  v159 = v5 + 2;
                  v160 = v157;
                  do
                  {
                    *(v159 - 1) = v160 | 0x80;
                    v161 = v160 >> 7;
                    ++v159;
                    v162 = v160 >> 14;
                    v160 >>= 7;
                  }

                  while (v162);
                  *(v159 - 1) = v161;
                }

                else
                {
                  v5[1] = v155 >> 7;
                  v159 = v5 + 2;
                }
              }

              else
              {
                v159 = v5 + 1;
                *v5 = v155;
              }

              if (v158 > 0x7F)
              {
                *v159 = v158 | 0x80;
                v163 = v158 >> 7;
                if (v158 >> 14)
                {
                  v5 = v159 + 2;
                  do
                  {
                    *(v5 - 1) = v163 | 0x80;
                    v164 = v163 >> 7;
                    ++v5;
                    v165 = v163 >> 14;
                    v163 >>= 7;
                  }

                  while (v165);
                  *(v5 - 1) = v164;
                }

                else
                {
                  v159[1] = v163;
                  v5 = v159 + 2;
                }
              }

              else
              {
                *v159 = v158;
                v5 = v159 + 1;
              }

              ++v154;
              v153 = *a1;
            }

            while (v154 < **a1);
          }

          break;
        case 4:
          v180 = *a1;
          if (**a1 >= 1)
          {
            v181 = 0;
            v182 = 8 * a2;
            v183 = (8 * a2) | 0x80;
            v184 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v180 = *a1;
              }

              v185 = *sub_1D9D52A0C(v180, v181);
              if (v182 > 0x7F)
              {
                *v5 = v183;
                if (v182 >= 0x4000)
                {
                  v186 = v5 + 2;
                  v187 = v184;
                  do
                  {
                    *(v186 - 1) = v187 | 0x80;
                    v188 = v187 >> 7;
                    ++v186;
                    v189 = v187 >> 14;
                    v187 >>= 7;
                  }

                  while (v189);
                  *(v186 - 1) = v188;
                }

                else
                {
                  v5[1] = v182 >> 7;
                  v186 = v5 + 2;
                }
              }

              else
              {
                v186 = v5 + 1;
                *v5 = v182;
              }

              if (v185 > 0x7F)
              {
                *v186 = v185 | 0x80;
                v190 = v185 >> 7;
                if (v185 >> 14)
                {
                  v5 = v186 + 2;
                  do
                  {
                    *(v5 - 1) = v190 | 0x80;
                    v191 = v190 >> 7;
                    ++v5;
                    v192 = v190 >> 14;
                    v190 >>= 7;
                  }

                  while (v192);
                  *(v5 - 1) = v191;
                }

                else
                {
                  v186[1] = v190;
                  v5 = v186 + 2;
                }
              }

              else
              {
                *v186 = v185;
                v5 = v186 + 1;
              }

              ++v181;
              v180 = *a1;
            }

            while (v181 < **a1);
          }

          break;
        case 5:
          v103 = *a1;
          if (**a1 >= 1)
          {
            v104 = 0;
            v105 = 8 * a2;
            v106 = (8 * a2) | 0x80;
            v107 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v103 = *a1;
              }

              v108 = *sub_1D9D51788(v103, v104);
              if (v105 > 0x7F)
              {
                *v5 = v106;
                if (v105 >= 0x4000)
                {
                  v109 = v5 + 2;
                  v110 = v107;
                  do
                  {
                    *(v109 - 1) = v110 | 0x80;
                    v111 = v110 >> 7;
                    ++v109;
                    v112 = v110 >> 14;
                    v110 >>= 7;
                  }

                  while (v112);
                  *(v109 - 1) = v111;
                }

                else
                {
                  v5[1] = v105 >> 7;
                  v109 = v5 + 2;
                }
              }

              else
              {
                v109 = v5 + 1;
                *v5 = v105;
              }

              if (v108 > 0x7F)
              {
                *v109 = v108 | 0x80;
                v113 = v108 >> 7;
                if (v108 >> 14)
                {
                  v5 = v109 + 2;
                  do
                  {
                    *(v5 - 1) = v113 | 0x80;
                    v114 = v113 >> 7;
                    ++v5;
                    v115 = v113 >> 14;
                    v113 >>= 7;
                  }

                  while (v115);
                  *(v5 - 1) = v114;
                }

                else
                {
                  v109[1] = v113;
                  v5 = v109 + 2;
                }
              }

              else
              {
                *v109 = v108;
                v5 = v109 + 1;
              }

              ++v104;
              v103 = *a1;
            }

            while (v104 < **a1);
          }

          break;
        case 6:
          v234 = *a1;
          if (**a1 >= 1)
          {
            v235 = 0;
            v236 = 8 * a2;
            v237 = (8 * a2) | 0x81;
            v238 = (a2 >> 4) & 0x1FFFFFF;
            v239 = (8 * a2) | 1;
            v240 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v234 = *a1;
              }

              v241 = *sub_1D9D52A0C(v234, v235);
              if (v236 > 0x7F)
              {
                *v5 = v237;
                if (v236 >= 0x4000)
                {
                  v242 = v5 + 2;
                  v243 = v238;
                  do
                  {
                    *(v242 - 1) = v243 | 0x80;
                    v244 = v243 >> 7;
                    v242 = (v242 + 1);
                    v245 = v243 >> 14;
                    v243 >>= 7;
                  }

                  while (v245);
                  *(v242 - 1) = v244;
                }

                else
                {
                  v5[1] = v240;
                  v242 = v5 + 2;
                }
              }

              else
              {
                *v5 = v239;
                v242 = v5 + 1;
              }

              *v242 = v241;
              v5 = (v242 + 1);
              ++v235;
              v234 = *a1;
            }

            while (v235 < **a1);
          }

          break;
        case 7:
          v260 = *a1;
          if (**a1 >= 1)
          {
            v261 = 0;
            v262 = 8 * a2;
            v263 = (a2 >> 4) & 0x1FFFFFF;
            v264 = (8 * a2) | 5;
            v265 = (8 * a2) >> 7;
            v266 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v260 = *a1;
              }

              v267 = *sub_1D9D51DB4(v260, v261);
              if (v262 > 0x7F)
              {
                *v5 = v266;
                if (v262 >= 0x4000)
                {
                  v268 = v5 + 2;
                  v269 = v263;
                  do
                  {
                    *(v268 - 1) = v269 | 0x80;
                    v270 = v269 >> 7;
                    v268 = (v268 + 1);
                    v271 = v269 >> 14;
                    v269 >>= 7;
                  }

                  while (v271);
                  *(v268 - 1) = v270;
                }

                else
                {
                  v5[1] = v265;
                  v268 = v5 + 2;
                }
              }

              else
              {
                *v5 = v264;
                v268 = v5 + 1;
              }

              *v268 = v267;
              v5 = (v268 + 1);
              ++v261;
              v260 = *a1;
            }

            while (v261 < **a1);
          }

          break;
        case 8:
          v194 = *a1;
          if (**a1 >= 1)
          {
            v195 = 0;
            v196 = 8 * a2;
            v197 = (8 * a2) | 0x80;
            v198 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v194 = *a1;
              }

              v199 = *sub_1D9D51160(v194, v195);
              if (v196 > 0x7F)
              {
                *v5 = v197;
                if (v196 >= 0x4000)
                {
                  v200 = v5 + 2;
                  v201 = v198;
                  do
                  {
                    *(v200 - 1) = v201 | 0x80;
                    v202 = v201 >> 7;
                    ++v200;
                    v203 = v201 >> 14;
                    v201 >>= 7;
                  }

                  while (v203);
                  *(v200 - 1) = v202;
                }

                else
                {
                  v5[1] = v196 >> 7;
                  v200 = v5 + 2;
                }
              }

              else
              {
                *v5 = v196;
                v200 = v5 + 1;
              }

              *v200 = v199;
              v5 = v200 + 1;
              ++v195;
              v194 = *a1;
            }

            while (v195 < **a1);
          }

          break;
        case 9:
          v292 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v293 = 0;
            v294 = 8 * a2;
            v295 = -3;
            if ((8 * a2) < 0x80)
            {
              v295 = -2;
            }

            v296 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v296 = -5;
            }

            if (v294 < 0x200000)
            {
              v296 = -4;
            }

            if (v294 >= 0x4000)
            {
              v297 = v296;
            }

            else
            {
              v297 = v295;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v292 = *a1;
              }

              v298 = sub_1D9D3BE10(v292, v293);
              v299 = *(v298 + 23);
              if (v299 < 0 && (v299 = *(v298 + 8), v299 > 127) || *a4 + v297 - v5 + 16 < v299)
              {
                v5 = sub_1D9D413B0(a4, a2, v298, v5);
              }

              else
              {
                if (v294 > 0x7F)
                {
                  *v5 = (8 * a2) | 0x82;
                  if (v294 >= 0x4000)
                  {
                    v300 = v5 + 2;
                    v301 = (a2 >> 4) & 0x1FFFFFF;
                    do
                    {
                      *(v300 - 1) = v301 | 0x80;
                      v302 = v301 >> 7;
                      ++v300;
                      v303 = v301 >> 14;
                      v301 >>= 7;
                    }

                    while (v303);
                    *(v300 - 1) = v302;
                  }

                  else
                  {
                    v5[1] = v294 >> 7;
                    v300 = v5 + 2;
                  }
                }

                else
                {
                  v300 = v5 + 1;
                  *v5 = (8 * a2) | 2;
                }

                *v300 = v299;
                v304 = v300 + 1;
                if (*(v298 + 23) >= 0)
                {
                  v305 = v298;
                }

                else
                {
                  v305 = *v298;
                }

                memcpy(v304, v305, v299);
                v5 = &v304[v299];
              }

              ++v293;
              v292 = *a1;
            }

            while (v293 < *(*a1 + 8));
          }

          break;
        case 10:
          v133 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v134 = 0;
            v135 = 8 * a2;
            v425 = (8 * a2) | 0x83;
            v136 = (a2 >> 4) & 0x1FFFFFF;
            v137 = (8 * a2) | 3;
            v138 = (8 * a2) | 4;
            v139 = (8 * a2) >> 7;
            v140 = (8 * a2) | 0x84;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v133 = *a1;
              }

              v141 = sub_1D9D4B8E0(v133, v134);
              if (v135 > 0x7F)
              {
                *v5 = v425;
                if (v135 >= 0x4000)
                {
                  v142 = v5 + 2;
                  v143 = v136;
                  do
                  {
                    *(v142 - 1) = v143 | 0x80;
                    v144 = v143 >> 7;
                    ++v142;
                    v145 = v143 >> 14;
                    v143 >>= 7;
                  }

                  while (v145);
                  *(v142 - 1) = v144;
                }

                else
                {
                  v5[1] = v139;
                  v142 = v5 + 2;
                }
              }

              else
              {
                v142 = v5 + 1;
                *v5 = v137;
              }

              v146 = (*(*v141 + 96))(v141, v142, a4);
              if (*a4 <= v146)
              {
                v146 = sub_1D9D40E38(a4, v146);
              }

              if (v135 > 0x7F)
              {
                *v146 = v140;
                if (v135 >= 0x4000)
                {
                  v5 = v146 + 2;
                  v147 = v136;
                  do
                  {
                    *(v5 - 1) = v147 | 0x80;
                    v148 = v147 >> 7;
                    ++v5;
                    v149 = v147 >> 14;
                    v147 >>= 7;
                  }

                  while (v149);
                  *(v5 - 1) = v148;
                }

                else
                {
                  v146[1] = v139;
                  v5 = v146 + 2;
                }
              }

              else
              {
                v5 = v146 + 1;
                *v146 = v138;
              }

              ++v134;
              v133 = *a1;
            }

            while (v134 < *(*a1 + 8));
          }

          break;
        case 11:
          v272 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v273 = 0;
            v274 = 8 * a2;
            v275 = (a2 >> 4) & 0x1FFFFFF;
            v276 = (8 * a2) | 2;
            v277 = (8 * a2) | 0x82;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v272 = *a1;
              }

              v278 = sub_1D9D4B8E0(v272, v273);
              v279 = v278;
              if (v274 > 0x7F)
              {
                *v5 = v277;
                if (v274 >= 0x4000)
                {
                  v280 = v5 + 2;
                  v281 = v275;
                  do
                  {
                    *(v280 - 1) = v281 | 0x80;
                    v282 = v281 >> 7;
                    ++v280;
                    v283 = v281 >> 14;
                    v281 >>= 7;
                  }

                  while (v283);
                  *(v280 - 1) = v282;
                }

                else
                {
                  v5[1] = v274 >> 7;
                  v280 = v5 + 2;
                }
              }

              else
              {
                v280 = v5 + 1;
                *v5 = v276;
              }

              v284 = (*(*v278 + 80))(v278);
              if (v284 > 0x7F)
              {
                *v280 = v284 | 0x80;
                v286 = v284 >> 7;
                if (v284 >> 14)
                {
                  v285 = v280 + 2;
                  do
                  {
                    *(v285 - 1) = v286 | 0x80;
                    v287 = v286 >> 7;
                    ++v285;
                    v288 = v286 >> 14;
                    v286 >>= 7;
                  }

                  while (v288);
                  *(v285 - 1) = v287;
                }

                else
                {
                  v280[1] = v286;
                  v285 = v280 + 2;
                }
              }

              else
              {
                *v280 = v284;
                v285 = v280 + 1;
              }

              v5 = (*(*v279 + 96))(v279, v285, a4);
              ++v273;
              v272 = *a1;
            }

            while (v273 < *(*a1 + 8));
          }

          break;
        case 12:
          v78 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v79 = 0;
            v80 = 8 * a2;
            v81 = -3;
            if ((8 * a2) < 0x80)
            {
              v81 = -2;
            }

            v82 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v82 = -5;
            }

            if (v80 < 0x200000)
            {
              v82 = -4;
            }

            if (v80 >= 0x4000)
            {
              v83 = v82;
            }

            else
            {
              v83 = v81;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v78 = *a1;
              }

              v84 = sub_1D9D3BE10(v78, v79);
              v85 = *(v84 + 23);
              if (v85 < 0 && (v85 = *(v84 + 8), v85 > 127) || *a4 + v83 - v5 + 16 < v85)
              {
                v5 = sub_1D9D413B0(a4, a2, v84, v5);
              }

              else
              {
                if (v80 > 0x7F)
                {
                  *v5 = (8 * a2) | 0x82;
                  if (v80 >= 0x4000)
                  {
                    v86 = v5 + 2;
                    v87 = (a2 >> 4) & 0x1FFFFFF;
                    do
                    {
                      *(v86 - 1) = v87 | 0x80;
                      v88 = v87 >> 7;
                      ++v86;
                      v89 = v87 >> 14;
                      v87 >>= 7;
                    }

                    while (v89);
                    *(v86 - 1) = v88;
                  }

                  else
                  {
                    v5[1] = v80 >> 7;
                    v86 = v5 + 2;
                  }
                }

                else
                {
                  v86 = v5 + 1;
                  *v5 = (8 * a2) | 2;
                }

                *v86 = v85;
                v90 = v86 + 1;
                if (*(v84 + 23) >= 0)
                {
                  v91 = v84;
                }

                else
                {
                  v91 = *v84;
                }

                memcpy(v90, v91, v85);
                v5 = &v90[v85];
              }

              ++v79;
              v78 = *a1;
            }

            while (v79 < *(*a1 + 8));
          }

          break;
        case 13:
          v118 = *a1;
          if (**a1 >= 1)
          {
            v119 = 0;
            v120 = 8 * a2;
            v121 = (8 * a2) | 0x80;
            v122 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v118 = *a1;
              }

              v123 = *sub_1D9D51DB4(v118, v119);
              if (v120 > 0x7F)
              {
                *v5 = v121;
                if (v120 >= 0x4000)
                {
                  v124 = v5 + 2;
                  v125 = v122;
                  do
                  {
                    *(v124 - 1) = v125 | 0x80;
                    v126 = v125 >> 7;
                    ++v124;
                    v127 = v125 >> 14;
                    v125 >>= 7;
                  }

                  while (v127);
                  *(v124 - 1) = v126;
                }

                else
                {
                  v5[1] = v120 >> 7;
                  v124 = v5 + 2;
                }
              }

              else
              {
                v124 = v5 + 1;
                *v5 = v120;
              }

              if (v123 > 0x7F)
              {
                *v124 = v123 | 0x80;
                v128 = v123 >> 7;
                if (v123 >> 14)
                {
                  v5 = v124 + 2;
                  do
                  {
                    *(v5 - 1) = v128 | 0x80;
                    v129 = v128 >> 7;
                    ++v5;
                    v130 = v128 >> 14;
                    v128 >>= 7;
                  }

                  while (v130);
                  *(v5 - 1) = v129;
                }

                else
                {
                  v124[1] = v128;
                  v5 = v124 + 2;
                }
              }

              else
              {
                *v124 = v123;
                v5 = v124 + 1;
              }

              ++v119;
              v118 = *a1;
            }

            while (v119 < **a1);
          }

          break;
        case 14:
          v246 = *a1;
          if (**a1 >= 1)
          {
            v247 = 0;
            v248 = 8 * a2;
            v249 = (8 * a2) | 0x80;
            v250 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v246 = *a1;
              }

              v251 = *sub_1D9D51788(v246, v247);
              if (v248 > 0x7F)
              {
                *v5 = v249;
                if (v248 >= 0x4000)
                {
                  v252 = v5 + 2;
                  v253 = v250;
                  do
                  {
                    *(v252 - 1) = v253 | 0x80;
                    v254 = v253 >> 7;
                    ++v252;
                    v255 = v253 >> 14;
                    v253 >>= 7;
                  }

                  while (v255);
                  *(v252 - 1) = v254;
                }

                else
                {
                  v5[1] = v248 >> 7;
                  v252 = v5 + 2;
                }
              }

              else
              {
                v252 = v5 + 1;
                *v5 = v248;
              }

              if (v251 > 0x7F)
              {
                *v252 = v251 | 0x80;
                v256 = v251 >> 7;
                if (v251 >> 14)
                {
                  v5 = v252 + 2;
                  do
                  {
                    *(v5 - 1) = v256 | 0x80;
                    v257 = v256 >> 7;
                    ++v5;
                    v258 = v256 >> 14;
                    v256 >>= 7;
                  }

                  while (v258);
                  *(v5 - 1) = v257;
                }

                else
                {
                  v252[1] = v256;
                  v5 = v252 + 2;
                }
              }

              else
              {
                *v252 = v251;
                v5 = v252 + 1;
              }

              ++v247;
              v246 = *a1;
            }

            while (v247 < **a1);
          }

          break;
        case 15:
          v60 = *a1;
          if (**a1 >= 1)
          {
            v61 = 0;
            v62 = 8 * a2;
            v63 = (a2 >> 4) & 0x1FFFFFF;
            v64 = (8 * a2) | 5;
            v65 = (8 * a2) >> 7;
            v66 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v60 = *a1;
              }

              v67 = *sub_1D9D51788(v60, v61);
              if (v62 > 0x7F)
              {
                *v5 = v66;
                if (v62 >= 0x4000)
                {
                  v68 = v5 + 2;
                  v69 = v63;
                  do
                  {
                    *(v68 - 1) = v69 | 0x80;
                    v70 = v69 >> 7;
                    v68 = (v68 + 1);
                    v71 = v69 >> 14;
                    v69 >>= 7;
                  }

                  while (v71);
                  *(v68 - 1) = v70;
                }

                else
                {
                  v5[1] = v65;
                  v68 = v5 + 2;
                }
              }

              else
              {
                *v5 = v64;
                v68 = v5 + 1;
              }

              *v68 = v67;
              v5 = (v68 + 1);
              ++v61;
              v60 = *a1;
            }

            while (v61 < **a1);
          }

          break;
        case 16:
          v167 = *a1;
          if (**a1 >= 1)
          {
            v168 = 0;
            v169 = 8 * a2;
            v170 = (8 * a2) | 0x81;
            v171 = (a2 >> 4) & 0x1FFFFFF;
            v172 = (8 * a2) | 1;
            v173 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v167 = *a1;
              }

              v174 = *sub_1D9D523E0(v167, v168);
              if (v169 > 0x7F)
              {
                *v5 = v170;
                if (v169 >= 0x4000)
                {
                  v175 = v5 + 2;
                  v176 = v171;
                  do
                  {
                    *(v175 - 1) = v176 | 0x80;
                    v177 = v176 >> 7;
                    v175 = (v175 + 1);
                    v178 = v176 >> 14;
                    v176 >>= 7;
                  }

                  while (v178);
                  *(v175 - 1) = v177;
                }

                else
                {
                  v5[1] = v173;
                  v175 = v5 + 2;
                }
              }

              else
              {
                *v5 = v172;
                v175 = v5 + 1;
              }

              *v175 = v174;
              v5 = (v175 + 1);
              ++v168;
              v167 = *a1;
            }

            while (v168 < **a1);
          }

          break;
        case 17:
          v43 = *a1;
          if (**a1 >= 1)
          {
            v44 = 0;
            v45 = 8 * a2;
            v46 = (8 * a2) | 0x80;
            v47 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v43 = *a1;
              }

              v48 = *sub_1D9D51788(v43, v44);
              if (v45 > 0x7F)
              {
                *v5 = v46;
                if (v45 >= 0x4000)
                {
                  v49 = v5 + 2;
                  v50 = v47;
                  do
                  {
                    *(v49 - 1) = v50 | 0x80;
                    v51 = v50 >> 7;
                    ++v49;
                    v52 = v50 >> 14;
                    v50 >>= 7;
                  }

                  while (v52);
                  *(v49 - 1) = v51;
                }

                else
                {
                  v5[1] = v45 >> 7;
                  v49 = v5 + 2;
                }
              }

              else
              {
                v49 = v5 + 1;
                *v5 = v45;
              }

              v53 = (2 * v48) ^ (v48 >> 31);
              if (v53 > 0x7F)
              {
                *v49 = v53 | 0x80;
                v54 = v53 >> 7;
                if (v53 >> 14)
                {
                  v5 = v49 + 2;
                  do
                  {
                    *(v5 - 1) = v54 | 0x80;
                    v55 = v54 >> 7;
                    ++v5;
                    v56 = v54 >> 14;
                    v54 >>= 7;
                  }

                  while (v56);
                  *(v5 - 1) = v55;
                }

                else
                {
                  v49[1] = v54;
                  v5 = v49 + 2;
                }
              }

              else
              {
                *v49 = v53;
                v5 = v49 + 1;
              }

              ++v44;
              v43 = *a1;
            }

            while (v44 < **a1);
          }

          break;
        case 18:
          v218 = *a1;
          if (**a1 >= 1)
          {
            v219 = 0;
            v220 = 8 * a2;
            v221 = (8 * a2) | 0x80;
            v222 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_1D9D40E38(a4, v5);
                v218 = *a1;
              }

              v223 = *sub_1D9D523E0(v218, v219);
              if (v220 > 0x7F)
              {
                *v5 = v221;
                if (v220 >= 0x4000)
                {
                  v224 = v5 + 2;
                  v225 = v222;
                  do
                  {
                    *(v224 - 1) = v225 | 0x80;
                    v226 = v225 >> 7;
                    ++v224;
                    v227 = v225 >> 14;
                    v225 >>= 7;
                  }

                  while (v227);
                  *(v224 - 1) = v226;
                }

                else
                {
                  v5[1] = v220 >> 7;
                  v224 = v5 + 2;
                }
              }

              else
              {
                v224 = v5 + 1;
                *v5 = v220;
              }

              v228 = (2 * v223) ^ (v223 >> 63);
              if (v228 > 0x7F)
              {
                *v224 = v228 | 0x80;
                v229 = v228 >> 7;
                if (v228 >> 14)
                {
                  v5 = v224 + 2;
                  do
                  {
                    *(v5 - 1) = v229 | 0x80;
                    v230 = v229 >> 7;
                    ++v5;
                    v231 = v229 >> 14;
                    v229 >>= 7;
                  }

                  while (v231);
                  *(v5 - 1) = v230;
                }

                else
                {
                  v224[1] = v229;
                  v5 = v224 + 2;
                }
              }

              else
              {
                *v224 = v228;
                v5 = v224 + 1;
              }

              ++v219;
              v218 = *a1;
            }

            while (v219 < **a1);
          }

          break;
        default:
          return v5;
      }
    }

    return v5;
  }

  if (a1[10])
  {
    return v5;
  }

  v25 = a1[8];
  if ((v25 - 19) <= 0xFFFFFFED)
  {
    sub_1D9D418C4(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v26 = sub_1D9D418DC(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_1D9D41A18(&v426, &v26->__r_.__value_.__l.__data_);
    sub_1D9D41A20(v427);
  }

  switch(v25)
  {
    case 1:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_360;
      }

      *v5 = v28 | 0x81;
      v29 = v28 >> 7;
      if (!(v28 >> 14))
      {
        goto LABEL_613;
      }

      v30 = (v5 + 2);
      do
      {
        *(v30 - 1) = v29 | 0x80;
        v31 = v29 >> 7;
        v30 = (v30 + 1);
        v32 = v29 >> 14;
        v29 >>= 7;
      }

      while (v32);
      goto LABEL_698;
    case 2:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_401;
      }

      *v5 = v73 | 0x85;
      v74 = v73 >> 7;
      if (!(v73 >> 14))
      {
        goto LABEL_617;
      }

      v75 = v5 + 2;
      do
      {
        *(v75 - 1) = v74 | 0x80;
        v76 = v74 >> 7;
        v75 = (v75 + 1);
        v217 = v74 >> 14;
        v74 >>= 7;
      }

      while (v217);
      goto LABEL_713;
    case 3:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v116 = *a1;
      v166 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v166 | 0x80;
        v368 = v166 >> 7;
        if (v166 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v368 | 0x80;
            v396 = v368 >> 7;
            ++v59;
            v397 = v368 >> 14;
            v368 >>= 7;
          }

          while (v397);
          *(v59 - 1) = v396;
        }

        else
        {
          v5[1] = v368;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v166;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v398 = v385 >> 14;
        v385 >>= 7;
      }

      while (v398);
      goto LABEL_710;
    case 4:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v116 = *a1;
      v193 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v193 | 0x80;
        v369 = v193 >> 7;
        if (v193 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v369 | 0x80;
            v399 = v369 >> 7;
            ++v59;
            v400 = v369 >> 14;
            v369 >>= 7;
          }

          while (v400);
          *(v59 - 1) = v399;
        }

        else
        {
          v5[1] = v369;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v193;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v401 = v385 >> 14;
        v385 >>= 7;
      }

      while (v401);
      goto LABEL_710;
    case 5:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v116 = *a1;
      v117 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v117 | 0x80;
        v365 = v117 >> 7;
        if (v117 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v365 | 0x80;
            v383 = v365 >> 7;
            ++v59;
            v384 = v365 >> 14;
            v365 >>= 7;
          }

          while (v384);
          *(v59 - 1) = v383;
        }

        else
        {
          v5[1] = v365;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v117;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v387 = v385 >> 14;
        v385 >>= 7;
      }

      while (v387);
      goto LABEL_710;
    case 6:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_360;
      }

      *v5 = v28 | 0x81;
      v29 = v28 >> 7;
      if (!(v28 >> 14))
      {
        goto LABEL_613;
      }

      v30 = (v5 + 2);
      do
      {
        *(v30 - 1) = v29 | 0x80;
        v31 = v29 >> 7;
        v30 = (v30 + 1);
        v410 = v29 >> 14;
        v29 >>= 7;
      }

      while (v410);
      goto LABEL_698;
    case 7:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_401;
      }

      *v5 = v73 | 0x85;
      v74 = v73 >> 7;
      if (!(v73 >> 14))
      {
        goto LABEL_617;
      }

      v75 = v5 + 2;
      do
      {
        *(v75 - 1) = v74 | 0x80;
        v76 = v74 >> 7;
        v75 = (v75 + 1);
        v414 = v74 >> 14;
        v74 >>= 7;
      }

      while (v414);
      goto LABEL_713;
    case 8:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      LOBYTE(v131) = *a1;
      v204 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v204 | 0x80;
        v370 = v204 >> 7;
        if (v204 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v370 | 0x80;
            v402 = v370 >> 7;
            ++v59;
            v403 = v370 >> 14;
            v370 >>= 7;
          }

          while (v403);
          *(v59 - 1) = v402;
        }

        else
        {
          v5[1] = v370;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v204;
        v59 = v5 + 1;
      }

      goto LABEL_685;
    case 9:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v92 = *a1;
      v93 = *(*a1 + 23);
      if (v93 < 0)
      {
        v93 = *(v92 + 1);
        if (v93 > 127)
        {
          return sub_1D9D413B0(a4, a2, v92, v5);
        }
      }

      v94 = *a4;
      v95 = 8 * a2;
      if ((8 * a2) < 0x80)
      {
        goto LABEL_461;
      }

      v374 = 2;
      v375 = 3;
      v376 = 4;
      if (v95 >> 28)
      {
        v376 = 5;
      }

      if (v95 >= 0x200000)
      {
        v375 = v376;
      }

      if (v95 >= 0x4000)
      {
        v374 = v375;
      }

      if ((v94 + ~&v5[v374] + 16) < v93)
      {
        return sub_1D9D413B0(a4, a2, v92, v5);
      }

      *v5 = v95 | 0x82;
      v99 = v95 >> 7;
      if (!(v95 >> 14))
      {
        goto LABEL_627;
      }

      v100 = v5 + 2;
      do
      {
        *(v100 - 1) = v99 | 0x80;
        v101 = v99 >> 7;
        ++v100;
        v416 = v99 >> 14;
        v99 >>= 7;
      }

      while (v416);
      goto LABEL_719;
    case 10:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v150 = *a1;
      v151 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v151 | 0x83;
        v367 = v151 >> 7;
        if (v151 >> 14)
        {
          v152 = v5 + 2;
          do
          {
            *(v152 - 1) = v367 | 0x80;
            v393 = v367 >> 7;
            ++v152;
            v394 = v367 >> 14;
            v367 >>= 7;
          }

          while (v394);
          *(v152 - 1) = v393;
        }

        else
        {
          v5[1] = v367;
          v152 = v5 + 2;
        }
      }

      else
      {
        *v5 = v151 | 3;
        v152 = v5 + 1;
      }

      v59 = (*(*v150 + 96))(v150, v152, a4);
      if (*a4 <= v59)
      {
        v59 = sub_1D9D40E38(a4, v59);
      }

      if (v151 <= 0x7F)
      {
        LOBYTE(v131) = v151 | 4;
LABEL_685:
        *v59 = v131;
        return v59 + 1;
      }

      *v59 = v151 | 0x84;
      v380 = v151 >> 7;
      if (!(v151 >> 14))
      {
        goto LABEL_662;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v380 | 0x80;
        v381 = v380 >> 7;
        ++v5;
        v395 = v380 >> 14;
        v380 >>= 7;
      }

      while (v395);
      goto LABEL_665;
    case 11:
      if ((a1[10] & 0x10) != 0)
      {
        return (*(**a1 + 136))(*a1, a2, v5, a4);
      }

      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v289 = *a1;
      v290 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v290 | 0x82;
        v415 = v290 >> 7;
        if (v290 >> 14)
        {
          v291 = v5 + 2;
          do
          {
            *(v291 - 1) = v415 | 0x80;
            v418 = v415 >> 7;
            ++v291;
            v419 = v415 >> 14;
            v415 >>= 7;
          }

          while (v419);
          *(v291 - 1) = v418;
        }

        else
        {
          v5[1] = v415;
          v291 = v5 + 2;
        }
      }

      else
      {
        *v5 = v290 | 2;
        v291 = v5 + 1;
      }

      v420 = (*(*v289 + 80))(v289);
      if (v420 > 0x7F)
      {
        *v291 = v420 | 0x80;
        v422 = v420 >> 7;
        if (v420 >> 14)
        {
          v421 = v291 + 2;
          do
          {
            *(v421 - 1) = v422 | 0x80;
            v423 = v422 >> 7;
            ++v421;
            v424 = v422 >> 14;
            v422 >>= 7;
          }

          while (v424);
          *(v421 - 1) = v423;
        }

        else
        {
          v291[1] = v422;
          v421 = v291 + 2;
        }
      }

      else
      {
        *v291 = v420;
        v421 = v291 + 1;
      }

      return (*(*v289 + 96))(v289, v421, a4);
    case 12:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v92 = *a1;
      v93 = *(*a1 + 23);
      if (v93 < 0)
      {
        v93 = *(v92 + 1);
        if (v93 > 127)
        {
          return sub_1D9D413B0(a4, a2, v92, v5);
        }
      }

      v94 = *a4;
      v95 = 8 * a2;
      if ((8 * a2) < 0x80)
      {
LABEL_461:
        if (v94 - v5 + 14 >= v93)
        {
          *v5 = v95 | 2;
          v100 = v5 + 1;
LABEL_720:
          *v100 = v93;
          v417 = v100 + 1;
          if (*(v92 + 23) < 0)
          {
            v92 = *v92;
          }

          memcpy(v417, v92, v93);
          return &v417[v93];
        }
      }

      else
      {
        v96 = 2;
        v97 = 3;
        v98 = 4;
        if (v95 >> 28)
        {
          v98 = 5;
        }

        if (v95 >= 0x200000)
        {
          v97 = v98;
        }

        if (v95 >= 0x4000)
        {
          v96 = v97;
        }

        if ((v94 + ~&v5[v96] + 16) >= v93)
        {
          *v5 = v95 | 0x82;
          v99 = v95 >> 7;
          if (v95 >> 14)
          {
            v100 = v5 + 2;
            do
            {
              *(v100 - 1) = v99 | 0x80;
              v101 = v99 >> 7;
              ++v100;
              v102 = v99 >> 14;
              v99 >>= 7;
            }

            while (v102);
LABEL_719:
            *(v100 - 1) = v101;
          }

          else
          {
LABEL_627:
            v5[1] = v99;
            v100 = v5 + 2;
          }

          goto LABEL_720;
        }
      }

      return sub_1D9D413B0(a4, a2, v92, v5);
    case 13:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v131 = *a1;
      v132 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v132 | 0x80;
        v366 = v132 >> 7;
        if (v132 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v366 | 0x80;
            v388 = v366 >> 7;
            ++v59;
            v389 = v366 >> 14;
            v366 >>= 7;
          }

          while (v389);
          *(v59 - 1) = v388;
        }

        else
        {
          v5[1] = v366;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v132;
        v59 = v5 + 1;
      }

      if (v131 <= 0x7F)
      {
        goto LABEL_685;
      }

      *v59 = v131 | 0x80;
      v390 = v131 >> 7;
      if (!(v131 >> 14))
      {
        v59[1] = v390;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v390 | 0x80;
        v391 = v390 >> 7;
        ++v5;
        v392 = v390 >> 14;
        v390 >>= 7;
      }

      while (v392);
      *(v5 - 1) = v391;
      return v5;
    case 14:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v116 = *a1;
      v259 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v259 | 0x80;
        v372 = v259 >> 7;
        if (v259 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v372 | 0x80;
            v411 = v372 >> 7;
            ++v59;
            v412 = v372 >> 14;
            v372 >>= 7;
          }

          while (v412);
          *(v59 - 1) = v411;
        }

        else
        {
          v5[1] = v372;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v259;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
LABEL_704:
        *v59 = v116;
        return v59 + 1;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
LABEL_706:
        v59[1] = v385;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v413 = v385 >> 14;
        v385 >>= 7;
      }

      while (v413);
LABEL_710:
      *(v5 - 1) = v386;
      return v5;
    case 15:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
LABEL_401:
        *v5 = v73 | 5;
        v75 = v5 + 1;
      }

      else
      {
        *v5 = v73 | 0x85;
        v74 = v73 >> 7;
        if (v73 >> 14)
        {
          v75 = v5 + 2;
          do
          {
            *(v75 - 1) = v74 | 0x80;
            v76 = v74 >> 7;
            v75 = (v75 + 1);
            v77 = v74 >> 14;
            v74 >>= 7;
          }

          while (v77);
LABEL_713:
          *(v75 - 1) = v76;
        }

        else
        {
LABEL_617:
          v5[1] = v74;
          v75 = v5 + 2;
        }
      }

      *v75 = v72;
      return (v75 + 1);
    case 16:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
LABEL_360:
        *v5 = v28 | 1;
        v30 = (v5 + 1);
      }

      else
      {
        *v5 = v28 | 0x81;
        v29 = v28 >> 7;
        if (v28 >> 14)
        {
          v30 = (v5 + 2);
          do
          {
            *(v30 - 1) = v29 | 0x80;
            v31 = v29 >> 7;
            v30 = (v30 + 1);
            v179 = v29 >> 14;
            v29 >>= 7;
          }

          while (v179);
LABEL_698:
          *(v30 - 1) = v31;
        }

        else
        {
LABEL_613:
          v5[1] = v29;
          v30 = (v5 + 2);
        }
      }

      *v30 = v27;
      return (v30 + 1);
    case 17:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v57 = *a1;
      v58 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v58 | 0x80;
        v364 = v58 >> 7;
        if (v58 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v364 | 0x80;
            v377 = v364 >> 7;
            ++v59;
            v378 = v364 >> 14;
            v364 >>= 7;
          }

          while (v378);
          *(v59 - 1) = v377;
        }

        else
        {
          v5[1] = v364;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v58;
        v59 = v5 + 1;
      }

      v379 = (2 * v57) ^ (v57 >> 31);
      if (v379 <= 0x7F)
      {
        *v59 = v379;
        return v59 + 1;
      }

      *v59 = v379 | 0x80;
      v380 = v379 >> 7;
      if (!(v379 >> 14))
      {
LABEL_662:
        v59[1] = v380;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v380 | 0x80;
        v381 = v380 >> 7;
        ++v5;
        v382 = v380 >> 14;
        v380 >>= 7;
      }

      while (v382);
LABEL_665:
      *(v5 - 1) = v381;
      return v5;
    case 18:
      if (*a4 <= v5)
      {
        v5 = sub_1D9D40E38(a4, v5);
      }

      v232 = *a1;
      v233 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v233 | 0x80;
        v371 = v233 >> 7;
        if (v233 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v371 | 0x80;
            v404 = v371 >> 7;
            ++v59;
            v405 = v371 >> 14;
            v371 >>= 7;
          }

          while (v405);
          *(v59 - 1) = v404;
        }

        else
        {
          v5[1] = v371;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v233;
        v59 = v5 + 1;
      }

      v406 = (2 * v232) ^ (v232 >> 63);
      if (v406 > 0x7F)
      {
        *v59 = v406 | 0x80;
        v407 = v406 >> 7;
        if (v406 >> 14)
        {
          v5 = v59 + 2;
          do
          {
            *(v5 - 1) = v407 | 0x80;
            v408 = v407 >> 7;
            ++v5;
            v409 = v407 >> 14;
            v407 >>= 7;
          }

          while (v409);
          *(v5 - 1) = v408;
        }

        else
        {
          v59[1] = v407;
          return v59 + 2;
        }
      }

      else
      {
        *v59 = v406;
        return v59 + 1;
      }

      return v5;
    default:
      return v5;
  }
}