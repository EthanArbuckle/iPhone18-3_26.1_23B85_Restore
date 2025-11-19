void mediaplatform::FormatterParameters<0ul,long long,long long,long long>::formatOptionsAtIndex<long long,long long,long long>(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<1ul,long long,long long>::formatOptionsAtIndex<long long,long long,long long>(a1);
}

uint64_t mediaplatform::TypeFormatter<long long,void>::TypeFormatter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a3;
  *(result + 72) = 0;
  *(result + 80) = a2 >= 0;
  v3 = *(a3 + 4);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v8 = &mediaplatform::TypeFormatterLowerHexMapping;
      if (*(a3 + 51))
      {
        v8 = &mediaplatform::TypeFormatterUpperHexMapping;
      }

      if (a2 >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = -a2;
      }

      v10 = 71;
      do
      {
        *(result + v10--) = v8[v9 & 0xF];
        v6 = v9 >= 0x10;
        v9 >>= 4;
      }

      while (v6);
      v11 = v10 - 7;
      goto LABEL_31;
    }

    if (v3 != 3)
    {
      return result;
    }

    if (a2 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = -a2;
    }

    v5 = 71;
    do
    {
      *(result + v5--) = v7 & 1 | 0x30;
      v6 = v7 >= 2;
      v7 >>= 1;
    }

    while (v6);
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    if (a2 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    v5 = 71;
    do
    {
      *(result + v5--) = v4 & 7 | 0x30;
      v6 = v4 >= 8;
      v4 >>= 3;
    }

    while (v6);
  }

  else
  {
    v5 = 71;
    if (a2 < 0)
    {
      do
      {
        *(result + v5) = 48 - a2 % 10;
        v12 = a2 + 9;
        --v5;
        a2 /= 10;
      }

      while (v12 >= 0x13);
    }

    else
    {
      do
      {
        *(result + v5--) = (a2 % 0xAuLL) | 0x30;
        v6 = a2 >= 0xA;
        a2 /= 0xAuLL;
      }

      while (v6);
    }
  }

  v11 = v5 - 7;
LABEL_31:
  *(result + 72) = v11;
  return result;
}

void *mediaplatform::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,long long>(void *result, char *a2, uint64_t *a3)
{
  v3 = a2;
  v4 = result;
  v5 = *a3;
  if (*(a3 + 80) == 1 && *(v5 + 48) != 1)
  {
    v6 = 64;
  }

  else
  {
    v6 = 65;
  }

  v7 = v6 - a3[9];
  if (*(v5 + 50) == 1)
  {
    v8 = *(v5 + 24);
    if (v7 <= v8)
    {
      v7 = v8;
    }
  }

  if (*(result + 16) != 1 || (v9 = result[3], v10 = v9 - v7, v9 <= v7))
  {
LABEL_15:

    return mediaplatform::TypeFormatter<long long,void>::formatAtLocation<std::__wrap_iter<char *>>(a3, v3);
  }

  v11 = *result;
  if (*result)
  {
    if (v11 != 1)
    {
      if (v11 != 2)
      {
        return result;
      }

      v12 = *(result + 52);
      do
      {
        *v3++ = v12;
        --v10;
      }

      while (v10);
      goto LABEL_15;
    }

    if (v10 >= 2)
    {
      v13 = v10 >> 1;
      if (v10 >> 1 <= 1)
      {
        v13 = 1;
      }

      v14 = *(result + 52);
      do
      {
        *v3++ = v14;
        --v13;
      }

      while (v13);
    }

    result = mediaplatform::TypeFormatter<long long,void>::formatAtLocation<std::__wrap_iter<char *>>(a3, v3);
    v15 = *(v4 + 52);
    if (v10 - (v10 >> 1) <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v10 - (v10 >> 1);
    }

    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v18 = vdupq_n_s64(v16 - 1);
    v19 = &v3[v7 + 7];
    v20 = 15;
    do
    {
      v21 = vdupq_n_s64(v20 - 15);
      v22 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_1D5AFB360)));
      if (vuzp1_s8(vuzp1_s16(v22, *v18.i8), *v18.i8).u8[0])
      {
        *(v19 - 7) = v15;
      }

      if (vuzp1_s8(vuzp1_s16(v22, *&v18), *&v18).i8[1])
      {
        *(v19 - 6) = v15;
      }

      if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_1D5AFB350)))), *&v18).i8[2])
      {
        *(v19 - 5) = v15;
        *(v19 - 4) = v15;
      }

      v23 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_1D5AFB340)));
      if (vuzp1_s8(*&v18, vuzp1_s16(v23, *&v18)).i32[1])
      {
        *(v19 - 3) = v15;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(v23, *&v18)).i8[5])
      {
        *(v19 - 2) = v15;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_1D5AFB330))))).i8[6])
      {
        *(v19 - 1) = v15;
        *v19 = v15;
      }

      v24 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_1D5AFB320)));
      if (vuzp1_s8(vuzp1_s16(v24, *v18.i8), *v18.i8).u8[0])
      {
        v19[1] = v15;
      }

      if (vuzp1_s8(vuzp1_s16(v24, *&v18), *&v18).i8[1])
      {
        v19[2] = v15;
      }

      if (vuzp1_s8(vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_1D5AFB310)))), *&v18).i8[2])
      {
        v19[3] = v15;
        v19[4] = v15;
      }

      v25 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_1D5AFB300)));
      if (vuzp1_s8(*&v18, vuzp1_s16(v25, *&v18)).i32[1])
      {
        v19[5] = v15;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(v25, *&v18)).i8[5])
      {
        v19[6] = v15;
      }

      if (vuzp1_s8(*&v18, vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v21, xmmword_1D5AFB2F0))))).i8[6])
      {
        v19[7] = v15;
        v19[8] = v15;
      }

      v20 += 16;
      v19 += 16;
      v17 -= 16;
    }

    while (v17);
  }

  else
  {
    result = mediaplatform::TypeFormatter<long long,void>::formatAtLocation<std::__wrap_iter<char *>>(a3, a2);
    v26 = *(v4 + 52);
    v27 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    v28 = vdupq_n_s64(v10 - 1);
    v29 = &v3[v7 + 7];
    v30 = 15;
    do
    {
      v31 = vdupq_n_s64(v30 - 15);
      v32 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_1D5AFB360)));
      if (vuzp1_s8(vuzp1_s16(v32, *v28.i8), *v28.i8).u8[0])
      {
        *(v29 - 7) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v28), *&v28).i8[1])
      {
        *(v29 - 6) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_1D5AFB350)))), *&v28).i8[2])
      {
        *(v29 - 5) = v26;
        *(v29 - 4) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_1D5AFB340)));
      if (vuzp1_s8(*&v28, vuzp1_s16(v33, *&v28)).i32[1])
      {
        *(v29 - 3) = v26;
      }

      if (vuzp1_s8(*&v28, vuzp1_s16(v33, *&v28)).i8[5])
      {
        *(v29 - 2) = v26;
      }

      if (vuzp1_s8(*&v28, vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_1D5AFB330))))).i8[6])
      {
        *(v29 - 1) = v26;
        *v29 = v26;
      }

      v34 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_1D5AFB320)));
      if (vuzp1_s8(vuzp1_s16(v34, *v28.i8), *v28.i8).u8[0])
      {
        v29[1] = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v34, *&v28), *&v28).i8[1])
      {
        v29[2] = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_1D5AFB310)))), *&v28).i8[2])
      {
        v29[3] = v26;
        v29[4] = v26;
      }

      v35 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_1D5AFB300)));
      if (vuzp1_s8(*&v28, vuzp1_s16(v35, *&v28)).i32[1])
      {
        v29[5] = v26;
      }

      if (vuzp1_s8(*&v28, vuzp1_s16(v35, *&v28)).i8[5])
      {
        v29[6] = v26;
      }

      if (vuzp1_s8(*&v28, vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_1D5AFB2F0))))).i8[6])
      {
        v29[7] = v26;
        v29[8] = v26;
      }

      v30 += 16;
      v29 += 16;
      v27 -= 16;
    }

    while (v27);
  }

  return result;
}

void *mediaplatform::TypeFormatter<long long,void>::formatAtLocation<std::__wrap_iter<char *>>(void *result, char *a2)
{
  v2 = a2;
  v3 = result[9];
  if (*(result + 80) == 1)
  {
    v4 = *result;
    if (*(*result + 48) != 1)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = *(v4 + 49);
  }

  else
  {
    v5 = 45;
  }

  *a2 = v5;
  v2 = a2 + 1;
  v4 = *result;
  v6 = 1;
LABEL_7:
  if (*(v4 + 16) == 1 && *(v4 + 50) == 1)
  {
    v7 = v6 - v3 + 64;
    if (v7 < *(v4 + 24))
    {
      do
      {
        *v2++ = 48;
        ++v7;
      }

      while (v7 < *(*result + 24));
    }
  }

  v8 = result[9];
  if (v8 != 64)
  {
    return memmove(v2, result + v8 + 8, 64 - v8);
  }

  return result;
}

void mediaplatform::FormatterParameters<3ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,long long,long long,long long>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mediaplatform::FormatterParameters<1ul,long long,long long>::formatOptionsAtIndex<long long,long long,long long>(uint64_t a1)
{
  if (a1 == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<2ul,long long>::formatOptionsAtIndex<long long,long long,long long>(a1);
}

void mediaplatform::FormatterParameters<2ul,long long>::formatOptionsAtIndex<long long,long long,long long>(uint64_t a1)
{
  if (a1 == 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<3ul>::formatOptionsAtIndex<long long,long long,long long>();
}

void mediaplatform::FormatterParameters<3ul>::formatOptionsAtIndex<long long,long long,long long>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mediaplatform::FormatImplementation<long long>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t **a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v32 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = a3;
    v11 = a1;
    while (1)
    {
      if (v6 == 123)
      {
        v12 = v11->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v32 = &v11->__r_.__value_.__s.__data_[2];
            v22 = v11->__r_.__value_.__s.__data_[2];
            if ((v22 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v23 = 0;
              v24 = &v11->__r_.__value_.__s.__data_[3];
              do
              {
                v25 = v24;
                v32 = v24;
                v23 = (v22 & 0xF) + 10 * v23;
                ++v24;
                v27 = *v25;
                v26 = (v25 - 1);
                LOBYTE(v22) = v27;
              }

              while ((v27 - 58) >= 0xFFFFFFF6);
              v32 = (v26 + 2);
              if (*(v24 - 1) == 125)
              {
                mediaplatform::FormatterParameters<0ul,long long>::formatOptionsAtIndex<long long>(v23);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mediaplatform::FormatOptions::FormatOptions(v29, &v32);
          if (v29[1])
          {
            mediaplatform::FormatterParameters<1ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,long long>>();
          }

          v15 = v32;
          mediaplatform::TypeFormatter<long long,void>::TypeFormatter(v33, **a4, v29);
          if (v34 == 1 && *(v33[0] + 48) != 1)
          {
            v16 = 64;
          }

          else
          {
            v16 = 65;
          }

          v17 = v16 - v33[9];
          if (*(v33[0] + 50) == 1 && v17 <= *(v33[0] + 24))
          {
            v17 = *(v33[0] + 24);
          }

          v18 = v31;
          if (v31 <= v17)
          {
            v18 = v17;
          }

          if (v30)
          {
            v19 = v18;
          }

          else
          {
            v19 = v17;
          }

          mediaplatform::FormatImplementation<long long>(v15, a2, v19 + v10, a4);
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = a2;
          }

          else
          {
            v20 = a2->__r_.__value_.__r.__words[0];
          }

          mediaplatform::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,long long>(v29, &v20[v10], v33);
          if (v10 != a3)
          {
            mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
          }

          goto LABEL_33;
        }

        v9 = 1;
        v11 = (v11 + 1);
      }

      ++v10;
      v32 = &v11->__r_.__value_.__s.__data_[1];
      v6 = v11->__r_.__value_.__s.__data_[1];
      v11 = (v11 + 1);
      if (!v6)
      {
        std::string::resize(a2, v10, 0);
        if (v10 != a3)
        {
          v13 = *MEMORY[0x1E69E9840];

          mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
          return;
        }

LABEL_33:
        v21 = *MEMORY[0x1E69E9840];
        return;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  std::string::resize(a2, a3, 0);
}

void mediaplatform::FormatterParameters<0ul,long long>::formatOptionsAtIndex<long long>(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<1ul>::formatOptionsAtIndex<long long>();
}

void mediaplatform::FormatterParameters<1ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,long long>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mediaplatform::FormatterParameters<1ul>::formatOptionsAtIndex<long long>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mediaplatform::FormatImplementation<long long,int>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v38 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = a3;
    v11 = a1;
    while (1)
    {
      if (v6 == 123)
      {
        v12 = v11->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v38 = &v11->__r_.__value_.__s.__data_[2];
            v27 = v11->__r_.__value_.__s.__data_[2];
            if ((v27 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v28 = 0;
              v29 = &v11->__r_.__value_.__s.__data_[3];
              do
              {
                v30 = v29;
                v38 = v29;
                v28 = (v27 & 0xF) + 10 * v28;
                ++v29;
                v32 = *v30;
                v31 = (v30 - 1);
                LOBYTE(v27) = v32;
              }

              while ((v32 - 58) >= 0xFFFFFFF6);
              v38 = (v31 + 2);
              if (*(v29 - 1) == 125)
              {
                mediaplatform::FormatterParameters<0ul,long long,int>::formatOptionsAtIndex<long long,int>(v28);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          mediaplatform::FormatOptions::FormatOptions(&v34, &v38);
          v15 = v38;
          if (v35)
          {
            if (v35 != 1)
            {
              mediaplatform::FormatterParameters<2ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,long long,int>>();
            }

            mediaplatform::TypeFormatter<int,void>::TypeFormatter(v39, **a4, &v34);
            if (v40 == 1 && *(v39[0] + 48) != 1)
            {
              v16 = 32;
            }

            else
            {
              v16 = 33;
            }

            v22 = v16 - v39[5];
            if (*(v39[0] + 50) == 1 && v22 <= *(v39[0] + 24))
            {
              v22 = *(v39[0] + 24);
            }

            v23 = v37;
            if (v37 <= v22)
            {
              v23 = v22;
            }

            if (v36)
            {
              v24 = v23;
            }

            else
            {
              v24 = v22;
            }

            mediaplatform::FormatImplementation<long long,int>(v15, a2, v24 + v10, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = a2;
            }

            else
            {
              v25 = a2->__r_.__value_.__r.__words[0];
            }

            mediaplatform::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,int>(&v34, &v25[v10], v39);
          }

          else
          {
            mediaplatform::TypeFormatter<long long,void>::TypeFormatter(v39, **(a4 + 8), &v34);
            if (v42 == 1 && *(v39[0] + 48) != 1)
            {
              v17 = 64;
            }

            else
            {
              v17 = 65;
            }

            v18 = v17 - v41;
            if (*(v39[0] + 50) == 1 && v18 <= *(v39[0] + 24))
            {
              v18 = *(v39[0] + 24);
            }

            v19 = v37;
            if (v37 <= v18)
            {
              v19 = v18;
            }

            if (v36)
            {
              v20 = v19;
            }

            else
            {
              v20 = v18;
            }

            mediaplatform::FormatImplementation<long long,int>(v15, a2, v20 + v10, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = a2;
            }

            else
            {
              v21 = a2->__r_.__value_.__r.__words[0];
            }

            mediaplatform::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,long long>(&v34, &v21[v10], v39);
          }

          if (v10 != a3)
          {
            mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
          }

          goto LABEL_51;
        }

        v9 = 1;
        v11 = (v11 + 1);
      }

      ++v10;
      v38 = &v11->__r_.__value_.__s.__data_[1];
      v6 = v11->__r_.__value_.__s.__data_[1];
      v11 = (v11 + 1);
      if (!v6)
      {
        std::string::resize(a2, v10, 0);
        if (v10 != a3)
        {
          v13 = *MEMORY[0x1E69E9840];

          mediaplatform::CopyFormatSectionToResult(a1, a2, a3, v10 - a3, v9 & 1);
          return;
        }

LABEL_51:
        v26 = *MEMORY[0x1E69E9840];
        return;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  std::string::resize(a2, a3, 0);
}

void mediaplatform::FormatterParameters<0ul,long long,int>::formatOptionsAtIndex<long long,int>(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<1ul,int>::formatOptionsAtIndex<long long,int>(a1);
}

void mediaplatform::FormatterParameters<2ul>::formatParameterAtIndex<mediaplatform::FormatterParameters<0ul,long long,int>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mediaplatform::FormatterParameters<1ul,int>::formatOptionsAtIndex<long long,int>(uint64_t a1)
{
  if (a1 == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mediaplatform::FormatterParameters<2ul>::formatOptionsAtIndex<long long,int>();
}

void mediaplatform::FormatterParameters<2ul>::formatOptionsAtIndex<long long,int>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::QueryProperty<int>::_SQLJoinClauses(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::QueryProperty<int>::_SQLExpression(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 64);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 72))(&v6);
  std::allocate_shared[abi:ne200100]<mediaplatform::SQLSelectExpression,std::allocator<mediaplatform::SQLSelectExpression>,std::shared_ptr<mediaplatform::SQLSelectStatement>,0>();
}

void sub_1D5781C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<mediaplatform::SQLSelectExpression>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::QueryProperty<int>::databaseColumn()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database column");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::QueryProperty<int>::databaseTables(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *mlcore::ModelProperty<int>::insertIntoCacheFromResultList(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sqlite3_column_int(*(*(a3 + 8) + 24), *a3 + a4);
  v8[0] = a1;
  v8[1] = v8;
  result = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::__emplace_unique_key_args<mlcore::ModelProperty<int> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<int> * const&>,std::tuple<>>((a2 + 128), a1);
  *(result + 6) = v6;
  return result;
}

void mlcore::QueryProperty<int>::description(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 40))(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1D5781F5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::QueryProperty<int>::~QueryProperty(mlcore::ModelPropertyBase *this)
{
  *this = &unk_1F50DDB28;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDB28;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);
}

void mlcore::QueryProperty<std::string>::_SQLJoinClauses(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::QueryProperty<std::string>::_SQLExpression(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 64);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 72))(&v6);
  std::allocate_shared[abi:ne200100]<mediaplatform::SQLSelectExpression,std::allocator<mediaplatform::SQLSelectExpression>,std::shared_ptr<mediaplatform::SQLSelectStatement>,0>();
}

void sub_1D57820E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::QueryProperty<std::string>::databaseColumn()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database column");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::QueryProperty<std::string>::databaseTables(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::ModelProperty<std::string>::insertIntoCacheFromResultList(unint64_t a1, int8x8_t *a2, uint64_t a3, int a4)
{
  v6 = sqlite3_column_text(*(*(a3 + 8) + 24), *a3 + a4);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v7);
  mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::setValueForProperty(a2, &__p, a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D57821F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::QueryProperty<std::string>::description(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 40))(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1D578228C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::QueryProperty<std::string>::~QueryProperty(mlcore::ModelPropertyBase *this)
{
  *this = &unk_1F50DDBB0;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DDBB0;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);
}

uint64_t mlcore::TypedEntityClass<mlcore::Composer>::sharedPointer()
{
  if (atomic_load_explicit(&mlcore::TypedEntityClass<mlcore::Composer>::sharedPointer(void)::__once, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&mlcore::TypedEntityClass<mlcore::Composer>::sharedPointer(void)::__once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::TypedEntityClass<mlcore::Composer>::sharedPointer(void)::{lambda(void)#1} &&>>);
  }

  return mlcore::TypedEntityClass<mlcore::Composer>::sharedPointer(void)::__sharedPointer;
}

void mlcore::ComposerPropertyOrder(mlcore *this)
{
  v1 = mlcore::ComposerPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyComposerOrder(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<long long>(v1, v2, v3);
}

void mlcore::ComposerPropertyOrderSection(mlcore *this)
{
  v1 = mlcore::ComposerPropertyRepresentativeItemPersistentID(this);
  v2 = mlcore::ItemPropertyComposerOrderSection(v1);
  v3[0] = 0;
  v3[1] = 0;
  mlcore::GetForeignProperty<int>(v1, v2, v3);
}

uint64_t mlcore::ComposerPropertyRepresentativeItemPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyRepresentativeItemPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyRepresentativeItemPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyRepresentativeItemPersistentID(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyRepresentativeItemPersistentID(void)::property;
}

void sub_1D5782790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::ComposerTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore13ComposerTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ComposerTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ComposerTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t mlcore::DatabaseModelProperty<long long>::DatabaseModelProperty(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_1F50D42A0;
  *(a1 + 64) = *a2;
  *(a1 + 72) = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v5 = *(a3 + 8);
    *(a1 + 96) = *(a3 + 24);
    *(a1 + 80) = v5;
  }

  *(a1 + 104) = *(a3 + 32);
  *(a1 + 72) = &unk_1F50D8958;
  v6 = *(a3 + 36);
  *(a1 + 116) = *(a3 + 44);
  *(a1 + 108) = v6;
  *(a1 + 72) = &unk_1F50D7AC0;
  return a1;
}

uint64_t mlcore::DatabaseModelProperty<long long>::_SQLJoinClauses@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 96))(a2);
  if (result != *(a1 + 64))
  {
    result = *(a1 + 8);
    if (result)
    {
      v7 = (*(*result + 64))(result);
      result = (*(*a2 + 64))(a2);
      if (v7 == result)
      {
        mlcore::SQLShortColumnNameFromEntityPrimaryKey(*(a1 + 8), v8);
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D5782BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D5782CB0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void *mediaplatform::Singleton<mlcore::ItemKVSTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore12ItemKVSTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ItemKVSTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ItemKVSTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D5782E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v18);
  _Unwind_Resume(a1);
}

void sub_1D5782FE4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ItemKVSTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1EE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void std::__shared_ptr_emplace<mediaplatform::SQLUsingJoinConstraint>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D23E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::DatabaseModelProperty<long long>::databaseTables(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<mediaplatform::DatabaseTableBase *>::__init_with_size[abi:ne200100]<mediaplatform::DatabaseTableBase * const*,mediaplatform::DatabaseTableBase * const*>(a2, &v2, &v3, 1uLL);
}

void sub_1D5783238(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mediaplatform::DatabaseTableBase *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void *mlcore::ModelProperty<long long>::insertIntoCacheFromResultList(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sqlite3_column_int64(*(*(a3 + 8) + 24), *a3 + a4);
  v8[0] = a1;
  v8[1] = v8;
  result = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::__unordered_map_hasher<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::hash<mlcore::ModelProperty<long long> *>,std::equal_to<mlcore::ModelProperty<long long> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<long long> *,std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>,std::equal_to<mlcore::ModelProperty<long long> *>,std::hash<mlcore::ModelProperty<long long> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<long long> *,long long>>>::__emplace_unique_key_args<mlcore::ModelProperty<long long> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<long long> * const&>,std::tuple<>>((a2 + 168), a1);
  result[3] = v6;
  return result;
}

void mlcore::DatabaseModelProperty<long long>::description(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 64);
  if (*(v4 + 31) >= 0)
  {
    v5 = *(v4 + 31);
  }

  else
  {
    v5 = *(v4 + 16);
  }

  v6 = &v15;
  std::string::basic_string[abi:ne200100](&v15, v5 + 1);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v15.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    v9 = *(v4 + 8);
    v8 = (v4 + 8);
    v7 = v9;
    if (v8[23] >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    memmove(v6, v10, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 46;
  if (*(a1 + 103) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    __p = *(a1 + 80);
  }

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

  v13 = std::string::append(&v15, p_p, size);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1D5783430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::DatabaseModelProperty<long long>::~DatabaseModelProperty(mlcore::ModelPropertyBase *this)
{
  *this = &unk_1F50D42A0;
  *(this + 9) = &unk_1F50D86E0;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D42A0;
  *(this + 9) = &unk_1F50D86E0;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);
}

void sub_1D57835E4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ComposerTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ComposerPropertyPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyPersistentID(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyPersistentID(void)::property;
}

void sub_1D5783904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::TypedEntityClass<mlcore::Composer>::databaseTablesToInsertInto(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::TypedEntityClass<mlcore::Composer>::databaseTablesToDeleteFrom(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t mlcore::TypedEntityClass<mlcore::Composer>::databaseTable()
{
  mediaplatform::Singleton<mlcore::ComposerTable>::sharedInstance(&v2);
  v0 = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v0;
}

void sub_1D5783BB0(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _ZNKSt3__110__function6__funcIZN6mlcore13PropertyCache24mergePropertiesFromCacheERKS3_RKNS_8functionIFbPNS2_17ModelPropertyBaseEEEEEd_UlS8_E_NS_9allocatorISD_EES9_E6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001D5B06746))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<mlcore::Composer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D0F20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::Composer>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::EntityClass::~EntityClass(mlcore::EntityClass *this)
{
  *this = &unk_1F50D7E00;
  v2 = *(this + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    do
    {
      v6 = *v5;
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  std::mutex::~mutex((this + 8));
}

void mlcore::Composer::~Composer(mlcore::Composer *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

uint64_t mlcore::QueryProperty<int>::QueryProperty(uint64_t result, void *a2)
{
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 16) = 0u;
  *result = &unk_1F50DDB28;
  v2 = a2[1];
  *(result + 64) = *a2;
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 16) = 0u;
  *result = &unk_1F50DDB28;
  v2 = a2[1];
  *(result + 64) = *a2;
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t mlcore::QueryProperty<std::string>::QueryProperty(uint64_t result, void *a2)
{
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 16) = 0u;
  *result = &unk_1F50DDBB0;
  v2 = a2[1];
  *(result + 64) = *a2;
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 16) = 0u;
  *result = &unk_1F50DDBB0;
  v2 = a2[1];
  *(result + 64) = *a2;
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t mlcore::ComposerPropertyName(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyName(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyName(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyName(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyName(void)::property;
}

void sub_1D57843F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::DatabaseModelProperty<std::string>::DatabaseModelProperty(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_1F50D4438;
  *(a1 + 64) = *a2;
  *(a1 + 72) = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v5 = *(a3 + 8);
    *(a1 + 96) = *(a3 + 24);
    *(a1 + 80) = v5;
  }

  *(a1 + 104) = *(a3 + 32);
  *(a1 + 72) = &unk_1F50D89B8;
  *(a1 + 108) = *(a3 + 36);
  if (*(a3 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), *(a3 + 40), *(a3 + 48));
  }

  else
  {
    v6 = *(a3 + 40);
    *(a1 + 128) = *(a3 + 56);
    *(a1 + 112) = v6;
  }

  *(a1 + 72) = &unk_1F50D7B20;
  return a1;
}

void sub_1D57845B8(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(v1);
  _Unwind_Resume(a1);
}

uint64_t mlcore::DatabaseModelProperty<std::string>::_SQLJoinClauses@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 96))(a2);
  if (result != *(a1 + 64))
  {
    result = *(a1 + 8);
    if (result)
    {
      v7 = (*(*result + 64))(result);
      result = (*(*a2 + 64))(a2);
      if (v7 == result)
      {
        mlcore::SQLShortColumnNameFromEntityPrimaryKey(*(a1 + 8), v8);
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D57847AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::DatabaseModelProperty<std::string>::databaseTables(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<mediaplatform::DatabaseTableBase *>::__init_with_size[abi:ne200100]<mediaplatform::DatabaseTableBase * const*,mediaplatform::DatabaseTableBase * const*>(a2, &v2, &v3, 1uLL);
}

void mlcore::DatabaseModelProperty<std::string>::description(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 64);
  if (*(v4 + 31) >= 0)
  {
    v5 = *(v4 + 31);
  }

  else
  {
    v5 = *(v4 + 16);
  }

  v6 = &v15;
  std::string::basic_string[abi:ne200100](&v15, v5 + 1);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v15.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    v9 = *(v4 + 8);
    v8 = (v4 + 8);
    v7 = v9;
    if (v8[23] >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    memmove(v6, v10, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 46;
  if (*(a1 + 103) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    __p = *(a1 + 80);
  }

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

  v13 = std::string::append(&v15, p_p, size);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1D57849CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::DatabaseModelProperty<std::string>::~DatabaseModelProperty(void **a1)
{
  *a1 = &unk_1F50D4438;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn((a1 + 9));
  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D4438;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn((a1 + 9));

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);
}

uint64_t mlcore::ComposerPropertySortName(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertySortName(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertySortName(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertySortName(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertySortName(void)::property;
}

void sub_1D5784CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ComposerPropertyHasName(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyHasName(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyHasName(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyHasName(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyHasName(void)::property;
}

void sub_1D5784F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ComposerPropertyGroupingKey(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyGroupingKey(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyGroupingKey(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyGroupingKey(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyGroupingKey(void)::property;
}

void sub_1D57851E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::DatabaseModelProperty<mediaplatform::Data>::DatabaseModelProperty(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_1F50D44C0;
  *(a1 + 64) = *a2;
  *(a1 + 72) = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v5 = *(a3 + 8);
    *(a1 + 96) = *(a3 + 24);
    *(a1 + 80) = v5;
  }

  *(a1 + 104) = *(a3 + 32);
  *(a1 + 72) = &unk_1F50D89D8;
  *(a1 + 108) = *(a3 + 36);
  mediaplatform::Data::Data((a1 + 112), *(a3 + 64), *(a3 + 48), 1);
  *(a1 + 72) = &unk_1F50D7B40;
  return a1;
}

uint64_t mlcore::DatabaseModelProperty<mediaplatform::Data>::_SQLJoinClauses@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 96))(a2);
  if (result != *(a1 + 64))
  {
    result = *(a1 + 8);
    if (result)
    {
      v7 = (*(*result + 64))(result);
      result = (*(*a2 + 64))(a2);
      if (v7 == result)
      {
        mlcore::SQLShortColumnNameFromEntityPrimaryKey(*(a1 + 8), v8);
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D5785588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::DatabaseModelProperty<mediaplatform::Data>::databaseTables(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<mediaplatform::DatabaseTableBase *>::__init_with_size[abi:ne200100]<mediaplatform::DatabaseTableBase * const*,mediaplatform::DatabaseTableBase * const*>(a2, &v2, &v3, 1uLL);
}

uint64_t mlcore::ModelProperty<mediaplatform::Data>::insertIntoCacheFromResultList(unint64_t a1, int8x8_t *a2, uint64_t a3, int a4)
{
  mediaplatform::DatabaseStatement::columnValue<mediaplatform::Data>(*(a3 + 8), *a3 + a4, v7);
  result = mlcore::PropertyCacheBase<mediaplatform::Data>::setValueForProperty(a2, v7, a1);
  v7[0] = &unk_1F50DD860;
  if (v9 == 1)
  {
    result = v8;
    if (v8)
    {
      return MEMORY[0x1DA6EDD20](v8, 0x1000C8077774924);
    }
  }

  return result;
}

void sub_1D5785728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mediaplatform::Data::~Data(va);
  _Unwind_Resume(a1);
}

void mlcore::DatabaseModelProperty<mediaplatform::Data>::description(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 64);
  if (*(v4 + 31) >= 0)
  {
    v5 = *(v4 + 31);
  }

  else
  {
    v5 = *(v4 + 16);
  }

  v6 = &v15;
  std::string::basic_string[abi:ne200100](&v15, v5 + 1);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v15.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    v9 = *(v4 + 8);
    v8 = (v4 + 8);
    v7 = v9;
    if (v8[23] >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    memmove(v6, v10, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 46;
  if (*(a1 + 103) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    __p = *(a1 + 80);
  }

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

  v13 = std::string::append(&v15, p_p, size);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1D578585C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::DatabaseModelProperty<mediaplatform::Data>::~DatabaseModelProperty(void **a1)
{
  *a1 = &unk_1F50D44C0;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn((a1 + 9));
  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D44C0;
  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn((a1 + 9));

  mlcore::ModelPropertyBase::~ModelPropertyBase(a1);
}

uint64_t mlcore::ComposerPropertyKeepLocal(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyKeepLocal(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyKeepLocal(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyKeepLocal(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyKeepLocal(void)::property;
}

void sub_1D5785BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::DatabaseModelProperty<int>::DatabaseModelProperty(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_1F50D4328;
  *(a1 + 64) = *a2;
  *(a1 + 72) = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v5 = *(a3 + 8);
    *(a1 + 96) = *(a3 + 24);
    *(a1 + 80) = v5;
  }

  *(a1 + 104) = *(a3 + 32);
  *(a1 + 72) = &unk_1F50D8978;
  *(a1 + 108) = *(a3 + 36);
  *(a1 + 72) = &unk_1F50D7AE0;
  return a1;
}

uint64_t mlcore::DatabaseModelProperty<int>::_SQLJoinClauses@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 96))(a2);
  if (result != *(a1 + 64))
  {
    result = *(a1 + 8);
    if (result)
    {
      v7 = (*(*result + 64))(result);
      result = (*(*a2 + 64))(a2);
      if (v7 == result)
      {
        mlcore::SQLShortColumnNameFromEntityPrimaryKey(*(a1 + 8), v8);
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D5785F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::DatabaseModelProperty<int>::databaseTables(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<mediaplatform::DatabaseTableBase *>::__init_with_size[abi:ne200100]<mediaplatform::DatabaseTableBase * const*,mediaplatform::DatabaseTableBase * const*>(a2, &v2, &v3, 1uLL);
}

void mlcore::DatabaseModelProperty<int>::description(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 64);
  if (*(v4 + 31) >= 0)
  {
    v5 = *(v4 + 31);
  }

  else
  {
    v5 = *(v4 + 16);
  }

  v6 = &v15;
  std::string::basic_string[abi:ne200100](&v15, v5 + 1);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v15.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    v9 = *(v4 + 8);
    v8 = (v4 + 8);
    v7 = v9;
    if (v8[23] >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    memmove(v6, v10, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 46;
  if (*(a1 + 103) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    __p = *(a1 + 80);
  }

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

  v13 = std::string::append(&v15, p_p, size);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1D578615C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::DatabaseModelProperty<int>::~DatabaseModelProperty(mlcore::ModelPropertyBase *this)
{
  *this = &unk_1F50D4328;
  *(this + 9) = &unk_1F50D86E0;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D4328;
  *(this + 9) = &unk_1F50D86E0;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);
}

uint64_t mlcore::ComposerPropertyKeepLocalStatus(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyKeepLocalStatus(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyKeepLocalStatus(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyKeepLocalStatus(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyKeepLocalStatus(void)::property;
}

void sub_1D5786500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ComposerPropertyKeepLocalStatusReason(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyKeepLocalStatusReason(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyKeepLocalStatusReason(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyKeepLocalStatusReason(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyKeepLocalStatusReason(void)::property;
}

void sub_1D578682C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ComposerPropertyKeepLocalConstraints(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyKeepLocalConstraints(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyKeepLocalConstraints(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyKeepLocalConstraints(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyKeepLocalConstraints(void)::property;
}

void sub_1D5786B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ComposerPropertyItemCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyItemCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyItemCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyItemCount(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyItemCount(void)::property;
}

void sub_1D5786E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D5787170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(mlcore::ModelPropertyBase *)>::~__value_func[abi:ne200100](va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::Item>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D11F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::TypedEntityClass<mlcore::Item>::~TypedEntityClass(mlcore::EntityClass *a1)
{
  mlcore::EntityClass::~EntityClass(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::QueryProperty<long long>::_SQLJoinClauses(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::QueryProperty<long long>::_SQLExpression(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 64);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 72))(&v6);
  std::allocate_shared[abi:ne200100]<mediaplatform::SQLSelectExpression,std::allocator<mediaplatform::SQLSelectExpression>,std::shared_ptr<mediaplatform::SQLSelectStatement>,0>();
}

void sub_1D5787338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::QueryProperty<long long>::databaseColumn()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "This property has no database column");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void mlcore::QueryProperty<long long>::databaseTables(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void mlcore::QueryProperty<long long>::description(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 40))(v2);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1D5787448(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::QueryProperty<long long>::~QueryProperty(mlcore::ModelPropertyBase *this)
{
  *this = &unk_1F50D72F0;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D72F0;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);
}

void std::__shared_ptr_emplace<mlcore::AggregateFunctionQuery>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

void std::__shared_ptr_emplace<mlcore::ComparisonPropertyPredicate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ComposerPropertyAlbumCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyAlbumCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyAlbumCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyAlbumCount(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyAlbumCount(void)::property;
}

void sub_1D5787864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ComposerPropertyLatestItemDateAdded(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ComposerPropertyLatestItemDateAdded(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ComposerPropertyLatestItemDateAdded(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ComposerPropertyLatestItemDateAdded(void)::$_0 &&>>);
  }

  return mlcore::ComposerPropertyLatestItemDateAdded(void)::property;
}

void sub_1D5787B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double mlcore::Composer::Composer(mlcore::Composer *this, uint64_t a2)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D3970;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 1065353216;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 1065353216;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 1065353216;
  *(this + 1) = &unk_1F50D7378;
  *(this + 27) = &unk_1F50D73A0;
  *(this + 28) = a2;
  *this = &unk_1F50D3970;
  return result;
}

void mlcore::Composer::name(mlcore::Composer *this@<X0>, std::string *a2@<X8>)
{
  v4 = mlcore::ComposerPropertyName(this);

  mlcore::Entity::valueForProperty<std::string>(a2, this, v4);
}

void mlcore::Entity::valueForProperty<std::string>(std::string *a1, uint64_t a2, mlcore::ModelPropertyBase *a3)
{
  if (!mlcore::PropertyCache::hasValueForProperty((a2 + 8), a3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "faulting not implemented yet");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::valueForProperty(a1, a2 + 8, a3);
}

void mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::valueForProperty(std::string *a1, uint64_t a2, unint64_t a3)
{
  v5 = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::__unordered_map_hasher<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::hash<mlcore::ModelProperty<int> *>,std::equal_to<mlcore::ModelProperty<int> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<int> *,std::__hash_value_type<mlcore::ModelProperty<int> *,int>,std::equal_to<mlcore::ModelProperty<int> *>,std::hash<mlcore::ModelProperty<int> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<int> *,int>>>::find<mlcore::ModelProperty<int> *>((a2 + 48), a3);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    (*(*a3 + 40))(&v9, a3);
    std::logic_error::logic_error(exception, &v9);
    exception->__vftable = (MEMORY[0x1E69E55B8] + 16);
    __cxa_throw(exception, off_1E84C80F0, MEMORY[0x1E69E5280]);
  }

  if (*(v5 + 47) < 0)
  {
    v6 = v5[3];
    v7 = v5[4];

    std::string::__init_copy_ctor_external(a1, v6, v7);
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *(v5 + 3);
    a1->__r_.__value_.__r.__words[2] = v5[5];
  }
}

void sub_1D5788018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void mlcore::Composer::setName(mlcore *a1, uint64_t a2)
{
  v4 = mlcore::ComposerPropertyName(a1);

  mlcore::Entity::setValueForProperty<std::string>(a1, a2, v4);
}

void mlcore::Entity::setValueForProperty<std::string>(int8x8_t *a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  mlcore::PropertyCacheBase<std::string,mediaplatform::Data>::setValueForProperty(a1 + 1, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D578810C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

mlcore::AccountTable *mlcore::AccountTable::AccountTable(mlcore::AccountTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v29, "account");
  std::string::basic_string[abi:ne200100]<0>(&v24, "dsid");
  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v24;
  }

  v27 = 1;
  v28[0] = 0;
  *&v28[4] = 0;
  v25 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v17, "apple_id");
  std::string::basic_string[abi:ne200100]<0>(v15, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v19, v17, v15);
  std::string::basic_string[abi:ne200100]<0>(v8, "alt_dsid");
  std::string::basic_string[abi:ne200100]<0>(v6, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v10, v8, v6);
  v41 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v26;
  }

  v43 = v27;
  v41 = &unk_1F50D8958;
  v44 = *v28;
  v45 = *&v28[8];
  v36 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v20;
  }

  v38 = v21;
  v36 = &unk_1F50D89B8;
  v39 = v22;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v23;
  }

  v31 = &unk_1F50D86E0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v32 = v11;
  }

  v33 = v12;
  v31 = &unk_1F50D89B8;
  v34 = v13;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = v14;
  }

  *this = &unk_1F50DD390;
  v2 = (this + 8);
  if (SHIBYTE(v30) < 0)
  {
    std::string::__init_copy_ctor_external(v2, v29, *(&v29 + 1));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = v29;
    *(this + 3) = v30;
  }

  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = &unk_1F50D8E58;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v56 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v57 = __p;
  }

  v58 = v43;
  v56 = &unk_1F50D8958;
  v59 = v44;
  v60 = v45;
  v51 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    __s = v37;
  }

  v53 = v38;
  v51 = &unk_1F50D89B8;
  v54 = v39;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v55 = v40;
  }

  v46 = &unk_1F50D86E0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v47 = v32;
  }

  v48 = v33;
  v46 = &unk_1F50D89B8;
  v49 = v34;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v50 = v35;
  }

  v66 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v67 = __s;
  }

  v68 = v53;
  v66 = &unk_1F50D89B8;
  v69 = v54;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v55;
  }

  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v62 = v47;
  }

  v63 = v48;
  v61 = &unk_1F50D89B8;
  v64 = v49;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v65 = v50;
  }

  v71 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v72, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v72 = v62;
  }

  v73 = v63;
  v71 = &unk_1F50D89B8;
  v74 = v64;
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = v65;
  }

  *(this + 10) = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 88) = v72;
  }

  *(this + 28) = v73;
  *(this + 10) = &unk_1F50D89B8;
  *(this + 116) = v74;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 5) = v75;
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v71);
  *(this + 18) = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 152), v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 152) = v67;
  }

  *(this + 44) = v68;
  *(this + 18) = &unk_1F50D89B8;
  *(this + 180) = v69;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 184), v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 184) = v70;
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v61);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v66);
  *(this + 26) = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 9, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 9) = v57;
  }

  *(this + 60) = v58;
  *(this + 26) = &unk_1F50D8958;
  *(this + 244) = v59;
  *(this + 63) = v60;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v46);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v51);
  v56 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v31);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v36);
  v41 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F50D8408;
  *(this + 32) = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 11, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 11) = v26;
  }

  *(this + 72) = v27;
  *(this + 292) = *v28;
  *(this + 75) = *&v28[8];
  *(this + 32) = &unk_1F50D7AC0;
  *(this + 38) = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 13, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 13) = v20;
  }

  *(this + 84) = v21;
  *(this + 38) = &unk_1F50D89B8;
  *(this + 340) = v22;
  v3 = (this + 344);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&v23.__r_.__value_.__l.__data_;
    *(this + 45) = *(&v23.__r_.__value_.__l + 2);
  }

  *(this + 38) = &unk_1F50D7B20;
  *(this + 46) = &unk_1F50D86E0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((this + 376), v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    *(this + 376) = v11;
  }

  *(this + 100) = v12;
  *(this + 46) = &unk_1F50D89B8;
  *(this + 404) = v13;
  v4 = (this + 408);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v4, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *&v14.__r_.__value_.__l.__data_;
    *(this + 53) = *(&v14.__r_.__value_.__l + 2);
  }

  *(this + 46) = &unk_1F50D7B20;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v10);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v19);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v25 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  *this = &unk_1F50D7960;
  return this;
}

void sub_1D5788DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  v78 = v75;
  *(v72 + 368) = v78;
  if (*(v72 + 399) < 0)
  {
    operator delete(*v77);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v76);
  *(v72 + 256) = v74;
  if (*(v72 + 287) < 0)
  {
    operator delete(*v73);
  }

  mediaplatform::DatabaseTable<long long,std::string,std::string>::~DatabaseTable(v72);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&a26);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&a46);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  a60 = a13;
  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  _Unwind_Resume(a1);
}

void sub_1D5788FBC()
{
  STACK[0x2C8] = v0;
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  JUMPOUT(0x1D5788EB8);
}

void sub_1D5788FE0()
{
  *(v1 - 216) = v0;
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  JUMPOUT(0x1D5788EC0);
}

void sub_1D5789004()
{
  STACK[0x218] = v0;
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  JUMPOUT(0x1D5788EC8);
}

void sub_1D5789028()
{
  STACK[0x258] = v0;
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  JUMPOUT(0x1D5788ED0);
}

void sub_1D578905C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D5788F0CLL);
}

void sub_1D5789080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D5788F14);
}

uint64_t mlcore::MediaColumn<std::string>::MediaColumn(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  mediaplatform::DatabaseColumnBase::DatabaseColumnBase(a1, a2, 16);
  *a1 = &unk_1F50D89B8;
  *(a1 + 36) = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  else
  {
    *(a1 + 40) = __p;
  }

  *a1 = &unk_1F50D7B20;
  return a1;
}

void sub_1D57891C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *v14 = &unk_1F50D86E0;
  if (*(v14 + 31) < 0)
  {
    operator delete(*(v14 + 8));
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_1D5789290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,std::string,std::string>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 208);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 144);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 80);
}

void sub_1D5789300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::AccountTable::~AccountTable(mlcore::AccountTable *this)
{
  mlcore::MediaTable<long long,std::string,std::string>::~MediaTable(this);

  JUMPOUT(0x1DA6EDD40);
}

void mlcore::MediaTable<long long,std::string,std::string>::~MediaTable(uint64_t a1)
{
  *a1 = &unk_1F50D8408;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 368);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 304);
  *(a1 + 256) = &unk_1F50D86E0;
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  *a1 = &unk_1F50D8E58;
  *(a1 + 208) = &unk_1F50D86E0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 144);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  mlcore::MediaTable<long long,std::string,std::string>::~MediaTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

void mediaplatform::DatabaseTable<long long,std::string,std::string>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8E58;
  *(a1 + 208) = &unk_1F50D86E0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 144);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D8E58;
  *(a1 + 208) = &unk_1F50D86E0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 144);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  *a1 = &unk_1F50D8E58;
  *(a1 + 208) = &unk_1F50D86E0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 144);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

void mlcore::AccountTable::dsidColumn(mlcore::AccountTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 287) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 33), *(this + 34));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 264);
    *(a2 + 24) = *(this + 35);
  }

  *(a2 + 32) = *(this + 72);
  *(a2 + 44) = *(this + 75);
  *(a2 + 36) = *(this + 292);
  *a2 = &unk_1F50D7AC0;
}

void mlcore::AccountTable::appleIDColumn(mlcore::AccountTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 335) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 39), *(this + 40));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 312);
    *(a2 + 24) = *(this + 41);
  }

  *(a2 + 32) = *(this + 84);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 340);
  if (*(this + 367) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 43), *(this + 44));
  }

  else
  {
    *(a2 + 40) = *(this + 344);
    *(a2 + 56) = *(this + 45);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5789820(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::AccountTable::altDSIDColumn(mlcore::AccountTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_1F50D86E0;
  v4 = (a2 + 8);
  if (*(this + 399) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(this + 47), *(this + 48));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *(this + 376);
    *(a2 + 24) = *(this + 49);
  }

  *(a2 + 32) = *(this + 100);
  *a2 = &unk_1F50D89B8;
  *(a2 + 36) = *(this + 404);
  if (*(this + 431) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 40), *(this + 51), *(this + 52));
  }

  else
  {
    *(a2 + 40) = *(this + 408);
    *(a2 + 56) = *(this + 53);
  }

  *a2 = &unk_1F50D7B20;
}

void sub_1D5789930(_Unwind_Exception *exception_object)
{
  *v1 = v3;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::Item::~Item(mlcore::Item *this)
{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D3C08;
  mlcore::PropertyCacheBase<long long,int,double,std::string,mediaplatform::Data>::~PropertyCacheBase(this + 1);
}

uint64_t mlcore::ItemPropertyPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyPersistentID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyPersistentID(void)::property;
}

void sub_1D5789C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::ItemTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore9ItemTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ItemTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ItemTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D5789E24(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ItemTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D0E78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ItemPropertyTitle(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyTitle(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyTitle(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyTitle(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyTitle(void)::property;
}

void sub_1D578A10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::ItemExtraTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore14ItemExtraTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ItemExtraTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ItemExtraTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D578A2B4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ItemExtraTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ItemPropertySortTitle(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySortTitle(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySortTitle(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySortTitle(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySortTitle(void)::property;
}

void sub_1D578A59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyComment(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyComment(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyComment(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyComment(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyComment(void)::property;
}

void sub_1D578A87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDescription(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDescription(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDescription(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDescription(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDescription(void)::property;
}

void sub_1D578AB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyLongDescription(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyLongDescription(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyLongDescription(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyLongDescription(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyLongDescription(void)::property;
}

void sub_1D578AE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyLyrics(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyLyrics(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyLyrics(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyLyrics(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyLyrics(void)::property;
}

void sub_1D578B11C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::LyricsTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore11LyricsTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::LyricsTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::LyricsTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D578B2C4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::LyricsTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D2180;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ItemPropertyStoreLyricsAvailable(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreLyricsAvailable(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreLyricsAvailable(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreLyricsAvailable(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreLyricsAvailable(void)::property;
}

void sub_1D578B5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyTimeSyncedLyricsAvailable(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyTimeSyncedLyricsAvailable(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyTimeSyncedLyricsAvailable(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyTimeSyncedLyricsAvailable(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyTimeSyncedLyricsAvailable(void)::property;
}

void sub_1D578B900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyLibraryLyricsAvailable(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyLibraryLyricsAvailable(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyLibraryLyricsAvailable(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyLibraryLyricsAvailable(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyLibraryLyricsAvailable(void)::property;
}

void sub_1D578BB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyCopyright(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyCopyright(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyCopyright(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyCopyright(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyCopyright(void)::property;
}

void sub_1D578BDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyCollectionDescription(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyCollectionDescription(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyCollectionDescription(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyCollectionDescription(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyCollectionDescription(void)::property;
}

void sub_1D578C0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyTitleOrder(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyTitleOrder(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyTitleOrder(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyTitleOrder(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyTitleOrder(void)::property;
}

void sub_1D578C3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyTitleOrderSection(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyTitleOrderSection(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyTitleOrderSection(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyTitleOrderSection(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyTitleOrderSection(void)::property;
}

void sub_1D578C6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyAlbumOrder(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyAlbumOrder(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyAlbumOrder(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyAlbumOrder(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyAlbumOrder(void)::property;
}

void sub_1D578CA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyAlbumOrderSection(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyAlbumOrderSection(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyAlbumOrderSection(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyAlbumOrderSection(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyAlbumOrderSection(void)::property;
}

void sub_1D578CD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyArtistOrder(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyArtistOrder(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyArtistOrder(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyArtistOrder(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyArtistOrder(void)::property;
}

void sub_1D578D074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyArtistOrderSection(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyArtistOrderSection(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyArtistOrderSection(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyArtistOrderSection(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyArtistOrderSection(void)::property;
}

void sub_1D578D3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHasArtist(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHasArtist(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHasArtist(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHasArtist(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHasArtist(void)::property;
}

void sub_1D578D64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyItemArtistOrder(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyItemArtistOrder(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyItemArtistOrder(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyItemArtistOrder(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyItemArtistOrder(void)::property;
}

void sub_1D578D8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyItemArtistOrderSection(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyItemArtistOrderSection(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyItemArtistOrderSection(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyItemArtistOrderSection(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyItemArtistOrderSection(void)::property;
}

void sub_1D578DC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertySeriesNameOrder(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySeriesNameOrder(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySeriesNameOrder(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySeriesNameOrder(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySeriesNameOrder(void)::property;
}

void sub_1D578DF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertySeriesNameOrderSection(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySeriesNameOrderSection(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySeriesNameOrderSection(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySeriesNameOrderSection(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySeriesNameOrderSection(void)::property;
}

void sub_1D578E264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyComposerOrder(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyComposerOrder(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyComposerOrder(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyComposerOrder(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyComposerOrder(void)::property;
}

void sub_1D578E590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyComposerOrderSection(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyComposerOrderSection(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyComposerOrderSection(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyComposerOrderSection(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyComposerOrderSection(void)::property;
}

void sub_1D578E8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyGenreOrder(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyGenreOrder(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyGenreOrder(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyGenreOrder(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyGenreOrder(void)::property;
}

void sub_1D578EBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyGenreOrderSection(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyGenreOrderSection(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyGenreOrderSection(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyGenreOrderSection(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyGenreOrderSection(void)::property;
}

void sub_1D578EF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyInMyLibrary(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyInMyLibrary(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyInMyLibrary(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyInMyLibrary(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyInMyLibrary(void)::property;
}

void sub_1D578F240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyCloudInMyLibrary(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyCloudInMyLibrary(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyCloudInMyLibrary(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyCloudInMyLibrary(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyCloudInMyLibrary(void)::property;
}

void sub_1D578F56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::ItemStoreTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore14ItemStoreTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ItemStoreTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ItemStoreTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D578F738(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ItemStoreTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1BD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ItemPropertyFileSize(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyFileSize(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyFileSize(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyFileSize(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyFileSize(void)::property;
}

void sub_1D578FA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyTotalTime(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyTotalTime(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyTotalTime(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyTotalTime(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyTotalTime(void)::property;
}

void sub_1D578FD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::DatabaseModelProperty<double>::DatabaseModelProperty(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = &unk_1F50D43B0;
  *(a1 + 64) = *a2;
  *(a1 + 72) = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v5 = *(a3 + 8);
    *(a1 + 96) = *(a3 + 24);
    *(a1 + 80) = v5;
  }

  *(a1 + 104) = *(a3 + 32);
  *(a1 + 72) = &unk_1F50D8998;
  v6 = *(a3 + 36);
  *(a1 + 116) = *(a3 + 44);
  *(a1 + 108) = v6;
  *(a1 + 72) = &unk_1F50D7B00;
  return a1;
}

void mlcore::MediaColumn<double>::~MediaColumn(uint64_t a1)
{
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::MediaColumn<double>::~MediaColumn(uint64_t a1)
{
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mediaplatform::DatabaseColumn<double>::~DatabaseColumn(uint64_t a1)
{
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::DatabaseColumn<double>::~DatabaseColumn(uint64_t a1)
{
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t mlcore::DatabaseModelProperty<double>::_SQLJoinClauses@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 96))(a2);
  if (result != *(a1 + 64))
  {
    result = *(a1 + 8);
    if (result)
    {
      v7 = (*(*result + 64))(result);
      result = (*(*a2 + 64))(a2);
      if (v7 == result)
      {
        mlcore::SQLShortColumnNameFromEntityPrimaryKey(*(a1 + 8), v8);
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D5790290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::DatabaseModelProperty<double>::databaseTables(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<mediaplatform::DatabaseTableBase *>::__init_with_size[abi:ne200100]<mediaplatform::DatabaseTableBase * const*,mediaplatform::DatabaseTableBase * const*>(a2, &v2, &v3, 1uLL);
}

double *mlcore::ModelProperty<double>::insertIntoCacheFromResultList(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sqlite3_column_double(*(*(a3 + 8) + 24), *a3 + a4);
  v8[0] = a1;
  v8[1] = v8;
  result = std::__hash_table<std::__hash_value_type<mlcore::ModelProperty<double> *,double>,std::__unordered_map_hasher<mlcore::ModelProperty<double> *,std::__hash_value_type<mlcore::ModelProperty<double> *,double>,std::hash<mlcore::ModelProperty<double> *>,std::equal_to<mlcore::ModelProperty<double> *>,true>,std::__unordered_map_equal<mlcore::ModelProperty<double> *,std::__hash_value_type<mlcore::ModelProperty<double> *,double>,std::equal_to<mlcore::ModelProperty<double> *>,std::hash<mlcore::ModelProperty<double> *>,true>,std::allocator<std::__hash_value_type<mlcore::ModelProperty<double> *,double>>>::__emplace_unique_key_args<mlcore::ModelProperty<double> *,std::piecewise_construct_t const&,std::tuple<mlcore::ModelProperty<double> * const&>,std::tuple<>>((a2 + 88), a1);
  result[3] = v6;
  return result;
}

void mlcore::DatabaseModelProperty<double>::description(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 64);
  if (*(v4 + 31) >= 0)
  {
    v5 = *(v4 + 31);
  }

  else
  {
    v5 = *(v4 + 16);
  }

  v6 = &v15;
  std::string::basic_string[abi:ne200100](&v15, v5 + 1);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v15.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    v9 = *(v4 + 8);
    v8 = (v4 + 8);
    v7 = v9;
    if (v8[23] >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }

    memmove(v6, v10, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 46;
  if (*(a1 + 103) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    __p = *(a1 + 80);
  }

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

  v13 = std::string::append(&v15, p_p, size);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1D5790518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::DatabaseModelProperty<double>::~DatabaseModelProperty(mlcore::ModelPropertyBase *this)
{
  *this = &unk_1F50D43B0;
  *(this + 9) = &unk_1F50D86E0;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D43B0;
  *(this + 9) = &unk_1F50D86E0;
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  mlcore::ModelPropertyBase::~ModelPropertyBase(this);
}

uint64_t mlcore::ItemPropertyLocation(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyLocation(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyLocation(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyLocation(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyLocation(void)::property;
}

void sub_1D5790894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyAlbumTrackCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyAlbumTrackCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyAlbumTrackCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyAlbumTrackCount(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyAlbumTrackCount(void)::property;
}

void sub_1D5790B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDiscCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDiscCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDiscCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDiscCount(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDiscCount(void)::property;
}

void sub_1D5790EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyMediaType(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyMediaType(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyMediaType(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyMediaType(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyMediaType(void)::property;
}

void sub_1D57911F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyMediaKind(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyMediaKind(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyMediaKind(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyMediaKind(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyMediaKind(void)::property;
}

void sub_1D5791520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyKindID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyKindID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyKindID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyKindID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyKindID(void)::property;
}

void sub_1D579184C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsPreorder(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsPreorder(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsPreorder(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsPreorder(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsPreorder(void)::property;
}

void sub_1D5791B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsPodcast(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsPodcast(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsPodcast(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsPodcast(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsPodcast(void)::property;
}

void sub_1D5791E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D5791F0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsITunesU(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsITunesU(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsITunesU(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsITunesU(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsITunesU(void)::property;
}

void sub_1D5792144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsVideo(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsVideo(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsVideo(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsVideo(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsVideo(void)::property;
}

void sub_1D57923BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyBitRate(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyBitRate(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyBitRate(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyBitRate(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyBitRate(void)::property;
}

void sub_1D5792670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::ItemPlaybackTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore17ItemPlaybackTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ItemPlaybackTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ItemPlaybackTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D579283C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ItemPlaybackTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ItemPropertySampleRate(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySampleRate(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySampleRate(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySampleRate(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySampleRate(void)::property;
}

void sub_1D5792B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyAlbumPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyAlbumPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyAlbumPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyAlbumPersistentID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyAlbumPersistentID(void)::property;
}

void sub_1D5792E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyItemArtistPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyItemArtistPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyItemArtistPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyItemArtistPersistentID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyItemArtistPersistentID(void)::property;
}

void sub_1D57931A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyAlbumArtistPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyAlbumArtistPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyAlbumArtistPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyAlbumArtistPersistentID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyAlbumArtistPersistentID(void)::property;
}

void sub_1D57934D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyGenrePersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyGenrePersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyGenrePersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyGenrePersistentID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyGenrePersistentID(void)::property;
}

void sub_1D57937FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyComposerPersistentID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyComposerPersistentID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyComposerPersistentID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyComposerPersistentID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyComposerPersistentID(void)::property;
}

void sub_1D5793B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyBaseLocationID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyBaseLocationID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyBaseLocationID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyBaseLocationID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyBaseLocationID(void)::property;
}

void sub_1D5793E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyRemoteLocationID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyRemoteLocationID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyRemoteLocationID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyRemoteLocationID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyRemoteLocationID(void)::property;
}

void sub_1D5794180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyKeepLocal(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyKeepLocal(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyKeepLocal(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyKeepLocal(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyKeepLocal(void)::property;
}

void sub_1D57944AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyKeepLocalStatus(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyKeepLocalStatus(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyKeepLocalStatus(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyKeepLocalStatus(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyKeepLocalStatus(void)::property;
}

void sub_1D57947D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyKeepLocalStatusReason(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyKeepLocalStatusReason(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyKeepLocalStatusReason(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyKeepLocalStatusReason(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyKeepLocalStatusReason(void)::property;
}

void sub_1D5794B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyKeepLocalConstraints(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyKeepLocalConstraints(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyKeepLocalConstraints(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyKeepLocalConstraints(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyKeepLocalConstraints(void)::property;
}

void sub_1D5794E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsLocal(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsLocal(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsLocal(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsLocal(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsLocal(void)::property;
}

void sub_1D57950DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyChosenByAutoFill(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyChosenByAutoFill(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyChosenByAutoFill(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyChosenByAutoFill(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyChosenByAutoFill(void)::property;
}

void sub_1D5795370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::ItemStatsTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore14ItemStatsTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ItemStatsTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ItemStatsTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D579553C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ItemStatsTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1C08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ItemPropertySyncRedownloadParameters(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySyncRedownloadParameters(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySyncRedownloadParameters(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySyncRedownloadParameters(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySyncRedownloadParameters(void)::property;
}

void sub_1D5795824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDownloadSourceContainerID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDownloadSourceContainerID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDownloadSourceContainerID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDownloadSourceContainerID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDownloadSourceContainerID(void)::property;
}

void sub_1D5795B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyPurchaseHistoryID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyPurchaseHistoryID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyPurchaseHistoryID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyPurchaseHistoryID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyPurchaseHistoryID(void)::property;
}

void sub_1D5795E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertySyncID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySyncID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySyncID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySyncID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySyncID(void)::property;
}

void sub_1D5796184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertySubscriptionStoreItemID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySubscriptionStoreItemID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySubscriptionStoreItemID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySubscriptionStoreItemID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySubscriptionStoreItemID(void)::property;
}

void sub_1D57964B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyPurchaseHistoryToken(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyPurchaseHistoryToken(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyPurchaseHistoryToken(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyPurchaseHistoryToken(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyPurchaseHistoryToken(void)::property;
}

void sub_1D57967DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyPurchaseHistoryRedownloadParameters(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyPurchaseHistoryRedownloadParameters(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyPurchaseHistoryRedownloadParameters(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyPurchaseHistoryRedownloadParameters(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyPurchaseHistoryRedownloadParameters(void)::property;
}

void sub_1D5796AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsOTAPurchased(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsOTAPurchased(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsOTAPurchased(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsOTAPurchased(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsOTAPurchased(void)::property;
}

void sub_1D5796DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsSubscriptionContent(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsSubscriptionContent(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsSubscriptionContent(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsSubscriptionContent(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsSubscriptionContent(void)::property;
}

void sub_1D5797114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyNeedsRestore(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyNeedsRestore(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyNeedsRestore(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyNeedsRestore(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyNeedsRestore(void)::property;
}

void sub_1D5797440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyPlayCountUser(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyPlayCountUser(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyPlayCountUser(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyPlayCountUser(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyPlayCountUser(void)::property;
}

void sub_1D579776C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyPlayCountRecent(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyPlayCountRecent(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyPlayCountRecent(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyPlayCountRecent(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyPlayCountRecent(void)::property;
}

void sub_1D5797A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyUserRating(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyUserRating(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyUserRating(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyUserRating(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyUserRating(void)::property;
}

void sub_1D5797DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHasBeenPlayed(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHasBeenPlayed(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHasBeenPlayed(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHasBeenPlayed(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHasBeenPlayed(void)::property;
}

void sub_1D57980F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyBookmarkTime(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyBookmarkTime(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyBookmarkTime(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyBookmarkTime(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyBookmarkTime(void)::property;
}

void sub_1D579841C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDatePlayed(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDatePlayed(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDatePlayed(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDatePlayed(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDatePlayed(void)::property;
}

void sub_1D5798748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertySearchTitle(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySearchTitle(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySearchTitle(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySearchTitle(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySearchTitle(void)::property;
}

void sub_1D5798A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::ItemSearchTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore15ItemSearchTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ItemSearchTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ItemSearchTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D5798C40(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ItemSearchTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D19D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ItemPropertySearchAlbum(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySearchAlbum(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySearchAlbum(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySearchAlbum(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySearchAlbum(void)::property;
}

void sub_1D5798F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertySearchArtist(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySearchArtist(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySearchArtist(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySearchArtist(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySearchArtist(void)::property;
}

void sub_1D579927C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertySearchItemArtist(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySearchItemArtist(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySearchItemArtist(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySearchItemArtist(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySearchItemArtist(void)::property;
}

void sub_1D57995A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertySearchComposer(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySearchComposer(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySearchComposer(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySearchComposer(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySearchComposer(void)::property;
}

void sub_1D57998D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyLikedState(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyLikedState(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyLikedState(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyLikedState(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyLikedState(void)::property;
}

void sub_1D5799C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyLikedStateChangedDate(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyLikedStateChangedDate(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyLikedStateChangedDate(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyLikedStateChangedDate(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyLikedStateChangedDate(void)::property;
}

void sub_1D5799F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDateSkipped(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDateSkipped(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDateSkipped(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDateSkipped(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDateSkipped(void)::property;
}

void sub_1D579A258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHidden(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHidden(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHidden(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHidden(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHidden(void)::property;
}

void sub_1D579A584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyContentRating(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyContentRating(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyContentRating(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyContentRating(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyContentRating(void)::property;
}

void sub_1D579A8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyContentRatingLevel(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyContentRatingLevel(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyContentRatingLevel(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyContentRatingLevel(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyContentRatingLevel(void)::property;
}

void sub_1D579ABDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDownloadIdentifier(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDownloadIdentifier(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDownloadIdentifier(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDownloadIdentifier(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDownloadIdentifier(void)::property;
}

void sub_1D579AEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsExplicit(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsExplicit(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsExplicit(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsExplicit(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsExplicit(void)::property;
}

void sub_1D579B160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDiscNumber(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDiscNumber(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDiscNumber(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDiscNumber(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDiscNumber(void)::property;
}

void sub_1D579B3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyTrackNumber(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyTrackNumber(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyTrackNumber(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyTrackNumber(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyTrackNumber(void)::property;
}

void sub_1D579B720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHasTrackNumber(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHasTrackNumber(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHasTrackNumber(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHasTrackNumber(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHasTrackNumber(void)::property;
}

void sub_1D579B9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertySeasonNumber(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySeasonNumber(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySeasonNumber(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySeasonNumber(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySeasonNumber(void)::property;
}

void sub_1D579BC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *mediaplatform::Singleton<mlcore::ItemVideoTable>::sharedInstance(void *result)
{
  v1 = result;
  {
    if (result)
    {
      _ZNSt3__115allocate_sharedB8ne200100IN6mlcore14ItemVideoTableENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  v2 = mediaplatform::Singleton<mlcore::ItemVideoTable>::sharedInstance(void)::instance;
  *v1 = mediaplatform::Singleton<mlcore::ItemVideoTable>::sharedInstance(void)::instance;
  v1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D579BE2C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlcore::ItemVideoTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ItemPropertyYear(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyYear(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyYear(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyYear(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyYear(void)::property;
}

void sub_1D579C13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertySkipCountUser(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySkipCountUser(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySkipCountUser(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySkipCountUser(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySkipCountUser(void)::property;
}

void sub_1D579C468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertySkipCountRecent(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertySkipCountRecent(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertySkipCountRecent(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertySkipCountRecent(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertySkipCountRecent(void)::property;
}

void sub_1D579C794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyVolumeNormalization(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyVolumeNormalization(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyVolumeNormalization(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyVolumeNormalization(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyVolumeNormalization(void)::property;
}

void sub_1D579CAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyCategoryID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyCategoryID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyCategoryID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyCategoryID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyCategoryID(void)::property;
}

void sub_1D579CDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyBPM(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyBPM(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyBPM(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyBPM(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyBPM(void)::property;
}

void sub_1D579D118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsCompilation(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsCompilation(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsCompilation(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsCompilation(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsCompilation(void)::property;
}

void sub_1D579D444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDateReleased(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDateReleased(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDateReleased(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDateReleased(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDateReleased(void)::property;
}

void sub_1D579D770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyFeedURL(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyFeedURL(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyFeedURL(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyFeedURL(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyFeedURL(void)::property;
}

void sub_1D579DA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyRelativeVolume(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyRelativeVolume(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyRelativeVolume(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyRelativeVolume(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyRelativeVolume(void)::property;
}

void sub_1D579DD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyRememberBookmarkTime(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyRememberBookmarkTime(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyRememberBookmarkTime(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyRememberBookmarkTime(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyRememberBookmarkTime(void)::property;
}

void sub_1D579E0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyAudioTrackIndex(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyAudioTrackIndex(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyAudioTrackIndex(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyAudioTrackIndex(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyAudioTrackIndex(void)::property;
}

void sub_1D579E3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHasAlternateAudio(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHasAlternateAudio(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHasAlternateAudio(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHasAlternateAudio(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHasAlternateAudio(void)::property;
}

void sub_1D579E700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyAudioLanguage(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyAudioLanguage(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyAudioLanguage(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyAudioLanguage(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyAudioLanguage(void)::property;
}

void sub_1D579EA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyAudioTrackID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyAudioTrackID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyAudioTrackID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyAudioTrackID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyAudioTrackID(void)::property;
}

void sub_1D579ED58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyExcludeFromShuffle(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyExcludeFromShuffle(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyExcludeFromShuffle(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyExcludeFromShuffle(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyExcludeFromShuffle(void)::property;
}

void sub_1D579F084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyAudioTrackLocale(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyAudioTrackLocale(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyAudioTrackLocale(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyAudioTrackLocale(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyAudioTrackLocale(void)::property;
}

void sub_1D579F388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyShowSortType(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyShowSortType(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyShowSortType(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyShowSortType(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyShowSortType(void)::property;
}

void sub_1D579F690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyEpisodeType(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyEpisodeType(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyEpisodeType(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyEpisodeType(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyEpisodeType(void)::property;
}

void sub_1D579F9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyEpisodeTypeDisplayName(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyEpisodeTypeDisplayName(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyEpisodeTypeDisplayName(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyEpisodeTypeDisplayName(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyEpisodeTypeDisplayName(void)::property;
}

void sub_1D579FCC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyEpisodeSubSortOrder(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyEpisodeSubSortOrder(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyEpisodeSubSortOrder(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyEpisodeSubSortOrder(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyEpisodeSubSortOrder(void)::property;
}

void sub_1D579FFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStopTime(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStopTime(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStopTime(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStopTime(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStopTime(void)::property;
}

void sub_1D57A02F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStartTime(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStartTime(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStartTime(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStartTime(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStartTime(void)::property;
}

void sub_1D57A0620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyGaplessHeuristicInfo(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyGaplessHeuristicInfo(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyGaplessHeuristicInfo(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyGaplessHeuristicInfo(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyGaplessHeuristicInfo(void)::property;
}

void sub_1D57A094C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyGaplessEncodingDelay(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyGaplessEncodingDelay(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyGaplessEncodingDelay(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyGaplessEncodingDelay(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyGaplessEncodingDelay(void)::property;
}

void sub_1D57A0C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyGaplessEncodingDrain(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyGaplessEncodingDrain(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyGaplessEncodingDrain(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyGaplessEncodingDrain(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyGaplessEncodingDrain(void)::property;
}

void sub_1D57A0FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyGaplessLastFrameResync(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyGaplessLastFrameResync(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyGaplessLastFrameResync(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyGaplessLastFrameResync(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyGaplessLastFrameResync(void)::property;
}

void sub_1D57A12D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDurationInSamples(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDurationInSamples(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDurationInSamples(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDurationInSamples(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDurationInSamples(void)::property;
}

void sub_1D57A15FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyGlobalID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyGlobalID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyGlobalID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyGlobalID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyGlobalID(void)::property;
}

void sub_1D57A1928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreItemID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreItemID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreItemID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreItemID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreItemID(void)::property;
}

void sub_1D57A1C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreCloudID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreCloudID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreCloudID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreCloudID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreCloudID(void)::property;
}

void sub_1D57A1F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreCloudAlbumID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreCloudAlbumID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreCloudAlbumID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreCloudAlbumID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreCloudAlbumID(void)::property;
}

void sub_1D57A2284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreCloudUniversalLibraryID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreCloudUniversalLibraryID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreCloudUniversalLibraryID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreCloudUniversalLibraryID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreCloudUniversalLibraryID(void)::property;
}

void sub_1D57A2564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyMatchRedownloadParameters(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyMatchRedownloadParameters(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyMatchRedownloadParameters(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyMatchRedownloadParameters(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyMatchRedownloadParameters(void)::property;
}

void sub_1D57A2844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreNeedsReporting(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreNeedsReporting(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreNeedsReporting(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreNeedsReporting(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreNeedsReporting(void)::property;
}

void sub_1D57A2B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStorePlaybackEndpointType(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStorePlaybackEndpointType(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStorePlaybackEndpointType(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStorePlaybackEndpointType(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStorePlaybackEndpointType(void)::property;
}

void sub_1D57A2E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreAccountID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreAccountID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreAccountID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreAccountID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreAccountID(void)::property;
}

void sub_1D57A31A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStorefrontID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStorefrontID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStorefrontID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStorefrontID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStorefrontID(void)::property;
}

void sub_1D57A34D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsUserDisabled(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsUserDisabled(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsUserDisabled(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsUserDisabled(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsUserDisabled(void)::property;
}

void sub_1D57A37FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreCloudStatus(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreCloudStatus(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreCloudStatus(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreCloudStatus(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreCloudStatus(void)::property;
}

void sub_1D57A3B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreXID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreXID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreXID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreXID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreXID(void)::property;
}

void sub_1D57A3E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreFlavor(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreFlavor(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreFlavor(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreFlavor(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreFlavor(void)::property;
}

void sub_1D57A410C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsArtistUploadedContent(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsArtistUploadedContent(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsArtistUploadedContent(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsArtistUploadedContent(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsArtistUploadedContent(void)::property;
}

void sub_1D57A4414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsProtected(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsProtected(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsProtected(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsProtected(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsProtected(void)::property;
}

void sub_1D57A4740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreExtendedLyricsAttribute(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreExtendedLyricsAttribute(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreExtendedLyricsAttribute(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreExtendedLyricsAttribute(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreExtendedLyricsAttribute(void)::property;
}

void sub_1D57A4A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreExtendedPlaybackAttribute(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreExtendedPlaybackAttribute(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreExtendedPlaybackAttribute(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreExtendedPlaybackAttribute(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreExtendedPlaybackAttribute(void)::property;
}

void sub_1D57A4D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHasNonPurgeableAsset(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHasNonPurgeableAsset(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHasNonPurgeableAsset(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHasNonPurgeableAsset(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHasNonPurgeableAsset(void)::property;
}

void sub_1D57A5048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsPlayable(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsPlayable(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsPlayable(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsPlayable(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsPlayable(void)::property;
}

void sub_1D57A5370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsStoreRedownloadable(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsStoreRedownloadable(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsStoreRedownloadable(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsStoreRedownloadable(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsStoreRedownloadable(void)::property;
}

void sub_1D57A5718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHasCloudSyncSource(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHasCloudSyncSource(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHasCloudSyncSource(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHasCloudSyncSource(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHasCloudSyncSource(void)::property;
}

void sub_1D57A5AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHomeSharingAssetAvailable(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHomeSharingAssetAvailable(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHomeSharingAssetAvailable(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHomeSharingAssetAvailable(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHomeSharingAssetAvailable(void)::property;
}

void sub_1D57A5D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHasStreamingAsset(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHasStreamingAsset(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHasStreamingAsset(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHasStreamingAsset(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHasStreamingAsset(void)::property;
}

void sub_1D57A6088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHasLoFiStreamingAsset(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHasLoFiStreamingAsset(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHasLoFiStreamingAsset(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHasLoFiStreamingAsset(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHasLoFiStreamingAsset(void)::property;
}

void sub_1D57A62F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHasHiFiStreamingAsset(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHasHiFiStreamingAsset(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHasHiFiStreamingAsset(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHasHiFiStreamingAsset(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHasHiFiStreamingAsset(void)::property;
}

void sub_1D57A6504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHasCloudLibraryID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHasCloudLibraryID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHasCloudLibraryID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHasCloudLibraryID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHasCloudLibraryID(void)::property;
}

void sub_1D57A6718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyEpisodeID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyEpisodeID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyEpisodeID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyEpisodeID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyEpisodeID(void)::property;
}

void sub_1D57A6984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyEpisodeSortID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyEpisodeSortID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyEpisodeSortID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyEpisodeSortID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyEpisodeSortID(void)::property;
}

void sub_1D57A6C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDateAdded(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDateAdded(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDateAdded(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDateAdded(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDateAdded(void)::property;
}

void sub_1D57A6FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDateModified(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDateModified(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDateModified(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDateModified(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDateModified(void)::property;
}

void sub_1D57A72E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyDateDownloaded(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyDateDownloaded(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyDateDownloaded(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyDateDownloaded(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyDateDownloaded(void)::property;
}

void sub_1D57A7610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyEQPreset(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyEQPreset(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyEQPreset(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyEQPreset(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyEQPreset(void)::property;
}

void sub_1D57A7914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyGrouping(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyGrouping(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyGrouping(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyGrouping(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyGrouping(void)::property;
}

void sub_1D57A7BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStoreID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStoreID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStoreID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStoreID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStoreID(void)::property;
}

void sub_1D57A7EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyCloudAssetAvailable(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyCloudAssetAvailable(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyCloudAssetAvailable(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyCloudAssetAvailable(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyCloudAssetAvailable(void)::property;
}

void sub_1D57A8228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyStorePlaylistID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyStorePlaylistID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyStorePlaylistID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyStorePlaylistID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyStorePlaylistID(void)::property;
}

void sub_1D57A8554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHomeSharingID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHomeSharingID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHomeSharingID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHomeSharingID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHomeSharingID(void)::property;
}

void sub_1D57A8880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyPodcastExternalGUID(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyPodcastExternalGUID(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyPodcastExternalGUID(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyPodcastExternalGUID(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyPodcastExternalGUID(void)::property;
}

void sub_1D57A8B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHasAvailableArtwork(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHasAvailableArtwork(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHasAvailableArtwork(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHasAvailableArtwork(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHasAvailableArtwork(void)::property;
}

void sub_1D57A8E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlcore::ItemPropertyAvailableArtworkToken(mlcore *this)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = mlcore::ItemPropertyPersistentID(this);
  v2 = mlcore::BestArtworkTokenPropertyAvailableArtworkToken(v1);
  mlcore::BestArtworkTokenPropertyEntityType(v2);
  operator new();
}

void sub_1D57A90A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void **a14, char a15)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a14 = &a9;
  std::vector<std::shared_ptr<mediaplatform::SQLJoinClause const>>::__destroy_vector::operator()[abi:ne200100](&a14);
  v16 = 40;
  while (1)
  {
    v17 = *(&a15 + v16);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    v16 -= 16;
    if (v16 == -8)
    {
      _Unwind_Resume(a1);
    }
  }
}

void std::__shared_ptr_emplace<mlcore::NullPredicate<std::string>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F50D1CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mlcore::ItemPropertyShowComposerAsArtist(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyShowComposerAsArtist(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyShowComposerAsArtist(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyShowComposerAsArtist(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyShowComposerAsArtist(void)::property;
}

void sub_1D57A94D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyIsMusicShow(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyIsMusicShow(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyIsMusicShow(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyIsMusicShow(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyIsMusicShow(void)::property;
}

void sub_1D57A97FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyClassicalWork(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyClassicalWork(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyClassicalWork(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyClassicalWork(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyClassicalWork(void)::property;
}

void sub_1D57A9B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyClassicalMovement(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyClassicalMovement(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyClassicalMovement(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyClassicalMovement(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyClassicalMovement(void)::property;
}

void sub_1D57A9DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyClassicalMovementCount(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyClassicalMovementCount(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyClassicalMovementCount(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyClassicalMovementCount(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyClassicalMovementCount(void)::property;
}

void sub_1D57AA0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyClassicalMovementNumber(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyClassicalMovementNumber(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyClassicalMovementNumber(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyClassicalMovementNumber(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyClassicalMovementNumber(void)::property;
}

void sub_1D57AA414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyCloudKVSKey(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyCloudKVSKey(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyCloudKVSKey(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyCloudKVSKey(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyCloudKVSKey(void)::property;
}

void sub_1D57AA718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHLSAudioCapability(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHLSAudioCapability(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHLSAudioCapability(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHLSAudioCapability(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHLSAudioCapability(void)::property;
}

void sub_1D57AAA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlcore::ItemPropertyHLSAssetTraits(mlcore *this)
{
  if (atomic_load_explicit(&mlcore::ItemPropertyHLSAssetTraits(void)::once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&mlcore::ItemPropertyHLSAssetTraits(void)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<mlcore::ItemPropertyHLSAssetTraits(void)::$_0 &&>>);
  }

  return mlcore::ItemPropertyHLSAssetTraits(void)::property;
}

void sub_1D57AAD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}