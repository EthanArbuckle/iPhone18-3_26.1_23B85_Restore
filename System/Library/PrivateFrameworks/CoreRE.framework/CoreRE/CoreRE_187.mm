void *rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Clear(uint64_t a1)
{
  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    result = *i;
    v4 = *(*i + 16);
    if (!v4)
    {
      break;
    }

    *i = v4;
    free(result);
  }

  result[1] = 0;
  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ParseStream<0u,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 40);
  v15 = *(a1 + 40);
  v16 = 0u;
  v17 = 0u;
  v18 = 256;
  v20 = 2;
  LODWORD(v19) = 0;
  *(&v19 + 1) = 0;
  rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
  v5 = *a2;
  if (!**a2)
  {
    v13 = 1;
LABEL_10:
    v14 = &v5->i8[-*(a2 + 8)];
    LODWORD(v19) = v13;
    *(&v19 + 1) = v14;
    goto LABEL_4;
  }

  rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(&v15, a2, a1);
  if (!v19)
  {
    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
    v5 = *a2;
    if (**a2)
    {
      v13 = 2;
      goto LABEL_10;
    }
  }

LABEL_4:
  *&v17 = *(&v16 + 1);
  v6 = v19;
  *(a1 + 88) = v19;
  if (!v6)
  {
    v7 = *(a1 + 64);
    v8 = (v7 - 24);
    *(a1 + 64) = v7 - 24;
    if (v7 - 24 != a1)
    {
      v9 = *(v7 - 2);
      *(v7 - 2) = 0;
      v10 = *v8;
      v11 = *(v7 - 8);
      *(a1 + 20) = *(v8 + 10);
      *(a1 + 16) = v11;
      *a1 = v10;
      *(a1 + 22) = v9;
    }
  }

  *(a1 + 64) = *(a1 + 56);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::ShrinkToFit(v4);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(&v15);
  return a1;
}

int8x16_t **rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(int8x16_t **result)
{
  v1 = *result;
  v2 = (*result)->u8[0];
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100002600;
  if (v3 || v4 == 0)
  {
    v6 = *result;
  }

  else
  {
    v6 = &v1->i8[1];
    v7 = &v1[1] & 0xFFFFFFFFFFFFFFF0;
    if (v6 == v7)
    {
LABEL_12:
      v11.i64[0] = 0xFBFBFBFBFBFBFBFBLL;
      v11.i64[1] = 0xFBFBFBFBFBFBFBFBLL;
      v12.i64[0] = 0x2020202020202020;
      v12.i64[1] = 0x2020202020202020;
      v13.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v13.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v14.i64[0] = 0x909090909090909;
      v14.i64[1] = 0x909090909090909;
      while (1)
      {
        v15 = vrev64q_s8(vbicq_s8(vbicq_s8(vmvnq_s8(vceqq_s8(*v6, v12)), vceqq_s8(*v6, v13)), vceqq_s8(vandq_s8(*v6, v11), v14)));
        if (v15.i64[0])
        {
          v6 = (v6 + (__clz(v15.u64[0]) >> 3));
          goto LABEL_19;
        }

        if (v15.i64[1])
        {
          break;
        }

        ++v6;
      }

      v6 = (v6 + (__clz(v15.u64[1]) >> 3) + 8);
    }

    else
    {
      while (1)
      {
        v8 = v6->u8[0];
        v3 = v8 > 0x20;
        v9 = (1 << v8) & 0x100002600;
        if (v3 || v9 == 0)
        {
          break;
        }

        v6 = (v6 + 1);
        if (v6 == v7)
        {
          v6 = v7;
          goto LABEL_12;
        }
      }
    }
  }

LABEL_19:
  *result = v6;
  return result;
}

void rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, unsigned __int8 **a2, void *a3)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 > 0x6D)
  {
    if (v7 != 123)
    {
      if (v7 == 116)
      {
        v8 = &v6->i8[1];
        *a2 = &v6->u8[1];
        if (v6->i8[1] == 114)
        {
          v8 = &v6->i8[2];
          *a2 = &v6->u8[2];
          if (v6->i8[2] == 117)
          {
            v8 = &v6->i8[3];
            *a2 = &v6->u8[3];
            if (v6->i8[3] == 101)
            {
              *a2 = &v6->u8[4];
              v9 = a3[8];
              if (a3[9] - v9 <= 23)
              {
                rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5, 1);
                v9 = a3[8];
              }

              a3[8] = v9 + 24;
              *(v9 + 8) = 0;
              *(v9 + 16) = 0;
              *v9 = 0;
              v10 = 10;
              goto LABEL_52;
            }
          }
        }

        goto LABEL_128;
      }

      if (v7 != 110)
      {
        goto LABEL_28;
      }

      v8 = &v6->i8[1];
      *a2 = &v6->u8[1];
      if (v6->i8[1] != 117 || (v8 = &v6->i8[2], *a2 = &v6->u8[2], v6->i8[2] != 108) || (v8 = &v6->i8[3], *a2 = &v6->u8[3], v6->i8[3] != 108))
      {
LABEL_128:
        v46 = v8 - a2[1];
        v47 = 3;
LABEL_129:
        *(a1 + 48) = v47;
        *(a1 + 56) = v46;
        return;
      }

      *a2 = &v6->u8[4];
      v11 = a3[8];
      if ((a3[9] - v11) <= 23)
      {
        rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5, 1);
        v11 = a3[8];
      }

      a3[8] = v11 + 3;
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      return;
    }

    *a2 = &v6->u8[1];
    if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::StartObject(a3))
    {
      rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
      if (*(a1 + 48))
      {
        return;
      }

      if (**a2 == 125)
      {
        ++*a2;
        v12 = a3[8];
        v13 = 3;
LABEL_45:
        *(v12 - 2) = v13;
        *(v12 - 24) = 0;
        *(v12 - 16) = 0;
        return;
      }

      for (i = 1; ; ++i)
      {
        if (**a2 != 34)
        {
          v46 = *a2 - a2[1];
          v47 = 4;
          goto LABEL_129;
        }

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3);
        if (*(a1 + 48))
        {
          return;
        }

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
        if (*(a1 + 48))
        {
          return;
        }

        v49 = *a2;
        if (**a2 != 58)
        {
          v46 = v49 - a2[1];
          v47 = 5;
          goto LABEL_129;
        }

        *a2 = &v49->u8[1];
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
        if (*(a1 + 48))
        {
          return;
        }

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3);
        if (*(a1 + 48))
        {
          return;
        }

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
        if (*(a1 + 48))
        {
          return;
        }

        v50 = *a2;
        v51 = **a2;
        if (v51 != 44)
        {
          break;
        }

        *a2 = &v50->u8[1];
        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
        if (*(a1 + 48))
        {
          return;
        }
      }

      if (v51 != 125)
      {
        v46 = v50 - a2[1];
        v47 = 6;
        goto LABEL_129;
      }

      *a2 = &v50->u8[1];
      if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(a3, i))
      {
        return;
      }
    }

LABEL_167:
    v46 = *a2 - a2[1];
    v47 = 16;
    goto LABEL_129;
  }

  if (v7 == 34)
  {

    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3);
    return;
  }

  if (v7 != 91)
  {
    if (v7 == 102)
    {
      v8 = &v6->i8[1];
      *a2 = &v6->u8[1];
      if (v6->i8[1] == 97)
      {
        v8 = &v6->i8[2];
        *a2 = &v6->u8[2];
        if (v6->i8[2] == 108)
        {
          v8 = &v6->i8[3];
          *a2 = &v6->u8[3];
          if (v6->i8[3] == 115)
          {
            v8 = &v6->i8[4];
            *a2 = &v6->u8[4];
            if (v6->i8[4] == 101)
            {
              *a2 = &v6->u8[5];
              v9 = a3[8];
              if (a3[9] - v9 <= 23)
              {
                rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5, 1);
                v9 = a3[8];
              }

              a3[8] = v9 + 24;
              *(v9 + 8) = 0;
              *(v9 + 16) = 0;
              *v9 = 0;
              v10 = 9;
LABEL_52:
              *(v9 + 22) = v10;
              return;
            }
          }
        }
      }

      goto LABEL_128;
    }

LABEL_28:
    v14 = a2[1];
    if (v7 == 45)
    {
      v16 = &v6->i8[1];
      v15 = v6->u8[1];
    }

    else
    {
      v15 = **a2;
      v16 = *a2;
    }

    LODWORD(v17) = v15 - 48;
    if (v15 == 48)
    {
      v26 = 0;
      v22 = 0;
      v28 = 0;
      v29 = 0;
      v21 = 0.0;
      v18 = v16->u8[1];
      v19 = &v16->u8[1];
    }

    else
    {
      if ((v15 - 49) > 8)
      {
        v44 = 3;
        goto LABEL_173;
      }

      v18 = v16->u8[1];
      v19 = &v16->u8[1];
      v20 = v18 - 48;
      v21 = 0.0;
      if (v7 == 45)
      {
        if (v20 <= 9)
        {
          v22 = 0;
          v23 = 214748364;
          while (1)
          {
            if (v17 > 0xCCCCCCB)
            {
              if (v17 != 214748364)
              {
                goto LABEL_127;
              }

              if (v18 > 0x38)
              {
                break;
              }
            }

            v24 = *++v19;
            LODWORD(v17) = v18 + 10 * v17 - 48;
            ++v22;
            v18 = v24;
            if (v24 - 48 >= 0xA)
            {
              goto LABEL_67;
            }
          }

          v18 = 57;
LABEL_60:
          v26 = v23;
          if (v7 == 45)
          {
            while (v26 <= 0xCCCCCCCCCCCCCCBLL || v18 <= 0x38 && v26 == 0xCCCCCCCCCCCCCCCLL)
            {
              v27 = *++v19;
              v26 = (v18 & 0xF) + 10 * v26;
              ++v22;
              v18 = v27;
              if (v27 - 48 >= 0xA)
              {
                goto LABEL_77;
              }
            }
          }

          else
          {
            while (v26 <= 0x1999999999999998 || v18 <= 0x35 && v26 == 0x1999999999999999)
            {
              v30 = *++v19;
              v26 = (v18 & 0xF) + 10 * v26;
              ++v22;
              v18 = v30;
              if (v30 - 48 >= 0xA)
              {
LABEL_77:
                v28 = 0;
                v21 = 0.0;
                goto LABEL_78;
              }
            }
          }

          v21 = v26;
          do
          {
            v31 = v18 - 48;
            v32 = *++v19;
            v18 = v32;
            v21 = v31 + v21 * 10.0;
          }

          while (v32 - 48 < 0xA);
          v28 = 1;
LABEL_78:
          v29 = 1;
          LODWORD(v17) = v23;
          goto LABEL_79;
        }
      }

      else if (v20 <= 9)
      {
        v22 = 0;
        v23 = 429496729;
        while (1)
        {
          if (v17 > 0x19999998)
          {
            if (v17 != 429496729)
            {
LABEL_127:
              v23 = v17;
              goto LABEL_60;
            }

            if (v18 > 0x35)
            {
              goto LABEL_60;
            }
          }

          v25 = *++v19;
          LODWORD(v17) = v18 + 10 * v17 - 48;
          ++v22;
          v18 = v25;
          if (v25 - 48 >= 0xA)
          {
LABEL_67:
            v26 = 0;
            goto LABEL_68;
          }
        }
      }

      v26 = 0;
      v22 = 0;
LABEL_68:
      v28 = 0;
      v29 = 0;
    }

LABEL_79:
    if (v18 == 46)
    {
      v18 = v19[1];
      v16 = (v19 + 1);
      if (v18 - 58 < 0xFFFFFFF6)
      {
        v44 = 14;
        goto LABEL_173;
      }

      v33 = 0;
      if ((v28 & 1) == 0)
      {
        if (!v29)
        {
          v26 = v17;
        }

        while (v18 <= 0x39 && !(v26 >> 53))
        {
          v35 = v16->i8[1];
          v16 = (v16 + 1);
          v34 = v35;
          v26 = v18 - 48 + 10 * v26;
          --v33;
          if (v26)
          {
            ++v22;
          }

          v18 = v34;
          if (v34 <= 47)
          {
            v36 = 0;
            v21 = v26;
            v19 = v16;
            goto LABEL_98;
          }
        }

        v21 = v26;
      }

      v19 = v16;
      while (v18 <= 0x39)
      {
        if (v22 <= 16)
        {
          v21 = (v18 - 48) + v21 * 10.0;
          --v33;
          if (v21 > 0.0)
          {
            ++v22;
          }
        }

        v37 = *++v19;
        v18 = v37;
        if (v37 <= 47)
        {
          goto LABEL_97;
        }
      }

      v28 = 1;
    }

    else
    {
      v33 = 0;
    }

    if (v18 != 101 && v18 != 69)
    {
      if ((v28 & 1) == 0)
      {
        if (v29)
        {
          if (v7 == 45)
          {
            if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(a3, -v26))
            {
              goto LABEL_125;
            }
          }

          else if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint64(a3, v26))
          {
            goto LABEL_125;
          }
        }

        else if (v7 == 45)
        {
          if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int(a3, -v17))
          {
            goto LABEL_125;
          }
        }

        else if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint(a3, v17))
        {
          goto LABEL_125;
        }

        goto LABEL_180;
      }

LABEL_97:
      v36 = 0;
LABEL_98:
      v38 = v33 + v36;
      if (v38 > -309)
      {
        if ((v38 & 0x80000000) == 0)
        {
          v39 = v21 * rapidjson::internal::Pow10(int)::e[v38];
          goto LABEL_118;
        }

        v40 = -v38;
      }

      else
      {
        v39 = 0.0;
        if (v38 < 0xFFFFFD98)
        {
LABEL_122:
          v45 = -v39;
          if (v7 != 45)
          {
            v45 = v39;
          }

          if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Double(a3, v45))
          {
            goto LABEL_125;
          }

LABEL_180:
          v44 = 16;
          goto LABEL_120;
        }

        v21 = v21 / 1.0e308;
        v40 = -308 - v38;
      }

      v39 = v21 / rapidjson::internal::Pow10(int)::e[v40];
LABEL_118:
      if (v39 > 1.79769313e308)
      {
LABEL_119:
        v44 = 13;
LABEL_120:
        v16 = v6;
LABEL_121:
        *(a1 + 48) = v44;
        *(a1 + 56) = v16 - v14;
LABEL_125:
        *a2 = v19;
        a2[1] = v14;
        return;
      }

      goto LABEL_122;
    }

    v16 = (v19 + 1);
    v41 = v19[1];
    v17 = v17;
    if (v29)
    {
      v17 = v26;
    }

    if (!v28)
    {
      v21 = v17;
    }

    if (v41 == 43)
    {
      v16 = (v19 + 2);
      v41 = v19[2];
      if ((v41 - 48) < 0xA)
      {
        v42 = 3;
        goto LABEL_110;
      }
    }

    else if (v41 == 45)
    {
      v16 = (v19 + 2);
      v55 = v19[2] - 48;
      if (v55 < 0xA)
      {
        v57 = v19[3];
        v19 += 3;
        v56 = v57;
        if ((v57 - 48) <= 9)
        {
          while (1)
          {
            v55 = v56 + 10 * v55 - 48;
            if (v55 > (v33 + 2147483639) / 10)
            {
              break;
            }

            v58 = *++v19;
            v56 = v58;
            if ((v58 - 48) >= 0xA)
            {
              goto LABEL_164;
            }
          }

          do
          {
            v59 = *++v19;
          }

          while ((v59 - 48) < 0xA);
        }

LABEL_164:
        v36 = -v55;
        goto LABEL_98;
      }
    }

    else if ((v41 - 48) < 0xA)
    {
      v42 = 2;
LABEL_110:
      v19 += v42;
      v36 = v41 - 48;
      while (1)
      {
        v43 = *v19;
        if ((v43 - 48) > 9)
        {
          goto LABEL_98;
        }

        ++v19;
        v36 = v43 + 10 * v36 - 48;
        if (v36 > 308 - v33)
        {
          goto LABEL_119;
        }
      }
    }

    v44 = 15;
LABEL_173:
    v19 = v16;
    goto LABEL_121;
  }

  *a2 = &v6->u8[1];
  if ((rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::StartArray(a3) & 1) == 0)
  {
    goto LABEL_167;
  }

  rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
  if (*(a1 + 48))
  {
    return;
  }

  if (**a2 == 93)
  {
    ++*a2;
    v12 = a3[8];
    v13 = 4;
    goto LABEL_45;
  }

  v52 = 1;
  do
  {
    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3);
    if (*(a1 + 48))
    {
      break;
    }

    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
    if (*(a1 + 48))
    {
      break;
    }

    v53 = *a2;
    v54 = **a2;
    if (v54 != 44)
    {
      if (v54 != 93)
      {
        v46 = v53 - a2[1];
        v47 = 7;
        goto LABEL_129;
      }

      *a2 = &v53->u8[1];
      if (rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(a3, v52))
      {
        return;
      }

      goto LABEL_167;
    }

    *a2 = &v53->u8[1];
    rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::SkipWhitespaceAndComments<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a2);
    ++v52;
  }

  while (!*(a1 + 48));
}

double rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, _OWORD *a2, void *a3)
{
  v51 = *a2;
  v5 = (v51 + 1);
  v52 = a2;
  *&v51 = v51 + 1;
  *v49 = a1;
  v50 = 0;
  v6.i64[0] = 0x2222222222222222;
  v6.i64[1] = 0x2222222222222222;
  v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  v8.i64[0] = 0x2020202020202020;
  v8.i64[1] = 0x2020202020202020;
  while (1)
  {
    while (1)
    {
      v9 = (&v5->u64[1] + 7) & 0xFFFFFFFFFFFFFFF0;
      while (v5 != v9)
      {
        v10 = v5->u8[0];
        if (v10 == 34 || v10 == 92 || v10 < 0x20)
        {
          goto LABEL_24;
        }

        v11 = *v49;
        v12 = *(*v49 + 24);
        if ((*(*v49 + 32) - v12) <= 0)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, 1);
          v8.i64[0] = 0x2020202020202020;
          v8.i64[1] = 0x2020202020202020;
          v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
          v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
          v6.i64[0] = 0x2222222222222222;
          v6.i64[1] = 0x2222222222222222;
          v12 = *(v11 + 24);
        }

        v5 = (v5 + 1);
        *(v11 + 24) = v12 + 1;
        *v12 = v10;
        ++v50;
      }

      while (1)
      {
        v15 = *v5;
        v16 = vrev64q_s8(vorrq_s8(vorrq_s8(vceqq_s8(*v5, v6), vceqq_s8(*v5, v7)), vcgtq_u8(v8, *v5)));
        if (v16.i64[0])
        {
          break;
        }

        if (v16.i64[1])
        {
          v17 = (__clz(v16.u64[1]) >> 3) | 8;
          goto LABEL_18;
        }

        v50 += 16;
        v13 = *v49;
        v14 = *(*v49 + 24);
        if ((*(*v49 + 32) - v14) <= 15)
        {
          v47 = v15;
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, 16);
          v15 = v47;
          v8.i64[0] = 0x2020202020202020;
          v8.i64[1] = 0x2020202020202020;
          v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
          v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
          v6.i64[0] = 0x2222222222222222;
          v6.i64[1] = 0x2222222222222222;
          v14 = *(v13 + 24);
        }

        *(v13 + 24) = v14 + 1;
        *v14 = v15;
        ++v5;
      }

      if (HIBYTE(v16.i64[0]))
      {
        goto LABEL_24;
      }

      v17 = __clz(v16.u64[0]) >> 3;
LABEL_18:
      v50 += v17;
      v18 = *v49;
      v19 = v17;
      v20 = *(*v49 + 24);
      if (*(*v49 + 32) - v20 < v17)
      {
        rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, v17);
        v8.i64[0] = 0x2020202020202020;
        v8.i64[1] = 0x2020202020202020;
        v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
        v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
        v6.i64[0] = 0x2222222222222222;
        v6.i64[1] = 0x2222222222222222;
        v20 = *(v18 + 24);
      }

      *(v18 + 24) = v20 + v19;
      if (v19)
      {
        for (i = 0; i != v19; ++i)
        {
          *(v20 + i) = v5->i8[i];
        }
      }

      v5 = (v5 + v19);
LABEL_24:
      *&v51 = v5;
      v22 = v5->u8[0];
      if (v22 != 92)
      {
        break;
      }

      *&v51 = v5->i64 + 1;
      v27 = v5->u8[1];
      v28 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseStringToStream<0u,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(rapidjson::GenericStringStream<rapidjson::UTF8<char>> &,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char> &)::escape[v27];
      if (v28)
      {
        v5 = (v5 + 2);
        *&v51 = v5;
        v29 = *v49;
        v30 = *(*v49 + 24);
        if ((*(*v49 + 32) - v30) <= 0)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, 1);
          v8.i64[0] = 0x2020202020202020;
          v8.i64[1] = 0x2020202020202020;
          v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
          v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
          v6.i64[0] = 0x2222222222222222;
          v6.i64[1] = 0x2222222222222222;
          v30 = *(v29 + 24);
        }

        *(v29 + 24) = v30 + 1;
        *v30 = v28;
        ++v50;
      }

      else
      {
        v31 = v5->i64 - *(&v51 + 1);
        if (v27 != 117)
        {
          *(a1 + 48) = 10;
          *(a1 + 56) = v31;
          goto LABEL_54;
        }

        *&v51 = v5->i64 + 2;
        v48 = v5->i64 - *(&v51 + 1);
        v32 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a1, &v51, v31);
        if (*(a1 + 48))
        {
          goto LABEL_54;
        }

        v33 = v32;
        if (v32 >> 11 != 27)
        {
          goto LABEL_37;
        }

        if (v32 >> 10 > 0x36)
        {
          goto LABEL_56;
        }

        v34 = v51;
        if (*v51 != 92)
        {
          goto LABEL_56;
        }

        v35 = *(v51 + 1);
        *&v51 = v51 + 1;
        if (v35 != 117)
        {
          goto LABEL_56;
        }

        v36 = v32;
        *&v51 = v34 + 2;
        v37 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a1, &v51, v48);
        if (*(a1 + 48))
        {
          goto LABEL_54;
        }

        if ((v37 - 57344) <= 0xFFFFFBFF)
        {
LABEL_56:
          *(a1 + 48) = 9;
          v43 = v48;
          goto LABEL_49;
        }

        v33 = v37 + (v36 << 10) - 56613888;
LABEL_37:
        rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(v49, v33);
        v5 = v51;
        v6.i64[0] = 0x2222222222222222;
        v6.i64[1] = 0x2222222222222222;
        v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
        v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
        v8.i64[0] = 0x2020202020202020;
        v8.i64[1] = 0x2020202020202020;
      }
    }

    if (v22 == 34)
    {
      break;
    }

    if (v22 <= 0x1F)
    {
      v44 = &v5->i8[-*(&v51 + 1)];
      if (v5->i8[0])
      {
        v45 = 12;
      }

      else
      {
        v45 = 11;
      }

      *(a1 + 48) = v45;
      *(a1 + 56) = v44;
      goto LABEL_54;
    }

    v23 = &v5->i8[1];
    *&v51 = v5->i64 + 1;
    v24 = v5->i8[0];
    v25 = *v49;
    v26 = *(*v49 + 24);
    if ((*(*v49 + 32) - v26) <= 0)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, 1);
      v8.i64[0] = 0x2020202020202020;
      v8.i64[1] = 0x2020202020202020;
      v7.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
      v7.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
      v6.i64[0] = 0x2222222222222222;
      v6.i64[1] = 0x2222222222222222;
      v26 = *(v25 + 24);
    }

    *(v25 + 24) = v26 + 1;
    *v26 = v24;
    ++v50;
    v5 = v23;
  }

  *&v51 = v5->i64 + 1;
  v38 = *v49;
  v39 = *(*v49 + 24);
  if ((*(*v49 + 32) - v39) <= 0)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v49, 1);
    v39 = *(v38 + 24);
  }

  *(v38 + 24) = v39 + 1;
  *v39 = 0;
  v40 = v50;
  v41 = ++v50;
  if (!*(a1 + 48))
  {
    v42 = (*(*v49 + 24) - v41);
    *(*v49 + 24) = v42;
    if ((rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(a3, v42, v40, 1) & 1) == 0)
    {
      v43 = v5->i64 - *(&v51 + 1) + 1;
      *(a1 + 48) = 16;
LABEL_49:
      *(a1 + 56) = v43;
    }
  }

LABEL_54:
  result = *&v51;
  *v52 = v51;
  return result;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[4] - v2 + ((a1[4] - v2 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v2 = 0;
    v3 = a1[5];
  }

  v4 = 24 * a2 - v2 + a1[3];
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v5);
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(void *a1, size_t size)
{
  v4 = a1[2];
  v5 = a1[3];
  if (size)
  {
    result = malloc_type_realloc(v4, size, 0xD5BB006EuLL);
  }

  else
  {
    free(v4);
    result = 0;
  }

  a1[2] = result;
  a1[3] = &result[v5 - v4];
  a1[4] = &result[size];
  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(void *a1, void *a2, int a3, int a4)
{
  v8 = a1 + 8;
  v7 = a1[8];
  v9 = v8[1] - v7;
  if (a4)
  {
    if (v9 <= 23)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
      v7 = a1[8];
    }

    a1[8] = v7 + 24;
    v10 = a1[3];
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v11 = &rapidjson::GenericStringRef<char>::emptyString;
    if (a2)
    {
      v11 = a2;
    }

    v14 = v11;
    v15 = a3;
    rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetStringRaw(v7, &v14, v10);
  }

  else
  {
    if (v9 <= 23)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
      v7 = a1[8];
    }

    a1[8] = v7 + 24;
    *(v7 + 16) = 0;
    v12 = &rapidjson::GenericStringRef<char>::emptyString;
    *(v7 + 22) = 1029;
    if (a2)
    {
      v12 = a2;
    }

    *v7 = 0;
    *(v7 + 8) = v12;
    *v7 = a3;
  }

  return 1;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  LODWORD(result) = 0;
  v4 = *a2 + 1;
  v5 = 4;
  while (1)
  {
    v6 = *(v4 - 1);
    if ((v6 - 48) >= 0xA)
    {
      break;
    }

    v7 = -48;
LABEL_8:
    result = (v6 + 16 * result + v7);
    *a2 = v4++;
    if (!--v5)
    {
      return result;
    }
  }

  if (*(v4 - 1) - 65 < 6)
  {
    v7 = -55;
    goto LABEL_8;
  }

  if (*(v4 - 1) - 97 < 6)
  {
    v7 = -87;
    goto LABEL_8;
  }

  result = 0;
  *(v3 + 48) = 8;
  *(v3 + 56) = a3;
  return result;
}

char *rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(char *result, unsigned int a2)
{
  v3 = result;
  if (a2 <= 0x7F)
  {
    v4 = *result;
    v5 = *(*result + 24);
    if ((*(*result + 32) - v5) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result, 1);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = a2;
    v6 = v3 + 8;
    goto LABEL_27;
  }

  if (a2 <= 0x7FF)
  {
    v7 = (a2 >> 6) | 0xFFFFFFC0;
    v8 = *result;
    v9 = *(*result + 24);
    if ((*(*result + 32) - v9) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result, 1);
      v9 = *(v8 + 24);
    }

    *(v8 + 24) = v9 + 1;
    *v9 = v7;
    v6 = v3 + 8;
    ++*(v3 + 2);
LABEL_24:
    v27 = *v3;
    v28 = v27[3];
    if ((v27[4] - v28) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v27, 1);
      v28 = v27[3];
    }

    v27[3] = v28 + 1;
    *v28 = a2 & 0x3F | 0x80;
    goto LABEL_27;
  }

  v10 = *result;
  v11 = *(*result + 24);
  v12 = *(*result + 32) - v11;
  if (HIWORD(a2))
  {
    v20 = (a2 >> 18) | 0xFFFFFFF0;
    if (v12 <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result, 1);
      v11 = *(v10 + 24);
    }

    *(v10 + 24) = v11 + 1;
    *v11 = v20;
    v6 = v3 + 8;
    ++*(v3 + 2);
    v21 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
    v22 = *v3;
    v23 = *(*v3 + 24);
    if ((*(*v3 + 32) - v23) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3, 1);
      v21 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
      v23 = v22[3];
    }

    v22[3] = v23 + 1;
    *v23 = v21;
    ++*(v3 + 2);
    v24 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v25 = *v3;
    v26 = *(*v3 + 24);
    if ((*(*v3 + 32) - v26) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3, 1);
      v24 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
      v26 = *(v25 + 24);
    }

    *(v25 + 24) = v26 + 1;
    *v26 = v24;
    ++*(v3 + 2);
    goto LABEL_24;
  }

  v13 = (a2 >> 12) | 0xFFFFFFE0;
  if (v12 <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result, 1);
    v11 = *(v10 + 24);
  }

  *(v10 + 24) = v11 + 1;
  *v11 = v13;
  v6 = v3 + 8;
  ++*(v3 + 2);
  v14 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
  v15 = *v3;
  v16 = *(*v3 + 24);
  if ((*(*v3 + 32) - v16) <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3, 1);
    v14 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v16 = *(v15 + 24);
  }

  *(v15 + 24) = v16 + 1;
  *v16 = v14;
  ++*(v3 + 2);
  v17 = a2 & 0x3F | 0x80;
  v18 = *v3;
  v19 = v18[3];
  if ((v18[4] - v19) <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v18, 1);
    v17 = a2 & 0x3F | 0x80;
    v19 = v18[3];
  }

  v18[3] = v19 + 1;
  *v19 = v17;
LABEL_27:
  ++*v6;
  return result;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[4] - v2 + ((a1[4] - v2 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v2 = 0;
    v3 = a1[5];
  }

  v4 = a2 - v2 + a1[3];
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v5);
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::StartObject(void *a1)
{
  v2 = a1[8];
  if (a1[9] - v2 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v2 = a1[8];
  }

  a1[8] = v2 + 24;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 22) = 3;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 48 * a2);
  *(a1 + 64) = v3;
  v4 = *(a1 + 24);
  *(v3 - 1) = 3;
  if (a2)
  {
    v5 = 48 * a2;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v4, v5);
    *(v3 - 2) = v6;
    memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::StartArray(void *a1)
{
  v2 = a1[8];
  if (a1[9] - v2 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v2 = a1[8];
  }

  a1[8] = v2 + 24;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 22) = 4;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 24 * a2);
  *(a1 + 64) = v3;
  v4 = *(a1 + 24);
  *(v3 - 1) = 4;
  if (a2)
  {
    v5 = 24 * a2;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v4, v5);
    *(v3 - 2) = v6;
    memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Double(void *a1, double a2)
{
  v4 = a1[8];
  if (a1[9] - v4 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v4 = a1[8];
  }

  a1[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  *(v4 + 22) = 534;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(void *a1, unint64_t a2)
{
  v4 = a1[8];
  if (a1[9] - v4 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v4 = a1[8];
  }

  a1[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  *(v4 + 22) = 150;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(a2))
    {
      v5 = 406;
    }

    else
    {
      v5 = 470;
    }

    if (!(a2 >> 31))
    {
      v5 = 502;
    }

    goto LABEL_12;
  }

  if (a2 >= 0xFFFFFFFF80000000)
  {
    v5 = 182;
LABEL_12:
    *(v4 + 22) = v5;
  }

  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint64(void *a1, uint64_t a2)
{
  v4 = a1[8];
  if (a1[9] - v4 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v4 = a1[8];
  }

  a1[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 278;
  }

  else
  {
    v5 = 406;
  }

  if (a2 >> 31)
  {
    v6 = 470;
  }

  else
  {
    v6 = 502;
  }

  if (!HIDWORD(a2))
  {
    v5 = v6;
  }

  *(v4 + 22) = v5;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int(void *a1, int a2)
{
  v4 = a1[8];
  if (a1[9] - v4 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v4 = a1[8];
  }

  a1[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 182;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return 1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint(void *a1, int a2)
{
  v4 = a1[8];
  if (a1[9] - v4 <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5, 1);
    v4 = a1[8];
  }

  a1[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 470;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return 1;
}

void rapidjson::internal::Stack<rapidjson::CrtAllocator>::ShrinkToFit(void *a1)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1 + 2;
  if (v4 == v3)
  {
    free(v3);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  else
  {

    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v4 - v3);
  }
}

uint64_t rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Bool(uint64_t a1, int a2)
{
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  if (!a2)
  {
    std::ostream::put();
  }

  std::ostream::put();
  std::ostream::put();
  std::ostream::put();
  result = std::ostream::put();
  if (*(a1 + 32) == *(a1 + 24))
  {

    return std::ostream::flush();
  }

  return result;
}

uint64_t rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::String(uint64_t a1, uint64_t a2, unsigned int a3)
{
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  std::ostream::put();
  if (a3)
  {
    v6 = 0;
    v7 = a3;
    do
    {
      v8 = rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(char const*,unsigned int)::escape[*(a2 + v6)];
      if (rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(char const*,unsigned int)::escape[*(a2 + v6)])
      {
        std::ostream::put();
        std::ostream::put();
        if (v8 != 117)
        {
          goto LABEL_5;
        }

        std::ostream::put();
        std::ostream::put();
        std::ostream::put();
      }

      std::ostream::put();
LABEL_5:
      ++v6;
    }

    while (v6 < v7);
  }

  result = std::ostream::put();
  if (*(a1 + 32) == *(a1 + 24))
  {

    return std::ostream::flush();
  }

  return result;
}

_BYTE *rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint(uint64_t a1, rapidjson::internal *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  result = rapidjson::internal::u32toa(a2, v8, v4);
  if (v8 != result)
  {
    v6 = result;
    v7 = v8;
    do
    {
      ++v7;
      result = std::ostream::put();
    }

    while (v7 != v6);
  }

  if (*(a1 + 32) == *(a1 + 24))
  {

    return std::ostream::flush();
  }

  return result;
}

char *rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Int64(uint64_t a1, unint64_t a2)
{
  *&v10[20] = *MEMORY[0x1E69E9840];
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = v10;
    v9 = 45;
    a2 = -a2;
  }

  else
  {
    v5 = &v9;
  }

  result = rapidjson::internal::u64toa(a2, v5, v4);
  if (&v9 != result)
  {
    v7 = result;
    v8 = &v9;
    do
    {
      ++v8;
      result = std::ostream::put();
    }

    while (v8 != v7);
  }

  if (*(a1 + 32) == *(a1 + 24))
  {

    return std::ostream::flush();
  }

  return result;
}

_BYTE *rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint64(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(a1);
  result = rapidjson::internal::u64toa(a2, v8, v4);
  if (v8 != result)
  {
    v6 = result;
    v7 = v8;
    do
    {
      ++v7;
      result = std::ostream::put();
    }

    while (v7 != v6);
  }

  if (*(a1 + 32) == *(a1 + 24))
  {

    return std::ostream::flush();
  }

  return result;
}

uint64_t rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::PrettyPrefix(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 == *(result + 24))
  {
    *(result + 60) = 1;
    return result;
  }

  v3 = *(v2 - 16);
  if (*(v2 - 8) == 1)
  {
    if (v3)
    {
      result = std::ostream::put();
      if (*(v1 + 68))
      {
        result = std::ostream::put();
      }
    }

    if (*(v1 + 68))
    {
      goto LABEL_13;
    }

    std::ostream::put();
  }

  else
  {
    if (v3)
    {
      std::ostream::put();
    }

    result = std::ostream::put();
    if (*(v2 - 16))
    {
      goto LABEL_13;
    }
  }

  result = rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(v1);
LABEL_13:
  ++*(v2 - 16);
  return result;
}

uint64_t rapidjson::PrettyWriter<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteIndent(uint64_t result)
{
  for (i = ((*(result + 32) - *(result + 24)) >> 4) * *(result + 64); i; --i)
  {
    result = std::ostream::put();
  }

  return result;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Level>(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1[4] - v1 + ((a1[4] - v1 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v1 = 0;
    v2 = a1[5];
  }

  v3 = a1[3] - v1 + 16;
  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v4);
}

double re::HashTable<MTL::FunctionType,re::DynamicArray<re::DynamicString>,re::Hash<MTL::FunctionType>,re::EqualTo<MTL::FunctionType>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<re::DynamicString>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 64;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<MTL::FunctionType,re::DynamicArray<re::DynamicString>,re::Hash<MTL::FunctionType>,re::EqualTo<MTL::FunctionType>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<MTL::FunctionType,re::DynamicArray<re::DynamicString>,re::Hash<MTL::FunctionType>,re::EqualTo<MTL::FunctionType>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24));
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<MTL::FunctionType,re::DynamicArray<re::DynamicString>,re::Hash<MTL::FunctionType>,re::EqualTo<MTL::FunctionType>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,false>(uint64_t result, re::DynamicString *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  v9 = v7 - 32;
  while (1)
  {
    v10 = (a2 - v8) >> 5;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v53 = a2 - 32;
      result = re::DynamicString::operator<(v53, v8);
      if (result)
      {
        v52 = v8;
        v51 = v53;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v52, v51);
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v54 = v8 + 32;
      v56 = v8 == a2 || v54 == a2;
      if (a4)
      {
        if (!v56)
        {
          v57 = 0;
          v58 = v8;
          do
          {
            v59 = v58;
            v58 = v54;
            result = re::DynamicString::operator<(v54, v59);
            if (result)
            {
              v99 = *v58;
              *v58 = 0;
              v60 = v58[3];
              v101 = v58[2];
              v58[2] = 0;
              v102 = v60;
              v58[3] = 0;
              v100 = v58[1];
              v58[1] = 0;
              v61 = v57;
              while (1)
              {
                v62 = v8 + v61;
                re::DynamicString::operator=((v8 + v61 + 32), (v8 + v61));
                if (!v61)
                {
                  break;
                }

                if (v100)
                {
                  v63 = v101;
                }

                else
                {
                  v63 = &v100 + 1;
                }

                if (*(v62 - 3))
                {
                  v64 = *(v62 - 2);
                }

                else
                {
                  v64 = v62 - 23;
                }

                v61 -= 32;
                if ((strcmp(v63, v64) & 0x80000000) == 0)
                {
                  v65 = (v8 + v61 + 32);
                  goto LABEL_116;
                }
              }

              v65 = v8;
LABEL_116:
              re::DynamicString::operator=(v65, &v99);
              result = v99;
              if (v99 && (v100 & 1) != 0)
              {
                result = (*(*v99 + 40))();
              }
            }

            v54 = (v58 + 4);
            v57 += 32;
          }

          while (v58 + 4 != a2);
        }
      }

      else if (!v56)
      {
        do
        {
          v90 = v54;
          result = re::DynamicString::operator<(v54, v8);
          if (result)
          {
            v99 = *v90;
            *v90 = 0;
            v91 = v90[3];
            v101 = v90[2];
            v90[2] = 0;
            v102 = v91;
            v90[3] = 0;
            v100 = v90[1];
            v90[1] = 0;
            do
            {
              re::DynamicString::operator=((v8 + 32), v8);
              v92 = (v8 - 32);
              if (v100)
              {
                v93 = v101;
              }

              else
              {
                v93 = &v100 + 1;
              }

              if (*(v8 - 3))
              {
                v94 = *(v8 - 2);
              }

              else
              {
                v94 = v8 - 23;
              }

              v8 = (v8 - 32);
            }

            while (strcmp(v93, v94) < 0);
            re::DynamicString::operator=((v92 + 4), &v99);
            result = v99;
            if (v99)
            {
              if (v100)
              {
                result = (*(*v99 + 40))();
              }
            }
          }

          v54 = (v90 + 4);
          v8 = v90;
        }

        while (v90 + 4 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v66 = v11 >> 1;
        v67 = v11 >> 1;
        do
        {
          v68 = v67;
          if (v66 >= v67)
          {
            v69 = (2 * v67) | 1;
            v70 = (v8 + 32 * v69);
            if (2 * v67 + 2 < v10 && re::DynamicString::operator<(v8 + 32 * v69, v70 + 32))
            {
              v70 = (v70 + 32);
              v69 = 2 * v68 + 2;
            }

            v71 = (v8 + 32 * v68);
            if ((re::DynamicString::operator<(v70, v71) & 1) == 0)
            {
              v99 = *v71;
              *v71 = 0;
              v101 = *(v71 + 2);
              *(v71 + 2) = 0;
              v102 = *(v71 + 3);
              *(v71 + 3) = 0;
              v100 = *(v71 + 1);
              *(v71 + 1) = 0;
              do
              {
                v72 = v70;
                re::DynamicString::operator=(v71, v70);
                if (v66 < v69)
                {
                  break;
                }

                v73 = (2 * v69) | 1;
                v70 = (v8 + 32 * v73);
                v74 = 2 * v69 + 2;
                if (v74 < v10 && re::DynamicString::operator<(v8 + 32 * v73, v70 + 32))
                {
                  v70 = (v70 + 32);
                  v73 = v74;
                }

                v71 = v72;
                v69 = v73;
              }

              while (!re::DynamicString::operator<(v70, &v99));
              re::DynamicString::operator=(v72, &v99);
              if (v99 && (v100 & 1) != 0)
              {
                (*(*v99 + 40))();
              }
            }
          }

          v67 = v68 - 1;
        }

        while (v68);
        do
        {
          v75 = 0;
          v95 = *v8;
          *v8 = 0;
          v76 = *(v8 + 3);
          v97 = *(v8 + 2);
          *(v8 + 2) = 0;
          v98 = v76;
          *(v8 + 3) = 0;
          v96 = *(v8 + 1);
          *(v8 + 1) = 0;
          v77 = v8;
          do
          {
            v78 = v77 + 32 * v75;
            v79 = (v78 + 32);
            v80 = (2 * v75) | 1;
            v81 = 2 * v75 + 2;
            if (v81 < v10)
            {
              v82 = (v78 + 64);
              if (re::DynamicString::operator<((v78 + 32), (v78 + 64)))
              {
                v79 = v82;
                v80 = v81;
              }
            }

            re::DynamicString::operator=(v77, v79);
            v77 = v79;
            v75 = v80;
          }

          while (v80 <= ((v10 - 2) >> 1));
          a2 = (a2 - 32);
          if (v79 == a2)
          {
            re::DynamicString::operator=(v79, &v95);
          }

          else
          {
            re::DynamicString::operator=(v79, a2);
            re::DynamicString::operator=(a2, &v95);
            v83 = (v79 - v8 + 32) >> 5;
            v84 = v83 < 2;
            v85 = v83 - 2;
            if (!v84)
            {
              v86 = v85 >> 1;
              v87 = (v8 + 32 * (v85 >> 1));
              if (re::DynamicString::operator<(v87, v79))
              {
                v99 = *v79;
                *v79 = 0;
                v88 = *(v79 + 3);
                v101 = *(v79 + 2);
                *(v79 + 2) = 0;
                v102 = v88;
                *(v79 + 3) = 0;
                v100 = *(v79 + 1);
                *(v79 + 1) = 0;
                do
                {
                  v89 = v87;
                  re::DynamicString::operator=(v79, v87);
                  if (!v86)
                  {
                    break;
                  }

                  v86 = (v86 - 1) >> 1;
                  v87 = (v8 + 32 * v86);
                  v79 = v89;
                }

                while ((re::DynamicString::operator<(v87, &v99) & 1) != 0);
                re::DynamicString::operator=(v89, &v99);
                if (v99)
                {
                  if (v100)
                  {
                    (*(*v99 + 40))();
                  }
                }
              }
            }
          }

          result = v95;
          if (v95 && (v96 & 1) != 0)
          {
            result = (*(*v95 + 40))();
          }

          v84 = v10-- <= 2;
        }

        while (!v84);
      }

      return result;
    }

    v12 = (v8 + 32 * (v10 >> 1));
    v13 = (a2 - 32);
    if (v10 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(v8 + 32 * (v10 >> 1), v8, v13);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(v8, (v8 + 32 * (v10 >> 1)), v13);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(v8 + 32, (v12 - 4), (a2 - 64));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(v8 + 64, (v12 + 4), (a2 - 96));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>((v12 - 4), (v8 + 32 * (v10 >> 1)), (v12 + 4));
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v8, (v8 + 32 * (v10 >> 1)));
    }

    --a3;
    if ((a4 & 1) == 0 && (re::DynamicString::operator<(v9, v8) & 1) == 0)
    {
      v99 = *v8;
      *v8 = 0;
      v22 = *(v8 + 2);
      v23 = *(v8 + 3);
      v101 = v22;
      *(v8 + 2) = 0;
      v102 = v23;
      *(v8 + 3) = 0;
      v100 = *(v8 + 1);
      LOBYTE(v23) = v100;
      *(v8 + 1) = 0;
      if (v23)
      {
        v24 = v22;
      }

      else
      {
        v24 = &v100 + 1;
      }

      if (*(a2 - 3))
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = a2 - 23;
      }

      if (strcmp(v24, v25) < 0)
      {
        v26 = v8;
        do
        {
          v7 = v26 + 32;
          v27 = *(v26 + 5);
          v28 = *(v26 + 6);
          v29 = v26 + 41;
          if (v27)
          {
            v30 = v28;
          }

          else
          {
            v30 = v29;
          }

          v31 = strcmp(v24, v30);
          v26 = v7;
        }

        while ((v31 & 0x80000000) == 0);
      }

      else
      {
        v32 = (v8 + 32);
        do
        {
          v7 = v32;
          if (v32 >= a2)
          {
            break;
          }

          v33 = (*(v32 + 1) & 1) != 0 ? *(v32 + 2) : v32 + 9;
          v34 = strcmp(v24, v33);
          v32 = (v7 + 32);
        }

        while ((v34 & 0x80000000) == 0);
      }

      v35 = a2;
      if (v7 < a2)
      {
        v36 = a2;
        do
        {
          v35 = (v36 - 32);
          v37 = *(v36 - 3);
          v38 = *(v36 - 2);
          v39 = v36 - 23;
          if (v37)
          {
            v40 = v38;
          }

          else
          {
            v40 = v39;
          }

          v41 = strcmp(v24, v40);
          v36 = v35;
        }

        while (v41 < 0);
      }

      while (v7 < v35)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v7, v35);
        do
        {
          v42 = *(v7 + 40);
          v43 = *(v7 + 48);
          v44 = (v7 + 41);
          v7 += 32;
          if (v42)
          {
            v45 = v43;
          }

          else
          {
            v45 = v44;
          }
        }

        while ((strcmp(v24, v45) & 0x80000000) == 0);
        do
        {
          v46 = *(v35 - 3);
          v47 = *(v35 - 2);
          v48 = v35 - 23;
          v35 = (v35 - 32);
          if (v46)
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }
        }

        while (strcmp(v24, v49) < 0);
      }

      if ((v7 - 32) != v8)
      {
        re::DynamicString::operator=(v8, (v7 - 32));
      }

      re::DynamicString::operator=((v7 - 32), &v99);
      result = v99;
      if (v99 && (v100 & 1) != 0)
      {
        result = (*(*v99 + 40))();
      }

      a4 = 0;
      goto LABEL_2;
    }

    v14 = 0;
    v99 = *v8;
    *v8 = 0;
    v15 = *(v8 + 3);
    v101 = *(v8 + 2);
    *(v8 + 2) = 0;
    v102 = v15;
    *(v8 + 3) = 0;
    v100 = *(v8 + 1);
    *(v8 + 1) = 0;
    do
    {
      v14 += 32;
    }

    while ((re::DynamicString::operator<(v8 + v14, &v99) & 1) != 0);
    v16 = (v8 + v14);
    v17 = a2;
    if (v14 == 32)
    {
      v17 = a2;
      do
      {
        if (v16 >= v17)
        {
          break;
        }

        v17 -= 32;
      }

      while ((re::DynamicString::operator<(v17, &v99) & 1) == 0);
    }

    else
    {
      do
      {
        v17 -= 32;
      }

      while (!re::DynamicString::operator<(v17, &v99));
    }

    if (v16 >= v17)
    {
      v20 = (v16 - 4);
    }

    else
    {
      v18 = v8 + v14;
      v19 = v17;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v18, v19);
        do
        {
          v18 += 32;
        }

        while ((re::DynamicString::operator<(v18, &v99) & 1) != 0);
        do
        {
          v19 = (v19 - 32);
        }

        while (!re::DynamicString::operator<(v19, &v99));
      }

      while (v18 < v19);
      v20 = (v18 - 32);
    }

    if (v20 != v8)
    {
      re::DynamicString::operator=(v8, v20);
    }

    re::DynamicString::operator=(v20, &v99);
    if (v99 && (v100 & 1) != 0)
    {
      (*(*v99 + 40))();
    }

    if (v16 < v17)
    {
      goto LABEL_43;
    }

    v21 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *>(v8, v20);
    v7 = v20 + 32;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *>(v20 + 32, a2);
    if (!result)
    {
      if (v21)
      {
        goto LABEL_2;
      }

LABEL_43:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,false>(v8, v20, a3, a4 & 1);
      a4 = 0;
      v7 = v20 + 32;
      goto LABEL_2;
    }

    a2 = v20;
    if (v21)
    {
      return result;
    }
  }

  if (v10 == 3)
  {
    return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(v8, (v8 + 32), (a2 - 32));
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(v8, (v8 + 32), (v8 + 64), (v8 + 96), (a2 - 32));
    }

    goto LABEL_10;
  }

  v50 = (a2 - 32);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(v8, (v8 + 32), (v8 + 64));
  result = re::DynamicString::operator<(v50, v8 + 64);
  if (result)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v8 + 64, v50);
    result = re::DynamicString::operator<(v8 + 64, v8 + 32);
    if (result)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v8 + 32, (v8 + 64));
      result = re::DynamicString::operator<(v8 + 32, v8);
      if (result)
      {
        v51 = (v8 + 32);
        v52 = v8;
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v52, v51);
      }
    }
  }

  return result;
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(uint64_t a1, re::DynamicString *a2)
{
  v4 = *a1;
  v6 = *(a1 + 24);
  v5 = *(a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  re::DynamicString::operator=(a1, a2);
  re::DynamicString::operator=(a2, &v4);
  result = v4;
  if (v4)
  {
    if (v5)
    {
      return (*(*v4 + 40))();
    }
  }

  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(uint64_t a1, re::DynamicString *a2, re::DynamicString *a3)
{
  v6 = re::DynamicString::operator<(a2, a1);
  result = re::DynamicString::operator<(a3, a2);
  if (v6)
  {
    if (result)
    {
      v8 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
      result = re::DynamicString::operator<(a3, a2);
      if (!result)
      {
        return result;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
    result = re::DynamicString::operator<(a2, a1);
    if (!result)
    {
      return result;
    }

    v8 = a1;
    v9 = a2;
  }

  return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v8, v9);
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(uint64_t a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *a4, re::DynamicString *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(a1, a2, a3);
  if (re::DynamicString::operator<(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a3, a4);
    if (re::DynamicString::operator<(a3, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
      if (re::DynamicString::operator<(a2, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
      }
    }
  }

  result = re::DynamicString::operator<(a5, a4);
  if (result)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a4, a5);
    result = re::DynamicString::operator<(a4, a3);
    if (result)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a3, a4);
      result = re::DynamicString::operator<(a3, a2);
      if (result)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
        result = re::DynamicString::operator<(a2, a1);
        if (result)
        {

          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(a1, (a1 + 32), (a2 - 32));
        return 1;
      case 4:
        v17 = (a2 - 32);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64));
        if (!re::DynamicString::operator<(v17, a1 + 64))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1 + 64, v17);
        if (!re::DynamicString::operator<(a1 + 64, a1 + 32))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1 + 32, (a1 + 64));
        if (!re::DynamicString::operator<(a1 + 32, a1))
        {
          return 1;
        }

        v7 = (a1 + 32);
        v6 = a1;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 32);
      if (re::DynamicString::operator<(a2 - 32, a1))
      {
        v6 = a1;
        v7 = v5;
LABEL_6:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v6, v7);
      }

      return 1;
    }
  }

  v8 = a1 + 64;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64));
  v9 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (!re::DynamicString::operator<(v9, v8))
  {
LABEL_30:
    v8 = v9;
    v10 += 32;
    v9 += 32;
    if (v9 == a2)
    {
      return 1;
    }
  }

  v20 = *v9;
  v22 = *(v9 + 24);
  v21 = *(v9 + 8);
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  v12 = v10;
  while (1)
  {
    v13 = a1 + v12;
    re::DynamicString::operator=((a1 + v12 + 96), (a1 + v12 + 64));
    if (v12 == -64)
    {
      break;
    }

    if (v21)
    {
      v14 = *(&v21 + 1);
    }

    else
    {
      v14 = &v21 + 1;
    }

    if (*(v13 + 40))
    {
      v15 = *(v13 + 48);
    }

    else
    {
      v15 = (v13 + 41);
    }

    v12 -= 32;
    if ((strcmp(v14, v15) & 0x80000000) == 0)
    {
      v16 = (a1 + v12 + 96);
      goto LABEL_26;
    }
  }

  v16 = a1;
LABEL_26:
  re::DynamicString::operator=(v16, &v20);
  if (++v11 != 8)
  {
    if (v20 && (v21 & 1) != 0)
    {
      (*(*v20 + 40))();
    }

    goto LABEL_30;
  }

  v18 = v9 + 32 == a2;
  if (v20 && (v21 & 1) != 0)
  {
    (*(*v20 + 40))();
  }

  return v18;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,false>(uint64_t result, unsigned __int16 *a2, uint64_t a3, char a4)
{
  v7 = result;
  v205 = *MEMORY[0x1E69E9840];
LABEL_2:
  v189 = a2 - 139;
  v190 = (a2 - 52);
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    v10 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v8) >> 3);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        if (*(a2 - 35) >= *(v7 + 34))
        {
          return result;
        }

LABEL_119:
        v83 = v7;
LABEL_120:
        v84 = (a2 - 52);
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v83, v84);
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v7 + 104, v7 + 208, v190);
    }

    if (v10 == 5)
    {
      result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,0>(v7, v7 + 104, v7 + 208, v7 + 312);
      if (*(a2 - 35) >= *(v7 + 346))
      {
        return result;
      }

      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7 + 312, v190);
      if (*(v7 + 346) >= *(v7 + 242))
      {
        return result;
      }

      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7 + 208, v7 + 312);
      if (*(v7 + 242) >= *(v7 + 138))
      {
        return result;
      }

      v79 = v7 + 104;
      v80 = v7 + 208;
      goto LABEL_187;
    }

LABEL_10:
    if (v9 <= 2495)
    {
      if (a4)
      {
        if (v7 != a2)
        {
          v85 = (v7 + 104);
          if ((v7 + 104) != a2)
          {
            v86 = 0;
            v87 = v7;
            do
            {
              v88 = v85;
              if (*(v87 + 69) < *(v87 + 17))
              {
                v198 = 0u;
                v199 = 0u;
                *&v198 = *v85;
                *v85 = 0;
                v89 = v199;
                v90 = v88[3];
                *&v199 = v88[2];
                v88[2] = v89;
                *(&v199 + 1) = v90;
                v88[3] = 0;
                *(&v198 + 1) = v88[1];
                v88[1] = 0;
                v91 = *(v87 + 19);
                v92 = *(v87 + 23);
                v202 = *(v87 + 21);
                v203 = v92;
                v204 = *(v87 + 50);
                v200 = *(v87 + 17);
                v201 = v91;
                v93 = v86;
                while (1)
                {
                  v94 = v7 + v93;
                  re::DynamicString::operator=((v7 + v93 + 104), (v7 + v93));
                  v95 = *(v7 + v93 + 32);
                  *(v94 + 152) = *(v94 + 48);
                  v96 = *(v7 + v93 + 80);
                  *(v94 + 168) = *(v94 + 64);
                  *(v94 + 184) = v96;
                  *(v94 + 200) = *(v94 + 96);
                  *(v94 + 136) = v95;
                  if (!v93)
                  {
                    break;
                  }

                  v93 -= 104;
                  if (WORD1(v200) >= *(v94 - 70))
                  {
                    v97 = (v7 + v93 + 104);
                    goto LABEL_133;
                  }
                }

                v97 = v7;
LABEL_133:
                re::DynamicString::operator=(v97, &v198);
                *(v94 + 32) = v200;
                v98 = v201;
                v99 = v202;
                v100 = v203;
                *(v94 + 96) = v204;
                *(v94 + 64) = v99;
                *(v94 + 80) = v100;
                *(v94 + 48) = v98;
                result = v198;
                if (v198 && (BYTE8(v198) & 1) != 0)
                {
                  result = (*(*v198 + 40))();
                }
              }

              v85 = v88 + 13;
              v86 += 104;
              v87 = v88;
            }

            while (v88 + 13 != a2);
          }
        }
      }

      else if (v7 != a2)
      {
        v172 = (v7 + 104);
        if ((v7 + 104) != a2)
        {
          do
          {
            v173 = v172;
            if (*(v7 + 138) < *(v7 + 34))
            {
              v198 = 0u;
              v199 = 0u;
              *&v198 = *v172;
              *v172 = 0;
              v174 = v199;
              v175 = v173[3];
              *&v199 = v173[2];
              v173[2] = v174;
              *(&v199 + 1) = v175;
              v173[3] = 0;
              *(&v198 + 1) = v173[1];
              v173[1] = 0;
              v176 = *(v7 + 152);
              v177 = *(v7 + 184);
              v202 = *(v7 + 168);
              v203 = v177;
              v204 = *(v7 + 200);
              v200 = *(v7 + 136);
              v201 = v176;
              v178 = v173;
              do
              {
                v179 = (v178 - 104);
                v180 = re::DynamicString::operator=(v178, (v178 - 104));
                v181 = *(v180 - 72);
                *(v180 + 24) = *(v180 - 2);
                v182 = *(v180 - 24);
                *(v180 + 4) = *(v180 - 40);
                *(v180 + 5) = v182;
                v183 = *(v180 - 56);
                *(v180 + 2) = v181;
                *(v180 + 3) = v183;
                v184 = *(v180 - 87);
                v178 = v179;
              }

              while (WORD1(v200) < v184);
              v185 = re::DynamicString::operator=(v179, &v198);
              *(v185 + 2) = v200;
              v186 = v201;
              v187 = v202;
              v188 = v203;
              *(v185 + 24) = v204;
              *(v185 + 4) = v187;
              *(v185 + 5) = v188;
              *(v185 + 3) = v186;
              result = v198;
              if (v198)
              {
                if (BYTE8(v198))
                {
                  result = (*(*v198 + 40))();
                }
              }
            }

            v172 = v173 + 13;
            v7 = v173;
          }

          while (v173 + 13 != a2);
        }
      }

      return result;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v101 = v11 >> 1;
        v102 = v11 >> 1;
        do
        {
          v103 = v102;
          if (v101 >= v102)
          {
            v104 = (2 * v102) | 1;
            v105 = (v7 + 104 * v104);
            if (2 * v103 + 2 < v10)
            {
              v106 = v105[17];
              v107 = v105[69];
              v108 = v106 >= v107;
              v109 = v106 >= v107 ? 0 : 104;
              v105 = (v105 + v109);
              if (!v108)
              {
                v104 = 2 * v103 + 2;
              }
            }

            v110 = v7 + 104 * v103;
            if (v105[17] >= *(v110 + 34))
            {
              v198 = 0u;
              v199 = 0u;
              *&v198 = *v110;
              *v110 = 0;
              v111 = v199;
              *&v199 = *(v110 + 16);
              *(v110 + 16) = v111;
              *(&v199 + 1) = *(v110 + 24);
              *(v110 + 24) = 0;
              v112 = *(&v198 + 1);
              *(&v198 + 1) = *(v110 + 8);
              *(v110 + 8) = v112;
              v113 = *(v110 + 48);
              v114 = *(v110 + 64);
              v115 = *(v110 + 80);
              v204 = *(v110 + 96);
              v202 = v114;
              v203 = v115;
              v201 = v113;
              v200 = *(v110 + 32);
              do
              {
                v116 = v105;
                v117 = re::DynamicString::operator=(v110, v105);
                *(v117 + 2) = *(v116 + 2);
                v118 = *(v116 + 3);
                v119 = *(v116 + 4);
                v120 = *(v116 + 5);
                *(v117 + 24) = *(v116 + 24);
                *(v117 + 4) = v119;
                *(v117 + 5) = v120;
                *(v117 + 3) = v118;
                if (v101 < v104)
                {
                  break;
                }

                v121 = (2 * v104) | 1;
                v105 = (v7 + 104 * v121);
                if (2 * v104 + 2 < v10)
                {
                  v122 = v105[17];
                  v123 = v105[69];
                  v124 = v122 >= v123;
                  v125 = v122 >= v123 ? 0 : 104;
                  v105 = (v105 + v125);
                  if (!v124)
                  {
                    v121 = 2 * v104 + 2;
                  }
                }

                v110 = v116;
                v104 = v121;
              }

              while (v105[17] >= WORD1(v200));
              re::DynamicString::operator=(v116, &v198);
              *(v116 + 2) = v200;
              v126 = v201;
              v127 = v202;
              v128 = v203;
              *(v116 + 24) = v204;
              *(v116 + 4) = v127;
              *(v116 + 5) = v128;
              *(v116 + 3) = v126;
              if (v198 && (BYTE8(v198) & 1) != 0)
              {
                (*(*v198 + 40))();
              }
            }
          }

          v102 = v103 - 1;
        }

        while (v103);
        v129 = 0x4EC4EC4EC4EC4EC5 * (v9 >> 3);
        do
        {
          v130 = 0;
          v191 = 0u;
          v192 = 0u;
          *&v191 = *v7;
          *v7 = 0;
          v131 = v192;
          v132 = *(v7 + 24);
          *&v192 = *(v7 + 16);
          v133 = a2;
          *(v7 + 16) = v131;
          *(&v192 + 1) = v132;
          *(v7 + 24) = 0;
          *(&v191 + 1) = *(v7 + 8);
          *(v7 + 8) = 0;
          v134 = *(v7 + 48);
          v135 = *(v7 + 64);
          v136 = *(v7 + 80);
          v197 = *(v7 + 96);
          v195 = v135;
          v196 = v136;
          v194 = v134;
          v193 = *(v7 + 32);
          v137 = v7;
          do
          {
            v138 = v137 + 104 * v130;
            v139 = (v138 + 104);
            if (2 * v130 + 2 >= v129)
            {
              v130 = (2 * v130) | 1;
            }

            else
            {
              v140 = *(v138 + 69);
              v141 = *(v138 + 121);
              v142 = v138 + 208;
              if (v140 >= v141)
              {
                v130 = (2 * v130) | 1;
              }

              else
              {
                v139 = v142;
                v130 = 2 * v130 + 2;
              }
            }

            v143 = re::DynamicString::operator=(v137, v139);
            *(v143 + 2) = *(v139 + 2);
            v144 = *(v139 + 3);
            v145 = *(v139 + 4);
            v146 = *(v139 + 5);
            *(v143 + 24) = *(v139 + 24);
            *(v143 + 4) = v145;
            *(v143 + 5) = v146;
            *(v143 + 3) = v144;
            v137 = v139;
          }

          while (v130 <= ((v129 - 2) >> 1));
          a2 -= 52;
          if (v139 == v133 - 52)
          {
            re::DynamicString::operator=(v139, &v191);
            *(v139 + 2) = v193;
            v168 = v194;
            v169 = v195;
            v170 = v196;
            *(v139 + 24) = v197;
            *(v139 + 4) = v169;
            *(v139 + 5) = v170;
            *(v139 + 3) = v168;
          }

          else
          {
            re::DynamicString::operator=(v139, (v133 - 52));
            *(v139 + 2) = *(v133 - 36);
            v147 = *(v133 - 28);
            v148 = *(v133 - 20);
            v149 = *(v133 - 12);
            *(v139 + 24) = *(v133 - 2);
            *(v139 + 4) = v148;
            *(v139 + 5) = v149;
            *(v139 + 3) = v147;
            re::DynamicString::operator=((v133 - 52), &v191);
            *(v133 - 36) = v193;
            v150 = v194;
            v151 = v195;
            v152 = v196;
            *(v133 - 2) = v197;
            *(v133 - 12) = v152;
            *(v133 - 20) = v151;
            *(v133 - 28) = v150;
            v153 = v139 - v7 + 104;
            if (v153 >= 105)
            {
              v154 = (0x4EC4EC4EC4EC4EC5 * (v153 >> 3) - 2) >> 1;
              v155 = (v7 + 104 * v154);
              if (v155[17] < v139[17])
              {
                v198 = 0u;
                v199 = 0u;
                *&v198 = *v139;
                *v139 = 0;
                v156 = v199;
                v157 = *(v139 + 3);
                *&v199 = *(v139 + 2);
                *(v139 + 2) = v156;
                *(&v199 + 1) = v157;
                *(v139 + 3) = 0;
                *(&v198 + 1) = *(v139 + 1);
                *(v139 + 1) = 0;
                v158 = *(v139 + 3);
                v159 = *(v139 + 4);
                v160 = *(v139 + 5);
                v204 = *(v139 + 24);
                v202 = v159;
                v203 = v160;
                v201 = v158;
                v200 = *(v139 + 2);
                do
                {
                  v161 = v155;
                  re::DynamicString::operator=(v139, v155);
                  *(v139 + 2) = *(v161 + 2);
                  v162 = *(v161 + 3);
                  v163 = *(v161 + 4);
                  v164 = *(v161 + 5);
                  *(v139 + 24) = *(v161 + 24);
                  *(v139 + 4) = v163;
                  *(v139 + 5) = v164;
                  *(v139 + 3) = v162;
                  if (!v154)
                  {
                    break;
                  }

                  v154 = (v154 - 1) >> 1;
                  v155 = (v7 + 104 * v154);
                  v139 = v161;
                }

                while (v155[17] < WORD1(v200));
                re::DynamicString::operator=(v161, &v198);
                *(v161 + 2) = v200;
                v165 = v201;
                v166 = v202;
                v167 = v203;
                *(v161 + 24) = v204;
                *(v161 + 4) = v166;
                *(v161 + 5) = v167;
                *(v161 + 3) = v165;
                if (v198)
                {
                  if (BYTE8(v198))
                  {
                    (*(*v198 + 40))();
                  }
                }
              }
            }
          }

          result = v191;
          if (v191 && (BYTE8(v191) & 1) != 0)
          {
            result = (*(*v191 + 40))();
          }
        }

        while (v129-- > 2);
      }

      return result;
    }

    v12 = v10 >> 1;
    v13 = v7 + 104 * (v10 >> 1);
    v14 = *(a2 - 35);
    if (v9 >= 0x3401)
    {
      v15 = *(v13 + 34);
      if (v15 >= *(v7 + 34))
      {
        if (v14 < v15)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v13, v190);
          if (*(v13 + 34) < *(v7 + 34))
          {
            v16 = v7;
            v17 = v13;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v16 = v7;
        if (v14 < v15)
        {
          goto LABEL_17;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v13);
        if (*(a2 - 35) < *(v13 + 34))
        {
          v16 = v13;
LABEL_17:
          v17 = (a2 - 52);
LABEL_26:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v16, v17);
        }
      }

      v21 = v7 + 104 * v12;
      v22 = v21 - 104;
      v23 = *(v21 - 70);
      v24 = *(a2 - 87);
      if (v23 >= *(v7 + 138))
      {
        if (v24 < v23)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v22, (a2 - 104));
          if (*(v22 + 34) < *(v7 + 138))
          {
            v25 = v7 + 104;
            v26 = v22;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v25 = v7 + 104;
        if (v24 < v23)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v25, v22);
        if (*(a2 - 87) < *(v22 + 34))
        {
          v25 = v22;
LABEL_31:
          v26 = (a2 - 104);
LABEL_39:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v25, v26);
        }
      }

      v27 = v7 + 104 * v12;
      v28 = *(v27 + 138);
      v29 = *v189;
      if (v28 >= *(v7 + 242))
      {
        if (v29 < v28)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v27 + 104, (a2 - 156));
          if (*(v27 + 138) < *(v7 + 242))
          {
            v30 = v7 + 208;
            v31 = v27 + 104;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v30 = v7 + 208;
        if (v29 < v28)
        {
          goto LABEL_44;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v30, v27 + 104);
        if (*v189 < *(v27 + 138))
        {
          v30 = v27 + 104;
LABEL_44:
          v31 = (a2 - 156);
LABEL_48:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v30, v31);
        }
      }

      v32 = *(v13 + 34);
      v33 = *(v27 + 138);
      if (v32 >= *(v22 + 34))
      {
        if (v33 < v32)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v13, v27 + 104);
          if (*(v13 + 34) < *(v22 + 34))
          {
            v35 = v22;
            v34 = v13;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v34 = v27 + 104;
          v35 = v22;
          goto LABEL_57;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v22, v13);
        if (*(v27 + 138) < *(v13 + 34))
        {
          v34 = v27 + 104;
          v35 = v13;
LABEL_57:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v35, v34);
        }
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v13);
      goto LABEL_59;
    }

    v18 = *(v7 + 34);
    if (v18 >= *(v13 + 34))
    {
      if (v14 >= v18)
      {
        goto LABEL_59;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v190);
      if (*(v7 + 34) >= *(v13 + 34))
      {
        goto LABEL_59;
      }

      v19 = v13;
      v20 = v7;
    }

    else
    {
      v19 = v13;
      if (v14 >= v18)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v13, v7);
        if (*(a2 - 35) >= *(v7 + 34))
        {
          goto LABEL_59;
        }

        v19 = v7;
      }

      v20 = (a2 - 52);
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v19, v20);
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || *(v7 - 70) < *(v7 + 34))
    {
      v36 = 0;
      v198 = 0u;
      v199 = 0u;
      *&v198 = *v7;
      *v7 = 0;
      v37 = v199;
      v38 = *(v7 + 24);
      *&v199 = *(v7 + 16);
      *(v7 + 16) = v37;
      *(&v199 + 1) = v38;
      *(v7 + 24) = 0;
      *(&v198 + 1) = *(v7 + 8);
      *(v7 + 8) = 0;
      v39 = *(v7 + 48);
      v40 = *(v7 + 64);
      v41 = *(v7 + 80);
      v204 = *(v7 + 96);
      v202 = v40;
      v203 = v41;
      v201 = v39;
      v200 = *(v7 + 32);
      do
      {
        v42 = *(v7 + v36 + 138);
        v36 += 104;
      }

      while (v42 < WORD1(v200));
      v43 = (v7 + v36);
      v44 = a2;
      if (v36 == 104)
      {
        v47 = a2;
        while (v43 < v47)
        {
          v45 = (v47 - 52);
          v48 = *(v47 - 35);
          v47 -= 52;
          if (v48 < WORD1(v200))
          {
            goto LABEL_71;
          }
        }

        v45 = v47;
      }

      else
      {
        do
        {
          v45 = (v44 - 52);
          v46 = *(v44 - 35);
          v44 -= 52;
        }

        while (v46 >= WORD1(v200));
      }

LABEL_71:
      if (v43 >= v45)
      {
        v8 = v43;
      }

      else
      {
        v49 = v45;
        v8 = v43;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v8, v49);
          do
          {
            v50 = v8[69];
            v8 += 52;
          }

          while (v50 < WORD1(v200));
          do
          {
            v51 = *(v49 - 70);
            v49 -= 104;
          }

          while (v51 >= WORD1(v200));
        }

        while (v8 < v49);
      }

      if (v8 - 52 != v7)
      {
        re::DynamicString::operator=(v7, (v8 - 52));
        *(v7 + 32) = *(v8 - 36);
        v52 = *(v8 - 28);
        v53 = *(v8 - 20);
        v54 = *(v8 - 12);
        *(v7 + 96) = *(v8 - 2);
        *(v7 + 64) = v53;
        *(v7 + 80) = v54;
        *(v7 + 48) = v52;
      }

      re::DynamicString::operator=((v8 - 52), &v198);
      *(v8 - 36) = v200;
      v55 = v201;
      v56 = v202;
      v57 = v203;
      *(v8 - 2) = v204;
      *(v8 - 12) = v57;
      *(v8 - 20) = v56;
      *(v8 - 28) = v55;
      if (v198)
      {
        if (BYTE8(v198))
        {
          (*(*v198 + 40))();
        }
      }

      if (v43 < v45)
      {
        goto LABEL_87;
      }

      v58 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *>(v7, v8 - 52);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *>(v8, a2);
      if (result)
      {
        a2 = v8 - 52;
        if ((v58 & 1) == 0)
        {
          goto LABEL_2;
        }

        return result;
      }

      if ((v58 & 1) == 0)
      {
LABEL_87:
        result = std::__introsort<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,false>(v7, v8 - 52, a3, a4 & 1);
        goto LABEL_88;
      }
    }

    else
    {
      v198 = 0u;
      v199 = 0u;
      *&v198 = *v7;
      *v7 = 0;
      v59 = v199;
      v60 = *(v7 + 24);
      *&v199 = *(v7 + 16);
      *(v7 + 16) = v59;
      *(&v199 + 1) = v60;
      *(v7 + 24) = 0;
      *(&v198 + 1) = *(v7 + 8);
      *(v7 + 8) = 0;
      v61 = *(v7 + 48);
      v62 = *(v7 + 64);
      v63 = *(v7 + 80);
      v204 = *(v7 + 96);
      v202 = v62;
      v203 = v63;
      v201 = v61;
      v200 = *(v7 + 32);
      if (WORD1(v200) >= *(a2 - 35))
      {
        v66 = (v7 + 104);
        do
        {
          v8 = v66;
          if (v66 >= a2)
          {
            break;
          }

          v67 = v66[17];
          v66 += 52;
        }

        while (WORD1(v200) >= v67);
      }

      else
      {
        v64 = v7;
        do
        {
          v8 = (v64 + 104);
          v65 = *(v64 + 138);
          v64 += 104;
        }

        while (WORD1(v200) >= v65);
      }

      v68 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v68 = (v69 - 52);
          v70 = *(v69 - 35);
          v69 -= 52;
        }

        while (WORD1(v200) < v70);
      }

      while (v8 < v68)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v8, v68);
        do
        {
          v71 = v8[69];
          v8 += 52;
        }

        while (WORD1(v200) >= v71);
        do
        {
          v72 = *(v68 - 70);
          v68 -= 104;
        }

        while (WORD1(v200) < v72);
      }

      if (v8 - 52 != v7)
      {
        re::DynamicString::operator=(v7, (v8 - 52));
        *(v7 + 32) = *(v8 - 36);
        v73 = *(v8 - 28);
        v74 = *(v8 - 20);
        v75 = *(v8 - 12);
        *(v7 + 96) = *(v8 - 2);
        *(v7 + 64) = v74;
        *(v7 + 80) = v75;
        *(v7 + 48) = v73;
      }

      re::DynamicString::operator=((v8 - 52), &v198);
      *(v8 - 36) = v200;
      v76 = v201;
      v77 = v202;
      v78 = v203;
      *(v8 - 2) = v204;
      *(v8 - 12) = v78;
      *(v8 - 20) = v77;
      *(v8 - 28) = v76;
      result = v198;
      if (v198 && (BYTE8(v198) & 1) != 0)
      {
        result = (*(*v198 + 40))();
      }

LABEL_88:
      a4 = 0;
    }
  }

  v81 = *(v7 + 138);
  v82 = *(a2 - 35);
  if (v81 < *(v7 + 34))
  {
    if (v82 < v81)
    {
      goto LABEL_119;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, v7 + 104);
    if (*(a2 - 35) < *(v7 + 138))
    {
      v83 = v7 + 104;
      goto LABEL_120;
    }

    return result;
  }

  if (v82 >= v81)
  {
    return result;
  }

  v79 = v7 + 104;
  v80 = (a2 - 52);
LABEL_187:
  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v79, v80);
  if (*(v7 + 138) < *(v7 + 34))
  {
    v84 = v7 + 104;
    v83 = v7;
    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v83, v84);
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 34);
  v9 = *(a3 + 34);
  if (v8 >= *(result + 34))
  {
    if (v9 < v8)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a2, a3);
      if (*(a2 + 34) < *(v7 + 34))
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(result, v10);
      goto LABEL_10;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(result, a2);
    if (*(a3 + 34) < *(a2 + 34))
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 34) < *(a3 + 34))
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a3, a4);
    if (*(a3 + 34) < *(a2 + 34))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a2, a3);
      if (*(a2 + 34) < *(v7 + 34))
      {

        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v7, a2);
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v3 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = a1[69];
        v9 = *(a2 - 35);
        if (v8 < a1[17])
        {
          if (v9 >= v8)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, (a1 + 52));
            if (*(a2 - 35) >= v3[69])
            {
              return 1;
            }

            a1 = v3 + 52;
          }

          v5 = (a2 - 52);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 52);
        v7 = (a2 - 52);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, (a1 + 52), (a1 + 104), (a2 - 52));
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_0 &,re::TechniqueFunctionConstant *,0>(a1, (a1 + 52), (a1 + 104), (a1 + 156));
        if (*(a2 - 35) >= v3[173])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>((v3 + 156), (a2 - 52));
        if (v3[173] >= v3[121])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>((v3 + 104), (v3 + 156));
        if (v3[121] >= v3[69])
        {
          return 1;
        }

        v6 = (v3 + 52);
        v7 = (v3 + 104);
        break;
      default:
        goto LABEL_16;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(v6, v7);
    if (v3[69] < v3[17])
    {
      v5 = (v3 + 52);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 35) < a1[17])
    {
      v5 = (a2 - 52);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 104;
  v11 = a1[69];
  v12 = a1[121];
  if (v11 >= a1[17])
  {
    if (v12 >= v11)
    {
      goto LABEL_36;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>((a1 + 52), (a1 + 104));
    if (v3[69] >= v3[17])
    {
      goto LABEL_36;
    }

    v13 = (v3 + 52);
    a1 = v3;
    goto LABEL_35;
  }

  if (v12 < v11)
  {
LABEL_34:
    v13 = (v3 + 104);
LABEL_35:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, v13);
    goto LABEL_36;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::TechniqueFunctionConstant *&,re::TechniqueFunctionConstant *&>(a1, (a1 + 52));
  if (v3[121] < v3[69])
  {
    a1 = v3 + 52;
    goto LABEL_34;
  }

LABEL_36:
  v14 = v3 + 156;
  if (v3 + 156 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (v14[17] >= v10[17])
  {
LABEL_48:
    v10 = v14;
    v15 += 104;
    v14 += 52;
    if (v14 == a2)
    {
      return 1;
    }
  }

  v28 = *v14;
  v30 = *(v14 + 3);
  v29 = *(v14 + 4);
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *v14 = 0;
  *(v14 + 1) = 0;
  v17 = *(v14 + 5);
  v33 = *(v14 + 4);
  v34 = v17;
  v35 = *(v14 + 24);
  v18 = *(v14 + 3);
  v19 = v15;
  v31 = *(v14 + 2);
  v32 = v18;
  while (1)
  {
    v20 = v3 + v19;
    re::DynamicString::operator=((v3 + v19 + 312), (v3 + v19 + 208));
    v21 = *(v3 + v19 + 288);
    *(v20 + 376) = *(v20 + 17);
    *(v20 + 392) = v21;
    *(v20 + 102) = *(v20 + 76);
    v22 = *(v3 + v19 + 256);
    *(v20 + 344) = *(v20 + 15);
    *(v20 + 360) = v22;
    if (v19 == -208)
    {
      break;
    }

    v19 -= 104;
    if (WORD1(v31) >= *(v20 + 69))
    {
      v23 = (v3 + v19 + 312);
      goto LABEL_44;
    }
  }

  v23 = v3;
LABEL_44:
  re::DynamicString::operator=(v23, &v28);
  v24 = v34;
  *(v20 + 17) = v33;
  *(v20 + 18) = v24;
  *(v20 + 76) = v35;
  v25 = v32;
  *(v20 + 15) = v31;
  *(v20 + 16) = v25;
  if (++v16 != 8)
  {
    if (v28 && (v29 & 1) != 0)
    {
      (*(*v28 + 40))();
    }

    goto LABEL_48;
  }

  v26 = v14 + 52 == a2;
  if (v28 && (v29 & 1) != 0)
  {
    (*(*v28 + 40))();
  }

  return v26;
}

double re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = (v6 + v4 + 56);
          re::DynamicString::deinit((v6 + v4 + 152));
          re::DynamicString::deinit((v8 + 120));
          re::DynamicString::deinit((v8 + 88));
          re::DynamicString::deinit(v9);
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v8 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 200;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

_DWORD *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,int const&>(uint64_t a1, uint64_t a2, const char **a3, _DWORD *a4)
{
  v7 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v7[10] = *a4;
  ++*(a1 + 40);
  return v7 + 10;
}

_DWORD *std::__introsort<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,false>(_DWORD *result, unint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = result;
  while (2)
  {
    v8 = a2;
    v174 = (a2 - 32);
    while (1)
    {
      while (1)
      {
        v9 = v7;
        v10 = (v8 - v7) >> 5;
        v11 = v10 - 2;
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v9, (v9 + 32), v174, a3);
            case 4:
              return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v9, (v9 + 32), (v9 + 64), v174, a3);
            case 5:
              return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v9, (v9 + 32), (v9 + 64), (v9 + 96), v174, a3);
          }
        }

        else
        {
          if (v10 < 2)
          {
            return result;
          }

          v8 = a2;
          if (v10 == 2)
          {
            v74 = *a3;
            v75 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v74 + 600, v174);
            v76 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v74 + 552, v174) + 10 * v75);
            v77 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v74 + 600, v9);
            result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v74 + 552, v9);
            if (v76 > (5 * *result + 10 * v77))
            {
              return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v9, v174);
            }

            return result;
          }
        }

        if (v10 <= 23)
        {
          v78 = v9 + 32;
          v79 = v9 == v8 || v78 == v8;
          v80 = v79;
          if (a5)
          {
            if ((v80 & 1) == 0)
            {
              v81 = 0;
              v82 = v9;
              do
              {
                v83 = v82;
                v82 = v78;
                v84 = *a3;
                v85 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v78);
                v86 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v84 + 552, v82) + 10 * v85);
                v87 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v84 + 600, v83);
                result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v84 + 552, v83);
                if (v86 > (5 * *result + 10 * v87))
                {
                  v182 = 0u;
                  v183 = 0u;
                  *&v182 = *v82;
                  *v82 = 0;
                  v88 = v183;
                  v89 = v82[3];
                  *&v183 = v82[2];
                  v82[2] = v88;
                  *(&v183 + 1) = v89;
                  v82[3] = 0;
                  *(&v182 + 1) = v82[1];
                  v82[1] = 0;
                  v90 = v81;
                  while (1)
                  {
                    re::DynamicString::operator=((v9 + v90 + 32), (v9 + v90));
                    if (!v90)
                    {
                      break;
                    }

                    v90 -= 32;
                    v91 = *a3;
                    v92 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
                    v93 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v91 + 552, &v182) + 10 * v92);
                    v94 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v91 + 600, v9 + v90);
                    if (v93 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v91 + 552, v9 + v90) + 10 * v94))
                    {
                      v95 = (v9 + v90 + 32);
                      goto LABEL_85;
                    }
                  }

                  v95 = v9;
LABEL_85:
                  re::DynamicString::operator=(v95, &v182);
                  result = v182;
                  if (v182 && (BYTE8(v182) & 1) != 0)
                  {
                    result = (*(*v182 + 40))();
                  }
                }

                v78 = (v82 + 4);
                v81 += 32;
              }

              while (v82 + 4 != a2);
            }
          }

          else if ((v80 & 1) == 0)
          {
            do
            {
              v161 = v78;
              v162 = *a3;
              v163 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v78);
              v164 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v162 + 552, v161) + 10 * v163);
              v165 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v162 + 600, v9);
              result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v162 + 552, v9);
              if (v164 > (5 * *result + 10 * v165))
              {
                v182 = 0u;
                v183 = 0u;
                *&v182 = *v161;
                *v161 = 0;
                v166 = v183;
                v167 = *(v161 + 3);
                *&v183 = *(v161 + 2);
                *(v161 + 2) = v166;
                *(&v183 + 1) = v167;
                *(v161 + 3) = 0;
                *(&v182 + 1) = *(v161 + 1);
                *(v161 + 1) = 0;
                do
                {
                  re::DynamicString::operator=((v9 + 32), v9);
                  v9 = (v9 - 32);
                  v168 = *a3;
                  v169 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
                  v170 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v168 + 552, &v182) + 10 * v169);
                  v171 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v168 + 600, v9);
                }

                while (v170 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v168 + 552, v9) + 10 * v171));
                re::DynamicString::operator=((v9 + 32), &v182);
                result = v182;
                if (v182)
                {
                  if (BYTE8(v182))
                  {
                    result = (*(*v182 + 40))();
                  }
                }
              }

              v78 = v161 + 32;
              v9 = v161;
            }

            while ((v161 + 32) != a2);
          }

          return result;
        }

        v179 = v9;
        if (!a4)
        {
          if (v9 != v8)
          {
            v96 = v11 >> 1;
            v97 = v11 >> 1;
            do
            {
              v98 = v97;
              if (v96 >= v97)
              {
                v99 = (2 * v97) | 1;
                v100 = (v9 + 32 * v99);
                v101 = 2 * v97 + 2;
                v173 = v97;
                if (v101 < v10)
                {
                  v102 = *a3;
                  v175 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v9 + 32 * v99);
                  v103 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v102 + 552, v9 + 32 * v99) + 10 * v175);
                  v176 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v102 + 600, v100 + 32);
                  v104 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v102 + 552, v100 + 32);
                  v98 = v173;
                  if (v103 > (5 * *v104 + 10 * v176))
                  {
                    v100 = (v100 + 32);
                    v99 = v101;
                  }
                }

                v105 = (v9 + 32 * v98);
                v106 = *a3;
                v107 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v100);
                v108 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v106 + 552, v100) + 10 * v107);
                v109 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v106 + 600, v105);
                v110 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v106 + 552, v105);
                v98 = v173;
                if (v108 <= (5 * *v110 + 10 * v109))
                {
                  v182 = 0u;
                  v183 = 0u;
                  *&v182 = *v105;
                  *v105 = 0;
                  v111 = v183;
                  *&v183 = *(v105 + 2);
                  *(v105 + 2) = v111;
                  *(&v183 + 1) = *(v105 + 3);
                  *(v105 + 3) = 0;
                  v112 = *(&v182 + 1);
                  *(&v182 + 1) = *(v105 + 1);
                  *(v105 + 1) = v112;
                  do
                  {
                    v113 = v100;
                    re::DynamicString::operator=(v105, v100);
                    if (v96 < v99)
                    {
                      break;
                    }

                    v114 = 2 * v99;
                    v99 = (2 * v99) | 1;
                    v100 = (v9 + 32 * v99);
                    v115 = v114 + 2;
                    if (v114 + 2 < v10)
                    {
                      v116 = *a3;
                      v177 = v99;
                      v117 = v96;
                      v118 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v100);
                      v119 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v116 + 552, v100) + 10 * v118);
                      v120 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v116 + 600, v100 + 32);
                      v9 = v179;
                      v121 = 5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v116 + 552, v100 + 32) + 10 * v120;
                      v96 = v117;
                      v99 = v177;
                      if (v119 > v121)
                      {
                        v100 = (v100 + 32);
                        v99 = v115;
                      }
                    }

                    v122 = *a3;
                    v123 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v100);
                    v124 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v122 + 552, v100) + 10 * v123);
                    v125 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v122 + 600, &v182);
                    v126 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v122 + 552, &v182);
                    v105 = v113;
                  }

                  while (v124 <= (5 * *v126 + 10 * v125));
                  re::DynamicString::operator=(v113, &v182);
                  if (v182 && (BYTE8(v182) & 1) != 0)
                  {
                    (*(*v182 + 40))();
                  }

                  v98 = v173;
                }
              }

              v97 = v98 - 1;
            }

            while (v98);
            do
            {
              v127 = 0;
              v180 = 0u;
              v181 = 0u;
              *&v180 = *v9;
              *v9 = 0;
              v128 = v181;
              v129 = *(v9 + 3);
              *&v181 = *(v9 + 2);
              *(v9 + 2) = v128;
              *(&v181 + 1) = v129;
              *(v9 + 3) = 0;
              *(&v180 + 1) = *(v9 + 1);
              *(v9 + 1) = 0;
              v130 = (v10 - 2) >> 1;
              v131 = v9;
              do
              {
                v132 = v131;
                v133 = (v131 + 32 * v127);
                v131 = (v133 + 4);
                v134 = 2 * v127;
                v127 = (2 * v127) | 1;
                v135 = v134 + 2;
                if (v134 + 2 < v10)
                {
                  v136 = (v133 + 8);
                  v137 = *a3;
                  v138 = v10;
                  v139 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, (v133 + 4));
                  v140 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v137 + 552, v131) + 10 * v139);
                  v141 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v137 + 600, v136);
                  v142 = 5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v137 + 552, v136) + 10 * v141;
                  v10 = v138;
                  if (v140 > v142)
                  {
                    v131 = v136;
                    v127 = v135;
                  }
                }

                re::DynamicString::operator=(v132, v131);
              }

              while (v127 <= v130);
              v143 = (a2 - 32);
              v79 = v131 == (a2 - 32);
              a2 -= 32;
              if (v79)
              {
                re::DynamicString::operator=(v131, &v180);
                v9 = v179;
              }

              else
              {
                re::DynamicString::operator=(v131, v143);
                re::DynamicString::operator=(v143, &v180);
                v9 = v179;
                v144 = (v131 - v179 + 32) >> 5;
                v145 = v144 < 2;
                v146 = v144 - 2;
                if (!v145)
                {
                  v147 = v146 >> 1;
                  v148 = (v179 + 32 * (v146 >> 1));
                  v149 = *a3;
                  v150 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v148);
                  v151 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v149 + 552, v148) + 10 * v150);
                  v152 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v149 + 600, v131);
                  if (v151 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v149 + 552, v131) + 10 * v152))
                  {
                    v182 = 0u;
                    v183 = 0u;
                    *&v182 = *v131;
                    *v131 = 0;
                    v153 = v183;
                    v154 = *(v131 + 3);
                    *&v183 = *(v131 + 2);
                    *(v131 + 2) = v153;
                    *(&v183 + 1) = v154;
                    *(v131 + 3) = 0;
                    *(&v182 + 1) = *(v131 + 1);
                    *(v131 + 1) = 0;
                    do
                    {
                      v155 = v148;
                      re::DynamicString::operator=(v131, v148);
                      if (!v147)
                      {
                        break;
                      }

                      v147 = (v147 - 1) >> 1;
                      v148 = (v179 + 32 * v147);
                      v156 = *a3;
                      v157 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v148);
                      v158 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v156 + 552, v148) + 10 * v157);
                      v159 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v156 + 600, &v182);
                      v160 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v156 + 552, &v182);
                      v131 = v155;
                    }

                    while (v158 > (5 * *v160 + 10 * v159));
                    re::DynamicString::operator=(v155, &v182);
                    if (v182)
                    {
                      if (BYTE8(v182))
                      {
                        (*(*v182 + 40))();
                      }
                    }
                  }
                }
              }

              result = v180;
              if (v180 && (BYTE8(v180) & 1) != 0)
              {
                result = (*(*v180 + 40))();
              }

              v145 = v10-- <= 2;
            }

            while (!v145);
          }

          return result;
        }

        v12 = v10 >> 1;
        v13 = (v9 + 32 * (v10 >> 1));
        if (v10 < 0x81)
        {
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v9 + 32 * (v10 >> 1), v9, v174, a3);
        }

        else
        {
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v9, (v9 + 32 * (v10 >> 1)), v174, a3);
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v9 + 32, (v13 - 32), (a2 - 64), a3);
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v9 + 64, (v9 + 32 * v12 + 32), (a2 - 96), a3);
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(v13 - 32, v13, (v9 + 32 * v12 + 32), a3);
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v9, v13);
        }

        --a4;
        if (a5)
        {
          break;
        }

        v14 = *a3;
        v15 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v9 - 32);
        v16 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v14 + 552, v9 - 32) + 10 * v15);
        v17 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v14 + 600, v9);
        if (v16 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v14 + 552, v9) + 10 * v17))
        {
          break;
        }

        v182 = 0u;
        v183 = 0u;
        *&v182 = *v9;
        *v9 = 0;
        v45 = v183;
        v46 = *(v9 + 3);
        *&v183 = *(v9 + 2);
        *(v9 + 2) = v45;
        *(&v183 + 1) = v46;
        *(v9 + 3) = 0;
        *(&v182 + 1) = *(v9 + 1);
        *(v9 + 1) = 0;
        v47 = *a3;
        v48 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
        v49 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v47 + 552, &v182) + 10 * v48);
        v50 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v47 + 600, v174);
        if (v49 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v47 + 552, v174) + 10 * v50))
        {
          v55 = (v9 + 32);
          v8 = a2;
          do
          {
            v7 = v55;
            if (v55 >= a2)
            {
              break;
            }

            v56 = *a3;
            v57 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
            v58 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v56 + 552, &v182) + 10 * v57);
            v59 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v56 + 600, v7);
            v60 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v56 + 552, v7);
            v55 = (v7 + 32);
          }

          while (v58 <= (5 * *v60 + 10 * v59));
        }

        else
        {
          v7 = v9;
          v8 = a2;
          do
          {
            v7 += 32;
            v51 = *a3;
            v52 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
            v53 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v51 + 552, &v182) + 10 * v52);
            v54 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v51 + 600, v7);
          }

          while (v53 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v51 + 552, v7) + 10 * v54));
        }

        v61 = v8;
        if (v7 < v8)
        {
          v61 = v8;
          do
          {
            v61 = (v61 - 32);
            v62 = *a3;
            v63 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
            v64 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v62 + 552, &v182) + 10 * v63);
            v65 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v62 + 600, v61);
          }

          while (v64 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v62 + 552, v61) + 10 * v65));
        }

        while (v7 < v61)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v7, v61);
          do
          {
            v7 += 32;
            v66 = *a3;
            v67 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
            v68 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v66 + 552, &v182) + 10 * v67);
            v69 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v66 + 600, v7);
          }

          while (v68 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v66 + 552, v7) + 10 * v69));
          do
          {
            v61 = (v61 - 32);
            v70 = *a3;
            v71 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v182);
            v72 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v70 + 552, &v182) + 10 * v71);
            v73 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v70 + 600, v61);
          }

          while (v72 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v70 + 552, v61) + 10 * v73));
        }

        if ((v7 - 32) != v9)
        {
          re::DynamicString::operator=(v9, (v7 - 32));
        }

        re::DynamicString::operator=((v7 - 32), &v182);
        result = v182;
        if (v182 && (BYTE8(v182) & 1) != 0)
        {
          result = (*(*v182 + 40))();
        }

LABEL_42:
        a5 = 0;
      }

      v18 = 0;
      v182 = 0u;
      v183 = 0u;
      *&v182 = *v9;
      *v9 = 0;
      v19 = v183;
      v20 = *(v9 + 3);
      *&v183 = *(v9 + 2);
      *(v9 + 2) = v19;
      *(&v183 + 1) = v20;
      *(v9 + 3) = 0;
      *(&v182 + 1) = *(v9 + 1);
      *(v9 + 1) = 0;
      do
      {
        v18 += 32;
        v21 = *a3;
        v22 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v9 + v18);
        v23 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, v9 + v18) + 10 * v22);
        v24 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 600, &v182);
      }

      while (v23 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, &v182) + 10 * v24));
      v25 = (v9 + v18);
      v26 = a2;
      if (v18 == 32)
      {
        v26 = a2;
        do
        {
          if (v25 >= v26)
          {
            break;
          }

          v26 -= 32;
          v31 = *a3;
          v32 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v26);
          v33 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v31 + 552, v26) + 10 * v32);
          v34 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v31 + 600, &v182);
        }

        while (v33 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v31 + 552, &v182) + 10 * v34));
      }

      else
      {
        do
        {
          v26 -= 32;
          v27 = *a3;
          v28 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v26);
          v29 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v27 + 552, v26) + 10 * v28);
          v30 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v27 + 600, &v182);
        }

        while (v29 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v27 + 552, &v182) + 10 * v30));
      }

      if (v25 >= v26)
      {
        v7 = v25;
      }

      else
      {
        v35 = v26;
        v7 = v25;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v7, v35);
          do
          {
            v7 += 32;
            v36 = *a3;
            v37 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v7);
            v38 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v36 + 552, v7) + 10 * v37);
            v39 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v36 + 600, &v182);
          }

          while (v38 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v36 + 552, &v182) + 10 * v39));
          do
          {
            v35 = (v35 - 32);
            v40 = *a3;
            v41 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v35);
            v42 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v40 + 552, v35) + 10 * v41);
            v43 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v40 + 600, &v182);
          }

          while (v42 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v40 + 552, &v182) + 10 * v43));
        }

        while (v7 < v35);
      }

      if ((v7 - 32) != v9)
      {
        re::DynamicString::operator=(v9, (v7 - 32));
      }

      re::DynamicString::operator=((v7 - 32), &v182);
      v8 = a2;
      if (v182 && (BYTE8(v182) & 1) != 0)
      {
        (*(*v182 + 40))();
      }

      if (v25 < v26)
      {
LABEL_41:
        result = std::__introsort<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,false>(v9, v7 - 32, a3, a4, a5 & 1);
        goto LABEL_42;
      }

      v44 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *>(v9, v7 - 32, a3);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *>(v7, a2, a3);
      if (result)
      {
        break;
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    a2 = v7 - 32;
    v7 = v9;
    if ((v44 & 1) == 0)
    {
      continue;
    }

    return result;
  }
}

_DWORD *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(uint64_t a1, re::DynamicString *a2, re::DynamicString *a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a4 + 600, a2);
  v10 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v8 + 552, a2) + 10 * v9);
  v11 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v8 + 600, a1);
  v12 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v8 + 552, a1) + 10 * v11);
  v13 = *a4;
  v14 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a4 + 600, a3);
  v15 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v13 + 552, a3) + 10 * v14);
  v16 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v13 + 600, a2);
  result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v13 + 552, a2);
  v18 = (5 * *result + 10 * v16);
  if (v10 <= v12)
  {
    if (v15 <= v18)
    {
      return result;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
    v25 = *a4;
    v26 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a4 + 600, a2);
    v27 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 552, a2) + 10 * v26);
    v28 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 600, a1);
    result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 552, a1);
    if (v27 <= (5 * *result + 10 * v28))
    {
      return result;
    }

    v19 = a1;
    v24 = a2;
  }

  else
  {
    v19 = a1;
    if (v15 <= v18)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
      v20 = *a4;
      v21 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a4 + 600, a3);
      v22 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v20 + 552, a3) + 10 * v21);
      v23 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v20 + 600, a2);
      result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v20 + 552, a2);
      if (v22 <= (5 * *result + 10 * v23))
      {
        return result;
      }

      v19 = a2;
    }

    v24 = a3;
  }

  return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(v19, v24);
}

_DWORD *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(uint64_t a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *a4, uint64_t *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, a2, a3, a5);
  v10 = *a5;
  v11 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a5 + 600, a4);
  v12 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v10 + 552, a4) + 10 * v11);
  v13 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v10 + 600, a3);
  result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v10 + 552, a3);
  if (v12 > (5 * *result + 10 * v13))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a3, a4);
    v15 = *a5;
    v16 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a5 + 600, a3);
    v17 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 552, a3) + 10 * v16);
    v18 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 600, a2);
    result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 552, a2);
    if (v17 > (5 * *result + 10 * v18))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
      v19 = *a5;
      v20 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v19 + 600, a2);
      v21 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v19 + 552, a2) + 10 * v20);
      v22 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v19 + 600, a1);
      result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v19 + 552, a1);
      if (v21 > (5 * *result + 10 * v22))
      {

        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
      }
    }
  }

  return result;
}

_DWORD *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(uint64_t a1, re::DynamicString *a2, re::DynamicString *a3, re::DynamicString *a4, re::DynamicString *a5, uint64_t *a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a6 + 600, a5);
  v14 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v12 + 552, a5) + 10 * v13);
  v15 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v12 + 600, a4);
  result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v12 + 552, a4);
  if (v14 > (5 * *result + 10 * v15))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a4, a5);
    v17 = *a6;
    v18 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a6 + 600, a4);
    v19 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v17 + 552, a4) + 10 * v18);
    v20 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v17 + 600, a3);
    result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v17 + 552, a3);
    if (v19 > (5 * *result + 10 * v20))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a3, a4);
      v21 = *a6;
      v22 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a6 + 600, a3);
      v23 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, a3) + 10 * v22);
      v24 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 600, a2);
      result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, a2);
      if (v23 > (5 * *result + 10 * v24))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a2, a3);
        v25 = *a6;
        v26 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 600, a2);
        v27 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 552, a2) + 10 * v26);
        v28 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 600, a1);
        result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v25 + 552, a1);
        if (v27 > (5 * *result + 10 * v28))
        {

          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, a2);
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (a2 - a1) >> 5;
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        v6 = (a2 - 32);
        v7 = *a3;
        v8 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, a2 - 32);
        v9 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v7 + 552, a2 - 32) + 10 * v8);
        v10 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v7 + 600, a1);
        if (v9 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v7 + 552, a1) + 10 * v10))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<re::DynamicString *&,re::DynamicString *&>(a1, v6);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v5)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, (a1 + 32), (a2 - 32), a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64), (a2 - 32), a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
      return 1;
  }

LABEL_11:
  v11 = a1 + 64;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::PSOToolManager::generateStatistics(void)::$_1 &,re::DynamicString *,0>(a1, (a1 + 32), (a1 + 64), a3);
  v12 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *a3;
    v16 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, v12);
    v17 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 552, v12) + 10 * v16);
    v18 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 600, v11);
    if (v17 > (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v15 + 552, v11) + 10 * v18))
    {
      break;
    }

LABEL_23:
    v11 = v12;
    v13 += 32;
    v12 += 32;
    if (v12 == a2)
    {
      return 1;
    }
  }

  v29 = *v12;
  v31 = *(v12 + 24);
  v30 = *(v12 + 8);
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *v12 = 0;
  *(v12 + 8) = 0;
  v19 = v13;
  while (1)
  {
    v20 = a1 + v19;
    re::DynamicString::operator=((a1 + v19 + 96), (a1 + v19 + 64));
    if (v19 == -64)
    {
      break;
    }

    v21 = *a3;
    v22 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](*a3 + 600, &v29);
    v23 = (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, &v29) + 10 * v22);
    v24 = *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 600, v20 + 32);
    v19 -= 32;
    if (v23 <= (5 * *re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](v21 + 552, v20 + 32) + 10 * v24))
    {
      v25 = (a1 + v19 + 96);
      goto LABEL_19;
    }
  }

  v25 = a1;
LABEL_19:
  re::DynamicString::operator=(v25, &v29);
  if (++v14 != 8)
  {
    if (v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))();
    }

    goto LABEL_23;
  }

  v26 = v12 + 32 == a2;
  if (v29 && (v30 & 1) != 0)
  {
    (*(*v29 + 40))();
  }

  return v26;
}

void *re::DynamicArray<re::PSOToolComputeDescriptor>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PSOToolComputeDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PSOToolComputeDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PSOToolComputeDescriptor>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::PSOToolComputeDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 136 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          *(v11 + 16) = 0;
          *(v11 + 3) = 0u;
          *(v11 + 2) = 0u;
          *(v11 + 68) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11 + 4, (v8 + 32));
          *(v11 + 5) = 0u;
          v16 = v11 + 10;
          *(v16 + 8) = 0;
          *(v16 + 1) = 0u;
          *(v16 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v16, (v8 + 80));
          *(v16 + 48) = *(v8 + 128);
          re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + 80));
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + 32));
          re::DynamicString::deinit(v8);
          v8 += 136;
          v11 = v16 + 7;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::PSOToolTileDescriptor>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PSOToolTileDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PSOToolTileDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PSOToolTileDescriptor>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::PSOToolTileDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB0uLL))
        {
          v2 = 176 * a2;
          result = (*(*result + 32))(result, 176 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 176, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 176 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          *(v11 + 16) = 0;
          *(v11 + 3) = 0u;
          *(v11 + 2) = 0u;
          *(v11 + 68) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11 + 4, (v8 + 32));
          *(v11 + 5) = 0u;
          v16 = v11 + 10;
          *(v16 + 8) = 0;
          *(v16 + 1) = 0u;
          *(v16 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v16, (v8 + 80));
          v17 = *(v8 + 128);
          v16[11] = 0;
          *(v16 + 20) = 0;
          v16[8] = 0;
          v16[9] = 0;
          v16[6] = v17;
          v16[7] = 0;
          v18 = *(v8 + 144);
          v16[7] = *(v8 + 136);
          *(v8 + 136) = 0;
          v16[8] = v18;
          *(v8 + 144) = 0;
          v19 = v16[9];
          v16[9] = *(v8 + 152);
          *(v8 + 152) = v19;
          v20 = v16[11];
          v16[11] = *(v8 + 168);
          *(v8 + 168) = v20;
          ++*(v8 + 160);
          ++*(v16 + 20);
          re::DynamicArray<unsigned long>::deinit(v8 + 136);
          re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + 80));
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v8 + 32));
          re::DynamicString::deinit(v8);
          v8 += 176;
          v11 = v16 + 12;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::PSOToolCustomClearDescriptor>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PSOToolCustomClearDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PSOToolCustomClearDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PSOToolCustomClearDescriptor>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::PSOToolCustomClearDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = v8 + 96 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v13[9] = 0;
          v13[6] = 0;
          v13[7] = 0;
          v13[5] = 0;
          *(v13 + 16) = 0;
          v17 = (v8 + v10 + 40);
          v18 = *(v8 + v10 + 48);
          v13[5] = *v17;
          *v17 = 0;
          v13[6] = v18;
          *(v12 + 48) = 0;
          v19 = v7[v10 / 8 + 7];
          v13[7] = *(v8 + v10 + 56);
          *(v12 + 56) = v19;
          v20 = v7[v10 / 8 + 9];
          v13[9] = *(v8 + v10 + 72);
          *(v12 + 72) = v20;
          *(v12 + 64) = *(v8 + v10 + 64) + 1;
          *(v13 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          *(v13 + 5) = *(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v17);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 96;
        }

        while (v12 + 96 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::PSOToolCustomRenderDescriptor>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PSOToolCustomRenderDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PSOToolCustomRenderDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PSOToolCustomRenderDescriptor>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::PSOToolCustomRenderDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 104 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v11[7] = *(v8 + 56);
          *(v8 + 56) = 0;
          v17 = v11[5];
          v16 = v11[6];
          v18 = *(v8 + 48);
          v11[5] = *(v8 + 40);
          v11[6] = v18;
          *(v8 + 40) = v17;
          *(v8 + 48) = v16;
          v11[12] = 0;
          *(v11 + 22) = 0;
          v11[9] = 0;
          v11[10] = 0;
          v11[8] = 0;
          v19 = *(v8 + 72);
          v11[8] = *(v8 + 64);
          *(v8 + 64) = 0;
          v11[9] = v19;
          *(v8 + 72) = 0;
          v20 = v11[10];
          v11[10] = *(v8 + 80);
          *(v8 + 80) = v20;
          v21 = v11[12];
          v11[12] = *(v8 + 96);
          *(v8 + 96) = v21;
          ++*(v8 + 88);
          ++*(v11 + 22);
          re::DynamicArray<unsigned long>::deinit(v8 + 64);
          re::DynamicString::deinit((v8 + 32));
          re::DynamicString::deinit(v8);
          v11 += 13;
          v8 += 104;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::PSOToolCustomJSONRenderDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[12 * v9];
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = v8[3];
          v12 = v8[1];
          *v11 = *v8;
          *v8 = 0;
          v13 = v8[2];
          v8[3] = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          v8[1] = v15;
          v8[2] = v14;
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          v11[4] = v8[4];
          v8[4] = 0;
          v11[7] = v8[7];
          v8[7] = 0;
          v17 = v11[5];
          v16 = v11[6];
          v18 = v8[6];
          v11[5] = v8[5];
          v11[6] = v18;
          v8[5] = v17;
          v8[6] = v16;
          *(v11 + 4) = 0u;
          *(v11 + 5) = 0u;
          v11[8] = v8[8];
          v8[8] = 0;
          v11[11] = v8[11];
          v8[11] = 0;
          v20 = v11[9];
          v19 = v11[10];
          v21 = v8[10];
          v11[9] = v8[9];
          v11[10] = v21;
          v8[9] = v20;
          v8[10] = v19;
          re::DynamicString::deinit((v8 + 8));
          re::DynamicString::deinit((v8 + 4));
          re::DynamicString::deinit(v8);
          v11 += 12;
          v8 += 12;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::CPUTexture::Data::addMipAndFixAlignment(void *a1, id *a2, char *a3, unint64_t a4)
{
  v9 = ExpectedCPUTextureSize;
  if (ExpectedCPUTextureSize <= a4)
  {
    v16[0] = a3;
    v16[1] = ExpectedCPUTextureSize;
    re::DynamicArray<unsigned char>::DynamicArray(v17, v16);
    re::DynamicArray<re::DynamicArray<unsigned int>>::add(a1, v17);
    if (v17[0] && v17[4])
    {
      (*(*v17[0] + 40))();
    }
  }

  else
  {
    v10 = v19;
    v11 = ExpectedCPUTextureSize / v19;
    v12 = (ExpectedCPUTextureSize - a4) / (ExpectedCPUTextureSize / v19);
    re::DynamicArray<re::DynamicArray<float>>::resize(a1, a1[2] + 1);
    re::DynamicArray<BOOL>::resize(a1[4] + 40 * a1[2] - 40, v9);
    v13 = 0;
    v14 = *(a1[4] + 40 * a1[2] - 8);
    v15 = a4 / v11;
    do
    {
      memcpy(v14, a3, v15);
      bzero(&v14[v15], v12);
      a3 += v15;
      v14 += v10;
      ++v13;
    }

    while (v13 < v11);
  }
}

double re::anonymous namespace::getCPUTextureMipInfoWithKTXAlignment@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  memset(v5, 0, 40);
  [*a1 pixelFormat];
  [*a1 width];
  [*a1 height];
  [*a1 depth];
  [*a1 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = *(v5 + 8);
  result = 0.0;
  *(a2 + 56) = *(&v5[1] + 8);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  return result;
}

uint64_t re::anonymous namespace::getExpectedCPUTextureSize(id *a1, uint64_t a2)
{
  if ([*a1 textureType] == 3)
  {
    v4 = *(a2 + 88);
    return [*a1 arrayLength] * v4;
  }

  else if ([*a1 textureType] == 5)
  {
    return 6 * *(a2 + 88);
  }

  else
  {
    return *(a2 + 96);
  }
}

uint64_t re::CPUTexture::Data::allocateMips(void *a1, id *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::DynamicArray<float>>::resize(a1, [*a2 mipmapLevelCount]);
  v4 = a1[2];
  if (v4 != [*a2 mipmapLevelCount])
  {
    return 0;
  }

  if (![*a2 mipmapLevelCount])
  {
    return 1;
  }

  v5 = 0;
  v6 = 16;
  do
  {
    v8 = a1[2];
    if (v8 <= v5)
    {
      v14 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 789;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_14:
      v14 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      v18 = 789;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v9 = ExpectedCPUTextureSize;
    re::DynamicArray<BOOL>::resize(a1[4] + v6 - 16, ExpectedCPUTextureSize);
    v8 = a1[2];
    if (v8 <= v5)
    {
      goto LABEL_14;
    }

    v10 = *(a1[4] + v6) == v9;
    v11 = v10;
    if (!v10)
    {
      break;
    }

    ++v5;
    v6 += 40;
  }

  while (v5 < [*a2 mipmapLevelCount]);
  return v11;
}

uint64_t re::CPUTexture::CPUTexture(uint64_t a1, id *a2, uint64_t *a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D09870;
  *(a1 + 24) = *a2;
  v6 = re::DynamicArray<re::DynamicArray<unsigned char>>::DynamicArray(a1 + 32, a3);
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  re::DynamicString::setCapacity((a1 + 72), 0);
  return a1;
}

uint64_t re::CPUTexture::CPUTexture(uint64_t a1, id *a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D09870;
  v6 = *a2;
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  v7 = *(a3 + 8);
  *(a1 + 32) = *a3;
  *(a1 + 40) = v7;
  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = *(a1 + 48);
  *(a1 + 48) = *(a3 + 16);
  *(a3 + 16) = v8;
  v9 = *(a1 + 64);
  *(a1 + 64) = *(a3 + 32);
  *(a3 + 32) = v9;
  ++*(a3 + 24);
  ++*(a1 + 56);
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  re::DynamicString::setCapacity((a1 + 72), 0);
  return a1;
}

void re::CPUTexture::setSliceAndFixAlignment(id *this, unint64_t a2, uint64_t a3, const unsigned __int8 *a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = this[6];
  if (v10 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(this[8] + 5 * a2 + 4);
  v13 = v18;
  v12 = v19;
  v14 = (v11 + v19 * a3);
  if (v18 == a5)
  {

    memcpy(v14, a4, v12);
  }

  else
  {
    for (i = v17; i; --i)
    {
      memcpy(v14, a4, v13);
      a4 += a5;
      v14 += v13;
    }
  }
}

void re::CPUTexture::~CPUTexture(re::CPUTexture *this)
{
  re::DynamicString::deinit((this + 72));
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(this + 32);
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::DynamicString::deinit((this + 72));
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(this + 32);
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphCompiled::validateAttachmentsDuringGraphBuild(uint64_t result, uint64_t a2)
{
  v2 = *(result + 392);
  if (v2)
  {
    v4 = result;
    v5 = *(result + 408);
    v6 = &v5[v2];
    while (1)
    {
      v7 = *v5;
      if (*(v4 + 352) <= v7)
      {
        goto LABEL_11;
      }

      v8 = (*(v4 + 368) + 200 * v7);
      v9 = v8[17];
      if (v9)
      {
        break;
      }

LABEL_8:
      if (++v5 == v6)
      {
        return result;
      }
    }

    v10 = v8[19];
    v11 = 8 * v9;
    while (v8[2] > *v10)
    {
      v12 = *(v8[4] + 8 * *v10);
      result = (*(*v12 + 40))(v12, v4, a2);
      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

uint64_t re::RenderFrameData::RenderFrameData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(a1, a3, 3);
  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = (*(*v5 + 16))(v5, a3);
  }

  return a1;
}

void re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_21, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

void re::RenderFrameData::~RenderFrameData(re::RenderFrameData *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    (**v2)(v2);
    (*(*v3 + 40))(v3, v2);
    *(this + 7) = 0;
  }

  re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this);
}

void re::RenderFrameDataStream::~RenderFrameDataStream(re::RenderFrameDataStream *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    (**v2)(v2);
    (*(*v3 + 40))(v3, v2);
    *(this + 6) = 0;
  }

  re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::deinit(this);
}

uint64_t re::RenderFrameData::stream(re::RenderFrameData *this, const re::WeakStringID *a2)
{
  v4 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this, a2);
  if (!v4)
  {
    v5 = (*(**(this + 6) + 16))(*(this + 6), *(*(this + 7) + 8));
    memset(v7, 0, sizeof(v7));
    v8 = 0;
    v9 = 0x7FFFFFFFLL;
    v10 = v5;
    v4 = re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(this, a2, v7);
    re::RenderFrameDataStream::~RenderFrameDataStream(v7);
    re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::init(v4, *(*(this + 7) + 8), 3);
  }

  return v4;
}

uint64_t re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addNew(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addInternal<re::WeakStringID const&,re::RenderFrameDataStream>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 72 * HIDWORD(v9) + 16;
  }
}

double re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          *(v8 + 8) = 0;
          re::RenderFrameDataStream::~RenderFrameDataStream((v8 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addInternal<re::WeakStringID const&,re::RenderFrameDataStream>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0u;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 52) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 16), a4);
  *(v9 + 48) = 0;
  *(v9 + 48) = a4[6];
  a4[6] = 0;
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          *&v29[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v13 = *&v29[32];
          *(a1 + 24) = v14;
          ++*&v29[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(*&v29[16] + v16) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*(*&v29[16] + v16 + 8) ^ (*(*&v29[16] + v16 + 8) >> 30));
                v19 = re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                v20 = *&v29[16] + v16;
                v21 = *(*&v29[16] + v16 + 8);
                *(v19 + 16) = 0u;
                v22 = v19 + 16;
                *(v19 + 8) = v21;
                *(v19 + 48) = 0;
                *(v19 + 32) = 0u;
                *(v19 + 52) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v19 + 16), (v20 + 16));
                *(v22 + 48) = 0;
                *(v22 + 48) = *(v20 + 64);
                *(v20 + 64) = 0;
                v15 = *&v29[32];
              }

              ++v17;
              v16 += 72;
            }

            while (v17 < v15);
          }

          re::HashTable<re::WeakStringID,re::RenderFrameDataStream,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + 72 * v4);
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + 72 * v4);
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = 72 * v4;
  *(v23 + v26) = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *(v23 + v26) = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v23 + 72 * v4;
}

uint64_t re::makeDepthPixelFormatPredictions@<X0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("Shadow", 6uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 252;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("FullScreen", 0xAuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("arKitPassthrough", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("arProjectiveShadow", 0x12uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueDepth", 0x12uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueRadial", 0x13uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueDistance", 0x15uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniquePrecomputed", 0x18uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniquePrecomputedYUp", 0x1BuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueBox", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueCheckered", 0x16uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueOpenSky", 0x14uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueOpenSkyCrossfade", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("PlanarBreakthroughMask", 0x16uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("PlanarBreakthroughMaskProgrammableBlending", 0x2AuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMask", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMaskProgrammableBlending", 0x31uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("CircularBreakthroughMask", 0x18uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("CircularBreakthroughMaskProgrammableBlending", 0x2CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakersProgrammableBlending", 0x30uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakeesProgrammableBlending", 0x30uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughSceneStoreBreakers", 0x1EuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughSceneClearImageBlock", 0x20uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedBreakthroughMeshDrawBreakersProgrammableBlending", 0x37uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedBreakthroughMeshDrawBreakeesProgrammableBlending", 0x37uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("InstancedOcclusionOnlyDepthAsColor", 0x22uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("DepthColorClear", 0xFuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ShadowClear", 0xBuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCasterProgrammableBlending", 0x31uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCaster", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 250;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MXIOffscreenOpaque", 0x12uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MXIOffscreen", 0xCuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  return re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
}

uint64_t re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::makeStencilPixelFormatPredictions@<X0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("Shadow", 6uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("FullScreen", 0xAuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("arKitPassthrough", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("arProjectiveShadow", 0x12uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueDepth", 0x12uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueRadial", 0x13uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueDistance", 0x15uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniquePrecomputed", 0x18uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniquePrecomputedYUp", 0x1BuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueBox", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueCheckered", 0x16uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueOpenSky", 0x14uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueOpenSkyCrossfade", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("PlanarBreakthroughMask", 0x16uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("PlanarBreakthroughMaskProgrammableBlending", 0x2AuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMask", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMaskProgrammableBlending", 0x31uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("CircularBreakthroughMask", 0x18uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("CircularBreakthroughMaskProgrammableBlending", 0x2CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakersProgrammableBlending", 0x30uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakeesProgrammableBlending", 0x30uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughSceneStoreBreakers", 0x1EuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughSceneClearImageBlock", 0x20uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedBreakthroughMeshDrawBreakersProgrammableBlending", 0x37uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedBreakthroughMeshDrawBreakeesProgrammableBlending", 0x37uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("InstancedOcclusionOnlyDepthAsColor", 0x22uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("DepthColorClear", 0xFuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ShadowClear", 0xBuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCasterProgrammableBlending", 0x31uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCaster", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MXIOffscreenOpaque", 0x12uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MXIOffscreen", 0xCuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  return re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
}

uint64_t re::makeSampleCountPredictions@<X0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("Shadow", 6uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("FullScreen", 0xAuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("arKitPassthrough", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("arProjectiveShadow", 0x12uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueDepth", 0x12uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueRadial", 0x13uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueDistance", 0x15uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniquePrecomputed", 0x18uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniquePrecomputedYUp", 0x1BuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueBox", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueCheckered", 0x16uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueOpenSky", 0x14uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueOpenSkyCrossfade", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("PlanarBreakthroughMask", 0x16uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("PlanarBreakthroughMaskProgrammableBlending", 0x2AuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMask", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMaskProgrammableBlending", 0x31uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("CircularBreakthroughMask", 0x18uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("CircularBreakthroughMaskProgrammableBlending", 0x2CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakersProgrammableBlending", 0x30uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakeesProgrammableBlending", 0x30uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughSceneStoreBreakers", 0x1EuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughSceneClearImageBlock", 0x20uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("InstancedOcclusionOnly", 0x16uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("InstancedOcclusionOnlyDepthAsColor", 0x22uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ShadowClear", 0xBuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("DepthColorClear", 0xFuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCasterProgrammableBlending", 0x31uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCaster", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClearDepth", 0xAuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthSU", 0x17uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthContent", 0x1CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthEnvironment", 0x20uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderLinearizedDepth", 0x1CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 1;
  return re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
}

uint64_t re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::makePixel0FormatsPredictions@<X0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("Shadow", 6uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 0;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("FullScreen", 0xAuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 553;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("arKitPassthrough", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 553;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("arProjectiveShadow", 0x12uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueDepth", 0x12uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueRadial", 0x13uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueDistance", 0x15uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniquePrecomputed", 0x18uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniquePrecomputedYUp", 0x1BuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueBox", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueCheckered", 0x16uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueOpenSky", 0x14uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MaskTechniqueOpenSkyCrossfade", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("PlanarBreakthroughMask", 0x16uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("PlanarBreakthroughMaskProgrammableBlending", 0x2AuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMask", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClippedPlanarBreakthroughMaskProgrammableBlending", 0x31uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("CircularBreakthroughMask", 0x18uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("CircularBreakthroughMaskProgrammableBlending", 0x2CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 20;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakersProgrammableBlending", 0x30uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughMeshDrawBreakeesProgrammableBlending", 0x30uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughSceneStoreBreakers", 0x1EuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("BreakthroughSceneClearImageBlock", 0x20uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("FeatheredBreakthroughSceneFullscreenPassHorizontal", 0x32uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("FeatheredBreakthroughSceneFullscreenPassVertical", 0x30uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("FeatheredBreakthroughSceneFullscreenPassRefinement", 0x32uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("InstancedOcclusionOnlyDepthAsColor", 0x22uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("DepthColorClear", 0xFuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ShadowClear", 0xBuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCasterProgrammableBlending", 0x31uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCaster", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 10;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClearDepth", 0xAuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthSU", 0x17uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthContent", 0x1CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthEnvironment", 0x20uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderLinearizedDepth", 0x1CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  return re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
}

uint64_t re::makePixel1FormatsPredictions@<X0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("InstancedOcclusionOnlyDepthAsColor", 0x22uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("DepthColorClear", 0xFuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ShadowClear", 0xBuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCasterProgrammableBlending", 0x24uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("meshShadowCaster", 0x10uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCasterProgrammableBlending", 0x31uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderMeshShadowCaster", 0x1DuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 60;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("ClearDepth", 0xAuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 65;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthSU", 0x17uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 65;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthContent", 0x1CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 65;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthEnvironment", 0x20uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 65;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderLinearizedDepth", 0x1CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 65;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MXIOffscreenOpaque", 0x12uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("MXIOffscreen", 0xCuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 25;
  return re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
}

uint64_t re::makePixel2FormatsPredictions@<X0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  MurmurHash3_x64_128("ClearDepth", 0xAuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 115;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthSU", 0x17uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 115;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthContent", 0x1CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 115;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("RenderLinearizedDepthEnvironment", 0x20uLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 115;
  re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
  MurmurHash3_x64_128("SurfaceShaderLinearizedDepth", 0x1CuLL, 0, &v5);
  v5 ^= v6 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9;
  v4 = 115;
  return re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a1, &v5, &v4);
}

uint64_t re::makeRenderTargetInfoPrediction@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  *(a9 + 8) = 0u;
  v17 = (a9 + 8);
  *(a9 + 24) = 0u;
  if (a8)
  {
    v18 = 252;
  }

  else
  {
    v18 = 260;
  }

  if (a8)
  {
    v19 = 253;
  }

  else
  {
    v19 = 260;
  }

  *(a9 + 48) = 0;
  *(a9 + 37) = 0;
  *a9 = 0x7300000004;
  *(a9 + 36) = v18;
  *(a9 + 40) = v19;
  v20 = strlen(a1);
  if (v20)
  {
    v20 = MurmurHash3_x64_128(a1, v20, 0, &v31);
    v21 = (v32 + (v31 << 6) + (v31 >> 2) - 0x61C8864680B583E9) ^ v31;
  }

  else
  {
    v21 = 0;
  }

  v30 = v21;
  re::DynamicString::find(&v31, "MXI", 3, 0, v29);
  if (v29[0] == 1)
  {
    *a9 = 0x22B00000001;
    *(a9 + 36) = vdup_n_s32(0x104u);
  }

  v22 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2, &v30);
  if (v22)
  {
    *(a9 + 36) = *v22;
  }

  v23 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a3, &v30);
  if (v23)
  {
    *(a9 + 40) = *v23;
  }

  v24 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a4, &v30);
  if (v24)
  {
    *a9 = *v24;
  }

  v25 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a5, &v30);
  if (v25)
  {
    *(a9 + 4) = *v25;
  }

  v26 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a6, &v30);
  if (v26)
  {
    *v17 = *v26;
  }

  v27 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a7, &v30);
  if (v27)
  {
    *(a9 + 12) = *v27;
  }

  result = v31;
  if (v31)
  {
    if (v32)
    {
      return (*(*v31 + 40))();
    }
  }

  return result;
}

uint64_t re::getVertexFormatFromDataType(re *a1)
{
  v1 = a1;
  v5 = *MEMORY[0x1E69E9840];
  if (a1 - 3) < 0x32 && ((0x3FFFFFC01E00FuLL >> (a1 - 3)))
  {
    return byte_1E30DB2A0[(a1 - 3)];
  }

  v3 = *re::graphicsLogObjects(a1);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = v1;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Missing mapping of MTLDataType %d to MTLVertexFormat for fallback rendering prediction.", v4, 8u);
    return 0;
  }

  return result;
}

void re::makeAttributeTablePrediction(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v36 = 0;
  memset(&v35[32], 0, 32);
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, 28);
  v40 = 1;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v48 = 0;
  v47 = 0;
  v52 = 0;
  v53 = 0;
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  v54 = 0;
  v6 = *(a1 + 1);
  v54 = 1;
  if (*(a1 + 1))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a1 + 2) + v7;
      re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(v28, a2);
      re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(v27, a3);
      v11 = *(v10 + 18);
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v28, v10, v12 ^ (v12 >> 31), v64);
      if (HIDWORD(v64[0]) != 0x7FFFFFFF)
      {
        v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v28, v10, v13 ^ (v13 >> 31), v64);
        v11 = *(v28[2] + 32 * HIDWORD(v64[0]) + 24);
      }

      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) >> 27));
      re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v27, v10, v14 ^ (v14 >> 31), v64);
      if (HIDWORD(v64[0]) == 0x7FFFFFFF)
      {
        v15 = 1;
      }

      else
      {
        v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v10 >> 31) ^ (*v10 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v27, v10, v16 ^ (v16 >> 31), v64);
        v15 = *(v27[2] + 32 * HIDWORD(v64[0]) + 24);
      }

      VertexFormatFromDataType = re::getVertexFormatFromDataType(v11);
      v18 = VertexFormatFromDataType;
      v20 = re::sizeFromVertexFormat(VertexFormatFromDataType, v19);
      v21 = v30;
      if (v30 <= v9)
      {
        v55 = 0;
        memset(v64, 0, sizeof(v64));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v56 = 136315906;
        v57 = "operator[]";
        v58 = 1024;
        v59 = 468;
        v60 = 2048;
        v61 = v9;
        v62 = 2048;
        v63 = v21;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (v15)
      {
        v22 = (v20 + 3) & 0x1FC;
      }

      else
      {
        v22 = v20;
      }

      v23 = ((v15 != 0) << 16) | (v15 << 40) | v22 | 0x100000000;
      v24 = *(&v30 + 1) + v8;
      *v24 = v23;
      *(v24 + 8) = 0;
      *(v24 + 12) = v18;
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v27);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v28);
      ++v9;
      v8 += 16;
      v7 += 24;
    }

    while (*(a1 + 1) > v9);
  }

  *(a4 + 168) = 0;
  *(a4 + 152) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 184) = 0;
  *(a4 + 192) = 0;
  *(a4 + 176) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 200) = 1;
  *(a4 + 216) = 0;
  *(a4 + 224) = 0;
  *(a4 + 232) = 0;
  *(a4 + 208) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  *(a4 + 256) = 0;
  *(a4 + 312) = 0;
  *(a4 + 320) = 0;
  *(a4 + 272) = 0u;
  *(a4 + 288) = 0u;
  *(a4 + 304) = 0;
  re::AttributeTableBuilder::makeAttributeTable(&v29, a4);
  re::AttributeTableBuilder::~AttributeTableBuilder(&v29);
}

void re::makeAttributeResolutionsPrediction(_anonymous_namespace_ *a1@<X0>, int8x16_t *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  a4[2] = 0;
  v8 = *(a1 + 1);
  a4[1] = v8;
  if (v8)
  {
    if (v8 >= 0x199999999999999ALL)
    {
      goto LABEL_31;
    }

    v10 = 10 * v8;
    a4[2] = v11;
    if (!v11)
    {
LABEL_32:
      re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v13 = v11;
    v14 = v11;
    if (v8 != 1)
    {
      bzero(v11, v10 - 10);
      v14 = &v13[v10 - 10];
    }

    *(v14 + 4) = 0;
    *v14 = 0;
  }

  else
  {
    v13 = 0;
  }

  v15 = *(a1 + 1);
  v16 = vmvnq_s8(a2[1]);
  v31 = vmvnq_s8(*a2);
  v32 = v16;
  if (v15)
  {
    v17 = 0;
    v18 = 0;
    v19 = -1;
    while (1)
    {
      v20 = v19 + 1;
      if (v19 + 1 > 0xFF)
      {
        break;
      }

      v21 = v20 >> 6;
      if ((v20 & 0x3F) != 0)
      {
        v22 = v31.i64[v21] & (-1 << (v20 & 0x3F));
        if (v22)
        {
          v19 = __clz(__rbit64(v22)) + (v20 & 0xC0);
          goto LABEL_20;
        }

        if (v20 > 0xBF)
        {
          break;
        }

        ++v21;
      }

      v23 = v21;
      v24 = -64 * v21;
      while (1)
      {
        v25 = v31.u64[v23];
        if (v25)
        {
          break;
        }

        v24 -= 64;
        if (++v23 == 4)
        {
          goto LABEL_19;
        }
      }

      v19 = __clz(__rbit64(v25)) - v24;
LABEL_20:
      v26 = *(a1 + 1);
      if (v26 <= v17)
      {
        v33 = 0;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v34 = 136315906;
        v35 = "operator[]";
        v36 = 1024;
        v37 = 468;
        v38 = 2048;
        v39 = v17;
        v40 = 2048;
        v41 = v26;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_30:
        v33 = 0;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v34 = 136315906;
        v35 = "operator[]";
        v36 = 1024;
        v37 = 468;
        v38 = 2048;
        v39 = v17;
        v40 = 2048;
        v41 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_31:
        re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 10, v8, *&v31, *&v32);
        _os_crash();
        __break(1u);
        goto LABEL_32;
      }

      v27 = *(a1 + 2) + 24 * v17;
      if (a3)
      {
        v28 = *(v27 + 18);
      }

      else
      {
        v28 = 0;
      }

      if (v8 <= v17)
      {
        goto LABEL_30;
      }

      v29 = *(v27 + 16);
      v30 = &v13[10 * v17];
      *v30 = v19;
      *(v30 + 1) = v29;
      *(v30 + 2) = v18;
      *(v30 + 3) = v28;
      *(v30 + 4) = 0;
      v17 = ++v18;
      if (v15 <= v18)
      {
        return;
      }
    }

LABEL_19:
    v19 = -1;
    goto LABEL_20;
  }
}

uint64_t re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::mtl::PixelFormat,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, *(v18 + 8) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 8);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 32;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

uint64_t re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        v7 = *(a2 + 16);
        *(result + 8) = *(v7 + v5 + 8);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

void re::DebugRenderer::~DebugRenderer(re::DebugRenderer *this)
{
  re::DebugRenderer::deinit(this);
  re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 27);
  re::DynamicArray<re::RenderText>::deinit(this + 176);
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::DynamicArray<unsigned long>::deinit(this + 56);
  re::DynamicArray<unsigned long>::deinit(this + 16);
}

void re::DebugRenderer::deinit(re::DebugRenderer *this)
{
  if (*(this + 8) == 1)
  {
    re::DynamicArray<unsigned long>::deinit(this + 16);
    re::DynamicArray<unsigned long>::deinit(this + 56);
    re::DynamicArray<unsigned long>::deinit(this + 96);
    re::DynamicArray<unsigned long>::deinit(this + 136);
    re::DynamicArray<re::RenderText>::deinit(this + 176);
    re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 27);
    *this = 0;
  }
}

void *re::DynamicArray<re::RenderLine>::copy(void *this, unint64_t a2, char *__src, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v13 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v14) = 136315906;
    *(&v14 + 4) = "copy";
    WORD6(v14) = 1024;
    HIWORD(v14) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v13, v14);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_12;
  }

  if (v7 >= v8)
  {
    this = memmove((this[4] + (a2 << 6)), __src, (a4 << 6) - 12);
  }

  else
  {
    re::DynamicArray<re::RigTransform>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v10 - v5;
    v12 = &__src[64 * (v10 - v5)];
    if (v10 != v5)
    {
      memmove((v6[4] + (v5 << 6)), __src, (v11 << 6) - 12);
      v5 = v6[2];
    }

    this = memcpy((v6[4] + (v5 << 6)), v12, (v4 - v11) << 6);
    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

double re::DebugRenderer::drawLine(uint64_t a1, _OWORD *a2, __int128 *a3, _OWORD *a4, int a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v8[0] = *a2;
  v8[1] = v5;
  v8[2] = *a4;
  v9 = 1065353216;
  if (a5)
  {
    v6 = (a1 + 16);
  }

  else
  {
    v6 = (a1 + 56);
  }

  *&result = re::DynamicArray<re::RigTransform>::add(v6, v8).n128_u64[0];
  return result;
}

void *re::DebugRenderer::drawArrow(void *result, float32x4_t *a2, float32x4_t *a3, __int128 *a4, int a5, float a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = vsubq_f32(*a3, *a2);
  v7 = vmulq_f32(v6, v6);
  v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  if (fabsf(v8) >= 1.0e-10)
  {
    v12 = result;
    v13 = v8;
    v14 = vrsqrte_f32(LODWORD(v8));
    v15 = vmul_f32(v14, vrsqrts_f32(LODWORD(v13), vmul_f32(v14, v14)));
    v24 = vmulq_n_f32(v6, vmul_f32(v15, vrsqrts_f32(LODWORD(v13), vmul_f32(v15, v15))).f32[0]);
    re::DebugRenderer::drawLine(result, a2, a3, a4, a5);
    if (fabsf(v24.f32[2]) >= 0.00001)
    {
      v17.i32[0] = 0;
      v17.f32[1] = -v24.f32[2];
      v16 = v24;
      v17.i64[1] = v24.u32[1];
    }

    else
    {
      v16 = v24;
      v17.i64[1] = 0;
      v17.f32[0] = -v24.f32[1];
      v17.i32[1] = v24.i32[0];
    }

    v18 = vmulq_f32(v17, v17);
    *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
    *v18.f32 = vrsqrte_f32(v19);
    *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
    v18.i32[0] = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).u32[0];
    v20 = vsubq_f32(*a3, vmulq_n_f32(v16, a6));
    v21 = vmulq_n_f32(vmulq_n_f32(v17, v18.f32[0]), a6 * 0.25);
    __src[0] = *a3;
    __src[1] = vaddq_f32(v20, v21);
    v27 = *a4;
    v28 = 1065353216;
    v29 = __src[0];
    v30 = vsubq_f32(v20, v21);
    v31 = v27;
    v32 = 1065353216;
    v22 = 7;
    if (a5)
    {
      v22 = 2;
    }

    v23 = 9;
    if (a5)
    {
      v23 = 4;
    }

    return re::DynamicArray<re::RenderLine>::copy(&v12[v22], v12[v23], __src, 2);
  }

  return result;
}

void *re::DebugRenderer::drawAxis(void *a1, float32x4_t *a2, int a3, float a4, float a5)
{
  v8 = a5 / a4;
  LODWORD(v10) = 0;
  *(&v10 + 1) = a4;
  v11.i64[0] = 0;
  v11.i64[1] = LODWORD(a4);
  v13 = *a2;
  v12 = a2[1];
  v14 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v15 = vnegq_f32(v12);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(LODWORD(a4), LODWORD(a4)), LODWORD(a4), 0xCuLL), v15), LODWORD(a4), v14);
  v17 = vaddq_f32(v16, v16);
  v18 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v15), v18, v14);
  v41 = vaddq_f32(*a2, vaddq_f32(vaddq_f32(LODWORD(a4), vmulq_laneq_f32(v18, v12, 3)), vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL)));
  v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), v15), v10, v14);
  v21 = vaddq_f32(v20, v20);
  v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v15), v22, v14);
  v36 = vaddq_f32(v13, vaddq_f32(vaddq_f32(v10, vmulq_laneq_f32(v22, v12, 3)), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL)));
  v40 = v36;
  v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), v15), v11, v14);
  v25 = vaddq_f32(v24, v24);
  v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
  v27 = vaddq_f32(v11, vmulq_laneq_f32(v26, v12, 3));
  v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v15), v26, v14);
  v37 = vaddq_f32(v13, vaddq_f32(v27, vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL)));
  v29 = vsubq_f32(v41, v13);
  v30 = vmulq_f32(v29, v29);
  v38 = xmmword_1E3047670;
  v39 = v37;
  re::DebugRenderer::drawArrow(a1, a2, &v41, &v38, a3, v8 * sqrtf(v30.f32[2] + vaddv_f32(*v30.f32)));
  v31 = vsubq_f32(v36, *a2);
  v32 = vmulq_f32(v31, v31);
  v38 = xmmword_1E3047680;
  re::DebugRenderer::drawArrow(a1, a2, &v40, &v38, a3, v8 * sqrtf(v32.f32[2] + vaddv_f32(*v32.f32)));
  v33 = vsubq_f32(v37, *a2);
  v34 = vmulq_f32(v33, v33);
  v38 = xmmword_1E30476A0;
  return re::DebugRenderer::drawArrow(a1, a2, &v39, &v38, a3, v8 * sqrtf(v34.f32[2] + vaddv_f32(*v34.f32)));
}

{
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = vaddq_f32(v11, vmlaq_f32(vmlaq_f32(vmulq_n_f32(*a2, a4), 0, v9), 0, v10));
  v13 = a5 / a4;
  v30 = vdivq_f32(v12, vdupq_laneq_s32(v12, 3));
  v14 = vmulq_f32(v8, 0);
  v15 = vaddq_f32(v11, vmlaq_f32(vmlaq_n_f32(v14, v9, a4), 0, v10));
  v16 = vaddq_f32(v11, vmlaq_n_f32(vmlaq_f32(v14, 0, v9), v10, a4));
  v24 = vdivq_f32(v15, vdupq_laneq_s32(v15, 3));
  v25 = vdivq_f32(v16, vdupq_laneq_s32(v16, 3));
  v28 = v25;
  v29 = v24;
  v17 = vsubq_f32(v30, v11);
  v18 = vmulq_f32(v17, v17);
  v26 = xmmword_1E3047670;
  v27 = v11;
  re::DebugRenderer::drawArrow(a1, &v27, &v30, &v26, a3, v13 * sqrtf(v18.f32[2] + vaddv_f32(*v18.f32)));
  v27 = a2[3];
  v19 = vsubq_f32(v24, v27);
  v20 = vmulq_f32(v19, v19);
  v26 = xmmword_1E3047680;
  re::DebugRenderer::drawArrow(a1, &v27, &v29, &v26, a3, v13 * sqrtf(v20.f32[2] + vaddv_f32(*v20.f32)));
  v27 = a2[3];
  v21 = vsubq_f32(v25, v27);
  v22 = vmulq_f32(v21, v21);
  v26 = xmmword_1E30476A0;
  return re::DebugRenderer::drawArrow(a1, &v27, &v28, &v26, a3, v13 * sqrtf(v22.f32[2] + vaddv_f32(*v22.f32)));
}

double re::DebugRenderer::drawPoint(uint64_t a1, _OWORD *a2, __int128 *a3, int a4, float a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v8[0] = *a2;
  v8[1] = v5;
  v9 = a5;
  if (a4)
  {
    v6 = (a1 + 96);
  }

  else
  {
    v6 = (a1 + 136);
  }

  *&result = re::DynamicArray<re::RenderPoint>::add(v6, v8).n128_u64[0];
  return result;
}

__n128 re::DynamicArray<re::RenderPoint>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderPoint>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  result = *a2;
  v7 = *(a2 + 32);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 32) = v7;
  *v5 = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DebugRenderer::drawText(uint64_t a1, float32x4_t *a2, const char *a3, StringID *a4, __int128 *a5, uint64_t a6)
{
  v6 = a2[1].f32[0];
  v7 = a2[1].f32[1];
  v8 = v6 + v6;
  v9 = v7 + v7;
  v10 = a2[1].f32[2];
  v11 = a2[1].f32[3];
  v12 = v10 + v10;
  v13 = v6 * (v6 + v6);
  v14 = v7 * (v7 + v7);
  v15 = v10 * (v10 + v10);
  v16 = v8 * v7;
  v17 = v8 * v10;
  v18 = v9 * v10;
  v19 = v8 * v11;
  v20 = v9 * v11;
  v21 = v12 * v11;
  v22.i32[3] = 0;
  v22.f32[0] = 1.0 - (v14 + v15);
  v22.f32[1] = v16 + v21;
  v22.f32[2] = v17 - v20;
  v23.i32[3] = 0;
  v24.i32[3] = 0;
  v24.f32[0] = v16 - v21;
  v24.f32[1] = 1.0 - (v13 + v15);
  v24.f32[2] = v18 + v19;
  v23.f32[0] = v17 + v20;
  v23.f32[1] = v18 - v19;
  v23.f32[2] = 1.0 - (v13 + v14);
  v25 = vmulq_laneq_f32(v23, *a2, 2);
  v26 = vmulq_n_f32(v24, COERCE_FLOAT(HIDWORD(a2->i64[0])));
  v29[0] = vmulq_n_f32(v22, COERCE_FLOAT(*a2));
  v29[1] = v26;
  v27 = a2[2];
  HIDWORD(v27) = 1.0;
  v29[2] = v25;
  v29[3] = v27;
  re::DebugRenderer::drawText(a1, v29, a3, a4, a5, a6);
  return result;
}

void re::DebugRenderer::drawText(uint64_t a1, __int128 *a2, const char *a3, StringID *a4, __int128 *a5, uint64_t a6)
{
  v29[7] = *MEMORY[0x1E69E9840];
  v22 = a6;
  v11 = re::StringID::StringID(v23, a4);
  v12 = *a2;
  v13 = a2[1];
  v24 = *a5;
  v25 = v12;
  v14 = a2[2];
  v15 = a2[3];
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29[4] = -1;
  if (a6)
  {
    v21 = 0;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v16 = re::HashTable<unsigned long long,re::DynamicArray<re::RenderText>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 216, &v22, v19);
    re::DynamicArray<re::RenderText>::add(v16, v23);
    re::DynamicArray<re::RenderText>::deinit(v19);
  }

  else
  {
    v17 = re::DynamicArray<re::RenderText>::add((a1 + 176), v23);
  }

  v18 = v29[0];
  if (v29[0])
  {
    if (v29[1])
    {
      v18 = (*(*v29[0] + 40))(v17);
    }

    memset(v29, 0, 32);
  }

  if (v23[0])
  {
    if (v23[0])
    {
    }
  }
}

__n128 re::DynamicArray<re::RenderText>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderText>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 144 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = *(a2 + 2);
  v9 = *(a2 + 4);
  v8 = *(a2 + 5);
  *(v5 + 48) = *(a2 + 3);
  *(v5 + 64) = v9;
  *(v5 + 32) = v7;
  *(v5 + 16) = *(a2 + 1);
  *(v5 + 80) = v8;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 96) = a2[12];
  a2[12] = 0;
  v10 = *(v5 + 112);
  *(v5 + 112) = a2[14];
  a2[14] = v10;
  result = *(a2 + 15);
  *(v5 + 120) = result;
  a2[15] = 0;
  v12 = *(v5 + 104);
  *(v5 + 104) = a2[13];
  a2[13] = v12;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DebugRenderer::drawCircle(uint64_t a1, float32x4_t *a2, int a3, _OWORD *a4, int a5, __n128 result)
{
  if (a3 >= 1)
  {
    v36 = v6;
    v37 = v7;
    v10 = a3;
    v32 = result.n128_u32[0];
    v13 = 6.28318531 / a3;
    v14 = __sincosf_stret(v13 * 0.5);
    v15 = vrsqrte_f32(1065353216);
    v16 = vmul_f32(v15, vrsqrts_f32(1065353216, vmul_f32(v15, v15)));
    v17.i64[1] = 1065353216;
    v18 = vmulq_n_f32(xmmword_1E30476A0, vmul_f32(v16, vrsqrts_f32(1065353216, vmul_f32(v16, v16))).f32[0]);
    *v17.f32 = vmul_n_f32(*v18.f32, v14.__sinval);
    v19.f32[0] = vmuls_lane_f32(v14.__sinval, v18, 2);
    v20 = v17;
    v20.i32[2] = v19.i32[0];
    result = v32;
    *(v19.i64 + 4) = v17.i64[0];
    v30 = vnegq_f32(v20);
    v31 = v19;
    do
    {
      v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(result, result), result, 0xCuLL), v30), result, v31);
      v22 = vaddq_f32(v21, v21);
      v23 = vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL);
      v24 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), v30), v23, v31);
      v25 = vaddq_f32(vaddq_f32(result, vmulq_n_f32(v23, v14.__cosval)), vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
      v26 = *a2;
      v27 = a2[1];
      v28 = a2[2];
      v29 = a2[3];
      v35 = vaddq_f32(v29, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, result.n128_f32[0]), v27, result.n128_u64[0], 1), v28, result, 2));
      v33 = v25;
      v34 = vaddq_f32(v29, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v25.f32[0]), v27, *v25.f32, 1), v28, v25, 2));
      re::DebugRenderer::drawLine(a1, &v35, &v34, a4, a5);
      result = v33;
      --v10;
    }

    while (v10);
  }

  return result;
}

void *re::DebugRenderer::drawBox(uint64_t a1, float32x4_t *a2, float *a3, __int128 *a4, int a5)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = a3[5] - v5;
  v7 = a3[2];
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = vmulq_n_f32(*a2, *a3);
  v12 = vmlaq_n_f32(v11, v8, v5);
  v13 = vmulq_n_f32(*a2, *a3 + (a3[4] - *a3));
  v14 = vmlaq_n_f32(v13, v8, v5);
  v15 = v7 + (a3[6] - v7);
  v22 = vaddq_f32(v10, vmlaq_n_f32(v12, v9, v7));
  v23 = vaddq_f32(v10, vmlaq_n_f32(v14, v9, v7));
  v16 = v5 + v6;
  v17 = vmlaq_n_f32(v11, v8, v16);
  v24 = *a4;
  v18 = vmlaq_n_f32(v13, v8, v16);
  v25 = 1065353216;
  v26 = v23;
  v27 = vaddq_f32(v10, vmlaq_n_f32(v14, v9, v15));
  v28 = v24;
  v29 = 1065353216;
  v30 = v27;
  v31 = vaddq_f32(v10, vmlaq_n_f32(v12, v9, v15));
  v32 = v24;
  v33 = 1065353216;
  v34 = v22;
  v35 = v31;
  v36 = v24;
  v37 = 1065353216;
  v38 = v22;
  v39 = vaddq_f32(v10, vmlaq_n_f32(v17, v9, v7));
  v40 = *a4;
  v41 = 1065353216;
  v42 = v23;
  v43 = vaddq_f32(v10, vmlaq_n_f32(v18, v9, v7));
  v44 = v40;
  v45 = 1065353216;
  v46 = v27;
  v47 = vaddq_f32(v10, vmlaq_n_f32(v18, v9, v15));
  v48 = v40;
  v49 = 1065353216;
  v50 = v31;
  v51 = vaddq_f32(v10, vmlaq_n_f32(v17, v9, v15));
  v52 = v40;
  v53 = 1065353216;
  v54 = v39;
  v55 = v43;
  v56 = v40;
  v57 = 1065353216;
  v58 = v43;
  v59 = v47;
  v60 = *a4;
  v61 = 1065353216;
  v62 = v47;
  v63 = v51;
  v64 = v60;
  v65 = 1065353216;
  v66 = v39;
  v67 = v51;
  v19 = 56;
  v68 = v60;
  if (a5)
  {
    v19 = 16;
  }

  v20 = 72;
  if (a5)
  {
    v20 = 32;
  }

  v69 = 1065353216;
  return re::DynamicArray<re::RenderLine>::copy((a1 + v19), *(a1 + v20), &v22, 12);
}

void re::DebugRenderer::drawSphere(uint64_t a1, uint64_t a2, int a3, _OWORD *a4, int a5, float a6)
{
  v11 = *(a2 + 16);
  v53 = *a2;
  v54 = v11;
  v13 = *(a2 + 48);
  v55 = *(a2 + 32);
  v12 = v55;
  v56 = v13;
  v12.n128_f32[0] = a6;
  re::DebugRenderer::drawCircle(a1, &v53, a3, a4, a5, v12);
  v14 = 0;
  v15 = vrsqrte_f32(1065353216);
  v16 = vmul_f32(v15, vrsqrts_f32(1065353216, vmul_f32(v15, v15)));
  LODWORD(v52) = vmul_f32(v16, vrsqrts_f32(1065353216, vmul_f32(v16, v16))).u32[0];
  v17 = vmulq_n_f32(xmmword_1E3047670, v52);
  v16.f32[0] = vmuls_lane_f32(0.70711, v17, 2);
  v18 = v16.f32[0] + v16.f32[0];
  *v17.f32 = vmul_f32(*v17.f32, vdup_n_s32(0x3F3504F3u));
  v19 = vadd_f32(*v17.f32, *v17.f32);
  v20 = vmul_f32(*v17.f32, v19);
  v21 = v16.f32[0] * (v16.f32[0] + v16.f32[0]);
  v17.f32[0] = vmul_lane_f32(v19, *v17.f32, 1).f32[0];
  v22 = v16.f32[0] * v19.f32[0];
  v16.f32[0] = vmuls_lane_f32(v16.f32[0], v19, 1);
  v23 = 0.70711 * v19.f32[0];
  v19.f32[0] = vmuls_lane_f32(0.70711, v19, 1);
  v24 = v18 * 0.70711;
  HIDWORD(v25) = 0;
  *&v25 = 1.0 - (v20.f32[1] + v21);
  *(&v25 + 1) = v17.f32[0] + v24;
  HIDWORD(v26) = 0;
  *(&v25 + 2) = v22 - v19.f32[0];
  HIDWORD(v27) = 0;
  *&v27 = v17.f32[0] - v24;
  *(&v27 + 1) = 1.0 - (v20.f32[0] + v21);
  *(&v27 + 2) = v16.f32[0] + v23;
  *&v26 = v22 + v19.f32[0];
  *(&v26 + 1) = v16.f32[0] - v23;
  *(&v26 + 2) = 1.0 - vaddv_f32(v20);
  v28 = v53;
  v29 = v54;
  v30 = v55;
  v31 = v56;
  v57 = v25;
  v58 = v27;
  v59 = v26;
  v60 = xmmword_1E30474D0;
  do
  {
    *(&v61 + v14) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*(&v57 + v14))), v29, *(&v57 + v14), 1), v30, *(&v57 + v14), 2), v31, *(&v57 + v14), 3);
    v14 += 16;
  }

  while (v14 != 64);
  v32 = v61;
  v50 = v63;
  v51 = v61;
  v48 = v64;
  v49 = v62;
  v53 = v61;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v32.n128_f32[0] = a6;
  re::DebugRenderer::drawCircle(a1, &v53, a3, a4, a5, v32);
  v33 = 0;
  v34 = vmulq_n_f32(xmmword_1E3047680, v52);
  v35 = vmuls_lane_f32(0.70711, v34, 2);
  v36 = v35 + v35;
  *v34.f32 = vmul_f32(*v34.f32, vdup_n_s32(0x3F3504F3u));
  v37 = vadd_f32(*v34.f32, *v34.f32);
  v38 = vmul_f32(*v34.f32, v37);
  v39 = v35 * (v35 + v35);
  v34.f32[0] = vmul_lane_f32(v37, *v34.f32, 1).f32[0];
  v40 = v35 * v37.f32[0];
  v41 = vmuls_lane_f32(v35, v37, 1);
  v42 = 0.70711 * v37.f32[0];
  v37.f32[0] = vmuls_lane_f32(0.70711, v37, 1);
  v43 = v36 * 0.70711;
  HIDWORD(v44) = 0;
  *&v44 = 1.0 - (v38.f32[1] + v39);
  *(&v44 + 1) = v34.f32[0] + v43;
  HIDWORD(v45) = 0;
  *(&v44 + 2) = v40 - v37.f32[0];
  HIDWORD(v46) = 0;
  *&v46 = v34.f32[0] - v43;
  *(&v46 + 1) = 1.0 - (v38.f32[0] + v39);
  *(&v46 + 2) = v41 + v42;
  *&v45 = v40 + v37.f32[0];
  *(&v45 + 1) = v41 - v42;
  *(&v45 + 2) = 1.0 - vaddv_f32(v38);
  v57 = v44;
  v58 = v46;
  v59 = v45;
  v60 = xmmword_1E30474D0;
  do
  {
    *(&v61 + v33) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, COERCE_FLOAT(*(&v57 + v33))), v49, *(&v57 + v33), 1), v50, *(&v57 + v33), 2), v48, *(&v57 + v33), 3);
    v33 += 16;
  }

  while (v33 != 64);
  v47 = v61;
  v53 = v61;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v47.n128_f32[0] = a6;
  re::DebugRenderer::drawCircle(a1, &v53, a3, a4, a5, v47);
}

void re::DebugRenderer::appendDebugTextToRenderFrame(re::DebugRenderer *this, re::DynamicString **a2, const re::StringID *a3)
{
  if (*(this + 24))
  {
    StreamNameForWorldRoot = re::RenderFrame::getStreamNameForWorldRoot(a2, a3, 0);
    if (StreamNameForWorldRoot[1])
    {
      v7 = StreamNameForWorldRoot[2];
    }

    else
    {
      v7 = StreamNameForWorldRoot + 9;
    }

    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = v7[1];
        if (v9)
        {
          v10 = (v7 + 2);
          do
          {
            v8 = 31 * v8 + v9;
            v11 = *v10++;
            v9 = v11;
          }

          while (v11);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v12 = *(this + 23);
    v36 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    v13 = **(re::RenderFrameData::stream((a2 + 33), &v36) + 48);
    (*(v13 + 704))();
    v14 = *(this + 24);
    *(this + 24) = 0;
    if (v14)
    {
      v15 = *(this + 26);
      v16 = 144 * v14;
      do
      {
        re::DynamicString::deinit((v15 + 96));
        re::StringID::destroyString(v15);
        v15 += 144;
        v16 -= 144;
      }

      while (v16);
    }

    ++*(this + 50);
    if (*(this + 23) < v12)
    {
      re::DynamicArray<re::RenderText>::setCapacity(this + 22, v12);
    }
  }

  v17 = *(this + 62);
  if (v17)
  {
    v18 = 0;
    v19 = *(this + 29);
    while (1)
    {
      v20 = *v19;
      v19 += 16;
      if (v20 < 0)
      {
        break;
      }

      if (v17 == ++v18)
      {
        LODWORD(v18) = *(this + 62);
        break;
      }
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v21 = *(this + 62);
LABEL_25:
  while (v18 != v17)
  {
    v22 = re::RenderFrame::getStreamNameForWorldRoot(a2, a3, *(*(this + 29) + (v18 << 6) + 8));
    if (v22[1])
    {
      v23 = v22[2];
    }

    else
    {
      v23 = v22 + 9;
    }

    if (v23)
    {
      v24 = *v23;
      if (*v23)
      {
        v25 = v23[1];
        if (v25)
        {
          v26 = (v23 + 2);
          do
          {
            v24 = 31 * v24 + v25;
            v27 = *v26++;
            v25 = v27;
          }

          while (v27);
        }
      }
    }

    else
    {
      v24 = 0;
    }

    v36 = v24 & 0x7FFFFFFFFFFFFFFFLL;
    v28 = **(re::RenderFrameData::stream((a2 + 33), &v36) + 48);
    (*(v28 + 704))();
    v21 = *(this + 62);
    if (v21 <= v18 + 1)
    {
      v29 = v18 + 1;
    }

    else
    {
      v29 = *(this + 62);
    }

    while (v29 - 1 != v18)
    {
      LODWORD(v18) = v18 + 1;
      if ((*(*(this + 29) + (v18 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v18) = v29;
  }

  if (*(this + 61))
  {
    v30 = *(this + 60);
    if (v30)
    {
      memset_pattern16(*(this + 28), &unk_1E304C660, 4 * v30);
      v21 = *(this + 62);
    }

    if (v21)
    {
      v31 = 0;
      for (i = 0; i < v21; ++i)
      {
        v33 = *(this + 29);
        v34 = *(v33 + v31);
        if (v34 < 0)
        {
          *(v33 + v31) = v34 & 0x7FFFFFFF;
          re::DynamicArray<re::RenderText>::deinit(v33 + v31 + 16);
          v21 = *(this + 62);
        }

        v31 += 64;
      }
    }

    *(this + 61) = 0;
    *(this + 62) = 0;
    v35 = *(this + 64) + 1;
    *(this + 63) = 0x7FFFFFFF;
    *(this + 64) = v35;
  }
}

void *re::DynamicArray<re::RenderPoint>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::AABB,unsigned int,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DelayedDestructorsForFrame::callDestructorsAndClear(void *this)
{
  v1 = this;
  if (*this)
  {
    v2 = this[2];
    if (v2)
    {
      v3 = v2 - 1;
      v4 = 40 * v2 - 8;
      do
      {
        if (v1[2] <= v3)
        {
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        (*(**(v1[4] + v4) + 16))(*(v1[4] + v4));
        --v3;
        v4 -= 40;
      }

      while (v3 != -1);
    }

    this = re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::deinit(v1);
  }

  v1[5] = 0xFFFFFFFFFFFFFFFLL;
  return this;
}

uint64_t re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

re::FrameManager *re::FrameManager::FrameManager(re::FrameManager *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v2 = &unk_1F5D098B8;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = 16;
  *(v2 + 40) = xmmword_1E30DB2E0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 96) = 0;
  *(v2 + 117) = 0;
  v3 = re::globalAllocators(v2);
  *(this + 19) = v3[2];
  *(this + 20) = 0;
  v4 = re::globalAllocators(v3);
  *(this + 24) = v4[2];
  *(this + 25) = 0;
  v5 = re::globalAllocators(v4);
  *(this + 29) = v5[2];
  *(this + 30) = 0;
  v6 = re::globalAllocators(v5);
  *(this + 34) = v6[2];
  *(this + 35) = 0;
  *(this + 39) = re::globalAllocators(v6)[2];
  *(this + 345) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  return this;
}

double re::FrameManager::init(re::FrameManager *this)
{
  *(this + 42) = 8;
  *(this + 43) = v2;
  if (!v2)
  {
    re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  v4 = 7;
  do
  {
    *(v2 + 80) = 0;
    *(v2 + 48) = 0uLL;
    *(v2 + 64) = 0uLL;
    *(v2 + 16) = xmmword_1E30DB300;
    *(v2 + 32) = 0uLL;
    *v2 = xmmword_1E30DB2F0;
    *(v2 + 88) = 0;
    *(v2 + 128) = 0;
    *(v2 + 256) = 0;
    v2 += 384;
    --v4;
  }

  while (v4);
  *(v2 + 80) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = xmmword_1E30DB300;
  *(v2 + 32) = 0u;
  *v2 = xmmword_1E30DB2F0;
  *(v2 + 88) = 0;
  *(v2 + 128) = 0;
  *(v2 + 256) = 0;
  v5 = re::globalAllocators(v2);
  v6 = re::PerFrameAllocatorManager::addOwner(v5[6], this);
  *(this + 2) = v6;
  if (*(this + 42) <= (*(this + 3) & 7uLL))
  {
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(this + 43) + 384 * (*(this + 3) & 7);
  *v8 = *(this + 3);
  *(v8 + 8) = xmmword_1E30D6840;
  *&result = 0x1000000010000;
  *(v8 + 88) = 0x10000;
  *(v8 + 128) = 0;
  *(v8 + 256) = 0;
  return result;
}

void re::FrameManager::runAllDelayedDestructors(int a1, uint64_t a2, os_unfair_lock_t lock)
{
  os_unfair_lock_lock(lock);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = 48 * v5;
    do
    {
      re::DelayedDestructorsForFrame::callDestructorsAndClear(v6);
      v6 += 6;
      v7 -= 48;
    }

    while (v7);
  }

  os_unfair_lock_unlock(lock);
}

uint64_t (***re::FrameManager::prepareForDeinit(os_unfair_lock_s *this))(void)
{
  std::lock[abi:ne200100]<re::UnfairLock,re::UnfairLock>(this + 22, this + 30);
  *&this[88]._os_unfair_lock_opaque = 0x100000001;
  os_unfair_lock_unlock(this + 22);
  os_unfair_lock_unlock(this + 30);
  re::FrameManager::runAllDelayedDestructors(v2, &this[16], this + 22);
  re::FrameManager::runAllDelayedDestructors(v3, &this[24], this + 30);
  v5 = re::globalAllocators(v4);
  result = re::PerFrameAllocatorManager::freeAllocatorsOlderOrEqual(v5[6], *&this[6]._os_unfair_lock_opaque & 0xFFFFFFFFFFFFFFFLL | (*&this[4]._os_unfair_lock_opaque << 60));
  LOBYTE(this[31]._os_unfair_lock_opaque) = 1;
  return result;
}

void re::FrameManager::deinit(re::FrameManager *this)
{
  if ((*(this + 124) & 1) == 0)
  {
    re::FrameManager::prepareForDeinit(this);
  }

  re::FixedArray<re::DelayedDestructorsForFrame>::deinit(this + 8);
  v2 = re::FixedArray<re::DelayedDestructorsForFrame>::deinit(this + 12);
  v3 = re::globalAllocators(v2);
  re::PerFrameAllocatorManager::removeOwner(v3[6], *(this + 2));
  *(this + 2) = 16;
}

void *re::FixedArray<re::DelayedDestructorsForFrame>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 48 * v2;
      do
      {
        re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::deinit(v4);
        v4 += 48;
        v5 -= 48;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::FrameManager::addDelayedDestructor(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_t lock, int *a5, uint64_t a6)
{
  if (*a5 < 1)
  {
    os_unfair_lock_lock(lock);
    v13 = *(a1 + 24);
    if (*(a2 + 8) <= (v13 & 7))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v14 = *(a2 + 16) + 48 * (*(a1 + 24) & 7);
    if (!*v14)
    {
      *v14 = a6;
      v12 = re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::setCapacity(v14, 0);
      ++*(v14 + 24);
      v13 = *(a1 + 24);
    }

    *(v14 + 40) = v13 & 0xFFFFFFFFFFFFFFFLL | (*(a1 + 16) << 60);
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
    if (v15 >= v16)
    {
      v17 = v15 + 1;
      if (v16 < v15 + 1)
      {
        if (*v14)
        {
          v18 = 2 * v16;
          if (!v16)
          {
            v18 = 8;
          }

          if (v18 <= v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = v18;
          }

          re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::setCapacity(v14, v19);
        }

        else
        {
          re::DynamicArray<re::MoveOnlyFunction<void ()(void)>>::setCapacity(v14, v17);
          ++*(v14 + 24);
        }
      }

      v15 = *(v14 + 16);
    }

    v20 = *(v14 + 32) + 40 * v15;
    *(v20 + 24) = *(a3 + 24);
    *(v20 + 32) = 0;
    re::MoveOnlyFunctionBase<24ul,void ()(void)>::operator=<24ul>(v20, a3);
    ++*(v14 + 16);
    ++*(v14 + 24);

    os_unfair_lock_unlock(lock);
  }

  else
  {
    v7 = *(**(a3 + 32) + 16);

    v7();
  }
}

void re::FrameManager::addDelayedDestructor(uint64_t a1, uint64_t a2)
{
  ValidAllocator = re::getValidAllocator((*(a1 + 24) & 0xFFFFFFFFFFFFFFFLL | (*(a1 + 16) << 60)));

  re::FrameManager::addDelayedDestructor(a1, a1 + 64, a2, (a1 + 88), (a1 + 352), ValidAllocator);
}

void *re::FrameManager::destructForFrame(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 88);
  *(result + 88) = v3 + 1;
  v4 = result[9];
  if (v4)
  {
    v6 = result[10];
    v7 = 48 * v4;
    do
    {
      if (*v6 && ((v6[5] ^ a2) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        result = re::DelayedDestructorsForFrame::callDestructorsAndClear(v6);
      }

      v6 += 6;
      v7 -= 48;
    }

    while (v7);
    v3 = *(v2 + 88) - 1;
  }

  *(v2 + 88) = v3;
  return result;
}

uint64_t re::FrameManager::hasToDestructForFrameOnRenderThread(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 120));
  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = *(a1 + 112);
    v6 = 48 * v4;
    while (1)
    {
      if (*v5)
      {
        if ((a2 & 0xFFFFFFFFFFFFFFFLL) == 0xFFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v7 = v5[5];
        v8 = (v7 ^ a2) & 0xFFFFFFFFFFFFFFFLL;
        v9 = v7 & 0xFFFFFFFFFFFFFFFLL;
        if (!v8 || v9 <= (*(a1 + 32) & 0xFFFFFFFFFFFFFFFuLL))
        {
          break;
        }
      }

      v5 += 6;
      v6 -= 48;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    v11 = 1;
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  os_unfair_lock_unlock((a1 + 120));
  return v11;
}

void re::FrameManager::destructForFrameOnRenderThread(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock((a1 + 120));
  v6 = *(a1 + 356);
  *(a1 + 356) = v6 + 1;
  v7 = *(a1 + 104);
  if (v7)
  {
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFLL;
    v9 = *(a1 + 112);
    v10 = 48 * v7;
    while (1)
    {
      if (*v9)
      {
        if (((v9[5] ^ a2) & 0xFFFFFFFFFFFFFFFLL) != 0)
        {
          if (a3)
          {
            goto LABEL_8;
          }
        }

        else
        {
          re::DelayedDestructorsForFrame::callDestructorsAndClear(v9);
          if (a3)
          {
LABEL_8:
            if ((v9[5] & 0xFFFFFFFFFFFFFFFuLL) <= v8)
            {
              re::DelayedDestructorsForFrame::callDestructorsAndClear(v9);
            }
          }
        }
      }

      v9 += 6;
      v10 -= 48;
      if (!v10)
      {
        v6 = *(a1 + 356) - 1;
        break;
      }
    }
  }

  *(a1 + 356) = v6;

  os_unfair_lock_unlock((a1 + 120));
}

void re::FrameManager::destructOlderOrEqualOnRenderThread(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 120));
  v4 = *(a1 + 356);
  *(a1 + 356) = v4 + 1;
  v5 = *(a1 + 104);
  if (v5)
  {
    v6 = *(a1 + 112);
    v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
    v8 = 48 * v5;
    do
    {
      if (*v6 && (v6[5] & 0xFFFFFFFFFFFFFFFuLL) <= v7)
      {
        re::DelayedDestructorsForFrame::callDestructorsAndClear(v6);
      }

      v6 += 6;
      v8 -= 48;
    }

    while (v8);
    v4 = *(a1 + 356) - 1;
  }

  *(a1 + 356) = v4;

  os_unfair_lock_unlock((a1 + 120));
}

uint64_t re::FrameManager::nextFrame(re::FrameManager *this)
{
  v2 = *(this + 35);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFLL;
  v4 = 0xFFFFFFFFFFFFFFFLL;
  if (*(this + 360) != 1)
  {
    goto LABEL_17;
  }

  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFLL;
  do
  {
    if (v5 == 0xFFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      if (*(this + 42) <= v7)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_70:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_71:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_72:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_73:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_74:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_75:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_76;
      }

      v9 = *(this + 43) + v6;
      if (*(v9 + 90) == 1 && *v9 == v5)
      {
        v8 = 1;
        atomic_fetch_add((v9 + 256), 1u);
        *(v9 + 91) = 1;
        v5 = *(v9 + 16);
      }

      ++v7;
      v6 += 384;
    }

    while (v7 != 8);
  }

  while ((v8 & 1) != 0);
  v4 = v3;
LABEL_17:
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = (v3 + 1);
  do
  {
    if (*(this + 42) <= v12)
    {
      goto LABEL_73;
    }

    v15 = *(this + 43) + v11;
    if (*(v15 + 90) == 1)
    {
      if (atomic_load((v15 + 128)))
      {
        break;
      }
    }

    v13 = v12 > 6;
    v11 += 384;
    ++v12;
  }

  while (v12 != 8);
  v41 = v14;
  if (v13 && re::FrameManager::hasToDestructForFrameOnRenderThread(this, 0xFFFFFFFFFFFFFFFLL))
  {
    v17 = *(this + 30);
    if (v17)
    {
      (*(*v17 + 16))(v17);
    }

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  ++*(this + 88);
  v19 = (*(this + 6) + 1) & 7;
  v20 = v19;
  do
  {
    if (*(this + 42) <= v20)
    {
      goto LABEL_70;
    }

    v21 = *(this + 43) + 384 * v20;
    if (*(v21 + 90) == 1)
    {
      v22 = atomic_load((v21 + 256));
      if (v22 >= 1)
      {
        atomic_fetch_add((v21 + 256), 0xFFFFFFFF);
      }

      v23 = *v21 & 0xFFFFFFFFFFFFFFFLL | (*(this + 2) << 60);
      if (*(v21 + 89) == 1 && (*(v21 + 91) & 1) == 0)
      {
        re::FrameManager::destructForFrame(this, *v21 & 0xFFFFFFFFFFFFFFFLL | (*(this + 2) << 60));
      }

      if (!atomic_load((v21 + 128)) && !atomic_load((v21 + 256)))
      {
        re::FrameManager::destructForFrame(this, v23);
        if ((v18 & re::FrameManager::hasToDestructForFrameOnRenderThread(this, v23)) == 1)
        {
          v26 = *(this + 30);
          if (v26)
          {
            (*(*v26 + 16))(v26);
          }
        }

        re::FrameManager::destructForFrameOnRenderThread(this, v23, 1);
        re::FrameManager::freeForFrame(this, v21);
        if ((re::FrameManager::hasToDestructForFrameOnRenderThread(this, v23) & 1) == 0)
        {
          *(v21 + 90) = 0;
        }
      }
    }

    v20 = (v20 + 1) & 7;
  }

  while (v20 != v19);
  --*(this + 88);
  re::updateFrameCountCommon((this + 24), v41, "FrameCount", 0);
  if (*(this + 42) <= (v41 & 7))
  {
    goto LABEL_75;
  }

  v27 = *(this + 43) + 384 * (v41 & 7);
  if (*(v27 + 90) == 1)
  {
    v28 = *v27 & 0xFFFFFFFFFFFFFFFLL | (*(this + 2) << 60);
    if (re::FrameManager::hasToDestructForFrameOnRenderThread(this, v28))
    {
      v29 = *(this + 30);
      if (v29)
      {
        (*(*v29 + 16))(v29);
      }
    }

    re::FrameManager::destructForFrame(this, v28);
    re::FrameManager::destructForFrameOnRenderThread(this, v28, 1);
    re::FrameManager::freeForFrame(this, v27);
  }

  v30 = 0;
  *(v27 + 16) = v4;
  *(v27 + 88) = 0x10000;
  *(v27 + 128) = 0;
  *(v27 + 256) = 0;
  v31 = 1;
  *v27 = v41;
  *(v27 + 8) = 1;
  atomic_fetch_add((v27 + 256), 1u);
  v32 = *(this + 42);
  if (v32 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = *(this + 42);
  }

  for (i = 384; i != 3072; i += 384)
  {
    if (v33 == v31)
    {
      goto LABEL_71;
    }

    if (v32 <= v30)
    {
      goto LABEL_72;
    }

    v35 = *(this + 43);
    if (*(v35 + i) < *(v35 + 384 * v30))
    {
      v30 = v31;
    }

    ++v31;
  }

  for (j = 1; j != 8; ++j)
  {
    v37 = (v30 + j) & 7;
    if (v32 <= v37)
    {
      goto LABEL_74;
    }

    if (*(v35 + 384 * v37 + 90))
    {
      break;
    }
  }

  v38 = (v30 + j - 1) & 7;
  if (v32 <= v38)
  {
LABEL_76:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(this + 4) = *(v35 + 384 * v38);
  *(this + 360) = 0;
  result = *(this + 40);
  if (result)
  {
    v40 = *(*result + 16);

    return v40();
  }

  return result;
}