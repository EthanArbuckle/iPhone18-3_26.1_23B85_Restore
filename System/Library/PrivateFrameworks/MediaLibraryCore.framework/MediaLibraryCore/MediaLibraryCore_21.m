uint64_t mediaplatform::SQLOrderingTerm::sql@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  (*(**(a1 + 16) + 16))(&__p);
  if ((v16 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, p_p, v5);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (*(a1 + 12))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, " ", 1);
    mediaplatform::NameForCollateType(&__p, *(a1 + 12));
    v6 = (v16 & 0x80u) == 0 ? &__p : __p;
    v7 = (v16 & 0x80u) == 0 ? v16 : v15;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v6, v7);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, " ", 1);
  mediaplatform::NameForOrderingType(&__p, *(a1 + 8));
  if ((v16 & 0x80u) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = v15;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v8, v9);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if ((v24 & 0x10) != 0)
  {
    v11 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v11 = v20;
    }

    locale = v19[4].__locale_;
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v10 = 0;
      a2[23] = 0;
      goto LABEL_39;
    }

    locale = v19[1].__locale_;
    v11 = v19[3].__locale_;
  }

  v10 = v11 - locale;
  if ((v11 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a2[23] = v10;
  if (v10)
  {
    memmove(a2, locale, v10);
  }

LABEL_39:
  a2[v10] = 0;
  v17 = *MEMORY[0x1E69E54E8];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(v21);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x1DA6EDCB0](&v25);
}

void sub_1D595DEC8(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a8);
  MEMORY[0x1DA6EDCB0](va);
  _Unwind_Resume(a1);
}

_BYTE *mediaplatform::NameForCollateType(_BYTE *a1, int a2)
{
  if ((a2 - 1) >= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "unknown collate type");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v2 = (&off_1E84C8328)[a2 - 1];

  return std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

_BYTE *mediaplatform::NameForOrderingType(_BYTE *a1, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "unknown ordering type");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v2 = "DESC";
  }

  else
  {
    v2 = "ASC";
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

void mediaplatform::SQLOrderingTerm::~SQLOrderingTerm(mediaplatform::SQLOrderingTerm *this)
{
  *this = &unk_1F50DD190;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50DD190;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t mediaplatform::SQLOrderingTerm::SQLOrderingTerm(uint64_t result, void *a2, int a3, int a4)
{
  *result = &unk_1F50DD190;
  *(result + 8) = a3;
  *(result + 12) = a4;
  v4 = a2[1];
  *(result + 16) = *a2;
  *(result + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  *result = &unk_1F50DD190;
  *(result + 8) = a3;
  *(result + 12) = a4;
  v4 = a2[1];
  *(result + 16) = *a2;
  *(result + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

mlcore::AlbumTable *mlcore::AlbumTable::AlbumTable(mlcore::AlbumTable *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v169, "album");
  std::string::basic_string[abi:ne200100]<0>(&v163, "album_pid");
  v164 = &unk_1F50D86E0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v165, v163.__r_.__value_.__l.__data_, v163.__r_.__value_.__l.__size_);
  }

  else
  {
    v165 = v163;
  }

  v166 = 1;
  v167 = 0;
  v168 = 0;
  v164 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v160, "album");
  std::string::basic_string[abi:ne200100]<0>(v158, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v162, v160, v158);
  std::string::basic_string[abi:ne200100]<0>(&__sz, "sort_album");
  v151 = &unk_1F50D86E0;
  if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v152, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
  }

  else
  {
    v152 = __sz;
  }

  v153 = 0;
  v154 = 0;
  v157 = 0;
  v155 = 0;
  v156 = 0;
  v151 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&__s, "album_artist_pid");
  v145 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v146 = __s;
  }

  v147 = 16;
  v148 = 1;
  v149 = 0;
  v145 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v138, "representative_item_pid");
  v139 = &unk_1F50D86E0;
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v140, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
  }

  else
  {
    v140 = v138;
  }

  v141 = 16;
  v142 = 1;
  v143 = 0;
  v139 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v128, "grouping_key");
  v129 = &unk_1F50D86E0;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__l.__size_);
  }

  else
  {
    v130 = v128;
  }

  v131 = 0;
  v132 = 0;
  v133 = &unk_1F50DD860;
  v134 = 0;
  v136 = 0;
  v135 = 0;
  v137 = 0;
  v129 = &unk_1F50D7B40;
  std::string::basic_string[abi:ne200100]<0>(&v122, "cloud_status");
  v123 = &unk_1F50D86E0;
  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v124, v122.__r_.__value_.__l.__data_, v122.__r_.__value_.__l.__size_);
  }

  else
  {
    v124 = v122;
  }

  v125 = 16;
  v126 = 1;
  v127 = 0;
  v123 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v116, "user_rating");
  v117 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v118, v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    v118 = v116;
  }

  v119 = 16;
  v120 = 1;
  v121 = 0;
  v117 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v110, "liked_state");
  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
  }

  else
  {
    v112 = v110;
  }

  v113 = 16;
  v114 = 1;
  v115 = 0;
  v111 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v104, "all_compilations");
  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v104;
  }

  v107 = 16;
  v108 = 1;
  v109 = 0;
  v105 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v96, "feed_url");
  v97 = &unk_1F50D86E0;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
  }

  else
  {
    v98 = v96;
  }

  v99 = 0;
  v100 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v97 = &unk_1F50D7B20;
  std::string::basic_string[abi:ne200100]<0>(&v90, "season_number");
  v91 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v92, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v92 = v90;
  }

  v93 = 16;
  v94 = 1;
  v95 = 0;
  v91 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v84, "album_year");
  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, v84.__r_.__value_.__l.__data_, v84.__r_.__value_.__l.__size_);
  }

  else
  {
    v86 = v84;
  }

  v87 = 16;
  v88 = 1;
  v89 = 0;
  v85 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v78, "keep_local");
  v79 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v80, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v80 = v78;
  }

  v81 = 16;
  v82 = 1;
  v83 = 0;
  v79 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v72, "keep_local_status");
  v73 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v74, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v74 = v72;
  }

  v75 = 16;
  v76 = 1;
  v77 = 0;
  v73 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v66, "keep_local_status_reason");
  v67 = &unk_1F50D86E0;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v68 = v66;
  }

  v69 = 16;
  v70 = 1;
  v71 = 0;
  v67 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v60, "keep_local_constraints");
  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v62 = v60;
  }

  v63 = 16;
  v64 = 1;
  v65 = 0;
  v61 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v50, "app_data");
  v51 = &unk_1F50D86E0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v52 = v50;
  }

  v53 = 0;
  v54 = 0;
  v55 = &unk_1F50DD860;
  v56 = 0;
  v58 = 0;
  v57 = 0;
  v59 = 0;
  v51 = &unk_1F50D7B40;
  std::string::basic_string[abi:ne200100]<0>(&v44, "contains_classical_work");
  v45 = &unk_1F50D86E0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v46 = v44;
  }

  v47 = 16;
  v48 = 1;
  v49 = 0;
  v45 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v38, "date_played_local");
  v39 = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v38;
  }

  v41 = 16;
  v42 = 1;
  v43 = 0;
  v39 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v32, "user_rating_is_derived");
  v33 = &unk_1F50D86E0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = v32;
  }

  v35 = 16;
  v36 = 1;
  v37 = 0;
  v33 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v26, "sync_id");
  v27 = &unk_1F50D86E0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v28 = v26;
  }

  v29 = 16;
  v30 = 1;
  v31 = 0;
  v27 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(&v20, "classical_experience_available");
  v21 = &unk_1F50D86E0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v20;
  }

  v23 = 16;
  v24 = 1;
  v25 = 0;
  v21 = &unk_1F50D7AE0;
  std::string::basic_string[abi:ne200100]<0>(&v14, "store_id");
  v15 = &unk_1F50D86E0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v14;
  }

  v17 = 16;
  v18 = 1;
  v19 = 0;
  v15 = &unk_1F50D7AC0;
  std::string::basic_string[abi:ne200100]<0>(v11, "cloud_library_id");
  std::string::basic_string[abi:ne200100]<0>(v9, "");
  mlcore::MediaColumn<std::string>::MediaColumn(v13, v11, v9);
  std::string::basic_string[abi:ne200100]<0>(&v3, "liked_state_changed_date");
  v4 = &unk_1F50D86E0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v3.__r_.__value_.__l.__data_, v3.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v3;
  }

  v6 = 16;
  v7 = 1;
  v8 = 0;
  v4 = &unk_1F50D7AC0;
  mlcore::MediaTable<long long,std::string,std::string,long long,long long,mediaplatform::Data,int,int,int,int,std::string,int,int,int,int,int,int,mediaplatform::Data,int,long long,long long,long long,int,long long,std::string,long long>::MediaTable(this, &v169, &v164, v162, &v151, &v145, &v139, &v129, &v123, &v117, &v111, &v105, &v97, &v91, &v85, &v79, &v73, &v67, &v61, &v51, &v45, &v39, &v33, &v27, &v21, &v15, v13, &v4);
  v4 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v13);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v15 = &unk_1F50D86E0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  v21 = &unk_1F50D86E0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  v27 = &unk_1F50D86E0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v33 = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v39 = &unk_1F50D86E0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v45 = &unk_1F50D86E0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v51);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  v67 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  v73 = &unk_1F50D86E0;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v79 = &unk_1F50D86E0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  v91 = &unk_1F50D86E0;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v97);
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  v117 = &unk_1F50D86E0;
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  v123 = &unk_1F50D86E0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v122.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v129);
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
  }

  v139 = &unk_1F50D86E0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v151);
  if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__sz.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v162);
  if (v159 < 0)
  {
    operator delete(v158[0]);
  }

  if (v161 < 0)
  {
    operator delete(v160[0]);
  }

  v164 = &unk_1F50D86E0;
  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v165.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v163.__r_.__value_.__l.__data_);
  }

  if (v170 < 0)
  {
    operator delete(v169);
  }

  *this = &unk_1F50D86A8;
  return this;
}

void sub_1D595F4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, unint64_t a31, unint64_t a32, unint64_t a33, unint64_t a34, unint64_t a35, unint64_t a36, unint64_t a37, unint64_t a38, unint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&a65);
  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  STACK[0x218] = v81;
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  STACK[0x260] = v80;
  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  STACK[0x2A8] = v79;
  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  STACK[0x2F0] = v78;
  if (SLOBYTE(STACK[0x30F]) < 0)
  {
    operator delete(STACK[0x2F8]);
  }

  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(STACK[0x2D8]);
  }

  STACK[0x338] = v77;
  if (SLOBYTE(STACK[0x357]) < 0)
  {
    operator delete(STACK[0x340]);
  }

  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&STACK[0x380]);
  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(STACK[0x368]);
  }

  STACK[0x3E8] = v76;
  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  STACK[0x430] = v75;
  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  STACK[0x478] = a30;
  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x477]) < 0)
  {
    operator delete(STACK[0x460]);
  }

  STACK[0x4C0] = a31;
  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (SLOBYTE(STACK[0x4BF]) < 0)
  {
    operator delete(STACK[0x4A8]);
  }

  STACK[0x508] = a32;
  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x507]) < 0)
  {
    operator delete(STACK[0x4F0]);
  }

  STACK[0x550] = a33;
  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(STACK[0x558]);
  }

  if (SLOBYTE(STACK[0x54F]) < 0)
  {
    operator delete(STACK[0x538]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x598]);
  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(STACK[0x580]);
  }

  STACK[0x5F0] = a34;
  if (SLOBYTE(STACK[0x60F]) < 0)
  {
    operator delete(STACK[0x5F8]);
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(STACK[0x5D8]);
  }

  STACK[0x638] = a35;
  if (SLOBYTE(STACK[0x657]) < 0)
  {
    operator delete(STACK[0x640]);
  }

  if (SLOBYTE(STACK[0x637]) < 0)
  {
    operator delete(STACK[0x620]);
  }

  STACK[0x680] = a36;
  if (SLOBYTE(STACK[0x69F]) < 0)
  {
    operator delete(STACK[0x688]);
  }

  if (SLOBYTE(STACK[0x67F]) < 0)
  {
    operator delete(STACK[0x668]);
  }

  STACK[0x6C8] = a37;
  if (SLOBYTE(STACK[0x6E7]) < 0)
  {
    operator delete(STACK[0x6D0]);
  }

  if (SLOBYTE(STACK[0x6C7]) < 0)
  {
    operator delete(STACK[0x6B0]);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&STACK[0x710]);
  if (SLOBYTE(STACK[0x70F]) < 0)
  {
    operator delete(STACK[0x6F8]);
  }

  STACK[0x778] = a38;
  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(STACK[0x760]);
  }

  STACK[0x7C0] = a39;
  if (SLOBYTE(STACK[0x7DF]) < 0)
  {
    operator delete(STACK[0x7C8]);
  }

  if (SLOBYTE(STACK[0x7BF]) < 0)
  {
    operator delete(STACK[0x7A8]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&STACK[0x808]);
  if (SLOBYTE(STACK[0x807]) < 0)
  {
    operator delete(STACK[0x7F0]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v82 - 248);
  if (SLOBYTE(STACK[0x85F]) < 0)
  {
    operator delete(STACK[0x848]);
  }

  if (SLOBYTE(STACK[0x877]) < 0)
  {
    operator delete(STACK[0x860]);
  }

  *(v82 - 160) = a40;
  if (*(v82 - 129) < 0)
  {
    operator delete(*(v82 - 152));
  }

  if (*(v82 - 161) < 0)
  {
    operator delete(*(v82 - 184));
  }

  if (*(v82 - 89) < 0)
  {
    operator delete(*(v82 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t mlcore::MediaTable<long long,std::string,std::string,long long,long long,mediaplatform::Data,int,int,int,int,std::string,int,int,int,int,int,int,mediaplatform::Data,int,long long,long long,long long,int,long long,std::string,long long>::MediaTable(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v232 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    __s = *(a3 + 8);
  }

  v35 = *(a3 + 36);
  v234 = *(a3 + 32);
  v232 = &unk_1F50D8958;
  v235 = v35;
  v236 = *(a3 + 44);
  v227 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v228, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    v228 = *(a4 + 8);
  }

  v229 = *(a4 + 32);
  v227 = &unk_1F50D89B8;
  v230 = *(a4 + 36);
  if (*(a4 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v231, *(a4 + 40), *(a4 + 48));
  }

  else
  {
    v231 = *(a4 + 40);
  }

  v222 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v223, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v223 = *(a5 + 8);
  }

  v224 = *(a5 + 32);
  v222 = &unk_1F50D89B8;
  v225 = *(a5 + 36);
  if (*(a5 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, *(a5 + 40), *(a5 + 48));
  }

  else
  {
    v226 = *(a5 + 40);
  }

  v217 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v218, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v218 = *(a6 + 8);
  }

  v36 = *(a6 + 36);
  v219 = *(a6 + 32);
  v217 = &unk_1F50D8958;
  v220 = v36;
  v221 = *(a6 + 44);
  v212 = &unk_1F50D86E0;
  v37 = a7;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v213, *(a7 + 8), *(a7 + 16));
    v37 = a7;
  }

  else
  {
    v213 = *(a7 + 8);
  }

  v39 = (v37 + 36);
  v38 = *(v37 + 36);
  v214 = *(v37 + 32);
  v212 = &unk_1F50D8958;
  v215 = v38;
  v216 = *(v37 + 44);
  v205 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v206 = *(a8 + 8);
  }

  v207 = *(a8 + 32);
  v205 = &unk_1F50D89D8;
  v208 = *(a8 + 36);
  mediaplatform::Data::Data(&v209, *(a8 + 64), *(a8 + 48), 1);
  v201 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v202, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v202 = *(a9 + 8);
  }

  v203 = *(a9 + 32);
  v201 = &unk_1F50D8978;
  v204 = *(a9 + 36);
  v197 = &unk_1F50D86E0;
  v114 = a8;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v198, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v198 = *(a10 + 8);
  }

  v199 = *(a10 + 32);
  v197 = &unk_1F50D8978;
  v200 = *(a10 + 36);
  v193 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v194 = *(a11 + 8);
  }

  v195 = *(a11 + 32);
  v193 = &unk_1F50D8978;
  v196 = *(a11 + 36);
  v189 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v190 = *(a12 + 8);
  }

  v191 = *(a12 + 32);
  v189 = &unk_1F50D8978;
  v192 = *(a12 + 36);
  v184 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v185, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v185 = *(a13 + 8);
  }

  v186 = *(a13 + 32);
  v184 = &unk_1F50D89B8;
  v187 = *(a13 + 36);
  if (*(a13 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v188, *(a13 + 40), *(a13 + 48));
  }

  else
  {
    v188 = *(a13 + 40);
  }

  v180 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v181, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v181 = *(a14 + 8);
  }

  v182 = *(a14 + 32);
  v180 = &unk_1F50D8978;
  v183 = *(a14 + 36);
  v176 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v177, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v177 = *(a15 + 8);
  }

  v178 = *(a15 + 32);
  v176 = &unk_1F50D8978;
  v179 = *(a15 + 36);
  v172 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v173, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v173 = *(a16 + 8);
  }

  v174 = *(a16 + 32);
  v172 = &unk_1F50D8978;
  v175 = *(a16 + 36);
  v168 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v169, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v169 = *(a17 + 8);
  }

  v170 = *(a17 + 32);
  v168 = &unk_1F50D8978;
  v171 = *(a17 + 36);
  v164 = &unk_1F50D86E0;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v165, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v165 = *(a18 + 8);
  }

  v166 = *(a18 + 32);
  v164 = &unk_1F50D8978;
  v167 = *(a18 + 36);
  v160 = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v161, *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v161 = *(a19 + 8);
  }

  v162 = *(a19 + 32);
  v160 = &unk_1F50D8978;
  v163 = *(a19 + 36);
  v153 = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v154 = *(a20 + 8);
  }

  v155 = *(a20 + 32);
  v153 = &unk_1F50D89D8;
  v156 = *(a20 + 36);
  mediaplatform::Data::Data(&v157, *(a20 + 64), *(a20 + 48), 1);
  v149 = &unk_1F50D86E0;
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v150, *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v150 = *(a21 + 8);
  }

  v151 = *(a21 + 32);
  v149 = &unk_1F50D8978;
  v152 = *(a21 + 36);
  v144 = &unk_1F50D86E0;
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v145, *(a22 + 8), *(a22 + 16));
  }

  else
  {
    v145 = *(a22 + 8);
  }

  v40 = *(a22 + 36);
  v146 = *(a22 + 32);
  v41 = a23;
  v144 = &unk_1F50D8958;
  v147 = v40;
  v148 = *(a22 + 44);
  v139 = &unk_1F50D86E0;
  if (*(a23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v140, *(a23 + 8), *(a23 + 16));
    v41 = a23;
  }

  else
  {
    v140 = *(a23 + 8);
  }

  v43 = (v41 + 36);
  v42 = *(v41 + 36);
  v141 = *(v41 + 32);
  v44 = a24;
  v139 = &unk_1F50D8958;
  v142 = v42;
  v143 = *(v43 + 2);
  v134 = &unk_1F50D86E0;
  if (*(a24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, *(a24 + 8), *(a24 + 16));
    v44 = a24;
  }

  else
  {
    v135 = *(a24 + 8);
  }

  v45 = a25;
  v47 = (v44 + 36);
  v46 = *(v44 + 36);
  v136 = *(v44 + 32);
  v134 = &unk_1F50D8958;
  v137 = v46;
  v138 = *(v44 + 44);
  v130 = &unk_1F50D86E0;
  if (*(a25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, *(a25 + 8), *(a25 + 16));
    v45 = a25;
  }

  else
  {
    v131 = *(a25 + 8);
  }

  v48 = a26;
  v132 = *(v45 + 32);
  v130 = &unk_1F50D8978;
  v133 = *(v45 + 36);
  v125 = &unk_1F50D86E0;
  v113 = v43;
  if (*(a26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, *(a26 + 8), *(a26 + 16));
    v48 = a26;
  }

  else
  {
    v126 = *(a26 + 8);
  }

  v49 = a27;
  v51 = (v48 + 36);
  v50 = *(v48 + 36);
  v127 = *(v48 + 32);
  v125 = &unk_1F50D8958;
  v128 = v50;
  v129 = *(v48 + 44);
  v120 = &unk_1F50D86E0;
  if (*(a27 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, *(a27 + 8), *(a27 + 16));
    v49 = a27;
  }

  else
  {
    v121 = *(a27 + 8);
  }

  v122 = *(v49 + 32);
  v120 = &unk_1F50D89B8;
  v123 = *(v49 + 36);
  if (*(v49 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v124, *(v49 + 40), *(v49 + 48));
  }

  else
  {
    v124 = *(v49 + 40);
  }

  v52 = a28;
  v112 = v51;
  if (*(a28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, *(a28 + 8), *(a28 + 16));
    v52 = a28;
  }

  else
  {
    v116 = *(a28 + 8);
  }

  v54 = (v52 + 36);
  v53 = *(v52 + 36);
  v117 = *(v52 + 32);
  v118 = v53;
  v119 = *(v52 + 44);
  mediaplatform::DatabaseTableBase::DatabaseTableBase(a1, a2);
  *a1 = &unk_1F50D8D40;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v350 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v351, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v351 = __s;
  }

  v352 = v234;
  v350 = &unk_1F50D8958;
  v353 = v235;
  v354 = v236;
  v345 = &unk_1F50D86E0;
  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v346, v228.__r_.__value_.__l.__data_, v228.__r_.__value_.__l.__size_);
  }

  else
  {
    v346 = v228;
  }

  v347 = v229;
  v345 = &unk_1F50D89B8;
  v348 = v230;
  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v349, v231.__r_.__value_.__l.__data_, v231.__r_.__value_.__l.__size_);
  }

  else
  {
    v349 = v231;
  }

  v340 = &unk_1F50D86E0;
  if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v341, v223.__r_.__value_.__l.__data_, v223.__r_.__value_.__l.__size_);
  }

  else
  {
    v341 = v223;
  }

  v342 = v224;
  v340 = &unk_1F50D89B8;
  v343 = v225;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v344, v226.__r_.__value_.__l.__data_, v226.__r_.__value_.__l.__size_);
  }

  else
  {
    v344 = v226;
  }

  v335 = &unk_1F50D86E0;
  if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v336, v218.__r_.__value_.__l.__data_, v218.__r_.__value_.__l.__size_);
  }

  else
  {
    v336 = v218;
  }

  v337 = v219;
  v335 = &unk_1F50D8958;
  v338 = v220;
  v339 = v221;
  v330 = &unk_1F50D86E0;
  if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v331, v213.__r_.__value_.__l.__data_, v213.__r_.__value_.__l.__size_);
  }

  else
  {
    v331 = v213;
  }

  v332 = v214;
  v330 = &unk_1F50D8958;
  v333 = v215;
  v334 = v216;
  v325 = &unk_1F50D86E0;
  if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v326, v206.__r_.__value_.__l.__data_, v206.__r_.__value_.__l.__size_);
  }

  else
  {
    v326 = v206;
  }

  v327 = v207;
  v325 = &unk_1F50D89D8;
  v328 = v208;
  mediaplatform::Data::Data(&v329, __src, __n, 1);
  v321 = &unk_1F50D86E0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v322, v202.__r_.__value_.__l.__data_, v202.__r_.__value_.__l.__size_);
  }

  else
  {
    v322 = v202;
  }

  v323 = v203;
  v321 = &unk_1F50D8978;
  v324 = v204;
  v317 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v318, v198.__r_.__value_.__l.__data_, v198.__r_.__value_.__l.__size_);
  }

  else
  {
    v318 = v198;
  }

  v319 = v199;
  v317 = &unk_1F50D8978;
  v320 = v200;
  v313 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v314, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    v314 = v194;
  }

  v315 = v195;
  v313 = &unk_1F50D8978;
  v316 = v196;
  v309 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v310, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
  }

  else
  {
    v310 = v190;
  }

  v311 = v191;
  v309 = &unk_1F50D8978;
  v312 = v192;
  v304 = &unk_1F50D86E0;
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v305, v185.__r_.__value_.__l.__data_, v185.__r_.__value_.__l.__size_);
  }

  else
  {
    v305 = v185;
  }

  v306 = v186;
  v304 = &unk_1F50D89B8;
  v307 = v187;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v308, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
  }

  else
  {
    v308 = v188;
  }

  v300 = &unk_1F50D86E0;
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v301, v181.__r_.__value_.__l.__data_, v181.__r_.__value_.__l.__size_);
  }

  else
  {
    v301 = v181;
  }

  v302 = v182;
  v300 = &unk_1F50D8978;
  v303 = v183;
  v296 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v297, v177.__r_.__value_.__l.__data_, v177.__r_.__value_.__l.__size_);
  }

  else
  {
    v297 = v177;
  }

  v298 = v178;
  v296 = &unk_1F50D8978;
  v299 = v179;
  v292 = &unk_1F50D86E0;
  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v293, v173.__r_.__value_.__l.__data_, v173.__r_.__value_.__l.__size_);
  }

  else
  {
    v293 = v173;
  }

  v294 = v174;
  v292 = &unk_1F50D8978;
  v295 = v175;
  v288 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v289, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    v289 = v169;
  }

  v290 = v170;
  v288 = &unk_1F50D8978;
  v291 = v171;
  v284 = &unk_1F50D86E0;
  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v285, v165.__r_.__value_.__l.__data_, v165.__r_.__value_.__l.__size_);
  }

  else
  {
    v285 = v165;
  }

  v286 = v166;
  v284 = &unk_1F50D8978;
  v287 = v167;
  v280 = &unk_1F50D86E0;
  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v281, v161.__r_.__value_.__l.__data_, v161.__r_.__value_.__l.__size_);
  }

  else
  {
    v281 = v161;
  }

  v282 = v162;
  v280 = &unk_1F50D8978;
  v283 = v163;
  v275 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v276, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    v276 = v154;
  }

  v277 = v155;
  v275 = &unk_1F50D89D8;
  v278 = v156;
  mediaplatform::Data::Data(&v279, v159, v158, 1);
  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v272, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
  }

  else
  {
    v272 = v150;
  }

  v273 = v151;
  v271 = &unk_1F50D8978;
  v274 = v152;
  v266 = &unk_1F50D86E0;
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v267, v145.__r_.__value_.__l.__data_, v145.__r_.__value_.__l.__size_);
  }

  else
  {
    v267 = v145;
  }

  v268 = v146;
  v266 = &unk_1F50D8958;
  v269 = v147;
  v270 = v148;
  v261 = &unk_1F50D86E0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v262, v140.__r_.__value_.__l.__data_, v140.__r_.__value_.__l.__size_);
  }

  else
  {
    v262 = v140;
  }

  v263 = v141;
  v261 = &unk_1F50D8958;
  v264 = v142;
  v265 = v143;
  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v257, v135.__r_.__value_.__l.__data_, v135.__r_.__value_.__l.__size_);
  }

  else
  {
    v257 = v135;
  }

  v258 = v136;
  v256 = &unk_1F50D8958;
  v259 = v137;
  v260 = v138;
  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v253, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    v253 = v131;
  }

  v254 = v132;
  v252 = &unk_1F50D8978;
  v255 = v133;
  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v248, v126.__r_.__value_.__l.__data_, v126.__r_.__value_.__l.__size_);
  }

  else
  {
    v248 = v126;
  }

  v249 = v127;
  v247 = &unk_1F50D8958;
  v250 = v128;
  v251 = v129;
  v242 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v243, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v243 = v121;
  }

  v244 = v122;
  v242 = &unk_1F50D89B8;
  v245 = v123;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v246, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
  }

  else
  {
    v246 = v124;
  }

  v237 = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v116;
  }

  v239 = v117;
  v237 = &unk_1F50D8958;
  v240 = v118;
  v241 = v119;
  mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(a1 + 80, &v350, &v345, &v340, &v335, &v330, &v325, &v321, &v317, &v313, &v309, &v304, &v300, &v296, &v292, &v288, &v284, &v280, &v275, &v271, &v266, &v261, &v256, &v252, &v247, &v242, &v237);
  v237 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v242);
  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v248.__r_.__value_.__l.__data_);
  }

  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v253.__r_.__value_.__l.__data_);
  }

  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  v261 = &unk_1F50D86E0;
  if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v262.__r_.__value_.__l.__data_);
  }

  v266 = &unk_1F50D86E0;
  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v267.__r_.__value_.__l.__data_);
  }

  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v272.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v275);
  v280 = &unk_1F50D86E0;
  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v281.__r_.__value_.__l.__data_);
  }

  v284 = &unk_1F50D86E0;
  if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v285.__r_.__value_.__l.__data_);
  }

  v288 = &unk_1F50D86E0;
  if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v289.__r_.__value_.__l.__data_);
  }

  v292 = &unk_1F50D86E0;
  if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v293.__r_.__value_.__l.__data_);
  }

  v296 = &unk_1F50D86E0;
  if (SHIBYTE(v297.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v297.__r_.__value_.__l.__data_);
  }

  v300 = &unk_1F50D86E0;
  if (SHIBYTE(v301.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v301.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v304);
  v309 = &unk_1F50D86E0;
  if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v310.__r_.__value_.__l.__data_);
  }

  v313 = &unk_1F50D86E0;
  if (SHIBYTE(v314.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v314.__r_.__value_.__l.__data_);
  }

  v317 = &unk_1F50D86E0;
  if (SHIBYTE(v318.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v318.__r_.__value_.__l.__data_);
  }

  v321 = &unk_1F50D86E0;
  if (SHIBYTE(v322.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v322.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v325);
  v330 = &unk_1F50D86E0;
  if (SHIBYTE(v331.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v331.__r_.__value_.__l.__data_);
  }

  v335 = &unk_1F50D86E0;
  if (SHIBYTE(v336.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v336.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v340);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v345);
  v350 = &unk_1F50D86E0;
  if (SHIBYTE(v351.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v351.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v116.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v120);
  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v139 = &unk_1F50D86E0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  v144 = &unk_1F50D86E0;
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  v149 = &unk_1F50D86E0;
  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v150.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v153);
  v160 = &unk_1F50D86E0;
  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v161.__r_.__value_.__l.__data_);
  }

  v164 = &unk_1F50D86E0;
  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v165.__r_.__value_.__l.__data_);
  }

  v168 = &unk_1F50D86E0;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v169.__r_.__value_.__l.__data_);
  }

  v172 = &unk_1F50D86E0;
  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v173.__r_.__value_.__l.__data_);
  }

  v176 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v177.__r_.__value_.__l.__data_);
  }

  v180 = &unk_1F50D86E0;
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v181.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v184);
  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v198.__r_.__value_.__l.__data_);
  }

  v201 = &unk_1F50D86E0;
  if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v202.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v205);
  v212 = &unk_1F50D86E0;
  if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v213.__r_.__value_.__l.__data_);
  }

  v217 = &unk_1F50D86E0;
  if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v218.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v222);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v227);
  v232 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F50D82F0;
  *(a1 + 1456) = &unk_1F50D86E0;
  v55 = (a1 + 1464);
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v55, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v56 = *(a3 + 8);
    *(a1 + 1480) = *(a3 + 24);
    *&v55->__r_.__value_.__l.__data_ = v56;
  }

  *(a1 + 1488) = *(a3 + 32);
  *(a1 + 1456) = &unk_1F50D8958;
  v57 = *(a3 + 36);
  *(a1 + 1500) = *(a3 + 44);
  *(a1 + 1492) = v57;
  *(a1 + 1456) = &unk_1F50D7AC0;
  *(a1 + 1504) = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 1512), *(a4 + 8), *(a4 + 16));
  }

  else
  {
    v58 = *(a4 + 8);
    *(a1 + 1528) = *(a4 + 24);
    *(a1 + 1512) = v58;
  }

  *(a1 + 1536) = *(a4 + 32);
  *(a1 + 1504) = &unk_1F50D89B8;
  *(a1 + 1540) = *(a4 + 36);
  v59 = (a1 + 1544);
  if (*(a4 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v59, *(a4 + 40), *(a4 + 48));
  }

  else
  {
    v60 = *(a4 + 40);
    *(a1 + 1560) = *(a4 + 56);
    *&v59->__r_.__value_.__l.__data_ = v60;
  }

  *(a1 + 1504) = &unk_1F50D7B20;
  *(a1 + 1568) = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 1576), *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v61 = *(a5 + 8);
    *(a1 + 1592) = *(a5 + 24);
    *(a1 + 1576) = v61;
  }

  *(a1 + 1600) = *(a5 + 32);
  *(a1 + 1568) = &unk_1F50D89B8;
  *(a1 + 1604) = *(a5 + 36);
  v62 = (a1 + 1608);
  if (*(a5 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v62, *(a5 + 40), *(a5 + 48));
  }

  else
  {
    v63 = *(a5 + 40);
    *(a1 + 1624) = *(a5 + 56);
    *&v62->__r_.__value_.__l.__data_ = v63;
  }

  *(a1 + 1568) = &unk_1F50D7B20;
  *(a1 + 1632) = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 1640), *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v64 = *(a6 + 8);
    *(a1 + 1656) = *(a6 + 24);
    *(a1 + 1640) = v64;
  }

  *(a1 + 1664) = *(a6 + 32);
  *(a1 + 1632) = &unk_1F50D8958;
  v65 = *(a6 + 36);
  *(a1 + 1676) = *(a6 + 44);
  *(a1 + 1668) = v65;
  *(a1 + 1632) = &unk_1F50D7AC0;
  *(a1 + 1680) = &unk_1F50D86E0;
  v66 = (a1 + 1688);
  v67 = a7;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v66, *(a7 + 8), *(a7 + 16));
    v67 = a7;
  }

  else
  {
    v68 = *(a7 + 8);
    *(a1 + 1704) = *(a7 + 24);
    *&v66->__r_.__value_.__l.__data_ = v68;
  }

  *(a1 + 1712) = *(v67 + 32);
  *(a1 + 1680) = &unk_1F50D8958;
  v69 = *v39;
  *(a1 + 1724) = *(v39 + 2);
  *(a1 + 1716) = v69;
  *(a1 + 1680) = &unk_1F50D7AC0;
  *(a1 + 1728) = &unk_1F50D86E0;
  if (*(v114 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 1736), *(v114 + 8), *(v114 + 16));
  }

  else
  {
    v70 = *(v114 + 8);
    *(a1 + 1752) = *(v114 + 24);
    *(a1 + 1736) = v70;
  }

  *(a1 + 1760) = *(v114 + 32);
  *(a1 + 1728) = &unk_1F50D89D8;
  *(a1 + 1764) = *(v114 + 36);
  mediaplatform::Data::Data((a1 + 1768), *(v114 + 64), *(v114 + 48), 1);
  *(a1 + 1728) = &unk_1F50D7B40;
  *(a1 + 1808) = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 1816), *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v71 = *(a9 + 8);
    *(a1 + 1832) = *(a9 + 24);
    *(a1 + 1816) = v71;
  }

  *(a1 + 1840) = *(a9 + 32);
  *(a1 + 1808) = &unk_1F50D8978;
  *(a1 + 1844) = *(a9 + 36);
  *(a1 + 1808) = &unk_1F50D7AE0;
  *(a1 + 1856) = &unk_1F50D86E0;
  v72 = (a1 + 1864);
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v72, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v73 = *(a10 + 8);
    *(a1 + 1880) = *(a10 + 24);
    *&v72->__r_.__value_.__l.__data_ = v73;
  }

  *(a1 + 1888) = *(a10 + 32);
  *(a1 + 1856) = &unk_1F50D8978;
  *(a1 + 1892) = *(a10 + 36);
  *(a1 + 1856) = &unk_1F50D7AE0;
  *(a1 + 1904) = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 1912), *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v74 = *(a11 + 8);
    *(a1 + 1928) = *(a11 + 24);
    *(a1 + 1912) = v74;
  }

  *(a1 + 1936) = *(a11 + 32);
  *(a1 + 1904) = &unk_1F50D8978;
  *(a1 + 1940) = *(a11 + 36);
  *(a1 + 1904) = &unk_1F50D7AE0;
  *(a1 + 1952) = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 1960), *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v75 = *(a12 + 8);
    *(a1 + 1976) = *(a12 + 24);
    *(a1 + 1960) = v75;
  }

  *(a1 + 1984) = *(a12 + 32);
  *(a1 + 1952) = &unk_1F50D8978;
  *(a1 + 1988) = *(a12 + 36);
  *(a1 + 1952) = &unk_1F50D7AE0;
  *(a1 + 2000) = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2008), *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v76 = *(a13 + 8);
    *(a1 + 2024) = *(a13 + 24);
    *(a1 + 2008) = v76;
  }

  *(a1 + 2032) = *(a13 + 32);
  *(a1 + 2000) = &unk_1F50D89B8;
  *(a1 + 2036) = *(a13 + 36);
  v77 = (a1 + 2040);
  if (*(a13 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v77, *(a13 + 40), *(a13 + 48));
  }

  else
  {
    v78 = *(a13 + 40);
    *(a1 + 2056) = *(a13 + 56);
    *&v77->__r_.__value_.__l.__data_ = v78;
  }

  *(a1 + 2000) = &unk_1F50D7B20;
  *(a1 + 2064) = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2072), *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v79 = *(a14 + 8);
    *(a1 + 2088) = *(a14 + 24);
    *(a1 + 2072) = v79;
  }

  *(a1 + 2096) = *(a14 + 32);
  *(a1 + 2064) = &unk_1F50D8978;
  *(a1 + 2100) = *(a14 + 36);
  *(a1 + 2064) = &unk_1F50D7AE0;
  *(a1 + 2112) = &unk_1F50D86E0;
  v80 = (a1 + 2120);
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v80, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v81 = *(a15 + 8);
    *(a1 + 2136) = *(a15 + 24);
    *&v80->__r_.__value_.__l.__data_ = v81;
  }

  *(a1 + 2144) = *(a15 + 32);
  *(a1 + 2112) = &unk_1F50D8978;
  *(a1 + 2148) = *(a15 + 36);
  *(a1 + 2112) = &unk_1F50D7AE0;
  *(a1 + 2160) = &unk_1F50D86E0;
  v82 = (a1 + 2168);
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v82, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v83 = *(a16 + 8);
    *(a1 + 2184) = *(a16 + 24);
    *&v82->__r_.__value_.__l.__data_ = v83;
  }

  *(a1 + 2192) = *(a16 + 32);
  *(a1 + 2160) = &unk_1F50D8978;
  *(a1 + 2196) = *(a16 + 36);
  *(a1 + 2160) = &unk_1F50D7AE0;
  *(a1 + 2208) = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2216), *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v84 = *(a17 + 8);
    *(a1 + 2232) = *(a17 + 24);
    *(a1 + 2216) = v84;
  }

  *(a1 + 2240) = *(a17 + 32);
  *(a1 + 2208) = &unk_1F50D8978;
  *(a1 + 2244) = *(a17 + 36);
  *(a1 + 2208) = &unk_1F50D7AE0;
  *(a1 + 2256) = &unk_1F50D86E0;
  v85 = (a1 + 2264);
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v85, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v86 = *(a18 + 8);
    *(a1 + 2280) = *(a18 + 24);
    *&v85->__r_.__value_.__l.__data_ = v86;
  }

  *(a1 + 2288) = *(a18 + 32);
  *(a1 + 2256) = &unk_1F50D8978;
  *(a1 + 2292) = *(a18 + 36);
  *(a1 + 2256) = &unk_1F50D7AE0;
  *(a1 + 2304) = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2312), *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v87 = *(a19 + 8);
    *(a1 + 2328) = *(a19 + 24);
    *(a1 + 2312) = v87;
  }

  *(a1 + 2336) = *(a19 + 32);
  *(a1 + 2304) = &unk_1F50D8978;
  *(a1 + 2340) = *(a19 + 36);
  *(a1 + 2304) = &unk_1F50D7AE0;
  *(a1 + 2352) = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2360), *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v88 = *(a20 + 8);
    *(a1 + 2376) = *(a20 + 24);
    *(a1 + 2360) = v88;
  }

  *(a1 + 2384) = *(a20 + 32);
  *(a1 + 2352) = &unk_1F50D89D8;
  *(a1 + 2388) = *(a20 + 36);
  mediaplatform::Data::Data((a1 + 2392), *(a20 + 64), *(a20 + 48), 1);
  *(a1 + 2352) = &unk_1F50D7B40;
  *(a1 + 2432) = &unk_1F50D86E0;
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2440), *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v89 = *(a21 + 8);
    *(a1 + 2456) = *(a21 + 24);
    *(a1 + 2440) = v89;
  }

  *(a1 + 2464) = *(a21 + 32);
  *(a1 + 2432) = &unk_1F50D8978;
  *(a1 + 2468) = *(a21 + 36);
  *(a1 + 2432) = &unk_1F50D7AE0;
  *(a1 + 2480) = &unk_1F50D86E0;
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2488), *(a22 + 8), *(a22 + 16));
  }

  else
  {
    v90 = *(a22 + 8);
    *(a1 + 2504) = *(a22 + 24);
    *(a1 + 2488) = v90;
  }

  *(a1 + 2512) = *(a22 + 32);
  *(a1 + 2480) = &unk_1F50D8958;
  v91 = *(a22 + 36);
  *(a1 + 2524) = *(a22 + 44);
  *(a1 + 2516) = v91;
  *(a1 + 2480) = &unk_1F50D7AC0;
  *(a1 + 2528) = &unk_1F50D86E0;
  v92 = a23;
  if (*(a23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2536), *(a23 + 8), *(a23 + 16));
    v92 = a23;
  }

  else
  {
    v93 = *(a23 + 8);
    *(a1 + 2552) = *(a23 + 24);
    *(a1 + 2536) = v93;
  }

  *(a1 + 2560) = *(v92 + 32);
  *(a1 + 2528) = &unk_1F50D8958;
  v94 = *v113;
  *(a1 + 2572) = *(v113 + 2);
  *(a1 + 2564) = v94;
  *(a1 + 2528) = &unk_1F50D7AC0;
  *(a1 + 2576) = &unk_1F50D86E0;
  v95 = a24;
  if (*(a24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2584), *(a24 + 8), *(a24 + 16));
    v95 = a24;
  }

  else
  {
    v96 = *(a24 + 8);
    *(a1 + 2600) = *(a24 + 24);
    *(a1 + 2584) = v96;
  }

  *(a1 + 2608) = *(v95 + 32);
  *(a1 + 2576) = &unk_1F50D8958;
  v97 = *v47;
  *(a1 + 2620) = *(v47 + 2);
  *(a1 + 2612) = v97;
  *(a1 + 2576) = &unk_1F50D7AC0;
  *(a1 + 2624) = &unk_1F50D86E0;
  v98 = a25;
  if (*(a25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2632), *(a25 + 8), *(a25 + 16));
    v98 = a25;
  }

  else
  {
    v99 = *(a25 + 8);
    *(a1 + 2648) = *(a25 + 24);
    *(a1 + 2632) = v99;
  }

  *(a1 + 2656) = *(v98 + 32);
  *(a1 + 2624) = &unk_1F50D8978;
  *(a1 + 2660) = *(v98 + 36);
  *(a1 + 2624) = &unk_1F50D7AE0;
  *(a1 + 2672) = &unk_1F50D86E0;
  v100 = a26;
  if (*(a26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2680), *(a26 + 8), *(a26 + 16));
    v100 = a26;
  }

  else
  {
    v101 = *(a26 + 8);
    *(a1 + 2696) = *(a26 + 24);
    *(a1 + 2680) = v101;
  }

  *(a1 + 2704) = *(v100 + 32);
  *(a1 + 2672) = &unk_1F50D8958;
  v102 = *v112;
  *(a1 + 2716) = *(v112 + 2);
  *(a1 + 2708) = v102;
  *(a1 + 2672) = &unk_1F50D7AC0;
  *(a1 + 2720) = &unk_1F50D86E0;
  v103 = a27;
  if (*(a27 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 2728), *(a27 + 8), *(a27 + 16));
    v103 = a27;
  }

  else
  {
    v104 = *(a27 + 8);
    *(a1 + 2744) = *(a27 + 24);
    *(a1 + 2728) = v104;
  }

  *(a1 + 2752) = *(v103 + 32);
  *(a1 + 2720) = &unk_1F50D89B8;
  *(a1 + 2756) = *(v103 + 36);
  v105 = (a1 + 2760);
  if (*(v103 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v105, *(v103 + 40), *(v103 + 48));
  }

  else
  {
    v106 = *(v103 + 40);
    *(a1 + 2776) = *(v103 + 56);
    *&v105->__r_.__value_.__l.__data_ = v106;
  }

  *(a1 + 2720) = &unk_1F50D7B20;
  *(a1 + 2784) = &unk_1F50D86E0;
  v107 = (a1 + 2792);
  v108 = a28;
  if (*(a28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v107, *(a28 + 8), *(a28 + 16));
    v108 = a28;
  }

  else
  {
    v109 = *(a28 + 8);
    *(a1 + 2808) = *(a28 + 24);
    *&v107->__r_.__value_.__l.__data_ = v109;
  }

  *(a1 + 2816) = *(v108 + 32);
  *(a1 + 2784) = &unk_1F50D8958;
  v110 = *v54;
  *(a1 + 2828) = *(v54 + 2);
  *(a1 + 2820) = v110;
  *(a1 + 2784) = &unk_1F50D7AC0;
  return a1;
}

void sub_1D5962F38(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void **a54, uint64_t a55, void **a56, uint64_t a57, uint64_t a58, void **a59, void **a60, void **a61, void **a62, void **a63)
{
  STACK[0x298] = a1;
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(v75);
  *(v72 + 2672) = v79;
  if (*(v72 + 2703) < 0)
  {
    operator delete(*v74);
  }

  *(v72 + 2624) = v78;
  if (*(v72 + 2655) < 0)
  {
    operator delete(*v73);
  }

  *(v72 + 2576) = STACK[0x2A0];
  if (*(v72 + 2607) < 0)
  {
    operator delete(*v77);
  }

  *(v72 + 2528) = a55;
  if (*(v72 + 2559) < 0)
  {
    operator delete(*v76);
  }

  *(v72 + 2480) = STACK[0x2B0];
  if (*(v72 + 2511) < 0)
  {
    operator delete(*a54);
  }

  *(v72 + 2432) = a57;
  if (*(v72 + 2463) < 0)
  {
    operator delete(*a56);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a58);
  *(v72 + 2304) = a64;
  if (*(v72 + 2335) < 0)
  {
    operator delete(*a59);
  }

  *(v72 + 2256) = a66;
  if (*(v72 + 2287) < 0)
  {
    operator delete(*a60);
  }

  *(v72 + 2208) = a67;
  if (*(v72 + 2239) < 0)
  {
    operator delete(*a61);
  }

  *(v72 + 2160) = a69;
  if (*(v72 + 2191) < 0)
  {
    operator delete(*a62);
  }

  *(v72 + 2112) = a71;
  if (*(v72 + 2143) < 0)
  {
    operator delete(*a63);
  }

  *(v72 + 2064) = STACK[0x208];
  if (*(v72 + 2095) < 0)
  {
    operator delete(*a65);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x210]);
  *(v72 + 1952) = STACK[0x218];
  if (*(v72 + 1983) < 0)
  {
    operator delete(*a68);
  }

  *(v72 + 1904) = STACK[0x230];
  if (*(v72 + 1935) < 0)
  {
    operator delete(*a70);
  }

  *(v72 + 1856) = STACK[0x238];
  if (*(v72 + 1887) < 0)
  {
    operator delete(*a72);
  }

  *(v72 + 1808) = STACK[0x240];
  if (*(v72 + 1839) < 0)
  {
    operator delete(*STACK[0x200]);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(STACK[0x2A8]);
  *(v72 + 1680) = STACK[0x250];
  if (*(v72 + 1711) < 0)
  {
    operator delete(*STACK[0x220]);
  }

  *(v72 + 1632) = STACK[0x258];
  if (*(v72 + 1663) < 0)
  {
    operator delete(*STACK[0x228]);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x260]);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(STACK[0x268]);
  *(v72 + 1456) = STACK[0x270];
  if (*(v72 + 1487) < 0)
  {
    operator delete(*STACK[0x248]);
  }

  mediaplatform::DatabaseTable<long long,std::string,std::string,long long,long long,mediaplatform::Data,int,int,int,int,std::string,int,int,int,int,int,int,mediaplatform::Data,int,long long,long long,long long,int,long long,std::string,long long>::~DatabaseTable(v72);
  _Unwind_Resume(STACK[0x298]);
}

void sub_1D596398C(unint64_t a1)
{
  STACK[0x298] = a1;
  STACK[0x9A8] = v1;
  if (SLOBYTE(STACK[0x9C7]) < 0)
  {
    operator delete(STACK[0x9B0]);
  }

  JUMPOUT(0x1D5963600);
}

void sub_1D59639A8(unint64_t a1)
{
  STACK[0x298] = a1;
  STACK[0xC18] = v1;
  if (SLOBYTE(STACK[0xC37]) < 0)
  {
    operator delete(STACK[0xC20]);
  }

  JUMPOUT(0x1D5963700);
}

void sub_1D59639CC(unint64_t a1)
{
  STACK[0x298] = a1;
  STACK[0x448] = v1;
  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  JUMPOUT(0x1D596382CLL);
}

void sub_1D59639E8(unint64_t a1)
{
  STACK[0x298] = a1;
  STACK[0x6B8] = v1;
  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  JUMPOUT(0x1D596392CLL);
}

void sub_1D5963A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mediaplatform::DatabaseTable<long long,std::string,std::string,long long,long long,mediaplatform::Data,int,int,int,int,std::string,int,int,int,int,int,int,mediaplatform::Data,int,long long,long long,long long,int,long long,std::string,long long>::columnNames(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1408);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 1344);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 1280);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1232);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 1184);
  mediaplatform::ColumnNamesApplier::operator()<mediaplatform::Data>(a2, a1 + 1104);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 1056);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 1008);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 960);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 912);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 848);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 800);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 752);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 704);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 656);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 608);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 560);
  mediaplatform::ColumnNamesApplier::operator()<mediaplatform::Data>(a2, a1 + 480);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 432);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 384);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 336);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 288);
  mediaplatform::ColumnNamesApplier::operator()<int>(a2, a1 + 240);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 192);
  mediaplatform::ColumnNamesApplier::operator()<std::string>(a2, a1 + 128);
  mediaplatform::ColumnNamesApplier::operator()<long long>(a2, a1 + 80);
}

void sub_1D5963C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void mlcore::AlbumTable::~AlbumTable(mlcore::AlbumTable *this)
{
  *this = &unk_1F50D82F0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>>::~__tuple_impl(this + 1456);
  mediaplatform::DatabaseTable<long long,std::string,std::string,long long,long long,mediaplatform::Data,int,int,int,int,std::string,int,int,int,int,int,int,mediaplatform::Data,int,long long,long long,long long,int,long long,std::string,long long>::~DatabaseTable(this);

  JUMPOUT(0x1DA6EDD40);
}

{
  *this = &unk_1F50D82F0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>>::~__tuple_impl(this + 1456);

  mediaplatform::DatabaseTable<long long,std::string,std::string,long long,long long,mediaplatform::Data,int,int,int,int,std::string,int,int,int,int,int,int,mediaplatform::Data,int,long long,long long,long long,int,long long,std::string,long long>::~DatabaseTable(this);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>>::~__tuple_impl(uint64_t a1)
{
  *(a1 + 1328) = &unk_1F50D86E0;
  if (*(a1 + 1359) < 0)
  {
    operator delete(*(a1 + 1336));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 1264);
  *(a1 + 1216) = &unk_1F50D86E0;
  if (*(a1 + 1247) < 0)
  {
    operator delete(*(a1 + 1224));
  }

  *(a1 + 1168) = &unk_1F50D86E0;
  if (*(a1 + 1199) < 0)
  {
    operator delete(*(a1 + 1176));
  }

  *(a1 + 1120) = &unk_1F50D86E0;
  if (*(a1 + 1151) < 0)
  {
    operator delete(*(a1 + 1128));
  }

  *(a1 + 1072) = &unk_1F50D86E0;
  if (*(a1 + 1103) < 0)
  {
    operator delete(*(a1 + 1080));
  }

  *(a1 + 1024) = &unk_1F50D86E0;
  if (*(a1 + 1055) < 0)
  {
    operator delete(*(a1 + 1032));
  }

  *(a1 + 976) = &unk_1F50D86E0;
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 896);
  *(a1 + 848) = &unk_1F50D86E0;
  if (*(a1 + 879) < 0)
  {
    operator delete(*(a1 + 856));
  }

  *(a1 + 800) = &unk_1F50D86E0;
  if (*(a1 + 831) < 0)
  {
    operator delete(*(a1 + 808));
  }

  *(a1 + 752) = &unk_1F50D86E0;
  if (*(a1 + 783) < 0)
  {
    operator delete(*(a1 + 760));
  }

  *(a1 + 704) = &unk_1F50D86E0;
  if (*(a1 + 735) < 0)
  {
    operator delete(*(a1 + 712));
  }

  *(a1 + 656) = &unk_1F50D86E0;
  if (*(a1 + 687) < 0)
  {
    operator delete(*(a1 + 664));
  }

  *(a1 + 608) = &unk_1F50D86E0;
  if (*(a1 + 639) < 0)
  {
    operator delete(*(a1 + 616));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 544);
  *(a1 + 496) = &unk_1F50D86E0;
  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  *(a1 + 448) = &unk_1F50D86E0;
  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  *(a1 + 400) = &unk_1F50D86E0;
  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  *(a1 + 352) = &unk_1F50D86E0;
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 272);
  *(a1 + 224) = &unk_1F50D86E0;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  *(a1 + 176) = &unk_1F50D86E0;
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 112);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 48);
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mediaplatform::DatabaseTable<long long,std::string,std::string,long long,long long,mediaplatform::Data,int,int,int,int,std::string,int,int,int,int,int,int,mediaplatform::Data,int,long long,long long,long long,int,long long,std::string,long long>::~DatabaseTable(uint64_t a1)
{
  *a1 = &unk_1F50D8D40;
  *(a1 + 1408) = &unk_1F50D86E0;
  if (*(a1 + 1439) < 0)
  {
    operator delete(*(a1 + 1416));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 1344);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 1280);
  *(a1 + 1232) = &unk_1F50D86E0;
  if (*(a1 + 1263) < 0)
  {
    operator delete(*(a1 + 1240));
  }

  *(a1 + 1184) = &unk_1F50D86E0;
  if (*(a1 + 1215) < 0)
  {
    operator delete(*(a1 + 1192));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 1104);
  *(a1 + 1056) = &unk_1F50D86E0;
  if (*(a1 + 1087) < 0)
  {
    operator delete(*(a1 + 1064));
  }

  mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  mediaplatform::DatabaseTableBase::~DatabaseTableBase(a1);
}

{
  mediaplatform::DatabaseTable<long long,std::string,std::string,long long,long long,mediaplatform::Data,int,int,int,int,std::string,int,int,int,int,int,int,mediaplatform::Data,int,long long,long long,long long,int,long long,std::string,long long>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

uint64_t mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 928) = &unk_1F50D86E0;
  if (*(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
  }

  *(a1 + 880) = &unk_1F50D86E0;
  if (*(a1 + 911) < 0)
  {
    operator delete(*(a1 + 888));
  }

  *(a1 + 832) = &unk_1F50D86E0;
  if (*(a1 + 863) < 0)
  {
    operator delete(*(a1 + 840));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 768);
  *(a1 + 720) = &unk_1F50D86E0;
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  return mediaplatform::DatabaseColumnTuple<16ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<16ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 480) = &unk_1F50D86E0;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 400);
  *(a1 + 352) = &unk_1F50D86E0;
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  *(a1 + 304) = &unk_1F50D86E0;
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  *(a1 + 256) = &unk_1F50D86E0;
  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  *(a1 + 208) = &unk_1F50D86E0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  *(a1 + 160) = &unk_1F50D86E0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  *(a1 + 112) = &unk_1F50D86E0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 48);
  *a1 = &unk_1F50D86E0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void mlcore::MediaTable<long long,std::string,std::string,long long,long long,mediaplatform::Data,int,int,int,int,std::string,int,int,int,int,int,int,mediaplatform::Data,int,long long,long long,long long,int,long long,std::string,long long>::~MediaTable(void *a1)
{
  *a1 = &unk_1F50D82F0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>>::~__tuple_impl((a1 + 182));
  mediaplatform::DatabaseTable<long long,std::string,std::string,long long,long long,mediaplatform::Data,int,int,int,int,std::string,int,int,int,int,int,int,mediaplatform::Data,int,long long,long long,long long,int,long long,std::string,long long>::~DatabaseTable(a1);

  JUMPOUT(0x1DA6EDD40);
}

{
  *a1 = &unk_1F50D82F0;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<int>,mlcore::MediaColumn<mediaplatform::Data>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<int>,mlcore::MediaColumn<long long>,mlcore::MediaColumn<std::string>,mlcore::MediaColumn<long long>>::~__tuple_impl((a1 + 182));

  mediaplatform::DatabaseTable<long long,std::string,std::string,long long,long long,mediaplatform::Data,int,int,int,int,std::string,int,int,int,int,int,int,mediaplatform::Data,int,long long,long long,long long,int,long long,std::string,long long>::~DatabaseTable(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<0ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27 = MEMORY[0x1EEE9AC00](a1);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v28;
  v41 = v40;
  v42 = v27;
  v160 = &unk_1F50D86E0;
  if (*(v28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v161, *(v28 + 8), *(v28 + 16));
  }

  else
  {
    v161 = *(v28 + 8);
  }

  v162 = *(v39 + 32);
  v160 = &unk_1F50D89B8;
  v163 = *(v39 + 36);
  if (*(v39 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v164, *(v39 + 40), *(v39 + 48));
  }

  else
  {
    v164 = *(v39 + 40);
  }

  v155 = &unk_1F50D86E0;
  if (*(v38 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(v38 + 8), *(v38 + 16));
  }

  else
  {
    __s = *(v38 + 8);
  }

  v157 = *(v38 + 32);
  v155 = &unk_1F50D89B8;
  v158 = *(v38 + 36);
  if (*(v38 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, *(v38 + 40), *(v38 + 48));
  }

  else
  {
    v159 = *(v38 + 40);
  }

  v150 = &unk_1F50D86E0;
  if (*(v36 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v151, *(v36 + 8), *(v36 + 16));
  }

  else
  {
    v151 = *(v36 + 8);
  }

  v152 = *(v36 + 32);
  v150 = &unk_1F50D8958;
  v153 = *(v36 + 36);
  v154 = *(v36 + 44);
  v145 = &unk_1F50D86E0;
  if (*(v34 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, *(v34 + 8), *(v34 + 16));
  }

  else
  {
    v146 = *(v34 + 8);
  }

  v147 = *(v34 + 32);
  v145 = &unk_1F50D8958;
  v148 = *(v34 + 36);
  v149 = *(v34 + 44);
  v138 = &unk_1F50D86E0;
  if (*(v32 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, *(v32 + 8), *(v32 + 16));
  }

  else
  {
    v139 = *(v32 + 8);
  }

  v140 = *(v32 + 32);
  v138 = &unk_1F50D89D8;
  v141 = *(v32 + 36);
  mediaplatform::Data::Data(&v142, *(v32 + 64), *(v32 + 48), 1);
  v134 = &unk_1F50D86E0;
  if (*(v30 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, *(v30 + 8), *(v30 + 16));
  }

  else
  {
    v135 = *(v30 + 8);
  }

  v136 = *(v30 + 32);
  v134 = &unk_1F50D8978;
  v137 = *(v30 + 36);
  v130 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v131 = *(a9 + 8);
  }

  v132 = *(a9 + 32);
  v130 = &unk_1F50D8978;
  v133 = *(a9 + 36);
  v126 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v127, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v127 = *(a10 + 8);
  }

  v128 = *(a10 + 32);
  v126 = &unk_1F50D8978;
  v129 = *(a10 + 36);
  v122 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v123 = *(a11 + 8);
  }

  v124 = *(a11 + 32);
  v122 = &unk_1F50D8978;
  v125 = *(a11 + 36);
  v117 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v118, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v118 = *(a12 + 8);
  }

  v119 = *(a12 + 32);
  v117 = &unk_1F50D89B8;
  v120 = *(a12 + 36);
  if (*(a12 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, *(a12 + 40), *(a12 + 48));
  }

  else
  {
    v121 = *(a12 + 40);
  }

  v113 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v114, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v114 = *(a13 + 8);
  }

  v115 = *(a13 + 32);
  v113 = &unk_1F50D8978;
  v116 = *(a13 + 36);
  v109 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v110 = *(a14 + 8);
  }

  v111 = *(a14 + 32);
  v109 = &unk_1F50D8978;
  v112 = *(a14 + 36);
  v105 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v106 = *(a15 + 8);
  }

  v107 = *(a15 + 32);
  v105 = &unk_1F50D8978;
  v108 = *(a15 + 36);
  v101 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v102 = *(a16 + 8);
  }

  v103 = *(a16 + 32);
  v101 = &unk_1F50D8978;
  v104 = *(a16 + 36);
  v97 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v98 = *(a17 + 8);
  }

  v99 = *(a17 + 32);
  v97 = &unk_1F50D8978;
  v100 = *(a17 + 36);
  v93 = &unk_1F50D86E0;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v94 = *(a18 + 8);
  }

  v95 = *(a18 + 32);
  v93 = &unk_1F50D8978;
  v96 = *(a18 + 36);
  v86 = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v87, *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v87 = *(a19 + 8);
  }

  v88 = *(a19 + 32);
  v86 = &unk_1F50D89D8;
  v89 = *(a19 + 36);
  mediaplatform::Data::Data(&v90, *(a19 + 64), *(a19 + 48), 1);
  v82 = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v83, *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v83 = *(a20 + 8);
  }

  v84 = *(a20 + 32);
  v82 = &unk_1F50D8978;
  v85 = *(a20 + 36);
  v77 = &unk_1F50D86E0;
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v78, *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v78 = *(a21 + 8);
  }

  v79 = *(a21 + 32);
  v77 = &unk_1F50D8958;
  v80 = *(a21 + 36);
  v81 = *(a21 + 44);
  v72 = &unk_1F50D86E0;
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v73, *(a22 + 8), *(a22 + 16));
  }

  else
  {
    v73 = *(a22 + 8);
  }

  v74 = *(a22 + 32);
  v72 = &unk_1F50D8958;
  v75 = *(a22 + 36);
  v76 = *(a22 + 44);
  v67 = &unk_1F50D86E0;
  if (*(a23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, *(a23 + 8), *(a23 + 16));
  }

  else
  {
    v68 = *(a23 + 8);
  }

  v69 = *(a23 + 32);
  v67 = &unk_1F50D8958;
  v70 = *(a23 + 36);
  v71 = *(a23 + 44);
  v63 = &unk_1F50D86E0;
  if (*(a24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, *(a24 + 8), *(a24 + 16));
  }

  else
  {
    v64 = *(a24 + 8);
  }

  v65 = *(a24 + 32);
  v63 = &unk_1F50D8978;
  v66 = *(a24 + 36);
  v58 = &unk_1F50D86E0;
  if (*(a25 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, *(a25 + 8), *(a25 + 16));
  }

  else
  {
    v59 = *(a25 + 8);
  }

  v60 = *(a25 + 32);
  v58 = &unk_1F50D8958;
  v61 = *(a25 + 36);
  v62 = *(a25 + 44);
  v53 = &unk_1F50D86E0;
  if (*(a26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, *(a26 + 8), *(a26 + 16));
  }

  else
  {
    v54 = *(a26 + 8);
  }

  v55 = *(a26 + 32);
  v53 = &unk_1F50D89B8;
  v56 = *(a26 + 36);
  if (*(a26 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, *(a26 + 40), *(a26 + 48));
  }

  else
  {
    v57 = *(a26 + 40);
  }

  if (*(a27 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *(a27 + 8), *(a27 + 16));
  }

  else
  {
    v49 = *(a27 + 8);
  }

  v50 = *(a27 + 32);
  v51 = *(a27 + 36);
  v52 = *(a27 + 44);
  v272 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v273, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v273 = __s;
  }

  v274 = v157;
  v272 = &unk_1F50D89B8;
  v275 = v158;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v276, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v276 = v159;
  }

  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v268, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_);
  }

  else
  {
    v268 = v151;
  }

  v269 = v152;
  v267 = &unk_1F50D8958;
  v270 = v153;
  v271 = v154;
  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v263, v146.__r_.__value_.__l.__data_, v146.__r_.__value_.__l.__size_);
  }

  else
  {
    v263 = v146;
  }

  v264 = v147;
  v262 = &unk_1F50D8958;
  v265 = v148;
  v266 = v149;
  v255 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v256, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v256 = v139;
  }

  v257 = v140;
  v255 = &unk_1F50D89D8;
  v258 = v141;
  mediaplatform::Data::Data(&v259, __src, __n, 1);
  v251 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v252, v135.__r_.__value_.__l.__data_, v135.__r_.__value_.__l.__size_);
  }

  else
  {
    v252 = v135;
  }

  v253 = v136;
  v251 = &unk_1F50D8978;
  v254 = v137;
  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v248, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    v248 = v131;
  }

  v249 = v132;
  v247 = &unk_1F50D8978;
  v250 = v133;
  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v244, v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_);
  }

  else
  {
    v244 = v127;
  }

  v245 = v128;
  v243 = &unk_1F50D8978;
  v246 = v129;
  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v240, v123.__r_.__value_.__l.__data_, v123.__r_.__value_.__l.__size_);
  }

  else
  {
    v240 = v123;
  }

  v241 = v124;
  v239 = &unk_1F50D8978;
  v242 = v125;
  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v118.__r_.__value_.__l.__data_, v118.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v118;
  }

  v236 = v119;
  v234 = &unk_1F50D89B8;
  v237 = v120;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v238, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v238 = v121;
  }

  v230 = &unk_1F50D86E0;
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v231, v114.__r_.__value_.__l.__data_, v114.__r_.__value_.__l.__size_);
  }

  else
  {
    v231 = v114;
  }

  v232 = v115;
  v230 = &unk_1F50D8978;
  v233 = v116;
  v226 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v227, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
  }

  else
  {
    v227 = v110;
  }

  v228 = v111;
  v226 = &unk_1F50D8978;
  v229 = v112;
  v222 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v223, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v223 = v106;
  }

  v224 = v107;
  v222 = &unk_1F50D8978;
  v225 = v108;
  v218 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v219, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v219 = v102;
  }

  v220 = v103;
  v218 = &unk_1F50D8978;
  v221 = v104;
  v214 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v215, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v215 = v98;
  }

  v216 = v99;
  v214 = &unk_1F50D8978;
  v217 = v100;
  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v94;
  }

  v212 = v95;
  v210 = &unk_1F50D8978;
  v213 = v96;
  v203 = &unk_1F50D86E0;
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v204, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
  }

  else
  {
    v204 = v87;
  }

  v205 = v88;
  v203 = &unk_1F50D89D8;
  v206 = v89;
  mediaplatform::Data::Data(&v207, v92, v91, 1);
  v199 = &unk_1F50D86E0;
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v200, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
  }

  else
  {
    v200 = v83;
  }

  v201 = v84;
  v199 = &unk_1F50D8978;
  v202 = v85;
  v194 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v195, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v195 = v78;
  }

  v196 = v79;
  v194 = &unk_1F50D8958;
  v197 = v80;
  v198 = v81;
  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v73;
  }

  v191 = v74;
  v189 = &unk_1F50D8958;
  v192 = v75;
  v193 = v76;
  v184 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v185, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v185 = v68;
  }

  v186 = v69;
  v184 = &unk_1F50D8958;
  v187 = v70;
  v188 = v71;
  v180 = &unk_1F50D86E0;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v181, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v181 = v64;
  }

  v182 = v65;
  v180 = &unk_1F50D8978;
  v183 = v66;
  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v176, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v176 = v59;
  }

  v177 = v60;
  v175 = &unk_1F50D8958;
  v178 = v61;
  v179 = v62;
  v170 = &unk_1F50D86E0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v171, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    v171 = v54;
  }

  v172 = v55;
  v170 = &unk_1F50D89B8;
  v173 = v56;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v174 = v57;
  }

  v165 = &unk_1F50D86E0;
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v166, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v166 = v49;
  }

  v167 = v50;
  v165 = &unk_1F50D8958;
  v168 = v51;
  v169 = v52;
  v375 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v376, v268.__r_.__value_.__l.__data_, v268.__r_.__value_.__l.__size_);
  }

  else
  {
    v376 = v268;
  }

  v377 = v269;
  v375 = &unk_1F50D8958;
  v378 = v270;
  v379 = v271;
  v370 = &unk_1F50D86E0;
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v371, v263.__r_.__value_.__l.__data_, v263.__r_.__value_.__l.__size_);
  }

  else
  {
    v371 = v263;
  }

  v372 = v264;
  v370 = &unk_1F50D8958;
  v373 = v265;
  v374 = v266;
  v365 = &unk_1F50D86E0;
  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v366, v256.__r_.__value_.__l.__data_, v256.__r_.__value_.__l.__size_);
  }

  else
  {
    v366 = v256;
  }

  v367 = v257;
  v365 = &unk_1F50D89D8;
  v368 = v258;
  mediaplatform::Data::Data(&v369, v261, v260, 1);
  v361 = &unk_1F50D86E0;
  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v362, v252.__r_.__value_.__l.__data_, v252.__r_.__value_.__l.__size_);
  }

  else
  {
    v362 = v252;
  }

  v363 = v253;
  v361 = &unk_1F50D8978;
  v364 = v254;
  v357 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v358, v248.__r_.__value_.__l.__data_, v248.__r_.__value_.__l.__size_);
  }

  else
  {
    v358 = v248;
  }

  v359 = v249;
  v357 = &unk_1F50D8978;
  v360 = v250;
  v353 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v354, v244.__r_.__value_.__l.__data_, v244.__r_.__value_.__l.__size_);
  }

  else
  {
    v354 = v244;
  }

  v355 = v245;
  v353 = &unk_1F50D8978;
  v356 = v246;
  v349 = &unk_1F50D86E0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v350, v240.__r_.__value_.__l.__data_, v240.__r_.__value_.__l.__size_);
  }

  else
  {
    v350 = v240;
  }

  v351 = v241;
  v349 = &unk_1F50D8978;
  v352 = v242;
  v344 = &unk_1F50D86E0;
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v345, v235.__r_.__value_.__l.__data_, v235.__r_.__value_.__l.__size_);
  }

  else
  {
    v345 = v235;
  }

  v346 = v236;
  v344 = &unk_1F50D89B8;
  v347 = v237;
  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v348, v238.__r_.__value_.__l.__data_, v238.__r_.__value_.__l.__size_);
  }

  else
  {
    v348 = v238;
  }

  v340 = &unk_1F50D86E0;
  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v341, v231.__r_.__value_.__l.__data_, v231.__r_.__value_.__l.__size_);
  }

  else
  {
    v341 = v231;
  }

  v342 = v232;
  v340 = &unk_1F50D8978;
  v343 = v233;
  v336 = &unk_1F50D86E0;
  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v337, v227.__r_.__value_.__l.__data_, v227.__r_.__value_.__l.__size_);
  }

  else
  {
    v337 = v227;
  }

  v338 = v228;
  v336 = &unk_1F50D8978;
  v339 = v229;
  v332 = &unk_1F50D86E0;
  if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v333, v223.__r_.__value_.__l.__data_, v223.__r_.__value_.__l.__size_);
  }

  else
  {
    v333 = v223;
  }

  v334 = v224;
  v332 = &unk_1F50D8978;
  v335 = v225;
  v328 = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v329, v219.__r_.__value_.__l.__data_, v219.__r_.__value_.__l.__size_);
  }

  else
  {
    v329 = v219;
  }

  v330 = v220;
  v328 = &unk_1F50D8978;
  v331 = v221;
  v324 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v325, v215.__r_.__value_.__l.__data_, v215.__r_.__value_.__l.__size_);
  }

  else
  {
    v325 = v215;
  }

  v326 = v216;
  v324 = &unk_1F50D8978;
  v327 = v217;
  v320 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v321, v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
  }

  else
  {
    v321 = v211;
  }

  v322 = v212;
  v320 = &unk_1F50D8978;
  v323 = v213;
  v315 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v316, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
  }

  else
  {
    v316 = v204;
  }

  v317 = v205;
  v315 = &unk_1F50D89D8;
  v318 = v206;
  mediaplatform::Data::Data(&v319, v209, v208, 1);
  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v312, v200.__r_.__value_.__l.__data_, v200.__r_.__value_.__l.__size_);
  }

  else
  {
    v312 = v200;
  }

  v313 = v201;
  v311 = &unk_1F50D8978;
  v314 = v202;
  v306 = &unk_1F50D86E0;
  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v307, v195.__r_.__value_.__l.__data_, v195.__r_.__value_.__l.__size_);
  }

  else
  {
    v307 = v195;
  }

  v308 = v196;
  v306 = &unk_1F50D8958;
  v309 = v197;
  v310 = v198;
  v301 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v302, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
  }

  else
  {
    v302 = v190;
  }

  v303 = v191;
  v301 = &unk_1F50D8958;
  v304 = v192;
  v305 = v193;
  v296 = &unk_1F50D86E0;
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v297, v185.__r_.__value_.__l.__data_, v185.__r_.__value_.__l.__size_);
  }

  else
  {
    v297 = v185;
  }

  v298 = v186;
  v296 = &unk_1F50D8958;
  v299 = v187;
  v300 = v188;
  v292 = &unk_1F50D86E0;
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v293, v181.__r_.__value_.__l.__data_, v181.__r_.__value_.__l.__size_);
  }

  else
  {
    v293 = v181;
  }

  v294 = v182;
  v292 = &unk_1F50D8978;
  v295 = v183;
  v287 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v288, v176.__r_.__value_.__l.__data_, v176.__r_.__value_.__l.__size_);
  }

  else
  {
    v288 = v176;
  }

  v289 = v177;
  v287 = &unk_1F50D8958;
  v290 = v178;
  v291 = v179;
  v282 = &unk_1F50D86E0;
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v283, v171.__r_.__value_.__l.__data_, v171.__r_.__value_.__l.__size_);
  }

  else
  {
    v283 = v171;
  }

  v284 = v172;
  v282 = &unk_1F50D89B8;
  v285 = v173;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v286, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  }

  else
  {
    v286 = v174;
  }

  v277 = &unk_1F50D86E0;
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v166.__r_.__value_.__l.__data_, v166.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v166;
  }

  v279 = v167;
  v277 = &unk_1F50D8958;
  v280 = v168;
  v281 = v169;
  mediaplatform::DatabaseColumnTuple<3ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(v42, &v375, &v370, &v365, &v361, &v357, &v353, &v349, &v344, &v340, &v336, &v332, &v328, &v324, &v320, &v315, &v311, &v306, &v301, &v296, &v292, &v287, &v282, &v277);
  v277 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v282);
  v287 = &unk_1F50D86E0;
  if (SHIBYTE(v288.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v288.__r_.__value_.__l.__data_);
  }

  v292 = &unk_1F50D86E0;
  if (SHIBYTE(v293.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v293.__r_.__value_.__l.__data_);
  }

  v296 = &unk_1F50D86E0;
  if (SHIBYTE(v297.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v297.__r_.__value_.__l.__data_);
  }

  v301 = &unk_1F50D86E0;
  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v302.__r_.__value_.__l.__data_);
  }

  v306 = &unk_1F50D86E0;
  if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v307.__r_.__value_.__l.__data_);
  }

  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v312.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v315);
  v320 = &unk_1F50D86E0;
  if (SHIBYTE(v321.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v321.__r_.__value_.__l.__data_);
  }

  v324 = &unk_1F50D86E0;
  if (SHIBYTE(v325.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v325.__r_.__value_.__l.__data_);
  }

  v328 = &unk_1F50D86E0;
  if (SHIBYTE(v329.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v329.__r_.__value_.__l.__data_);
  }

  v332 = &unk_1F50D86E0;
  if (SHIBYTE(v333.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v333.__r_.__value_.__l.__data_);
  }

  v336 = &unk_1F50D86E0;
  if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v337.__r_.__value_.__l.__data_);
  }

  v340 = &unk_1F50D86E0;
  if (SHIBYTE(v341.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v341.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v344);
  v349 = &unk_1F50D86E0;
  if (SHIBYTE(v350.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v350.__r_.__value_.__l.__data_);
  }

  v353 = &unk_1F50D86E0;
  if (SHIBYTE(v354.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v354.__r_.__value_.__l.__data_);
  }

  v357 = &unk_1F50D86E0;
  if (SHIBYTE(v358.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v358.__r_.__value_.__l.__data_);
  }

  v361 = &unk_1F50D86E0;
  if (SHIBYTE(v362.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v362.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v365);
  v370 = &unk_1F50D86E0;
  if (SHIBYTE(v371.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v371.__r_.__value_.__l.__data_);
  }

  v375 = &unk_1F50D86E0;
  if (SHIBYTE(v376.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v376.__r_.__value_.__l.__data_);
  }

  *(v42 + 1200) = &unk_1F50D86E0;
  if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v42 + 1208), v273.__r_.__value_.__l.__data_, v273.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v42 + 1208) = v273;
  }

  *(v42 + 1232) = v274;
  *(v42 + 1200) = &unk_1F50D89B8;
  *(v42 + 1236) = v275;
  v43 = (v42 + 1240);
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v43, v276.__r_.__value_.__l.__data_, v276.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v43->__r_.__value_.__l.__data_ = *&v276.__r_.__value_.__l.__data_;
    *(v42 + 1256) = *(&v276.__r_.__value_.__l + 2);
  }

  v165 = &unk_1F50D86E0;
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v166.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v170);
  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  v180 = &unk_1F50D86E0;
  if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v181.__r_.__value_.__l.__data_);
  }

  v184 = &unk_1F50D86E0;
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v185.__r_.__value_.__l.__data_);
  }

  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  v194 = &unk_1F50D86E0;
  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v195.__r_.__value_.__l.__data_);
  }

  v199 = &unk_1F50D86E0;
  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v200.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v203);
  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  v214 = &unk_1F50D86E0;
  if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v215.__r_.__value_.__l.__data_);
  }

  v218 = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v219.__r_.__value_.__l.__data_);
  }

  v222 = &unk_1F50D86E0;
  if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v223.__r_.__value_.__l.__data_);
  }

  v226 = &unk_1F50D86E0;
  if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v227.__r_.__value_.__l.__data_);
  }

  v230 = &unk_1F50D86E0;
  if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v231.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v234);
  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  v243 = &unk_1F50D86E0;
  if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v244.__r_.__value_.__l.__data_);
  }

  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v248.__r_.__value_.__l.__data_);
  }

  v251 = &unk_1F50D86E0;
  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v255);
  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v268.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v272);
  *(v42 + 1264) = &unk_1F50D86E0;
  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v42 + 1272), v161.__r_.__value_.__l.__data_, v161.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v42 + 1272) = v161;
  }

  *(v42 + 1296) = v162;
  *(v42 + 1264) = &unk_1F50D89B8;
  *(v42 + 1300) = v163;
  v44 = (v42 + 1304);
  if (SHIBYTE(v164.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v44, v164.__r_.__value_.__l.__data_, v164.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v44->__r_.__value_.__l.__data_ = *&v164.__r_.__value_.__l.__data_;
    *(v42 + 1320) = *(&v164.__r_.__value_.__l + 2);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v53);
  v58 = &unk_1F50D86E0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  v63 = &unk_1F50D86E0;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  v67 = &unk_1F50D86E0;
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  v72 = &unk_1F50D86E0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v77 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v82 = &unk_1F50D86E0;
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v86);
  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v97 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  v105 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  v109 = &unk_1F50D86E0;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  v113 = &unk_1F50D86E0;
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v117);
  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  v126 = &unk_1F50D86E0;
  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  v134 = &unk_1F50D86E0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v138);
  v145 = &unk_1F50D86E0;
  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v155);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v160);
  *(v42 + 1328) = &unk_1F50D86E0;
  v45 = (v42 + 1336);
  if (*(v41 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v45, *(v41 + 8), *(v41 + 16));
  }

  else
  {
    v46 = *(v41 + 8);
    *(v42 + 1352) = *(v41 + 24);
    *&v45->__r_.__value_.__l.__data_ = v46;
  }

  *(v42 + 1360) = *(v41 + 32);
  *(v42 + 1328) = &unk_1F50D8958;
  v47 = *(v41 + 36);
  *(v42 + 1372) = *(v41 + 44);
  *(v42 + 1364) = v47;
  return v42;
}

void sub_1D59680BC()
{
  STACK[0xDC8] = v0;
  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(STACK[0xDD0]);
  }

  JUMPOUT(0x1D5967B98);
}

void sub_1D59680D8()
{
  STACK[0x1038] = v0;
  if (SLOBYTE(STACK[0x1057]) < 0)
  {
    operator delete(STACK[0x1040]);
  }

  JUMPOUT(0x1D5967C9CLL);
}

void sub_1D59680F8()
{
  STACK[0x8D8] = v0;
  if (SLOBYTE(STACK[0x8F7]) < 0)
  {
    operator delete(STACK[0x8E0]);
  }

  JUMPOUT(0x1D5967D84);
}

void sub_1D5968114()
{
  STACK[0xB48] = v0;
  if (SLOBYTE(STACK[0xB67]) < 0)
  {
    operator delete(STACK[0xB50]);
  }

  JUMPOUT(0x1D5967E84);
}

void sub_1D5968130()
{
  STACK[0x3A8] = v0;
  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  JUMPOUT(0x1D5967F74);
}

void sub_1D596814C()
{
  STACK[0x618] = v0;
  if (SLOBYTE(STACK[0x637]) < 0)
  {
    operator delete(STACK[0x620]);
  }

  JUMPOUT(0x1D5968074);
}

uint64_t mediaplatform::DatabaseColumnTuple<1ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 1264);
  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 1200);
  *(a1 + 1152) = &unk_1F50D86E0;
  if (*(a1 + 1183) < 0)
  {
    operator delete(*(a1 + 1160));
  }

  *(a1 + 1104) = &unk_1F50D86E0;
  if (*(a1 + 1135) < 0)
  {
    operator delete(*(a1 + 1112));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 1024);
  *(a1 + 976) = &unk_1F50D86E0;
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<3ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 1152) = &unk_1F50D86E0;
  if (*(a1 + 1183) < 0)
  {
    operator delete(*(a1 + 1160));
  }

  *(a1 + 1104) = &unk_1F50D86E0;
  if (*(a1 + 1135) < 0)
  {
    operator delete(*(a1 + 1112));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 1024);
  *(a1 + 976) = &unk_1F50D86E0;
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<3ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v133 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v134 = *(a3 + 8);
  }

  v135 = *(a3 + 32);
  v133 = &unk_1F50D8958;
  v136 = *(a3 + 36);
  v137 = *(a3 + 44);
  v126 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __s = *(a4 + 8);
  }

  v128 = *(a4 + 32);
  v126 = &unk_1F50D89D8;
  v129 = *(a4 + 36);
  mediaplatform::Data::Data(&v130, *(a4 + 64), *(a4 + 48), 1);
  v122 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v123 = *(a5 + 8);
  }

  v124 = *(a5 + 32);
  v122 = &unk_1F50D8978;
  v125 = *(a5 + 36);
  v118 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v119, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v119 = *(a6 + 8);
  }

  v120 = *(a6 + 32);
  v118 = &unk_1F50D8978;
  v121 = *(a6 + 36);
  v114 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v115 = *(a7 + 8);
  }

  v116 = *(a7 + 32);
  v114 = &unk_1F50D8978;
  v117 = *(a7 + 36);
  v110 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v111, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v111 = *(a8 + 8);
  }

  v112 = *(a8 + 32);
  v110 = &unk_1F50D8978;
  v113 = *(a8 + 36);
  v105 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v106 = *(a9 + 8);
  }

  v107 = *(a9 + 32);
  v105 = &unk_1F50D89B8;
  v108 = *(a9 + 36);
  if (*(a9 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v109, *(a9 + 40), *(a9 + 48));
  }

  else
  {
    v109 = *(a9 + 40);
  }

  v101 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v102 = *(a10 + 8);
  }

  v103 = *(a10 + 32);
  v101 = &unk_1F50D8978;
  v104 = *(a10 + 36);
  v97 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v98 = *(a11 + 8);
  }

  v99 = *(a11 + 32);
  v97 = &unk_1F50D8978;
  v100 = *(a11 + 36);
  v93 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v94 = *(a12 + 8);
  }

  v95 = *(a12 + 32);
  v93 = &unk_1F50D8978;
  v96 = *(a12 + 36);
  v89 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v90 = *(a13 + 8);
  }

  v91 = *(a13 + 32);
  v89 = &unk_1F50D8978;
  v92 = *(a13 + 36);
  v85 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v86 = *(a14 + 8);
  }

  v87 = *(a14 + 32);
  v85 = &unk_1F50D8978;
  v88 = *(a14 + 36);
  v81 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v82, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v82 = *(a15 + 8);
  }

  v83 = *(a15 + 32);
  v81 = &unk_1F50D8978;
  v84 = *(a15 + 36);
  v74 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v75 = *(a16 + 8);
  }

  v76 = *(a16 + 32);
  v74 = &unk_1F50D89D8;
  v77 = *(a16 + 36);
  mediaplatform::Data::Data(&v78, *(a16 + 64), *(a16 + 48), 1);
  v70 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v71 = *(a17 + 8);
  }

  v72 = *(a17 + 32);
  v70 = &unk_1F50D8978;
  v73 = *(a17 + 36);
  v65 = &unk_1F50D86E0;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v66, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v66 = *(a18 + 8);
  }

  v67 = *(a18 + 32);
  v65 = &unk_1F50D8958;
  v68 = *(a18 + 36);
  v69 = *(a18 + 44);
  v60 = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v61 = *(a19 + 8);
  }

  v62 = *(a19 + 32);
  v60 = &unk_1F50D8958;
  v63 = *(a19 + 36);
  v64 = *(a19 + 44);
  v55 = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v56, *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v56 = *(a20 + 8);
  }

  v57 = *(a20 + 32);
  v55 = &unk_1F50D8958;
  v58 = *(a20 + 36);
  v59 = *(a20 + 44);
  v51 = &unk_1F50D86E0;
  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v52 = *(a21 + 8);
  }

  v53 = *(a21 + 32);
  v51 = &unk_1F50D8978;
  v54 = *(a21 + 36);
  v46 = &unk_1F50D86E0;
  if (*(a22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, *(a22 + 8), *(a22 + 16));
  }

  else
  {
    v47 = *(a22 + 8);
  }

  v48 = *(a22 + 32);
  v46 = &unk_1F50D8958;
  v49 = *(a22 + 36);
  v50 = *(a22 + 44);
  v41 = &unk_1F50D86E0;
  if (*(a23 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v42, *(a23 + 8), *(a23 + 16));
  }

  else
  {
    v42 = *(a23 + 8);
  }

  v43 = *(a23 + 32);
  v41 = &unk_1F50D89B8;
  v44 = *(a23 + 36);
  if (*(a23 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, *(a23 + 40), *(a23 + 48));
  }

  else
  {
    v45 = *(a23 + 40);
  }

  if (*(a24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *(a24 + 8), *(a24 + 16));
  }

  else
  {
    v37 = *(a24 + 8);
  }

  v38 = *(a24 + 32);
  v39 = *(a24 + 36);
  v40 = *(a24 + 44);
  v228 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v229, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v229 = __s;
  }

  v230 = v128;
  v228 = &unk_1F50D89D8;
  v231 = v129;
  mediaplatform::Data::Data(&v232, __src, __n, 1);
  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v225, v123.__r_.__value_.__l.__data_, v123.__r_.__value_.__l.__size_);
  }

  else
  {
    v225 = v123;
  }

  v226 = v124;
  v224 = &unk_1F50D8978;
  v227 = v125;
  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v221, v119.__r_.__value_.__l.__data_, v119.__r_.__value_.__l.__size_);
  }

  else
  {
    v221 = v119;
  }

  v222 = v120;
  v220 = &unk_1F50D8978;
  v223 = v121;
  v216 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v217, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    v217 = v115;
  }

  v218 = v116;
  v216 = &unk_1F50D8978;
  v219 = v117;
  v212 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v213, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
  }

  else
  {
    v213 = v111;
  }

  v214 = v112;
  v212 = &unk_1F50D8978;
  v215 = v113;
  v207 = &unk_1F50D86E0;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v208, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v208 = v106;
  }

  v209 = v107;
  v207 = &unk_1F50D89B8;
  v210 = v108;
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v109.__r_.__value_.__l.__data_, v109.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v109;
  }

  v203 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v204, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v204 = v102;
  }

  v205 = v103;
  v203 = &unk_1F50D8978;
  v206 = v104;
  v199 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v200, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    v200 = v98;
  }

  v201 = v99;
  v199 = &unk_1F50D8978;
  v202 = v100;
  v195 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v196, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
  }

  else
  {
    v196 = v94;
  }

  v197 = v95;
  v195 = &unk_1F50D8978;
  v198 = v96;
  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v192, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v192 = v90;
  }

  v193 = v91;
  v191 = &unk_1F50D8978;
  v194 = v92;
  v187 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v188, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v188 = v86;
  }

  v189 = v87;
  v187 = &unk_1F50D8978;
  v190 = v88;
  v183 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v184, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
  }

  else
  {
    v184 = v82;
  }

  v185 = v83;
  v183 = &unk_1F50D8978;
  v186 = v84;
  v176 = &unk_1F50D86E0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v177, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v177 = v75;
  }

  v178 = v76;
  v176 = &unk_1F50D89D8;
  v179 = v77;
  mediaplatform::Data::Data(&v180, v80, v79, 1);
  v172 = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v173, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v173 = v71;
  }

  v174 = v72;
  v172 = &unk_1F50D8978;
  v175 = v73;
  v167 = &unk_1F50D86E0;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v168, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v168 = v66;
  }

  v169 = v67;
  v167 = &unk_1F50D8958;
  v170 = v68;
  v171 = v69;
  v162 = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v163, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    v163 = v61;
  }

  v164 = v62;
  v162 = &unk_1F50D8958;
  v165 = v63;
  v166 = v64;
  v157 = &unk_1F50D86E0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v158, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v158 = v56;
  }

  v159 = v57;
  v157 = &unk_1F50D8958;
  v160 = v58;
  v161 = v59;
  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v154 = v52;
  }

  v155 = v53;
  v153 = &unk_1F50D8978;
  v156 = v54;
  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v149, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v149 = v47;
  }

  v150 = v48;
  v148 = &unk_1F50D8958;
  v151 = v49;
  v152 = v50;
  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v144, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = v42;
  }

  v145 = v43;
  v143 = &unk_1F50D89B8;
  v146 = v44;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v147, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v147 = v45;
  }

  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v37;
  }

  v140 = v38;
  v138 = &unk_1F50D8958;
  v141 = v39;
  v142 = v40;
  v319 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v320, v225.__r_.__value_.__l.__data_, v225.__r_.__value_.__l.__size_);
  }

  else
  {
    v320 = v225;
  }

  v321 = v226;
  v319 = &unk_1F50D8978;
  v322 = v227;
  v315 = &unk_1F50D86E0;
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v316, v221.__r_.__value_.__l.__data_, v221.__r_.__value_.__l.__size_);
  }

  else
  {
    v316 = v221;
  }

  v317 = v222;
  v315 = &unk_1F50D8978;
  v318 = v223;
  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v312, v217.__r_.__value_.__l.__data_, v217.__r_.__value_.__l.__size_);
  }

  else
  {
    v312 = v217;
  }

  v313 = v218;
  v311 = &unk_1F50D8978;
  v314 = v219;
  v307 = &unk_1F50D86E0;
  if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v308, v213.__r_.__value_.__l.__data_, v213.__r_.__value_.__l.__size_);
  }

  else
  {
    v308 = v213;
  }

  v309 = v214;
  v307 = &unk_1F50D8978;
  v310 = v215;
  v302 = &unk_1F50D86E0;
  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v303, v208.__r_.__value_.__l.__data_, v208.__r_.__value_.__l.__size_);
  }

  else
  {
    v303 = v208;
  }

  v304 = v209;
  v302 = &unk_1F50D89B8;
  v305 = v210;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v306, v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
  }

  else
  {
    v306 = v211;
  }

  v298 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v299, v204.__r_.__value_.__l.__data_, v204.__r_.__value_.__l.__size_);
  }

  else
  {
    v299 = v204;
  }

  v300 = v205;
  v298 = &unk_1F50D8978;
  v301 = v206;
  v294 = &unk_1F50D86E0;
  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v295, v200.__r_.__value_.__l.__data_, v200.__r_.__value_.__l.__size_);
  }

  else
  {
    v295 = v200;
  }

  v296 = v201;
  v294 = &unk_1F50D8978;
  v297 = v202;
  v290 = &unk_1F50D86E0;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v291, v196.__r_.__value_.__l.__data_, v196.__r_.__value_.__l.__size_);
  }

  else
  {
    v291 = v196;
  }

  v292 = v197;
  v290 = &unk_1F50D8978;
  v293 = v198;
  v286 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v287, v192.__r_.__value_.__l.__data_, v192.__r_.__value_.__l.__size_);
  }

  else
  {
    v287 = v192;
  }

  v288 = v193;
  v286 = &unk_1F50D8978;
  v289 = v194;
  v282 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v283, v188.__r_.__value_.__l.__data_, v188.__r_.__value_.__l.__size_);
  }

  else
  {
    v283 = v188;
  }

  v284 = v189;
  v282 = &unk_1F50D8978;
  v285 = v190;
  v278 = &unk_1F50D86E0;
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v279, v184.__r_.__value_.__l.__data_, v184.__r_.__value_.__l.__size_);
  }

  else
  {
    v279 = v184;
  }

  v280 = v185;
  v278 = &unk_1F50D8978;
  v281 = v186;
  v273 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v274, v177.__r_.__value_.__l.__data_, v177.__r_.__value_.__l.__size_);
  }

  else
  {
    v274 = v177;
  }

  v275 = v178;
  v273 = &unk_1F50D89D8;
  v276 = v179;
  mediaplatform::Data::Data(&v277, v182, v181, 1);
  v269 = &unk_1F50D86E0;
  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v270, v173.__r_.__value_.__l.__data_, v173.__r_.__value_.__l.__size_);
  }

  else
  {
    v270 = v173;
  }

  v271 = v174;
  v269 = &unk_1F50D8978;
  v272 = v175;
  v264 = &unk_1F50D86E0;
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v265, v168.__r_.__value_.__l.__data_, v168.__r_.__value_.__l.__size_);
  }

  else
  {
    v265 = v168;
  }

  v266 = v169;
  v264 = &unk_1F50D8958;
  v267 = v170;
  v268 = v171;
  v259 = &unk_1F50D86E0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v260, v163.__r_.__value_.__l.__data_, v163.__r_.__value_.__l.__size_);
  }

  else
  {
    v260 = v163;
  }

  v261 = v164;
  v259 = &unk_1F50D8958;
  v262 = v165;
  v263 = v166;
  v254 = &unk_1F50D86E0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v255, v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__l.__size_);
  }

  else
  {
    v255 = v158;
  }

  v256 = v159;
  v254 = &unk_1F50D8958;
  v257 = v160;
  v258 = v161;
  v250 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v251, v154.__r_.__value_.__l.__data_, v154.__r_.__value_.__l.__size_);
  }

  else
  {
    v251 = v154;
  }

  v252 = v155;
  v250 = &unk_1F50D8978;
  v253 = v156;
  v245 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v246, v149.__r_.__value_.__l.__data_, v149.__r_.__value_.__l.__size_);
  }

  else
  {
    v246 = v149;
  }

  v247 = v150;
  v245 = &unk_1F50D8958;
  v248 = v151;
  v249 = v152;
  v240 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v241, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
  }

  else
  {
    v241 = v144;
  }

  v242 = v145;
  v240 = &unk_1F50D89B8;
  v243 = v146;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v244, v147.__r_.__value_.__l.__data_, v147.__r_.__value_.__l.__size_);
  }

  else
  {
    v244 = v147;
  }

  v235 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v139;
  }

  v237 = v140;
  v235 = &unk_1F50D8958;
  v238 = v141;
  v239 = v142;
  mediaplatform::DatabaseColumnTuple<6ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(a1, &v319, &v315, &v311, &v307, &v302, &v298, &v294, &v290, &v286, &v282, &v278, &v273, &v269, &v264, &v259, &v254, &v250, &v245, &v240, &v235);
  v235 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v240);
  v245 = &unk_1F50D86E0;
  if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v246.__r_.__value_.__l.__data_);
  }

  v250 = &unk_1F50D86E0;
  if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v251.__r_.__value_.__l.__data_);
  }

  v254 = &unk_1F50D86E0;
  if (SHIBYTE(v255.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v255.__r_.__value_.__l.__data_);
  }

  v259 = &unk_1F50D86E0;
  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v260.__r_.__value_.__l.__data_);
  }

  v264 = &unk_1F50D86E0;
  if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v265.__r_.__value_.__l.__data_);
  }

  v269 = &unk_1F50D86E0;
  if (SHIBYTE(v270.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v270.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v273);
  v278 = &unk_1F50D86E0;
  if (SHIBYTE(v279.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v279.__r_.__value_.__l.__data_);
  }

  v282 = &unk_1F50D86E0;
  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v283.__r_.__value_.__l.__data_);
  }

  v286 = &unk_1F50D86E0;
  if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v287.__r_.__value_.__l.__data_);
  }

  v290 = &unk_1F50D86E0;
  if (SHIBYTE(v291.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v291.__r_.__value_.__l.__data_);
  }

  v294 = &unk_1F50D86E0;
  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v295.__r_.__value_.__l.__data_);
  }

  v298 = &unk_1F50D86E0;
  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v302);
  v307 = &unk_1F50D86E0;
  if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v308.__r_.__value_.__l.__data_);
  }

  v311 = &unk_1F50D86E0;
  if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v312.__r_.__value_.__l.__data_);
  }

  v315 = &unk_1F50D86E0;
  if (SHIBYTE(v316.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v316.__r_.__value_.__l.__data_);
  }

  v319 = &unk_1F50D86E0;
  if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v320.__r_.__value_.__l.__data_);
  }

  *(a1 + 1024) = &unk_1F50D86E0;
  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 1032), v229.__r_.__value_.__l.__data_, v229.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 1032) = v229;
  }

  *(a1 + 1056) = v230;
  *(a1 + 1024) = &unk_1F50D89D8;
  *(a1 + 1060) = v231;
  mediaplatform::Data::Data((a1 + 1064), v234, v233, 1);
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v143);
  v148 = &unk_1F50D86E0;
  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v149.__r_.__value_.__l.__data_);
  }

  v153 = &unk_1F50D86E0;
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  v157 = &unk_1F50D86E0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158.__r_.__value_.__l.__data_);
  }

  v162 = &unk_1F50D86E0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v163.__r_.__value_.__l.__data_);
  }

  v167 = &unk_1F50D86E0;
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  v172 = &unk_1F50D86E0;
  if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v173.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v176);
  v183 = &unk_1F50D86E0;
  if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  v187 = &unk_1F50D86E0;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  v191 = &unk_1F50D86E0;
  if (SHIBYTE(v192.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v192.__r_.__value_.__l.__data_);
  }

  v195 = &unk_1F50D86E0;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  v199 = &unk_1F50D86E0;
  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v200.__r_.__value_.__l.__data_);
  }

  v203 = &unk_1F50D86E0;
  if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v204.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v207);
  v212 = &unk_1F50D86E0;
  if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v213.__r_.__value_.__l.__data_);
  }

  v216 = &unk_1F50D86E0;
  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v217.__r_.__value_.__l.__data_);
  }

  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v221.__r_.__value_.__l.__data_);
  }

  v224 = &unk_1F50D86E0;
  if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v228);
  *(a1 + 1104) = &unk_1F50D86E0;
  v32 = (a1 + 1112);
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v32, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v32->__r_.__value_.__l.__data_ = *&v134.__r_.__value_.__l.__data_;
    *(a1 + 1128) = *(&v134.__r_.__value_.__l + 2);
  }

  *(a1 + 1136) = v135;
  *(a1 + 1104) = &unk_1F50D8958;
  *(a1 + 1140) = v136;
  *(a1 + 1148) = v137;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v41);
  v46 = &unk_1F50D86E0;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  v51 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v55 = &unk_1F50D86E0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v60 = &unk_1F50D86E0;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  v65 = &unk_1F50D86E0;
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  v70 = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v74);
  v81 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  v93 = &unk_1F50D86E0;
  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v97 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v105);
  v110 = &unk_1F50D86E0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  v114 = &unk_1F50D86E0;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  v118 = &unk_1F50D86E0;
  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }

  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v126);
  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  *(a1 + 1152) = &unk_1F50D86E0;
  v33 = (a1 + 1160);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v33, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v34 = *(a2 + 8);
    *(a1 + 1176) = *(a2 + 24);
    *&v33->__r_.__value_.__l.__data_ = v34;
  }

  *(a1 + 1184) = *(a2 + 32);
  *(a1 + 1152) = &unk_1F50D8958;
  v35 = *(a2 + 36);
  *(a1 + 1196) = *(a2 + 44);
  *(a1 + 1188) = v35;
  return a1;
}

void sub_1D596B52C()
{
  STACK[0xC28] = v0;
  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(STACK[0xC30]);
  }

  JUMPOUT(0x1D596B0ACLL);
}

void sub_1D596B548()
{
  STACK[0x7D8] = v0;
  if (SLOBYTE(STACK[0x7F7]) < 0)
  {
    operator delete(STACK[0x7E0]);
  }

  JUMPOUT(0x1D596B254);
}

void sub_1D596B564()
{
  STACK[0xA48] = v0;
  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(STACK[0xA50]);
  }

  JUMPOUT(0x1D596B354);
}

void sub_1D596B580()
{
  STACK[0x358] = v0;
  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  JUMPOUT(0x1D596B40CLL);
}

void sub_1D596B59C()
{
  STACK[0x5C8] = v0;
  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  JUMPOUT(0x1D596B50CLL);
}

uint64_t mediaplatform::DatabaseColumnTuple<4ul,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 1104) = &unk_1F50D86E0;
  if (*(a1 + 1135) < 0)
  {
    operator delete(*(a1 + 1112));
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(a1 + 1024);
  *(a1 + 976) = &unk_1F50D86E0;
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<6ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 976) = &unk_1F50D86E0;
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  return mediaplatform::DatabaseColumnTuple<7ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<6ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v21 = MEMORY[0x1EEE9AC00](a1);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v22;
  v35 = v34;
  v36 = v21;
  v124 = &unk_1F50D86E0;
  if (*(v22 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v125, *(v22 + 8), *(v22 + 16));
  }

  else
  {
    v125 = *(v22 + 8);
  }

  v126 = *(v33 + 32);
  v124 = &unk_1F50D8978;
  v127 = *(v33 + 36);
  v120 = &unk_1F50D86E0;
  if (*(v32 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(v32 + 8), *(v32 + 16));
  }

  else
  {
    __s = *(v32 + 8);
  }

  v122 = *(v32 + 32);
  v120 = &unk_1F50D8978;
  v123 = *(v32 + 36);
  v116 = &unk_1F50D86E0;
  if (*(v30 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v117, *(v30 + 8), *(v30 + 16));
  }

  else
  {
    v117 = *(v30 + 8);
  }

  v118 = *(v30 + 32);
  v116 = &unk_1F50D8978;
  v119 = *(v30 + 36);
  v111 = &unk_1F50D86E0;
  if (*(v28 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, *(v28 + 8), *(v28 + 16));
  }

  else
  {
    v112 = *(v28 + 8);
  }

  v113 = *(v28 + 32);
  v111 = &unk_1F50D89B8;
  v114 = *(v28 + 36);
  if (*(v28 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, *(v28 + 40), *(v28 + 48));
  }

  else
  {
    v115 = *(v28 + 40);
  }

  v107 = &unk_1F50D86E0;
  if (*(v26 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v108, *(v26 + 8), *(v26 + 16));
  }

  else
  {
    v108 = *(v26 + 8);
  }

  v109 = *(v26 + 32);
  v107 = &unk_1F50D8978;
  v110 = *(v26 + 36);
  v103 = &unk_1F50D86E0;
  if (*(v24 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v104, *(v24 + 8), *(v24 + 16));
  }

  else
  {
    v104 = *(v24 + 8);
  }

  v105 = *(v24 + 32);
  v103 = &unk_1F50D8978;
  v106 = *(v24 + 36);
  v99 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v100, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v100 = *(a9 + 8);
  }

  v101 = *(a9 + 32);
  v99 = &unk_1F50D8978;
  v102 = *(a9 + 36);
  v95 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v96, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v96 = *(a10 + 8);
  }

  v97 = *(a10 + 32);
  v95 = &unk_1F50D8978;
  v98 = *(a10 + 36);
  v91 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v92, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v92 = *(a11 + 8);
  }

  v93 = *(a11 + 32);
  v91 = &unk_1F50D8978;
  v94 = *(a11 + 36);
  v87 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v88 = *(a12 + 8);
  }

  v89 = *(a12 + 32);
  v87 = &unk_1F50D8978;
  v90 = *(a12 + 36);
  v80 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v81 = *(a13 + 8);
  }

  v82 = *(a13 + 32);
  v80 = &unk_1F50D89D8;
  v83 = *(a13 + 36);
  mediaplatform::Data::Data(&v84, *(a13 + 64), *(a13 + 48), 1);
  v76 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v77 = *(a14 + 8);
  }

  v78 = *(a14 + 32);
  v76 = &unk_1F50D8978;
  v79 = *(a14 + 36);
  v71 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v72, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v72 = *(a15 + 8);
  }

  v73 = *(a15 + 32);
  v71 = &unk_1F50D8958;
  v74 = *(a15 + 36);
  v75 = *(a15 + 44);
  v66 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v67 = *(a16 + 8);
  }

  v68 = *(a16 + 32);
  v66 = &unk_1F50D8958;
  v69 = *(a16 + 36);
  v70 = *(a16 + 44);
  v61 = &unk_1F50D86E0;
  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v62 = *(a17 + 8);
  }

  v63 = *(a17 + 32);
  v61 = &unk_1F50D8958;
  v64 = *(a17 + 36);
  v65 = *(a17 + 44);
  v57 = &unk_1F50D86E0;
  if (*(a18 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, *(a18 + 8), *(a18 + 16));
  }

  else
  {
    v58 = *(a18 + 8);
  }

  v59 = *(a18 + 32);
  v57 = &unk_1F50D8978;
  v60 = *(a18 + 36);
  v52 = &unk_1F50D86E0;
  if (*(a19 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, *(a19 + 8), *(a19 + 16));
  }

  else
  {
    v53 = *(a19 + 8);
  }

  v54 = *(a19 + 32);
  v52 = &unk_1F50D8958;
  v55 = *(a19 + 36);
  v56 = *(a19 + 44);
  v47 = &unk_1F50D86E0;
  if (*(a20 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, *(a20 + 8), *(a20 + 16));
  }

  else
  {
    v48 = *(a20 + 8);
  }

  v49 = *(a20 + 32);
  v47 = &unk_1F50D89B8;
  v50 = *(a20 + 36);
  if (*(a20 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *(a20 + 40), *(a20 + 48));
  }

  else
  {
    v51 = *(a20 + 40);
  }

  if (*(a21 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, *(a21 + 8), *(a21 + 16));
  }

  else
  {
    v43 = *(a21 + 8);
  }

  v44 = *(a21 + 32);
  v45 = *(a21 + 36);
  v46 = *(a21 + 44);
  v206 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v207, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v207 = __s;
  }

  v208 = v122;
  v206 = &unk_1F50D8978;
  v209 = v123;
  v202 = &unk_1F50D86E0;
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v203, v117.__r_.__value_.__l.__data_, v117.__r_.__value_.__l.__size_);
  }

  else
  {
    v203 = v117;
  }

  v204 = v118;
  v202 = &unk_1F50D8978;
  v205 = v119;
  v197 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v198, v112.__r_.__value_.__l.__data_, v112.__r_.__value_.__l.__size_);
  }

  else
  {
    v198 = v112;
  }

  v199 = v113;
  v197 = &unk_1F50D89B8;
  v200 = v114;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v201, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
  }

  else
  {
    v201 = v115;
  }

  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v108.__r_.__value_.__l.__data_, v108.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v108;
  }

  v195 = v109;
  v193 = &unk_1F50D8978;
  v196 = v110;
  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v104;
  }

  v191 = v105;
  v189 = &unk_1F50D8978;
  v192 = v106;
  v185 = &unk_1F50D86E0;
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v186, v100.__r_.__value_.__l.__data_, v100.__r_.__value_.__l.__size_);
  }

  else
  {
    v186 = v100;
  }

  v187 = v101;
  v185 = &unk_1F50D8978;
  v188 = v102;
  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
  }

  else
  {
    v182 = v96;
  }

  v183 = v97;
  v181 = &unk_1F50D8978;
  v184 = v98;
  v177 = &unk_1F50D86E0;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
  }

  else
  {
    v178 = v92;
  }

  v179 = v93;
  v177 = &unk_1F50D8978;
  v180 = v94;
  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    v174 = v88;
  }

  v175 = v89;
  v173 = &unk_1F50D8978;
  v176 = v90;
  v166 = &unk_1F50D86E0;
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v81;
  }

  v168 = v82;
  v166 = &unk_1F50D89D8;
  v169 = v83;
  mediaplatform::Data::Data(&v170, __src, __n, 1);
  v162 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v163, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v163 = v77;
  }

  v164 = v78;
  v162 = &unk_1F50D8978;
  v165 = v79;
  v157 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v158, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v158 = v72;
  }

  v159 = v73;
  v157 = &unk_1F50D8958;
  v160 = v74;
  v161 = v75;
  v152 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v153, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v153 = v67;
  }

  v154 = v68;
  v152 = &unk_1F50D8958;
  v155 = v69;
  v156 = v70;
  v147 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v148, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v148 = v62;
  }

  v149 = v63;
  v147 = &unk_1F50D8958;
  v150 = v64;
  v151 = v65;
  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v144, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v144 = v58;
  }

  v145 = v59;
  v143 = &unk_1F50D8978;
  v146 = v60;
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v139, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v139 = v53;
  }

  v140 = v54;
  v138 = &unk_1F50D8958;
  v141 = v55;
  v142 = v56;
  v133 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v48;
  }

  v135 = v49;
  v133 = &unk_1F50D89B8;
  v136 = v50;
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v137, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v137 = v51;
  }

  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v129, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v129 = v43;
  }

  v130 = v44;
  v128 = &unk_1F50D8958;
  v131 = v45;
  v132 = v46;
  v284 = &unk_1F50D86E0;
  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v285, v203.__r_.__value_.__l.__data_, v203.__r_.__value_.__l.__size_);
  }

  else
  {
    v285 = v203;
  }

  v286 = v204;
  v284 = &unk_1F50D8978;
  v287 = v205;
  v279 = &unk_1F50D86E0;
  if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v280, v198.__r_.__value_.__l.__data_, v198.__r_.__value_.__l.__size_);
  }

  else
  {
    v280 = v198;
  }

  v281 = v199;
  v279 = &unk_1F50D89B8;
  v282 = v200;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v283, v201.__r_.__value_.__l.__data_, v201.__r_.__value_.__l.__size_);
  }

  else
  {
    v283 = v201;
  }

  v275 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v276, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
  }

  else
  {
    v276 = v194;
  }

  v277 = v195;
  v275 = &unk_1F50D8978;
  v278 = v196;
  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v272, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
  }

  else
  {
    v272 = v190;
  }

  v273 = v191;
  v271 = &unk_1F50D8978;
  v274 = v192;
  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v268, v186.__r_.__value_.__l.__data_, v186.__r_.__value_.__l.__size_);
  }

  else
  {
    v268 = v186;
  }

  v269 = v187;
  v267 = &unk_1F50D8978;
  v270 = v188;
  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v264, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_);
  }

  else
  {
    v264 = v182;
  }

  v265 = v183;
  v263 = &unk_1F50D8978;
  v266 = v184;
  v259 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v260, v178.__r_.__value_.__l.__data_, v178.__r_.__value_.__l.__size_);
  }

  else
  {
    v260 = v178;
  }

  v261 = v179;
  v259 = &unk_1F50D8978;
  v262 = v180;
  v255 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v256, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  }

  else
  {
    v256 = v174;
  }

  v257 = v175;
  v255 = &unk_1F50D8978;
  v258 = v176;
  v248 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v249, v167.__r_.__value_.__l.__data_, v167.__r_.__value_.__l.__size_);
  }

  else
  {
    v249 = v167;
  }

  v250 = v168;
  v248 = &unk_1F50D89D8;
  v251 = v169;
  mediaplatform::Data::Data(&v252, v172, v171, 1);
  v244 = &unk_1F50D86E0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v245, v163.__r_.__value_.__l.__data_, v163.__r_.__value_.__l.__size_);
  }

  else
  {
    v245 = v163;
  }

  v246 = v164;
  v244 = &unk_1F50D8978;
  v247 = v165;
  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v240, v158.__r_.__value_.__l.__data_, v158.__r_.__value_.__l.__size_);
  }

  else
  {
    v240 = v158;
  }

  v241 = v159;
  v239 = &unk_1F50D8958;
  v242 = v160;
  v243 = v161;
  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v235, v153.__r_.__value_.__l.__data_, v153.__r_.__value_.__l.__size_);
  }

  else
  {
    v235 = v153;
  }

  v236 = v154;
  v234 = &unk_1F50D8958;
  v237 = v155;
  v238 = v156;
  v229 = &unk_1F50D86E0;
  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v230, v148.__r_.__value_.__l.__data_, v148.__r_.__value_.__l.__size_);
  }

  else
  {
    v230 = v148;
  }

  v231 = v149;
  v229 = &unk_1F50D8958;
  v232 = v150;
  v233 = v151;
  v225 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
  }

  else
  {
    v226 = v144;
  }

  v227 = v145;
  v225 = &unk_1F50D8978;
  v228 = v146;
  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v221, v139.__r_.__value_.__l.__data_, v139.__r_.__value_.__l.__size_);
  }

  else
  {
    v221 = v139;
  }

  v222 = v140;
  v220 = &unk_1F50D8958;
  v223 = v141;
  v224 = v142;
  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v216, v134.__r_.__value_.__l.__data_, v134.__r_.__value_.__l.__size_);
  }

  else
  {
    v216 = v134;
  }

  v217 = v135;
  v215 = &unk_1F50D89B8;
  v218 = v136;
  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v219, v137.__r_.__value_.__l.__data_, v137.__r_.__value_.__l.__size_);
  }

  else
  {
    v219 = v137;
  }

  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v211, v129.__r_.__value_.__l.__data_, v129.__r_.__value_.__l.__size_);
  }

  else
  {
    v211 = v129;
  }

  v212 = v130;
  v210 = &unk_1F50D8958;
  v213 = v131;
  v214 = v132;
  v355 = &unk_1F50D86E0;
  if (SHIBYTE(v280.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v356, v280.__r_.__value_.__l.__data_, v280.__r_.__value_.__l.__size_);
  }

  else
  {
    v356 = v280;
  }

  v357 = v281;
  v355 = &unk_1F50D89B8;
  v358 = v282;
  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v359, v283.__r_.__value_.__l.__data_, v283.__r_.__value_.__l.__size_);
  }

  else
  {
    v359 = v283;
  }

  v351 = &unk_1F50D86E0;
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v352, v276.__r_.__value_.__l.__data_, v276.__r_.__value_.__l.__size_);
  }

  else
  {
    v352 = v276;
  }

  v353 = v277;
  v351 = &unk_1F50D8978;
  v354 = v278;
  v347 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v348, v272.__r_.__value_.__l.__data_, v272.__r_.__value_.__l.__size_);
  }

  else
  {
    v348 = v272;
  }

  v349 = v273;
  v347 = &unk_1F50D8978;
  v350 = v274;
  v343 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v344, v268.__r_.__value_.__l.__data_, v268.__r_.__value_.__l.__size_);
  }

  else
  {
    v344 = v268;
  }

  v345 = v269;
  v343 = &unk_1F50D8978;
  v346 = v270;
  v339 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v340, v264.__r_.__value_.__l.__data_, v264.__r_.__value_.__l.__size_);
  }

  else
  {
    v340 = v264;
  }

  v341 = v265;
  v339 = &unk_1F50D8978;
  v342 = v266;
  v335 = &unk_1F50D86E0;
  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v336, v260.__r_.__value_.__l.__data_, v260.__r_.__value_.__l.__size_);
  }

  else
  {
    v336 = v260;
  }

  v337 = v261;
  v335 = &unk_1F50D8978;
  v338 = v262;
  v331 = &unk_1F50D86E0;
  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v332, v256.__r_.__value_.__l.__data_, v256.__r_.__value_.__l.__size_);
  }

  else
  {
    v332 = v256;
  }

  v333 = v257;
  v331 = &unk_1F50D8978;
  v334 = v258;
  v326 = &unk_1F50D86E0;
  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v327, v249.__r_.__value_.__l.__data_, v249.__r_.__value_.__l.__size_);
  }

  else
  {
    v327 = v249;
  }

  v328 = v250;
  v326 = &unk_1F50D89D8;
  v329 = v251;
  mediaplatform::Data::Data(&v330, v254, v253, 1);
  v322 = &unk_1F50D86E0;
  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v323, v245.__r_.__value_.__l.__data_, v245.__r_.__value_.__l.__size_);
  }

  else
  {
    v323 = v245;
  }

  v324 = v246;
  v322 = &unk_1F50D8978;
  v325 = v247;
  v317 = &unk_1F50D86E0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v318, v240.__r_.__value_.__l.__data_, v240.__r_.__value_.__l.__size_);
  }

  else
  {
    v318 = v240;
  }

  v319 = v241;
  v317 = &unk_1F50D8958;
  v320 = v242;
  v321 = v243;
  v312 = &unk_1F50D86E0;
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v313, v235.__r_.__value_.__l.__data_, v235.__r_.__value_.__l.__size_);
  }

  else
  {
    v313 = v235;
  }

  v314 = v236;
  v312 = &unk_1F50D8958;
  v315 = v237;
  v316 = v238;
  v307 = &unk_1F50D86E0;
  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v308, v230.__r_.__value_.__l.__data_, v230.__r_.__value_.__l.__size_);
  }

  else
  {
    v308 = v230;
  }

  v309 = v231;
  v307 = &unk_1F50D8958;
  v310 = v232;
  v311 = v233;
  v303 = &unk_1F50D86E0;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v304, v226.__r_.__value_.__l.__data_, v226.__r_.__value_.__l.__size_);
  }

  else
  {
    v304 = v226;
  }

  v305 = v227;
  v303 = &unk_1F50D8978;
  v306 = v228;
  v298 = &unk_1F50D86E0;
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v299, v221.__r_.__value_.__l.__data_, v221.__r_.__value_.__l.__size_);
  }

  else
  {
    v299 = v221;
  }

  v300 = v222;
  v298 = &unk_1F50D8958;
  v301 = v223;
  v302 = v224;
  v293 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v294, v216.__r_.__value_.__l.__data_, v216.__r_.__value_.__l.__size_);
  }

  else
  {
    v294 = v216;
  }

  v295 = v217;
  v293 = &unk_1F50D89B8;
  v296 = v218;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v297, v219.__r_.__value_.__l.__data_, v219.__r_.__value_.__l.__size_);
  }

  else
  {
    v297 = v219;
  }

  v288 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v211.__r_.__value_.__l.__data_, v211.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v211;
  }

  v290 = v212;
  v288 = &unk_1F50D8958;
  v291 = v213;
  v292 = v214;
  mediaplatform::DatabaseColumnTuple<10ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(v36, &v355, &v351, &v347, &v343, &v339, &v335, &v331, &v326, &v322, &v317, &v312, &v307, &v303, &v298, &v293, &v288);
  v288 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v293);
  v298 = &unk_1F50D86E0;
  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  v303 = &unk_1F50D86E0;
  if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v304.__r_.__value_.__l.__data_);
  }

  v307 = &unk_1F50D86E0;
  if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v308.__r_.__value_.__l.__data_);
  }

  v312 = &unk_1F50D86E0;
  if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v313.__r_.__value_.__l.__data_);
  }

  v317 = &unk_1F50D86E0;
  if (SHIBYTE(v318.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v318.__r_.__value_.__l.__data_);
  }

  v322 = &unk_1F50D86E0;
  if (SHIBYTE(v323.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v323.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v326);
  v331 = &unk_1F50D86E0;
  if (SHIBYTE(v332.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v332.__r_.__value_.__l.__data_);
  }

  v335 = &unk_1F50D86E0;
  if (SHIBYTE(v336.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v336.__r_.__value_.__l.__data_);
  }

  v339 = &unk_1F50D86E0;
  if (SHIBYTE(v340.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v340.__r_.__value_.__l.__data_);
  }

  v343 = &unk_1F50D86E0;
  if (SHIBYTE(v344.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v344.__r_.__value_.__l.__data_);
  }

  v347 = &unk_1F50D86E0;
  if (SHIBYTE(v348.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v348.__r_.__value_.__l.__data_);
  }

  v351 = &unk_1F50D86E0;
  if (SHIBYTE(v352.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v352.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v355);
  *(v36 + 832) = &unk_1F50D86E0;
  v37 = (v36 + 840);
  if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v37, v285.__r_.__value_.__l.__data_, v285.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v37->__r_.__value_.__l.__data_ = *&v285.__r_.__value_.__l.__data_;
    *(v36 + 856) = *(&v285.__r_.__value_.__l + 2);
  }

  *(v36 + 864) = v286;
  *(v36 + 832) = &unk_1F50D8978;
  *(v36 + 868) = v287;
  v210 = &unk_1F50D86E0;
  if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v211.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v215);
  v220 = &unk_1F50D86E0;
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v221.__r_.__value_.__l.__data_);
  }

  v225 = &unk_1F50D86E0;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226.__r_.__value_.__l.__data_);
  }

  v229 = &unk_1F50D86E0;
  if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v230.__r_.__value_.__l.__data_);
  }

  v234 = &unk_1F50D86E0;
  if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v235.__r_.__value_.__l.__data_);
  }

  v239 = &unk_1F50D86E0;
  if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v240.__r_.__value_.__l.__data_);
  }

  v244 = &unk_1F50D86E0;
  if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v245.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v248);
  v255 = &unk_1F50D86E0;
  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v256.__r_.__value_.__l.__data_);
  }

  v259 = &unk_1F50D86E0;
  if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v260.__r_.__value_.__l.__data_);
  }

  v263 = &unk_1F50D86E0;
  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  v267 = &unk_1F50D86E0;
  if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v268.__r_.__value_.__l.__data_);
  }

  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v272.__r_.__value_.__l.__data_);
  }

  v275 = &unk_1F50D86E0;
  if (SHIBYTE(v276.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v276.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v279);
  v284 = &unk_1F50D86E0;
  if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v285.__r_.__value_.__l.__data_);
  }

  *(v36 + 880) = &unk_1F50D86E0;
  v38 = (v36 + 888);
  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v38, v207.__r_.__value_.__l.__data_, v207.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v38->__r_.__value_.__l.__data_ = *&v207.__r_.__value_.__l.__data_;
    *(v36 + 904) = *(&v207.__r_.__value_.__l + 2);
  }

  *(v36 + 912) = v208;
  *(v36 + 880) = &unk_1F50D8978;
  *(v36 + 916) = v209;
  v128 = &unk_1F50D86E0;
  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v129.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v133);
  v138 = &unk_1F50D86E0;
  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  v143 = &unk_1F50D86E0;
  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  v147 = &unk_1F50D86E0;
  if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v148.__r_.__value_.__l.__data_);
  }

  v152 = &unk_1F50D86E0;
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  v157 = &unk_1F50D86E0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158.__r_.__value_.__l.__data_);
  }

  v162 = &unk_1F50D86E0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v163.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v166);
  v173 = &unk_1F50D86E0;
  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174.__r_.__value_.__l.__data_);
  }

  v177 = &unk_1F50D86E0;
  if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v178.__r_.__value_.__l.__data_);
  }

  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  v185 = &unk_1F50D86E0;
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }

  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  v193 = &unk_1F50D86E0;
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v197);
  v202 = &unk_1F50D86E0;
  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v203.__r_.__value_.__l.__data_);
  }

  v206 = &unk_1F50D86E0;
  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v207.__r_.__value_.__l.__data_);
  }

  *(v36 + 928) = &unk_1F50D86E0;
  v39 = (v36 + 936);
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v39, v125.__r_.__value_.__l.__data_, v125.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v39->__r_.__value_.__l.__data_ = *&v125.__r_.__value_.__l.__data_;
    *(v36 + 952) = *(&v125.__r_.__value_.__l + 2);
  }

  *(v36 + 960) = v126;
  *(v36 + 928) = &unk_1F50D8978;
  *(v36 + 964) = v127;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v47);
  v52 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v57 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v66 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  v71 = &unk_1F50D86E0;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v76 = &unk_1F50D86E0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v80);
  v87 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v91 = &unk_1F50D86E0;
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  v95 = &unk_1F50D86E0;
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
  }

  v99 = &unk_1F50D86E0;
  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  v103 = &unk_1F50D86E0;
  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  v107 = &unk_1F50D86E0;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v111);
  v116 = &unk_1F50D86E0;
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  v120 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v124 = &unk_1F50D86E0;
  if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v125.__r_.__value_.__l.__data_);
  }

  *(v36 + 976) = &unk_1F50D86E0;
  v40 = (v36 + 984);
  if (*(v35 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v40, *(v35 + 8), *(v35 + 16));
  }

  else
  {
    v41 = *(v35 + 8);
    *(v36 + 1000) = *(v35 + 24);
    *&v40->__r_.__value_.__l.__data_ = v41;
  }

  *(v36 + 1008) = *(v35 + 32);
  *(v36 + 976) = &unk_1F50D8978;
  *(v36 + 1012) = *(v35 + 36);
  return v36;
}

void sub_1D596EF08()
{
  STACK[0xE48] = v0;
  if (SLOBYTE(STACK[0xE67]) < 0)
  {
    operator delete(STACK[0xE50]);
  }

  JUMPOUT(0x1D596E9F0);
}

void sub_1D596EF24()
{
  STACK[0xAD8] = v0;
  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(STACK[0xAE0]);
  }

  JUMPOUT(0x1D596EB38);
}

void sub_1D596EF40()
{
  STACK[0x738] = v0;
  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(STACK[0x740]);
  }

  JUMPOUT(0x1D596ECA0);
}

void sub_1D596EF5C()
{
  STACK[0x368] = v0;
  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  JUMPOUT(0x1D596EE20);
}

uint64_t mediaplatform::DatabaseColumnTuple<8ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 880) = &unk_1F50D86E0;
  if (*(a1 + 911) < 0)
  {
    operator delete(*(a1 + 888));
  }

  *(a1 + 832) = &unk_1F50D86E0;
  if (*(a1 + 863) < 0)
  {
    operator delete(*(a1 + 840));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 768);
  *(a1 + 720) = &unk_1F50D86E0;
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  return mediaplatform::DatabaseColumnTuple<16ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<12ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  return mediaplatform::DatabaseColumnTuple<16ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<9ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 832) = &unk_1F50D86E0;
  if (*(a1 + 863) < 0)
  {
    operator delete(*(a1 + 840));
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(a1 + 768);
  *(a1 + 720) = &unk_1F50D86E0;
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  return mediaplatform::DatabaseColumnTuple<16ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<10ul,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v97 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v98 = *(a3 + 8);
  }

  v99 = *(a3 + 32);
  v97 = &unk_1F50D8978;
  v100 = *(a3 + 36);
  v93 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __s = *(a4 + 8);
  }

  v95 = *(a4 + 32);
  v93 = &unk_1F50D8978;
  v96 = *(a4 + 36);
  v89 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v90 = *(a5 + 8);
  }

  v91 = *(a5 + 32);
  v89 = &unk_1F50D8978;
  v92 = *(a5 + 36);
  v85 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v86 = *(a6 + 8);
  }

  v87 = *(a6 + 32);
  v85 = &unk_1F50D8978;
  v88 = *(a6 + 36);
  v81 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v82, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v82 = *(a7 + 8);
  }

  v83 = *(a7 + 32);
  v81 = &unk_1F50D8978;
  v84 = *(a7 + 36);
  v77 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v78, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v78 = *(a8 + 8);
  }

  v79 = *(a8 + 32);
  v77 = &unk_1F50D8978;
  v80 = *(a8 + 36);
  v70 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v71 = *(a9 + 8);
  }

  v72 = *(a9 + 32);
  v70 = &unk_1F50D89D8;
  v73 = *(a9 + 36);
  mediaplatform::Data::Data(&v74, *(a9 + 64), *(a9 + 48), 1);
  v66 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v67 = *(a10 + 8);
  }

  v68 = *(a10 + 32);
  v66 = &unk_1F50D8978;
  v69 = *(a10 + 36);
  v61 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v62, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v62 = *(a11 + 8);
  }

  v63 = *(a11 + 32);
  v61 = &unk_1F50D8958;
  v64 = *(a11 + 36);
  v65 = *(a11 + 44);
  v56 = &unk_1F50D86E0;
  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    v57 = *(a12 + 8);
  }

  v58 = *(a12 + 32);
  v56 = &unk_1F50D8958;
  v59 = *(a12 + 36);
  v60 = *(a12 + 44);
  v51 = &unk_1F50D86E0;
  if (*(a13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v52, *(a13 + 8), *(a13 + 16));
  }

  else
  {
    v52 = *(a13 + 8);
  }

  v53 = *(a13 + 32);
  v51 = &unk_1F50D8958;
  v54 = *(a13 + 36);
  v55 = *(a13 + 44);
  v47 = &unk_1F50D86E0;
  if (*(a14 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, *(a14 + 8), *(a14 + 16));
  }

  else
  {
    v48 = *(a14 + 8);
  }

  v49 = *(a14 + 32);
  v47 = &unk_1F50D8978;
  v50 = *(a14 + 36);
  v42 = &unk_1F50D86E0;
  if (*(a15 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v43, *(a15 + 8), *(a15 + 16));
  }

  else
  {
    v43 = *(a15 + 8);
  }

  v44 = *(a15 + 32);
  v42 = &unk_1F50D8958;
  v45 = *(a15 + 36);
  v46 = *(a15 + 44);
  v37 = &unk_1F50D86E0;
  if (*(a16 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v38, *(a16 + 8), *(a16 + 16));
  }

  else
  {
    v38 = *(a16 + 8);
  }

  v39 = *(a16 + 32);
  v37 = &unk_1F50D89B8;
  v40 = *(a16 + 36);
  if (*(a16 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *(a16 + 40), *(a16 + 48));
  }

  else
  {
    v41 = *(a16 + 40);
  }

  if (*(a17 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *(a17 + 8), *(a17 + 16));
  }

  else
  {
    v33 = *(a17 + 8);
  }

  v34 = *(a17 + 32);
  v35 = *(a17 + 36);
  v36 = *(a17 + 44);
  v162 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v163, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v163 = __s;
  }

  v164 = v95;
  v162 = &unk_1F50D8978;
  v165 = v96;
  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v159, v90.__r_.__value_.__l.__data_, v90.__r_.__value_.__l.__size_);
  }

  else
  {
    v159 = v90;
  }

  v160 = v91;
  v158 = &unk_1F50D8978;
  v161 = v92;
  v154 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v155, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v155 = v86;
  }

  v156 = v87;
  v154 = &unk_1F50D8978;
  v157 = v88;
  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v151, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
  }

  else
  {
    v151 = v82;
  }

  v152 = v83;
  v150 = &unk_1F50D8978;
  v153 = v84;
  v146 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v147, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v147 = v78;
  }

  v148 = v79;
  v146 = &unk_1F50D8978;
  v149 = v80;
  v139 = &unk_1F50D86E0;
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v140, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v140 = v71;
  }

  v141 = v72;
  v139 = &unk_1F50D89D8;
  v142 = v73;
  mediaplatform::Data::Data(&v143, __src, __n, 1);
  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v136, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v136 = v67;
  }

  v137 = v68;
  v135 = &unk_1F50D8978;
  v138 = v69;
  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v62;
  }

  v132 = v63;
  v130 = &unk_1F50D8958;
  v133 = v64;
  v134 = v65;
  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v126 = v57;
  }

  v127 = v58;
  v125 = &unk_1F50D8958;
  v128 = v59;
  v129 = v60;
  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v121, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v121 = v52;
  }

  v122 = v53;
  v120 = &unk_1F50D8958;
  v123 = v54;
  v124 = v55;
  v116 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v117, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v117 = v48;
  }

  v118 = v49;
  v116 = &unk_1F50D8978;
  v119 = v50;
  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v112 = v43;
  }

  v113 = v44;
  v111 = &unk_1F50D8958;
  v114 = v45;
  v115 = v46;
  v106 = &unk_1F50D86E0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v107, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v38;
  }

  v108 = v39;
  v106 = &unk_1F50D89B8;
  v109 = v40;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v110 = v41;
  }

  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v102 = v33;
  }

  v103 = v34;
  v101 = &unk_1F50D8958;
  v104 = v35;
  v105 = v36;
  v223 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v224, v159.__r_.__value_.__l.__data_, v159.__r_.__value_.__l.__size_);
  }

  else
  {
    v224 = v159;
  }

  v225 = v160;
  v223 = &unk_1F50D8978;
  v226 = v161;
  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v220, v155.__r_.__value_.__l.__data_, v155.__r_.__value_.__l.__size_);
  }

  else
  {
    v220 = v155;
  }

  v221 = v156;
  v219 = &unk_1F50D8978;
  v222 = v157;
  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v216, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_);
  }

  else
  {
    v216 = v151;
  }

  v217 = v152;
  v215 = &unk_1F50D8978;
  v218 = v153;
  v211 = &unk_1F50D86E0;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v212, v147.__r_.__value_.__l.__data_, v147.__r_.__value_.__l.__size_);
  }

  else
  {
    v212 = v147;
  }

  v213 = v148;
  v211 = &unk_1F50D8978;
  v214 = v149;
  v204 = &unk_1F50D86E0;
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v205, v140.__r_.__value_.__l.__data_, v140.__r_.__value_.__l.__size_);
  }

  else
  {
    v205 = v140;
  }

  v206 = v141;
  v204 = &unk_1F50D89D8;
  v207 = v142;
  mediaplatform::Data::Data(&v208, v145, v144, 1);
  v200 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v201, v136.__r_.__value_.__l.__data_, v136.__r_.__value_.__l.__size_);
  }

  else
  {
    v201 = v136;
  }

  v202 = v137;
  v200 = &unk_1F50D8978;
  v203 = v138;
  v195 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v196, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    v196 = v131;
  }

  v197 = v132;
  v195 = &unk_1F50D8958;
  v198 = v133;
  v199 = v134;
  v190 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v191, v126.__r_.__value_.__l.__data_, v126.__r_.__value_.__l.__size_);
  }

  else
  {
    v191 = v126;
  }

  v192 = v127;
  v190 = &unk_1F50D8958;
  v193 = v128;
  v194 = v129;
  v185 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v186, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
  }

  else
  {
    v186 = v121;
  }

  v187 = v122;
  v185 = &unk_1F50D8958;
  v188 = v123;
  v189 = v124;
  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, v117.__r_.__value_.__l.__data_, v117.__r_.__value_.__l.__size_);
  }

  else
  {
    v182 = v117;
  }

  v183 = v118;
  v181 = &unk_1F50D8978;
  v184 = v119;
  v176 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v177, v112.__r_.__value_.__l.__data_, v112.__r_.__value_.__l.__size_);
  }

  else
  {
    v177 = v112;
  }

  v178 = v113;
  v176 = &unk_1F50D8958;
  v179 = v114;
  v180 = v115;
  v171 = &unk_1F50D86E0;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v172, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
  }

  else
  {
    v172 = v107;
  }

  v173 = v108;
  v171 = &unk_1F50D89B8;
  v174 = v109;
  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v175, v110.__r_.__value_.__l.__data_, v110.__r_.__value_.__l.__size_);
  }

  else
  {
    v175 = v110;
  }

  v166 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v167, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v167 = v102;
  }

  v168 = v103;
  v166 = &unk_1F50D8958;
  v169 = v104;
  v170 = v105;
  v280 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v281, v220.__r_.__value_.__l.__data_, v220.__r_.__value_.__l.__size_);
  }

  else
  {
    v281 = v220;
  }

  v282 = v221;
  v280 = &unk_1F50D8978;
  v283 = v222;
  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v277, v216.__r_.__value_.__l.__data_, v216.__r_.__value_.__l.__size_);
  }

  else
  {
    v277 = v216;
  }

  v278 = v217;
  v276 = &unk_1F50D8978;
  v279 = v218;
  v272 = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v273, v212.__r_.__value_.__l.__data_, v212.__r_.__value_.__l.__size_);
  }

  else
  {
    v273 = v212;
  }

  v274 = v213;
  v272 = &unk_1F50D8978;
  v275 = v214;
  v265 = &unk_1F50D86E0;
  if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v266, v205.__r_.__value_.__l.__data_, v205.__r_.__value_.__l.__size_);
  }

  else
  {
    v266 = v205;
  }

  v267 = v206;
  v265 = &unk_1F50D89D8;
  v268 = v207;
  mediaplatform::Data::Data(&v269, v210, v209, 1);
  v261 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v262, v201.__r_.__value_.__l.__data_, v201.__r_.__value_.__l.__size_);
  }

  else
  {
    v262 = v201;
  }

  v263 = v202;
  v261 = &unk_1F50D8978;
  v264 = v203;
  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v257, v196.__r_.__value_.__l.__data_, v196.__r_.__value_.__l.__size_);
  }

  else
  {
    v257 = v196;
  }

  v258 = v197;
  v256 = &unk_1F50D8958;
  v259 = v198;
  v260 = v199;
  v251 = &unk_1F50D86E0;
  if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v252, v191.__r_.__value_.__l.__data_, v191.__r_.__value_.__l.__size_);
  }

  else
  {
    v252 = v191;
  }

  v253 = v192;
  v251 = &unk_1F50D8958;
  v254 = v193;
  v255 = v194;
  v246 = &unk_1F50D86E0;
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v247, v186.__r_.__value_.__l.__data_, v186.__r_.__value_.__l.__size_);
  }

  else
  {
    v247 = v186;
  }

  v248 = v187;
  v246 = &unk_1F50D8958;
  v249 = v188;
  v250 = v189;
  v242 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v243, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_);
  }

  else
  {
    v243 = v182;
  }

  v244 = v183;
  v242 = &unk_1F50D8978;
  v245 = v184;
  v237 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v238, v177.__r_.__value_.__l.__data_, v177.__r_.__value_.__l.__size_);
  }

  else
  {
    v238 = v177;
  }

  v239 = v178;
  v237 = &unk_1F50D8958;
  v240 = v179;
  v241 = v180;
  v232 = &unk_1F50D86E0;
  if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v233, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
  }

  else
  {
    v233 = v172;
  }

  v234 = v173;
  v232 = &unk_1F50D89B8;
  v235 = v174;
  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v236, v175.__r_.__value_.__l.__data_, v175.__r_.__value_.__l.__size_);
  }

  else
  {
    v236 = v175;
  }

  v227 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v228, v167.__r_.__value_.__l.__data_, v167.__r_.__value_.__l.__size_);
  }

  else
  {
    v228 = v167;
  }

  v229 = v168;
  v227 = &unk_1F50D8958;
  v230 = v169;
  v231 = v170;
  v331 = &unk_1F50D86E0;
  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v332, v277.__r_.__value_.__l.__data_, v277.__r_.__value_.__l.__size_);
  }

  else
  {
    v332 = v277;
  }

  v333 = v278;
  v331 = &unk_1F50D8978;
  v334 = v279;
  v327 = &unk_1F50D86E0;
  if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v328, v273.__r_.__value_.__l.__data_, v273.__r_.__value_.__l.__size_);
  }

  else
  {
    v328 = v273;
  }

  v329 = v274;
  v327 = &unk_1F50D8978;
  v330 = v275;
  v322 = &unk_1F50D86E0;
  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v323, v266.__r_.__value_.__l.__data_, v266.__r_.__value_.__l.__size_);
  }

  else
  {
    v323 = v266;
  }

  v324 = v267;
  v322 = &unk_1F50D89D8;
  v325 = v268;
  mediaplatform::Data::Data(&v326, v271, v270, 1);
  v318 = &unk_1F50D86E0;
  if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v319, v262.__r_.__value_.__l.__data_, v262.__r_.__value_.__l.__size_);
  }

  else
  {
    v319 = v262;
  }

  v320 = v263;
  v318 = &unk_1F50D8978;
  v321 = v264;
  v313 = &unk_1F50D86E0;
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v314, v257.__r_.__value_.__l.__data_, v257.__r_.__value_.__l.__size_);
  }

  else
  {
    v314 = v257;
  }

  v315 = v258;
  v313 = &unk_1F50D8958;
  v316 = v259;
  v317 = v260;
  v308 = &unk_1F50D86E0;
  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v309, v252.__r_.__value_.__l.__data_, v252.__r_.__value_.__l.__size_);
  }

  else
  {
    v309 = v252;
  }

  v310 = v253;
  v308 = &unk_1F50D8958;
  v311 = v254;
  v312 = v255;
  v303 = &unk_1F50D86E0;
  if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v304, v247.__r_.__value_.__l.__data_, v247.__r_.__value_.__l.__size_);
  }

  else
  {
    v304 = v247;
  }

  v305 = v248;
  v303 = &unk_1F50D8958;
  v306 = v249;
  v307 = v250;
  v299 = &unk_1F50D86E0;
  if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v300, v243.__r_.__value_.__l.__data_, v243.__r_.__value_.__l.__size_);
  }

  else
  {
    v300 = v243;
  }

  v301 = v244;
  v299 = &unk_1F50D8978;
  v302 = v245;
  v294 = &unk_1F50D86E0;
  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v295, v238.__r_.__value_.__l.__data_, v238.__r_.__value_.__l.__size_);
  }

  else
  {
    v295 = v238;
  }

  v296 = v239;
  v294 = &unk_1F50D8958;
  v297 = v240;
  v298 = v241;
  v289 = &unk_1F50D86E0;
  if (SHIBYTE(v233.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v290, v233.__r_.__value_.__l.__data_, v233.__r_.__value_.__l.__size_);
  }

  else
  {
    v290 = v233;
  }

  v291 = v234;
  v289 = &unk_1F50D89B8;
  v292 = v235;
  if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v293, v236.__r_.__value_.__l.__data_, v236.__r_.__value_.__l.__size_);
  }

  else
  {
    v293 = v236;
  }

  v284 = &unk_1F50D86E0;
  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v228.__r_.__value_.__l.__data_, v228.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v228;
  }

  v286 = v229;
  v284 = &unk_1F50D8958;
  v287 = v230;
  v288 = v231;
  mediaplatform::DatabaseColumnTuple<15ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(a1, &v331, &v327, &v322, &v318, &v313, &v308, &v303, &v299, &v294, &v289, &v284);
  v284 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v289);
  v294 = &unk_1F50D86E0;
  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v295.__r_.__value_.__l.__data_);
  }

  v299 = &unk_1F50D86E0;
  if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v300.__r_.__value_.__l.__data_);
  }

  v303 = &unk_1F50D86E0;
  if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v304.__r_.__value_.__l.__data_);
  }

  v308 = &unk_1F50D86E0;
  if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v309.__r_.__value_.__l.__data_);
  }

  v313 = &unk_1F50D86E0;
  if (SHIBYTE(v314.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v314.__r_.__value_.__l.__data_);
  }

  v318 = &unk_1F50D86E0;
  if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v319.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v322);
  v327 = &unk_1F50D86E0;
  if (SHIBYTE(v328.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v328.__r_.__value_.__l.__data_);
  }

  v331 = &unk_1F50D86E0;
  if (SHIBYTE(v332.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v332.__r_.__value_.__l.__data_);
  }

  *(a1 + 576) = &unk_1F50D86E0;
  v25 = (a1 + 584);
  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v25, v281.__r_.__value_.__l.__data_, v281.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v25->__r_.__value_.__l.__data_ = *&v281.__r_.__value_.__l.__data_;
    *(a1 + 600) = *(&v281.__r_.__value_.__l + 2);
  }

  *(a1 + 608) = v282;
  *(a1 + 576) = &unk_1F50D8978;
  *(a1 + 612) = v283;
  v227 = &unk_1F50D86E0;
  if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v228.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v232);
  v237 = &unk_1F50D86E0;
  if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v238.__r_.__value_.__l.__data_);
  }

  v242 = &unk_1F50D86E0;
  if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v243.__r_.__value_.__l.__data_);
  }

  v246 = &unk_1F50D86E0;
  if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v247.__r_.__value_.__l.__data_);
  }

  v251 = &unk_1F50D86E0;
  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  v256 = &unk_1F50D86E0;
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  v261 = &unk_1F50D86E0;
  if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v262.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v265);
  v272 = &unk_1F50D86E0;
  if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v273.__r_.__value_.__l.__data_);
  }

  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v277.__r_.__value_.__l.__data_);
  }

  v280 = &unk_1F50D86E0;
  if (SHIBYTE(v281.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v281.__r_.__value_.__l.__data_);
  }

  *(a1 + 624) = &unk_1F50D86E0;
  v26 = (a1 + 632);
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v26, v224.__r_.__value_.__l.__data_, v224.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v26->__r_.__value_.__l.__data_ = *&v224.__r_.__value_.__l.__data_;
    *(a1 + 648) = *(&v224.__r_.__value_.__l + 2);
  }

  *(a1 + 656) = v225;
  *(a1 + 624) = &unk_1F50D8978;
  *(a1 + 660) = v226;
  v166 = &unk_1F50D86E0;
  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v167.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v171);
  v176 = &unk_1F50D86E0;
  if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v177.__r_.__value_.__l.__data_);
  }

  v181 = &unk_1F50D86E0;
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  v185 = &unk_1F50D86E0;
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }

  v190 = &unk_1F50D86E0;
  if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v191.__r_.__value_.__l.__data_);
  }

  v195 = &unk_1F50D86E0;
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  v200 = &unk_1F50D86E0;
  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v201.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v204);
  v211 = &unk_1F50D86E0;
  if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v212.__r_.__value_.__l.__data_);
  }

  v215 = &unk_1F50D86E0;
  if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v216.__r_.__value_.__l.__data_);
  }

  v219 = &unk_1F50D86E0;
  if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v220.__r_.__value_.__l.__data_);
  }

  v223 = &unk_1F50D86E0;
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v224.__r_.__value_.__l.__data_);
  }

  *(a1 + 672) = &unk_1F50D86E0;
  v27 = (a1 + 680);
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v27, v163.__r_.__value_.__l.__data_, v163.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v27->__r_.__value_.__l.__data_ = *&v163.__r_.__value_.__l.__data_;
    *(a1 + 696) = *(&v163.__r_.__value_.__l + 2);
  }

  *(a1 + 704) = v164;
  *(a1 + 672) = &unk_1F50D8978;
  *(a1 + 708) = v165;
  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v106);
  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  v116 = &unk_1F50D86E0;
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v117.__r_.__value_.__l.__data_);
  }

  v120 = &unk_1F50D86E0;
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

  v125 = &unk_1F50D86E0;
  if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
  }

  v130 = &unk_1F50D86E0;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  v135 = &unk_1F50D86E0;
  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v139);
  v146 = &unk_1F50D86E0;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  v150 = &unk_1F50D86E0;
  if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v151.__r_.__value_.__l.__data_);
  }

  v154 = &unk_1F50D86E0;
  if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v155.__r_.__value_.__l.__data_);
  }

  v158 = &unk_1F50D86E0;
  if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v159.__r_.__value_.__l.__data_);
  }

  v162 = &unk_1F50D86E0;
  if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v163.__r_.__value_.__l.__data_);
  }

  *(a1 + 720) = &unk_1F50D86E0;
  v28 = (a1 + 728);
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v28, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v28->__r_.__value_.__l.__data_ = *&v98.__r_.__value_.__l.__data_;
    *(a1 + 744) = *(&v98.__r_.__value_.__l + 2);
  }

  *(a1 + 752) = v99;
  *(a1 + 720) = &unk_1F50D8978;
  *(a1 + 756) = v100;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v37);
  v42 = &unk_1F50D86E0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v47 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v51 = &unk_1F50D86E0;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v56 = &unk_1F50D86E0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  v61 = &unk_1F50D86E0;
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v66 = &unk_1F50D86E0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v70);
  v77 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v81 = &unk_1F50D86E0;
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  v85 = &unk_1F50D86E0;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  v89 = &unk_1F50D86E0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  v93 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v97 = &unk_1F50D86E0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  *(a1 + 768) = &unk_1F50D86E0;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 776), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v29 = *(a2 + 8);
    *(a1 + 792) = *(a2 + 24);
    *(a1 + 776) = v29;
  }

  *(a1 + 800) = *(a2 + 32);
  *(a1 + 768) = &unk_1F50D89B8;
  *(a1 + 804) = *(a2 + 36);
  v30 = (a1 + 808);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v30, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v31 = *(a2 + 40);
    *(a1 + 824) = *(a2 + 56);
    *&v30->__r_.__value_.__l.__data_ = v31;
  }

  return a1;
}

void sub_1D5971FE8(_Unwind_Exception *a1)
{
  *(v3 + 768) = v2;
  if (*(v3 + 799) < 0)
  {
    operator delete(*v1);
  }

  mediaplatform::DatabaseColumnTuple<11ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(v3);
  _Unwind_Resume(a1);
}

void sub_1D597284C()
{
  STACK[0xE28] = v0;
  if (SLOBYTE(STACK[0xE47]) < 0)
  {
    operator delete(STACK[0xE30]);
  }

  JUMPOUT(0x1D5972384);
}

void sub_1D5972868()
{
  STACK[0xBB8] = v0;
  if (SLOBYTE(STACK[0xBD7]) < 0)
  {
    operator delete(STACK[0xBC0]);
  }

  JUMPOUT(0x1D597246CLL);
}

void sub_1D5972884()
{
  STACK[0x918] = v0;
  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(STACK[0x920]);
  }

  JUMPOUT(0x1D597256CLL);
}

void sub_1D59728A0()
{
  STACK[0x648] = v0;
  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(STACK[0x650]);
  }

  JUMPOUT(0x1D5972684);
}

void sub_1D59728BC()
{
  STACK[0x348] = v0;
  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  JUMPOUT(0x1D59727B4);
}

uint64_t mediaplatform::DatabaseColumnTuple<11ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 720) = &unk_1F50D86E0;
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  *(a1 + 672) = &unk_1F50D86E0;
  if (*(a1 + 703) < 0)
  {
    operator delete(*(a1 + 680));
  }

  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  return mediaplatform::DatabaseColumnTuple<16ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<13ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 624) = &unk_1F50D86E0;
  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  return mediaplatform::DatabaseColumnTuple<16ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<14ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(uint64_t a1)
{
  *(a1 + 576) = &unk_1F50D86E0;
  if (*(a1 + 607) < 0)
  {
    operator delete(*(a1 + 584));
  }

  *(a1 + 528) = &unk_1F50D86E0;
  if (*(a1 + 559) < 0)
  {
    operator delete(*(a1 + 536));
  }

  return mediaplatform::DatabaseColumnTuple<16ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::~DatabaseColumnTuple(a1);
}

uint64_t mediaplatform::DatabaseColumnTuple<15ul,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<mediaplatform::Data>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<int>,mediaplatform::DatabaseColumn<long long>,mediaplatform::DatabaseColumn<std::string>,mediaplatform::DatabaseColumn<long long>>::DatabaseColumnTuple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v73 = &unk_1F50D86E0;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v74, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v74 = *(a3 + 8);
  }

  v75 = *(a3 + 32);
  v73 = &unk_1F50D8978;
  v76 = *(a3 + 36);
  v66 = &unk_1F50D86E0;
  if (*(a4 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, *(a4 + 8), *(a4 + 16));
  }

  else
  {
    __s = *(a4 + 8);
  }

  v68 = *(a4 + 32);
  v66 = &unk_1F50D89D8;
  v69 = *(a4 + 36);
  mediaplatform::Data::Data(&v70, *(a4 + 64), *(a4 + 48), 1);
  v62 = &unk_1F50D86E0;
  if (*(a5 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    v63 = *(a5 + 8);
  }

  v64 = *(a5 + 32);
  v62 = &unk_1F50D8978;
  v65 = *(a5 + 36);
  v57 = &unk_1F50D86E0;
  if (*(a6 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v58, *(a6 + 8), *(a6 + 16));
  }

  else
  {
    v58 = *(a6 + 8);
  }

  v59 = *(a6 + 32);
  v57 = &unk_1F50D8958;
  v60 = *(a6 + 36);
  v61 = *(a6 + 44);
  v52 = &unk_1F50D86E0;
  if (*(a7 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v53, *(a7 + 8), *(a7 + 16));
  }

  else
  {
    v53 = *(a7 + 8);
  }

  v54 = *(a7 + 32);
  v52 = &unk_1F50D8958;
  v55 = *(a7 + 36);
  v56 = *(a7 + 44);
  v47 = &unk_1F50D86E0;
  if (*(a8 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, *(a8 + 8), *(a8 + 16));
  }

  else
  {
    v48 = *(a8 + 8);
  }

  v49 = *(a8 + 32);
  v47 = &unk_1F50D8958;
  v50 = *(a8 + 36);
  v51 = *(a8 + 44);
  v43 = &unk_1F50D86E0;
  if (*(a9 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, *(a9 + 8), *(a9 + 16));
  }

  else
  {
    v44 = *(a9 + 8);
  }

  v45 = *(a9 + 32);
  v43 = &unk_1F50D8978;
  v46 = *(a9 + 36);
  v38 = &unk_1F50D86E0;
  if (*(a10 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, *(a10 + 8), *(a10 + 16));
  }

  else
  {
    v39 = *(a10 + 8);
  }

  v40 = *(a10 + 32);
  v38 = &unk_1F50D8958;
  v41 = *(a10 + 36);
  v42 = *(a10 + 44);
  v33 = &unk_1F50D86E0;
  if (*(a11 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *(a11 + 8), *(a11 + 16));
  }

  else
  {
    v34 = *(a11 + 8);
  }

  v35 = *(a11 + 32);
  v33 = &unk_1F50D89B8;
  v36 = *(a11 + 36);
  if (*(a11 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, *(a11 + 40), *(a11 + 48));
  }

  else
  {
    v37 = *(a11 + 40);
  }

  if (*(a12 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a12 + 8), *(a12 + 16));
  }

  else
  {
    __p = *(a12 + 8);
  }

  v30 = *(a12 + 32);
  v31 = *(a12 + 36);
  v32 = *(a12 + 44);
  v115 = &unk_1F50D86E0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v116, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    v116 = __s;
  }

  v117 = v68;
  v115 = &unk_1F50D89D8;
  v118 = v69;
  mediaplatform::Data::Data(&v119, __src, __n, 1);
  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v112, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v112 = v63;
  }

  v113 = v64;
  v111 = &unk_1F50D8978;
  v114 = v65;
  v106 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v107, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v58;
  }

  v108 = v59;
  v106 = &unk_1F50D8958;
  v109 = v60;
  v110 = v61;
  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v102 = v53;
  }

  v103 = v54;
  v101 = &unk_1F50D8958;
  v104 = v55;
  v105 = v56;
  v96 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v97, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v97 = v48;
  }

  v98 = v49;
  v96 = &unk_1F50D8958;
  v99 = v50;
  v100 = v51;
  v92 = &unk_1F50D86E0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v93, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v93 = v44;
  }

  v94 = v45;
  v92 = &unk_1F50D8978;
  v95 = v46;
  v87 = &unk_1F50D86E0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v88 = v39;
  }

  v89 = v40;
  v87 = &unk_1F50D8958;
  v90 = v41;
  v91 = v42;
  v82 = &unk_1F50D86E0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v83, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v83 = v34;
  }

  v84 = v35;
  v82 = &unk_1F50D89B8;
  v85 = v36;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v86, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v86 = v37;
  }

  v77 = &unk_1F50D86E0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v78, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v78 = __p;
  }

  v79 = v30;
  v77 = &unk_1F50D8958;
  v80 = v31;
  v81 = v32;
  v156 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v157, v112.__r_.__value_.__l.__data_, v112.__r_.__value_.__l.__size_);
  }

  else
  {
    v157 = v112;
  }

  v158 = v113;
  v156 = &unk_1F50D8978;
  v159 = v114;
  v151 = &unk_1F50D86E0;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v152, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
  }

  else
  {
    v152 = v107;
  }

  v153 = v108;
  v151 = &unk_1F50D8958;
  v154 = v109;
  v155 = v110;
  v146 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v147, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
  }

  else
  {
    v147 = v102;
  }

  v148 = v103;
  v146 = &unk_1F50D8958;
  v149 = v104;
  v150 = v105;
  v141 = &unk_1F50D86E0;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v142, v97.__r_.__value_.__l.__data_, v97.__r_.__value_.__l.__size_);
  }

  else
  {
    v142 = v97;
  }

  v143 = v98;
  v141 = &unk_1F50D8958;
  v144 = v99;
  v145 = v100;
  v137 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v138, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
  }

  else
  {
    v138 = v93;
  }

  v139 = v94;
  v137 = &unk_1F50D8978;
  v140 = v95;
  v132 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v133, v88.__r_.__value_.__l.__data_, v88.__r_.__value_.__l.__size_);
  }

  else
  {
    v133 = v88;
  }

  v134 = v89;
  v132 = &unk_1F50D8958;
  v135 = v90;
  v136 = v91;
  v127 = &unk_1F50D86E0;
  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v128, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
  }

  else
  {
    v128 = v83;
  }

  v129 = v84;
  v127 = &unk_1F50D89B8;
  v130 = v85;
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v131, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v131 = v86;
  }

  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v123, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v123 = v78;
  }

  v124 = v79;
  v122 = &unk_1F50D8958;
  v125 = v80;
  v126 = v81;
  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v152.__r_.__value_.__l.__data_, v152.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v152;
  }

  v191 = v153;
  v189 = &unk_1F50D8958;
  v192 = v154;
  v193 = v155;
  v184 = &unk_1F50D86E0;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v185, v147.__r_.__value_.__l.__data_, v147.__r_.__value_.__l.__size_);
  }

  else
  {
    v185 = v147;
  }

  v186 = v148;
  v184 = &unk_1F50D8958;
  v187 = v149;
  v188 = v150;
  v179 = &unk_1F50D86E0;
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v180, v142.__r_.__value_.__l.__data_, v142.__r_.__value_.__l.__size_);
  }

  else
  {
    v180 = v142;
  }

  v181 = v143;
  v179 = &unk_1F50D8958;
  v182 = v144;
  v183 = v145;
  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v176, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
  }

  else
  {
    v176 = v138;
  }

  v177 = v139;
  v175 = &unk_1F50D8978;
  v178 = v140;
  v170 = &unk_1F50D86E0;
  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v171, v133.__r_.__value_.__l.__data_, v133.__r_.__value_.__l.__size_);
  }

  else
  {
    v171 = v133;
  }

  v172 = v134;
  v170 = &unk_1F50D8958;
  v173 = v135;
  v174 = v136;
  v165 = &unk_1F50D86E0;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v166, v128.__r_.__value_.__l.__data_, v128.__r_.__value_.__l.__size_);
  }

  else
  {
    v166 = v128;
  }

  v167 = v129;
  v165 = &unk_1F50D89B8;
  v168 = v130;
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v169, v131.__r_.__value_.__l.__data_, v131.__r_.__value_.__l.__size_);
  }

  else
  {
    v169 = v131;
  }

  v160 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v161, v123.__r_.__value_.__l.__data_, v123.__r_.__value_.__l.__size_);
  }

  else
  {
    v161 = v123;
  }

  v162 = v124;
  v160 = &unk_1F50D8958;
  v163 = v125;
  v164 = v126;
  v218 = &unk_1F50D86E0;
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v219, v185.__r_.__value_.__l.__data_, v185.__r_.__value_.__l.__size_);
  }

  else
  {
    v219 = v185;
  }

  v220 = v186;
  v218 = &unk_1F50D8958;
  v221 = v187;
  v222 = v188;
  v213 = &unk_1F50D86E0;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v214, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
  }

  else
  {
    v214 = v180;
  }

  v215 = v181;
  v213 = &unk_1F50D8958;
  v216 = v182;
  v217 = v183;
  v209 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v210, v176.__r_.__value_.__l.__data_, v176.__r_.__value_.__l.__size_);
  }

  else
  {
    v210 = v176;
  }

  v211 = v177;
  v209 = &unk_1F50D8978;
  v212 = v178;
  v204 = &unk_1F50D86E0;
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v205, v171.__r_.__value_.__l.__data_, v171.__r_.__value_.__l.__size_);
  }

  else
  {
    v205 = v171;
  }

  v206 = v172;
  v204 = &unk_1F50D8958;
  v207 = v173;
  v208 = v174;
  v199 = &unk_1F50D86E0;
  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v200, v166.__r_.__value_.__l.__data_, v166.__r_.__value_.__l.__size_);
  }

  else
  {
    v200 = v166;
  }

  v201 = v167;
  v199 = &unk_1F50D89B8;
  v202 = v168;
  if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v203, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
  }

  else
  {
    v203 = v169;
  }

  v194 = &unk_1F50D86E0;
  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v195, v161.__r_.__value_.__l.__data_, v161.__r_.__value_.__l.__size_);
  }

  else
  {
    v195 = v161;
  }

  v196 = v162;
  v194 = &unk_1F50D8958;
  v197 = v163;
  v198 = v164;
  v242 = &unk_1F50D86E0;
  if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v243, v214.__r_.__value_.__l.__data_, v214.__r_.__value_.__l.__size_);
  }

  else
  {
    v243 = v214;
  }

  v244 = v215;
  v242 = &unk_1F50D8958;
  v245 = v216;
  v246 = v217;
  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v239, v210.__r_.__value_.__l.__data_, v210.__r_.__value_.__l.__size_);
  }

  else
  {
    v239 = v210;
  }

  v240 = v211;
  v238 = &unk_1F50D8978;
  v241 = v212;
  v233 = &unk_1F50D86E0;
  if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v234, v205.__r_.__value_.__l.__data_, v205.__r_.__value_.__l.__size_);
  }

  else
  {
    v234 = v205;
  }

  v235 = v206;
  v233 = &unk_1F50D8958;
  v236 = v207;
  v237 = v208;
  v228 = &unk_1F50D86E0;
  if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v229, v200.__r_.__value_.__l.__data_, v200.__r_.__value_.__l.__size_);
  }

  else
  {
    v229 = v200;
  }

  v230 = v201;
  v228 = &unk_1F50D89B8;
  v231 = v202;
  if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v232, v203.__r_.__value_.__l.__data_, v203.__r_.__value_.__l.__size_);
  }

  else
  {
    v232 = v203;
  }

  v223 = &unk_1F50D86E0;
  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v224, v195.__r_.__value_.__l.__data_, v195.__r_.__value_.__l.__size_);
  }

  else
  {
    v224 = v195;
  }

  v225 = v196;
  v223 = &unk_1F50D8958;
  v226 = v197;
  v227 = v198;
  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v263, v239.__r_.__value_.__l.__data_, v239.__r_.__value_.__l.__size_);
  }

  else
  {
    v263 = v239;
  }

  v264 = v240;
  v262 = &unk_1F50D8978;
  v265 = v241;
  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v258, v234.__r_.__value_.__l.__data_, v234.__r_.__value_.__l.__size_);
  }

  else
  {
    v258 = v234;
  }

  v259 = v235;
  v257 = &unk_1F50D8958;
  v260 = v236;
  v261 = v237;
  v252 = &unk_1F50D86E0;
  if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v253, v229.__r_.__value_.__l.__data_, v229.__r_.__value_.__l.__size_);
  }

  else
  {
    v253 = v229;
  }

  v254 = v230;
  v252 = &unk_1F50D89B8;
  v255 = v231;
  if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v256, v232.__r_.__value_.__l.__data_, v232.__r_.__value_.__l.__size_);
  }

  else
  {
    v256 = v232;
  }

  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v248, v224.__r_.__value_.__l.__data_, v224.__r_.__value_.__l.__size_);
  }

  else
  {
    v248 = v224;
  }

  v249 = v225;
  v247 = &unk_1F50D8958;
  v250 = v226;
  v251 = v227;
  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v277, v258.__r_.__value_.__l.__data_, v258.__r_.__value_.__l.__size_);
  }

  else
  {
    v277 = v258;
  }

  v278 = v259;
  v276 = &unk_1F50D8958;
  v279 = v260;
  v280 = v261;
  v271 = &unk_1F50D86E0;
  if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v272, v253.__r_.__value_.__l.__data_, v253.__r_.__value_.__l.__size_);
  }

  else
  {
    v272 = v253;
  }

  v273 = v254;
  v271 = &unk_1F50D89B8;
  v274 = v255;
  if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v275, v256.__r_.__value_.__l.__data_, v256.__r_.__value_.__l.__size_);
  }

  else
  {
    v275 = v256;
  }

  v266 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v267, v248.__r_.__value_.__l.__data_, v248.__r_.__value_.__l.__size_);
  }

  else
  {
    v267 = v248;
  }

  v268 = v249;
  v266 = &unk_1F50D8958;
  v269 = v250;
  v270 = v251;
  v286 = &unk_1F50D86E0;
  if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v287, v272.__r_.__value_.__l.__data_, v272.__r_.__value_.__l.__size_);
  }

  else
  {
    v287 = v272;
  }

  v288 = v273;
  v286 = &unk_1F50D89B8;
  v289 = v274;
  if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v290, v275.__r_.__value_.__l.__data_, v275.__r_.__value_.__l.__size_);
  }

  else
  {
    v290 = v275;
  }

  v281 = &unk_1F50D86E0;
  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v282, v267.__r_.__value_.__l.__data_, v267.__r_.__value_.__l.__size_);
  }

  else
  {
    v282 = v267;
  }

  v20 = v268;
  v283 = v268;
  v281 = &unk_1F50D8958;
  v284 = v269;
  v285 = v270;
  v291 = &unk_1F50D86E0;
  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v292, v282.__r_.__value_.__l.__data_, v282.__r_.__value_.__l.__size_);
    v20 = v283;
  }

  else
  {
    v292 = v282;
  }

  v293 = v20;
  v291 = &unk_1F50D8958;
  v294 = v284;
  v295 = v285;
  *a1 = &unk_1F50D86E0;
  if (SHIBYTE(v292.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), v292.__r_.__value_.__l.__data_, v292.__r_.__value_.__l.__size_);
    v21 = SHIBYTE(v292.__r_.__value_.__r.__words[2]);
    *(a1 + 32) = v293;
    *a1 = &unk_1F50D8958;
    *(a1 + 36) = v294;
    *(a1 + 44) = v295;
    v291 = &unk_1F50D86E0;
    if (v21 < 0)
    {
      operator delete(v292.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 8) = v292;
    *(a1 + 32) = v20;
    *a1 = &unk_1F50D8958;
    *(a1 + 36) = v294;
    *(a1 + 44) = v295;
    v291 = &unk_1F50D86E0;
  }

  *(a1 + 48) = &unk_1F50D86E0;
  if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), v287.__r_.__value_.__l.__data_, v287.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 56) = v287;
  }

  *(a1 + 80) = v288;
  *(a1 + 48) = &unk_1F50D89B8;
  *(a1 + 84) = v289;
  if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), v290.__r_.__value_.__l.__data_, v290.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 88) = v290;
  }

  v281 = &unk_1F50D86E0;
  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v282.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v286);
  *(a1 + 112) = &unk_1F50D86E0;
  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 120), v277.__r_.__value_.__l.__data_, v277.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 120) = v277;
  }

  *(a1 + 144) = v278;
  *(a1 + 112) = &unk_1F50D8958;
  *(a1 + 148) = v279;
  *(a1 + 156) = v280;
  v266 = &unk_1F50D86E0;
  if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v267.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v271);
  v276 = &unk_1F50D86E0;
  if (SHIBYTE(v277.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v277.__r_.__value_.__l.__data_);
  }

  *(a1 + 160) = &unk_1F50D86E0;
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 168), v263.__r_.__value_.__l.__data_, v263.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 168) = v263;
  }

  *(a1 + 192) = v264;
  *(a1 + 160) = &unk_1F50D8978;
  *(a1 + 196) = v265;
  v247 = &unk_1F50D86E0;
  if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v248.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v252);
  v257 = &unk_1F50D86E0;
  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v258.__r_.__value_.__l.__data_);
  }

  v262 = &unk_1F50D86E0;
  if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v263.__r_.__value_.__l.__data_);
  }

  *(a1 + 208) = &unk_1F50D86E0;
  if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 216), v243.__r_.__value_.__l.__data_, v243.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 216) = v243;
  }

  *(a1 + 240) = v244;
  *(a1 + 208) = &unk_1F50D8958;
  *(a1 + 244) = v245;
  *(a1 + 252) = v246;
  v223 = &unk_1F50D86E0;
  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v224.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v228);
  v233 = &unk_1F50D86E0;
  if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v234.__r_.__value_.__l.__data_);
  }

  v238 = &unk_1F50D86E0;
  if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v239.__r_.__value_.__l.__data_);
  }

  v242 = &unk_1F50D86E0;
  if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v243.__r_.__value_.__l.__data_);
  }

  *(a1 + 256) = &unk_1F50D86E0;
  v22 = (a1 + 264);
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v22, v219.__r_.__value_.__l.__data_, v219.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v22->__r_.__value_.__l.__data_ = *&v219.__r_.__value_.__l.__data_;
    *(a1 + 280) = *(&v219.__r_.__value_.__l + 2);
  }

  *(a1 + 288) = v220;
  *(a1 + 256) = &unk_1F50D8958;
  *(a1 + 292) = v221;
  *(a1 + 300) = v222;
  v194 = &unk_1F50D86E0;
  if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v195.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v199);
  v204 = &unk_1F50D86E0;
  if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v205.__r_.__value_.__l.__data_);
  }

  v209 = &unk_1F50D86E0;
  if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v210.__r_.__value_.__l.__data_);
  }

  v213 = &unk_1F50D86E0;
  if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v214.__r_.__value_.__l.__data_);
  }

  v218 = &unk_1F50D86E0;
  if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v219.__r_.__value_.__l.__data_);
  }

  *(a1 + 304) = &unk_1F50D86E0;
  v23 = (a1 + 312);
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v23, v190.__r_.__value_.__l.__data_, v190.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v23->__r_.__value_.__l.__data_ = *&v190.__r_.__value_.__l.__data_;
    *(a1 + 328) = *(&v190.__r_.__value_.__l + 2);
  }

  *(a1 + 336) = v191;
  *(a1 + 304) = &unk_1F50D8958;
  *(a1 + 340) = v192;
  *(a1 + 348) = v193;
  v160 = &unk_1F50D86E0;
  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v161.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v165);
  v170 = &unk_1F50D86E0;
  if (SHIBYTE(v171.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v171.__r_.__value_.__l.__data_);
  }

  v175 = &unk_1F50D86E0;
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  v179 = &unk_1F50D86E0;
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v180.__r_.__value_.__l.__data_);
  }

  v184 = &unk_1F50D86E0;
  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v185.__r_.__value_.__l.__data_);
  }

  v189 = &unk_1F50D86E0;
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  *(a1 + 352) = &unk_1F50D86E0;
  v24 = (a1 + 360);
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v24, v157.__r_.__value_.__l.__data_, v157.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v24->__r_.__value_.__l.__data_ = *&v157.__r_.__value_.__l.__data_;
    *(a1 + 376) = *(&v157.__r_.__value_.__l + 2);
  }

  *(a1 + 384) = v158;
  *(a1 + 352) = &unk_1F50D8978;
  *(a1 + 388) = v159;
  v122 = &unk_1F50D86E0;
  if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v123.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v127);
  v132 = &unk_1F50D86E0;
  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  v137 = &unk_1F50D86E0;
  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  v141 = &unk_1F50D86E0;
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  v146 = &unk_1F50D86E0;
  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  v151 = &unk_1F50D86E0;
  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  v156 = &unk_1F50D86E0;
  if (SHIBYTE(v157.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v157.__r_.__value_.__l.__data_);
  }

  *(a1 + 400) = &unk_1F50D86E0;
  if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 408), v116.__r_.__value_.__l.__data_, v116.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 408) = v116;
  }

  *(a1 + 432) = v117;
  *(a1 + 400) = &unk_1F50D89D8;
  *(a1 + 436) = v118;
  mediaplatform::Data::Data((a1 + 440), v121, v120, 1);
  v77 = &unk_1F50D86E0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v82);
  v87 = &unk_1F50D86E0;
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  v92 = &unk_1F50D86E0;
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  v96 = &unk_1F50D86E0;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  v101 = &unk_1F50D86E0;
  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  v106 = &unk_1F50D86E0;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v111 = &unk_1F50D86E0;
  if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v112.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v115);
  *(a1 + 480) = &unk_1F50D86E0;
  v25 = (a1 + 488);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v25, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v25->__r_.__value_.__l.__data_ = *&v74.__r_.__value_.__l.__data_;
    *(a1 + 504) = *(&v74.__r_.__value_.__l + 2);
  }

  *(a1 + 512) = v75;
  *(a1 + 480) = &unk_1F50D8978;
  *(a1 + 516) = v76;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<std::string>::~DatabaseColumn(&v33);
  v38 = &unk_1F50D86E0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v43 = &unk_1F50D86E0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v47 = &unk_1F50D86E0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v52 = &unk_1F50D86E0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v57 = &unk_1F50D86E0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  v62 = &unk_1F50D86E0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  mediaplatform::DatabaseColumn<mediaplatform::Data>::~DatabaseColumn(&v66);
  v73 = &unk_1F50D86E0;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  *(a1 + 528) = &unk_1F50D86E0;
  v26 = (a1 + 536);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v26, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v27 = *(a2 + 8);
    *(a1 + 552) = *(a2 + 24);
    *&v26->__r_.__value_.__l.__data_ = v27;
  }

  *(a1 + 560) = *(a2 + 32);
  *(a1 + 528) = &unk_1F50D8978;
  *(a1 + 564) = *(a2 + 36);
  return a1;
}