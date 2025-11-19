const char *SipImpuRank::stringForImpuType(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "undefined";
  }

  else
  {
    return off_1E876A610[a1];
  }
}

void std::vector<ImpuType>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<ImpuType>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

BOOL SipImpuRank::_setRanksFromString(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  a2[1] = *a2;
  v4 = *(a3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 8);
  }

  if (v4)
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    ims::tokenize(a3, &v61, 0x2Cu);
    v6 = v61;
    v7 = v62;
    if (v61 != v62)
    {
      while (*(v6 + 23) < 0)
      {
        v11 = v6[1];
        if (v11 <= 8)
        {
          if (v11 == 5)
          {
            if (**v6 == 1936877926 && *(*v6 + 4) == 116)
            {
LABEL_101:
              v17 = 10;
              goto LABEL_141;
            }
          }

          else
          {
            if (v11 == 6)
            {
              v18 = *v6;
LABEL_129:
              v38 = bswap64(*v18 | (*(v18 + 2) << 32));
              v39 = v38 >= 0x7365636F6E640000;
              v40 = v38 > 0x7365636F6E640000;
              v41 = !v39;
              if (v40 == v41)
              {
                v17 = 9;
                goto LABEL_141;
              }

              goto LABEL_133;
            }

            if (v11 == 7 && **v6 == 980182388 && *(*v6 + 3) == 1313099066)
            {
LABEL_57:
              v17 = 3;
              goto LABEL_141;
            }
          }
        }

        else if (v11 > 10)
        {
          if (v11 == 11)
          {
            if (**v6 == 0x6D6F644049534D49 && *(*v6 + 3) == 0x6E69616D6F644049)
            {
LABEL_125:
              v17 = 1;
              goto LABEL_141;
            }
          }

          else if (v11 == 16 && **v6 == 0x6568746F3A706973 && *(*v6 + 8) == 0x6E69616D6F644072)
          {
LABEL_65:
            v17 = 7;
            goto LABEL_141;
          }
        }

        else if (v11 == 9)
        {
          v30 = *v6;
          if (**v6 == 0x7067334049534D49 && *(*v6 + 8) == 112)
          {
LABEL_126:
            v17 = 2;
            goto LABEL_141;
          }

          if (*v30 == 0x6568746F3A6C6574 && *(v30 + 8) == 114)
          {
LABEL_139:
            v17 = 4;
            goto LABEL_141;
          }

          if (*v30 == 0x6568746F404E444DLL && *(v30 + 8) == 114)
          {
LABEL_140:
            v17 = 5;
            goto LABEL_141;
          }

          v34 = *v30;
          v35 = *(v30 + 8);
          if (v34 == 0x6568746F3A706973 && v35 == 114)
          {
LABEL_119:
            v17 = 8;
            goto LABEL_141;
          }
        }

        else
        {
          v12 = *v6;
          if (**v6 == 0x616D6F64404E444DLL && *(*v6 + 8) == 28265)
          {
LABEL_127:
            v17 = 0;
            goto LABEL_141;
          }

          v14 = *v12;
          v15 = *(v12 + 4);
          if (v14 == 0x68746F4049534D49 && v15 == 29285)
          {
LABEL_31:
            v17 = 6;
LABEL_141:
            v44 = a2[1];
            v43 = a2[2];
            if (v44 >= v43)
            {
              v46 = *a2;
              v47 = v44 - *a2;
              v48 = v47 >> 2;
              v49 = (v47 >> 2) + 1;
              if (v49 >> 62)
              {
                std::vector<ImpuType>::__throw_length_error[abi:ne200100]();
              }

              v50 = v43 - v46;
              if (v50 >> 1 > v49)
              {
                v49 = v50 >> 1;
              }

              v39 = v50 >= 0x7FFFFFFFFFFFFFFCLL;
              v51 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v39)
              {
                v51 = v49;
              }

              if (v51)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<ImpuType>>(a2, v51);
              }

              *(4 * v48) = v17;
              v45 = 4 * v48 + 4;
              memcpy(0, v46, v47);
              v52 = *a2;
              *a2 = 0;
              a2[1] = v45;
              a2[2] = 0;
              if (v52)
              {
                operator delete(v52);
              }
            }

            else
            {
              *v44 = v17;
              v45 = (v44 + 1);
            }

            a2[1] = v45;
            goto LABEL_153;
          }
        }

LABEL_133:
        std::string::basic_string[abi:ne200100]<0>(v59, "ims.util");
        v55[0] = 0;
        v58 = 0;
        v42 = ims::error(v59, v55);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "skipping unrecognized IMPU type: ", 33);
        *(v42 + 17) = 0;
        (*(*v42 + 32))(v42, v6);
        (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v42 + 17) = 0;
        if (v58 == 1 && v57 < 0)
        {
          operator delete(__p);
        }

        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

LABEL_153:
        v6 += 3;
        if (v6 == v7)
        {
          goto LABEL_154;
        }
      }

      v8 = *(v6 + 23);
      if (v8 > 8)
      {
        if (*(v6 + 23) > 0xAu)
        {
          if (v8 == 11)
          {
            if (*v6 == 0x6D6F644049534D49 && *(v6 + 3) == 0x6E69616D6F644049)
            {
              goto LABEL_125;
            }
          }

          else if (v8 == 16 && *v6 == 0x6568746F3A706973 && v6[1] == 0x6E69616D6F644072)
          {
            goto LABEL_65;
          }
        }

        else if (v8 == 9)
        {
          if (*v6 == 0x7067334049534D49 && *(v6 + 8) == 112)
          {
            goto LABEL_126;
          }

          if (*v6 == 0x6568746F3A6C6574 && *(v6 + 8) == 114)
          {
            goto LABEL_139;
          }

          if (*v6 == 0x6568746F404E444DLL && *(v6 + 8) == 114)
          {
            goto LABEL_140;
          }

          if (*v6 == 0x6568746F3A706973 && *(v6 + 8) == 114)
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (*v6 == 0x616D6F64404E444DLL && *(v6 + 4) == 28265)
          {
            goto LABEL_127;
          }

          if (*v6 == 0x68746F4049534D49 && *(v6 + 4) == 29285)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_133;
      }

      if (v8 == 5)
      {
        if (*v6 == 1936877926 && *(v6 + 4) == 116)
        {
          goto LABEL_101;
        }

        goto LABEL_133;
      }

      v18 = v6;
      if (v8 != 6)
      {
        if (v8 == 7 && *v6 == 980182388 && *(v6 + 3) == 1313099066)
        {
          goto LABEL_57;
        }

        goto LABEL_133;
      }

      goto LABEL_129;
    }

LABEL_154:
    v59[0] = &v61;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v59);
    v53 = *a2;
    v3 = a2[1];
  }

  else
  {
    v53 = v3;
  }

  return v53 != v3;
}

void sub_1E4E906EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, char *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  a20 = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

void SipImpuRank::setImpuRankFromString(uint64_t a1, uint64_t a2)
{
  if (!SipImpuRank::_setRanksFromString(a1, a1, a2))
  {
    v3 = 0;
    *(a1 + 8) = *a1;
    do
    {
      v4 = v3;
      std::vector<ImpuType>::push_back[abi:ne200100](a1, &v4);
      ++v3;
    }

    while (v3 != 12);
  }
}

void SipImpuRank::setEmergencyImpuRankFromString(uint64_t a1, uint64_t a2)
{
  if (!SipImpuRank::_setRanksFromString(a1, (a1 + 24), a2))
  {
    *(a1 + 32) = *(a1 + 24);
    v3 = 10;
    std::vector<ImpuType>::push_back[abi:ne200100]((a1 + 24), &v3);
  }
}

BOOL mdnMatch(uint64_t a1, std::string *a2)
{
  ims::chomp(a1, "+", 1);
  ims::chomp(a2, "+", 1);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v7 = size;
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (v5 != size)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = a2->__r_.__value_.__r.__words[0];
  if (v7 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2->__r_.__value_.__r.__words[0];
  }

  return memcmp(v8, v10, v5) == 0;
}

void SipImpuRank::preferredImpu(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, const void **a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v10 = 0;
    *a6 = 0;
    *(a6 + 8) = 0;
    v11 = 11;
    *(a6 + 16) = 0;
    while (1)
    {
      v86 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      *v61 = 0u;
      SipUri::SipUri(v61);
      if ((SipUri::fromString(v61, (v7 + 24 * v10)) & 1) == 0)
      {
        SipUri::~SipUri(v61);
        v12 = 11;
        goto LABEL_35;
      }

      v89 = 0;
      v90 = 0;
      v91 = 0;
      std::string::basic_string[abi:ne200100]<0>(&v89, "3gppnetwork.org");
      if (SipUri::isTelUri(v61))
      {
        if (SBYTE7(v73) < 0)
        {
          std::string::__init_copy_ctor_external(&v88, v72, *(&v72 + 1));
        }

        else
        {
          *&v88.__r_.__value_.__l.__data_ = v72;
          v88.__r_.__value_.__r.__words[2] = v73;
        }

        if (*(a5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v87, *a5, *(a5 + 8));
        }

        else
        {
          v87 = *a5;
        }

        v13 = mdnMatch(&v88, &v87);
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v88.__r_.__value_.__l.__data_);
        }

        if (v13)
        {
          v12 = 3;
        }

        else
        {
          v12 = 4;
        }

        goto LABEL_23;
      }

      if (!SipUri::isSipUri(v61))
      {
        v12 = 11;
        goto LABEL_23;
      }

      if (SBYTE7(v70) < 0)
      {
        std::string::__init_copy_ctor_external(&v88, v69, *(&v69 + 1));
      }

      else
      {
        *&v88.__r_.__value_.__l.__data_ = v69;
        v88.__r_.__value_.__r.__words[2] = v70;
      }

      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v87, *a5, *(a5 + 8));
      }

      else
      {
        v87 = *a5;
      }

      v22 = mdnMatch(&v88, &v87);
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v88.__r_.__value_.__l.__data_);
        if (v22)
        {
LABEL_58:
          if ((SBYTE7(v63) & 0x80u) == 0)
          {
            v23 = BYTE7(v63);
          }

          else
          {
            v23 = *(&v62 + 1);
          }

          v24 = *(a3 + 23);
          v25 = v24;
          if ((v24 & 0x80u) != 0)
          {
            v24 = *(a3 + 8);
          }

          if (v23 == v24)
          {
            if ((SBYTE7(v63) & 0x80u) == 0)
            {
              v26 = &v62;
            }

            else
            {
              v26 = v62;
            }

            v27 = *a3;
            if (v25 >= 0)
            {
              v28 = a3;
            }

            else
            {
              v28 = *a3;
            }

            if (!memcmp(v26, v28, v23))
            {
              v12 = 0;
            }

            else
            {
              v12 = 5;
            }
          }

          else
          {
            v12 = 5;
          }

          goto LABEL_23;
        }
      }

      else if (v22)
      {
        goto LABEL_58;
      }

      if ((SBYTE7(v70) & 0x80u) == 0)
      {
        v29 = BYTE7(v70);
      }

      else
      {
        v29 = *(&v69 + 1);
      }

      v30 = *(a4 + 23);
      v31 = v30;
      if (v30 < 0)
      {
        v30 = a4[1];
      }

      if (v29 == v30 && ((SBYTE7(v70) & 0x80u) == 0 ? (v32 = &v69) : (v32 = v69), (v33 = *a4, v31 >= 0) ? (v34 = a4) : (v34 = *a4), !memcmp(v32, v34, v29)))
      {
        v41 = *(a3 + 23);
        v42 = v41;
        if ((v41 & 0x80u) != 0)
        {
          v41 = *(a3 + 8);
        }

        if ((SBYTE7(v63) & 0x80u) == 0)
        {
          v43 = BYTE7(v63);
        }

        else
        {
          v43 = *(&v62 + 1);
        }

        if ((SBYTE7(v63) & 0x80u) == 0)
        {
          v44 = &v62;
        }

        else
        {
          v44 = v62;
        }

        if (v43 == v41 && (v42 >= 0 ? (v45 = a3) : (v45 = *a3), !memcmp(v44, v45, v43)))
        {
          v12 = 1;
        }

        else
        {
          __s = v44;
          if (v91 >= 0)
          {
            v46 = &v89;
          }

          else
          {
            v46 = v89;
          }

          if (v91 >= 0)
          {
            v47 = HIBYTE(v91);
          }

          else
          {
            v47 = v90;
          }

          if (v47)
          {
            if (v43 >= v47)
            {
              v48 = __s;
              v52 = &__s[v43];
              __c = *v46;
              do
              {
                if (v43 - v47 == -1)
                {
                  break;
                }

                v49 = memchr(v48, __c, v43 - v47 + 1);
                if (!v49)
                {
                  break;
                }

                v50 = v49;
                if (!memcmp(v49, v46, v47))
                {
                  if (v50 == v52 || v50 - __s == -1)
                  {
                    break;
                  }

                  goto LABEL_135;
                }

                v48 = v50 + 1;
                v43 = v52 - (v50 + 1);
              }

              while (v43 >= v47);
            }

            v12 = 6;
          }

          else
          {
LABEL_135:
            v12 = 2;
          }
        }
      }

      else
      {
        if ((SBYTE7(v63) & 0x80u) == 0)
        {
          v35 = BYTE7(v63);
        }

        else
        {
          v35 = *(&v62 + 1);
        }

        v36 = *(a3 + 23);
        v37 = v36;
        if ((v36 & 0x80u) != 0)
        {
          v36 = *(a3 + 8);
        }

        if (v35 == v36)
        {
          if ((SBYTE7(v63) & 0x80u) == 0)
          {
            v38 = &v62;
          }

          else
          {
            v38 = v62;
          }

          v39 = *a3;
          if (v37 >= 0)
          {
            v40 = a3;
          }

          else
          {
            v40 = *a3;
          }

          if (!memcmp(v38, v40, v35))
          {
            v12 = 7;
          }

          else
          {
            v12 = 8;
          }
        }

        else
        {
          v12 = 8;
        }
      }

LABEL_23:
      if (SHIBYTE(v91) < 0)
      {
        operator delete(v89);
      }

      SipUri::~SipUri(v61);
      if (v12 != 11)
      {
        v14 = a1[1] - *a1;
        if (v14)
        {
          v15 = 0;
          v16 = 0;
          v17 = v14 >> 2;
          do
          {
            v18 = *(*a1 + 4 * v15);
            if (v18 == v12)
            {
              goto LABEL_36;
            }

            if (v10 == 1)
            {
              if (v18 == 9)
              {
                goto LABEL_36;
              }
            }

            else if (!v10 && v18 == 10)
            {
              goto LABEL_36;
            }

            v15 = (v16 + 1);
            v16 = v15;
          }

          while (v17 > v15);
        }
      }

LABEL_35:
      v16 = 11;
LABEL_36:
      std::string::basic_string[abi:ne200100]<0>(v61, "ims.util");
      v57[0] = 0;
      v60 = 0;
      v19 = ims::debug(v61, v57);
      (*(*v19 + 32))(v19, *a2 + 24 * v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), " (", 2);
      *(v19 + 17) = 0;
      v20 = SipImpuRank::stringForImpuType(v12);
      LoggableString::LoggableString(&v89, v20);
      (*(*v19 + 40))(v19, &v89);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), ") has rank ", 11);
      *(v19 + 17) = 0;
      MEMORY[0x1E6923350](*(v19 + 8), v16);
      *(v19 + 17) = 0;
      (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v19 + 17) = 0;
      if (SHIBYTE(v91) < 0)
      {
        operator delete(v89);
      }

      if (v60 == 1 && v59 < 0)
      {
        operator delete(__p);
      }

      if (SBYTE7(v62) < 0)
      {
        operator delete(v61[0]);
      }

      v21 = *(a6 + 23);
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a6 + 8);
      }

      if (!v21 || v16 < v11)
      {
        std::string::operator=(a6, (*a2 + 24 * v10));
        v11 = v16;
      }

      ++v10;
      v7 = *a2;
      if (v10 >= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3))
      {
        return;
      }
    }
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
}

void sub_1E4E90F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

  if (*(v34 - 97) < 0)
  {
    operator delete(*(v34 - 120));
  }

  SipUri::~SipUri(&a28);
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(a1);
}

void SipImpuRank::logRanks(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v6 = *a3;
  if (a3[1] != *a3)
  {
    v8 = 0;
    while (!v8)
    {
      if (a4)
      {
        goto LABEL_7;
      }

LABEL_10:
      v12 = SipImpuRank::stringForImpuType(*(v6 + 4 * v8));
      LoggableString::LoggableString(__p, v12);
      (*(*a2 + 40))(a2, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      ++v8;
      v6 = *a3;
      if (v8 >= (a3[1] - *a3) >> 2)
      {
        goto LABEL_13;
      }
    }

    if (a4)
    {
      (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(a2 + 17) = 0;
LABEL_7:
      MEMORY[0x1E6923370](*(a2 + 8), v8);
      *(a2 + 17) = 0;
      v9 = *(a2 + 8);
      v10 = ": ";
      v11 = 2;
    }

    else
    {
      v9 = *(a2 + 8);
      v10 = ",";
      v11 = 1;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    *(a2 + 17) = 0;
    v6 = *a3;
    goto LABEL_10;
  }

LABEL_13:
  if (a4)
  {
    (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(a2 + 17) = 0;
  }
}

void sub_1E4E911B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E4E916C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

void XcapCallerIDManager::fetchOIP()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  XcapNodeSelector::XcapNodeSelector(v0);
}

void sub_1E4E91F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1E69235B0](v7, 0x10B2C409DA9FE99);
  XcapNodeSelector::~XcapNodeSelector(va);
  _Unwind_Resume(a1);
}

void ___ZN19XcapCallerIDManager8fetchOIPEU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1, uint64_t a2, bambi::XmlParser *a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  XcapDocumentOIP::XcapDocumentOIP(v10);
  if (((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    bambi::XmlParser::parseXml(a3, v10, v6, v7);
  }

  v8 = *(a1 + 32);
  ImsResult::ImsResult(v9, a2);
  (*(v8 + 16))(v8, v9, v10);
  ImsResult::~ImsResult(v9);
  bambi::XmlTreeItem::~XmlTreeItem(v10 + 1);
}

void sub_1E4E92024(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  ImsResult::~ImsResult(va);
  bambi::XmlTreeItem::~XmlTreeItem(va1);
  _Unwind_Resume(a1);
}

void XcapCallerIDManager::setOIP()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  XcapNodeSelector::XcapNodeSelector(v0);
}

void sub_1E4E921F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  MEMORY[0x1E69235B0](v26, 0x10B2C409DA9FE99);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  bambi::XmlTreeItem::~XmlTreeItem((v27 | 8));
  XcapNodeSelector::~XcapNodeSelector((v28 - 96));
  _Unwind_Resume(a1);
}

void ___ZN19XcapCallerIDManager6setOIPEbU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1, const ImsResult *a2)
{
  v2 = *(a1 + 32);
  ImsResult::ImsResult(v3, a2);
  (*(v2 + 16))(v2, v3, 0);
  ImsResult::~ImsResult(v3);
}

void sub_1E4E922C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void XcapCallerIDManager::fetchOIR()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  XcapNodeSelector::XcapNodeSelector(v0);
}

void sub_1E4E923DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1E69235B0](v7, 0x10B2C409DA9FE99);
  XcapNodeSelector::~XcapNodeSelector(va);
  _Unwind_Resume(a1);
}

void ___ZN19XcapCallerIDManager8fetchOIREU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1, uint64_t a2, bambi::XmlParser *a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  XcapDocumentOIR::XcapDocumentOIR(v10);
  if (((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    bambi::XmlParser::parseXml(a3, v10, v6, v7);
  }

  v8 = *(a1 + 32);
  ImsResult::ImsResult(v9, a2);
  (*(v8 + 16))(v8, v9, v10);
  ImsResult::~ImsResult(v9);
  bambi::XmlTreeItem::~XmlTreeItem(v10 + 1);
}

void sub_1E4E924E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  ImsResult::~ImsResult(va);
  bambi::XmlTreeItem::~XmlTreeItem(va1);
  _Unwind_Resume(a1);
}

void XcapCallerIDManager::setOIR()
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  XcapNodeSelector::XcapNodeSelector(v0);
}

void sub_1E4E926C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  MEMORY[0x1E69235B0](v26, 0x10B2C409DA9FE99);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  bambi::XmlTreeItem::~XmlTreeItem((v27 | 8));
  XcapNodeSelector::~XcapNodeSelector((v28 - 96));
  _Unwind_Resume(a1);
}

void ___ZN19XcapCallerIDManager6setOIREbbU13block_pointerFv9ImsResultPK16XcapDocumentBaseE_block_invoke(uint64_t a1, const ImsResult *a2)
{
  v2 = *(a1 + 32);
  ImsResult::ImsResult(v3, a2);
  (*(v2 + 16))(v2, v3, 0);
  ImsResult::~ImsResult(v3);
}

void sub_1E4E92788(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void XcapCallerIDManager::~XcapCallerIDManager(void **this)
{
  *this = &unk_1F5EC7B28;
  XcapConfig::~XcapConfig(this + 1);
}

{
  *this = &unk_1F5EC7B28;
  XcapConfig::~XcapConfig(this + 1);

  JUMPOUT(0x1E69235B0);
}

uint64_t SipSecurityAssociationPair::SipSecurityAssociationPair(uint64_t a1, uint64_t *a2, char a3, char a4)
{
  *a1 = &unk_1F5ED6718;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
    v9 = *(a1 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  else
  {
    *(a1 + 48) = v7;
    *(a1 + 56) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 88) = a3;
  *(a1 + 89) = a4;
  return a1;
}

void SipSecurityAssociationPair::~SipSecurityAssociationPair(SipSecurityAssociationPair *this)
{
  *this = &unk_1F5ED6718;
  v2 = *(this + 7);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 6);
      if (v4)
      {
        if (*(this + 2) && (*(this + 89) & 1) == 0)
        {
          (*(*v4 + 40))(v4);
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(this + 1) = 0;
  if ((*(this + 87) & 0x80000000) == 0)
  {
    *(this + 64) = 0;
    *(this + 87) = 0;
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  **(this + 8) = 0;
  *(this + 9) = 0;
  if (v3)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_15:
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

{
  SipSecurityAssociationPair::~SipSecurityAssociationPair(this);

  JUMPOUT(0x1E69235B0);
}

void SipSecurityAssociationPair::setLocalAddress(uint64_t a1, uint64_t a2)
{
  (*(**a2 + 32))(&v5);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
    }
  }
}

void SipSecurityAssociationPair::setRemoteAddress(uint64_t a1, uint64_t a2)
{
  (*(**a2 + 32))(&v5);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(a1 + 40);
  *(a1 + 32) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
    }
  }
}

double SipSecurityAssociationPair::createTemporary@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 89) == 1)
  {
    if (*(a1 + 88))
    {
      v6 = 64236;
    }

    else
    {
      v6 = 52911;
    }

    *(a1 + 8) = v6;
    if (*(a1 + 87) < 0)
    {
      *(a1 + 72) = 4;
      v7 = *(a1 + 64);
    }

    else
    {
      v7 = (a1 + 64);
      *(a1 + 87) = 4;
    }

    strcpy(v7, "fake");
    result = 0.0;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
  }

  else
  {
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
    *(a4 + 16) = 0x40000000;
    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 48);
        if (v13)
        {
          (*(*v13 + 24))(v15);
          ImsResult::operator=(a4, v15);
          ImsResult::~ImsResult(v15);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    if (((*(**(a4 + 8) + 24))(*(a4 + 8), *(a4 + 16)) & 1) == 0)
    {
      SipSecurityAssociationPair::setLocalAddress(a1, a2);
      SipSecurityAssociationPair::setRemoteAddress(a1, a3);
    }
  }

  return result;
}

void sub_1E4E92D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  ImsResult::~ImsResult(v2);
  _Unwind_Resume(a1);
}

void SipSecurityAssociationPair::update(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 89) == 1)
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = &unk_1F5EBDEF8;
    v18 = &_bambiDomain;
    v19 = 1073741826;
    v5 = ImsResult::operator<<<char [32]>(&v17, "update called on a fake SA pair");
    ImsResult::ImsResult(a4, v5);
LABEL_14:
    ImsResult::~ImsResult(&v17);
    return;
  }

  if (!*(a1 + 8))
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = &unk_1F5EBDEF8;
    v18 = &_bambiDomain;
    v19 = 1073741826;
    v15 = ImsResult::operator<<<char [42]>(&v17, "update called on an uninitialized SA pair");
    ImsResult::ImsResult(a4, v15);
    goto LABEL_14;
  }

  if (!*(a1 + 12))
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = &unk_1F5EBDEF8;
    v18 = &_bambiDomain;
    v19 = 1073741826;
    v16 = ImsResult::operator<<<char [43]>(&v17, "update called without setting outbound SPI");
    ImsResult::ImsResult(a4, v16);
    goto LABEL_14;
  }

  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_bambiDomain;
  *(a4 + 16) = 0;
  *(a4 + 16) = 0x40000000;
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = std::__shared_weak_count::lock(v9);
    if (v10)
    {
      v11 = v10;
      v12 = *(a1 + 48);
      if (v12)
      {
        v13 = *(a1 + 8);
        v14 = *(a1 + 12);
        (*(*v12 + 32))(&v17);
        ImsResult::operator=(a4, &v17);
        ImsResult::~ImsResult(&v17);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  if (((*(**(a4 + 8) + 24))(*(a4 + 8), *(a4 + 16)) & 1) == 0)
  {
    SipSecurityAssociationPair::setLocalAddress(a1, a2);
    SipSecurityAssociationPair::setRemoteAddress(a1, a3);
  }
}

void sub_1E4E93008(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImsResult::~ImsResult(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  ImsResult::~ImsResult(v2);
  _Unwind_Resume(a1);
}

void SipSecurityAssociationPair::loggableName(SipSecurityAssociationPair *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4E93328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a18 == 1)
  {
    if (a17)
    {
      (*(*a17 + 8))(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipSecurityAssociationPair::logStr(SipSecurityAssociationPair *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4E93488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a11 == 1)
  {
    if (a10)
    {
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPrackHandler::SipPrackHandler(uint64_t a1, void *a2, uint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&v33, "sip.prack");
  std::__optional_destruct_base<ClientConfig const,false>::__optional_destruct_base[abi:ne200100]<ClientConfig const&>(v28, (*a2 + 192));
  ImsLogContainer::ImsLogContainer(a1, &v33, v28);
  if (v31 == 1 && v30 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  *(a1 + 136) = &unk_1F5EBEEC0;
  std::string::basic_string[abi:ne200100]<0>(v26, "sip.prack");
  v6 = *a2;
  v22 = *(*a2 + 192);
  v23 = *(v6 + 200);
  if (*(v6 + 231) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(v6 + 208), *(v6 + 216));
  }

  else
  {
    v24 = *(v6 + 208);
  }

  v25 = *(v6 + 232);
  ims::getQueue(&v35);
  ClientConfig::getLogTag(&v22, &v32);
  if ((v27 & 0x80u) == 0)
  {
    v7 = v26;
  }

  else
  {
    v7 = v26[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v8 = v27;
  }

  else
  {
    v8 = v26[1];
  }

  v9 = std::string::insert(&v32, 0, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v34 = v9->__r_.__value_.__r.__words[2];
  v33 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v34 >= 0)
  {
    v11 = &v33;
  }

  else
  {
    v11 = v33;
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v12 = v35;
  *(a1 + 168) = v35;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 176) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 184), "com.apple.ipTelephony", v11);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  *(a1 + 144) = &unk_1F5ED6908;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  *a1 = &unk_1F5ED6760;
  *(a1 + 136) = &unk_1F5ED67D0;
  *(a1 + 144) = &unk_1F5ED6800;
  SipTimerContainer::SipTimerContainer((a1 + 192));
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 424) = 1065353216;
  *(a1 + 432) = a1 + 432;
  *(a1 + 440) = a1 + 432;
  *(a1 + 448) = 0;
  v13 = *a2;
  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
    v15 = *(a1 + 368);
    *(a1 + 360) = v13;
    *(a1 + 368) = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  else
  {
    *(a1 + 360) = v13;
    *(a1 + 368) = 0;
  }

  v17 = *a3;
  v16 = a3[1];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 384);
  *(a1 + 376) = v17;
  *(a1 + 384) = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *(a1 + 320) = a1 + 136;
  v19 = *a2;
  std::string::operator=((a1 + 240), (a1 + 8));
  v20 = *(v19 + 192);
  *(a1 + 272) = *(v19 + 200);
  *(a1 + 264) = v20;
  std::string::operator=((a1 + 280), (v19 + 208));
  *(a1 + 304) = *(v19 + 232);
  *(a1 + 456) = 0;
  return a1;
}

void sub_1E4E93820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ImsLogContainer::~ImsLogContainer(v34);
  _Unwind_Resume(a1);
}

void SipPrackHandler::~SipPrackHandler(SipPrackHandler *this)
{
  *this = &unk_1F5ED6760;
  *(this + 17) = &unk_1F5ED67D0;
  *(this + 18) = &unk_1F5ED6800;
  std::__list_imp<std::shared_ptr<SipLazuliManager::OutgoingPager>>::clear(this + 54);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>>>::~__hash_table(this + 392);
  v2 = *(this + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 46);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  SipTimerContainer::~SipTimerContainer((this + 192));
  MEMORY[0x1E69225A0](this + 184);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 19);
  *this = &unk_1F5ED7318;
  if (*(this + 80) == 1 && *(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  SipPrackHandler::~SipPrackHandler(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipPrackHandler::~SipPrackHandler(SipPrackHandler *this)
{
  SipPrackHandler::~SipPrackHandler((this - 136));
}

{
  SipPrackHandler::~SipPrackHandler((this - 144));
}

{
  SipPrackHandler::~SipPrackHandler((this - 136));

  JUMPOUT(0x1E69235B0);
}

{
  SipPrackHandler::~SipPrackHandler((this - 144));

  JUMPOUT(0x1E69235B0);
}

void SipPrackHandler::loggableName(SipPrackHandler *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4E93D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a27 == 1)
  {
    if (a26)
    {
      (*(*a26 + 8))(a26);
    }
  }

  _Unwind_Resume(exception_object);
}

void SipPrackHandler::handlePrack(void *a1, uint64_t *a2, uint64_t *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = SipMessage::header<SipRAckHeader>(*a2);
  if (v5)
  {
    v6 = v5;
    v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::find<unsigned int>(a1 + 49, v5[15]);
    if (v7)
    {
      v8 = v7[3];
      v9 = v7[4];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        v10 = a1[46];
        if (v10)
        {
          v11 = std::__shared_weak_count::lock(v10);
          if (v11)
          {
            v12 = a1[45];
            if (v12)
            {
              v30 = 0;
              v31 = 0;
              SipSessionInterface::stack(v12, &v30);
              if (v30)
              {
                v13 = *(v30 + 31);
                v14 = *(v30 + 32);
                if (v14)
                {
                  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v25 = v14;
                if (v13)
                {
                  v28 = 0;
                  v29 = 0;
                  buf[0] = 200;
                  __p[0] = (v13 + 384);
                  std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,unsigned int &,SipMessageEncodingMap const*&,0>();
                }

                v22 = a1[23];
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  (*(a1[18] + 16))(__p, a1 + 18);
                  v23 = (SBYTE7(v27) & 0x80u) == 0 ? __p : __p[0];
                  buf[0] = 141558275;
                  *&buf[1] = 1752392040;
                  v35 = 2081;
                  v36 = v23;
                  _os_log_error_impl(&dword_1E4C3F000, v22, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno user agent", buf, 0x16u);
                  if (SBYTE7(v27) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                if (v25)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
                }
              }

              else
              {
                v20 = a1[23];
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  (*(a1[18] + 16))(__p, a1 + 18);
                  v21 = (SBYTE7(v27) & 0x80u) == 0 ? __p : __p[0];
                  buf[0] = 141558275;
                  *&buf[1] = 1752392040;
                  v35 = 2081;
                  v36 = v21;
                  _os_log_error_impl(&dword_1E4C3F000, v20, OS_LOG_TYPE_ERROR, "#E %{private, mask.hash}sno sipstack", buf, 0x16u);
                  if (SBYTE7(v27) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }

              if (v31)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v31);
              }

              goto LABEL_38;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        v19 = (*(*a1 + 56))(a1);
        (*(*a1 + 16))(a1, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Unknown session. Can't handle Prack", 35);
        *(v19 + 17) = 0;
        (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v19 + 17) = 0;
        if (!v11)
        {
LABEL_39:
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          goto LABEL_41;
        }

LABEL_38:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        goto LABEL_39;
      }
    }

    else
    {
      v9 = 0;
    }

    v17 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "no provisional response found with RSeq ", 40);
    *(v17 + 17) = 0;
    MEMORY[0x1E6923350](*(v17 + 8), v6[15]);
    *(v17 + 17) = 0;
    (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v17 + 17) = 0;
    v18 = *a3;
    std::string::basic_string[abi:ne200100]<0>(__p, "Invalid RSeq");
    SipServerTransaction::sendResponse(v18, v32);
    ImsResult::~ImsResult(v32);
    if (SBYTE7(v27) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_39;
  }

  v15 = (*(*a1 + 56))(a1);
  (*(*a1 + 16))(a1, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "PRACK request missing RAck header", 33);
  *(v15 + 17) = 0;
  (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v15 + 17) = 0;
  v16 = *a3;
  std::string::basic_string[abi:ne200100]<0>(__p, "Missing RAck header");
  SipServerTransaction::sendResponse(v16, v33);
  ImsResult::~ImsResult(v33);
  if (SBYTE7(v27) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_41:
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1E4E947BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, std::__shared_weak_count *a60, uint64_t a61, std::__shared_weak_count *a62)
{
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  ImsResult::~ImsResult(&__p);
  if (a60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a60);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a62);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  _Unwind_Resume(a1);
}

uint64_t SipPrackHandler::timerIdForRseq(SipPrackHandler *this, uint64_t a2)
{
  v12 = 0;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  *__p = 0u;
  v9 = 0u;
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "rseq ", 5);
  MEMORY[0x1E6923350](v4, a2);
  std::ostringstream::str[abi:ne200100](&v6, this);
  *&v6 = *MEMORY[0x1E69E54E8];
  *(&v7[-1] + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v6 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v6 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x1E6923510](v11);
}

void sub_1E4E94AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1E6923510](v9 + 112);
  _Unwind_Resume(a1);
}

uint64_t SipPrackHandler::hasOutstandingSdp(SipPrackHandler *this)
{
  for (i = *(this + 51); i; i = *i)
  {
    v3 = SipMessage::body<SipSdpBody>(*i[3]);
    if (v3)
    {
      v5 = v3[1];
      v4 = v3[2];
      if (v4)
      {
        v6 = 1;
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        if (v5)
        {
          return v6;
        }
      }

      else if (v5)
      {
        return 1;
      }
    }
  }

  v7 = this + 432;
  for (j = *(this + 55); j != v7; j = *(j + 8))
  {
    v9 = SipMessage::body<SipSdpBody>(*(j + 16));
    if (v9)
    {
      v11 = v9[1];
      v10 = v9[2];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        if (v11)
        {
          return 1;
        }
      }

      else if (v11)
      {
        return 1;
      }
    }
  }

  return 0;
}

void SipPrackHandler::sendNextQueuedResponse(SipPrackHandler *this)
{
  v1 = *(this + 56);
  if (v1)
  {
    v3 = *(this + 55);
    v5 = v3[2];
    v4 = v3[3];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v3 = *(this + 55);
      v1 = *(this + 56);
      v6 = v3[3];
    }

    else
    {
      v6 = 0;
    }

    v8 = *v3;
    v7 = v3[1];
    *(v8 + 8) = v7;
    *v7 = v8;
    *(this + 56) = v1 - 1;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    operator delete(v3);
    v9 = (*(*this + 64))(this);
    (*(*this + 16))(this, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "sending queued ", 15);
    *(v9 + 17) = 0;
    MEMORY[0x1E6923350](*(v9 + 8), *(v5 + 128));
    *(v9 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " response", 9);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    v10[0] = v5;
    v10[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SipPrackHandler::sendResponse(this, v10);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1E4E94D54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipPrackHandler::sendResponse(uint64_t a1, void *a2)
{
  v9[16] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 376);
  v4 = *(v3 + 264);
  v5 = *(v3 + 272);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9[0] = v4;
  v9[1] = v5;
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SipPrackHandler::responseRequiresPrack(a1, v9, v8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v7 = *a2;
  std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,SipResponse const&,0>();
}

void sub_1E4E957B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, std::__shared_weak_count *a30, int a31, __int16 a32, char a33, char a34)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(a1);
}

uint64_t SipPrackHandler::responseRequiresPrack(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(*a3 + 128);
  v7 = *(a1 + 368);
  if (!v7 || (v8 = std::__shared_weak_count::lock(v7)) == 0)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = *(a1 + 360);
  if (v10)
  {
    __p = 0;
    v18 = 0;
    SipSessionInterface::stack(v10, &__p);
    if (!__p)
    {
      v13 = 0;
      goto LABEL_15;
    }

    v11 = *(__p + 31);
    v12 = *(__p + 32);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      v13 = *(SipUserAgent::config(v11) + 40);
      if (!v12)
      {
LABEL_15:
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        goto LABEL_17;
      }
    }

    else
    {
      v13 = 0;
      if (!v12)
      {
        goto LABEL_15;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    goto LABEL_15;
  }

  v13 = 0;
LABEL_17:
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_18:
  if ((*(*a3 + 128) - 101) > 0x62)
  {
    return 0;
  }

  v14 = *a2;
  std::string::basic_string[abi:ne200100]<0>(&__p, "100rel");
  if (SipMessage::requiresOption(v14, &__p))
  {
    v15 = 1;
  }

  else if (*(*a3 + 112))
  {
    v15 = 1;
  }

  else
  {
    v15 = ((v6 - 180) < 0xA) & v13;
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  return v15;
}

uint64_t SipPrackHandler::queueResponse(SipPrackHandler *this, void *a2)
{
  if ((*(this + 456) & 1) == 0)
  {
    if (*(this + 52))
    {
      v4 = *(*a2 + 128);
      if (v4 >= 0x12C)
      {
        v5 = (*(*this + 64))(this);
        (*(*this + 16))(this, v5);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Sending error response ", 23);
        *(v5 + 17) = 0;
        (*(**a2 + 40))(&__p);
        LoggableString::LoggableString(&v34, &__p);
        (*(*v5 + 40))(v5, &v34);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " immediately.", 13);
        *(v5 + 17) = 0;
        (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v5 + 17) = 0;
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v6 = a2[1];
        v31[0] = *a2;
        v31[1] = v6;
        if (v6)
        {
          atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
        }

        SipPrackHandler::sendResponse(this, v31);
      }

      if (v4 - 200 > 0x63 || (SipPrackHandler::hasOutstandingSdp(this) & 1) != 0)
      {
        v9 = *(this + 46);
        if (v9)
        {
          if (std::__shared_weak_count::lock(v9))
          {
            v10 = *(this + 45);
            if (v10)
            {
              SipSessionInterface::stack(v10, &v34);
              v11 = *(v34.__r_.__value_.__r.__words[0] + 248);
              v12 = *(v34.__r_.__value_.__r.__words[0] + 256);
              if (v12)
              {
                atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                v13 = *(SipUserAgent::config(v11) + 41);
                std::__shared_weak_count::__release_shared[abi:ne200100](v12);
              }

              else
              {
                v13 = *(SipUserAgent::config(v11) + 41);
              }

              if (v34.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v34.__r_.__value_.__l.__size_);
              }

              if ((v13 & 1) == 0)
              {
                v16 = *a2;
                if ((*(*a2 + 128) - 100) <= 0x63)
                {
                  v17 = *(this + 47);
                  v18 = *(v17 + 272);
                  v29[0] = *(v17 + 264);
                  v29[1] = v18;
                  if (v18)
                  {
                    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
                    v16 = *a2;
                  }

                  v19 = a2[1];
                  v28[0] = v16;
                  v28[1] = v19;
                  if (v19)
                  {
                    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v20 = SipPrackHandler::responseRequiresPrack(this, v29, v28);
                  if (v19)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
                  }

                  if (v18)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
                  }

                  if ((v20 & 1) == 0)
                  {
                    v24 = (*(*this + 64))(this);
                    (*(*this + 16))(this, v24);
                    (*(**a2 + 40))(&__p);
                    LoggableString::LoggableString(&v34, &__p);
                    (*(*v24 + 40))(v24, &v34);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "is not reliable. Sending immediately.", 37);
                    *(v24 + 17) = 0;
                    (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
                    *(v24 + 17) = 0;
                    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v34.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    v25 = *a2;
                    v26 = a2[1];
                    v27[0] = v25;
                    v27[1] = v26;
                    if (v26)
                    {
                      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
                    }

                    SipPrackHandler::sendResponse(this, v27);
                  }
                }
              }
            }
          }
        }

        v21 = (*(*this + 64))(this);
        (*(*this + 16))(this, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "queuing ", 8);
        *(v21 + 17) = 0;
        MEMORY[0x1E6923350](*(v21 + 8), *(*a2 + 128));
        *(v21 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " response: ", 11);
        *(v21 + 17) = 0;
        MEMORY[0x1E6923370](*(v21 + 8), *(this + 52));
        *(v21 + 17) = 0;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " outstanding reliable responses", 31);
        *(v21 + 17) = 0;
        (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v21 + 17) = 0;
        v22 = *a2;
        std::allocate_shared[abi:ne200100]<SipResponse,std::allocator<SipResponse>,SipResponse::EnforcePrivateConstructor,SipResponse const&,0>();
      }

      v14 = (*(*this + 64))(this);
      (*(*this + 16))(this, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "no outstanding SDP. Sending ", 28);
      *(v14 + 17) = 0;
      (*(**a2 + 40))(&__p);
      LoggableString::LoggableString(&v34, &__p);
      (*(*v14 + 40))(v14, &v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " immediately.", 13);
      *(v14 + 17) = 0;
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v15 = a2[1];
      v30[0] = *a2;
      v30[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      SipPrackHandler::sendResponse(this, v30);
    }

    v7 = (*(*this + 64))(this);
    (*(*this + 16))(this, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "no outstanding responses. Sending ", 34);
    *(v7 + 17) = 0;
    (*(**a2 + 40))(&__p);
    LoggableString::LoggableString(&v34, &__p);
    (*(*v7 + 40))(v7, &v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), " immediately.", 13);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = a2[1];
    v32[0] = *a2;
    v32[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    SipPrackHandler::sendResponse(this, v32);
  }

  return 0;
}

void sub_1E4E96344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  _Unwind_Resume(a1);
}

void SipPrackHandler::handleTimer(void *a1, std::string *this)
{
  v19[15] = *MEMORY[0x1E69E9840];
  if (std::string::compare(this, 0, 5uLL, "rseq "))
  {
    goto LABEL_2;
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (this->__r_.__value_.__l.__size_ >= 6)
    {
      v16 = this->__r_.__value_.__r.__words[0];
LABEL_22:
      v4 = strtoul(&v16->__r_.__value_.__s.__data_[5], 0, 10);
      goto LABEL_3;
    }
  }

  else
  {
    v16 = this;
    if (HIBYTE(this->__r_.__value_.__r.__words[2]) >= 6u)
    {
      goto LABEL_22;
    }
  }

LABEL_2:
  v4 = 0;
LABEL_3:
  v5 = a1[20];
  if (!v5 || (v6 = a1[19], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::find<unsigned int>(a1 + 49, v4);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v12)
    {
      v13 = a1[47];
      v14 = *(v12 + 8);
      v17 = *v12;
      v18 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v13 + 160))(v19);
      ImsResult::~ImsResult(v19);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      *(v12 + 16) *= 2;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v19[14] = 0;
      operator new();
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  std::__shared_weak_count::__release_weak(v8);
  std::__shared_weak_count::__release_weak(v8);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1E4E96654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__function::__value_func<void ()(std::string &)>::~__value_func[abi:ne200100](va);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_weak(v14);
  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void SipPrackHandler::logPrefix(SipPrackHandler *this, ImsOutStream *a2)
{
  (*(*this + 80))(__p);
  (*(*a2 + 40))(a2, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
  *(a2 + 17) = 0;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4E9674C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ims::SharedLoggable<SipPrackHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<SipPrackHandler>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<SipPrackHandler::SipSentResponse>>>>::__erase_unique<unsigned int>(void *a1, unsigned int a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::find<unsigned int>(a1, a2);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = a1[1];
  v6 = *v3;
  v7 = v3[1];
  v8 = vcnt_s8(v5);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    if (v7 >= *&v5)
    {
      v7 %= *&v5;
    }
  }

  else
  {
    v7 &= *&v5 - 1;
  }

  v9 = *(*a1 + 8 * v7);
  do
  {
    v10 = v9;
    v9 = *v9;
  }

  while (v9 != v3);
  if (v10 == a1 + 2)
  {
    goto LABEL_20;
  }

  v11 = v10[1];
  if (v8.u32[0] > 1uLL)
  {
    if (v11 >= *&v5)
    {
      v11 %= *&v5;
    }
  }

  else
  {
    v11 &= *&v5 - 1;
  }

  if (v11 != v7)
  {
LABEL_20:
    if (v6)
    {
      v12 = *(v6 + 8);
      if (v8.u32[0] > 1uLL)
      {
        v13 = *(v6 + 8);
        if (v12 >= *&v5)
        {
          v13 = v12 % *&v5;
        }
      }

      else
      {
        v13 = v12 & (*&v5 - 1);
      }

      if (v13 == v7)
      {
        goto LABEL_24;
      }
    }

    *(*a1 + 8 * v7) = 0;
    v6 = *v3;
  }

  if (v6)
  {
    v12 = *(v6 + 8);
LABEL_24:
    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v5)
      {
        v12 %= *&v5;
      }
    }

    else
    {
      v12 &= *&v5 - 1;
    }

    if (v12 != v7)
    {
      *(*a1 + 8 * v12) = v10;
      v6 = *v3;
    }
  }

  *v10 = v6;
  *v3 = 0;
  --a1[3];
  v14 = v3[4];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  operator delete(v4);
}

void std::__shared_ptr_emplace<SipPrackHandler::SipSentResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5ED6930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E69235B0);
}

void std::__shared_ptr_emplace<SipPrackHandler::SipSentResponse>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0,std::allocator<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED6980;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0,std::allocator<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0>,void ()(std::string &)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED6980;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0,std::allocator<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0>,void ()(std::string &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED6980;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0,std::allocator<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0>,void ()(std::string &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0,std::allocator<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0>,void ()(std::string &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0,std::allocator<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0>,void ()(std::string &)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 88))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0,std::allocator<SipPrackHandler::addSentResponse(std::shared_ptr<SipResponse>)::$_0>,void ()(std::string &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<SipPrackHandler::handleTimer(std::string const&)::$_0,std::allocator<SipPrackHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED6A00;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<SipPrackHandler::handleTimer(std::string const&)::$_0,std::allocator<SipPrackHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::~__func(void *a1)
{
  *a1 = &unk_1F5ED6A00;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::__function::__func<SipPrackHandler::handleTimer(std::string const&)::$_0,std::allocator<SipPrackHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5ED6A00;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SipPrackHandler::handleTimer(std::string const&)::$_0,std::allocator<SipPrackHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SipPrackHandler::handleTimer(std::string const&)::$_0,std::allocator<SipPrackHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<SipPrackHandler::handleTimer(std::string const&)::$_0,std::allocator<SipPrackHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 88))(v5, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t std::__function::__func<SipPrackHandler::handleTimer(std::string const&)::$_0,std::allocator<SipPrackHandler::handleTimer(std::string const&)::$_0>,void ()(std::string&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ims::toString<BambiCallParticipant::ParticipantState>(int *a1@<X0>, std::string *a2@<X8>)
{
  if (*a1 < 12)
  {
    v2 = &stateNames + 24 * *a1;
    if (v2[23] < 0)
    {
      std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *v2;
      a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "Unknown");
  }
}

uint64_t BambiCallParticipant::BambiCallParticipant(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_1F5ED6E00;
  *(a1 + 8) = &unk_1F5EF7C00;
  *(a1 + 16) = &unk_1F5EBEEC0;
  std::string::basic_string[abi:ne200100]<0>(&v28, "bambi.call.participant");
  BambiCall::clientConfig(*a2, v20);
  v23 = v20[0];
  v24 = v20[1];
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v21;
  }

  v26 = v22;
  v27 = 1;
  ImsLogContainer::ImsLogContainer(a1 + 24, &v28, &v23);
  if (v27 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "bambi.call.participant");
  BambiCall::clientConfig(*a2, v15);
  ims::getQueue(&v29);
  ClientConfig::getLogTag(v15, &v28);
  if ((v19 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v18[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v7 = v19;
  }

  else
  {
    v7 = v18[1];
  }

  v8 = std::string::insert(&v28, 0, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[0] = v8->__r_.__value_.__r.__words[2];
  *v20 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v21.__r_.__value_.__s.__data_[7] >= 0)
  {
    v10 = v20;
  }

  else
  {
    v10 = v20[0];
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v11 = v29;
  *(a1 + 184) = v29;
  if (v11)
  {
    dispatch_retain(v11);
  }

  *(a1 + 192) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 200), "com.apple.ipTelephony", v10);
  if (v21.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  *(a1 + 160) = &unk_1F5ED6E48;
  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  *a1 = &unk_1F5ED6A80;
  *(a1 + 8) = &unk_1F5ED6B00;
  *(a1 + 16) = &unk_1F5ED6C38;
  *(a1 + 24) = &unk_1F5ED6C68;
  *(a1 + 160) = &unk_1F5ED6CC8;
  *(a1 + 208) = *a2;
  v12 = *(a2 + 8);
  *(a1 + 216) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = *a3;
  v13 = a3[1];
  *(a1 + 248) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  return a1;
}

void sub_1E4E97390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  _Unwind_Resume(exception_object);
}

void BambiCallParticipant::initialize(BambiCallParticipant *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 26);
      if (!v5)
      {
LABEL_27:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        return;
      }

      v7 = v5[53];
      v6 = v5[54];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
      }

      v8 = *(this + 29);
      *(this + 28) = v7;
      *(this + 29) = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v21, this + 21);
      v9 = v22;
      if (v22)
      {
        v10 = v21;
        atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        v11 = std::__shared_weak_count::lock(v9);
        v12 = v11;
        if (v11)
        {
          if (v10)
          {
            v13 = v10 + 8;
          }

          else
          {
            v13 = 0;
          }

          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_weak(v9);
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          v14 = 0;
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_17;
        }

        std::__shared_weak_count::__release_weak(v9);
      }

      else
      {
        v12 = 0;
      }

      v13 = 0;
      v14 = 1;
LABEL_17:
      v15 = v5[54];
      v5[53] = v13;
      v5[54] = v12;
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if ((v14 & 1) == 0)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v19, this + 21);
      v17 = v19;
      v16 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5[189] = v17;
      v18 = v5[190];
      v5[190] = v16;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      goto LABEL_27;
    }
  }
}

void BambiCallParticipant::~BambiCallParticipant(BambiCallParticipant *this)
{
  *this = &unk_1F5ED6A80;
  *(this + 1) = &unk_1F5ED6B00;
  *(this + 2) = &unk_1F5ED6C38;
  v2 = this + 24;
  *(this + 3) = &unk_1F5ED6C68;
  *(this + 20) = &unk_1F5ED6CC8;
  v3 = ImsLogContainer::debugStream((this + 24));
  (*(*v2 + 16))(v2, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "~BambiCallParticipant", 21);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (*(this + 32))
  {
    *(this + 32) = 0;
  }

  v4 = *(this + 27);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 26);
      if (v7)
      {
        v8 = *(v7 + 1520);
        *(v7 + 1512) = 0u;
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v9 = *(this + 28);
        v10 = *(this + 29);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = *(v7 + 432);
        *(v7 + 424) = v9;
        *(v7 + 432) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_weak(v10);
        }

        if (*(v7 + 1528) == 1)
        {
          v12 = (*(*v2 + 64))(v2);
          (*(*v2 + 16))(v2, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "BambiCall has pending invalidation. Invoking invalidate.", 56);
          *(v12 + 17) = 0;
          (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v12 + 17) = 0;
          (*(*v7 + 48))(v7);
        }

        v13 = *(this + 27);
        *(this + 26) = 0;
        *(this + 27) = 0;
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v14 = *(this + 31);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(this + 29);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(this + 27);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  MEMORY[0x1E69225A0](this + 200);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable(this + 21);
  *(this + 3) = &unk_1F5ED7318;
  if (*(this + 104) == 1 && *(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

{
  BambiCallParticipant::~BambiCallParticipant(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toBambiCallParticipant::~BambiCallParticipant(BambiCallParticipant *this)
{
  BambiCallParticipant::~BambiCallParticipant((this - 8));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 16));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 24));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 160));
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 8));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 16));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 24));

  JUMPOUT(0x1E69235B0);
}

{
  BambiCallParticipant::~BambiCallParticipant((this - 160));

  JUMPOUT(0x1E69235B0);
}

void BambiCallParticipant::setState(uint64_t a1, uint64_t a2, int a3)
{
  v19 = a2;
  v3 = *(a1 + 264);
  if (v3 != a2)
  {
    v18 = *(a1 + 264);
    v8 = a1 + 24;
    v7 = *(a1 + 24);
    *(a1 + 264) = a2;
    v9 = (*(v7 + 64))(a1 + 24);
    (*(*v8 + 16))(v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "state change from ", 18);
    *(v9 + 17) = 0;
    ims::toString<BambiCallParticipant::ParticipantState>(&v18, &v17);
    (*(*v9 + 32))(v9, &v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), " to ", 4);
    *(v9 + 17) = 0;
    ims::toString<BambiCallParticipant::ParticipantState>(&v19, &__p);
    (*(*v9 + 32))(v9, &__p);
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v9 + 17) = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    v10 = *(a1 + 248);
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = v11;
        if (a3)
        {
          v13 = *(a1 + 240);
          if (v13)
          {
            std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v14, (a1 + 168));
            (*(*v13 + 16))(v13, &v14, v3, a2);
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }
  }
}

void sub_1E4E97CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

void BambiCallParticipant::prepare(BambiCallParticipant *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  memset(&v14[2], 0, 24);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14[0] = &unk_1F5EBDEF8;
  v14[1] = &_bambiDomain;
  v5 = *(this + 27);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (!v7 || (v8 = *(this + 26)) == 0)
  {
LABEL_7:
    v11 = *(this + 3);
    v10 = this + 24;
    v12 = (*(v11 + 56))(v10);
    (*(*v10 + 16))(v10, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "Can not start un-initialized participant ", 41);
    *(v12 + 17) = 0;
    (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v12 + 17) = 0;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_bambiDomain;
    *(a3 + 16) = 1073741825;
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*(this + 66) == 6)
  {
    v9 = 1073741826;
  }

  else
  {
    if ((*(v8 + 120) & 0xFFFFFFFE) == 2 || a2 == 0)
    {
      BambiCallParticipant::setState(this, 2, 1);
    }

    else
    {
      BambiCallParticipant::setState(this, 1, 1);
      BambiCall::performLocalHold(v8);
    }

    v9 = 0;
  }

  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *a3 = &unk_1F5EBDEF8;
  *(a3 + 8) = &_bambiDomain;
  *(a3 + 16) = v9;
LABEL_17:
  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
LABEL_18:
  ImsResult::~ImsResult(v14);
}

void sub_1E4E97F3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  ImsResult::~ImsResult(va);
  _Unwind_Resume(a1);
}

void BambiCallParticipant::refer(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v29 = 0;
  v30 = 0;
  v6 = 0uLL;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = &unk_1F5EBDEF8;
  v28 = &_bambiDomain;
  v31 = 0;
  v7 = *(a1 + 216);
  if (v7)
  {
    v10 = std::__shared_weak_count::lock(v7);
    v11 = v10;
    if (v10)
    {
      v12 = *a2;
      v6 = 0uLL;
      if (*a2)
      {
        v13 = *(a1 + 208);
        if (v13)
        {
          v14 = *(a1 + 264);
          if (v14 == 2)
          {
            if (a3)
            {
              v15 = a2[1];
              v25[0] = v12;
              v25[1] = v15;
              if (v15)
              {
                atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v22, (a1 + 168));
              v16 = v23;
              v24[0] = v22;
              v24[1] = v23;
              v22 = 0;
              v23 = 0;
              BambiCall::refer(v13, v25, "INVITE", v24, v26);
              ImsResult::operator=(&v27, v26);
              ImsResult::~ImsResult(v26);
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              if (v23)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              }

              if (!v15)
              {
                goto LABEL_30;
              }

              v17 = v15;
            }

            else
            {
              v21[0] = *(a1 + 208);
              v21[1] = v10;
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v22, (a1 + 168));
              v19 = v23;
              v20[0] = v22;
              v20[1] = v23;
              v22 = 0;
              v23 = 0;
              BambiCall::refer(v12, v21, "INVITE", v20, v26);
              ImsResult::operator=(&v27, v26);
              ImsResult::~ImsResult(v26);
              if (v19)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v19);
              }

              if (v23)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              }

              v17 = v11;
            }

            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
LABEL_30:
            if (((*(*v28 + 24))(v28, v29) & 1) == 0)
            {
              BambiCallParticipant::setState(a1, 3, 1);
            }

            ImsResult::ImsResult(a4, &v27);
            goto LABEL_18;
          }

          *(a4 + 24) = 0uLL;
          *(a4 + 40) = 0uLL;
          *(a4 + 56) = 0uLL;
          *(a4 + 72) = 0uLL;
          *a4 = &unk_1F5EBDEF8;
          *(a4 + 8) = &_bambiDomain;
          if (v14 <= 2)
          {
            v18 = 1073741826;
          }

          else
          {
            v18 = 0;
          }

          *(a4 + 16) = v18;
LABEL_18:
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          goto LABEL_19;
        }
      }
    }

    else
    {
      v6 = 0uLL;
    }
  }

  else
  {
    v11 = 0;
  }

  *(a4 + 24) = v6;
  *(a4 + 40) = v6;
  *(a4 + 56) = v6;
  *(a4 + 72) = v6;
  *a4 = &unk_1F5EBDEF8;
  *(a4 + 8) = &_bambiDomain;
  *(a4 + 16) = 1073741825;
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_19:
  ImsResult::~ImsResult(&v27);
}

void sub_1E4E98220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  ImsResult::~ImsResult(&a19);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  ImsResult::~ImsResult(&a30);
  _Unwind_Resume(a1);
}

void BambiCallParticipant::handleEvent(BambiCallParticipant *this, BambiCallEvent *lpsrc)
{
  v3 = *(lpsrc + 2);
  if ((v3 - 14) < 2)
  {
    if (*(this + 66) <= 5)
    {
      v5 = **lpsrc;
      (*(*this + 72))(this, v6);
      v7 = 0;
      BambiCallParticipant::setState(this, 10, 1);
      v8 = 0;
      goto LABEL_41;
    }

    v9 = *(this + 31);
    if (!v9 || (v10 = std::__shared_weak_count::lock(v9)) == 0)
    {
      v7 = 0;
      v19 = 0;
      goto LABEL_36;
    }

    v11 = v10;
    v12 = *(this + 30);
    if (v12)
    {
      v13 = **v12;
      if (v7)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v31, this + 21);
        v14 = v31;
        if (v31)
        {
          shared_owners = v7[21].__shared_owners_;
          if (v7[21].__shared_weak_owners_ == shared_owners)
          {
            std::vector<unsigned short>::__throw_out_of_range[abi:ne200100]();
          }

          v17 = *shared_owners;
          v16 = shared_owners[1];
          if (v16)
          {
            v18 = 1;
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            if (v14 == v17)
            {
              goto LABEL_28;
            }
          }

          else if (v31 == v17)
          {
            v18 = 1;
            goto LABEL_28;
          }
        }

        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v29, this + 21);
        v20 = v29;
        if (v29)
        {
          v21 = v7[21].__shared_owners_;
          if ((v7[21].__shared_weak_owners_ - v21) <= 0x10)
          {
            std::vector<unsigned short>::__throw_out_of_range[abi:ne200100]();
          }

          v23 = *(v21 + 16);
          v22 = *(v21 + 24);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            v18 = v20 == v23;
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          else
          {
            v18 = v29 == v23;
          }
        }

        else
        {
          v18 = 0;
        }

        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

LABEL_28:
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          if (v18)
          {
            goto LABEL_30;
          }
        }

        else if (v18)
        {
LABEL_30:
          v24 = (*(*(this + 3) + 64))(this + 24);
          (*(*(this + 3) + 16))(this + 24, v24);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Warning: the following setState(kStateLeaving) may delete this BambiCallParticipant. Save its _oldCallDelegate first.", 117);
          *(v24 + 17) = 0;
          (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v24 + 17) = 0;
          v19 = *(this + 28);
          v7 = *(this + 29);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_34;
        }

        v19 = 0;
        v7 = 0;
LABEL_34:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        goto LABEL_35;
      }

      v19 = 0;
    }

    else
    {
      v19 = 0;
      v7 = 0;
    }

LABEL_35:
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_36:
    BambiCallParticipant::setState(this, 7, 1);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8 && v19)
      {
        (*(*v19 + 16))(v19, lpsrc);
LABEL_47:
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
LABEL_48:
        if (v7)
        {
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_41:
    v25 = *(this + 29);
    if (v25)
    {
      v26 = std::__shared_weak_count::lock(v25);
      if (v26)
      {
        v27 = v26;
        v28 = *(this + 28);
        if (v28)
        {
          (*(*v28 + 16))(v28, lpsrc);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    if (!v8)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v3 == 13 && *(this + 66) == 1)
  {
    BambiCallParticipant::setState(this, 2, 1);
  }
}

void sub_1E4E986EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void BambiCallParticipant::handleCallInvalidated(void *a1, const std::string **a2)
{
  v4 = a1 + 3;
  v5 = (*(a1[3] + 64))(a1 + 3);
  (*(*v4 + 16))(v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Got invalidated callback for participant call ", 46);
  *(v5 + 17) = 0;
  ObfuscatedString::ObfuscatedString(v15, *a2 + 21);
  (*(*v5 + 56))(v5, v15);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v6 = a1[29];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[28];
      if (v9)
      {
        v10 = a2[1];
        v13 = *a2;
        v14 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 192))(v9, &v13);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        v11 = a1[29];
        a1[28] = 0;
        a1[29] = 0;
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v12 = a1[27];
  a1[26] = 0;
  a1[27] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1E4E98940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void BambiCallParticipant::handleReferSubscriptionSuccess(BambiCallParticipant *this)
{
  if (*(this + 66) == 3)
  {
    BambiCallParticipant::setState(this, 4, 1);
  }
}

void BambiCallParticipant::handleReferNotification(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (!*a2)
  {
    return;
  }

  v5 = **v3;
  if (!v6)
  {
    return;
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(a1 + 264) - 3) <= 1)
  {
    v8 = v6[32];
    if (v8 - 200 >= 0x64)
    {
      if (v8 < 0x12C)
      {
        goto LABEL_11;
      }

      v9 = 10;
    }

    else
    {
      v9 = 6;
    }

    BambiCallParticipant::setState(a1, v9, 1);
  }

LABEL_11:
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4E98A88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void BambiCallParticipant::handleReferSubscriptionTerminated(BambiCallParticipant *this)
{
  if (*(this + 66) == 3)
  {
    v3 = this + 24;
    v4 = (*(*(this + 3) + 56))(this + 24);
    (*(*v3 + 16))(v3, v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "REFER subscription terminated before transfer could complete", 60);
    *(v4 + 17) = 0;
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v4 + 17) = 0;

    BambiCallParticipant::setState(this, 10, 1);
  }
}

void *BambiCallParticipant::logPrefix(BambiCallParticipant *this, ImsOutStream *a2)
{
  v4 = *(this + 27);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 26);
      if (v7)
      {
        (*(*v7 + 56))(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Participant: ", 13);
  *(a2 + 17) = 0;
  return result;
}

uint64_t ims::SharedLoggable<BambiCallParticipant>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));
  return a1;
}

void ims::SharedLoggable<BambiCallParticipant>::~SharedLoggable(uint64_t a1)
{
  MEMORY[0x1E69225A0](a1 + 40);
  ctu::SharedSynchronizable<SharedImsResultItem>::~SharedSynchronizable((a1 + 8));

  JUMPOUT(0x1E69235B0);
}

void __cxx_global_array_dtor_2()
{
  v0 = &byte_1EE2BD6DF;
  v1 = -264;
  v2 = &byte_1EE2BD6DF;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

uint64_t _GLOBAL__sub_I_BambiCallParticipant_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(stateNames, "Unknown");
  std::string::basic_string[abi:ne200100]<0>(&stateNames[24], "WaitingForHold");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BD608, "WaitingToJoin");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BD620, "SentJoinRequest");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BD638, "JoinRequestAck");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BD650, "InitialInviteeJoinPending");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BD668, "Joined");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BD680, "Leaving");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BD698, "Left");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BD6B0, "LeftSilently");
  std::string::basic_string[abi:ne200100]<0>(byte_1EE2BD6C8, "Error");

  return __cxa_atexit(__cxx_global_array_dtor_2, 0, &dword_1E4C3F000);
}

void sub_1E4E98E7C(_Unwind_Exception *exception_object)
{
  while (1)
  {
    v4 = *(v2 - 1);
    v2 -= 3;
    if (v4 < 0)
    {
      operator delete(*v2);
    }

    if (v2 == v1)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void ImsTcpSocket::~ImsTcpSocket(ImsTcpSocket *this)
{
  *this = &unk_1F5ED6E70;
  *(this + 13) = &unk_1F5ED6FC8;
  ImsTcpSocket::close(this);
  v2 = std::string::basic_string[abi:ne200100]<0>(&v10, "net");
  v6[0] = 0;
  v9 = 0;
  v3 = ims::debug(v2, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "destroying ImsTcpSocket 0x", 26);
  *(v3 + 17) = 0;
  MEMORY[0x1E6923310](*(v3 + 8), this);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  v4 = *(this + 22);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  std::__list_imp<std::vector<unsigned char>>::clear(this + 17);
  v5 = *(this + 15);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  ImsSocket::~ImsSocket(this);
}

{
  ImsTcpSocket::~ImsTcpSocket(this);
}

uint64_t ImsTcpSocket::close(uint64_t this)
{
  v2 = *(this + 64);
  if (v2 && *v2 != -1)
  {
    v3 = this;
    v4 = *(this + 184);
    if (v4)
    {
      dispatch_source_cancel(v4);
      *(v3 + 23) = 0;
    }

    v5 = *(v3 + 22);
    *(v3 + 21) = 0;
    *(v3 + 22) = 0;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    ImsSocket::close(v3);
  }

  return this;
}

void non-virtual thunk toImsTcpSocket::~ImsTcpSocket(ImsTcpSocket *this)
{
  ImsTcpSocket::~ImsTcpSocket((this - 104));
}

{
  ImsTcpSocket::~ImsTcpSocket((this - 104));
}

uint64_t ImsTcpSocket::readFromSocket(uint64_t a1, std::string *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__s, "net");
  v50[0] = 0;
  v53 = 0;
  v4 = ims::spam(__s, v50);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "ImsTcpSocket : readFromSocket called", 36);
  *(v4 + 17) = 0;
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v53 == 1 && v52 < 0)
  {
    operator delete(__p);
  }

  if (v55 < 0)
  {
    operator delete(*__s);
  }

  bzero(__s, 0xBB8uLL);
  if (a1 == -1)
  {
LABEL_26:
    std::string::basic_string[abi:ne200100]<0>(&v49, "net");
    v21[0] = 0;
    v24 = 0;
    v10 = ims::spam(&v49, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "ImsTcpSocket : readFromSocket : exit", 36);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(v49.fds_bits[5]) < 0)
    {
      operator delete(*v49.fds_bits);
    }

    result = 0;
  }

  else
  {
    v5 = 1 << a1;
    v6 = a1 >> 5;
    while (1)
    {
      memset(&v49, 0, sizeof(v49));
      memset(&v48, 0, sizeof(v48));
      if (__darwin_check_fd_set_overflow(a1, &v49, 0))
      {
        v49.fds_bits[v6] |= v5;
      }

      if (__darwin_check_fd_set_overflow(a1, &v48, 0))
      {
        v48.fds_bits[v6] |= v5;
      }

      v47.tv_sec = 0;
      *&v47.tv_usec = 0;
      if (select(a1 + 1, &v49, 0, &v48, &v47) < 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v45, "net");
        v41[0] = 0;
        v44 = 0;
        v12 = ims::error(v45, v41);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), "select error: ", 14);
        *(v12 + 17) = 0;
        v13 = __error();
        MEMORY[0x1E6923340](*(v12 + 8), *v13);
        *(v12 + 17) = 0;
        (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v12 + 17) = 0;
        if (v44 == 1 && v43 < 0)
        {
          operator delete(v42);
        }

        if (v46 < 0)
        {
          operator delete(v45[0]);
        }

        v14 = __error();
        goto LABEL_47;
      }

      if (__darwin_check_fd_set_overflow(a1, &v48, 0) && (v48.fds_bits[v6] & v5) != 0)
      {
        break;
      }

      if (!__darwin_check_fd_set_overflow(a1, &v49, 0) || (v49.fds_bits[v6] & v5) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v45, "net");
        v33[0] = 0;
        v36 = 0;
        v9 = ims::spam(v45, v33);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "ImsTcpSocket: No more data to read on socket ", 45);
        *(v9 + 17) = 0;
        MEMORY[0x1E6923340](*(v9 + 8), a1);
        *(v9 + 17) = 0;
        (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v9 + 17) = 0;
        if (v36 == 1 && v35 < 0)
        {
          operator delete(v34);
        }

        if (v46 < 0)
        {
          operator delete(v45[0]);
        }

        goto LABEL_26;
      }

      v7 = read(a1, __s, 0xBB8uLL);
      v8 = v7;
      if (!v7)
      {
        std::string::basic_string[abi:ne200100]<0>(v45, "net");
        v29[0] = 0;
        v32 = 0;
        v15 = ims::warn(v45, v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "ImsTcpSocket: Remote end closed connection", 42);
        *(v15 + 17) = 0;
        (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v15 + 17) = 0;
        if (v32 == 1 && v31 < 0)
        {
          v16 = v30;
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v45, "net");
        v25[0] = 0;
        v28 = 0;
        v17 = ims::error(v45, v25);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "ImsTcpSocket: Error reading from socket: ", 41);
        *(v17 + 17) = 0;
        v18 = __error();
        MEMORY[0x1E6923340](*(v17 + 8), *v18);
        *(v17 + 17) = 0;
        (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v17 + 17) = 0;
        if (v28 == 1 && v27 < 0)
        {
          operator delete(v26);
        }

        if (v46 < 0)
        {
          operator delete(v45[0]);
        }

        v14 = __error();
LABEL_47:
        result = *v14;
        goto LABEL_55;
      }

      std::string::append(a2, __s, v7);
      if (v8 < 0xBB8)
      {
        goto LABEL_26;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v45, "net");
    v37[0] = 0;
    v40 = 0;
    v19 = ims::error(v45, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Error on socket ", 16);
    *(v19 + 17) = 0;
    MEMORY[0x1E6923340](*(v19 + 8), a1);
    *(v19 + 17) = 0;
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v40 == 1 && v39 < 0)
    {
      v16 = v38;
LABEL_51:
      operator delete(v16);
    }

LABEL_52:
    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    result = 0xFFFFFFFFLL;
  }

LABEL_55:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E4E99838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a47 == 1 && a45 < 0)
  {
    operator delete(__p);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

void ImsTcpSocket::_handleDataAvailable(ImsTcpSocket *this)
{
  v1 = this;
  memset(&v54, 0, sizeof(v54));
  v2 = ImsTcpSocket::readFromSocket(**(this + 8), &v54);
  v3 = *(v1 + 22);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = *(v1 + 21);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v54.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_36:
    if (!v2)
    {
      goto LABEL_61;
    }

    goto LABEL_37;
  }

  if (*(v1 + 96))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "net");
    v50[0] = 0;
    v53 = 0;
    v11 = ims::warn(__p, v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "ImsTcpSocket: kDebugDropIncoming set.  Dropping incoming packet.", 64);
    *(v11 + 17) = 0;
    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v53 == 1 && v52 < 0)
    {
      v12 = v51;
LABEL_34:
      operator delete(v12);
    }
  }

  else
  {
    if (v5)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "net");
      v46[0] = 0;
      v49 = 0;
      v7 = ims::spam(__p, v46);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "ImsTcpSocket: process data, len = ", 34);
      *(v7 + 17) = 0;
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = v54.__r_.__value_.__l.__size_;
      }

      MEMORY[0x1E6923370](*(v7 + 8), v8);
      *(v7 + 17) = 0;
      (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v7 + 17) = 0;
      if (v49 == 1 && v48 < 0)
      {
        operator delete(v47);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v54;
      }

      else
      {
        v9 = v54.__r_.__value_.__r.__words[0];
      }

      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = v54.__r_.__value_.__l.__size_;
      }

      (*(*v5 + 48))(v5, v9, v10, v1 + 112);
      goto LABEL_36;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "net");
    v42[0] = 0;
    v45 = 0;
    v13 = ims::debug(__p, v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "ImsTcpSocket: No delegate to handle incoming packet from ", 57);
    *(v13 + 17) = 0;
    v14 = *(v1 + 14);
    if (v14)
    {
      (*(*v14 + 40))(v14, v13);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ". Discarding packet", 19);
    *(v13 + 17) = 0;
    (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v13 + 17) = 0;
    if (v45 == 1 && v44 < 0)
    {
      v12 = v43;
      goto LABEL_34;
    }
  }

  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(__p[0]);
  if (!v2)
  {
    goto LABEL_61;
  }

LABEL_37:
  if (v2 == -1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "net");
    v38[0] = 0;
    v41 = 0;
    v15 = ims::warn(__p, v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "ImsTcpSocket: remote end closed connection", 42);
    *(v15 + 17) = 0;
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v15 + 17) = 0;
    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    *(v1 + 160) = 1;
    if (v5)
    {
      v16 = (*v5 + 16);
      v1 = v5;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "net");
      v34[0] = 0;
      v37 = 0;
      v21 = ims::error(__p, v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "ImsTcpSocket: closing myself", 28);
      *(v21 + 17) = 0;
      (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v21 + 17) = 0;
      if (v37 == 1 && v36 < 0)
      {
        operator delete(v35);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      v16 = (*v1 + 32);
    }

    (*v16)(v1);
LABEL_61:
    if (!v4)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  memset(__p, 0, 88);
  v17 = *__error();
  memset(&__p[3], 0, 64);
  __p[0] = &unk_1F5EBDEF8;
  __p[1] = &_posixDomain;
  LODWORD(__p[2]) = v17;
  std::string::basic_string[abi:ne200100]<0>(v31, "net");
  v27[0] = 0;
  v30 = 0;
  v18 = ims::error(v31, v27);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "ImsTcpSocket: error ", 20);
  *(v18 + 17) = 0;
  (*(__p[0] + 2))(__p, v18);
  (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v18 + 17) = 0;
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if ((v32 & 0x80000000) == 0)
  {
    if (v5)
    {
      goto LABEL_50;
    }

LABEL_67:
    std::string::basic_string[abi:ne200100]<0>(v31, "net");
    v23[0] = 0;
    v26 = 0;
    v22 = ims::error(v31, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "ImsTcpSocket: no delegate to handle error so closing myself", 59);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    if (v26 == 1 && v25 < 0)
    {
      operator delete(v24);
    }

    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    v20 = (*v1 + 32);
    goto LABEL_73;
  }

  operator delete(v31[0]);
  if (!v5)
  {
    goto LABEL_67;
  }

LABEL_50:
  v19 = *v5;
  if (LODWORD(__p[2]) == 54)
  {
    v20 = (v19 + 24);
    v1 = v5;
LABEL_73:
    (*v20)(v1);
    goto LABEL_75;
  }

  (*(v19 + 40))(v5, __p);
LABEL_75:
  ImsResult::~ImsResult(__p);
  if (v4)
  {
LABEL_62:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_63:
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }
}

void sub_1E4E9A130(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  if (*(v2 - 49) < 0)
  {
    operator delete(*(v2 - 72));
  }

  _Unwind_Resume(a1);
}

void ImsTcpSocket::setMaxSegmentSize(ImsTcpSocket *this, int a2)
{
  v11 = a2;
  if (a2 <= 0)
  {
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5[0] = &unk_1F5EBDEF8;
    v5[1] = &_bambiDomain;
    v6 = 1073741825;
    v3 = ImsResult::operator<<<int>(v5, &v11);
    v4 = ImsResult::operator<<<char [20]>(v3, " is not a valid MSS");
    ImsResult::ImsResult(this, v4);
    ImsResult::~ImsResult(v5);
  }

  else
  {
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *this = &unk_1F5EBDEF8;
    *(this + 1) = &_bambiDomain;
    *(this + 4) = 0;
  }
}

void ImsTcpSocket::_sendQueuedData(ImsTcpSocket *this)
{
  (*(*this + 64))(&v39);
  v2 = (*(*v40 + 24))(v40, v41);
  ImsResult::~ImsResult(&v39);
  if (v2)
  {
    v4 = std::string::basic_string[abi:ne200100]<0>(v3, "net");
    v35[0] = 0;
    v38 = 0;
    v5 = ims::debug(v4, v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "still waiting on ", 17);
    *(v5 + 17) = 0;
    (*(*this + 120))(__p, this);
    (*(*v5 + 32))(v5, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), " handshake", 10);
    *(v5 + 17) = 0;
    (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v5 + 17) = 0;
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    if (v38 != 1 || (v37 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v6 = v36;
    goto LABEL_29;
  }

  if (!*(this + 19))
  {
    v19 = std::string::basic_string[abi:ne200100]<0>(v3, "net");
    v29[0] = 0;
    v32 = 0;
    v20 = ims::debug(v19, v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "Nothing to send", 15);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v20 + 17) = 0;
    if (v32 != 1 || (v31 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v6 = v30;
LABEL_29:
    operator delete(v6);
LABEL_30:
    if (v42 < 0)
    {
      operator delete(v39);
    }

    return;
  }

  for (i = *(this + 18); i != (this + 136); i = i[1])
  {
    v9 = i[2];
    v8 = i[3];
    v10 = std::string::basic_string[abi:ne200100]<0>(&v39, "net");
    v25[0] = 0;
    v28 = 0;
    v11 = ims::debug(v10, v25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "Sending ", 8);
    v12 = v8 - v9;
    *(v11 + 17) = 0;
    MEMORY[0x1E6923370](*(v11 + 8), v12);
    *(v11 + 17) = 0;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), " queued bytes to ", 17);
    *(v11 + 17) = 0;
    v13 = *(this + 14);
    if (v13)
    {
      (*(*v13 + 40))(v13, v11);
    }

    (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v11 + 17) = 0;
    if (v28 == 1 && v27 < 0)
    {
      operator delete(v26);
    }

    if (v42 < 0)
    {
      operator delete(v39);
    }

    (*(*this + 56))(&v39, this, v9, v12);
    v14 = (*(*v40 + 24))(v40, v41);
    ImsResult::~ImsResult(&v39);
    if (v14)
    {
      v16 = std::string::basic_string[abi:ne200100]<0>(v15, "net");
      v21[0] = 0;
      v24 = 0;
      v17 = ims::error(v16, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "Could not send ", 15);
      *(v17 + 17) = 0;
      MEMORY[0x1E6923370](*(v17 + 8), v12);
      *(v17 + 17) = 0;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), " bytes to ", 10);
      *(v17 + 17) = 0;
      v18 = *(this + 14);
      if (v18)
      {
        (*(*v18 + 40))(v18, v17);
      }

      (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v17 + 17) = 0;
      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v42 < 0)
      {
        operator delete(v39);
      }
    }
  }

  std::__list_imp<std::vector<unsigned char>>::clear(this + 17);
}

void sub_1E4E9A898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55)
{
  if (a55 == 1 && a53 < 0)
  {
    operator delete(__p);
  }

  if (*(v55 - 153) < 0)
  {
    operator delete(*(v55 - 176));
  }

  _Unwind_Resume(exception_object);
}

void ImsTcpSocket::initializeSocket(ImsTcpSocket *this@<X0>, ImsTcpSocketInterface::TcpTlsInitParams *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(**a2 + 72))();
  sa_family = v6->sa_family;
  *(this + 22) = sa_family;
  v8 = socket(sa_family, 1, 0);
  if ((v8 & 0x80000000) != 0)
  {
    *(a3 + 80) = 0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    v17 = *__error();
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *a3 = &unk_1F5EBDEF8;
    *(a3 + 8) = &_posixDomain;
    *(a3 + 16) = v17;
    v18 = std::string::basic_string[abi:ne200100]<0>(&v33, "net");
    v39[0] = 0;
    v42 = 0;
    v19 = ims::error(v18, v39);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "ImsTcpSocket: failed to create socket : ", 40);
    *(v19 + 17) = 0;
    (*(*a3 + 16))(a3, v19);
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v19 + 17) = 0;
    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (SBYTE7(v34) < 0)
    {
      operator delete(v33);
    }
  }

  else
  {
    v9 = v8;
    v10 = *(a2 + 55);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 5);
    }

    if (v10)
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      v11 = (*(**a2 + 160))();
      ImsSocket::bindSocketToInterface(v9, v11, a2 + 32, &v33);
      if ((*(**(&v33 + 1) + 24))(*(&v33 + 1), v34))
      {
        v12 = std::string::basic_string[abi:ne200100]<0>(v31, "net");
        v27[0] = 0;
        v30 = 0;
        v13 = ims::error(v12, v27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "ImsTcpSocket: Unable to bind socket to interface: ", 50);
        *(v13 + 17) = 0;
        (*(v33 + 16))(&v33, v13);
        (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v13 + 17) = 0;
        if (v30 == 1 && v29 < 0)
        {
          operator delete(__p);
        }

        if (v32 < 0)
        {
          operator delete(v31[0]);
        }
      }

      ImsResult::~ImsResult(&v33);
    }

    if (*(a2 + 136) == 1)
    {
      ImsSocket::setReusePortOptionForSocket(v9, v26);
      ImsResult::~ImsResult(v26);
    }

    LODWORD(v31[0]) = 0;
    setsockopt(v9, 0xFFFF, 4352, v31, 4u);
    if (bind(v9, v6, v6->sa_len))
    {
      *(a3 + 80) = 0;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      v14 = *__error();
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *a3 = &unk_1F5EBDEF8;
      *(a3 + 8) = &_posixDomain;
      *(a3 + 16) = v14;
      v15 = std::string::basic_string[abi:ne200100]<0>(&v33, "net");
      v22[0] = 0;
      v25 = 0;
      v16 = ims::error(v15, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "ImsTcpSocket: couldn't bind TCP socket to ", 42);
      *(v16 + 17) = 0;
      if (*a2)
      {
        (*(**a2 + 40))(*a2, v16);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), ": ", 2);
      *(v16 + 17) = 0;
      (*(*a3 + 16))(a3, v16);
      (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v16 + 17) = 0;
      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (SBYTE7(v34) < 0)
      {
        operator delete(v33);
      }

      close(v9);
    }

    else
    {
      ImsSocket::setNoTimeWaitForSocket(v9, v21);
      ImsResult::~ImsResult(v21);
      v20[0] = &unk_1F5EBE6A8;
      v20[1] = 0;
      ImsTcpSocket::initializeSocket(this, v9, a2 + 2, a2 + 7, a2 + 64, a3, *(a2 + 35));
      ims::CFType::~CFType(v20);
    }
  }
}

void ImsTcpSocket::initializeSocket(void *a1@<X0>, ImsSocket *a2@<X1>, void *a3@<X2>, dispatch_queue_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, int a7)
{
  if ((*(**a3 + 88))())
  {
    if ((*(**a3 + 56))())
    {
      ImsSocket::setNoSigpipeOptionForSocket(a2, v57);
      ImsResult::~ImsResult(v57);
      (*(**a3 + 32))(&v58);
      v13 = v58;
      v58 = 0uLL;
      v14 = a1[15];
      *(a1 + 7) = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        if (*(&v58 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v58 + 1));
        }
      }

      v15 = (*(**a3 + 72))();
      fcntl(a2, 4, 4);
      if (ImsSocket::_createSocketWithDispatch(a1, a2, a4, a5, 0))
      {
        if (connect(a2, v15, v15->sa_len) && *__error() != 36)
        {
          *(a6 + 80) = 0;
          *(a6 + 48) = 0u;
          *(a6 + 64) = 0u;
          *(a6 + 16) = 0u;
          *(a6 + 32) = 0u;
          *a6 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          *&v58 = &unk_1F5EBDEF8;
          *(&v58 + 1) = &_bambiDomain;
          LODWORD(v59) = 1073741840;
          v36 = ImsResult::operator<<<char [21]>(&v58, "Socket connect error");
          v37 = *__error();
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v47[0] = &unk_1F5EBDEF8;
          v47[1] = &_posixDomain;
          LODWORD(v48) = v37;
          ims::result::resultWithCause(v36, v47, a6);
        }

        std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v58, a1 + 1);
        v16 = v58;
        if (*(&v58 + 1))
        {
          atomic_fetch_add_explicit((*(&v58 + 1) + 16), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
        }

        v17 = dispatch_source_create(MEMORY[0x1E69E9730], a2, 0, *a4);
        a1[23] = v17;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 1174405120;
        handler[2] = ___ZN12ImsTcpSocket16initializeSocketEiRKNSt3__110shared_ptrI9IpAddressEERKN8dispatch5queueERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN3ims14CFMutableArrayESH_i_block_invoke;
        handler[3] = &__block_descriptor_tmp_39_0;
        handler[4] = a1;
        v46 = v16;
        if (*(&v16 + 1))
        {
          atomic_fetch_add_explicit((*(&v16 + 1) + 16), 1uLL, memory_order_relaxed);
        }

        dispatch_source_set_event_handler(v17, handler);
        v18 = a1[23];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 0x40000000;
        v44[2] = ___ZN12ImsTcpSocket16initializeSocketEiRKNSt3__110shared_ptrI9IpAddressEERKN8dispatch5queueERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN3ims14CFMutableArrayESH_i_block_invoke_40;
        v44[3] = &__block_descriptor_tmp_42;
        v44[4] = v18;
        dispatch_source_set_cancel_handler(v18, v44);
        v19 = *a4;
        object = v19;
        if (v19)
        {
          dispatch_retain(v19);
        }

        ImsSocket::attachDispatchSource(a1, &object, v43);
        ImsResult::~ImsResult(v43);
        if (object)
        {
          dispatch_release(object);
        }

        dispatch_resume(a1[23]);
        if (a1[6])
        {
          v20 = std::string::basic_string[abi:ne200100]<0>(&v58, "net");
          v38[0] = 0;
          v41 = 0;
          v21 = ims::debug(v20, v38);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Initialized TCP connection ", 27);
          *(v21 + 17) = 0;
          v22 = a1[6];
          if (v22)
          {
            (*(*v22 + 40))(v22, v21);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), " -> ", 4);
          *(v21 + 17) = 0;
          v23 = a1[14];
          if (v23)
          {
            (*(*v23 + 40))(v23, v21);
          }

          (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v21 + 17) = 0;
          if (v41 == 1 && v40 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v59) < 0)
          {
            operator delete(v58);
          }
        }

        if (a7 && ((a1[24] & 1) != 0 || (*(*a1 + 128))(a1)))
        {
          std::string::basic_string[abi:ne200100]<0>(v47, "net");
          LOBYTE(v58) = 0;
          BYTE8(v61) = 0;
          v24 = ims::debug(v47, &v58);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "Initializing TCP-KeepAlive on ", 30);
          *(v24 + 17) = 0;
          (*(*a1 + 112))(v64, a1);
          (*(*v24 + 32))(v24, v64);
          (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v24 + 17) = 0;
          if (v65 < 0)
          {
            operator delete(v64[0]);
          }

          if (BYTE8(v61) == 1 && SHIBYTE(v60) < 0)
          {
            operator delete(v59);
          }

          if (SHIBYTE(v48) < 0)
          {
            operator delete(v47[0]);
          }

          v25 = std::string::basic_string[abi:ne200100]<0>(v64, "net");
          LOBYTE(v47[0]) = 0;
          BYTE8(v50) = 0;
          v26 = ims::debug(v25, v47);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v26 + 8), "TCP Keepalive not supported", 27);
          *(v26 + 17) = 0;
          (*(*v26 + 64))(v26, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v26 + 17) = 0;
          if (BYTE8(v50) == 1 && SHIBYTE(v49) < 0)
          {
            operator delete(v48);
          }

          if (v65 < 0)
          {
            operator delete(v64[0]);
          }
        }

        *(a6 + 24) = 0u;
        *(a6 + 40) = 0u;
        *(a6 + 56) = 0u;
        *(a6 + 72) = 0u;
        *a6 = &unk_1F5EBDEF8;
        *(a6 + 8) = &_bambiDomain;
        *(a6 + 16) = 0;
        if (*(&v46 + 1))
        {
          std::__shared_weak_count::__release_weak(*(&v46 + 1));
        }

        if (*(&v16 + 1))
        {
          std::__shared_weak_count::__release_weak(*(&v16 + 1));
        }
      }

      else
      {
        v33 = std::string::basic_string[abi:ne200100]<0>(&v58, "net");
        v53[0] = 0;
        v56 = 0;
        v34 = ims::error(v33, v53);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v34 + 8), "ImsTcpSocket: Unable to create CFSocket for TCP connection", 58);
        *(v34 + 17) = 0;
        (*(*v34 + 64))(v34, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v34 + 17) = 0;
        if (v56 == 1 && v55 < 0)
        {
          operator delete(v54);
        }

        if (SHIBYTE(v59) < 0)
        {
          operator delete(v58);
        }

        close(a2);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        *&v58 = &unk_1F5EBDEF8;
        *(&v58 + 1) = &_bambiDomain;
        LODWORD(v59) = 0x40000000;
        v35 = ImsResult::operator<<<char [26]>(&v58, "Unable to create CFSocket");
        ImsResult::ImsResult(a6, v35);
        ImsResult::~ImsResult(&v58);
      }

      return;
    }

    std::string::basic_string[abi:ne200100]<0>(v47, "net");
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    *&v58 = &unk_1F5EBDEF8;
    *(&v58 + 1) = &_bambiDomain;
    LODWORD(v59) = 1073741825;
    v30 = ImsResult::operator<<<char [38]>(&v58, "no port specified for remote address ");
    v31 = ImsResult::operator<<<std::shared_ptr<IpAddress>>(v30, a3);
    v32 = ims::result::log(v47, v31);
    ImsResult::ImsResult(a6, v32);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "net");
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    *&v58 = &unk_1F5EBDEF8;
    *(&v58 + 1) = &_bambiDomain;
    LODWORD(v59) = 1073741825;
    v27 = ImsResult::operator<<<char [24]>(&v58, "invalid remote address ");
    v28 = ImsResult::operator<<<std::shared_ptr<IpAddress>>(v27, a3);
    v29 = ims::result::log(v47, v28);
    ImsResult::ImsResult(a6, v29);
  }

  ImsResult::~ImsResult(&v58);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }
}

void ___ZN12ImsTcpSocket16initializeSocketEiRKNSt3__110shared_ptrI9IpAddressEERKN8dispatch5queueERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN3ims14CFMutableArrayESH_i_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        *v33 = 0;
        getsockopt(**(v3 + 8), 0xFFFF, 4103, &v33[1], v33);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v28[0] = &unk_1F5EBDEF8;
        v28[1] = &_posixDomain;
        v28[2] = v33[1];
        if ((*(_posixDomain + 24))())
        {
          std::string::basic_string[abi:ne200100]<0>(v14, "net");
          LOBYTE(v20[0]) = 0;
          v23 = 0;
          v6 = ims::error(v14, v20);
          (*(*v3 + 120))(v24, v3);
          (*(*v6 + 32))(v6, v24);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "ImsTcpSocket: could not connect to ", 35);
          *(v6 + 17) = 0;
          v7 = *(v3 + 14);
          if (v7)
          {
            (*(*v7 + 40))(v7, v6);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), ": ", 2);
          *(v6 + 17) = 0;
          (*(v28[0] + 16))(v28, v6);
          (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v6 + 17) = 0;
          if (SHIBYTE(v25) < 0)
          {
            operator delete(v24[0]);
          }

          if (v23 == 1 && v22 < 0)
          {
            operator delete(__p);
          }

          if (v15 < 0)
          {
            operator delete(v14[0]);
          }

          *(v3 + 128) = 0;
          std::__list_imp<std::vector<unsigned char>>::clear(v3 + 17);
          v8 = *(v3 + 22);
          if (v8)
          {
            v9 = std::__shared_weak_count::lock(v8);
            if (v9)
            {
              v10 = v9;
              v11 = *(v3 + 21);
              if (v11)
              {
                (*(*v11 + 32))(v11, v28);
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }
          }
        }

        else
        {
          *(v3 + 128) = 1;
          if (v3[41] >= 1)
          {
            std::string::basic_string[abi:ne200100]<0>(v20, "net");
            LOBYTE(v24[0]) = 0;
            v27 = 0;
            v12 = ims::debug(v20, v24);
            (*(*v3 + 112))(v14, v3);
            (*(*v12 + 32))(v12, v14);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v12 + 8), ": setting MSS for outgoing TCP socket to ", 41);
            *(v12 + 17) = 0;
            MEMORY[0x1E6923340](*(v12 + 8), v3[41]);
            *(v12 + 17) = 0;
            (*(*v12 + 64))(v12, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v12 + 17) = 0;
            if (v15 < 0)
            {
              operator delete(v14[0]);
            }

            if (v27 == 1 && v26 < 0)
            {
              operator delete(v25);
            }

            if (SHIBYTE(__p) < 0)
            {
              operator delete(v20[0]);
            }

            ImsSocket::socketDescriptor(v3);
            ImsTcpSocket::setMaxSegmentSize(v20, v3[41]);
            ImsResult::~ImsResult(v20);
          }

          std::string::basic_string[abi:ne200100]<0>(v14, "net");
          v16[0] = 0;
          v19 = 0;
          v13 = ims::debug(v14, v16);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "Socket just connected, sending queued up data", 45);
          *(v13 + 17) = 0;
          (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v13 + 17) = 0;
          if (v19 == 1 && v18 < 0)
          {
            operator delete(v17);
          }

          if (v15 < 0)
          {
            operator delete(v14[0]);
          }

          ImsTcpSocket::_sendQueuedData(v3);
          if (*(v3 + 129) == 1)
          {
            (*(*v3 + 96))(v14, v3);
            ImsResult::~ImsResult(v14);
          }

          dispatch_source_cancel(*(v3 + 23));
          *(v3 + 23) = 0;
        }

        ImsResult::~ImsResult(v28);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_1E4E9C100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  ImsResult::~ImsResult((v47 - 128));
  std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  _Unwind_Resume(a1);
}

void ___ZN12ImsTcpSocket16initializeSocketEiRKNSt3__110shared_ptrI9IpAddressEERKN8dispatch5queueERKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN3ims14CFMutableArrayESH_i_block_invoke_40(uint64_t a1)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(&v8, "net");
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "ImsTcpSocket: finished with connect source.", 43);
  *(v3 + 17) = 0;
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  dispatch_release(*(a1 + 32));
}

void sub_1E4E9C2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a18 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

void ImsTcpSocket::name(ImsTcpSocket *this)
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  ImsStringOutStream::ImsStringOutStream(v1);
}

void sub_1E4E9C58C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
    if (a17)
    {
      (*(*a17 + 8))(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void ImsTcpSocket::socketReadCallback(ImsTcpSocket *this)
{
  std::shared_ptr<RTPSharedPointerBase>::shared_ptr[abi:ne200100]<RTPSharedPointerBase,0>(&v5, this + 1);
  v2 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = *(this + 10);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = *(this + 10);
  }

  operator new();
}

void ImsTcpSocket::_initializeIncoming(void *a1@<X0>, ImsSocket *a2@<X1>, uint64_t a3@<X2>, dispatch_object_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(**a3 + 32))(&v28);
  v11 = v28;
  v28 = 0uLL;
  v12 = a1[15];
  *(a1 + 7) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    if (*(&v28 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
    }
  }

  ImsSocket::setNoTimeWaitForSocket(a2, v38);
  ImsResult::~ImsResult(v38);
  ImsSocket::setNoSigpipeOptionForSocket(a2, v37);
  ImsResult::~ImsResult(v37);
  if (ImsSocket::_createSocketWithDispatch(a1, a2, a4, a5, 1))
  {
    if (*(a1 + 41) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "net");
      v24[0] = 0;
      v27 = 0;
      v13 = ims::debug(&v28, v24);
      (*(*a1 + 112))(__p, a1);
      (*(*v13 + 32))(v13, __p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), ": setting MSS for incoming TCP socket to ", 41);
      *(v13 + 17) = 0;
      MEMORY[0x1E6923340](*(v13 + 8), *(a1 + 41));
      *(v13 + 17) = 0;
      (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v13 + 17) = 0;
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v30 < 0)
      {
        operator delete(v28);
      }

      ImsTcpSocket::setMaxSegmentSize(v23, *(a1 + 41));
      ImsResult::~ImsResult(v23);
    }

    *(a1 + 128) = 1;
    if (a1[6])
    {
      std::string::basic_string[abi:ne200100]<0>(&v28, "net");
      v19[0] = 0;
      v22 = 0;
      v14 = ims::debug(&v28, v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "Initialized TCP connection ", 27);
      *(v14 + 17) = 0;
      v15 = a1[6];
      if (v15)
      {
        (*(*v15 + 40))(v15, v14);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), " <- ", 4);
      *(v14 + 17) = 0;
      v16 = a1[14];
      if (v16)
      {
        (*(*v16 + 40))(v16, v14);
      }

      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20);
      }

      if (v30 < 0)
      {
        operator delete(v28);
      }
    }

    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *a6 = &unk_1F5EBDEF8;
    *(a6 + 8) = &_bambiDomain;
    *(a6 + 16) = 0;
  }

  else
  {
    close(a2);
    std::string::basic_string[abi:ne200100]<0>(__p, "net");
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    *&v28 = &unk_1F5EBDEF8;
    *(&v28 + 1) = &_bambiDomain;
    v29 = 0x40000000;
    v17 = ImsResult::operator<<<char [45]>(&v28, "Unable to create CFSocket for TCP connection");
    v18 = ims::result::log(__p, v17);
    ImsResult::ImsResult(a6, v18);
    ImsResult::~ImsResult(&v28);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1E4E9CB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a40 == 1 && a38 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(exception_object);
}

void ImsTcpSocket::send(ImsTcpSocket *this@<X0>, const unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, ImsResult *a4@<X8>)
{
  v5 = *(this + 8);
  if (!v5 || *v5 == -1)
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    __p = &unk_1F5EBDEF8;
    v12 = &_bambiDomain;
    LODWORD(v13) = 1073741827;
    v10 = ImsResult::operator<<<char [29]>(&__p, "send: socket not initialized");
    ImsResult::ImsResult(a4, v10);
    ImsResult::~ImsResult(&__p);
  }

  else
  {
    if (((*(*this + 88))(this) & 1) == 0)
    {
      __p = 0;
      v12 = 0;
      v13 = 0;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, a2, &a2[a3], a3);
      std::__list_imp<std::vector<unsigned char>>::__create_node[abi:ne200100]<std::vector<unsigned char> const&>();
    }

    v9 = *(*this + 56);

    v9(this, a2, a3);
  }
}

void sub_1E4E9CD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsTcpSocket::_writeToSocket(ImsTcpSocket *this@<X0>, const unsigned __int8 *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v6 = send(**(this + 8), a2, a3, 0);
  v35 = v6;
  if (v6 == -1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v34, "net");
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    __p[0] = &unk_1F5EBDEF8;
    __p[1] = &_bambiDomain;
    v22 = 1073741840;
    v7 = ImsResult::operator<<<char [33]>(__p, "ImsTcpSocket: Socket write error");
    v8 = *__error();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15[0] = &unk_1F5EBDEF8;
    v15[1] = &_posixDomain;
    v16 = v8;
    ims::result::resultWithCause(v7, v15, v28);
  }

  if (v6 == a3)
  {
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *a4 = &unk_1F5EBDEF8;
    *(a4 + 8) = &_bambiDomain;
    *(a4 + 16) = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "net");
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28[0] = &unk_1F5EBDEF8;
    v28[1] = &_bambiDomain;
    v29 = 0x40000000;
    v9 = ImsResult::operator<<<char [25]>(v28, "ImsTcpSocket: only sent ");
    v10 = ImsResult::operator<<<long>(v9, &v35);
    v11 = ImsResult::operator<<<char [5]>(v10, " of ");
    v12 = ImsResult::operator<<<unsigned long>(v11, &v36);
    v13 = ImsResult::operator<<<char [7]>(v12, " bytes");
    v14 = ims::result::log(__p, v13);
    ImsResult::ImsResult(a4, v14);
    ImsResult::~ImsResult(v28);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1E4E9CFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  ImsResult::~ImsResult((v20 - 160));
  ImsResult::~ImsResult(&a9);
  ImsResult::~ImsResult(&a20);
  if (*(v20 - 49) < 0)
  {
    operator delete(*(v20 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t ImsResult::operator<<<long>(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    operator new();
  }

  MEMORY[0x1E6923360](*(v3 + 8), *a2);
  *(v3 + 17) = 0;
  return a1;
}

uint64_t ImsResult::operator<<<char [5]>(uint64_t a1, char *__s)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    operator new();
  }

  v5 = strlen(__s);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), __s, v5);
  *(v4 + 17) = 0;
  return a1;
}

uint64_t ImsTcpSocket::send(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return (*(*a1 + 72))(a1, a2, v3);
}

double ImsTcpSocket::shutdown@<D0>(ImsTcpSocket *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 8);
  if (!v3 || *v3 == -1)
  {
    result = 0.0;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *a2 = &unk_1F5EBDEF8;
    *(a2 + 8) = &_bambiDomain;
    v7 = 1073741827;
    goto LABEL_12;
  }

  if ((*(*this + 88))(this))
  {
    v5 = std::string::basic_string[abi:ne200100]<0>(v19, "net");
    v11[0] = 0;
    v14 = 0;
    v6 = ims::debug(v5, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v6 + 8), "shutting down socket", 20);
    *(v6 + 17) = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v6 + 17) = 0;
    if (v14 == 1 && v13 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    if (shutdown(**(this + 8), 1))
    {
      v7 = *__error();
      result = 0.0;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *a2 = &unk_1F5EBDEF8;
      *(a2 + 8) = &_posixDomain;
LABEL_12:
      *(a2 + 16) = v7;
      return result;
    }
  }

  else
  {
    v9 = std::string::basic_string[abi:ne200100]<0>(v19, "net");
    v15[0] = 0;
    v18 = 0;
    v10 = ims::debug(v9, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "Socket not  yet connected. Queue up shutdown", 44);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    if (v18 == 1 && v17 < 0)
    {
      operator delete(v16);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }

    *(this + 129) = 1;
  }

  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *a2 = &unk_1F5EBDEF8;
  *(a2 + 8) = &_bambiDomain;
  *(a2 + 16) = 0;
  return result;
}

void sub_1E4E9D454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a29 == 1 && a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 33) < 0)
  {
    operator delete(*(v29 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsTcpSocket::reset(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    v2 = this;
    this = *v1;
    if (this != -1)
    {
      v5 = 1;
      setsockopt(this, 0xFFFF, 128, &v5, 8u);
      v3 = *(v2 + 23);
      if (v3)
      {
        dispatch_source_cancel(v3);
        *(v2 + 23) = 0;
      }

      v4 = *(v2 + 22);
      *(v2 + 21) = 0;
      *(v2 + 22) = 0;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      ImsSocket::close(v2);
    }
  }

  return this;
}

uint64_t ImsTcpSocket::remoteEndAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 120);
  *a2 = *(this + 112);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t non-virtual thunk toImsTcpSocket::remoteEndAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void ImsTcpSocket::initializeIncomingSocket(void *a1@<X0>, ImsSocket *a2@<X1>, uint64_t a3@<X2>, dispatch_object_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *(a6 + 8);
  v14[0] = &unk_1F5EF3658;
  v14[1] = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v14[0] = &unk_1F5EBE6A8;
  ImsTcpSocket::_initializeIncoming(a1, a2, a3, a4, a5, a7);
  ims::CFType::~CFType(v14);
}

uint64_t ImsTcpSocket::socketLocalAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  *a2 = *(this + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t non-virtual thunk toImsTcpSocket::socketLocalAddress@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this - 48);
  *a2 = *(this - 56);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void ImsTcpSocket::setSocketLocalAddress(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 56);
  *(a1 + 48) = v3;
  *(a1 + 56) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void non-virtual thunk toImsTcpSocket::setSocketLocalAddress(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 - 48);
  *(a1 - 56) = v3;
  *(a1 - 48) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void ImsTcpSocket::setSocketDelegate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 176);
  *(a1 + 168) = v3;
  *(a1 + 176) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void non-virtual thunk toImsTcpSocket::setSocketDelegate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 72);
  *(a1 + 64) = v3;
  *(a1 + 72) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

double ImsTcpSocket::_handshakeDone@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

double ImsTcpSocket::initializeIncomingNw@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 1073741833;
  return result;
}

void ImsTcpSocket::resetSocketDelegate(ImsTcpSocket *this)
{
  v2 = *(this + 22);
  *(this + 21) = 0;
  *(this + 22) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

double non-virtual thunk toImsTcpSocket::initializeIncomingNw@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *a1 = &unk_1F5EBDEF8;
  *(a1 + 8) = &_bambiDomain;
  *(a1 + 16) = 1073741833;
  return result;
}

void non-virtual thunk toImsTcpSocket::resetSocketDelegate(ImsTcpSocket *this)
{
  v2 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__list_imp<std::vector<unsigned char>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<std::vector<unsigned char>>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::vector<unsigned char>>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[2];
  if (v3)
  {
    __p[3] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

uint64_t *std::unique_ptr<ImsTcpSocket::socketReadCallback(void)::$_0,std::default_delete<ImsTcpSocket::socketReadCallback(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    MEMORY[0x1E69235B0](v2, 0x20C40960023A9);
  }

  return a1;
}

uint64_t *dispatch::async<ImsTcpSocket::socketReadCallback(void)::$_0>(dispatch_queue_s *,std::unique_ptr<ImsTcpSocket::socketReadCallback(void)::$_0,std::default_delete<ImsTcpSocket::socketReadCallback(void)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v7 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        (*(*v3 + 48))(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return std::unique_ptr<ImsTcpSocket::socketReadCallback(void)::$_0,std::default_delete<ImsTcpSocket::socketReadCallback(void)::$_0>>::~unique_ptr[abi:ne200100](&v7);
}

void sub_1E4E9DCBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::unique_ptr<ImsTcpSocket::socketReadCallback(void)::$_0,std::default_delete<ImsTcpSocket::socketReadCallback(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ImsLogContainer::ImsLogContainer(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_1F5ED7318;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100]((a1 + 32), a3);
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  return a1;
}

void sub_1E4E9DDEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsLogContainer::logPriority(ImsLogContainer *this)
{
  v2 = ims::logger(this);
  v3 = ImsLogger::facilityWithName(v2, this + 8, 0);
  v4 = v2 + 96;
  if (v3)
  {
    v4 = v3;
  }

  return *(v4 + 80);
}

uint64_t ImsLogContainer::logResult(uint64_t a1, uint64_t a2)
{
  if ((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)))
  {
    v4 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v4);
    (*(*a2 + 16))(a2, v4);
    (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v4[17] = 0;
  }

  return a2;
}

uint64_t ImsLogContainer::logResult@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(**(a2 + 8) + 24))(*(a2 + 8), *(a2 + 16)))
  {
    v6 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v6);
    (*(*a2 + 16))(a2, v6);
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v6[17] = 0;
  }

  return ImsResult::ImsResult(a3, a2);
}

uint64_t ImsLogContainer::infoStream(ImsLogContainer *this)
{
  result = *(this + 11);
  if (!result)
  {
    std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v3, this + 32);
    result = ims::info(this + 8, v3);
    *(this + 11) = result;
    if (v6 == 1 && v5 < 0)
    {
      operator delete(__p);
      return *(this + 11);
    }
  }

  return result;
}

void sub_1E4E9E110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsLogContainer::noticeStream(ImsLogContainer *this)
{
  result = *(this + 12);
  if (!result)
  {
    std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v3, this + 32);
    result = ims::notice(this + 8, v3);
    *(this + 12) = result;
    if (v6 == 1 && v5 < 0)
    {
      operator delete(__p);
      return *(this + 12);
    }
  }

  return result;
}

void sub_1E4E9E1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsLogContainer::warnStream(ImsLogContainer *this)
{
  result = *(this + 13);
  if (!result)
  {
    std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v3, this + 32);
    result = ims::warn(this + 8, v3);
    *(this + 13) = result;
    if (v6 == 1 && v5 < 0)
    {
      operator delete(__p);
      return *(this + 13);
    }
  }

  return result;
}

void sub_1E4E9E238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsLogContainer::errorStream(ImsLogContainer *this)
{
  result = *(this + 14);
  if (!result)
  {
    std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v3, this + 32);
    result = ims::error(this + 8, v3);
    *(this + 14) = result;
    if (v6 == 1 && v5 < 0)
    {
      operator delete(__p);
      return *(this + 14);
    }
  }

  return result;
}

void sub_1E4E9E2CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsLogContainer::spamStream(ImsLogContainer *this)
{
  result = *(this + 16);
  if (!result)
  {
    std::__optional_copy_base<ClientConfig const,false>::__optional_copy_base[abi:ne200100](v3, this + 32);
    result = ims::spam(this + 8, v3);
    *(this + 16) = result;
    if (v6 == 1 && v5 < 0)
    {
      operator delete(__p);
      return *(this + 16);
    }
  }

  return result;
}

void sub_1E4E9E360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImsLogContainer::facility(ImsLogContainer *this)
{
  v2 = ims::logger(this);

  return ImsLogger::facilityWithName(v2, this + 8, 1);
}

uint64_t ImsLogContainerWrapper::infoStream(ImsLogContainerWrapper *this)
{
  v1 = *(this + 1);
  v2 = (*(*v1 + 32))(v1);
  (*(*v1 + 16))(v1, v2);
  return v2;
}

uint64_t ImsLogContainerWrapper::noticeStream(ImsLogContainerWrapper *this)
{
  v1 = *(this + 1);
  v2 = (*(*v1 + 40))(v1);
  (*(*v1 + 16))(v1, v2);
  return v2;
}

uint64_t ImsLogContainerWrapper::warnStream(ImsLogContainerWrapper *this)
{
  v1 = *(this + 1);
  v2 = (*(*v1 + 48))(v1);
  (*(*v1 + 16))(v1, v2);
  return v2;
}

uint64_t ImsLogContainerWrapper::errorStream(ImsLogContainerWrapper *this)
{
  v1 = *(this + 1);
  v2 = (*(*v1 + 56))(v1);
  (*(*v1 + 16))(v1, v2);
  return v2;
}

uint64_t ImsLogContainerWrapper::debugStream(ImsLogContainerWrapper *this)
{
  v1 = *(this + 1);
  v2 = (*(*v1 + 64))(v1);
  (*(*v1 + 16))(v1, v2);
  return v2;
}

uint64_t ImsLogContainerWrapper::spamStream(ImsLogContainerWrapper *this)
{
  v1 = *(this + 1);
  v2 = (*(*v1 + 72))(v1);
  (*(*v1 + 16))(v1, v2);
  return v2;
}

void ImsLogWriter::write(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x4002000000;
  v6[3] = __Block_byref_object_copy__2;
  v6[4] = __Block_byref_object_dispose__2;
  memset(&__p, 0, sizeof(__p));
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    __p = *(a2 + 48);
  }

  ims::getQueue(&queue);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN12ImsLogWriter5writeERKN3ctu10LogMessageE_block_invoke;
  block[3] = &unk_1E876A778;
  block[4] = v6;
  block[5] = a1;
  v3 = queue;
  dispatch_async(queue, block);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Block_object_dispose(v6, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t ___ZN12ImsLogWriter5writeERKN3ctu10LogMessageE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[1];
  v4 = (*(v3 + 64))(++v2);
  (*(*v2 + 16))(v2, v4);
  (*(*v4 + 32))(v4, *(*(a1 + 32) + 8) + 40);
  result = (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v4[17] = 0;
  return result;
}

void ImsDebugLogWriter::write(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x4002000000;
  v6[3] = __Block_byref_object_copy__2;
  v6[4] = __Block_byref_object_dispose__2;
  memset(&__p, 0, sizeof(__p));
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    __p = *(a2 + 48);
  }

  ims::getQueue(&queue);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN17ImsDebugLogWriter5writeERKN3ctu10LogMessageE_block_invoke;
  block[3] = &unk_1E876A7A0;
  block[4] = v6;
  block[5] = a1;
  v3 = queue;
  dispatch_async(queue, block);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Block_object_dispose(v6, 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN17ImsDebugLogWriter5writeERKN3ctu10LogMessageE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4[0] = 0;
  v7 = 0;
  v3 = ims::debug(v2 + 8, v4);
  (*(*v3 + 32))(v3, *(*(a1 + 32) + 8) + 40);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v3[17] = 0;
  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_1E4E9EB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19)
{
  if (a19 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsDebugLogWriter::~ImsDebugLogWriter(void **this)
{
  *this = &unk_1F5ED7298;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F5ED7298;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1E69235B0);
}

uint64_t std::construct_at[abi:ne200100]<ClientConfig,ClientConfig const&,ClientConfig*>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 32) = a2[4];
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t SipPreconditions::ForkStatus::ForkStatus(uint64_t a1, uint64_t a2, const std::string *a3)
{
  *a1 = &unk_1F5ED7128;
  *(a1 + 8) = a2;
  ctu::OsLogLogger::OsLogLogger((a1 + 24), "com.apple.ipTelephony", "sip.forkstatus");
  *a1 = &unk_1F5ED7378;
  *(a1 + 16) = &unk_1F5ED73D8;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0;
  *(a1 + 80) = 1;
  *(a1 + 32) = a2;
  std::string::operator=((a1 + 56), a3);
  return a1;
}

void sub_1E4E9EE80(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  MEMORY[0x1E69225A0](v1 + 24);
  _Unwind_Resume(a1);
}

BOOL SipPreconditions::ForkStatus::setSatisfied(uint64_t a1, int a2, int a3, int a4)
{
  if (*(a1 + 44) != 5 || *(a1 + 52) != 1)
  {
    goto LABEL_5;
  }

  if (*(a1 + 53) == 1)
  {
    if (*(a1 + 48) == 3)
    {
LABEL_5:
      v5 = 1;
      goto LABEL_6;
    }

    v5 = *(a1 + 80) != 3;
  }

  else
  {
    v5 = 0;
  }

LABEL_6:
  if (a4)
  {
    *(a1 + 53) = 1;
  }

  if (a2)
  {
    *(a1 + 80) = a2;
  }

  *(a1 + 48) = a3;
  if (v5)
  {
    v6 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v6);
    v7 = *(v6 + 1);
    v8 = "remote preconditions have already been satisfied";
    v9 = 48;
LABEL_20:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    v6[17] = 0;
    (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v6[17] = 0;
    return !v5;
  }

  v10 = *(a1 + 79);
  if (v10 < 0)
  {
    v10 = *(a1 + 64);
  }

  v6 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v6);
  v7 = *(v6 + 1);
  if (!v10)
  {
    v8 = "remote preconditions have been satisfied";
    v9 = 40;
    goto LABEL_20;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "remote preconditions have been satisfied in fork ", 49);
  v6[17] = 0;
  ObfuscatedString::ObfuscatedString(v12, (a1 + 56));
  (*(*v6 + 56))(v6, v12);
  (*(*v6 + 64))(v6, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v6[17] = 0;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return !v5;
}

void SipPreconditions::ForkStatus::setPreconditionsEnabled(SipPreconditions::ForkStatus *this, int a2)
{
  v4 = (*(*this + 64))(this);
  (*(*this + 16))(this, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), "Preconditions ", 14);
  *(v4 + 17) = 0;
  if (a2)
  {
    v5 = "enabled";
  }

  else
  {
    v5 = "disabled";
  }

  if (a2)
  {
    v6 = 7;
  }

  else
  {
    v6 = 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), v5, v6);
  *(v4 + 17) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v4 + 8), " in fork ", 9);
  *(v4 + 17) = 0;
  ObfuscatedString::ObfuscatedString(v7, (this + 56));
  (*(*v4 + 56))(v4, v7);
  (*(*v4 + 64))(v4, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v4 + 17) = 0;
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *(this + 52) = a2;
}

void SipPreconditions::ForkStatus::setNeedToSendUpdate(SipPreconditions::ForkStatus *this, int a2)
{
  if (*(this + 54) != a2)
  {
    *(this + 54) = a2;
    v4 = *(this + 79);
    if (v4 < 0)
    {
      v4 = *(this + 8);
    }

    v5 = (*(*this + 64))(this);
    (*(*this + 16))(this, v5);
    if (a2)
    {
      v6 = "set";
    }

    else
    {
      v6 = "cleared";
    }

    if (a2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 7;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), v6, v7);
    *(v5 + 17) = 0;
    v8 = *(v5 + 8);
    if (v4)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " needToSendUpdate flag in fork ", 31);
      *(v5 + 17) = 0;
      ObfuscatedString::ObfuscatedString(v9, (this + 56));
      (*(*v5 + 56))(v5, v9);
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
      if (v12 < 0)
      {
        operator delete(__p);
      }

      if (v10 < 0)
      {
        operator delete(v9[0]);
      }
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " needToSendUpdate flag in unknown fork", 38);
      *(v5 + 17) = 0;
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
    }
  }
}

uint64_t SipPreconditions::SipPreconditions(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = &unk_1F5ED7128;
  *(a1 + 8) = a3;
  ctu::OsLogLogger::OsLogLogger((a1 + 24), "com.apple.ipTelephony", "sip.precond");
  *a1 = &unk_1F5ED7400;
  *(a1 + 16) = &unk_1F5ED7460;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x200000001;
  *(a1 + 56) = 256;
  *(a1 + 58) = 1;
  *(a1 + 67) = 256;
  *(a1 + 59) = 0;
  *(a1 + 69) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0x100000003;
  *(a1 + 112) = 5;
  *(a1 + 116) = 0;
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    v7 = *(a1 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  return a1;
}

void SipPreconditions::~SipPreconditions(SipPreconditions *this)
{
  *this = &unk_1F5ED7400;
  *(this + 2) = &unk_1F5ED7460;
  v2 = (this + 88);
  std::__tree<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<SipPreconditions::ForkStatus>>>>::destroy(*(this + 11));
  *(this + 10) = v2;
  *(this + 12) = 0;
  *v2 = 0;
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x1E69225A0](this + 24);
}

{
  SipPreconditions::~SipPreconditions(this);

  JUMPOUT(0x1E69235B0);
}

void non-virtual thunk toSipPreconditions::~SipPreconditions(SipPreconditions *this)
{
  SipPreconditions::~SipPreconditions((this - 16));
}

{
  SipPreconditions::~SipPreconditions((this - 16));

  JUMPOUT(0x1E69235B0);
}

void *SipPreconditions::logPrefix(SipPreconditions *this, ImsOutStream *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Preconditions: ", 15);
  *(a2 + 17) = 0;
  return result;
}

uint64_t SipPreconditions::forkStatusWithTag@<X0>(uint64_t a1@<X0>, void **a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  result = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 80, a2);
  if (a1 + 88 == result)
  {
    *a4 = 0;
    a4[1] = 0;
    if (a3)
    {
      std::allocate_shared[abi:ne200100]<SipPreconditions::ForkStatus,std::allocator<SipPreconditions::ForkStatus>,SipPreconditions*,std::string const&,0>();
    }
  }

  else
  {
    *a4 = *(result + 56);
    v8 = *(result + 64);
    a4[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void sub_1E4E9F7EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SipPreconditions::initializeMobileOriginated(unsigned int *a1, _OWORD *a2)
{
  *(a1 + 117) = 1;
  v3 = *(a2 + 9);
  *(a1 + 3) = *a2;
  *(a1 + 57) = v3;
  *(a1 + 116) = 0;
  a1[28] = 5;
  v4 = a1[12];
  if ((v4 - 3) < 2)
  {
    v4 = 3;
LABEL_4:
    a1[27] = v4;
    goto LABEL_6;
  }

  if (v4 == 2)
  {
    goto LABEL_4;
  }

  a1[28] = 1;
  a1[26] = 1;
LABEL_6:
  v5 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "Local desired precondition strength is ", 39);
  *(v5 + 17) = 0;
  (*(*v5 + 32))(v5, __p);
  (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v5 + 17) = 0;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1E4E9F984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPreconditions::initializeMobileTerminated(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v5 = *(a2 + 9);
  *(a1 + 48) = *a2;
  *(a1 + 57) = v5;
  *(a1 + 116) = 0;
  *(a1 + 112) = 5;
  v6 = *(a1 + 48);
  if ((v6 - 3) < 2)
  {
    v6 = 3;
LABEL_4:
    *(a1 + 108) = v6;
    goto LABEL_6;
  }

  if (v6 == 2)
  {
    goto LABEL_4;
  }

  v7 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "Preconditions NOT supported by network", 38);
  *(v7 + 17) = 0;
  (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v7 + 17) = 0;
  *(a1 + 112) = 1;
  *(a1 + 104) = 1;
LABEL_6:
  v9 = *a3;
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = SipMessage::header<SipFromHeader>(v9);
  if (v10)
  {
    v11 = SipUriHeader::tag(v10);
  }

  else
  {
    v11 = &ims::kEmptyString;
  }

  v49 = 0;
  v50 = 0;
  SipPreconditions::forkStatusWithTag(a1, v11, 1, &v49);
  v12 = SipMessage::body<SipSdpBody>(v9);
  if (v12)
  {
    v14 = v12[1];
    v13 = v12[2];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  SipPreconditions::ForkStatus::setPreconditionsEnabled(v49, 0);
  if (!v14)
  {
    v17 = 0;
    *(v49 + 20) = *(a1 + 52);
    goto LABEL_38;
  }

  if (SDPModel::containsPreconditions(v14, 1, 3))
  {
    *(v49 + 20) = 3;
    v15 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "Remote side requests mandatory preconditions", 44);
    *(v15 + 17) = 0;
    v16 = (v15 + 17);
    (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  else
  {
    if (!SDPModel::containsPreconditions(v14, 1, 2))
    {
      goto LABEL_22;
    }

    *(v49 + 20) = 2;
    v18 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v18 + 8), "Remote side requests optional preconditions", 43);
    *(v18 + 17) = 0;
    v16 = (v18 + 17);
    (*(*v18 + 64))(v18, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  }

  *v16 = 0;
LABEL_22:
  if (SDPModel::containsPreconditions(v14, 2, 3))
  {
    v19 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v19 + 8), "Remote side desires our use of mandatory preconditions", 54);
    *(v19 + 17) = 0;
    v20 = (v19 + 17);
    (*(*v19 + 64))(v19, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v17 = 3;
LABEL_26:
    *v20 = 0;
    goto LABEL_28;
  }

  if (SDPModel::containsPreconditions(v14, 2, 2))
  {
    v21 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "Remote side desires our use of optional preconditions", 53);
    *(v21 + 17) = 0;
    v20 = (v21 + 17);
    (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v17 = 2;
    goto LABEL_26;
  }

  v17 = 0;
LABEL_28:
  __p = 0;
  v47 = 0;
  v48 = 0;
  SDPPreconditionTable::SDPPreconditionTable(&__p, 1);
  SDPModel::transactionPreconditionTable(v14, &__p);
  v22 = v49;
  v23 = __p;
  if (__p == v47)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0;
    v25 = __p;
    do
    {
      if ((*v25 & (v25[2] == 1)) != 0)
      {
        v26 = v25[3];
      }

      else
      {
        v26 = 0;
      }

      v24 |= v26;
      v25 += 5;
    }

    while (v25 != v47);
  }

  *(v49 + 12) = v24;
  *(v22 + 53) = 1;
  if (v23)
  {
    v47 = v23;
    operator delete(v23);
  }

LABEL_38:
  std::string::basic_string[abi:ne200100]<0>(&__p, "precondition");
  v27 = SipMessage::supportsOption(v9, &__p);
  v28 = v27;
  if ((SHIBYTE(v48) & 0x80000000) == 0)
  {
    if (v27)
    {
      goto LABEL_40;
    }

LABEL_47:
    v32 = (*(*a1 + 32))(a1);
    (*(*a1 + 16))(a1, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v32 + 8), "incoming INVITE doesn't support preconditions.", 46);
    *(v32 + 17) = 0;
    (*(*v32 + 64))(v32, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v32 + 17) = 0;
    v31 = 1;
    *(v49 + 11) = 1;
    if (!v13)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  operator delete(__p);
  if (!v28)
  {
    goto LABEL_47;
  }

LABEL_40:
  v29 = v49;
  *(v49 + 11) = 5;
  if (v17 != 3)
  {
    if (*(a1 + 108) != 3 && *(v29 + 20) != 3)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "precondition");
      v35 = SipMessage::requiresOption(v9, &__p);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p);
      }

      if (!v35)
      {
        v44 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v44 + 8), "neither side requires preconditions, so let's skip them", 55);
        *(v44 + 17) = 0;
        (*(*v44 + 64))(v44, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v44 + 17) = 0;
        goto LABEL_69;
      }

      v29 = v49;
    }

LABEL_62:
    SipPreconditions::ForkStatus::setPreconditionsEnabled(v29, 1);
    v36 = *(a1 + 112);
    if (v36 != 1)
    {
      v36 = *(a1 + 108);
      if ((v17 & 2) != 0 && v36 <= v17)
      {
        v36 = *(a1 + 104);
        if (v36 >= v17)
        {
          v36 = v17;
        }
      }
    }

    *(v49 + 21) = v36;
    v37 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v37 + 8), "Local preconditions are ", 24);
    *(v37 + 17) = 0;
    (*(*v37 + 32))(v37, &__p);
    (*(*v37 + 64))(v37, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v37 + 17) = 0;
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p);
    }

LABEL_69:
    v31 = 1;
    if (!v13)
    {
      goto LABEL_49;
    }

LABEL_48:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    goto LABEL_49;
  }

  if (*(a1 + 104) == 3)
  {
    goto LABEL_62;
  }

  v30 = (*(*a1 + 48))(a1);
  (*(*a1 + 16))(a1, v30);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v30 + 8), "Remote side requests mandatory preconditions, but we only support ", 66);
  *(v30 + 17) = 0;
  (*(*v30 + 32))(v30, &__p);
  (*(*v30 + 64))(v30, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v30 + 17) = 0;
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p);
  }

  v31 = 0;
  if (v13)
  {
    goto LABEL_48;
  }

LABEL_49:
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v31)
  {
    v33 = SipMessage::header<SipFromHeader>(*a3);
    if (v33)
    {
      v34 = SipUriHeader::tag(v33);
    }

    else
    {
      v34 = &ims::kEmptyString;
    }

    if (SipPreconditions::preconditionsEnabled(a1, v34))
    {
      *(a1 + 116) = 0;
    }

    else
    {
      *(a1 + 116) = 1;
      v38 = *(a1 + 40);
      if (v38)
      {
        v39 = std::__shared_weak_count::lock(v38);
        if (v39)
        {
          v40 = v39;
          v41 = *(a1 + 32);
          if (v41)
          {
            v42 = SipMessage::header<SipFromHeader>(*a3);
            if (v42)
            {
              v43 = SipUriHeader::tag(v42);
            }

            else
            {
              v43 = &ims::kEmptyString;
            }

            (*(*v41 + 24))(v41, v43);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }
      }
    }
  }

  return v31;
}

void sub_1E4EA0468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPreconditions::preconditionsEnabled(uint64_t a1, void **a2)
{
  if (*(a1 + 112) == 1 || (v3 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 80, a2), a1 + 88 == v3))
  {
    v6 = 0;
  }

  else
  {
    v5 = *(v3 + 56);
    v4 = *(v3 + 64);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5 && *(v5 + 44) == 5)
    {
      v6 = *(v5 + 52);
      if (!v4)
      {
        return v6 & 1;
      }

      goto LABEL_11;
    }

    v6 = 0;
    if (v4)
    {
LABEL_11:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return v6 & 1;
}

void SipPreconditions::initializeNewFork(_DWORD *a1, void **a2)
{
  v6 = 0;
  v7 = 0;
  SipPreconditions::forkStatusWithTag(a1, a2, 1, &v6);
  *(v6 + 84) = a1[27];
  v3 = (*(*a1 + 64))(a1);
  (*(*a1 + 16))(a1, v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v3 + 8), "Local preconditions are ", 24);
  *(v3 + 17) = 0;
  (*(*v3 + 32))(v3, __p);
  (*(*v3 + 64))(v3, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v3 + 17) = 0;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1E4EA06D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void SipPreconditions::updateFromIncomingMessage(uint64_t a1, std::string *a2, uint64_t *a3)
{
  v61 = 0;
  v62 = 0;
  SipPreconditions::forkStatusWithTag(a1, &a2->__r_.__value_.__l.__data_, 1, &v61);
  v6 = SipMessage::body<SipSdpBody>(*a3);
  if (!v6)
  {
    v7 = 0;
LABEL_9:
    v10 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v10 + 8), "ignoring message with no incoming SDP", 37);
    *(v10 + 17) = 0;
    (*(*v10 + 64))(v10, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v10 + 17) = 0;
    goto LABEL_117;
  }

  v8 = v6[1];
  v7 = v6[2];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v8)
  {
    goto LABEL_9;
  }

  if (v61)
  {
    if (*(v61 + 11) == 5)
    {
      v9 = *(v61 + 52);
    }

    else
    {
      v9 = 0;
    }

    SipPreconditions::ForkStatus::setPreconditionsEnabled(v61, 0);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    SDPPreconditionTable::SDPPreconditionTable(&v54, 1);
    if ((SDPModel::transactionPreconditionTable(v8, &v54) & 1) == 0)
    {
      v16 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v16 + 8), "no precondition table in incoming message", 41);
      *(v16 + 17) = 0;
      (*(*v16 + 64))(v16, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v16 + 17) = 0;
      *(v61 + 53) = 1;
LABEL_114:
      v12 = v54;
      if (!v54)
      {
        goto LABEL_117;
      }

      v55 = v54;
      goto LABEL_116;
    }

    v13 = *(a1 + 40);
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = *(a1 + 32);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }

    v17 = v54;
    v53 = v14;
    if (v54 == v55)
    {
LABEL_29:
      *(v61 + 40) = 0;
      v20 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "remote side didn't ask for confirmation when our preconditions are satisfied", 76);
      *(v20 + 17) = 0;
      (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v20 + 17) = 0;
      if ((*(a1 + 58) & 1) == 0)
      {
        v21 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v21);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v21 + 8), "but we're going to tell them anyway", 35);
        *(v21 + 17) = 0;
        (*(*v21 + 64))(v21, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v21 + 17) = 0;
      }
    }

    else
    {
      v18 = *(v61 + 40);
      while (v17[1] != 1 || *(v17 + 2) != 2)
      {
        v17 += 20;
        if (v17 == v55)
        {
          goto LABEL_29;
        }
      }

      *(v61 + 40) = 1;
      v22 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "remote side asked for confirmation when our preconditions are satisfied", 71);
      *(v22 + 17) = 0;
      (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v22 + 17) = 0;
      if ((v18 & 1) == 0)
      {
        v23 = v54;
        if (v54 == v55)
        {
          v26 = 1;
        }

        else
        {
          v24 = 0;
          do
          {
            if ((*v23 & (*(v23 + 2) == 2)) != 0)
            {
              v25 = *(v23 + 3);
            }

            else
            {
              v25 = 0;
            }

            v24 |= v25;
            v23 += 20;
          }

          while (v23 != v55);
          v26 = v24 == 0;
        }

        v27 = !v26 || v15 == 0;
        if (!v27 && (*(*v15 + 32))(v15, a2))
        {
          SipPreconditions::ForkStatus::setNeedToSendUpdate(v61, 1);
        }
      }
    }

    v28 = v54;
    if (v54 == v55)
    {
      v31 = 0;
      v30 = 0;
      v32 = 0;
    }

    else
    {
      v29 = v54;
      while (*(v29 + 2) != 1)
      {
        v29 += 20;
        if (v29 == v55)
        {
          v30 = 0;
          goto LABEL_53;
        }
      }

      v30 = *(v29 + 4);
LABEL_53:
      v32 = 0;
      v33 = v54;
      do
      {
        if ((*v33 & (*(v33 + 2) == 1)) != 0)
        {
          v34 = *(v33 + 3);
        }

        else
        {
          v34 = 0;
        }

        v32 |= v34;
        v33 += 20;
      }

      while (v33 != v55);
      do
      {
        if (*(v28 + 2) == 2)
        {
          v31 = *(v28 + 4);
          goto LABEL_63;
        }

        v28 += 20;
      }

      while (v28 != v55);
      v31 = 0;
LABEL_63:
      if (v30 == 3)
      {
        v35 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v35);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v35 + 8), "remote side has mandatory preconditions", 39);
        *(v35 + 17) = 0;
        (*(*v35 + 64))(v35, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v35 + 17) = 0;
        v30 = 3;
      }
    }

    if (*(v61 + 21) == 3)
    {
      v36 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v36 + 8), "we previously offered mandatory local preconditions", 51);
      *(v36 + 17) = 0;
      (*(*v36 + 64))(v36, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v36 + 17) = 0;
    }

    v37 = *a3;
    std::string::basic_string[abi:ne200100]<0>(v57, "precondition");
    v38 = SipMessage::supportsOption(v37, v57);
    v39 = v38;
    if (v58 < 0)
    {
      operator delete(v57[0]);
      if (v39)
      {
LABEL_83:
        v43 = v61;
        *(v61 + 11) = 5;
        if (v31 == 3 || v30 == 3 || *(v43 + 21) == 3)
        {
          goto LABEL_84;
        }

        v45 = *a3;
        std::string::basic_string[abi:ne200100]<0>(v57, "precondition");
        v46 = SipMessage::requiresOption(v45, v57);
        if (v58 < 0)
        {
          operator delete(v57[0]);
        }

        if (v46)
        {
LABEL_84:
          if ((v30 & 0xFFFFFFFE) == 2)
          {
            if (v9)
            {
              v44 = v61;
            }

            else
            {
              v48 = (*(*a1 + 64))(a1);
              (*(*a1 + 16))(a1, v48);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v48 + 8), "Preconditions now enabled for fork ", 35);
              *(v48 + 17) = 0;
              ObfuscatedString::ObfuscatedString(v57, (v61 + 56));
              (*(*v48 + 56))(v48, v57);
              (*(*v48 + 64))(v48, std::endl[abi:ne200100]<char,std::char_traits<char>>);
              *(v48 + 17) = 0;
              if (v60 < 0)
              {
                operator delete(__p);
              }

              if (v58 < 0)
              {
                operator delete(v57[0]);
              }

              v44 = v61;
              *(v61 + 55) = 0;
            }

            SipPreconditions::ForkStatus::setPreconditionsEnabled(v44, 1);
          }

          v49 = v61;
          *(v61 + 20) = v30;
          v50 = *(a1 + 112);
          if (v50 != 1)
          {
            v50 = *(a1 + 108);
            if ((v31 & 0xFFFFFFFE) == 2 && v50 <= v31)
            {
              v50 = *(a1 + 104);
              if (v50 >= v31)
              {
                v50 = v31;
              }
            }
          }

          *(v49 + 21) = v50;
          for (i = *(v8 + 56); ; i += 200)
          {
            if (i == *(v8 + 57))
            {
              goto LABEL_111;
            }

            if (*(i + 12) == 2)
            {
              break;
            }
          }

          v52 = SDPPreconditionTable::rowsAreSatisfied((i + 160), 1);
          v49 = v61;
          if (!v52)
          {
LABEL_111:
            *(v49 + 53) = 1;
            *(v49 + 12) = v32;
            goto LABEL_112;
          }

          if (SipPreconditions::ForkStatus::setSatisfied(v61, v30, v32, 1))
          {
            goto LABEL_81;
          }

          goto LABEL_112;
        }

        v47 = (*(*a1 + 64))(a1);
        (*(*a1 + 16))(a1, v47);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v47 + 8), "neither side requires preconditions, so let's skip them", 55);
        *(v47 + 17) = 0;
        (*(*v47 + 64))(v47, std::endl[abi:ne200100]<char,std::char_traits<char>>);
        *(v47 + 17) = 0;
LABEL_81:
        SipPreconditions::checkPreconditionStatus(a1, a2);
LABEL_112:
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        goto LABEL_114;
      }
    }

    else if (v38)
    {
      goto LABEL_83;
    }

    if (*(a1 + 71) == 1)
    {
      for (j = v54; j != v55; j += 5)
      {
        if (j[4] >= 1)
        {
          v42 = (*(*a1 + 48))(a1);
          (*(*a1 + 16))(a1, v42);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v42 + 8), "Supported header is not present, but we will ignore this carrier non-compliance issue.", 86);
          *(v42 + 17) = 0;
          (*(*v42 + 64))(v42, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v42 + 17) = 0;
          goto LABEL_83;
        }
      }
    }

    v41 = (*(*a1 + 32))(a1);
    (*(*a1 + 16))(a1, v41);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), "remote fork ", 12);
    *(v41 + 17) = 0;
    ObfuscatedString::ObfuscatedString(v57, a2);
    (*(*v41 + 56))(v41, v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v41 + 8), " doesn't support preconditions.", 31);
    *(v41 + 17) = 0;
    (*(*v41 + 64))(v41, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v41 + 17) = 0;
    if (v60 < 0)
    {
      operator delete(__p);
    }

    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    *(v61 + 11) = 1;
    goto LABEL_81;
  }

  v11 = (*(*a1 + 56))(a1);
  (*(*a1 + 16))(a1, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v11 + 8), "no fork for tag ", 16);
  *(v11 + 17) = 0;
  ObfuscatedString::ObfuscatedString(v57, a2);
  (*(*v11 + 56))(v11, v57);
  (*(*v11 + 64))(v11, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(v11 + 17) = 0;
  if (v60 < 0)
  {
    operator delete(__p);
  }

  if (v58 < 0)
  {
    v12 = v57[0];
LABEL_116:
    operator delete(v12);
  }

LABEL_117:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }
}

void sub_1E4EA14D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(exception_object);
}

void SipPreconditions::checkPreconditionStatus(void *a1, uint64_t a2)
{
  if ((*(a1 + 116) & 1) == 0)
  {
    if (SipPreconditions::localPreconditionsSatisfied(a1, a2))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v4 = *(a2 + 23);
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(a2 + 8);
      }

      if (v4)
      {
        v18[0] = 0;
        v18[1] = 0;
        SipPreconditions::forkStatusWithTag(a1, a2, 0, v18);
        if (v18[0])
        {
          std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](&v22, v18);
        }

        if (v18[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18[1]);
        }
      }

      else
      {
        v6 = a1[10];
        if (v6 != a1 + 11)
        {
          do
          {
            std::vector<std::shared_ptr<IMSCallInfo>>::push_back[abi:ne200100](&v22, (v6 + 7));
            v7 = v6[1];
            if (v7)
            {
              do
              {
                v8 = v7;
                v7 = *v7;
              }

              while (v7);
            }

            else
            {
              do
              {
                v8 = v6[2];
                v9 = *v8 == v6;
                v6 = v8;
              }

              while (!v9);
            }

            v6 = v8;
          }

          while (v8 != a1 + 11);
        }
      }

      v10 = v22;
      for (i = v23; v10 != i; v10 += 2)
      {
        v12 = *v10;
        if ((*(*v10 + 55) & 1) == 0)
        {
          if (*(v12 + 44) == 5 && *(v12 + 52) == 1 && (*(v12 + 53) != 1 || *(v12 + 48) != 3 && *(v12 + 80) == 3))
          {
            v13 = (*(*a1 + 64))(a1);
            (*(*a1 + 16))(a1, v13);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v13 + 8), "still waiting for remote preconditions in fork ", 47);
            *(v13 + 17) = 0;
            ObfuscatedString::ObfuscatedString(v18, a2);
            (*(*v13 + 56))(v13, v18);
            (*(*v13 + 64))(v13, std::endl[abi:ne200100]<char,std::char_traits<char>>);
            *(v13 + 17) = 0;
            if (v21 < 0)
            {
              operator delete(__p);
            }

            if (v19 < 0)
            {
              operator delete(v18[0]);
            }
          }

          else
          {
            *(v12 + 55) = 1;
            v14 = a1[5];
            if (v14)
            {
              v15 = std::__shared_weak_count::lock(v14);
              if (v15)
              {
                v16 = v15;
                v17 = a1[4];
                if (v17)
                {
                  (*(*v17 + 24))(v17, *v10 + 56);
                }

                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }
            }
          }
        }
      }

      v18[0] = &v22;
      std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](v18);
    }

    else
    {
      v5 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v5 + 8), "still waiting for local preconditions", 37);
      *(v5 + 17) = 0;
      (*(*v5 + 64))(v5, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v5 + 17) = 0;
    }
  }
}

void sub_1E4EA1914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  a10 = &a16;
  std::vector<std::shared_ptr<IMSCallInfo>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL SipPreconditions::wantsPreconditionsRequiredHeader(uint64_t a1, void **a2, uint64_t *a3)
{
  v5 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 80, a2);
  if (a1 + 88 == v5)
  {
    v7 = 0;
LABEL_11:
    v10 = (a1 + 108);
    goto LABEL_12;
  }

  v6 = *(v5 + 56);
  v7 = *(v5 + 64);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  v8 = *(v6 + 44);
  if (v8 == 5)
  {
    if (*(v6 + 52))
    {
      v9 = *(v6 + 84);
      if (*(v6 + 80) == 3 && (*(a1 + 72) & 1) != 0)
      {
        goto LABEL_51;
      }

      goto LABEL_13;
    }

    v10 = (v6 + 84);
LABEL_12:
    v9 = *v10;
    goto LABEL_13;
  }

  if (v8 == 4)
  {
LABEL_51:
    v29 = 1;
    goto LABEL_52;
  }

  v9 = *(v6 + 84);
LABEL_13:
  if (*(a1 + 59) != 1 || (v11 = SipMessage::body<SipSdpBody>(*a3)) == 0)
  {
    v29 = 0;
    goto LABEL_52;
  }

  v12 = v11[1];
  v13 = v11[2];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    v14 = v9 == 3;
  }

  else
  {
    v14 = 0;
  }

  if (!v14 || *(a1 + 72) != 1)
  {
    goto LABEL_48;
  }

  v15 = (*(**a3 + 120))();
  v16 = *(v15 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v15 + 8);
  }

  if (v16 != 6 || (v17 >= 0 ? (v18 = v15) : (v18 = *v15), (v19 = *v18, v20 = *(v18 + 4), v19 == *"UPDATE") ? (v21 = v20 == *"TE") : (v21 = 0), !v21))
  {
    v22 = (*(**a3 + 120))();
    v23 = *(v22 + 23);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v22 + 8);
    }

    if (v23 == 5)
    {
      if (v24 >= 0)
      {
        v25 = v22;
      }

      else
      {
        v25 = *v22;
      }

      v26 = *v25;
      v27 = *(v25 + 4);
      v29 = v26 == *"PRACK" && v27 == SipRequest::kMethodPrack[4];
      if (!v13)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

LABEL_48:
    v29 = 0;
    if (!v13)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v29 = 1;
  if (v13)
  {
LABEL_49:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_52:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v29;
}

void sub_1E4EA1B8C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPreconditions::addPreconditionsToOutgoingRequest(uint64_t a1, uint64_t a2, SipMessage **a3, int a4)
{
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v8)
  {
    SipPreconditions::forkStatusWithTag(a1, a2, 1, &__p);
    v10 = __p;
    v9 = v32;
    if (__p && (*(__p + 11) != 5 || (*(__p + 52) & 1) == 0))
    {
      v11 = 1;
      if (!v32)
      {
        return v11;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v12 = *a3;
  if (!*a3)
  {
    v11 = 0;
    if (!v9)
    {
      return v11;
    }

    goto LABEL_46;
  }

  if (*(a1 + 56) != 1)
  {
    if (a4)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "precondition");
      SipMessage::addSupportedOption(v12, &__p);
    }

    else
    {
      v21 = a3[1];
      v30[0] = *a3;
      v30[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = SipPreconditions::wantsPreconditionsRequiredHeader(a1, a2, v30);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (v22)
      {
        v23 = *a3;
        std::string::basic_string[abi:ne200100]<0>(&__p, "precondition");
        SipMessage::addRequiredOption(v23, &__p);
      }

      else
      {
        if (*(a1 + 112) == 1)
        {
          goto LABEL_38;
        }

        v24 = *a3;
        std::string::basic_string[abi:ne200100]<0>(&__p, "precondition");
        SipMessage::addSupportedOption(v24, &__p);
      }
    }

    goto LABEL_36;
  }

  v13 = (*(*v12 + 120))(*a3);
  v14 = *(v13 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v13 + 8);
  }

  if (v14 == 6)
  {
    v16 = v15 >= 0 ? v13 : *v13;
    v17 = *v16;
    v18 = *(v16 + 4);
    if (v17 == *"INVITE" && v18 == *"TE")
    {
      v20 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__p, "precondition");
      SipMessage::addSupportedOption(v20, &__p);
LABEL_36:
      if (v33 < 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_38:
  v29[0] = v10;
  v29[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v25 = *a3;
  v26 = a3[1];
  v28[0] = v25;
  v28[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = SipPreconditions::addPreconditionsToOutgoingMessage(a1, v29, v28);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
LABEL_46:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v11;
}

void sub_1E4EA1E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPreconditions::addPreconditionsToOutgoingMessage(uint64_t a1, SipPreconditions::ForkStatus **a2, uint64_t *a3)
{
  v6 = *a2;
  if (*a2 && (*(v6 + 11) != 5 || *(v6 + 52) != 1) || *(a1 + 104) == 1 || *(a1 + 112) == 1)
  {
    v7 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v7 + 8), "need to add preconditions, but preconditions are disabled", 57);
    *(v7 + 17) = 0;
    (*(*v7 + 64))(v7, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v7 + 17) = 0;
    return 1;
  }

  v10 = SipMessage::body<SipSdpBody>(*a3);
  if (v10)
  {
    v12 = v10[1];
    v11 = v10[2];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v12)
    {
      v13 = *(v12 + 448);
      v14 = *(v12 + 456);
      while (v13 != v14)
      {
        SDPMedia::removePreconditions(v13);
        v13 = (v13 + 200);
      }

      v15 = *(a1 + 40);
      if (v15)
      {
        v15 = std::__shared_weak_count::lock(v15);
        v16 = v15;
        if (v15)
        {
          v15 = *(a1 + 32);
        }
      }

      else
      {
        v16 = 0;
      }

      v18 = *a2;
      if (*a2)
      {
        if (*(v18 + 11) == 5 && *(v18 + 52) == 1 && (!v15 || !(v15->__on_zero_shared_weak)(v15, v18 + 56)))
        {
          v19 = 0;
        }

        else
        {
          v19 = 3;
        }

        if (*a2)
        {
          v20 = (*a2 + 84);
LABEL_32:
          SDPModel::setPrecondition(v12, 1, *v20, 3, v19, 0);
          v21 = *(a1 + 52);
          v22 = *a2;
          if (*a2)
          {
            v23 = *(v22 + 12);
            if (*(a1 + 57) == 1)
            {
              v21 = *(v22 + 20);
            }
          }

          else
          {
            v23 = 0;
          }

          SDPModel::setPrecondition(v12, 2, v21, 3, v23, (*(a1 + 117) & 1) == 0);
          v24 = (*(*a1 + 64))(a1);
          (*(*a1 + 16))(a1, v24);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v24 + 8), "added preconditions to outgoing ", 32);
          *(v24 + 17) = 0;
          (*(**a3 + 40))(&v25);
          LoggableString::LoggableString(&__p, &v25);
          (*(*v24 + 40))(v24, &__p);
          (*(*v24 + 64))(v24, std::endl[abi:ne200100]<char,std::char_traits<char>>);
          *(v24 + 17) = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          goto LABEL_42;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = (a1 + 108);
      goto LABEL_32;
    }
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 108) != 3)
  {
LABEL_42:
    if (*a2)
    {
      SipPreconditions::ForkStatus::setNeedToSendUpdate(*a2, 0);
    }

    v8 = 1;
    goto LABEL_45;
  }

  v17 = (*(*a1 + 56))(a1);
  (*(*a1 + 16))(a1, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v17 + 8), "need to add preconditions, but there's no SDP", 45);
  *(v17 + 17) = 0;
  (*(*v17 + 64))(v17, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  v8 = 0;
  *(v17 + 17) = 0;
LABEL_45:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v8;
}

void sub_1E4EA2344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    if (!v20)
    {
LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v20)
  {
    goto LABEL_4;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  goto LABEL_4;
}

void sub_1E4EA23B4()
{
  if (!v0)
  {
    JUMPOUT(0x1E4EA2394);
  }

  JUMPOUT(0x1E4EA238CLL);
}

uint64_t SipPreconditions::addPreconditionsToOutgoingResponse(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    v20 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v20 + 8), "addPreconditionsToOutgoingResponse called with empty remote tag", 63);
    *(v20 + 17) = 0;
    (*(*v20 + 64))(v20, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v21 = 0;
    *(v20 + 17) = 0;
    return v21;
  }

  v47 = 0;
  v48 = 0;
  SipPreconditions::forkStatusWithTag(a1, a2, 0, &v47);
  if (v47)
  {
    if (*(v47 + 44) == 5 && (*(v47 + 52) & 1) != 0)
    {
      if (a1[56] == 1)
      {
        v9 = (*(**a3 + 120))();
        v10 = *(v9 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v9 + 8);
        }

        if (v10 != 6)
        {
          goto LABEL_44;
        }

        v12 = v11 >= 0 ? v9 : *v9;
        v13 = *v12;
        v14 = *(v12 + 4);
        if (v13 != *"INVITE" || v14 != *"TE")
        {
          goto LABEL_44;
        }

        v16 = *a3;
        v17 = a3[1];
        v46[0] = v16;
        v46[1] = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = SipPreconditions::wantsPreconditionsRequiredHeader(a1, a2, v46);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        v19 = *a4;
        std::string::basic_string[abi:ne200100]<0>(__p, "precondition");
        if (v18)
        {
          SipMessage::addRequiredOption(v19, __p);
        }

        else
        {
          SipMessage::addSupportedOption(v19, __p);
        }

LABEL_42:
        if (v45 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_44:
        v33 = v48;
        v42[0] = v47;
        v42[1] = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = *a4;
        v35 = *(a4 + 8);
        v41[0] = v34;
        v41[1] = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = SipPreconditions::addPreconditionsToOutgoingMessage(a1, v42, v41);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        goto LABEL_52;
      }

      if (*(v47 + 84) == 3)
      {
        goto LABEL_29;
      }

      v25 = (*(**a3 + 120))();
      v26 = *(v25 + 23);
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v25 + 8);
      }

      if (v26 != 6)
      {
        goto LABEL_41;
      }

      v28 = v27 >= 0 ? v25 : *v25;
      v29 = *v28;
      v30 = *(v28 + 4);
      if (v29 != *"INVITE" || v30 != *"TE")
      {
        goto LABEL_41;
      }

      v37 = *a3;
      v38 = a3[1];
      v43[0] = v37;
      v43[1] = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v39 = SipPreconditions::wantsPreconditionsRequiredHeader(a1, a2, v43);
      v40 = v39;
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
        if (!v40)
        {
LABEL_41:
          v32 = *a4;
          std::string::basic_string[abi:ne200100]<0>(__p, "precondition");
          SipMessage::addSupportedOption(v32, __p);
          goto LABEL_42;
        }
      }

      else if (!v39)
      {
        goto LABEL_41;
      }

LABEL_29:
      v24 = *a4;
      std::string::basic_string[abi:ne200100]<0>(__p, "precondition");
      SipMessage::addRequiredOption(v24, __p);
      if (v45 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_41;
    }

    v22 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v22 + 8), "addPreconditionsToOutgoingResponse called when preconditions are disabled", 73);
    *(v22 + 17) = 0;
    (*(*v22 + 64))(v22, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    *(v22 + 17) = 0;
    v21 = 1;
  }

  else
  {
    v23 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v23 + 8), "addPreconditionsToOutgoingResponse called with invalid remote tag ", 66);
    *(v23 + 17) = 0;
    (*(*v23 + 32))(v23, a2);
    (*(*v23 + 64))(v23, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v21 = 0;
    *(v23 + 17) = 0;
  }

LABEL_52:
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  return v21;
}

void sub_1E4EA2930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v21 - 56);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPreconditions::localPreconditionsSatisfied(uint64_t a1, void **a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 1;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = *(a1 + 32);
  if (!v7 || (v8 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 80, a2), a1 + 88 == v8))
  {
    v11 = 1;
  }

  else
  {
    v9 = *(v8 + 56);
    v10 = *(v8 + 64);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9 && *(v9 + 84) == 3 && *(v9 + 44) == 5 && *(v9 + 52) == 1)
    {
      v11 = (*(*v7 + 32))(v7, a2);
    }

    else
    {
      v11 = 1;
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v11;
}

void sub_1E4EA2AAC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void SipPreconditions::handleLocalQoSEstablished(void *a1, void **a2)
{
  v3 = a1[5];
  if (!v3)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = a1[4];
  if (v7 && ((*(*v7 + 32))(a1[4], a2) & 1) == 0)
  {
    if (SipPreconditions::localPreconditionsSatisfied(a1, a2))
    {
      v8 = a1[10];
      if (v8 != a1 + 11)
      {
        do
        {
          v9 = v8[7];
          v10 = v8[8];
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*(v9 + 40) == 1)
          {
            SipPreconditions::ForkStatus::setNeedToSendUpdate(v9, 1);
          }

          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          v11 = v8[1];
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
              v12 = v8[2];
              v13 = *v12 == v8;
              v8 = v12;
            }

            while (!v13);
          }

          v8 = v12;
        }

        while (v12 != a1 + 11);
      }

      v14 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v14 + 8), "local preconditions have been satisfied", 39);
      *(v14 + 17) = 0;
      (*(*v14 + 64))(v14, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v14 + 17) = 0;
      (*(*v7 + 16))(v7, a2);
LABEL_38:
      SipPreconditions::checkPreconditionStatus(a1, a2);
      goto LABEL_39;
    }

    if ((SipPreconditions::localPreconditionsSatisfied(a1, a2) & 1) == 0)
    {
      v15 = (*(*a1 + 64))(a1);
      (*(*a1 + 16))(a1, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v15 + 8), "local preconditions have been satisfied", 39);
      *(v15 + 17) = 0;
      (*(*v15 + 64))(v15, std::endl[abi:ne200100]<char,std::char_traits<char>>);
      *(v15 + 17) = 0;
      v16 = a1[5];
      if (v16)
      {
        v17 = std::__shared_weak_count::lock(v16);
        if (v17)
        {
          v18 = v17;
          v19 = a1[4];
          if (v19)
          {
            (*(*v19 + 16))(v19, a2);
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }

      v20 = a1[10];
      if (v20 != a1 + 11)
      {
        do
        {
          v21 = v20[7];
          v22 = v20[8];
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          SipPreconditions::ForkStatus::setNeedToSendUpdate(v21, 1);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          v23 = v20[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v20[2];
              v13 = *v24 == v20;
              v20 = v24;
            }

            while (!v13);
          }

          v20 = v24;
        }

        while (v24 != a1 + 11);
      }

      goto LABEL_38;
    }
  }

LABEL_39:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1E4EA2E74(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t SipPreconditions::needToSendUpdateInFork(uint64_t a1, void **a2)
{
  if ((SipPreconditions::preconditionsEnabled(a1, a2) & 1) == 0)
  {
    v8 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "needToSendUpdateInFork: preconditions aren't enabled", 52);
    *(v8 + 17) = 0;
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v7 = 0;
    *(v8 + 17) = 0;
    return v7 & 1;
  }

  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 80, a2);
  if (a1 + 88 == v4)
  {
    v6 = 0;
    goto LABEL_14;
  }

  v5 = *(v4 + 56);
  v6 = *(v4 + 64);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
LABEL_14:
    v9 = (*(*a1 + 64))(a1);
    (*(*a1 + 16))(a1, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v9 + 8), "needToSendUpdateInFork: no remote status", 40);
    *(v9 + 17) = 0;
    (*(*v9 + 64))(v9, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v7 = 0;
    *(v9 + 17) = 0;
    if (!v6)
    {
      return v7 & 1;
    }

    goto LABEL_17;
  }

  if (*(v5 + 44) == 5 && *(v5 + 52) == 1 && *(v5 + 54) == 1)
  {
    if (*(v5 + 40))
    {
      v7 = 1;
      if (!v6)
      {
        return v7 & 1;
      }
    }

    else
    {
      v7 = *(*(v5 + 32) + 58) ^ 1;
      if (!v6)
      {
        return v7 & 1;
      }
    }

    goto LABEL_17;
  }

  v7 = 0;
  if (v6)
  {
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v7 & 1;
}

void sub_1E4EA30E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SipPreconditions::setNeedToSendUpdateInFork(uint64_t a1, void **a2, int a3)
{
  SipPreconditions::forkStatusWithTag(a1, a2, 1, &v4);
  SipPreconditions::ForkStatus::setNeedToSendUpdate(v4, a3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E4EA314C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SipPreconditions::printInfo(SipPreconditions *this, ImsOutStream *a2)
{
  v3 = *(this + 10);
  v4 = this + 88;
  if (v3 != (this + 88))
  {
    do
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      if (*(v3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(v18, v3[4], v3[5]);
      }

      else
      {
        *v18 = *(v3 + 2);
        *&v18[16] = v3[6];
      }

      v6 = v3[7];
      v5 = v3[8];
      *&v18[24] = v6;
      v19 = v5;
      if (v5)
      {
        v7 = 1;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *&v18[24];
        v8 = v19;
        if (v19)
        {
          v7 = 0;
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (!v6)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v8 = 0;
        v7 = 1;
        if (!v6)
        {
          goto LABEL_25;
        }
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "Fork ", 5);
      *(a2 + 17) = 0;
      ObfuscatedString::ObfuscatedString(v14, (v6 + 56));
      (*(*a2 + 56))(a2, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), ": ", 2);
      *(a2 + 17) = 0;
      if (v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      if (*(v6 + 44) == 5 && *(v6 + 52) == 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "local ", 6);
        *(a2 + 17) = 0;
        (*(*a2 + 32))(a2, v14);
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }

        if (!*(v6 + 48))
        {
          goto LABEL_25;
        }

        v9 = *(a2 + 1);
        if (*(v6 + 53) == 1)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "remote ", 7);
          *(a2 + 17) = 0;
          (*(*a2 + 32))(a2, v14);
          if (v15 < 0)
          {
            operator delete(v14[0]);
          }

          goto LABEL_25;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "(no remote sdp)", 15);
      }

      else
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(a2 + 1), "none", 4);
      }

      *(a2 + 17) = 0;
LABEL_25:
      if ((v7 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if ((v18[23] & 0x80000000) != 0)
      {
        operator delete(*v18);
      }

      v10 = v3[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v3[2];
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != v4);
  }

  result = (*(*a2 + 64))(a2, std::endl[abi:ne200100]<char,std::char_traits<char>>);
  *(a2 + 17) = 0;
  return result;
}

void sub_1E4EA349C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v18 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::pair<std::string const,std::shared_ptr<MessageSession>>::~pair(&a18);
  _Unwind_Resume(a1);
}

BOOL SipPreconditions::remotePreconditionsSatisfiedInFork(uint64_t a1, void **a2)
{
  v4 = std::__tree<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::list<SipLazuliManager::OutgoingMsrp>>>>::find<std::string>(a1 + 80, a2);
  if (a1 + 88 == v4)
  {
    v6 = 0;
LABEL_11:
    v8 = (*(*a1 + 56))(a1);
    (*(*a1 + 16))(a1, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*(v8 + 8), "unknown remote tag ", 19);
    *(v8 + 17) = 0;
    (*(*v8 + 32))(v8, a2);
    (*(*v8 + 64))(v8, std::endl[abi:ne200100]<char,std::char_traits<char>>);
    v7 = 0;
    *(v8 + 17) = 0;
    goto LABEL_12;
  }

  v5 = *(v4 + 56);
  v6 = *(v4 + 64);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  if (*(v5 + 44) != 5 || *(v5 + 52) != 1)
  {
    goto LABEL_9;
  }

  if (*(v5 + 53) == 1)
  {
    if (*(v5 + 48) == 3)
    {
LABEL_9:
      v7 = 1;
      goto LABEL_12;
    }

    v7 = *(v5 + 80) != 3;
  }

  else
  {
    v7 = 0;
  }

LABEL_12:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v7;
}