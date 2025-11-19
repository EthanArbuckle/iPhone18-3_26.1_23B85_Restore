void sub_254C46828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (*(v55 - 137) < 0)
  {
    operator delete(*(v55 - 160));
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  *(v55 - 160) = &STACK[0x228];
  std::vector<std::unique_ptr<InputTranscoder::CandidateImpl>>::__destroy_vector::operator()[abi:ne200100]((v55 - 160));
  STACK[0x228] = &a20;
  std::vector<InputTranscoder::CTCSurfaceFormOutput>::__destroy_vector::operator()[abi:ne200100](&STACK[0x228]);
  STACK[0x228] = &a23;
  std::vector<InputTranscoder::CTCSurfaceFormOutput>::__destroy_vector::operator()[abi:ne200100](&STACK[0x228]);
  STACK[0x228] = &a26;
  std::vector<InputTranscoder::CTCSurfaceFormOutput>::__destroy_vector::operator()[abi:ne200100](&STACK[0x228]);
  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  InputTranscoder::InputProcessor::~InputProcessor(&a45);
  InputTranscoder::PathResampler::~PathResampler(&a55);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<InputTranscoder::CandidateImpl>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 119) < 0)
    {
      operator delete(*(v2 + 96));
    }

    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 64) = v3;
      operator delete(v3);
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C28FE0](v2, 0x1012C40652C33EFLL);
  }

  return a1;
}

void InputTranscoder::TouchTranscoderSessionImpl::extractCandidatesAndSavePrefixInfo(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5, double *a6, uint64_t *a7, _BYTE *a8)
{
  v8 = a8;
  v11 = a3;
  v12 = a2;
  v94 = *MEMORY[0x277D85DE8];
  v15 = a1 + 212;
  v14 = *(a1 + 212);
  v16 = *(a1 + 648);
  memset(&v88, 0, sizeof(v88));
  if (a6)
  {
    *buf = 0;
    *&v91.__r_.__value_.__l.__data_ = 0uLL;
    InputTranscoder::PathTrie::getPath(a6, buf);
    v19 = *buf;
    v18 = v91.__r_.__value_.__r.__words[0];
    if (*buf != v91.__r_.__value_.__r.__words[0])
    {
      do
      {
        if (*v19 == v14)
        {
          std::string::basic_string[abi:ne200100]<0>(&v85, " ");
        }

        else
        {
          v20 = (*(*v16 + 32))(v16, v19);
          if (*(v20 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v85, *v20, *(v20 + 8));
          }

          else
          {
            v21 = *v20;
            v85.__r_.__value_.__r.__words[2] = *(v20 + 16);
            *&v85.__r_.__value_.__l.__data_ = v21;
          }
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v85;
        }

        else
        {
          v22 = v85.__r_.__value_.__r.__words[0];
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v85.__r_.__value_.__l.__size_;
        }

        std::string::append(&v88, v22, size);
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        ++v19;
      }

      while (v19 != v18);
      v19 = *buf;
    }

    v8 = a8;
    if (v19)
    {
      v91.__r_.__value_.__r.__words[0] = v19;
      operator delete(v19);
    }

    v11 = a3;
    v12 = a2;
  }

  v24 = *(a1 + 735);
  if (v24 >= 0)
  {
    v25 = (v15 + 500);
  }

  else
  {
    v25 = *(a1 + 712);
  }

  if (v24 >= 0)
  {
    v26 = *(a1 + 735);
  }

  else
  {
    v26 = *(a1 + 720);
  }

  v27 = std::string::insert(&v88, 0, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v89.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v89.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v29 = (*(**(a1 + 648) + 32))(*(a1 + 648), v15);
  HasSeparator = InputTranscoder::stringHasSeparator(&v89.__r_.__value_.__l.__data_, v29);
  v31 = (*(*a6 + 72))(a6);
  if (*(a6 + 20) >= *(a1 + 252) && *a4 < *(a1 + 240))
  {
    v32 = a6[8];
    v33 = (*(*a6 + 48))(a6);
    v34 = *(a1 + 156);
    v35 = *(a1 + 256);
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v85, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
    }

    else
    {
      v85 = v89;
    }

    memset(&v86, 0, sizeof(v86));
    *&v87 = v32 + v33 * v34 - v35;
    WORD4(v87) = 0;
    BYTE10(v87) = HasSeparator;
    BYTE11(v87) = v31;
    HIDWORD(v87) = 0;
    *buf = a6;
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v91, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
        v93 = v87;
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v91 = v85;
    }

    __p = v86;
    v93 = v87;
LABEL_38:
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    v36 = a7[1];
    v37 = a7[2];
    if (v36 >= v37)
    {
      v81 = a4;
      v40 = 0x8E38E38E38E38E39 * ((v36 - *a7) >> 3);
      v41 = v40 + 1;
      if (v40 + 1 > 0x38E38E38E38E38ELL)
      {
        std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
      }

      v42 = 0x8E38E38E38E38E39 * ((v37 - *a7) >> 3);
      if (2 * v42 > v41)
      {
        v41 = 2 * v42;
      }

      if (v42 >= 0x1C71C71C71C71C7)
      {
        v43 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v43 = v41;
      }

      v86.__r_.__value_.__l.__size_ = a7;
      if (v43)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>>(v43);
      }

      v44 = 72 * v40;
      *v44 = *buf;
      v45 = *&v91.__r_.__value_.__l.__data_;
      *(v44 + 24) = *(&v91.__r_.__value_.__l + 2);
      *(v44 + 8) = v45;
      memset(&v91, 0, sizeof(v91));
      v46 = *&__p.__r_.__value_.__l.__data_;
      *(v44 + 48) = *(&__p.__r_.__value_.__l + 2);
      *(v44 + 32) = v46;
      memset(&__p, 0, sizeof(__p));
      *(v44 + 56) = v93;
      v47 = 72 * v40 + 72;
      v48 = a7[1];
      v49 = 72 * v40 + *a7 - v48;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*>(*a7, v48, v49);
      v50 = *a7;
      *a7 = v49;
      a7[1] = v47;
      v51 = a7[2];
      a7[2] = 0;
      v85.__r_.__value_.__r.__words[2] = v50;
      v86.__r_.__value_.__r.__words[0] = v51;
      v85.__r_.__value_.__r.__words[0] = v50;
      v85.__r_.__value_.__l.__size_ = v50;
      std::__split_buffer<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::~__split_buffer(&v85);
      v52 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      a7[1] = v47;
      a4 = v81;
      if (v52 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *v36 = *buf;
      v38 = *&v91.__r_.__value_.__l.__data_;
      *(v36 + 24) = *(&v91.__r_.__value_.__l + 2);
      *(v36 + 8) = v38;
      memset(&v91, 0, sizeof(v91));
      v39 = __p.__r_.__value_.__r.__words[2];
      *(v36 + 32) = *&__p.__r_.__value_.__l.__data_;
      *(v36 + 48) = v39;
      memset(&__p, 0, sizeof(__p));
      *(v36 + 56) = v93;
      a7[1] = v36 + 72;
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }
  }

  if (*v11 >= *(a1 + 236))
  {
    goto LABEL_95;
  }

  if (*(a1 + 152))
  {
    if (!(*(*a6 + 16))(a6))
    {
      goto LABEL_95;
    }

    v53 = a6[8];
    v54 = v53 + (*(*a6 + 40))(a6) * *(a1 + 156);
    v55 = (*(*a6 + 16))(a6);
    v56 = a4;
    v57 = v11;
    v59 = *(v12 + 8);
    v58 = *(v12 + 16);
    if (v59 < v58)
    {
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(*(v12 + 8), v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
      }

      else
      {
        v60 = *&v89.__r_.__value_.__l.__data_;
        *(v59 + 16) = *(&v89.__r_.__value_.__l + 2);
        *v59 = v60;
      }

      *(v59 + 24) = 0;
      *(v59 + 32) = 0;
      *(v59 + 40) = 0;
      *(v59 + 48) = v54;
      *(v59 + 56) = 0;
      *(v59 + 57) = v55;
      *(v59 + 58) = HasSeparator;
      *(v59 + 59) = v31;
      *(v59 + 60) = 0;
      v73 = v59 + 64;
      *(v12 + 8) = v59 + 64;
      v11 = v57;
      a4 = v56;
      goto LABEL_94;
    }

    v69 = (v59 - *v12) >> 6;
    if ((v69 + 1) >> 58)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v70 = v58 - *v12;
    v71 = v70 >> 5;
    if (v70 >> 5 <= (v69 + 1))
    {
      v71 = v69 + 1;
    }

    if (v70 >= 0x7FFFFFFFFFFFFFC0)
    {
      v72 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v72 = v71;
    }

    __p.__r_.__value_.__r.__words[0] = v12;
    v11 = v57;
    if (v72)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::CTCSurfaceFormOutput>>(v12, v72);
    }

    a4 = v56;
    v77 = v69 << 6;
    *buf = 0;
    v91.__r_.__value_.__r.__words[0] = v77;
    *&v91.__r_.__value_.__r.__words[1] = v77;
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v77, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
      v79 = v91.__r_.__value_.__l.__size_;
    }

    else
    {
      v78 = *&v89.__r_.__value_.__l.__data_;
      *(v77 + 16) = *(&v89.__r_.__value_.__l + 2);
      *v77 = v78;
      v79 = v77;
    }

    *(v77 + 24) = 0;
    *(v77 + 32) = 0;
    *(v77 + 40) = 0;
    *(v77 + 48) = v54;
    *(v77 + 56) = 0;
    *(v77 + 57) = v55;
    *(v77 + 58) = HasSeparator;
    *(v77 + 59) = v31;
    *(v77 + 60) = 0;
    v91.__r_.__value_.__l.__size_ = v79 + 64;
    std::vector<InputTranscoder::CTCSurfaceFormOutput>::__swap_out_circular_buffer(v12, buf);
  }

  else
  {
    v61 = *(a6 + 8);
    v63 = *(v12 + 8);
    v62 = *(v12 + 16);
    if (v63 < v62)
    {
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(*(v12 + 8), v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
      }

      else
      {
        v64 = *&v89.__r_.__value_.__l.__data_;
        *(v63 + 16) = *(&v89.__r_.__value_.__l + 2);
        *v63 = v64;
      }

      *(v63 + 24) = 0;
      *(v63 + 32) = 0;
      *(v63 + 40) = 0;
      *(v63 + 48) = v61;
      v73 = v63 + 64;
      *(v63 + 56) = 0;
      *(v12 + 8) = v63 + 64;
      goto LABEL_94;
    }

    v65 = (v63 - *v12) >> 6;
    if ((v65 + 1) >> 58)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v66 = v62 - *v12;
    v67 = v66 >> 5;
    if (v66 >> 5 <= (v65 + 1))
    {
      v67 = v65 + 1;
    }

    if (v66 >= 0x7FFFFFFFFFFFFFC0)
    {
      v68 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v68 = v67;
    }

    __p.__r_.__value_.__r.__words[0] = v12;
    if (v68)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::CTCSurfaceFormOutput>>(v12, v68);
    }

    v74 = (v65 << 6);
    *buf = 0;
    v91.__r_.__value_.__r.__words[0] = v74;
    *&v91.__r_.__value_.__r.__words[1] = v74;
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v74, v89.__r_.__value_.__l.__data_, v89.__r_.__value_.__l.__size_);
      v76 = v91.__r_.__value_.__l.__size_;
    }

    else
    {
      v75 = *&v89.__r_.__value_.__l.__data_;
      v74->__r_.__value_.__r.__words[2] = v89.__r_.__value_.__r.__words[2];
      *&v74->__r_.__value_.__l.__data_ = v75;
      v76 = v74;
    }

    v74[1].__r_.__value_.__r.__words[0] = 0;
    v74[1].__r_.__value_.__l.__size_ = 0;
    v74[1].__r_.__value_.__r.__words[2] = 0;
    v74[2].__r_.__value_.__r.__words[0] = v61;
    v74[2].__r_.__value_.__l.__size_ = 0;
    v91.__r_.__value_.__l.__size_ = v76 + 64;
    std::vector<InputTranscoder::CTCSurfaceFormOutput>::__swap_out_circular_buffer(v12, buf);
  }

  v73 = *(v12 + 8);
  std::__split_buffer<InputTranscoder::CTCSurfaceFormOutput>::~__split_buffer(buf);
LABEL_94:
  *(v12 + 8) = v73;
  ++*v11;
LABEL_95:
  ++*a4;
  if (*v11 >= *(a1 + 236))
  {
    *v8 = 1;
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  v80 = *MEMORY[0x277D85DE8];
}

void sub_254C476A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  *(v45 + 8) = v44;
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::TouchTranscoderSessionImpl::extractCompletionsAndPrefixes(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = a3[1];
  v7 = a3[2];
  if (v8 >= v7)
  {
    v10 = (v8 - *a3) >> 6;
    if ((v10 + 1) >> 58)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - *a3;
    v12 = v11 >> 5;
    if (v11 >> 5 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v23 = a3;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::CTCSurfaceFormOutput>>(a3, v13);
    }

    v16 = v10 << 6;
    v20[0] = 0;
    v20[1] = v16;
    v21 = v16;
    v22 = 0;
    if (*(a4 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v16, *(a4 + 8), *(a4 + 16));
    }

    else
    {
      v17 = *(a4 + 8);
      *(v16 + 16) = *(a4 + 24);
      *v16 = v17;
    }

    if (*(a4 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((v16 + 24), *(a4 + 32), *(a4 + 40));
    }

    else
    {
      v18 = *(a4 + 32);
      *(v16 + 40) = *(a4 + 48);
      *(v16 + 24) = v18;
    }

    *(v16 + 48) = *(a4 + 56);
    v21 += 64;
    std::vector<InputTranscoder::CTCSurfaceFormOutput>::__swap_out_circular_buffer(a3, v20);
    v15 = a3[1];
    std::__split_buffer<InputTranscoder::CTCSurfaceFormOutput>::~__split_buffer(v20);
  }

  else
  {
    if (*(a4 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v8, *(a4 + 8), *(a4 + 16));
    }

    else
    {
      v9 = *(a4 + 8);
      *(v8 + 16) = *(a4 + 24);
      *v8 = v9;
    }

    if (*(a4 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((v8 + 24), *(a4 + 32), *(a4 + 40));
    }

    else
    {
      v14 = *(a4 + 32);
      *(v8 + 40) = *(a4 + 48);
      *(v8 + 24) = v14;
    }

    *(v8 + 48) = *(a4 + 56);
    v15 = v8 + 64;
    a3[1] = v15;
  }

  a3[1] = v15;
  if (*(a1 + 244))
  {
    v19 = *(**a4 + 56);

    v19();
  }
}

void sub_254C47978(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  std::__split_buffer<InputTranscoder::CTCSurfaceFormOutput>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void InputTranscoder::TouchTranscoderSessionImpl::enumerateKeyCandidatesForLastTouch(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[66];
  if (v2 == a1[65])
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 - 64);
    v3 = *(v2 - 56);
  }

  if (qword_28143BC50 != -1)
  {
    dispatch_once(&qword_28143BC50, &__block_literal_global_1);
  }

  v5 = _MergedGlobals_1;
  if (os_log_type_enabled(_MergedGlobals_1, OS_LOG_TYPE_DEBUG))
  {
    buf[0] = 136315650;
    *&buf[1] = "enumerateKeyCandidatesForLastTouch";
    v8 = 2048;
    v9 = v4;
    v10 = 2048;
    v11 = v3;
    _os_log_debug_impl(&dword_254C34000, v5, OS_LOG_TYPE_DEBUG, "%s: Point[x,y] - [%f,%f]", buf, 0x20u);
  }

  v6 = a1[83];
  operator new();
}

void sub_254C47C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<std::vector<InputTranscoder::KeyCandidateImpl> ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<InputTranscoder::CTCSurfaceFormOutput>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 6;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + (a2 << 6);
      while (v4 != v11)
      {
        v4 -= 64;
        std::__destroy_at[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput,0>(v4);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 6)
    {
      if (!(a2 >> 58))
      {
        v8 = v7 - v3;
        v9 = v8 >> 5;
        if (v8 >> 5 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFC0)
        {
          v10 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::CTCSurfaceFormOutput>>(a1, v10);
      }

      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v12 = v4 + (v6 << 6);
    do
    {
      *(v4 + 16) = 0uLL;
      *(v4 + 32) = 0uLL;
      *v4 = 0uLL;
      *(v4 + 48) = 0xFFEFFFFFFFFFFFFFLL;
      *(v4 + 56) = 0;
      v4 += 64;
    }

    while (v4 != v12);
    a1[1] = v12;
  }
}

void sub_254C47E34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<InputTranscoder::CTCSurfaceFormOutput>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void InputTranscoder::normalizeScore(uint64_t a1, uint64_t a2, float a3, float a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    v8 = a1 + 64;
    v9 = a1;
    if (a1 + 64 != a2)
    {
      v9 = a1;
      do
      {
        if (*(v9 + 48) < *(v8 + 48))
        {
          v9 = v8;
        }

        v8 += 64;
      }

      while (v8 != a2);
    }

    v10 = *(v9 + 48);
    v11 = 2.22044605e-16;
    v12 = a1;
    do
    {
      v13 = exp(*(v12 + 48) - v10);
      *(v12 + 48) = v13;
      v11 = v11 + v13;
      v12 += 64;
    }

    while (v12 != a2);
    do
    {
      v14 = *(v7 + 48) / v11;
      *(v7 + 48) = (powf(v14, a4) * a3);
      v7 += 64;
    }

    while (v7 != a2);
  }
}

BOOL InputTranscoder::CTCSurfaceFormOutputOrderByStringThenScore(double *a1, void **a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 1);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    return (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, v2) & 0x80u) != 0;
  }

  if (v4 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp(a1, a2, v5))
  {
    return v3[6] > *(v2 + 6);
  }

  else
  {
    return (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, v2) & 0x80u) != 0;
  }
}

BOOL InputTranscoder::CTCSurfaceFormOutputCompareByString(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

InputTranscoder::Path *InputTranscoder::Path::Path(InputTranscoder::Path *this, const InputTranscoder::Path *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<InputTranscoder::PathSample>::__init_with_size[abi:ne200100]<InputTranscoder::PathSample*,InputTranscoder::PathSample*>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 6);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  return this;
}

void sub_254C48098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<InputTranscoder::PathSample>::__init_with_size[abi:ne200100]<InputTranscoder::PathSample*,InputTranscoder::PathSample*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<InputTranscoder::PathSample>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C48114(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<InputTranscoder::PathSample>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::PathSample>>(a1, a2);
  }

  std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::PathSample>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void InputTranscoder::Path::~Path(InputTranscoder::Path *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

os_log_t ___ZN15InputTranscoderL6loggerEv_block_invoke_1()
{
  result = os_log_create("com.apple.InputTranscoder", "TouchTranscoderSessionImpl");
  _MergedGlobals_1 = result;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::CTCSurfaceFormOutput const&,InputTranscoder::CTCSurfaceFormOutput const&),InputTranscoder::CTCSurfaceFormOutput*,false>(uint64_t *a1, unint64_t a2, unsigned int (**a3)(__int128 *, __int128 *, __n128), uint64_t a4, char a5)
{
  v191 = *MEMORY[0x277D85DE8];
LABEL_2:
  v9 = a1;
  v178 = a1 - 8;
  v10 = a2;
  while (1)
  {
    v11 = (v10 - v9) >> 6;
    v12 = v11 - 2;
    a2 = v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        goto LABEL_256;
      }

      if (v11 == 2)
      {
        if (!(*a3)(v10 - 8, v9))
        {
          goto LABEL_256;
        }

        v87 = v9;
        v88 = (v10 - 8);
LABEL_255:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v87, v88);
        goto LABEL_256;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      v94 = (*a3)(v9 + 64, v9);
      v95 = (v10 - 8);
      v96 = (*a3)(v10 - 8, v9 + 64);
      if (v94)
      {
        if (v96)
        {
          v87 = v9;
        }

        else
        {
          v176 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v9, (v9 + 64));
          if (!(*a3)(v95, (v9 + 64), v176))
          {
            goto LABEL_256;
          }

          v87 = (v9 + 64);
        }

        v88 = (v10 - 8);
      }

      else
      {
        if (!v96)
        {
          goto LABEL_256;
        }

        v161 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((v9 + 64), v95);
        v93 = (*a3)((v9 + 64), v9, v161);
LABEL_232:
        if (!v93)
        {
          goto LABEL_256;
        }

        v88 = (v9 + 64);
        v87 = v9;
      }

      goto LABEL_255;
    }

    if (v11 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::CTCSurfaceFormOutput const&,InputTranscoder::CTCSurfaceFormOutput const&),InputTranscoder::CTCSurfaceFormOutput*,0>(v9, (v9 + 64), (v9 + 128), v10 - 4, a3);
      goto LABEL_256;
    }

    if (v11 == 5)
    {
      break;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v9 != v10)
        {
          v97 = v9 + 64;
          if ((v9 + 64) != v10)
          {
            v98 = 0;
            v99 = v9;
            do
            {
              v100 = v97;
              if ((*a3)(v97, v99))
              {
                v101 = *v100;
                v181 = *(v100 + 16);
                *v180 = v101;
                *(v100 + 8) = 0;
                *(v100 + 16) = 0;
                *v100 = 0;
                __p = *(v99 + 88);
                v183 = *(v99 + 104);
                *(v99 + 96) = 0;
                *(v99 + 104) = 0;
                *(v99 + 88) = 0;
                v184 = *(v99 + 112);
                v102 = v98;
                while (1)
                {
                  v103 = v9 + v102;
                  if (*(v9 + v102 + 87) < 0)
                  {
                    operator delete(*(v103 + 64));
                  }

                  *(v103 + 64) = *v103;
                  *(v103 + 80) = *(v103 + 16);
                  *(v103 + 23) = 0;
                  *v103 = 0;
                  if (*(v103 + 111) < 0)
                  {
                    operator delete(*(v103 + 88));
                  }

                  v104 = v9 + v102;
                  *(v103 + 88) = *(v9 + v102 + 24);
                  *(v103 + 104) = *(v9 + v102 + 40);
                  *(v104 + 47) = 0;
                  *(v104 + 24) = 0;
                  *(v104 + 112) = *(v9 + v102 + 48);
                  if (!v102)
                  {
                    break;
                  }

                  v102 -= 64;
                  if (((*a3)(v180, v104 - 64) & 1) == 0)
                  {
                    v105 = v9 + v102 + 64;
                    goto LABEL_153;
                  }
                }

                v105 = v9;
LABEL_153:
                if (*(v105 + 23) < 0)
                {
                  operator delete(*v105);
                }

                v106 = *v180;
                *(v105 + 16) = v181;
                *v105 = v106;
                HIBYTE(v181) = 0;
                LOBYTE(v180[0]) = 0;
                if (*(v105 + 47) < 0)
                {
                  operator delete(*(v104 + 24));
                  v108 = SHIBYTE(v181);
                  v109 = __p;
                  *(v104 + 40) = v183;
                  *(v104 + 24) = v109;
                  HIBYTE(v183) = 0;
                  LOBYTE(__p) = 0;
                  *(v104 + 48) = v184;
                  if (v108 < 0)
                  {
                    operator delete(v180[0]);
                  }
                }

                else
                {
                  v107 = __p;
                  *(v104 + 40) = v183;
                  *(v104 + 24) = v107;
                  *(v104 + 48) = v184;
                }
              }

              v97 = v100 + 64;
              v98 += 64;
              v99 = v100;
            }

            while ((v100 + 64) != v10);
          }
        }
      }

      else if (v9 != v10)
      {
        v162 = v9 + 64;
        if ((v9 + 64) != v10)
        {
          v163 = (v9 + 112);
          do
          {
            v164 = v162;
            if ((*a3)(v162, v9))
            {
              v165 = *v164;
              v181 = *(v164 + 16);
              *v180 = v165;
              *(v164 + 8) = 0;
              *(v164 + 16) = 0;
              *v164 = 0;
              __p = *(v9 + 88);
              v183 = *(v9 + 104);
              *(v9 + 96) = 0;
              *(v9 + 104) = 0;
              *(v9 + 88) = 0;
              v184 = *(v9 + 112);
              v166 = v163;
              do
              {
                v167 = (v166 - 3);
                if (*(v166 - 25) < 0)
                {
                  operator delete(*v167);
                }

                *v167 = *(v166 - 7);
                *(v166 - 4) = *(v166 - 12);
                *(v166 - 89) = 0;
                *(v166 - 112) = 0;
                v168 = v166 - 3;
                if (*(v166 - 1) < 0)
                {
                  operator delete(*v168);
                }

                *v168 = *(v166 - 88);
                *(v166 - 1) = *(v166 - 9);
                *(v166 - 65) = 0;
                *(v166 - 88) = 0;
                *v166 = *(v166 - 4);
                v169 = (*a3)(v180, v166 - 11);
                v166 -= 4;
              }

              while ((v169 & 1) != 0);
              v170 = (v166 - 3);
              if (*(v166 - 25) < 0)
              {
                operator delete(*v170);
              }

              v171 = (v166 - 24);
              v172 = *v180;
              *(v166 - 4) = v181;
              *v170 = v172;
              HIBYTE(v181) = 0;
              LOBYTE(v180[0]) = 0;
              if (*(v166 - 1) < 0)
              {
                operator delete(*(v166 - 3));
                v174 = SHIBYTE(v181);
                v175 = __p;
                *(v166 - 1) = v183;
                *v171 = v175;
                HIBYTE(v183) = 0;
                LOBYTE(__p) = 0;
                *v166 = v184;
                if (v174 < 0)
                {
                  operator delete(v180[0]);
                }
              }

              else
              {
                v173 = __p;
                *(v166 - 1) = v183;
                *v171 = v173;
                *v166 = v184;
              }
            }

            v162 = v164 + 64;
            v163 += 4;
            v9 = v164;
          }

          while ((v164 + 64) != v10);
        }
      }

      goto LABEL_256;
    }

    if (!a4)
    {
      if (v9 != v10)
      {
        v110 = v12 >> 1;
        v111 = v12 >> 1;
        do
        {
          v112 = v111;
          if (v110 >= v111)
          {
            v113 = (2 * v111) | 1;
            v114 = v9 + (v113 << 6);
            if (2 * v111 + 2 < v11 && (*a3)(v9 + (v113 << 6), v114 + 64))
            {
              v114 += 64;
              v113 = 2 * v112 + 2;
            }

            v115 = v9 + (v112 << 6);
            v10 = a2;
            if (((*a3)(v114, v115) & 1) == 0)
            {
              v116 = *v115;
              v181 = *(v115 + 16);
              *v180 = v116;
              *(v115 + 8) = 0;
              *(v115 + 16) = 0;
              *v115 = 0;
              v117 = *(v115 + 24);
              v183 = *(v115 + 40);
              __p = v117;
              *(v115 + 32) = 0;
              *(v115 + 40) = 0;
              *(v115 + 24) = 0;
              v184 = *(v115 + 48);
              do
              {
                v118 = v114;
                if (*(v115 + 23) < 0)
                {
                  operator delete(*v115);
                }

                v119 = *v114;
                *(v115 + 16) = *(v114 + 16);
                *v115 = v119;
                *(v114 + 23) = 0;
                *v114 = 0;
                if (*(v115 + 47) < 0)
                {
                  operator delete(*(v115 + 24));
                }

                v120 = *(v114 + 24);
                *(v115 + 40) = *(v114 + 40);
                *(v115 + 24) = v120;
                *(v114 + 47) = 0;
                *(v114 + 24) = 0;
                *(v115 + 48) = *(v114 + 48);
                if (v110 < v113)
                {
                  break;
                }

                v121 = (2 * v113) | 1;
                v114 = v9 + (v121 << 6);
                v113 = 2 * v113 + 2;
                if (v113 >= v11)
                {
                  v113 = v121;
                }

                else if ((*a3)(v9 + (v121 << 6), v114 + 64))
                {
                  v114 += 64;
                }

                else
                {
                  v113 = v121;
                }

                v115 = v118;
                v10 = a2;
              }

              while (!(*a3)(v114, v180));
              if (*(v118 + 23) < 0)
              {
                operator delete(*v118);
              }

              v122 = *v180;
              *(v118 + 16) = v181;
              *v118 = v122;
              HIBYTE(v181) = 0;
              LOBYTE(v180[0]) = 0;
              if (*(v118 + 47) < 0)
              {
                operator delete(*(v118 + 24));
                v124 = SHIBYTE(v181);
                v125 = __p;
                *(v118 + 40) = v183;
                *(v118 + 24) = v125;
                HIBYTE(v183) = 0;
                LOBYTE(__p) = 0;
                *(v118 + 48) = v184;
                if (v124 < 0)
                {
                  operator delete(v180[0]);
                }
              }

              else
              {
                v123 = __p;
                *(v118 + 40) = v183;
                *(v118 + 24) = v123;
                *(v118 + 48) = v184;
              }
            }
          }

          v111 = v112 - 1;
        }

        while (v112);
        do
        {
          if (v11 >= 2)
          {
            v128 = v10;
            v129 = 0;
            v130 = *v9;
            v187 = *(v9 + 16);
            v186 = v130;
            *(v9 + 8) = 0;
            *(v9 + 16) = 0;
            *v9 = 0;
            v131 = *(v9 + 24);
            v189 = *(v9 + 40);
            v188 = v131;
            *(v9 + 32) = 0;
            *(v9 + 40) = 0;
            *(v9 + 24) = 0;
            v132 = v9;
            v190 = *(v9 + 48);
            do
            {
              v133 = v132 + (v129 << 6);
              v134 = v133 + 64;
              v135 = 2 * v129;
              v129 = (2 * v129) | 1;
              v136 = v135 + 2;
              if (v135 + 2 < v11)
              {
                v137 = v133 + 128;
                if ((*a3)(v133 + 64, v133 + 128))
                {
                  v134 = v137;
                  v129 = v136;
                }
              }

              if (*(v132 + 23) < 0)
              {
                operator delete(*v132);
              }

              v138 = *v134;
              *(v132 + 16) = *(v134 + 16);
              *v132 = v138;
              *(v134 + 23) = 0;
              *v134 = 0;
              if (*(v132 + 47) < 0)
              {
                operator delete(*(v132 + 24));
              }

              v139 = *(v134 + 24);
              *(v132 + 40) = *(v134 + 40);
              *(v132 + 24) = v139;
              *(v134 + 47) = 0;
              *(v134 + 24) = 0;
              *(v132 + 48) = *(v134 + 48);
              v132 = v134;
            }

            while (v129 <= ((v11 - 2) >> 1));
            v140 = (v10 - 8);
            v141 = *(v134 + 23);
            if (v134 == v10 - 8)
            {
              if (v141 < 0)
              {
                operator delete(*v134);
              }

              v159 = v186;
              *(v134 + 16) = v187;
              *v134 = v159;
              if (*(v134 + 47) < 0)
              {
                operator delete(*(v134 + 24));
              }

              v160 = v188;
              *(v134 + 40) = v189;
              *(v134 + 24) = v160;
              *(v134 + 48) = v190;
            }

            else
            {
              if (v141 < 0)
              {
                operator delete(*v134);
              }

              v142 = *v140;
              *(v134 + 16) = *(v10 - 6);
              *v134 = v142;
              *(v10 - 41) = 0;
              *(v10 - 64) = 0;
              if (*(v134 + 47) < 0)
              {
                operator delete(*(v134 + 24));
              }

              v143 = *(v10 - 5);
              *(v134 + 40) = *(v10 - 3);
              *(v134 + 24) = v143;
              *(v10 - 17) = 0;
              *(v10 - 40) = 0;
              *(v134 + 48) = *(v10 - 1);
              if (*(v10 - 41) < 0)
              {
                operator delete(*v140);
              }

              v144 = (v10 - 5);
              v145 = v186;
              *(v10 - 6) = v187;
              *v140 = v145;
              HIBYTE(v187) = 0;
              LOBYTE(v186) = 0;
              if (*(v10 - 17) < 0)
              {
                operator delete(*v144);
              }

              v146 = v188;
              *(v10 - 3) = v189;
              *v144 = v146;
              HIBYTE(v189) = 0;
              LOBYTE(v188) = 0;
              *(v10 - 1) = v190;
              v147 = (v134 + 64 - v9) >> 6;
              v148 = v147 < 2;
              v149 = v147 - 2;
              if (!v148)
              {
                v150 = v149 >> 1;
                v151 = v9 + (v149 >> 1 << 6);
                if ((*a3)(v151, v134))
                {
                  v152 = *v134;
                  v181 = *(v134 + 16);
                  *v180 = v152;
                  *(v134 + 8) = 0;
                  *(v134 + 16) = 0;
                  *v134 = 0;
                  v153 = *(v134 + 24);
                  v183 = *(v134 + 40);
                  __p = v153;
                  *(v134 + 32) = 0;
                  *(v134 + 40) = 0;
                  *(v134 + 24) = 0;
                  v184 = *(v134 + 48);
                  do
                  {
                    v154 = v151;
                    if (*(v134 + 23) < 0)
                    {
                      operator delete(*v134);
                    }

                    v155 = *v151;
                    *(v134 + 16) = *(v151 + 16);
                    *v134 = v155;
                    *(v151 + 23) = 0;
                    *v151 = 0;
                    if (*(v134 + 47) < 0)
                    {
                      operator delete(*(v134 + 24));
                    }

                    v156 = *(v151 + 24);
                    *(v134 + 40) = *(v151 + 40);
                    *(v134 + 24) = v156;
                    *(v151 + 47) = 0;
                    *(v151 + 24) = 0;
                    *(v134 + 48) = *(v151 + 48);
                    if (!v150)
                    {
                      break;
                    }

                    v150 = (v150 - 1) >> 1;
                    v151 = v9 + (v150 << 6);
                    v134 = v154;
                  }

                  while (((*a3)(v151, v180) & 1) != 0);
                  if (*(v154 + 23) < 0)
                  {
                    operator delete(*v154);
                  }

                  v157 = *v180;
                  *(v154 + 16) = v181;
                  *v154 = v157;
                  HIBYTE(v181) = 0;
                  LOBYTE(v180[0]) = 0;
                  if (*(v154 + 47) < 0)
                  {
                    operator delete(*(v154 + 24));
                    v126 = SHIBYTE(v181);
                    v127 = __p;
                    *(v154 + 40) = v183;
                    *(v154 + 24) = v127;
                    HIBYTE(v183) = 0;
                    LOBYTE(__p) = 0;
                    *(v154 + 48) = v184;
                    if (v126 < 0)
                    {
                      operator delete(v180[0]);
                    }
                  }

                  else
                  {
                    v158 = __p;
                    *(v154 + 40) = v183;
                    *(v154 + 24) = v158;
                    *(v154 + 48) = v184;
                  }
                }
              }
            }

            v10 = v128;
          }

          v10 -= 8;
          v148 = v11-- > 2;
        }

        while (v148);
      }

      goto LABEL_256;
    }

    v13 = v9 + (v11 >> 1 << 6);
    v14 = v10 - 8;
    v15 = *a3;
    if (v11 >= 0x81)
    {
      v16 = (v15)(v9 + (v11 >> 1 << 6), v9);
      v17 = (*a3)(v10 - 8, v13);
      if (v16)
      {
        if (v17)
        {
          v19 = v9;
        }

        else
        {
          v27 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v9, v13);
          if (!(*a3)(v10 - 4, v13, v27))
          {
            goto LABEL_29;
          }

          v19 = v13;
        }

        v24 = (v10 - 8);
      }

      else
      {
        if (!v17 || (v23 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v13, v10 - 4), !(*a3)(v13, v9, v23)))
        {
LABEL_29:
          v28 = (*a3)((v13 - 64), (v9 + 64), v18);
          v29 = (v10 - 16);
          v30 = (*a3)(a2 - 128, v13 - 64);
          if (v28)
          {
            if (v30)
            {
              v32 = (v9 + 64);
            }

            else
            {
              v36 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((v9 + 64), (v13 - 64));
              if (!(*a3)(v29, (v13 - 64), v36))
              {
                goto LABEL_43;
              }

              v32 = (v13 - 64);
            }

            v34 = v29;
          }

          else
          {
            if (!v30 || (v33 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((v13 - 64), v29), !(*a3)((v13 - 64), (v9 + 64), v33)))
            {
LABEL_43:
              v37 = (*a3)((v13 + 64), (v9 + 128), v31);
              v38 = (a2 - 192);
              v39 = (*a3)(a2 - 192, v13 + 64);
              if (v37)
              {
                if (v39)
                {
                  v41 = (v9 + 128);
                }

                else
                {
                  v44 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((v9 + 128), (v13 + 64));
                  if (!(*a3)(v38, (v13 + 64), v44))
                  {
                    goto LABEL_53;
                  }

                  v41 = (v13 + 64);
                }

                v43 = (a2 - 192);
              }

              else
              {
                if (!v39 || (v42 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((v13 + 64), v38), !(*a3)((v13 + 64), (v9 + 128), v42)))
                {
LABEL_53:
                  v45 = (*a3)(v13, (v13 - 64), v40);
                  v46 = (*a3)(v13 + 64, v13);
                  if (v45)
                  {
                    if (v46)
                    {
                      v47 = (v13 + 64);
                      v48 = (v13 - 64);
                    }

                    else
                    {
                      v50 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((v13 - 64), v13);
                      if (!(*a3)((v13 + 64), v13, v50))
                      {
LABEL_62:
                        v51 = *v9;
                        *&v186 = *(v9 + 8);
                        *(&v186 + 7) = *(v9 + 15);
                        v52 = *(v9 + 23);
                        *v9 = 0;
                        *(v9 + 8) = 0;
                        v53 = *(v9 + 24);
                        v185[0] = *(v9 + 32);
                        *(v185 + 7) = *(v9 + 39);
                        v54 = *(v9 + 47);
                        *(v9 + 32) = 0;
                        *(v9 + 40) = 0;
                        *(v9 + 16) = 0;
                        *(v9 + 24) = 0;
                        *v180 = *(v9 + 48);
                        v55 = *v13;
                        *(v9 + 16) = *(v13 + 16);
                        *v9 = v55;
                        v56 = *(v13 + 40);
                        *(v9 + 24) = *(v13 + 24);
                        *(v9 + 40) = v56;
                        *(v9 + 48) = *(v13 + 48);
                        *v13 = v51;
                        v57 = v186;
                        *(v13 + 15) = *(&v186 + 7);
                        *(v13 + 8) = v57;
                        *(v13 + 23) = v52;
                        *(v13 + 24) = v53;
                        v58 = v185[0];
                        *(v13 + 39) = *(v185 + 7);
                        *(v13 + 32) = v58;
                        *(v13 + 47) = v54;
                        *(v13 + 48) = *v180;
                        goto LABEL_63;
                      }

                      v47 = (v13 + 64);
                      v48 = v13;
                    }
                  }

                  else
                  {
                    if (!v46)
                    {
                      goto LABEL_62;
                    }

                    v49 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v13, (v13 + 64));
                    if (!(*a3)(v13, (v13 - 64), v49))
                    {
                      goto LABEL_62;
                    }

                    v48 = (v13 - 64);
                    v47 = v13;
                  }

                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v48, v47);
                  goto LABEL_62;
                }

                v41 = (v9 + 128);
                v43 = (v13 + 64);
              }

              v40 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v41, v43);
              goto LABEL_53;
            }

            v32 = (v9 + 64);
            v34 = (v13 - 64);
          }

          v31 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v32, v34);
          goto LABEL_43;
        }

        v19 = v9;
        v24 = v13;
      }

      v18 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v19, v24);
      goto LABEL_29;
    }

    v20 = (v15)(v9, v9 + (v11 >> 1 << 6));
    v21 = (*a3)(v10 - 8, v9);
    if (v20)
    {
      if (v21)
      {
        v22 = v13;
LABEL_37:
        v26 = (v10 - 8);
        goto LABEL_38;
      }

      v35 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v13, v9);
      if ((*a3)(v10 - 4, v9, v35))
      {
        v22 = v9;
        goto LABEL_37;
      }
    }

    else if (v21)
    {
      v25 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v9, v10 - 4);
      if ((*a3)(v9, v13, v25))
      {
        v22 = v13;
        v26 = v9;
LABEL_38:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v22, v26);
      }
    }

LABEL_63:
    --a4;
    if ((a5 & 1) == 0 && ((*a3)(v178, v9) & 1) == 0)
    {
      v74 = *v9;
      v181 = *(v9 + 16);
      *v180 = v74;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v75 = *(v9 + 24);
      v183 = *(v9 + 40);
      __p = v75;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0;
      v184 = *(v9 + 48);
      if ((*a3)(v180, v14))
      {
        a1 = v9;
        do
        {
          a1 += 8;
        }

        while (((*a3)(v180, a1) & 1) == 0);
      }

      else
      {
        v76 = (v9 + 64);
        do
        {
          a1 = v76;
          if (v76 >= a2)
          {
            break;
          }

          v77 = (*a3)(v180, v76);
          v76 = a1 + 8;
        }

        while (!v77);
      }

      v78 = a2;
      if (a1 < a2)
      {
        v78 = a2;
        do
        {
          v78 -= 4;
        }

        while (((*a3)(v180, v78) & 1) != 0);
      }

      while (a1 < v78)
      {
        v79 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(a1, v78);
        do
        {
          a1 += 8;
        }

        while (!(*a3)(v180, a1, v79));
        do
        {
          v78 -= 4;
        }

        while (((*a3)(v180, v78) & 1) != 0);
      }

      v80 = (a1 - 8);
      if (a1 - 8 != v9)
      {
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v81 = *v80;
        *(v9 + 16) = *(a1 - 6);
        *v9 = v81;
        *(a1 - 41) = 0;
        *(a1 - 64) = 0;
        if (*(v9 + 47) < 0)
        {
          operator delete(*(v9 + 24));
        }

        v82 = *(a1 - 5);
        *(v9 + 40) = *(a1 - 3);
        *(v9 + 24) = v82;
        *(a1 - 17) = 0;
        *(a1 - 40) = 0;
        *(v9 + 48) = *(a1 - 1);
      }

      if (*(a1 - 41) < 0)
      {
        operator delete(*v80);
      }

      v83 = *v180;
      *(a1 - 6) = v181;
      *v80 = v83;
      HIBYTE(v181) = 0;
      LOBYTE(v180[0]) = 0;
      v84 = (a1 - 5);
      if (*(a1 - 17) < 0)
      {
        operator delete(*v84);
      }

      v85 = __p;
      *(a1 - 3) = v183;
      *v84 = v85;
      HIBYTE(v183) = 0;
      LOBYTE(__p) = 0;
      *(a1 - 1) = v184;
      if (SHIBYTE(v183) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v181) < 0)
      {
        operator delete(v180[0]);
      }

      goto LABEL_128;
    }

    v59 = 0;
    v60 = *v9;
    v181 = *(v9 + 16);
    *v180 = v60;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = 0;
    v61 = *(v9 + 24);
    v183 = *(v9 + 40);
    __p = v61;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 24) = 0;
    v184 = *(v9 + 48);
    do
    {
      v62 = (*a3)(v9 + v59 + 64, v180);
      v59 += 64;
    }

    while ((v62 & 1) != 0);
    v63 = v9 + v59;
    v64 = a2;
    if (v59 == 64)
    {
      v64 = a2;
      do
      {
        if (v63 >= v64)
        {
          break;
        }

        v64 -= 4;
      }

      while (((*a3)(v64, v180) & 1) == 0);
    }

    else
    {
      do
      {
        v64 -= 4;
      }

      while (!(*a3)(v64, v180));
    }

    a1 = (v9 + v59);
    if (v63 < v64)
    {
      v65 = v64;
      do
      {
        v66 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(a1, v65);
        do
        {
          a1 += 8;
        }

        while (((*a3)(a1, v180, v66) & 1) != 0);
        do
        {
          v65 -= 4;
        }

        while (!(*a3)(v65, v180));
      }

      while (a1 < v65);
    }

    v67 = (a1 - 8);
    if (a1 - 8 != v9)
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v68 = *v67;
      *(v9 + 16) = *(a1 - 6);
      *v9 = v68;
      *(a1 - 41) = 0;
      *(a1 - 64) = 0;
      if (*(v9 + 47) < 0)
      {
        operator delete(*(v9 + 24));
      }

      v69 = *(a1 - 5);
      *(v9 + 40) = *(a1 - 3);
      *(v9 + 24) = v69;
      *(a1 - 17) = 0;
      *(a1 - 40) = 0;
      *(v9 + 48) = *(a1 - 1);
    }

    if (*(a1 - 41) < 0)
    {
      operator delete(*v67);
    }

    v70 = *v180;
    *(a1 - 6) = v181;
    *v67 = v70;
    HIBYTE(v181) = 0;
    LOBYTE(v180[0]) = 0;
    v71 = (a1 - 5);
    if (*(a1 - 17) < 0)
    {
      operator delete(*v71);
    }

    v72 = __p;
    *(a1 - 3) = v183;
    *v71 = v72;
    HIBYTE(v183) = 0;
    LOBYTE(__p) = 0;
    *(a1 - 1) = v184;
    if (SHIBYTE(v183) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v181) < 0)
    {
      operator delete(v180[0]);
    }

    if (v63 < v64)
    {
      goto LABEL_98;
    }

    v73 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::CTCSurfaceFormOutput const&,InputTranscoder::CTCSurfaceFormOutput const&),InputTranscoder::CTCSurfaceFormOutput*>(v9, (a1 - 8), a3);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::CTCSurfaceFormOutput const&,InputTranscoder::CTCSurfaceFormOutput const&),InputTranscoder::CTCSurfaceFormOutput*>(a1, a2, a3))
    {
      if (v73)
      {
        goto LABEL_2;
      }

LABEL_98:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::CTCSurfaceFormOutput const&,InputTranscoder::CTCSurfaceFormOutput const&),InputTranscoder::CTCSurfaceFormOutput*,false>(v9, a1 - 8, a3, a4, a5 & 1);
LABEL_128:
      a5 = 0;
      goto LABEL_2;
    }

    v10 = a1 - 8;
    if (v73)
    {
      goto LABEL_256;
    }
  }

  v89 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::CTCSurfaceFormOutput const&,InputTranscoder::CTCSurfaceFormOutput const&),InputTranscoder::CTCSurfaceFormOutput*,0>(v9, (v9 + 64), (v9 + 128), (v9 + 192), a3);
  if ((*a3)(v10 - 8, v9 + 192, v89))
  {
    v90 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((v9 + 192), v10 - 4);
    if ((*a3)((v9 + 192), (v9 + 128), v90))
    {
      v91 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((v9 + 128), (v9 + 192));
      if ((*a3)((v9 + 128), (v9 + 64), v91))
      {
        v92 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((v9 + 64), (v9 + 128));
        v93 = (*a3)((v9 + 64), v9, v92);
        goto LABEL_232;
      }
    }
  }

LABEL_256:
  v177 = *MEMORY[0x277D85DE8];
}

void sub_254C4954C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  InputTranscoder::CTCConfiguration::~CTCConfiguration(va);
  _Unwind_Resume(a1);
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(uint64_t *a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  *v15 = a1[1];
  *&v15[7] = *(a1 + 15);
  v5 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  v7 = a1 + 3;
  v6 = a1[3];
  *a1 = 0;
  *v14 = a1[4];
  *&v14[7] = *(a1 + 39);
  v8 = *(a1 + 47);
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
  v13 = *(a1 + 3);
  v9 = *a2;
  a1[2] = *(a2 + 2);
  *a1 = v9;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v7);
  }

  v10 = *(a2 + 24);
  v7[2] = *(a2 + 5);
  *v7 = v10;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(a1 + 3) = a2[3];
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v4;
  *(a2 + 1) = *v15;
  *(a2 + 15) = *&v15[7];
  *(a2 + 23) = v5;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 3));
  }

  *(a2 + 3) = v6;
  *(a2 + 4) = *v14;
  *(a2 + 39) = *&v14[7];
  *(a2 + 47) = v8;
  result = v13;
  a2[3] = v13;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::CTCSurfaceFormOutput const&,InputTranscoder::CTCSurfaceFormOutput const&),InputTranscoder::CTCSurfaceFormOutput*,0>(uint64_t *a1, __int128 *a2, __int128 *a3, __int128 *a4, unsigned int (**a5)(__int128 *, __int128 *, __n128))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v13 = a1;
LABEL_9:
      v15 = a3;
      goto LABEL_10;
    }

    v16 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(a1, a2);
    if ((*a5)(a3, a2, v16))
    {
      v13 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(a2, a3);
    if ((*a5)(a2, a1, v14))
    {
      v13 = a1;
      v15 = a2;
LABEL_10:
      v12 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v13, v15);
    }
  }

  if ((*a5)(a4, a3, v12))
  {
    v18 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(a3, a4);
    if ((*a5)(a3, a2, v18))
    {
      v19 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(a2, a3);
      if ((*a5)(a2, a1, v19))
      {

        *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(a1, a2).n128_u64[0];
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::CTCSurfaceFormOutput const&,InputTranscoder::CTCSurfaceFormOutput const&),InputTranscoder::CTCSurfaceFormOutput*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *, __n128))
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = (a2 - 64);
        v16 = (*a3)(a1 + 64, a1);
        v17 = (*a3)(v15, a1 + 64);
        if (v16)
        {
          if (v17)
          {
            v7 = a1;
          }

          else
          {
            v26 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(a1, (a1 + 64));
            if (!(*a3)(v15, (a1 + 64), v26))
            {
              return 1;
            }

            v7 = (a1 + 64);
          }

          v8 = v15;
          goto LABEL_30;
        }

        if (!v17)
        {
          return 1;
        }

        v13 = (a1 + 64);
        v14 = v15;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::CTCSurfaceFormOutput const&,InputTranscoder::CTCSurfaceFormOutput const&),InputTranscoder::CTCSurfaceFormOutput*,0>(a1, (a1 + 64), (a1 + 128), (a2 - 64), a3);
        return 1;
      case 5:
        v9 = (a2 - 64);
        v10 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(InputTranscoder::CTCSurfaceFormOutput const&,InputTranscoder::CTCSurfaceFormOutput const&),InputTranscoder::CTCSurfaceFormOutput*,0>(a1, (a1 + 64), (a1 + 128), (a1 + 192), a3);
        if (!(*a3)(v9, a1 + 192, v10))
        {
          return 1;
        }

        v11 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((a1 + 192), v9);
        if (!(*a3)((a1 + 192), (a1 + 128), v11))
        {
          return 1;
        }

        v12 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((a1 + 128), (a1 + 192));
        if (!(*a3)((a1 + 128), (a1 + 64), v12))
        {
          return 1;
        }

        v13 = (a1 + 64);
        v14 = (a1 + 128);
        break;
      default:
        goto LABEL_16;
    }

    v23 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v13, v14);
    if ((*a3)((a1 + 64), a1, v23))
    {
      v8 = (a1 + 64);
      v7 = a1;
      goto LABEL_30;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 64, a1))
    {
      v7 = a1;
      v8 = (a2 - 64);
LABEL_30:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v7, v8);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v18 = (a1 + 128);
  v19 = (*a3)(a1 + 64, a1);
  v20 = (*a3)(a1 + 128, a1 + 64);
  if (v19)
  {
    if (v20)
    {
      v22 = a1;
    }

    else
    {
      v27 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(a1, (a1 + 64));
      if (!(*a3)((a1 + 128), (a1 + 64), v27))
      {
        goto LABEL_35;
      }

      v22 = (a1 + 64);
    }

    v25 = (a1 + 128);
    goto LABEL_34;
  }

  if (v20)
  {
    v24 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>((a1 + 64), (a1 + 128));
    if ((*a3)((a1 + 64), a1, v24))
    {
      v25 = (a1 + 64);
      v22 = a1;
LABEL_34:
      v21 = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *&,InputTranscoder::CTCSurfaceFormOutput *&>(v22, v25);
    }
  }

LABEL_35:
  v28 = a1 + 192;
  if (a1 + 192 == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    if ((*a3)(v28, v18, v21))
    {
      *__p = *v28;
      v39 = *(v28 + 16);
      *v28 = 0;
      *(v28 + 8) = 0;
      v31 = *(v28 + 24);
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      v40 = v31;
      v41 = *(v28 + 40);
      *(v28 + 32) = 0;
      *(v28 + 40) = 0;
      v32 = v29;
      v42 = *(v28 + 48);
      while (1)
      {
        v33 = a1 + v32;
        if (*(a1 + v32 + 215) < 0)
        {
          operator delete(*(v33 + 192));
        }

        *(v33 + 192) = *(v33 + 128);
        *(v33 + 208) = *(v33 + 144);
        *(v33 + 151) = 0;
        *(v33 + 128) = 0;
        if (*(v33 + 239) < 0)
        {
          operator delete(*(v33 + 216));
        }

        v34 = a1 + v32;
        *(v33 + 216) = *(a1 + v32 + 152);
        *(v33 + 232) = *(a1 + v32 + 168);
        *(v34 + 175) = 0;
        *(v34 + 152) = 0;
        *(v34 + 240) = *(a1 + v32 + 176);
        if (v32 == -128)
        {
          break;
        }

        v32 -= 64;
        if (((*a3)(__p, v34 + 64) & 1) == 0)
        {
          v35 = a1 + v32 + 192;
          goto LABEL_47;
        }
      }

      v35 = a1;
LABEL_47:
      if (*(v35 + 23) < 0)
      {
        operator delete(*v35);
      }

      v36 = 0;
      *v35 = *__p;
      *(v35 + 16) = v39;
      HIBYTE(v39) = 0;
      LOBYTE(__p[0]) = 0;
      if (*(v35 + 47) < 0)
      {
        operator delete(*(v34 + 152));
        v36 = v39 < 0;
      }

      *(v34 + 152) = v40;
      *(v34 + 168) = v41;
      HIBYTE(v41) = 0;
      LOBYTE(v40) = 0;
      v21 = v42;
      *(v34 + 176) = v42;
      if (v36)
      {
        operator delete(__p[0]);
      }

      if (++v30 == 8)
      {
        return v28 + 64 == a2;
      }
    }

    v18 = v28;
    v29 += 64;
    v28 += 64;
    if (v28 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C49E00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::unique_ptr<InputTranscoder::CandidateImpl>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<InputTranscoder::CandidateImpl>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<InputTranscoder::CTCSurfaceFormOutput>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
        std::__destroy_at[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void InputTranscoder::InputProcessor::~InputProcessor(InputTranscoder::InputProcessor *this)
{
  v4 = (this + 56);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>>(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 8) = v6;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 8) = 0;
      v7 = *(v5 + 32);
      *(a3 + 48) = *(v5 + 48);
      *(a3 + 32) = v7;
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      *(v5 + 32) = 0;
      *(a3 + 56) = *(v5 + 56);
      v5 += 72;
      a3 += 72;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>,0>(v4);
      v4 += 72;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::__destroy_at[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>,0>(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>::~pair(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::vector<InputTranscoder::KeyCandidateImpl>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<InputTranscoder::KeyCandidateImpl>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<InputTranscoder::KeyCandidateImpl>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<InputTranscoder::CTCSurfaceFormOutput>::__insert_with_size[abi:ne200100]<std::__wrap_iter<InputTranscoder::CTCSurfaceFormOutput*>,std::__wrap_iter<InputTranscoder::CTCSurfaceFormOutput*>>(uint64_t *a1, std::string *a2, std::string *a3, std::string *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 6)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 6);
    if (v12 >> 58)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 5 > v12)
    {
      v12 = v14 >> 5;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFC0)
    {
      v15 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v59 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<InputTranscoder::CTCSurfaceFormOutput>>(a1, v15);
    }

    v29 = 0;
    v30 = v13 >> 6 << 6;
    v55 = 0;
    v56 = v30;
    v57 = v30;
    v58 = 0;
    v31 = a5 << 6;
    v32 = v30 + (a5 << 6);
    do
    {
      v33 = (v30 + v29);
      v34 = a3 + v29;
      if (SHIBYTE(a3->__r_.__value_.__r.__words[v29 / 8 + 2]) < 0)
      {
        std::string::__init_copy_ctor_external(v33, *v34, *(v34 + 1));
      }

      else
      {
        v35 = *v34;
        v33->__r_.__value_.__r.__words[2] = *(v34 + 2);
        *&v33->__r_.__value_.__l.__data_ = v35;
      }

      v36 = (v30 + v29);
      v37 = a3 + v29;
      if (SHIBYTE(a3[1].__r_.__value_.__r.__words[v29 / 8 + 2]) < 0)
      {
        std::string::__init_copy_ctor_external(v36 + 1, *(v37 + 3), *(v37 + 4));
      }

      else
      {
        v38 = *(v37 + 24);
        v36[1].__r_.__value_.__r.__words[2] = *(v37 + 5);
        *&v36[1].__r_.__value_.__l.__data_ = v38;
      }

      *(v30 + v29 + 48) = *(&a3[2].__r_.__value_.__l.__data_ + v29);
      v29 += 64;
    }

    while (v31 != v29);
    v39 = v56;
    v40 = a1[1];
    v41 = a2;
    if (v40 != a2)
    {
      v42 = a2;
      v43 = v32;
      do
      {
        v44 = *&v42->__r_.__value_.__l.__data_;
        *(v43 + 16) = *(&v42->__r_.__value_.__l + 2);
        *v43 = v44;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v45 = *&v42[1].__r_.__value_.__l.__data_;
        *(v43 + 40) = *(&v42[1].__r_.__value_.__l + 2);
        *(v43 + 24) = v45;
        v42[1].__r_.__value_.__l.__size_ = 0;
        v42[1].__r_.__value_.__r.__words[2] = 0;
        v42[1].__r_.__value_.__r.__words[0] = 0;
        *(v43 + 48) = *&v42[2].__r_.__value_.__l.__data_;
        v42 = (v42 + 64);
        v43 += 64;
      }

      while (v42 != v40);
      v46 = a2;
      do
      {
        std::__destroy_at[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput,0>(v46);
        v46 += 64;
      }

      while (v46 != v40);
      v41 = a1[1];
    }

    v47 = v32 + v41 - a2;
    a1[1] = a2;
    v48 = *a1;
    v49 = v39 + *a1 - a2;
    if (*a1 != a2)
    {
      v50 = *a1;
      v51 = v49;
      do
      {
        v52 = *v50;
        *(v51 + 16) = *(v50 + 16);
        *v51 = v52;
        *(v50 + 8) = 0;
        *(v50 + 16) = 0;
        *v50 = 0;
        v53 = *(v50 + 24);
        *(v51 + 40) = *(v50 + 40);
        *(v51 + 24) = v53;
        *(v50 + 32) = 0;
        *(v50 + 40) = 0;
        *(v50 + 24) = 0;
        *(v51 + 48) = *(v50 + 48);
        v50 += 64;
        v51 += 64;
      }

      while (v50 != a2);
      do
      {
        std::__destroy_at[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput,0>(v48);
        v48 += 64;
      }

      while (v48 != a2);
      v48 = *a1;
    }

    *a1 = v49;
    a1[1] = v47;
    v54 = a1[2];
    a1[2] = v58;
    v57 = v48;
    v58 = v54;
    v55 = v48;
    v56 = v48;
    std::__split_buffer<InputTranscoder::CTCSurfaceFormOutput>::~__split_buffer(&v55);
    return;
  }

  v16 = (v10 - a2) >> 6;
  if (v16 >= a5)
  {
    std::vector<InputTranscoder::CTCSurfaceFormOutput>::__move_range(a1, a2, a1[1], a2 + 64 * a5);
    v28 = (a3 + 64 * a5);
    v27 = a3;
    goto LABEL_25;
  }

  v18 = (a3 + v10 - a2);
  v19 = a1[1];
  if (v18 != a4)
  {
    v20 = 0;
    do
    {
      v21 = v18 + v20;
      v22 = (v10 + v20);
      if (SHIBYTE(v18->__r_.__value_.__r.__words[v20 / 8 + 2]) < 0)
      {
        std::string::__init_copy_ctor_external(v22, *v21, *(v21 + 1));
      }

      else
      {
        v23 = *v21;
        v22->__r_.__value_.__r.__words[2] = *(v21 + 2);
        *&v22->__r_.__value_.__l.__data_ = v23;
      }

      v24 = (v10 + v20);
      v25 = v18 + v20;
      if (SHIBYTE(v18[1].__r_.__value_.__r.__words[v20 / 8 + 2]) < 0)
      {
        std::string::__init_copy_ctor_external(v24 + 1, *(v25 + 3), *(v25 + 4));
      }

      else
      {
        v26 = *(v25 + 24);
        v24[1].__r_.__value_.__r.__words[2] = *(v25 + 5);
        *&v24[1].__r_.__value_.__l.__data_ = v26;
      }

      *(v10 + v20 + 48) = *(&v18[2].__r_.__value_.__l.__data_ + v20);
      v20 += 64;
    }

    while ((v18 + v20) != a4);
    v19 = v10 + v20;
  }

  a1[1] = v19;
  if (v16 >= 1)
  {
    std::vector<InputTranscoder::CTCSurfaceFormOutput>::__move_range(a1, a2, v10, a2 + 64 * a5);
    v27 = a3;
    v28 = v18;
LABEL_25:

    std::__copy_impl::operator()[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *,InputTranscoder::CTCSurfaceFormOutput *,InputTranscoder::CTCSurfaceFormOutput *>(v27, v28, a2);
  }
}

__n128 std::vector<InputTranscoder::CTCSurfaceFormOutput>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = (a2 + v4 - a4);
    v7 = *(a1 + 8);
    do
    {
      v8 = *v6;
      *(v7 + 16) = *(v6 + 2);
      *v7 = v8;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v9 = *(v6 + 24);
      *(v7 + 40) = *(v6 + 5);
      *(v7 + 24) = v9;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      result = v6[3];
      *(v7 + 48) = result;
      v6 += 4;
      v7 += 64;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v11 = 0;
    v12 = a4 - v4;
    do
    {
      v13 = v4 + v11;
      v14 = (v4 + v11 - 64);
      if (*(v4 + v11 - 41) < 0)
      {
        operator delete(*v14);
      }

      v15 = (v5 + v11 - 64);
      v16 = *v15;
      *(v4 + v11 - 48) = *(v5 + v11 - 48);
      *v14 = v16;
      *(v5 + v11 - 41) = 0;
      *v15 = 0;
      v17 = (v13 - 40);
      if (*(v13 - 17) < 0)
      {
        operator delete(*v17);
      }

      v18 = v5 + v11;
      v19 = *(v5 + v11 - 40);
      *(v13 - 24) = *(v5 + v11 - 24);
      *v17 = v19;
      *(v18 - 17) = 0;
      *(v18 - 40) = 0;
      result = *(v5 + v11 - 16);
      *(v4 + v11 - 16) = result;
      v11 -= 64;
    }

    while (v12 != v11);
  }

  return result;
}

__n128 std::__copy_impl::operator()[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput *,InputTranscoder::CTCSurfaceFormOutput *,InputTranscoder::CTCSurfaceFormOutput *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      result = *&v5[2].__r_.__value_.__l.__data_;
      *&this[2].__r_.__value_.__l.__data_ = result;
      v5 = (v5 + 64);
      this = (this + 64);
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::addCandidateErrorType(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::addCandidateErrorType(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0>,ITAutocorrectionOperations ()(InputTranscoder::KeyboardLayout &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2867139C0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::addCandidateErrorType(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::addCandidateErrorType(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0>,ITAutocorrectionOperations ()(InputTranscoder::KeyboardLayout &)>::~__func(uint64_t a1)
{
  *a1 = &unk_2867139C0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C28FE0);
}

void sub_254C4A900(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::addCandidateErrorType(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::addCandidateErrorType(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0>,ITAutocorrectionOperations ()(InputTranscoder::KeyboardLayout &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867139C0;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v6;
  }
}

void sub_254C4A9C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::addCandidateErrorType(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::addCandidateErrorType(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0>,ITAutocorrectionOperations ()(InputTranscoder::KeyboardLayout &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput,0>(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::addCandidateErrorType(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::addCandidateErrorType(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0>,ITAutocorrectionOperations ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<ITAutocorrectionOperations ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<std::__bind<CGPoint (&)(CGPoint,InputTranscoder::KeyboardLayout &),CGPoint&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<CGPoint (&)(CGPoint,InputTranscoder::KeyboardLayout &),CGPoint&,std::placeholders::__ph<1> const&>>,CGPoint ()(InputTranscoder::KeyboardLayout &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286713A50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<CGPoint (&)(CGPoint,InputTranscoder::KeyboardLayout &),CGPoint&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<CGPoint (&)(CGPoint,InputTranscoder::KeyboardLayout &),CGPoint&,std::placeholders::__ph<1> const&>>,CGPoint ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<CGPoint ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0>,double ()(InputTranscoder::KeyboardLayout &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286713B10;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0>,double ()(InputTranscoder::KeyboardLayout &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286713B10;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C28FE0);
}

void sub_254C4AE50(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0>,double ()(InputTranscoder::KeyboardLayout &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286713B10;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v6;
  }
}

void sub_254C4AF18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0>,double ()(InputTranscoder::KeyboardLayout &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput,0>(a1 + 8);

  operator delete(a1);
}

double std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0>,double ()(InputTranscoder::KeyboardLayout &)>::operator()(uint64_t a1, uint64_t a2)
{
  InputTranscoder::removeSpace(a1 + 8, &v8);
  InputTranscoder::removeUnwantedCharacters(&v8, &v9);
  InputTranscoder::removeSpace(a1 + 32, &v6);
  InputTranscoder::removeUnwantedCharacters(&v6, &__p);
  v4 = (*(*a2 + 48))(a2, &v9, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_254C4B054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::getEditDistancePenalty(std::string const&,std::string const&)::$_0>,double ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<double ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0>,std::string ()(InputTranscoder::KeyboardLayout &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286713BA0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0>,std::string ()(InputTranscoder::KeyboardLayout &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286713BA0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C28FE0);
}

void sub_254C4B36C(_Unwind_Exception *a1)
{
  InputTranscoder::CTCConfiguration::~CTCConfiguration(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0>,std::string ()(InputTranscoder::KeyboardLayout &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286713BA0;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v6;
  }

  *(a2 + 56) = *(a1 + 56);
  if (*(a1 + 95) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 72), *(a1 + 72), *(a1 + 80));
  }

  else
  {
    v7 = *(a1 + 72);
    *(a2 + 88) = *(a1 + 88);
    *(a2 + 72) = v7;
  }
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0>,std::string ()(InputTranscoder::KeyboardLayout &)>::destroy(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0>,std::string ()(InputTranscoder::KeyboardLayout &)>::destroy_deallocate(void **__p)
{
  if (*(__p + 95) < 0)
  {
    operator delete(__p[9]);
  }

  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::updateCondenseFormForCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,ITTypingMode)::$_0>,std::string ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::string ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::uniquifyEquivalentCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::uniquifyEquivalentCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0>,std::string ()(InputTranscoder::KeyboardLayout &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286713C20;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::uniquifyEquivalentCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::uniquifyEquivalentCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0>,std::string ()(InputTranscoder::KeyboardLayout &)>::~__func(uint64_t a1)
{
  *a1 = &unk_286713C20;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C28FE0);
}

void sub_254C4B808(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::uniquifyEquivalentCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::uniquifyEquivalentCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0>,std::string ()(InputTranscoder::KeyboardLayout &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286713C20;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v6;
  }

  result = *(a1 + 56);
  *(a2 + 56) = result;
  return result;
}

void sub_254C4B8D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::uniquifyEquivalentCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::uniquifyEquivalentCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0>,std::string ()(InputTranscoder::KeyboardLayout &)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:ne200100]<InputTranscoder::CTCSurfaceFormOutput,0>(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::uniquifyEquivalentCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::uniquifyEquivalentCandidates(std::vector<InputTranscoder::CTCSurfaceFormOutput> &)::$_0>,std::string ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::shouldRunBigram(std::string const&,std::string const&)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::shouldRunBigram(std::string const&,std::string const&)::$_0>,BOOL ()(InputTranscoder::CTCDecoder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286713CA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::shouldRunBigram(std::string const&,std::string const&)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::shouldRunBigram(std::string const&,std::string const&)::$_0>,BOOL ()(InputTranscoder::CTCDecoder &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(InputTranscoder::CTCDecoder &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidatesImpl(__CFDictionary const*,std::function<BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)> const&,std::string &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidatesImpl(__CFDictionary const*,std::function<BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)> const&,std::string &)::$_0>,void ()(InputTranscoder::CTCDecoder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286713D30;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidatesImpl(__CFDictionary const*,std::function<BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)> const&,std::string &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidatesImpl(__CFDictionary const*,std::function<BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)> const&,std::string &)::$_0>,void ()(InputTranscoder::CTCDecoder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = **(a1 + 24);
  v14 = InputTranscoder::filterPrefixes;
  if (*(v6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *v6, *(v6 + 1));
  }

  else
  {
    v8 = *v6;
    v15.__r_.__value_.__r.__words[2] = *(v6 + 2);
    *&v15.__r_.__value_.__l.__data_ = v8;
  }

  v13 = *(a1 + 40);
  v9 = *(a2 + 184);
  if (v9)
  {
    InputTranscoder::LMScorer::setContext(v9, (v4 + 688));
  }

  InputTranscoder::CTCDecoder::setLexiconPrefix(a2, (v4 + 712));
  v10 = **(a1 + 56);
  v11 = **(a1 + 64);
  v12 = **(a1 + 72);
  v17 = 0;
  operator new();
}

void sub_254C4BE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  std::__function::__value_func<void ()(InputTranscoder::PathTrie *,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> &,BOOL &)>::~__value_func[abi:ne200100](v30 - 120);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidatesImpl(__CFDictionary const*,std::function<BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)> const&,std::string &)::$_0,std::allocator<InputTranscoder::TouchTranscoderSessionImpl::enumerateCandidatesImpl(__CFDictionary const*,std::function<BOOL ()(std::unique_ptr<InputTranscoder::CandidateImpl>)> const&,std::string &)::$_0>,void ()(InputTranscoder::CTCDecoder &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void InputTranscoder::filterPrefixes(const void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v27 = 0uLL;
  v28 = 0;
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v5 = a1[1];
  }

  if (v5)
  {
    v6 = *a2;
    v7 = a2[1];
    if (*a2 == v7)
    {
LABEL_41:
      if (&v27 != a2)
      {
        std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__assign_with_size[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*>(&v27, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__init_with_size[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*>(a3, v27, *(&v27 + 1), 0x8E38E38E38E38E39 * ((*(&v27 + 1) - v27) >> 3));
    }

    else
    {
      v9 = 0;
LABEL_6:
      v10 = *(a1 + 23);
      if (v10 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = a1[1];
      }

      if (v10 >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      do
      {
        v13 = *(v6 + 31);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(v6 + 16);
        }

        if (v13 == v11)
        {
          v15 = v14 >= 0 ? (v6 + 8) : *(v6 + 8);
          if (!memcmp(v15, v12, v11))
          {
            std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::push_back[abi:ne200100](&v27, v6);
            v6 += 72;
            v9 = 1;
            if (v6 != v7)
            {
              goto LABEL_6;
            }

            goto LABEL_24;
          }
        }

        v6 += 72;
      }

      while (v6 != v7);
      if ((v9 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_24:
      v17 = *a2;
      v16 = a2[1];
      while (v17 != v16)
      {
        v18 = *(v17 + 31);
        if (v18 >= 0)
        {
          v19 = *(v17 + 31);
        }

        else
        {
          v19 = *(v17 + 16);
        }

        v20 = *(a1 + 23);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = a1[1];
        }

        if (v19 == v20)
        {
          if (v18 >= 0)
          {
            v22 = (v17 + 8);
          }

          else
          {
            v22 = *(v17 + 8);
          }

          v23 = *a1;
          if (v21 >= 0)
          {
            v24 = a1;
          }

          else
          {
            v24 = *a1;
          }

          if (memcmp(v22, v24, v19))
          {
            std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::push_back[abi:ne200100](&v27, v17);
          }
        }

        v17 += 72;
      }

      *a3 = v27;
      a3[2] = v28;
      v28 = 0;
      v27 = 0uLL;
    }
  }

  else
  {
    if (&v27 == a2)
    {
      v26 = 0;
      v25 = 0;
    }

    else
    {
      std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__assign_with_size[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*>(&v27, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
      v26 = *(&v27 + 1);
      v25 = v27;
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__init_with_size[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*>(a3, v25, v26, 0x8E38E38E38E38E39 * ((v26 - v25) >> 3));
  }

  v29 = &v27;
  std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__destroy_vector::operator()[abi:ne200100](&v29);
}

void sub_254C4C1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0x38E38E38E38E38ELL)
    {
      std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x1C71C71C71C71C7)
    {
      v10 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>>(v10);
    }

    v15 = 0;
    v16 = 72 * v7;
    v17 = 72 * v7;
    v18 = 0;
    std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>::pair[abi:ne200100](72 * v7, a2);
    v6 = 72 * v7 + 72;
    v11 = a1[1];
    v12 = v16 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    a1[1] = v6;
    v14 = a1[2];
    a1[2] = v18;
    v17 = v13;
    v18 = v14;
    v15 = v13;
    v16 = v13;
    result = std::__split_buffer<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::~__split_buffer(&v15);
  }

  else
  {
    result = std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>::pair[abi:ne200100](a1[1], a2);
    v6 = v4 + 72;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_254C4C310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__assign_with_size[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__vdeallocate(a1);
    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
      {
        v10 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 3) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> *,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> *,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> *>(a2, a3, v8);
    for (i = *(a1 + 8); i != v12; std::__destroy_at[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>,0>(i))
    {
      i -= 72;
    }

    *(a1 + 8) = v12;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> *,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> *,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> *>(a2, a2 + v11, v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*>(a2 + v11, a3, *(a1 + 8));
  }
}

void std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>>(a2);
  }

  std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>::pair[abi:ne200100](a3, v5);
      v5 += 72;
      a3 += 72;
      v6 -= 72;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_254C4C548(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 72;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>,0>(v4);
      v4 -= 72;
      v2 += 72;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void sub_254C4C604(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> *,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> *,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      std::string::operator=((a3 + 8), (v5 + 8));
      std::string::operator=((a3 + 32), (v5 + 32));
      *(a3 + 56) = *(v5 + 56);
      a3 += 72;
      v5 += 72;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__init_with_size[abi:ne200100]<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C4C6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,unsigned int &,unsigned int &,__CFDictionary const*,InputTranscoder::PathTrie *,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> &,BOOL &)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<unsigned int>,std::reference_wrapper<unsigned int>,__CFDictionary const*&,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>,std::allocator<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,unsigned int &,unsigned int &,__CFDictionary const*,InputTranscoder::PathTrie *,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> &,BOOL &)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<unsigned int>,std::reference_wrapper<unsigned int>,__CFDictionary const*&,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>>,void ()(InputTranscoder::PathTrie *,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> &,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286713DA0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,unsigned int &,unsigned int &,__CFDictionary const*,InputTranscoder::PathTrie *,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> &,BOOL &)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<unsigned int>,std::reference_wrapper<unsigned int>,__CFDictionary const*&,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>,std::allocator<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,unsigned int &,unsigned int &,__CFDictionary const*,InputTranscoder::PathTrie *,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> &,BOOL &)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<unsigned int>,std::reference_wrapper<unsigned int>,__CFDictionary const*&,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>>,void ()(InputTranscoder::PathTrie *,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> &,BOOL &)>::operator()(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = (a1[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1[4], a1[5], a1[6], a1[7], *a2, a3, a4);
}

uint64_t std::__function::__func<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,unsigned int &,unsigned int &,__CFDictionary const*,InputTranscoder::PathTrie *,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> &,BOOL &)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<unsigned int>,std::reference_wrapper<unsigned int>,__CFDictionary const*&,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>,std::allocator<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,unsigned int &,unsigned int &,__CFDictionary const*,InputTranscoder::PathTrie *,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> &,BOOL &)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<unsigned int>,std::reference_wrapper<unsigned int>,__CFDictionary const*&,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&,std::placeholders::__ph<3> const&>>,void ()(InputTranscoder::PathTrie *,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> &,BOOL &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>>,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> ()(std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286713E48;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void std::__function::__func<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>>,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> ()(std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_286713E48;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x259C28FE0);
}

void std::__function::__func<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>>,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> ()(std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_286713E48;
  *(a2 + 8) = v2;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v3 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v3;
  }
}

void std::__function::__func<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>>,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> ()(std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&)>::destroy(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void std::__function::__func<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>>,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> ()(std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&)>::destroy_deallocate(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> (*)(std::string const&,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&),std::string const&,std::placeholders::__ph<1> const&>>,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> ()(std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> const&)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> const&)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::placeholders::__ph<1> const&>>,void ()(std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286713F08;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> const&)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> const&)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::placeholders::__ph<1> const&>>,void ()(std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> const&)>::operator()(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[2];
  v6 = a1[1];
  v7 = (a1[3] + (v5 >> 1));
  if (v5)
  {
    return (*(*v7 + v6))();
  }

  else
  {
    return v6(v7, v3, v4, a2);
  }
}

uint64_t std::__function::__func<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> const&)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (InputTranscoder::TouchTranscoderSessionImpl::*)(std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::vector<InputTranscoder::CTCSurfaceFormOutput> &,std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> const&)const,InputTranscoder::TouchTranscoderSessionImpl*,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::reference_wrapper<std::vector<InputTranscoder::CTCSurfaceFormOutput>>,std::placeholders::__ph<1> const&>>,void ()(std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> ()(std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(InputTranscoder::PathTrie *,std::vector<std::pair<InputTranscoder::PathTrie *,InputTranscoder::CTCSurfaceFormOutput>> &,BOOL &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<std::__bind<std::vector<InputTranscoder::KeyCandidateImpl> (&)(CGPoint,InputTranscoder::KeyboardLayout &),CGPoint const&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::vector<InputTranscoder::KeyCandidateImpl> (&)(CGPoint,InputTranscoder::KeyboardLayout &),CGPoint const&,std::placeholders::__ph<1> const&>>,std::vector<InputTranscoder::KeyCandidateImpl> ()(InputTranscoder::KeyboardLayout &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286713FC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<std::vector<InputTranscoder::KeyCandidateImpl> (&)(CGPoint,InputTranscoder::KeyboardLayout &),CGPoint const&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<std::vector<InputTranscoder::KeyCandidateImpl> (&)(CGPoint,InputTranscoder::KeyboardLayout &),CGPoint const&,std::placeholders::__ph<1> const&>>,std::vector<InputTranscoder::KeyCandidateImpl> ()(InputTranscoder::KeyboardLayout &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::vector<InputTranscoder::KeyCandidateImpl> ()(InputTranscoder::KeyboardLayout &)>::~__value_func[abi:ne200100](uint64_t a1)
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

os_log_t ___nlpDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.InputTranscoder", "Default");
  _nlpDefaultLog::log = result;
  return result;
}

os_log_t ___nlpSignpostLog_block_invoke()
{
  result = os_log_create("com.apple.InputTranscoder", "InputTranscoderSignposts");
  _nlpSignpostLog::log = result;
  return result;
}

void InputTranscoder::getPrunedLogProbs(InputTranscoder *this@<X0>, const float *a2@<X1>, double a3@<D0>, uint64_t a4@<X2>, unsigned int a5@<W3>, unsigned int a6@<W4>, uint64_t *a7@<X8>)
{
  v7 = a6;
  v11 = a7;
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  if (a2)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = a5;
    do
    {
      if (v15 != v14)
      {
        v16 = v12 - v13;
        v17 = (v12 - v13) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          a7[1] = v12;
          a7[2] = 0;
          *a7 = v13;
          std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
        }

        if (-v13 >> 2 > v18)
        {
          v18 = -v13 >> 2;
        }

        if (-v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,float>>>(v19);
        }

        v20 = (v12 - v13) >> 3;
        v21 = (8 * v17);
        *v21 = v14;
        v21[1] = *(this + v14);
        v12 = 8 * v17 + 8;
        v22 = 8 * v17 - 8 * v20;
        memcpy(&v21[-2 * v20], v13, v16);
        if (v13)
        {
          operator delete(v13);
        }

        v13 = v22;
      }

      v14 = (v14 + 1);
    }

    while (a2 != v14);
    v11 = a7;
    a7[1] = v12;
    a7[2] = 0;
    v23 = v12;
    *a7 = v13;
    v7 = a6;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v23 = 0;
  }

  if (a3 >= 1.0 && a4 >= a2)
  {
    goto LABEL_70;
  }

  v25 = 8 * a4;
  v75 = InputTranscoder::pair_second_greater<unsigned long,double>;
  if (a4)
  {
    v73 = 8 * a4;
    if (a4 >= 2)
    {
      v26 = (a4 - 2) >> 1;
      v27 = (v13 + 8 * v26);
      v28 = v26 + 1;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned long,double> const&,std::pair<unsigned long,double> const&),std::__wrap_iter<std::pair<unsigned int,float> *>>(v13, &v75, a4, v27);
        v27 -= 2;
        --v28;
      }

      while (v28);
    }

    v29 = v7;
    v30 = (v73 + v13);
    if ((v73 + v13) != v23)
    {
      v31 = (v73 + v13);
      do
      {
        v32 = v31[1];
        v33 = *(v13 + 4);
        if (v32 > v33)
        {
          v34 = *v31;
          *v31 = *v13;
          *v13 = v34;
          v31[1] = v33;
          *(v13 + 4) = v32;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned long,double> const&,std::pair<unsigned long,double> const&),std::__wrap_iter<std::pair<unsigned int,float> *>>(v13, &v75, a4, v13);
        }

        v31 += 2;
      }

      while (v31 != v23);
    }

    v7 = v29;
    v25 = 8 * a4;
    if (a4 >= 2)
    {
      v35 = a4;
      do
      {
        v36 = 0;
        v37 = *v13;
        v38 = *(v13 + 4);
        v39 = v13;
        do
        {
          v40 = &v39[2 * v36 + 2];
          v41 = (2 * v36) | 1;
          v42 = 2 * v36 + 2;
          if (v42 < v35)
          {
            v43 = *(v40 + 4);
            v44 = *(v40 + 12);
            v40 += 8 * (v43 > v44);
            if (v43 > v44)
            {
              v41 = v42;
            }
          }

          *v39 = *v40;
          v39[1] = *(v40 + 4);
          v39 = v40;
          v36 = v41;
        }

        while (v41 <= ((v35 - 2) >> 1));
        if (v30 - 2 == v40)
        {
          *v40 = v37;
        }

        else
        {
          *v40 = *(v30 - 2);
          *(v40 + 4) = *(v30 - 1);
          *(v30 - 2) = v37;
          *(v30 - 1) = v38;
          v45 = (v40 - v13 + 8) >> 3;
          v46 = v45 < 2;
          v47 = v45 - 2;
          if (v46)
          {
            goto LABEL_47;
          }

          v48 = v47 >> 1;
          v49 = (v13 + 8 * v48);
          v50 = v49[1];
          v38 = *(v40 + 4);
          if (v50 <= v38)
          {
            goto LABEL_47;
          }

          v51 = *v40;
          do
          {
            v52 = v40;
            v40 = v49;
            *v52 = *v49;
            *(v52 + 4) = v50;
            if (!v48)
            {
              break;
            }

            v48 = (v48 - 1) >> 1;
            v49 = (v13 + 8 * v48);
            v50 = v49[1];
          }

          while (v50 > v38);
          *v40 = v51;
        }

        *(v40 + 4) = v38;
LABEL_47:
        v30 -= 2;
        v46 = v35-- <= 2;
      }

      while (!v46);
    }
  }

  if (a3 >= 1.0)
  {
    if (v25 + v13 == v12)
    {
      v23 = v12;
    }

    else
    {
      v23 = (v13 + v25);
      for (i = v12; i != v12; i += 2)
      {
        *v23 = *i;
        v23[1] = i[1];
        v23 += 2;
      }

      v11[1] = v23;
    }

LABEL_70:
    v62 = v7;
    if (v7 < a2)
    {
      v63 = v7;
      v64 = (v23 - v13) >> 3;
      v65 = v64 + 1;
      if ((v64 + 1) >> 61)
      {
        std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
      }

      if (-v13 >> 2 > v65)
      {
        v65 = -v13 >> 2;
      }

      if (-v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v66 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v66 = v65;
      }

      if (v66)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,float>>>(v66);
      }

      v67 = (v23 - v13) >> 3;
      v68 = (8 * v64);
      *v68 = v63;
      v68[1] = *(this + v62);
      v12 = 8 * v64 + 8;
      v69 = 8 * v64 - 8 * v67;
      memcpy(&v68[-2 * v67], v13, v23 - v13);
      *v11 = v69;
      v11[1] = v12;
      v11[2] = 0;
      if (v13)
      {
        operator delete(v13);
      }

      v13 = v69;
      v11[1] = v12;
    }

    else
    {
      v12 = v23;
    }

    goto LABEL_83;
  }

  v53 = 0;
  v54 = 0;
  if (a2 && a3 > 0.0 && a4)
  {
    v53 = 0;
    v54 = 0;
    v55 = 0.0;
    v56 = 1;
    do
    {
      v57 = (v13 + v53);
      v54 |= *(v13 + v53) == v7;
      v53 += 8;
      if (v56 >= a4)
      {
        break;
      }

      if (v56 >= a2)
      {
        break;
      }

      v55 = v55 + v57[1];
      ++v56;
    }

    while (v55 < a3);
  }

  v58 = (v53 + v13);
  if (v53 + v13 != v12)
  {
    v59 = (v13 + v53);
    for (j = (v59 + v12 - v58); j != v12; j += 2)
    {
      *v59 = *j;
      v59[1] = j[1];
      v59 += 2;
    }

    v11[1] = v59;
    v12 = v59;
  }

  v23 = v12;
  if ((v54 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_83:
  while (v13 != v12)
  {
    v70 = log(*(v13 + 4) + 2.22507386e-308);
    *(v13 + 4) = v70;
    v13 += 8;
  }
}

void sub_254C4D51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    *(v11 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InputTranscoder::CTCSurfaceFormOutput::toString@<X0>(InputTranscoder::CTCSurfaceFormOutput *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "surfaceForm=", 12);
  v5 = *(this + 23);
  if (v5 >= 0)
  {
    v6 = this;
  }

  else
  {
    v6 = *this;
  }

  if (v5 >= 0)
  {
    v7 = *(this + 23);
  }

  else
  {
    v7 = *(this + 1);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " score=", 7);
  *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFEFB | 4;
  v10 = MEMORY[0x259C28E90](*(this + 6));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " isCompletion=", 14);
  if (*(this + 56))
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  if (*(this + 56))
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " isValidWord=", 13);
  if (*(this + 57))
  {
    v16 = "YES";
  }

  else
  {
    v16 = "NO";
  }

  if (*(this + 57))
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " isMultiWord=", 13);
  if (*(this + 58))
  {
    v20 = "YES";
  }

  else
  {
    v20 = "NO";
  }

  if (*(this + 58))
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " foundOnlyInDynamicLexicons", 27);
  if (*(this + 59))
  {
    v24 = "YES";
  }

  else
  {
    v24 = "NO";
  }

  if (*(this + 59))
  {
    v25 = 3;
  }

  else
  {
    v25 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
  if ((v37 & 0x10) != 0)
  {
    v27 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v27 = v33;
    }

    locale = v32[4].__locale_;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v26 = 0;
      a2[23] = 0;
      goto LABEL_44;
    }

    locale = v32[1].__locale_;
    v27 = v32[3].__locale_;
  }

  v26 = v27 - locale;
  if ((v27 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v26 >= 0x17)
  {
    operator new();
  }

  a2[23] = v26;
  if (v26)
  {
    memmove(a2, locale, v26);
  }

LABEL_44:
  a2[v26] = 0;
  v30 = *MEMORY[0x277D82828];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x277D82828] + 24);
  v31 = MEMORY[0x277D82878] + 16;
  if (v35 < 0)
  {
    operator delete(__p);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  return MEMORY[0x259C28F60](&v38);
}

void sub_254C4D898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x259C28F60](v2 + 112);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_254C4DA00(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x259C28F60](v1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned int,float>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<unsigned long,double> const&,std::pair<unsigned long,double> const&),std::__wrap_iter<std::pair<unsigned int,float> *>>(uint64_t result, uint64_t (**a2)(uint64_t *, uint64_t *), uint64_t a3, float *a4)
{
  v8 = a3 - 2;
  if (a3 >= 2)
  {
    v34 = v7;
    v35 = v6;
    v36 = v4;
    v37 = v5;
    v9 = a4;
    v10 = result;
    v11 = v8 >> 1;
    if ((v8 >> 1) >= (a4 - result) >> 3)
    {
      v14 = (a4 - result) >> 2;
      v15 = v14 | 1;
      v16 = (result + 8 * (v14 | 1));
      v17 = v14 + 2;
      if (v14 + 2 < a3)
      {
        v18 = *a2;
        v32 = *v16;
        v33 = v16[1];
        v30 = *(v16 + 2);
        v31 = v16[3];
        v19 = v18(&v32, &v30);
        v20 = 8;
        if (!v19)
        {
          v20 = 0;
        }

        v16 = (v16 + v20);
        if (v19)
        {
          v15 = v17;
        }
      }

      v21 = *a2;
      v32 = *v16;
      v33 = v16[1];
      v30 = *v9;
      v31 = v9[1];
      result = v21(&v32, &v30);
      if ((result & 1) == 0)
      {
        v22 = *v9;
        v23 = v9[1];
        do
        {
          v24 = v9;
          v9 = v16;
          *v24 = *v16;
          v24[1] = v16[1];
          if (v11 < v15)
          {
            break;
          }

          v25 = (2 * v15) | 1;
          v16 = (v10 + 8 * v25);
          v15 = 2 * v15 + 2;
          if (v15 >= a3)
          {
            v15 = v25;
          }

          else
          {
            v26 = *a2;
            v32 = *v16;
            v33 = v16[1];
            v30 = *(v16 + 2);
            v31 = v16[3];
            v27 = v26(&v32, &v30);
            v28 = v27 ? 8 : 0;
            v16 = (v16 + v28);
            if (!v27)
            {
              v15 = v25;
            }
          }

          v29 = *a2;
          v32 = *v16;
          v33 = v16[1];
          v30 = v22;
          v31 = v23;
          result = v29(&v32, &v30);
        }

        while (!result);
        *v9 = v22;
        v9[1] = v23;
      }
    }
  }

  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C28F10](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_254C4DE0C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C28E60](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C28E70](v13);
  return a1;
}

void sub_254C4E07C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C28E70](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x254C4E05CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_254C4E2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **InputTranscoder::LMScorer::makeLMScorer@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*result)
  {
    InputTranscoder::createInternalLanguageModel((a2 + 24), &v7);
    if (v7)
    {
      v5 = *(a2 + 60);
      v6 = *(a2 + 52);
      operator new();
    }

    *a3 = 0;
    return std::unique_ptr<InputTranscoder::LanguageModel>::~unique_ptr[abi:ne200100](&v7);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t **std::unique_ptr<InputTranscoder::LanguageModel>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *v2;
    LMLanguageModelRelease();
    MEMORY[0x259C28FE0](v2, 0x80C40B8603338);
  }

  return a1;
}

unint64_t InputTranscoder::LMScorer::fillNgram(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + 4 * a4;
  v7 = **(a1 + 16);
  v8 = 0;
  if (LMLanguageModelGetOrder())
  {
    v9 = (v6 - 4);
    do
    {
      if (*(a2 + 72) == -1)
      {
        break;
      }

      v10 = *(a1 + 24);
      v17 = *(a2 + 72);
      *v9-- = *(*(*v10 + 32))(v10, &v17);
      ++v8;
      a2 = *(a2 + 88);
      v11 = **(a1 + 16);
    }

    while (v8 < LMLanguageModelGetOrder());
  }

  v12 = **(a1 + 16);
  if (v8 < LMLanguageModelGetOrder())
  {
    if (*(a1 + 40) == *(a1 + 48))
    {
      *(v6 + 4 * ~v8++) = 1;
    }

    else
    {
      v13 = **(a1 + 16);
      v14 = LMLanguageModelGetOrder() - v8;
      v15 = *(a1 + 48);
      if ((v15 - *(a1 + 40)) >> 2 < v14)
      {
        v14 = (v15 - *(a1 + 40)) >> 2;
      }

      v8 += v14;
      if (4 * v14)
      {
        memmove((v6 - 4 * v8), (v15 - 4 * v14), 4 * v14);
      }
    }
  }

  return v8;
}

void InputTranscoder::LMScorer::setContext(void *a1, char *a2)
{
  v2 = (a1 + 5);
  a1[6] = a1[5];
  v3 = a2[23];
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  for (; v5; --v5)
  {
    v7 = a1[3];
    v19 = *v4;
    v8 = (*(*v7 + 40))(v7, &v19);
    v10 = a1[6];
    v9 = a1[7];
    if (v10 >= v9)
    {
      v12 = *v2;
      v13 = v10 - *v2;
      v14 = (v13 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v15 = v9 - v12;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v2, v16);
      }

      v17 = (4 * (v13 >> 2));
      *v17 = *v8;
      v11 = v17 + 1;
      memcpy(0, v12, v13);
      v18 = a1[5];
      a1[5] = 0;
      a1[6] = v11;
      a1[7] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v10 = *v8;
      v11 = v10 + 1;
    }

    a1[6] = v11;
    ++v4;
  }
}

CFLocaleRef InputTranscoder::copyLocale(InputTranscoder *this, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(this, @"locale");
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 == CFStringGetTypeID())
  {
    v5 = *MEMORY[0x277CBECE8];

    return CFLocaleCreate(v5, v3);
  }

  v7 = CFGetTypeID(v3);
  if (v7 != CFLocaleGetTypeID())
  {
    return 0;
  }

  return CFRetain(v3);
}

CFPropertyListRef InputTranscoder::createModelMetadata(InputTranscoder *this, __CFBundle *a2, const __CFString *a3, const __CFString *a4)
{
  LanguageAndScriptCode = InputTranscoder::createLanguageAndScriptCode(a2, a2);
  v7 = CFBundleCopyResourceURLForLocalization(this, @"models.plist", 0, a3, LanguageAndScriptCode);
  v10 = v7;
  if (v7)
  {
    DictionaryWithContentsOfURL = nlp::createDictionaryWithContentsOfURL(v7, 0, v8, v9);
    CFRelease(v10);
    if (!LanguageAndScriptCode)
    {
      return DictionaryWithContentsOfURL;
    }

    goto LABEL_5;
  }

  DictionaryWithContentsOfURL = 0;
  if (LanguageAndScriptCode)
  {
LABEL_5:
    CFRelease(LanguageAndScriptCode);
  }

  return DictionaryWithContentsOfURL;
}

void sub_254C4E804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFURL const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

CFStringRef InputTranscoder::createLanguageAndScriptCode(InputTranscoder *this, const __CFLocale *a2)
{
  Value = CFLocaleGetValue(this, *MEMORY[0x277CBEED0]);
  v4 = CFLocaleGetValue(this, *MEMORY[0x277CBEED8]);
  v5 = *MEMORY[0x277CBECE8];
  if (v4)
  {
    return CFStringCreateWithFormat(v5, 0, @"%@-%@", Value, v4);
  }

  return CFStringCreateCopy(v5, Value);
}

void InputTranscoder::extractCommonConfiguration(uint64_t a1, const __CFDictionary *a2, __CFBundle *a3, const __CFLocale *a4, uint64_t a5)
{
  Required = InputTranscoder::getRequiredCFType<__CFDictionary const*>(a2, @"commonConfiguration");
  if (!CFDictionaryContainsKey(Required, @"modelFile"))
  {
    v11 = 0;
    goto LABEL_8;
  }

  InputTranscoder::extractPath(__p, Required, @"modelFile", a3, a4, 0);
  v10 = HIBYTE(v24);
  if (v24 < 0)
  {
    v10 = __p[1];
  }

  if (!v10)
  {
    v11 = InputTranscoder::getRequiredCFType<__CFString const*>(Required, @"modelFile");
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_8:
    v31[0] = 0;
    v31[1] = v31;
    v32 = 0x3002000000;
    v33 = __Block_byref_object_copy__1;
    v34 = __Block_byref_object_dispose__1;
    cf = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 0x40000000;
    v27 = ___ZN15InputTranscoderL12getModelPathEPK14__CFDictionaryP10__CFBundlePK10__CFLocale_block_invoke;
    v28 = &unk_2797B1B88;
    v29 = v31;
    v30 = v11;
    InputTranscoder::enumerateLDAssets();
    v13 = *(v31[1] + 5);
    if (v13)
    {
      nlp::getFileSystemRepresentationFromCFURL(v13, v12);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v25, "Unable to locate model file in LinguisticData");
    nlp::ResourceCreationException::ResourceCreationException(exception, &v25);
  }

  v14 = InputTranscoder::extract<int,__CFNumber const*>(Required, @"modelType");
  if (v14 == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = v14 == 1;
  }

  if (a5 == 1)
  {
    v16 = @"tap";
  }

  else
  {
    v16 = &stru_286714728;
  }

  InputTranscoder::extractPath(v31, Required, @"outputTokenIDMapFile", a3, a4, v16);
  if (CFDictionaryContainsKey(Required, @"internalLMTokenIDMapFile"))
  {
    InputTranscoder::extractPath(v26, Required, @"internalLMTokenIDMapFile", a3, a4, v16);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v26, "");
  }

  if (CFDictionaryGetValue(Required, @"modelVersion"))
  {
    v17 = InputTranscoder::extract<int,__CFNumber const*>(Required, @"modelVersion");
    if ((v17 - 1) >= 4)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    v18 = 0;
  }

  if (CFDictionaryGetValue(Required, @"useNeuralEngine"))
  {
    v19 = InputTranscoder::getRequiredCFType<__CFBoolean const*>(Required, @"useNeuralEngine");
    v20 = CFBooleanGetValue(v19) != 0;
  }

  else
  {
    v20 = 1;
  }

  if (SHIBYTE(v24) < 0)
  {
    std::string::__init_copy_ctor_external(a1, __p[0], __p[1]);
  }

  else
  {
    *a1 = *__p;
    *(a1 + 16) = v24;
  }

  *(a1 + 24) = v15;
  if (SHIBYTE(v32) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), v31[0], v31[1]);
  }

  else
  {
    *(a1 + 32) = *v31;
    *(a1 + 48) = v32;
  }

  if (SHIBYTE(v27) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), v26[0], v26[1]);
    v21 = SHIBYTE(v27);
    *(a1 + 80) = v18;
    *(a1 + 88) = a5;
    *(a1 + 96) = v20;
    if (v21 < 0)
    {
      operator delete(v26[0]);
    }
  }

  else
  {
    *(a1 + 56) = *v26;
    *(a1 + 72) = v27;
    *(a1 + 80) = v18;
    *(a1 + 88) = a5;
    *(a1 + 96) = v20;
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254C4EC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *InputTranscoder::getRequiredCFType<__CFDictionary const*>(const __CFDictionary *a1, const __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Malformed dictionary: missing key=");
    InputTranscoder::makeDictionaryErrorMessage(a2, v9, &v10);
    nlp::ResourceCreationException::ResourceCreationException(exception, &v10);
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFDictionaryGetTypeID())
  {
    v8 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Malformed dictionary: invalid type for key=");
    InputTranscoder::makeDictionaryErrorMessage(a2, v9, &v10);
    nlp::ResourceCreationException::ResourceCreationException(v8, &v10);
  }

  return v4;
}

void sub_254C4EE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v21)
  {
    __cxa_free_exception(v20);
  }

  _Unwind_Resume(exception_object);
}

void InputTranscoder::extractPath(InputTranscoder *this, const __CFDictionary *a2, const __CFString *a3, __CFBundle *a4, const __CFLocale *a5, const __CFString *a6)
{
  Required = InputTranscoder::getRequiredCFType<__CFString const*>(a2, a3);
  LanguageAndScriptCode = InputTranscoder::createLanguageAndScriptCode(a5, v11);
  v13 = CFBundleCopyResourceURLForLocalization(a4, Required, 0, a6, LanguageAndScriptCode);
  if (v13)
  {
    nlp::getFileSystemRepresentationFromCFURL(v13, v14);
  }

  std::string::basic_string[abi:ne200100]<0>(this, "");
  if (LanguageAndScriptCode)
  {
    CFRelease(LanguageAndScriptCode);
  }
}

void sub_254C4EFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  nlp::CFScopedPtr<__CFURL const*>::reset(&a9, 0);
  nlp::CFScopedPtr<__CFString const*>::reset(&a10, 0);
  _Unwind_Resume(a1);
}

void InputTranscoder::extractCTCConfiguration(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Required = InputTranscoder::getRequiredCFType<__CFDictionary const*>(a2, @"ctcConfiguration");
  v10 = MEMORY[0x259C28970](a3);
  nlp::getUTF8StringFromCFString(v10, v58);
  v11 = MEMORY[0x259C28970](a4);
  nlp::getUTF8StringFromCFString(v11, __p);
  v12 = InputTranscoder::getRequiredCFType<__CFBoolean const*>(Required, @"shouldUseStaticLexicon");
  Value = CFBooleanGetValue(v12);
  v13 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"lmAlpha");
  v54 = InputTranscoder::convert<float>(v13);
  v14 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"lmBeta");
  v53 = InputTranscoder::convert<float>(v14);
  v15 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"cutoffProbability");
  v52 = InputTranscoder::convert<float>(v15);
  v51 = InputTranscoder::extract<unsigned long,__CFNumber const*>(Required, @"maxProbabilityCount");
  v50 = InputTranscoder::extract<unsigned long,__CFNumber const*>(Required, @"beamSize");
  v16 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"blankThreshold");
  v49 = InputTranscoder::convert<float>(v16);
  v48 = InputTranscoder::extract<unsigned int,__CFNumber const*>(Required, @"blankTokenID");
  if (CFDictionaryGetValue(Required, @"ngramAlpha"))
  {
    v17 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"ngramAlpha");
    v47 = InputTranscoder::convert<float>(v17);
  }

  else
  {
    v47 = 1.1755e-38;
  }

  if (CFDictionaryGetValue(Required, @"ngramBeta"))
  {
    v18 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"ngramBeta");
    v46 = InputTranscoder::convert<float>(v18);
  }

  else
  {
    v46 = 1.1755e-38;
  }

  if (CFDictionaryGetValue(Required, @"unknownID"))
  {
    v45 = InputTranscoder::extract<unsigned int,__CFNumber const*>(Required, @"unknownID");
  }

  else
  {
    v45 = -1;
  }

  if (CFDictionaryGetValue(Required, @"wordSeparatorID"))
  {
    v44 = InputTranscoder::extract<unsigned int,__CFNumber const*>(Required, @"wordSeparatorID");
  }

  else
  {
    v44 = -1;
  }

  if (CFDictionaryGetValue(Required, @"maxProbCountWordSeparator"))
  {
    v19 = InputTranscoder::extract<unsigned long,__CFNumber const*>(Required, @"maxProbCountWordSeparator");
  }

  else
  {
    v19 = 0;
  }

  if (CFDictionaryGetValue(Required, @"wordTerminationThreshold"))
  {
    v20 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"wordTerminationThreshold");
    v21 = InputTranscoder::convert<float>(v20);
  }

  else
  {
    v21 = 1.0;
  }

  if (CFDictionaryGetValue(Required, @"minOutputTokenToDecode"))
  {
    v22 = InputTranscoder::extract<unsigned int,__CFNumber const*>(Required, @"minOutputTokenToDecode");
  }

  else
  {
    v22 = 0;
  }

  if (CFDictionaryGetValue(Required, @"maxOutputTokenToDecode"))
  {
    v23 = InputTranscoder::extract<unsigned int,__CFNumber const*>(Required, @"maxOutputTokenToDecode");
  }

  else
  {
    v23 = -1;
  }

  if (a5 == 1)
  {
    if (CFDictionaryGetValue(Required, @"maxCandidatesWhenLMUsedForCompletions"))
    {
      v24 = InputTranscoder::extract<unsigned int,__CFNumber const*>(Required, @"maxCandidatesWhenLMUsedForCompletions");
      v25 = 0;
    }

    else
    {
      v25 = 0;
      v24 = 10;
    }
  }

  else
  {
    if (CFDictionaryGetValue(Required, @"maxCandidates"))
    {
      v24 = InputTranscoder::extract<unsigned int,__CFNumber const*>(Required, @"maxCandidates");
    }

    else
    {
      v24 = 40;
    }

    if (CFDictionaryGetValue(Required, @"numPrefixesToComplete"))
    {
      v25 = InputTranscoder::extract<unsigned int,__CFNumber const*>(Required, @"numPrefixesToComplete");
    }

    else
    {
      v25 = 2;
    }
  }

  if (CFDictionaryGetValue(Required, @"numCompletionsPerPrefix"))
  {
    v26 = InputTranscoder::extract<unsigned int,__CFNumber const*>(Required, @"numCompletionsPerPrefix");
  }

  else
  {
    v26 = 5;
  }

  if (CFDictionaryGetValue(Required, @"maxCompletions"))
  {
    v27 = InputTranscoder::extract<unsigned int,__CFNumber const*>(Required, @"maxCompletions");
  }

  else
  {
    v27 = 5;
  }

  if (CFDictionaryGetValue(Required, @"minPrefixLengthToComplete"))
  {
    v28 = InputTranscoder::extract<unsigned int,__CFNumber const*>(Required, @"minPrefixLengthToComplete");
  }

  else
  {
    v28 = 4;
  }

  if (CFDictionaryGetValue(Required, @"completionPenalty"))
  {
    v29 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"completionPenalty");
    v30 = InputTranscoder::convert<float>(v29);
  }

  else
  {
    v30 = 0.0;
  }

  if (CFDictionaryGetValue(Required, @"completionLengthPenalty"))
  {
    v31 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"completionLengthPenalty");
    v32 = InputTranscoder::convert<float>(v31);
  }

  else
  {
    v32 = 1.0;
  }

  if (CFDictionaryGetValue(Required, @"wordSplittingCost"))
  {
    v33 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"wordSplittingCost");
    v34 = InputTranscoder::convert<float>(v33);
  }

  else
  {
    v34 = 2.0;
  }

  if (CFDictionaryGetValue(Required, @"lmAlphaCompletions"))
  {
    v35 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"lmAlphaCompletions");
    v36 = InputTranscoder::convert<float>(v35);
  }

  else
  {
    v36 = 1.0;
  }

  if (CFDictionaryGetValue(Required, @"dynamicLexiconWeight"))
  {
    v37 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"dynamicLexiconWeight");
    v38 = InputTranscoder::convert<float>(v37);
  }

  else
  {
    v38 = 0.8;
  }

  if (CFDictionaryGetValue(Required, @"exactTypedCandidateBoost"))
  {
    v39 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"exactTypedCandidateBoost");
    v40 = InputTranscoder::convert<float>(v39);
  }

  else
  {
    v40 = 2.0;
  }

  if (CFDictionaryGetValue(Required, @"candidatePruningThreshold"))
  {
    v41 = InputTranscoder::getRequiredCFType<__CFNumber const*>(Required, @"candidatePruningThreshold");
    v42 = InputTranscoder::convert<float>(v41);
  }

  else
  {
    v42 = 4.6;
  }

  if (SHIBYTE(v59) < 0)
  {
    std::string::__init_copy_ctor_external(a1, v58[0], v58[1]);
  }

  else
  {
    *a1 = *v58;
    *(a1 + 16) = v59;
  }

  if (SHIBYTE(v57) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), __p[0], __p[1]);
    v43 = v57 < 0;
  }

  else
  {
    v43 = 0;
    *(a1 + 24) = *__p;
    *(a1 + 40) = v57;
  }

  *(a1 + 48) = Value != 0;
  *(a1 + 52) = v54;
  *(a1 + 56) = v53;
  *(a1 + 60) = v47;
  *(a1 + 64) = v46;
  *(a1 + 72) = v52;
  *(a1 + 80) = v51;
  *(a1 + 88) = v50;
  *(a1 + 96) = v49;
  *(a1 + 100) = v48;
  *(a1 + 104) = v45;
  *(a1 + 108) = v44;
  *(a1 + 112) = v19;
  *(a1 + 120) = v21;
  *(a1 + 124) = v22;
  *(a1 + 128) = v23;
  *(a1 + 132) = v24;
  *(a1 + 136) = v25;
  *(a1 + 140) = v26;
  *(a1 + 144) = v27;
  *(a1 + 148) = v28;
  *(a1 + 152) = v30;
  *(a1 + 156) = v32;
  *(a1 + 160) = v34;
  *(a1 + 164) = v36;
  *(a1 + 168) = v38;
  *(a1 + 172) = v40;
  *(a1 + 176) = v42;
  if (v43)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58[0]);
  }
}

void sub_254C4F66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InputTranscoder::extract<unsigned long,__CFNumber const*>(const __CFDictionary *a1, const __CFString *a2)
{
  Required = InputTranscoder::getRequiredCFType<__CFNumber const*>(a1, a2);
  valuePtr = 0;
  if (!CFNumberGetValue(Required, kCFNumberIntType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v5, "Failed to parse CFNumber as kCFNumberIntType");
    nlp::ResourceCreationException::ResourceCreationException(exception, &v5);
  }

  return valuePtr;
}

void sub_254C4F7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t InputTranscoder::extract<unsigned int,__CFNumber const*>(const __CFDictionary *a1, const __CFString *a2)
{
  Required = InputTranscoder::getRequiredCFType<__CFNumber const*>(a1, a2);
  valuePtr = 0;
  if (!CFNumberGetValue(Required, kCFNumberIntType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v5, "Failed to parse CFNumber as kCFNumberIntType");
    nlp::ResourceCreationException::ResourceCreationException(exception, &v5);
  }

  return valuePtr;
}

void sub_254C4F894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

const void *InputTranscoder::getRequiredCFType<__CFString const*>(const __CFDictionary *a1, const __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Malformed dictionary: missing key=");
    InputTranscoder::makeDictionaryErrorMessage(a2, v9, &v10);
    nlp::ResourceCreationException::ResourceCreationException(exception, &v10);
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFStringGetTypeID())
  {
    v8 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Malformed dictionary: invalid type for key=");
    InputTranscoder::makeDictionaryErrorMessage(a2, v9, &v10);
    nlp::ResourceCreationException::ResourceCreationException(v8, &v10);
  }

  return v4;
}

void sub_254C4F9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v21)
  {
    __cxa_free_exception(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InputTranscoder::extract<int,__CFNumber const*>(const __CFDictionary *a1, const __CFString *a2)
{
  Required = InputTranscoder::getRequiredCFType<__CFNumber const*>(a1, a2);
  valuePtr = 0;
  if (!CFNumberGetValue(Required, kCFNumberIntType, &valuePtr))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v5, "Failed to parse CFNumber as kCFNumberIntType");
    nlp::ResourceCreationException::ResourceCreationException(exception, &v5);
  }

  return valuePtr;
}

void sub_254C4FAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

CFIndex InputTranscoder::extractStrings(InputTranscoder *this, const __CFDictionary *a2, const __CFString *a3)
{
  Required = InputTranscoder::getRequiredCFType<__CFArray const*>(a2, a3);
  v5 = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  while (1)
  {
    result = CFArrayGetCount(Required);
    if (result <= v5)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(Required, v5);
    nlp::getUTF8StringFromCFString(ValueAtIndex, __p);
    v9 = *(this + 1);
    v8 = *(this + 2);
    if (v9 >= v8)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *this) >> 3);
      v12 = v11 + 1;
      if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *this) >> 3);
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

      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this, v14);
      }

      v15 = 24 * v11;
      v16 = *__p;
      *(v15 + 16) = v23;
      *v15 = v16;
      __p[1] = 0;
      v23 = 0;
      __p[0] = 0;
      v17 = 24 * v11 + 24;
      v18 = *(this + 1) - *this;
      v19 = 24 * v11 - v18;
      memcpy((v15 - v18), *this, v18);
      v20 = *this;
      *this = v19;
      *(this + 1) = v17;
      *(this + 2) = 0;
      if (v20)
      {
        operator delete(v20);
      }

      v21 = SHIBYTE(v23);
      *(this + 1) = v17;
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v10 = *__p;
      *(v9 + 16) = v23;
      *v9 = v10;
      *(this + 1) = v9 + 24;
    }

    ++v5;
  }

  return result;
}

void sub_254C4FCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void InputTranscoder::generateConfiguration<InputTranscoder::DecoderConfiguration>(InputTranscoder *this@<X1>, InputTranscoder *a2@<X0>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v7 = InputTranscoder::copyLocale(this, this);
  v85 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v86, "Malformed options dictionary - missing or invalid locale");
    nlp::ResourceCreationException::ResourceCreationException(exception, v86);
  }

  v8 = v7;
  v9 = MEMORY[0x259C28970]();
  if (CFStringCompare(v9, @"zh-Hant", 0))
  {
    v10 = CFRetain(v8);
  }

  else
  {
    v10 = CFLocaleCreate(0, @"zh-Hans");
  }

  v12 = v10;
  v84 = v10;
  if (a3 == 1)
  {
    v13 = @"tap";
  }

  else
  {
    v13 = &stru_286714728;
  }

  ModelMetadata = InputTranscoder::createModelMetadata(a2, v10, v13, v11);
  v83 = ModelMetadata;
  if (!ModelMetadata)
  {
    v73 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v86, "Failed to parse metadata file");
    nlp::ResourceCreationException::ResourceCreationException(v73, v86);
  }

  cf = ModelMetadata;
  v75 = a4;
  Required = InputTranscoder::getRequiredCFType<__CFArray const*>(ModelMetadata, @"models");
  v16 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v78 = a2;
  v79 = a3;
  v76 = v12;
  v77 = Required;
  while (CFArrayGetCount(Required) > v16)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Required, v16);
    InputTranscoder::extractCommonConfiguration(v86, ValueAtIndex, a2, v12, a3);
    InputTranscoder::extractCTCConfiguration(&v95, ValueAtIndex, v12, v8, a3);
    v18 = v81;
    if (v81 >= v82)
    {
      v20 = 0x8E38E38E38E38E39 * ((v81 - v80) >> 5);
      v21 = v20 + 1;
      if (v20 + 1 > 0xE38E38E38E38E3)
      {
        std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
      }

      if (0x1C71C71C71C71C72 * ((v82 - v80) >> 5) > v21)
      {
        v21 = 0x1C71C71C71C71C72 * ((v82 - v80) >> 5);
      }

      if (0x8E38E38E38E38E39 * ((v82 - v80) >> 5) >= 0x71C71C71C71C71)
      {
        v22 = 0xE38E38E38E38E3;
      }

      else
      {
        v22 = v21;
      }

      v112 = &v80;
      if (v22)
      {
        if (v22 <= 0xE38E38E38E38E3)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v27 = 32 * ((v81 - v80) >> 5);
      v108 = 0;
      v109 = v27;
      v110 = v27;
      v111 = 0;
      if (SHIBYTE(v87) < 0)
      {
        std::string::__init_copy_ctor_external((32 * ((v81 - v80) >> 5)), v86[0], v86[1]);
      }

      else
      {
        *v27 = *v86;
        *(288 * v20 + 0x10) = v87;
      }

      *(288 * v20 + 0x18) = v88;
      if (SHIBYTE(v90) < 0)
      {
        std::string::__init_copy_ctor_external((v27 + 32), v89, *(&v89 + 1));
      }

      else
      {
        *(288 * v20 + 0x20) = v89;
        *(288 * v20 + 0x30) = v90;
      }

      if (SHIBYTE(v92) < 0)
      {
        std::string::__init_copy_ctor_external((v27 + 56), v91, *(&v91 + 1));
      }

      else
      {
        *(288 * v20 + 0x38) = v91;
        *(288 * v20 + 0x48) = v92;
      }

      *(288 * v20 + 0x50) = v93;
      *(288 * v20 + 0x60) = v94;
      if (SHIBYTE(v96) < 0)
      {
        std::string::__init_copy_ctor_external((v27 + 104), v95, *(&v95 + 1));
      }

      else
      {
        *(288 * v20 + 0x68) = v95;
        *(288 * v20 + 0x78) = v96;
      }

      if (SHIBYTE(v98) < 0)
      {
        std::string::__init_copy_ctor_external((v27 + 128), __p, *(&__p + 1));
      }

      else
      {
        *(288 * v20 + 0x80) = __p;
        *(288 * v20 + 0x90) = v98;
      }

      v36 = v103;
      *(288 * v20 + 0xE8) = v104;
      v37 = v106;
      *(288 * v20 + 0xF8) = v105;
      *(288 * v20 + 0x108) = v37;
      v38 = v99;
      *(288 * v20 + 0xA8) = v100;
      v39 = v102;
      *(288 * v20 + 0xB8) = v101;
      *(288 * v20 + 0xC8) = v39;
      *(288 * v20 + 0xD8) = v36;
      *(288 * v20 + 0x118) = v107;
      *(288 * v20 + 0x98) = v38;
      v41 = v80;
      v40 = v81;
      v42 = (v109 - (v81 - v80));
      v35 = v110 + 12;
      v110 += 12;
      if (v81 != v80)
      {
        v43 = v8;
        v44 = 0;
        do
        {
          v45 = v41 + v44;
          v46 = InputTranscoder::CommonConfiguration::CommonConfiguration(&v42[v44 / 0x18], (v41 + v44));
          if (*(v41 + v44 + 127) < 0)
          {
            std::string::__init_copy_ctor_external((v46 + 104), *(v45 + 104), *(v41 + v44 + 112));
          }

          else
          {
            v47 = *(v45 + 104);
            v46[5].__r_.__value_.__r.__words[0] = *(v45 + 120);
            *&v46[4].__r_.__value_.__r.__words[1] = v47;
          }

          v48 = &v42[v44 / 0x18];
          v49 = v41 + v44;
          if (*(v41 + v44 + 151) < 0)
          {
            std::string::__init_copy_ctor_external((v48 + 128), *(v49 + 128), *(v49 + 136));
          }

          else
          {
            v50 = *(v49 + 128);
            v48[6].__r_.__value_.__r.__words[0] = *(v49 + 144);
            *&v48[5].__r_.__value_.__r.__words[1] = v50;
          }

          v51 = &v42[v44 / 0x18];
          *&v51[6].__r_.__value_.__r.__words[1] = *(v41 + v44 + 152);
          v52 = *(v41 + v44 + 168);
          v53 = *(v41 + v44 + 184);
          v54 = *(v41 + v44 + 200);
          *&v51[9].__r_.__value_.__l.__data_ = *(v41 + v44 + 216);
          *&v51[8].__r_.__value_.__r.__words[1] = v54;
          *&v51[7].__r_.__value_.__r.__words[2] = v53;
          *&v51[7].__r_.__value_.__l.__data_ = v52;
          v55 = *(v41 + v44 + 232);
          v56 = *(v41 + v44 + 248);
          v57 = *(v41 + v44 + 264);
          LODWORD(v51[11].__r_.__value_.__r.__words[2]) = *(v41 + v44 + 280);
          *&v51[11].__r_.__value_.__l.__data_ = v57;
          *&v51[10].__r_.__value_.__r.__words[1] = v56;
          *&v51[9].__r_.__value_.__r.__words[2] = v55;
          v44 += 288;
        }

        while ((v41 + v44) != v40);
        v8 = v43;
        do
        {
          std::allocator_traits<std::allocator<InputTranscoder::DecoderConfiguration>>::destroy[abi:ne200100]<InputTranscoder::DecoderConfiguration,void,0>(v41);
          v41 += 288;
        }

        while (v41 != v40);
        v41 = v80;
        v35 = v110;
        v12 = v76;
      }

      v80 = v42;
      v81 = v35;
      v58 = v82;
      v82 = v111;
      v110 = v41;
      v111 = v58;
      v108 = v41;
      v109 = v41;
      std::__split_buffer<InputTranscoder::DecoderConfiguration>::~__split_buffer(&v108);
      a2 = v78;
      a3 = v79;
      Required = v77;
    }

    else
    {
      if (SHIBYTE(v87) < 0)
      {
        std::string::__init_copy_ctor_external(v81, v86[0], v86[1]);
      }

      else
      {
        v19 = *v86;
        v81->__r_.__value_.__r.__words[2] = v87;
        *&v18->__r_.__value_.__l.__data_ = v19;
      }

      LODWORD(v18[1].__r_.__value_.__l.__data_) = v88;
      if (SHIBYTE(v90) < 0)
      {
        std::string::__init_copy_ctor_external((v18 + 32), v89, *(&v89 + 1));
      }

      else
      {
        v23 = v89;
        v18[2].__r_.__value_.__r.__words[0] = v90;
        *&v18[1].__r_.__value_.__r.__words[1] = v23;
      }

      if (SHIBYTE(v92) < 0)
      {
        std::string::__init_copy_ctor_external((v18 + 56), v91, *(&v91 + 1));
      }

      else
      {
        v24 = v91;
        v18[3].__r_.__value_.__r.__words[0] = v92;
        *&v18[2].__r_.__value_.__r.__words[1] = v24;
      }

      v25 = v93;
      v18[4].__r_.__value_.__s.__data_[0] = v94;
      *&v18[3].__r_.__value_.__r.__words[1] = v25;
      if (SHIBYTE(v96) < 0)
      {
        std::string::__init_copy_ctor_external((v18 + 104), v95, *(&v95 + 1));
      }

      else
      {
        v26 = v95;
        v18[5].__r_.__value_.__r.__words[0] = v96;
        *&v18[4].__r_.__value_.__r.__words[1] = v26;
      }

      if (SHIBYTE(v98) < 0)
      {
        std::string::__init_copy_ctor_external((v18 + 128), __p, *(&__p + 1));
      }

      else
      {
        v28 = __p;
        v18[6].__r_.__value_.__r.__words[0] = v98;
        *&v18[5].__r_.__value_.__r.__words[1] = v28;
      }

      *&v18[6].__r_.__value_.__r.__words[1] = v99;
      v29 = v100;
      v30 = v101;
      v31 = v102;
      *&v18[9].__r_.__value_.__l.__data_ = v103;
      *&v18[8].__r_.__value_.__r.__words[1] = v31;
      *&v18[7].__r_.__value_.__r.__words[2] = v30;
      *&v18[7].__r_.__value_.__l.__data_ = v29;
      v32 = v104;
      v33 = v105;
      v34 = v106;
      LODWORD(v18[11].__r_.__value_.__r.__words[2]) = v107;
      *&v18[11].__r_.__value_.__l.__data_ = v34;
      *&v18[10].__r_.__value_.__r.__words[1] = v33;
      *&v18[9].__r_.__value_.__r.__words[2] = v32;
      v35 = v18 + 12;
    }

    v81 = v35;
    if (SHIBYTE(v98) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v96) < 0)
    {
      operator delete(v95);
    }

    if (SHIBYTE(v92) < 0)
    {
      operator delete(v91);
    }

    if (SHIBYTE(v90) < 0)
    {
      operator delete(v89);
    }

    if (SHIBYTE(v87) < 0)
    {
      operator delete(v86[0]);
    }

    ++v16;
  }

  v59 = InputTranscoder::extract<int,__CFNumber const*>(cf, @"preferredModelType");
  v60 = v59 == 1;
  if (v59 == 2)
  {
    v60 = 2;
  }

  if (v80 == v81)
  {
LABEL_82:
    v62 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v86, "failed to find a suitable configuration");
    nlp::ResourceCreationException::ResourceCreationException(v62, v86);
  }

  v61 = &v80[6].__r_.__value_.__s.__data_[8];
  while (*(v61 - 32) != v60)
  {
    v61 += 288;
    if (v61 - 152 == v81)
    {
      goto LABEL_82;
    }
  }

  InputTranscoder::CommonConfiguration::CommonConfiguration(v75, (v61 - 152));
  if (*(v61 - 25) < 0)
  {
    std::string::__init_copy_ctor_external((v75 + 104), *(v61 - 6), *(v61 - 5));
  }

  else
  {
    v63 = *(v61 - 3);
    v75[5].__r_.__value_.__r.__words[0] = *(v61 - 4);
    *&v75[4].__r_.__value_.__r.__words[1] = v63;
  }

  if (*(v61 - 1) < 0)
  {
    v65 = v75;
    std::string::__init_copy_ctor_external((v75 + 128), *(v61 - 3), *(v61 - 2));
  }

  else
  {
    v64 = *(v61 - 24);
    v65 = v75;
    v75[6].__r_.__value_.__r.__words[0] = *(v61 - 1);
    *&v75[5].__r_.__value_.__r.__words[1] = v64;
  }

  *&v65[6].__r_.__value_.__r.__words[1] = *v61;
  v66 = *(v61 + 1);
  v67 = *(v61 + 2);
  v68 = *(v61 + 3);
  *&v65[9].__r_.__value_.__l.__data_ = *(v61 + 4);
  *&v65[8].__r_.__value_.__r.__words[1] = v68;
  *&v65[7].__r_.__value_.__r.__words[2] = v67;
  *&v65[7].__r_.__value_.__l.__data_ = v66;
  v69 = *(v61 + 5);
  v70 = *(v61 + 6);
  v71 = *(v61 + 7);
  LODWORD(v65[11].__r_.__value_.__r.__words[2]) = *(v61 + 32);
  *&v65[11].__r_.__value_.__l.__data_ = v71;
  *&v65[10].__r_.__value_.__r.__words[1] = v70;
  *&v65[9].__r_.__value_.__r.__words[2] = v69;
  v86[0] = &v80;
  std::vector<InputTranscoder::DecoderConfiguration>::__destroy_vector::operator()[abi:ne200100](v86);
  CFRelease(cf);
  if (v12)
  {
    CFRelease(v12);
  }

  CFRelease(v8);
}

void sub_254C50534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, const void *a20, const void *a21, const void *a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 + 127) < 0)
  {
    operator delete(a11[13]);
  }

  InputTranscoder::CommonConfiguration::~CommonConfiguration(a11);
  __p = &a17;
  std::vector<InputTranscoder::DecoderConfiguration>::__destroy_vector::operator()[abi:ne200100](&__p);
  nlp::CFScopedPtr<__CFDictionary const*>::reset(&a20, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(&a21, 0);
  nlp::CFScopedPtr<__CFLocale const*>::reset(&a22, 0);
  _Unwind_Resume(a1);
}

void InputTranscoder::generateConfiguration<InputTranscoder::TranscoderConfiguration>(InputTranscoder *this@<X1>, InputTranscoder *a2@<X0>, uint64_t a3@<X2>, InputTranscoder::TranscoderConfiguration *a4@<X8>)
{
  v6 = InputTranscoder::copyLocale(this, this);
  v65 = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v66, "Malformed options dictionary - missing or invalid locale");
    nlp::ResourceCreationException::ResourceCreationException(exception, v66);
  }

  v7 = v6;
  v8 = MEMORY[0x259C28970]();
  if (CFStringCompare(v8, @"zh-Hant", 0))
  {
    v9 = CFRetain(v7);
  }

  else
  {
    v9 = CFLocaleCreate(0, @"zh-Hans");
  }

  v11 = v9;
  v64 = v9;
  if (a3 == 1)
  {
    v12 = @"tap";
  }

  else
  {
    v12 = &stru_286714728;
  }

  ModelMetadata = InputTranscoder::createModelMetadata(a2, v9, v12, v10);
  v63 = ModelMetadata;
  if (!ModelMetadata)
  {
    v53 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v66, "Failed to parse metadata file");
    nlp::ResourceCreationException::ResourceCreationException(v53, v66);
  }

  cf = ModelMetadata;
  Required = InputTranscoder::getRequiredCFType<__CFArray const*>(ModelMetadata, @"models");
  v15 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v56 = a2;
  v57 = v11;
  v58 = v12;
  v59 = Required;
  while (CFArrayGetCount(Required) > v15)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Required, v15);
    InputTranscoder::extractPath(&v88, ValueAtIndex, @"inputTokenIDMapFile", a2, v11, v12);
    InputTranscoder::extractPath(&v86, ValueAtIndex, @"baseLayoutFile", a2, v11, v12);
    v17 = InputTranscoder::getRequiredCFType<__CFString const*>(ValueAtIndex, @"keyMatchingPolicy");
    nlp::getUTF8StringFromCFString(v17, &v85);
    v18 = InputTranscoder::getRequiredCFType<__CFBoolean const*>(ValueAtIndex, @"useNonLetterKeys");
    v19 = v15;
    v20 = CFBooleanGetValue(v18) != 0;
    v21 = InputTranscoder::getRequiredCFType<__CFBoolean const*>(ValueAtIndex, @"useInputOneHotInflection");
    v22 = CFBooleanGetValue(v21) != 0;
    if (CFDictionaryGetValue(ValueAtIndex, @"equivalentFormsWeight"))
    {
      v23 = InputTranscoder::getRequiredCFType<__CFNumber const*>(ValueAtIndex, @"equivalentFormsWeight");
      v24 = InputTranscoder::convert<float>(v23);
    }

    else
    {
      v24 = 1.0;
    }

    if (CFDictionaryGetValue(ValueAtIndex, @"levenshteinDistanceWeight"))
    {
      v25 = InputTranscoder::getRequiredCFType<__CFNumber const*>(ValueAtIndex, @"levenshteinDistanceWeight");
      v26 = InputTranscoder::convert<float>(v25);
    }

    else
    {
      v26 = 6.0;
    }

    v27 = InputTranscoder::extract<int,__CFNumber const*>(ValueAtIndex, @"numIntentKeys");
    InputTranscoder::extractStrings(&v83, ValueAtIndex, @"layouts");
    InputTranscoder::extractStrings(&v81, ValueAtIndex, @"orientations");
    v28 = InputTranscoder::getRequiredCFType<__CFNumber const*>(ValueAtIndex, @"geometryScoreScale");
    v29 = InputTranscoder::convert<float>(v28);
    v30 = InputTranscoder::getRequiredCFType<__CFNumber const*>(ValueAtIndex, @"geometryScoreWeight");
    v31 = InputTranscoder::convert<float>(v30);
    v32 = 0.7;
    if (CFDictionaryGetValue(ValueAtIndex, @"bigramConfidenceThreshold"))
    {
      v33 = InputTranscoder::getRequiredCFType<__CFNumber const*>(ValueAtIndex, @"bigramConfidenceThreshold");
      v32 = InputTranscoder::convert<float>(v33);
    }

    InputTranscoder::extractCommonConfiguration(v66, ValueAtIndex, a2, v11, a3);
    InputTranscoder::extractCTCConfiguration(&v67, ValueAtIndex, v11, v7, a3);
    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v68, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
    }

    else
    {
      v68 = v88;
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v69, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
    }

    else
    {
      v69 = v86;
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v70, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
    }

    else
    {
      v70 = v85;
    }

    v71 = v20;
    v72 = v22;
    v73 = v24;
    v74 = v26;
    v75 = v27;
    v76 = v29;
    v77 = v31;
    v78 = v32;
    memset(v79, 0, sizeof(v79));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v79, v83, v84, 0xAAAAAAAAAAAAAAABLL * ((v84 - v83) >> 3));
    memset(v80, 0, sizeof(v80));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v80, v81, v82, 0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 3));
    v34 = v19;
    v87 = &v81;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v87);
    v81 = &v83;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v81);
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    v35 = v61;
    if (v61 >= v62)
    {
      v37 = 0x6FB586FB586FB587 * ((v61 - v60) >> 3) + 1;
      if (v37 > 0x94F2094F2094F2)
      {
        std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
      }

      if (0xDF6B0DF6B0DF6B0ELL * ((v62 - v60) >> 3) > v37)
      {
        v37 = 0xDF6B0DF6B0DF6B0ELL * ((v62 - v60) >> 3);
      }

      if ((0x6FB586FB586FB587 * ((v62 - v60) >> 3)) >= 0x4A7904A7904A79)
      {
        v38 = 0x94F2094F2094F2;
      }

      else
      {
        v38 = v37;
      }

      v90 = &v60;
      if (v38)
      {
        if (v38 <= 0x94F2094F2094F2)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v39 = a3;
      v40 = v7;
      v88.__r_.__value_.__r.__words[0] = 0;
      v88.__r_.__value_.__l.__size_ = 8 * ((v61 - v60) >> 3);
      v88.__r_.__value_.__r.__words[2] = v88.__r_.__value_.__l.__size_;
      v89 = 0;
      InputTranscoder::TranscoderConfiguration::TranscoderConfiguration(v88.__r_.__value_.__l.__size_, v66);
      v36 = v88.__r_.__value_.__r.__words[2] + 440;
      v88.__r_.__value_.__r.__words[2] += 440;
      v41 = v60;
      v42 = v61;
      v43 = v60 + v88.__r_.__value_.__l.__size_ - v61;
      if (v60 != v61)
      {
        v44 = 0;
        v45 = v60;
        v46 = (v60 + v88.__r_.__value_.__l.__size_ - v61);
        do
        {
          InputTranscoder::TranscoderConfiguration::TranscoderConfiguration(v46, v45);
          v45 = (v45 + 440);
          v46 = (v46 + 440);
          v44 -= 440;
        }

        while (v45 != v42);
        a3 = v39;
        do
        {
          InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(v41);
          v41 += 55;
        }

        while (v41 != v42);
        v41 = v60;
        v36 = v88.__r_.__value_.__r.__words[2];
      }

      a2 = v56;
      v60 = v43;
      v61 = v36;
      v47 = v62;
      v62 = v89;
      v88.__r_.__value_.__r.__words[2] = v41;
      v89 = v47;
      v88.__r_.__value_.__r.__words[0] = v41;
      v88.__r_.__value_.__l.__size_ = v41;
      std::__split_buffer<InputTranscoder::TranscoderConfiguration>::~__split_buffer(&v88);
      v7 = v40;
      v11 = v57;
      v34 = v19;
    }

    else
    {
      InputTranscoder::TranscoderConfiguration::TranscoderConfiguration(v61, v66);
      v36 = v35 + 440;
    }

    v61 = v36;
    InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(v66);
    v15 = v34 + 1;
    v12 = v58;
    Required = v59;
  }

  v48 = InputTranscoder::extract<int,__CFNumber const*>(cf, @"preferredModelType");
  v49 = v48 == 1;
  if (v48 == 2)
  {
    v49 = 2;
  }

  for (i = v60; ; i = (i + 440))
  {
    if (i == v61)
    {
      v51 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v66, "failed to find a suitable configuration");
      nlp::ResourceCreationException::ResourceCreationException(v51, v66);
    }

    if (*(i + 6) == v49)
    {
      break;
    }
  }

  InputTranscoder::TranscoderConfiguration::TranscoderConfiguration(a4, i);
  *&v66[0] = &v60;
  std::vector<InputTranscoder::TranscoderConfiguration>::__destroy_vector::operator()[abi:ne200100](v66);
  CFRelease(cf);
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(v7);
}

void sub_254C50F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, const void *a20, const void *a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      nlp::CFScopedPtr<__CFDictionary const*>::reset(&a20, 0);
      nlp::CFScopedPtr<__CFLocale const*>::reset(&a21, 0);
      nlp::CFScopedPtr<__CFLocale const*>::reset(&a22, 0);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void ___ZN15InputTranscoderL12getModelPathEPK14__CFDictionaryP10__CFBundlePK10__CFLocale_block_invoke(uint64_t a1, const __CFURL *a2, int a3, int a4, CFStringRef theString1, _BYTE *a6)
{
  v9 = *(a1 + 40);
  if (CFStringCompare(theString1, *MEMORY[0x277D23690], 0) == kCFCompareEqualTo)
  {
    PathComponent = CFURLCopyLastPathComponent(a2);
    v11 = PathComponent;
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = @"ctc.dat";
    }

    v13 = CFStringCompare(PathComponent, v12, 0);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v13 == kCFCompareEqualTo)
    {
      nlp::CFScopedPtr<__CFURL const*>::acquire((*(*(a1 + 32) + 8) + 40), a2);
      if (a6)
      {
        *a6 = 1;
      }
    }
  }
}

void sub_254C512B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlp::CFScopedPtr<__CFString const*>::reset(va, 0);
  _Unwind_Resume(a1);
}

const void *InputTranscoder::getRequiredCFType<__CFArray const*>(const __CFDictionary *a1, const __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Malformed dictionary: missing key=");
    InputTranscoder::makeDictionaryErrorMessage(a2, v9, &v10);
    nlp::ResourceCreationException::ResourceCreationException(exception, &v10);
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFArrayGetTypeID())
  {
    v8 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Malformed dictionary: invalid type for key=");
    InputTranscoder::makeDictionaryErrorMessage(a2, v9, &v10);
    nlp::ResourceCreationException::ResourceCreationException(v8, &v10);
  }

  return v4;
}

void sub_254C513EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v21)
  {
    __cxa_free_exception(v20);
  }

  _Unwind_Resume(exception_object);
}

const void *InputTranscoder::getRequiredCFType<__CFNumber const*>(const __CFDictionary *a1, const __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Malformed dictionary: missing key=");
    InputTranscoder::makeDictionaryErrorMessage(a2, v9, &v10);
    nlp::ResourceCreationException::ResourceCreationException(exception, &v10);
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFNumberGetTypeID())
  {
    v8 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Malformed dictionary: invalid type for key=");
    InputTranscoder::makeDictionaryErrorMessage(a2, v9, &v10);
    nlp::ResourceCreationException::ResourceCreationException(v8, &v10);
  }

  return v4;
}

void sub_254C5156C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v21)
  {
    __cxa_free_exception(v20);
  }

  _Unwind_Resume(exception_object);
}

const void *InputTranscoder::getRequiredCFType<__CFBoolean const*>(const __CFDictionary *a1, const __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Malformed dictionary: missing key=");
    InputTranscoder::makeDictionaryErrorMessage(a2, v9, &v10);
    nlp::ResourceCreationException::ResourceCreationException(exception, &v10);
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFBooleanGetTypeID())
  {
    v8 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Malformed dictionary: invalid type for key=");
    InputTranscoder::makeDictionaryErrorMessage(a2, v9, &v10);
    nlp::ResourceCreationException::ResourceCreationException(v8, &v10);
  }

  return v4;
}

void sub_254C516EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v21)
  {
    __cxa_free_exception(v20);
  }

  _Unwind_Resume(exception_object);
}

float InputTranscoder::convert<float>(const __CFNumber *a1)
{
  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  result = valuePtr;
  if (!Value && valuePtr == 0.0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v4, "Failed to parse CFNumber as kCFNumberFloatType");
    nlp::ResourceCreationException::ResourceCreationException(exception, &v4);
  }

  return result;
}

void sub_254C517F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void std::allocator_traits<std::allocator<InputTranscoder::DecoderConfiguration>>::destroy[abi:ne200100]<InputTranscoder::DecoderConfiguration,void,0>(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__split_buffer<InputTranscoder::DecoderConfiguration>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 288;
    std::allocator_traits<std::allocator<InputTranscoder::DecoderConfiguration>>::destroy[abi:ne200100]<InputTranscoder::DecoderConfiguration,void,0>(i - 288);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<InputTranscoder::DecoderConfiguration>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 288;
        std::allocator_traits<std::allocator<InputTranscoder::DecoderConfiguration>>::destroy[abi:ne200100]<InputTranscoder::DecoderConfiguration,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t InputTranscoder::TranscoderConfiguration::TranscoderConfiguration(uint64_t a1, uint64_t a2)
{
  InputTranscoder::CommonConfiguration::CommonConfiguration(a1, a2);
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v4 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v4;
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v5 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v5;
  }

  *(a1 + 152) = *(a2 + 152);
  v6 = *(a2 + 168);
  v7 = *(a2 + 184);
  v8 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v8;
  *(a1 + 184) = v7;
  *(a1 + 168) = v6;
  v9 = *(a2 + 232);
  v10 = *(a2 + 248);
  v11 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 264) = v11;
  *(a1 + 248) = v10;
  *(a1 + 232) = v9;
  if (*(a2 + 311) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 288), *(a2 + 288), *(a2 + 296));
  }

  else
  {
    v12 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v12;
  }

  if (*(a2 + 335) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 312), *(a2 + 312), *(a2 + 320));
  }

  else
  {
    v13 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 312) = v13;
  }

  if (*(a2 + 359) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 336), *(a2 + 336), *(a2 + 344));
  }

  else
  {
    v14 = *(a2 + 336);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 336) = v14;
  }

  v15 = *(a2 + 360);
  *(a1 + 372) = *(a2 + 372);
  *(a1 + 360) = v15;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 392, *(a2 + 392), *(a2 + 400), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 400) - *(a2 + 392)) >> 3));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 416, *(a2 + 416), *(a2 + 424), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 424) - *(a2 + 416)) >> 3));
  return a1;
}

void sub_254C51B4C(_Unwind_Exception *a1)
{
  if (*(v1 + 335) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 311) < 0)
  {
    operator delete(*(v1 + 288));
  }

  InputTranscoder::CTCConfiguration::~CTCConfiguration((v1 + 104));
  InputTranscoder::CommonConfiguration::~CommonConfiguration(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<InputTranscoder::TranscoderConfiguration>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 440;
    InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration((i - 440));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<InputTranscoder::TranscoderConfiguration>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        InputTranscoder::TranscoderConfiguration::~TranscoderConfiguration(v4 - 55);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t InputTranscoder::PlistBiMap<unsigned int,unsigned int>::PlistBiMap(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2867140D0;
  *(a1 + 16) = 0u;
  v3 = (a1 + 16);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0u;
  v4 = (a1 + 56);
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  Dictionary = InputTranscoder::createDictionary(a2);
  v42 = Dictionary;
  InputTranscoder::validateVersion(Dictionary, v6);
  Required = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"keyType");
  nlp::getUTF8StringFromCFString(Required, &__p);
  v8 = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"valueType");
  nlp::getUTF8StringFromCFString(v8, &keys);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ != 7)
    {
      goto LABEL_55;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 7)
    {
      goto LABEL_55;
    }

    p_p = &__p;
  }

  data = p_p->__r_.__value_.__l.__data_;
  v11 = *(p_p->__r_.__value_.__r.__words + 3);
  if (data != 1702129257 || v11 != 1919248229)
  {
LABEL_55:
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v36 = std::string::append(&v43, "", 1uLL);
    v37 = *&v36->__r_.__value_.__l.__data_;
    v45 = v36->__r_.__value_.__r.__words[2];
    *values = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    nlp::ResourceCreationException::ResourceCreationException(exception, values);
  }

  if ((v48 & 0x80000000) == 0)
  {
    if (v48 != 7)
    {
      goto LABEL_56;
    }

    if (keys != 1702129257 || *(&keys + 3) != 1919248229)
    {
      goto LABEL_56;
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_19;
    }

LABEL_53:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_19;
  }

  if (v47 != 7 || (*keys == 1702129257 ? (v33 = *(keys + 3) == 1919248229) : (v33 = 0), !v33))
  {
LABEL_56:
    v38 = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v39 = std::string::append(&v43, "", 1uLL);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v45 = v39->__r_.__value_.__r.__words[2];
    *values = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    nlp::ResourceCreationException::ResourceCreationException(v38, values);
  }

  operator delete(keys);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_53;
  }

LABEL_19:
  v14 = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"unknownKey");
  nlp::getUTF8StringFromCFString(v14, &__p);
  v15 = InputTranscoder::convertToInteger<unsigned int>(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = v15;
  v16 = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"unknownValue");
  nlp::getUTF8StringFromCFString(v16, &__p);
  v17 = InputTranscoder::convertToInteger<unsigned int>(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 12) = v17;
  v18 = InputTranscoder::getRequiredCFType<__CFDictionary const*>(Dictionary, @"mapping");
  Count = CFDictionaryGetCount(v18);
  std::vector<void const*>::vector[abi:ne200100](&keys, Count);
  v20 = CFDictionaryGetCount(v18);
  std::vector<void const*>::vector[abi:ne200100](values, v20);
  CFDictionaryGetKeysAndValues(v18, keys, values[0]);
  v21 = keys;
  if (v47 != keys)
  {
    v22 = 0;
    do
    {
      v23 = v21[v22];
      v24 = CFGetTypeID(v23);
      if (v24 == CFStringGetTypeID())
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      v26 = values[0][v22];
      v27 = CFGetTypeID(v26);
      if (v27 != CFStringGetTypeID())
      {
        v26 = 0;
      }

      if (v25)
      {
        v28 = v26 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        v34 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&__p, "Malformed plist: incorrect types for mapping dictionary");
        nlp::ResourceCreationException::ResourceCreationException(v34, &__p);
      }

      nlp::getUTF8StringFromCFString(v25, &__p);
      v29 = InputTranscoder::convertToInteger<unsigned int>(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      LODWORD(v43.__r_.__value_.__l.__data_) = v29;
      nlp::getUTF8StringFromCFString(v26, &__p);
      v30 = InputTranscoder::convertToInteger<unsigned int>(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v41 = v30;
      __p.__r_.__value_.__r.__words[0] = &v43;
      *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v3, v43.__r_.__value_.__l.__data_) + 5) = v30;
      v31 = v43.__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[0] = &v41;
      *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4, v41) + 5) = v31;
      ++v22;
      v21 = keys;
    }

    while (v22 < v47 - keys);
  }

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
    v21 = keys;
  }

  if (v21)
  {
    v47 = v21;
    operator delete(v21);
    Dictionary = v42;
  }

  if (Dictionary)
  {
    CFRelease(Dictionary);
  }

  return a1;
}

void sub_254C52184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (v39)
  {
    __cxa_free_exception(v38);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  nlp::CFScopedPtr<__CFDictionary const*>::reset(&a11, 0);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v37);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v36);
  _Unwind_Resume(a1);
}

CFPropertyListRef InputTranscoder::createDictionary(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  v4 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], v2, v3, 0);
  v14 = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    nlp::ResourceCreationException::ResourceCreationException(exception, &v13);
  }

  v7 = v4;
  err = 0;
  v8 = nlp::createDictionaryWithContentsOfURL(v4, &err, v5, v6);
  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, "Failed to create dictionary");
    nlp::ResourceCreationException::ResourceCreationException(v11, &v13, err);
  }

  CFRelease(v7);
  return v8;
}

void sub_254C5241C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      nlp::CFScopedPtr<__CFError *>::reset(&a9, 0);
      nlp::CFScopedPtr<__CFURL const*>::reset(&a17, 0);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t InputTranscoder::validateVersion(InputTranscoder *this, const __CFDictionary *a2)
{
  result = InputTranscoder::extract<unsigned int,__CFNumber const*>(this, @"version");
  if (result != 1)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    std::to_string(&v5, v3);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Cannot parse dictionary with incompatible version=", &v5, &v6);
    nlp::ResourceCreationException::ResourceCreationException(exception, &v6);
  }

  return result;
}

void sub_254C52554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

char *InputTranscoder::PlistBiMap<unsigned int,unsigned int>::operator[](uint64_t a1, unsigned int *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>((a1 + 16), *a2);
  if (v3)
  {
    return v3 + 20;
  }

  else
  {
    return (a1 + 12);
  }
}

char *InputTranscoder::PlistBiMap<unsigned int,unsigned int>::reverseMap(uint64_t a1, unsigned int *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>((a1 + 56), *a2);
  if (v3)
  {
    return v3 + 20;
  }

  else
  {
    return (a1 + 8);
  }
}

uint64_t InputTranscoder::PlistBiMap<unsigned int,std::string>::PlistBiMap(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286714110;
  *(a1 + 16) = 0u;
  v3 = (a1 + 16);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  v4 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  Dictionary = InputTranscoder::createDictionary(a2);
  v40 = Dictionary;
  InputTranscoder::validateVersion(Dictionary, v6);
  Required = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"keyType");
  nlp::getUTF8StringFromCFString(Required, &__p);
  v8 = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"valueType");
  nlp::getUTF8StringFromCFString(v8, &keys);
  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ != 7)
    {
      goto LABEL_44;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 7)
    {
      goto LABEL_44;
    }

    p_p = &__p;
  }

  data = p_p->__r_.__value_.__l.__data_;
  v12 = *(p_p->__r_.__value_.__r.__words + 3);
  if (data != 1702129257 || v12 != 1919248229)
  {
LABEL_44:
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v34 = std::string::append(&v41, "", 1uLL);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v43 = v34->__r_.__value_.__r.__words[2];
    *values = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    nlp::ResourceCreationException::ResourceCreationException(exception, values);
  }

  if (!InputTranscoder::typeMatches<std::string>(&keys))
  {
    v36 = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v37 = std::string::append(&v41, "", 1uLL);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v43 = v37->__r_.__value_.__r.__words[2];
    *values = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    nlp::ResourceCreationException::ResourceCreationException(v36, values);
  }

  if (v46 < 0)
  {
    operator delete(keys);
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v9 & 0x80) == 0)
  {
    goto LABEL_14;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_14:
  v14 = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"unknownKey");
  nlp::getUTF8StringFromCFString(v14, &__p);
  v15 = InputTranscoder::convertToInteger<unsigned int>(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = v15;
  v16 = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"unknownValue");
  nlp::getUTF8StringFromCFString(v16, &__p);
  if (*(a1 + 39) < 0)
  {
    operator delete(*v3);
  }

  *v3 = __p;
  v17 = InputTranscoder::getRequiredCFType<__CFDictionary const*>(Dictionary, @"mapping");
  Count = CFDictionaryGetCount(v17);
  std::vector<void const*>::vector[abi:ne200100](&keys, Count);
  v19 = CFDictionaryGetCount(v17);
  std::vector<void const*>::vector[abi:ne200100](values, v19);
  CFDictionaryGetKeysAndValues(v17, keys, values[0]);
  v20 = keys;
  if (v45 != keys)
  {
    v21 = 0;
    do
    {
      v22 = v20[v21];
      v23 = CFGetTypeID(v22);
      if (v23 == CFStringGetTypeID())
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      v25 = values[0][v21];
      v26 = CFGetTypeID(v25);
      if (v26 != CFStringGetTypeID())
      {
        v25 = 0;
      }

      if (v24)
      {
        v27 = v25 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        v32 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&__p, "Malformed plist: incorrect types for mapping dictionary");
        nlp::ResourceCreationException::ResourceCreationException(v32, &__p);
      }

      nlp::getUTF8StringFromCFString(v24, &__p);
      v28 = InputTranscoder::convertToInteger<unsigned int>(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v39 = v28;
      nlp::getUTF8StringFromCFString(v25, &__p);
      v41.__r_.__value_.__r.__words[0] = &v39;
      v29 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 40), v39);
      std::string::operator=(v29 + 1, &__p);
      v30 = v39;
      v41.__r_.__value_.__r.__words[0] = &__p;
      *(std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, &__p.__r_.__value_.__l.__data_) + 10) = v30;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v21;
      v20 = keys;
    }

    while (v21 < v45 - keys);
  }

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
    v20 = keys;
  }

  if (v20)
  {
    v45 = v20;
    operator delete(v20);
    Dictionary = v40;
  }

  if (Dictionary)
  {
    CFRelease(Dictionary);
  }

  return a1;
}

void sub_254C52AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (v39)
  {
    __cxa_free_exception(v38);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  nlp::CFScopedPtr<__CFDictionary const*>::reset(&a11, 0);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v37);
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(v36 + 40);
  if (*(v36 + 39) < 0)
  {
    operator delete(*v40);
  }

  _Unwind_Resume(a1);
}

uint64_t *InputTranscoder::PlistBiMap<unsigned int,std::string>::operator[](uint64_t a1, unsigned int *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>((a1 + 40), *a2);
  if (v3)
  {
    return v3 + 3;
  }

  else
  {
    return (a1 + 16);
  }
}

const void **InputTranscoder::PlistBiMap<unsigned int,std::string>::reverseMap(uint64_t a1, const void **a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 80), a2);
  if (v3)
  {
    return v3 + 5;
  }

  else
  {
    return (a1 + 8);
  }
}

uint64_t InputTranscoder::PlistBiMap<std::string,unsigned int>::PlistBiMap(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286714150;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  v4 = (a1 + 40);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  v5 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  Dictionary = InputTranscoder::createDictionary(a2);
  v36 = Dictionary;
  InputTranscoder::validateVersion(Dictionary, v7);
  Required = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"keyType");
  nlp::getUTF8StringFromCFString(Required, &v43);
  v9 = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"valueType");
  nlp::getUTF8StringFromCFString(v9, &__p);
  if (!InputTranscoder::typeMatches<std::string>(&v43))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v33 = std::string::append(&__str, "", 1uLL);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v39 = v33->__r_.__value_.__r.__words[2];
    *values = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    nlp::ResourceCreationException::ResourceCreationException(exception, values);
  }

  if (v42 < 0)
  {
    if (v41 != 7 || (*__p == 1702129257 ? (v11 = *(__p + 3) == 1919248229) : (v11 = 0), !v11))
    {
LABEL_45:
      v29 = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v30 = std::string::append(&__str, "", 1uLL);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v39 = v30->__r_.__value_.__r.__words[2];
      *values = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      nlp::ResourceCreationException::ResourceCreationException(v29, values);
    }

    operator delete(__p);
  }

  else
  {
    if (v42 != 7)
    {
      goto LABEL_45;
    }

    if (__p != 1702129257 || *(&__p + 3) != 1919248229)
    {
      goto LABEL_45;
    }
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v12 = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"unknownKey");
  nlp::getUTF8StringFromCFString(v12, &v43);
  if (*(a1 + 31) < 0)
  {
    operator delete(*v3);
  }

  *v3 = v43;
  v13 = InputTranscoder::getRequiredCFType<__CFString const*>(Dictionary, @"unknownValue");
  nlp::getUTF8StringFromCFString(v13, &v43);
  v14 = InputTranscoder::convertToInteger<unsigned int>(&v43);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  *(a1 + 32) = v14;
  v15 = InputTranscoder::getRequiredCFType<__CFDictionary const*>(Dictionary, @"mapping");
  Count = CFDictionaryGetCount(v15);
  std::vector<void const*>::vector[abi:ne200100](&__p, Count);
  v17 = CFDictionaryGetCount(v15);
  std::vector<void const*>::vector[abi:ne200100](values, v17);
  CFDictionaryGetKeysAndValues(v15, __p, values[0]);
  v18 = __p;
  if (v41 != __p)
  {
    v19 = 0;
    do
    {
      v20 = v18[v19];
      v21 = CFGetTypeID(v20);
      if (v21 != CFStringGetTypeID())
      {
        v20 = 0;
      }

      v22 = values[0][v19];
      v23 = CFGetTypeID(v22);
      if (v23 != CFStringGetTypeID())
      {
        v22 = 0;
      }

      if (v20)
      {
        v24 = v22 == 0;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        v28 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v43, "Malformed plist: incorrect types for mapping dictionary");
        nlp::ResourceCreationException::ResourceCreationException(v28, &v43);
      }

      nlp::getUTF8StringFromCFString(v20, &__str);
      nlp::getUTF8StringFromCFString(v22, &v43);
      v25 = InputTranscoder::convertToInteger<unsigned int>(&v43);
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      v35 = v25;
      v43.__r_.__value_.__r.__words[0] = &__str;
      *(std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, &__str.__r_.__value_.__l.__data_) + 10) = v25;
      v43.__r_.__value_.__r.__words[0] = &v35;
      v26 = std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v5, v35);
      std::string::operator=(v26 + 1, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v19;
      v18 = __p;
    }

    while (v19 < (v41 - __p) >> 3);
  }

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
    v18 = __p;
  }

  if (v18)
  {
    v41 = v18;
    operator delete(v18);
    Dictionary = v36;
  }

  if (Dictionary)
  {
    CFRelease(Dictionary);
  }

  return a1;
}

void sub_254C53174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, const void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (v40)
  {
    __cxa_free_exception(v39);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  nlp::CFScopedPtr<__CFDictionary const*>::reset(&a11, 0);
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(v38);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v37);
  if (*(v36 + 31) < 0)
  {
    operator delete(*a9);
  }

  _Unwind_Resume(a1);
}

const void **InputTranscoder::PlistBiMap<std::string,unsigned int>::operator[](uint64_t a1, const void **a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 40), a2);
  if (v3)
  {
    return v3 + 5;
  }

  else
  {
    return (a1 + 32);
  }
}

uint64_t *InputTranscoder::PlistBiMap<std::string,unsigned int>::reverseMap(uint64_t a1, unsigned int *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>((a1 + 80), *a2);
  if (v3)
  {
    return v3 + 3;
  }

  else
  {
    return (a1 + 8);
  }
}

void *InputTranscoder::PlistBiMap<unsigned int,unsigned int>::~PlistBiMap(void *a1)
{
  *a1 = &unk_2867140D0;
  v2 = (a1 + 2);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table((a1 + 7));
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v2);
  return a1;
}

void InputTranscoder::PlistBiMap<unsigned int,unsigned int>::~PlistBiMap(void *a1)
{
  *a1 = &unk_2867140D0;
  v1 = (a1 + 2);
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table((a1 + 7));
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v1);

  JUMPOUT(0x259C28FE0);
}

uint64_t InputTranscoder::PlistBiMap<unsigned int,std::string>::~PlistBiMap(uint64_t a1)
{
  *a1 = &unk_286714110;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(a1 + 80);
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void InputTranscoder::PlistBiMap<unsigned int,std::string>::~PlistBiMap(uint64_t a1)
{
  *a1 = &unk_286714110;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(a1 + 80);
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x259C28FE0);
}

uint64_t InputTranscoder::PlistBiMap<std::string,unsigned int>::~PlistBiMap(uint64_t a1)
{
  *a1 = &unk_286714150;
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(a1 + 80);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(a1 + 40);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void InputTranscoder::PlistBiMap<std::string,unsigned int>::~PlistBiMap(uint64_t a1)
{
  *a1 = &unk_286714150;
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(a1 + 80);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(a1 + 40);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x259C28FE0);
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<InputTranscoder::InputFeature>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_254C53688(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlp::ResourceCreationException::ResourceCreationException(uint64_t a1, const void **a2, CFErrorRef err)
{
  v22[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_286713258;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = CFErrorCopyDescription(err);
  v21 = v6;
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = &v20;
  std::string::basic_string[abi:ne200100](&v20, v7 + 2);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v20.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, ": ");
  nlp::getUTF8StringFromCFString(v6, __p);
  if ((v19 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v11 = v19;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v20, v10, v11);
  v13 = v12->__r_.__value_.__r.__words[0];
  v22[0] = v12->__r_.__value_.__l.__size_;
  *(v22 + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*v5);
  }

  v15 = v22[0];
  *(a1 + 8) = v13;
  *(a1 + 16) = v15;
  *(a1 + 23) = *(v22 + 7);
  *(a1 + 31) = v14;
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  if (v6)
  {
LABEL_25:
    CFRelease(v6);
  }

LABEL_26:
  v16 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_254C53854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void nlp::CFScopedPtr<__CFError *>::reset(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_254C53D7C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x259C28F60](v1);
  _Unwind_Resume(a1);
}

_BYTE *std::stringbuf::str[abi:ne200100](_BYTE *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 96);
  if ((v3 & 0x10) != 0)
  {
    v5 = *(a2 + 88);
    v6 = *(a2 + 48);
    if (v5 < v6)
    {
      *(a2 + 88) = v6;
      v5 = v6;
    }

    v7 = (a2 + 40);
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      v4 = 0;
      __dst[23] = 0;
      goto LABEL_14;
    }

    v7 = (a2 + 16);
    v5 = *(a2 + 32);
  }

  v8 = *v7;
  v4 = v5 - *v7;
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v4;
  if (v4)
  {
    __dst = memmove(__dst, v8, v4);
  }

LABEL_14:
  v2[v4] = 0;
  return __dst;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

BOOL InputTranscoder::typeMatches<std::string>(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (a1[1] != 6)
    {
      return 0;
    }

    a1 = *a1;
  }

  else if (v1 != 6)
  {
    return 0;
  }

  return *a1 == 1769108595 && *(a1 + 2) == 26478;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    operator new();
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

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v4 + v7 + v13;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v13 + v5 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v6 + v8 + v19;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v31 + v29 + v40 + v30;
        v22 = __ROR8__(v31 + v29 + v40, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * ((v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v5);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
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

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t InputTranscoder::CandidateImpl::toString@<X0>(InputTranscoder::CandidateImpl *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v39);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "candidate=", 10);
  v5 = *(this + 23);
  if (v5 >= 0)
  {
    v6 = this;
  }

  else
  {
    v6 = *this;
  }

  if (v5 >= 0)
  {
    v7 = *(this + 23);
  }

  else
  {
    v7 = *(this + 1);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", score=", 8);
  *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFEFB | 4;
  v10 = *(this + 12);
  v11 = std::ostream::operator<<();
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", isCompletion=", 15);
  if (*(this + 80))
  {
    v13 = "YES";
  }

  else
  {
    v13 = "NO";
  }

  if (*(this + 80))
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", isValidWord=", 14);
  if (*(this + 81))
  {
    v17 = "YES";
  }

  else
  {
    v17 = "NO";
  }

  if (*(this + 81))
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", isMultiWord=", 14);
  if (*(this + 82))
  {
    v21 = "YES";
  }

  else
  {
    v21 = "NO";
  }

  if (*(this + 82))
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", foundOnlyInDynamicLexicons=", 29);
  if (*(this + 88))
  {
    v25 = "YES";
  }

  else
  {
    v25 = "NO";
  }

  if (*(this + 88))
  {
    v26 = 3;
  }

  else
  {
    v26 = 2;
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", prefix=", 9);
  v31 = *(this + 12);
  v30 = this + 96;
  v29 = v31;
  v32 = v30[23];
  if (v32 >= 0)
  {
    v33 = v30;
  }

  else
  {
    v33 = v29;
  }

  if (v32 >= 0)
  {
    v34 = v30[23];
  }

  else
  {
    v34 = *(v30 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v33, v34);
  if ((v46 & 0x10) != 0)
  {
    v36 = v45;
    if (v45 < v42)
    {
      v45 = v42;
      v36 = v42;
    }

    locale = v41[4].__locale_;
  }

  else
  {
    if ((v46 & 8) == 0)
    {
      v35 = 0;
      a2[23] = 0;
      goto LABEL_50;
    }

    locale = v41[1].__locale_;
    v36 = v41[3].__locale_;
  }

  v35 = v36 - locale;
  if ((v36 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v35 >= 0x17)
  {
    operator new();
  }

  a2[23] = v35;
  if (v35)
  {
    memmove(a2, locale, v35);
  }

LABEL_50:
  a2[v35] = 0;
  v39 = *MEMORY[0x277D82828];
  *(&v39 + *(v39 - 24)) = *(MEMORY[0x277D82828] + 24);
  v40 = MEMORY[0x277D82878] + 16;
  if (v44 < 0)
  {
    operator delete(__p);
  }

  v40 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v41);
  std::ostream::~ostream();
  return MEMORY[0x259C28F60](&v47);
}