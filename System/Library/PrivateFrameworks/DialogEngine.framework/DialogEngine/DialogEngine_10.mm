void siri::dialogengine::GetVisualElementId(std::string *this, const google::protobuf::Message *a2)
{
  siri::dialogengine::GetStoredItems(&v12, a2);
  v3 = v12;
  if (v12 == v13)
  {
LABEL_9:
    std::string::basic_string[abi:ne200100]<0>(this, "");
  }

  else
  {
    while (1)
    {
      v8 = *(v3 + 8);
      siri::dialogengine::CatBinary::vcat_item::vcat_item(v9, (v3 + 5));
      if (v11 == 5)
      {
        break;
      }

      siri::dialogengine::CatBinary::vcat_item::~vcat_item(v9);
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
      if (v5 == v13)
      {
        goto LABEL_9;
      }
    }

    if (*(v10 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *v10, *(v10 + 1));
    }

    else
    {
      v7 = *v10;
      this->__r_.__value_.__r.__words[2] = *(v10 + 2);
      *&this->__r_.__value_.__l.__data_ = v7;
    }

    siri::dialogengine::CatBinary::vcat_item::~vcat_item(v9);
  }

  std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(v13[0]);
}

void sub_1BFBF90F8(_Unwind_Exception *a1)
{
  siri::dialogengine::CatBinary::vcat_item::~vcat_item((v1 + 8));
  std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(*(v2 - 48));
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(uint64_t a1, const void **a2)
{
  result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::GenericDocument(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1024;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  operator new();
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ParseStream<0u,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v19 = a1;
  v20 = v4;
  v21 = 0u;
  v22 = 0u;
  v23 = 256;
  v25 = 2;
  LODWORD(v24) = 0;
  *(&v24 + 1) = 0;
  for (i = *a2; ; ++i)
  {
    v6 = *i;
    v7 = v6 > 0x20;
    v8 = (1 << v6) & 0x100002600;
    if (v7 || v8 == 0)
    {
      break;
    }
  }

  *a2 = i;
  if (!*i)
  {
    v17 = 1;
LABEL_23:
    v18 = &i[-*(a2 + 8)];
    LODWORD(v24) = v17;
    *(&v24 + 1) = v18;
    goto LABEL_16;
  }

  rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(&v20, a2, a1);
  if (!v24)
  {
    for (i = *a2; ; ++i)
    {
      v10 = *i;
      v7 = v10 > 0x20;
      v11 = (1 << v10) & 0x100002600;
      if (v7 || v11 == 0)
      {
        break;
      }
    }

    *a2 = i;
    if (*i)
    {
      v17 = 2;
      goto LABEL_23;
    }
  }

LABEL_16:
  *&v22 = *(&v21 + 1);
  v13 = v24;
  *(a1 + 88) = v24;
  if (!v13)
  {
    v14 = *(a1 + 64);
    if (v14 - *(a1 + 56) != 24)
    {
      __assert_rtn("ParseStream", "document.h", 2259, "stack_.GetSize() == sizeof(ValueType)");
    }

    *(a1 + 64) = v14 - 24;
    if (v14 - 24 != a1)
    {
      v15 = *(v14 - 24);
      *(a1 + 16) = *(v14 - 8);
      *a1 = v15;
      *(v14 - 2) = 0;
    }
  }

  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ClearStackOnExit::~ClearStackOnExit(&v19);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(&v20);
  return a1;
}

void sub_1BFBF941C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a13 = a12;
  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ClearStackOnExit::~ClearStackOnExit(&a9);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(&a10);
  _Unwind_Resume(a1);
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(void *a1)
{
  v3 = a1 + 3;
  result = a1[3];
  if (v3[1] - result > 23)
  {
    if (result)
    {
      goto LABEL_3;
    }

LABEL_6:
    __assert_rtn("PushUnsafe", "stack.h", 130, "stackTop_");
  }

  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1);
  result = a1[3];
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a1[4] - result <= 23)
  {
    __assert_rtn("PushUnsafe", "stack.h", 131, "static_cast<std::ptrdiff_t>(sizeof(T) * count) <= (stackEnd_ - stackTop_)");
  }

  a1[3] = result + 24;
  return result;
}

void rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, unsigned __int8 **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 > 0x6D)
  {
    if (v7 != 123)
    {
      if (v7 == 116)
      {
        v8 = v6 + 1;
        *a2 = v6 + 1;
        if (v6[1] == 114)
        {
          v8 = v6 + 2;
          *a2 = v6 + 2;
          if (v6[2] == 117)
          {
            v8 = v6 + 3;
            *a2 = v6 + 3;
            if (v6[3] == 101)
            {
              *a2 = v6 + 4;
              v9 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40));
              *(v9 + 8) = 0;
              *(v9 + 16) = 0;
              *v9 = 0;
              v10 = 10;
              goto LABEL_55;
            }
          }
        }

        if (*(a1 + 48))
        {
          __assert_rtn("ParseTrue", "reader.h", 876, "!HasParseError()");
        }

        goto LABEL_144;
      }

      if (v7 == 110)
      {
        v8 = v6 + 1;
        *a2 = v6 + 1;
        if (v6[1] == 117)
        {
          v8 = v6 + 2;
          *a2 = v6 + 2;
          if (v6[2] == 108)
          {
            v8 = v6 + 3;
            *a2 = v6 + 3;
            if (v6[3] == 108)
            {
              *a2 = v6 + 4;
              v11 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40));
              v11[1] = 0;
              v11[2] = 0;
              *v11 = 0;
              return;
            }
          }
        }

        if (*(a1 + 48))
        {
          __assert_rtn("ParseNull", "reader.h", 863, "!HasParseError()");
        }

LABEL_144:
        v64 = v8 - a2[1];
        v65 = 3;
LABEL_145:
        *(a1 + 48) = v65;
        *(a1 + 56) = v64;
        return;
      }

LABEL_32:
      v20 = a2[1];
      if (v7 == 45)
      {
        v22 = v6 + 1;
        v21 = v6[1];
      }

      else
      {
        v21 = **a2;
        v22 = *a2;
      }

      v23 = v21 - 48;
      if (v21 == 48)
      {
        v40 = 0;
        v42 = 0;
        v28 = 0;
        v43 = 0;
        v27 = 0.0;
        v66 = *++v22;
        v24 = v66;
        goto LABEL_88;
      }

      if ((v21 - 49) > 8)
      {
        if (*(a1 + 48))
        {
          __assert_rtn("ParseNumber", "reader.h", 1532, "!HasParseError()");
        }

        v46 = (v22 - v20);
        v60 = 3;
        goto LABEL_131;
      }

      v25 = *++v22;
      v24 = v25;
      v26 = v25 - 48;
      v27 = 0.0;
      if (v7 == 45)
      {
        if (v26 <= 9)
        {
          v28 = 0;
          v29 = 214748364;
          while (1)
          {
            if (v23 > 0xCCCCCCB)
            {
              if (v23 != 214748364)
              {
                goto LABEL_138;
              }

              if (v24 > 0x38)
              {
                break;
              }
            }

            v30 = *++v22;
            v23 = v24 + 10 * v23 - 48;
            ++v28;
            v24 = v30;
            if (v30 - 48 >= 0xA)
            {
              goto LABEL_76;
            }
          }

          v24 = 57;
LABEL_69:
          v40 = v29;
          if (v7 == 45)
          {
            while (v40 <= 0xCCCCCCCCCCCCCCBLL || v40 == 0xCCCCCCCCCCCCCCCLL && v24 <= 0x38)
            {
              v41 = *++v22;
              v40 = (v24 & 0xF) + 10 * v40;
              ++v28;
              v24 = v41;
              if (v41 - 48 >= 0xA)
              {
                goto LABEL_86;
              }
            }
          }

          else
          {
            while (v40 <= 0x1999999999999998 || v40 == 0x1999999999999999 && v24 <= 0x35)
            {
              v44 = *++v22;
              v40 = (v24 & 0xF) + 10 * v40;
              ++v28;
              v24 = v44;
              if (v44 - 48 >= 0xA)
              {
LABEL_86:
                v42 = 0;
                v27 = 0.0;
                goto LABEL_87;
              }
            }
          }

          v27 = v40;
          do
          {
            v45 = *++v22;
            v27 = (v24 - 48) + v27 * 10.0;
            v24 = v45;
          }

          while (v45 - 48 < 0xA);
          v42 = 1;
LABEL_87:
          v43 = 1;
          v23 = v29;
LABEL_88:
          v46 = (v6 - v20);
          if (v24 == 46)
          {
            v47 = *++v22;
            v24 = v47;
            if (v47 - 58 <= 0xFFFFFFF5)
            {
              if (*(a1 + 48))
              {
                __assert_rtn("ParseNumber", "reader.h", 1575, "!HasParseError()");
              }

              v46 = (v22 - v20);
              v60 = 14;
              goto LABEL_131;
            }

            v48 = 0;
            if (v42)
            {
              goto LABEL_100;
            }

            if (!v43)
            {
              v40 = v23;
            }

            while (v24 <= 0x39 && !(v40 >> 53))
            {
              v50 = *++v22;
              v49 = v50;
              v40 = v24 - 48 + 10 * v40;
              --v48;
              if (v40)
              {
                ++v28;
              }

              v24 = v49;
              if (v49 <= 47)
              {
                v51 = 0;
                v27 = v40;
                goto LABEL_106;
              }
            }

            v27 = v40;
LABEL_100:
            while (v24 <= 0x39)
            {
              if (v28 <= 16)
              {
                v27 = (v24 - 48) + v27 * 10.0;
                --v48;
                if (v27 > 0.0)
                {
                  ++v28;
                }
              }

              v52 = *++v22;
              v24 = v52;
              if (v52 <= 47)
              {
                goto LABEL_105;
              }
            }

            v42 = 1;
          }

          else
          {
            v48 = 0;
          }

          if (v24 != 101 && v24 != 69)
          {
            v104 = v23;
            v103 = v40;
            if ((v42 & 1) == 0)
            {
              if (v43)
              {
                if (v7 == 45)
                {
                  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(a3, -v40);
                  goto LABEL_136;
                }

                v61 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40));
                *(v61 + 8) = 0;
                *(v61 + 16) = 0;
                *v61 = v103;
                if (v103 < 0)
                {
                  v101 = 278;
                }

                else
                {
                  v101 = 406;
                }

                if (v103 >> 31)
                {
                  v63 = 470;
                }

                else
                {
                  v63 = 502;
                }

                if (HIDWORD(v103))
                {
                  v63 = v101;
                }
              }

              else
              {
                v61 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40));
                *(v61 + 8) = 0;
                *(v61 + 16) = 0;
                if (v7 == 45)
                {
                  *v61 = -v104;
                  v102 = -v104 < 0;
                  v63 = 182;
                }

                else
                {
                  *v61 = v104;
                  v102 = v104 < 0;
                  v63 = 470;
                }

                if (!v102)
                {
                  v63 = 502;
                }
              }

              goto LABEL_135;
            }

LABEL_105:
            v51 = 0;
LABEL_106:
            v53 = v48 + v51;
            if (v53 > -309)
            {
              if ((v53 & 0x80000000) == 0)
              {
                if (v53 >= 0x135)
                {
                  v96 = "n >= 0 && n <= 308";
                  v97 = 48;
                  v98 = "pow10.h";
                  v99 = "Pow10";
                  goto LABEL_219;
                }

                v54 = v27 * rapidjson::internal::Pow10(int)::e[v53];
                goto LABEL_128;
              }

              v55 = -v53;
            }

            else
            {
              v54 = 0.0;
              if (v53 < 0xFFFFFD98)
              {
                goto LABEL_132;
              }

              v27 = v27 / 1.0e308;
              v55 = -308 - v53;
            }

            v54 = v27 / rapidjson::internal::Pow10(int)::e[v55];
LABEL_128:
            if (v54 > 1.79769313e308)
            {
              if (!*(a1 + 48))
              {
LABEL_130:
                v60 = 13;
LABEL_131:
                *(a1 + 48) = v60;
                *(a1 + 56) = v46;
LABEL_136:
                *a2 = v22;
                a2[1] = v20;
                return;
              }

              v96 = "!HasParseError()";
              v97 = 1707;
              v98 = "reader.h";
              v99 = "ParseNumber";
LABEL_219:
              __assert_rtn(v99, v98, v97, v96);
            }

LABEL_132:
            v61 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40));
            v62 = -v54;
            if (v7 != 45)
            {
              v62 = v54;
            }

            *(v61 + 8) = 0;
            *(v61 + 16) = 0;
            *v61 = v62;
            v63 = 534;
LABEL_135:
            *(v61 + 22) = v63;
            goto LABEL_136;
          }

          v57 = v22 + 1;
          v56 = v22[1];
          if (!v43)
          {
            v40 = v23;
          }

          if (!v42)
          {
            v27 = v40;
          }

          if (v56 == 43)
          {
            v57 = v22 + 2;
            v56 = v22[2];
            if ((v56 - 48) < 0xA)
            {
              v58 = 3;
              goto LABEL_118;
            }
          }

          else if (v56 == 45)
          {
            v57 = v22 + 2;
            v93 = v22[2] - 48;
            if (v93 < 0xA)
            {
              v22 += 3;
              if (v48 >= 1)
              {
                __assert_rtn("ParseNumber", "reader.h", 1639, "expFrac <= 0");
              }

              v94 = *v22;
              if ((v94 - 48) <= 9)
              {
                while (1)
                {
                  v93 = v94 + 10 * v93 - 48;
                  if (v93 > (v48 + 2147483639) / 10)
                  {
                    break;
                  }

                  v95 = *++v22;
                  v94 = v95;
                  if ((v95 - 48) >= 0xA)
                  {
                    goto LABEL_217;
                  }
                }

                do
                {
                  v100 = *++v22;
                }

                while ((v100 - 48) < 0xA);
              }

LABEL_217:
              v51 = -v93;
              goto LABEL_106;
            }
          }

          else if ((v56 - 48) < 0xA)
          {
            v58 = 2;
LABEL_118:
            v22 += v58;
            v51 = v56 - 48;
            do
            {
              v59 = *v22;
              if ((v59 - 48) > 9)
              {
                goto LABEL_106;
              }

              ++v22;
              v51 = v59 + 10 * v51 - 48;
            }

            while (v51 <= 308 - v48);
            if (*(a1 + 48))
            {
              __assert_rtn("ParseNumber", "reader.h", 1655, "!HasParseError()");
            }

            goto LABEL_130;
          }

          v22 = v57;
          if (*(a1 + 48))
          {
            __assert_rtn("ParseNumber", "reader.h", 1660, "!HasParseError()");
          }

          v46 = (v57 - v20);
          v60 = 15;
          goto LABEL_131;
        }
      }

      else if (v26 <= 9)
      {
        v28 = 0;
        v29 = 429496729;
        while (1)
        {
          if (v23 > 0x19999998)
          {
            if (v23 != 429496729)
            {
LABEL_138:
              v29 = v23;
              goto LABEL_69;
            }

            if (v24 > 0x35)
            {
              goto LABEL_69;
            }
          }

          v39 = *++v22;
          v23 = v24 + 10 * v23 - 48;
          ++v28;
          v24 = v39;
          if (v39 - 48 >= 0xA)
          {
LABEL_76:
            v40 = 0;
            v42 = 0;
            goto LABEL_77;
          }
        }
      }

      v40 = 0;
      v42 = 0;
      v28 = 0;
LABEL_77:
      v43 = 0;
      goto LABEL_88;
    }

    *a2 = v6 + 1;
    v12 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40));
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *v12 = 0;
    *(v12 + 22) = 3;
    for (i = *a2; ; ++i)
    {
      v14 = *i;
      v102 = v14 > 0x20;
      v15 = (1 << v14) & 0x100002600;
      if (v102 || v15 == 0)
      {
        break;
      }
    }

    *a2 = i;
    if (!*(a1 + 48))
    {
      v17 = *i;
      if (v17 == 125)
      {
        *a2 = i + 1;
        v18 = a3;
        v19 = 0;
LABEL_29:

        rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(v18, v19);
      }

      else
      {
        if (v17 != 34)
        {
LABEL_183:
          v65 = 4;
LABEL_214:
          v64 = i - a2[1];
          goto LABEL_145;
        }

        v67 = 0;
        while (1)
        {
          v68.n128_f64[0] = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3);
          if (*(a1 + 48))
          {
            break;
          }

          for (i = *a2; ; ++i)
          {
            v69 = *i;
            v102 = v69 > 0x20;
            v70 = (1 << v69) & 0x100002600;
            if (v102 || v70 == 0)
            {
              break;
            }
          }

          *a2 = i;
          if (*i != 58)
          {
            v65 = 5;
            goto LABEL_214;
          }

          v72 = i + 1;
          *a2 = v72;
          while (1)
          {
            v73 = *v72;
            v102 = v73 > 0x20;
            v74 = (1 << v73) & 0x100002600;
            if (v102 || v74 == 0)
            {
              break;
            }

            ++v72;
          }

          *a2 = v72;
          rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3, v68);
          if (*(a1 + 48))
          {
            return;
          }

          for (i = *a2; ; ++i)
          {
            v76 = *i;
            v102 = v76 > 0x20;
            v77 = (1 << v76) & 0x100002600;
            if (v102 || v77 == 0)
            {
              break;
            }
          }

          *a2 = i;
          ++v67;
          v79 = *i;
          if (v79 != 44)
          {
            if (v79 == 125)
            {
              *a2 = i + 1;
              v18 = a3;
              v19 = v67;
              goto LABEL_29;
            }

            v65 = 6;
            goto LABEL_214;
          }

          *a2 = ++i;
          while (1)
          {
            v80 = *i;
            v102 = v80 > 0x20;
            v81 = (1 << v80) & 0x100002600;
            if (v102 || v81 == 0)
            {
              break;
            }

            ++i;
          }

          *a2 = i;
          if (*i != 34)
          {
            goto LABEL_183;
          }
        }
      }
    }
  }

  else
  {
    switch(v7)
    {
      case '""':

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3);
        break;
      case '[':
        *a2 = v6 + 1;
        v31 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40));
        *(v31 + 8) = 0;
        *(v31 + 16) = 0;
        *v31 = 0;
        *(v31 + 22) = 4;
        for (j = *a2; ; ++j)
        {
          v34 = *j;
          v102 = v34 > 0x20;
          v35 = (1 << v34) & 0x100002600;
          if (v102 || v35 == 0)
          {
            break;
          }
        }

        *a2 = j;
        if (!*(a1 + 48))
        {
          if (*j == 93)
          {
            *a2 = j + 1;
            v37 = a3;
            v38 = 0;
LABEL_59:

            rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(v37, v38);
          }

          else
          {
            v83 = 0;
            while (1)
            {
              rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(a1, a2, a3, v32);
              if (*(a1 + 48))
              {
                break;
              }

              for (k = *a2; ; ++k)
              {
                v85 = *k;
                v102 = v85 > 0x20;
                v86 = (1 << v85) & 0x100002600;
                if (v102 || v86 == 0)
                {
                  break;
                }
              }

              ++v83;
              *a2 = k;
              v88 = *k;
              if (v88 != 44)
              {
                if (v88 == 93)
                {
                  *a2 = k + 1;
                  v37 = a3;
                  v38 = v83;
                  goto LABEL_59;
                }

                v64 = k - a2[1];
                v65 = 7;
                goto LABEL_145;
              }

              v89 = k + 1;
              *a2 = v89;
              while (1)
              {
                v90 = *v89;
                v102 = v90 > 0x20;
                v91 = (1 << v90) & 0x100002600;
                if (v102 || v91 == 0)
                {
                  break;
                }

                ++v89;
              }

              *a2 = v89;
            }
          }
        }

        break;
      case 'f':
        v8 = v6 + 1;
        *a2 = v6 + 1;
        if (v6[1] == 97)
        {
          v8 = v6 + 2;
          *a2 = v6 + 2;
          if (v6[2] == 108)
          {
            v8 = v6 + 3;
            *a2 = v6 + 3;
            if (v6[3] == 115)
            {
              v8 = v6 + 4;
              *a2 = v6 + 4;
              if (v6[4] == 101)
              {
                *a2 = v6 + 5;
                v9 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a3 + 40));
                *(v9 + 8) = 0;
                *(v9 + 16) = 0;
                *v9 = 0;
                v10 = 9;
LABEL_55:
                *(v9 + 22) = v10;
                return;
              }
            }
          }
        }

        if (*(a1 + 48))
        {
          __assert_rtn("ParseFalse", "reader.h", 889, "!HasParseError()");
        }

        goto LABEL_144;
      default:
        goto LABEL_32;
    }
  }
}

void sub_1BFBFA1A0(_Unwind_Exception *a1)
{
  *v1 = v3;
  v1[1] = v2;
  _Unwind_Resume(a1);
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(void *a1)
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

  v3 = a1[3] - v1 + 24;
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

double rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v26 = *a2;
  v27 = a2;
  if (*v26 != 34)
  {
    __assert_rtn("ParseString", "reader.h", 961, "s.Peek() == '\\'");
  }

  v5 = (v26 + 1);
  *&v26 = v26 + 1;
  *v24 = a1;
  v25 = 0;
  while (1)
  {
    while (1)
    {
      v6 = *v5;
      if (v6 == 92)
      {
        break;
      }

      if (v6 == 34)
      {
        *&v26 = v5 + 1;
        *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*v24, 1) = 0;
        v15 = v25;
        v16 = ++v25;
        if (!*(a1 + 48))
        {
          v17 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>::Pop(*v24, v16);
          rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(a3, v17, v15);
        }

        goto LABEL_27;
      }

      if (v6 <= 0x1F)
      {
        v18 = *(a1 + 48);
        if (*v5)
        {
          if (!v18)
          {
            v19 = &v5[-*(&v26 + 1)];
            v20 = 12;
            goto LABEL_26;
          }

          v22 = 1044;
        }

        else
        {
          if (!v18)
          {
            v19 = &v5[-*(&v26 + 1)];
            v20 = 11;
            goto LABEL_26;
          }

          v22 = 1042;
        }

        goto LABEL_31;
      }

      *&v26 = ++v5;
      v7 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*v24, 1);
LABEL_7:
      *v7 = v6;
      ++v25;
    }

    v8 = v5[1];
    *&v26 = v5 + 1;
    LOBYTE(v6) = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseStringToStream<0u,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(rapidjson::GenericStringStream<rapidjson::UTF8<char>> &,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char> &)::escape[v8];
    if (v6)
    {
      v5 += 2;
      *&v26 = v5;
      v7 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(*v24, 1);
      goto LABEL_7;
    }

    if (v8 != 117)
    {
      if (!*(a1 + 48))
      {
        v20 = 10;
        v19 = &v5[-*(&v26 + 1)];
        goto LABEL_26;
      }

      v22 = 1033;
LABEL_31:
      __assert_rtn("ParseStringToStream", "reader.h", v22, "!HasParseError()");
    }

    *&v26 = v5 + 2;
    v23 = &v5[-*(&v26 + 1)];
    v9 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a1, &v26, &v5[-*(&v26 + 1)]);
    v10 = v9;
    if (*(a1 + 48))
    {
      goto LABEL_27;
    }

    if (v9 >> 10 == 54)
    {
      break;
    }

LABEL_13:
    rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(v24, v10);
    v5 = v26;
  }

  v11 = v26;
  if (*v26 == 92)
  {
    v12 = *(v26 + 1);
    *&v26 = v26 + 1;
    if (v12 == 117)
    {
      v13 = v9;
      *&v26 = v11 + 2;
      v14 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a1, &v26, v23);
      if (*(a1 + 48))
      {
        goto LABEL_27;
      }

      if ((v14 - 57344) >= 0xFFFFFC00)
      {
        v10 = v14 + (v13 << 10) - 56613888;
        goto LABEL_13;
      }
    }
  }

  v20 = 9;
  v19 = v23;
LABEL_26:
  *(a1 + 48) = v20;
  *(a1 + 56) = v19;
LABEL_27:
  result = *&v26;
  *v27 = v26;
  return result;
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(uint64_t a1, const char *a2, int a3)
{
  v6 = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>((a1 + 40));
  v7 = *(a1 + 24);
  if (!v7)
  {
    __assert_rtn("GetAllocator", "document.h", 2407, "allocator_");
  }

  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  v8 = "";
  if (a2)
  {
    v8 = a2;
  }

  v10 = v8;
  v11 = a3;
  if (!a2 && a3)
  {
    __assert_rtn("GenericStringRef", "document.h", 322, "str != 0 || len == 0u");
  }

  return rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetStringRaw(v6, &v10, v7);
}

void *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetStringRaw(_WORD *__dst, uint64_t a2, uint64_t a3)
{
  v4 = __dst;
  if (*(a2 + 8) > 0x15u)
  {
    __dst[11] = 3077;
    v5 = *(a2 + 8);
    *__dst = v5;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a3, (v5 + 1));
    v4[1] = v6;
    v4 = v6;
  }

  else
  {
    __dst[11] = 7173;
    *(__dst + 21) = 21 - *(a2 + 8);
  }

  result = memcpy(v4, *a2, *(a2 + 8));
  *(v4 + *(a2 + 8)) = 0;
  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>::Pop(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (v2 - *(a1 + 16) < a2)
  {
    __assert_rtn("Pop", "stack.h", 139, "GetSize() >= count * sizeof(T)");
  }

  v3 = v2 - a2;
  *(a1 + 24) = v3;
  return v3;
}

uint64_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *a1;
  if (!v4 || (v5 = v4[1], v6 = v5 + v3, v5 + v3 > *v4))
  {
    if (*(a1 + 8) <= v3)
    {
      v7 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (!*(a1 + 24))
    {
      operator new();
    }

    if (v7 == -24)
    {
      return 0;
    }

    v4 = malloc_type_malloc(v7 + 24, 0x49BC497DuLL);
    if (!v4)
    {
      return 0;
    }

    v5 = 0;
    *v4 = v7;
    v4[1] = 0;
    v4[2] = *a1;
    *a1 = v4;
    v6 = v3;
  }

  v8 = v4 + v5 + 24;
  v4[1] = v6;
  return v8;
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(void *a1, unsigned int a2)
{
  v2 = a1[7];
  v3 = a1[8];
  v4 = 48 * a2;
  if (v3 - v2 < v4)
  {
    __assert_rtn("Pop", "stack.h", 139, "GetSize() >= count * sizeof(T)");
  }

  v5 = (v3 - v4);
  a1[8] = v3 - v4;
  if (v3 - v4 - v2 <= 0x17)
  {
    __assert_rtn("Top", "stack.h", 146, "GetSize() >= sizeof(T)");
  }

  result = a1[3];
  if (!result)
  {
    __assert_rtn("GetAllocator", "document.h", 2407, "allocator_");
  }

  *(v5 - 1) = 3;
  if (a2)
  {
    v8 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(result, 48 * a2);
    *(v5 - 2) = v8;
    result = memcpy(v8, v5, v4);
  }

  else
  {
    *(v5 - 2) = 0;
  }

  *(v5 - 6) = a2;
  *(v5 - 5) = a2;
  return result;
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(void *a1, unsigned int a2)
{
  v2 = a1[7];
  v3 = a1[8];
  v4 = 24 * a2;
  if (v3 - v2 < v4)
  {
    __assert_rtn("Pop", "stack.h", 139, "GetSize() >= count * sizeof(T)");
  }

  v5 = (v3 - v4);
  a1[8] = v3 - v4;
  if (v3 - v4 - v2 <= 0x17)
  {
    __assert_rtn("Top", "stack.h", 146, "GetSize() >= sizeof(T)");
  }

  result = a1[3];
  if (!result)
  {
    __assert_rtn("GetAllocator", "document.h", 2407, "allocator_");
  }

  *(v5 - 1) = 4;
  if (a2)
  {
    v8 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(result, 24 * a2);
    *(v5 - 2) = v8;
    result = memcpy(v8, v5, v4);
  }

  else
  {
    *(v5 - 2) = 0;
  }

  *(v5 - 6) = a2;
  *(v5 - 5) = a2;
  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ClearStackOnExit::~ClearStackOnExit(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[8] = v3;
  free(v3);
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  return a1;
}

_BYTE *siri::dialogengine::ParseJSONString@<X0>(unsigned int *a1@<X0>, const char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (!rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(a1, a2))
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  if (v3[23] >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = *v3;
  }

  v7 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<char const>(a1, v6);
  if ((*(v7 + 22) & 0x400) == 0)
  {
    std::operator+<char>();
    v8 = std::string::append(&v12, " is not a string type");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v14 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    siri::dialogengine::Log::LogWithLevel(__p, 3u);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    return std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  String = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString(v7);

  return std::string::basic_string[abi:ne200100]<0>(a3, String);
}

void sub_1BFBFAA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember(unsigned int *a1, const char *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v6[1] = a2;
  v6[2] = 0x405000000000000;
  v6[0] = rapidjson::GenericStringRef<char>::NotNullStrLen(a2);
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(&v5, a1, v6);
  if (*(a1 + 11) != 3)
  {
    __assert_rtn("MemberEnd", "document.h", 1158, "IsObject()");
  }

  result = v5 != *(a1 + 1) + 48 * *a1;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

size_t rapidjson::GenericStringRef<char>::NotNullStrLen(const char *a1)
{
  if (!a1)
  {
    __assert_rtn("NotNullStrLen", "document.h", 334, "str != 0");
  }

  return strlen(a1);
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<char const>(unsigned int *a1, const char *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v6[1] = a2;
  v6[2] = 0x405000000000000;
  v6[0] = rapidjson::GenericStringRef<char>::NotNullStrLen(a2);
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(&v5, a1, v6);
  if (*(a1 + 11) != 3)
  {
    __assert_rtn("MemberEnd", "document.h", 1164, "IsObject()");
  }

  if (v5 == *(a1 + 1) + 48 * *a1)
  {
    __assert_rtn("operator[]", "document.h", 1133, "false");
  }

  v3 = *MEMORY[0x1E69E9840];
  return v5 + 24;
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (*(a2 + 11) != 3)
  {
    __assert_rtn("FindMember", "document.h", 1249, "IsObject()");
  }

  if ((*(a3 + 22) & 0x400) == 0)
  {
    __assert_rtn("FindMember", "document.h", 1250, "name.IsString()");
  }

  v5 = result;
  v6 = *(a2 + 1);
  while (v6 != *(a2 + 1) + 48 * *a2)
  {
    if ((*(a3 + 22) & 0x400) == 0)
    {
      __assert_rtn("StringEqual", "document.h", 2086, "IsString()");
    }

    if ((*(v6 + 22) & 0x400) == 0)
    {
      __assert_rtn("StringEqual", "document.h", 2087, "rhs.IsString()");
    }

    StringLength = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength(a3);
    result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength(v6);
    if (StringLength == result)
    {
      String = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString(a3);
      result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString(v6);
      if (String == result)
      {
        break;
      }

      result = memcmp(String, result, StringLength);
      if (!result)
      {
        break;
      }
    }

    v6 += 48;
    if (*(a2 + 11) != 3)
    {
      *v5 = v6;
      __assert_rtn("MemberEnd", "document.h", 1164, "IsObject()");
    }
  }

  *v5 = v6;
  return result;
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString(uint64_t result)
{
  if ((*(result + 22) & 0x400) == 0)
  {
    __assert_rtn("GetString", "document.h", 1767, "IsString()");
  }

  if ((*(result + 22) & 0x1000) == 0)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength(unsigned int *a1)
{
  if ((*(a1 + 11) & 0x400) == 0)
  {
    __assert_rtn("GetStringLength", "document.h", 1772, "IsString()");
  }

  if ((*(a1 + 11) & 0x1000) != 0)
  {
    return (21 - *(a1 + 21));
  }

  else
  {
    return *a1;
  }
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      while (v3 != *(v2 + 16))
      {
        v4 = v3[2];
        free(v3);
        *v2 = v4;
        v3 = v4;
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      v3[1] = 0;
    }

LABEL_7:
    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x1C68D4E80](v5, 0xC400A2AC0F1);
    }

    MEMORY[0x1C68D4E80](v2, 0x10A0C40AAA3F4FELL);
  }

  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(a1 + 40);
  return a1;
}

void std::vector<CATResult * {__strong}>::push_back[abi:ne200100](void ***a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = v4 - *a1;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * v7);
    v12 = *a2;
    *a2 = 0;
    v13 = *a1;
    v14 = a1[1];
    v15 = *a1 == v14;
    v16 = (v11 + *a1 - v14);
    *v11 = v12;
    v6 = (v11 + 1);
    if (!v15)
    {
      v17 = v13;
      v18 = v16;
      do
      {
        v19 = *v17;
        *v17++ = 0;
        *v18++ = v19;
      }

      while (v17 != v14);
      do
      {
        v20 = *v13++;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  a1[1] = v6;
}

void siri::dialogengine::PatternFile::LoadFromPath(std::string *a1@<X1>, void *a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1->__r_.__value_.__r.__words[0];
  }

  siri::dialogengine::Log::Debug("Attempting to load a pattern file from path '%s'", a1, v3);
  if (siri::dialogengine::HasPatternExtension(a1, 0))
  {
    siri::dialogengine::ParsePatternXmlFile(a1, &v8);
  }

  else
  {
    siri::dialogengine::ParsePatternBinaryFile(&v8);
  }

  size = v8.__r_.__value_.__l.__size_;
  if (v8.__r_.__value_.__r.__words[0])
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "printSupportingDialogInDisplayOnly");
    std::string::basic_string[abi:ne200100]<0>(&v9, "printSupportingDialogInDisplayModes");
    memset(&v7, 0, sizeof(v7));
    std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string> const*,std::pair<std::string,std::string> const*>(&v7, &v8, &v10, 1uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  if (size)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](size);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1BFBFBF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, std::__shared_weak_count *a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v52 - 176);
  if (a51 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>>>::destroy(*(v52 - 200));
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  _Unwind_Resume(a1);
}

uint64_t siri::dialogengine::HasPatternExtension(std::string *a1, int a2)
{
  if ((a2 & 0xFFFFFFFD) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, ".patternxml");
    if (siri::dialogengine::StringEndsWith(a1, v9))
    {
      v4 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, ".pattern.xml");
      v4 = siri::dialogengine::StringEndsWith(a1, __p);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
      if (v4)
      {
        return 1;
      }
    }

    else if (v4)
    {
      return 1;
    }
  }

  if ((a2 - 1) <= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, ".patternbin");
    if (siri::dialogengine::StringEndsWith(a1, v9))
    {
      v5 = 1;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, ".pattern.bin");
      v5 = siri::dialogengine::StringEndsWith(a1, __p);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
      if (v5)
      {
        return 1;
      }
    }

    else if (v5)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1BFBFC408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::ParsePatternBinaryFile(void *a1@<X8>)
{
  siri::dialogengine::ParseGzippedFile();
  v2 = v12;
  v3 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v2 = __p[1];
  }

  if (!v2)
  {
    *a1 = 0;
    a1[1] = 0;
    if ((v3 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  siri::dialogengine::PatternBinary::Pattern::Pattern(v9);
  if (google::protobuf::MessageLite::ParseFromString(v9, __p))
  {
    v4 = v10;
    v5 = *(v10 + 23);
    if (v5 < 0)
    {
      if (v10[1] != 5)
      {
        goto LABEL_17;
      }

      v4 = *v10;
    }

    else if (v5 != 5)
    {
      goto LABEL_17;
    }

    v6 = *v4;
    v7 = *(v4 + 4);
    if (v6 == 1347699024 && v7 == 66)
    {
      operator new();
    }
  }

LABEL_17:
  std::operator+<char>();
  siri::dialogengine::Log::LogWithLevel(&v13, 3u);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  *a1 = 0;
  a1[1] = 0;
  siri::dialogengine::PatternBinary::Pattern::~Pattern(v9);
  if ((v12 & 0x80) != 0)
  {
LABEL_20:
    operator delete(__p[0]);
  }
}

void sub_1BFBFC8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  siri::dialogengine::PatternBinary::Pattern::~Pattern(&a13);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

siri::dialogengine::PatternBinary::Pattern *siri::dialogengine::PatternBinary::Pattern::Pattern(siri::dialogengine::PatternBinary::Pattern *this)
{
  *this = &unk_1F3F13A78;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  if (atomic_load_explicit(scc_info_Pattern_PatternBinary_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Pattern_PatternBinary_2eproto);
  }

  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 14) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_1BFBFCAD4(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((v1 + 72));
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((v1 + 48));
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((v1 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

void siri::dialogengine::PatternBinary::Pattern::Clear(siri::dialogengine::PatternBinary::Pattern *this)
{
  v2 = *(this + 8);
  if ((v2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  else if (v2)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      siri::dialogengine::PatternBinary::Metadata::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 8) = 0;
  }

  v6 = *(this + 14);
  if ((v6 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v9 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v9);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  else if (v6)
  {
    v7 = (*(this + 8) + 8);
    do
    {
      v8 = *v7++;
      siri::dialogengine::PatternBinary::Setting::Clear(v8);
      --v6;
    }

    while (v6);
    *(this + 14) = 0;
  }

  v10 = *(this + 20);
  if ((v10 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v13 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v13);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  else if (v10)
  {
    v11 = (*(this + 11) + 8);
    do
    {
      v12 = *v11++;
      siri::dialogengine::PatternBinary::Group::Clear(v12);
      --v10;
    }

    while (v10);
    *(this + 20) = 0;
  }

  v14 = *(this + 4);
  if ((v14 & 0xF) != 0)
  {
    if ((v14 & 1) == 0)
    {
      if ((v14 & 2) == 0)
      {
        goto LABEL_22;
      }

LABEL_29:
      v16 = *(this + 13);
      if (*(v16 + 23) < 0)
      {
        **v16 = 0;
        *(v16 + 8) = 0;
        if ((v14 & 4) != 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        *v16 = 0;
        *(v16 + 23) = 0;
        if ((v14 & 4) != 0)
        {
          goto LABEL_33;
        }
      }

LABEL_23:
      if ((v14 & 8) == 0)
      {
        goto LABEL_40;
      }

LABEL_37:
      v18 = *(this + 15);
      if (*(v18 + 23) < 0)
      {
        **v18 = 0;
        *(v18 + 8) = 0;
      }

      else
      {
        *v18 = 0;
        *(v18 + 23) = 0;
      }

      goto LABEL_40;
    }

    v15 = *(this + 12);
    if (*(v15 + 23) < 0)
    {
      **v15 = 0;
      *(v15 + 8) = 0;
      if ((v14 & 2) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v15 = 0;
      *(v15 + 23) = 0;
      if ((v14 & 2) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if ((v14 & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_33:
    v17 = *(this + 14);
    if (*(v17 + 23) < 0)
    {
      **v17 = 0;
      *(v17 + 8) = 0;
      if ((v14 & 8) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      *v17 = 0;
      *(v17 + 23) = 0;
      if ((v14 & 8) == 0)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_37;
  }

LABEL_40:
  v20 = *(this + 8);
  v19 = this + 8;
  *(v19 + 2) = 0;
  if (v20)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v19);
  }
}

void sub_1BFBFCD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *siri::dialogengine::PatternBinary::Pattern::_InternalParse(siri::dialogengine::PatternBinary::Pattern *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v66 = a2;
  do
  {
LABEL_2:
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v66, *(a3 + 23)))
    {
      return v66;
    }

    TagFallback = (v66 + 1);
    LODWORD(v6) = *v66;
    if ((*v66 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = (v6 + (*TagFallback << 7) - 128);
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v66 + 2);
LABEL_6:
      v66 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v66, v6);
    v66 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    LODWORD(v6) = v45;
LABEL_7:
    v7 = v6 >> 3;
    if (v6 >> 3 > 3)
    {
      if (v6 >> 3 <= 6)
      {
        if (v7 != 4)
        {
          if (v7 == 5 && v6 == 42)
          {
            v8 = (TagFallback - 1);
            while (1)
            {
              v9 = (v8 + 1);
              v66 = v9;
              v10 = *(this + 5);
              if (!v10)
              {
                break;
              }

              v11 = *(this + 8);
              v12 = *v10;
              if (v11 < *v10)
              {
                *(this + 8) = v11 + 1;
                v13 = *&v10[2 * v11 + 2];
                goto LABEL_20;
              }

              if (v12 == *(this + 9))
              {
                goto LABEL_18;
              }

LABEL_19:
              *v10 = v12 + 1;
              v13 = google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::PatternBinary::Metadata>(*(this + 3));
              v14 = *(this + 8);
              v15 = *(this + 5) + 8 * v14;
              *(this + 8) = v14 + 1;
              *(v15 + 8) = v13;
              v9 = v66;
LABEL_20:
              v16 = *v9;
              if (*v9 < 0)
              {
                SizeFallback = google::protobuf::internal::ReadSizeFallback(v9, *v9);
                if (!SizeFallback)
                {
                  return 0;
                }

                v17 = SizeFallback;
                v16 = v19;
              }

              else
              {
                v17 = v9 + 1;
              }

              v20 = google::protobuf::internal::EpsCopyInputStream::PushLimit(a3, v17, v16);
              v21 = *(a3 + 22);
              v22 = __OFSUB__(v21--, 1);
              *(a3 + 22) = v21;
              if (v21 < 0 != v22)
              {
                return 0;
              }

              v23 = v20;
              v8 = siri::dialogengine::PatternBinary::Metadata::_InternalParse(v13, v17, a3);
              if (!v8)
              {
                return 0;
              }

              ++*(a3 + 22);
              if (*(a3 + 20))
              {
                return 0;
              }

              v24 = *(a3 + 7) + v23;
              *(a3 + 7) = v24;
              v25 = *(a3 + 1) + (v24 & (v24 >> 31));
              *a3 = v25;
              v66 = v8;
              if (v25 <= v8 || *v8 != 42)
              {
                goto LABEL_2;
              }
            }

            v12 = *(this + 9);
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v12 + 1);
            v10 = *(this + 5);
            v12 = *v10;
            goto LABEL_19;
          }

          goto LABEL_93;
        }

        if (v6 == 34)
        {
          *(this + 4) |= 8u;
          v27 = *(this + 15);
          if (v27 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 120, &google::protobuf::internal::fixed_address_empty_string);
          }

LABEL_90:
          v63 = google::protobuf::internal::InlineGreedyStringParser(v27, TagFallback, a3);
          goto LABEL_91;
        }

        goto LABEL_93;
      }

      if (v7 != 7)
      {
        if (v7 != 8 || v6 != 66)
        {
          goto LABEL_93;
        }

        v28 = (TagFallback - 1);
        while (1)
        {
          v29 = (v28 + 1);
          v66 = v29;
          v30 = *(this + 11);
          if (!v30)
          {
            break;
          }

          v31 = *(this + 20);
          v32 = *v30;
          if (v31 < *v30)
          {
            *(this + 20) = v31 + 1;
            v33 = *&v30[2 * v31 + 2];
            goto LABEL_50;
          }

          if (v32 == *(this + 21))
          {
            goto LABEL_48;
          }

LABEL_49:
          *v30 = v32 + 1;
          v33 = google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::PatternBinary::Group>(*(this + 9));
          v34 = *(this + 20);
          v35 = *(this + 11) + 8 * v34;
          *(this + 20) = v34 + 1;
          *(v35 + 8) = v33;
          v29 = v66;
LABEL_50:
          v36 = *v29;
          if (*v29 < 0)
          {
            v38 = google::protobuf::internal::ReadSizeFallback(v29, *v29);
            if (!v38)
            {
              return 0;
            }

            v37 = v38;
            v36 = v39;
          }

          else
          {
            v37 = v29 + 1;
          }

          v40 = google::protobuf::internal::EpsCopyInputStream::PushLimit(a3, v37, v36);
          v41 = *(a3 + 22);
          v22 = __OFSUB__(v41--, 1);
          *(a3 + 22) = v41;
          if (v41 < 0 != v22)
          {
            return 0;
          }

          v42 = v40;
          v28 = siri::dialogengine::PatternBinary::Group::_InternalParse(v33, v37, a3);
          if (!v28)
          {
            return 0;
          }

          ++*(a3 + 22);
          if (*(a3 + 20))
          {
            return 0;
          }

          v43 = *(a3 + 7) + v42;
          *(a3 + 7) = v43;
          v44 = *(a3 + 1) + (v43 & (v43 >> 31));
          *a3 = v44;
          v66 = v28;
          if (v44 <= v28 || *v28 != 66)
          {
            goto LABEL_2;
          }
        }

        v32 = *(this + 21);
LABEL_48:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v32 + 1);
        v30 = *(this + 11);
        v32 = *v30;
        goto LABEL_49;
      }

      if (v6 != 58)
      {
        goto LABEL_93;
      }

      v46 = (TagFallback - 1);
      while (1)
      {
        v47 = (v46 + 1);
        v66 = v47;
        v48 = *(this + 8);
        if (!v48)
        {
          break;
        }

        v49 = *(this + 14);
        v50 = *v48;
        if (v49 < *v48)
        {
          *(this + 14) = v49 + 1;
          v51 = *&v48[2 * v49 + 2];
          goto LABEL_77;
        }

        if (v50 == *(this + 15))
        {
          goto LABEL_75;
        }

LABEL_76:
        *v48 = v50 + 1;
        v51 = google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::PatternBinary::Setting>(*(this + 6));
        v52 = *(this + 14);
        v53 = *(this + 8) + 8 * v52;
        *(this + 14) = v52 + 1;
        *(v53 + 8) = v51;
        v47 = v66;
LABEL_77:
        v54 = *v47;
        if (*v47 < 0)
        {
          v56 = google::protobuf::internal::ReadSizeFallback(v47, *v47);
          if (!v56)
          {
            return 0;
          }

          v55 = v56;
          v54 = v57;
        }

        else
        {
          v55 = v47 + 1;
        }

        v58 = google::protobuf::internal::EpsCopyInputStream::PushLimit(a3, v55, v54);
        v59 = *(a3 + 22);
        v22 = __OFSUB__(v59--, 1);
        *(a3 + 22) = v59;
        if (v59 < 0 != v22)
        {
          return 0;
        }

        v60 = v58;
        v46 = siri::dialogengine::PatternBinary::Setting::_InternalParse(v51, v55, a3);
        if (!v46)
        {
          return 0;
        }

        ++*(a3 + 22);
        if (*(a3 + 20))
        {
          return 0;
        }

        v61 = *(a3 + 7) + v60;
        *(a3 + 7) = v61;
        v62 = *(a3 + 1) + (v61 & (v61 >> 31));
        *a3 = v62;
        v66 = v46;
        if (v62 <= v46 || *v46 != 58)
        {
          goto LABEL_2;
        }
      }

      v50 = *(this + 15);
LABEL_75:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v50 + 1);
      v48 = *(this + 8);
      v50 = *v48;
      goto LABEL_76;
    }

    if (v7 == 1)
    {
      if (v6 == 10)
      {
        *(this + 4) |= 1u;
        v27 = *(this + 12);
        if (v27 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 96, &google::protobuf::internal::fixed_address_empty_string);
        }

        goto LABEL_90;
      }
    }

    else if (v7 == 2)
    {
      if (v6 == 18)
      {
        *(this + 4) |= 2u;
        v27 = *(this + 13);
        if (v27 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 104, &google::protobuf::internal::fixed_address_empty_string);
        }

        goto LABEL_90;
      }
    }

    else if (v7 == 3 && v6 == 26)
    {
      *(this + 4) |= 4u;
      v27 = *(this + 14);
      if (v27 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 112, &google::protobuf::internal::fixed_address_empty_string);
      }

      goto LABEL_90;
    }

LABEL_93:
    if (v6)
    {
      v64 = (v6 & 7) == 4;
    }

    else
    {
      v64 = 1;
    }

    if (v64)
    {
      *(a3 + 20) = v6 - 1;
      return TagFallback;
    }

    v63 = google::protobuf::internal::UnknownFieldParse(v6, this + 1, TagFallback, a3);
LABEL_91:
    v66 = v63;
  }

  while (v63);
  return 0;
}

siri::dialogengine::PatternBinary::Group *google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::PatternBinary::Group>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::internal::arena_destruct_object<siri::dialogengine::PatternBinary::Group>);
  siri::dialogengine::PatternBinary::Group::Group(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

google::protobuf::internal *siri::dialogengine::PatternBinary::Group::_InternalParse(siri::dialogengine::PatternBinary::Group *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v15 = a2;
  while (1)
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v15, *(a3 + 23)))
    {
      return v15;
    }

    TagFallback = (v15 + 1);
    LODWORD(v6) = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = (v6 + (*TagFallback << 7) - 128);
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v15 + 2);
LABEL_6:
      v15 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, v6);
    v15 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    LODWORD(v6) = v13;
LABEL_7:
    v7 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      break;
    }

    if (v7 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_30;
      }

      *(this + 4) |= 8u;
      v9 = *(this + 6);
      if (!v9)
      {
        v9 = google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::PatternBinary::Component>(0);
        *(this + 6) = v9;
LABEL_28:
        TagFallback = v15;
      }

LABEL_29:
      v11 = google::protobuf::internal::ParseContext::ParseMessage<siri::dialogengine::PatternBinary::Component>(a3, v9, TagFallback);
      goto LABEL_35;
    }

    if (v7 != 4 || v6 != 34)
    {
      goto LABEL_30;
    }

    *(this + 4) |= 2u;
    v10 = *(this + 4);
    if (v10 == &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 32, &google::protobuf::internal::fixed_address_empty_string);
    }

LABEL_24:
    v11 = google::protobuf::internal::InlineGreedyStringParser(v10, TagFallback, a3);
LABEL_35:
    v15 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  if (v7 == 1)
  {
    if (v6 != 10)
    {
      goto LABEL_30;
    }

    *(this + 4) |= 1u;
    v10 = *(this + 3);
    if (v10 == &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 24, &google::protobuf::internal::fixed_address_empty_string);
    }

    goto LABEL_24;
  }

  if (v7 == 2 && v6 == 18)
  {
    *(this + 4) |= 4u;
    v9 = *(this + 5);
    if (!v9)
    {
      v9 = google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::PatternBinary::Component>(0);
      *(this + 5) = v9;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

LABEL_30:
  if (v6)
  {
    v12 = (v6 & 7) == 4;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v11 = google::protobuf::internal::UnknownFieldParse(v6, this + 1, TagFallback, a3);
    goto LABEL_35;
  }

  *(a3 + 20) = v6 - 1;
  return TagFallback;
}

siri::dialogengine::PatternBinary::Group *siri::dialogengine::PatternBinary::Group::Group(siri::dialogengine::PatternBinary::Group *this)
{
  *this = &unk_1F3F13CB8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Group_PatternBinary_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Group_PatternBinary_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}

siri::dialogengine::PatternBinary::Component *google::protobuf::Arena::CreateMaybeMessage<siri::dialogengine::PatternBinary::Component>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::internal::arena_destruct_object<siri::dialogengine::PatternBinary::Component>);
  siri::dialogengine::PatternBinary::Component::Component(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

siri::dialogengine::PatternBinary::Component *siri::dialogengine::PatternBinary::Component::Component(siri::dialogengine::PatternBinary::Component *this)
{
  *(this + 8) = 0u;
  *this = &unk_1F3F13C28;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Component_PatternBinary_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Component_PatternBinary_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_1BFBFD840(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ParseContext::ParseMessage<siri::dialogengine::PatternBinary::Component>(google::protobuf::internal::EpsCopyInputStream *this, siri::dialogengine::PatternBinary::Component *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = siri::dialogengine::PatternBinary::Component::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

google::protobuf::internal *siri::dialogengine::PatternBinary::Component::_InternalParse(siri::dialogengine::PatternBinary::Component *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v22 = a2;
  while ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v22, a3[11].i32[1]) & 1) == 0)
  {
    TagFallback = (v22 + 1);
    LODWORD(v6) = *v22;
    if ((*v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = (v6 + (*TagFallback << 7) - 128);
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v22 + 2);
LABEL_6:
      v22 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, v6);
    v22 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    LODWORD(v6) = v20;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v10 = TagFallback - 1;
LABEL_19:
      v11 = v10 + 1;
      v22 = (v10 + 1);
      v12 = *(this + 5);
      if (v12)
      {
        v13 = *(this + 8);
        v14 = *v12;
        if (v13 < *v12)
        {
          *(this + 8) = v13 + 1;
          AlignedAndAddCleanup = *&v12[2 * v13 + 2];
          goto LABEL_30;
        }

        if (v14 == *(this + 9))
        {
LABEL_24:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v14 + 1);
          v12 = *(this + 5);
          v14 = *v12;
        }

        *v12 = v14 + 1;
        v16 = *(this + 3);
        if (!v16)
        {
          operator new();
        }

        if (v16[14])
        {
        }

        AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
        AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
        AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
        AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
        v17 = *(this + 8);
        v18 = *(this + 5) + 8 * v17;
        *(this + 8) = v17 + 1;
        *(v18 + 8) = AlignedAndAddCleanup;
        v11 = v22;
LABEL_30:
        v10 = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v11, a3);
        v22 = v10;
        if (!v10)
        {
          return 0;
        }

        if (*a3 <= v10 || *v10 != 18)
        {
          continue;
        }

        goto LABEL_19;
      }

      v14 = *(this + 9);
      goto LABEL_24;
    }

    if (v6 >> 3 == 1 && v6 == 10)
    {
      *(this + 4) |= 1u;
      v19 = *(this + 6);
      if (v19 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 48, &google::protobuf::internal::fixed_address_empty_string);
      }

      v9 = google::protobuf::internal::InlineGreedyStringParser(v19, TagFallback, a3);
      goto LABEL_37;
    }

LABEL_12:
    if (v6)
    {
      v8 = (v6 & 7) == 4;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      a3[10].i32[0] = v6 - 1;
      return TagFallback;
    }

    v9 = google::protobuf::internal::UnknownFieldParse(v6, this + 1, TagFallback, a3);
LABEL_37:
    v22 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v22;
}

siri::dialogengine::PatternFile *siri::dialogengine::PatternFile::PatternFile(siri::dialogengine::PatternFile *this)
{
  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3F1F800;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 136, "1.0");
  *(this + 21) = 0;
  *(this + 20) = this + 168;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *(this + 23) = this + 192;
  *(this + 28) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  *(this + 26) = this + 216;
  return this;
}

void sub_1BFBFDC50(_Unwind_Exception *a1)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  siri::dialogengine::LineNumberBase::~LineNumberBase(v1);
  _Unwind_Resume(a1);
}

void siri::dialogengine::PatternGroup::SetDialogIdWithComponent(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v4 = 0;
    do
    {
      v5 = *v3++;
      if (v5 == 35)
      {
        ++v4;
      }

      --v2;
    }

    while (v2);
    if (v4 > 1)
    {
      siri::dialogengine::StringSplit(a2, "#");
    }
  }

  std::string::operator=((a1 + 88), a2);

  JUMPOUT(0x1C68D49D0);
}

void sub_1BFBFDDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a16 = v16 - 40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void siri::dialogengine::PatternGroup::SetVisualIdWithComponent(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v4 = 0;
    do
    {
      v5 = *v3++;
      if (v5 == 35)
      {
        ++v4;
      }

      --v2;
    }

    while (v2);
    if (v4 > 1)
    {
      siri::dialogengine::StringSplit(a2, "#");
    }
  }

  std::string::operator=((a1 + 112), a2);

  JUMPOUT(0x1C68D49D0);
}

void sub_1BFBFDF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a16 = v16 - 40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void siri::dialogengine::PatternFile::AddPatternGroup(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a1 + 208;
    if (*(v2 + 87) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v2 + 64), *(v2 + 72));
    }

    else
    {
      __p = *(v2 + 64);
    }

    v5 = *std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSetting>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSetting>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSetting>>>>::__find_equal<std::string>(v4, &v10, &__p.__r_.__value_.__l.__data_);
    if (!v5)
    {
      operator new();
    }

    v7 = *a2;
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(v5 + 64);
    *(v5 + 56) = v7;
    *(v5 + 64) = v6;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1BFBFE0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::PatternBinary::Pattern::~Pattern(siri::dialogengine::PatternBinary::Pattern *this)
{
  *this = &unk_1F3F13A78;
  v2 = *(this + 12);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 13);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1C68D4E80](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 14);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x1C68D4E80](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 15);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x1C68D4E80](v8, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 72));
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 48));
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

void siri::dialogengine::PatternBinary::Group::~Group(siri::dialogengine::PatternBinary::Group *this)
{
  siri::dialogengine::PatternBinary::Group::~Group(this);

  JUMPOUT(0x1C68D4E80);
}

{
  *this = &unk_1F3F13CB8;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1C68D4E80](v4, 0x1012C40EC159624);
  }

  if (this != &siri::dialogengine::PatternBinary::_Group_default_instance_)
  {
    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 6);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

void siri::dialogengine::PatternBinary::Component::~Component(siri::dialogengine::PatternBinary::Component *this)
{
  *this = &unk_1F3F13C28;
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  siri::dialogengine::PatternBinary::Component::~Component(this);

  JUMPOUT(0x1C68D4E80);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<siri::dialogengine::DatabaseField>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<siri::dialogengine::DatabaseField>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::dialogengine::DatabaseField>>(a2);
  }

  std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_1BFBFE704(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::PatternRegistry::GetSchema(uint64_t a1@<X0>, const std::string::value_type **a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a2, a2[1]);
  }

  else
  {
    v21 = *a2;
  }

  IsArrayType = siri::dialogengine::IsArrayType(&v21);
  if (IsArrayType)
  {
    siri::dialogengine::GetArrayElementType(&v21, &v20);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v21 = v20;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = &v21;
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v21.__r_.__value_.__r.__words[0];
    }

    siri::dialogengine::Log::Warn("Looking up a schema file for an array type (%s). Assuming %s instead.", v7, v8, v9);
  }

  size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  *a3 = 0;
  a3[1] = 0;
  if (size)
  {
    siri::dialogengine::GetSchemaMapRef(IsArrayType);
    siri::dialogengine::GetSchemaMutexRef(v11);
    std::mutex::lock(&siri::dialogengine::GetSchemaMutexRef(void)::schemaMutex);
    v12 = std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSchema>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSchema>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSchema>>>>::find<std::string>(&v21);
    if (v12 == &qword_1EBE027B0)
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v14 = v12[7];
      v13 = v12[8];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    *a3 = v14;
    a3[1] = v13;
    std::mutex::unlock(&siri::dialogengine::GetSchemaMutexRef(void)::schemaMutex);
    if (v14)
    {
      if (!a1)
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

    siri::dialogengine::PatternRegistry::RegisterObject(a1, &v21);
    siri::dialogengine::GetSchemaMutexRef(v15);
    std::mutex::lock(&siri::dialogengine::GetSchemaMutexRef(void)::schemaMutex);
    v16 = std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSchema>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSchema>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSchema>>>>::find<std::string>(&v21);
    if (v16 == &qword_1EBE027B0)
    {
      v14 = 0;
      v17 = 0;
    }

    else
    {
      v14 = v16[7];
      v17 = v16[8];
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }
    }

    *a3 = v14;
    a3[1] = v17;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    std::mutex::unlock(&siri::dialogengine::GetSchemaMutexRef(void)::schemaMutex);
    if (a1)
    {
LABEL_30:
      if (v14)
      {
        v18 = *(a1 + 3504);
        v19 = *(a1 + 3512);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(v14 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v20, *(v14 + 24), *(v14 + 32));
        }

        else
        {
          v20 = *(v14 + 24);
        }

        siri::dialogengine::TraceWriter::CopySchemaFile(v18, &v20.__r_.__value_.__l.__data_);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }
      }
    }
  }

LABEL_40:
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_1BFBFE964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::GetSchemaMapRef(siri::dialogengine *this)
{
  {
    qword_1EBE027B8 = 0;
    qword_1EBE027B0 = 0;
    siri::dialogengine::GetSchemaMapRef(void)::schema = &qword_1EBE027B0;
    __cxa_atexit(std::map<std::string,std::shared_ptr<siri::dialogengine::PatternSchema>>::~map[abi:ne200100], &siri::dialogengine::GetSchemaMapRef(void)::schema, &dword_1BFB68000);
  }
}

void siri::dialogengine::GetSchemaMutexRef(siri::dialogengine *this)
{
  {
    __cxa_atexit(MEMORY[0x1E69E5328], &siri::dialogengine::GetSchemaMutexRef(void)::schemaMutex, &dword_1BFB68000);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSchema>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSchema>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSchema>>>>::find<std::string>(uint64_t a1)
{
  v1 = qword_1EBE027B0;
  if (!qword_1EBE027B0)
  {
    return &qword_1EBE027B0;
  }

  v2 = *(a1 + 23);
  v3 = v2 >= 0 ? *(a1 + 23) : *(a1 + 8);
  v4 = v2 >= 0 ? a1 : *a1;
  v5 = &qword_1EBE027B0;
  do
  {
    v6 = *(v1 + 55);
    if (v6 >= 0)
    {
      v7 = *(v1 + 55);
    }

    else
    {
      v7 = *(v1 + 40);
    }

    if (v6 >= 0)
    {
      v8 = (v1 + 32);
    }

    else
    {
      v8 = *(v1 + 32);
    }

    if (v3 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    v10 = memcmp(v8, v4, v9);
    v11 = v7 < v3;
    if (v10)
    {
      v11 = v10 < 0;
    }

    v12 = !v11;
    if (v11)
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v5 = v1;
    }

    v1 = *(v1 + v13);
  }

  while (v1);
  if (v5 == &qword_1EBE027B0)
  {
    return &qword_1EBE027B0;
  }

  v14 = *(v5 + 55);
  v15 = v14 >= 0 ? *(v5 + 55) : v5[5];
  v16 = v14 >= 0 ? v5 + 4 : v5[4];
  v17 = v15 >= v3 ? v3 : v15;
  v18 = memcmp(v4, v16, v17);
  v19 = v3 < v15;
  if (v18)
  {
    v19 = v18 < 0;
  }

  if (v19)
  {
    return &qword_1EBE027B0;
  }

  return v5;
}

uint64_t siri::dialogengine::PatternSchema::GetSettings@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v2 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  v3 = *(this + 120);
  v4 = (this + 128);
  if (v3 != (this + 128))
  {
    do
    {
      v6 = a2[1];
      if (*a2 == v2)
      {
        v8 = v2;
        if (!v6)
        {
LABEL_9:
          v13 = v2;
LABEL_14:
          std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSetting>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSetting>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSetting>>>>::__construct_node<std::pair<std::string const,std::shared_ptr<siri::dialogengine::PatternSetting>> const&>();
        }
      }

      else
      {
        v7 = v2;
        if (v6)
        {
          do
          {
            v8 = v6;
            v6 = *(v6 + 8);
          }

          while (v6);
        }

        else
        {
          do
          {
            v8 = v7[2];
            v9 = *v8 == v7;
            v7 = v8;
          }

          while (v9);
        }

        this = std::less<std::string>::operator()[abi:ne200100](a2, (v8 + 32), v3 + 4);
        if (!this)
        {
          this = std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSetting>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSetting>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::PatternSetting>>>>::__find_equal<std::string>(a2, &v13, v3 + 4);
          v10 = this;
          goto LABEL_13;
        }

        if (!*v2)
        {
          goto LABEL_9;
        }
      }

      v13 = v8;
      v10 = (v8 + 8);
LABEL_13:
      if (!*v10)
      {
        goto LABEL_14;
      }

      v11 = v3[1];
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
          v12 = v3[2];
          v9 = *v12 == v3;
          v3 = v12;
        }

        while (!v9);
      }

      v3 = v12;
    }

    while (v12 != v4);
  }

  return this;
}

void VariableFromNSDictionary(void *a1, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a3;
  *a1 = 0;
  a1[1] = 0;
  if (v4)
  {
    std::allocate_shared[abi:ne200100]<siri::dialogengine::VariableObject,std::allocator<siri::dialogengine::VariableObject>,std::string const&,0>();
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1BFBFEFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void sub_1BFBFF0B8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void siri::dialogengine::GroupAll::~GroupAll(siri::dialogengine::GroupAll *this)
{
  siri::dialogengine::Group::~Group(this);

  JUMPOUT(0x1C68D4E80);
}

char *SnippetUI::ImageElement_Source::ByteSizeLong(SnippetUI::ImageElement_Source *this)
{
  v2 = 0;
  v3 = *(this + 7);
  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        v4 = SnippetUI::ImageElement_Symbol::ByteSizeLong(*(this + 2));
        break;
      case 5:
        v4 = SnippetUI::ImageElement_AppIcon::ByteSizeLong(*(this + 2));
        break;
      case 6:
        v4 = SnippetUI::ImageElement_Contact::ByteSizeLong(*(this + 2));
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(v3)
    {
      case 1:
        v4 = SnippetUI::ImageElement_Data::ByteSizeLong(*(this + 2));
        break;
      case 2:
        v4 = SnippetUI::ImageElement_Bundle::ByteSizeLong(*(this + 2));
        break;
      case 3:
        v4 = SnippetUI::ImageElement_Url::ByteSizeLong(*(this + 2));
        break;
      default:
        goto LABEL_15;
    }
  }

  v2 = &v4[((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1];
LABEL_15:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 6);
  }

  else
  {
    *(this + 6) = v2;
    return v2;
  }
}

char *SnippetUI::Color::ByteSizeLong(SnippetUI::Color *this)
{
  v2 = *(this + 7);
  if (v2 == 2)
  {
    v5 = *(this + 4);
    if (v5 < 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else if (v2 == 1)
  {
    v3 = SnippetUI::Color_HexValue::ByteSizeLong(*(this + 2));
    v4 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  else
  {
    v4 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 6);
  }

  else
  {
    *(this + 6) = v4;
    return v4;
  }
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Component>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1BFBFF4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Group>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1BFBFF5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::dialogengine::FindPatternFile(__int128 **a1)
{
  v10 = *MEMORY[0x1E69E9840];
  siri::dialogengine::GetBaseDir(a1, &__p);
  v1 = siri::dialogengine::PreferXMLFiles(&__p);
  v2 = v1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v2)
    {
LABEL_3:
      std::string::basic_string[abi:ne200100]<0>(&__p, ".patternxml");
      std::string::basic_string[abi:ne200100]<0>(v7, ".patternbin");
      std::string::basic_string[abi:ne200100]<0>(v8, ".pattern.xml");
      std::string::basic_string[abi:ne200100]<0>(v9, ".pattern.bin");
      v3 = 0;
      v4 = 0;
      v5 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v3, &__p, &v10, 4uLL);
    }
  }

  else if (v1)
  {
    goto LABEL_3;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, ".patternbin");
  std::string::basic_string[abi:ne200100]<0>(v7, ".patternxml");
  std::string::basic_string[abi:ne200100]<0>(v8, ".pattern.bin");
  std::string::basic_string[abi:ne200100]<0>(v9, ".pattern.xml");
  v3 = 0;
  v4 = 0;
  v5 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v3, &__p, &v10, 4uLL);
}

void sub_1BFBFF848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v19 = (v17 + 95);
  v20 = -96;
  v21 = (v17 + 95);
  while (1)
  {
    v22 = *v21;
    v21 -= 24;
    if (v22 < 0)
    {
      operator delete(*(v19 - 23));
    }

    v19 = v21;
    v20 += 24;
    if (!v20)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void siri::dialogengine::PatternIdToPath(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v6, "pattern");
  std::string::basic_string[abi:ne200100]<0>(&__p, ".patternfamily");
  siri::dialogengine::CatIdToPath(a2, a1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void sub_1BFBFF9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

const google::protobuf::UnknownFieldSet *SnippetUI::Color::InternalSerializeWithCachedSizesToArray(SnippetUI::Color *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 7);
  if (v6 == 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 2);
    *a2 = 10;
    v8 = *(v7 + 6);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v11 = (a2 + 2);
        do
        {
          v12 = v11;
          *v11++ = v10 | 0x80;
          v13 = v10 >> 7;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        v9 = v12 + 2;
        *v11 = v13;
      }

      else
      {
        a2[2] = v10;
        v9 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v8;
      v9 = (a2 + 2);
    }

    a2 = SnippetUI::Color_HexValue::InternalSerializeWithCachedSizesToArray(v7, v9, a3, a4);
    v6 = *(this + 7);
  }

  if (v6 == 2)
  {
    if (a2 >= *a3)
    {
      v24 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      a2 = v24;
      if (*(this + 7) != 2)
      {
        LOBYTE(v15) = 0;
        *v24 = 16;
        goto LABEL_15;
      }
    }

    v15 = *(this + 4);
    *a2 = 16;
    if (v15 <= 0x7F)
    {
LABEL_15:
      a2[1] = v15;
      a2 += 2;
      goto LABEL_21;
    }

    v16 = v15;
    a2[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v16 >> 14)
    {
      v18 = (a2 + 2);
      do
      {
        v19 = v18;
        *v18++ = v17 | 0x80;
        v20 = v17 >> 7;
        v21 = v17 >> 14;
        v17 >>= 7;
      }

      while (v21);
      a2 = (v19 + 2);
      *v18 = v20;
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
    }
  }

LABEL_21:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v22 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::TextElement>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1BFBFFCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<siri::dialogengine::VisualResponse *,std::shared_ptr<siri::dialogengine::VisualResponse>::__shared_ptr_default_delete<siri::dialogengine::VisualResponse,siri::dialogengine::VisualResponse>,std::allocator<siri::dialogengine::VisualResponse>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void siri::dialogengine::VisualResponse::~VisualResponse(siri::dialogengine::VisualResponse *this)
{
  siri::dialogengine::VisualResponse::~VisualResponse(this);

  JUMPOUT(0x1C68D4E80);
}

{
  *this = &unk_1F3F16DF0;
  *(this + 8) = &unk_1F3F16E48;
  SnippetUI::Response::~Response((this + 208));
  *this = &unk_1F3F21D30;
  *(this + 8) = &unk_1F3F21D88;
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  *(this + 8) = &unk_1F3F222B8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 10));

  siri::dialogengine::LineNumberBase::~LineNumberBase(this);
}

uint64_t SnippetUI::TextElement::clear_value(uint64_t this)
{
  v1 = this;
  v2 = *(this + 100);
  if (v2 == 2 || v2 == 1)
  {
    v3 = *(this + 88);
    if (v3 != &google::protobuf::internal::fixed_address_empty_string && v3 != 0)
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      this = MEMORY[0x1C68D4E80](v3, 0x1012C40EC159624);
    }
  }

  *(v1 + 100) = 0;
  return this;
}

uint64_t google::protobuf::internal::ArenaStringPtr::DestroyNoArena(uint64_t result)
{
  if (result != &google::protobuf::internal::fixed_address_empty_string && result != 0)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x1C68D4E80);
  }

  return result;
}

id NSErrorFromString(uint64_t *a1, uint64_t *a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v3 = a2[1];
    if (v3 == 7)
    {
      if (**a2 != 1667462515 || *(*a2 + 3) != 1936942435)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  else if (v3 == 7 && *a2 == 1667462515 && *(a2 + 3) == 1936942435)
  {
    goto LABEL_15;
  }

  if (v3)
  {
LABEL_17:
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    v18[0] = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AAE8] mainBundle];
    v12 = [v11 localizedStringForKey:v8 value:&stru_1F3F22360 table:0];
    v19[0] = v12;
    v18[1] = *MEMORY[0x1E696A588];
    v13 = [MEMORY[0x1E696AAE8] mainBundle];
    v14 = [v13 localizedStringForKey:v10 value:&stru_1F3F22360 table:0];
    v19[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.DialogEngine" code:0 userInfo:v15];

    goto LABEL_24;
  }

LABEL_15:
  v6 = 0;
LABEL_24:
  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1BFC00060(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t std::vector<siri::dialogengine::SpeakableString>::__emplace_back_slow_path<siri::dialogengine::SpeakableString>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v5 = 0x186186186186186;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<siri::dialogengine::SpeakableString>>(v5);
  }

  v12 = 0;
  v13 = 168 * v2;
  siri::dialogengine::SpeakableString::SpeakableString((168 * v2), a2);
  v14 = 168 * v2 + 168;
  v6 = *(a1 + 8);
  v7 = (168 * v2 + *a1 - v6);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<siri::dialogengine::SpeakableString>,siri::dialogengine::SpeakableString*>(*a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<siri::dialogengine::SpeakableString>::~__split_buffer(&v12);
  return v11;
}

void sub_1BFC00240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<siri::dialogengine::SpeakableString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void LogPatternExecutionResult(PatternExecutionResult *a1)
{
  v280 = *MEMORY[0x1E69E9840];
  v207 = a1;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v270);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "PatternExecutionResult...\n", 26);
  if (v207)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "\n", 1);
    v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "patternId: ", 11);
    v2 = [(PatternExecutionResult *)v207 patternId];
    p_p = &__p;
    PrintStringOrNil(&__p, v2, 1);
    if ((v269 & 0x80u) == 0)
    {
      v4 = &__p;
    }

    else
    {
      v4 = __p;
    }

    if ((v269 & 0x80u) == 0)
    {
      v5 = v269;
    }

    else
    {
      v5 = v268;
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\n", 1);
    if (v269 < 0)
    {
      operator delete(__p);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "\n", 1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "meta (count = ", 14);
    v8 = [(PatternExecutionResult *)v207 meta];
    if (v8)
    {
      p_p = [(PatternExecutionResult *)v207 meta];
      v9 = [p_p count];
    }

    else
    {
      v9 = 0;
    }

    v10 = MEMORY[0x1C68D4C40](v7, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "):\n", 3);
    if (v8)
    {
    }

    v11 = [(PatternExecutionResult *)v207 meta];
    v12 = v11 == 0;

    if (!v12)
    {
      v265 = 0u;
      v266 = 0u;
      v263 = 0u;
      v264 = 0u;
      obj = [(PatternExecutionResult *)v207 meta];
      p_p = [obj countByEnumeratingWithState:&v263 objects:v279 count:16];
      if (p_p)
      {
        v13 = *v264;
        do
        {
          for (i = 0; i != p_p; i = i + 1)
          {
            if (*v264 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v263 + 1) + 8 * i);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "    ", 4);
            PrintStringOrNil(&__p, v15, 1);
            if ((v269 & 0x80u) == 0)
            {
              v17 = &__p;
            }

            else
            {
              v17 = __p;
            }

            if ((v269 & 0x80u) == 0)
            {
              v18 = v269;
            }

            else
            {
              v18 = v268;
            }

            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
            v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " = ", 3);
            v21 = [(PatternExecutionResult *)v207 meta];
            v22 = [v21 objectForKeyedSubscript:v15];
            PrintStringOrNil(&v260, v22, 1);
            if ((v262 & 0x80u) == 0)
            {
              v23 = &v260;
            }

            else
            {
              v23 = v260;
            }

            if ((v262 & 0x80u) == 0)
            {
              v24 = v262;
            }

            else
            {
              v24 = v261;
            }

            v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v23, v24);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "\n", 1);
            if (v262 < 0)
            {
              operator delete(v260);
            }

            if (v269 < 0)
            {
              operator delete(__p);
            }
          }

          p_p = [obj countByEnumeratingWithState:&v263 objects:v279 count:16];
        }

        while (p_p);
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "\n", 1);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "dialog (count = ", 16);
    v27 = [(PatternExecutionResult *)v207 dialog];
    if (v27)
    {
      p_p = [(PatternExecutionResult *)v207 dialog];
      v28 = [p_p count];
    }

    else
    {
      v28 = 0;
    }

    v29 = MEMORY[0x1C68D4C40](v26, v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "):\n", 3);
    if (v27)
    {
    }

    v30 = [(PatternExecutionResult *)v207 dialog];
    v31 = v30 == 0;

    if (!v31)
    {
      v32 = [(PatternExecutionResult *)v207 dialog];
      v33 = [v32 count] == 0;

      if (!v33)
      {
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "    ", 4);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "----", 4);
        LOBYTE(__p) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, &__p, 1);
      }

      v258 = 0u;
      v259 = 0u;
      v256 = 0u;
      v257 = 0u;
      v204 = [(PatternExecutionResult *)v207 dialog];
      v206 = [v204 countByEnumeratingWithState:&v256 objects:v278 count:16];
      if (v206)
      {
        v205 = *v257;
        do
        {
          for (obja = 0; obja != v206; obja = obja + 1)
          {
            if (*v257 != v205)
            {
              objc_enumerationMutation(v204);
            }

            v36 = *(*(&v256 + 1) + 8 * obja);
            v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "    ", 4);
            v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "dialogId: ", 10);
            v217 = [v36 dialogId];
            PrintStringOrNil(&__p, v217, 1);
            if ((v269 & 0x80u) == 0)
            {
              v39 = &__p;
            }

            else
            {
              v39 = __p;
            }

            if ((v269 & 0x80u) == 0)
            {
              v40 = v269;
            }

            else
            {
              v40 = v268;
            }

            v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, v40);
            v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "\n", 1);
            v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "    ", 4);
            v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "groupName: ", 11);
            v216 = [v36 groupName];
            PrintStringOrNil(&v260, v216, 1);
            if ((v262 & 0x80u) == 0)
            {
              v45 = &v260;
            }

            else
            {
              v45 = v260;
            }

            if ((v262 & 0x80u) == 0)
            {
              v46 = v262;
            }

            else
            {
              v46 = v261;
            }

            v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v45, v46);
            v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "\n", 1);
            v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "    ", 4);
            v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "fullPrint: ", 11);
            v215 = [v36 fullPrint];
            PrintStringOrNil(v254, v215, 1);
            if ((v255 & 0x80u) == 0)
            {
              v51 = v254;
            }

            else
            {
              v51 = v254[0];
            }

            if ((v255 & 0x80u) == 0)
            {
              v52 = v255;
            }

            else
            {
              v52 = v254[1];
            }

            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v51, v52);
            v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "\n", 1);
            v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "    ", 4);
            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "fullSpeak: ", 11);
            v214 = [v36 fullSpeak];
            PrintStringOrNil(v252, v214, 1);
            if ((v253 & 0x80u) == 0)
            {
              v57 = v252;
            }

            else
            {
              v57 = v252[0];
            }

            if ((v253 & 0x80u) == 0)
            {
              v58 = v253;
            }

            else
            {
              v58 = v252[1];
            }

            v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v57, v58);
            v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "\n", 1);
            v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "    ", 4);
            v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "supportingPrint: ", 17);
            v213 = [v36 supportingPrint];
            PrintStringOrNil(v250, v213, 1);
            if ((v251 & 0x80u) == 0)
            {
              v63 = v250;
            }

            else
            {
              v63 = v250[0];
            }

            if ((v251 & 0x80u) == 0)
            {
              v64 = v251;
            }

            else
            {
              v64 = v250[1];
            }

            v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v63, v64);
            v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "\n", 1);
            v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "    ", 4);
            v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "supportingSpeak: ", 17);
            v212 = [v36 supportingSpeak];
            PrintStringOrNil(v248, v212, 1);
            if ((v249 & 0x80u) == 0)
            {
              v69 = v248;
            }

            else
            {
              v69 = v248[0];
            }

            if ((v249 & 0x80u) == 0)
            {
              v70 = v249;
            }

            else
            {
              v70 = v248[1];
            }

            v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v70);
            v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "\n", 1);
            v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "    ", 4);
            v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "printOnly: ", 11);
            v211 = [v36 printOnly];
            PrintBoolOrNil(&v245, v211);
            if ((v247 & 0x80u) == 0)
            {
              isa = &v245;
            }

            else
            {
              isa = v245.super.super.isa;
            }

            if ((v247 & 0x80u) == 0)
            {
              v76 = v247;
            }

            else
            {
              v76 = v246;
            }

            v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, isa, v76);
            v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "\n", 1);
            v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "    ", 4);
            v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "spokenOnly: ", 12);
            v210 = [v36 spokenOnly];
            PrintBoolOrNil(&v242, v210);
            if ((v244 & 0x80u) == 0)
            {
              v81 = &v242;
            }

            else
            {
              v81 = v242.super.super.isa;
            }

            if ((v244 & 0x80u) == 0)
            {
              v82 = v244;
            }

            else
            {
              v82 = v243;
            }

            v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, v81, v82);
            v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "\n", 1);
            v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "    ", 4);
            v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, "unfilteredFullPrint: ", 21);
            v209 = [v36 unfilteredFullPrint];
            PrintStringOrNil(v240, v209, 1);
            if ((v241 & 0x80u) == 0)
            {
              v87 = v240;
            }

            else
            {
              v87 = v240[0];
            }

            if ((v241 & 0x80u) == 0)
            {
              v88 = v241;
            }

            else
            {
              v88 = v240[1];
            }

            v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, v87, v88);
            v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "\n", 1);
            v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, "    ", 4);
            v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "unfilteredFullSpeak: ", 21);
            v208 = [v36 unfilteredFullSpeak];
            PrintStringOrNil(v238, v208, 1);
            if ((v239 & 0x80u) == 0)
            {
              v93 = v238;
            }

            else
            {
              v93 = v238[0];
            }

            if ((v239 & 0x80u) == 0)
            {
              v94 = v239;
            }

            else
            {
              v94 = v238[1];
            }

            v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, v93, v94);
            v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, "\n", 1);
            v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "    ", 4);
            v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, "unfilteredSupportingPrint: ", 27);
            v99 = [v36 unfilteredSupportingPrint];
            PrintStringOrNil(v236, v99, 1);
            if ((v237 & 0x80u) == 0)
            {
              v100 = v236;
            }

            else
            {
              v100 = v236[0];
            }

            if ((v237 & 0x80u) == 0)
            {
              v101 = v237;
            }

            else
            {
              v101 = v236[1];
            }

            v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, v100, v101);
            v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, "\n", 1);
            v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "    ", 4);
            v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "unfilteredSupportingSpeak: ", 27);
            v106 = [v36 unfilteredSupportingSpeak];
            PrintStringOrNil(v234, v106, 1);
            if ((v235 & 0x80u) == 0)
            {
              v107 = v234;
            }

            else
            {
              v107 = v234[0];
            }

            if ((v235 & 0x80u) == 0)
            {
              v108 = v235;
            }

            else
            {
              v108 = v234[1];
            }

            v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, v107, v108);
            v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v109, "\n", 1);
            v111 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, "    ", 4);
            v112 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, "redactedFullPrint: ", 19);
            v113 = [v36 redactedFullPrint];
            PrintStringOrNil(v232, v113, 1);
            if ((v233 & 0x80u) == 0)
            {
              v114 = v232;
            }

            else
            {
              v114 = v232[0];
            }

            if ((v233 & 0x80u) == 0)
            {
              v115 = v233;
            }

            else
            {
              v115 = v232[1];
            }

            v116 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v112, v114, v115);
            v117 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v116, "\n", 1);
            v118 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v117, "    ", 4);
            v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, "redactedFullSpeak: ", 19);
            v120 = [v36 redactedFullSpeak];
            PrintStringOrNil(v230, v120, 1);
            if ((v231 & 0x80u) == 0)
            {
              v121 = v230;
            }

            else
            {
              v121 = v230[0];
            }

            if ((v231 & 0x80u) == 0)
            {
              v122 = v231;
            }

            else
            {
              v122 = v230[1];
            }

            v123 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, v121, v122);
            v124 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v123, "\n", 1);
            v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v124, "    ", 4);
            v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, "redactedSupportingPrint: ", 25);
            v127 = [v36 redactedSupportingPrint];
            PrintStringOrNil(v228, v127, 1);
            if ((v229 & 0x80u) == 0)
            {
              v128 = v228;
            }

            else
            {
              v128 = v228[0];
            }

            if ((v229 & 0x80u) == 0)
            {
              v129 = v229;
            }

            else
            {
              v129 = v228[1];
            }

            v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, v128, v129);
            v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, "\n", 1);
            v132 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, "    ", 4);
            v133 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v132, "redactedSupportingSpeak: ", 25);
            v134 = [v36 redactedSupportingSpeak];
            PrintStringOrNil(v226, v134, 1);
            if ((v227 & 0x80u) == 0)
            {
              v135 = v226;
            }

            else
            {
              v135 = v226[0];
            }

            if ((v227 & 0x80u) == 0)
            {
              v136 = v227;
            }

            else
            {
              v136 = v226[1];
            }

            v137 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v133, v135, v136);
            v138 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v137, "\n", 1);
            v139 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v138, "    ", 4);
            v140 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v139, "isApprovedForGrading: ", 22);
            if ([v36 isApprovedForGrading])
            {
              v141 = "true";
            }

            else
            {
              v141 = "false";
            }

            std::string::basic_string[abi:ne200100]<0>(v224, v141);
            if ((v225 & 0x80u) == 0)
            {
              v142 = v224;
            }

            else
            {
              v142 = v224[0];
            }

            if ((v225 & 0x80u) == 0)
            {
              v143 = v225;
            }

            else
            {
              v143 = v224[1];
            }

            v144 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v140, v142, v143);
            v145 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v144, "\n", 1);
            v146 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v145, "    ", 4);
            v147 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v146, "----", 4);
            v276 = 10;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v147, &v276, 1);
            if (v225 < 0)
            {
              operator delete(v224[0]);
            }

            if (v227 < 0)
            {
              operator delete(v226[0]);
            }

            if (v229 < 0)
            {
              operator delete(v228[0]);
            }

            if (v231 < 0)
            {
              operator delete(v230[0]);
            }

            if (v233 < 0)
            {
              operator delete(v232[0]);
            }

            if (v235 < 0)
            {
              operator delete(v234[0]);
            }

            if (v237 < 0)
            {
              operator delete(v236[0]);
            }

            if (v239 < 0)
            {
              operator delete(v238[0]);
            }

            if (v241 < 0)
            {
              operator delete(v240[0]);
            }

            if (v244 < 0)
            {
              operator delete(v242.super.super.isa);
            }

            if (v247 < 0)
            {
              operator delete(v245.super.super.isa);
            }

            if (v249 < 0)
            {
              operator delete(v248[0]);
            }

            if (v251 < 0)
            {
              operator delete(v250[0]);
            }

            if (v253 < 0)
            {
              operator delete(v252[0]);
            }

            if (v255 < 0)
            {
              operator delete(v254[0]);
            }

            if (v262 < 0)
            {
              operator delete(v260);
            }

            if (v269 < 0)
            {
              operator delete(__p);
            }
          }

          v206 = [v204 countByEnumeratingWithState:&v256 objects:v278 count:16];
        }

        while (v206);
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "\n", 1);
    v148 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "visual: ", 8);
    v149 = [(PatternExecutionResult *)v207 visual];
    v150 = [v149 base64EncodedStringWithOptions:0];
    PrintStringOrNil(&__p, v150, 0);
    if ((v269 & 0x80u) == 0)
    {
      v151 = &__p;
    }

    else
    {
      v151 = __p;
    }

    if ((v269 & 0x80u) == 0)
    {
      v152 = v269;
    }

    else
    {
      v152 = v268;
    }

    v153 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, v151, v152);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v153, "\n", 1);
    if (v269 < 0)
    {
      operator delete(__p);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "\n", 1);
    v154 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "responseMode: ", 14);
    v155 = [(PatternExecutionResult *)v207 responseMode];
    PrintStringOrNil(&__p, v155, 1);
    if ((v269 & 0x80u) == 0)
    {
      v156 = &__p;
    }

    else
    {
      v156 = __p;
    }

    if ((v269 & 0x80u) == 0)
    {
      v157 = v269;
    }

    else
    {
      v157 = v268;
    }

    v158 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v154, v156, v157);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v158, "\n", 1);
    if (v269 < 0)
    {
      operator delete(__p);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "\n", 1);
    v159 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "printSupportingDialog: ", 23);
    v160 = [(PatternExecutionResult *)v207 printSupportingDialog];
    PrintBoolOrNil(&__p, v160);
    if ((v269 & 0x80u) == 0)
    {
      v161 = &__p;
    }

    else
    {
      v161 = __p;
    }

    if ((v269 & 0x80u) == 0)
    {
      v162 = v269;
    }

    else
    {
      v162 = v268;
    }

    v163 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v159, v161, v162);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v163, "\n", 1);
    if (v269 < 0)
    {
      operator delete(__p);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "\n", 1);
    v164 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "patternType: ", 13);
    v165 = MEMORY[0x1C68D4C40](v164, [(PatternExecutionResult *)v207 patternType]);
    v166 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v165, " (", 2);
    v167 = [(PatternExecutionResult *)v207 patternType];
    if (v167 > 0x12)
    {
      v168 = "UNKNOWN_PATTERN";
    }

    else
    {
      v168 = off_1E80FC428[v167];
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v168);
    if ((v269 & 0x80u) == 0)
    {
      v169 = &__p;
    }

    else
    {
      v169 = __p;
    }

    if ((v269 & 0x80u) == 0)
    {
      v170 = v269;
    }

    else
    {
      v170 = v268;
    }

    v171 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v166, v169, v170);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v171, ")\n", 2);
    if (v269 < 0)
    {
      operator delete(__p);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "\n", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "visualInfo:\n", 12);
    v172 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "    ", 4);
    v173 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v172, "visualLocation: ", 16);
    v174 = [(PatternExecutionResult *)v207 visualInfo];
    v175 = MEMORY[0x1C68D4C40](v173, [v174 visualLocation]);
    v176 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v175, " (", 2);
    v177 = [(PatternExecutionResult *)v207 visualInfo];
    v178 = [v177 visualLocation];
    v179 = "Invalid";
    if (!v178)
    {
      v179 = "SnippetSpace";
    }

    if (v178 == 1)
    {
      v180 = "ConversationSpace";
    }

    else
    {
      v180 = v179;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v180);
    if ((v269 & 0x80u) == 0)
    {
      v181 = &__p;
    }

    else
    {
      v181 = __p;
    }

    if ((v269 & 0x80u) == 0)
    {
      v182 = v269;
    }

    else
    {
      v182 = v268;
    }

    v183 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v176, v181, v182);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v183, ")\n", 2);
    if (v269 < 0)
    {
      operator delete(__p);
    }

    v184 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "    ", 4);
    v185 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v184, "sectionIds (count = ", 20);
    v186 = [(PatternExecutionResult *)v207 visualInfo];
    v187 = [v186 sectionIds];
    v188 = MEMORY[0x1C68D4C40](v185, [v187 count]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v188, "):\n", 3);

    v189 = [(PatternExecutionResult *)v207 visualInfo];
    v190 = [v189 sectionIds];
    LOBYTE(v185) = v190 == 0;

    if ((v185 & 1) == 0)
    {
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v191 = [(PatternExecutionResult *)v207 visualInfo];
      v192 = [v191 sectionIds];

      v193 = [v192 countByEnumeratingWithState:&v220 objects:v277 count:16];
      if (v193)
      {
        v194 = *v221;
        do
        {
          for (j = 0; j != v193; ++j)
          {
            if (*v221 != v194)
            {
              objc_enumerationMutation(v192);
            }

            v196 = *(*(&v220 + 1) + 8 * j);
            v197 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "    ", 4);
            v198 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v197, "    ", 4);
            PrintStringOrNil(&__p, v196, 1);
            if ((v269 & 0x80u) == 0)
            {
              v199 = &__p;
            }

            else
            {
              v199 = __p;
            }

            if ((v269 & 0x80u) == 0)
            {
              v200 = v269;
            }

            else
            {
              v200 = v268;
            }

            v201 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v198, v199, v200);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v201, "\n", 1);
            if (v269 < 0)
            {
              operator delete(__p);
            }
          }

          v193 = [v192 countByEnumeratingWithState:&v220 objects:v277 count:16];
        }

        while (v193);
      }
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v271, "nil", 3);
  }

  std::stringbuf::str();
  siri::dialogengine::Log::LogWithLevel(&__p, 0);
  if (v269 < 0)
  {
    operator delete(__p);
  }

  v270[0] = *MEMORY[0x1E69E54D8];
  v202 = *(MEMORY[0x1E69E54D8] + 72);
  *(v270 + *(v270[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v271 = v202;
  v272 = MEMORY[0x1E69E5548] + 16;
  if (v274 < 0)
  {
    operator delete(v273[7].__locale_);
  }

  v272 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v273);
  std::iostream::~basic_iostream();
  MEMORY[0x1C68D4DC0](&v275);

  v203 = *MEMORY[0x1E69E9840];
}

void sub_1BFC017DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = MEMORY[0x1E69E54D8];
  v15 = *MEMORY[0x1E69E54D8];
  STACK[0x2F0] = *MEMORY[0x1E69E54D8];
  v16 = *(v14 + 72);
  *(&STACK[0x2F0] + *(v15 - 24)) = *(v14 + 64);
  STACK[0x300] = v16;
  STACK[0x308] = MEMORY[0x1E69E5548] + 16;
  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  STACK[0x308] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&STACK[0x310]);
  std::iostream::~basic_iostream();
  MEMORY[0x1C68D4DC0](&STACK[0x370]);

  _Unwind_Resume(a1);
}

void PrintStringOrNil(NSString *a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    if (a3)
    {
      std::string::basic_string[abi:ne200100]<0>(&v10, [v5 UTF8String]);
      v6 = std::string::insert(&v10, 0, "[");
      v7 = *&v6->__r_.__value_.__l.__data_;
      v11.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
      *&v11.__r_.__value_.__l.__data_ = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      v8 = std::string::append(&v11, "]");
      v9 = *&v8->__r_.__value_.__l.__data_;
      a1[2] = v8->__r_.__value_.__r.__words[2];
      *a1 = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(a1, [v5 UTF8String]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "nil");
  }
}

void sub_1BFC01F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void std::vector<CATResult * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void siri::dialogengine::ExecutePatternSimple::~ExecutePatternSimple(siri::dialogengine::ExecutePatternSimple *this)
{
  *this = &unk_1F3F1E5B0;
  v2 = (this + 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  siri::dialogengine::ExecutePatternBase::~ExecutePatternBase(this);
}

void siri::dialogengine::PatternFile::~PatternFile(siri::dialogengine::PatternFile *this)
{
  *this = &unk_1F3F1F800;
  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>>>::destroy(*(this + 27));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 24));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(this + 21));
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  siri::dialogengine::LineNumberBase::~LineNumberBase(this);
}

{
  siri::dialogengine::PatternFile::~PatternFile(this);

  JUMPOUT(0x1C68D4E80);
}

void std::vector<siri::dialogengine::ExecutePatternBase::Stage>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        std::__tree<std::string>::destroy(*(v4 - 2));
        v6 = *(v4 - 4);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v7 = *(v4 - 6);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v4 -= 7;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<siri::dialogengine::PatternContext>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 80));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 56));
  v3 = *(a1 + 32);

  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>>>::destroy(v3);
}

uint64_t std::__shared_ptr_pointer<siri::dialogengine::PatternFile *,std::shared_ptr<siri::dialogengine::PatternFile>::__shared_ptr_default_delete<siri::dialogengine::PatternFile,siri::dialogengine::PatternFile>,std::allocator<siri::dialogengine::PatternFile>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<siri::dialogengine::PatternGroup *,std::shared_ptr<siri::dialogengine::PatternGroup>::__shared_ptr_default_delete<siri::dialogengine::PatternGroup,siri::dialogengine::PatternGroup>,std::allocator<siri::dialogengine::PatternGroup>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void siri::dialogengine::ExecutePatternBase::~ExecutePatternBase(siri::dialogengine::ExecutePatternBase *this)
{
  *this = &unk_1F3F1E7F0;
  v5 = (this + 80);
  std::vector<siri::dialogengine::UpdatableDir>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 56);
  std::vector<siri::dialogengine::ExecutePatternBase::Stage>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void siri::dialogengine::PatternGroup::~PatternGroup(void **this)
{
  siri::dialogengine::PatternGroup::~PatternGroup(this);

  JUMPOUT(0x1C68D4E80);
}

{
  *this = &unk_1F3F19A00;
  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  siri::dialogengine::LineNumberBase::~LineNumberBase(this);
}

void PrintBoolOrNil(NSNumber *a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    if ([v3 BOOLValue])
    {
      v4 = "true";
    }

    else
    {
      v4 = "false";
    }
  }

  else
  {
    v4 = "nil";
  }

  std::string::basic_string[abi:ne200100]<0>(a1, v4);
}

void siri::dialogengine::Context::UpdatePatternState(siri::dialogengine::Context *this, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    siri::dialogengine::Context::GetPatternState(this, &v3);
  }

  siri::dialogengine::DialogStateBase::Get(this);
}

void sub_1BFC02618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  siri::dialogengine::RequestInfo::~RequestInfo(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void siri::dialogengine::DialogStateClient::PatternUpdate(double a1, uint64_t a2, const void ***a3, char *a4, _OWORD *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = os_log_create("com.apple.siri.DialogEngine", "DialogState");
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    if (a4[23] >= 0)
    {
      v13 = a4;
    }

    else
    {
      v13 = *a4;
    }

    *buf = 136315138;
    *&buf[4] = v13;
    _os_signpost_emit_with_name_impl(&dword_1BFB68000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "UpdatePatternState", "PATTERN_ID = %s", buf, 0xCu);
  }

  v14 = +[DEBundle frameworkUserSettings];
  if (a4[23] >= 0)
  {
    v15 = a4[23];
  }

  else
  {
    v15 = *(a4 + 1);
  }

  v16 = v32;
  std::string::basic_string[abi:ne200100](v32, v15 + 8);
  if (v33 < 0)
  {
    v16 = v32[0];
  }

  if (v15)
  {
    if (a4[23] >= 0)
    {
      v17 = a4;
    }

    else
    {
      v17 = *a4;
    }

    memmove(v16, v17, v15);
  }

  strcpy(v16 + v15, "#pattern");
  if (v33 >= 0)
  {
    v18 = v32;
  }

  else
  {
    v18 = v32[0];
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
  v20 = [v14 dictionaryForKey:v19];
  siri::dialogengine::DialogStatePatternFromNSDictionary(v20, buf);

  v31 = 0;
  LOBYTE(__p[0]) = 0;
  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  siri::dialogengine::DialogStateBase::UpdateStats(v21, a3, a1, __p, &v28, 0, 0, buf);
  std::__tree<std::string>::destroy(&v28, v29[0]);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v23 = siri::dialogengine::DialogStatePatternToNSDictionary(buf, v22);
  [v14 setObject:v23 forKey:v19];

  if (a5)
  {
    v24 = v35;
    *a5 = *buf;
    a5[1] = v24;
  }

  v25 = v12;
  v26 = v25;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    LOWORD(__p[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BFB68000, v26, OS_SIGNPOST_INTERVAL_END, v10, "UpdatePatternState", "", __p, 2u);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1BFC02938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void VariableFromNSObject(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 UTF8String];
    operator new();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    objc_getClass("__NSCFBoolean");
    if (objc_opt_isKindOfClass())
    {
      [v6 BOOLValue];
      operator new();
    }

    [v6 doubleValue];
    operator new();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    VariableFromNSDictionary(__p, a2, v5);
    *a1 = *__p;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      std::allocate_shared[abi:ne200100]<siri::dialogengine::VariableArray,std::allocator<siri::dialogengine::VariableArray>,std::string const&,0>();
    }

    std::operator+<char>();
    siri::dialogengine::Log::LogWithLevel(__p, 1u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1BFC02EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SnippetUI::Response_Group::~Response_Group(SnippetUI::Response_Group *this)
{
  *this = &unk_1F3F1F078;
  v2 = *(this + 5);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::Response_Group::~Response_Group(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::Response::~Response(SnippetUI::Response *this)
{
  *this = &unk_1F3F1F1F8;
  v2 = (this + 8);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 112);
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 88));
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 64));
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 40));
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(v2);
}

uint64_t siri::dialogengine::DeviceIsHomePod(siri::dialogengine *this, siri::dialogengine::VariableObject *a2, siri::dialogengine::VariableObject *a3)
{
  DeviceParameter = siri::dialogengine::GetDeviceParameter(this, a2, a3);
  if (DeviceParameter)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "isHomePod");
    IsTrue = siri::dialogengine::DeviceFieldIsTrue(DeviceParameter, __p);
    LOBYTE(DeviceParameter) = IsTrue;
    if (v12 < 0)
    {
      operator delete(__p[0]);
      if (DeviceParameter)
      {
        goto LABEL_4;
      }
    }

    else if (IsTrue)
    {
LABEL_4:
      v5 = "true";
      goto LABEL_7;
    }
  }

  v5 = "false";
LABEL_7:
  std::string::basic_string[abi:ne200100]<0>(v9, v5);
  if (v10 >= 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = v9[0];
  }

  siri::dialogengine::Log::Debug("Is HomePod (from device.isHomePod): %s", v6, v7);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return DeviceParameter & 1;
}

void sub_1BFC031A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PatternTypeFromName(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v2 = v1;
  }

  siri::dialogengine::StringToLower(a1, v2, &__p);
  if (v30 < 0)
  {
    v5 = *v29;
    if (*v29 <= 19)
    {
      if (*v29 == 16)
      {
        if (*__p != 0x2E6E726574746170 || *(__p + 1) != 0x746573656C626174)
        {
          goto LABEL_103;
        }

        goto LABEL_111;
      }

      if (*v29 == 17)
      {
        if (*__p != 0x2E6E726574746170 || *(__p + 1) != 0x6573746C75736572 || *(__p + 16) != 116)
        {
          goto LABEL_103;
        }

        goto LABEL_52;
      }
    }

    else
    {
      switch(*v29)
      {
        case 0x14:
          if (*__p != 0x2E6E726574746170 || *(__p + 1) != 0x6572656C706D6973 || *(__p + 4) != 1953265011)
          {
            goto LABEL_103;
          }

          goto LABEL_77;
        case 0x15:
          p_p = __p;
          goto LABEL_79;
        case 0x16:
          if (*__p != 0x2E6E726574746170 || *(__p + 1) != 0x64656C6961746564 || *(__p + 14) != 0x746C757365726465)
          {
            goto LABEL_103;
          }

LABEL_30:
          v8 = 4;
          goto LABEL_129;
      }
    }

LABEL_87:
    if ((v30 & 0x80) != 0 && v5 == 23)
    {
      v24 = *__p == 0x2E6E726574746170 && *(__p + 1) == 0x656C6C65636E6163;
      if (v24 && *(__p + 15) == 0x7375746174736465)
      {
        v8 = 6;
        goto LABEL_129;
      }
    }

    goto LABEL_103;
  }

  if (v30 <= 0x13u)
  {
    if (v30 != 16)
    {
      if (v30 != 17)
      {
        goto LABEL_103;
      }

      v9 = __p == 0x2E6E726574746170 && *v29 == 0x6573746C75736572;
      if (!v9 || v29[8] != 116)
      {
        goto LABEL_103;
      }

LABEL_52:
      v8 = 1;
      goto LABEL_129;
    }

    if (__p != 0x2E6E726574746170 || *v29 != 0x746573656C626174)
    {
      goto LABEL_103;
    }

LABEL_111:
    v8 = 2;
    goto LABEL_129;
  }

  switch(v30)
  {
    case 0x14u:
      if (__p != 0x2E6E726574746170 || *v29 != 0x6572656C706D6973 || *&v29[8] != 1953265011)
      {
        break;
      }

LABEL_77:
      v8 = 3;
      goto LABEL_129;
    case 0x15u:
      p_p = &__p;
LABEL_79:
      v19 = *p_p;
      v20 = p_p[1];
      v21 = *(p_p + 13);
      if (v19 == 0x2E6E726574746170 && v20 == 0x7373736563637573 && v21 == 0x7375746174737373)
      {
        v8 = 5;
        goto LABEL_129;
      }

      v5 = *v29;
      goto LABEL_87;
    case 0x16u:
      v3 = __p == 0x2E6E726574746170 && *v29 == 0x64656C6961746564;
      if (v3 && *&v29[6] == 0x746C757365726465)
      {
        goto LABEL_30;
      }

      break;
  }

LABEL_103:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "pattern.errorstatus"))
  {
    v8 = 7;
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "pattern.progresssstatus"))
  {
    v8 = 8;
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "pattern.disambiguationclarification"))
  {
    v8 = 9;
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "pattern.openendedclarification"))
  {
    v8 = 10;
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "pattern.yesnoclarification"))
  {
    v8 = 11;
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "pattern.simpledisambiguationclarification"))
  {
    v8 = 12;
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "pattern.detaileddisambiguationclarification"))
  {
    v8 = 13;
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "pattern.multilevelresultset"))
  {
    v8 = 14;
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "prompt.DetailedDisambiguationPrompt"))
  {
    v8 = 15;
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "prompt.OpenEndedPrompt"))
  {
    v8 = 16;
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "prompt.SimpleDisambiguationPrompt"))
  {
    v8 = 17;
  }

  else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "prompt.YesNoPrompt"))
  {
    v8 = 18;
  }

  else
  {
    v8 = 0;
  }

LABEL_129:
  if (v30 < 0)
  {
    operator delete(__p);
  }

  return v8;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::basic_string<char32_t>::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_1BFC038E8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void siri::dialogengine::PatternFactory::Create(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v4 = v3;
  }

  siri::dialogengine::StringToLower(a1, v4, &__s1);
  v5 = v61[15];
  if ((v61[15] & 0x80000000) != 0)
  {
    if (*v61 > 19)
    {
      switch(*v61)
      {
        case 0x14:
          if (*__s1 == 0x2E6E726574746170 && __s1[1] == 0x6572656C706D6973 && *(__s1 + 4) == 1953265011)
          {
            goto LABEL_103;
          }

          break;
        case 0x15:
          if (*__s1 == 0x2E6E726574746170 && __s1[1] == 0x7373736563637573 && *(__s1 + 13) == 0x7375746174737373)
          {
            goto LABEL_167;
          }

          break;
        case 0x16:
          v12 = *__s1 == 0x2E6E726574746170 && __s1[1] == 0x64656C6961746564;
          if (v12 && *(__s1 + 14) == 0x746C757365726465)
          {
            goto LABEL_69;
          }

          break;
      }
    }

    else
    {
      switch(*v61)
      {
        case 0x10:
          if (*__s1 == 0x2E6E726574746170 && __s1[1] == 0x746573656C626174)
          {
            goto LABEL_94;
          }

          break;
        case 0x11:
          if (*__s1 == 0x2E6E726574746170 && __s1[1] == 0x6573746C75736572 && *(__s1 + 16) == 116)
          {
            goto LABEL_112;
          }

          break;
        case 0x13:
          if (*__s1 == 0x2E6E726574746170 && __s1[1] == 0x617473726F727265 && *(__s1 + 11) == 0x737574617473726FLL)
          {
            goto LABEL_167;
          }

          if ((v61[15] & 0x80) == 0)
          {
            goto LABEL_196;
          }

          break;
      }
    }

    if (*v61 != 23)
    {
      goto LABEL_141;
    }

    if (*__s1 == 0x2E6E726574746170 && __s1[1] == 0x656C6C65636E6163 && *(__s1 + 15) == 0x7375746174736465)
    {
      goto LABEL_167;
    }

    if ((v61[15] & 0x80) != 0)
    {
LABEL_141:
      if (*v61 == 22)
      {
        if (*__s1 == 0x2E6E726574746170 && __s1[1] == 0x73736572676F7270 && *(__s1 + 14) == 0x7375746174737373)
        {
          goto LABEL_167;
        }

        if ((v61[15] & 0x80) == 0)
        {
          goto LABEL_196;
        }
      }

      if (*v61 == 41)
      {
        if (!memcmp(__s1, "pattern.simpledisambiguationclarification", 0x29uLL))
        {
          goto LABEL_193;
        }

        if ((v5 & 0x80) == 0)
        {
          if (v5 != 26)
          {
            if (v5 != 30)
            {
              goto LABEL_196;
            }

LABEL_155:
            if (__s1 != 0x2E6E726574746170 || *v61 != 0x65646E656E65706FLL || *&v61[8] != 0x69666972616C6364 || *&v61[14] != 0x6E6F697461636966)
            {
              goto LABEL_196;
            }

            goto LABEL_193;
          }

          goto LABEL_181;
        }
      }

      if (*v61 != 30)
      {
        goto LABEL_194;
      }

      if (*__s1 == 0x2E6E726574746170 && __s1[1] == 0x65646E656E65706FLL && __s1[2] == 0x69666972616C6364 && *(__s1 + 22) == 0x6E6F697461636966)
      {
        goto LABEL_193;
      }

      if ((v5 & 0x80) != 0)
      {
LABEL_194:
        if (*v61 != 26)
        {
          goto LABEL_196;
        }

        p_s1 = __s1;
LABEL_182:
        v49 = *p_s1;
        v50 = p_s1[1];
        v51 = p_s1[2];
        v52 = *(p_s1 + 12);
        if (v49 != 0x2E6E726574746170 || v50 != 0x616C636F6E736579 || v51 != 0x6974616369666972 || v52 != 28271)
        {
          goto LABEL_196;
        }

LABEL_193:
        std::string::basic_string[abi:ne200100]<0>(v62, "Sash");
        std::string::basic_string[abi:ne200100]<0>(v63, "Preview");
        std::string::basic_string[abi:ne200100]<0>(v64, "Attribution");
        std::string::basic_string[abi:ne200100]<0>(v65, "Reference");
        std::string::basic_string[abi:ne200100]<0>(v66, "Prompt");
        v57 = 0;
        v58 = 0;
        v59 = 0;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v57, v62, v67, 5uLL);
      }
    }

    else
    {
      if (v61[15] > 0x1Du)
      {
LABEL_25:
        if (v61[15] != 30)
        {
          if (v61[15] != 41 || memcmp(&__s1, "pattern.simpledisambiguationclarification", 0x29uLL))
          {
            goto LABEL_196;
          }

          goto LABEL_193;
        }

        goto LABEL_155;
      }

      if (v61[15] == 22)
      {
        goto LABEL_131;
      }
    }

    if (v5 != 26)
    {
      goto LABEL_196;
    }

LABEL_181:
    p_s1 = &__s1;
    goto LABEL_182;
  }

  if (v61[15] > 0x15u)
  {
    if (v61[15] > 0x19u)
    {
      if (v61[15] != 26)
      {
        goto LABEL_25;
      }

      goto LABEL_181;
    }

    if (v61[15] != 22)
    {
      if (v61[15] != 23)
      {
        goto LABEL_196;
      }

      v16 = *v61;
      v17 = *&v61[7];
      v18 = 0x7375746174736465;
      v19 = __s1 == 0x2E6E726574746170;
      v20 = 0x656C6C65636E6163;
LABEL_71:
      if (v19 && v16 == v20 && v17 == v18)
      {
        goto LABEL_167;
      }

      goto LABEL_196;
    }

    if (__s1 != 0x2E6E726574746170 || *v61 != 0x64656C6961746564 || *&v61[6] != 0x746C757365726465)
    {
LABEL_131:
      v6 = *v61;
      v7 = *&v61[6];
      v8 = __s1 == 0x2E6E726574746170;
      v9 = 0x6572676F7270;
LABEL_132:
      v37 = v9 & 0xFFFFFFFFFFFFLL | 0x7373000000000000;
      if (!v8 || v6 != v37 || v7 != 0x7375746174737373)
      {
        goto LABEL_196;
      }

LABEL_167:
      std::string::basic_string[abi:ne200100]<0>(v62, "Sash");
      std::string::basic_string[abi:ne200100]<0>(v63, "Preview");
      std::string::basic_string[abi:ne200100]<0>(v64, "Attribution");
      std::string::basic_string[abi:ne200100]<0>(v65, "Reference");
      std::string::basic_string[abi:ne200100]<0>(v66, "Status");
      std::string::basic_string[abi:ne200100]<0>(v67, "Prompt");
      v57 = 0;
      v58 = 0;
      v59 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v57, v62, &v68, 6uLL);
    }

LABEL_69:
    operator new();
  }

  if (v61[15] <= 0x12u)
  {
    if (v61[15] != 16)
    {
      if (v61[15] != 17)
      {
        goto LABEL_196;
      }

      v14 = __s1 == 0x2E6E726574746170 && *v61 == 0x6573746C75736572;
      if (!v14 || v61[8] != 116)
      {
        goto LABEL_196;
      }

LABEL_112:
      operator new();
    }

    if (__s1 != 0x2E6E726574746170 || *v61 != 0x746573656C626174)
    {
      goto LABEL_196;
    }

LABEL_94:
    operator new();
  }

  if (v61[15] == 19)
  {
    v16 = *v61;
    v17 = *&v61[3];
    v18 = 0x737574617473726FLL;
    v19 = __s1 == 0x2E6E726574746170;
    v20 = 0x617473726F727265;
    goto LABEL_71;
  }

  if (v61[15] != 20)
  {
    v6 = *v61;
    v7 = *&v61[5];
    v8 = __s1 == 0x2E6E726574746170;
    v9 = 0x736563637573;
    goto LABEL_132;
  }

  if (__s1 == 0x2E6E726574746170 && *v61 == 0x6572656C706D6973 && *&v61[8] == 1953265011)
  {
LABEL_103:
    std::string::basic_string[abi:ne200100]<0>(v62, "Sash");
    std::string::basic_string[abi:ne200100]<0>(v63, "Item");
    std::string::basic_string[abi:ne200100]<0>(v64, "Attribution");
    std::string::basic_string[abi:ne200100]<0>(v65, "Reference");
    std::string::basic_string[abi:ne200100]<0>(v66, "Prompt");
    v57 = 0;
    v58 = 0;
    v59 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v57, v62, v67, 5uLL);
  }

LABEL_196:
  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s1, "pattern.detaileddisambiguationclarification"))
  {
    operator new();
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s1, "pattern.multilevelresultset"))
  {
    operator new();
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s1, "prompt.detaileddisambiguationprompt"))
  {
    operator new();
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s1, "prompt.simpledisambiguationprompt") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s1, "prompt.openendedprompt") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s1, "prompt.yesnoprompt"))
  {
    std::string::basic_string[abi:ne200100]<0>(v62, "Sash");
    std::string::basic_string[abi:ne200100]<0>(v63, "Prompt");
    v57 = 0;
    v58 = 0;
    v59 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v57, v62, v64, 2uLL);
  }

  if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__s1, "pattern.disambiguationclarification"))
  {
    std::string::basic_string[abi:ne200100]<0>(v62, "Sash");
    std::string::basic_string[abi:ne200100]<0>(v63, "Preview");
    std::string::basic_string[abi:ne200100]<0>(v64, "Attribution");
    std::string::basic_string[abi:ne200100]<0>(v65, "Prompt");
    v57 = 0;
    v58 = 0;
    v59 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v57, v62, v66, 4uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  if ((v61[15] & 0x80000000) != 0)
  {
    operator delete(__s1);
  }

  v56 = *MEMORY[0x1E69E9840];
}

void sub_1BFC04690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  v41 = &a40;
  v42 = -96;
  v43 = &a40;
  while (1)
  {
    v44 = *v43;
    v43 -= 24;
    if (v44 < 0)
    {
      operator delete(*(v41 - 23));
    }

    v41 = v43;
    v42 += 24;
    if (!v42)
    {
      if (a21 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_1BFC04970(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t siri::dialogengine::ExecutePatternSimple::ExecutePatternSimple(uint64_t a1, uint64_t *a2)
{
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = &unk_1F3F1E5B0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 104, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

void SnippetUI::Response_Section::~Response_Section(SnippetUI::Response_Section *this)
{
  *this = &unk_1F3F1EFB8;
  v2 = (this + 8);
  google::protobuf::RepeatedField<int>::~RepeatedField(this + 64);
  google::protobuf::RepeatedField<int>::~RepeatedField(this + 40);
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((this + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(v2);
}

{
  SnippetUI::Response_Section::~Response_Section(this);

  JUMPOUT(0x1C68D4E80);
}

void SnippetUI::Response_Component::~Response_Component(SnippetUI::Response_Component *this)
{
  *this = &unk_1F3F1F138;
  if (this != &SnippetUI::_Response_Component_default_instance_)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  if (*(this + 9))
  {
    SnippetUI::Response_Component::clear_value(this);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::Response_Component::~Response_Component(this);

  JUMPOUT(0x1C68D4E80);
}

void siri::dialogengine::FilterVisualResponse(siri::dialogengine *this, const siri::dialogengine::Context *a2, SnippetUI::Response *a3)
{
  siri::dialogengine::RequestInfo::RequestInfo(v53, (this + 8));
  v4 = v54;
  if (v54)
  {
    if (v54 > 4)
    {
      v5 = "";
    }

    else
    {
      v5 = off_1E80FCA08[v54 - 1];
    }

    std::string::basic_string[abi:ne200100]<0>(&v56, v5);
    if (v58 >= 0)
    {
      v7 = &v56;
    }

    else
    {
      v7 = v56;
    }

    siri::dialogengine::Log::Info("Filtering visuals according to response mode '%s'", v6, v7);
    v9 = *(a2 + 6);
    if (v9)
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      LODWORD(__p.__r_.__value_.__l.__data_) = 0;
      if (v9 >= 1)
      {
        v10 = 0;
        while (1)
        {
          v12 = (google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Section>::TypeHandler>(a2 + 16, v10) + 40);
          if (*v12 < 1)
          {
            v14 = 0;
            v13 = 0;
          }

          else
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            do
            {
              v13 |= *google::protobuf::RepeatedField<int>::Get(v12, v15) == 0;
              v14 |= *google::protobuf::RepeatedField<int>::Get(v12, v15++) == 1;
            }

            while (v15 < *v12);
          }

          if (v4 > 2)
          {
            break;
          }

          if (v4 != 1)
          {
            if (v4 == 2)
            {
              if (v14)
              {
                goto LABEL_27;
              }

              goto LABEL_26;
            }

LABEL_25:
            siri::dialogengine::Log::Error("Unrecognized response mode: %d", v11, v4);
          }

LABEL_26:
          std::vector<int>::push_back[abi:ne200100](&v50, &__p);
LABEL_27:
          v10 = LODWORD(__p.__r_.__value_.__l.__data_) + 1;
          LODWORD(__p.__r_.__value_.__l.__data_) = v10;
          if (v10 >= *(a2 + 6))
          {
            v16 = v50;
            v17 = v51;
            goto LABEL_31;
          }
        }

        if (v4 == 3 || v4 == 4)
        {
          if (v13)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v17 = 0;
      v16 = 0;
LABEL_31:
      v18 = v17 - v16;
      if (v18)
      {
        v19 = (v18 >> 2) - 1;
        do
        {
          v20 = *&v16[4 * v19];
          v21 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Section>::TypeHandler>(a2 + 16, v20);
          siri::dialogengine::GetVisualElementId(&__p, v21);
          google::protobuf::RepeatedPtrField<SnippetUI::Response_Section>::DeleteSubrange((a2 + 16), v20);
          if (v58 >= 0)
          {
            v23 = &v56;
          }

          else
          {
            v23 = v56;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          siri::dialogengine::Log::Info("Response mode '%s' filtering removed Visual CAT section at index %d whose id is '%s'", v22, v23, v20, p_p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          --v19;
          v16 = v50;
        }

        while (v19 < (v51 - v50) >> 2);
      }

      if (v16)
      {
        v51 = v16;
        operator delete(v16);
      }
    }

    else
    {
      siri::dialogengine::Log::Info("There are no sections to filter!", v8);
    }

    if (SHIBYTE(v58) < 0)
    {
      operator delete(v56);
      if (!v9)
      {
        goto LABEL_83;
      }
    }

    else if (!v9)
    {
      goto LABEL_83;
    }
  }

  if (v55)
  {
    LODWORD(v25) = *(a2 + 6);
    if (v25 >= 1)
    {
      v26 = 0;
      do
      {
        if (v26 >= v25)
        {
          v27 = google::protobuf::internal::LogMessage::LogMessage(&v56, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1561);
          v28 = google::protobuf::internal::LogMessage::operator<<(v27, "CHECK failed: (index) < (current_size_): ");
          google::protobuf::internal::LogFinisher::operator=(&v50, v28);
          google::protobuf::internal::LogMessage::~LogMessage(&v56);
        }

        v29 = *(*(a2 + 4) + 8 * v26 + 8);
        v56 = 0;
        v57 = 0;
        v58 = 0;
        LODWORD(v50) = 0;
        if (*(v29 + 24) < 1)
        {
          v31 = 0;
          v32 = 0;
        }

        else
        {
          v30 = 0;
          do
          {
            if (*(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Component>::TypeHandler>(v29 + 16, v30) + 36) == 49)
            {
              std::vector<int>::push_back[abi:ne200100](&v56, &v50);
            }

            v30 = v50 + 1;
            LODWORD(v50) = v30;
          }

          while (v30 < *(v29 + 24));
          v31 = v56;
          v32 = v57;
        }

        v33 = v32 - v31;
        if (v33)
        {
          v34 = (v33 >> 2) - 1;
          do
          {
            v35 = *(v31 + v34);
            google::protobuf::RepeatedPtrField<SnippetUI::Response_Component>::DeleteSubrange((v29 + 16), v35);
            siri::dialogengine::Log::Info("Spotlight filtering removed sash component at index %d", v36, v35);
            --v34;
            v31 = v56;
          }

          while (v34 < (v57 - v56) >> 2);
        }

        if (v31)
        {
          v57 = v31;
          operator delete(v31);
        }

        ++v26;
        v25 = *(a2 + 6);
      }

      while (v26 < v25);
    }

    LODWORD(v37) = *(a2 + 24);
    if (v37 >= 1)
    {
      v38 = 0;
      do
      {
        if (v38 >= v37)
        {
          v39 = google::protobuf::internal::LogMessage::LogMessage(&v56, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1561);
          v40 = google::protobuf::internal::LogMessage::operator<<(v39, "CHECK failed: (index) < (current_size_): ");
          google::protobuf::internal::LogFinisher::operator=(&v50, v40);
          google::protobuf::internal::LogMessage::~LogMessage(&v56);
        }

        v41 = *(*(a2 + 13) + 8 * v38 + 8);
        v56 = 0;
        v57 = 0;
        v58 = 0;
        LODWORD(v50) = 0;
        if (*(v41 + 24) < 1)
        {
          v43 = 0;
          v44 = 0;
        }

        else
        {
          v42 = 0;
          do
          {
            if (*(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Component>::TypeHandler>(v41 + 16, v42) + 36) == 49)
            {
              std::vector<int>::push_back[abi:ne200100](&v56, &v50);
            }

            v42 = v50 + 1;
            LODWORD(v50) = v42;
          }

          while (v42 < *(v41 + 24));
          v43 = v56;
          v44 = v57;
        }

        v45 = v44 - v43;
        if (v45)
        {
          v46 = (v45 >> 2) - 1;
          do
          {
            v47 = *(v43 + v46);
            google::protobuf::RepeatedPtrField<SnippetUI::Response_Component>::DeleteSubrange((v41 + 16), v47);
            siri::dialogengine::Log::Info("Spotlight filtering removed sash component in group %d at index %d", v48, v38, v47);
            --v46;
            v43 = v56;
          }

          while (v46 < (v57 - v56) >> 2);
        }

        if (v43)
        {
          v57 = v43;
          operator delete(v43);
        }

        ++v38;
        v37 = *(a2 + 24);
      }

      while (v38 < v37);
    }
  }

LABEL_83:
  siri::dialogengine::RequestInfo::~RequestInfo(v53);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Section>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1BFC051CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::dialogengine::VisualResponse::GetResponseBase64Protobuf(siri::dialogengine::VisualResponse *this@<X0>, std::string *a2@<X8>)
{
  google::protobuf::MessageLite::SerializeAsString((this + 208), __p);
  siri::dialogengine::EncodeBase64(__p, a2);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BFC0523C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(uint64_t *a1, const google::protobuf::UnknownFieldSet *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (((v3 - *a1) >> 4) >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v8 = *a1;
    v7 = a1[1];
    while (1)
    {
      v9 = (v2 + v4);
      v10 = *(v2 + v4 + 4);
      if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 == 1)
          {
            v6 += ((9 * (__clz((8 * *v9) | 5) ^ 0x1F) + 73) >> 6) + 4;
          }
        }

        else
        {
          v6 += ((9 * (__clz(*(v2 + v4 + 8) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz((8 * *(v2 + v4)) | 1) ^ 0x1F) + 73) >> 6);
        }

        goto LABEL_17;
      }

      if (v10 != 2)
      {
        break;
      }

      v6 += ((9 * (__clz((8 * *v9) | 1) ^ 0x1F) + 73) >> 6) + 8;
LABEL_17:
      ++v5;
      v4 += 16;
      if (v5 >= ((v3 - v2) >> 4))
      {
        return v6;
      }
    }

    if (v10 != 3)
    {
      if (v10 == 4)
      {
        v11 = v2 + v4;
        v12 = (9 * (__clz((8 * *v11) | 3) ^ 0x1F) + 73) >> 6;
        v6 += google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(*(v11 + 8), a2) + v12 + ((9 * (__clz((8 * *v11) | 5) ^ 0x1F) + 73) >> 6);
        v2 = v8;
        v3 = v7;
      }

      goto LABEL_17;
    }

    v13 = *(v2 + v4 + 8);
    v14 = *(v13 + 23);
    if (v14 < 0)
    {
      v15 = *(v13 + 8);
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      LODWORD(v15) = *(v13 + 23);
      if ((v14 & 0x80000000) == 0)
      {
LABEL_15:
        v6 += ((9 * (__clz((8 * *(v2 + v4)) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + v14;
        goto LABEL_17;
      }
    }

    v14 = *(v13 + 8);
    goto LABEL_15;
  }

  return 0;
}

char *SnippetUI::CustomCanvas::ByteSizeLong(SnippetUI::CustomCanvas *this)
{
  v1 = *(this + 2);
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    if (*(v1 + 8))
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (!*(v1 + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = *(v1 + 8);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
  v5 = *(this + 3);
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    if (!*(v5 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (!*(v5 + 23))
  {
    goto LABEL_13;
  }

  v7 = *(v5 + 8);
  if (v6 >= 0)
  {
    v7 = v6;
  }

  v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_13:
  v8 = *(this + 4);
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (!*(v8 + 8))
    {
      goto LABEL_18;
    }
  }

  else if (!*(v8 + 23))
  {
    goto LABEL_18;
  }

  v10 = *(v8 + 8);
  if (v9 >= 0)
  {
    v10 = v9;
  }

  v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_18:
  v11 = *(this + 5);
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    if (!*(v11 + 8))
    {
      goto LABEL_23;
    }
  }

  else if (!*(v11 + 23))
  {
    goto LABEL_23;
  }

  v13 = *(v11 + 8);
  if (v12 >= 0)
  {
    v13 = v12;
  }

  v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_23:
  if (*(this + 48))
  {
    v4 += 2;
  }

  if (*(this + 49))
  {
    v4 += 2;
  }

  if (*(this + 50))
  {
    v14 = (v4 + 2);
  }

  else
  {
    v14 = v4;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v14, this + 13);
  }

  *(this + 13) = v14;
  return v14;
}

char *SnippetUI::Command::ByteSizeLong(SnippetUI::Command *this)
{
  if (*(this + 16))
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 9);
  if (v3 > 5)
  {
    if (v3 <= 8)
    {
      if (v3 == 6 || v3 == 7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      switch(v3)
      {
        case 9:
          v4 = SnippetUI::Command_ResponseGroup::ByteSizeLong(*(this + 3));
          goto LABEL_25;
        case 10:
          v4 = SnippetUI::Command_AppPunchout::ByteSizeLong(*(this + 3));
          goto LABEL_25;
        case 11:
LABEL_19:
          v5 = *(this + 3);
          v6 = *(v5 + 23);
          v7 = *(v5 + 8);
          if ((v6 & 0x80u) == 0)
          {
            v7 = v6;
          }

          v8 = (v7 + v2 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
          goto LABEL_26;
      }
    }
  }

  else
  {
    if (v3 > 2)
    {
      if (v3 != 3 && v3 != 4)
      {
        v4 = SnippetUI::Command_ChangeBackground::ByteSizeLong(*(this + 3));
LABEL_25:
        v8 = &v4[v2 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6)];
LABEL_26:
        v2 = (v8 + 1);
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v3 == 1)
    {
      v2 += 2;
      goto LABEL_27;
    }

    if (v3 == 2)
    {
      goto LABEL_19;
    }
  }

LABEL_27:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 8);
  }

  else
  {
    *(this + 8) = v2;
    return v2;
  }
}

char *SnippetUI::TextElement::ByteSizeLong(SnippetUI::TextElement *this)
{
  v2 = (this + 16);
  v3 = *(this + 4);
  if (!v3)
  {
    v5 = 0;
LABEL_11:
    v9 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *google::protobuf::RepeatedField<int>::Get(v2, v4);
    if (v6 < 0)
    {
      v7 = 10;
    }

    else
    {
      v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    }

    v5 += v7;
    ++v4;
  }

  while (v3 != v4);
  if (!v5)
  {
    goto LABEL_11;
  }

  if ((v5 & 0x80000000) != 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v9 = v5;
LABEL_14:
  *(this + 8) = v9;
  v10 = (v8 + v5);
  if (this != &SnippetUI::_TextElement_default_instance_)
  {
    v11 = *(this + 5);
    if (v11)
    {
      v12 = SnippetUI::TextElement_Font::ByteSizeLong(v11);
      v10 = &v12[v10 + 1 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6)];
    }

    v13 = *(this + 6);
    if (v13)
    {
      v14 = SnippetUI::TextElement_FontWeight::ByteSizeLong(v13);
      v10 = &v14[v10 + 1 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6)];
    }

    v15 = *(this + 7);
    if (v15)
    {
      v16 = SnippetUI::Color::ByteSizeLong(v15);
      v10 = &v16[v10 + 1 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6)];
    }

    v17 = *(this + 8);
    if (v17)
    {
      if (*(v17 + 16))
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

      if (*(v17 + 8))
      {
        v18 = google::protobuf::internal::ComputeUnknownFieldsSize((v17 + 8), v18, (v17 + 20));
      }

      else
      {
        *(v17 + 20) = v18;
      }

      v10 = (v10 + v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    v19 = *(this + 9);
    if (v19)
    {
      if (*(v19 + 16))
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      if (*(v19 + 8))
      {
        v20 = google::protobuf::internal::ComputeUnknownFieldsSize((v19 + 8), v20, (v19 + 20));
      }

      else
      {
        *(v19 + 20) = v20;
      }

      v10 = (v10 + v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }
  }

  v21 = *(this + 20);
  if (v21)
  {
    if (v21 < 0)
    {
      v22 = 11;
    }

    else
    {
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v10 = (v10 + v22);
  }

  if ((*(this + 25) - 1) <= 1)
  {
    v23 = *(this + 11);
    v24 = *(v23 + 23);
    v25 = *(v23 + 8);
    if ((v24 & 0x80u) == 0)
    {
      v25 = v24;
    }

    v10 = (v10 + v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v10, this + 24);
  }

  else
  {
    *(this + 24) = v10;
    return v10;
  }
}

SnippetUI::Response_Section *SnippetUI::Response_Section::Response_Section(SnippetUI::Response_Section *this, const SnippetUI::Response_Section *a2)
{
  *this = &unk_1F3F1EFB8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<SnippetUI::Response_Component>::TypeHandler>(this + 2, a2 + 16);
  google::protobuf::RepeatedField<int>::RepeatedField(this + 40, a2 + 10);
  google::protobuf::RepeatedField<int>::RepeatedField(this + 64, a2 + 16);
  *(this + 22) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArena::DoMergeFrom(v4, (v5 & 0xFFFFFFFFFFFFFFFELL));
  }

  *(this + 84) = *(a2 + 84);
  return this;
}

void sub_1BFC05B2C(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedField<int>::~RepeatedField(v2 + 64);
  google::protobuf::RepeatedField<int>::~RepeatedField(v2 + 40);
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField((v2 + 16));
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::RepeatedField(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    google::protobuf::RepeatedField<int>::Reserve(a1, v4);
    google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a1, *a2);
    if (*a1 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1198);
      v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, v5);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v6 = google::protobuf::RepeatedField<int>::elements(a1);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1177);
      v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v10, v7);
      google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }

  return a1;
}

void sub_1BFC05C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

siri::dialogengine::CATResultDialogFilterAdapter *siri::dialogengine::CATResultDialogFilterAdapter::CATResultDialogFilterAdapter(siri::dialogengine::CATResultDialogFilterAdapter *this, CATResult *a2)
{
  v3 = a2;
  *this = &unk_1F3F13778;
  v4 = v3;
  v5 = v4;
  *(this + 1) = 0u;
  v6 = (this + 16);
  *(this + 1) = v4;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  if (v4)
  {
    v7 = [(CATResult *)v4 dialogId];
    v8 = *v6;
    *v6 = v7;

    v9 = [(CATResult *)v5 speak];
    v10 = *(this + 3);
    *(this + 3) = v9;

    v11 = [(CATResult *)v5 print];
    v12 = *(this + 4);
    *(this + 4) = v11;

    v13 = [(CATResult *)v5 captionSpeak];
    v14 = *(this + 5);
    *(this + 5) = v13;

    v15 = [(CATResult *)v5 captionPrint];
    v16 = *(this + 6);
    *(this + 6) = v15;

    v17 = [(CATResult *)v5 printOnly];
    v18 = *(this + 7);
    *(this + 7) = v17;

    v19 = [(CATResult *)v5 spokenOnly];
    v20 = *(this + 8);
    *(this + 8) = v19;

    v21 = [(CATResult *)v5 spokenOnlyDefined];
    v22 = *(this + 9);
    *(this + 9) = v21;

    v23 = [(CATResult *)v5 redactedSpeak];
    v24 = *(this + 10);
    *(this + 10) = v23;

    v25 = [(CATResult *)v5 redactedPrint];
    v26 = *(this + 11);
    *(this + 11) = v25;

    v27 = [(CATResult *)v5 redactedCaptionSpeak];
    v28 = *(this + 12);
    *(this + 12) = v27;

    v29 = [(CATResult *)v5 redactedCaptionPrint];
    v30 = *(this + 13);
    *(this + 13) = v29;

    v31 = objc_opt_new();
    v32 = *(this + 14);
    *(this + 14) = v31;
  }

  return this;
}

void siri::dialogengine::FilterDialogForModeAndSettings(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v136 = *MEMORY[0x1E69E9840];
  v132 = 0;
  v133 = 0uLL;
  v11 = *(a6 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a6 + 8);
  }

  if (v11)
  {
    std::operator+<char>();
    v12 = std::string::append(&v131, "'");
    v13 = v12->__r_.__value_.__r.__words[0];
    *v134 = v12->__r_.__value_.__l.__size_;
    *&v134[7] = *(&v12->__r_.__value_.__r.__words[1] + 7);
    v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v133) < 0)
    {
      operator delete(v132);
    }

    v132 = v13;
    *&v133 = *v134;
    *(&v133 + 7) = *&v134[7];
    HIBYTE(v133) = v14;
    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }
  }

  if ((a2 - 1) > 3)
  {
    v15 = "";
  }

  else
  {
    v15 = off_1E80FCA08[(a2 - 1)];
  }

  std::string::basic_string[abi:ne200100]<0>(&v131, v15);
  v17 = &v132;
  if (v133 < 0)
  {
    v17 = v132;
  }

  if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v131;
  }

  else
  {
    v18 = v131.__r_.__value_.__r.__words[0];
  }

  siri::dialogengine::Log::Info("Filtering dialog%s according to response mode '%s'", v16, v17, v18);
  if ((*(*a1 + 16))(a1))
  {
    if (a3)
    {
      v20 = "true";
    }

    else
    {
      v20 = "false";
    }

    std::string::basic_string[abi:ne200100]<0>(v134, v20);
    if (v135 >= 0)
    {
      v22 = v134;
    }

    else
    {
      v22 = *v134;
    }

    siri::dialogengine::Log::Info("alwaysDisplayDialog = %s", v21, v22);
    if (v135 < 0)
    {
      operator delete(*v134);
    }

    if (a4)
    {
      v23 = "true";
    }

    else
    {
      v23 = "false";
    }

    std::string::basic_string[abi:ne200100]<0>(v134, v23);
    if (v135 >= 0)
    {
      v25 = v134;
    }

    else
    {
      v25 = *v134;
    }

    siri::dialogengine::Log::Info("printSupportingDialogInDisplayModes = %s", v24, v25);
    if (v135 < 0)
    {
      operator delete(*v134);
    }

    if (a5)
    {
      v26 = "true";
    }

    else
    {
      v26 = "false";
    }

    std::string::basic_string[abi:ne200100]<0>(v134, v26);
    if (v135 >= 0)
    {
      v28 = v134;
    }

    else
    {
      v28 = *v134;
    }

    siri::dialogengine::Log::Info("containsVisual = %s", v27, v28);
    if (v135 < 0)
    {
      operator delete(*v134);
    }

    v29 = 0;
    v30 = a5 ^ 1 | a3;
    v31 = v30 | a4;
    while (1)
    {
      if (v29 >= (*(*a1 + 16))(a1))
      {
        (*(*a1 + 152))(a1);
        v82 = &v132;
        if (v133 < 0)
        {
          v82 = v132;
        }

        siri::dialogengine::Log::Info("Done filtering dialog%s", v81, v82);
        if ((*(*a1 + 16))(a1))
        {
          for (i = 0; i < (*(*a1 + 16))(a1); ++i)
          {
            (*(*a1 + 24))(v134, a1, i);
            if (v135 >= 0)
            {
              v85 = v134;
            }

            else
            {
              v85 = *v134;
            }

            (*(*a1 + 32))(v129, a1, i);
            if (v130 >= 0)
            {
              v86 = v129;
            }

            else
            {
              v86 = v129[0];
            }

            (*(*a1 + 40))(v127, a1, i);
            if (v128 >= 0)
            {
              v87 = v127;
            }

            else
            {
              v87 = v127[0];
            }

            (*(*a1 + 48))(v125, a1, i);
            if (v126 >= 0)
            {
              v88 = v125;
            }

            else
            {
              v88 = v125[0];
            }

            (*(*a1 + 56))(v123, a1, i);
            if (v124 >= 0)
            {
              v89 = v123;
            }

            else
            {
              v89 = v123[0];
            }

            v90 = (*(*a1 + 64))(a1, i);
            v91 = "false";
            if (v90)
            {
              v91 = "true";
            }

            if ((v90 & 0x100) != 0)
            {
              v92 = v91;
            }

            else
            {
              v92 = "unset";
            }

            std::string::basic_string[abi:ne200100]<0>(v121, v92);
            if (v122 >= 0)
            {
              v93 = v121;
            }

            else
            {
              v93 = v121[0];
            }

            v94 = (*(*a1 + 72))(a1, i);
            v95 = "false";
            if (v94)
            {
              v95 = "true";
            }

            if ((v94 & 0x100) != 0)
            {
              v96 = v95;
            }

            else
            {
              v96 = "unset";
            }

            std::string::basic_string[abi:ne200100]<0>(v119, v96);
            if (v120 >= 0)
            {
              v97 = v119;
            }

            else
            {
              v97 = v119[0];
            }

            (*(*a1 + 80))(v117, a1, i);
            v109 = v87;
            v110 = v86;
            if (v118 >= 0)
            {
              v98 = v117;
            }

            else
            {
              v98 = v117[0];
            }

            (*(*a1 + 88))(v115, a1, i);
            v107 = v88;
            v108 = v85;
            if (v116 >= 0)
            {
              v99 = v115;
            }

            else
            {
              v99 = v115[0];
            }

            (*(*a1 + 96))(v113, a1, i);
            v100 = v114;
            v101 = v113[0];
            (*(*a1 + 104))(__p, a1, i);
            v103 = v113;
            if (v100 < 0)
            {
              v103 = v101;
            }

            v104 = __p;
            if (v112 < 0)
            {
              v104 = __p[0];
            }

            siri::dialogengine::Log::Info("Dialog ID: '%s'\nFull print: '%s'\nFull speak: '%s'\nSupporting print: '%s'\nSupporting speak: '%s'\nspokenOnly: %s\nprintOnly: %s\nRedacted full print: '%s'\nRedacted full speak: '%s'\nRedacted supporting print: '%s'\nRedacted supporting speak: '%s'", v102, v108, v110, v109, v107, v89, v93, v97, v98, v99, v103, v104);
            if (v112 < 0)
            {
              operator delete(__p[0]);
            }

            if (v114 < 0)
            {
              operator delete(v113[0]);
            }

            if (v116 < 0)
            {
              operator delete(v115[0]);
            }

            if (v118 < 0)
            {
              operator delete(v117[0]);
            }

            if (v120 < 0)
            {
              operator delete(v119[0]);
            }

            if (v122 < 0)
            {
              operator delete(v121[0]);
            }

            if (v124 < 0)
            {
              operator delete(v123[0]);
            }

            if (v126 < 0)
            {
              operator delete(v125[0]);
            }

            if (v128 < 0)
            {
              operator delete(v127[0]);
            }

            if (v130 < 0)
            {
              operator delete(v129[0]);
            }

            if (v135 < 0)
            {
              operator delete(*v134);
            }
          }
        }

        else
        {
          siri::dialogengine::Log::Info("All dialog was removed", v83);
        }

        goto LABEL_204;
      }

      if (a2 <= 2)
      {
        if (a2 == 1)
        {
          (*(*a1 + 120))(a1, v29);
          v54 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
          v55 = v131.__r_.__value_.__r.__words[0];
          (*(*a1 + 24))(v134, a1, v29);
          if (v54 >= 0)
          {
            v57 = &v131;
          }

          else
          {
            v57 = v55;
          }

          if (v135 >= 0)
          {
            v58 = v134;
          }

          else
          {
            v58 = *v134;
          }

          siri::dialogengine::Log::Info("Response mode '%s' filtering removed SUPPORTING dialog with id '%s'", v56, v57, v58);
          if (v135 < 0)
          {
            operator delete(*v134);
          }

          (*(*a1 + 136))(a1, v29, 1);
          v59 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
          v60 = v131.__r_.__value_.__r.__words[0];
          (*(*a1 + 24))(v134, a1, v29);
          if (v59 >= 0)
          {
            v62 = &v131;
          }

          else
          {
            v62 = v60;
          }

          if (v135 >= 0)
          {
            v63 = v134;
          }

          else
          {
            v63 = *v134;
          }

          siri::dialogengine::Log::Info("Response mode '%s' filtering disallowed printing dialog with id '%s' due to mode (set spokenOnly = true)", v61, v62, v63);
        }

        else
        {
          if (a2 != 2)
          {
            goto LABEL_80;
          }

          (*(*a1 + 120))(a1, v29);
          v33 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
          v34 = v131.__r_.__value_.__r.__words[0];
          (*(*a1 + 24))(v134, a1, v29);
          if (v33 >= 0)
          {
            v36 = &v131;
          }

          else
          {
            v36 = v34;
          }

          if (v135 >= 0)
          {
            v37 = v134;
          }

          else
          {
            v37 = *v134;
          }

          siri::dialogengine::Log::Info("Response mode '%s' filtering removed SUPPORTING dialog with id '%s'", v35, v36, v37);
          if (v135 < 0)
          {
            operator delete(*v134);
            if (!v30)
            {
              goto LABEL_130;
            }
          }

          else if (!v30)
          {
            goto LABEL_130;
          }

          (*(*a1 + 136))(a1, v29, 0);
          v74 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
          v75 = v131.__r_.__value_.__r.__words[0];
          (*(*a1 + 24))(v134, a1, v29);
          if (v74 >= 0)
          {
            v77 = &v131;
          }

          else
          {
            v77 = v75;
          }

          if (v135 >= 0)
          {
            v78 = v134;
          }

          else
          {
            v78 = *v134;
          }

          siri::dialogengine::Log::Info("Response mode '%s' filtering allowed printing dialog with id '%s' due to user setting (set spokenOnly = false)", v76, v77, v78);
        }

        goto LABEL_128;
      }

      if (a2 == 3)
      {
        (*(*a1 + 112))(a1, v29);
        v64 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
        v65 = v131.__r_.__value_.__r.__words[0];
        (*(*a1 + 24))(v134, a1, v29);
        if (v64 >= 0)
        {
          v67 = &v131;
        }

        else
        {
          v67 = v65;
        }

        if (v135 >= 0)
        {
          v68 = v134;
        }

        else
        {
          v68 = *v134;
        }

        siri::dialogengine::Log::Info("Response mode '%s' filtering removed FULL dialog with id '%s'", v66, v67, v68);
        if (v135 < 0)
        {
          operator delete(*v134);
          if (!v31)
          {
            goto LABEL_130;
          }
        }

        else if (!v31)
        {
          goto LABEL_130;
        }

        (*(*a1 + 136))(a1, v29, 0);
        v79 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
        v80 = v131.__r_.__value_.__r.__words[0];
        (*(*a1 + 24))(v134, a1, v29);
        if (v79 >= 0)
        {
          v52 = &v131;
        }

        else
        {
          v52 = v80;
        }

        if (v135 >= 0)
        {
          v53 = v134;
        }

        else
        {
          v53 = *v134;
        }
      }

      else
      {
        if (a2 != 4)
        {
LABEL_80:
          siri::dialogengine::Log::Error("Unrecognized response mode: %d", v32, a2);
          goto LABEL_130;
        }

        v38 = *a1;
        if (!v31)
        {
          (*(v38 + 144))(a1, v29);
          v69 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
          v70 = v131.__r_.__value_.__r.__words[0];
          (*(*a1 + 24))(v134, a1, v29);
          if (v69 >= 0)
          {
            v72 = &v131;
          }

          else
          {
            v72 = v70;
          }

          if (v135 >= 0)
          {
            v73 = v134;
          }

          else
          {
            v73 = *v134;
          }

          siri::dialogengine::Log::Info("Response mode '%s' filtering completely removed dialog with id '%s'", v71, v72, v73);
          goto LABEL_128;
        }

        (*(v38 + 112))(a1, v29);
        v39 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
        v40 = v131.__r_.__value_.__r.__words[0];
        (*(*a1 + 24))(v134, a1, v29);
        if (v39 >= 0)
        {
          v42 = &v131;
        }

        else
        {
          v42 = v40;
        }

        if (v135 >= 0)
        {
          v43 = v134;
        }

        else
        {
          v43 = *v134;
        }

        siri::dialogengine::Log::Info("Response mode '%s' filtering removed FULL dialog with id '%s' due to pattern setting, user setting and/or lack of visual", v41, v42, v43);
        if (v135 < 0)
        {
          operator delete(*v134);
        }

        (*(*a1 + 128))(a1, v29, 1);
        v44 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
        v45 = v131.__r_.__value_.__r.__words[0];
        (*(*a1 + 24))(v134, a1, v29);
        if (v44 >= 0)
        {
          v47 = &v131;
        }

        else
        {
          v47 = v45;
        }

        if (v135 >= 0)
        {
          v48 = v134;
        }

        else
        {
          v48 = *v134;
        }

        siri::dialogengine::Log::Info("Response mode '%s' filtering disallowed speaking for dialog with id '%s' due to pattern setting, user setting and/or lack of visual (set printOnly = true)", v46, v47, v48);
        if (v135 < 0)
        {
          operator delete(*v134);
        }

        (*(*a1 + 136))(a1, v29, 0);
        v49 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
        v50 = v131.__r_.__value_.__r.__words[0];
        (*(*a1 + 24))(v134, a1, v29);
        if (v49 >= 0)
        {
          v52 = &v131;
        }

        else
        {
          v52 = v50;
        }

        if (v135 >= 0)
        {
          v53 = v134;
        }

        else
        {
          v53 = *v134;
        }
      }

      siri::dialogengine::Log::Info("Response mode '%s' filtering allowed printing dialog with id '%s' due to pattern setting, user setting and/or lack of visual (set spokenOnly = false)", v51, v52, v53);
LABEL_128:
      if (v135 < 0)
      {
        operator delete(*v134);
      }

LABEL_130:
      ++v29;
    }
  }

  v105 = &v132;
  if (v133 < 0)
  {
    v105 = v132;
  }

  siri::dialogengine::Log::Info("There is no dialog to filter%s", v19, v105);
LABEL_204:
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133) < 0)
  {
    operator delete(v132);
  }

  v106 = *MEMORY[0x1E69E9840];
}

void sub_1BFC06DAC(_Unwind_Exception *a1)
{
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  _Unwind_Resume(a1);
}

uint64_t siri::dialogengine::CATResultDialogFilterAdapter::size(siri::dialogengine::CATResultDialogFilterAdapter *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 speak];
  v3 = [v2 count];

  return v3;
}

uint64_t siri::dialogengine::CATResultDialogFilterAdapter::ClearSupportingDialog(id *this, uint64_t a2)
{
  [this[5] setObject:&stru_1F3F22360 atIndexedSubscript:a2];
  [this[6] setObject:&stru_1F3F22360 atIndexedSubscript:a2];
  [this[12] setObject:&stru_1F3F22360 atIndexedSubscript:a2];
  v4 = this[13];

  return [v4 setObject:&stru_1F3F22360 atIndexedSubscript:a2];
}

void siri::dialogengine::CATResultDialogFilterAdapter::GetId(id *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = [this[2] objectAtIndexedSubscript:a2];
  std::string::basic_string[abi:ne200100]<0>(a3, [v4 UTF8String]);
}

uint64_t siri::dialogengine::CATResultDialogFilterAdapter::RemoveMarkedDialogs(uint64_t this)
{
  if (*(this + 8))
  {
    v1 = this;
    this = [*(this + 112) count];
    if (this)
    {
      [*(v1 + 16) removeObjectsAtIndexes:*(v1 + 112)];
      [*(v1 + 24) removeObjectsAtIndexes:*(v1 + 112)];
      [*(v1 + 32) removeObjectsAtIndexes:*(v1 + 112)];
      [*(v1 + 40) removeObjectsAtIndexes:*(v1 + 112)];
      [*(v1 + 48) removeObjectsAtIndexes:*(v1 + 112)];
      [*(v1 + 56) removeObjectsAtIndexes:*(v1 + 112)];
      [*(v1 + 64) removeObjectsAtIndexes:*(v1 + 112)];
      [*(v1 + 72) removeObjectsAtIndexes:*(v1 + 112)];
      v2 = *(v1 + 112);

      return [v2 removeAllIndexes];
    }
  }

  return this;
}

void siri::dialogengine::CATResultDialogFilterAdapter::GetFullPrint(id *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = [this[4] objectAtIndexedSubscript:a2];
  std::string::basic_string[abi:ne200100]<0>(a3, [v4 UTF8String]);
}

void siri::dialogengine::CATResultDialogFilterAdapter::GetFullSpeak(id *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = [this[3] objectAtIndexedSubscript:a2];
  std::string::basic_string[abi:ne200100]<0>(a3, [v4 UTF8String]);
}

void siri::dialogengine::CATResultDialogFilterAdapter::GetSupportingPrint(id *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = [this[6] objectAtIndexedSubscript:a2];
  std::string::basic_string[abi:ne200100]<0>(a3, [v4 UTF8String]);
}

void siri::dialogengine::CATResultDialogFilterAdapter::GetSupportingSpeak(id *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = [this[5] objectAtIndexedSubscript:a2];
  std::string::basic_string[abi:ne200100]<0>(a3, [v4 UTF8String]);
}

uint64_t siri::dialogengine::CATResultDialogFilterAdapter::GetSpokenOnly(id *this, uint64_t a2)
{
  v4 = [this[9] objectAtIndexedSubscript:a2];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [this[8] objectAtIndexedSubscript:a2];
    v7 = [v6 BOOLValue];

    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  return v7 | (v8 << 8);
}

uint64_t siri::dialogengine::CATResultDialogFilterAdapter::GetPrintOnly(id *this, uint64_t a2)
{
  v2 = [this[7] objectAtIndexedSubscript:a2];
  v3 = [v2 BOOLValue];

  return v3 | 0x100u;
}

void siri::dialogengine::CATResultDialogFilterAdapter::GetRedactedFullPrint(id *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = [this[11] objectAtIndexedSubscript:a2];
  std::string::basic_string[abi:ne200100]<0>(a3, [v4 UTF8String]);
}

void siri::dialogengine::CATResultDialogFilterAdapter::GetRedactedFullSpeak(id *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = [this[10] objectAtIndexedSubscript:a2];
  std::string::basic_string[abi:ne200100]<0>(a3, [v4 UTF8String]);
}

void siri::dialogengine::CATResultDialogFilterAdapter::GetRedactedSupportingPrint(id *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = [this[13] objectAtIndexedSubscript:a2];
  std::string::basic_string[abi:ne200100]<0>(a3, [v4 UTF8String]);
}

void siri::dialogengine::CATResultDialogFilterAdapter::GetRedactedSupportingSpeak(id *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = [this[12] objectAtIndexedSubscript:a2];
  std::string::basic_string[abi:ne200100]<0>(a3, [v4 UTF8String]);
}

void siri::dialogengine::Context::SetRequestInfo(siri::dialogengine::Context *this, const siri::dialogengine::RequestInfo *a2)
{
  *(this + 2) = *a2;
  v4 = (this + 8);
  if ((this + 8) != a2)
  {
    std::vector<siri::dialogengine::UpdatableDir>::__assign_with_size[abi:ne200100]<siri::dialogengine::UpdatableDir*,siri::dialogengine::UpdatableDir*>(this + 16, *(a2 + 1), *(a2 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - *(a2 + 1)) >> 5));
  }

  std::string::operator=((this + 40), (a2 + 32));
  std::string::operator=((this + 64), (a2 + 56));
  std::string::operator=((this + 88), (a2 + 80));
  std::string::operator=((this + 112), (a2 + 104));
  std::string::operator=((this + 136), (a2 + 128));
  *(this + 20) = *(a2 + 19);
  if (v4 == a2)
  {
    std::string::operator=(this + 8, (a2 + 184));
    std::string::operator=(this + 9, (a2 + 208));
    std::string::operator=(this + 11, (a2 + 256));
    v6 = *(a2 + 72);
    *(this + 36) = *(a2 + 35);
    *(this + 74) = v6;
  }

  else
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 21, *(a2 + 20), a2 + 21);
    std::string::operator=(this + 8, (a2 + 184));
    std::string::operator=(this + 9, (a2 + 208));
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(this + 10, *(a2 + 29), *(a2 + 30), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 30) - *(a2 + 29)) >> 3));
    std::string::operator=(this + 11, (a2 + 256));
    v5 = *(a2 + 35);
    *(this + 74) = *(a2 + 72);
    *(this + 36) = v5;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(this + 38, *(a2 + 37), a2 + 38);
  }

  std::string::operator=((this + 328), (a2 + 320));
  std::string::operator=((this + 352), (a2 + 344));
  std::string::operator=((this + 376), (a2 + 368));
  std::string::operator=((this + 400), (a2 + 392));
  if (v4 != a2)
  {
    std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>((this + 424), *(a2 + 52), *(a2 + 53), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 53) - *(a2 + 52)) >> 4));
  }

  std::string::operator=((this + 448), (a2 + 440));
  std::string::operator=((this + 472), (a2 + 464));
  *(this + 496) = *(a2 + 488);

  siri::dialogengine::Context::CheckTemplateDirs(this);
}

std::string *std::__copy_impl::operator()[abi:ne200100]<siri::dialogengine::UpdatableDir *,siri::dialogengine::UpdatableDir *,siri::dialogengine::UpdatableDir *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      if (this != v5)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&this[2], v5[2].__r_.__value_.__l.__data_, v5[2].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v5[2].__r_.__value_.__l.__size_ - v5[2].__r_.__value_.__r.__words[0]) >> 3));
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&this[3], v5[3].__r_.__value_.__l.__data_, v5[3].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v5[3].__r_.__value_.__l.__size_ - v5[3].__r_.__value_.__r.__words[0]) >> 3));
      }

      this += 4;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return this;
}

void std::vector<std::pair<std::string,std::string>>::__assign_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(std::vector<std::pair<std::string, std::string>> *this, std::string *__str, std::string *a3, unint64_t a4)
{
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 4) < a4)
  {
    std::vector<siri::dialogengine::DatabaseField>::__vdeallocate(this);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((this->__end_cap_.__value_ - this->__begin_) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      std::vector<siri::dialogengine::DatabaseField>::__vallocate[abi:ne200100](this, v10);
    }

    std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
  }

  v11 = this->__end_ - begin;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<siri::dialogengine::DatabaseField *,siri::dialogengine::DatabaseField *,siri::dialogengine::DatabaseField *>(__str, a3, &begin->first);
    for (i = this->__end_; i != v12; std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(i))
    {
      --i;
    }

    this->__end_ = v12;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<siri::dialogengine::DatabaseField *,siri::dialogengine::DatabaseField *,siri::dialogengine::DatabaseField *>(__str, (__str + v11), &begin->first);
    this->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(this, (__str + v11), a3, &this->__end_->first);
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<siri::dialogengine::DatabaseField *,siri::dialogengine::DatabaseField *,siri::dialogengine::DatabaseField *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      this += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return this;
}

id siri::dialogengine::DialogStatePatternToNSDictionary(siri::dialogengine *this, const siri::dialogengine::DialogStatePattern *a2)
{
  v3 = objc_opt_new();
  if (*(this + 2))
  {
    v4 = *this;
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  [v3 setObject:v5 forKey:@"count"];

  v6 = *(this + 2);
  if ((*(this + 6) & 1) == 0)
  {
    v6 = 0.0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [v3 setObject:v7 forKey:@"timestamp"];

  return v3;
}

SnippetUI::CustomElement *google::protobuf::Arena::CreateMaybeMessage<SnippetUI::CustomElement>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::internal::arena_destruct_object<SnippetUI::CustomElement>);
  SnippetUI::CustomElement::CustomElement(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

SnippetUI::CustomElement *SnippetUI::CustomElement::CustomElement(SnippetUI::CustomElement *this)
{
  *this = &unk_1F3F169B8;
  *(this + 1) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (atomic_load_explicit(scc_info_CustomElement_CustomElement_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_CustomElement_CustomElement_2eproto);
  }

  *(this + 5) = 0;
  return this;
}

void sub_1BFC07C94(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedField<int>::~RepeatedField(v1 + 16);
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

google::protobuf::internal *SnippetUI::CustomElement::_InternalParse(atomic_ullong **this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v14 = a2;
  while (1)
  {
    while (1)
    {
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v14, *(a3 + 23)))
      {
        return v14;
      }

      TagFallback = (v14 + 1);
      LODWORD(v7) = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = (v7 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        TagFallback = (v14 + 2);
LABEL_6:
        v14 = TagFallback;
        goto LABEL_7;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v14, v7);
      v14 = TagFallback;
      if (!TagFallback)
      {
        return TagFallback;
      }

      LODWORD(v7) = v12;
LABEL_7:
      if (v7 >> 3 == 2)
      {
        break;
      }

      if (v7 >> 3 != 1 || v7 != 10)
      {
LABEL_12:
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 20) = v7 - 1;
          return TagFallback;
        }

        v10 = google::protobuf::internal::UnknownFieldParse(v7, this + 1, TagFallback, a3);
        goto LABEL_22;
      }

      v11 = this[5];
      if (!v11)
      {
        v11 = google::protobuf::Arena::CreateMaybeMessage<SnippetUI::CustomCanvas>(0);
        this[5] = v11;
        TagFallback = v14;
      }

      v10 = google::protobuf::internal::ParseContext::ParseMessage<SnippetUI::CustomCanvas>(a3, v11, TagFallback);
LABEL_22:
      v14 = v10;
      if (!v10)
      {
        return 0;
      }
    }

    if (v7 == 18)
    {
      v10 = google::protobuf::internal::PackedInt32Parser((this + 2), TagFallback, a3, v5);
      goto LABEL_22;
    }

    if (v7 != 16)
    {
      goto LABEL_12;
    }

    v15 = 0;
    v14 = google::protobuf::internal::VarintParse<unsigned long long>(TagFallback, &v15);
    if (!v14)
    {
      return 0;
    }

    google::protobuf::RepeatedField<int>::Add(this + 4, &v15);
  }
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>>>::__erase_unique<std::string>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>>>::find<std::string>(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>>>::__remove_node_pointer(a1, v3);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<siri::dialogengine::DialogStateUseCase>>,0>((v4 + 4));

    operator delete(v4);
  }
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::dialogengine::Variable>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void SnippetUI::CustomElement::MergeFrom(SnippetUI::CustomElement *this, const SnippetUI::CustomElement *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/engine/visual/CustomElement.pb.cc", 298);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArena::DoMergeFrom(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL));
  }

  google::protobuf::RepeatedField<int>::MergeFrom(this + 4, a2 + 4);
  if (a2 != &SnippetUI::_CustomElement_default_instance_)
  {
    v6 = *(a2 + 5);
    if (v6)
    {
      v7 = *(this + 5);
      if (!v7)
      {
        v7 = google::protobuf::Arena::CreateMaybeMessage<SnippetUI::CustomCanvas>(0);
        *(this + 5) = v7;
        v6 = *(a2 + 5);
      }

      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = &SnippetUI::_CustomCanvas_default_instance_;
      }

      SnippetUI::CustomCanvas::MergeFrom(v7, v8);
    }
  }
}

void sub_1BFC08354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void SnippetUI::Button_Container_ButtonItem::Clear(SnippetUI::Button_Container_ButtonItem *this)
{
  SnippetUI::Button_Container_ButtonItem::clear_value(this);
  v3 = *(this + 8);
  v2 = (this + 8);
  if (v3)
  {

    google::protobuf::internal::InternalMetadataWithArena::DoClear(v2);
  }
}

void SnippetUI::CustomElement::~CustomElement(SnippetUI::CustomElement *this)
{
  *this = &unk_1F3F169B8;
  if (this != &SnippetUI::_CustomElement_default_instance_)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  google::protobuf::RepeatedField<int>::~RepeatedField(this + 16);
  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::CustomElement::~CustomElement(this);

  JUMPOUT(0x1C68D4E80);
}

void google::protobuf::util::anonymous namespace::DescriptorPoolTypeResolver::~DescriptorPoolTypeResolver(void **this)
{
  *this = &unk_1F3F0F980;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F3F0F980;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1C68D4E80);
}

void google::protobuf::util::anonymous namespace::DescriptorPoolTypeResolver::ResolveMessageType(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X2>, google::protobuf::util::Status *a4@<X8>)
{
  v95 = *MEMORY[0x1E69E9840];
  v88[0] = 0;
  v88[1] = 0;
  v89 = 0;
  if (v85)
  {
    google::protobuf::util::Status::Status(a4, &v85);
    goto LABEL_168;
  }

  MessageTypeByName = google::protobuf::DescriptorPool::FindMessageTypeByName(*(a1 + 32), v88);
  if (MessageTypeByName)
  {
    google::protobuf::Type::Clear(a3);
    v7 = *(a3 + 8);
    if (v7)
    {
      v7 = *((v7 & 0xFFFFFFFFFFFFFFFELL) + 24);
    }

    v8 = *(a3 + 88);
    if (v8 == &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstance((a3 + 88), v7, *(MessageTypeByName + 8));
    }

    else
    {
      std::string::operator=(v8, *(MessageTypeByName + 8));
    }

    v82 = a4;
    if (*(MessageTypeByName + 104) >= 1)
    {
      v10 = 0;
      v11 = 0;
      v83 = MessageTypeByName;
      while (1)
      {
        v12 = *(MessageTypeByName + 40);
        v13 = *(a3 + 32);
        if (!v13)
        {
          break;
        }

        v14 = *(a3 + 24);
        v15 = *v13;
        if (v14 >= *v13)
        {
          if (v15 == *(a3 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16), v15 + 1);
            v13 = *(a3 + 32);
            v15 = *v13;
          }

          *v13 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Field>(*(a3 + 16));
          v17 = *(a3 + 24);
          v18 = *(a3 + 32) + 8 * v17;
          *(a3 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          goto LABEL_20;
        }

        *(a3 + 24) = v14 + 1;
        v16 = *&v13[2 * v14 + 2];
LABEL_20:
        v19 = v12 + v10;
        v20 = *(v12 + v10 + 48);
        if (v20)
        {
          v92 = (v12 + v10);
          v93 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v20, memory_order_acquire) != -1)
          {
            v94.__r_.__value_.__r.__words[0] = &v93;
            v94.__r_.__value_.__l.__size_ = &v92;
            __dst.__r_.__value_.__r.__words[0] = &v94;
            std::__call_once(v20, &__dst, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
          }
        }

        *(v16 + 18) = *(v19 + 56);
        v21 = *(v19 + 60);
        if ((v21 - 1) <= 2)
        {
          *(v16 + 19) = v21;
        }

        *(v16 + 20) = *(v12 + v10 + 68);
        v22 = *(v16 + 1);
        if (v22)
        {
          v22 = *((v22 & 0xFFFFFFFFFFFFFFFELL) + 24);
        }

        v23 = *(v16 + 5);
        if (v23 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstance(v16 + 5, v22, *(v12 + v10));
        }

        else
        {
          std::string::operator=(v23, *(v12 + v10));
        }

        v24 = *(v16 + 1);
        if (v24)
        {
          v24 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 24);
        }

        v25 = *(v16 + 7);
        if (v25 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstance(v16 + 7, v24, *(v12 + v10 + 32));
        }

        else
        {
          std::string::operator=(v25, *(v12 + v10 + 32));
        }

        if (*(v12 + v10 + 64) == 1)
        {
          v28 = *(v19 + 48);
          if (v28)
          {
            v91 = v12 + v10;
            v92 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v28, memory_order_acquire) != -1)
            {
              v94.__r_.__value_.__r.__words[0] = &v92;
              v94.__r_.__value_.__l.__size_ = &v91;
              v93 = &v94;
              std::__call_once(v28, &v93, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
            }
          }

          v29 = *(v19 + 56);
          v30 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[v29];
          if (v30 <= 5)
          {
            if (v30 > 2)
            {
              if (v30 == 3)
              {
                v39 = *(v12 + v10 + 144);
                v94.__r_.__value_.__r.__words[0] = &v94.__r_.__value_.__r.__words[2];
                v35 = google::protobuf::FastUInt32ToBufferLeft(v39, &v94.__r_.__value_.__s.__data_[16], v27);
                v36 = v35 - &v94.__r_.__value_.__r.__words[2];
                v94.__r_.__value_.__l.__size_ = v35 - &v94.__r_.__value_.__r.__words[2];
                if ((v35 - &v94.__r_.__value_.__r.__words[2]) > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_173;
                }

                v37 = v94.__r_.__value_.__r.__words[0];
                if (v36 >= 0x17)
                {
                  operator new();
                }
              }

              else
              {
                if (v30 != 4)
                {
                  google::protobuf::SimpleDtoa(*(v12 + v10 + 144), "", &__dst);
LABEL_83:
                  v44 = *(v16 + 1);
                  if (v44)
                  {
                    v44 = *((v44 & 0xFFFFFFFFFFFFFFFELL) + 24);
                  }

                  v45 = *(v16 + 8);
                  if (v45 == &google::protobuf::internal::fixed_address_empty_string)
                  {
                    google::protobuf::internal::ArenaStringPtr::CreateInstance(v16 + 8, v44, &__dst);
                  }

                  else
                  {
                    std::string::operator=(v45, &__dst);
                  }

                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_90;
                }

                v41 = *(v12 + v10 + 144);
                v94.__r_.__value_.__r.__words[0] = &v94.__r_.__value_.__r.__words[2];
                v35 = google::protobuf::FastUInt64ToBufferLeft(v41, &v94.__r_.__value_.__s.__data_[16], v27);
                v36 = v35 - &v94.__r_.__value_.__r.__words[2];
                v94.__r_.__value_.__l.__size_ = v35 - &v94.__r_.__value_.__r.__words[2];
                if ((v35 - &v94.__r_.__value_.__r.__words[2]) > 0x7FFFFFFFFFFFFFF7)
                {
LABEL_173:
                  std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
                }

                v37 = v94.__r_.__value_.__r.__words[0];
                if (v36 >= 0x17)
                {
                  operator new();
                }
              }

LABEL_69:
              *(&__dst.__r_.__value_.__s + 23) = v36;
              if (v35 != &v94.__r_.__value_.__r.__words[2])
              {
                memmove(&__dst, v37, v36);
              }

              __dst.__r_.__value_.__s.__data_[v36] = 0;
              goto LABEL_83;
            }

            if (v30 == 1)
            {
              v38 = *(v12 + v10 + 144);
              v94.__r_.__value_.__r.__words[0] = &v94.__r_.__value_.__r.__words[2];
              v35 = google::protobuf::FastInt32ToBufferLeft(v38, &v94.__r_.__value_.__s.__data_[16], v27);
              v36 = v35 - &v94.__r_.__value_.__r.__words[2];
              v94.__r_.__value_.__l.__size_ = v35 - &v94.__r_.__value_.__r.__words[2];
              if ((v35 - &v94.__r_.__value_.__r.__words[2]) > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_173;
              }

              v37 = v94.__r_.__value_.__r.__words[0];
              if (v36 >= 0x17)
              {
                operator new();
              }

              goto LABEL_69;
            }

            v31 = "";
            if (v30 == 2)
            {
              v34 = *(v12 + v10 + 144);
              v94.__r_.__value_.__r.__words[0] = &v94.__r_.__value_.__r.__words[2];
              v35 = google::protobuf::FastInt64ToBufferLeft(v34, &v94.__r_.__value_.__s.__data_[16], v27);
              v36 = v35 - &v94.__r_.__value_.__r.__words[2];
              v94.__r_.__value_.__l.__size_ = v35 - &v94.__r_.__value_.__r.__words[2];
              if ((v35 - &v94.__r_.__value_.__r.__words[2]) > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_173;
              }

              v37 = v94.__r_.__value_.__r.__words[0];
              if (v36 >= 0x17)
              {
                operator new();
              }

              goto LABEL_69;
            }

LABEL_58:
            std::string::basic_string[abi:ne200100]<0>(&__dst, v31);
            goto LABEL_83;
          }

          if (v30 <= 7)
          {
            if (v30 == 6)
            {
              google::protobuf::SimpleFtoa(*(v12 + v10 + 144), v26, &__dst);
              goto LABEL_83;
            }

            if (*(v12 + v10 + 144))
            {
              v31 = "true";
            }

            else
            {
              v31 = "false";
            }

            goto LABEL_58;
          }

          if (v30 == 8)
          {
            v40 = *google::protobuf::FieldDescriptor::default_value_enum((v12 + v10));
          }

          else
          {
            if (v30 != 9)
            {
              v31 = "";
              if (v30 == 10)
              {
                v32 = google::protobuf::internal::LogMessage::LogMessage(&v94, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/util/type_resolver_util.cc", 353);
                v33 = google::protobuf::internal::LogMessage::operator<<(v32, "Messages can't have default values!");
                google::protobuf::internal::LogFinisher::operator=(&v93, v33);
                google::protobuf::internal::LogMessage::~LogMessage(&v94.__r_.__value_.__l.__data_);
                v31 = "";
              }

              goto LABEL_58;
            }

            v42 = *(v19 + 48);
            if (v42)
            {
              v91 = v12 + v10;
              v92 = google::protobuf::FieldDescriptor::TypeOnceInit;
              if (atomic_load_explicit(v42, memory_order_acquire) != -1)
              {
                v94.__r_.__value_.__r.__words[0] = &v92;
                v94.__r_.__value_.__l.__size_ = &v91;
                v93 = &v94;
                std::__call_once(v42, &v93, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
              }

              LODWORD(v29) = *(v19 + 56);
            }

            v40 = *(v12 + v10 + 144);
            if (v29 == 12)
            {
              google::protobuf::CEscape(v40, v27, &__dst);
              goto LABEL_83;
            }
          }

          if (*(v40 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, *v40, *(v40 + 1));
          }

          else
          {
            v43 = *v40;
            __dst.__r_.__value_.__r.__words[2] = *(v40 + 2);
            *&__dst.__r_.__value_.__l.__data_ = v43;
          }

          goto LABEL_83;
        }

LABEL_90:
        v46 = *(v19 + 48);
        if (v46)
        {
          v92 = (v12 + v10);
          v93 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v46, memory_order_acquire) != -1)
          {
            v94.__r_.__value_.__r.__words[0] = &v93;
            v94.__r_.__value_.__l.__size_ = &v92;
            __dst.__r_.__value_.__r.__words[0] = &v94;
            std::__call_once(v46, &__dst, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
          }
        }

        v47 = *(v19 + 56);
        if (v47 == 11)
        {
          goto LABEL_99;
        }

        v48 = *(v19 + 48);
        if (v48)
        {
          v92 = (v12 + v10);
          v93 = google::protobuf::FieldDescriptor::TypeOnceInit;
          if (atomic_load_explicit(v48, memory_order_acquire) != -1)
          {
            v94.__r_.__value_.__r.__words[0] = &v93;
            v94.__r_.__value_.__l.__size_ = &v92;
            __dst.__r_.__value_.__r.__words[0] = &v94;
            std::__call_once(v48, &__dst, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
          }

          v47 = *(v19 + 56);
        }

        if (v47 == 10)
        {
LABEL_99:
          v49 = google::protobuf::FieldDescriptor::message_type((v12 + v10));
          if (*(a1 + 31) >= 0)
          {
            v50 = *(a1 + 31);
          }

          else
          {
            v50 = *(a1 + 16);
          }

          std::string::basic_string[abi:ne200100](&v94, v50 + 1);
          if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = &v94;
          }

          else
          {
            v51 = v94.__r_.__value_.__r.__words[0];
          }

          if (v50)
          {
            if (*(a1 + 31) >= 0)
            {
              v52 = (a1 + 8);
            }

            else
            {
              v52 = *(a1 + 8);
            }

            memmove(v51, v52, v50);
          }

          *(&v51->__r_.__value_.__l.__data_ + v50) = 47;
          v53 = *(v49 + 8);
          v54 = *(v53 + 23);
          if (v54 >= 0)
          {
            v55 = *(v49 + 8);
          }

          else
          {
            v55 = *v53;
          }

          if (v54 >= 0)
          {
            v56 = *(v53 + 23);
          }

          else
          {
            v56 = *(v53 + 8);
          }

          v57 = std::string::append(&v94, v55, v56);
          v58 = *&v57->__r_.__value_.__l.__data_;
          __dst.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
          *&__dst.__r_.__value_.__l.__data_ = v58;
          v57->__r_.__value_.__l.__size_ = 0;
          v57->__r_.__value_.__r.__words[2] = 0;
          v57->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          v59 = *(v16 + 1);
          if (v59)
          {
            v59 = *((v59 & 0xFFFFFFFFFFFFFFFELL) + 24);
          }

          v60 = *(v16 + 6);
          if (v60 != &google::protobuf::internal::fixed_address_empty_string)
          {
            goto LABEL_121;
          }
        }

        else
        {
          v61 = *(v19 + 48);
          if (v61)
          {
            v92 = (v12 + v10);
            v93 = google::protobuf::FieldDescriptor::TypeOnceInit;
            if (atomic_load_explicit(v61, memory_order_acquire) != -1)
            {
              v94.__r_.__value_.__r.__words[0] = &v93;
              v94.__r_.__value_.__l.__size_ = &v92;
              __dst.__r_.__value_.__r.__words[0] = &v94;
              std::__call_once(v61, &__dst, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
            }

            v47 = *(v19 + 56);
          }

          if (v47 != 14)
          {
            goto LABEL_153;
          }

          v62 = google::protobuf::FieldDescriptor::enum_type((v12 + v10));
          if (*(a1 + 31) >= 0)
          {
            v63 = *(a1 + 31);
          }

          else
          {
            v63 = *(a1 + 16);
          }

          std::string::basic_string[abi:ne200100](&v94, v63 + 1);
          if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v64 = &v94;
          }

          else
          {
            v64 = v94.__r_.__value_.__r.__words[0];
          }

          if (v63)
          {
            if (*(a1 + 31) >= 0)
            {
              v65 = (a1 + 8);
            }

            else
            {
              v65 = *(a1 + 8);
            }

            memmove(v64, v65, v63);
          }

          *(&v64->__r_.__value_.__l.__data_ + v63) = 47;
          v66 = *(v62 + 8);
          v67 = *(v66 + 23);
          if (v67 >= 0)
          {
            v68 = *(v62 + 8);
          }

          else
          {
            v68 = *v66;
          }

          if (v67 >= 0)
          {
            v69 = *(v66 + 23);
          }

          else
          {
            v69 = *(v66 + 8);
          }

          v70 = std::string::append(&v94, v68, v69);
          v71 = *&v70->__r_.__value_.__l.__data_;
          __dst.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
          *&__dst.__r_.__value_.__l.__data_ = v71;
          v70->__r_.__value_.__l.__size_ = 0;
          v70->__r_.__value_.__r.__words[2] = 0;
          v70->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          v59 = *(v16 + 1);
          if (v59)
          {
            v59 = *((v59 & 0xFFFFFFFFFFFFFFFELL) + 24);
          }

          v60 = *(v16 + 6);
          if (v60 != &google::protobuf::internal::fixed_address_empty_string)
          {
LABEL_121:
            std::string::operator=(v60, &__dst);
            goto LABEL_151;
          }
        }

        google::protobuf::internal::ArenaStringPtr::CreateInstance(v16 + 6, v59, &__dst);
LABEL_151:
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

LABEL_153:
        v72 = *(v12 + v10 + 88);
        if (v72)
        {
          *(v16 + 21) = 1 - 1431655765 * ((v72 - *(*(v72 + 16) + 48)) >> 4);
        }

        if (google::protobuf::FieldDescriptor::is_packed((v12 + v10)))
        {
          *(v16 + 88) = 1;
        }

        ++v11;
        MessageTypeByName = v83;
        v10 += 152;
        if (v11 >= *(v83 + 104))
        {
          goto LABEL_158;
        }
      }

      v15 = *(a3 + 28);
      goto LABEL_18;
    }

LABEL_158:
    if (*(MessageTypeByName + 108) >= 1)
    {
      v73 = 0;
      v74 = 0;
      do
      {
        google::protobuf::Type::add_oneofs(a3, *(*(MessageTypeByName + 48) + v73));
        ++v74;
        v73 += 48;
      }

      while (v74 < *(MessageTypeByName + 108));
    }

    v75 = *(a3 + 96);
    if (!v75)
    {
      v76 = *(a3 + 8);
      if (v76)
      {
        v76 = *((v76 & 0xFFFFFFFFFFFFFFFELL) + 24);
      }

      v75 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceContext>(v76);
      *(a3 + 96) = v75;
    }

    v77 = **(MessageTypeByName + 16);
    v80 = *(v75 + 2);
    v78 = v75 + 16;
    v79 = v80;
    if (v80 == &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v78, v77);
    }

    std::string::operator=(v79, v77);
    google::protobuf::util::Status::Status(v82);
  }

  else
  {
    std::operator+<char>();
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__dst, &v94, v9);
    google::protobuf::util::Status::Status(a4, 5, __dst.__r_.__value_.__r.__words[0], __dst.__r_.__value_.__l.__size_);
    if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v94.__r_.__value_.__l.__data_);
    }
  }

LABEL_168:
  if (v87 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88[0]);
  }

  v81 = *MEMORY[0x1E69E9840];
}