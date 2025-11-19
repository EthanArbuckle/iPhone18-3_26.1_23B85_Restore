void quasar::result_handler::VoiceEditingResultHandler::sendPartial(uint64_t a1, uint64_t *a2)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 424);
  if (v3)
  {
    quasar::getTopChoice(v3 + 48, 1, &v16);
  }

  else
  {
    v16 = 0uLL;
    *&v17 = 0;
  }

  v4 = *a2;
  v21 = v16;
  *&v22 = v17;
  quasar::getTopChoice(v4 + 48, 1, &v16);
  if (SBYTE7(v19) < 0)
  {
    operator delete(v18);
  }

  *&v19 = v17;
  v18 = v16;
  v5 = SBYTE7(v22);
  if ((SBYTE7(v22) & 0x80u) == 0)
  {
    v6 = BYTE7(v22);
  }

  else
  {
    v6 = *(&v21 + 1);
  }

  v7 = BYTE7(v19);
  v8 = SBYTE7(v19);
  if (SBYTE7(v19) < 0)
  {
    v7 = *(&v18 + 1);
  }

  if (v6 != v7)
  {
    goto LABEL_32;
  }

  v9 = (SBYTE7(v22) & 0x80u) == 0 ? &v21 : v21;
  v10 = (SBYTE7(v19) & 0x80u) == 0 ? &v18 : v18;
  if (memcmp(v9, v10, v6))
  {
    goto LABEL_32;
  }

  if (v23 >= 0)
  {
    v11 = HIBYTE(v23);
  }

  else
  {
    v11 = v23;
  }

  v12 = HIBYTE(v20);
  v13 = HIBYTE(v20);
  if (v20 < 0)
  {
    v12 = v20;
  }

  if (v11 != v12 || (v23 >= 0 ? (v14 = &v22 + 8) : (v14 = *(&v22 + 1)), v20 >= 0 ? (v15 = &v19 + 8) : (v15 = *(&v19 + 1)), memcmp(v14, v15, v11)))
  {
LABEL_32:
    operator new();
  }

  if (v13 < 0)
  {
    operator delete(*(&v19 + 1));
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v18);
LABEL_35:
  if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v21);
    return;
  }

  operator delete(*(&v22 + 1));
  if (v5 < 0)
  {
    goto LABEL_41;
  }
}

void sub_1B5777720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a16);
  std::pair<std::string,std::string>::~pair(v16 - 160);
  std::pair<std::string,std::string>::~pair(v16 - 112);
  _Unwind_Resume(a1);
}

uint64_t quasar::result_handler::extract@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v3 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *result;
  v35 = *(result + 8);
  if (*result != v35)
  {
    do
    {
      v6 = v3[1];
      v7 = v3[2];
      if (v6 >= v7)
      {
        v9 = *v3;
        v10 = v3;
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v3) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v12;
        }

        v38[4] = v10;
        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(v10, v14);
        }

        v15 = 24 * v11;
        *v15 = 0;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        v8 = 24 * v11 + 24;
        v16 = a3[1] - *a3;
        v17 = (24 * v11 - v16);
        memcpy(v17, *a3, v16);
        v18 = *a3;
        *a3 = v17;
        a3[1] = v8;
        v19 = a3[2];
        a3[2] = 0;
        v3 = a3;
        v38[2] = v18;
        v38[3] = v19;
        v38[0] = v18;
        v38[1] = v18;
        result = std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(v38);
      }

      else
      {
        *v6 = 0;
        v6[1] = 0;
        v8 = (v6 + 3);
        v6[2] = 0;
      }

      v3[1] = v8;
      v21 = *v4;
      v20 = v4[1];
      if (v20 != *v4)
      {
        v22 = 0;
        v23 = 0;
        v37 = v8 - 24;
        do
        {
          v24 = (v21 + 224 * v22);
          if (*(v24 + 7) <= a2 && *(v24 + 9) >= -1)
          {
            v26 = *(v8 - 16);
            if (v26 >= *(v8 - 8))
            {
              result = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(v37, v24);
              v27 = result;
            }

            else
            {
              result = quasar::Token::Token(*(v8 - 16), v24);
              v27 = (v26 + 224);
              *(v8 - 16) = v27;
            }

            *(v8 - 16) = v27;
            v28 = v23 + 1;
            v21 = *v4;
            v20 = v4[1];
            if (0x6DB6DB6DB6DB6DB7 * ((v20 - *v4) >> 5) > v28)
            {
              v29 = (v21 + 224 * v28);
              if (*(v29 + 8) == *(v21 + 224 * v23 + 32))
              {
                v30 = v28 << 32;
                v31 = 224 * v28 + 256;
                v32 = v23 + 2;
                do
                {
                  if (v27 >= *(v8 - 8))
                  {
                    result = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(v37, v29);
                    v27 = result;
                  }

                  else
                  {
                    result = quasar::Token::Token(v27, v29);
                    v27 = (v27 + 224);
                    *(v8 - 16) = v27;
                  }

                  v23 = v28;
                  *(v8 - 16) = v27;
                  v21 = *v4;
                  v20 = v4[1];
                  if (0x6DB6DB6DB6DB6DB7 * ((v20 - *v4) >> 5) <= v32)
                  {
                    break;
                  }

                  ++v28;
                  v29 = (v21 + 224 * v28);
                  v33 = *(v21 + v31);
                  v34 = *(v21 + 224 * SHIDWORD(v30) + 32);
                  v30 += 0x100000000;
                  v31 += 224;
                  ++v32;
                }

                while (v33 == v34);
              }
            }
          }

          v22 = ++v23;
        }

        while (0x6DB6DB6DB6DB6DB7 * ((v20 - v21) >> 5) > v23);
      }

      v4 += 3;
      v3 = a3;
    }

    while (v4 != v35);
  }

  return result;
}

void sub_1B5777B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::result_handler::repairAutoPunc(quasar::PartialHistory *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == a2[1] || (v3 = *(v2 + 8), *v2 == v3))
  {
    if (quasar::gLogLevel >= 5)
    {
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
      v32 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "VoiceEditingResultHandler: ", 27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "repairAutoPunc: input is empty", 30);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v32);
    }

    return 0;
  }

  if (quasar::Token::isAutoPunctuation((v3 - 224)))
  {
    v5 = *(v2 + 8);
    v6 = (v5 - 224);
    v7 = *(v5 - 201);
    if (v7 < 0)
    {
      if (*(v5 - 216) != 1)
      {
        goto LABEL_16;
      }

      v6 = *v6;
    }

    else if (v7 != 1)
    {
      goto LABEL_16;
    }

    if (*v6 == 44)
    {
      if (quasar::gLogLevel >= 5)
      {
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
        v32 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "VoiceEditingResultHandler: ", 27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "repairAutoPunc: removed trailing AutoPunc comma", 47);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v32);
        v5 = *(v2 + 8);
      }

      quasar::Token::~Token((v5 - 224));
      *(v2 + 8) = v11;
    }
  }

LABEL_16:
  quasar::PartialHistory::annotatePartial(a1, v2, v31);
  v12 = v31[1];
  do
  {
    if (v12 == v31[0])
    {
      goto LABEL_33;
    }

    v12 = (v12 - 232);
  }

  while ((quasar::Token::isAutoPunctuation(v12) & 1) != 0);
  v13 = *(v12 + 57);
  if ((v13 & 0x80000000) == 0)
  {
    quasar::PartialHistory::findLastMatchingPartial(a1, v13, &v28);
    if (v30)
    {
      if (v28 != v29)
      {
        if (quasar::Token::isAutoPunctuation((v29 - 232)) && (quasar::Token::isAutoPunctuation((*(v2 + 8) - 224)) & 1) == 0)
        {
          v14 = *(v2 + 8);
          quasar::Token::Token(&v23, (v29 - 232));
          v25 = *(v14 - 192);
          v26 = v25;
          v24 = v25;
          v27 = *(v14 - 180);
          *(v14 - 180) = 0;
          std::vector<quasar::Token>::emplace_back<quasar::Token&>(v2, &v23);
          if (quasar::gLogLevel >= 5)
          {
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
            v32 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
            v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "VoiceEditingResultHandler: ", 27);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "repairAutoPunc: added trailing AutoPunc: ", 41);
            if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v17 = &v23;
            }

            else
            {
              v17 = v23.__r_.__value_.__r.__words[0];
            }

            if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v23.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, size);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v32);
          }

          quasar::Token::~Token(&v23.__r_.__value_.__l.__data_);
          v9 = 1;
          goto LABEL_44;
        }

LABEL_43:
        v9 = 0;
LABEL_44:
        if (v30 == 1)
        {
          *&v32 = &v28;
          std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](&v32);
        }

        goto LABEL_36;
      }

      if (quasar::gLogLevel < 5)
      {
        goto LABEL_43;
      }

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
      v32 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "VoiceEditingResultHandler: ", 27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "repairAutoPunc: matching previous result is empty", 49);
    }

    else
    {
      if (quasar::gLogLevel < 5)
      {
        goto LABEL_43;
      }

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
      v32 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "VoiceEditingResultHandler: ", 27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "repairAutoPunc: cannot find matching previous result", 52);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v32);
    goto LABEL_43;
  }

LABEL_33:
  if (quasar::gLogLevel >= 5)
  {
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
    v32 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "VoiceEditingResultHandler: ", 27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "repairAutoPunc: input lacks non-AutoPunc token", 46);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v32);
  }

  v9 = 0;
LABEL_36:
  *&v32 = v31;
  std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](&v32);
  return v9;
}

void sub_1B5777FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, __int16 *a48)
{
  quasar::Token::~Token(&a9);
  if (a41 == 1)
  {
    a48 = &a37;
    std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](&a48);
  }

  a48 = &a43;
  std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](&a48);
  _Unwind_Resume(a1);
}

uint64_t quasar::result_handler::VoiceEditingResultHandler::finishHandling(quasar::result_handler::VoiceEditingResultHandler *this)
{
  v1 = *(this + 39);
  if (v1)
  {
    v2 = *(v1 + 160) == *(v1 + 168);
  }

  else
  {
    v2 = 1;
  }

  return (*(**(this + 24) + 56))(*(this + 24), v2 & ~*(this + 320) & 1);
}

void quasar::PartialHistory::addPartial(const void **a1, __int128 **a2, int a3)
{
  quasar::PartialHistory::annotatePartial(a1, a2, &v31);
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v33[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v11);
    }

    v12 = 24 * v8;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *v12 = v31;
    *(v12 + 16) = v32;
    v31 = 0uLL;
    v32 = 0;
    v7 = 24 * v8 + 24;
    v13 = a1[1] - *a1;
    v14 = 24 * v8 - v13;
    memcpy((v12 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    a1[1] = v7;
    v16 = a1[2];
    a1[2] = 0;
    v33[2] = v15;
    v33[3] = v16;
    v33[0] = v15;
    v33[1] = v15;
    std::__split_buffer<std::vector<quasar::PartialHistory::AnnotatedToken>>::~__split_buffer(v33);
  }

  else
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *v5 = v31;
    *(v5 + 2) = v32;
    v31 = 0uLL;
    v32 = 0;
    v7 = (v5 + 24);
  }

  a1[1] = v7;
  v33[0] = &v31;
  std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](v33);
  v18 = a1[4];
  v17 = a1[5];
  if (v18 >= v17)
  {
    v20 = a1[3];
    v21 = v18 - v20;
    v22 = (v18 - v20) >> 2;
    v23 = v22 + 1;
    if ((v22 + 1) >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v24 = v17 - v20;
    if (v24 >> 1 > v23)
    {
      v23 = v24 >> 1;
    }

    v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
    v26 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v25)
    {
      v26 = v23;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>((a1 + 3), v26);
    }

    v27 = (v18 - v20) >> 2;
    v28 = (4 * v22);
    v29 = (4 * v22 - 4 * v27);
    *v28 = a3;
    v19 = v28 + 1;
    memcpy(v29, v20, v21);
    v30 = a1[3];
    a1[3] = v29;
    a1[4] = v19;
    a1[5] = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v18 = a3;
    v19 = v18 + 4;
  }

  a1[4] = v19;
}

void sub_1B57782E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a9;
  std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
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
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__construct_node_hash<std::pair<std::string const,int> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B57785B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5778680(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void quasar::PartialHistory::~PartialHistory(quasar::PartialHistory *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::vector<quasar::PartialHistory::AnnotatedToken>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<std::vector<quasar::PartialHistory::AnnotatedToken>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        quasar::Token::~Token(v4 - 29);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__list_imp<std::pair<std::string,std::vector<quasar::result_handler::CommandInterpretation>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<quasar::result_handler::CommandInterpretation>>,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<quasar::result_handler::CommandInterpretation>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

std::locale *std::optional<std::basic_regex<char,std::regex_traits<char>>>::~optional(std::locale *this)
{
  if (LOBYTE(this[8].__locale_) == 1)
  {
    locale = this[6].__locale_;
    if (locale)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](locale);
    }

    std::locale::~locale(this);
  }

  return this;
}

void quasar::ScopeGuard::~ScopeGuard(quasar::ScopeGuard *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this);
}

void *quasar::result_handler::clean(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    if (*v2 == *(v2 + 8))
    {
      do
      {
        v3 -= 3;
        v12 = v3;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v12);
      }

      while (v3 != v2);
      a1[1] = v2;
    }

    else
    {
      while (*v2 != *(v2 + 8))
      {
        v2 += 24;
        if (v2 == v3)
        {
          v2 = a1[1];
          goto LABEL_14;
        }
      }

      if (v2 != v3)
      {
        v4 = v2 + 24;
        if ((v2 + 24) != v3)
        {
          do
          {
            if (*v4 != *(v4 + 8))
            {
              std::vector<quasar::Token>::__vdeallocate(v2);
              *v2 = *v4;
              *(v2 + 16) = *(v4 + 16);
              *v4 = 0;
              *(v4 + 8) = 0;
              *(v4 + 16) = 0;
              v2 += 24;
            }

            v4 += 24;
          }

          while (v4 != v3);
          v3 = a1[1];
        }
      }

LABEL_14:
      std::vector<std::vector<quasar::Token>>::erase(a1, v2, v3);
    }
  }

  v11 = 0;
  result = quasar::Align::MakeMonotonic(a1, &v11 + 1, &v11);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    do
    {
      v8 = 0x6DB6DB6DB6DB6DB7 * ((v6[1] - *v6) >> 5);
      if (v8 >= 2)
      {
        v9 = v8 - 1;
        v10 = (*v6 + 252);
        do
        {
          if (*(v10 - 55) != *v10)
          {
            *(v10 - 55) = *v10;
          }

          v10 += 56;
          --v9;
        }

        while (v9);
      }

      v6 += 3;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t std::vector<std::vector<quasar::Token>>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::vector<quasar::Token> *,std::vector<quasar::Token> *,std::vector<quasar::Token> *>(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 3;
        v10 = v7;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v10);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void quasar::result_handler::clampTimestampsIfNeeded(uint64_t a1, unsigned int a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *v2;
      v6 = v2[1];
      while (v5 != v6)
      {
        if (v5[7] > a2)
        {
          v5[7] = a2;
          v4 = 1;
        }

        if (v5[9] > a2)
        {
          v5[9] = a2;
          v4 = 1;
        }

        if (v5[8] > a2)
        {
          v5[8] = a2;
          v4 = 1;
        }

        v5 += 56;
      }

      v2 += 3;
    }

    while (v2 != v3);
    if ((v4 & (quasar::gLogLevel > 4)) != 0)
    {
      memset(v8, 0, sizeof(v8));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "VoiceEditingResultHandler: ", 27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Token timestamp is too large and likely wrong. Clamping it.", 59);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v8);
    }
  }
}

void quasar::result_handler::initSegmentation(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, quasar::PartialHistory *a6@<X5>, _BYTE *a7@<X8>)
{
  v104 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  if (*a3 == *(a3 + 8) || (v10 = *v9, v11 = v9[1], *v9 == v11) || (v13 = *a4, *a4 == *(a4 + 8)) || *v13 == v13[1])
  {
    *a7 = 0;
    a7[184] = 0;
    return;
  }

  v17 = 0x6DB6DB6DB6DB6DB7 * ((v11 - v10) >> 5);
  if (a5 >= 1)
  {
    v18 = a5;
    v19 = v17 > a5;
    a5 = v17 <= a5 ? a5 : v17;
    if (v19)
    {
      v20 = (v10 + 224 * v18 - 192);
      while (1)
      {
        v21 = *v20;
        v22 = v20[56];
        v20 += 56;
        if (v21 != v22)
        {
          break;
        }

        if (a5 == ++v18)
        {
          goto LABEL_18;
        }
      }

      LODWORD(a5) = v18;
    }
  }

LABEL_18:
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v82 = 0u;
  *v83 = 0u;
  *v81 = 0u;
  memset(v80, 0, sizeof(v80));
  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  v86 = 1;
  if (v17 <= a5)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = *(v10 + 224 * a5 + 28);
  }

  quasar::result_handler::splitChoice(v9, a5, &v77, 0);
  v67 = a2;
  __str = a1;
  SplitEnd = quasar::result_handler::findSplitEnd(v13, v23);
  if ((SplitEnd & 0x80000000) == 0)
  {
    quasar::result_handler::splitChoice(v13, SplitEnd, &v77, 1);
  }

  v26 = *a3;
  v25 = *(a3 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v25 - *a3) >> 3) >= 2)
  {
    v27 = 1;
    v28 = 3;
    do
    {
      v29 = quasar::result_handler::findSplitEnd(&v26[v28], v23);
      if ((v29 & 0x80000000) == 0)
      {
        quasar::result_handler::splitChoice(&v26[v28], v29, &v77, 0);
        v26 = *a3;
        v25 = *(a3 + 8);
      }

      ++v27;
      v28 += 3;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v25 - v26) >> 3) > v27);
  }

  v31 = *a4;
  v30 = *(a4 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v30 - *a4) >> 3) >= 2)
  {
    v32 = 1;
    v33 = 3;
    do
    {
      v34 = quasar::result_handler::findSplitEnd(&v31[v33], v23);
      if ((v34 & 0x80000000) == 0)
      {
        quasar::result_handler::splitChoice(&v31[v33], v34, &v77, 1);
        v31 = *a4;
        v30 = *(a4 + 8);
      }

      ++v32;
      v33 += 3;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v30 - v31) >> 3) > v32);
  }

  v35 = quasar::result_handler::repairAutoPunc(a6, &v77);
  if (quasar::gLogLevel > 4)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  if (v36 == 1)
  {
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    memset(v89, 0, sizeof(v89));
    v88 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v88);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "VoiceEditingResultHandler: ", 27);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "repaired AutoPunc: precedingUtterance ", 38);
    quasar::getTopChoice(&v77, 1, &__p);
    if (v76 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v76 >= 0)
    {
      v40 = HIBYTE(v76);
    }

    else
    {
      v40 = v75;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, p_p, v40);
    if (SHIBYTE(v76) < 0)
    {
      operator delete(__p);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v88);
    if (quasar::gLogLevel >= 5)
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      memset(v89, 0, sizeof(v89));
      v88 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v88);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "VoiceEditingResultHandler: ", 27);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "repaired AutoPunc: commandUtterance ", 36);
      quasar::getTopChoice(&v78 + 8, 1, &__p);
      if (v76 >= 0)
      {
        v43 = &__p;
      }

      else
      {
        v43 = __p;
      }

      if (v76 >= 0)
      {
        v44 = HIBYTE(v76);
      }

      else
      {
        v44 = v75;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v43, v44);
      if (SHIBYTE(v76) < 0)
      {
        operator delete(__p);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v88);
    }
  }

  v45 = v77;
  if (v77 == *(&v77 + 1))
  {
    __p = 0;
    v75 = 0;
    v76 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
  }

  else
  {
    v46 = v77;
    do
    {
      v47 = v46[1];
      if (*v46 != v47 && *(v47 - 180) == 1)
      {
        *(v47 - 180) = 0;
      }

      v46 += 3;
    }

    while (v46 != *(&v45 + 1));
    __p = 0;
    v75 = 0;
    v76 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    if (&__p != v45 && v45 != *(&v45 + 1))
    {
      std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&__p, *v45, *(v45 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v45 + 8) - *v45) >> 5));
    }
  }

  if (&v71 != *(&v78 + 1) && *(&v78 + 1) != v79)
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v71, **(&v78 + 1), *(*(&v78 + 1) + 8), 0x6DB6DB6DB6DB6DB7 * ((*(*(&v78 + 1) + 8) - **(&v78 + 1)) >> 5));
  }

  std::string::operator=(v81, __str);
  quasar::tokens2Str(&__p, &v88);
  v49 = quasar::needsSpaceBetween(__str, &v88);
  v50 = v49;
  if ((SBYTE7(v89[0]) & 0x80000000) == 0)
  {
    if (!v49)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  operator delete(v88);
  if (v50)
  {
LABEL_74:
    std::string::append(v81, " ");
  }

LABEL_75:
  v51 = BYTE7(v82);
  if (SBYTE7(v82) < 0)
  {
    v51 = v81[1];
  }

  DWORD2(v82) = v51;
  quasar::tokens2Str(&__p, &v88);
  if ((SBYTE7(v89[0]) & 0x80u) == 0)
  {
    v52 = &v88;
  }

  else
  {
    v52 = v88;
  }

  if ((SBYTE7(v89[0]) & 0x80u) == 0)
  {
    v53 = BYTE7(v89[0]);
  }

  else
  {
    v53 = *(&v88 + 1);
  }

  std::string::append(v81, v52, v53);
  if (SBYTE7(v89[0]) < 0)
  {
    operator delete(v88);
  }

  if (SBYTE7(v82) < 0)
  {
    HIDWORD(v82) = v81[1];
    std::string::__init_copy_ctor_external(&v88, v81[0], v81[1]);
  }

  else
  {
    HIDWORD(v82) = SBYTE7(v82);
    v88 = *v81;
    *&v89[0] = v82;
  }

  if (*(v67 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v89 + 8), *v67, *(v67 + 8));
  }

  else
  {
    *(v89 + 8) = *v67;
    *(&v89[1] + 1) = *(v67 + 16);
  }

  memset(&v69, 0, sizeof(v69));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v69, &v88, &v90, 2uLL);
  quasar::joinAndAutoSpace(&v69, &v70);
  if (SBYTE7(v82) < 0)
  {
    operator delete(v81[0]);
  }

  *v81 = *&v70.__r_.__value_.__l.__data_;
  *&v82 = *(&v70.__r_.__value_.__l + 2);
  *(&v70.__r_.__value_.__s + 23) = 0;
  v70.__r_.__value_.__s.__data_[0] = 0;
  v87 = &v69;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v87);
  for (i = 0; i != -48; i -= 24)
  {
    if (*(&v89[1] + i + 15) < 0)
    {
      operator delete(*(v89 + i + 8));
    }
  }

  memset(&v70, 0, sizeof(v70));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v70, v71, v72, 0x6DB6DB6DB6DB6DB7 * ((v72 - v71) >> 5));
  size = v70.__r_.__value_.__l.__size_;
  v55 = v70.__r_.__value_.__r.__words[0];
  if (v70.__r_.__value_.__l.__size_ == v70.__r_.__value_.__r.__words[0])
  {
LABEL_118:
    v55 = size;
  }

  else
  {
    v57 = 0;
    v58 = 0x6DB6DB6DB6DB6DB7 * ((v70.__r_.__value_.__l.__size_ - v70.__r_.__value_.__r.__words[0]) >> 5);
    if (v58 <= 1)
    {
      v59 = 1;
    }

    else
    {
      v59 = 0x6DB6DB6DB6DB6DB7 * ((v70.__r_.__value_.__l.__size_ - v70.__r_.__value_.__r.__words[0]) >> 5);
    }

    v60 = (v70.__r_.__value_.__r.__words[0] + 44);
    do
    {
      if (v57 && v60[128] == 1)
      {
        *(v60 - 224) = *v60;
      }

      if (v58 > ++v57 && v60[129] == 1)
      {
        v60[225] = v60[1];
      }

      v60 += 224;
    }

    while (v59 != v57);
    while ((quasar::Token::isAutoPunctuation(v55) & 1) == 0)
    {
      v55 = (v55 + 224);
      if (v55 == size)
      {
        goto LABEL_118;
      }
    }

    if (v55 != size)
    {
      for (j = (v55 + 224); j != size; j += 14)
      {
        if ((quasar::Token::isAutoPunctuation(j) & 1) == 0)
        {
          quasar::Token::operator=(v55, j);
          v55 = (v55 + 224);
        }
      }
    }
  }

  std::vector<quasar::Token>::erase(&v70, v55, v70.__r_.__value_.__l.__size_);
  v62 = 0x6DB6DB6DB6DB6DB7 * ((v70.__r_.__value_.__l.__size_ - v70.__r_.__value_.__r.__words[0]) >> 5);
  if (v62 >= 2)
  {
    v63 = v62 - 1;
    v64 = (v70.__r_.__value_.__r.__words[0] + 252);
    do
    {
      *(v64 - 55) = *v64;
      v64 += 56;
      --v63;
    }

    while (v63);
  }

  quasar::tokens2Str(&v70, &v88);
  if (SBYTE7(v84[0]) < 0)
  {
    operator delete(v83[0]);
  }

  *v83 = v88;
  *&v84[0] = *&v89[0];
  BYTE7(v89[0]) = 0;
  LOBYTE(v88) = 0;
  v69.__r_.__value_.__r.__words[0] = &v70;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v69);
  v65 = BYTE7(v82);
  if (SBYTE7(v82) < 0)
  {
    v65 = v81[1];
  }

  if (v65)
  {
    goto LABEL_130;
  }

  v66 = BYTE7(v84[0]);
  if (SBYTE7(v84[0]) < 0)
  {
    v66 = v83[1];
  }

  if (v66)
  {
LABEL_130:
    std::__optional_move_base<quasar::result_handler::CommandData,false>::__optional_move_base[abi:ne200100](a7, &v77);
  }

  else
  {
    *a7 = 0;
    a7[184] = 0;
  }

  *&v88 = &v71;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v88);
  *&v88 = &__p;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v88);
  if (v86 == 1)
  {
    *&v88 = v84 + 8;
    std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v88);
    if (SBYTE7(v84[0]) < 0)
    {
      operator delete(v83[0]);
    }

    if (SBYTE7(v82) < 0)
    {
      operator delete(v81[0]);
    }

    *&v88 = &v80[1] + 8;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v88);
    *&v88 = v80;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v88);
    *&v88 = &v78 + 8;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v88);
    *&v88 = &v77;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v88);
  }
}

void sub_1B5779504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a52);
  std::optional<quasar::result_handler::CommandData>::~optional(&a26);
  _Unwind_Resume(a1);
}

BOOL kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>>::Get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v4 = kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>>::Get(a1, a2, &v6);
  if (v4 && v6 != a3)
  {
    std::vector<quasar::result_handler::CommandInterpretation>::__assign_with_size[abi:ne200100]<quasar::result_handler::CommandInterpretation*,quasar::result_handler::CommandInterpretation*>(a3, *v6, v6[1], 0xF83E0F83E0F83E1 * ((v6[1] - *v6) >> 3));
  }

  return v4;
}

void quasar::result_handler::parseToInterpretation(quasar::corrective_reranking::Parse *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  *(a2 + 80) = 0;
  *(a2 + 84) = 0;
  *(a2 + 92) = 0;
  *(a2 + 96) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 57) = 0u;
  *(a2 + 164) = 3212836864;
  *(a2 + 172) = 0;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 233) = 0u;
  *(a2 + 252) = 0;
  v56 = (a2 + 252);
  *(a2 + 260) = 0;
  Intent = quasar::corrective_reranking::Parse::getIntent(a1, &v73);
  LOBYTE(v5) = v75;
  if (v75 < 0)
  {
    if (v74 != 7)
    {
      goto LABEL_12;
    }

    v6 = v73;
  }

  else
  {
    if (v75 != 7)
    {
      goto LABEL_12;
    }

    v6 = &v73;
  }

  v7 = *v6;
  v8 = *(v6 + 3);
  if (v7 == 1952672100 && v8 == 1702125940)
  {
    Intent = MEMORY[0x1B8C84820](&v73, "");
    LOBYTE(v5) = v75;
  }

LABEL_12:
  v5 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = v74;
  }

  v57 = a2;
  if (v5)
  {
    quasar::corrective_reranking::intentToCommandIdentifier(&v73, v58);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v58[0];
    *(a2 + 260) = quasar::corrective_reranking::Parse::isTargetExpectingCommand(v2);
    v10 = quasar::corrective_reranking::TextEdit::TextEdit(v58, v2);
    CommandsWithMetaTarget = quasar::corrective_reranking::Parse::getCommandsWithMetaTarget(v10);
    if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(CommandsWithMetaTarget, &v73))
    {
      quasar::utf::toU32String();
    }

    *(a2 + 160) = *(v2 + 378);
    *(a2 + 168) = 1;
    v12 = *(a2 + 47);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 32);
    }

    if (v12)
    {
      v13 = 2;
      *(a2 + 168) = 2;
      v14 = *(a2 + 71);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a2 + 56);
      }

      if (v14)
      {
        v13 = 3;
        goto LABEL_26;
      }
    }

    else
    {
      v15 = *(a2 + 71);
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 56);
      }

      if (v15)
      {
        v13 = 2;
        *(a2 + 168) = 2;
      }

      else
      {
        v13 = 1;
      }
    }

    v16 = *(v2 + 8);
    if (*(v2 + 7) == v16)
    {
      goto LABEL_39;
    }

    v17 = (v16 - 24);
    v18 = *(v16 - 1);
    if (v18 < 0)
    {
      if (*(v16 - 16) != 4)
      {
        goto LABEL_39;
      }

      v17 = *v17;
    }

    else if (v18 != 4)
    {
      goto LABEL_39;
    }

    if (*v17 != 1701736270)
    {
      goto LABEL_39;
    }

LABEL_26:
    *(a2 + 168) = v13 + 1;
LABEL_39:
    *(a2 + 172) = !quasar::corrective_reranking::Parse::isIncomplete(v2);
    if (*(v2 + 378) != 1)
    {
      quasar::corrective_reranking::Parse::getTarget(v2, 1, v71);
      quasar::corrective_reranking::detokenize(v71);
    }

    *(a2 + 256) = 1;
    *(a2 + 258) = 0;
    *(a2 + 259) = (*(v2 + 382) | *(v2 + 383)) & 1;
    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p[1]);
    }

    if (LOBYTE(__p[0]) == 1 && *(&v62 + 1))
    {
      *&v63 = *(&v62 + 1);
      operator delete(*(&v62 + 1));
    }

    __str.__r_.__value_.__r.__words[0] = &v61[1] + 8;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
    __str.__r_.__value_.__r.__words[0] = v61;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59[1]);
    }

    if (LOBYTE(v59[0]) == 1)
    {
      Intent = v58[1].__r_.__value_.__l.__data_;
      if (v58[1].__r_.__value_.__r.__words[0])
      {
        v58[1].__r_.__value_.__l.__size_ = v58[1].__r_.__value_.__r.__words[0];
        operator delete(v58[1].__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v58[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58[0].__r_.__value_.__l.__data_);
    }
  }

  *(a2 + 164) = *(v2 + 42);
  v20 = *(v2 + 7);
  v19 = *(v2 + 8);
  if (v20 != v19)
  {
    v21 = *(v20 + 23);
    if ((v21 & 0x80000000) == 0)
    {
      v22 = *(v2 + 7);
      if (v21 != 4)
      {
        goto LABEL_61;
      }

LABEL_60:
      v23 = *v22 == 1701736270;
      goto LABEL_62;
    }

    if (*(v20 + 8) == 4)
    {
      v22 = *v20;
      goto LABEL_60;
    }
  }

LABEL_61:
  v23 = 0;
LABEL_62:
  *(a2 + 173) = v23;
  if (0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 3) != (*(v2 + 5) - *(v2 + 4)) >> 5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v58);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "parse.outputs.size() == parse.utterance.size()", 46);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v58);
  }

  if (v20 != v19)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = v2;
      CommandTokens = quasar::corrective_reranking::Parse::getCommandTokens(Intent);
      v28 = (v20 + 24 * v24);
      if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(CommandTokens, v28))
      {
        quasar::utf::toString();
      }

      v29 = v28[23];
      if (v29 < 0)
      {
        v30 = *v28;
        v31 = *(v28 + 1);
      }

      else
      {
        v30 = v28;
        v31 = v28[23];
      }

      if (v31 >= 6)
      {
        v32 = &v30[v31];
        v33 = v30;
        do
        {
          v34 = memchr(v33, 84, v31 - 5);
          if (!v34)
          {
            break;
          }

          if (*v34 == 1196573012 && *(v34 + 2) == 21573)
          {
            if (v34 != v32 && v34 - v30 != -1)
            {
              quasar::utf::toString();
            }

            break;
          }

          v33 = v34 + 1;
          v31 = v32 - v33;
        }

        while (v32 - v33 >= 6);
      }

      if ((v29 & 0x80000000) != 0)
      {
        v36 = *v28;
        v37 = *(v28 + 1);
      }

      else
      {
        v36 = v28;
        v37 = v29;
      }

      if (v37 >= 7)
      {
        v38 = &v36[v37];
        v39 = v36;
        do
        {
          v40 = memchr(v39, 80, v37 - 6);
          if (!v40)
          {
            break;
          }

          if (*v40 == 1280917840 && *(v40 + 3) == 1145130828)
          {
            if (v40 != v38 && v40 - v36 != -1)
            {
              quasar::utf::toString();
            }

            break;
          }

          v39 = v40 + 1;
          v37 = v38 - v39;
        }

        while (v38 - v39 >= 7);
      }

      if ((v29 & 0x80000000) != 0)
      {
        v42 = *v28;
        v29 = *(v28 + 1);
      }

      else
      {
        v42 = v28;
      }

      if (v29 >= 4)
      {
        v43 = &v42[v29];
        v44 = v42;
        do
        {
          v45 = memchr(v44, 78, v29 - 3);
          if (!v45)
          {
            break;
          }

          if (*v45 == 1701736270)
          {
            if (v45 != v43 && v45 - v42 != -1)
            {
              ++*v56;
            }

            break;
          }

          v44 = v45 + 1;
          v29 = v43 - v44;
        }

        while (v43 - v44 >= 4);
      }

      v46 = v28[23];
      if (v46 < 0)
      {
        v47 = v28;
        v28 = *v28;
        v46 = *(v47 + 1);
      }

      v48 = &v28[v46];
      if (v46 >= 6)
      {
        v49 = v28;
        do
        {
          Intent = memchr(v49, 84, v46 - 5);
          if (!Intent)
          {
            break;
          }

          if (*Intent == 1196573012 && *(Intent + 2) == 21573)
          {
            goto LABEL_120;
          }

          v49 = Intent + 1;
          v46 = v48 - v49;
        }

        while (v48 - v49 > 5);
      }

      Intent = v48;
LABEL_120:
      v51 = Intent == v48 || Intent - v28 == -1;
      v52 = !v51;
      v53 = v52 | v25;
      if (v51 && ((v25 ^ 1) & 1) == 0)
      {
        *(v57 + 248) = 1;
        v53 = v25;
      }

      ++v24;
      v2 = v26;
      v20 = *(v26 + 7);
      v25 = v53;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(v26 + 8) - v20) >> 3) > v24);
  }

  if (quasar::gLogLevel > 4)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    *__p = 0u;
    v62 = 0u;
    memset(v61, 0, sizeof(v61));
    *v59 = 0u;
    v60 = 0u;
    memset(v58, 0, sizeof(v58));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v58);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "VoiceEditingResultHandler: ", 27);
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "created interpretation ", 23);
    quasar::result_handler::operator<<(v55, v57);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v58);
  }

  if (v75 < 0)
  {
    operator delete(v73);
  }
}

uint64_t std::optional<quasar::result_handler::CommandData>::~optional(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    v3 = (a1 + 152);
    std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    v3 = (a1 + 72);
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a1 + 48);
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a1 + 24);
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a1;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

uint64_t quasar::result_handler::splitChoice(uint64_t *a1, unsigned int a2, void *a3, int a4)
{
  v7 = a2;
  v8 = 224 * a2;
  if (a4)
  {
    v9 = *a1;
    v10 = v8 + *a1;
    v24 = v10;
    v25 = v9;
    v11 = a3[7];
    if (v11 >= a3[8])
    {
      v12 = std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::__wrap_iter<quasar::Token const*>,std::__wrap_iter<quasar::Token const*>>((a3 + 6), &v25, &v24);
    }

    else
    {
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<std::__wrap_iter<quasar::Token const*>,std::__wrap_iter<quasar::Token const*>>(v11, v9, v10, v7);
      v12 = (v11 + 3);
      a3[7] = v11 + 3;
    }

    a3[7] = v12;
    v17 = a1[1];
    v18 = v8 + *a1;
    v24 = v17;
    v25 = v18;
    v19 = a3[10];
    if (v19 >= a3[11])
    {
      result = std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::__wrap_iter<quasar::Token const*>,std::__wrap_iter<quasar::Token const*>>((a3 + 9), &v25, &v24);
    }

    else
    {
      *v19 = 0;
      v19[1] = 0;
      v19[2] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<std::__wrap_iter<quasar::Token const*>,std::__wrap_iter<quasar::Token const*>>(v19, v18, v17, 0x6DB6DB6DB6DB6DB7 * ((v17 - v18) >> 5));
      result = (v19 + 3);
      a3[10] = v19 + 3;
    }

    a3[10] = result;
  }

  else
  {
    v13 = *a1;
    v14 = v8 + *a1;
    v24 = v14;
    v25 = v13;
    v15 = a3[1];
    if (v15 >= a3[2])
    {
      v16 = std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::__wrap_iter<quasar::Token const*>,std::__wrap_iter<quasar::Token const*>>(a3, &v25, &v24);
    }

    else
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<std::__wrap_iter<quasar::Token const*>,std::__wrap_iter<quasar::Token const*>>(v15, v13, v14, v7);
      v16 = (v15 + 3);
      a3[1] = v15 + 3;
    }

    a3[1] = v16;
    v21 = a1[1];
    v22 = v8 + *a1;
    v24 = v21;
    v25 = v22;
    v23 = a3[4];
    if (v23 >= a3[5])
    {
      result = std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::__wrap_iter<quasar::Token const*>,std::__wrap_iter<quasar::Token const*>>((a3 + 3), &v25, &v24);
    }

    else
    {
      *v23 = 0;
      v23[1] = 0;
      v23[2] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<std::__wrap_iter<quasar::Token const*>,std::__wrap_iter<quasar::Token const*>>(v23, v22, v21, 0x6DB6DB6DB6DB6DB7 * ((v21 - v22) >> 5));
      result = (v23 + 3);
      a3[4] = v23 + 3;
    }

    a3[4] = result;
  }

  return result;
}

uint64_t quasar::result_handler::findSplitEnd(uint64_t *a1, int a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2 || *(v3 + 28) > a2)
  {
    return 0;
  }

  v5 = *(v2 - 192);
  v6 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 5);
  if (v5 <= a2)
  {
    return v6;
  }

  result = 0;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  for (i = (v3 + 256); *(i - 55) > a2 || *(i - 56) < a2; i += 56)
  {
    if (v7 == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v6 <= result + 1)
  {
    v9 = result + 1;
  }

  else
  {
    v9 = v6;
  }

  while (v6 > ++result)
  {
    v10 = *i;
    v11 = *(i - 56);
    i += 56;
    if (v10 != v11)
    {
      return result;
    }
  }

  return v9;
}

uint64_t std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::__wrap_iter<quasar::Token const*>,std::__wrap_iter<quasar::Token const*>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v23 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v8);
  }

  v9 = 24 * v3;
  v19 = 0;
  v20 = v9;
  v21 = 24 * v3;
  v22 = 0;
  v10 = *a2;
  v11 = *a3;
  v12 = 0x6DB6DB6DB6DB6DB7 * ((*a3 - *a2) >> 5);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<std::__wrap_iter<quasar::Token const*>,std::__wrap_iter<quasar::Token const*>>(24 * v3, v10, v11, v12);
  v13 = v21 + 24;
  v14 = *(a1 + 8) - *a1;
  v15 = &v20[-v14];
  memcpy(&v20[-v14], *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = v13;
  v17 = *(a1 + 16);
  *(a1 + 16) = v22;
  v21 = v16;
  v22 = v17;
  v19 = v16;
  v20 = v16;
  std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(&v19);
  return v13;
}

void sub_1B577A950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Token>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        quasar::Token::operator=(v7, v4);
        v4 += 14;
        v7 += 224;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 28;
      quasar::Token::~Token(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

_BYTE *std::__optional_move_base<quasar::result_handler::CommandData,false>::__optional_move_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[184] = 0;
  if (*(a2 + 184) == 1)
  {
    std::__optional_storage_base<quasar::result_handler::CommandData,false>::__construct[abi:ne200100]<quasar::result_handler::CommandData>(a1, a2);
  }

  return a1;
}

__n128 std::__optional_storage_base<quasar::result_handler::CommandData,false>::__construct[abi:ne200100]<quasar::result_handler::CommandData>(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v2 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v2;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a1 + 120) = *(a2 + 120);
  v3 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v3;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  result = *(a2 + 152);
  *(a1 + 152) = result;
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v5 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v5;
  *(a1 + 184) = 1;
  return result;
}

BOOL kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>>::Get(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "v != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v12[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::find<std::string const*>((a1 + 8), v12);
  if (v5)
  {
    v6 = v5[3];
    v7 = *(a1 + 64);
    if (v6 != v7)
    {
      v8 = v6[1];
      if (v8 != v7)
      {
        v9 = *v6;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = *v7;
        *(v10 + 8) = v6;
        *v6 = v10;
        *v7 = v6;
        v6[1] = v7;
      }
    }

    *a3 = v6 + 5;
  }

  return v5 != 0;
}

uint64_t std::vector<quasar::corrective_reranking::ASRCandidate>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::ASRCandidate const*,quasar::corrective_reranking::ASRCandidate const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TextTokenizer::Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B577AC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::wstring *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::ASRCandidate>,quasar::corrective_reranking::ASRCandidate const*,quasar::corrective_reranking::ASRCandidate const*,quasar::corrective_reranking::ASRCandidate*>(uint64_t a1, __int128 *a2, __int128 *a3, std::wstring *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::basic_string<char32_t>::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v4[1].__r_.__value_.__s.__data_[0] = *(v6 + 6);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::ASRCandidate>,quasar::corrective_reranking::ASRCandidate*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::ASRCandidate>,quasar::corrective_reranking::ASRCandidate*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void quasar::result_handler::findSpelledU32RangesInString(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  LOBYTE(v5) = 0;
  v6 = 0;
  v2 = &v5;
  v3 = a1;
  v4 = a2;
  quasar::corrective_reranking::tokenize();
}

void quasar::result_handler::findSpelledU32RangesInString(std::basic_string<char32_t> const&)::$_0::operator()(int **a1)
{
  v1 = *a1;
  if (*(*a1 + 8) == 1)
  {
    p_p = &__p;
    std::basic_string<char32_t>::basic_string(&__p, a1[1], *v1, v1[1], &v21);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      v5 = 0;
      v6 = 4 * size;
      do
      {
        if (u_isupper(p_p->__r_.__value_.__s.__data_[0]))
        {
          ++v5;
        }

        p_p = (p_p + 4);
        v6 -= 4;
      }

      while (v6);
      if (v5 > 1)
      {
        v7 = a1[2];
        v8 = *a1;
        v10 = *(v7 + 1);
        v9 = *(v7 + 2);
        if (v10 >= v9)
        {
          v12 = (v10 - *v7) >> 3;
          if ((v12 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v13 = v9 - *v7;
          v14 = v13 >> 2;
          if (v13 >> 2 <= (v12 + 1))
          {
            v14 = v12 + 1;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1[2], v15);
          }

          v16 = (8 * v12);
          *v16 = *v8;
          v11 = 8 * v12 + 8;
          v17 = *(v7 + 1) - *v7;
          v18 = v16 - v17;
          memcpy(v16 - v17, *v7, v17);
          v19 = *v7;
          *v7 = v18;
          *(v7 + 1) = v11;
          *(v7 + 2) = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v10 = *v8;
          v11 = (v10 + 1);
        }

        *(v7 + 1) = v11;
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v1 = *a1;
  }

  *v1 = 0;
  *(v1 + 8) = 0;
}

void sub_1B577B250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::result_handler::CommandInterpretation>::__emplace_back_slow_path<quasar::result_handler::CommandInterpretation&>(uint64_t a1, const quasar::result_handler::CommandInterpretation *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>>(a1, v6);
  }

  v13 = 0;
  v14 = 264 * v2;
  quasar::result_handler::CommandInterpretation::CommandInterpretation((264 * v2), a2);
  v15 = (264 * v2 + 264);
  v7 = *(a1 + 8);
  v8 = 264 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>,quasar::result_handler::CommandInterpretation*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::result_handler::CommandInterpretation>::~__split_buffer(&v13);
  return v12;
}

void sub_1B577B3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::result_handler::CommandInterpretation>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>,quasar::result_handler::CommandInterpretation*>(uint64_t a1, void **a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    v9 = a2;
    do
    {
      std::allocator_traits<std::allocator<quasar::result_handler::CommandInterpretation>>::construct[abi:ne200100]<quasar::result_handler::CommandInterpretation,quasar::result_handler::CommandInterpretation,0>(a1, a4, v9);
      v9 = (v9 + 264);
      a4 += 264;
      v8 -= 264;
    }

    while (v9 != a3);
    while (v6 != a3)
    {
      quasar::result_handler::CommandInterpretation::~CommandInterpretation(v6);
      v6 += 33;
    }
  }
}

void sub_1B577B440(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 264);
    do
    {
      quasar::result_handler::CommandInterpretation::~CommandInterpretation(v4);
      v4 = (v5 - 264);
      v2 += 264;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::allocator_traits<std::allocator<quasar::result_handler::CommandInterpretation>>::construct[abi:ne200100]<quasar::result_handler::CommandInterpretation,quasar::result_handler::CommandInterpretation,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v4 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 5);
  *(a2 + 24) = v4;
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 3) = 0;
  v5 = a3[3];
  *(a2 + 64) = *(a3 + 8);
  *(a2 + 48) = v5;
  *(a3 + 7) = 0;
  *(a3 + 8) = 0;
  *(a3 + 6) = 0;
  v6 = *(a3 + 72);
  v7 = *(a3 + 85);
  *(a2 + 96) = 0;
  *(a2 + 85) = v7;
  *(a2 + 72) = v6;
  *(a2 + 120) = 0;
  if (*(a3 + 120) == 1)
  {
    v8 = a3[6];
    *(a2 + 112) = *(a3 + 14);
    *(a2 + 96) = v8;
    *(a3 + 13) = 0;
    *(a3 + 14) = 0;
    *(a3 + 12) = 0;
    *(a2 + 120) = 1;
  }

  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  if (*(a3 + 152) == 1)
  {
    v9 = a3[8];
    *(a2 + 144) = *(a3 + 18);
    *(a2 + 128) = v9;
    *(a3 + 17) = 0;
    *(a3 + 18) = 0;
    *(a3 + 16) = 0;
    *(a2 + 152) = 1;
  }

  v10 = *(a3 + 20);
  *(a2 + 166) = *(a3 + 166);
  *(a2 + 160) = v10;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 176) = 0;
  *(a2 + 176) = a3[11];
  *(a2 + 192) = *(a3 + 24);
  *(a3 + 22) = 0;
  *(a3 + 23) = 0;
  *(a3 + 24) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 200) = *(a3 + 200);
  *(a2 + 216) = *(a3 + 27);
  *(a3 + 25) = 0;
  *(a3 + 26) = 0;
  *(a3 + 27) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  result = a3[14];
  *(a2 + 224) = result;
  *(a2 + 240) = *(a3 + 30);
  *(a3 + 28) = 0;
  *(a3 + 29) = 0;
  *(a3 + 30) = 0;
  v12 = *(a3 + 31);
  *(a2 + 253) = *(a3 + 253);
  *(a2 + 248) = v12;
  return result;
}

uint64_t std::__split_buffer<quasar::result_handler::CommandInterpretation>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 264;
    quasar::result_handler::CommandInterpretation::~CommandInterpretation((i - 264));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,false>(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v193 = a2;
  v194 = a1;
  while (1)
  {
    v8 = v6 - v7;
    v9 = 0xF83E0F83E0F83E1 * ((v6 - v7) >> 3);
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return;
    }

    if (v9 == 2)
    {
      v193 = (v6 - 264);
      v83 = *(v6 - 24);
      v84 = *(v7 + 168);
      if (v84 < v83 || v83 >= v84 && *(v7 + 252) < *(v6 - 3))
      {
        v85 = &v194;
        v86 = &v193;
LABEL_145:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(v85, v86);
        return;
      }

      return;
    }

LABEL_9:
    if (v8 <= 6335)
    {
      if (a4)
      {
        if (v7 != v6)
        {
          v94 = v7 + 264;
          if ((v7 + 264) != v6)
          {
            v95 = 0;
            v96 = v7;
            do
            {
              v97 = v94;
              v98 = *(v96 + 432);
              v99 = *(v96 + 168);
              if (v99 < v98 || (v98 >= v99 ? (v100 = *(v96 + 252) < *(v96 + 516)) : (v100 = 0), v100))
              {
                v101 = *v97;
                v219 = *(v97 + 16);
                v218 = v101;
                *(v97 + 8) = 0;
                *(v97 + 16) = 0;
                *v97 = 0;
                v220 = *(v96 + 288);
                v221 = *(v96 + 304);
                *(v96 + 288) = 0;
                *(v96 + 296) = 0;
                v102 = *(v96 + 312);
                *(v96 + 304) = 0;
                *(v96 + 312) = 0;
                v222 = v102;
                v223 = *(v96 + 328);
                *(v96 + 320) = 0;
                *(v96 + 328) = 0;
                *v224 = *(v96 + 336);
                *&v224[13] = *(v96 + 349);
                LOBYTE(v225) = 0;
                v227 = 0;
                if (*(v96 + 384) == 1)
                {
                  v226 = *(v96 + 376);
                  v225 = *(v96 + 360);
                  *(v96 + 368) = 0;
                  *(v96 + 376) = 0;
                  *(v96 + 360) = 0;
                  v227 = 1;
                }

                LOBYTE(v228) = 0;
                v230 = 0;
                if (*(v96 + 416) == 1)
                {
                  v229 = *(v96 + 408);
                  v228 = *(v96 + 392);
                  *(v96 + 400) = 0;
                  *(v96 + 408) = 0;
                  *(v96 + 392) = 0;
                  v230 = 1;
                }

                *v231 = *(v96 + 424);
                *&v231[6] = *(v96 + 430);
                v232 = *(v96 + 440);
                v233 = *(v96 + 456);
                *(v96 + 448) = 0;
                *(v96 + 456) = 0;
                *(v96 + 440) = 0;
                v234 = *(v96 + 464);
                v235 = *(v96 + 480);
                *(v96 + 464) = 0;
                *(v96 + 472) = 0;
                *(v96 + 480) = 0;
                v236 = *(v96 + 488);
                v103 = *(v96 + 512);
                v237 = *(v96 + 504);
                *(v96 + 488) = 0;
                *(v96 + 496) = 0;
                *(v96 + 504) = 0;
                *v238 = v103;
                *&v238[5] = *(v96 + 517);
                quasar::result_handler::CommandInterpretation::operator=(v97, v96);
                v104 = v7;
                if (v96 != v7)
                {
                  v105 = v95;
                  do
                  {
                    v106 = v7 + v105;
                    v107 = *(v7 + v105 - 96);
                    if (v107 >= *&v231[8] && (*&v231[8] < v107 || *(v106 - 12) >= *&v238[4]))
                    {
                      v104 = v7 + v105;
                      goto LABEL_172;
                    }

                    quasar::result_handler::CommandInterpretation::operator=(v106, (v106 - 264));
                    v105 -= 264;
                  }

                  while (v105);
                  v104 = v7;
                }

LABEL_172:
                quasar::result_handler::CommandInterpretation::operator=(v104, &v218);
                quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v218);
              }

              v94 = v97 + 264;
              v95 += 264;
              v96 = v97;
            }

            while ((v97 + 264) != v6);
          }
        }
      }

      else if (v7 != v6)
      {
        v180 = v7 + 264;
        if ((v7 + 264) != v6)
        {
          do
          {
            v181 = v180;
            v182 = *(v7 + 432);
            v183 = *(v7 + 168);
            if (v183 < v182 || (v182 >= v183 ? (v184 = *(v7 + 252) < *(v7 + 516)) : (v184 = 0), v184))
            {
              v185 = *v181;
              v219 = *(v181 + 16);
              v218 = v185;
              *(v181 + 8) = 0;
              *(v181 + 16) = 0;
              *v181 = 0;
              v220 = *(v7 + 288);
              v221 = *(v7 + 304);
              *(v7 + 288) = 0;
              *(v7 + 296) = 0;
              v186 = *(v7 + 312);
              *(v7 + 304) = 0;
              *(v7 + 312) = 0;
              v222 = v186;
              v223 = *(v7 + 328);
              *(v7 + 320) = 0;
              *(v7 + 328) = 0;
              *v224 = *(v7 + 336);
              *&v224[13] = *(v7 + 349);
              LOBYTE(v225) = 0;
              v227 = 0;
              if (*(v7 + 384) == 1)
              {
                v226 = *(v7 + 376);
                v225 = *(v7 + 360);
                *(v7 + 368) = 0;
                *(v7 + 376) = 0;
                *(v7 + 360) = 0;
                v227 = 1;
              }

              LOBYTE(v228) = 0;
              v230 = 0;
              if (*(v7 + 416) == 1)
              {
                v229 = *(v7 + 408);
                v228 = *(v7 + 392);
                *(v7 + 400) = 0;
                *(v7 + 408) = 0;
                *(v7 + 392) = 0;
                v230 = 1;
              }

              *v231 = *(v7 + 424);
              *&v231[6] = *(v7 + 430);
              v232 = *(v7 + 440);
              v233 = *(v7 + 456);
              *(v7 + 448) = 0;
              *(v7 + 456) = 0;
              *(v7 + 440) = 0;
              v234 = *(v7 + 464);
              v235 = *(v7 + 480);
              *(v7 + 464) = 0;
              *(v7 + 472) = 0;
              *(v7 + 480) = 0;
              v236 = *(v7 + 488);
              v187 = *(v7 + 512);
              v237 = *(v7 + 504);
              *(v7 + 488) = 0;
              *(v7 + 496) = 0;
              *(v7 + 504) = 0;
              *v238 = v187;
              *&v238[5] = *(v7 + 517);
              do
              {
                do
                {
                  v188 = v7;
                  quasar::result_handler::CommandInterpretation::operator=(v7 + 264, v7);
                  v7 -= 264;
                  v189 = *(v188 - 96);
                }

                while (v189 < *&v231[8]);
              }

              while (*&v231[8] >= v189 && *(v188 - 12) < *&v238[4]);
              quasar::result_handler::CommandInterpretation::operator=(v188, &v218);
              quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v218);
            }

            v180 = v181 + 264;
            v7 = v181;
          }

          while ((v181 + 264) != v6);
        }
      }

      return;
    }

    if (!a3)
    {
      if (v7 != v6)
      {
        v191 = v6;
        v109 = (v9 - 2) >> 1;
        v110 = v109;
        do
        {
          v111 = v109;
          if (v110 >= v109)
          {
            v112 = (2 * v109) | 1;
            v113 = v7 + 264 * v112;
            if (2 * v111 + 2 < v9)
            {
              v114 = *(v113 + 168);
              v115 = *(v113 + 432);
              if (v115 < v114 || (v114 >= v115 ? (v116 = *(v113 + 516) < *(v113 + 252)) : (v116 = 0), v116))
              {
                v113 += 264;
                v112 = 2 * v111 + 2;
              }
            }

            v117 = v7 + 264 * v111;
            v118 = *(v113 + 168);
            v119 = *(v117 + 168);
            if (v119 >= v118 && (v118 < v119 || *(v117 + 252) >= *(v113 + 252)))
            {
              v121 = *v117;
              v219 = *(v117 + 16);
              v218 = v121;
              *(v117 + 8) = 0;
              *(v117 + 16) = 0;
              *v117 = 0;
              v122 = *(v117 + 24);
              v221 = *(v117 + 40);
              v220 = v122;
              *(v117 + 32) = 0;
              *(v117 + 40) = 0;
              *(v117 + 24) = 0;
              v123 = *(v117 + 48);
              v223 = *(v117 + 64);
              v222 = v123;
              *(v117 + 56) = 0;
              *(v117 + 64) = 0;
              *(v117 + 48) = 0;
              v124 = *(v117 + 72);
              *&v224[13] = *(v117 + 85);
              *v224 = v124;
              LOBYTE(v225) = 0;
              v227 = 0;
              if (*(v117 + 120) == 1)
              {
                v125 = *(v117 + 96);
                v226 = *(v117 + 112);
                v225 = v125;
                *(v117 + 104) = 0;
                *(v117 + 112) = 0;
                *(v117 + 96) = 0;
                v227 = 1;
              }

              LOBYTE(v228) = 0;
              v230 = 0;
              if (*(v117 + 152) == 1)
              {
                v126 = *(v117 + 128);
                v229 = *(v117 + 144);
                v228 = v126;
                *(v117 + 136) = 0;
                *(v117 + 144) = 0;
                *(v117 + 128) = 0;
                v230 = 1;
              }

              v127 = *(v117 + 160);
              *&v231[6] = *(v117 + 166);
              *v231 = v127;
              v232 = *(v117 + 176);
              v233 = *(v117 + 192);
              *(v117 + 176) = 0;
              *(v117 + 184) = 0;
              *(v117 + 192) = 0;
              v234 = *(v117 + 200);
              v235 = *(v117 + 216);
              *(v117 + 200) = 0;
              *(v117 + 208) = 0;
              *(v117 + 216) = 0;
              v236 = *(v117 + 224);
              v237 = *(v117 + 240);
              *(v117 + 232) = 0;
              *(v117 + 240) = 0;
              *(v117 + 224) = 0;
              v128 = *(v117 + 253);
              *v238 = *(v117 + 248);
              *&v238[5] = v128;
              v129 = *&v231[8];
              v130 = *&v238[4];
              do
              {
                v131 = v113;
                quasar::result_handler::CommandInterpretation::operator=(v117, v113);
                if (v110 < v112)
                {
                  break;
                }

                v132 = 2 * v112;
                v112 = (2 * v112) | 1;
                v113 = v7 + 264 * v112;
                v133 = v132 + 2;
                if (v133 < v9)
                {
                  v134 = *(v113 + 168);
                  v135 = *(v113 + 432);
                  if (v135 < v134 || (v134 >= v135 ? (v136 = *(v113 + 516) < *(v113 + 252)) : (v136 = 0), v136))
                  {
                    v113 += 264;
                    v112 = v133;
                  }
                }

                v137 = *(v113 + 168);
                if (v129 < v137)
                {
                  break;
                }

                v138 = v137 >= v129 && v130 < *(v113 + 252);
                v117 = v131;
              }

              while (!v138);
              quasar::result_handler::CommandInterpretation::operator=(v131, &v218);
              quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v218);
            }
          }

          v109 = v111 - 1;
        }

        while (v111);
        v139 = 0xF83E0F83E0F83E1 * (v8 >> 3);
        v140 = v191;
        do
        {
          v141 = *v7;
          v197 = *(v7 + 16);
          v196 = v141;
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *v7 = 0;
          v142 = *(v7 + 24);
          v199 = *(v7 + 40);
          v198 = v142;
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
          *(v7 + 24) = 0;
          v143 = *(v7 + 48);
          v201 = *(v7 + 64);
          v200 = v143;
          *(v7 + 48) = 0;
          *(v7 + 56) = 0;
          *(v7 + 64) = 0;
          v144 = *(v7 + 72);
          *&v202[13] = *(v7 + 85);
          *v202 = v144;
          LOBYTE(v203) = 0;
          v205 = 0;
          if (*(v7 + 120) == 1)
          {
            v145 = *(v7 + 96);
            v204 = *(v7 + 112);
            v203 = v145;
            *(v7 + 104) = 0;
            *(v7 + 112) = 0;
            *(v7 + 96) = 0;
            v205 = 1;
          }

          LOBYTE(v206) = 0;
          v208 = 0;
          if (*(v7 + 152) == 1)
          {
            v146 = *(v7 + 128);
            v207 = *(v7 + 144);
            v206 = v146;
            *(v7 + 136) = 0;
            *(v7 + 144) = 0;
            *(v7 + 128) = 0;
            v208 = 1;
          }

          v147 = 0;
          v148 = *(v7 + 160);
          *(v209 + 6) = *(v7 + 166);
          v209[0] = v148;
          v210 = *(v7 + 176);
          v211 = *(v7 + 192);
          *(v7 + 184) = 0;
          *(v7 + 192) = 0;
          *(v7 + 176) = 0;
          v212 = *(v7 + 200);
          v213 = *(v7 + 216);
          *(v7 + 208) = 0;
          *(v7 + 216) = 0;
          *(v7 + 200) = 0;
          v214 = *(v7 + 224);
          v149 = *(v7 + 248);
          v215 = *(v7 + 240);
          *(v7 + 224) = 0;
          *(v7 + 232) = 0;
          *(v7 + 240) = 0;
          *(v216 + 5) = *(v7 + 253);
          v216[0] = v149;
          v150 = v7;
          do
          {
            v151 = v150;
            v152 = (v150 + 264 * v147);
            v150 = (v152 + 66);
            v153 = 2 * v147;
            v147 = (2 * v147) | 1;
            v154 = v153 + 2;
            if (v154 < v139)
            {
              v155 = v152[108];
              v156 = v152[174];
              if (v156 < v155 || (v155 >= v156 ? (v157 = v152[195] < v152[129]) : (v157 = 0), v157))
              {
                v150 = (v152 + 132);
                v147 = v154;
              }
            }

            quasar::result_handler::CommandInterpretation::operator=(v151, v150);
          }

          while (v147 <= ((v139 - 2) >> 1));
          v158 = (v140 - 264);
          v192 = v158;
          if (v150 == v158)
          {
            quasar::result_handler::CommandInterpretation::operator=(v150, &v196);
          }

          else
          {
            quasar::result_handler::CommandInterpretation::operator=(v150, v158);
            quasar::result_handler::CommandInterpretation::operator=(v158, &v196);
            v159 = v150 - v7 + 264;
            if (v159 >= 265)
            {
              v160 = 0xF83E0F83E0F83E1 * (v159 >> 3) - 2;
              v161 = v160 >> 1;
              v162 = v7 + 264 * (v160 >> 1);
              v163 = *(v162 + 168);
              v164 = *(v150 + 168);
              if (v164 < v163 || (v163 >= v164 ? (v165 = *(v150 + 252) < *(v162 + 252)) : (v165 = 0), v165))
              {
                v166 = *v150;
                v219 = *(v150 + 16);
                v218 = v166;
                *(v150 + 8) = 0;
                *(v150 + 16) = 0;
                *v150 = 0;
                v167 = *(v150 + 24);
                v221 = *(v150 + 40);
                v220 = v167;
                *(v150 + 32) = 0;
                *(v150 + 40) = 0;
                *(v150 + 24) = 0;
                v168 = *(v150 + 48);
                v223 = *(v150 + 64);
                v222 = v168;
                *(v150 + 48) = 0;
                *(v150 + 56) = 0;
                *(v150 + 64) = 0;
                v169 = *(v150 + 72);
                *&v224[13] = *(v150 + 85);
                *v224 = v169;
                LOBYTE(v225) = 0;
                v227 = 0;
                if (*(v150 + 120) == 1)
                {
                  v170 = *(v150 + 96);
                  v226 = *(v150 + 112);
                  v225 = v170;
                  *(v150 + 104) = 0;
                  *(v150 + 112) = 0;
                  *(v150 + 96) = 0;
                  v227 = 1;
                }

                LOBYTE(v228) = 0;
                v230 = 0;
                if (*(v150 + 152) == 1)
                {
                  v171 = *(v150 + 128);
                  v229 = *(v150 + 144);
                  v228 = v171;
                  *(v150 + 136) = 0;
                  *(v150 + 144) = 0;
                  *(v150 + 128) = 0;
                  v230 = 1;
                }

                v172 = *(v150 + 160);
                *&v231[6] = *(v150 + 166);
                *v231 = v172;
                v232 = *(v150 + 176);
                v233 = *(v150 + 192);
                *(v150 + 184) = 0;
                *(v150 + 192) = 0;
                *(v150 + 176) = 0;
                v234 = *(v150 + 200);
                v235 = *(v150 + 216);
                *(v150 + 208) = 0;
                *(v150 + 216) = 0;
                *(v150 + 200) = 0;
                v236 = *(v150 + 224);
                v173 = *(v150 + 248);
                v237 = *(v150 + 240);
                *(v150 + 224) = 0;
                *(v150 + 232) = 0;
                *(v150 + 240) = 0;
                *&v238[5] = *(v150 + 253);
                *v238 = v173;
                quasar::result_handler::CommandInterpretation::operator=(v150, (v7 + 264 * (v160 >> 1)));
                if (v160 >= 2)
                {
                  v175 = *&v231[8];
                  v176 = *&v238[4];
                  while (1)
                  {
                    v177 = v161 - 1;
                    v161 = (v161 - 1) >> 1;
                    v174 = v7 + 264 * v161;
                    v178 = *(v174 + 168);
                    if (v175 >= v178 && (v178 < v175 || v176 >= *(v174 + 252)))
                    {
                      break;
                    }

                    quasar::result_handler::CommandInterpretation::operator=(v162, (v7 + 264 * v161));
                    v162 = v7 + 264 * v161;
                    if (v177 <= 1)
                    {
                      goto LABEL_251;
                    }
                  }
                }

                v174 = v162;
LABEL_251:
                quasar::result_handler::CommandInterpretation::operator=(v174, &v218);
                quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v218);
              }
            }
          }

          quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v196);
          v36 = v139-- <= 2;
          v140 = v192;
        }

        while (!v36);
      }

      return;
    }

    v10 = v6 - 264;
    if (v8 < 0x8401)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(v7 + 264 * (v9 >> 1), v7, v10);
      v11 = v194;
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(v7, v7 + 264 * (v9 >> 1), v10);
      v11 = v194;
      v12 = (v194 + 264 * (v9 >> 1));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(v194 + 264, v12 - 264, (v193 - 33));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(v194 + 528, v12 + 264, v193 - 792);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(v12 - 264, v12, v12 + 264);
      v13 = *v194;
      v219 = *(v194 + 16);
      v218 = v13;
      *(v194 + 8) = 0;
      *(v11 + 16) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      v221 = *(v11 + 40);
      v220 = v14;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 24) = 0;
      v15 = *(v11 + 48);
      v223 = *(v11 + 64);
      v222 = v15;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      v16 = *(v11 + 72);
      *&v224[13] = *(v11 + 85);
      *v224 = v16;
      LOBYTE(v225) = 0;
      v227 = 0;
      if (*(v11 + 120) == 1)
      {
        v17 = *(v11 + 96);
        v226 = *(v11 + 112);
        v225 = v17;
        *(v11 + 104) = 0;
        *(v11 + 112) = 0;
        *(v11 + 96) = 0;
        v227 = 1;
      }

      LOBYTE(v228) = 0;
      v230 = 0;
      if (*(v11 + 152) == 1)
      {
        v18 = *(v11 + 128);
        v229 = *(v11 + 144);
        v228 = v18;
        *(v11 + 136) = 0;
        *(v11 + 144) = 0;
        *(v11 + 128) = 0;
        v230 = 1;
      }

      v19 = *(v11 + 160);
      *&v231[6] = *(v11 + 166);
      *v231 = v19;
      v232 = *(v11 + 176);
      v233 = *(v11 + 192);
      *(v11 + 184) = 0;
      *(v11 + 192) = 0;
      *(v11 + 176) = 0;
      v234 = *(v11 + 200);
      v235 = *(v11 + 216);
      *(v11 + 208) = 0;
      *(v11 + 216) = 0;
      *(v11 + 200) = 0;
      v236 = *(v11 + 224);
      v20 = *(v11 + 248);
      v237 = *(v11 + 240);
      *(v11 + 224) = 0;
      *(v11 + 232) = 0;
      *(v11 + 240) = 0;
      *&v238[5] = *(v11 + 253);
      *v238 = v20;
      quasar::result_handler::CommandInterpretation::operator=(v11, v12);
      quasar::result_handler::CommandInterpretation::operator=(v12, &v218);
      quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v218);
    }

    --a3;
    if ((a4 & 1) == 0)
    {
      v21 = *(v11 - 96);
      v22 = *(v11 + 168);
      if (v22 >= v21 && (v21 < v22 || *(v11 + 252) >= *(v11 - 12)))
      {
        v54 = v193;
        *&v196 = v11;
        v217 = v193;
        v55 = *v11;
        v219 = *(v11 + 16);
        v218 = v55;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *v11 = 0;
        v56 = *(v11 + 24);
        v221 = *(v11 + 40);
        v220 = v56;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0;
        *(v11 + 24) = 0;
        v57 = *(v11 + 48);
        v223 = *(v11 + 64);
        v222 = v57;
        *(v11 + 48) = 0;
        *(v11 + 56) = 0;
        *(v11 + 64) = 0;
        v58 = *(v11 + 72);
        *&v224[13] = *(v11 + 85);
        *v224 = v58;
        LOBYTE(v225) = 0;
        v227 = 0;
        if (*(v11 + 120) == 1)
        {
          v59 = *(v11 + 96);
          v226 = *(v11 + 112);
          v225 = v59;
          *(v11 + 104) = 0;
          *(v11 + 112) = 0;
          *(v11 + 96) = 0;
          v227 = 1;
        }

        LOBYTE(v228) = 0;
        v230 = 0;
        if (*(v11 + 152) == 1)
        {
          v60 = *(v11 + 128);
          v229 = *(v11 + 144);
          v228 = v60;
          *(v11 + 136) = 0;
          *(v11 + 144) = 0;
          *(v11 + 128) = 0;
          v230 = 1;
        }

        v61 = *(v11 + 160);
        *&v231[6] = *(v11 + 166);
        *v231 = v61;
        v232 = *(v11 + 176);
        v233 = *(v11 + 192);
        *(v11 + 184) = 0;
        *(v11 + 192) = 0;
        *(v11 + 176) = 0;
        v234 = *(v11 + 200);
        v235 = *(v11 + 216);
        *(v11 + 208) = 0;
        *(v11 + 216) = 0;
        *(v11 + 200) = 0;
        v236 = *(v11 + 224);
        v62 = *(v11 + 248);
        v237 = *(v11 + 240);
        *(v11 + 224) = 0;
        *(v11 + 232) = 0;
        *(v11 + 240) = 0;
        *&v238[5] = *(v11 + 253);
        *v238 = v62;
        v63 = *&v231[8];
        v64 = *(v54 - 24);
        if (v64 >= *&v231[8])
        {
          v65 = *&v238[4];
          if (*&v231[8] >= v64 && *(v54 - 3) < *&v238[4])
          {
            goto LABEL_86;
          }

          v72 = v11 + 264;
          do
          {
            v67 = v72;
            if (v72 >= v54)
            {
              break;
            }

            v73 = *(v72 + 168);
            if (v73 < *&v231[8])
            {
              break;
            }

            v74 = *(v72 + 252);
            v72 += 264;
          }

          while (*&v231[8] < v73 || v74 >= *&v238[4]);
        }

        else
        {
          v65 = *&v238[4];
LABEL_86:
          v66 = v11 + 264;
          do
          {
            v67 = v66;
            v68 = *(v66 + 168);
            if (v68 < *&v231[8])
            {
              break;
            }

            v69 = *(v66 + 252);
            v66 += 264;
          }

          while (*&v231[8] < v68 || v69 >= v65);
        }

        *&v196 = v67;
        if (v67 < v54)
        {
          for (i = v54 - 90; v64 < *&v231[8] || *&v231[8] >= v64 && i[87] < v65; i -= 66)
          {
            v64 = *i;
          }

          v54 = (i + 24);
          goto LABEL_109;
        }

        while (v67 < v54)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v196, &v217);
          v76 = v196 + 264;
          do
          {
            v67 = v76;
            v77 = *(v76 + 168);
            if (v77 < v63)
            {
              break;
            }

            v78 = *(v76 + 252);
            v76 += 264;
          }

          while (v63 < v77 || v78 >= v65);
          *&v196 = v67;
          v54 = v217;
          do
          {
            do
            {
              v54 = (v54 - 264);
              v80 = *(v54 + 42);
            }

            while (v80 < v63);
          }

          while (v63 >= v80 && *(v54 + 63) < v65);
LABEL_109:
          v217 = v54;
        }

        v82 = v67 - 264;
        if (v67 - 264 != v11)
        {
          quasar::result_handler::CommandInterpretation::operator=(v11, (v67 - 264));
        }

        quasar::result_handler::CommandInterpretation::operator=(v82, &v218);
        v7 = v196;
        quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v218);
        a4 = 0;
        goto LABEL_71;
      }
    }

    v23 = v193;
    *&v196 = v11;
    v217 = v193;
    v24 = *v11;
    v219 = *(v11 + 16);
    v218 = v24;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 0;
    v25 = *(v11 + 24);
    v221 = *(v11 + 40);
    v220 = v25;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 24) = 0;
    v26 = *(v11 + 48);
    v223 = *(v11 + 64);
    v222 = v26;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    v27 = *(v11 + 72);
    *&v224[13] = *(v11 + 85);
    *v224 = v27;
    LOBYTE(v225) = 0;
    v227 = 0;
    if (*(v11 + 120) == 1)
    {
      v28 = *(v11 + 96);
      v226 = *(v11 + 112);
      v225 = v28;
      *(v11 + 104) = 0;
      *(v11 + 112) = 0;
      *(v11 + 96) = 0;
      v227 = 1;
    }

    LOBYTE(v228) = 0;
    v230 = 0;
    if (*(v11 + 152) == 1)
    {
      v29 = *(v11 + 128);
      v229 = *(v11 + 144);
      v228 = v29;
      *(v11 + 136) = 0;
      *(v11 + 144) = 0;
      *(v11 + 128) = 0;
      v230 = 1;
    }

    v30 = 0;
    v31 = *(v11 + 160);
    *&v231[6] = *(v11 + 166);
    *v231 = v31;
    v232 = *(v11 + 176);
    v233 = *(v11 + 192);
    *(v11 + 184) = 0;
    *(v11 + 192) = 0;
    *(v11 + 176) = 0;
    v234 = *(v11 + 200);
    v235 = *(v11 + 216);
    *(v11 + 208) = 0;
    *(v11 + 216) = 0;
    *(v11 + 200) = 0;
    v236 = *(v11 + 224);
    v32 = *(v11 + 248);
    v237 = *(v11 + 240);
    *(v11 + 224) = 0;
    *(v11 + 232) = 0;
    *(v11 + 240) = 0;
    *&v238[5] = *(v11 + 253);
    *v238 = v32;
    v33 = *&v231[8];
    v34 = HIDWORD(v32);
    while (1)
    {
      v35 = *(v11 + v30 + 432);
      if (*&v231[8] >= v35)
      {
        v36 = v35 >= *&v231[8] && SHIDWORD(v32) < *(v11 + v30 + 516);
        if (!v36)
        {
          break;
        }
      }

      v30 += 264;
    }

    v37 = (v11 + v30);
    v38 = v11 + v30 + 264;
    *&v196 = v38;
    if (v30)
    {
      v39 = v23 - 264;
      do
      {
        v23 = v39;
        v40 = *(v39 + 42);
        if (*&v231[8] < v40)
        {
          break;
        }

        LODWORD(v32) = *(v39 + 63);
        v39 -= 264;
      }

      while (v40 < *&v231[8] || SHIDWORD(v32) >= v32);
    }

    else
    {
      while (v38 < v23)
      {
        v42 = (v23 - 264);
        v43 = *(v23 - 24);
        if (*&v231[8] >= v43)
        {
          v44 = v43 >= *&v231[8] && SHIDWORD(v32) < *(v23 - 3);
          v23 = (v23 - 264);
          if (!v44)
          {
            continue;
          }
        }

        v23 = v42;
        break;
      }
    }

    v217 = v23;
    if (v38 < v23)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v196, &v217);
        v45 = v196;
        do
        {
          do
          {
            v45 += 264;
            v46 = *(v45 + 168);
          }

          while (v33 < v46);
        }

        while (v46 >= v33 && v34 < *(v45 + 252));
        *&v196 = v45;
        v48 = (v217 - 264);
        do
        {
          v49 = v48;
          v50 = *(v48 + 42);
          if (v33 < v50)
          {
            break;
          }

          v51 = *(v48 + 63);
          v48 = (v48 - 264);
        }

        while (v50 < v33 || v34 >= v51);
        v217 = v49;
      }

      while (v45 < v49);
      v37 = (v45 - 264);
    }

    if (v37 != v11)
    {
      quasar::result_handler::CommandInterpretation::operator=(v11, v37);
    }

    quasar::result_handler::CommandInterpretation::operator=(v37, &v218);
    quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v218);
    if (v38 < v23)
    {
      goto LABEL_70;
    }

    v53 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*>(v194, v37);
    v7 = v37 + 264;
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*>(v37 + 264, v193))
    {
      if (!v53)
      {
LABEL_70:
        std::__introsort<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,false>(v194, v37, a3, a4 & 1);
        a4 = 0;
        v7 = v37 + 264;
      }

LABEL_71:
      v194 = v7;
      goto LABEL_75;
    }

    if (v53)
    {
      return;
    }

    v193 = v37;
    v7 = v194;
LABEL_75:
    v6 = v193;
  }

  if (v9 == 3)
  {
    v193 = (v6 - 264);
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(v7, v7 + 264, v6 - 264);
    return;
  }

  if (v9 != 4)
  {
    if (v9 == 5)
    {
      v193 = (v6 - 264);
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(v7, v7 + 264, v7 + 528, v7 + 792, v6 - 264);
      return;
    }

    goto LABEL_9;
  }

  v193 = (v6 - 264);
  v217 = (v7 + 528);
  *&v218 = v7;
  v195 = (v6 - 264);
  *&v196 = v7 + 264;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(v7, v7 + 264, v7 + 528);
  v87 = *(v6 - 24);
  v88 = *(v7 + 696);
  if (v88 < v87 || v87 >= v88 && *(v7 + 780) < *(v6 - 3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v217, &v195);
    v89 = *(v217 + 42);
    v90 = *(v7 + 432);
    if (v90 < v89 || (v89 >= v90 ? (v91 = *(v7 + 516) < *(v217 + 63)) : (v91 = 0), v91))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v196, &v217);
      v92 = *(v196 + 168);
      v93 = *(v7 + 168);
      if (v93 < v92 || v92 >= v93 && *(v7 + 252) < *(v196 + 252))
      {
        v85 = &v218;
        v86 = &v196;
        goto LABEL_145;
      }
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(uint64_t *a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *v2;
  v13 = *(v2 + 16);
  v12 = v4;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = 0;
  v5 = *(v2 + 24);
  v15 = *(v2 + 40);
  v14 = v5;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
  v6 = *(v2 + 48);
  v17 = *(v2 + 64);
  v16 = v6;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  v7 = *(v2 + 72);
  *&v18[13] = *(v2 + 85);
  *v18 = v7;
  LOBYTE(v19) = 0;
  v21 = 0;
  if (*(v2 + 120) == 1)
  {
    v8 = *(v2 + 96);
    v20 = *(v2 + 112);
    v19 = v8;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
    *(v2 + 96) = 0;
    v21 = 1;
  }

  LOBYTE(v22) = 0;
  v24 = 0;
  if (*(v2 + 152) == 1)
  {
    v9 = *(v2 + 128);
    v23 = *(v2 + 144);
    v22 = v9;
    *(v2 + 136) = 0;
    *(v2 + 144) = 0;
    *(v2 + 128) = 0;
    v24 = 1;
  }

  v10 = *(v2 + 160);
  *(v25 + 6) = *(v2 + 166);
  v25[0] = v10;
  v26 = *(v2 + 176);
  v27 = *(v2 + 192);
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 176) = 0;
  v28 = *(v2 + 200);
  v29 = *(v2 + 216);
  *(v2 + 208) = 0;
  *(v2 + 216) = 0;
  *(v2 + 200) = 0;
  v30 = *(v2 + 224);
  v11 = *(v2 + 248);
  v31 = *(v2 + 240);
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0;
  *(v32 + 5) = *(v2 + 253);
  v32[0] = v11;
  quasar::result_handler::CommandInterpretation::operator=(v2, v3);
  quasar::result_handler::CommandInterpretation::operator=(v3, &v12);
  quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v12);
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v19 = a3;
  v20 = a2;
  v3 = *(a2 + 168);
  v4 = *(a1 + 168);
  if (v4 < v3 || ((v5 = *(a2 + 252), v3 >= v4) ? (v6 = *(a1 + 252) < v5) : (v6 = 0), v6))
  {
    v14 = *(a3 + 168);
    if (v3 < v14 || (v14 >= v3 ? (v15 = *(a2 + 252) < *(a3 + 252)) : (v15 = 0), v15))
    {
      v12 = &v21;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v21, &v20);
      v16 = *(v19 + 42);
      v17 = *(v20 + 42);
      if (v17 >= v16 && (v16 < v17 || *(v20 + 63) >= *(v19 + 63)))
      {
        return;
      }

      v12 = &v20;
    }

    v13 = &v19;
LABEL_33:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(v12, v13);
    return;
  }

  v7 = *(a3 + 168);
  if (v3 < v7 || (v7 >= v3 ? (v8 = v5 < *(a3 + 252)) : (v8 = 0), v8))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v20, &v19);
    v9 = *(v20 + 42);
    v10 = *(v21 + 168);
    if (v10 < v9 || (v9 >= v10 ? (v11 = *(v21 + 252) < *(v20 + 63)) : (v11 = 0), v11))
    {
      v12 = &v21;
      v13 = &v20;
      goto LABEL_33;
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  v32 = a1;
  v29 = a4;
  v30 = a3;
  v28 = a5;
  v36 = a1;
  v34 = a3;
  v35 = a2;
  v33 = a4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(a1, a2, a3);
  v10 = *(a4 + 168);
  v11 = *(a3 + 168);
  if (v11 < v10 || v10 >= v11 && *(a3 + 252) < *(a4 + 252))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v34, &v33);
    v12 = *(v34 + 42);
    v13 = *(a2 + 168);
    if (v13 < v12 || ((v14 = *(a2 + 252), v15 = *(v34 + 63), v12 >= v13) ? (v17 = __OFSUB__(v14, v15), v16 = v14 - v15 < 0) : (v17 = 0, v16 = 0), v16 ^ v17))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v35, &v34);
      v18 = *(v35 + 42);
      v19 = *(a1 + 168);
      if (v19 < v18 || v18 >= v19 && *(a1 + 252) < *(v35 + 63))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v36, &v35);
      }
    }
  }

  v20 = *(a5 + 168);
  v21 = *(a4 + 168);
  if (v21 < v20 || v20 >= v21 && *(a4 + 252) < *(a5 + 252))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v29, &v28);
    v22 = *(v29 + 42);
    v23 = *(a3 + 168);
    if (v23 < v22 || v22 >= v23 && *(a3 + 252) < *(v29 + 63))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v30, &v29);
      v24 = *(v30 + 42);
      v25 = *(a2 + 168);
      if (v25 < v24 || v24 >= v25 && *(a2 + 252) < *(v30 + 63))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v31, &v30);
        v26 = *(v31 + 42);
        v27 = *(a1 + 168);
        if (v27 < v26 || v26 >= v27 && *(a1 + 252) < *(v31 + 63))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v32, &v31);
        }
      }
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v51 = a2;
  v52 = a1;
  v4 = 0xF83E0F83E0F83E1 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(a1, a1 + 264, a2 - 264);
        break;
      case 4:
        *&v30 = a1;
        v54 = (a1 + 528);
        v55 = a1 + 264;
        v53 = (a2 - 264);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(a1, a1 + 264, a1 + 528);
        v22 = *(v2 - 96);
        v23 = *(a1 + 696);
        if (v23 >= v22 && (v22 < v23 || *(a1 + 780) >= *(v2 - 12)))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v54, &v53);
        v24 = *(v54 + 42);
        v25 = *(a1 + 432);
        if (v25 >= v24 && (v24 < v25 || *(a1 + 516) >= *(v54 + 63)))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(&v55, &v54);
        v27 = *(v55 + 168);
        v28 = *(a1 + 168);
        if (v28 >= v27 && (v27 < v28 || *(a1 + 252) >= *(v55 + 252)))
        {
          return 1;
        }

        v8 = &v30;
        v9 = &v55;
        goto LABEL_52;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(a1, a1 + 264, a1 + 528, a1 + 792, a2 - 264);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_13:
    v10 = a1 + 528;
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,quasar::result_handler::findPartialCommands(quasar::corrective_reranking::Parser const&,std::string const&,std::string const&,std::vector<std::vector<quasar::Token>> const&,std::vector<std::vector<quasar::Token>> const&,BOOL,quasar::result_handler::VoiceEditingResultHandlerConfig const&,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>> &,quasar::PartialHistory &)::$_0 &,quasar::result_handler::CommandInterpretation*,0>(a1, a1 + 264, a1 + 528);
    v11 = a1 + 792;
    v7 = 1;
    if (v11 != v2)
    {
      v12 = 0;
      while (1)
      {
        v13 = *(v11 + 168);
        v14 = *(v10 + 168);
        if (v14 < v13 || (v13 >= v14 ? (v15 = *(v10 + 252) < *(v11 + 252)) : (v15 = 0), v15))
        {
          v30 = *v11;
          v31 = *(v11 + 16);
          *v11 = 0;
          *(v11 + 8) = 0;
          v16 = *(v11 + 24);
          *(v11 + 16) = 0;
          *(v11 + 24) = 0;
          v32 = v16;
          v33 = *(v11 + 40);
          *(v11 + 32) = 0;
          *(v11 + 40) = 0;
          v35 = *(v11 + 64);
          v34 = *(v11 + 48);
          *(v11 + 48) = 0;
          *(v11 + 56) = 0;
          *(v11 + 64) = 0;
          v17 = *(v11 + 72);
          *&v36[13] = *(v11 + 85);
          *v36 = v17;
          LOBYTE(v37) = 0;
          v39 = 0;
          if (*(v11 + 120) == 1)
          {
            v37 = *(v11 + 96);
            v38 = *(v11 + 112);
            *(v11 + 104) = 0;
            *(v11 + 112) = 0;
            *(v11 + 96) = 0;
            v39 = 1;
          }

          LOBYTE(v40) = 0;
          v42 = 0;
          if (*(v11 + 152) == 1)
          {
            v40 = *(v11 + 128);
            v41 = *(v11 + 144);
            *(v11 + 136) = 0;
            *(v11 + 144) = 0;
            *(v11 + 128) = 0;
            v42 = 1;
          }

          *v43 = *(v11 + 160);
          *&v43[6] = *(v11 + 166);
          v44 = *(v11 + 176);
          v45 = *(v11 + 192);
          *(v11 + 176) = 0;
          *(v11 + 184) = 0;
          v46 = *(v11 + 200);
          v47 = *(v11 + 216);
          *(v11 + 192) = 0;
          *(v11 + 200) = 0;
          *(v11 + 208) = 0;
          *(v11 + 216) = 0;
          v48 = *(v11 + 224);
          v18 = *(v11 + 248);
          v49 = *(v11 + 240);
          *(v11 + 224) = 0;
          *(v11 + 232) = 0;
          *(v11 + 240) = 0;
          *&v50[5] = *(v11 + 253);
          *v50 = v18;
          quasar::result_handler::CommandInterpretation::operator=(v11, v10);
          if (v10 != v52)
          {
            while (1)
            {
              v19 = *(v10 - 96);
              if (v19 >= *&v43[8] && (*&v43[8] < v19 || *(v10 - 12) >= *&v50[4]))
              {
                break;
              }

              quasar::result_handler::CommandInterpretation::operator=(v10, (v10 - 264));
              v10 -= 264;
              v21 = v10;
              if (v10 == v52)
              {
                goto LABEL_35;
              }
            }
          }

          v21 = v10;
LABEL_35:
          quasar::result_handler::CommandInterpretation::operator=(v21, &v30);
          if (++v12 == 8)
          {
            v7 = v11 + 264 == v51;
            quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v30);
            return v7;
          }

          quasar::result_handler::CommandInterpretation::~CommandInterpretation(&v30);
          v2 = v51;
        }

        v10 = v11;
        v11 += 264;
        if (v11 == v2)
        {
          return 1;
        }
      }
    }

    return v7;
  }

  v51 = a2 - 264;
  v5 = *(a2 - 96);
  v6 = *(a1 + 168);
  if (v6 < v5 || (v7 = 1, v5 >= v6) && *(a1 + 252) < *(a2 - 12))
  {
    v8 = &v52;
    v9 = &v51;
LABEL_52:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::result_handler::CommandInterpretation *&,quasar::result_handler::CommandInterpretation *&>(v8, v9);
    return 1;
  }

  return v7;
}

uint64_t quasar::result_handler::CommandInterpretation::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  v7 = *(a2 + 72);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 72) = v7;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 96, a2 + 6);
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 128, a2 + 8);
  v8 = *(a2 + 20);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 160) = v8;
  std::vector<std::string>::__vdeallocate((a1 + 176));
  *(a1 + 176) = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 200));
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 224));
  *(a1 + 224) = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(a2 + 30) = 0;
  v9 = *(a2 + 31);
  *(a1 + 253) = *(a2 + 253);
  *(a1 + 248) = v9;
  return a1;
}

uint64_t *kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>>::InsertWithValueFunction<kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>>::Insert(std::string const&,std::vector<quasar::result_handler::CommandInterpretation> const&)::{lambda(std::vector<quasar::result_handler::CommandInterpretation>&)#1}>(unint64_t *a1, std::string::size_type a2, quasar::result_handler::CommandInterpretation **a3)
{
  v24 = &v24;
  v25 = &v24;
  v26 = 0;
  v23.__r_.__value_.__r.__words[0] = a2;
  v6 = std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::find<std::string const*>(a1 + 1, &v23);
  if (v6)
  {
    v7 = v6[3];
    if (&v24 != v7)
    {
      v8 = v7[1];
      if (v8 != &v24)
      {
        v9 = *v7;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = v24;
        v24[1] = v7;
        *v7 = v10;
        v7[1] = &v24;
        --a1[9];
        v24 = v7;
        ++v26;
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1 + 1, v6);
  }

  else
  {
    v11 = a1[9];
    if (v11 < *a1)
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v23, *a2, *(a2 + 8));
      }

      else
      {
        v23 = *a2;
      }

      operator new();
    }

    v12 = a1[7];
    if (&v24 != v12)
    {
      v13 = v12[1];
      if (v13 != &v24)
      {
        v14 = *v12;
        *(v14 + 8) = v13;
        *v13 = v14;
        v15 = v24;
        v24[1] = v12;
        *v12 = v15;
        v12[1] = &v24;
        a1[9] = v11 - 1;
        v24 = v12;
        ++v26;
      }
    }

    v23.__r_.__value_.__r.__words[0] = (v25 + 2);
    std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::__erase_unique<std::string const*>(a1 + 1, &v23);
    std::string::operator=((v25 + 2), a2);
  }

  v16 = v25;
  v17 = v25 + 5;
  if (v25 + 5 != a3)
  {
    std::vector<quasar::result_handler::CommandInterpretation>::__assign_with_size[abi:ne200100]<quasar::result_handler::CommandInterpretation*,quasar::result_handler::CommandInterpretation*>((v25 + 5), *a3, a3[1], 0xF83E0F83E0F83E1 * ((a3[1] - *a3) >> 3));
  }

  v23.__r_.__value_.__r.__words[0] = (v16 + 2);
  v23.__r_.__value_.__l.__size_ = v16;
  std::__hash_table<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,std::__unordered_map_hasher<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,false>,std::__unordered_map_equal<std::string const*,std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,kaldi::LRUCacheMap<std::string,quasar::SystemConfig::SystemConfigInfo,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::string const*,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>>::__emplace_unique_key_args<std::string const*,std::pair<std::string const* const,std::__list_iterator<std::pair<std::string,quasar::SystemConfig::SystemConfigInfo>,void *>>>(a1 + 1, &v23);
  v18 = a1[8];
  if (v18 != v16)
  {
    v19 = v16[1];
    if (v19 != v18)
    {
      v20 = *v16;
      *(v20 + 8) = v19;
      *v19 = v20;
      v21 = *v18;
      *(v21 + 8) = v16;
      *v16 = v21;
      *v18 = v16;
      v16[1] = v18;
      --v26;
      ++a1[9];
    }
  }

  std::__list_imp<std::pair<std::string,std::vector<quasar::result_handler::CommandInterpretation>>>::clear(&v24);
  return v17;
}

void quasar::result_handler::CommandData::~CommandData(void **this)
{
  v2 = this + 19;
  std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  v2 = this + 9;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 6;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::swap[abi:ne200100]<quasar::result_handler::CommandData>(uint64_t a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v13 = *(a1 + 72);
  v14 = *(a1 + 88);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *v15 = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  *(a1 + 112) = 0;
  v16 = v3;
  v17 = v4;
  v5 = *(a1 + 128);
  v19 = *(a1 + 144);
  *__p = v5;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v20 = *(a1 + 152);
  v21 = *(a1 + 168);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v6 = *(a1 + 176);
  v23 = *(a1 + 180);
  v22 = v6;
  quasar::result_handler::CommandData::operator=(a1, a2);
  quasar::result_handler::CommandData::operator=(a2, &v7);
  v24 = &v20;
  std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  v24 = &v13;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = &v11;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = &v9;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = &v7;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v24);
}

void std::vector<quasar::result_handler::CommandInterpretation>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xF83E0F83E0F83E1 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<quasar::result_handler::CommandInterpretation>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 264 * a2;
    while (v3 != v7)
    {
      quasar::result_handler::CommandInterpretation::~CommandInterpretation((v3 - 264));
    }

    a1[1] = v7;
  }
}

void quasar::pySlice<std::string>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, std::string *a4@<X8>)
{
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  if (!*(a1 + 23))
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = ((v6 & (a2 >> 31)) + a2) & ~(((v6 & (a2 >> 31)) + a2) >> 31);
  v8 = ((v6 & (a3 >> 31)) + a3) & ~(((v6 & (a3 >> 31)) + a3) >> 31);
  if (v8 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  if (v9 > v7)
  {
    std::string::reserve(a4, v9 - v7);
    do
    {
      v10 = std::string::at(a1, v7);
      std::string::push_back(a4, *v10);
      ++v7;
    }

    while (v9 != v7);
  }
}

void sub_1B577DA7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::result_handler::findSpelledU32RangesInSegmentation(quasar::result_handler::CommandData const&,quasar::result_handler::VoiceEditingResultHandlerConfig const&,BOOL &)::$_0::operator()(uint64_t a1)
{
  v14[17] = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v2 = (a1 + 16);
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    v3 = &v9 + *(v9 - 24);
    if ((v3[32] & 5) == 0)
    {
      (*(**(v3 + 5) + 32))(v14);
      if (v14[16] >= 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, ", ", 2);
      }
    }

    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "(", 1);
    v5 = MEMORY[0x1B8C84C00](v4, *(v2 + 4));
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", ", 2);
    v7 = MEMORY[0x1B8C84C00](v6, *(v2 + 5));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 1);
  }

  std::stringbuf::str();
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v13);
}

void sub_1B577DCFC(_Unwind_Exception *a1, uint64_t a2, ...)
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
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va1);
  _Unwind_Resume(a1);
}

void std::vector<quasar::corrective_reranking::ASRCandidate>::__assign_with_size[abi:ne200100]<quasar::corrective_reranking::ASRCandidate const*,quasar::corrective_reranking::ASRCandidate const*>(std::basic_string<char32_t> **a1, std::basic_string<char32_t> *__str, std::basic_string<char32_t> *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<std::pair<std::string,float>>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<quasar::TextTokenizer::Token>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 5)
  {
    if (__str != a3)
    {
      do
      {
        std::basic_string<char32_t>::operator=(v8, v6);
        v8[1].__r_.__value_.__s.__data_[0] = v6[1].__r_.__value_.__s.__data_[0];
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v14 = SHIBYTE(v12[-1].__r_.__value_.__r.__words[1]);
      v12 = (v12 - 32);
      if (v14 < 0)
      {
        operator delete(v12->__r_.__value_.__l.__data_);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v13 = (__str + v12 - v8);
    if (v12 != v8)
    {
      do
      {
        std::basic_string<char32_t>::operator=(v8, v6);
        v8[1].__r_.__value_.__s.__data_[0] = v6[1].__r_.__value_.__s.__data_[0];
        v6 = (v6 + 32);
        v8 = (v8 + 32);
      }

      while (v6 != v13);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::ASRCandidate>,quasar::corrective_reranking::ASRCandidate const*,quasar::corrective_reranking::ASRCandidate const*,quasar::corrective_reranking::ASRCandidate*>(a1, v13, a3, v12);
  }
}

uint64_t std::vector<quasar::result_handler::CommandInterpretation>::__emplace_back_slow_path<>(uint64_t *a1)
{
  v1 = 0xF83E0F83E0F83E1 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0xF83E0F83E0F83ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v4 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v4 = v2;
  }

  v16 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>>(a1, v4);
  }

  v5 = 264 * v1;
  v13 = 0;
  v14 = v5;
  *(&v15 + 1) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 256) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 164) = -1082130432;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 233) = 0u;
  *(v5 + 252) = 0;
  *(v5 + 260) = 0;
  v6 = *a1;
  v7 = a1[1];
  v8 = 264 * v1 + *a1 - v7;
  *&v15 = v5 + 264;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>,quasar::result_handler::CommandInterpretation*>(a1, v6, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::result_handler::CommandInterpretation>::~__split_buffer(&v13);
  return v12;
}

void sub_1B577E004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::result_handler::CommandInterpretation>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::result_handler::CommandInterpretation>::__emplace_back_slow_path<quasar::result_handler::CommandInterpretation>(uint64_t a1, __int128 *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>>(a1, v6);
  }

  v13 = 0;
  v14 = 264 * v2;
  std::allocator_traits<std::allocator<quasar::result_handler::CommandInterpretation>>::construct[abi:ne200100]<quasar::result_handler::CommandInterpretation,quasar::result_handler::CommandInterpretation,0>(a1, 264 * v2, a2);
  v15 = (264 * v2 + 264);
  v7 = *(a1 + 8);
  v8 = 264 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>,quasar::result_handler::CommandInterpretation*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::result_handler::CommandInterpretation>::~__split_buffer(&v13);
  return v12;
}

void sub_1B577E150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::result_handler::CommandInterpretation>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::result_handler::CommandData>::__emplace_back_slow_path<quasar::result_handler::CommandData>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v6 = 0x1642C8590B21642;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>>(a1, v6);
  }

  v13 = 0;
  v14 = 184 * v2;
  std::allocator_traits<std::allocator<quasar::result_handler::CommandData>>::construct[abi:ne200100]<quasar::result_handler::CommandData,quasar::result_handler::CommandData,0>(a1, 184 * v2, a2);
  v15 = 184 * v2 + 184;
  v7 = a1[1];
  v8 = 184 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::result_handler::CommandData>::~__split_buffer(&v13);
  return v12;
}

void sub_1B577E29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::result_handler::CommandData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<quasar::result_handler::CommandData>>::construct[abi:ne200100]<quasar::result_handler::CommandData,quasar::result_handler::CommandData,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = *a3;
  *(a2 + 16) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 40) = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 88) = *(a3 + 88);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  v3 = *(a3 + 96);
  *(a2 + 112) = *(a3 + 112);
  *(a2 + 96) = v3;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = 0;
  *(a2 + 120) = *(a3 + 120);
  v4 = *(a3 + 128);
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 128) = v4;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  result = *(a3 + 152);
  *(a2 + 152) = result;
  *(a2 + 168) = *(a3 + 168);
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  v6 = *(a3 + 176);
  *(a2 + 180) = *(a3 + 180);
  *(a2 + 176) = v6;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<quasar::result_handler::CommandData>>::construct[abi:ne200100]<quasar::result_handler::CommandData,quasar::result_handler::CommandData,0>(a1, a4, v7);
      v7 += 184;
      a4 = v12 + 184;
      v12 += 184;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::result_handler::CommandData>>::destroy[abi:ne200100]<quasar::result_handler::CommandData,0>(a1, v5);
      v5 += 184;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<quasar::result_handler::CommandData>>::destroy[abi:ne200100]<quasar::result_handler::CommandData,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 152);
  std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a2 + 151) < 0)
  {
    operator delete(*(a2 + 128));
  }

  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  v3 = (a2 + 72);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a2 + 48);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a2 + 24);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a2;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 184;
      std::allocator_traits<std::allocator<quasar::result_handler::CommandData>>::destroy[abi:ne200100]<quasar::result_handler::CommandData,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::result_handler::CommandData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::result_handler::CommandData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::result_handler::CommandData>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 184;
    std::allocator_traits<std::allocator<quasar::result_handler::CommandData>>::destroy[abi:ne200100]<quasar::result_handler::CommandData,0>(v5, v4 - 184);
  }
}

void quasar::corrective_reranking::Parser::RunArgs::~RunArgs(quasar::corrective_reranking::Parser::RunArgs *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = (this + 24);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

unint64_t quasar::result_handler::maybeCompleteCommandSegmentationScore(uint64_t a1)
{
  v1 = *(a1 + 152);
  v2 = 0.0;
  if (v1 == *(a1 + 160))
  {
    v4 = 0;
    return v4 | (LODWORD(v2) << 32);
  }

  if (*(v1 + 23) < 0)
  {
    v5 = *(v1 + 8);
    if (!v5)
    {
      goto LABEL_18;
    }

    if (v5 != 14)
    {
      goto LABEL_14;
    }

    v3 = *v1;
  }

  else
  {
    v3 = *(a1 + 152);
    if (*(v1 + 23) != 14)
    {
      if (*(v1 + 23))
      {
        goto LABEL_14;
      }

LABEL_18:
      v2 = *(v1 + 164);
      v4 = 1;
      return v4 | (LODWORD(v2) << 32);
    }
  }

  v6 = *v3;
  v7 = *(v3 + 6);
  if (v6 != 0x6769626D61736964 || v7 != 0x6E6F697461756769)
  {
LABEL_14:
    if (*(v1 + 160) == 1)
    {
      if (*(v1 + 80) == 1)
      {
        v2 = *(v1 + 72);
      }

      v4 = 3;
    }

    else
    {
      v2 = *(v1 + 164);
      v4 = 4;
    }

    return v4 | (LODWORD(v2) << 32);
  }

  v9 = *(a1 + 151);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 136);
  }

  v2 = v9;
  v4 = 2;
  return v4 | (LODWORD(v2) << 32);
}

uint64_t std::vector<quasar::result_handler::CommandInterpretation>::__append(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xF83E0F83E0F83E1 * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 264 * a2;
      do
      {
        *(v4 + 256) = 0;
        *(v4 + 160) = 0uLL;
        *(v4 + 176) = 0uLL;
        *(v4 + 128) = 0uLL;
        *(v4 + 144) = 0uLL;
        *(v4 + 96) = 0uLL;
        *(v4 + 112) = 0uLL;
        *(v4 + 64) = 0uLL;
        *(v4 + 80) = 0uLL;
        *(v4 + 32) = 0uLL;
        *(v4 + 48) = 0uLL;
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 164) = -1082130432;
        *(v4 + 176) = 0uLL;
        *(v4 + 192) = 0uLL;
        *(v4 + 192) = 0uLL;
        *(v4 + 208) = 0uLL;
        *(v4 + 208) = 0uLL;
        *(v4 + 224) = 0uLL;
        *(v4 + 224) = 0uLL;
        *(v4 + 240) = 0uLL;
        *(v4 + 233) = 0uLL;
        *(v4 + 252) = 0;
        *(v4 + 260) = 0;
        v4 += 264;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xF83E0F83E0F83E1 * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xF83E0F83E0F83ELL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xF83E0F83E0F83E1 * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x7C1F07C1F07C1FLL)
    {
      v9 = 0xF83E0F83E0F83ELL;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>>(result, v9);
    }

    v11 = 264 * v6;
    v17 = 0;
    v18 = 264 * v6;
    *(&v19 + 1) = 0;
    v12 = 264 * v6;
    do
    {
      *(v12 + 256) = 0;
      *(v12 + 160) = 0uLL;
      *(v12 + 176) = 0uLL;
      *(v12 + 128) = 0uLL;
      *(v12 + 144) = 0uLL;
      *(v12 + 96) = 0uLL;
      *(v12 + 112) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 80) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 164) = -1082130432;
      *(v12 + 176) = 0uLL;
      *(v12 + 192) = 0uLL;
      *(v12 + 192) = 0uLL;
      *(v12 + 208) = 0uLL;
      *(v12 + 208) = 0uLL;
      *(v12 + 224) = 0uLL;
      *(v12 + 224) = 0uLL;
      *(v12 + 240) = 0uLL;
      *(v12 + 233) = 0uLL;
      *(v12 + 252) = 0;
      *(v12 + 260) = 0;
      v12 += 264;
    }

    while (v12 != 264 * v6 + 264 * a2);
    *&v19 = v11 + 264 * a2;
    v13 = *(result + 8);
    v14 = v11 + *result - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::result_handler::CommandInterpretation>,quasar::result_handler::CommandInterpretation*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = *(v3 + 16);
    *(v3 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<quasar::result_handler::CommandInterpretation>::~__split_buffer(&v17);
  }

  return result;
}

void sub_1B577E9B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::result_handler::CommandInterpretation>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<unsigned long,unsigned long>>::emplace_back<int const&,int const&>(const void **a1, int *a2, int *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = v6 - *a1;
    v12 = v11 >> 4;
    v13 = (v11 >> 4) + 1;
    if (v13 >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, v13);
    }

    v15 = (16 * v12);
    v16 = *a3;
    *v15 = *a2;
    v15[1] = v16;
    v9 = 16 * v12 + 16;
    memcpy(0, v10, v11);
    v17 = *a1;
    *a1 = 0;
    a1[1] = v9;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v8 = *a3;
    *v6 = *a2;
    *(v6 + 1) = v8;
    v9 = (v6 + 16);
  }

  a1[1] = v9;
  return v9 - 16;
}

void *std::pair<std::vector<std::vector<quasar::Token>>,std::vector<int>>::pair[abi:ne200100](void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  return a1;
}

void sub_1B577EB34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<quasar::PartialHistory::AnnotatedToken>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void quasar::PartialHistory::annotatePartial(uint64_t a1@<X0>, __int128 **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v78 = *(a1 + 8);
  v92[0] = -1431655765 * ((v78 - *a1) >> 3);
  if (v92[0])
  {
    std::string::basic_string[abi:ne200100]<0>(&v91, "<eps>");
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v4 = *(v78 - 24);
    for (i = *(v78 - 16); v4 != i; v4 = (v4 + 232))
    {
      v6 = *(v4 + 23);
      v7 = *(v4 + 1);
      if (v6 >= 0)
      {
        v8 = *(v4 + 23);
      }

      else
      {
        v8 = *(v4 + 1);
      }

      size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v91.__r_.__value_.__l.__size_;
      }

      if (v8 == size && (v6 >= 0 ? (v10 = v4) : (v10 = *v4), (v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v11 = &v91) : (v11 = v91.__r_.__value_.__r.__words[0]), !memcmp(v10, v11, v8)))
      {
        std::string::basic_string[abi:ne200100]<0>(&v84, "");
      }

      else if (v6 < 0)
      {
        std::string::__init_copy_ctor_external(&v84, *v4, v7);
      }

      else
      {
        v12 = *v4;
        v84.__r_.__value_.__r.__words[2] = *(v4 + 2);
        *&v84.__r_.__value_.__l.__data_ = v12;
      }

      v13 = v89;
      if (v89 >= v90)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v89 - v88) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v90 - v88) >> 3) > v16)
        {
          v16 = 0x5555555555555556 * ((v90 - v88) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v90 - v88) >> 3) >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        v82.__end_cap_.__value_ = &v88;
        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v88, v17);
        }

        v18 = 8 * ((v89 - v88) >> 3);
        v19 = *&v84.__r_.__value_.__l.__data_;
        *(v18 + 16) = *(&v84.__r_.__value_.__l + 2);
        *v18 = v19;
        memset(&v84, 0, sizeof(v84));
        v20 = 24 * v15 + 24;
        v21 = (24 * v15 - (v89 - v88));
        memcpy((v18 - (v89 - v88)), v88, v89 - v88);
        v22 = v88;
        v23 = v90;
        v88 = v21;
        v89 = v20;
        v90 = 0;
        v82.__end_ = v22;
        v82.__end_cap_.__value_ = v23;
        v82.__first_ = v22;
        v82.__begin_ = v22;
        std::__split_buffer<std::string>::~__split_buffer(&v82);
        v89 = v20;
        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v14 = *&v84.__r_.__value_.__l.__data_;
        *(v89 + 2) = *(&v84.__r_.__value_.__l + 2);
        *v13 = v14;
        v89 = v13 + 24;
      }
    }

    v24 = *a2;
    v25 = a2[1];
    if (*a2 != v25)
    {
      do
      {
        v26 = *(v24 + 23);
        v27 = *(v24 + 1);
        if (v26 >= 0)
        {
          v28 = *(v24 + 23);
        }

        else
        {
          v28 = *(v24 + 1);
        }

        v29 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v91.__r_.__value_.__l.__size_;
        }

        if (v28 == v29 && (v26 >= 0 ? (v30 = v24) : (v30 = *v24), (v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v31 = &v91) : (v31 = v91.__r_.__value_.__r.__words[0]), !memcmp(v30, v31, v28)))
        {
          std::string::basic_string[abi:ne200100]<0>(&v84, "");
        }

        else if (v26 < 0)
        {
          std::string::__init_copy_ctor_external(&v84, *v24, v27);
        }

        else
        {
          v32 = *v24;
          v84.__r_.__value_.__r.__words[2] = *(v24 + 2);
          *&v84.__r_.__value_.__l.__data_ = v32;
        }

        v33 = v86;
        if (v86 >= v87)
        {
          v35 = 0xAAAAAAAAAAAAAAABLL * ((v86 - v85) >> 3);
          v36 = v35 + 1;
          if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v87 - v85) >> 3) > v36)
          {
            v36 = 0x5555555555555556 * ((v87 - v85) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v87 - v85) >> 3) >= 0x555555555555555)
          {
            v37 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v37 = v36;
          }

          v82.__end_cap_.__value_ = &v85;
          if (v37)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v85, v37);
          }

          v38 = 8 * ((v86 - v85) >> 3);
          v39 = *&v84.__r_.__value_.__l.__data_;
          *(v38 + 16) = *(&v84.__r_.__value_.__l + 2);
          *v38 = v39;
          memset(&v84, 0, sizeof(v84));
          v40 = 24 * v35 + 24;
          v41 = (24 * v35 - (v86 - v85));
          memcpy((v38 - (v86 - v85)), v85, v86 - v85);
          v42 = v85;
          v43 = v87;
          v85 = v41;
          v86 = v40;
          v87 = 0;
          v82.__end_ = v42;
          v82.__end_cap_.__value_ = v43;
          v82.__first_ = v42;
          v82.__begin_ = v42;
          std::__split_buffer<std::string>::~__split_buffer(&v82);
          v86 = v40;
          if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v84.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v34 = *&v84.__r_.__value_.__l.__data_;
          *(v86 + 2) = *(&v84.__r_.__value_.__l + 2);
          *v33 = v34;
          v86 = v33 + 24;
        }

        v24 += 14;
      }

      while (v24 != v25);
    }

    memset(&v84, 0, sizeof(v84));
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v83, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
    }

    else
    {
      v83 = v91;
    }

    kaldi::LevenshteinAlignmentWithPrefixOptimization<std::string>(&v88, &v85, &v83, &v84, 0);
    v49 = a2;
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    v80 = v84.__r_.__value_.__l.__size_;
    v50 = v84.__r_.__value_.__r.__words[0];
    if (v84.__r_.__value_.__r.__words[0] != v84.__r_.__value_.__l.__size_)
    {
      v51 = 0;
      do
      {
        v52 = *(v50 + 23);
        if (v52 >= 0)
        {
          v53 = *(v50 + 23);
        }

        else
        {
          v53 = *(v50 + 8);
        }

        v54 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
        if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v55 = v91.__r_.__value_.__l.__size_;
        }

        if (v53 == v55)
        {
          v56 = v52 >= 0 ? v50 : *v50;
          v57 = (v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v91 : v91.__r_.__value_.__r.__words[0];
          if (!memcmp(v56, v57, v53))
          {
            v69 = *(a3 + 8);
            if (0x6DB6DB6DB6DB6DB7 * ((v49[1] - *v49) >> 5) <= (0x34F72C234F72C235 * ((v69 - *a3) >> 3)))
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            v70 = &(*v49)[0x58469EE58469EE6 * ((v69 - *a3) >> 3)];
            v71 = *(a1 + 48);
            *(a1 + 48) = v71 + 1;
            LODWORD(v82.__first_) = v71;
            if (v69 >= *(a3 + 16))
            {
              v73 = std::vector<quasar::PartialHistory::AnnotatedToken>::__emplace_back_slow_path<quasar::Token const&,int &,int>(a3, v70, v92, &v82);
            }

            else
            {
              v72 = v92[0];
              quasar::Token::Token(v69, v70);
              *(v69 + 224) = v72;
              *(v69 + 228) = v71;
              v73 = v69 + 232;
            }

            *(a3 + 8) = v73;
            goto LABEL_127;
          }
        }

        v58 = *(v50 + 47);
        if (v58 >= 0)
        {
          v59 = *(v50 + 47);
        }

        else
        {
          v59 = *(v50 + 32);
        }

        if (v59 == v55)
        {
          v60 = v58 >= 0 ? (v50 + 24) : *(v50 + 24);
          v61 = v54 >= 0 ? &v91 : v91.__r_.__value_.__r.__words[0];
          if (!memcmp(v60, v61, v55))
          {
            ++v51;
            v49 = a2;
            goto LABEL_127;
          }
        }

        if (v53 == v59 && (v52 >= 0 ? (v62 = v50) : (v62 = *v50), v58 >= 0 ? (v63 = (v50 + 24)) : (v63 = *(v50 + 24)), !memcmp(v62, v63, v53)))
        {
          v74 = *(v78 - 24);
          if (0x34F72C234F72C235 * ((*(v78 - 16) - v74) >> 3) <= v51)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v64 = *(a3 + 8);
          v49 = a2;
          if (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) <= (0x34F72C234F72C235 * ((v64 - *a3) >> 3)))
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v75 = v74 + 232 * v51;
          v76 = &(*a2)[0x58469EE58469EE6 * ((v64 - *a3) >> 3)];
          if (v64 >= *(a3 + 16))
          {
            v68 = std::vector<quasar::PartialHistory::AnnotatedToken>::__emplace_back_slow_path<quasar::Token const&,int const&,int const&>(a3, v76, (v75 + 224), (v75 + 228));
            goto LABEL_116;
          }

          v77 = *(v75 + 224);
          quasar::Token::Token(*(a3 + 8), v76);
          *(v64 + 224) = v77;
        }

        else
        {
          v64 = *(a3 + 8);
          v49 = a2;
          if (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) <= (0x34F72C234F72C235 * ((v64 - *a3) >> 3)))
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v65 = &(*a2)[0x58469EE58469EE6 * ((v64 - *a3) >> 3)];
          v66 = *(a1 + 48);
          *(a1 + 48) = v66 + 1;
          LODWORD(v82.__first_) = v66;
          if (v64 >= *(a3 + 16))
          {
            v68 = std::vector<quasar::PartialHistory::AnnotatedToken>::__emplace_back_slow_path<quasar::Token const&,int &,int>(a3, v65, v92, &v82);
            goto LABEL_116;
          }

          v67 = v92[0];
          quasar::Token::Token(v64, v65);
          *(v64 + 224) = v67;
          *(v64 + 228) = v66;
        }

        v68 = v64 + 232;
LABEL_116:
        *(a3 + 8) = v68;
        ++v51;
LABEL_127:
        v50 += 48;
      }

      while (v50 != v80);
    }

    if (0x34F72C234F72C235 * ((*(a3 + 8) - *a3) >> 3) != 0x6DB6DB6DB6DB6DB7 * ((v49[1] - *v49) >> 5))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v82);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, "annotatedPartial.size() == partial.size()", 41);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v82);
    }

    v82.__first_ = &v84;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v82);
    v82.__first_ = &v85;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v82);
    v82.__first_ = &v88;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v82);
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v44 = *a2;
    v45 = a2[1];
    if (*a2 != v45)
    {
      v46 = 0;
      do
      {
        v47 = *(a1 + 48);
        *(a1 + 48) = v47 + 1;
        LODWORD(v82.__first_) = v47;
        if (v46 >= *(a3 + 16))
        {
          v46 = std::vector<quasar::PartialHistory::AnnotatedToken>::__emplace_back_slow_path<quasar::Token const&,int &,int>(a3, v44, v92, &v82);
        }

        else
        {
          v48 = v92[0];
          quasar::Token::Token(v46, v44);
          *(v46 + 224) = v48;
          *(v46 + 228) = v47;
          v46 += 232;
        }

        *(a3 + 8) = v46;
        v44 = (v44 + 224);
      }

      while (v44 != v45);
    }
  }
}

void quasar::PartialHistory::findLastMatchingPartial(quasar::PartialHistory *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3);
  if (v4 >= 1)
  {
    v7 = v4 & 0x7FFFFFFF;
    while (2)
    {
      v8 = v7--;
      v9 = (*this + 24 * v7);
      v10 = *(*(this + 3) + 4 * v7);
      v11 = v9[1];
      while (v11 != *v9)
      {
        v11 = (v11 - 232);
        if ((quasar::Token::isAutoPunctuation(v11) & 1) == 0)
        {
          if (*(v11 + 57) == a2)
          {
            v12 = 0uLL;
            v13 = 0;
            std::vector<quasar::PartialHistory::AnnotatedToken>::__init_with_size[abi:ne200100]<quasar::PartialHistory::AnnotatedToken*,quasar::PartialHistory::AnnotatedToken*>(&v12, *v9, v9[1], 0x34F72C234F72C235 * ((v9[1] - *v9) >> 3));
            v14 = v10;
            *a3 = v12;
            *(a3 + 16) = v13;
            v12 = 0uLL;
            v13 = 0;
            *(a3 + 24) = v10;
            *(a3 + 32) = 1;
            v15 = &v12;
            std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](&v15);
            return;
          }

          break;
        }
      }

      if (v8 > 1)
      {
        continue;
      }

      break;
    }
  }

  *a3 = 0;
  *(a3 + 32) = 0;
}

uint64_t std::vector<quasar::Token>::emplace_back<quasar::Token&>(uint64_t a1, const quasar::Token *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v4 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token&>(a1, a2);
  }

  else
  {
    quasar::Token::Token(*(a1 + 8), a2);
    v4 = v3 + 224;
    *(a1 + 8) = v3 + 224;
  }

  *(a1 + 8) = v4;
  return v4 - 224;
}

uint64_t kaldi::LevenshteinAlignmentWithPrefixOptimization<std::string>(void *a1, void *a2, uint64_t a3, std::vector<std::pair<std::string, std::string>> *a4, int a5)
{
  v5 = a4;
  v43[2] = *MEMORY[0x1E69E9840];
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) >= 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3))
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  }

  else
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (v9 < 1)
  {
    v21 = 0;
  }

  else
  {
    v28 = a5;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= v12 || 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v12)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = *a1 + v10;
      v14 = *a2 + v10;
      v15 = *(v13 + 23);
      if (v15 >= 0)
      {
        v16 = *(v13 + 23);
      }

      else
      {
        v16 = *(v13 + 8);
      }

      v17 = *(v14 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v14 + 8);
      }

      if (v16 != v17)
      {
        break;
      }

      v19 = v15 >= 0 ? (*a1 + v10) : *v13;
      v20 = v18 >= 0 ? (*a2 + v10) : *v14;
      if (memcmp(v19, v20, v16))
      {
        break;
      }

      if (v11 >= v40)
      {
        v11 = std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<std::string const&,std::string const&>(&v38, v13, v13);
      }

      else
      {
        std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(v11, v13, v13);
        v11 += 2;
      }

      v39 = v11;
      ++v12;
      v10 += 24;
      if ((v9 & 0x7FFFFFFF) == v12)
      {
        LODWORD(v12) = v9;
        break;
      }
    }

    v21 = 24 * v12;
    v5 = a4;
    a5 = v28;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (a5)
  {
    __src = 0x200000001;
  }

  else
  {
    __src = 0x100000002;
  }

  LODWORD(v43[0]) = 0;
  std::vector<kaldi::LevenshteinOp::Value>::__assign_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value const*,kaldi::LevenshteinOp::Value const*>(&v35, &__src, v43 + 4, 3uLL);
  v22 = a1[1];
  v23 = v21 + *a1;
  v43[0] = 0;
  v43[1] = 0;
  __src = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(&__src, v23, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3));
  v24 = a2[1];
  v25 = v21 + *a2;
  memset(v34, 0, sizeof(v34));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(v34, v25, v24, 0xAAAAAAAAAAAAAAABLL * ((v24 - v25) >> 3));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *a3, *(a3 + 8));
  }

  else
  {
    v33 = *a3;
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<kaldi::LevenshteinOp::Value>::__init_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value*,kaldi::LevenshteinOp::Value*>(&__p, v35, v36, (v36 - v35) >> 2);
  v26 = kaldi::LevenshteinAlignment<std::string>(&__src, v34, &v33, v5, &__p);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v41 = v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
  v34[0] = &__src;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v34);
  std::vector<std::pair<std::string,std::string>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string>*>,std::__wrap_iter<std::pair<std::string,std::string>*>>(v5, v5->__begin_, v38, v39, 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 4));
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  v35 = &v38;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v35);
  return v26;
}

void sub_1B577FA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char *__p, char *a25, uint64_t a26, char a27, uint64_t a28)
{
  *(v28 - 128) = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v28 - 128));
  a21 = v28 - 120;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  __p = &a27;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::PartialHistory::AnnotatedToken>::__emplace_back_slow_path<quasar::Token const&,int &,int>(uint64_t a1, const quasar::Token *a2, int *a3, int *a4)
{
  v4 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x11A7B9611A7B961)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v8 = 0x11A7B9611A7B961;
  }

  else
  {
    v8 = v5;
  }

  v21 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PartialHistory::AnnotatedToken>>(a1, v8);
  }

  v18 = 0;
  v19 = 232 * v4;
  v20 = (232 * v4);
  v9 = *a3;
  v10 = *a4;
  v11 = quasar::Token::Token((232 * v4), a2);
  LODWORD(v11[9].__r_.__value_.__r.__words[1]) = v9;
  HIDWORD(v11[9].__r_.__value_.__r.__words[1]) = v10;
  *&v20 = v20 + 232;
  v12 = *(a1 + 8);
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PartialHistory::AnnotatedToken>,quasar::PartialHistory::AnnotatedToken*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<quasar::PartialHistory::AnnotatedToken>::~__split_buffer(&v18);
  return v17;
}

void sub_1B577FC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PartialHistory::AnnotatedToken>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PartialHistory::AnnotatedToken>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PartialHistory::AnnotatedToken>,quasar::PartialHistory::AnnotatedToken*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = v6[2];
      *a4 = v7;
      v6[1] = 0;
      v6[2] = 0;
      *v6 = 0;
      v8 = *(v6 + 3);
      *(a4 + 39) = *(v6 + 39);
      *(a4 + 24) = v8;
      v9 = *(v6 + 3);
      *(a4 + 64) = v6[8];
      *(a4 + 48) = v9;
      v6[7] = 0;
      v6[8] = 0;
      v6[6] = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 88) = v6[11];
      v6[9] = 0;
      v6[10] = 0;
      v6[11] = 0;
      v10 = *(v6 + 6);
      *(a4 + 112) = v6[14];
      *(a4 + 96) = v10;
      v6[13] = 0;
      v6[14] = 0;
      v6[12] = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 15);
      *(a4 + 136) = v6[17];
      v6[15] = 0;
      v6[16] = 0;
      v6[17] = 0;
      v11 = *(v6 + 9);
      *(a4 + 160) = v6[20];
      *(a4 + 144) = v11;
      v6[19] = 0;
      v6[20] = 0;
      v6[18] = 0;
      v12 = *(v6 + 42);
      *(a4 + 172) = *(v6 + 86);
      *(a4 + 168) = v12;
      v13 = *(v6 + 11);
      *(a4 + 192) = v6[24];
      *(a4 + 176) = v13;
      v6[23] = 0;
      v6[24] = 0;
      v6[22] = 0;
      v14 = *(v6 + 25);
      *(a4 + 216) = *(v6 + 54);
      *(a4 + 200) = v14;
      *(a4 + 224) = v6[28];
      v6 += 29;
      a4 += 232;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      quasar::Token::~Token(v5);
      v5 = (v15 + 232);
    }
  }
}

uint64_t std::__split_buffer<quasar::PartialHistory::AnnotatedToken>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 232;
    quasar::Token::~Token((i - 232));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t kaldi::LevenshteinAlignment<std::string>(uint64_t *a1, const void ***a2, const std::string *a3, void *a4, unsigned int **a5)
{
  v122 = *MEMORY[0x1E69E9840];
  v8 = *a5;
  v9 = a5[1];
  if (*a5 == v9)
  {
    __src.__r_.__value_.__r.__words[0] = 0x100000000;
    LODWORD(__src.__r_.__value_.__r.__words[1]) = 2;
    std::vector<kaldi::LevenshteinOp::Value>::__assign_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value const*,kaldi::LevenshteinOp::Value const*>(a5, &__src, &__src.__r_.__value_.__s.__data_[12], 3uLL);
    v8 = *a5;
    v9 = a5[1];
  }

  if (v8 == v9)
  {
    goto LABEL_115;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    v13 = *v8;
    if (*v8 == 2)
    {
      ++v12;
    }

    else if (v13 == 1)
    {
      ++v11;
    }

    else
    {
      if (v13)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&__src, "Unexpected op in backtrace_precedence");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
      }

      ++v10;
    }

    ++v8;
  }

  while (v8 != v9);
  if (v10 != 1 || v11 != 1 || v12 != 1)
  {
LABEL_115:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__src, "numSubOrOk == 1 && numDel == 1 && numIns == 1");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
  }

  v14 = *a4;
  for (i = a4[1]; i != v14; std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](a4, i))
  {
    i -= 48;
  }

  a4[1] = v14;
  v17 = *a1;
  v16 = a1[1];
  v18 = v16 - *a1;
  v20 = *a2;
  v19 = a2[1];
  v105 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3);
  std::vector<std::vector<int>>::vector[abi:ne200100](v118, v105 + 1);
  v103 = a5;
  v21 = a3;
  v22 = 0;
  v23 = 0;
  v112 = v19;
  v113 = v20;
  v104 = 0xAAAAAAAAAAAAAAABLL * (v19 - v20);
  v24 = v104 + 1;
  do
  {
    std::vector<int>::resize((v118[0] + v22), v24);
    ++v23;
    v22 += 24;
  }

  while (v23 <= 0xAAAAAAAAAAAAAAABLL * (v18 >> 3));
  v25 = 0;
  v111 = v118[0];
  v26 = *v118[0];
  if (v24 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v104 + 1;
  }

  v28 = (v27 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v29 = vdupq_n_s64(v27 - 1);
  v30 = xmmword_1B5AE0050;
  v31 = xmmword_1B5AE0060;
  v32 = vdupq_n_s64(4uLL);
  v33 = v26 + 2;
  do
  {
    v34 = vmovn_s64(vcgeq_u64(v29, v31));
    if (vuzp1_s16(v34, *v29.i8).u8[0])
    {
      *(v33 - 2) = v25;
    }

    if (vuzp1_s16(v34, *&v29).i8[2])
    {
      *(v33 - 1) = v25 + 1;
    }

    if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, *&v30))).i32[1])
    {
      *v33 = v25 + 2;
      v33[1] = v25 + 3;
    }

    v25 += 4;
    v30 = vaddq_s64(v30, v32);
    v31 = vaddq_s64(v31, v32);
    v33 += 4;
  }

  while (v28 != v25);
  v99 = v18;
  v100 = a4;
  v101 = v17;
  v102 = v16;
  if (v16 != v17)
  {
    v107 = *a2;
    v108 = *a1;
    v35 = 2;
    if (v24 <= 2)
    {
      v36 = 2;
    }

    else
    {
      v36 = v104 + 1;
    }

    if (v105 + 1 > 2)
    {
      v35 = v105 + 1;
    }

    v110 = v35;
    v115 = *v26;
    v106 = v36 - 1;
    v37 = 1;
    do
    {
      v38 = *(v111 + 24 * v37);
      *v38 = ++v115;
      if (v112 != v113)
      {
        v39 = v107;
        v40 = v108 + 24 * v37;
        v41 = v38 + 1;
        v42 = v26 + 1;
        v43 = v106;
        v44 = v115;
        do
        {
          v45 = *(v42 - 1);
          v46 = *(v40 - 1);
          if (v46 >= 0)
          {
            v47 = *(v40 - 1);
          }

          else
          {
            v47 = *(v40 - 16);
          }

          v48 = *(v39 + 23);
          v49 = v48;
          if (v48 < 0)
          {
            v48 = v39[1];
          }

          if (v47 == v48)
          {
            if (v46 >= 0)
            {
              v50 = (v40 - 24);
            }

            else
            {
              v50 = *(v40 - 24);
            }

            if (v49 >= 0)
            {
              v51 = v39;
            }

            else
            {
              v51 = *v39;
            }

            v52 = memcmp(v50, v51, v47) != 0;
          }

          else
          {
            v52 = 1;
          }

          v53 = v52 + v45;
          v55 = *v42++;
          v54 = v55;
          if (v44 < v55)
          {
            v54 = v44;
          }

          if (v54 + 1 < v53)
          {
            v44 = v54 + 1;
          }

          else
          {
            v44 = v53;
          }

          *v41++ = v44;
          v39 += 3;
          --v43;
        }

        while (v43);
      }

      ++v37;
      v26 = v38;
    }

    while (v37 != v110);
  }

  if (v102 != v101)
  {
    v57 = v103;
    v56 = v104;
    v59 = v21;
    v58 = v100;
    v60 = v105;
    if (!v105)
    {
      goto LABEL_78;
    }

    goto LABEL_64;
  }

  v57 = v103;
  v56 = v104;
  v59 = v21;
  v58 = v100;
  v60 = v105;
  if (v112 != v113)
  {
    do
    {
      if (!v60)
      {
LABEL_78:
        v62 = 0;
        v76 = v56 - 1;
        goto LABEL_95;
      }

LABEL_64:
      if (!v56)
      {
        v76 = 0;
        v62 = v60 - 1;
        memset(&v117, 0, sizeof(v117));
        memset(&v116, 0, sizeof(v116));
LABEL_96:
        v83 = (*a1 + 24 * v62);
        v60 = v62;
        goto LABEL_97;
      }

      v61 = v60;
      v62 = v60 - 1;
      v63 = v118[0];
      v64 = 3 * (v60 - 1);
      v65 = *(v118[0] + 24 * (v60 - 1));
      v66 = *(v65 + 4 * (v56 - 1));
      v67 = *a1 + 8 * v64;
      v68 = &(*a2)[3 * v56 - 3];
      v69 = *(v67 + 23);
      if (v69 >= 0)
      {
        v70 = *(v67 + 23);
      }

      else
      {
        v70 = *(v67 + 8);
      }

      v71 = *(v68 + 23);
      v72 = v71;
      if ((v71 & 0x80u) != 0)
      {
        v71 = *(v68 + 8);
      }

      if (v70 == v71)
      {
        if (v69 >= 0)
        {
          v73 = v67;
        }

        else
        {
          v73 = *v67;
        }

        if (v72 >= 0)
        {
          v74 = &(*a2)[3 * v56 - 3];
        }

        else
        {
          v74 = *v68;
        }

        v75 = memcmp(v73, v74, v70) != 0;
      }

      else
      {
        v75 = 1;
      }

      v77 = v75 + v66;
      LODWORD(__src.__r_.__value_.__l.__data_) = v77;
      v78 = *(v65 + 4 * v56);
      HIDWORD(__src.__r_.__value_.__r.__words[0]) = v78 + 1;
      v60 = v61;
      v79 = *(*(v63 + 24 * v61) + 4 * (v56 - 1));
      LODWORD(__src.__r_.__value_.__r.__words[1]) = v79 + 1;
      if (v79 >= v78)
      {
        v80 = v78 + 1;
      }

      else
      {
        v80 = v79 + 1;
      }

      if (v80 < v77)
      {
        v77 = v80;
      }

      for (j = *v57; ; ++j)
      {
        if (j == v57[1])
        {
          v62 = 0;
          v76 = 0;
          goto LABEL_95;
        }

        v82 = *j;
        if (*(&__src.__r_.__value_.__l.__data_ + v82) == v77)
        {
          break;
        }
      }

      if (v82)
      {
        v76 = v56;
        if (v82 == 1)
        {
          goto LABEL_95;
        }

        v62 = v60;
      }

      v76 = v56 - 1;
LABEL_95:
      memset(&v117, 0, sizeof(v117));
      memset(&v116, 0, sizeof(v116));
      v83 = v59;
      if (v62 != v60)
      {
        goto LABEL_96;
      }

LABEL_97:
      std::string::operator=(&v117, v83);
      if (v76 == v56)
      {
        v84 = v59;
      }

      else
      {
        v84 = &(*a2)[3 * v76];
      }

      std::string::operator=(&v116, v84);
      std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(&__src, &v117, &v116);
      std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](v58, &__src);
      if (v121 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__src.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v116.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v117.__r_.__value_.__l.__data_);
      }

      v56 = v76;
    }

    while (v60 | v76);
  }

  v85 = v58[1] - *v58;
  v86 = 0xAAAAAAAAAAAAAAABLL * (v85 >> 4);
  if (v86 >= 2)
  {
    v87 = 0;
    v88 = v86 >> 1;
    do
    {
      v89 = (*v58 + v87);
      v90 = *v58 + v85;
      v91 = *(v89 + 2);
      v92 = *v89;
      v93 = *(v90 - 32);
      *v89 = *(v90 - 48);
      *(v89 + 2) = v93;
      *(v90 - 48) = v92;
      *(v90 - 32) = v91;
      v94 = *(v89 + 5);
      v95 = *(v89 + 24);
      v96 = *(v90 - 8);
      *(v89 + 24) = *(v90 - 24);
      *(v89 + 5) = v96;
      *(v90 - 24) = v95;
      *(v90 - 8) = v94;
      v85 -= 48;
      v87 += 48;
      --v88;
    }

    while (v88);
  }

  v97 = *(*(v118[0] + v99) + 4 * v104);
  __src.__r_.__value_.__r.__words[0] = v118;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__src);
  return v97;
}

void sub_1B57805D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<std::string,std::string>>::__emplace_back_slow_path<std::string const&,std::string const&>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v4;
  }

  v13.__end_cap_.__value_ = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v7);
  }

  v13.__first_ = 0;
  v13.__begin_ = (48 * v3);
  v13.__end_ = (48 * v3);
  v13.__end_cap_.__value_ = 0;
  std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>((48 * v3), a2, a3);
  v8 = *(a1 + 8) - *a1;
  v9 = (48 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 48 * v3 + 48;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v13);
  return 48 * v3 + 48;
}

std::pair<std::string, std::string> *std::vector<std::pair<std::string,std::string>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string>*>,std::__wrap_iter<std::pair<std::string,std::string>*>>(std::vector<std::pair<std::string, std::string>> *a1, std::vector<std::pair<std::string, std::string>>::pointer __from_s, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = __from_s;
  if (a5 >= 1)
  {
    v7 = a3;
    end = a1->__end_;
    value = a1->__end_cap_.__value_;
    if ((0xAAAAAAAAAAAAAAABLL * ((value - end) >> 4)) >= a5)
    {
      v16 = end - __from_s;
      if ((0xAAAAAAAAAAAAAAABLL * ((end - __from_s) >> 4)) >= a5)
      {
        v18 = 3 * a5;
        std::vector<std::pair<std::string,std::string>>::__move_range(a1, __from_s, a1->__end_, &__from_s[a5]);
        v17 = &v7[(16 * v18) / 0x18];
      }

      else
      {
        a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(a1, (a3 + v16), a4, &a1->__end_->first);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<std::pair<std::string,std::string>>::__move_range(a1, v5, end, &v5[a5]);
        v17 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,std::string> *,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(&v30, v7, v17, &v5->first);
      return v5;
    }

    begin = a1->__begin_;
    v12 = a5 - 0x5555555555555555 * ((end - a1->__begin_) >> 4);
    if (v12 > 0x555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = __from_s - begin;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v15 = 0x555555555555555;
    }

    else
    {
      v15 = v12;
    }

    v30.__end_cap_.__value_ = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a1, v15);
    }

    v19 = (16 * (v13 >> 4));
    v30.__first_ = 0;
    v30.__begin_ = v19;
    v30.__end_ = v19;
    v30.__end_cap_.__value_ = 0;
    v20 = &v19[a5];
    v21 = 48 * a5;
    do
    {
      std::pair<std::string,std::string>::pair[abi:ne200100](v19++, v7);
      v7 += 2;
      v21 -= 48;
    }

    while (v21);
    v22 = v30.__begin_;
    memcpy(v20, v5, a1->__end_ - v5);
    v23 = a1->__begin_;
    v24 = (v20 + a1->__end_ - v5);
    a1->__end_ = v5;
    v25 = v5 - v23;
    v26 = (v22 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = a1->__begin_;
    a1->__begin_ = v26;
    a1->__end_ = v24;
    v28 = a1->__end_cap_.__value_;
    a1->__end_cap_.__value_ = v30.__end_cap_.__value_;
    v30.__end_ = v27;
    v30.__end_cap_.__value_ = v28;
    v30.__first_ = v27;
    v30.__begin_ = v27;
    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v30);
    return v22;
  }

  return v5;
}

void std::vector<std::pair<std::string,std::string>>::__move_range(std::vector<std::pair<std::string, std::string>> *this, std::vector<std::pair<std::string, std::string>>::pointer __from_s, std::vector<std::pair<std::string, std::string>>::pointer __from_e, std::vector<std::pair<std::string, std::string>>::pointer __to)
{
  end = this->__end_;
  v5 = __from_s + end - __to;
  v6 = end;
  while (v5 < __from_e)
  {
    v7 = *v5;
    v6->first.__r_.__value_.__r.__words[2] = *(v5 + 2);
    *&v6->first.__r_.__value_.__l.__data_ = v7;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *v5 = 0;
    v8 = *(v5 + 24);
    v6->second.__r_.__value_.__r.__words[2] = *(v5 + 5);
    *&v6->second.__r_.__value_.__l.__data_ = v8;
    *(v5 + 4) = 0;
    *(v5 + 5) = 0;
    *(v5 + 3) = 0;
    v5 += 48;
    ++v6;
  }

  this->__end_ = v6;
  if (end != __to)
  {
    v9 = &end[-1];
    v10 = (__to - end);
    v11 = (__from_s + &end[-1] - __to);
    do
    {
      std::pair<std::string,std::string>::operator=[abi:ne200100](v9, v11);
      v9 -= 48;
      v11 -= 3;
      v10 += 48;
    }

    while (v10);
  }
}

uint64_t std::vector<quasar::PartialHistory::AnnotatedToken>::__emplace_back_slow_path<quasar::Token const&,int const&,int const&>(uint64_t a1, const quasar::Token *a2, int *a3, int *a4)
{
  v4 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x11A7B9611A7B961)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v8 = 0x11A7B9611A7B961;
  }

  else
  {
    v8 = v5;
  }

  v21 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PartialHistory::AnnotatedToken>>(a1, v8);
  }

  v18 = 0;
  v19 = 232 * v4;
  v20 = (232 * v4);
  v9 = *a3;
  v10 = *a4;
  v11 = quasar::Token::Token((232 * v4), a2);
  LODWORD(v11[9].__r_.__value_.__r.__words[1]) = v9;
  HIDWORD(v11[9].__r_.__value_.__r.__words[1]) = v10;
  *&v20 = v20 + 232;
  v12 = *(a1 + 8);
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PartialHistory::AnnotatedToken>,quasar::PartialHistory::AnnotatedToken*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<quasar::PartialHistory::AnnotatedToken>::~__split_buffer(&v18);
  return v17;
}

void sub_1B5780B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PartialHistory::AnnotatedToken>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::PartialHistory::AnnotatedToken>::__init_with_size[abi:ne200100]<quasar::PartialHistory::AnnotatedToken*,quasar::PartialHistory::AnnotatedToken*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::PartialHistory::AnnotatedToken>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5780BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::PartialHistory::AnnotatedToken>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PartialHistory::AnnotatedToken>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::PartialHistory::AnnotatedToken>,quasar::PartialHistory::AnnotatedToken*,quasar::PartialHistory::AnnotatedToken*,quasar::PartialHistory::AnnotatedToken*>(int a1, std::string::size_type *a2, quasar::Token *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      quasar::Token::Token(this, v6);
      this[9].__r_.__value_.__l.__size_ = v6[28];
      v6 += 29;
      this = (this + 232);
      v7 -= 232;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B5780C9C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 232);
    do
    {
      quasar::Token::~Token(v4);
      v4 = (v5 - 232);
      v2 += 232;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void **std::__split_buffer<std::vector<quasar::PartialHistory::AnnotatedToken>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<quasar::PartialHistory::AnnotatedToken>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<quasar::PartialHistory::AnnotatedToken>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::PartialHistory::AnnotatedToken>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void **std::vector<quasar::Token>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::Token const*>,std::__wrap_iter<quasar::Token const*>>(void *a1, uint64_t a2, const quasar::Token *a3, quasar::Token *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 5) >= a5)
    {
      v16 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 5) >= a5)
      {
        v19 = 224 * a5;
        std::vector<quasar::Token>::__move_range(a1, a2, a1[1], a2 + 224 * a5);
        v20 = (v7 + v19);
        v21 = v5;
        do
        {
          quasar::Token::operator=(v21, v7);
          v7 = (v7 + 224);
          v21 += 224;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token const*,quasar::Token const*,quasar::Token*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<quasar::Token>::__move_range(a1, v5, v10, &v5[28 * a5]);
          v18 = v5;
          do
          {
            quasar::Token::operator=(v18, v7);
            v7 = (v7 + 224);
            v18 += 224;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 5);
      if (v12 > 0x124924924924924)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 5);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x92492492492492)
      {
        v15 = 0x124924924924924;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v15);
      }

      v22 = (32 * (v13 >> 5));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 224 * a5;
      v24 = (v22 + 224 * a5);
      do
      {
        quasar::Token::Token(v22, v7);
        v22 = (v22 + 224);
        v7 = (v7 + 224);
        v23 -= 224;
      }

      while (v23);
      v27 = v24;
      v5 = std::vector<quasar::Token>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<quasar::Token>::~__split_buffer(v26);
    }
  }

  return v5;
}

uint64_t std::vector<std::vector<quasar::Token>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::Token>&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v3, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::vector<quasar::Token>&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(24 * v2, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B5781120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,int>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::unordered_map<std::string const*,std::__list_iterator<std::pair<std::string,std::vector<quasar::result_handler::CommandInterpretation>>,void *>,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,std::allocator<std::pair<std::string const* const,std::__list_iterator<std::pair<std::string,std::vector<quasar::result_handler::CommandInterpretation>>,void *>>>>::unordered_map(uint64_t a1, size_t a2, char *a3, char *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = v5;
  *(a1 + 36) = 1065353216;
  *(a1 + 40) = v6;
  std::__hash_table<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,false>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,kaldi::LRUCacheMap<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,false>,std::allocator<std::__hash_value_type<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::quasar::RnnlmEvaluator::HistoryCacheEntry>,void *>>>>::__rehash<true>(a1, a2);
  return a1;
}

void std::vector<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, std::locale *a2)
{
  for (i = *(a1 + 8); i != a2; std::locale::~locale(i))
  {
    locale = i[-3].__locale_;
    if (locale)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](locale);
    }

    i -= 9;
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>::__emplace_back_slow_path<std::basic_regex<char,std::regex_traits<char>>,int const&>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v8 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>>(a1, v8);
  }

  v9 = 72 * v3;
  v16 = 0;
  v17 = v9;
  *(&v18 + 1) = 0;
  std::locale::locale(v9, a2);
  *(v9 + 8) = *(a2 + 8);
  *(v9 + 24) = *(a2 + 24);
  *(v9 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v9 + 56) = *(a2 + 56);
  *(v9 + 64) = *a3;
  *&v18 = v9 + 72;
  v10 = *(a1 + 8);
  v11 = (v9 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>,std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>::~__split_buffer(&v16);
  return v15;
}

void sub_1B5781418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>,std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*>(uint64_t a1, std::locale *this, std::locale *a3, std::locale *a4)
{
  v6 = a1;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (this != a3)
  {
    v7 = a4;
    v8 = this;
    do
    {
      std::locale::locale(v7, v8);
      *&v7[1].__locale_ = *&v8[1].__locale_;
      *&v7[3].__locale_ = *&v8[3].__locale_;
      *&v7[5].__locale_ = *&v8[5].__locale_;
      v8[5].__locale_ = 0;
      v8[6].__locale_ = 0;
      v7[7].__locale_ = v8[7].__locale_;
      LODWORD(v7[8].__locale_) = v8[8].__locale_;
      v8 += 9;
      v7 = v13 + 9;
      v13 += 9;
    }

    while (v8 != a3);
  }

  v11 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>,std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*,std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*>(v6, this, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>,std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>,std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*,std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*>(int a1, std::locale *this, std::locale *a3)
{
  if (this != a3)
  {
    v4 = this;
    do
    {
      locale = v4[6].__locale_;
      if (locale)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](locale);
      }

      std::locale::~locale(v4);
      v4 += 9;
    }

    while (v4 != a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>,std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>,std::reverse_iterator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*>,std::reverse_iterator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>,std::reverse_iterator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*>,std::reverse_iterator<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>*>>(uint64_t a1, uint64_t a2, std::locale *a3, uint64_t a4, std::locale *a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      locale = v6[-3].__locale_;
      if (locale)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](locale);
      }

      v6 -= 9;
      std::locale::~locale(v6);
    }

    while (v6 != a5);
  }
}

uint64_t std::__split_buffer<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 72);
    *(a1 + 16) = i - 72;
    v5 = *(i - 24);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::locale::~locale(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<quasar::result_handler::VoiceEditingResultHandler::handleRecogProgress(int)::$_0,std::allocator<quasar::result_handler::VoiceEditingResultHandler::handleRecogProgress(int)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2F280;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::result_handler::VoiceEditingResultHandler::handleRecogProgress(int)::$_0,std::allocator<quasar::result_handler::VoiceEditingResultHandler::handleRecogProgress(int)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::result_handler::VoiceEditingResultHandler::handlePartial(int,std::unique_ptr<quasar::result_handler::Package>)::$_0,std::allocator<quasar::result_handler::VoiceEditingResultHandler::handlePartial(int,std::unique_ptr<quasar::result_handler::Package>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2F300;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::result_handler::VoiceEditingResultHandler::handlePartial(int,std::unique_ptr<quasar::result_handler::Package>)::$_0,std::allocator<quasar::result_handler::VoiceEditingResultHandler::handlePartial(int,std::unique_ptr<quasar::result_handler::Package>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<quasar::result_handler::CommandData>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<quasar::result_handler::CommandData>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<quasar::result_handler::CommandData>::__init_with_size[abi:ne200100]<quasar::result_handler::CommandData*,quasar::result_handler::CommandData*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::result_handler::CommandData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B578194C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::result_handler::CommandData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

quasar::result_handler::CommandData *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*,quasar::result_handler::CommandData*,quasar::result_handler::CommandData*>(uint64_t a1, quasar::result_handler::CommandData *a2, quasar::result_handler::CommandData *a3, quasar::result_handler::CommandData *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      quasar::result_handler::CommandData::CommandData(v4, v6);
      v6 = (v6 + 184);
      v4 = (v11 + 184);
      v11 = (v11 + 184);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__function::__func<quasar::result_handler::VoiceEditingResultHandler::handleCommandCandidate(int,std::unique_ptr<quasar::result_handler::Package>)::$_0,std::allocator<quasar::result_handler::VoiceEditingResultHandler::handleCommandCandidate(int,std::unique_ptr<quasar::result_handler::Package>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2F380;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::result_handler::VoiceEditingResultHandler::handleCommandCandidate(int,std::unique_ptr<quasar::result_handler::Package>)::$_0,std::allocator<quasar::result_handler::VoiceEditingResultHandler::handleCommandCandidate(int,std::unique_ptr<quasar::result_handler::Package>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double std::__optional_storage_base<quasar::result_handler::CommandData,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<quasar::result_handler::CommandData,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 184) == *(a2 + 184))
  {
    if (*(a1 + 184))
    {
      quasar::result_handler::CommandData::operator=(a1, a2);
    }
  }

  else if (*(a1 + 184))
  {
    std::__optional_destruct_base<quasar::result_handler::CommandData,false>::reset[abi:ne200100](a1);
  }

  else
  {
    *&result = std::__optional_storage_base<quasar::result_handler::CommandData,false>::__construct[abi:ne200100]<quasar::result_handler::CommandData>(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t std::__function::__func<quasar::result_handler::VoiceEditingResultHandler::handleFinal(int,std::unique_ptr<quasar::result_handler::Package>)::$_0,std::allocator<quasar::result_handler::VoiceEditingResultHandler::handleFinal(int,std::unique_ptr<quasar::result_handler::Package>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2F400;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::result_handler::VoiceEditingResultHandler::handleFinal(int,std::unique_ptr<quasar::result_handler::Package>)::$_0,std::allocator<quasar::result_handler::VoiceEditingResultHandler::handleFinal(int,std::unique_ptr<quasar::result_handler::Package>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<quasar::result_handler::CommandData>::__emplace_back_slow_path<quasar::result_handler::CommandData const&>(uint64_t *a1, const quasar::result_handler::CommandData *a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v6 = 0x1642C8590B21642;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>>(a1, v6);
  }

  v13 = 0;
  v14 = 184 * v2;
  quasar::result_handler::CommandData::CommandData((184 * v2), a2);
  v15 = 184 * v2 + 184;
  v7 = a1[1];
  v8 = 184 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::result_handler::CommandData>::~__split_buffer(&v13);
  return v12;
}

void sub_1B5781D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::result_handler::CommandData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::result_handler::CommandData>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::result_handler::CommandData const*>,std::__wrap_iter<quasar::result_handler::CommandData const*>>(uint64_t *a1, uint64_t a2, const quasar::result_handler::CommandData *a3, quasar::result_handler::CommandData *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xD37A6F4DE9BD37A7 * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xD37A6F4DE9BD37A7 * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = 184 * a5;
        std::vector<quasar::result_handler::CommandData>::__move_range(a1, a2, a1[1], a2 + 184 * a5);
        v20 = (v7 + v19);
        v21 = v5;
        do
        {
          quasar::result_handler::CommandData::operator=(v21, v7);
          v7 = (v7 + 184);
          v21 += 184;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData const*,quasar::result_handler::CommandData const*,quasar::result_handler::CommandData*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<quasar::result_handler::CommandData>::__move_range(a1, v5, v10, v5 + 184 * a5);
          v18 = v5;
          do
          {
            quasar::result_handler::CommandData::operator=(v18, v7);
            v7 = (v7 + 184);
            v18 += 184;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x2C8590B21642C859 * ((v10 - *a1) >> 3);
      if (v12 > 0x1642C8590B21642)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0xD37A6F4DE9BD37A7 * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0xB21642C8590B21)
      {
        v15 = 0x1642C8590B21642;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>>(a1, v15);
      }

      v22 = (8 * (v13 >> 3));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 184 * a5;
      v24 = (v22 + 184 * a5);
      do
      {
        quasar::result_handler::CommandData::CommandData(v22, v7);
        v22 = (v22 + 184);
        v7 = (v7 + 184);
        v23 -= 184;
      }

      while (v23);
      v27 = v24;
      v5 = std::vector<quasar::result_handler::CommandData>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<quasar::result_handler::CommandData>::~__split_buffer(v26);
    }
  }

  return v5;
}

void std::vector<quasar::result_handler::CommandData>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
    do
    {
      std::allocator_traits<std::allocator<quasar::result_handler::CommandData>>::construct[abi:ne200100]<quasar::result_handler::CommandData,quasar::result_handler::CommandData,0>(a1, v10, v8);
      v8 += 184;
      v10 += 184;
    }

    while (v8 < a3);
  }

  *(a1 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 184;
    v12 = a4 - v7;
    v13 = a2 + v7 - 184 - a4;
    do
    {
      quasar::result_handler::CommandData::operator=(v11, v13);
      v11 -= 184;
      v13 -= 184;
      v12 += 184;
    }

    while (v12);
  }
}

uint64_t std::vector<quasar::result_handler::CommandData>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

quasar::result_handler::CommandData *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData const*,quasar::result_handler::CommandData const*,quasar::result_handler::CommandData*>(uint64_t a1, quasar::result_handler::CommandData *a2, quasar::result_handler::CommandData *a3, quasar::result_handler::CommandData *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      quasar::result_handler::CommandData::CommandData(v4, v6);
      v6 = (v6 + 184);
      v4 = (v11 + 184);
      v11 = (v11 + 184);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::result_handler::CommandData>,quasar::result_handler::CommandData*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

quasar::result_handler::Package *quasar::result_handler::Package::Package(quasar::result_handler::Package *this, const quasar::result_handler::Package *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(this + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(this + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  v4 = *(a2 + 9);
  v5 = *(a2 + 40);
  *(this + 11) = 0;
  *(this + 40) = v5;
  *(this + 9) = v4;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 88, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 2);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 112, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 2);
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 136, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 2);
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::vector<quasar::result_handler::CommandData>::__init_with_size[abi:ne200100]<quasar::result_handler::CommandData*,quasar::result_handler::CommandData*>(this + 160, *(a2 + 20), *(a2 + 21), 0xD37A6F4DE9BD37A7 * ((*(a2 + 21) - *(a2 + 20)) >> 3));
  std::__optional_copy_base<quasar::result_handler::CommandData,false>::__optional_copy_base[abi:ne200100]((this + 184), (a2 + 184));
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(this + 376, *(a2 + 47), *(a2 + 48), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 48) - *(a2 + 47)) >> 5));
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(this + 400, *(a2 + 50), *(a2 + 51), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 51) - *(a2 + 50)) >> 5));
  *(this + 424) = *(a2 + 424);
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(this + 432, *(a2 + 54), *(a2 + 55), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 55) - *(a2 + 54)) >> 5));
  v6 = *(a2 + 456);
  v7 = *(a2 + 472);
  *(this + 61) = *(a2 + 61);
  *(this + 456) = v6;
  *(this + 472) = v7;
  return this;
}

void sub_1B578241C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::optional<quasar::result_handler::CommandData>::~optional(v10 + 184);
  std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](&a10);
  v15 = *v13;
  if (*v13)
  {
    *(v10 + 144) = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    *(v10 + 120) = v16;
    operator delete(v16);
  }

  v17 = *v11;
  if (*v11)
  {
    *(v10 + 96) = v17;
    operator delete(v17);
  }

  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = a9;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

quasar::result_handler::CommandData *std::__optional_copy_base<quasar::result_handler::CommandData,false>::__optional_copy_base[abi:ne200100](quasar::result_handler::CommandData *this, const quasar::result_handler::CommandData *a2)
{
  *this = 0;
  *(this + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    quasar::result_handler::CommandData::CommandData(this, a2);
    *(this + 184) = 1;
  }

  return this;
}

void sub_1B578253C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 184) == 1)
  {
    quasar::result_handler::CommandData::~CommandData(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::result_handler::CommandData>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::result_handler::CommandData>>::destroy[abi:ne200100]<quasar::result_handler::CommandData,0>(a1, i))
  {
    i -= 184;
  }

  *(a1 + 8) = a2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
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
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B5782810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t quasar::utf8Length(uint64_t **a1)
{
  v1 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v2 = v1;
  }

  quasar::utf8::codepointsCtr(a1, v2, 0, v2, v7);
  if (v9 == 1)
  {
    v3 = LODWORD(v7[0]);
    if (v9)
    {
      return v3;
    }

    goto LABEL_18;
  }

  *__p = *v7;
  v11 = v8;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  if (quasar::gLogLevel >= 1)
  {
    memset(v12, 0, sizeof(v12));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    if (v11 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if (v11 >= 0)
    {
      v5 = HIBYTE(v11);
    }

    else
    {
      v5 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v4, v5);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v12);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = 0;
  if ((v9 & 1) == 0)
  {
LABEL_18:
    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return v3;
}

void sub_1B57829F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::locale a23)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a23);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if ((a15 & 1) == 0 && a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void quasar::removeUtf8Suffix(std::string *a1, int a2)
{
  v2 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (a2 > 0)
  {
    v3 = 0;
    LODWORD(v4) = 0;
    size = a1->__r_.__value_.__l.__size_;
    if ((v2 & 0x80u) == 0)
    {
      v6 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v6 = a1->__r_.__value_.__l.__size_;
    }

    while (1)
    {
      if (v6 <= v4)
      {
        goto LABEL_14;
      }

      v7 = v4;
      LODWORD(v4) = v4 + 1;
      v8 = ~v7;
      if ((v2 & 0x80) == 0)
      {
        break;
      }

      while (1)
      {
        v9 = a1->__r_.__value_.__r.__words[0];
        v10 = a1->__r_.__value_.__l.__size_;
        if (size <= v7)
        {
          break;
        }

LABEL_10:
        if ((v9->__r_.__value_.__s.__data_[v10 + v8] & 0xC0) != 0x80)
        {
          break;
        }

        ++v7;
        LODWORD(v4) = v4 + 1;
        --v8;
        if ((v2 & 0x80) == 0)
        {
          goto LABEL_7;
        }
      }

LABEL_13:
      if (++v3 == a2)
      {
LABEL_14:
        v4 = v4;
        goto LABEL_16;
      }
    }

LABEL_7:
    v9 = a1;
    v10 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v7 >= v2)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v4 = 0;
  size = a1->__r_.__value_.__l.__size_;
LABEL_16:
  if ((v2 & 0x80u) != 0)
  {
    v2 = size;
  }

  std::string::resize(a1, v2 - v4, 0);
}

std::string *quasar::removeUtf8Prefix(std::string *a1, int a2)
{
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    v5 = (size & 0x80u) != 0;
    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    if (v5)
    {
      v6 = a1->__r_.__value_.__r.__words[0];
    }

    else
    {
      v6 = a1;
    }

    v7 = v6->__r_.__value_.__r.__words + 1;
    do
    {
      if (size <= v3)
      {
        break;
      }

      v8 = v3;
      ++v2;
      v9 = v3 + 1;
      if (size > v9)
      {
        LODWORD(v9) = size;
      }

      while (1)
      {
        v3 = v8 + 1;
        if (size <= v8 + 1)
        {
          break;
        }

        v10 = *(v7 + v8++) & 0xC0;
        if (v10 != 128)
        {
          goto LABEL_15;
        }
      }

      v3 = v9;
LABEL_15:
      ;
    }

    while (v2 != a2);
    v11 = v3;
  }

  return std::string::erase(a1, 0, v11);
}

void quasar::utf8toAscii(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  for (; v5; --v5)
  {
    v6 = *v4;
    if ((v6 & 0xFFFFFFC0) != 0xFFFFFF80)
    {
      if (v6 < 0)
      {
        v7 = 63;
      }

      else
      {
        v7 = *v4;
      }

      std::string::push_back(a2, v7);
    }

    ++v4;
  }
}

void sub_1B5782C08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::DoNotTranslateBlock::performReplacements(uint64_t a1, void *a2, std::string *a3, uint64_t *a4, uint64_t a5)
{
  v145[0] = 0;
  v144[0] = v145 + 4;
  v144[1] = a4;
  v144[2] = a1;
  v144[3] = v145;
  v6 = *a2;
  v108 = a2 + 1;
  if (*a2 == a2 + 1)
  {
    v106 = 0;
    goto LABEL_129;
  }

  v8 = a3;
  do
  {
    v9 = *(v6 + 36);
    v10 = HIDWORD(v9);
    size = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = v8->__r_.__value_.__l.__size_;
      v12 = size < v9;
      if (size < v9)
      {
        LODWORD(v9) = v8->__r_.__value_.__l.__size_;
      }

      v111 = v9;
      if (size < v9 + v10)
      {
LABEL_8:
        v10 = size - v111;
        v12 = 1;
      }
    }

    else
    {
      v12 = v9 > size;
      v13 = size + HIDWORD(v9);
      if (v9 > size)
      {
        LODWORD(v9) = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = HIDWORD(v9) + v9;
      }

      v111 = v9;
      if (v13 > size)
      {
        goto LABEL_8;
      }
    }

    if (v12 && quasar::gLogLevel >= 2)
    {
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v135 = 0u;
      memset(v134, 0, sizeof(v134));
      v132 = 0u;
      memset(v133, 0, sizeof(v133));
      v130 = 0u;
      v131 = 0u;
      v129 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "Source span [", 13);
      v16 = MEMORY[0x1B8C84C00](v15, *(v6 + 9));
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", ", 2);
      v18 = MEMORY[0x1B8C84C00](v17, *(v6 + 10));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "] for out of bounds.", 20);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v129);
    }

    v110 = v10;
    v19 = *(v6 + 7);
    v112 = *(v6 + 8);
    *&v129 = v6 + 36;
    *(std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(a5, v6 + 9) + 36) = 0;
    if (quasar::gLogLevel >= 6)
    {
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v135 = 0u;
      memset(v134, 0, sizeof(v134));
      v132 = 0u;
      memset(v133, 0, sizeof(v133));
      v130 = 0u;
      v131 = 0u;
      v129 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "mapping [", 9);
      v21 = MEMORY[0x1B8C84C00](v20, v111);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", ", 2);
      v23 = MEMORY[0x1B8C84C00](v22, v110);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "] -> [", 6);
      v25 = MEMORY[0x1B8C84C00](v24, v19);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", ", 2);
      v27 = MEMORY[0x1B8C84C00](v26, v112);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "]", 1);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
      if (quasar::gLogLevel >= 6)
      {
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v135 = 0u;
        memset(v134, 0, sizeof(v134));
        v132 = 0u;
        memset(v133, 0, sizeof(v133));
        v130 = 0u;
        v131 = 0u;
        v129 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "Tokens:", 7);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
      }
    }

    v28 = SHIDWORD(v145[0]);
    for (i = (*(a1 + 208) - *(a1 + 200)) >> 3; ; i = (*(a1 + 208) - *(a1 + 200)) >> 3)
    {
      v30 = v145[0];
      if (0xF0F0F0F0F0F0F0F1 * i <= v28 || SLODWORD(v145[0]) >= v19)
      {
        break;
      }

      quasar::DoNotTranslateBlock::performReplacements(quasar::TranslationPhraseInternal const&,std::map<std::pair<int,int>,std::pair<int,int>> const&,std::string const&,std::vector<quasar::TranslationTokenInternal> &,std::map<std::pair<int,int>,int> &)::$_0::operator()(v144);
      v28 = SHIDWORD(v145[0]);
    }

    if (LODWORD(v145[0]) != v19)
    {
      v32 = a4[1];
      if (*a4 == v32)
      {
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v135 = 0u;
        memset(v134, 0, sizeof(v134));
        v132 = 0u;
        memset(v133, 0, sizeof(v133));
        v130 = 0u;
        v131 = 0u;
        v129 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v129, "Logic error! newTokens should not be empty here.");
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v129);
      }

      v33 = *(v32 - 112);
      if (quasar::gLogLevel >= 6)
      {
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v135 = 0u;
        memset(v134, 0, sizeof(v134));
        v132 = 0u;
        memset(v133, 0, sizeof(v133));
        v130 = 0u;
        v131 = 0u;
        v129 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "       shrinking token before replacement", 41);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
        v32 = a4[1];
      }

      quasar::removeUtf8Suffix((v32 - 136), v30 - v19 - v33);
      *(a4[1] - 112) = 0;
    }

    quasar::utf8::substr(a3, v111, v110, &v128);
    v125 = 0;
    v126 = 0;
    v127 = 0;
    kaldi::SplitStringToVector(&v128, " ", 1, &v125);
    v35 = v125;
    v34 = v126;
    if (v125 != v126)
    {
      do
      {
        v116 = 0;
        v117 = 0;
        v118 = 0;
        memset(&v114, 0, sizeof(v114));
        v115 = 0;
        v119 = 3212836864;
        v120 = -1;
        std::string::operator=(&v114, v35);
        LODWORD(v119) = 1148846080;
        LOBYTE(v115) = 1;
        quasar::TranslationTokenInternal::TranslationTokenInternal(&v129, &v114);
        v36 = a4[1];
        if (v36 >= a4[2])
        {
          v40 = std::vector<quasar::TranslationTokenInternal>::__emplace_back_slow_path<quasar::TranslationTokenInternal>(a4, &v129);
          v41 = v134[1];
          a4[1] = v40;
          if (v41)
          {
            v134[2] = v41;
            operator delete(v41);
          }
        }

        else
        {
          v37 = v129;
          *(v36 + 16) = v130;
          *v36 = v37;
          *&v130 = 0;
          v129 = 0uLL;
          *(v36 + 24) = WORD4(v130);
          *(v36 + 40) = 0;
          *(v36 + 48) = 0;
          *(v36 + 32) = 0;
          *(v36 + 32) = v131;
          *(v36 + 48) = v132;
          v131 = 0uLL;
          *&v132 = 0;
          v38 = *(&v132 + 1);
          *(v36 + 64) = v133[0];
          *(v36 + 56) = v38;
          v39 = *&v133[1];
          *(v36 + 88) = v133[3];
          *(v36 + 72) = v39;
          memset(&v133[1], 0, 24);
          *(v36 + 96) = v134[0];
          *(v36 + 104) = 0;
          *(v36 + 112) = 0;
          *(v36 + 120) = 0;
          *(v36 + 104) = *&v134[1];
          *(v36 + 120) = v134[3];
          memset(&v134[1], 0, 24);
          *(v36 + 128) = v135;
          a4[1] = v36 + 136;
        }

        if (SHIBYTE(v133[3]) < 0)
        {
          operator delete(v133[1]);
        }

        if (v131)
        {
          *(&v131 + 1) = v131;
          operator delete(v131);
        }

        if (SBYTE7(v130) < 0)
        {
          operator delete(v129);
        }

        if (quasar::gLogLevel >= 6)
        {
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
          memset(v134, 0, sizeof(v134));
          v132 = 0u;
          memset(v133, 0, sizeof(v133));
          v130 = 0u;
          v131 = 0u;
          v129 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "   DNT copy: '", 14);
          v43 = a4[1];
          v46 = *(v43 - 136);
          v44 = v43 - 136;
          v45 = v46;
          v47 = *(v44 + 23);
          if (v47 >= 0)
          {
            v48 = v44;
          }

          else
          {
            v48 = v45;
          }

          if (v47 >= 0)
          {
            v49 = *(v44 + 23);
          }

          else
          {
            v49 = *(v44 + 8);
          }

          v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v48, v49);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "'", 1);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
        }

        v51 = quasar::utf8Length(&v114);
        *(&v145[1] + 4) = v6 + 36;
        v52 = std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(a5, v6 + 9);
        *(v52 + 36) += v51 + 1;
        if (v116)
        {
          v117 = v116;
          operator delete(v116);
        }

        if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v114.__r_.__value_.__l.__data_);
        }

        ++v35;
      }

      while (v35 != v34);
      if (v125 != v126)
      {
        *(a4[1] - 112) = 0;
        v114.__r_.__value_.__r.__words[0] = v6 + 36;
        v53 = std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(a5, v6 + 9);
        --*(v53 + 36);
      }
    }

    v54 = HIDWORD(v145[0]);
    v55 = *(a1 + 200);
    if (HIDWORD(v145[0]))
    {
      --HIDWORD(v145[0]);
      v56 = quasar::utf8Length((v55 + 136 * (v54 - 1)));
      v57 = HIDWORD(v145[0]);
      v55 = *(a1 + 200);
      LODWORD(v145[0]) = LODWORD(v145[0]) - v56 - *(v55 + 136 * SHIDWORD(v145[0]) + 24);
      if (quasar::gLogLevel >= 6)
      {
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v135 = 0u;
        memset(v134, 0, sizeof(v134));
        v132 = 0u;
        memset(v133, 0, sizeof(v133));
        v130 = 0u;
        v131 = 0u;
        v129 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "   step backward to: '", 22);
        v59 = *(a1 + 200) + 136 * SHIDWORD(v145[0]);
        v60 = *(v59 + 23);
        if (v60 >= 0)
        {
          v61 = *(a1 + 200) + 136 * SHIDWORD(v145[0]);
        }

        else
        {
          v61 = *v59;
        }

        if (v60 >= 0)
        {
          v62 = *(v59 + 23);
        }

        else
        {
          v62 = *(v59 + 8);
        }

        v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v61, v62);
        v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "' / ", 4);
        MEMORY[0x1B8C84C00](v64, LODWORD(v145[0]));
        quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
        v57 = HIDWORD(v145[0]);
        v55 = *(a1 + 200);
      }
    }

    else
    {
      v57 = 0;
    }

    v65 = v57;
    v66 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 208) - v55) >> 3);
    if (v66 > v57)
    {
      while (1)
      {
        v67 = v145[0];
        v68 = quasar::utf8Length((v55 + 136 * v65));
        v65 = SHIDWORD(v145[0]);
        v55 = *(a1 + 200);
        v69 = v55 + 136 * SHIDWORD(v145[0]);
        if ((v112 + v19) < v68 + v67 + *(v69 + 24))
        {
          break;
        }

        v70 = quasar::utf8Length((v55 + 136 * SHIDWORD(v145[0])));
        LODWORD(v145[0]) += v70 + *(v69 + 24);
        if (quasar::gLogLevel >= 6)
        {
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
          memset(v134, 0, sizeof(v134));
          v132 = 0u;
          memset(v133, 0, sizeof(v133));
          v130 = 0u;
          v131 = 0u;
          v129 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
          v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "   discarding: '", 16);
          v72 = *(v69 + 23);
          if (v72 >= 0)
          {
            v73 = v69;
          }

          else
          {
            v73 = *v69;
          }

          if (v72 >= 0)
          {
            v74 = *(v69 + 23);
          }

          else
          {
            v74 = *(v69 + 8);
          }

          v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v73, v74);
          v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "' / ", 4);
          MEMORY[0x1B8C84C00](v76, LODWORD(v145[0]));
          quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
        }

        v65 = SHIDWORD(v145[0]) + 1;
        ++HIDWORD(v145[0]);
        v55 = *(a1 + 200);
        v66 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 208) - v55) >> 3);
        if (v66 <= v65)
        {
          goto LABEL_82;
        }
      }

      v66 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 208) - v55) >> 3);
    }

LABEL_82:
    if (v66 > v65)
    {
      v77 = v112 + v19 - LODWORD(v145[0]);
      if ((v112 + v19) > SLODWORD(v145[0]))
      {
        v78 = (v55 + 136 * v65);
        if (*(v78 + 24) == 1 && v77 == quasar::utf8Length(v78))
        {
          v79 = a4[1];
          if (*a4 != v79)
          {
            if (*(v79 - 112))
            {
              if (quasar::gLogLevel >= 6)
              {
                v142 = 0u;
                v143 = 0u;
                v140 = 0u;
                v141 = 0u;
                v138 = 0u;
                v139 = 0u;
                v136 = 0u;
                v137 = 0u;
                v135 = 0u;
                memset(v134, 0, sizeof(v134));
                v132 = 0u;
                memset(v133, 0, sizeof(v133));
                v130 = 0u;
                v131 = 0u;
                v129 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "       already hasSpaceAfter of DNT token", 41);
                quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
              }
            }

            else
            {
              if (quasar::gLogLevel >= 6)
              {
                v142 = 0u;
                v143 = 0u;
                v140 = 0u;
                v141 = 0u;
                v138 = 0u;
                v139 = 0u;
                v136 = 0u;
                v137 = 0u;
                v135 = 0u;
                memset(v134, 0, sizeof(v134));
                v132 = 0u;
                memset(v133, 0, sizeof(v133));
                v130 = 0u;
                v131 = 0u;
                v129 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "       setting hasSpaceAfter of DNT token", 41);
                quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
                v79 = a4[1];
              }

              *(v79 - 112) = 1;
            }
          }
        }

        else
        {
          quasar::TranslationTokenInternal::TranslationTokenInternal(&v114, v78);
          quasar::removeUtf8Prefix(&v114, v77);
          v80 = a4[1];
          if (*a4 != v80 && *(v80 - 112) == 1)
          {
            if (quasar::gLogLevel >= 6)
            {
              v142 = 0u;
              v143 = 0u;
              v140 = 0u;
              v141 = 0u;
              v138 = 0u;
              v139 = 0u;
              v136 = 0u;
              v137 = 0u;
              v135 = 0u;
              memset(v134, 0, sizeof(v134));
              v132 = 0u;
              memset(v133, 0, sizeof(v133));
              v130 = 0u;
              v131 = 0u;
              v129 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "       removing hasSpaceAfter of DNT token", 42);
              quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
              v80 = a4[1];
            }

            *(v80 - 112) = 0;
          }

          std::vector<quasar::TranslationTokenInternal>::push_back[abi:ne200100](a4, &v114);
          if (quasar::gLogLevel >= 6)
          {
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v135 = 0u;
            memset(v134, 0, sizeof(v134));
            v132 = 0u;
            memset(v133, 0, sizeof(v133));
            v130 = 0u;
            v131 = 0u;
            v129 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
            v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "   partial:  '", 14);
            v82 = a4[1];
            v85 = *(v82 - 136);
            v83 = v82 - 136;
            v84 = v85;
            v86 = *(v83 + 23);
            if (v86 >= 0)
            {
              v87 = v83;
            }

            else
            {
              v87 = v84;
            }

            if (v86 >= 0)
            {
              v88 = *(v83 + 23);
            }

            else
            {
              v88 = *(v83 + 8);
            }

            v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, v87, v88);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, "'", 1);
            quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
          }

          if (v123)
          {
            v124 = v123;
            operator delete(v123);
          }

          if (v122 < 0)
          {
            operator delete(v121);
          }

          if (v116)
          {
            v117 = v116;
            operator delete(v116);
          }

          if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v114.__r_.__value_.__l.__data_);
          }
        }

        v90 = quasar::utf8Length(v78);
        LODWORD(v145[0]) += v90 + *(v78 + 24);
        if (quasar::gLogLevel >= 6)
        {
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v135 = 0u;
          memset(v134, 0, sizeof(v134));
          v132 = 0u;
          memset(v133, 0, sizeof(v133));
          v130 = 0u;
          v131 = 0u;
          v129 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
          v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "       tokenStartPos: '", 23);
          MEMORY[0x1B8C84C00](v91, LODWORD(v145[0]));
          quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
        }

        ++HIDWORD(v145[0]);
      }
    }

    if (quasar::gLogLevel >= 6)
    {
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v135 = 0u;
      memset(v134, 0, sizeof(v134));
      v132 = 0u;
      memset(v133, 0, sizeof(v133));
      v130 = 0u;
      v131 = 0u;
      v129 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v129);
      v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v129, "finished mapping [", 18);
      v93 = MEMORY[0x1B8C84C00](v92, v111);
      v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, ", ", 2);
      v95 = MEMORY[0x1B8C84C00](v94, v110);
      v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, "] -> [", 6);
      v97 = MEMORY[0x1B8C84C00](v96, v19);
      v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, ", ", 2);
      v99 = MEMORY[0x1B8C84C00](v98, v112);
      v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, "], actual source length: ", 25);
      v114.__r_.__value_.__r.__words[0] = v6 + 36;
      v101 = std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(a5, v6 + 9);
      MEMORY[0x1B8C84C00](v100, *(v101 + 36));
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v129);
    }

    v114.__r_.__value_.__r.__words[0] = v6 + 36;
    v102 = std::__tree<std::__value_type<std::pair<int,int>,float>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,float>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,float>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int>&&>,std::tuple<>>(a5, v6 + 9);
    *(v102 + 36) -= v112;
    *&v129 = &v125;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v129);
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    v103 = v6[1];
    v8 = a3;
    if (v103)
    {
      do
      {
        v104 = v103;
        v103 = *v103;
      }

      while (v103);
    }

    else
    {
      do
      {
        v104 = v6[2];
        v105 = *v104 == v6;
        v6 = v104;
      }

      while (!v105);
    }

    v6 = v104;
  }

  while (v104 != v108);
  v106 = SHIDWORD(v145[0]);
LABEL_129:
  for (j = (*(a1 + 208) - *(a1 + 200)) >> 3; 0xF0F0F0F0F0F0F0F1 * j > v106; j = (*(a1 + 208) - *(a1 + 200)) >> 3)
  {
    quasar::DoNotTranslateBlock::performReplacements(quasar::TranslationPhraseInternal const&,std::map<std::pair<int,int>,std::pair<int,int>> const&,std::string const&,std::vector<quasar::TranslationTokenInternal> &,std::map<std::pair<int,int>,int> &)::$_0::operator()(v144);
    v106 = SHIDWORD(v145[0]);
  }
}

void quasar::DoNotTranslateBlock::performReplacements(quasar::TranslationPhraseInternal const&,std::map<std::pair<int,int>,std::pair<int,int>> const&,std::string const&,std::vector<quasar::TranslationTokenInternal> &,std::map<std::pair<int,int>,int> &)::$_0::operator()(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *v3;
  if (v4)
  {
    v5 = v2[1];
    if (v5 != *v2 && *(*(*(a1 + 16) + 200) + 136 * v4 - 112) == 1)
    {
      *(v5 - 112) = 1;
    }
  }

  v6 = (*(*(a1 + 16) + 200) + 136 * v4);
  std::vector<quasar::TranslationTokenInternal>::push_back[abi:ne200100](v2, v6);
  **(a1 + 24) += quasar::utf8Length(v6) + v6[24];
  if (quasar::gLogLevel >= 6)
  {
    memset(v17, 0, sizeof(v17));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "    original: '", 15);
    v8 = *(*(a1 + 8) + 8);
    v11 = *(v8 - 136);
    v9 = v8 - 136;
    v10 = v11;
    v12 = *(v9 + 23);
    if (v12 >= 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }

    if (v12 >= 0)
    {
      v14 = *(v9 + 23);
    }

    else
    {
      v14 = *(v9 + 8);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "' / ", 4);
    MEMORY[0x1B8C84C00](v16, **(a1 + 24));
    quasar::QuasarTraceMessage::~QuasarTraceMessage(v17);
  }

  ++**a1;
}

void quasar::DoNotTranslateBlock::adjustAlignmentProjections(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v53[0] = 0;
  v53[1] = 0;
  v52 = v53;
  if (quasar::gLogLevel >= 6)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Adjusting projections", 21);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
  }

  v31 = a3;
  v7 = *a1;
  v32 = a1 + 1;
  if (*a1 != a1 + 1)
  {
    v8 = 0;
    v34 = a4 - 1;
    do
    {
      v10 = *(v7 + 7);
      v9 = *(v7 + 8);
      __p[0] = (*(v7 + 9) | ((*(v7 + 10) - *(v7 + 9) + 1) << 32));
      v11 = std::__tree<std::__value_type<std::pair<int,int>,int>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,int>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,int>>>::find<std::pair<int,int>>(a2, __p);
      if ((a2 + 8) == v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(v11 + 9);
      }

      if (v8 + v10 < 0)
      {
        if (quasar::gLogLevel >= 2)
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Adjusted range start is out of bounds: ", 39);
          MEMORY[0x1B8C84C00](v14, (v8 + v10));
          quasar::QuasarWarnMessage::~QuasarWarnMessage(__p);
        }

        v13 = 0;
      }

      else if (v8 + v10 >= a4)
      {
        v13 = v34;
        if (quasar::gLogLevel >= 2)
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Adjusted range start is out of bounds: ", 39);
          MEMORY[0x1B8C84C00](v15, (v8 + v10));
          quasar::QuasarWarnMessage::~QuasarWarnMessage(__p);
          v13 = v34;
        }
      }

      else
      {
        v13 = (v8 + v10);
      }

      v16 = (v8 + v9 + v12);
      if (v16 >= a4)
      {
        v17 = v34;
        if (quasar::gLogLevel >= 2)
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Adjusted range end is out of bounds: ", 37);
          MEMORY[0x1B8C84C00](v18, v16);
          quasar::QuasarWarnMessage::~QuasarWarnMessage(__p);
          v17 = v34;
        }
      }

      else if ((v16 & 0x80000000) != 0)
      {
        if (quasar::gLogLevel >= 2)
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Adjusted range end is out of bounds: ", 37);
          MEMORY[0x1B8C84C00](v19, v16);
          quasar::QuasarWarnMessage::~QuasarWarnMessage(__p);
        }

        v17 = 0;
      }

      else
      {
        v17 = (v8 + v9 + v12);
      }

      __p[0] = v7 + 36;
      v20 = std::__tree<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::__map_value_compare<std::pair<int,int>,std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>,std::less<std::pair<int,int>>,true>,std::allocator<std::__value_type<std::pair<int,int>,std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<std::pair<int,int>,std::piecewise_construct_t const&,std::tuple<std::pair<int,int> const&>,std::tuple<>>(&v52, v7 + 9);
      __p[0] = __PAIR64__(v17, v13);
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](v20 + 40, __p);
      if (quasar::gLogLevel >= 6)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "    Changing target ", 20);
        v22 = MEMORY[0x1B8C84C00](v21, v10);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", ", 2);
        v24 = MEMORY[0x1B8C84C00](v23, v9);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " to ", 4);
        v26 = MEMORY[0x1B8C84C00](v25, v13);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", ", 2);
        MEMORY[0x1B8C84C00](v27, v17);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
      }

      v28 = v7[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v7[2];
          v30 = *v29 == v7;
          v7 = v29;
        }

        while (!v30);
      }

      v8 += v12;
      v7 = v29;
    }

    while (v29 != v32);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "alignment-queries");
  quasar::PTree::getChild(v31, __p);
}