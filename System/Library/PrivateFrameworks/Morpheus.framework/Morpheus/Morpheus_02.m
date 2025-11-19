void mlx::core::outer(uint64_t a1, uint64_t **a2, mlx::core *a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v11[0] = *(*a1 + 48);
  v11[1] = 1;
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, v11, &v12, 2uLL);
  mlx::core::reshape(a1, __p, a3, a4, v10);
  mlx::core::flatten(a2, 0, (((*a2)[1] - **a2) >> 2) - 1, a3, a4, v8);
  mlx::core::multiply(v10, v8, a3, a4);
}

void sub_25A2675E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  mlx::core::array::~array(&a10);
  mlx::core::array::~array(&a15);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::inner(uint64_t **a1, uint64_t **a2, mlx::core *a3, uint64_t a4)
{
  if ((*a1)[1] != **a1)
  {
    v8 = (*a2)[1];
    if (v8 != **a2)
    {
      if (*((*a1)[1] - 4) == *(v8 - 4))
      {
        v12 = -1;
        memset(v13, 0, sizeof(v13));
        std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v13, &v12, v13, 1uLL);
        v10 = -1;
        memset(__p, 0, sizeof(__p));
        std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v10, __p, 1uLL);
        mlx::core::tensordot(a1, a2, v13, __p, a3, a4);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "[inner] a and b must have the same last dimension.");
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }
  }

  mlx::core::multiply(a1, a2, a3, a4);
}

void mlx::core::addmm(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t a4, uint64_t a5, mlx::core *a6, uint64_t a7)
{
  v117 = *MEMORY[0x277D85DE8];
  v7 = **a2;
  v8 = (*a2)[1];
  v10 = **a3;
  v9 = (*a3)[1];
  v11 = v8 - v7;
  if (v8 == v7 || v9 == v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[addmm] Got 0 dimension input. Inputs must have at least one dimension.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (v11 == 4)
  {
    mlx::core::expand_dims(a2, 0, a6, a7);
  }

  if ((*a3)[1] - **a3 == 4)
  {
    mlx::core::expand_dims(a3, 1, a6, a7);
  }

  v18 = (*a2)[1];
  if (v18 == **a2)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v19 = *a3;
  if (((*a3)[1] - **a3) <= 4)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  if (*(v18 - 4) != *((*a3)[1] - 8))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v115);
    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v115, "[addmm] Last dimension of first input with shape ", 49);
    v82 = mlx::core::operator<<(v81, *a2);
    v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, " must match second to last dimension of", 39);
    v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " second input with shape ", 25);
    v85 = mlx::core::operator<<(v84, *a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, ".", 1);
    v86 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v115, &v111);
    std::logic_error::logic_error(v86, &v111);
    v86->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v86, off_279921408, MEMORY[0x277D82610]);
  }

  v20 = (*a2)[7];
  LODWORD(v115) = v20;
  BYTE4(v115) = BYTE4(v20);
  v21 = v19[7];
  LODWORD(v111.__r_.__value_.__l.__data_) = v21;
  v111.__r_.__value_.__s.__data_[4] = BYTE4(v21);
  v22 = mlx::core::promote_types(&v115, &v111);
  LODWORD(v115) = v22;
  BYTE4(v115) = BYTE4(v22);
  v23 = (*a1)[7];
  LODWORD(v111.__r_.__value_.__l.__data_) = v23;
  v111.__r_.__value_.__s.__data_[4] = BYTE4(v23);
  v24 = mlx::core::promote_types(&v115, &v111);
  LODWORD(v110) = v24;
  BYTE4(v110) = BYTE4(v24);
  if (v24 == 13)
  {
    mlx::core::matmul(a2, a3, a6, a7);
  }

  if ((mlx::core::issubdtype(&v110, &mlx::core::floating) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v115);
    v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v115, "[addmm] Only real floating point types are supported but ", 57);
    v88 = (*a1)[7];
    LODWORD(v111.__r_.__value_.__l.__data_) = v88;
    v111.__r_.__value_.__s.__data_[4] = BYTE4(v88);
    v89 = mlx::core::operator<<(v87, &v111);
    v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ", ", 2);
    v91 = (*a2)[7];
    LODWORD(v113[0]) = v91;
    BYTE4(v113[0]) = BYTE4(v91);
    v92 = mlx::core::operator<<(v90, v113);
    v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, " and ", 5);
    v94 = (*a3)[7];
    LODWORD(v112[0]) = v94;
    BYTE4(v112[0]) = BYTE4(v94);
    v95 = mlx::core::operator<<(v93, v112);
    v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, " were provided which results in ", 32);
    v97 = mlx::core::operator<<(v96, &v110);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, ", which is not a real floating point type.", 42);
    v98 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](&v115, &v111);
    std::logic_error::logic_error(v98, &v111);
    v98->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v98, off_279921408, MEMORY[0x277D82610]);
  }

  v25 = a2[1];
  v109[0] = *a2;
  v109[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v109, v110, a6, a7, &v115);
  v26 = v115;
  v115 = 0uLL;
  v27 = a2[1];
  *a2 = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  mlx::core::array::~array(&v115);
  mlx::core::array::~array(v109);
  v28 = a3[1];
  v108[0] = *a3;
  v108[1] = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v108, v110, a6, a7, &v115);
  v29 = v115;
  v115 = 0uLL;
  v30 = a3[1];
  *a3 = v29;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  mlx::core::array::~array(&v115);
  mlx::core::array::~array(v108);
  v31 = a1[1];
  v107[0] = *a1;
  v107[1] = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v107, v110, a6, a7, &v115);
  v32 = (v9 - v10) >> 2;
  v33 = v115;
  v115 = 0uLL;
  v34 = a1[1];
  *a1 = v33;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  mlx::core::array::~array(&v115);
  mlx::core::array::~array(v107);
  v35 = *a2;
  v36 = **a2;
  v37 = (*a2)[1];
  v38 = (*a3)[1] - **a3;
  if ((v37 - v36) < 9)
  {
    if (v38 < 9)
    {
      goto LABEL_61;
    }
  }

  else if (v38 == 8 && ((*a1)[1] - **a1) <= 4)
  {
    memset(&v111, 0, sizeof(v111));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v111, *v35, v35[1], (v35[1] - *v35) >> 2);
    LODWORD(v113[0]) = -1;
    HIDWORD(v113[0]) = *(v111.__r_.__value_.__l.__size_ - 4);
    v105 = 0;
    v106 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, v113, &v113[1], 2uLL);
    mlx::core::reshape(a2, &__p, a6, a7, &v115);
    v39 = v115;
    v115 = 0uLL;
    v40 = a2[1];
    *a2 = v39;
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    mlx::core::array::~array(&v115);
    if (__p)
    {
      v105 = __p;
      operator delete(__p);
    }

    v41 = *a3;
    v42 = **a3;
    v43 = (*a3)[1];
    if (v43 != v42)
    {
      v44 = *(v43 - 4);
      size = v111.__r_.__value_.__l.__size_;
      *(v111.__r_.__value_.__l.__size_ - 4) = v44;
      v46 = size - 4;
      if (v32 == 1)
      {
        v111.__r_.__value_.__l.__size_ = v46;
      }

      v47 = **a2;
      if ((*a2)[1] != v47)
      {
        LODWORD(v112[0]) = *v47;
        if ((v41[1] - v42) > 4)
        {
          HIDWORD(v112[0]) = *(v42 + 4);
          v116 = 0;
          v115 = 0uLL;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v115, v112, &v112[1], 2uLL);
          mlx::core::broadcast_to(a1, &v115, a6, a7, v113);
          v48 = *v113;
          v113[0] = 0;
          v113[1] = 0;
          v49 = a1[1];
          *a1 = v48;
          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }

          mlx::core::array::~array(v113);
          if (v115)
          {
            *(&v115 + 1) = v115;
            operator delete(v115);
          }

          v50 = **a2;
          if ((*a2)[1] != v50)
          {
            LODWORD(v114) = *v50;
            v51 = **a3;
            if (((*a3)[1] - v51) > 4)
            {
              DWORD1(v114) = *(v51 + 4);
              memset(v103, 0, sizeof(v103));
              std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v103, &v114, &v114 + 8, 2uLL);
              mlx::core::to_stream(a6, a7);
              operator new();
            }
          }

          std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
        }
      }

      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    }

    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v115 = 0uLL;
  v116 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v115, v36, v37 - 8, (v37 - 8 - v36) >> 2);
  v52 = **a3;
  v53 = (*a3)[1] - 8;
  memset(&v111, 0, sizeof(v111));
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v111, v52, v53, (v53 - v52) >> 2);
  mlx::core::broadcast_shapes(&v115, &v111, v113);
  if (((*a2)[1] - **a2) <= 4)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  LODWORD(v112[0]) = *((*a2)[1] - 8);
  std::vector<int>::push_back[abi:ne200100](v113, v112);
  v54 = (*a2)[1];
  if (v54 == **a2)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  LODWORD(v112[0]) = *(v54 - 4);
  std::vector<int>::push_back[abi:ne200100](v113, v112);
  mlx::core::broadcast_to(a2, v113, a6, a7, v112);
  v55 = *v112;
  v112[0] = 0;
  v112[1] = 0;
  v56 = a2[1];
  *a2 = v55;
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  mlx::core::array::~array(v112);
  if (((*a3)[1] - **a3) <= 4)
  {
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  v57 = (*a3)[1];
  v58 = v113[1];
  *(v113[1] - 2) = *(v57 - 8);
  *(v58 - 1) = *(v57 - 4);
  mlx::core::broadcast_to(a3, v113, a6, a7, v112);
  v59 = *v112;
  v112[0] = 0;
  v112[1] = 0;
  v60 = a3[1];
  *a3 = v59;
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  mlx::core::array::~array(v112);
  if (v113[0])
  {
    v113[1] = v113[0];
    operator delete(v113[0]);
  }

  if (v111.__r_.__value_.__r.__words[0])
  {
    v111.__r_.__value_.__l.__size_ = v111.__r_.__value_.__r.__words[0];
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  if (v115)
  {
    *(&v115 + 1) = v115;
    operator delete(v115);
  }

  v35 = *a2;
LABEL_61:
  memset(&v111, 0, sizeof(v111));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v111, *v35, v35[1], (v35[1] - *v35) >> 2);
  v61 = (*a3)[1];
  if (v61 != **a3)
  {
    v62 = v111.__r_.__value_.__l.__size_;
    *(v111.__r_.__value_.__l.__size_ - 4) = *(v61 - 4);
    memset(v113, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v113, v111.__r_.__value_.__l.__data_, v62, (v62 - v111.__r_.__value_.__r.__words[0]) >> 2);
    v63 = v11 & 0x3FFFFFFFCLL;
    v64 = v63 == 4 || v32 == 1;
    v65 = v64;
    v99 = v63;
    if (v64)
    {
      v66 = -4;
      v67 = -8;
      if (v63 != 4)
      {
        v67 = -4;
      }

      if (v32 == 1)
      {
        v66 = 0;
      }

      v68 = v66 - v67;
      if (v68)
      {
        v69 = v113[1] + v67;
        v70 = v113[1] + v67 + v68;
        v71 = -(v67 + v68);
        if (v113[1] != v70)
        {
          memmove(v113[1] + v67, v70, -(v67 + v68));
        }

        v113[1] = &v69[v71];
        v63 = v99;
      }
    }

    mlx::core::broadcast_shapes(*a1, v113, v112);
    mlx::core::broadcast_to(a1, v112, a6, a7, &v115);
    v72 = v115;
    v115 = 0uLL;
    v73 = a1[1];
    *a1 = v72;
    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    mlx::core::array::~array(&v115);
    if (v65)
    {
      v74 = *a1;
      v116 = 0;
      v115 = 0uLL;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v115, *v74, v74[1], (v74[1] - *v74) >> 2);
      if (v32 == 1)
      {
        LODWORD(v114) = 1;
        std::vector<int>::push_back[abi:ne200100](&v115, &v114);
      }

      if (v63 == 4)
      {
        std::vector<int>::push_back[abi:ne200100](&v115, (*(&v115 + 1) - 4));
        v76 = *(&v115 + 1);
        v75 = v115;
        v77 = *(&v115 + 1) - v115;
        *(*(&v115 + 1) - 8) = 1;
      }

      else
      {
        v76 = *(&v115 + 1);
        v75 = v115;
        v77 = *(&v115 + 1) - v115;
      }

      v101 = 0;
      v102 = 0;
      v100 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v100, v75, v76, v77 >> 2);
      mlx::core::reshape(a1, &v100, a6, a7, &v114);
      v78 = v114;
      v114 = 0uLL;
      v79 = a1[1];
      *a1 = v78;
      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v79);
      }

      mlx::core::array::~array(&v114);
      if (v100)
      {
        v101 = v100;
        operator delete(v100);
      }

      if (v115)
      {
        *(&v115 + 1) = v115;
        operator delete(v115);
      }
    }

    memset(&v111, 0, sizeof(v111));
    mlx::core::to_stream(a6, a7);
    operator new();
  }

  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
}

void sub_25A2687D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (a50 < 0)
  {
    operator delete(__p);
    if ((v64 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a62);
      _Unwind_Resume(a1);
    }
  }

  else if (!v64)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v63);
  goto LABEL_6;
}

void mlx::core::block_masked_mm(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, mlx::core *a7, uint64_t a8)
{
  v94[30] = *MEMORY[0x277D85DE8];
  v14 = *(a5 + 16);
  if (*(a4 + 16) == 1)
  {
    if ((*(a5 + 16) & 1) == 0)
    {
LABEL_7:
      v15 = *(a6 + 16);
      goto LABEL_8;
    }
  }

  else if ((*(a5 + 16) & 1) == 0)
  {
    if ((*(a6 + 16) & 1) == 0)
    {
      v55 = *MEMORY[0x277D85DE8];

      mlx::core::matmul(a1, a2, a7, a8);
    }

    goto LABEL_7;
  }

  v15 = 1;
LABEL_8:
  if (a3 == 32 || a3 == 64)
  {
    v16 = (*a1)[1] - **a1;
    if (v16)
    {
      v17 = (*a2)[1] == **a2;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v77 = (*a1)[1] - **a1;
      if (v16 == 4)
      {
        mlx::core::expand_dims(a1, 0, a7, a8);
      }

      if ((*a2)[1] - **a2 == 4)
      {
        mlx::core::expand_dims(a2, 1, a7, a8);
      }

      v18 = (*a1)[1];
      if (v18 != **a1)
      {
        v19 = *a2;
        if (((*a2)[1] - **a2) > 4)
        {
          if (*(v18 - 4) == *((*a2)[1] - 8))
          {
            v20 = (*a1)[7];
            LODWORD(__p[0]) = v20;
            BYTE4(__p[0]) = BYTE4(v20);
            v21 = v19[7];
            LODWORD(v89.__r_.__value_.__l.__data_) = v21;
            v89.__r_.__value_.__s.__data_[4] = BYTE4(v21);
            v22 = mlx::core::promote_types(__p, &v89);
            LODWORD(v88) = v22;
            BYTE4(v88) = BYTE4(v22);
            if (mlx::core::issubdtype(&v88, &mlx::core::floating))
            {
              v23 = a1[1];
              v87[0] = *a1;
              v87[1] = v23;
              if (v23)
              {
                atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
              }

              mlx::core::astype(v87, v88, a7, a8, __p);
              v24 = *__p;
              __p[0] = 0;
              __p[1] = 0;
              v25 = a1[1];
              *a1 = v24;
              if (v25)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v25);
              }

              mlx::core::array::~array(__p);
              mlx::core::array::~array(v87);
              v26 = a2[1];
              v86[0] = *a2;
              v86[1] = v26;
              if (v26)
              {
                atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
              }

              mlx::core::astype(v86, v88, a7, a8, __p);
              v27 = *__p;
              __p[0] = 0;
              __p[1] = 0;
              v28 = a2[1];
              *a2 = v27;
              if (v28)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v28);
              }

              mlx::core::array::~array(__p);
              mlx::core::array::~array(v86);
              v29 = **a1;
              v30 = (*a1)[1] - 8;
              memset(&v89, 0, sizeof(v89));
              std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v89, v29, v30, (v30 - v29) >> 2);
              v31 = **a2;
              v32 = (*a2)[1] - 8;
              memset(v85, 0, sizeof(v85));
              std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(v85, v31, v32, (v32 - v31) >> 2);
              v78 = a4;
              mlx::core::broadcast_shapes(&v89, v85, &v83);
              LODWORD(__p[0]) = 1;
              std::vector<int>::push_back[abi:ne200100](&v83, __p);
              LODWORD(__p[0]) = 1;
              std::vector<int>::push_back[abi:ne200100](&v83, __p);
              if (((*a1)[1] - **a1) > 4)
              {
                v76 = v15;
                v33 = (*a2)[1];
                if (v33 != **a2)
                {
                  v34 = v83;
                  v35 = v84 - v83;
                  v36 = (*a1)[1];
                  v37 = *(v33 - 4);
                  v39 = *(v36 - 8);
                  v38 = *(v36 - 4);
                  v40 = ((v84 - v83) << 30) - 0x200000000;
                  *(v83 + (v40 >> 30)) = v39;
                  v41 = (v35 << 30) - 0x100000000;
                  *&v34[v41 >> 30] = v38;
                  mlx::core::broadcast_to(a1, &v83, a7, a8, __p);
                  v42 = v40 >> 32;
                  v43 = v41 >> 32;
                  v44 = *__p;
                  __p[0] = 0;
                  __p[1] = 0;
                  v45 = a1[1];
                  *a1 = v44;
                  if (v45)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
                  }

                  mlx::core::array::~array(__p);
                  v46 = v83;
                  *(v83 + v42) = v38;
                  v46[v43] = v37;
                  mlx::core::broadcast_to(a2, &v83, a7, a8, __p);
                  v47 = *__p;
                  __p[0] = 0;
                  __p[1] = 0;
                  v48 = a2[1];
                  *a2 = v47;
                  if (v48)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
                  }

                  mlx::core::array::~array(__p);
                  v81[0] = 0;
                  v81[1] = 0;
                  v82 = 0;
                  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v81, v83, v84, (v84 - v83) >> 2);
                  v49 = v81[0];
                  *(v81[0] + v42) = v39;
                  v49[v43] = v37;
                  v50 = a1[1];
                  __p[0] = *a1;
                  __p[1] = v50;
                  if (v50)
                  {
                    atomic_fetch_add_explicit(v50 + 1, 1uLL, memory_order_relaxed);
                  }

                  v51 = a2[1];
                  v92 = *a2;
                  v93 = v51;
                  if (v51)
                  {
                    atomic_fetch_add_explicit(v51 + 1, 1uLL, memory_order_relaxed);
                  }

                  v79 = 0uLL;
                  v80 = 0;
                  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(&v79, __p, v94, 2uLL);
                  for (i = 2; i != -2; i -= 2)
                  {
                    mlx::core::array::~array(&__p[i]);
                  }

                  if (*(v78 + 16) == 1)
                  {
                    LOBYTE(v90) = 1;
                    v53 = mlx::core::TypeToDtype<BOOL>::operator mlx::core::Dtype();
                    mlx::core::array::array<BOOL>(__p, &v90, 1, (v53 & 0xFFFFFFFFFFLL));
                  }

                  if (v76)
                  {
                    LOBYTE(v90) = 1;
                    v54 = mlx::core::TypeToDtype<BOOL>::operator mlx::core::Dtype();
                    mlx::core::array::array<BOOL>(__p, &v90, 1, (v54 & 0xFFFFFFFFFFLL));
                  }

                  v81[0] = 0;
                  v81[1] = 0;
                  v82 = 0;
                  mlx::core::to_stream(a7, a8);
                  operator new();
                }

                std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
              }

              std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
            }

            std::ostringstream::basic_ostringstream[abi:ne200100](__p);
            v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[block_masked_mm] Only real floating point types are supported but ", 67);
            v64 = (*a1)[7];
            LODWORD(v89.__r_.__value_.__l.__data_) = v64;
            v89.__r_.__value_.__s.__data_[4] = BYTE4(v64);
            v65 = mlx::core::operator<<(v63, &v89);
            v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, " and ", 5);
            v67 = (*a2)[7];
            LODWORD(v85[0]) = v67;
            BYTE4(v85[0]) = BYTE4(v67);
            v68 = mlx::core::operator<<(v66, v85);
            v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, " were provided which results in ", 32);
            v70 = mlx::core::operator<<(v69, &v88);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ", which is not a real floating point type.", 42);
            exception = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](__p, &v89);
            std::logic_error::logic_error(exception, &v89);
            exception->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](__p);
          v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[block_masked_mm] Last dimension of first input with shape ", 59);
          v58 = mlx::core::operator<<(v57, *a1);
          v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " must match second to last dimension of", 39);
          v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " second input with shape ", 25);
          v61 = mlx::core::operator<<(v60, *a2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, ".", 1);
          v62 = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](__p, &v89);
          std::logic_error::logic_error(v62, &v89);
          v62->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v62, off_279921408, MEMORY[0x277D82610]);
        }

        std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
      }

      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    }

    v56 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v56, "[block_masked_mm] Got 0 dimension input. Inputs must have at least one dimension.");
    __cxa_throw(v56, off_279921408, MEMORY[0x277D82610]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](__p);
  v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[block_masked_mm] Only block_sizes 32, 64 are supported.", 56);
  v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "Got block size ", 15);
  v74 = MEMORY[0x25F851360](v73, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, ".", 1);
  v75 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](__p, &v89);
  std::logic_error::logic_error(v75, &v89);
  v75->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v75, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A269A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a63 < 0)
  {
    operator delete(__p);
    if ((v67 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a66);
      _Unwind_Resume(a1);
    }
  }

  else if (!v67)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v66);
  goto LABEL_6;
}

void mlx::core::gather_mm(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, int a5, mlx::core *a6, uint64_t a7)
{
  v73[31] = *MEMORY[0x277D85DE8];
  if (*(a3 + 16) & 1) != 0 || (*(a4 + 16))
  {
    v13 = **a1;
    v14 = (*a1)[1];
    v15 = (*a2)[1];
    if (v14 != v13 && v15 != **a2)
    {
      if (v14 - v13 == 4)
      {
        mlx::core::expand_dims(a1, 0, a6, a7);
      }

      if (v15 - **a2 == 4)
      {
        mlx::core::expand_dims(a2, 1, a6, a7);
      }

      v17 = (*a1)[1];
      if (v17 != **a1)
      {
        v18 = *a2;
        if (((*a2)[1] - **a2) > 4)
        {
          if (*(v17 - 4) == *((*a2)[1] - 8))
          {
            v19 = (*a1)[7];
            LODWORD(v72) = v19;
            BYTE4(v72) = BYTE4(v19);
            v20 = v18[7];
            LODWORD(v71.__r_.__value_.__l.__data_) = v20;
            v71.__r_.__value_.__s.__data_[4] = BYTE4(v20);
            v21 = mlx::core::promote_types(&v72, &v71);
            LODWORD(v70) = v21;
            BYTE4(v70) = BYTE4(v21);
            if (mlx::core::issubdtype(&v70, &mlx::core::floating))
            {
              v22 = a1[1];
              v69[0] = *a1;
              v69[1] = v22;
              if (v22)
              {
                atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
              }

              mlx::core::astype(v69, v70, a6, a7, &v72);
              v23 = v72;
              v72 = 0uLL;
              v24 = a1[1];
              *a1 = v23;
              if (v24)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v24);
              }

              mlx::core::array::~array(&v72);
              mlx::core::array::~array(v69);
              v25 = a2[1];
              v68[0] = *a2;
              v68[1] = v25;
              if (v25)
              {
                atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
              }

              mlx::core::astype(v68, v70, a6, a7, &v72);
              v26 = v72;
              v72 = 0uLL;
              v27 = a2[1];
              *a2 = v26;
              if (v27)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v27);
              }

              mlx::core::array::~array(&v72);
              mlx::core::array::~array(v68);
              LOBYTE(v65[0]) = 0;
              v66 = 0;
              if (*(a3 + 16) == 1)
              {
                v28 = *(a3 + 8);
                v65[0] = *a3;
                v65[1] = v28;
                if (v28)
                {
                  atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
                }

                v66 = 1;
              }

              if (v66 == 1)
              {
                mlx::core::array::~array(v65);
              }

              LOBYTE(v62[0]) = 0;
              v63 = 0;
              if (*(a4 + 16) == 1)
              {
                v29 = *(a4 + 8);
                v62[0] = *a4;
                v62[1] = v29;
                if (v29)
                {
                  atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
                }

                v63 = 1;
              }

              if (v63 == 1)
              {
                mlx::core::array::~array(v62);
              }

              v30 = *(v67 + 56);
              LODWORD(v72) = v30;
              BYTE4(v72) = BYTE4(v30);
              if (mlx::core::issubdtype(&v72, &mlx::core::integer))
              {
                v31 = *(v64 + 56);
                LODWORD(v72) = v31;
                BYTE4(v72) = BYTE4(v31);
                if (mlx::core::issubdtype(&v72, &mlx::core::integer))
                {
                  v61 = v67;
                  if (*(&v67 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  mlx::core::astype(&v61, 3, a6, a7, &v72);
                  v32 = v72;
                  v72 = 0uLL;
                  v33 = *(&v67 + 1);
                  v67 = v32;
                  if (v33)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
                  }

                  mlx::core::array::~array(&v72);
                  mlx::core::array::~array(&v61);
                  v60 = v64;
                  if (*(&v64 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v64 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  mlx::core::astype(&v60, 3, a6, a7, &v72);
                  v34 = v72;
                  v72 = 0uLL;
                  v35 = *(&v64 + 1);
                  v64 = v34;
                  if (v35)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
                  }

                  mlx::core::array::~array(&v72);
                  mlx::core::array::~array(&v60);
                  if (((*a1)[1] - **a1) > 4)
                  {
                    v59 = *((*a1)[1] - 8);
                    v36 = (*a2)[1];
                    if (v36 != **a2)
                    {
                      v58 = *(v36 - 4);
                      mlx::core::broadcast_arrays(&v67, &v64, a6, a7, &v72);
                      v71.__r_.__value_.__r.__words[0] = &v67;
                      v71.__r_.__value_.__l.__size_ = &v64;
                      std::tuple<mlx::core::array &,mlx::core::array &>::operator=[abi:ne200100]<mlx::core::array,mlx::core::array,0>(&v71, &v72);
                      mlx::core::array::~array(v73);
                      mlx::core::array::~array(&v72);
                      memset(&v71, 0, sizeof(v71));
                      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v71, *v67, *(v67 + 8), (*(v67 + 8) - *v67) >> 2);
                      std::vector<int>::push_back[abi:ne200100](&v71.__r_.__value_.__l.__data_, &v59);
                      std::vector<int>::push_back[abi:ne200100](&v71.__r_.__value_.__l.__data_, &v58);
                      memset(&v71, 0, sizeof(v71));
                      mlx::core::to_stream(a6, a7);
                      if (a5)
                      {
                        v37 = (*(a4 + 16) & 1) == 0;
                        v38 = *(a3 + 16) ^ 1u;
                      }

                      operator new();
                    }

                    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
                  }

                  std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "[gather_mm] Got rhs_indices with invalid dtype. Indices must be integral.");
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "[gather_mm] Got lhs_indices with invalid dtype. Indices must be integral.");
              }

              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
            }

            std::ostringstream::basic_ostringstream[abi:ne200100](&v72);
            v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v72, "[gather_mm] Only real floating point types are supported but ", 61);
            v48 = (*a1)[7];
            LODWORD(v71.__r_.__value_.__l.__data_) = v48;
            v71.__r_.__value_.__s.__data_[4] = BYTE4(v48);
            v49 = mlx::core::operator<<(v47, &v71);
            v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " and ", 5);
            v51 = (*a2)[7];
            LODWORD(v67) = v51;
            BYTE4(v67) = BYTE4(v51);
            v52 = mlx::core::operator<<(v50, &v67);
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " were provided which results in ", 32);
            v54 = mlx::core::operator<<(v53, &v70);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ", which is not a real floating point type.", 42);
            v55 = __cxa_allocate_exception(0x10uLL);
            std::ostringstream::str[abi:ne200100](&v72, &v71);
            std::logic_error::logic_error(v55, &v71);
            v55->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v55, off_279921408, MEMORY[0x277D82610]);
          }

          std::ostringstream::basic_ostringstream[abi:ne200100](&v72);
          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v72, "[gather_mm] Last dimension of first input with shape ", 53);
          v42 = mlx::core::operator<<(v41, *a1);
          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " must match second to last dimension of", 39);
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " second input with shape ", 25);
          v45 = mlx::core::operator<<(v44, *a2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ".", 1);
          v46 = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](&v72, &v71);
          std::logic_error::logic_error(v46, &v71);
          v46->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v46, off_279921408, MEMORY[0x277D82610]);
        }

        std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
      }

      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v40, "[gather_mm] Got 0 dimension input. Inputs must have at least one dimension.");
    __cxa_throw(v40, off_279921408, MEMORY[0x277D82610]);
  }

  v39 = *MEMORY[0x277D85DE8];

  mlx::core::matmul(a1, a2, a6, a7);
}

void sub_25A26A6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, char a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61)
{
  if (a58 < 0)
  {
    operator delete(__p);
    if ((v62 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a60);
      _Unwind_Resume(a1);
    }
  }

  else if (!v62)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v61);
  goto LABEL_6;
}

void mlx::core::diagonal(uint64_t **a1, int a2, uint64_t a3, uint64_t a4, mlx::core *a5, uint64_t a6)
{
  v35[33] = *MEMORY[0x277D85DE8];
  v6 = ((*a1)[1] - **a1) >> 2;
  if (v6 > 1)
  {
    v8 = (v6 & (a3 >> 31)) + a3;
    if (v8 < v6)
    {
      v10 = (v6 & (a4 >> 31)) + a4;
      if (v10 < v6)
      {
        if (v8 != v10)
        {
          v14 = -a2 & ~(-a2 >> 31);
          v15 = a2 & ~(a2 >> 31);
          v16 = mlx::core::array::shape(a1, v8) - v14;
          v17 = mlx::core::array::shape(a1, v10) - v15;
          if (v17 < v16)
          {
            v16 = v17;
          }

          v18 = mlx::core::to_stream(a5, a6);
          mlx::core::arange(0x400000007, v18, v19 | 0x100000000, v35, v14, ((v16 & ~(v16 >> 31)) + v14), 1.0);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "[diagonal] axis1 and axis2 cannot be the same axis");
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](v35);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "[diagonal] Invalid axis2 ", 25);
      v29 = MEMORY[0x25F851360](v28, a4);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " for array with ", 16);
      v31 = MEMORY[0x25F851360](v30, v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " dimensions.", 12);
      v32 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v35, &v34);
      std::logic_error::logic_error(v32, &v34);
      v32->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(v32, off_279921400, MEMORY[0x277D825F8]);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v35);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "[diagonal] Invalid axis1 ", 25);
    v24 = MEMORY[0x25F851360](v23, a3);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " for array with ", 16);
    v26 = MEMORY[0x25F851360](v25, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " dimensions.", 12);
    v27 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v35, &v34);
    std::logic_error::logic_error(v27, &v34);
    v27->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v27, off_279921400, MEMORY[0x277D825F8]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v35);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "[diagonal] Array must have at least two dimensions, but got ", 60);
  v21 = MEMORY[0x25F851360](v20, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " dimensions.", 12);
  v22 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v35, &v34);
  std::logic_error::logic_error(v22, &v34);
  v22->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v22, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A26ADBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void mlx::core::diag(uint64_t **a1, int a2, mlx::core *a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = ((*a1)[1] - **a1) >> 2;
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v6 = *(*a1 + 12);
      if (a2 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = -a2;
      }

      LODWORD(v14.__r_.__value_.__l.__data_) = v7 + v6;
      HIDWORD(v14.__r_.__value_.__r.__words[0]) = v7 + v6;
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v14, &v14.__r_.__value_.__l.__size_, 2uLL);
      v8 = (*a1)[7] & 0xFFFFFFFFFFLL;
      mlx::core::zeros(__p);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](__p);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[diag] array must be 1-D or 2-D, got array with ", 48);
    v11 = MEMORY[0x25F851380](v10, ((*a1)[1] - **a1) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__p, &v14);
    std::logic_error::logic_error(exception, &v14);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v9 = *MEMORY[0x277D85DE8];

  mlx::core::diagonal(a1, a2, 0, 1, a3, a4);
}

void sub_25A26B3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (*(v12 - 73) < 0)
  {
    operator delete(*(v12 - 96));
    if ((v11 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v10);
  goto LABEL_6;
}

void mlx::core::trace(uint64_t **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, mlx::core *a6, uint64_t a7)
{
  v7 = ((*a1)[1] - **a1) >> 2;
  if (v7 > 1)
  {
    v8 = (v7 & (a3 >> 31)) + a3;
    if (v8 < v7)
    {
      v9 = (v7 & (a4 >> 31)) + a4;
      if (v9 < v7)
      {
        if (v8 != v9)
        {
          mlx::core::diagonal(a1, a2, a3, a4, a6, a7);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "[trace] axis1 and axis2 cannot be the same axis");
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](v27);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "[trace] Invalid axis2 ", 22);
      v21 = MEMORY[0x25F851360](v20, a4);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " for array with ", 16);
      v23 = MEMORY[0x25F851360](v22, v7);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " dimensions.", 12);
      v24 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](v27, &v26);
      std::logic_error::logic_error(v24, &v26);
      v24->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(v24, off_279921400, MEMORY[0x277D825F8]);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](v27);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "[trace] Invalid axis1 ", 22);
    v15 = MEMORY[0x25F851360](v14, a3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " for array with ", 16);
    v17 = MEMORY[0x25F851360](v16, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " dimensions.", 12);
    v18 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v27, &v26);
    std::logic_error::logic_error(v18, &v26);
    v18->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v18, off_279921400, MEMORY[0x277D825F8]);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v27);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "[trace] Array must have at least two dimensions, but got ", 57);
  v11 = MEMORY[0x25F851360](v10, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " dimensions.", 12);
  v12 = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v27, &v26);
  std::logic_error::logic_error(v12, &v26);
  v12->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v12, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A26B7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a17);
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

void mlx::core::depends(uint64_t *a1, uint64_t **a2)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(&v31, *a1, a1[1], (a1[1] - *a1) >> 4);
  v4 = std::vector<mlx::core::array>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(&v31, v32, *a2, a2[1], (a2[1] - *a2) >> 4);
  v5 = *a1;
  v6 = *(**a1 + 64);
  if (v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
  }

  else
  {
    v7 = mlx::core::to_stream(v4, 0);
    v8 = v9;
    v5 = *a1;
  }

  v30 = 0;
  v10 = 0uLL;
  v29 = 0u;
  v28 = 0;
  *__p = 0u;
  v11 = a1[1];
  if (v5 == v11)
  {
    v24 = 0;
  }

  else
  {
    do
    {
      v12 = *v5;
      v13 = *(&v29 + 1);
      if (*(&v29 + 1) >= v30)
      {
        v14 = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(&v29, v12);
      }

      else
      {
        **(&v29 + 1) = 0;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v13, *v12, v12[1], (v12[1] - *v12) >> 2);
        v14 = v13 + 24;
      }

      *(&v29 + 1) = v14;
      v15 = *(*v5 + 56);
      v16 = __p[1];
      if (__p[1] >= v28)
      {
        v18 = (__p[1] - __p[0]) >> 3;
        if ((v18 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v19 = (v28 - __p[0]) >> 2;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v28 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::Dtype>>(__p, v20);
        }

        v21 = (8 * v18);
        *v21 = v15 & 0xFFFFFFFFFFLL;
        v17 = (8 * v18 + 8);
        v22 = v21 - (__p[1] - __p[0]);
        memcpy(v22, __p[0], __p[1] - __p[0]);
        v23 = __p[0];
        __p[0] = v22;
        __p[1] = v17;
        v28 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *__p[1] = v15 & 0xFFFFFFFFFFLL;
        v17 = v16 + 8;
      }

      __p[1] = v17;
      v5 += 16;
    }

    while (v5 != v11);
    v10 = v29;
    v24 = v30;
  }

  v25 = v10;
  v26 = v24;
  v30 = 0;
  v29 = 0uLL;
  mlx::core::to_stream(v7, v8 | 0x100000000);
  operator new();
}

void sub_25A26BB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, char a20)
{
  a17 = &a20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void mlx::core::atleast_1d(void *a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(*a1 + 8) == **a1)
  {
    v9 = 1;
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v9, &__p, 1uLL);
    mlx::core::reshape(a1, &__p, a2, a3, a4);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v6 = a1[1];
    *a4 = *a1;
    *(a4 + 8) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_25A26BCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::atleast_1d(void *a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::reserve(a4, (a1[1] - *a1) >> 4);
  v8 = *a1;
  for (i = a1[1]; v8 != i; v8 += 2)
  {
    mlx::core::atleast_1d(v8, a2, a3, &v17);
    v11 = a4[1];
    v10 = a4[2];
    if (v11 >= v10)
    {
      v13 = (v11 - *a4) >> 4;
      if ((v13 + 1) >> 60)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v14 = v10 - *a4;
      v15 = v14 >> 3;
      if (v14 >> 3 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v22 = a4;
      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a4, v16);
      }

      v18 = 0;
      v19 = (16 * v13);
      v21 = 0;
      *v19 = v17;
      v17 = 0uLL;
      v20 = 16 * v13 + 16;
      std::vector<mlx::core::array>::__swap_out_circular_buffer(a4, &v18);
      v12 = a4[1];
      std::__split_buffer<mlx::core::array>::~__split_buffer(&v18);
    }

    else
    {
      *v11 = v17;
      v12 = v11 + 1;
      v17 = 0uLL;
    }

    a4[1] = v12;
    mlx::core::array::~array(&v17);
  }
}

void mlx::core::atleast_2d(uint64_t a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v9 = *(*a1 + 8);
  v10 = v9 - v8;
  if (v10 == 1)
  {
    LODWORD(v20) = 1;
    if (v9 == v8)
    {
      std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
    }

    HIDWORD(v20) = *v8;
    v15 = 0;
    v16 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v20, &v21, 2uLL);
    mlx::core::reshape(a1, &__p, a2, a3, a4);
    v11 = __p;
    if (__p)
    {
      v15 = __p;
      goto LABEL_8;
    }
  }

  else if (v10)
  {
    v12 = *(a1 + 8);
    *a4 = *a1;
    *(a4 + 8) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v20 = 0x100000001;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v17, &v20, &v21, 2uLL);
    mlx::core::reshape(a1, &v17, a2, a3, a4);
    v11 = v17;
    if (v17)
    {
      v18 = v17;
LABEL_8:
      operator delete(v11);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_25A26BFCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::atleast_2d(uint64_t *a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::reserve(a4, (a1[1] - *a1) >> 4);
  v8 = *a1;
  for (i = a1[1]; v8 != i; v8 += 16)
  {
    mlx::core::atleast_2d(v8, a2, a3, &v17);
    v11 = a4[1];
    v10 = a4[2];
    if (v11 >= v10)
    {
      v13 = (v11 - *a4) >> 4;
      if ((v13 + 1) >> 60)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v14 = v10 - *a4;
      v15 = v14 >> 3;
      if (v14 >> 3 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v22 = a4;
      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a4, v16);
      }

      v18 = 0;
      v19 = (16 * v13);
      v21 = 0;
      *v19 = v17;
      v17 = 0uLL;
      v20 = 16 * v13 + 16;
      std::vector<mlx::core::array>::__swap_out_circular_buffer(a4, &v18);
      v12 = a4[1];
      std::__split_buffer<mlx::core::array>::~__split_buffer(&v18);
    }

    else
    {
      *v11 = v17;
      v12 = v11 + 1;
      v17 = 0uLL;
    }

    a4[1] = v12;
    mlx::core::array::~array(&v17);
  }
}

void mlx::core::atleast_3d(uint64_t a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v25[4] = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v9 = *(*a1 + 8);
  v10 = (v9 - v8) >> 2;
  if (v10 == 2)
  {
    if (v9 != v8)
    {
      LODWORD(v23) = *v8;
      if ((v9 - v8) > 4)
      {
        HIDWORD(v23) = *(v8 + 1);
        v24 = 1;
        v15 = 0;
        v16 = 0;
        __p = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v23, v25, 3uLL);
        mlx::core::reshape(a1, &__p, a2, a3, a4);
        v11 = __p;
        if (__p)
        {
          v15 = __p;
          goto LABEL_13;
        }

        goto LABEL_16;
      }
    }

    goto LABEL_17;
  }

  if (v10 != 1)
  {
    if (v10)
    {
      v12 = *(a1 + 8);
      *a4 = *a1;
      *(a4 + 8) = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v23 = 0x100000001;
      v24 = 1;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v20, &v23, v25, 3uLL);
      mlx::core::reshape(a1, &v20, a2, a3, a4);
      v11 = v20;
      if (v20)
      {
        v21 = v20;
LABEL_13:
        operator delete(v11);
        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

  LODWORD(v23) = 1;
  if (v9 == v8)
  {
LABEL_17:
    std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
  }

  HIDWORD(v23) = *v8;
  v24 = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v17, &v23, v25, 3uLL);
  mlx::core::reshape(a1, &v17, a2, a3, a4);
  v11 = v17;
  if (v17)
  {
    v18 = v17;
    goto LABEL_13;
  }

LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_25A26C360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::atleast_3d(uint64_t *a1@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<mlx::core::array>::reserve(a4, (a1[1] - *a1) >> 4);
  v8 = *a1;
  for (i = a1[1]; v8 != i; v8 += 16)
  {
    mlx::core::atleast_3d(v8, a2, a3, &v17);
    v11 = a4[1];
    v10 = a4[2];
    if (v11 >= v10)
    {
      v13 = (v11 - *a4) >> 4;
      if ((v13 + 1) >> 60)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v14 = v10 - *a4;
      v15 = v14 >> 3;
      if (v14 >> 3 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v22 = a4;
      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a4, v16);
      }

      v18 = 0;
      v19 = (16 * v13);
      v21 = 0;
      *v19 = v17;
      v17 = 0uLL;
      v20 = 16 * v13 + 16;
      std::vector<mlx::core::array>::__swap_out_circular_buffer(a4, &v18);
      v12 = a4[1];
      std::__split_buffer<mlx::core::array>::~__split_buffer(&v18);
    }

    else
    {
      *v11 = v17;
      v12 = v11 + 1;
      v17 = 0uLL;
    }

    a4[1] = v12;
    mlx::core::array::~array(&v17);
  }
}

uint64_t **mlx::core::conjugate@<X0>(uint64_t **result@<X0>, mlx::core *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v4 = result;
  __p[6] = *MEMORY[0x277D85DE8];
  v6 = *result;
  if (*(*result + 14) == 13)
  {
    memset(__p, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v6, v6[1], (v6[1] - *v6) >> 2);
    v9 = (*v4)[7];
    mlx::core::to_stream(a2, a3);
    operator new();
  }

  v10 = result[1];
  *a4 = v6;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A26C6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a17);
  mlx::core::array::~array(&a18);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::bitwise_impl(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40[29] = *MEMORY[0x277D85DE8];
  v9 = *(*a1 + 56);
  LODWORD(v38[0]) = v9;
  BYTE4(v38[0]) = BYTE4(v9);
  v10 = *(*a2 + 56);
  LODWORD(v34) = v10;
  BYTE4(v34) = BYTE4(v10);
  v11 = mlx::core::promote_types(v38, &v34);
  v35 = v11;
  v36 = BYTE4(v11);
  v12 = mlx::core::issubdtype(&v35, &mlx::core::integer);
  if (v35)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = a1[1];
    v32[0] = *a1;
    v32[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
    }

    mlx::core::astype(v32, v35, *a5, *(a5 + 8), v38);
    v15 = a2[1];
    v31[0] = *a2;
    v31[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }

    mlx::core::astype(v31, v35, *a5, *(a5 + 8), &v39);
    memset(v33, 0, sizeof(v33));
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(v33, v38, v40, 2uLL);
    mlx::core::broadcast_arrays(v33, *a5, *(a5 + 8), &v34);
    v37 = v33;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v37);
    for (i = 2; i != -2; i -= 2)
    {
      mlx::core::array::~array(&v38[i]);
    }

    mlx::core::array::~array(v31);
    mlx::core::array::~array(v32);
    v17 = *v34;
    memset(__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v17, v17[1], (v17[1] - *v17) >> 2);
    mlx::core::to_stream(*a5, *(a5 + 8));
    operator new();
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v38);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "[", 1);
  v19 = *(a4 + 23);
  if (v19 >= 0)
  {
    v20 = a4;
  }

  else
  {
    v20 = *a4;
  }

  if (v19 >= 0)
  {
    v21 = *(a4 + 23);
  }

  else
  {
    v21 = *(a4 + 8);
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "] Only allowed on integer or BOOLean types but got types ", 57);
  v24 = *(*a1 + 56);
  LODWORD(v34) = v24;
  BYTE4(v34) = BYTE4(v24);
  v25 = mlx::core::operator<<(v23, &v34);
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " and ", 5);
  v27 = *(*a2 + 56);
  LODWORD(v33[0]) = v27;
  BYTE4(v33[0]) = BYTE4(v27);
  v28 = mlx::core::operator<<(v26, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  std::ostringstream::str[abi:ne200100](v38, &v34);
  MEMORY[0x25F851100](exception, &v34);
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_25A26CAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((v35 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a34);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v34);
  goto LABEL_6;
}

void mlx::core::bitwise_and(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, "bitwise_and");
  mlx::core::bitwise_impl(a1, a2, 0, __p, v7);
}

void sub_25A26CC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::bitwise_or(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, "bitwise_or");
  mlx::core::bitwise_impl(a1, a2, 1, __p, v7);
}

void sub_25A26CD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::bitwise_xor(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, "bitwise_xor");
  mlx::core::bitwise_impl(a1, a2, 2, __p, v7);
}

void sub_25A26CDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::left_shift(uint64_t **a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v21[0] = a3;
  v21[1] = a4;
  v8 = (*a1)[7];
  __p = v8;
  __p_4 = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v20[0]) = v9;
  BYTE4(v20[0]) = BYTE4(v9);
  v10 = mlx::core::promote_types(&__p, v20);
  v12 = *a1;
  v11 = a1[1];
  if (v10 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10;
  }

  v19[0] = v12;
  v19[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v19, v13, a3, a4, v20);
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v13, a3, a4, v18);
  std::string::basic_string[abi:ne200100]<0>(&__p, "left_shift");
  mlx::core::bitwise_impl(v20, v18, 3, &__p, v21);
}

void sub_25A26CF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a18);
  mlx::core::array::~array(&a16);
  mlx::core::array::~array(&a22);
  mlx::core::array::~array(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::right_shift(uint64_t **a1, void *a2, mlx::core *a3, uint64_t a4)
{
  v21[0] = a3;
  v21[1] = a4;
  v8 = (*a1)[7];
  __p = v8;
  __p_4 = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v20[0]) = v9;
  BYTE4(v20[0]) = BYTE4(v9);
  v10 = mlx::core::promote_types(&__p, v20);
  v12 = *a1;
  v11 = a1[1];
  if (v10 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10;
  }

  v19[0] = v12;
  v19[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v19, v13, a3, a4, v20);
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  mlx::core::astype(v17, v13, a3, a4, v18);
  std::string::basic_string[abi:ne200100]<0>(&__p, "right_shift");
  mlx::core::bitwise_impl(v20, v18, 4, &__p, v21);
}

void sub_25A26D0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  mlx::core::array::~array(&a18);
  mlx::core::array::~array(&a16);
  mlx::core::array::~array(&a22);
  mlx::core::array::~array(&a20);
  _Unwind_Resume(a1);
}

void mlx::core::bitwise_invert(uint64_t **a1, mlx::core *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  v11 = v6;
  v12 = BYTE4(v6);
  if (!mlx::core::issubdtype(&v11, &mlx::core::inexact))
  {
    v7 = *a1;
    if (*(*a1 + 14))
    {
      memset(__p, 0, sizeof(__p));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
      v8 = (*a1)[7];
      mlx::core::to_stream(a2, a3);
      operator new();
    }

    mlx::core::logical_not(a1, a2, a3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[bitwise_invert] Bitwise inverse only allowed on integer types.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

uint64_t **mlx::core::view@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v5 = result;
  v26 = *MEMORY[0x277D85DE8];
  v7 = *result;
  if (*a2 != *(*result + 14))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v23, *v7, v7[1], (v7[1] - *v7) >> 2);
    v12 = *(*v5 + 60);
    v13 = *(a2 + 4);
    if ((*v5)[1] == **v5 && v13 != v12)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[view] Changing the type of a scalar is only allowed for types with the same size.");
      goto LABEL_18;
    }

    if (v13 <= v12)
    {
      if (v13 >= v12)
      {
        v15 = v24;
LABEL_16:
        memset(__p, 0, sizeof(__p));
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, v23, v15, (v15 - v23) >> 2);
        v19 = *a2;
        mlx::core::to_stream(a3, a4);
        operator new();
      }

      v15 = v24;
      v18 = *(v24 - 4) * (v12 / v13);
    }

    else
    {
      v15 = v24;
      v16 = *(v24 - 4);
      v17 = v13 / v12;
      v18 = v16 / v17;
      if (v16 % v17)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "[view] When viewing as a larger dtype, the size in bytes of the last axis must be a multiple of the requested type size.");
LABEL_18:
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
      }
    }

    *(v15 - 4) = v18;
    goto LABEL_16;
  }

  v8 = result[1];
  *a5 = v7;
  a5[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A26D66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  __cxa_free_exception(v19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void mlx::core::roll(mlx::core::array *this@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
    v25 = *(this + 1);
    *a6 = *this;
    *(a6 + 8) = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (a2[1] - *a2 < (v9 - v8))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v38);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "[roll] At least one shift value per axis is required, ", 54);
      v32 = MEMORY[0x25F851380](v31, (a2[1] - *a2) >> 2);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " provided for ", 14);
      v34 = MEMORY[0x25F851380](v33, (a3[1] - *a3) >> 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " axes.", 6);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](&v38, &__p);
      std::logic_error::logic_error(exception, &__p);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }

    v14 = *(this + 1);
    *a6 = *this;
    *(a6 + 8) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      v8 = *a3;
      v9 = a3[1];
    }

    if (v9 != v8)
    {
      v15 = 0;
      do
      {
        v16 = *(v8 + 4 * v15);
        v17 = *(*this + 8) - **this;
        if ((v16 & 0x80000000) != 0 && (v16 = v16 + (v17 >> 2), v16 < 0) || v16 >= (v17 >> 2))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v38);
          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "[roll] Invalid axis ", 20);
          v27 = MEMORY[0x25F851360](v26, *(*a3 + 4 * v15));
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " for array with ", 16);
          v29 = MEMORY[0x25F851380](v28, (*(*this + 8) - **this) >> 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " dimensions.", 12);
          v30 = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](&v38, &__p);
          std::logic_error::logic_error(v30, &__p);
          v30->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v30, off_279921408, MEMORY[0x277D82610]);
        }

        v18 = *(*a2 + 4 * v15);
        if (v18 < 0)
        {
          v20 = mlx::core::array::shape(this, v16);
          v19 = 0;
        }

        else
        {
          v19 = mlx::core::array::shape(this, v16);
          v20 = mlx::core::array::shape(this, v16);
        }

        LODWORD(v40[0]) = v19 + v18 / v20 * v20 - v18;
        memset(&__p, 0, sizeof(__p));
        std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, v40, v40 + 4, 1uLL);
        mlx::core::split(a6, &__p, v16, a4, a5, &v38);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v21 = v38;
        v22 = *v38;
        *v38 = v38[1];
        v21[1] = v22;
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        mlx::core::array::~array(&__p);
        memset(v36, 0, sizeof(v36));
        std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v36, v38, v39, (v39 - v38) >> 4);
        mlx::core::concatenate(v36, v16, a4, a5, &__p);
        v23 = *&__p.__r_.__value_.__l.__data_;
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        v24 = *(a6 + 8);
        *a6 = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        mlx::core::array::~array(&__p);
        v40[0] = v36;
        std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v40);
        __p.__r_.__value_.__r.__words[0] = &v38;
        std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
        ++v15;
        v8 = *a3;
      }

      while (v15 < (a3[1] - *a3) >> 2);
    }
  }
}

void sub_25A26DAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

void mlx::core::roll(uint64_t **a1@<X0>, int a2@<W1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v10 = *a1;
  v24 = 0;
  v23 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v23, *v10, v10[1], (v10[1] - *v10) >> 2);
  mlx::core::flatten(a1, 0, (((*a1)[1] - **a1) >> 2) - 1, a3, a4, v21);
  v17 = a2;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v18, &v17, &v18, 1uLL);
  v13 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v14, &v13, &v14, 1uLL);
  mlx::core::roll(v21, &v18, &v14, a3, a4, v22);
  *__p = v23;
  v12 = v24;
  v24 = 0;
  v23 = 0uLL;
  mlx::core::reshape(v22, __p, a3, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  mlx::core::array::~array(v22);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  mlx::core::array::~array(v21);
  if (v23)
  {
    *(&v23 + 1) = v23;
    operator delete(v23);
  }
}

void sub_25A26DD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  mlx::core::array::~array((v21 - 96));
  if (a14)
  {
    operator delete(a14);
  }

  if (a18)
  {
    operator delete(a18);
  }

  mlx::core::array::~array(&a21);
  v23 = *(v21 - 80);
  if (v23)
  {
    *(v21 - 72) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void mlx::core::roll(uint64_t **a1@<X0>, int **a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *v5++;
      v7 += v8;
    }

    while (v5 != v6);
  }

  mlx::core::roll(a1, v7, a3, a4, a5);
}

void mlx::core::roll(mlx::core::array *a1@<X0>, int a2@<W1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v16, &v15, &v16, 1uLL);
  v11 = a3;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v11, &__p, 1uLL);
  mlx::core::roll(a1, &v16, &__p, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_25A26DE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::roll(mlx::core::array *a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a2;
  std::vector<int>::vector[abi:ne200100](__p, (a3[1] - *a3) >> 2);
  mlx::core::roll(a1, __p, a3, a4, a5, a6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25A26DF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::roll(mlx::core::array *a1@<X0>, int **a2@<X1>, int a3@<W2>, mlx::core *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  if (*a2 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = *v11++;
      v13 += v14;
    }

    while (v11 != v12);
  }

  v19 = v13;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v20, &v19, &v20, 1uLL);
  v15 = a3;
  v17 = 0;
  v18 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v15, &__p, 1uLL);
  mlx::core::roll(a1, &v20, &__p, a4, a5, a6);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_25A26E050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::contiguous(uint64_t **a1, uint64_t a2, mlx::core *a3, uint64_t a4)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  v8 = (*a1)[7];
  mlx::core::to_stream(a3, a4);
  operator new();
}

void sub_25A26E21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a17);
  mlx::core::array::~array(&a18);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::vector<int>::vector[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  std::vector<int>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(a1, a2, a3, v4);
  return a1;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25A26E384(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::set<int>::set[abi:ne200100]<std::__wrap_iter<int *>>(void *a1, int *a2, int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<int>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<int>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<int>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a1, *a2);
    std::__tree<int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void *std::vector<mlx::core::Dtype>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<mlx::core::Dtype>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25A26EB14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<int>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25A26EC48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mlx::core::array>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        mlx::core::array::~array((v3 - 16));
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

void *std::__split_buffer<int>::emplace_back<int const&>(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void *std::vector<std::pair<int,int>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25A26EE2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_6vectorIiNS_9allocatorIiEEEES6_bEEC2B8ne200100IJLm0ELm1ELm2EEJS6_S6_bEJEJEJRS6_S9_RbEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 24, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 48) = *a4;
  return a1;
}

void sub_25A26F04C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<mlx::core::array>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<mlx::core::array *,mlx::core::array *,mlx::core::array *>(&v11, a2, v7, v6);
}

void *mlx::core::array::operator=(void *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a1 != *a2)
  {
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = a1[1];
    *a1 = v3;
    a1[1] = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return a1;
}

__int128 *std::__split_buffer<mlx::core::array>::emplace_back<mlx::core::array const&>(__int128 *result, void *a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 == *(result + 3))
  {
    v5 = *(result + 1);
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *result) >> 3;
      }

      v9 = *(result + 4);
      v11[4] = *(v3 + 4);
      std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(v9, v8);
    }

    v6 = (((v5 - *result) >> 4) + 1 + ((((v5 - *result) >> 4) + 1) >> 63)) >> 1;
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<mlx::core::array *,mlx::core::array *,mlx::core::array *>(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    *(v3 + 1) -= 16 * v6;
    *(v3 + 2) = v7;
  }

  *v4 = *a2;
  v10 = a2[1];
  *(v4 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 16;
  return result;
}

uint64_t std::vector<mlx::core::array>::__swap_out_circular_buffer(uint64_t a1, void *a2, mlx::core::array *this)
{
  v6 = a2[1];
  v7 = *(a1 + 8);
  if (v7 != this)
  {
    v8 = a2[2];
    v9 = this;
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      *(v9 + 1) = 0;
      v9 = (v9 + 16);
    }

    while (v9 != v7);
    v10 = this;
    do
    {
      mlx::core::array::~array(v10);
      v10 = (v11 + 16);
    }

    while (v10 != v7);
  }

  v12 = *a1;
  v13 = a2[1];
  a2[2] += *(a1 + 8) - this;
  *(a1 + 8) = this;
  v14 = v13 + v12 - this;
  if (v12 != this)
  {
    v15 = v12;
    v16 = (v13 + v12 - this);
    do
    {
      *v16++ = *v15;
      *v15 = 0;
      *(v15 + 1) = 0;
      v15 = (v15 + 16);
    }

    while (v15 != this);
    do
    {
      mlx::core::array::~array(v12);
      v12 = (v17 + 16);
    }

    while (v12 != this);
  }

  a2[1] = v14;
  v18 = *a1;
  *a1 = v14;
  *(a1 + 8) = v18;
  a2[1] = v18;
  v19 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v19;
  v20 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v20;
  *a2 = a2[1];
  return v6;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<mlx::core::array *,mlx::core::array *,mlx::core::array *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<mlx::core::array *,mlx::core::array *,mlx::core::array *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(a1, v2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

mlx::core::array *std::vector<mlx::core::array>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(uint64_t *a1, mlx::core::array *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if (a5 <= (v8 - v9) >> 4)
    {
      v16 = (v9 - a2) >> 4;
      if (v16 >= a5)
      {
        std::vector<mlx::core::array>::__move_range(a1, a2, a1[1], a2 + 16 * a5);
        v23 = &v7[2 * a5];
        v24 = v5;
        do
        {
          mlx::core::array::operator=(v24, v7);
          v7 += 2;
          v24 = (v24 + 16);
        }

        while (v7 != v23);
      }

      else
      {
        v17 = (a3 + v9 - a2);
        v18 = a1[1];
        if (v17 != a4)
        {
          v18 = a1[1];
          v19 = (a3 + v9 - a2);
          v20 = v18;
          do
          {
            v21 = v19[1];
            *v20 = *v19;
            v20[1] = v21;
            if (v21)
            {
              atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
            }

            v19 += 2;
            v20 += 2;
            v18 += 2;
          }

          while (v19 != a4);
        }

        a1[1] = v18;
        if (v16 >= 1)
        {
          std::vector<mlx::core::array>::__move_range(a1, a2, v9, a2 + 16 * a5);
          if (v9 != v5)
          {
            v22 = v5;
            do
            {
              mlx::core::array::operator=(v22, v7);
              v7 += 2;
              v22 = (v22 + 16);
            }

            while (v7 != v17);
          }
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + ((v9 - *a1) >> 4);
      if (v11 >> 60)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = a2 - v10;
      v13 = v8 - v10;
      if (v13 >> 3 > v11)
      {
        v11 = v13 >> 3;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      v15 = v12 >> 4;
      v28[4] = a1;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::array>>(a1, v14);
      }

      v25 = (16 * v15);
      v28[0] = 0;
      v28[1] = 16 * v15;
      v28[3] = 0;
      do
      {
        v26 = v7[1];
        *v25 = *v7;
        v25[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v25 += 2;
        v7 += 2;
      }

      while (v25 != (16 * v15 + 16 * a5));
      v28[2] = 16 * v15 + 16 * a5;
      v5 = std::vector<mlx::core::array>::__swap_out_circular_buffer(a1, v28, v5);
      std::__split_buffer<mlx::core::array>::~__split_buffer(v28);
    }
  }

  return v5;
}

void sub_25A26F898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<mlx::core::array>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
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
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_25A26F9C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void mlx::core::array::array<double>(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  __p[3] = a4;
  v4 = a3;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v4, __p, 1uLL);
  std::allocate_shared[abi:ne200100]<mlx::core::array::ArrayDesc,std::allocator<mlx::core::array::ArrayDesc>,std::vector<int>,mlx::core::Dtype &,0>();
}

void sub_25A26FAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<double const*>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A26FE68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlx::core::Arange>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE36F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::AsType>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

double std::__shared_ptr_emplace<mlx::core::AsStrided>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int>,std::vector<long long>,unsigned long &,std::allocator<mlx::core::AsStrided>,0>(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4, uint64_t *a5)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3798;
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a3 + 2);
  v9 = *a3;
  *(a3 + 2) = 0;
  *a3 = 0u;
  v10 = *(a4 + 2);
  v11 = *a4;
  *a4 = 0;
  *(a4 + 8) = 0u;
  v12 = *a5;
  *(a1 + 40) = v7;
  *(a1 + 24) = &unk_286BF7878;
  *(a1 + 32) = v6;
  *(a1 + 48) = v9;
  *(a1 + 64) = v8;
  *(a1 + 72) = v11;
  *(a1 + 88) = v10;
  *(a1 + 96) = v12;
  return result;
}

void std::__shared_ptr_emplace<mlx::core::AsStrided>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3798;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Copy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE37E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Full>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_emplace<mlx::core::Reshape>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int>,std::allocator<mlx::core::Reshape>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3888;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 48) = 0;
  v6 = a1 + 48;
  *(v6 - 8) = v5;
  *(v6 - 24) = &unk_286BF7FC8;
  *(v6 - 16) = v4;
  *(v6 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Reshape>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Unflatten>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE38D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Flatten>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Hadamard>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Squeeze>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE39C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ExpandDims>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3A18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::set<int>::set[abi:ne200100]<std::__wrap_iter<int const*>>(void *a1, int *a2, int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

void *std::__shared_ptr_emplace<mlx::core::Slice>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int>,std::vector<int>,std::vector<int>,std::allocator<mlx::core::Slice>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3A68;
  mlx::core::Slice::Slice((a1 + 3), *a2, *(a2 + 8), a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Slice>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3A68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t mlx::core::Slice::Slice(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  *(a1 + 16) = a3;
  *a1 = &unk_286BF8050;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 24, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 48, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, *a6, a6[1], (a6[1] - *a6) >> 2);
  return a1;
}

void sub_25A270A68(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

double std::__shared_ptr_emplace<mlx::core::DynamicSlice>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int>,std::vector<int>,std::allocator<mlx::core::DynamicSlice>,0>(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3AB8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a3 + 2);
  v8 = *a3;
  *(a3 + 2) = 0;
  *a3 = 0u;
  v9 = *(a4 + 2);
  v10 = *a4;
  *a4 = 0;
  *(a4 + 8) = 0u;
  *(a1 + 40) = v6;
  *(a1 + 24) = &unk_286BF8160;
  *(a1 + 32) = v5;
  *(a1 + 48) = v8;
  *(a1 + 64) = v7;
  *(a1 + 72) = v10;
  *(a1 + 88) = v9;
  return result;
}

void std::__shared_ptr_emplace<mlx::core::DynamicSlice>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3AB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::__shared_ptr_emplace<mlx::core::SliceUpdate>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int>,std::vector<int>,std::vector<int>,std::allocator<mlx::core::SliceUpdate>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3B08;
  mlx::core::SliceUpdate::SliceUpdate((a1 + 3), *a2, *(a2 + 8), a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::SliceUpdate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3B08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t mlx::core::SliceUpdate::SliceUpdate(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  *(a1 + 16) = a3;
  *a1 = &unk_286BF80D8;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 24, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 48, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, *a6, a6[1], (a6[1] - *a6) >> 2);
  return a1;
}

void sub_25A270E94(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<mlx::core::DynamicSliceUpdate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3B58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_emplace<mlx::core::Split>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int> const&,unsigned long &,std::allocator<mlx::core::Split>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3BA8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a4;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 24) = &unk_286BF8270;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v8, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 72) = v7;
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Split>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3BA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Concatenate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3BF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::__shared_ptr_emplace<mlx::core::Pad>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int> const&,std::vector<int> const&,std::vector<int> const&,std::allocator<mlx::core::Pad>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3C48;
  mlx::core::Pad::Pad((a1 + 3), *a2, *(a2 + 8), a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Pad>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3C48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t mlx::core::Pad::Pad(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  *(a1 + 16) = a3;
  *a1 = &unk_286BF7EB8;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 24, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 48, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, *a6, a6[1], (a6[1] - *a6) >> 2);
  return a1;
}

void sub_25A27141C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<mlx::core::Transpose>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int>,std::allocator<mlx::core::Transpose>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3C98;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 48) = 0;
  v6 = a1 + 48;
  *(v6 - 8) = v5;
  *(v6 - 24) = &unk_286BF8508;
  *(v6 - 16) = v4;
  *(v6 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Transpose>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3C98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_emplace<mlx::core::Broadcast>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int> const&,std::allocator<mlx::core::Broadcast>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3CE8;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 48) = 0;
  v6 = a1 + 48;
  *(v6 - 8) = v5;
  *(v6 - 24) = &unk_286BF7988;
  *(v6 - 16) = v4;
  *(v6 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Broadcast>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_emplace<mlx::core::Broadcast>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int> &,std::allocator<mlx::core::Broadcast>,0>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3CE8;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 48) = 0;
  v6 = a1 + 48;
  *(v6 - 8) = v5;
  *(v6 - 24) = &unk_286BF7988;
  *(v6 - 16) = v4;
  *(v6 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void *std::__shared_ptr_emplace<mlx::core::BroadcastAxes>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int> &,std::allocator<mlx::core::BroadcastAxes>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE3D38;
  std::construct_at[abi:ne200100]<mlx::core::BroadcastAxes,mlx::core::Stream,std::vector<int> &,mlx::core::BroadcastAxes*>((a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::BroadcastAxes>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3D38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::BroadcastAxes,mlx::core::Stream,std::vector<int> &,mlx::core::BroadcastAxes*>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  v8 = 0;
  v7 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v7, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 16) = v5;
  *a1 = &unk_286BF7900;
  *(a1 + 8) = v4;
  *(a1 + 24) = v7;
  *(a1 + 40) = v8;
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Equal>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3D88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::NotEqual>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3DD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Greater>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::GreaterEqual>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3E78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Less>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::LessEqual>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3F18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void sub_25A271ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<BOOL *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A27218C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlx::core::Select>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3F68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_emplace<mlx::core::Reduce>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,mlx::core::Reduce::ReduceType,std::vector<int> &,std::allocator<mlx::core::Reduce>,0>(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE3FB8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a3;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 4) = v7;
  *(v8 - 24) = &unk_286C04000;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v8, *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Reduce>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE3FB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ArgReduce>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4008;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Sort>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ArgSort>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE40A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Partition>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE40F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ArgPartition>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::LogSumExp>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4198;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Abs>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE41E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Negative>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Sign>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4288;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::LogicalNot>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE42D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::LogicalAnd>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4328;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::LogicalOr>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Add>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE43C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Subtract>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Multiply>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Divide>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE44B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Remainder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::DivMod>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Maximum>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE45A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Minimum>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE45F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Floor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Ceil>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Square>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE46E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Exp>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Expm1>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Sin>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE47D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Cos>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4828;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Tan>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ArcSin>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE48C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ArcCos>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ArcTan>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ArcTan2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE49B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Sinh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4A08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Cosh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4A58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Tanh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4AA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ArcSinh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ArcCosh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ArcTanh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Log>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Log1p>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::LogAddExp>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Sigmoid>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Erf>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ErfInv>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4D78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::StopGradient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4DC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Round>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4E18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void sub_25A2740A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<mlx::core::complex64_t *>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A274400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlx::core::Matmul>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4E68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::__shared_ptr_emplace<mlx::core::Gather>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int> const,std::vector<int> const,std::allocator<mlx::core::Gather>,0>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE4EB8;
  std::construct_at[abi:ne200100]<mlx::core::Gather,mlx::core::Stream,std::vector<int> const,std::vector<int> const,mlx::core::Gather*>((a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Gather>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4EB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::Gather,mlx::core::Stream,std::vector<int> const,std::vector<int> const,mlx::core::Gather*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v12 = 0;
  v11 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v11, *a3, a3[1], (a3[1] - *a3) >> 2);
  v9 = 0uLL;
  v10 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v9, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 16) = v7;
  *a1 = &unk_286BF6028;
  *(a1 + 8) = v6;
  *(a1 + 24) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  return a1;
}

void sub_25A27471C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<mlx::core::GatherAxis>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::ScatterAxis>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4F58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__shared_ptr_emplace<mlx::core::Scatter>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,mlx::core::Scatter::ReduceType &,std::vector<int> const&,std::allocator<mlx::core::Scatter>,0>(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_286BE4FA8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a3;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 4) = v7;
  *(v8 - 24) = &unk_286BF6138;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v8, *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Scatter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4FA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Sqrt>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE4FF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Softmax>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Power>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Scan>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE50E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::__shared_ptr_emplace<mlx::core::Convolution>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream,std::vector<int> &,std::vector<int> &,std::vector<int> &,std::vector<int> &,int &,BOOL &,std::allocator<mlx::core::Convolution>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int *a7, char *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BE5138;
  mlx::core::Convolution::Convolution((a1 + 3), *a2, *(a2 + 8), a3, a4, a5, a6, *a7, *a8);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Convolution>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5138;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t mlx::core::Convolution::Convolution(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8, char a9)
{
  *(a1 + 16) = a3;
  *a1 = &unk_286BF4C00;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 24, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 48, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, *a6, a6[1], (a6[1] - *a6) >> 2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 96, *a7, a7[1], (a7[1] - *a7) >> 2);
  *(a1 + 120) = a8;
  *(a1 + 124) = a9;
  return a1;
}

void sub_25A274F7C(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[10] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[7] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[4] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<mlx::core::QuantizedMatmul>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::GatherQMM>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE51D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::AddMM>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5228;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void mlx::core::array::array<BOOL>(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  __p[3] = a4;
  v4 = a3;
  memset(__p, 0, 24);
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v4, __p, 1uLL);
  std::allocate_shared[abi:ne200100]<mlx::core::array::ArrayDesc,std::allocator<mlx::core::array::ArrayDesc>,std::vector<int>,mlx::core::Dtype &,0>();
}

void sub_25A275220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::array::init<BOOL const*>(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = mlx::core::allocator::malloc((*(*a1 + 60) * *(*a1 + 48)));
  v3[0] = &unk_286BE3468;
  v3[1] = mlx::core::allocator::free;
  v3[3] = v3;
  mlx::core::array::set_data(a1, v2);
}

void sub_25A2754E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(mlx::core::allocator::Buffer)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<mlx::core::BlockMaskedMM>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::GatherMM>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE52C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Depends>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::NumberOfElements>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Conjugate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE53B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::BitwiseBinary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::BitwiseInvert>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::View>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE54A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Real>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE54F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Imag>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void std::__shared_ptr_emplace<mlx::core::Contiguous>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE5598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t *mlx::core::detail::InTracing::trace_stack(mlx::core::detail::InTracing *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    mlx::core::detail::InTracing::trace_stack();
  }

  return &qword_27FA05C08;
}

uint64_t std::vector<std::pair<char,char>>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void mlx::core::eval_impl(mlx::core *a1)
{
  v2 = mlx::core::default_device(a1);
  mlx::core::default_stream(*v2);
  for (i = *a1; ; i += 16)
  {
    if (i == *(a1 + 1))
    {
      goto LABEL_7;
    }

    if (!*(*i + 80))
    {
      v4 = *(*i + 64);
      if (v4)
      {
        break;
      }
    }
  }

  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
LABEL_7:
  operator new();
}

void sub_25A2767AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, mlx::core::array *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::~deque[abi:ne200100](&a23);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a29);
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Event>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Event>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Event>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Event>>>::~__hash_table(&a35);
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::~__hash_table(&a41);
  mlx::core::array::~array(a9);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v51 - 224);
  std::deque<mlx::core::array>::~deque[abi:ne200100]((v51 - 160));
  _Unwind_Resume(a1);
}

void *std::deque<mlx::core::array>::push_back(void *result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 32 * (v5 - v6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<mlx::core::array>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v8 + v3[4];
  }

  v10 = *a2;
  *(*(v6 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9) = *a2;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    v8 = v3[5];
  }

  v3[5] = v8 + 1;
  return result;
}

uint64_t std::deque<mlx::core::array>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  mlx::core::array::~array((*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2));
  --a1[5];

  return std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t mlx::core::Event::stream(uint64_t this)
{
  if (!*(this + 16))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "[Event::stream] Cannot access stream on invalid event.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return this;
}

void *mlx::core::eval_impl(std::vector<mlx::core::array>,BOOL)::$_0::operator()(uint64_t a1, unint64_t *a2)
{
  v3 = *(a1 + 8);
  v8 = *a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v3, &v8);
  if (result)
  {
    v5 = *a1;
    LODWORD(v8) = *(a1 + 16);
    v6 = std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::find<unsigned int>(v5, &v8);
    if (!v6)
    {
      v7 = *a1;
      mlx::core::Fence::Fence(&v8, *(a1 + 16), *(a1 + 24));
      std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__emplace_unique_impl<int const&,mlx::core::Fence>();
    }

    mlx::core::Fence::update(v6 + 3, *(a1 + 16), *(a1 + 24));
  }

  return result;
}

void sub_25A276B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *mlx::core::async_eval(uint64_t *result)
{
  for (i = *result; i != result[1]; i += 16)
  {
    if (!*(*i + 80))
    {
      v2 = *result;
      v3 = result[2];
      *result = 0;
      result[1] = 0;
      result[2] = 0;
      mlx::core::eval_impl(&v2);
    }
  }

  return result;
}

void sub_25A276BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 - 24) = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v9 - 24));
  _Unwind_Resume(a1);
}

void mlx::core::eval(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = *a1;
    do
    {
      if (!*(*v3 + 80))
      {
        v4[0] = *a1;
        v4[1] = v2;
        v4[2] = *(a1 + 16);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        mlx::core::eval_impl(v4);
      }

      v3 = (v3 + 16);
    }

    while (v3 != v2);
    do
    {
      mlx::core::array::wait(v1);
      v1 = (v1 + 16);
    }

    while (v1 != v2);
  }
}

void sub_25A276CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  mlx::core::array::~array(&a12);
  *(v12 - 24) = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v12 - 24));
  _Unwind_Resume(a1);
}

void mlx::core::vjp(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v69[33] = *MEMORY[0x277D85DE8];
  v8 = mlx::core::detail::InTracing::InTracing(&v66, 0, 1);
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v9 = *a2;
  if (*a2 != *(a2 + 8))
  {
    v10 = *v9;
    v11 = (*v9)[8];
    if (v11)
    {
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
    }

    else
    {
      v14 = mlx::core::default_device(v8);
      v12 = mlx::core::default_stream(*v14);
      v13 = v15;
      v10 = *v9;
    }

    v16 = v9[1];
    v62[0] = v10;
    v62[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    }

    mlx::core::copy(v62, v12, v13 | 0x100000000);
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    (*(*v17 + 48))(&v60);
    __src = 0;
    v58 = 0;
    v59 = 0;
    v18 = v60;
    if (v61 != v60)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = *(*(v18 + v19) + 64);
        {
          if (v21 >= ((a3[1] - *a3) >> 4))
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v68);
            v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, "[vjp] Number of outputs to compute gradients for (", 50);
            v49 = MEMORY[0x25F851380](v48, (v61 - v60) >> 4);
            v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ") does not match number of cotangents (", 39);
            v51 = MEMORY[0x25F851380](v50, (a3[1] - *a3) >> 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ").", 2);
            exception = __cxa_allocate_exception(0x10uLL);
            std::stringbuf::str[abi:ne200100](v69, v55);
            std::logic_error::logic_error(exception, v55);
            exception->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
          }

          v23 = *(v18 + v19);
          v24 = *(*a3 + 16 * v21);
          v25 = *(v23 + 8) - *v23;
          if (v25 != *(v24 + 8) - *v24 || memcmp(*v23, *v24, v25))
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v68);
            v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, "[vjp] Output shape ", 19);
            v44 = mlx::core::operator<<(v43, *(v18 + v19));
            v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " does not match cotangent shape ", 32);
            v46 = mlx::core::operator<<(v45, *(*a3 + 16 * v21));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, ".", 1);
            if (v61 - v60 == 16 && *(*(v18 + v19) + 48) == 1)
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, " If you are using grad your function must return a scalar.", 58);
            }

            v47 = __cxa_allocate_exception(0x10uLL);
            std::stringbuf::str[abi:ne200100](v69, v55);
            std::logic_error::logic_error(v47, v55);
            v47->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v47, off_279921408, MEMORY[0x277D82610]);
          }

          v26 = v58;
          if (v58 >= v59)
          {
            v28 = __src;
            v29 = v58 - __src;
            v30 = (v58 - __src) >> 3;
            v31 = v30 + 1;
            if ((v30 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v32 = v59 - __src;
            if ((v59 - __src) >> 2 > v31)
            {
              v31 = v32 >> 2;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFF8)
            {
              v33 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v31;
            }

            if (v33)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(&__src, v33);
            }

            v34 = (v58 - __src) >> 3;
            v35 = (8 * v30);
            *v35 = v20;
            v35[1] = v21;
            v27 = 8 * v30 + 8;
            v36 = (8 * v30 - 8 * v34);
            memcpy(&v35[-2 * v34], v28, v29);
            v37 = __src;
            __src = v36;
            v58 = v27;
            v59 = 0;
            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            *v58 = v20;
            *(v26 + 1) = v21;
            v27 = (v26 + 8);
          }

          v58 = v27;
          ++v21;
        }

        ++v20;
        v18 = v60;
        v19 += 16;
      }

      while (v20 < (v61 - v60) >> 4);
    }

    memset(v55, 0, sizeof(v55));
    v56 = 1065353216;
    memset(v53, 0, sizeof(v53));
    v54 = 1065353216;
    v38 = v63;
    if (v64 != v63)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      do
      {
        v42 = *(v38 + v39);
        *(v42 + 128) = 0;
        v68 = v42;
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v55, &v68);
        if (v41 < ((a4[1] - *a4) >> 2) && v40 == *(*a4 + 4 * v41))
        {
          v68 = *(v38 + v39);
          std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v53, &v68);
          ++v41;
        }

        ++v40;
        v38 = v63;
        v39 += 16;
      }

      while (v40 < (v64 - v63) >> 4);
    }

    v67 = 0;
    operator new();
  }

  std::__throw_bad_function_call[abi:ne200100]();
}

void sub_25A277A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a46 < 0)
  {
    operator delete(__p);
    if ((v70 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a69);
      if (a49)
      {
        a50 = a49;
        operator delete(a49);
      }

      __p = &a52;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
      __p = &a57;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&__p);
      mlx::core::detail::InTracing::~InTracing(&a63);
      _Unwind_Resume(a1);
    }
  }

  else if (!v70)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v69);
  goto LABEL_6;
}

mlx::core::array *mlx::core::array::outputs@<X0>(mlx::core::array *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v5 = *(*this + 224);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::vector<mlx::core::array>::reserve(a2, ((*(v4 + 208) - *(v4 + 200)) >> 4) + 1);
  std::vector<mlx::core::array>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(a2, *(a2 + 8), *(*this + 200), (*(*this + 200) + 16 * v5), v5);
  std::vector<mlx::core::array>::push_back[abi:ne200100](a2, this);
  v6 = (16 * v5 + *(*this + 200));
  return std::vector<mlx::core::array>::__insert_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(a2, *(a2 + 8), v6, *(*this + 208), (*(*this + 208) - v6) >> 4);
}

void sub_25A277D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlx::core::detail::InTracing::~InTracing(mlx::core::detail::InTracing *this)
{
  v1 = mlx::core::detail::InTracing::trace_stack(this);
  mlx::core::detail::InTracing::grad_counter -= *(qword_27FA05C10 - 1);
  mlx::core::detail::InTracing::trace_stack(v1);
  qword_27FA05C10 -= 2;
}

{
  v1 = mlx::core::detail::InTracing::trace_stack(this);
  mlx::core::detail::InTracing::grad_counter -= *(v1[1] - 1);
  v2 = mlx::core::detail::InTracing::trace_stack(v1);
  v2[1] -= 2;
}

void mlx::core::vjp(uint64_t a1, void *a2, void *a3)
{
  std::vector<int>::vector[abi:ne200100](&__p, (a2[1] - *a2) >> 4);
  if (__p != v14)
  {
    v6 = 0;
    v7 = (v14 - __p - 4) >> 2;
    v8 = vdupq_n_s64(v7);
    v9 = (v7 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v10 = __p + 8;
    do
    {
      v11 = vdupq_n_s64(v6);
      v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_25A99B0D0)));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        *(v10 - 2) = v6;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        *(v10 - 1) = v6 + 1;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_25A99B0C0)))).i32[1])
      {
        *v10 = v6 + 2;
        v10[1] = v6 + 3;
      }

      v6 += 4;
      v10 += 4;
    }

    while (v9 != v6);
  }

  mlx::core::vjp(a1, a2, a3, &__p);
}

void sub_25A277F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void mlx::core::vjp(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::__value_func[abi:ne200100](v3, a1);
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::__value_func[abi:ne200100](v1, v3);
  v2 = 0;
  operator new();
}

void sub_25A27811C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a21);
  mlx::core::array::~array(&a22);
  a9 = &a12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a9);
  mlx::core::array::~array(&a24);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v26 - 120);
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100](&a26);
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100](v26 - 88);
  _Unwind_Resume(a1);
}

void **std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::~pair(void **a1)
{
  v3 = a1 + 3;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void mlx::core::jvp(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v40[5] = *MEMORY[0x277D85DE8];
  mlx::core::detail::InTracing::InTracing(&v38, 0, 1);
  v8 = a2;
  v6 = *a2;
  v7 = v8[1];
  v9 = *a3;
  if (v7 - v6 == a3[1] - *a3)
  {
    if (v7 != v6)
    {
      v10 = 0;
      if (((v7 - v6) >> 4) <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v7 - v6) >> 4;
      }

      while (1)
      {
        v12 = v6[v10];
        v13 = *(v9 + v10 * 8);
        v14 = v12[1] - *v12;
        if (v14 != *(v13 + 8) - *v13)
        {
          break;
        }

        v15 = memcmp(*v12, *v13, v14);
        if (v15)
        {
          break;
        }

        v10 += 2;
        if (!--v11)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v16 = *v6;
          v17 = (*v6)[8];
          if (v17)
          {
            v18 = *(v17 + 8);
            v19 = *(v17 + 16);
          }

          else
          {
            v20 = mlx::core::default_device(v15);
            v18 = mlx::core::default_stream(*v20);
            v19 = v21;
            v16 = *v6;
          }

          v22 = v6[1];
          v34[0] = v16;
          v34[1] = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
          }

          mlx::core::copy(v34, v18, v19 | 0x100000000);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[jvp] Input shape does not match shape of tangent.");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    v23 = *(a1 + 24);
    if (v23)
    {
      (*(*v23 + 48))(&v33);
      memset(v31, 0, sizeof(v31));
      v32 = 1065353216;
      memset(v29, 0, sizeof(v29));
      v30 = 1065353216;
      v24 = v35;
      v25 = v36;
      while (v24 != v25)
      {
        v26 = *v24;
        *(v26 + 128) = 0;
        v40[0] = v26;
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v29, v40);
        v40[0] = *v24;
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v31, v40);
        v24 += 2;
      }

      v39 = 0;
      operator new();
    }

    std::__throw_bad_function_call[abi:ne200100]();
  }

  v28 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v28, "[jvp] Number of inputs does not match number of tangents.");
  v28->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v28, off_279921408, MEMORY[0x277D82610]);
}

void mlx::core::jvp(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::__value_func[abi:ne200100](v3, a1);
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::__value_func[abi:ne200100](v1, v3);
  v2 = 0;
  operator new();
}

void sub_25A278DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a21);
  mlx::core::array::~array(&a22);
  a9 = &a12;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a9);
  mlx::core::array::~array(&a24);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v26 - 120);
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100](&a26);
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100](v26 - 88);
  _Unwind_Resume(a1);
}

void mlx::core::value_and_grad(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  __p[3] = *MEMORY[0x277D85DE8];
  if (*a2 != a2[1])
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](&v6, a1);
    memset(__p, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *a2, a2[1], (a2[1] - *a2) >> 2);
    *(a3 + 24) = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[grad] Must specify at least one argument.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

uint64_t mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
}

uint64_t *mlx::core::detail::vmap_trace@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, std::string *a4@<X8>)
{
  mlx::core::detail::InTracing::InTracing(&v58, 0, 0);
  v8 = *a2;
  v9 = a2[1];
  if ((a3[1] - *a3) >> 2 != (v9 - *a2) >> 4)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v54);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "[vmap] The number of in axes (", 30);
    v42 = MEMORY[0x25F851380](v41, (a3[1] - *a3) >> 2);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, ") must match the number of inputs (", 35);
    v44 = MEMORY[0x25F851380](v43, (a2[1] - *a2) >> 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ").", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str[abi:ne200100](&v57, &v53);
    std::logic_error::logic_error(exception, &v53);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (v9 == v8)
  {
    v12 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*a3 + 4 * v11);
      if (v13 != -1)
      {
        v14 = *(*(v8 + v10) + 8) - **(v8 + v10);
        if (!v14)
        {
          v35 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v35, "[vmap] Cannot vmap an input with zero dimensions.");
          v35->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v35, off_279921408, MEMORY[0x277D82610]);
        }

        if (v13 > v14 >> 2)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "[vmap] Axis ", 12);
          v31 = MEMORY[0x25F851360](v30, *(*a3 + 4 * v11));
          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " invalid for input with ", 24);
          v33 = MEMORY[0x25F851380](v32, (*(*(*a2 + v10) + 8) - **(*a2 + v10)) >> 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " dimensions.", 12);
          v34 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str[abi:ne200100](&v55, &v53);
          std::logic_error::logic_error(v34, &v53);
          v34->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v34, off_279921408, MEMORY[0x277D82610]);
        }

        v12 = mlx::core::array::shape((v8 + v10), v13);
        v8 = *a2;
        v9 = a2[1];
      }

      ++v11;
      v10 += 16;
    }

    while (v11 < (v9 - v8) >> 4);
  }

  if (v9 == v8)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(*a3 + 4 * v16);
      if (v17 != -1)
      {
        v18 = mlx::core::array::shape((v8 + v15), v17);
        if (v12 != v18)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "[vmap] Inconsistent axis sizes: ", 32);
          v37 = MEMORY[0x25F851380](v36, v18);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " and ", 5);
          v39 = MEMORY[0x25F851380](v38, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ".", 1);
          v40 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str[abi:ne200100](&v55, &v53);
          std::logic_error::logic_error(v40, &v53);
          v40->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v40, off_279921408, MEMORY[0x277D82610]);
        }

        v8 = *a2;
        v9 = a2[1];
      }

      ++v16;
      v15 += 16;
    }

    while (v16 < (v9 - v8) >> 4);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    if (v9 != v8)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        if (*(*a3 + 4 * v20) == -1)
        {
          std::vector<mlx::core::array>::push_back[abi:ne200100](&v54, (v8 + v19));
        }

        else
        {
          v21 = *(v8 + v19);
          memset(&v53, 0, sizeof(v53));
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v53, *v21, v21[1], (v21[1] - *v21) >> 2);
          v22 = v53.__r_.__value_.__r.__words[0];
          v23 = v53.__r_.__value_.__r.__words[0] + 4 * *(*a3 + 4 * v20);
          v24 = v53.__r_.__value_.__l.__size_ - (v23 + 4);
          if (v53.__r_.__value_.__l.__size_ != v23 + 4)
          {
            memmove((v53.__r_.__value_.__r.__words[0] + 4 * *(*a3 + 4 * v20)), (v23 + 4), v53.__r_.__value_.__l.__size_ - (v23 + 4));
            v22 = v53.__r_.__value_.__r.__words[0];
          }

          v53.__r_.__value_.__l.__size_ = v23 + v24;
          v50 = 0;
          v51 = 0;
          __p = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v22, v23 + v24, (v23 + v24 - v22) >> 2);
          v25 = *(*(*a2 + v19) + 56);
          v47 = 0;
          v48 = 0;
          memset(v46, 0, sizeof(v46));
          mlx::core::array::array(&v52, &__p, v25 & 0xFFFFFFFFFFLL, &v47, v46);
          v59 = v46;
          std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v59);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          if (__p)
          {
            v50 = __p;
            operator delete(__p);
          }

          std::vector<mlx::core::array>::push_back[abi:ne200100](&v54, &v52);
          *(*(v55 - 16) + 128) = 1;
          mlx::core::array::~array(&v52);
          if (v53.__r_.__value_.__r.__words[0])
          {
            v53.__r_.__value_.__l.__size_ = v53.__r_.__value_.__r.__words[0];
            operator delete(v53.__r_.__value_.__l.__data_);
          }
        }

        ++v20;
        v8 = *a2;
        v19 += 16;
      }

      while (v20 < (a2[1] - *a2) >> 4);
    }
  }

  v26 = *(a1 + 24);
  if (!v26)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v26 + 48))(&v53);
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a4, v54, v55, (v55 - v54) >> 4);
  a4[1] = v53;
  memset(&v53, 0, sizeof(v53));
  *&v52 = &v53;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v52);
  v53.__r_.__value_.__r.__words[0] = &v54;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v53);
  v28 = mlx::core::detail::InTracing::trace_stack(v27);
  mlx::core::detail::InTracing::grad_counter -= *(qword_27FA05C10 - 1);
  result = mlx::core::detail::InTracing::trace_stack(v28);
  qword_27FA05C10 -= 2;
  return result;
}

void sub_25A279670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a26);
      mlx::core::detail::InTracing::~InTracing((v28 - 97));
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
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

void sub_25A279A4C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25F8516C0](v1);
  _Unwind_Resume(a1);
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
  std::iostream::~basic_iostream();
  MEMORY[0x25F8516C0](a1 + 128);
  return a1;
}

void mlx::core::detail::vmap_replace(uint64_t a1, uint64_t *a2, void *a3, int **a4, void *a5)
{
  __p[33] = *MEMORY[0x277D85DE8];
  if ((a5[1] - *a5) >> 2 != (a3[1] - *a3) >> 4)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v43);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v45, "[vmap] The number of out axes (", 31);
    v26 = MEMORY[0x25F851380](v25, (a5[1] - *a5) >> 2);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ") must match the number of outputs (", 36);
    v28 = MEMORY[0x25F851380](v27, (a3[1] - *a3) >> 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ").", 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str[abi:ne200100](__p, v38);
    std::logic_error::logic_error(exception, v38);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v8 = *a1;
  v10 = *(a1 + 8) - v8;
  if (v10)
  {
    v13 = v10 >> 4;
    v14 = *a4;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    while (1)
    {
      v16 = *v14++;
      v15 = v16;
      if ((v16 & 0x80000000) == 0)
      {
        break;
      }

      v8 += 2;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    if (mlx::core::array::shape(v8, v15) != -1)
    {
      memset(v38, 0, sizeof(v38));
      v39 = 1065353216;
      memset(v36, 0, sizeof(v36));
      v37 = 1065353216;
      memset(v34, 0, sizeof(v34));
      v35 = 1065353216;
      v18 = *a2;
      if (a2[1] != *a2)
      {
        v19 = 0;
        do
        {
          v20 = *(v18 + 16 * v19);
          *&v30.__r_.__value_.__l.__data_ = v20;
          if (*(&v20 + 1))
          {
            atomic_fetch_add_explicit((*(&v20 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v21 = *a4;
          v22 = (*a4)[v19];
          v23 = v20;
          if (v22 != -1)
          {
            v24 = *(*a1 + 16 * v19);
            v40 = v24;
            if (*(&v24 + 1))
            {
              atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
              v22 = v21[v19];
              v41 = v22;
              v43 = v23;
              v44 = v24;
              v45 = *(&v40 + 1);
              if (*(&v40 + 1))
              {
                atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
                v22 = v41;
              }
            }

            else
            {
              v41 = v22;
              v43 = v23;
              v44 = v24;
              v45 = 0;
            }

            LODWORD(__p[0]) = v22;
            std::__hash_table<std::__hash_value_type<unsigned long,std::pair<mlx::core::array,int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<mlx::core::array,int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<mlx::core::array,int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<mlx::core::array,int>>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::pair<mlx::core::array,int>>>(v38, &v43);
            mlx::core::array::~array(&v44);
            mlx::core::array::~array(&v40);
            v43 = v30.__r_.__value_.__r.__words[0];
            std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v36, &v43);
            v23 = v30.__r_.__value_.__r.__words[0];
            *(v30.__r_.__value_.__r.__words[0] + 128) = 0;
          }

          v43 = v23;
          std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v34, &v43);
          mlx::core::array::~array(&v30);
          ++v19;
          v18 = *a2;
        }

        while (v19 < (a2[1] - *a2) >> 4);
      }

      v31 = 0;
      v32 = 0;
      v33 = 0;
      v42 = 0;
      operator new();
    }
  }

LABEL_7:
  v17 = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](v17, "At least one of in_axes must be non-None.");
  __cxa_throw(v17, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A27A48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a55 < 0)
  {
    operator delete(__p);
    if ((v64 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a63);
      _Unwind_Resume(a1);
    }
  }

  else if (!v64)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v63);
  goto LABEL_6;
}

void mlx::core::vmap(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  if (__p == v21)
  {
    v10 = 0;
  }

  else
  {
    v8 = __p + 4;
    do
    {
      v9 = *(v8 - 1);
      v10 = v9 >> 31;
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      v11 = v8 == v21;
      v8 += 4;
    }

    while (!v11);
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v17, *a3, a3[1], (a3[1] - *a3) >> 2);
  if (v17 == v18)
  {
    v14 = 0;
    if (v17)
    {
LABEL_14:
      v18 = v17;
      operator delete(v17);
    }
  }

  else
  {
    v12 = v17 + 4;
    do
    {
      v13 = *(v12 - 1);
      v14 = v13 >> 31;
      if ((v13 & 0x80000000) == 0)
      {
        break;
      }

      v11 = v12 == v18;
      v12 += 4;
    }

    while (!v11);
    if (v17)
    {
      goto LABEL_14;
    }
  }

  v15 = v10 ^ v14;
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (!v15)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v28, a1);
    v29[0] = 0;
    v29[1] = 0;
    v30 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v29, *a2, a2[1], (a2[1] - *a2) >> 2);
    v31[0] = 0;
    v31[1] = 0;
    v32 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v31, *a3, a3[1], (a3[1] - *a3) >> 2);
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v23, v28);
    v24 = *v29;
    v25 = v30;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    v26 = *v31;
    v27 = v32;
    v31[1] = 0;
    v32 = 0;
    v31[0] = 0;
    *(a4 + 24) = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "[vmap] Input (or output) axes must be specified if output (or input) axes are.");
  __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
}

uint64_t mlx::core::vmap(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&,std::vector<int> const&)::$_1::~$_1(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
}

void mlx::core::vmap(uint64_t a1, int a2, int a3, int a4)
{
  v7[12] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = a4;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::__value_func[abi:ne200100](v7, a1);
  v7[7] = 0;
  operator new();
}

void sub_25A27ABA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](&a17);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v17 - 104);
  _Unwind_Resume(a1);
}

void mlx::core::vmap(uint64_t a1, int a2, int a3)
{
  v5[12] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a3;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::__value_func[abi:ne200100](v5, a1);
  v5[7] = 0;
  operator new();
}

void sub_25A27ADFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](&a17);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v26 - 104);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::custom_function@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 32) & 1) != 0 || (*(a3 + 32) & 1) != 0 || (*(a4 + 32))
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](&v11, a1);
    v12[0] = 0;
    v13 = 0;
    if (*(a2 + 32) == 1)
    {
      std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v12, a2);
      v13 = 1;
    }

    v14[0] = 0;
    v15 = 0;
    if (*(a3 + 32) == 1)
    {
      std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v14, a3);
      v15 = 1;
    }

    v16[0] = 0;
    v17 = 0;
    if (*(a4 + 32) == 1)
    {
      std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](v16, a4);
      v17 = 1;
    }

    *(a5 + 24) = 0;
    operator new();
  }

  v9 = *MEMORY[0x277D85DE8];

  return std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](a5, a1);
}

uint64_t mlx::core::custom_function(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>>,std::optional<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>>,std::optional<std::function<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>>)::$_0::~$_0(_BYTE *a1)
{
  if (a1[144] == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((a1 + 112));
  }

  if (a1[104] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100]((a1 + 72));
  }

  if (a1[64] == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 32));
  }

  return std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
}

uint64_t mlx::core::custom_vjp@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v13, a1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v11, a2);
  v12 = 1;
  v9[0] = 0;
  v10 = 0;
  v7[0] = 0;
  v8 = 0;
  mlx::core::custom_function(v13, v11, v9, v7, a3);
  if (v8 == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v7);
  }

  if (v10 == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v9);
  }

  if (v12 == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v11);
  }

  result = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v13);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A27B250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a13 == 1)
  {
    std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](&a9);
  }

  if (a19 == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](&a15);
  }

  if (a25 == 1)
  {
    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](&a21);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v25 - 56);
  _Unwind_Resume(a1);
}

void mlx::core::checkpoint(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v5, a1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v4, a1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v2, v5);
  v3 = 0;
  operator new();
}

void sub_25A27B3A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

uint64_t std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::emplace_back<mlx::core::array&,int>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 32 * (v7 - v8) - 1;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v11 + v10;
  if (v9 == v11 + v10)
  {
    std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::__add_back_capacity(a1);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v8 = *(a1 + 8);
    v12 = v10 + v11;
  }

  v13 = *(v8 + ((v12 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v12;
  *v13 = a2;
  *(v13 + 8) = *a3;
  v14 = v11 + 1;
  *(a1 + 40) = v14;
  v15 = v10 + v14;
  v16 = (v8 + 8 * (v15 >> 8));
  if (v15)
  {
    v17 = *v16 + 16 * v15;
  }

  else
  {
    v17 = *(v16 - 1) + 4096;
  }

  return v17 - 16;
}

void *std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::function<void ()(void)> *,std::allocator<std::function<void ()(void)> *>>::emplace_back<std::function<void ()(void)> *&>(a1, &v10);
}

void sub_25A27B63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<std::pair<std::reference_wrapper<mlx::core::array>,int> *,std::allocator<std::pair<std::reference_wrapper<mlx::core::array>,int> *>>::~__split_buffer(a1);
}

void std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 256;
  }

  a1[4] = v6;
}

uint64_t std::__split_buffer<std::pair<std::reference_wrapper<mlx::core::array>,int> *,std::allocator<std::pair<std::reference_wrapper<mlx::core::array>,int> *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void mlx::core::scheduler::Scheduler::wait_for_one(std::condition_variable *this)
{
  v3.__m_ = &this[3];
  v3.__owns_ = 1;
  std::mutex::lock(&this[3]);
  sig = this->__cv_.__sig;
  if (SLODWORD(this->__cv_.__sig) < 2)
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait(this + 2, &v3);
  }

  while (SLODWORD(this->__cv_.__sig) >= sig);
  if (v3.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v3.__m_);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  *(v5 - 1) = v4;
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (*(i + 4) == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,mlx::core::Fence>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

mlx::core::detail::InTracing *mlx::core::detail::InTracing::InTracing(mlx::core::detail::InTracing *this, __int16 a2, int a3)
{
  mlx::core::detail::InTracing::grad_counter += a3;
  mlx::core::detail::InTracing::trace_stack(this);
  v6 = qword_27FA05C10;
  if (qword_27FA05C10 >= qword_27FA05C18)
  {
    v9 = (qword_27FA05C10 - qword_27FA05C08) >> 1;
    if (v9 <= -2)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    if (qword_27FA05C18 - qword_27FA05C08 <= (v9 + 1))
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = qword_27FA05C18 - qword_27FA05C08;
    }

    if ((qword_27FA05C18 - qword_27FA05C08) >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(&qword_27FA05C08, v11);
    }

    v12 = (2 * v9);
    if (a3)
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    *v12 = v13 | a2;
    v8 = (v12 + 1);
    v14 = v12 - (qword_27FA05C10 - qword_27FA05C08);
    memcpy(v14, qword_27FA05C08, qword_27FA05C10 - qword_27FA05C08);
    v15 = qword_27FA05C08;
    qword_27FA05C08 = v14;
    qword_27FA05C10 = v8;
    qword_27FA05C18 = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    if (a3)
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    *qword_27FA05C10 = v7 | a2;
    v8 = v6 + 2;
  }

  qword_27FA05C10 = v8;
  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>>::pair[abi:ne200100]<std::vector<mlx::core::array>&,std::vector<mlx::core::array>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_25A27C09C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::pair<std::vector<mlx::core::array>,std::vector<int>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

uint64_t std::__function::__value_func<mlx::core::array ()(mlx::core::array const&,mlx::core::array const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::pair<std::vector<mlx::core::array>,std::vector<int>> ()(std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::deque<mlx::core::array>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = (*v6 + 16 * v5);
    v8 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v7 != v8)
    {
      do
      {
        mlx::core::array::~array(v7);
        v7 = (v9 + 16);
        if (v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 128;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 256;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<std::pair<std::reference_wrapper<mlx::core::array>,int> *,std::allocator<std::pair<std::reference_wrapper<mlx::core::array>,int> *>>::~__split_buffer(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(uint64_t a1)
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

void std::__shared_ptr_emplace<mlx::core::Synchronizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BE55E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
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
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Event>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Event>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Event>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Event>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Event>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Event>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Event>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Event>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Event>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Event>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Event>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Event>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[6];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,mlx::core::Event>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[6];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,unsigned long,int const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,int>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::__move_assign(void **a1, uint64_t a2)
{
  std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::clear(a1);
  std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::shrink_to_fit(a1);
  result = std::__split_buffer<std::pair<std::reference_wrapper<mlx::core::array>,int> *,std::allocator<std::pair<std::reference_wrapper<mlx::core::array>,int> *>>::operator=(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::shrink_to_fit(void **a1)
{
  if (a1[5])
  {
    std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::__maybe_remove_front_spare[abi:ne200100](a1, 0);
    std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::__maybe_remove_back_spare[abi:ne200100](a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  std::__split_buffer<std::pair<std::reference_wrapper<mlx::core::array>,int> *,std::allocator<std::pair<std::reference_wrapper<mlx::core::array>,int> *>>::shrink_to_fit(a1);
}

uint64_t std::deque<std::pair<std::reference_wrapper<mlx::core::array>,int>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

void std::__split_buffer<std::pair<std::reference_wrapper<mlx::core::array>,int> *,std::allocator<std::pair<std::reference_wrapper<mlx::core::array>,int> *>>::shrink_to_fit(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t std::__split_buffer<std::pair<std::reference_wrapper<mlx::core::array>,int> *,std::allocator<std::pair<std::reference_wrapper<mlx::core::array>,int> *>>::operator=(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<std::pair<std::reference_wrapper<mlx::core::array>,int> *,std::allocator<std::pair<std::reference_wrapper<mlx::core::array>,int> *>>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void *std::deque<mlx::core::array>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::function<void ()(void)> *,std::allocator<std::function<void ()(void)> *>>::emplace_back<std::function<void ()(void)> *&>(a1, &v10);
}

void sub_25A27D70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::__erase_unique<unsigned long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__function::__value_func<void ()(mlx::core::array &)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<mlx::core::vjp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::vjp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0>,void ()(mlx::core::array&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE56B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlx::core::vjp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::vjp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0>,void ()(mlx::core::array&)>::operator()(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v25 = *a2;
  result = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v4, &v25);
  if (v6)
  {
    v7 = *a2;
    *(v7 + 128) = 0;
    v8 = *(v7 + 200);
    v9 = *(v7 + 208);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        v8 += 2;
        *(v10 + 128) = 0;
        v11 = *(a1 + 8);
        v25 = v10;
        result = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v11, &v25);
      }

      while (v8 != v9);
      v7 = *a2;
    }

    v12 = *(v7 + 176);
    v13 = *(v7 + 184);
    if (v12 != v13)
    {
      do
      {
        v14 = *(*(a1 + 16) + 24);
        if (!v14)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        result = (*(*v14 + 48))(v14, v12);
        v12 += 16;
      }

      while (v12 != v13);
      v7 = *a2;
    }

    v15 = *(v7 + 64);
    if (v15)
    {
      if (result)
      {
        return result;
      }

      v7 = *a2;
    }

    v16 = *(v7 + 176);
    v17 = *(v7 + 184);
    while (v16 != v17)
    {
      v18 = *(a1 + 24);
      v25 = *v16;
      result = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v18, &v25);
      if (result)
      {
        std::vector<mlx::core::array>::push_back[abi:ne200100](*(a1 + 32), a2);
        v19 = *(a1 + 24);
        v25 = *a2;
        result = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v19, &v25);
        v20 = *a2;
        v21 = *(*a2 + 200);
        v22 = *(v20 + 208);
        while (v21 != v22)
        {
          v23 = *(a1 + 24);
          v24 = *v21;
          v21 += 2;
          v25 = v24;
          result = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v23, &v25);
        }

        return result;
      }

      v16 += 2;
    }
  }

  return result;
}

uint64_t std::__function::__func<mlx::core::vjp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::vjp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<int> const&)::$_0>,void ()(mlx::core::array&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(mlx::core::array &)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
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

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A27E340(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      mlx::core::array::~array((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,mlx::core::array>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_25A27E61C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,mlx::core::array>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,mlx::core::array>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      mlx::core::array::~array((v2 + 24));
    }

    operator delete(v2);
  }

  return a1;
}

void std::__basic_node_handle<std::__hash_node<std::__hash_value_type<unsigned long,mlx::core::array>,void *>,std::allocator<std::pair<unsigned long const,mlx::core::array>>,std::__map_node_handle_specifics>::__destroy_node_pointer[abi:ne200100](uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    mlx::core::array::~array((v1 + 24));
    operator delete(v1);
    *a1 = 0;
  }
}

void *std::__function::__func<mlx::core::vjp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0,std::allocator<mlx::core::vjp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5740;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::vjp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0,std::allocator<mlx::core::vjp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5740;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void std::__function::__func<mlx::core::vjp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0,std::allocator<mlx::core::vjp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<mlx::core::vjp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0,std::allocator<mlx::core::vjp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = *a2;
  (*(*v4 + 48))(v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v7, &v8, 1uLL);
  mlx::core::array::~array(v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25A27E8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::vjp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0,std::allocator<mlx::core::vjp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<mlx::core::jvp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::jvp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BE57D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<mlx::core::jvp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::jvp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array&)>::operator()(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v25[0] = *a2;
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v4, v25);
  if (v5)
  {
    v6 = *a2;
    *(v6 + 128) = 0;
    v7 = *(v6 + 200);
    v8 = *(v6 + 208);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        v7 += 2;
        *(v9 + 128) = 0;
        v10 = *(a1 + 8);
        v25[0] = v9;
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v10, v25);
      }

      while (v7 != v8);
      v6 = *a2;
    }

    v11 = *(v6 + 176);
    v12 = *(v6 + 184);
    if (v11 != v12)
    {
      do
      {
        v13 = v11[1];
        v25[0] = *v11;
        v25[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v14 = *(*(a1 + 16) + 24);
        if (!v14)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v14 + 48))(v14, v25);
        mlx::core::array::~array(v25);
        v11 += 2;
      }

      while (v11 != v12);
      v6 = *a2;
    }

    v15 = *(v6 + 64);
    if (v15)
    {
      {
        return;
      }

      v6 = *a2;
    }

    v16 = *(v6 + 176);
    v17 = *(v6 + 184);
    while (v16 != v17)
    {
      v18 = *(a1 + 24);
      v25[0] = *v16;
      if (std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v18, v25))
      {
        std::vector<mlx::core::array>::push_back[abi:ne200100](*(a1 + 32), a2);
        v19 = *(a1 + 24);
        v25[0] = *a2;
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v19, v25);
        v20 = *a2;
        v21 = *(*a2 + 200);
        v22 = *(v20 + 208);
        while (v21 != v22)
        {
          v23 = *(a1 + 24);
          v24 = *v21;
          v21 += 2;
          v25[0] = v24;
          std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v23, v25);
        }

        return;
      }

      v16 += 2;
    }
  }
}

uint64_t std::__function::__func<mlx::core::jvp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::jvp(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::jvp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0,std::allocator<mlx::core::jvp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5850;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::jvp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0,std::allocator<mlx::core::jvp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE5850;
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void std::__function::__func<mlx::core::jvp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0,std::allocator<mlx::core::jvp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<mlx::core::array ()(mlx::core::array const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<mlx::core::jvp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0,std::allocator<mlx::core::jvp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = *a2;
  (*(*v4 + 48))(v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array const*,mlx::core::array const*>(a3, v7, &v8, 1uLL);
  mlx::core::array::~array(v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_25A27EE78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mlx::core::array::~array(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::jvp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0,std::allocator<mlx::core::jvp(std::function<mlx::core::array ()(mlx::core::array const&)> const&,mlx::core::array const&,mlx::core::array const&)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *std::__function::__func<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE58D0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BE58D0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void sub_25A27F0D8(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t a1, void *a2)
{
  v2 = a2;
  *a2 = &unk_286BE58D0;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100]((a2 + 1), a1 + 8);
  v2[5] = 0;
  v2[6] = 0;
  v2 += 5;
  v2[2] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v2, *(a1 + 40), *(a1 + 48), (*(a1 + 48) - *(a1 + 40)) >> 2);
}

void std::__function::__func<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0::~$_0(a1 + 8);

  operator delete(a1);
}

void std::__function::__func<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v20 = &v21;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v4 == v5)
  {
    v7 = 0;
    v8 = *(a1 + 40);
  }

  else
  {
    do
    {
      v6 = *v4;
      if (*v4 < 0)
      {
        v6 += (a2[1] - *a2) >> 4;
      }

      LODWORD(v18) = v6;
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(&v20, &v18);
      ++v4;
    }

    while (v4 != v5);
    v7 = v22;
    v4 = *(a1 + 40);
    v8 = *(a1 + 48);
  }

  if (v7 == (v8 - v4) >> 2)
  {
    if ((*(v20 + 7) & 0x80000000) == 0)
    {
      v9 = v21;
      if (v21)
      {
        do
        {
          v10 = v9;
          v9 = *(v9 + 8);
        }

        while (v9);
      }

      else
      {
        v11 = &v21;
        do
        {
          v10 = v11[2];
          v12 = *v10 == v11;
          v11 = v10;
        }

        while (v12);
      }

      if (*(v10 + 28) < ((a2[1] - *a2) >> 4))
      {
        std::vector<int>::vector[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,0>(&__p, v20, &v21);
        v23.__r_.__value_.__r.__words[0] = &unk_286BE5950;
        v23.__r_.__value_.__l.__size_ = a1 + 8;
        v24 = &v23;
        mlx::core::TypeToDtype<float>::operator mlx::core::Dtype();
        mlx::core::array::array<float>();
      }
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "[grad] Invalid argument number for function with ", 49);
    v14 = MEMORY[0x25F851380](v13, (a2[1] - *a2) >> 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " inputs.", 8);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str[abi:ne200100](&v19, &v23);
    std::logic_error::logic_error(exception, &v23);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v16 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v16, "[grad] Repeat argument number not allowed in grad.");
  v16->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v16, off_279921408, MEMORY[0x277D82610]);
}

void sub_25A27F4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  if (*(v20 - 81) < 0)
  {
    operator delete(*(v19 + 48));
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a17);
      std::__tree<int>::destroy(v20 - 152, *(v19 + 8));
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

uint64_t std::__function::__func<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0,std::allocator<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0>,std::pair<std::vector<mlx::core::array>,std::vector<mlx::core::array>> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0::operator() const(std::vector<mlx::core::array> const&)::{lambda(std::vector<mlx::core::array> const&)#1},std::allocator<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0::operator() const(std::vector<mlx::core::array> const&)::{lambda(std::vector<mlx::core::array> const&)#1}>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BE5950;
  a2[1] = v2;
  return result;
}

mlx::core *std::__function::__func<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0::operator() const(std::vector<mlx::core::array> const&)::{lambda(std::vector<mlx::core::array> const&)#1},std::allocator<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0::operator() const(std::vector<mlx::core::array> const&)::{lambda(std::vector<mlx::core::array> const&)#1}>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*(a1 + 8) + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v3 + 48))(v3);
  v5 = *a2;
  if ((a2[1] - *a2) >= 0x11)
  {
    v6 = (v5 + 16);
    v7 = *(*(v5 + 16) + 64);
    if (v7)
    {
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
    }

    else
    {
      v10 = mlx::core::default_device(result);
      v8 = mlx::core::default_stream(*v10);
      v9 = v11;
    }

    mlx::core::stop_gradient(v6, v8, v9 | 0x100000000);
  }

  return result;
}

uint64_t std::__function::__func<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0::operator() const(std::vector<mlx::core::array> const&)::{lambda(std::vector<mlx::core::array> const&)#1},std::allocator<mlx::core::value_and_grad(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> const&,std::vector<int> const&)::$_0::operator() const(std::vector<mlx::core::array> const&)::{lambda(std::vector<mlx::core::array> const&)#1}>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::pair<mlx::core::array,int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<mlx::core::array,int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<mlx::core::array,int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<mlx::core::array,int>>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::pair<mlx::core::array,int>>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}