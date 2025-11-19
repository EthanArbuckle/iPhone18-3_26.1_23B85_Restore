void sub_24BD39C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, std::locale a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, std::locale a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56)
{
  sub_24BC9EC78(a12);
  if (v56)
  {
    sub_24BC9EC78(v56);
  }

  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  sub_24BC9E284(&a56);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD3A070(uint64_t a1)
{
  *&v16[4] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  v2 = a1 + 24;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v14[0] = xmmword_24BFD2934;
  v14[1] = unk_24BFD2944;
  v14[2] = xmmword_24BFD2954;
  v15 = 13;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_24BD30490(&v10, v14, v16, 0xDuLL);
  v3 = v10;
  v4 = v11;
  if (v10 != v11)
  {
    do
    {
      memset(v14, 0, 32);
      strcpy(v14, "d");
      sub_24BC836D4(v14 + 8, ".jpg");
      v13 = v3;
      v5 = sub_24BD30504(a1, v3);
      v6 = v5;
      *(v5 + 20) = v14[0];
      if (*(v5 + 71) < 0)
      {
        operator delete(v5[6]);
      }

      *(v6 + 3) = *(v14 + 8);
      v6[8] = *(&v14[1] + 1);
      *&v14[0] = v3;
      v7 = sub_24BD3D1D4(v2, v3);
      *&v14[0] = &unk_285F95810;
      *(&v14[1] + 1) = v14;
      sub_24BD3D410(v14, v7 + 5);
      sub_24BCC8934(v14);
      ++v3;
    }

    while (v3 != v4);
    v3 = v10;
  }

  if (v3)
  {
    v11 = v3;
    operator delete(v3);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24BD3A248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_24BCC88D8(v22, *(v21 + 32));
  sub_24BCC89B4(v21, *(v21 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_24BD3A2A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_24BC8DE9C(&v8, *a1, *(a1 + 8));
  }

  else
  {
    v8 = *a1;
  }

  sub_24BCC0E30(&v8, __p);
  if (SHIBYTE(v10) < 0)
  {
    sub_24BC8DE9C(__dst, __p[0], __p[1]);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *__dst = *__p;
    v12 = v10;
  }

  if (SHIBYTE(v8.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12) < 0)
  {
    if (__dst[1] == 4 && *__dst[0] == 1920492846)
    {
      goto LABEL_20;
    }

    if (__dst[1] == 4)
    {
      v4 = __dst[0];
      goto LABEL_18;
    }

LABEL_19:
    v5 = sub_24BD23084(a1, a2);
    goto LABEL_21;
  }

  if (SHIBYTE(v12) != 4)
  {
    goto LABEL_19;
  }

  if (LODWORD(__dst[0]) != 1920492846)
  {
    v4 = __dst;
LABEL_18:
    *v4;
    goto LABEL_19;
  }

LABEL_20:
  v5 = sub_24BD232F0(a1, a2);
LABEL_21:
  v6 = v5;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst[0]);
  }

  return v6;
}

void sub_24BD3A404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD3A44C(const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) != 0;
}

uint64_t sub_24BD3A488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v129[19] = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    v6 = *a1;
  }

  sub_24BCB0D30(&v127);
  v7 = &v127 + *(v127 - 24);
  if ((v7[32] & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(&v124, *a1, *(a1 + 8));
    }

    else
    {
      v124 = *a1;
    }

    v114 = std::string::insert(&v124.__pn_, 0, "Unable to open OBJ file ");
    v115 = *&v114->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v115;
    v114->__r_.__value_.__l.__size_ = 0;
    v114->__r_.__value_.__r.__words[2] = 0;
    v114->__r_.__value_.__r.__words[0] = 0;
    v116 = std::string::append(&__p, "!");
    v117 = *&v116->__r_.__value_.__l.__data_;
    __dst.__pn_.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
    *&__dst.__pn_.__r_.__value_.__l.__data_ = v117;
    v116->__r_.__value_.__l.__size_ = 0;
    v116->__r_.__value_.__r.__words[2] = 0;
    v116->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, &__dst);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  *(v7 + 2) = 10;
  sub_24BC95264(&v127, "#  \n", 4);
  sub_24BC95264(&v127, "#  Wavefront OBJ\n", 17);
  sub_24BC95264(&v127, "#  \n", 4);
  if (*(a3 + 9) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(&__dst, *a1, *(a1 + 8));
    }

    else
    {
      __dst = *a1;
    }

    sub_24BD25210(&__dst, &v124);
    sub_24BCCEE48(&__replacement.__pn_, ".mtl");
    v8 = std::__fs::filesystem::path::replace_extension(&v124, &__replacement);
    if (SHIBYTE(v8->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_24BC8DE9C(&__p, v8->__pn_.__r_.__value_.__l.__data_, v8->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = *&v8->__pn_.__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v8->__pn_.__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v124.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__pn_.__r_.__value_.__l.__data_);
    }

    v10 = sub_24BC95264(&v127, "mtllib ", 7);
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

    v13 = sub_24BC95264(v10, p_p, size);
    sub_24BC95264(v13, "\n\n", 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (*(a3 + 8) == 1)
  {
    sub_24BC836D4(&__dst, off_27F078F90[0]);
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v14 = sub_24BCB6470((a2 + 8), &__p, &__dst.__pn_.__r_.__value_.__l.__data_);
    v15 = v14 != -1;
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0xFFFFFFFFLL;
  }

  v118 = v16;
  v17 = sub_24BC95264(&v127, "# ", 2);
  v18 = MEMORY[0x24C2543E0](v17, (*(a2 + 112) - *(a2 + 104)) >> 2);
  sub_24BC95264(v18, " vertices\n", 10);
  v19 = *(a2 + 104);
  v20 = *(a2 + 112);
  if (v19 != v20)
  {
    v21 = *(a2 + 104);
    do
    {
      v22 = *(a2 + 104);
      v23 = sub_24BC95264(&v127, "v ", 2);
      v24 = (*(a2 + 8) + 16 * *(a2 + 176));
      v26 = *v24;
      v25 = v24[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v25);
      }

      v27 = v19 - v22;
      *&__dst.__pn_.__r_.__value_.__l.__data_ = *(*(v26 + 40) + 16 * (v27 >> 2));
      sub_24BD36FE4(v23, &__dst);
      if (v15)
      {
        v28 = sub_24BC95264(&v127, " ", 1);
        v29 = (*(a2 + 8) + 16 * v118);
        v31 = *v29;
        v30 = v29[1];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v30);
        }

        sub_24BD36FE4(v28, (*(v31 + 40) + 16 * (v27 >> 2)));
      }

      std::ios_base::getloc((&v127 + *(v127 - 24)));
      v32 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
      (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
      v21 += 4;
      v19 += 4;
    }

    while (v21 != v20);
  }

  std::ios_base::getloc((&v127 + *(v127 - 24)));
  v33 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  std::ostream::flush();
  if (*a3 == 1 && *(a3 + 4) == 1)
  {
    sub_24BC836D4(&__dst, off_27F078F98[0]);
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    v34 = sub_24BCB6470((a2 + 8), &__p, &__dst.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    if (v34 != -1)
    {
      v35 = *(a2 + 8) + 16 * v34;
      v37 = *v35;
      v36 = *(v35 + 8);
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v36);
      }

      v38 = 0;
      v39 = MEMORY[0x277D82680];
      while ((*(*v37 + 16))(v37) > v38)
      {
        v40 = sub_24BC95264(&v127, "vn ", 3);
        v41 = sub_24BD36FE4(v40, (v37[5] + 16 * v38));
        std::ios_base::getloc((v41 + *(*v41 - 24)));
        v42 = std::locale::use_facet(&__dst, v39);
        (v42->__vftable[2].~facet_0)(v42, 10);
        std::locale::~locale(&__dst);
        std::ostream::put();
        std::ostream::flush();
        ++v38;
      }

      std::ios_base::getloc((&v127 + *(v127 - 24)));
      v43 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
      (v43->__vftable[2].~facet_0)(v43, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  if (*(a3 + 9) == 1)
  {
    sub_24BC836D4(&__dst, off_27F078F78[0]);
    __p.__r_.__value_.__r.__words[0] = 0;
    v44 = sub_24BCB74D4((a2 + 80), &__p, &__dst.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }

    if (v44 != -1)
    {
      v45 = *(a2 + 80) + 16 * v44;
      v47 = *v45;
      v46 = *(v45 + 8);
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v46);
      }

      v48 = (*(*v47 + 16))(v47);
      v49 = sub_24BC95264(&v127, "# ", 2);
      v50 = MEMORY[0x24C2543D0](v49, v48);
      sub_24BC95264(v50, " texcoords\n", 11);
      if (v48)
      {
        v51 = 0;
        v52 = MEMORY[0x277D82680];
        do
        {
          v53 = sub_24BC95264(&v127, "vt ", 3);
          v54 = sub_24BD38770(v53, (v47[5] + v51));
          std::ios_base::getloc((v54 + *(*v54 - 24)));
          v55 = std::locale::use_facet(&__dst, v52);
          (v55->__vftable[2].~facet_0)(v55, 10);
          std::locale::~locale(&__dst);
          std::ostream::put();
          std::ostream::flush();
          v51 += 8;
        }

        while (8 * v48 != v51);
      }

      std::ios_base::getloc((&v127 + *(v127 - 24)));
      v56 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
      (v56->__vftable[2].~facet_0)(v56, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  v122 = -1;
  LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_) = -1;
  if (*(a3 + 9) != 1)
  {
    v119 = 0;
    v57 = -1;
    goto LABEL_75;
  }

  sub_24BC836D4(&__dst, off_27F078FE8[0]);
  if (sub_24BD265CC(a2, &__replacement, &__dst.__pn_.__r_.__value_.__l.__data_))
  {
    sub_24BC836D4(&__p, off_27F078FC8[0]);
    LOWORD(v124.__pn_.__r_.__value_.__l.__data_) = 0;
    v57 = sub_24BD274E4((a2 + 56), &v124, &__p.__r_.__value_.__l.__data_);
    v58 = v57 != -1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v58 = 0;
    v57 = -1;
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    if (v58)
    {
      goto LABEL_68;
    }

LABEL_74:
    v119 = 0;
    goto LABEL_75;
  }

  if (!v58)
  {
    goto LABEL_74;
  }

LABEL_68:
  v59 = (*(a2 + 80) + 16 * LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_));
  v61 = *v59;
  v60 = v59[1];
  if (v60)
  {
    atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v60);
  }

  v62 = (*(*v61 + 16))(v61);
  v63 = sub_24BC95264(&v127, "# ", 2);
  v64 = MEMORY[0x24C254400](v63, v62);
  sub_24BC95264(v64, " groups\n", 8);
  sub_24BC836D4(&__dst, off_27F078FF8);
  sub_24BD26644(a2, &v122, &__dst.__pn_.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  v119 = 1;
LABEL_75:
  v121 = -1;
  if (*(a3 + 9) == 1)
  {
    sub_24BC836D4(&__dst, off_27F078FB8[0]);
    v65 = sub_24BCB1F74(a2, &v121, &__dst.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v65 = 0;
  }

  v67 = *(a2 + 152);
  v66 = *(a2 + 160);
  v68 = sub_24BC95264(&v127, "# ", 2);
  v69 = v66 - v67;
  v70 = (v66 - v67) >> 2;
  v71 = MEMORY[0x24C2543D0](v68, v70);
  sub_24BC95264(v71, " faces\n", 7);
  memset(&__dst, 0, sizeof(__dst));
  memset(&__p, 0, sizeof(__p));
  v120 = 0;
  if (v70)
  {
    v72 = 0;
    while (1)
    {
      if ((v119 & *(a3 + 9)) == 1)
      {
        v73 = v120;
        v74 = (*(a2 + 56) + 16 * v57);
        v76 = *v74;
        v75 = v74[1];
        if (v75)
        {
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v75);
        }

        if (v73 == *(*(v76 + 40) + 2 * v72))
        {
          v77 = v120;
          v78 = (*(a2 + 80) + 16 * LODWORD(__replacement.__pn_.__r_.__value_.__l.__data_));
          v80 = *v78;
          v79 = v78[1];
          if (v79)
          {
            atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v79);
          }

          v81 = *(v80 + 40);
          v82 = sub_24BC95264(&v127, "\ng ", 3);
          v83 = v81 + 24 * v77;
          v84 = *(v83 + 23);
          if (v84 >= 0)
          {
            v85 = v81 + 24 * v77;
          }

          else
          {
            v85 = *v83;
          }

          if (v84 >= 0)
          {
            v86 = *(v83 + 23);
          }

          else
          {
            v86 = *(v83 + 8);
          }

          v87 = sub_24BC95264(v82, v85, v86);
          std::ios_base::getloc((v87 + *(*v87 - 24)));
          v88 = std::locale::use_facet(&v124, MEMORY[0x277D82680]);
          (v88->__vftable[2].~facet_0)(v88, 10);
          std::locale::~locale(&v124);
          std::ostream::put();
          std::ostream::flush();
          if (v122 != -1)
          {
            v89 = (*(a2 + 80) + 16 * v122);
            v91 = *v89;
            v90 = v89[1];
            if (v90)
            {
              atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v90);
            }

            v92 = sub_24BD266BC(*(v91 + 40), &v120);
            v93 = sub_24BC95264(&v127, "usemtl ", 7);
            v94 = *(v92 + 23);
            if (v94 >= 0)
            {
              v95 = v92;
            }

            else
            {
              v95 = *v92;
            }

            if (v94 >= 0)
            {
              v96 = *(v92 + 23);
            }

            else
            {
              v96 = v92[1];
            }

            v97 = sub_24BC95264(v93, v95, v96);
            std::ios_base::getloc((v97 + *(*v97 - 24)));
            v98 = std::locale::use_facet(&v124, MEMORY[0x277D82680]);
            (v98->__vftable[2].~facet_0)(v98, 10);
            std::locale::~locale(&v124);
            std::ostream::put();
            std::ostream::flush();
          }

          ++v120;
        }
      }

      sub_24BC95264(&v127, "f ", 2);
      __dst.__pn_.__r_.__value_.__l.__size_ = __dst.__pn_.__r_.__value_.__r.__words[0];
      LODWORD(v124.__pn_.__r_.__value_.__l.__data_) = v72;
      sub_24BCB1A9C(a2, &v124, &__dst);
      if (v65)
      {
        v99 = (*(a2 + 56) + 16 * v121);
        v101 = *v99;
        v100 = v99[1];
        if (v100)
        {
          atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v100);
        }

        v102 = *(v101 + 40) + 24 * v72;
        if (&__p != v102)
        {
          sub_24BCA2A30(&__p, *v102, *(v102 + 8), (*(v102 + 8) - *v102) >> 2);
        }
      }

      v103 = __dst.__pn_.__r_.__value_.__r.__words[0];
      if (__dst.__pn_.__r_.__value_.__l.__size_ != __dst.__pn_.__r_.__value_.__r.__words[0])
      {
        break;
      }

LABEL_121:
      std::ios_base::getloc((&v127 + *(v127 - 24)));
      v110 = std::locale::use_facet(&v124, MEMORY[0x277D82680]);
      (v110->__vftable[2].~facet_0)(v110, 10);
      std::locale::~locale(&v124);
      std::ostream::put();
      std::ostream::flush();
      if (++v72 == (v69 >> 2))
      {
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_124;
      }
    }

    v104 = 0;
    v105 = 1;
    while (1)
    {
      MEMORY[0x24C2543D0](&v127, (*(v103 + 4 * v104) + 1));
      if (v65)
      {
        v124.__pn_.__r_.__value_.__s.__data_[0] = 47;
        v106 = sub_24BC95264(&v127, &v124, 1);
        MEMORY[0x24C2543D0](v106, (*(__p.__r_.__value_.__r.__words[0] + 4 * v104) + 1));
        if (*a3 == 1)
        {
          goto LABEL_116;
        }
      }

      else if (*a3 == 1)
      {
        v124.__pn_.__r_.__value_.__s.__data_[0] = 47;
        sub_24BC95264(&v127, &v124, 1);
LABEL_116:
        if (*(a3 + 4) == 1)
        {
          v124.__pn_.__r_.__value_.__s.__data_[0] = 47;
          v107 = sub_24BC95264(&v127, &v124, 1);
          MEMORY[0x24C2543D0](v107, (*(__dst.__pn_.__r_.__value_.__r.__words[0] + 4 * v104) + 1));
        }
      }

      v103 = __dst.__pn_.__r_.__value_.__r.__words[0];
      v108 = (__dst.__pn_.__r_.__value_.__l.__size_ - __dst.__pn_.__r_.__value_.__r.__words[0]) >> 2;
      if (v108 - 1 != v104)
      {
        sub_24BC95264(&v127, " ", 1);
        v103 = __dst.__pn_.__r_.__value_.__r.__words[0];
        v108 = (__dst.__pn_.__r_.__value_.__l.__size_ - __dst.__pn_.__r_.__value_.__r.__words[0]) >> 2;
      }

      v104 = v105;
      if (v108 <= v105++)
      {
        goto LABEL_121;
      }
    }
  }

LABEL_124:
  if (__dst.__pn_.__r_.__value_.__r.__words[0])
  {
    __dst.__pn_.__r_.__value_.__l.__size_ = __dst.__pn_.__r_.__value_.__r.__words[0];
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }

  v127 = *MEMORY[0x277D82810];
  *(&v127 + *(v127 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x24C2542E0](&v128);
  std::ostream::~ostream();
  MEMORY[0x24C2547D0](v129);
  v111 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_24BD3B698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_24BD3A488(a1, a2, a4);
  if (*(a4 + 9) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      sub_24BC8DE9C(&__dst, *a1, *(a1 + 8));
    }

    else
    {
      __dst = *a1;
    }

    sub_24BCCEE48(&__replacement.__pn_, ".mtl");
    v7 = std::__fs::filesystem::path::replace_extension(&__dst, &__replacement);
    sub_24BD388B4(v7, a3, a4 + 16);
    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
    }
  }

  return 1;
}

void sub_24BD3B75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD3B790(uint64_t **a1, int *a2)
{
  v17 = -1;
  sub_24BC836D4(__p, off_27F078F98[0]);
  v12 = 0;
  v13 = 0;
  v4 = sub_24BCB6470(a1 + 1, &v12, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == -1)
  {
    sub_24BC836D4(__p, off_27F078FD0[0]);
    v12 = 0;
    v13 = 0;
    v6 = sub_24BCB6470(a1 + 7, &v12, __p);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v6 == -1)
    {
      sub_24BC836D4(__p, off_27F078FE0[0]);
      v12 = 0;
      v13 = 0;
      if (sub_24BCB6470(a1 + 10, &v12, __p) == -1)
      {
        v5 = 0;
      }

      else
      {
        sub_24BC836D4(&v12, off_27F078FC0[0]);
        v10 = 0;
        v9 = 0;
        if (sub_24BCCAA0C(a1 + 7, &v9, &v12) == -1)
        {
          sub_24BC836D4(&v9, off_27F078FC0[0]);
          v7 = sub_24BCB1F74(a1, &v17, &v9);
          if (v11 < 0)
          {
            operator delete(v9);
          }

          if (v7)
          {
            v5 = 3;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v5 = 3;
        }

        if (v14 < 0)
        {
          operator delete(v12);
        }
      }

      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
  return 1;
}

void sub_24BD3B93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_24BD3B998(const char *a1)
{
  __endptr = 0;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = strtoul(a1, &__endptr, 10);
  if (*__endptr)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v3 = std::string::append(&v5, "");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v7 = v3->__r_.__value_.__r.__words[2];
    v6 = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x24C254100](exception, &v6);
    __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
  }

  return result;
}

void sub_24BD3BA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t *sub_24BD3BAD4(uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  sub_24BD3BF80((a1 + 3), a2, a3);
  return a1;
}

void sub_24BD3BD64(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x24C2547D0](v1);
  _Unwind_Resume(a1);
}

void *sub_24BD3BD8C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x24C2542F0](&v11, a1, 1);
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

void sub_24BD3BEF0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x24BD3BEB0);
  }

  __cxa_rethrow();
}

uint64_t sub_24BD3BF80(uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C254700](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_24BC9515C(a1);
  return a1;
}

void sub_24BD3C02C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_24BD3C054(uint64_t a1)
{
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  sub_24BD27898(a1 + 240, *(a1 + 248));
  v12 = (a1 + 216);
  sub_24BC955F4(&v12);
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    *(a1 + 128) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    *(a1 + 104) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    *(a1 + 56) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    *(a1 + 32) = v9;
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_24BD3C13C(uint64_t a1)
{
  sub_24BCC8A84(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_24BD3C17C(std::string *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::__fs::filesystem::__status(&__p, 0);
  v4 = v8;
  if (v8 && v8 != 255)
  {
    std::string::operator=(a1 + 1, a2);
    a1->__r_.__value_.__s.__data_[5] = 1;
  }

  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  if (v4)
  {
    v5 = v4 == 255;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

void sub_24BD3C234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD3C250(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BD3C2B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24BD3C348(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F956E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BD3C380(uint64_t result, uint64_t *a2)
{
  v2 = **(result + 24);
  if (v2 < 1)
  {
LABEL_9:
    v9 = *(result + 8);
    v10 = 1;
LABEL_12:
    *(v9 + 288) = v10;
    return result;
  }

  v3 = 0;
  v4 = *a2;
  v5 = 1;
  do
  {
    while (!v5)
    {
      v5 = 0;
      if (++v3 == v2)
      {
        goto LABEL_10;
      }
    }

    v6 = (v4 + 12 * v3);
    v7 = *v6;
    v8 = v6[2];
    v5 = *v6 == v8;
    ++v3;
  }

  while (v3 != v2);
  if (v7 == v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v2 == 1)
  {
LABEL_11:
    v9 = *(result + 8);
    v10 = 2;
    goto LABEL_12;
  }

  v11 = *(v4 + 8);
  v12 = 1;
  v13 = 1;
  do
  {
    while (!v13)
    {
      v13 = 0;
      if (++v12 == v2)
      {
        goto LABEL_20;
      }
    }

    v14 = *(v4 + 12 * v12 + 8);
    v13 = v11 == v14;
    ++v12;
  }

  while (v12 != v2);
  if (v11 == v14)
  {
    goto LABEL_11;
  }

LABEL_20:
  v15 = *(result + 16);
  *(*(result + 8) + 288) = 3;
  *v15 = 1;
  return result;
}

void sub_24BD3C470(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v3 = 0;
    while (*v1)
    {
      v1 += 2;
      ++v3;
      if (v1 == v2)
      {
        goto LABEL_7;
      }
    }
  }

  if (v1 == v2)
  {
LABEL_7:
    v4 = 0uLL;
    sub_24BCB52F4(a1, &v4);
    if (*(&v4 + 1))
    {
      sub_24BC9EC78(*(&v4 + 1));
    }
  }

  sub_24BD3C564();
}

void sub_24BD3C54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD3C5D8(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F95730;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F95768;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BD3C678(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD3C6F4(uint64_t a1)
{
  *a1 = &unk_285F95768;
  v3 = (a1 + 40);
  sub_24BC8EE84(&v3);
  return sub_24BCB2264(a1);
}

uint64_t sub_24BD3C750(uint64_t a1)
{
  *a1 = &unk_285F95768;
  v4 = (a1 + 40);
  sub_24BC8EE84(&v4);
  v2 = sub_24BCB2264(a1);
  return MEMORY[0x24C2548B0](v2, 0x10B3C402F26E7C1);
}

void sub_24BD3C7EC(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  v3 = &v1;
  sub_24BC8EE84(&v3);
}

void sub_24BD3C830(uint64_t a1)
{
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_24BD3CAF0(a1 + 40, &__p);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }
}

void sub_24BD3C878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD3C894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a1 + 40) + 24 * a2);
  v10 = 0;
  v11 = 0;
  __p = 0;
  sub_24BCB7960(&__p, *v6, v6[1], (v6[1] - *v6) >> 2);
  if (a2 != a3)
  {
    v7 = *(a1 + 40);
    sub_24BCA2A30((v7 + 24 * a2), *(v7 + 24 * a3), *(v7 + 24 * a3 + 8), (*(v7 + 24 * a3 + 8) - *(v7 + 24 * a3)) >> 2);
  }

  v8 = (*(a1 + 40) + 24 * a3);
  if (v8 != &__p)
  {
    sub_24BCA2A30(v8, __p, v10, (v10 - __p) >> 2);
  }

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_24BD3C954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD3C970(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v3 = result[5];
    return sub_24BCA2A30((v3 + 24 * a3), *(v3 + 24 * a2), *(v3 + 24 * a2 + 8), (*(v3 + 24 * a2 + 8) - *(v3 + 24 * a2)) >> 2);
  }

  return result;
}

void *sub_24BD3CA34(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BC91DBC(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

uint64_t sub_24BD3CAF0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      sub_24BC91DBC(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_24BC91E14(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void *sub_24BD3CC30(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F95768;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BD3CCB0((v4 + 5), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  return a1;
}

uint64_t sub_24BD3CCB0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA04D4(result, a4);
  }

  return result;
}

void sub_24BD3CD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC8EE84(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BD3CD38(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_24BCB7960(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BD3CDEC(v8);
  return v4;
}

uint64_t sub_24BD3CDEC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BCB71DC(a1);
  }

  return a1;
}

void sub_24BD3CE8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD3CEA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD3CEE0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_24BD3CF14(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    sub_24BCCF4C0(a1, v6);
  }

  v7 = 48 * v2;
  v19 = 0;
  v20 = v7;
  *(&v21 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = *(a2 + 3);
  v9 = a2 + 2;
  v10 = *(a2 + 4);
  *(48 * v2 + 0x20) = v10;
  v11 = 48 * v2 + 32;
  v12 = *(a2 + 5);
  *(v7 + 40) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *(a2 + 3) = v9;
    *v9 = 0;
    *(a2 + 5) = 0;
  }

  else
  {
    *(48 * v2 + 0x18) = v11;
  }

  *&v21 = v7 + 48;
  v13 = a1[1];
  v14 = v7 + *a1 - v13;
  sub_24BCCF518(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_24BCCF6A0(&v19);
  return v18;
}

void sub_24BD3D070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BCCF6A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD3D084(uint64_t a1, const void **a2)
{
  result = *sub_24BC8FDBC(a1, &v3, a2);
  if (!result)
  {
    sub_24BD3D11C();
  }

  return result;
}

void sub_24BD3D1B8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_24BCCF2D8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_24BD3D1D4(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t sub_24BD3D2C4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24BCC8934(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL sub_24BD3D398(uint64_t a1, char *a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = a4 + 4;
  v5 = *(a4 + 31);
  if (v5 < 0)
  {
    if (*(a4 + 2) != 4)
    {
      goto LABEL_8;
    }

    v4 = *v4;
  }

  else if (v5 != 4)
  {
    goto LABEL_8;
  }

  if (*v4 != 1920492846)
  {
    if (*v4 == 1735290926)
    {
      sub_24BD23168();
    }

LABEL_8:
    v6 = *a4;
    sub_24BD23088();
  }

  return sub_24BD233C4(a2, a3, 1);
}

void *sub_24BD3D410(void *result, void *a2)
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

void sub_24BD3D668(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_24BC8DCE8(a1);
}

void sub_24BD3D674(float32x4_t *a1, float32x4_t *a2, double a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, double a7, double a8, double a9, float32x4_t a10)
{
  LODWORD(a7) = a2->i32[0];
  LODWORD(a8) = a2->i32[1];
  LODWORD(a9) = a2->i32[2];
  a4.i32[0] = a1->i32[0];
  a6.i32[0] = a1->i32[1];
  a5.i32[0] = a1->i32[2];
  a10.i32[0] = 869711765;
  if (a1->f32[0] < 0.0000001 && a6.f32[0] < 0.0000001 && a5.f32[0] < 0.0000001)
  {
    return;
  }

  v12 = fminf(fminf(*&a7, *&a8), *&a9);
  v13 = 1.0 - *&a7;
  v14 = 1.0 - *&a8;
  v15 = 1.0 - *&a9;
  v16 = fminf(fminf(1.0 - *&a7, 1.0 - *&a9), 1.0 - *&a8) < 0.0000001;
  if (v12 >= 0.0000001 && !v16)
  {
    goto LABEL_6;
  }

  if ((v12 >= 0.0000001 || v16) && (v13 >= 0.0000001 || *&a9 >= 0.0000001 || *&a8 >= 0.0000001) && (*&a7 >= 0.0000001 || v15 >= 0.0000001 || *&a8 >= 0.0000001) && (*&a7 >= 0.0000001 || *&a9 >= 0.0000001 || v14 >= 0.0000001))
  {
    v19 = !v16;
    if (v12 >= 0.0000001 || v19)
    {
      goto LABEL_22;
    }

    if (v13 >= 0.0000001 || v14 >= 0.0000001 || *&a9 >= 0.0000001)
    {
      if (v13 >= 0.0000001 || *&a8 >= 0.0000001 || v15 >= 0.0000001)
      {
        if (*&a7 >= 0.0000001 || v14 >= 0.0000001 || v15 >= 0.0000001)
        {
          if (v13 >= 0.0000001 || *&a8 >= 0.0000001 || *&a9 < 0.0000001)
          {
            v22 = *&a8 < 0.0000001 || v13 >= 0.0000001;
            if (v22 || *&a9 >= 0.0000001)
            {
              if (*&a7 >= 0.0000001 && *&a8 < 0.0000001 && v15 < 0.0000001)
              {
                v28 = xmmword_24BFD2970;
                goto LABEL_92;
              }

              v23 = *&a8 < 0.0000001 || *&a7 >= 0.0000001;
              if (!v23 && v15 < 0.0000001)
              {
                goto LABEL_84;
              }

              if (*&a7 >= 0.0000001 && *&a9 < 0.0000001 && v14 < 0.0000001)
              {
                v28 = xmmword_24BFBD200;
                goto LABEL_78;
              }

              if (*&a7 < 0.0000001 && v14 < 0.0000001 && *&a9 >= 0.0000001)
              {
                goto LABEL_77;
              }

LABEL_22:
              if (v12 < 0.0000001 || v19)
              {
                return;
              }

              v20 = v13 < 0.0000001;
              if (v15 >= 0.0000001)
              {
                v20 = 0;
              }

              if (v20 && v14 < 0.0000001)
              {
                return;
              }

              v24 = v14 < 0.0000001 || v13 >= 0.0000001;
              if (!v24 && v15 >= 0.0000001)
              {
                v25.i32[0] = 0;
                v25.f32[1] = -*&a9;
                v25.i64[1] = LODWORD(a8);
                v26 = vmulq_f32(v25, v25);
                v26.i32[3] = 0;
                v27 = vpaddq_f32(v26, v26);
                a4 = vpaddq_f32(v27, v27);
                if (a4.f32[0] <= 0.0)
                {
                  v28 = xmmword_24BFBD1C0;
                }

                else
                {
                  a4 = vsqrtq_f32(a4);
                  v28 = vdivq_f32(v25, a4);
                }

                goto LABEL_82;
              }

              if (v13 >= 0.0000001 && v14 < 0.0000001 && v15 >= 0.0000001)
              {
                v29.i32[1] = 0;
                v29.f32[0] = -*&a9;
                v29.i64[1] = LODWORD(a7);
                v30 = vmulq_f32(v29, v29);
                v30.i32[3] = 0;
                v31 = vpaddq_f32(v30, v30);
                a4 = vpaddq_f32(v31, v31);
                if (a4.f32[0] > 0.0)
                {
                  a4 = vsqrtq_f32(a4);
                  v28 = vdivq_f32(v29, a4);
LABEL_78:
                  v54 = v28;
                  v34 = a1;
                  v35 = 1;
LABEL_83:
                  sub_24BD3DD64(&v54, v34, a2, v35, *v28.i64, *a4.i64, *a5.i64, *a6.i64, a7, a8, a9, a10);
                  return;
                }

LABEL_77:
                v28 = xmmword_24BFBD1C0;
                goto LABEL_78;
              }

              if (fminf(v13, v14) < 0.0000001 || v15 >= 0.0000001)
              {
                if (v13 >= 0.0000001 || v14 >= 0.0000001)
                {
                  if (!v20)
                  {
                    if (v14 < 0.0000001 && v15 < 0.0000001)
                    {
                      v41 = a5.f32[0] >= a6.f32[0] ? a6.f32[0] : a5.f32[0];
                      if (a4.f32[0] > (*&a7 * v41))
                      {
                        if (a5.f32[0] >= a6.f32[0])
                        {
                          v42 = a2->f32[1];
                        }

                        else
                        {
                          v42 = a2->f32[2];
                        }

                        v43 = 2;
                        if (a5.f32[0] >= a6.f32[0])
                        {
                          v43 = 1;
                        }

                        v53 = COERCE_UNSIGNED_INT(-v42);
                        *(&v53 | (4 * v43)) = LODWORD(a7);
                        v44 = vmulq_f32(v53, v53);
                        v44.i32[3] = 0;
                        v45 = vpaddq_f32(v44, v44);
                        v46 = vpaddq_f32(v45, v45);
                        if (v46.f32[0] <= 0.0)
                        {
                          v47 = xmmword_24BFBD1C0;
                        }

                        else
                        {
                          v46 = vsqrtq_f32(v46);
                          v47 = vdivq_f32(v53, v46);
                        }

                        v54 = v47;
                        if (a5.f32[0] >= a6.f32[0])
                        {
                          sub_24BD3DD64(&v54, a1, a2, 2, *v47.i64, *v46.i64, *a5.i64, *a6.i64, a7, a8, a9, a10);
                        }

                        else
                        {
                          sub_24BD3DD64(&v54, a1, a2, 1, *v47.i64, *v46.i64, *a5.i64, *a6.i64, a7, a8, a9, a10);
                        }
                      }
                    }

                    return;
                  }

                  if (a5.f32[0] >= a4.f32[0])
                  {
                    v32 = a4.f32[0];
                  }

                  else
                  {
                    v32 = a5.f32[0];
                  }

                  if (a6.f32[0] <= (*&a8 * v32))
                  {
                    return;
                  }

                  if (a5.f32[0] >= a4.f32[0])
                  {
                    v33.i32[3] = 0;
                    v33.f32[0] = -*&a8;
                    *(v33.i64 + 4) = a2->u32[0];
                  }

                  else
                  {
                    v33.i32[0] = 0;
                    v33.f32[1] = -*&a9;
                    v33.i64[1] = a2->u32[1];
                  }

                  v51 = vmulq_f32(v33, v33);
                  v51.i32[3] = 0;
                  v52 = vpaddq_f32(v51, v51);
                  a6 = vpaddq_f32(v52, v52);
                  if (a6.f32[0] <= 0.0)
                  {
                    v50 = xmmword_24BFBD1C0;
                  }

                  else
                  {
                    a6 = vsqrtq_f32(a6);
                    v50 = vdivq_f32(v33, a6);
                  }

                  v54 = v50;
                  if (a5.f32[0] >= a4.f32[0])
                  {
                    sub_24BD3DD64(&v54, a1, a2, 2, *v50.i64, *a4.i64, *a5.i64, *a6.i64, a7, a8, a9, a10);
                    return;
                  }
                }

                else
                {
                  if (a6.f32[0] >= a4.f32[0])
                  {
                    v39 = a4.f32[0];
                  }

                  else
                  {
                    v39 = a6.f32[0];
                  }

                  if (a5.f32[0] <= (*&a9 * v39))
                  {
                    return;
                  }

                  v40.i64[0] = 0;
                  v40.i32[3] = 0;
                  if (a6.f32[0] >= a4.f32[0])
                  {
                    v40.f32[0] = -*&a9;
                    v40.i32[2] = a2->i32[0];
                  }

                  else
                  {
                    v40.f32[1] = -*&a9;
                    v40.i32[2] = a2->i32[1];
                  }

                  v48 = vmulq_f32(v40, v40);
                  v48.i32[3] = 0;
                  v49 = vpaddq_f32(v48, v48);
                  a5 = vpaddq_f32(v49, v49);
                  if (a5.f32[0] <= 0.0)
                  {
                    v50 = xmmword_24BFBD1C0;
                  }

                  else
                  {
                    a5 = vsqrtq_f32(a5);
                    v50 = vdivq_f32(v40, a5);
                  }

                  v54 = v50;
                  if (a6.f32[0] >= a4.f32[0])
                  {
                    sub_24BD3DD64(&v54, a1, a2, 1, *v50.i64, *a4.i64, *a5.i64, *a6.i64, a7, a8, a9, a10);
                    return;
                  }
                }

                sub_24BD3DD64(&v54, a1, a2, 0, *v50.i64, *a4.i64, *a5.i64, *a6.i64, a7, a8, a9, a10);
                return;
              }

              v36.i32[3] = 0;
              v36.f32[0] = -*&a8;
              *(v36.i64 + 4) = a2->u32[0];
              v37 = vmulq_f32(v36.u64[0], v36.u64[0]);
              v37.i32[3] = 0;
              v38 = vpaddq_f32(v37, v37);
              a4 = vpaddq_f32(v38, v38);
              if (a4.f32[0] > 0.0)
              {
                a4 = vsqrtq_f32(a4);
                v28 = vdivq_f32(v36, a4);
LABEL_92:
                v54 = v28;
                v34 = a1;
                v35 = 2;
                goto LABEL_83;
              }

LABEL_84:
              v28 = xmmword_24BFBD1C0;
              goto LABEL_92;
            }

            v28 = xmmword_24BFBD200;
          }

          else
          {
            v28 = xmmword_24BFD2970;
          }

LABEL_82:
          v54 = v28;
          v34 = a1;
          v35 = 0;
          goto LABEL_83;
        }

        if (a4.f32[0] < 0.0000001)
        {
          return;
        }

        v21.i32[0] = 0;
        v21.i32[3] = 0;
        v21.i32[1] = a1->i32[1];
      }

      else
      {
        if (a6.f32[0] < 0.0000001)
        {
          return;
        }

        v21.i32[3] = 0;
        v21.i64[0] = a1->u32[0];
      }

      v21.i32[2] = a1->i32[2];
    }

    else
    {
      if (a5.f32[0] < 0.0000001)
      {
        return;
      }

      v21.i32[3] = 0;
      v21.i32[0] = a1->i32[0];
      *(v21.i64 + 4) = a1->u32[1];
    }

    v54 = v21;
    sub_24BD3DCF4(a1, &v54);
    return;
  }

  if (*&a7 >= 0.0000001 || *&a8 >= 0.0000001 || *&a9 >= 0.0000001)
  {
LABEL_6:
    v17 = vmulq_f32(*a1, *a1);
    v18 = vmulq_f32(*a2, *a2);
  }
}

float sub_24BD3DCF4(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vmulq_f32(*a1, *a1);
  v2.i32[3] = 0;
  v3 = vmulq_f32(*a2, *a2);
  v3.i32[3] = 0;
  v4 = vmulq_f32(*a1, *a2);
  v4.i32[3] = 0;
  v5 = 1.0 - ((vaddv_f32(*&vpaddq_f32(v4, v4)) / sqrtf(vaddv_f32(*&vpaddq_f32(v2, v2)))) / sqrtf(vaddv_f32(*&vpaddq_f32(v3, v3))));
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  if (v5 > 1.0)
  {
    return 1.0;
  }

  return v5;
}

float sub_24BD3DD64(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  v12 = *a2;
  v13 = vmulq_f32(*a2, *a1);
  v13.i32[3] = 0;
  v14 = vpaddq_f32(v13, v13);
  v15 = vsubq_f32(*a2, vmulq_n_f32(*a1, vaddv_f32(*v14.f32)));
  v14.f32[0] = *(&v28 + a4) * *(&v28 + a4);
  v16 = a3->f32[a4] * a3->f32[a4];
  v17 = vmulq_f32(v15, v15);
  v17.i32[3] = 0;
  v18 = vaddv_f32(*&vpaddq_f32(v17, v17));
  v19 = vmulq_f32(*a3, *a3);
  v19.i32[3] = 0;
  v20 = vaddv_f32(*&vpaddq_f32(v19, v19));
  a12.f32[0] = v16 * (v18 - v14.f32[0]);
  v14.f32[0] = v14.f32[0] * (v20 - v16);
  v21 = vmulq_f32(v12, v12);
  v21.i32[3] = 0;
  v22 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v14, a12)), 0), *a3, v15);
  v23 = sqrtf(vaddv_f32(*&vpaddq_f32(v21, v21)));
  if (a12.f32[0] <= v14.f32[0])
  {
    v24 = v18;
  }

  else
  {
    v24 = v20;
  }

  v25 = vmulq_f32(v12, v22);
  v25.i32[3] = 0;
  v26 = 1.0 - ((vaddv_f32(*&vpaddq_f32(v25, v25)) / v23) / sqrtf(v24));
  if (v26 < 0.0)
  {
    v26 = 0.0;
  }

  if (v26 > 1.0)
  {
    return 1.0;
  }

  return v26;
}

float *sub_24BD3DE44(float *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  if (*result >= v3)
  {
    v5 = result[1];
  }

  else
  {
    v5 = *result;
  }

  if (*result <= v3)
  {
    v6 = result[1];
  }

  else
  {
    v6 = *result;
  }

  if (v5 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = v6;
  if (v6 <= v4)
  {
    v8 = v4;
  }

  v9 = v8;
  *(a2 + 8) = v9;
  v10 = v8 - v7;
  if (v10 >= 0.00001)
  {
    if (v8 <= 0.0)
    {
      *(a2 + 4) = 0;
      v11 = NAN;
    }

    else
    {
      v12 = v10 / v8;
      *(a2 + 4) = v12;
      if (v8 <= v2)
      {
        v15 = (v3 - v4) / v10;
      }

      else
      {
        v13 = v8 > v3;
        v14 = (v2 - v3) / v10 + 4.0;
        v15 = (v4 - v2) / v10 + 2.0;
        if (v13)
        {
          v15 = v14;
        }
      }

      v16 = v15;
      v11 = v16 * 60.0;
      if (v11 < 0.0)
      {
        v11 = v11 + 360.0;
      }
    }
  }

  else
  {
    *(a2 + 4) = 0;
    v11 = 0.0;
  }

  *a2 = v11;
  return result;
}

uint64_t sub_24BD3DF3C(uint64_t result, uint64_t a2)
{
  v2.i32[0] = *(result + 4);
  if (v2.f32[0] <= 0.0)
  {
    v15 = *(result + 8);
    *a2 = v15;
    *(a2 + 4) = v15;
    goto LABEL_10;
  }

  v3 = 0.0;
  if (*result < 360.0)
  {
    v3 = *result / 60.0;
  }

  v4 = v3;
  v5 = v3 - v3;
  v6 = *(result + 8);
  v2.f32[1] = v2.f32[0] * v5;
  v7 = vcvtq_f64_f32(v2);
  __asm { FMOV            V0.2D, #1.0 }

  v13 = vcvt_f32_f64(vmulq_n_f64(vsubq_f64(_Q0, v7), v6));
  v14 = (1.0 - (1.0 - v5) * v7.f64[0]) * v6;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_19;
      }

      *a2 = v13.i32[1];
      v14 = *(result + 8);
    }

    else
    {
      *a2 = v6;
    }

    *(a2 + 4) = v14;
    v14 = v13.f32[0];
    goto LABEL_11;
  }

  if (v4 == 2)
  {
    *a2 = v13.i32[0];
    *(a2 + 4) = *(result + 8);
    goto LABEL_11;
  }

  if (v4 == 3)
  {
    *a2 = v13;
    goto LABEL_10;
  }

  if (v4 != 4)
  {
LABEL_19:
    *a2 = v6;
    *(a2 + 4) = v13.i32[0];
    v14 = v13.f32[1];
    goto LABEL_11;
  }

  *a2 = v14;
  *(a2 + 4) = v13.i32[0];
LABEL_10:
  v14 = *(result + 8);
LABEL_11:
  *(a2 + 8) = v14;
  return result;
}

float sub_24BD3E058(float *a1, float *a2, float *a3, float a4, float a5, float a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = &v29;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  if (a4 >= a5)
  {
    v7 = a4;
  }

  else
  {
    v7 = a5;
  }

  if (a4 >= a5)
  {
    v8 = &v28;
  }

  else
  {
    v8 = &v29;
  }

  if (v7 >= a6)
  {
    v9 = 4 * (a4 < a5);
  }

  else
  {
    v9 = 8;
  }

  if (v7 >= a6)
  {
    v10 = v8;
  }

  else
  {
    v10 = &v30;
  }

  v11 = *(&v28 + v9);
  if (a5 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = a5;
  }

  v13 = 4 * (a5 < a4);
  if (a5 >= a4)
  {
    v6 = &v28;
  }

  if (v12 > a6)
  {
    v13 = 8;
  }

  v14 = *(&v28 + v13);
  if (v12 > a6)
  {
    v6 = &v30;
  }

  v15 = (v11 + v14) * 0.5;
  *a3 = v15;
  if (v10 == v6)
  {
    *a2 = 0.0;
    v22 = 0.0;
  }

  else
  {
    v16 = v10 - &v28;
    v17 = v11 - v14;
    v18 = (v11 - v14) / (v11 + v14);
    v19 = (v11 - v14) / (2.0 - v11 - v14);
    if (v15 <= 0.5)
    {
      v19 = v18;
    }

    *a2 = v19;
    if (v16)
    {
      if (v16 == 1)
      {
        v20 = (a6 - a4) / v17;
        v21 = 2.0;
      }

      else
      {
        if (v16 != 2)
        {
          v22 = *a1;
          goto LABEL_36;
        }

        v20 = (a4 - a5) / v17;
        v21 = 4.0;
      }

      v22 = v20 + v21;
    }

    else
    {
      v23 = (a5 - a6) / v17;
      v24 = a5 < a6;
      v25 = 0.0;
      if (v24)
      {
        v25 = 6.0;
      }

      v22 = v25 + v23;
    }
  }

LABEL_36:
  result = v22 / 6.0;
  *a1 = result;
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

float *sub_24BD3E1E4(float *result, float *a2, float *a3, float a4, float a5, float a6)
{
  if (a5 < 0.000001)
  {
    *a3 = a6;
    *a2 = a6;
    *result = a6;
    return result;
  }

  v6 = (a5 + a6) - (a6 * a5);
  v7 = (a5 + 1.0) * a6;
  if (a6 >= 0.5)
  {
    v7 = v6;
  }

  v8 = -(v7 - a6 * 2.0);
  v9 = a4;
  v10 = a4 + 0.333333333;
  if (v10 < 0.0)
  {
    v10 = v10 + 1.0;
  }

  v11 = v10 + -1.0;
  if (v10 <= 1.0)
  {
    v11 = v10;
  }

  v12 = v11;
  if (v11 < 0.166666667)
  {
    v13 = v8 + (v7 - v8) * 6.0 * v12;
LABEL_11:
    v14 = v13;
    goto LABEL_15;
  }

  v14 = v7;
  if (v11 >= 0.5)
  {
    v14 = v8;
    if (v12 < 0.666666667)
    {
      v13 = v8 + (0.666666667 - v12) * (v7 - v8) * 6.0;
      goto LABEL_11;
    }
  }

LABEL_15:
  *result = v14;
  if (a4 < 0.0)
  {
    a4 = a4 + 1.0;
  }

  if (a4 <= 1.0)
  {
    v15 = a4;
  }

  else
  {
    v15 = a4 + -1.0;
  }

  v16 = v15;
  if (v15 < 0.166666667)
  {
    v17 = v8 + (v7 - v8) * 6.0 * v16;
LABEL_22:
    v18 = v17;
    goto LABEL_26;
  }

  v19 = v15 < 0.5;
  v18 = v7;
  if (!v19)
  {
    v18 = v8;
    if (v16 < 0.666666667)
    {
      v17 = v8 + (0.666666667 - v16) * (v7 - v8) * 6.0;
      goto LABEL_22;
    }
  }

LABEL_26:
  *a2 = v18;
  v20 = v9 + -0.333333333;
  if (v20 < 0.0)
  {
    v20 = v20 + 1.0;
  }

  if (v20 <= 1.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + -1.0;
  }

  v22 = v21;
  if (v21 >= 0.166666667)
  {
    if (v21 < 0.5)
    {
      goto LABEL_38;
    }

    if (v22 >= 0.666666667)
    {
      v7 = v8;
      goto LABEL_38;
    }

    v23 = v8 + (0.666666667 - v22) * (v7 - v8) * 6.0;
  }

  else
  {
    v23 = v8 + (v7 - v8) * 6.0 * v22;
  }

  v7 = v23;
LABEL_38:
  *a3 = v7;
  if (*result < 0.000001)
  {
    *result = 0.0;
  }

  if (*a2 < 0.000001)
  {
    *a2 = 0.0;
  }

  if (*a3 < 0.000001)
  {
    *a3 = 0.0;
  }

  return result;
}

double sub_24BD3E458@<D0>(double *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X8>)
{
  v4 = a2[1].f64[0];
  v5 = a3[1].f64[0];
  v6 = vmuld_lane_f64(a2->f64[1] - a1[1], *a3, 1) + (a2->f64[0] - *a1) * a3->f64[0] + (v4 - a1[2]) * v5;
  v7 = vsubq_f64(*a2, vmulq_n_f64(*a3, v6));
  result = v4 - v5 * v6;
  *a4 = v7;
  a4[1].f64[0] = result;
  return result;
}

uint64_t sub_24BD3E4A8(void *a1)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v1 = a1[14] - a1[13];
  if (v1 && a1[20] != a1[19])
  {
    sub_24BCA18B0(v6, v1 >> 2);
    sub_24BCA18B0(&v5, (a1[20] - a1[19]) >> 2);
    std::thread::hardware_concurrency();
    v7[0] = &unk_285F95858;
    v7[1] = a1;
    v7[2] = &v5;
    v7[3] = v7;
    v6[22] = 0;
    operator new();
  }

  result = 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD3E950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_24BC9EF8C(&a29);
  sub_24BC9EF8C(&a33);
  if (__p)
  {
    operator delete(__p);
  }

  a33 = &a14;
  sub_24BC8EE84(&a33);
  a33 = &a17;
  sub_24BC8EE84(&a33);
  a33 = &a20;
  sub_24BC8EE84(&a33);
  sub_24BC9EF8C(v37 - 176);
  sub_24BC9EF8C(v37 - 144);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24BD3EA6C(int a1, unsigned int a2, uint64_t a3)
{
  v4 = (a1 + 1);
  if (v4 >= a2)
  {
    sub_24BCA123C(&v27, v4);
    if (v27 != *(&v27 + 1))
    {
      v7 = 0;
      v8 = (*(&v27 + 1) - v27 - 4) >> 2;
      v9 = vdupq_n_s64(v8);
      v10 = (v8 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v11 = (v27 + 8);
      do
      {
        v12 = vdupq_n_s64(v7);
        v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_24BFBC5B0)));
        if (vuzp1_s16(v13, *v9.i8).u8[0])
        {
          *(v11 - 2) = v7;
        }

        if (vuzp1_s16(v13, *&v9).i8[2])
        {
          *(v11 - 1) = v7 + 1;
        }

        if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_24BFBC5E0)))).i32[1])
        {
          *v11 = v7 + 2;
          v11[1] = v7 + 3;
        }

        v7 += 4;
        v11 += 4;
      }

      while (v10 != v7);
    }

    v14 = 42;
    v25[0] = 42;
    for (i = 1; i != 624; ++i)
    {
      v14 = i + 1812433253 * (v14 ^ (v14 >> 30));
      v25[i] = v14;
    }

    v26 = 0;
    if (a2)
    {
      v16 = 0;
      v17 = a2;
      do
      {
        v24[0] = v16;
        v24[1] = a1;
        v18 = sub_24BD41A74(v24, v25, v24);
        v19 = v27;
        v20 = *(v27 + 4 * v16);
        *(v27 + 4 * v16) = *(v27 + 4 * v18);
        *(v19 + 4 * v18) = v20;
        ++v16;
      }

      while (a2 != v16);
    }

    else
    {
      v17 = 0;
    }

    sub_24BC8CAB0(&v27, v17);
    v21 = *a3;
    *a3 = v27;
    v22 = *(a3 + 16);
    *(a3 + 16) = v28;
    *&v27 = v21;
    v28 = v22;
    if (v21)
    {
      *(&v27 + 1) = v21;
      operator delete(v21);
    }
  }

  return v4 >= a2;
}

void sub_24BD3EC3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 96);
  if (v3)
  {
    *(v1 - 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD3EC5C(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_24BD42074(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

double sub_24BD3EC98(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = vsubq_f32(*a1, *a2);
  v4 = vsubq_f32(*a3, *a2);
  v5 = vmulq_f32(v3, v3);
  v5.i32[3] = 0;
  v5.i64[0] = vpaddq_f32(v5, v5).u64[0];
  v5.f32[0] = sqrtf(vaddv_f32(*v5.f32));
  v6 = vmulq_f32(v4, v4);
  v6.i32[3] = 0;
  v7 = vdivq_f32(v3, vdupq_lane_s32(*v5.f32, 0));
  v5.i64[0] = vpaddq_f32(v6, v6).u64[0];
  v5.f32[0] = sqrtf(vaddv_f32(*v5.f32));
  v8 = vmulq_f32(v7, vdivq_f32(v4, vdupq_lane_s32(*v5.f32, 0)));
  v8.i32[3] = 0;
  v9 = vaddv_f32(*&vpaddq_f32(v8, v8));
  v10 = fabs(v9);
  v11 = 0.0;
  if (v10 >= 0.001)
  {
    if (vabdd_f64(1.0, v10) >= 0.001)
    {
      v12 = acos(v9);
      return 1.0 / tan(v12);
    }

    else
    {
      return 1000.0;
    }
  }

  return v11;
}

float sub_24BD3ED58(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = vsubq_f32(*a2, *a1);
  v4 = vsubq_f32(*a3, *a1);
  v5 = vmulq_f32(v3, v4);
  v5.i32[3] = 0;
  v5.f32[0] = vaddv_f32(*&vpaddq_f32(v5, v5));
  v6 = vmulq_f32(v3, v3);
  v6.i32[3] = 0;
  v7 = vmulq_f32(v4, v4);
  v7.i32[3] = 0;
  return fabsf(atan2f(sqrtf((vaddv_f32(*&vpaddq_f32(v6, v6)) * vaddv_f32(*&vpaddq_f32(v7, v7))) - (v5.f32[0] * v5.f32[0])), v5.f32[0]));
}

uint64_t sub_24BD3EDC4(uint64_t a1, unsigned int a2, float32x4_t *a3)
{
  v84[0] = a2;
  v5 = sub_24BCD9434(a1, a2);
  v6 = (*(a1 + 8) + 16 * *(a1 + 176));
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v7);
  }

  if (sub_24BCD93B0(a1, v84))
  {
    v9 = 0xFFFFFFFFLL;
    v79 = -1;
    sub_24BCB9454(v81, (a1 + 104), v84);
    v80 = sub_24BCB947C(v81);
    if (v80 == -1)
    {
      v11 = -1;
      v21 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = -1;
      v11 = -1;
      v12 = -1;
      do
      {
        v13 = sub_24BCB9024(a1 + 104, &v80);
        v14 = sub_24BC9ECE4(a1, *(a1 + 180), *v13);
        if ((v15 & *v14) != 0)
        {
          v16 = sub_24BCB9024(a1 + 104, &v80);
          v10 = *(sub_24BCB9024(a1 + 104, v16) + 12);
          v17 = v80;
          v79 = v80;
        }

        else
        {
          v17 = v80;
        }

        v18 = sub_24BC9ECE4(a1, *(a1 + 180), v17);
        if ((v19 & *v18) != 0)
        {
          v20 = sub_24BCB9024(a1 + 104, &v80);
          v12 = *(sub_24BCB9024(a1 + 104, v20) + 12);
          v11 = v80;
        }

        v80 = sub_24BCB947C(v81);
      }

      while (v80 != -1);
      v21 = v10;
      v9 = v12;
    }

    v39 = 0;
    v40 = *(v8 + 40);
    v41 = *(v40 + 16 * v9);
    v42 = *(v40 + 16 * v21);
    v78 = vsubq_f32(v42, v41);
    do
    {
      *(&v82 + v39) = v78.f32[v39];
      ++v39;
    }

    while (v39 != 3);
    *&v75 = v82;
    v77 = v83;
    if (v5 == 2)
    {
      v43 = 0;
      v78 = vsubq_f32(vaddq_f32(*(v40 + 16 * v84[0]), *(v40 + 16 * v84[0])), vaddq_f32(v41, v42));
      do
      {
        *(&v82 + v43) = v78.f32[v43];
        ++v43;
      }

      while (v43 != 3);
      v44 = v82;
      v45 = v83;
    }

    else
    {
      v46 = sub_24BCB9024(a1 + 104, &v79);
      v47 = 3.14159265 / (v5 + -1.0);
      v80 = *sub_24BCB9024(a1 + 104, (v46 + 4));
      v48 = 1;
      v49 = 0.0;
      v50 = 0.0;
      v51 = 0.0;
      do
      {
        v52 = sin(v47 * v48);
        v53 = sub_24BCB9024(a1 + 104, &v80);
        v54 = sub_24BCB9024(a1 + 104, v53);
        v55 = 0;
        v56 = v52;
        v78 = vmulq_n_f32(*(*(v8 + 40) + 16 * *(v54 + 12)), v56);
        do
        {
          *(&v82 + v55) = v78.f32[v55];
          ++v55;
        }

        while (v55 != 3);
        v57 = v82;
        v58 = v83;
        v59 = sub_24BCB9024(a1 + 104, &v80);
        v49 = v49 + v57;
        v50 = v50 + v58.f64[0];
        v51 = v51 + v58.f64[1];
        v80 = *sub_24BCB9024(a1 + 104, (v59 + 4));
        ++v48;
      }

      while (v80 != v11);
      v60 = __sincos_stret(v47);
      v61 = 0;
      v62 = v60.__cosval * 2.0 + -2.0;
      sinval = v60.__sinval;
      v78 = vmulq_n_f32(vaddq_f32(*(v40 + 16 * v9), *(v40 + 16 * v21)), sinval);
      do
      {
        *(&v82 + v61) = v78.f32[v61];
        ++v61;
      }

      while (v61 != 3);
      v44 = v62 * v49 + v82;
      v64.f64[1] = v62 * v51;
      v64.f64[0] = v62 * v50;
      v45 = vaddq_f64(v64, v83);
    }

    *&v65.f64[0] = vdupq_laneq_s64(v45, 1).u64[0];
    v65.f64[1] = v44;
    v66 = v44 * v77.f64[0] - v45.f64[0] * *&v75;
    v67 = vmulq_f64(v77, vnegq_f64(v65));
    v68 = vdupq_lane_s64(v75, 0);
    v68.f64[0] = v77.f64[1];
    *v38.f32 = vcvt_f32_f64(vmlaq_f64(v67, v68, v45));
    *&v69 = v66;
    v38.i64[1] = v69;
  }

  else
  {
    sub_24BCB8F94(&v82, (a1 + 104), v84);
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    v76 = 0.0;
    while (1)
    {
      v28 = sub_24BCB8FBC(&v82);
      if (v28 == -1)
      {
        break;
      }

      v29 = 0;
      v30 = *(v8 + 40) + 16 * v28;
      do
      {
        *&v81[v29] = *(v30 + 4 * v29);
        ++v29;
      }

      while (v29 != 3);
      v31 = *v81;
      v32 = *&v81[1];
      v33 = *&v81[2];
      v34 = __sincos_stret(v22 * 6.28318531 / v5);
      v76 = v76 + v34.__cosval * v31;
      v27 = v27 + v34.__cosval * v32;
      v26 = v26 + v34.__cosval * v33;
      v25 = v25 + v34.__sinval * v31;
      v24 = v24 + v34.__sinval * v32;
      v23 = v23 + v34.__sinval * v33;
      ++v22;
    }

    *&v35 = v27 * v23 - v26 * v24;
    *&v36 = v26 * v25 - v76 * v23;
    v38.i64[0] = __PAIR64__(v36, v35);
    *&v37 = v76 * v24 - v27 * v25;
    v38.i64[1] = v37;
  }

  *a3 = v38;
  v70 = vmulq_f32(v38, v38);
  v70.i32[3] = 0;
  v71 = vpaddq_f32(v70, v70);
  v72 = vpaddq_f32(v71, v71);
  if (v72.f32[0] <= 0.0)
  {
    v73 = xmmword_24BFBD1C0;
  }

  else
  {
    v73 = vdivq_f32(v38, vsqrtq_f32(v72));
  }

  *a3 = v73;
  return 1;
}

uint64_t sub_24BD3F2F4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, float32x4_t *a3@<X8>)
{
  a3->i64[0] = 0;
  a3->i64[1] = 0;
  return sub_24BD3EDC4(a1, a2, a3);
}

uint64_t sub_24BD3F304@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, float32x4_t *a4@<X8>)
{
  v18 = a3;
  sub_24BCB9454(v17, (a1 + 104), &v18);
  result = sub_24BCB947C(v17);
  v16 = result;
  if (result == -1)
  {
    v15 = 0uLL;
  }

  else
  {
    v15 = 0uLL;
    do
    {
      v8 = sub_24BC9ECE4(a1, *(a1 + 180), result);
      if ((v9 & *v8) == 0)
      {
        sub_24BCDAEE4(a1, v16);
        v15 = vaddq_f32(v15, vmulq_n_f32(*(*a2 + 16 * *(sub_24BCB9024(a1 + 104, &v16) + 16)), v10));
      }

      result = sub_24BCB947C(v17);
      v16 = result;
    }

    while (result != -1);
  }

  v11 = vmulq_f32(v15, v15);
  v11.i32[3] = 0;
  v12 = vpaddq_f32(v11, v11);
  v13 = vpaddq_f32(v12, v12);
  if (v13.f32[0] <= 0.0)
  {
    v14 = xmmword_24BFBD1C0;
  }

  else
  {
    v14 = vdivq_f32(v15, vsqrtq_f32(v13));
  }

  *a4 = v14;
  return result;
}

BOOL sub_24BD3F410(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = vmulq_f32(vsubq_f32(*a2, *a1), vsubq_f32(*a3, *a1));
  v3.i32[3] = 0;
  return vaddv_f32(*&vpaddq_f32(v3, v3)) < 0.0;
}

float sub_24BD3F440(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = vsubq_f32(*a2, *a1);
  v4 = vsubq_f32(*a3, *a1);
  v5 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v3, vextq_s8(v3, v3, 0xCuLL)), v3), vuzp2q_s32(vextq_s8(v4, v4, 4uLL), v4)), vzip2q_s32(vzip1q_s32(v4, vextq_s8(v4, v4, 0xCuLL)), v4), vuzp2q_s32(vextq_s8(v3, v3, 4uLL), v3));
  v6 = vmulq_f32(v5, v5);
  v6.i32[3] = 0;
  return sqrtf(vaddv_f32(*&vpaddq_f32(v6, v6))) * 0.5;
}

BOOL sub_24BD3F4A4(uint64_t a1, unsigned int *a2, float *a3)
{
  v6 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  v8 = v7 & *v6;
  if (v8)
  {
    return v8 == 0;
  }

  v9 = *(sub_24BCB9024(a1 + 104, a2) + 12);
  v10 = sub_24BCB9024(a1 + 104, a2);
  v11 = *(sub_24BCB9024(a1 + 104, v10) + 12);
  v12 = sub_24BCB9024(a1 + 104, a2);
  v13 = *(sub_24BCB9024(a1 + 104, (v12 + 4)) + 12);
  v14 = (*(a1 + 8) + 16 * *(a1 + 176));
  v16 = *v14;
  v15 = v14[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v15);
    v17 = (*(a1 + 8) + 16 * *(a1 + 176));
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v16 + 40);
    v21 = *(v20 + 16 * v9);
    if (v18)
    {
      v63 = *(v20 + 16 * v9);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v18);
      v22 = (*(a1 + 8) + 16 * *(a1 + 176));
      v16 = *v22;
      v23 = v22[1];
      v24 = *(*(v19 + 40) + 16 * v11);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v61 = v24;
        sub_24BC9EC78(v23);
        v24 = v61;
      }

      v21 = v63;
      goto LABEL_10;
    }

    v16 = v19;
  }

  else
  {
    v21 = *(*(v16 + 40) + 16 * v9);
  }

  v24 = *(*(v16 + 40) + 16 * v11);
LABEL_10:
  v25 = *(*(v16 + 40) + 16 * v13);
  v26 = vsubq_f32(v24, v21);
  v27 = vsubq_f32(v25, v21);
  v28 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v26, vextq_s8(v26, v26, 0xCuLL)), v26), vuzp2q_s32(vextq_s8(v27, v27, 4uLL), v27)), vzip2q_s32(vzip1q_s32(v27, vextq_s8(v27, v27, 0xCuLL)), v27), vuzp2q_s32(vextq_s8(v26, v26, 4uLL), v26));
  v29 = vmulq_f32(v28, v28);
  v29.i32[3] = 0;
  v30 = sqrtf(vaddv_f32(*&vpaddq_f32(v29, v29))) * 0.5;
  v31 = 0.0;
  if (v30 > 0.0)
  {
    v32 = vmulq_f32(v26, v27);
    v32.i32[3] = 0;
    v33 = vaddv_f32(*&vpaddq_f32(v32, v32));
    if (v33 < 0.0)
    {
      goto LABEL_17;
    }

    v34 = vsubq_f32(v25, v24);
    v35 = vsubq_f32(v21, v24);
    v36 = vmulq_f32(v35, v34);
    v36.i32[3] = 0;
    if (vaddv_f32(*&vpaddq_f32(v36, v36)) < 0.0 || (v37 = vsubq_f32(v21, v25), v38 = vsubq_f32(v24, v25), v39 = vmulq_f32(v37, v38), v39.i32[3] = 0, vaddv_f32(*&vpaddq_f32(v39, v39)) < 0.0))
    {
LABEL_17:
      if (v33 >= 0.0)
      {
        v48 = 0.25;
      }

      else
      {
        v48 = 0.5;
      }

      v31 = v30 * v48;
    }

    else
    {
      v40 = vmulq_f32(v35, v35);
      v40.i32[3] = 0;
      v40.i64[0] = vpaddq_f32(v40, v40).u64[0];
      v41 = vaddv_f32(*v40.f32);
      v40.f32[0] = sqrtf(v41);
      v42 = vmulq_f32(v34, v34);
      v42.i32[3] = 0;
      v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
      v42.f32[0] = sqrtf(vaddv_f32(*v42.f32));
      v43 = vmulq_f32(vdivq_f32(v35, vdupq_lane_s32(*v40.f32, 0)), vdivq_f32(v34, vdupq_lane_s32(*v42.f32, 0)));
      v43.i32[3] = 0;
      v44 = vaddv_f32(*&vpaddq_f32(v43, v43));
      v45 = fabs(v44);
      v46 = 0.0;
      v47 = 0.0;
      if (v45 >= 0.001)
      {
        if (vabdd_f64(1.0, v45) >= 0.001)
        {
          v62 = v37;
          v64 = v38;
          v49 = acos(v44);
          v50 = tan(v49);
          v37 = v62;
          v38 = v64;
          v47 = 1.0 / v50;
        }

        else
        {
          v47 = 1000.0;
        }
      }

      v51 = vmulq_f32(v37, v37);
      v51.i32[3] = 0;
      v51.i64[0] = vpaddq_f32(v51, v51).u64[0];
      v51.f32[0] = vaddv_f32(*v51.f32);
      v52 = v47 * v51.f32[0];
      v51.f32[0] = sqrtf(v51.f32[0]);
      v53 = vmulq_f32(v38, v38);
      v53.i32[3] = 0;
      v53.i64[0] = vpaddq_f32(v53, v53).u64[0];
      v53.f32[0] = sqrtf(vaddv_f32(*v53.f32));
      v54 = vmulq_f32(vdivq_f32(v37, vdupq_lane_s32(*v51.f32, 0)), vdivq_f32(v38, vdupq_lane_s32(*v53.f32, 0)));
      v54.i32[3] = 0;
      v55 = v52;
      v56 = vaddv_f32(*&vpaddq_f32(v54, v54));
      v57 = fabs(v56);
      if (v57 >= 0.001)
      {
        if (vabdd_f64(1.0, v57) >= 0.001)
        {
          v58 = acos(v56);
          v46 = 1.0 / tan(v58);
        }

        else
        {
          v46 = 1000.0;
        }
      }

      v59 = v46 * v41;
      v31 = (v55 + v59) * 0.125;
    }
  }

  *a3 = v31;
  return v8 == 0;
}

float sub_24BD3F828(uint64_t a1, unsigned int *a2)
{
  v3 = 0.0;
  sub_24BD3F4A4(a1, a2, &v3);
  return v3;
}

uint64_t sub_24BD3F854(uint64_t a1, unsigned int *a2, float *a3)
{
  v5 = *a2;
  if (*a2 == -1)
  {
    return 0;
  }

  v41 = v3;
  v42 = v4;
  v40 = v5;
  if (*(sub_24BCB9024(a1 + 104, &v40) + 12) == -1)
  {
    return 0;
  }

  v9 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  if ((v10 & *v9) != 0)
  {
    return 0;
  }

  v12 = *(sub_24BCB9024(a1 + 104, a2) + 12);
  v39 = *(sub_24BCB9024(a1 + 104, a2) + 4);
  v13 = (*(a1 + 8) + 16 * *(a1 + 176));
  v15 = *v13;
  v14 = v13[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v14);
    v16 = (*(a1 + 8) + 16 * *(a1 + 176));
    v18 = *v16;
    v17 = v16[1];
    v38 = *(*(v15 + 40) + 16 * v12);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v17);
    }

    v15 = v18;
  }

  else
  {
    v38 = *(*(v15 + 40) + 16 * v12);
  }

  v19 = sub_24BCB9024(a1 + 104, a2);
  v37 = *(*(v15 + 40) + 16 * *(sub_24BCB9024(a1 + 104, v19) + 12));
  v20 = (*(a1 + 8) + 16 * *(a1 + 176));
  v22 = *v20;
  v21 = v20[1];
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v21);
  }

  v23 = *(*(v22 + 40) + 16 * *(sub_24BCB9024(a1 + 104, &v39) + 12));
  v24 = vaddq_f32(v38, v37);
  v25 = vmulq_f32(vaddq_f32(v24, v23), vdupq_n_s32(0x3EAAAAABu));
  v26.i64[0] = 0x3F0000003F000000;
  v26.i64[1] = 0x3F0000003F000000;
  v27 = vmulq_f32(v24, v26);
  v28 = vsubq_f32(v25, v38);
  v29 = vsubq_f32(vmulq_f32(vaddq_f32(v38, v23), v26), v38);
  v30 = vzip2q_s32(vzip1q_s32(v28, vextq_s8(v28, v28, 0xCuLL)), v28);
  v31 = vuzp2q_s32(vextq_s8(v28, v28, 4uLL), v28);
  v32 = vmlsq_f32(vmulq_f32(v30, vuzp2q_s32(vextq_s8(v29, v29, 4uLL), v29)), vzip2q_s32(vzip1q_s32(v29, vextq_s8(v29, v29, 0xCuLL)), v29), v31);
  v33 = vmulq_f32(v32, v32);
  v33.i32[3] = 0;
  v34 = vsubq_f32(v27, v38);
  v35 = vmlsq_f32(vmulq_f32(vuzp2q_s32(vextq_s8(v34, v34, 4uLL), v34), v30), vzip2q_s32(vzip1q_s32(v34, vextq_s8(v34, v34, 0xCuLL)), v34), v31);
  v36 = vmulq_f32(v35, v35);
  v36.i32[3] = 0;
  *a3 = (sqrtf(vaddv_f32(*&vpaddq_f32(v33, v33))) + sqrtf(vaddv_f32(*&vpaddq_f32(v36, v36)))) * 0.5;
  return 1;
}

float sub_24BD3FA9C(uint64_t a1, unsigned int *a2)
{
  v3 = 0.0;
  sub_24BD3F854(a1, a2, &v3);
  return v3;
}

uint64_t sub_24BD3FAC8(uint64_t a1, unsigned int a2, float32x4_t *a3)
{
  v43 = a2;
  sub_24BCB2008(__p, 3uLL);
  v5 = sub_24BCB9038(a1 + 104, &v43);
  v6 = sub_24BCB9024(a1 + 104, v5);
  v7 = sub_24BCB9024(a1 + 104, v6);
  *__p[0] = *(v7 + 12);
  v8 = sub_24BCB9038(a1 + 104, &v43);
  v9 = sub_24BCB9024(a1 + 104, v8);
  v10 = sub_24BCB9024(a1 + 104, (v9 + 8));
  v11 = sub_24BCB9024(a1 + 104, v10);
  *(__p[0] + 1) = *(v11 + 12);
  v12 = sub_24BCB9038(a1 + 104, &v43);
  v13 = sub_24BCB9024(a1 + 104, v12);
  v14 = __p[0];
  *(__p[0] + 2) = *(v13 + 12);
  v15 = v14[1];
  v16 = (*(a1 + 8) + 16 * *(a1 + 176));
  v18 = *v16;
  v17 = v16[1];
  if (!v17)
  {
    v22 = *(*(v18 + 40) + 16 * v15);
    v23 = *v14;
LABEL_9:
    v26 = vsubq_f32(v22, *(*(v18 + 40) + 16 * v23));
    v27 = v14[2];
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_24BC9EC78(v17);
  v14 = __p[0];
  v19 = (*(a1 + 8) + 16 * *(a1 + 176));
  v21 = *v19;
  v20 = v19[1];
  v22 = *(*(v18 + 40) + 16 * v15);
  v23 = *__p[0];
  if (!v20)
  {
    v18 = *v19;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  v40 = v22;
  sub_24BC9EC78(v20);
  v14 = __p[0];
  v24 = (*(a1 + 8) + 16 * *(a1 + 176));
  v18 = *v24;
  v25 = v24[1];
  v26 = vsubq_f32(v40, *(*(v21 + 40) + 16 * v23));
  v27 = *(__p[0] + 2);
  if (!v25)
  {
LABEL_10:
    v31 = *(*(v18 + 40) + 16 * v27);
    v32 = *v14;
    v30 = v18;
    goto LABEL_11;
  }

  v41 = v26;
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_24BC9EC78(v25);
  v28 = (*(a1 + 8) + 16 * *(a1 + 176));
  v30 = *v28;
  v29 = v28[1];
  v31 = *(*(v18 + 40) + 16 * v27);
  v32 = *__p[0];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    v39 = v31;
    sub_24BC9EC78(v29);
    v31 = v39;
  }

  v26 = v41;
LABEL_11:
  v33 = vsubq_f32(v31, *(*(v30 + 40) + 16 * v32));
  v34 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v26, vextq_s8(v26, v26, 0xCuLL)), v26), vuzp2q_s32(vextq_s8(v33, v33, 4uLL), v33)), vzip2q_s32(vzip1q_s32(v33, vextq_s8(v33, v33, 0xCuLL)), v33), vuzp2q_s32(vextq_s8(v26, v26, 4uLL), v26));
  v35 = vmulq_f32(v34, v34);
  v35.i32[3] = 0;
  v36 = vpaddq_f32(v35, v35).u64[0];
  v36.f32[0] = sqrtf(vaddv_f32(v36));
  if (v36.f32[0] <= 0.0)
  {
    v37 = xmmword_24BFBD1C0;
  }

  else
  {
    v37 = vdivq_f32(v34, vdupq_lane_s32(v36, 0));
  }

  *a3 = v37;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 1;
}

void sub_24BD3FD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD3FD60@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, float32x4_t *a3@<X8>)
{
  a3->i64[0] = 0;
  a3->i64[1] = 0;
  return sub_24BD3FAC8(a1, a2, a3);
}

uint64_t sub_24BD3FD70(uint64_t a1, unsigned int *a2, float *a3)
{
  v6 = sub_24BC9ECE4(a1, *(a1 + 180), *a2);
  if ((v7 & *v6) != 0)
  {
    return 0;
  }

  v8 = sub_24BCB9024(a1 + 104, a2);
  v9 = sub_24BC9ECE4(a1, *(a1 + 180), *v8);
  if ((v10 & *v9) != 0)
  {
    return 0;
  }

  v12 = *(sub_24BCB9024(a1 + 104, a2) + 16);
  v18 = 0u;
  sub_24BD3FAC8(a1, v12, &v18);
  v13 = sub_24BCB9024(a1 + 104, a2);
  v14 = *(sub_24BCB9024(a1 + 104, v13) + 16);
  v17 = 0u;
  sub_24BD3FAC8(a1, v14, &v17);
  v15 = vmulq_f32(v18, v17);
  v15.i32[3] = 0;
  v16 = vaddv_f32(*&vpaddq_f32(v15, v15));
  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  if (v16 < -1.0)
  {
    v16 = -1.0;
  }

  *a3 = acosf(v16);
  return 1;
}

float sub_24BD3FE7C(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vmulq_f32(*a2, *a2);
  v2.i32[3] = 0;
  v3 = sqrtf(vaddv_f32(*&vpaddq_f32(v2, v2))) * 0.5;
  v4 = vmulq_f32(*a2, *a1);
  v4.i32[3] = 0;
  if (vaddv_f32(*&vpaddq_f32(v4, v4)) <= 0.0)
  {
    return v3;
  }

  else
  {
    return -v3;
  }
}

uint64_t sub_24BD3FEC0(uint64_t a1, unsigned int *a2, float32x4_t *a3)
{
  a3->i64[0] = 0;
  a3->i32[2] = 0;
  __p = 0;
  v75 = 0;
  v76 = 0;
  sub_24BCB9454(v73, (a1 + 104), a2);
  v5 = sub_24BCB947C(v73);
  v6 = 0;
  while (1)
  {
    v7 = v75;
    if (v5 == -1)
    {
      break;
    }

    if (v75 >= v76)
    {
      v9 = (v75 - __p) >> 2;
      if ((v9 + 1) >> 62)
      {
        sub_24BC8E01C();
      }

      v10 = (v76 - __p) >> 1;
      if (v10 <= v9 + 1)
      {
        v10 = v9 + 1;
      }

      if (v76 - __p >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        sub_24BC92E0C(&__p, v11);
      }

      *(4 * v9) = v5;
      v8 = 4 * v9 + 4;
      v12 = (4 * v9 - (v75 - __p));
      memcpy(v12, __p, v75 - __p);
      v13 = __p;
      __p = v12;
      v75 = v8;
      v76 = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v75 = v5;
      v8 = (v7 + 1);
    }

    v75 = v8;
    v14 = sub_24BC9ECE4(a1, *(a1 + 180), v5);
    v6 |= (*v14 & v15) != 0;
    v5 = sub_24BCB947C(v73);
  }

  v16 = __p;
  if (((v75 - __p == 8) & v6) == 1)
  {
    v17 = sub_24BC9ECE4(a1, *(a1 + 180), *__p);
    v72 = *(__p + ((*v17 & v18) != 0));
    v19 = *(sub_24BCB9024(a1 + 104, &v72) + 16);
    v71 = 0uLL;
    sub_24BD3FAC8(a1, v19, &v71);
    v20 = v71;
LABEL_39:
    *a3 = v20;
    v65 = 1;
    goto LABEL_41;
  }

  if (__p != v75)
  {
    v21 = 0.0;
    do
    {
      v22 = sub_24BC9ECE4(a1, *(a1 + 180), *v16);
      if ((*v22 & v24) == 0)
      {
        v71.i32[0] = 0;
        sub_24BD3F4A4(a1, v16, v71.f32);
        v25 = v71.f32[0];
        v26 = *(sub_24BCB9024(a1 + 104, v16) + 12);
        v27 = (*(a1 + 8) + 16 * *(a1 + 176));
        v29 = *v27;
        v28 = v27[1];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v28);
        }

        v70 = *(*(v29 + 40) + 16 * v26);
        v30 = sub_24BCB9024(a1 + 104, v16);
        v31 = *(sub_24BCB9024(a1 + 104, v30) + 12);
        v32 = (*(a1 + 8) + 16 * *(a1 + 176));
        v34 = *v32;
        v33 = v32[1];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v33);
        }

        v69 = *(*(v34 + 40) + 16 * v31);
        v35 = sub_24BCB9024(a1 + 104, v16);
        v36 = *(sub_24BCB9024(a1 + 104, (v35 + 4)) + 12);
        v37 = (*(a1 + 8) + 16 * *(a1 + 176));
        v39 = *v37;
        v38 = v37[1];
        if (v38)
        {
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v38);
        }

        v40 = *(v39 + 40);
        v41 = *(v40 + 16 * v36);
        v42 = v69;
        v43 = vsubq_f32(v70, v69);
        v44 = vsubq_f32(v41, v69);
        v45 = vmulq_f32(v43, v43);
        v45.i32[3] = 0;
        v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
        v45.f32[0] = sqrtf(vaddv_f32(*v45.f32));
        v46 = vmulq_f32(v44, v44);
        v46.i32[3] = 0;
        v46.i64[0] = vpaddq_f32(v46, v46).u64[0];
        v46.f32[0] = sqrtf(vaddv_f32(*v46.f32));
        v47 = vmulq_f32(vdivq_f32(v43, vdupq_lane_s32(*v45.f32, 0)), vdivq_f32(v44, vdupq_lane_s32(*v46.f32, 0)));
        v47.i32[3] = 0;
        v48 = vaddv_f32(*&vpaddq_f32(v47, v47));
        v49 = fabs(v48);
        v50 = 0.0;
        v51 = 0.0;
        if (v49 >= 0.001)
        {
          if (vabdd_f64(1.0, v49) >= 0.001)
          {
            v67 = *(v40 + 16 * v36);
            v52 = acos(v48);
            v53 = tan(v52);
            v41 = v67;
            v42 = v69;
            v50 = 0.0;
            v51 = 1.0 / v53;
          }

          else
          {
            v51 = 1000.0;
          }
        }

        v54 = vaddq_f32(*a3, vmulq_n_f32(vsubq_f32(v41, v70), v51));
        v55 = vsubq_f32(v70, v41);
        v56 = vsubq_f32(v42, v41);
        v57 = vmulq_f32(v55, v55);
        v57.i32[3] = 0;
        v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
        v57.f32[0] = sqrtf(vaddv_f32(*v57.f32));
        v58 = vdivq_f32(v55, vdupq_lane_s32(*v57.f32, 0));
        v59 = vmulq_f32(v56, v56);
        v59.i32[3] = 0;
        v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
        v59.f32[0] = sqrtf(vaddv_f32(*v59.f32));
        v60 = vmulq_f32(v58, vdivq_f32(v56, vdupq_lane_s32(*v59.f32, 0)));
        v60.i32[3] = 0;
        *a3 = v54;
        v61 = vaddv_f32(*&vpaddq_f32(v60, v60));
        v62 = fabs(v61);
        if (v62 >= 0.001)
        {
          if (vabdd_f64(1.0, v62) >= 0.001)
          {
            v68 = v54;
            v63 = acos(v61);
            v64 = tan(v63);
            v54 = v68;
            v42 = v69;
            v50 = 1.0 / v64;
          }

          else
          {
            v50 = 1000.0;
          }
        }

        v21 = v21 + v25;
        v23 = vaddq_f32(v54, vmulq_n_f32(vsubq_f32(v42, v70), v50));
        *a3 = v23;
      }

      ++v16;
    }

    while (v16 != v7);
    if (v21 > 0.0)
    {
      v23.f32[0] = v21 + v21;
      v20 = vdivq_f32(*a3, vdupq_lane_s32(*v23.f32, 0));
      goto LABEL_39;
    }
  }

  v65 = 0;
LABEL_41:
  if (__p)
  {
    v75 = __p;
    operator delete(__p);
  }

  return v65;
}

void sub_24BD4035C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD4039C(uint64_t a1, unsigned int *a2, float *a3)
{
  *a3 = 0.0;
  sub_24BCB9454(v36, (a1 + 104), a2);
  v5 = sub_24BCB947C(v36);
  v35 = v5;
  if (v5 == -1)
  {
    return 0;
  }

  v6 = 0.0;
  v7 = 0.0;
  do
  {
    v8 = sub_24BC9ECE4(a1, *(a1 + 180), v5);
    if ((v9 & *v8) != 0)
    {
      v5 = sub_24BCB947C(v36);
    }

    else
    {
      v37 = 0.0;
      sub_24BD3F4A4(a1, &v35, &v37);
      v10 = v37;
      v11 = *(sub_24BCB9024(a1 + 104, &v35) + 12);
      v12 = (*(a1 + 8) + 16 * *(a1 + 176));
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v13);
      }

      v34 = *(*(v14 + 40) + 16 * v11);
      v15 = sub_24BCB9024(a1 + 104, &v35);
      v16 = *(sub_24BCB9024(a1 + 104, v15) + 12);
      v17 = (*(a1 + 8) + 16 * *(a1 + 176));
      v19 = *v17;
      v18 = v17[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v18);
      }

      v33 = *(*(v19 + 40) + 16 * v16);
      v20 = sub_24BCB9024(a1 + 104, &v35);
      v21 = *(sub_24BCB9024(a1 + 104, (v20 + 4)) + 12);
      v22 = (*(a1 + 8) + 16 * *(a1 + 176));
      v24 = *v22;
      v23 = v22[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v23);
      }

      v6 = v6 + v10;
      v25 = vsubq_f32(v33, v34);
      v26 = vsubq_f32(*(*(v24 + 40) + 16 * v21), v34);
      v27 = vmulq_f32(v25, v26);
      v27.i32[3] = 0;
      v27.f32[0] = vaddv_f32(*&vpaddq_f32(v27, v27));
      v28 = vmulq_f32(v25, v25);
      v28.i32[3] = 0;
      v29 = vmulq_f32(v26, v26);
      v29.i32[3] = 0;
      v30 = fabsf(atan2f(sqrtf((vaddv_f32(*&vpaddq_f32(v28, v28)) * vaddv_f32(*&vpaddq_f32(v29, v29))) - (v27.f32[0] * v27.f32[0])), v27.f32[0]));
      v5 = sub_24BCB947C(v36);
      v7 = v7 + v30;
    }

    v35 = v5;
  }

  while (v5 != -1);
  if (v6 <= 0.0)
  {
    return 0;
  }

  v31 = (6.28318531 - v7) / v6;
  *a3 = v31;
  return 1;
}

uint64_t sub_24BD405CC(float *a1, float *a2, float *a3, float *a4)
{
  v4 = *a1;
  v5 = -(*a2 - (v4 * v4));
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  v6 = sqrtf(v5);
  *a3 = v4 + v6;
  *a4 = *a1 - v6;
  if (*a3 > 1000.0)
  {
    *a3 = 1000.0;
  }

  return 1;
}

uint64_t sub_24BD4061C(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, uint64_t a5, const void **a6)
{
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  sub_24BC9FEFC(&__p, (*(a1 + 112) - *(a1 + 104)) >> 2);
  v39 = a3;
  sub_24BD4116C(v41, &v39);
  v11 = __p;
  *(__p + (a3 >> 6)) |= 1 << a3;
  v12 = *(&v42 + 1);
  if (!*(&v42 + 1))
  {
    goto LABEL_24;
  }

  do
  {
    v13 = (*(*(&v41[0] + 1) + ((v42 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v42 & 0x1FF));
    v14 = *v13;
    v38 = *v13;
    v15 = v13[1];
    *&v42 = v42 + 1;
    *(&v42 + 1) = v12 - 1;
    if (v42 >= 0x400)
    {
      operator delete(**(&v41[0] + 1));
      *(&v41[0] + 1) += 8;
      *&v42 = v42 - 512;
      v14 = v38;
    }

    if (v14 != -1)
    {
      sub_24BCB4670(a5, &v38);
      v17 = a6[1];
      v16 = a6[2];
      if (v17 >= v16)
      {
        v19 = *a6;
        v20 = v17 - *a6;
        v21 = v20 >> 2;
        v22 = (v20 >> 2) + 1;
        if (v22 >> 62)
        {
          sub_24BC8E01C();
        }

        v23 = v16 - v19;
        if (v23 >> 1 > v22)
        {
          v22 = v23 >> 1;
        }

        v24 = v23 >= 0x7FFFFFFFFFFFFFFCLL;
        v25 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v24)
        {
          v25 = v22;
        }

        if (v25)
        {
          sub_24BC92E0C(a6, v25);
        }

        *(4 * v21) = v15;
        v18 = 4 * v21 + 4;
        memcpy(0, v19, v20);
        v26 = *a6;
        *a6 = 0;
        a6[1] = v18;
        a6[2] = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17 = v15;
        v18 = (v17 + 4);
      }

      a6[1] = v18;
      if (v15 < a4)
      {
        v27 = v38;
        v28 = *a2;
        v29 = (*a2 + 24 * v38);
        v30 = *v29;
        if (v29[1] != *v29)
        {
          v31 = 0;
          v32 = v15 + 1;
          v33 = __p;
          do
          {
            v34 = *(v30 + 4 * v31);
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & v33[v34 >> 6]) == 0)
            {
              v39 = __PAIR64__(v32, v34);
              sub_24BD4116C(v41, &v39);
              v33 = __p;
              *(__p + v35) |= v36;
              v27 = v38;
              v28 = *a2;
            }

            ++v31;
            v30 = *(v28 + 24 * v27);
          }

          while (v31 < (*(v28 + 24 * v27 + 8) - v30) >> 2);
        }
      }
    }

    v12 = *(&v42 + 1);
  }

  while (*(&v42 + 1));
  v11 = __p;
  if (__p)
  {
LABEL_24:
    operator delete(v11);
  }

  return sub_24BD4106C(v41);
}

void sub_24BD4089C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BD4106C(&a15);
  _Unwind_Resume(a1);
}

void sub_24BD408D0(uint64_t a1, double *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  sub_24BD40ABC(&v30, (a4[1] - *a4) >> 2);
  v9 = *a4;
  if (a4[1] != *a4)
  {
    v10 = 0;
    do
    {
      v11 = *(v9 + 4 * v10);
      v12 = (*(a1 + 8) + 16 * *(a1 + 176));
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v13);
      }

      v15 = 0;
      v28 = *(*(v14 + 40) + 16 * v11);
      do
      {
        *(&v25 + v15) = *(&v28 + v15);
        ++v15;
      }

      while (v15 != 3);
      v16 = *&v25 - *a2;
      v17 = *(&v25 + 1) - a2[1];
      v18 = *&v26 - a2[2];
      v19 = v17 * *(*a3 + 8) + v16 * **a3 + v18 * *(*a3 + 16);
      v20 = v17 * *(*a3 + 32) + v16 * *(*a3 + 24) + v18 * *(*a3 + 40);
      v21 = v17 * *(*a3 + 56) + v16 * *(*a3 + 48) + v18 * *(*a3 + 64);
      *&v28 = v19;
      *(&v28 + 1) = v20;
      v29 = v21;
      sub_24BD40BE4(&v30, &v28);
      ++v10;
      v9 = *a4;
    }

    while (v10 < (a4[1] - *a4) >> 2);
  }

  v22 = v30;
  if (0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3) >= 5)
  {
    sub_24BD40C3C(&v30, &v25);
    v23 = v26;
    *a5 = v25;
    *(a5 + 16) = v23;
    *(a5 + 32) = v27;
    v22 = v30;
    if (!v30)
    {
      return;
    }
  }

  else
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    if (!v22)
    {
      return;
    }
  }

  v31 = v22;
  operator delete(v22);
}

void sub_24BD40A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD40ABC(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BCDD6B8(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BD40B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD40BE4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BD41878(a1, a2);
  }

  else
  {
    for (i = 0; i != 24; i += 8)
    {
      *(v3 + i) = *(a2 + i);
    }

    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void sub_24BD40C3C(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24BD07F90(&v31, -1431655765 * ((a1[1] - *a1) >> 3), 5);
  sub_24BCA1A48(v30, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = a1[1];
  v5 = v4 - *a1;
  if (v4 != *a1)
  {
    v6 = 0;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v8 = v31;
    v9 = v32;
    v10 = v30[0];
    v11 = (*a1 + 16);
    v12 = v31;
    do
    {
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v11 += 3;
      v16 = &v9[8 * v6];
      *v16 = v13 * v13;
      v17 = &v16[v8];
      *v17 = v13 * v14;
      v18 = &v17[v12];
      *v18 = v14 * v14;
      v19 = &v18[v12];
      *v19 = v13;
      v19[v8] = v14;
      *&v10[v6++] = v15;
    }

    while (v7 > v6);
  }

  sub_24BCA1A48(v29, 5uLL);
  v28 = 0;
  *__p = 0u;
  v27 = 0u;
  *v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  sub_24BD07180(&v31, v22);
  sub_24BD0787C(v22, v30, v29);
  v20 = *(v29[0] + 4);
  v21 = *(v29[0] + 1);
  *a2 = *v29[0];
  *(a2 + 16) = v21;
  *(a2 + 32) = v20;
  if (__p[1])
  {
    *&v27 = __p[1];
    operator delete(__p[1]);
  }

  if (v24[1])
  {
    *&v25 = v24[1];
    operator delete(v24[1]);
  }

  if (v22[1])
  {
    *&v23 = v22[1];
    operator delete(v22[1]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }
}

void sub_24BD40DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  v26 = *(v24 - 88);
  if (v26)
  {
    *(v24 - 80) = v26;
    operator delete(v26);
  }

  v27 = *(v24 - 56);
  if (v27)
  {
    *(v24 - 48) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD40E2C(float64x2_t **a1, double *a2, float64x2_t *a3, float64x2_t *a4, double *a5, double *a6)
{
  v11 = a2[3];
  v12 = a2[4];
  v13 = v11 * v11 + 1.0;
  v14 = v11 * v12;
  v15 = v12 * v12 + 1.0;
  v16 = sqrt(v12 * v12 + v11 * v11 + 1.0);
  v17 = 0.0;
  if (v16 <= 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 1.0 / v16;
  }

  v19 = (*a2 + *a2) * v18;
  v20 = a2[1] * v18;
  v21 = v19 * v15 - v20 * v14;
  v22 = v20 * v13 - v19 * v14;
  v23 = v13 * v15 - v14 * v14;
  v24 = ((a2[2] + a2[2]) * v18 * v13 - v20 * v14) / v23;
  v54[0] = v21 / v23;
  v54[1] = v22 / v23;
  v54[2] = v24;
  sub_24BD419FC(__p, 2uLL);
  v52 = 0uLL;
  sub_24BD43128(v54, __p, &v52);
  v25 = v52;
  v26 = -v52.f64[0];
  v27 = -v52.f64[1];
  v52.f64[0] = -v52.f64[0];
  v52.f64[1] = -v52.f64[1];
  v28 = __p[0];
  v29 = *(__p[0] + 1);
  v30 = *(__p[0] + 2);
  v31 = *(__p[0] + 3);
  v32 = (*a1)[1].f64[0];
  v33 = (*a1)[2].f64[1];
  v34 = (*a1)[4].f64[0] * 0.0;
  v35 = *__p[0] * v32 + v29 * v33 + v34;
  v36 = v30 * v32;
  v37 = **a1;
  v38 = *(*a1 + 24);
  v39 = vaddq_f64(vmulq_n_f64(v37, *__p[0]), vmulq_n_f64(v38, v29));
  v40 = vmulq_f64((*a1)[3], 0);
  v41 = vaddq_f64(v39, v40);
  v42 = vaddq_f64(vaddq_f64(vmulq_n_f64(v37, v30), vmulq_n_f64(v38, v31)), v40);
  v43 = v36 + v31 * v33 + v34;
  v44 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v41, v41).f64[1]) + v41.f64[0] * v41.f64[0] + v35 * v35);
  v45 = xmmword_24BFD29A0;
  v46 = xmmword_24BFD29A0;
  if (v44 > 0.0)
  {
    v46 = vdivq_f64(v41, vdupq_lane_s64(*&v44, 0));
    v17 = v35 / v44;
  }

  v47 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v42, v42).f64[1]) + v42.f64[0] * v42.f64[0] + v43 * v43);
  v48 = 0.0;
  if (v47 > 0.0)
  {
    v45 = vdivq_f64(v42, vdupq_lane_s64(*&v47, 0));
    v48 = v43 / v47;
  }

  if (v25.f64[0] >= v25.f64[1])
  {
    v49 = v27;
    v50 = v48;
    v51 = v45;
  }

  else
  {
    v49 = v26;
    v26 = v27;
    v50 = v17;
    v17 = v48;
    v51 = v46;
    v46 = v45;
  }

  *a5 = v49;
  *a6 = v26;
  *a3 = v51;
  a3[1].f64[0] = v50;
  *a4 = v46;
  a4[1].f64[0] = v17;
  __p[1] = v28;
  operator delete(v28);
}

void sub_24BD41050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD4106C(void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_24BCA10D8(a1);
}

void *sub_24BD41118(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void *sub_24BD4116C(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_24BD411F8(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *sub_24BD411F8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_24BCAD8CC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24BD413CC(a1, &v10);
}

void sub_24BD41380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_24BD413CC(void *result, void *a2)
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
        v11 = &v4[-*result] >> 2;
      }

      sub_24BCAD8CC(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_24BD414D4(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_24BCAD8CC(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_24BD415E0(void *result, void *a2)
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
        v11 = &v4[-*result] >> 2;
      }

      sub_24BCAD8CC(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_24BD416E8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_24BCAD8CC(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t *sub_24BD417F4(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      for (i = 0; i != 24; i += 8)
      {
        *(v6 + i) = *(v5 + i);
      }

      v5 += 24;
      v6 += 24;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t sub_24BD41878(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    sub_24BCDD6B8(a1, v6);
  }

  v7 = 0;
  v8 = 24 * v2;
  __p = 0;
  v12 = 24 * v2;
  v14 = 0;
  do
  {
    *(v8 + v7) = *(a2 + v7);
    v7 += 8;
  }

  while (v7 != 24);
  v13 = v8 + 24;
  sub_24BD417F4(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 24) % 0x18uLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BD419AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD419FC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA182C(result, a2);
  }

  return result;
}

void sub_24BD41A58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD41A74(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return sub_24BCCE728(a2);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = sub_24BCCE728(a2) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

__n128 sub_24BD41BA4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F95858;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24BD41BDC(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 < *a3)
  {
    v5 = result;
    v6 = 16 * v3;
    do
    {
      result = sub_24BD3FAC8(*v5, v3++, (**(v5 + 8) + v6));
      v6 += 16;
    }

    while (v4 != v3);
  }

  return result;
}

__n128 sub_24BD41CB8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F958A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double sub_24BD41CF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 < *a3)
  {
    do
    {
      sub_24BD3F304(*(a1 + 8), *(a1 + 16), v3, &v7);
      result = *v7.i64;
      *(**(a1 + 24) + 16 * v3++) = v7;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t sub_24BD41D5C(uint64_t a1, uint64_t a2)
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

void *sub_24BD41DF4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC8F47C(result, a2);
  }

  return result;
}

uint64_t sub_24BD41EB0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BD41F10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD41F2C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC8F47C(result, a2);
  }

  return result;
}

void *sub_24BD41FD0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCA3900(result, a2);
  }

  return result;
}

void sub_24BD42074(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      sub_24BCDD6B8(a1, v9);
    }

    __p = 0;
    v13 = 24 * v6;
    v15 = 0;
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((24 * v6), v11);
    v14 = 24 * v6 + v11;
    sub_24BD417F4(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 24) % 0x18 + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BD42200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_24BD422E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285F958E8;
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

void sub_24BD42344(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v152 = 0uLL;
  v153 = 0.0;
  sub_24BD4308C(v151, 3uLL);
  v150 = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  v149[0] = _Q0;
  v149[1] = _Q0;
  if (a2 < a3)
  {
    v122 = a3;
    do
    {
      v11 = *(*a1[7] + 4 * a2);
      v164 = v163;
      v161 = v160;
      v158 = v157;
      v155 = v154;
      v12 = (*(*a1 + 8) + 16 * *(*a1 + 176));
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v13);
      }

      v15 = 0;
      v16 = *(v14 + 40) + 16 * v11;
      do
      {
        v148[v15] = *(v16 + 4 * v15);
        ++v15;
      }

      while (v15 != 3);
      v145 = 0;
      v146 = 0;
      v147 = 0;
      sub_24BD4061C(*a1, a1[1], v11, 5, &v163, &v145);
      sub_24BCA2A30(&v157, v163, v164, (v164 - v163) >> 2);
      v17 = 0;
      v18 = *a1[2] + 16 * v11;
      do
      {
        *&v130[v17] = *(v18 + 4 * v17);
        ++v17;
      }

      while (v17 != 3);
      v19 = sqrt(COERCE_DOUBLE(*&vmulq_f64(*v130, *v130).f64[1]) + *v130 * *v130 + *&v131 * *&v131);
      v20 = 0.0;
      v21 = xmmword_24BFD29A0;
      if (v19 > 0.0)
      {
        v21 = vdivq_f64(*v130, vdupq_lane_s64(*&v19, 0));
        v20 = *&v131 / v19;
      }

      v152 = v21;
      v153 = v20;
      v22 = (v164 - v163) >> 2;
      if (v22 > 5)
      {
        sub_24BCB8D20(&v160, v22);
        v35 = v163;
        v36 = v163;
        if (v163 != v164)
        {
          do
          {
            v37 = vmulq_f32(*(*a1[2] + 16 * *v36), *(*a1[2] + 16 * v11));
            v37.i32[3] = 0;
            if (vaddv_f32(*&vpaddq_f32(v37, v37)) <= 1.0e-12)
            {
              v38 = &v154;
            }

            else
            {
              v38 = &v160;
            }

            sub_24BCB4670(v38, v36);
            v36 += 4;
          }

          while (v36 != v164);
          v35 = v163;
        }

        v39 = v160;
        v40 = v161;
        v41 = v161 - v160;
        v42 = (v161 - v160) >> 2;
        if (((v36 - v35) >> 2) * 0.8 <= v42)
        {
          v50 = 1;
        }

        else
        {
          v44 = v154;
          v43 = v155;
          if (v154 == v155)
          {
            v123 = 0uLL;
            v49 = v154;
          }

          else
          {
            v123 = 0uLL;
            do
            {
              v45 = *v44;
              v46 = (*(*a1 + 8) + 16 * *(*a1 + 176));
              v48 = *v46;
              v47 = v46[1];
              if (v47)
              {
                atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_24BC9EC78(v47);
              }

              v123 = vaddq_f32(v123, *(*(v48 + 40) + 16 * v45));
              ++v44;
            }

            while (v44 != v43);
            v44 = v154;
            v49 = v155;
          }

          v51 = *a1;
          v52 = (*(*a1 + 8) + 16 * *(*a1 + 176));
          v54 = *v52;
          v53 = v52[1];
          if (v53)
          {
            atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v53);
            v51 = *a1;
          }

          v121 = *(*(v54 + 40) + 16 * v11);
          LODWORD(__p[0]) = v11;
          sub_24BCB9454(v130, (v51 + 104), __p);
          for (i = sub_24BCB947C(v130); ; i = sub_24BCB947C(v130))
          {
            LODWORD(__p[0]) = i;
            if (i == -1)
            {
              v63 = 1;
              goto LABEL_45;
            }

            LODWORD(v143.f64[0]) = 0;
            v57 = *a1;
            v58 = sub_24BC9ECE4(*a1, *(*a1 + 180), i);
            if ((*v58 & v59) == 0)
            {
              v60 = sub_24BCB9024(v57 + 104, __p);
              v61 = sub_24BC9ECE4(v57, *(v57 + 180), *v60);
              if ((*v61 & v62) == 0)
              {
                sub_24BD3FD70(*a1, __p, &v143);
                v56 = *v143.f64;
                if (*v143.f64 > 1.57079633)
                {
                  break;
                }
              }
            }
          }

          v63 = 0;
LABEL_45:
          *&v56 = (v49 - v44);
          v64 = vsubq_f32(vdivq_f32(v123, vdupq_lane_s32(*&v56, 0)), v121);
          v65 = vmulq_f32(v64, v64);
          v65.i32[3] = 0;
          if (*(a1 + 8) <= sqrtf(vaddv_f32(*&vpaddq_f32(v65, v65))))
          {
            v50 = v63;
          }

          else
          {
            v50 = 0;
          }

          v39 = v160;
          v40 = v161;
          v41 = v161 - v160;
          v42 = (v161 - v160) >> 2;
        }

        if (v42 >= 6 && v41 < v164 - v163)
        {
          sub_24BCA2A30(&v163, v39, v40, v42);
        }

        v66 = (*(*a1 + 8) + 16 * *(*a1 + 176));
        v68 = *v66;
        v67 = v66[1];
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v67);
        }

        v69 = 0;
        v70 = *(v68 + 40) + 16 * v11;
        do
        {
          *&v130[v69] = *(v70 + 4 * v69);
          ++v69;
        }

        while (v69 != 3);
        v71 = **(*a1[1] + 24 * v11);
        v72 = (*(*a1 + 8) + 16 * *(*a1 + 176));
        v74 = *v72;
        v73 = v72[1];
        if (v73)
        {
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v73);
        }

        v75 = 0;
        v143 = *(*(v74 + 40) + 16 * v71);
        do
        {
          *&__p[v75] = *(v143.f64 + v75);
          ++v75;
        }

        while (v75 != 3);
        v143 = 0uLL;
        v144 = 0.0;
        memset(v142, 0, 24);
        sub_24BD42F74(v130, __p, v152.f64, v143.f64, v142[0].f64);
        a3 = v122;
        v76 = v151[0];
        *v151[0] = v143;
        *(v76 + 2) = v144;
        *(v76 + 24) = v142[0];
        *(v76 + 5) = *&v142[1].f64[0];
        *(v76 + 3) = v152;
        *(v76 + 8) = v153;
        sub_24BD408D0(*a1, v148, v151, &v163, v149);
        v143 = 0uLL;
        v144 = 0.0;
        memset(v142, 0, 24);
        v140 = 0;
        v141 = 0;
        sub_24BD40E2C(v151, v149, &v143, v142, &v141, &v140);
        v77 = sqrt(v143.f64[1] * v143.f64[1] + v143.f64[0] * v143.f64[0] + v144 * v144);
        v78 = 0.0;
        v79 = 1.0;
        v80 = 1.0;
        v81 = 0.0;
        if (v77 > 0.0)
        {
          v80 = v143.f64[0] / v77;
          v78 = v143.f64[1] / v77;
          v81 = v144 / v77;
        }

        v143.f64[0] = v80;
        v143.f64[1] = v78;
        v144 = v81;
        v82 = (*a1[3] + 24 * a2);
        *v82 = v80;
        v82[1] = v78;
        v82[2] = v81;
        _D4 = v142[1].f64[0];
        __asm { FMLA            D1, D4, V3.D[1] }

        v85 = sqrt(_D1);
        v86 = 0uLL;
        if (v85 > 0.0)
        {
          v86 = vdivq_f64(*(v142 + 8), vdupq_lane_s64(*&v85, 0));
          v79 = v142[0].f64[0] / v85;
        }

        v142[0].f64[0] = v79;
        v142[0].f64[1] = v86.f64[0];
        v87 = *a1[4] + 24 * a2;
        *v87 = v79;
        *(v87 + 8) = v86;
        v88 = v140;
        *(*a1[5] + 8 * a2) = v141;
        *(*a1[6] + 8 * a2) = v88;
        if (*(*a1 + 160) - *(*a1 + 152) <= 0x4000uLL)
        {
          v89 = 1;
        }

        else
        {
          v89 = v50;
        }

        if ((v89 & 1) == 0)
        {
          v137 = 0;
          v138 = 0;
          v139 = 0;
          v90 = v157;
          if (v158 == v157)
          {
            LODWORD(v95) = 0;
          }

          else
          {
            v91 = 0;
            v92 = 0;
            do
            {
              __asm { FMOV            V1.4S, #6.0 }

              v94 = vdivq_f32(vmulq_n_f32(*(*a1[2] + 16 * v90[v92]), 6.0 - *(v145 + v92)), _Q1);
              *v130 = v94;
              if (v91 >= v139)
              {
                v91 = sub_24BCB5984(&v137, v130);
              }

              else
              {
                *v91++ = v94;
              }

              v138 = v91;
              ++v92;
              v90 = v157;
            }

            while (v92 < (v158 - v157) >> 2);
            v95 = (v91 - v137) >> 4;
          }

          v136 = 0;
          *v134 = 0u;
          v135 = 0u;
          *v132 = 0u;
          v133 = 0u;
          *v130 = 0u;
          v131 = 0u;
          sub_24BD07E00(__p, v95, 3);
          v96 = v137;
          if (v138 != v137)
          {
            v97 = 0;
            v98 = (v138 - v137) >> 4;
            v99 = __p[1];
            if (v98 <= 1)
            {
              v98 = 1;
            }

            v100 = 4 * LODWORD(__p[0]);
            do
            {
              v101 = 0;
              v102 = &v99[4 * v97];
              do
              {
                *v102 = *&v96[v101];
                v101 += 4;
                v102 += v100;
              }

              while (v101 != 12);
              ++v97;
              v96 += 16;
            }

            while (v97 != v98);
          }

          sub_24BD06F94(__p, v130);
          v103 = v134[1];
          v104.i32[0] = *(v134[1] + 2);
          v104.i32[1] = *(v134[1] + 5);
          v104.i32[2] = *(v134[1] + 8);
          v105 = *(*a1[2] + 16 * v11);
          v106 = vmulq_f32(v104, v105);
          v106.i32[3] = 0;
          v107 = vsubq_f32(v104, vmulq_n_f32(v105, vaddv_f32(*&vpaddq_f32(v106, v106))));
          v108 = vmulq_f32(v107, v107);
          v108.i32[3] = 0;
          v109 = vpaddq_f32(v108, v108);
          v110 = vpaddq_f32(v109, v109);
          if (v110.f32[0] <= 0.0)
          {
            v111 = xmmword_24BFBD1C0;
          }

          else
          {
            v111 = vdivq_f32(v107, vsqrtq_f32(v110));
          }

          v112 = 0;
          v127 = v111;
          v126 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v105, vextq_s8(v105, v105, 0xCuLL)), v105), vuzp2q_s32(vextq_s8(v111, v111, 4uLL), v111)), vzip2q_s32(vzip1q_s32(v111, vextq_s8(v111, v111, 0xCuLL)), v111), vuzp2q_s32(vextq_s8(v105, v105, 4uLL), v105));
          do
          {
            *(&v124 + v112) = v126.f32[v112];
            ++v112;
          }

          while (v112 != 3);
          v113 = 0;
          v114 = *a1[3] + 24 * a2;
          *v114 = v124;
          *(v114 + 16) = v125;
          do
          {
            *(&v124 + v113) = *&v127.i32[v113];
            ++v113;
          }

          while (v113 != 3);
          v115 = *a1[4] + 24 * a2;
          *v115 = v124;
          *(v115 + 16) = v125;
          if (__p[1])
          {
            v129 = __p[1];
            operator delete(__p[1]);
            v103 = v134[1];
          }

          if (v103)
          {
            *&v135 = v103;
            operator delete(v103);
          }

          if (v132[1])
          {
            *&v133 = v132[1];
            operator delete(v132[1]);
          }

          if (v130[1])
          {
            *&v131 = v130[1];
            operator delete(v130[1]);
          }

          if (v137)
          {
            v138 = v137;
            operator delete(v137);
          }

          v116 = a1[5];
          v117 = *a1[6];
          v118 = *(v117 + 8 * a2);
          v119 = *v116;
          v120 = *(*v116 + 8 * a2);
          if (fabs(v118) > fabs(v120))
          {
            *(v119 + 8 * a2) = v118;
            *(v117 + 8 * a2) = v120;
            v120 = *(v119 + 8 * a2);
          }

          *(v119 + 8 * a2) = v120 * ((((v158 - v157) >> 2) - ((v161 - v160) >> 2)) * 200.0 / ((v158 - v157) >> 2));
        }
      }

      else
      {
        v23 = **(*a1[1] + 24 * v11);
        v24 = (*(*a1 + 8) + 16 * *(*a1 + 176));
        v26 = *v24;
        v25 = v24[1];
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v25);
        }

        v27 = 0;
        *__p = *(*(v26 + 40) + 16 * v23);
        do
        {
          *&v130[v27] = *(__p + v27);
          ++v27;
        }

        while (v27 != 3);
        v28 = (*(*a1 + 8) + 16 * *(*a1 + 176));
        v30 = *v28;
        v29 = v28[1];
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v29);
        }

        v31 = 0;
        v32 = *(v30 + 40) + 16 * v11;
        do
        {
          *&__p[v31] = *(v32 + 4 * v31);
          ++v31;
        }

        while (v31 != 3);
        v143 = 0uLL;
        v144 = 0.0;
        memset(v142, 0, 24);
        sub_24BD42F74(__p, v130, v152.f64, v143.f64, v142[0].f64);
        v33 = (*a1[3] + 24 * a2);
        *v33 = v143;
        v33[1].f64[0] = v144;
        v34 = (*a1[4] + 24 * a2);
        *v34 = v142[0];
        v34[1].f64[0] = v142[1].f64[0];
        *(*a1[5] + 8 * a2) = 0x3FF0000000000000;
        *(*a1[6] + 8 * a2) = 0x3FF0000000000000;
      }

      if (v145)
      {
        v146 = v145;
        operator delete(v145);
      }

      ++a2;
    }

    while (a2 != a3);
  }

  if (v151[0])
  {
    v151[1] = v151[0];
    operator delete(v151[0]);
  }

  if (v154)
  {
    v155 = v154;
    operator delete(v154);
  }

  if (v157)
  {
    v158 = v157;
    operator delete(v157);
  }

  if (v160)
  {
    v161 = v160;
    operator delete(v160);
  }

  if (v163)
  {
    v164 = v163;
    operator delete(v163);
  }
}

void sub_24BD42E9C(_Unwind_Exception *a1)
{
  v3 = *(v1 - 216);
  if (v3)
  {
    *(v1 - 208) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 192);
  if (v4)
  {
    *(v1 - 184) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 168);
  if (v5)
  {
    *(v1 - 160) = v5;
    operator delete(v5);
  }

  v6 = *(v1 - 144);
  if (v6)
  {
    *(v1 - 136) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

double *sub_24BD42F74(double *result, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = *a2 - *result;
  v8 = v5 - v6;
  v9 = a2[2];
  v10 = result[2];
  v11 = v9 - v10;
  if (sqrt(v8 * v8 + v7 * v7 + v11 * v11) <= 2.22044605e-16)
  {
    return sub_24BE03674(a3, a4, a5);
  }

  v12 = a3[1];
  v13 = v8 * v12 + v7 * *a3;
  v14 = a3[2];
  v15 = v13 + v11 * v14;
  v16 = v9 - v14 * v15;
  v17 = *a2 - *a3 * v15 - *result;
  v18 = v5 - v12 * v15 - v6;
  v19 = v16 - v10;
  v20 = sqrt(v18 * v18 + v17 * v17 + v19 * v19);
  v21 = 0.0;
  v22 = 1.0;
  v23 = 1.0;
  v24 = 0.0;
  v25 = 0.0;
  if (v20 > 0.0)
  {
    v23 = v17 / v20;
    v24 = v18 / v20;
    v25 = v19 / v20;
  }

  *a4 = v23;
  a4[1] = v24;
  a4[2] = v25;
  v27 = a3[1];
  v26 = a3[2];
  v28 = v27 * v25 - v26 * v24;
  v29 = v26 * v23 - *a3 * v25;
  v30 = *a3 * v24 - v27 * v23;
  v31 = sqrt(v29 * v29 + v28 * v28 + v30 * v30);
  v32 = 0.0;
  if (v31 > 0.0)
  {
    v22 = v28 / v31;
    v21 = v29 / v31;
    v32 = v30 / v31;
  }

  *a5 = v22;
  a5[1] = v21;
  a5[2] = v32;
  return result;
}

void *sub_24BD4308C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCDD9BC(result, a2);
  }

  return result;
}

void sub_24BD4310C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD43128(double *a1, double **a2, float64x2_t *a3)
{
  sub_24BD43240(a2, 2uLL);
  v6 = a1[1];
  if (v6 == 0.0)
  {
    v7 = *a2;
    *v7 = 1.0;
    v7[1] = 0.0;
    v7[2] = 0.0;
    v7[3] = 1.0;
    a3->f64[0] = *a1;
    a3->f64[1] = a1[2];
  }

  else
  {
    v8 = *a1;
    v9 = a1[2];
    v10 = sqrt((*a1 - v9) * (*a1 - v9) + v6 * v6 * 4.0);
    v11 = *a1 + v9;
    v12.f64[0] = v11 + v10;
    v12.f64[1] = v11 - v10;
    __asm { FMOV            V3.2D, #0.5 }

    *a3 = vmulq_f64(v12, _Q3);
    v18 = v9 - v8;
    v19 = v6 + v6;
    v20 = (v18 + v10) / v19;
    v21 = *a2;
    v22 = (v18 - v10) / v19;
    v23 = 1.0;
    v24 = sqrt(v20 * v20 + 1.0);
    v25 = 0.0;
    v26 = 1.0;
    v27 = 0.0;
    if (v24 > 0.0)
    {
      v26 = 1.0 / v24;
      v27 = v20 / v24;
    }

    *v21 = v26;
    v21[1] = v27;
    v28 = sqrt(v22 * v22 + 1.0);
    if (v28 > 0.0)
    {
      v23 = 1.0 / v28;
      v25 = v22 / v28;
    }

    v21[2] = v23;
    v21[3] = v25;
  }

  return 1;
}

void sub_24BD43240(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_24BD44A88(a1, a2 - v2);
  }
}

uint64_t sub_24BD43270(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 == v5)
  {
    return 0;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3);
  if (v7 < *a2 || v7 != (v4[1] - *v4) >> 2)
  {
    return 0;
  }

  v61 = v7;
  v62 = v7;
  sub_24BC95764(v60, (v7 * v7));
  v11 = v62;
  if (v62 >= 1)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v60[0];
    do
    {
      v15 = v13[3 * v12];
      v16 = v11;
      v17 = v14;
      do
      {
        v18 = *v15++;
        *v17 = v18;
        v17 += v11;
        --v16;
      }

      while (v16);
      ++v12;
      ++v14;
    }

    while (v12 != v11);
  }

  sub_24BC95764(v59, v11);
  sub_24BC95764(v58, v62);
  v57 = 1;
  sub_24BC95764(v56, v62);
  v55 = v62;
  sub_24BC95764(v54, (v55 * v55));
  v53 = 4 * v62;
  sub_24BC95764(v52, 4 * v62);
  v51 = 0;
  v50 = 78;
  v49 = 86;
  sgeev_NEWLAPACK();
  v19 = 1;
  __p = 0;
  v47 = 0;
  v48 = 0;
  if (v62)
  {
    v20 = 0;
    for (i = 0; i < v62; ++i)
    {
      v22 = i + (*(v59[0] + i) << 32);
      if (v20 >= v48)
      {
        v23 = (v20 - __p) >> 3;
        if ((v23 + 1) >> 61)
        {
          sub_24BC8E01C();
        }

        v24 = (v48 - __p) >> 2;
        if (v24 <= v23 + 1)
        {
          v24 = v23 + 1;
        }

        if (v48 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          sub_24BC91F60(&__p, v25);
        }

        v26 = (8 * v23);
        *v26 = v22;
        v20 = (8 * v23 + 8);
        v27 = v26 - (v47 - __p);
        memcpy(v27, __p, v47 - __p);
        v28 = __p;
        __p = v27;
        v47 = v20;
        v48 = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v20 = v22;
        v20 += 2;
      }

      v47 = v20;
    }

    v29 = __p;
  }

  else
  {
    v20 = 0;
    v29 = 0;
  }

  v31 = 126 - 2 * __clz((v20 - v29) >> 3);
  if (v20 == v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  sub_24BD437CC(v29, v20, v32, 1);
  sub_24BC8CAB0(a4, *a2);
  v33 = *a2;
  if (v33)
  {
    v34 = __p;
    v35 = v59[0];
    v36 = *a2;
    v37 = *a4;
    do
    {
      v38 = *v34;
      v34 += 2;
      *v37++ = v35[v38];
      --v36;
    }

    while (v36);
  }

  else
  {
    v33 = 0;
  }

  sub_24BD43724(a3, v33);
  if (*a2)
  {
    v39 = 0;
    v40 = v62;
    do
    {
      v41 = *(__p + 2 * v39);
      sub_24BC8CAB0((*a3 + 24 * v39), v40);
      v40 = v62;
      if (v62)
      {
        v42 = v62 * v41;
        v43 = v54[0];
        v44 = *(*a3 + 24 * v39);
        v45 = v62;
        do
        {
          *v44++ = v43[v42++];
          --v45;
        }

        while (v45);
      }

      ++v39;
    }

    while (v39 < *a2);
  }

  if (__p)
  {
    v47 = __p;
    operator delete(__p);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }

  if (v56[0])
  {
    v56[1] = v56[0];
    operator delete(v56[0]);
  }

  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }

  if (v59[0])
  {
    v59[1] = v59[0];
    operator delete(v59[0]);
  }

  if (v60[0])
  {
    v60[1] = v60[0];
    operator delete(v60[0]);
  }

  return v19;
}

void sub_24BD4366C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a28)
  {
    operator delete(a28);
  }

  v31 = *(v29 - 168);
  if (v31)
  {
    *(v29 - 160) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 144);
  if (v32)
  {
    *(v29 - 136) = v32;
    operator delete(v32);
  }

  v33 = *(v29 - 120);
  if (v33)
  {
    *(v29 - 112) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD43724(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_24BD4491C(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

float *sub_24BD437CC(float *result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v83 = *(a2 - 1);
        v84 = v8[1];
        if (v83 > v84)
        {
          v85 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v85;
          v8[1] = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v90 = v8 + 3;
      v91 = v8[3];
      v92 = v8 + 1;
      v93 = v8[1];
      v94 = v8[5];
      if (v91 <= v93)
      {
        if (v94 > v91)
        {
          v141 = *(v8 + 2);
          v142 = *(v8 + 4);
          *(v8 + 2) = v142;
          *(v8 + 4) = v141;
          v8[3] = v94;
          v8[5] = v91;
          if (v94 > v93)
          {
            v143 = *v8;
            *v8 = v142;
            *(v8 + 2) = v143;
            goto LABEL_188;
          }

LABEL_189:
          v94 = v91;
        }
      }

      else
      {
        v95 = *v8;
        if (v94 > v91)
        {
          *v8 = v8[4];
          *(v8 + 4) = v95;
          goto LABEL_187;
        }

        *v8 = v8[2];
        *(v8 + 2) = v95;
        v8[1] = v91;
        v8[3] = v93;
        if (v94 > v93)
        {
          v8[2] = v8[4];
          *(v8 + 4) = v95;
          v92 = v8 + 3;
LABEL_187:
          v90 = v8 + 5;
          v91 = v93;
LABEL_188:
          *v92 = v94;
          *v90 = v93;
          goto LABEL_189;
        }
      }

      v152 = *(a2 - 1);
      if (v152 <= v94)
      {
        return result;
      }

      v153 = *(v8 + 4);
      v8[4] = *(a2 - 2);
      *(a2 - 2) = v153;
      v8[5] = v152;
      *(a2 - 1) = v94;
      v138 = v8[5];
      v154 = v8[3];
      if (v138 <= v154)
      {
        return result;
      }

      v155 = *(v8 + 2);
      v156 = *(v8 + 4);
      *(v8 + 2) = v156;
      *(v8 + 4) = v155;
      v8[3] = v138;
      v8[5] = v154;
      v139 = v8[1];
      if (v138 <= v139)
      {
        return result;
      }

      v157 = *v8;
      *v8 = v156;
      *(v8 + 2) = v157;
LABEL_194:
      v8[1] = v138;
      v8[3] = v139;
      return result;
    }

    if (v9 == 5)
    {

      return sub_24BD44388(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v96 = v8 + 2;
      v98 = v8 == a2 || v96 == a2;
      if (a4)
      {
        if (!v98)
        {
          v99 = 0;
          v100 = v8;
          do
          {
            v101 = v100[3];
            v102 = v100[1];
            v100 = v96;
            if (v101 > v102)
            {
              v103 = *v96;
              v104 = v99;
              while (1)
              {
                v105 = (v8 + v104);
                v105[2] = *(v8 + v104);
                v105[3] = *(v8 + v104 + 4);
                if (!v104)
                {
                  break;
                }

                v104 -= 8;
                if (v101 <= *(v105 - 1))
                {
                  v106 = v8 + v104 + 8;
                  goto LABEL_131;
                }
              }

              v106 = v8;
LABEL_131:
              *v106 = v103;
              *(v106 + 4) = v101;
            }

            v96 = v100 + 2;
            v99 += 8;
          }

          while (v100 + 2 != a2);
        }
      }

      else if (!v98)
      {
        v144 = v8 + 3;
        do
        {
          v145 = v7[3];
          v146 = v7[1];
          v7 = v96;
          if (v145 > v146)
          {
            v147 = *v96;
            v148 = v144;
            do
            {
              v149 = v148;
              *(v148 - 1) = *(v148 - 3);
              v150 = *(v148 - 2);
              v148 -= 2;
              *v149 = v150;
            }

            while (v145 > *(v149 - 4));
            *(v148 - 1) = v147;
            *v148 = v145;
          }

          v96 = v7 + 2;
          v144 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v107 = (v9 - 2) >> 1;
      v108 = v107;
      do
      {
        v109 = v108;
        if (v107 >= v108)
        {
          v110 = (2 * v108) | 1;
          v111 = &v8[2 * v110];
          if (2 * v109 + 2 < v9 && v111[1] > v111[3])
          {
            v111 += 2;
            v110 = 2 * v109 + 2;
          }

          v112 = &v8[2 * v109];
          v113 = v111[1];
          v114 = v112[1];
          if (v113 <= v114)
          {
            v115 = *v112;
            do
            {
              v116 = v112;
              v112 = v111;
              *v116 = *v111;
              v116[1] = v113;
              if (v107 < v110)
              {
                break;
              }

              v117 = 2 * v110;
              v110 = (2 * v110) | 1;
              v111 = &v8[2 * v110];
              v118 = v117 + 2;
              if (v118 < v9 && v111[1] > v111[3])
              {
                v111 += 2;
                v110 = v118;
              }

              v113 = v111[1];
            }

            while (v113 <= v114);
            *v112 = v115;
            v112[1] = v114;
          }
        }

        v108 = v109 - 1;
      }

      while (v109);
      while (2)
      {
        v119 = 0;
        v120 = *v8;
        v121 = v8[1];
        v122 = v8;
        do
        {
          v123 = &v122[2 * v119];
          v124 = v123 + 2;
          v125 = (2 * v119) | 1;
          v119 = 2 * v119 + 2;
          if (v119 >= v9)
          {
            v119 = v125;
          }

          else
          {
            v126 = v123[3];
            v127 = v123[5];
            v128 = v123 + 4;
            if (v126 <= v127)
            {
              v119 = v125;
            }

            else
            {
              v124 = v128;
            }
          }

          *v122 = *v124;
          v122[1] = v124[1];
          v122 = v124;
        }

        while (v119 <= ((v9 - 2) >> 1));
        if (v124 != a2 - 2)
        {
          *v124 = *(a2 - 2);
          v124[1] = *(a2 - 1);
          *(a2 - 2) = v120;
          *(a2 - 1) = v121;
          v129 = (v124 - v8 + 8) >> 3;
          v130 = v129 < 2;
          v131 = v129 - 2;
          if (!v130)
          {
            v132 = v131 >> 1;
            v133 = &v8[2 * v132];
            v134 = v133[1];
            v121 = v124[1];
            if (v134 > v121)
            {
              v135 = *v124;
              do
              {
                v136 = v124;
                v124 = v133;
                *v136 = *v133;
                v136[1] = v134;
                if (!v132)
                {
                  break;
                }

                v132 = (v132 - 1) >> 1;
                v133 = &v8[2 * v132];
                v134 = v133[1];
              }

              while (v134 > v121);
              *v124 = v135;
LABEL_164:
              v124[1] = v121;
            }
          }

          a2 -= 2;
          v130 = v9-- <= 2;
          if (v130)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v124 = v120;
      goto LABEL_164;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = v10[1];
      v13 = v8[1];
      if (v12 <= v13)
      {
        if (v11 > v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v18;
          v10[1] = v11;
          *(a2 - 1) = v12;
          v19 = v10[1];
          v20 = v8[1];
          if (v19 > v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[1] = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 > v12)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v14;
          v8[1] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[1] = v12;
        v10[1] = v13;
        v26 = *(a2 - 1);
        if (v26 > v13)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v14;
          v10[1] = v26;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v27 = v10 - 2;
      v28 = *(v10 - 1);
      v29 = v8[3];
      v30 = *(a2 - 3);
      if (v28 <= v29)
      {
        if (v30 > v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v10 - 1) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 1);
          v34 = v8[3];
          if (v33 > v34)
          {
            v35 = *(v8 + 2);
            v8[2] = *v27;
            *v27 = v35;
            v8[3] = v33;
            *(v10 - 1) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 2);
        if (v30 > v28)
        {
          v8[2] = *(a2 - 4);
          *(a2 - 4) = v31;
          v8[3] = v30;
          goto LABEL_39;
        }

        v8[2] = *v27;
        *v27 = v31;
        v8[3] = v28;
        *(v10 - 1) = v29;
        v37 = *(a2 - 3);
        if (v37 > v29)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v31;
          *(v10 - 1) = v37;
LABEL_39:
          *(a2 - 3) = v29;
        }
      }

      v38 = v10 + 2;
      v39 = v10[3];
      v40 = v8[5];
      v41 = *(a2 - 5);
      if (v39 <= v40)
      {
        if (v41 > v39)
        {
          v43 = *v38;
          *v38 = *(a2 - 6);
          *(a2 - 6) = v43;
          v10[3] = v41;
          *(a2 - 5) = v39;
          v44 = v10[3];
          v45 = v8[5];
          if (v44 > v45)
          {
            v46 = *(v8 + 4);
            v8[4] = *v38;
            *v38 = v46;
            v8[5] = v44;
            v10[3] = v45;
          }
        }
      }

      else
      {
        v42 = *(v8 + 4);
        if (v41 > v39)
        {
          v8[4] = *(a2 - 6);
          *(a2 - 6) = v42;
          v8[5] = v41;
          goto LABEL_48;
        }

        v8[4] = *v38;
        *v38 = v42;
        v8[5] = v39;
        v10[3] = v40;
        v47 = *(a2 - 5);
        if (v47 > v40)
        {
          *v38 = *(a2 - 6);
          *(a2 - 6) = v42;
          v10[3] = v47;
LABEL_48:
          *(a2 - 5) = v40;
        }
      }

      v48 = v10[1];
      v49 = *(v10 - 1);
      v50 = v10[3];
      if (v48 <= v49)
      {
        v51 = *v10;
        if (v50 <= v48)
        {
LABEL_55:
          v49 = v48;
        }

        else
        {
          v52 = *v38;
          *v10 = *v38;
          *v38 = v51;
          v10[1] = v50;
          v10[3] = v48;
          if (v50 <= v49)
          {
            v49 = v50;
            v51 = v52;
          }

          else
          {
            v51 = *v27;
            *v27 = v52;
            *v10 = v51;
            *(v10 - 1) = v50;
            v10[1] = v49;
          }
        }
      }

      else
      {
        v51 = *v27;
        if (v50 > v48)
        {
          *v27 = *v38;
          *v38 = v51;
          *(v10 - 1) = v50;
          v10[3] = v49;
          v51 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v51;
        *(v10 - 1) = v48;
        v10[1] = v49;
        if (v50 > v49)
        {
          v71 = *v38;
          *v10 = *v38;
          *v38 = v51;
          v10[1] = v50;
          v10[3] = v49;
          v49 = v50;
          v51 = v71;
        }
      }

      v53 = *v8;
      *v8 = v51;
      *v10 = v53;
      v54 = *(v8 + 1);
      v8[1] = v49;
      *(v10 + 1) = v54;
      goto LABEL_57;
    }

    v15 = v8[1];
    v16 = v10[1];
    if (v15 <= v16)
    {
      if (v11 > v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 2);
        *(a2 - 2) = v22;
        v8[1] = v11;
        *(a2 - 1) = v15;
        v23 = v8[1];
        v24 = v10[1];
        if (v23 > v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[1] = v23;
          v8[1] = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 > v15)
    {
      *v10 = *(a2 - 2);
      *(a2 - 2) = v17;
      v10[1] = v11;
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[1] = v15;
    v8[1] = v16;
    v36 = *(a2 - 1);
    if (v36 > v16)
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v17;
      v8[1] = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v55 = *v8;
      v56 = v8[1];
LABEL_60:
      v57 = 0;
      do
      {
        v58 = v8[v57 + 3];
        v57 += 2;
      }

      while (v58 > v56);
      v59 = &v8[v57];
      v60 = a2;
      if (v57 == 2)
      {
        v63 = a2;
        while (v59 < v63)
        {
          v61 = v63 - 2;
          v64 = *(v63 - 1);
          v63 -= 2;
          if (v64 > v56)
          {
            goto LABEL_70;
          }
        }

        v61 = v63;
      }

      else
      {
        do
        {
          v61 = v60 - 2;
          v62 = *(v60 - 1);
          v60 -= 2;
        }

        while (v62 <= v56);
      }

LABEL_70:
      v8 = v59;
      if (v59 < v61)
      {
        v65 = v61;
        do
        {
          v66 = *v8;
          *v8 = *v65;
          *v65 = v66;
          v67 = *(v8 + 1);
          v8[1] = v65[1];
          *(v65 + 1) = v67;
          do
          {
            v68 = v8[3];
            v8 += 2;
          }

          while (v68 > v56);
          do
          {
            v69 = *(v65 - 1);
            v65 -= 2;
          }

          while (v69 <= v56);
        }

        while (v8 < v65);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 2) = v55;
      *(v8 - 1) = v56;
      if (v59 < v61)
      {
        goto LABEL_81;
      }

      v70 = sub_24BD44564(v7, v8 - 2);
      result = sub_24BD44564(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v70)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v70)
      {
LABEL_81:
        result = sub_24BD437CC(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v56 = v8[1];
      v55 = *v8;
      if (*(v8 - 1) > v56)
      {
        goto LABEL_60;
      }

      if (v56 <= *(a2 - 1))
      {
        v74 = v8 + 2;
        do
        {
          v8 = v74;
          if (v74 >= a2)
          {
            break;
          }

          v75 = v74[1];
          v74 += 2;
        }

        while (v56 <= v75);
      }

      else
      {
        v72 = v8;
        do
        {
          v8 = v72 + 2;
          v73 = v72[3];
          v72 += 2;
        }

        while (v56 <= v73);
      }

      v76 = a2;
      if (v8 < a2)
      {
        v77 = a2;
        do
        {
          v76 = v77 - 2;
          v78 = *(v77 - 1);
          v77 -= 2;
        }

        while (v56 > v78);
      }

      while (v8 < v76)
      {
        v79 = *v8;
        *v8 = *v76;
        *v76 = v79;
        v80 = *(v8 + 1);
        v8[1] = v76[1];
        *(v76 + 1) = v80;
        do
        {
          v81 = v8[3];
          v8 += 2;
        }

        while (v56 <= v81);
        do
        {
          v82 = *(v76 - 1);
          v76 -= 2;
        }

        while (v56 > v82);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v55;
      *(v8 - 1) = v56;
    }
  }

  v86 = v8[3];
  v87 = v8[1];
  v88 = *(a2 - 1);
  if (v86 <= v87)
  {
    if (v88 <= v86)
    {
      return result;
    }

    v137 = *(v8 + 2);
    v8[2] = *(a2 - 2);
    *(a2 - 2) = v137;
    v8[3] = v88;
    *(a2 - 1) = v86;
    v138 = v8[3];
    v139 = v8[1];
    if (v138 <= v139)
    {
      return result;
    }

    v140 = *v8;
    *v8 = v8[2];
    v8[2] = v140;
    goto LABEL_194;
  }

  v89 = *v8;
  if (v88 <= v86)
  {
    *v8 = v8[2];
    v8[2] = v89;
    v8[1] = v86;
    v8[3] = v87;
    v151 = *(a2 - 1);
    if (v151 <= v87)
    {
      return result;
    }

    v8[2] = *(a2 - 2);
    *(a2 - 2) = v89;
    v8[3] = v151;
  }

  else
  {
    *v8 = *(a2 - 2);
    *(a2 - 2) = v89;
    v8[1] = v88;
  }

  *(a2 - 1) = v87;
  return result;
}

float *sub_24BD44388(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 <= v6)
  {
    if (v7 <= v5)
    {
      v5 = a3[1];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v7;
      a3[1] = v5;
      v10 = a2[1];
      v11 = result[1];
      if (v10 > v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v5 = a3[1];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v5)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
LABEL_9:
      a3[1] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = v5;
    a2[1] = v6;
    v5 = a3[1];
    if (v5 > v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 > v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v5;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 > v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 > v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 > v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 > v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 > v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 > v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL sub_24BD44564(float *a1, float *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[3];
      v7 = a1[1];
      v8 = *(a2 - 1);
      if (v6 > v7)
      {
        v9 = *a1;
        if (v8 <= v6)
        {
          *a1 = a1[2];
          a1[2] = v9;
          a1[1] = v6;
          a1[3] = v7;
          v32 = *(a2 - 1);
          if (v32 <= v7)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[3] = v32;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[1] = v8;
        }

        *(a2 - 1) = v7;
        return 1;
      }

      if (v8 <= v6)
      {
        return 1;
      }

      v22 = *(a1 + 2);
      a1[2] = *(a2 - 2);
      *(a2 - 2) = v22;
      a1[3] = v8;
      *(a2 - 1) = v6;
      v23 = a1[3];
      v24 = a1[1];
      if (v23 <= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = a1[2];
      *(a1 + 2) = v25;
LABEL_54:
      a1[1] = v23;
      a1[3] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_24BD44388(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1 + 3;
    v17 = a1[3];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1[5];
    if (v17 <= v19)
    {
      if (v20 <= v17)
      {
        goto LABEL_50;
      }

      v29 = *(a1 + 2);
      v30 = *(a1 + 4);
      *(a1 + 2) = v30;
      *(a1 + 4) = v29;
      a1[3] = v20;
      a1[5] = v17;
      if (v20 <= v19)
      {
        goto LABEL_49;
      }

      v31 = *a1;
      *a1 = v30;
      a1[2] = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 <= v17)
      {
        *a1 = a1[2];
        a1[2] = v21;
        a1[1] = v17;
        a1[3] = v19;
        if (v20 <= v19)
        {
          goto LABEL_50;
        }

        a1[2] = a1[4];
        a1[4] = v21;
        v18 = a1 + 3;
      }

      else
      {
        *a1 = a1[4];
        a1[4] = v21;
      }

      v16 = a1 + 5;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_49:
    v20 = v17;
LABEL_50:
    v42 = *(a2 - 1);
    if (v42 <= v20)
    {
      return 1;
    }

    v43 = *(a1 + 4);
    a1[4] = *(a2 - 2);
    *(a2 - 2) = v43;
    a1[5] = v42;
    *(a2 - 1) = v20;
    v23 = a1[5];
    v44 = a1[3];
    if (v23 <= v44)
    {
      return 1;
    }

    v45 = *(a1 + 2);
    v46 = *(a1 + 4);
    *(a1 + 2) = v46;
    *(a1 + 4) = v45;
    a1[3] = v23;
    a1[5] = v44;
    v24 = a1[1];
    if (v23 <= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    a1[2] = v47;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 > v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[3];
  v11 = a1 + 1;
  v12 = a1[1];
  v13 = a1 + 5;
  v14 = a1[5];
  if (v10 > v12)
  {
    v15 = *a1;
    if (v14 <= v10)
    {
      *a1 = a1[2];
      a1[2] = v15;
      a1[1] = v10;
      a1[3] = v12;
      if (v14 <= v12)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v15;
      v11 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v15;
    }

    goto LABEL_33;
  }

  if (v14 > v10)
  {
    v26 = *(a1 + 2);
    v27 = *(a1 + 4);
    *(a1 + 2) = v27;
    *(a1 + 4) = v26;
    a1[3] = v14;
    a1[5] = v10;
    if (v14 > v12)
    {
      v28 = *a1;
      *a1 = v27;
      a1[2] = v28;
      v13 = a1 + 3;
LABEL_33:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_34:
  v33 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 4;
  while (1)
  {
    v37 = v33[1];
    if (v37 > v36[1])
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = (a1 + v39);
        v40[6] = *(a1 + v39 + 16);
        v40[7] = *(a1 + v39 + 20);
        if (v39 == -16)
        {
          break;
        }

        v39 -= 8;
        if (v37 <= v40[3])
        {
          v41 = a1 + v39 + 24;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 4) = v37;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 8;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

void sub_24BD4491C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_24BCA394C(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_24BC91E14(v18);
  }
}

void sub_24BD44A88(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_24BC8E01C();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      sub_24BCA1868(a1, v10);
    }

    __p = 0;
    v12 = 16 * v8;
    v14 = 0;
    bzero((16 * v8), 16 * a2);
    v13 = 16 * v8 + 16 * a2;
    sub_24BD44BD0(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24BD44B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD44BD0(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

BOOL sub_24BD44C4C(uint64_t a1, unsigned int **a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v40 = 0uLL;
    v41 = 0;
    v5 = (v3 - v2) >> 2;
    v6 = v2;
    do
    {
      v30[0].i32[0] = *(sub_24BCB9024(a1 + 104, v6) + 8);
      sub_24BD4595C(&v35, a1, v6, v30);
      v7 = *(&v40 + 1);
      if (*(&v40 + 1) >= v41)
      {
        v8 = sub_24BD459B0(&v40, &v35);
      }

      else
      {
        **(&v40 + 1) = v35;
        *(v7 + 16) = v36;
        *(v7 + 32) = v37;
        *(v7 + 40) = v38;
        v8 = v7 + 48;
      }

      *(&v40 + 1) = v8;
      sub_24BD45C3C(v40, v8, v27, 0xAAAAAAAAAAAAAAABLL * ((v8 - v40) >> 4));
      ++v6;
    }

    while (v6 != v3);
    if (v5 < 3)
    {
LABEL_25:
      v10 = v40;
    }

    else
    {
      while (1)
      {
        v9 = *(&v40 + 1);
        v10 = v40;
        if (v40 == *(&v40 + 1))
        {
          break;
        }

        v35.i64[0] = 0;
        v35.i64[1] = -1;
        LODWORD(v37) = 0;
        v36 = 0uLL;
        v35 = *v40;
        v36 = *(v40 + 16);
        v11 = *(v40 + 32);
        v12 = *(v40 + 36);
        v37 = __PAIR64__(v12, v11);
        v13 = *(v40 + 40);
        v38 = v13;
        if ((*(&v40 + 1) - v40) >= 49)
        {
          v14 = *v40;
          v15 = *(v40 + 8);
          v16 = *(v40 + 12);
          v26 = *(v40 + 16);
          v17 = sub_24BD45E08(v40, v30, 0xAAAAAAAAAAAAAAABLL * ((*(&v40 + 1) - v40) >> 4));
          if (v9 - 48 == v17)
          {
            *v17 = v14;
            *(v17 + 8) = v15;
            *(v17 + 12) = v16;
            *(v17 + 16) = v26;
            *(v17 + 32) = v11;
            *(v17 + 36) = v12;
            *(v17 + 40) = v13;
          }

          else
          {
            *v17 = *(v9 - 48);
            *(v17 + 8) = *(v9 - 40);
            *(v17 + 12) = *(v9 - 36);
            *(v17 + 16) = *(v9 - 32);
            *(v17 + 32) = *(v9 - 16);
            *(v17 + 40) = *(v9 - 8);
            *(v9 - 48) = v14;
            *(v9 - 40) = v15;
            *(v9 - 36) = v16;
            *(v9 - 32) = v26;
            *(v9 - 16) = v11;
            *(v9 - 12) = v12;
            *(v9 - 8) = v13;
            sub_24BD45C3C(v10, v17 + 48, v30, 0xAAAAAAAAAAAAAAABLL * ((v17 + 48 - v10) >> 4));
          }
        }

        *(&v40 + 1) -= 48;
        if (sub_24BD4509C(&v35))
        {
          v33 = -1;
          v34 = -1;
          if (sub_24BD450FC(&v35, &v34, &v33))
          {
            if (v33 != -1)
            {
              v18 = sub_24BCB9024(a1 + 104, &v33);
              sub_24BD4595C(v30, a1, (v18 + 4), &v33);
              v19 = sub_24BCB9024(a1 + 104, &v33);
              sub_24BD4595C(v27, a1, &v33, (v19 + 8));
              v20 = *(&v40 + 1);
              if (*(&v40 + 1) >= v41)
              {
                v21 = sub_24BD459B0(&v40, v30);
              }

              else
              {
                **(&v40 + 1) = v30[0].i64[0];
                v20->i64[1] = v30[0].i64[1];
                v20[1] = v30[1];
                v20[2].i64[0] = v31;
                v20[2].i32[2] = v32;
                v21 = &v20[3];
              }

              *(&v40 + 1) = v21;
              sub_24BD45C3C(v40, v21, &v39, 0xAAAAAAAAAAAAAAABLL * ((v21 - v40) >> 4));
              v22 = *(&v40 + 1);
              if (*(&v40 + 1) >= v41)
              {
                v23 = sub_24BD459B0(&v40, v27);
              }

              else
              {
                **(&v40 + 1) = v27[0].i64[0];
                v22->i64[1] = v27[0].i64[1];
                v22[1] = v27[1];
                v22[2].i64[0] = v28;
                v22[2].i32[2] = v29;
                v23 = &v22[3];
              }

              *(&v40 + 1) = v23;
              sub_24BD45C3C(v40, v23, &v39, 0xAAAAAAAAAAAAAAABLL * ((v23 - v40) >> 4));
            }

            LODWORD(v5) = v5 - 1;
          }
        }

        if (v5 <= 2)
        {
          goto LABEL_25;
        }
      }
    }

    if (v10)
    {
      *(&v40 + 1) = v10;
      operator delete(v10);
    }
  }

  result = v2 != v3;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD45064(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD4509C(uint64_t a1)
{
  v2 = sub_24BC9ECE4(*a1, *(*a1 + 180), *(a1 + 8));
  if ((v3 & *v2) == 0)
  {
    return 0;
  }

  v4 = sub_24BC9ECE4(*a1, *(*a1 + 180), *(a1 + 12));
  return (v5 & *v4) != 0;
}

uint64_t sub_24BD450FC(uint64_t a1, _DWORD *a2, unsigned int *a3)
{
  v6 = (a1 + 8);
  v7 = *a1;
  v8 = sub_24BCB9024(*a1 + 104, (a1 + 8));
  v9 = sub_24BCB9024(v7 + 104, v8);
  v10 = *a1;
  v11 = sub_24BCB9024(*a1 + 104, (a1 + 12));
  if (*(v9 + 16) == *(sub_24BCB9024(v10 + 104, v11) + 16))
  {
    return 0;
  }

  v13 = *a1;

  return sub_24BCDA2CC(v13, v6, (a1 + 12), a2, a3);
}

float sub_24BD451D0(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = vsubq_f32(*a2, *a1);
  v4 = vsubq_f32(*a3, *a1);
  v5 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v3, vextq_s8(v3, v3, 0xCuLL)), v3), vuzp2q_s32(vextq_s8(v4, v4, 4uLL), v4)), vzip2q_s32(vzip1q_s32(v4, vextq_s8(v4, v4, 0xCuLL)), v4), vuzp2q_s32(vextq_s8(v3, v3, 4uLL), v3));
  v6 = vmulq_f32(v5, v5);
  v6.i32[3] = 0;
  v7 = sqrtf(vaddv_f32(*&vpaddq_f32(v6, v6)));
  result = 0.0;
  if (v7 >= 0.00000001)
  {
    v9 = vmulq_f32(v3, v3);
    v9.i32[3] = 0;
    v10 = vaddv_f32(*&vpaddq_f32(v9, v9));
    if (v10 >= 0.00000001)
    {
      v11 = vsubq_f32(*a2, *a3);
      v12 = vmulq_f32(v4, v4);
      v12.i32[3] = 0;
      v13 = vaddv_f32(*&vpaddq_f32(v12, v12));
      v14 = vmulq_f32(v11, v11);
      v14.i32[3] = 0;
      if (v10 >= v13)
      {
        v13 = v10;
      }

      v15 = vaddv_f32(*&vpaddq_f32(v14, v14));
      if (v13 >= v15)
      {
        v15 = v13;
      }

      return v7 / v15;
    }
  }

  return result;
}

float sub_24BD45290(float32x4_t *a1, float32x4_t *a2)
{
  v2 = *a1;
  v3 = vmulq_f32(v2, v2);
  v3.i32[3] = 0;
  v4 = sqrtf(vaddv_f32(*&vpaddq_f32(v3, v3)));
  v5 = *a2;
  v6 = vmulq_f32(v5, v5);
  v6.i32[3] = 0;
  v7 = v4 * sqrtf(vaddv_f32(*&vpaddq_f32(v6, v6)));
  if (v7 < 1.0e-16)
  {
    return -1.0;
  }

  v9 = vmulq_f32(v2, v5);
  v9.i32[3] = 0;
  v10 = vaddv_f32(*&vpaddq_f32(v9, v9)) / v7;
  v11 = 1.0;
  if (v10 <= 1.0)
  {
    v11 = v10;
    if (v10 < -1.0)
    {
      v11 = -1.0;
    }
  }

  return acosf(v11);
}

float sub_24BD45314(float32x4_t *a1)
{
  LOBYTE(v34[0]) = 2;
  v2 = sub_24BD45548(a1, v34);
  v32.i8[0] = 0;
  v3 = sub_24BD45548(a1, &v32);
  v29 = *v2;
  v30 = *v3;
  LOBYTE(v33) = 1;
  v4 = sub_24BD45548(a1, &v33);
  v35 = 0;
  v5 = sub_24BD45548(a1, &v35);
  v6 = vsubq_f32(v29, v30);
  v7 = vsubq_f32(*v4, *v5);
  v8 = vmulq_f32(v6, v6);
  v8.i32[3] = 0;
  v9 = vmulq_f32(v7, v7);
  v9.i32[3] = 0;
  v10 = sqrtf(vaddv_f32(*&vpaddq_f32(v8, v8))) * sqrtf(vaddv_f32(*&vpaddq_f32(v9, v9)));
  v11 = -1.0;
  if (v10 >= 1.0e-16)
  {
    v12 = vmulq_f32(v6, v7);
    v12.i32[3] = 0;
    v13 = vaddv_f32(*&vpaddq_f32(v12, v12)) / v10;
    v14 = 1.0;
    if (v13 <= 1.0)
    {
      v14 = v13;
      if (v13 < -1.0)
      {
        v14 = -1.0;
      }
    }

    v11 = acosf(v14);
  }

  a1[2].f32[0] = v11;
  v15 = a1->i64[0];
  v32.i8[0] = 0;
  v16 = sub_24BD4561C(a1, &v32);
  v17 = sub_24BCB9454(v34, (v15 + 104), v16);
  v18 = sub_24BCB947C(v17);
  v31 = 0u;
  while (1)
  {
    v33 = v18;
    if (v18 == -1)
    {
      break;
    }

    v19 = sub_24BC9ECE4(a1->i64[0], *(a1->i64[0] + 180), v18);
    if ((*v19 & v20) == 0)
    {
      v21 = a1->i64[0];
      v22 = sub_24BCB9024(a1->i64[0] + 104, &v33);
      sub_24BD3FD60(v21, *(v22 + 16), &v32);
      v23 = a1->i64[0];
      v24 = sub_24BCB9024(a1->i64[0] + 104, &v33);
      v25 = sub_24BC96B00(v23, (v24 + 16));
      v31 = vaddq_f32(v31, vmulq_n_f32(v32, v25));
    }

    v18 = sub_24BCB947C(v34);
  }

  v26 = vmulq_f32(v31, v31);
  v26.i32[3] = 0;
  v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
  v26.f32[0] = sqrtf(vaddv_f32(*v26.f32));
  v27 = vmulq_f32(a1[1], vdivq_f32(v31, vdupq_lane_s32(*v26.f32, 0)));
  v27.i32[3] = 0;
  result = vaddv_f32(*&vpaddq_f32(v27, v27));
  if (result < 0.0)
  {
    result = 6.2832 - a1[2].f32[0];
    a1[2].f32[0] = result;
  }

  return result;
}

uint64_t sub_24BD45548(unsigned int *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *a1;
  v5 = (*(*a1 + 8) + 16 * *(*a1 + 176));
  v7 = *v5;
  v6 = v5[1];
  if (v3 == 2)
  {
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v6);
      v4 = *a1;
    }

    v8 = v4 + 104;
    v9 = a1 + 2;
  }

  else if (v3 == 1)
  {
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v6);
      v4 = *a1;
    }

    v9 = sub_24BCB9024(v4 + 104, a1 + 3);
    v8 = v4 + 104;
  }

  else
  {
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_24BC9EC78(v6);
      v4 = *a1;
    }

    v8 = v4 + 104;
    v9 = a1 + 3;
  }

  return *(v7 + 40) + 16 * *(sub_24BCB9024(v8, v9) + 12);
}

uint64_t sub_24BD4561C(unsigned int *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v2 == 2)
  {
    v4 = a1 + 2;
  }

  else if (v2 == 1)
  {
    v4 = sub_24BCB9024(v3 + 104, a1 + 3);
  }

  else
  {
    v4 = a1 + 3;
  }

  return sub_24BCB9024(v3 + 104, v4) + 12;
}

void sub_24BD45688(float32x4_t *a1)
{
  v29.i8[0] = 0;
  v2 = sub_24BD45548(a1, &v29);
  v29.i8[0] = 1;
  v3 = sub_24BD45548(a1, &v29);
  v29.i8[0] = 2;
  v4 = sub_24BD45548(a1, &v29);
  v5 = a1->i64[0];
  v6 = sub_24BCB9024(a1->i64[0] + 104, &a1->u32[2]);
  v7 = sub_24BCB9024(v5 + 104, v6);
  sub_24BD3FD60(v5, *(v7 + 16), &v29);
  v8 = a1->i64[0];
  v9 = sub_24BCB9024(a1->i64[0] + 104, &a1->u32[3]);
  v10 = sub_24BCB9024(v8 + 104, v9);
  sub_24BD3FD60(v8, *(v10 + 16), &v28);
  v11 = a1[1];
  v12 = vmulq_f32(v11, v11);
  v12.i32[3] = 0;
  v13 = sqrtf(vaddv_f32(*&vpaddq_f32(v12, v12)));
  v14 = vmulq_f32(v29, v29);
  v14.i32[3] = 0;
  v15 = v13 * sqrtf(vaddv_f32(*&vpaddq_f32(v14, v14)));
  v16 = -1.0;
  v17 = -1.0;
  if (v15 >= 1.0e-16)
  {
    v27 = a1[1];
    v18 = vmulq_f32(v11, v29);
    v18.i32[3] = 0;
    v19 = vaddv_f32(*&vpaddq_f32(v18, v18)) / v15;
    v20 = 1.0;
    if (v19 <= 1.0)
    {
      v20 = v19;
      if (v19 < -1.0)
      {
        v20 = -1.0;
      }
    }

    v17 = acosf(v20);
    v11 = v27;
  }

  v21 = vmulq_f32(v28, v28);
  v21.i32[3] = 0;
  v22 = v13 * sqrtf(vaddv_f32(*&vpaddq_f32(v21, v21)));
  if (v22 >= 1.0e-16)
  {
    v23 = vmulq_f32(v11, v28);
    v23.i32[3] = 0;
    v24 = vaddv_f32(*&vpaddq_f32(v23, v23)) / v22;
    v25 = 1.0;
    if (v24 <= 1.0)
    {
      v25 = v24;
      if (v24 < -1.0)
      {
        v25 = -1.0;
      }
    }

    v16 = acosf(v25);
  }

  if (v17 >= v16)
  {
    v26 = v17;
  }

  else
  {
    v26 = v16;
  }

  a1[2].f32[1] = v26;
  a1[2].f32[2] = sub_24BD451D0(v2, v3, v4);
}

float32x4_t *sub_24BD45878(float32x4_t *a1)
{
  v13 = 0;
  v2 = sub_24BD45548(a1, &v13);
  v12 = 1;
  v3 = sub_24BD45548(a1, &v12);
  v11 = 2;
  result = sub_24BD45548(a1, &v11);
  v5 = vsubq_f32(*v3, *v2);
  v6 = vsubq_f32(*result, *v2);
  v7 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v5, vextq_s8(v5, v5, 0xCuLL)), v5), vuzp2q_s32(vextq_s8(v6, v6, 4uLL), v6)), vzip2q_s32(vzip1q_s32(v6, vextq_s8(v6, v6, 0xCuLL)), v6), vuzp2q_s32(vextq_s8(v5, v5, 4uLL), v5));
  v8 = vmulq_f32(v7, v7);
  v8.i32[3] = 0;
  v9 = vpaddq_f32(v8, v8).u64[0];
  v9.f32[0] = sqrtf(vaddv_f32(v9));
  if (v9.f32[0] <= 0.0)
  {
    v10 = xmmword_24BFBD1C0;
  }

  else
  {
    v10 = vdivq_f32(v7, vdupq_lane_s32(v9, 0));
  }

  a1[1] = v10;
  return result;
}

float32x4_t *sub_24BD4595C(float32x4_t *a1, uint64_t a2, __int32 *a3, __int32 *a4)
{
  a1->i64[0] = a2;
  a1->i32[2] = *a3;
  a1->i32[3] = *a4;
  a1[1].i64[0] = 0;
  a1[1].i64[1] = 0;
  a1[2].i32[0] = 0;
  sub_24BD45878(a1);
  sub_24BD45314(a1);
  sub_24BD45688(a1);
  return a1;
}

uint64_t sub_24BD459B0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    sub_24BD45BE4(a1, v6);
  }

  v7 = 48 * v2;
  __p = 0;
  v11 = v7;
  v13 = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 12) = *(a2 + 12);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  v12 = 48 * v2 + 48;
  sub_24BD45B4C(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 48) % 0x30uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_24BD45AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BD45B4C(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *(v5 + 12) = *(v2 + 12);
      *(v5 + 16) = *(v2 + 16);
      *(v5 + 32) = *(v2 + 32);
      *(v5 + 40) = *(v2 + 40);
      v2 += 48;
      v5 += 48;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void sub_24BD45BE4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

float sub_24BD45C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v19 = v4;
    v20 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = a1 + 48 * v8;
    v10 = a2 - 48;
    if (sub_24BD45D60(v9, a2 - 48))
    {
      v13 = *(a2 - 48);
      v14 = *(a2 - 40);
      v15 = *(a2 - 36);
      v16 = *(a2 - 32);
      v17 = *(a2 - 16);
      v18 = *(a2 - 8);
      do
      {
        v12 = v9;
        *v10 = *v9;
        *(v10 + 8) = *(v9 + 8);
        *(v10 + 12) = *(v9 + 12);
        *(v10 + 16) = *(v9 + 16);
        *(v10 + 32) = *(v9 + 32);
        *(v10 + 40) = *(v9 + 40);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 48 * v8;
        v10 = v12;
      }

      while ((sub_24BD45D60(v9, &v13) & 1) != 0);
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 12) = v15;
      *(v12 + 16) = v16;
      *(v12 + 32) = v17;
      result = v18;
      *(v12 + 40) = v18;
    }
  }

  return result;
}

uint64_t sub_24BD45D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (*(a1 + 32) <= 3.1416)
  {
    if (v2 > 3.1416)
    {
      v3 = 0;
      return v3 & 1;
    }

LABEL_6:
    v5.i32[0] = *(a1 + 36);
    v4.i32[0] = *(a1 + 40);
    v4.i32[1] = *(a2 + 40);
    v5.i32[1] = *(a2 + 36);
    v6 = vmlaq_f64(vcvtq_f64_f32(vmul_f32(v4, vdup_n_s32(0x3F68BA2Eu))), vdupq_n_s64(0xBFB745D1A0000000), vdivq_f64(vcvtq_f64_f32(v5), vdupq_n_s64(0x400921FB54442D18uLL)));
    v3 = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v6, 1), v6)).u8[0];
    return v3 & 1;
  }

  if (v2 > 3.1416)
  {
    goto LABEL_6;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_24BD45E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 48 * v5 + 48;
    v8 = (2 * v5) | 1;
    v9 = 2 * v5 + 2;
    if (v9 < a3)
    {
      v10 = sub_24BD45D60(a1 + 48 * v5 + 48, a1 + 48 * v5 + 96);
      if (v10)
      {
        v11 = 48;
      }

      else
      {
        v11 = 0;
      }

      v7 += v11;
      if (v10)
      {
        v8 = v9;
      }
    }

    *a1 = *v7;
    *(a1 + 8) = *(v7 + 8);
    *(a1 + 12) = *(v7 + 12);
    *(a1 + 16) = *(v7 + 16);
    *(a1 + 32) = *(v7 + 32);
    *(a1 + 40) = *(v7 + 40);
    a1 = v7;
    v5 = v8;
  }

  while (v8 <= v6);
  return v7;
}

void sub_24BD45F04(uint64_t a1@<X0>, __int32 *a2@<X1>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  a4.i32[0] = *a2;
  v26 = a4;
  v6 = vdupq_lane_s32(a4, 0);
  v6.i32[3] = 0;
  v28 = v6;
  sub_24BE2493C(a1, v34);
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v8 = vmulq_f32(v28, v7);
  v9 = *v26.i32 * 2147500000.0;
  v29 = vsubq_f32(v34[0], v8);
  v10 = vsubq_f32(vaddq_f32(v8, v34[1]), v29);
  if ((*v26.i32 * 2147500000.0) < v10.f32[0] || v9 < v10.f32[1] || v9 < v10.f32[2])
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
  }

  else
  {
    v13 = 0;
    v27 = vdupq_lane_s32(v26, 0);
    __asm { FMOV            V1.4S, #1.0 }

    v33 = vaddq_f32(vdivq_f32(v10, v27), _Q1);
    do
    {
      v32[v13] = v33.f32[v13];
      ++v13;
    }

    while (v13 != 3);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
    v31 = 0;
    if (*(a1 + 112) != *(a1 + 104))
    {
      v18 = 0;
      v19 = v32[0];
      v20 = v32[1];
      do
      {
        v21 = (*(a1 + 8) + 16 * *(a1 + 176));
        v23 = *v21;
        v22 = v21[1];
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v22);
        }

        v24 = 0;
        v36 = vdivq_f32(vsubq_f32(*(*(v23 + 40) + 16 * v18), v29), v27);
        do
        {
          v35[v24] = v36.f32[v24];
          ++v24;
        }

        while (v24 != 3);
        v30 = v35[0] + (v35[1] + v20 * v35[2]) * v19;
        v36.i64[0] = &v30;
        v25 = sub_24BD46C10(a3, &v30);
        sub_24BD46ED0(v25 + 3, &v31);
        v18 = ++v31;
      }

      while (v31 < ((*(a1 + 112) - *(a1 + 104)) >> 2));
    }
  }
}

float32x4_t sub_24BD46100@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, float32x4_t *a3@<X8>, float32x4_t a4@<Q1>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0uLL;
    do
    {
      a4 = *(*(a2 + 40) + 16 * *(v4 + 4));
      v5 = vaddq_f32(v5, a4);
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0uLL;
  }

  a4.f32[0] = *(a1 + 24);
  result = vdivq_f32(v5, vdupq_lane_s32(*a4.f32, 0));
  *a3 = result;
  return result;
}

uint64_t sub_24BD46144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v18 = 0uLL;
  result = sub_24BCB6470((a1 + 8), &v18, a3);
  if (result != -1)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = result;
      do
      {
        v11 = (*(a1 + 8) + 16 * v10);
        v13 = *v11;
        v12 = v11[1];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v12);
        }

        v14 = v9[5];
        if (v14)
        {
          v15 = 0uLL;
          do
          {
            v8 = *(*(v13 + 40) + 16 * *(v14 + 4));
            v15 = vaddq_f32(v15, v8);
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          v15 = 0uLL;
        }

        v8.f32[0] = v9[6];
        v8 = vdupq_lane_s32(*v8.f32, 0);
        v16 = vdivq_f32(v15, v8);
        v18 = v16;
        v17 = a4[1];
        if (v17 >= a4[2])
        {
          result = sub_24BD47100(a4, &v18);
        }

        else
        {
          *v17 = v16;
          result = &v17[1];
        }

        a4[1] = result;
        v9 = *v9;
      }

      while (v9);
    }
  }

  return result;
}

void sub_24BD4623C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD46258(uint64_t a1, uint64_t *a2, __int32 *a3)
{
  sub_24BC8EED8(a2);
  sub_24BD45F04(a1, a3, v19, v6);
  sub_24BC836D4(__p, off_27F078F80[0]);
  sub_24BD46144(a1, v19, __p, v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(v14, off_27F078F90[0]);
  sub_24BD46144(a1, v19, v14, __p);
  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  sub_24BC836D4(v12, off_27F078F98[0]);
  sub_24BD46144(a1, v19, v12, v14);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v7 = a2[1];
  if (v7 >= a2[2])
  {
    v8 = sub_24BD47274(a2, v18);
  }

  else
  {
    sub_24BD47220(a2, v18);
    v8 = v7 + 24;
  }

  a2[1] = v8;
  if (v8 >= a2[2])
  {
    v9 = sub_24BD47274(a2, __p);
  }

  else
  {
    sub_24BD47220(a2, __p);
    v9 = v8 + 24;
  }

  a2[1] = v9;
  if (v9 >= a2[2])
  {
    v10 = sub_24BD47274(a2, v14);
  }

  else
  {
    sub_24BD47220(a2, v14);
    v10 = v9 + 24;
  }

  a2[1] = v10;
  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  sub_24BD46B90(v19);
  return 1;
}

void sub_24BD46424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a28)
  {
    operator delete(a28);
  }

  sub_24BD46B90(v29 - 72);
  _Unwind_Resume(a1);
}

BOOL sub_24BD464BC(uint64_t a1, uint64_t a2, const void **a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v5 = sub_24BCB6470((a1 + 8), v16, a3);
  if (v5 != -1)
  {
    for (i = *(a2 + 16); i; i = *i)
    {
      v7 = (*(a1 + 8) + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v8);
      }

      v10 = i[5];
      if (v10)
      {
        v11 = 0uLL;
        v12 = i[5];
        do
        {
          v13 = *(*(v9 + 40) + 16 * *(v12 + 4));
          v11 = vaddq_f32(v11, v13);
          v12 = *v12;
        }

        while (v12);
        v13.f32[0] = i[6];
        v14 = vdivq_f32(v11, vdupq_lane_s32(*v13.f32, 0));
        do
        {
          *(*(v9 + 40) + 16 * *(v10 + 4)) = v14;
          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  return v5 != -1;
}

uint64_t sub_24BD4659C(uint64_t a1, __int32 *a2, int32x2_t a3)
{
  v4 = *a2;
  sub_24BD45F04(a1, a2, v14, a3);
  sub_24BC836D4(__p, off_27F078F80[0]);
  sub_24BD464BC(a1, v14, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078F90[0]);
  sub_24BD464BC(a1, v14, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  sub_24BC836D4(__p, off_27F078F98[0]);
  sub_24BD464BC(a1, v14, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v4;
  v7 = *(a1 + 104);
  v6 = *(a1 + 112);
  v8 = 2;
  do
  {
    sub_24BE6AF64(a1, v5, 0.1, 0, 1, 3);
    v9 = v6 - v7;
    v7 = *(a1 + 104);
    v6 = *(a1 + 112);
  }

  while (v9 > v6 - v7 && v8-- != 0);
  sub_24BD46B90(v14);
  return 1;
}

void sub_24BD466D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BD46B90(&a15);
  _Unwind_Resume(a1);
}

void *sub_24BD46718@<X0>(uint64_t a1@<X0>, __int32 *a2@<X1>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  a4.i32[0] = *a2;
  v25 = a4;
  v6 = vdupq_lane_s32(a4, 0);
  v6.i32[3] = 0;
  v27 = v6;
  result = sub_24BE249F8(a1, v33);
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vmulq_f32(v27, v8);
  v10 = *v25.i32 * 2147500000.0;
  v28 = vsubq_f32(v33[0], v9);
  v11 = vsubq_f32(vaddq_f32(v9, v33[1]), v28);
  if ((*v25.i32 * 2147500000.0) < v11.f32[0] || v10 < v11.f32[1] || v10 < v11.f32[2])
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
  }

  else
  {
    v14 = 0;
    v26 = vdupq_lane_s32(v25, 0);
    __asm { FMOV            V1.4S, #1.0 }

    v32 = vaddq_f32(vdivq_f32(v11, v26), _Q1);
    do
    {
      v31[v14] = v32.f32[v14];
      ++v14;
    }

    while (v14 != 3);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
    v30 = 0;
    v19 = *a1;
    if (*(a1 + 8) != *a1)
    {
      v20 = 0;
      v21 = v31[0];
      v22 = v31[1];
      do
      {
        v23 = 0;
        v35 = vdivq_f32(vsubq_f32(v19[v20], v28), v26);
        do
        {
          v34[v23] = v35.f32[v23];
          ++v23;
        }

        while (v23 != 3);
        v29 = v34[0] + (v34[1] + v22 * v34[2]) * v21;
        v35.i64[0] = &v29;
        v24 = sub_24BD46C10(a3, &v29);
        result = sub_24BD46ED0(v24 + 3, &v30);
        v20 = ++v30;
        v19 = *a1;
      }

      while (v30 < ((*(a1 + 8) - *a1) >> 4));
    }
  }

  return result;
}

unint64_t sub_24BD468E4@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float32x4_t a4@<Q1>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(result + 8) != *result)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = result;
      result = 0;
      do
      {
        v7 = 0uLL;
        v11 = 0u;
        v8 = v5[5];
        if (v8)
        {
          v9 = *v6;
          do
          {
            a4 = *(v9 + 16 * *(v8 + 4));
            v7 = vaddq_f32(v7, a4);
            v11 = v7;
            v8 = *v8;
          }

          while (v8);
        }

        a4.f32[0] = v5[6];
        a4 = vdupq_lane_s32(*a4.f32, 0);
        v10 = vdivq_f32(v7, a4);
        v11 = v10;
        if (result >= a3[2])
        {
          result = sub_24BD47100(a3, &v11);
        }

        else
        {
          *result = v10;
          result += 16;
        }

        a3[1] = result;
        v5 = *v5;
      }

      while (v5);
    }
  }

  return result;
}

void sub_24BD469A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD469C0(uint64_t *a1, uint64_t *a2, __int32 *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    sub_24BC8EED8(a2);
    sub_24BD46718(*a1, a3, v20, v8);
    sub_24BD468E4(*a1, v20, v19, v9);
    sub_24BD468E4(*a1 + 24, v20, v18, v10);
    sub_24BD468E4(*a1 + 48, v20, __p, v11);
    v12 = a2[1];
    if (v12 >= a2[2])
    {
      v13 = sub_24BD47274(a2, v19);
    }

    else
    {
      sub_24BD47220(a2, v19);
      v13 = v12 + 24;
    }

    a2[1] = v13;
    if (v13 >= a2[2])
    {
      v14 = sub_24BD47274(a2, v18);
    }

    else
    {
      sub_24BD47220(a2, v18);
      v14 = v13 + 24;
    }

    a2[1] = v14;
    if (v14 >= a2[2])
    {
      v15 = sub_24BD47274(a2, __p);
    }

    else
    {
      sub_24BD47220(a2, __p);
      v15 = v14 + 24;
    }

    a2[1] = v15;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v18[0])
    {
      v18[1] = v18[0];
      operator delete(v18[0]);
    }

    if (v19[0])
    {
      v19[1] = v19[0];
      operator delete(v19[0]);
    }

    sub_24BD46B90(v20);
  }

  return v3 != v4;
}

void sub_24BD46B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  sub_24BD46B90(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD46B90(uint64_t a1)
{
  sub_24BD46BCC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BD46BCC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_24BCA3B84((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_24BD46C10(void *a1, unsigned int *a2)
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

void sub_24BD46E70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD46E84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD46E84(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24BCA3B84(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_24BD46ED0(void *a1, unsigned int *a2)
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

uint64_t sub_24BD47100(uint64_t a1, _OWORD *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_24BC8E01C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_24BCA1868(a1, v7);
  }

  __p = 0;
  v11 = (16 * v2);
  v13 = 0;
  *v11 = *a2;
  v12 = 16 * v2 + 16;
  sub_24BCA20D0(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_24BD471E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD47220(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_24BCA17B8(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_24BD47274(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
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
    sub_24BC8F4C8(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_24BCA17B8(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 4);
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
  sub_24BC91E14(&v14);
  return v8;
}