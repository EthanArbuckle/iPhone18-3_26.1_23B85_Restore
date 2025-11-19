uint64_t quasar::alignTokensToFirstSeenPartialResultsV3@<X0>(const void ****a1@<X0>, const void ***a2@<X1>, int a3@<W2>, void **a4@<X8>)
{
  v145 = 1;
  kaldi::Timer::Reset(v144, a2);
  v146 = 0;
  memset(v142, 0, sizeof(v142));
  v143 = 1065353216;
  v141 = v142;
  memset(v139, 0, sizeof(v139));
  v140 = 1065353216;
  v138[0] = v139;
  v138[1] = &v141;
  std::string::basic_string[abi:ne200100]<0>(v136, "<eps>");
  v109 = quasar::alignTokensToFirstSeenPartialResultsV3(std::vector<std::vector<quasar::Token>> const&,std::vector<quasar::Token> const&,unsigned int)::$_1::operator()(v138, v136);
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v107 = a4;
  v108 = *a1;
  v106 = a1[1];
  v5 = 0;
  if (*a1 == v106)
  {
    v31 = 0;
    v32 = 0;
  }

  else
  {
    do
    {
      v6 = v134;
      if (v134 >= v135)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 3);
        v9 = v8 + 1;
        if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v135 - v133) >> 3) > v9)
        {
          v9 = 0x5555555555555556 * ((v135 - v133) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v135 - v133) >> 3) >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        *&v118 = &v133;
        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(&v133, v10);
        }

        v11 = (8 * ((v134 - v133) >> 3));
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        v7 = 24 * v8 + 24;
        v12 = (24 * v8 - (v134 - v133));
        memcpy(v12, v133, v134 - v133);
        v13 = v133;
        v14 = v135;
        v133 = v12;
        v134 = v7;
        v135 = 0;
        *&v117 = v13;
        *(&v117 + 1) = v14;
        *&v116 = v13;
        *(&v116 + 1) = v13;
        std::__split_buffer<std::vector<int>>::~__split_buffer(&v116);
      }

      else
      {
        *v134 = 0;
        *(v6 + 1) = 0;
        v7 = (v6 + 24);
        *(v6 + 2) = 0;
      }

      v134 = v7;
      v16 = *v108;
      v15 = v108[1];
      if (*v108 != v15)
      {
        v17 = (v7 - 24);
        do
        {
          v18 = quasar::alignTokensToFirstSeenPartialResultsV3(std::vector<std::vector<quasar::Token>> const&,std::vector<quasar::Token> const&,unsigned int)::$_1::operator()(v138, v16);
          v19 = v18 == v109;
          v21 = *(v7 - 16);
          v20 = *(v7 - 8);
          if (v21 >= v20)
          {
            v23 = *v17;
            v24 = v21 - *v17;
            v25 = v24 >> 2;
            v26 = (v24 >> 2) + 1;
            if (v26 >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v27 = v20 - v23;
            if (v27 >> 1 > v26)
            {
              v26 = v27 >> 1;
            }

            v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
            v29 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v28)
            {
              v29 = v26;
            }

            if (v29)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v7 - 24, v29);
            }

            *(4 * v25) = v18;
            v22 = 4 * v25 + 4;
            memcpy(0, v23, v24);
            v30 = *(v7 - 24);
            *(v7 - 24) = 0;
            *(v7 - 16) = v22;
            *(v7 - 8) = 0;
            if (v30)
            {
              operator delete(v30);
            }
          }

          else
          {
            *v21 = v18;
            v22 = (v21 + 4);
          }

          v5 |= v19;
          *(v7 - 16) = v22;
          v16 += 28;
        }

        while (v16 != v15);
      }

      a4 = v107;
      v108 += 3;
    }

    while (v108 != v106);
    v31 = v134;
    v32 = v135;
    if (v134 < v135)
    {
      *v134 = 0;
      *(v31 + 1) = 0;
      v33 = (v31 + 24);
      *(v31 + 2) = 0;
      goto LABEL_40;
    }
  }

  v34 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v133) >> 3);
  v35 = v34 + 1;
  if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v36 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v133) >> 3);
  if (2 * v36 > v35)
  {
    v35 = 2 * v36;
  }

  if (v36 >= 0x555555555555555)
  {
    v37 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v37 = v35;
  }

  *&v118 = &v133;
  if (v37)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(&v133, v37);
  }

  v38 = 24 * v34;
  *v38 = 0;
  *(v38 + 8) = 0;
  *(v38 + 16) = 0;
  v33 = 24 * v34 + 24;
  v39 = (v38 - (v134 - v133));
  memcpy(v39, v133, v134 - v133);
  v40 = v133;
  v41 = v135;
  v133 = v39;
  v134 = v33;
  v135 = 0;
  *&v117 = v40;
  *(&v117 + 1) = v41;
  *&v116 = v40;
  *(&v116 + 1) = v40;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v116);
LABEL_40:
  v134 = v33;
  v43 = *a2;
  v42 = a2[1];
  if (*a2 != v42)
  {
    v44 = (v33 - 24);
    do
    {
      v45 = quasar::alignTokensToFirstSeenPartialResultsV3(std::vector<std::vector<quasar::Token>> const&,std::vector<quasar::Token> const&,unsigned int)::$_1::operator()(v138, v43);
      v46 = v45 == v109;
      v48 = *(v33 - 16);
      v47 = *(v33 - 8);
      if (v48 >= v47)
      {
        v50 = *v44;
        v51 = v48 - *v44;
        v52 = v51 >> 2;
        v53 = (v51 >> 2) + 1;
        if (v53 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v54 = v47 - v50;
        if (v54 >> 1 > v53)
        {
          v53 = v54 >> 1;
        }

        v28 = v54 >= 0x7FFFFFFFFFFFFFFCLL;
        v55 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v28)
        {
          v55 = v53;
        }

        if (v55)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v33 - 24, v55);
        }

        *(4 * v52) = v45;
        v49 = 4 * v52 + 4;
        memcpy(0, v50, v51);
        v56 = *(v33 - 24);
        *(v33 - 24) = 0;
        *(v33 - 16) = v49;
        *(v33 - 8) = 0;
        if (v56)
        {
          operator delete(v56);
        }
      }

      else
      {
        *v48 = v45;
        v49 = (v48 + 4);
      }

      v5 |= v46;
      *(v33 - 16) = v49;
      v43 += 28;
      a4 = v107;
    }

    while (v43 != v42);
  }

  if (v5)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v116);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v116, "Input contains epsilon. Skipping alignment and returning all unaligned", 70);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v116);
    }

    std::vector<int>::vector[abi:ne200100](a4, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  }

  else
  {
    std::vector<int>::vector[abi:ne200100](a4, (*(v133 + 1) - *v133) >> 2);
    __p = 0;
    v114 = 0;
    v115 = 0;
    v57 = v133;
    if (0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 3) >= 2)
    {
      v58 = 0;
      v59 = 1;
      do
      {
        v60 = &v57[24 * v59];
        kaldi::LevenshteinAlignmentWithPrefixOptimization<int>(&v57[24 * v58], v60, v109, &__p, 0);
        __src = 0;
        v111 = 0;
        v112 = 0;
        v62 = __p;
        v61 = v114;
        if (__p == v114)
        {
          v91 = 0;
          v63 = 0;
        }

        else
        {
          v63 = 0;
          v64 = 0;
          do
          {
            if (*v62 == v109)
            {
              if (v63 >= v112)
              {
                v67 = __src;
                v68 = v63 - __src;
                v69 = (v63 - __src) >> 2;
                v70 = v69 + 1;
                if ((v69 + 1) >> 62)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                v71 = v112 - __src;
                if ((v112 - __src) >> 1 > v70)
                {
                  v70 = v71 >> 1;
                }

                v28 = v71 >= 0x7FFFFFFFFFFFFFFCLL;
                v72 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v28)
                {
                  v72 = v70;
                }

                if (v72)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v72);
                }

                *(4 * v69) = v59;
                v63 = (4 * v69 + 4);
                memcpy(0, v67, v68);
                v73 = __src;
                __src = 0;
                v111 = v63;
                v112 = 0;
                if (v73)
                {
                  operator delete(v73);
                }
              }

              else
              {
                *v63 = v59;
                v63 += 4;
              }

              v111 = v63;
            }

            else
            {
              v65 = v62[1];
              if (v65 != v109)
              {
                if (*v62 == v65)
                {
                  v66 = *a4;
                  if (v64 >= ((a4[1] - *a4) >> 2))
                  {
                    std::vector<int>::__throw_out_of_range[abi:ne200100]();
                  }

                  if (v63 >= v112)
                  {
                    v80 = __src;
                    v81 = v63 - __src;
                    v82 = (v63 - __src) >> 2;
                    v83 = v82 + 1;
                    if ((v82 + 1) >> 62)
                    {
                      std::vector<int>::__throw_length_error[abi:ne200100]();
                    }

                    v84 = v112 - __src;
                    if ((v112 - __src) >> 1 > v83)
                    {
                      v83 = v84 >> 1;
                    }

                    v28 = v84 >= 0x7FFFFFFFFFFFFFFCLL;
                    v85 = 0x3FFFFFFFFFFFFFFFLL;
                    if (!v28)
                    {
                      v85 = v83;
                    }

                    if (v85)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v85);
                    }

                    v87 = v82;
                    v88 = (4 * v82);
                    v89 = &v88[-v87];
                    *v88 = v66[v64];
                    v63 = (v88 + 1);
                    memcpy(v89, v80, v81);
                    v90 = __src;
                    __src = v89;
                    v111 = v63;
                    v112 = 0;
                    if (v90)
                    {
                      operator delete(v90);
                    }

                    a4 = v107;
                  }

                  else
                  {
                    *v63 = v66[v64];
                    v63 += 4;
                  }
                }

                else if (v63 >= v112)
                {
                  v74 = __src;
                  v75 = v63 - __src;
                  v76 = (v63 - __src) >> 2;
                  v77 = v76 + 1;
                  if ((v76 + 1) >> 62)
                  {
                    std::vector<int>::__throw_length_error[abi:ne200100]();
                  }

                  v78 = v112 - __src;
                  if ((v112 - __src) >> 1 > v77)
                  {
                    v77 = v78 >> 1;
                  }

                  v28 = v78 >= 0x7FFFFFFFFFFFFFFCLL;
                  v79 = 0x3FFFFFFFFFFFFFFFLL;
                  if (!v28)
                  {
                    v79 = v77;
                  }

                  if (v79)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v79);
                  }

                  *(4 * v76) = v59;
                  v63 = (4 * v76 + 4);
                  memcpy(0, v74, v75);
                  v86 = __src;
                  __src = 0;
                  v111 = v63;
                  v112 = 0;
                  if (v86)
                  {
                    operator delete(v86);
                  }
                }

                else
                {
                  *v63 = v59;
                  v63 += 4;
                }

                v111 = v63;
              }

              ++v64;
            }

            v62 += 2;
          }

          while (v62 != v61);
          v91 = __src;
        }

        if (v63 - v91 != *(v60 + 1) - *v60)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v116);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v116, "newOrigins.size() == b.size()", 29);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v116);
        }

        if (&__src != a4)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a4, v91, v63, (v63 - v91) >> 2);
          v91 = __src;
        }

        if (v91)
        {
          v111 = v91;
          operator delete(v91);
        }

        ++v59;
        v57 = v133;
        ++v58;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v134 - v133) >> 3) > v59);
    }

    v92 = *a4;
    v93 = a4[1];
    if (*a4 != v93)
    {
      v94 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
      do
      {
        v95 = *v92;
        if (v94 == v95)
        {
          v96 = -1;
        }

        else
        {
          v96 = v95 + a3;
        }

        *v92++ = v96;
      }

      while (v92 != v93);
    }

    if (quasar::gLogLevel > 4)
    {
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v116 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v116);
      v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v116, "alignV3: finalResultSize=", 25);
      v98 = MEMORY[0x1B8C84C30](v97, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
      v99 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, " time=", 6);
      Seconds = kaldi::Timer::GetSeconds(5, v100);
      MEMORY[0x1B8C84BE0](v99, Seconds - v144[0]);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v116);
    }

    if (__p)
    {
      v114 = __p;
      operator delete(__p);
    }
  }

  *&v116 = &v133;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v116);
  if (v137 < 0)
  {
    operator delete(v136[0]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v139);
  return std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v142);
}

uint64_t quasar::alignTokensToFirstSeenPartialResultsV3(std::vector<std::vector<quasar::Token>> const&,std::vector<quasar::Token> const&,unsigned int)::$_1::operator()(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 8);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(*v4, a2);
  if (v5)
  {
    if (*(v5 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v5[5], v5[6]);
    }

    else
    {
      __p = *(v5 + 5);
    }
  }

  else
  {
    quasar::getNormString(a2, &__p);
    v6 = *v4;
    v13 = a2;
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6, a2);
    std::string::operator=((v7 + 5), &__p);
  }

  v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(*a1, &__p.__r_.__value_.__l.__data_);
  if (!v8)
  {
    v9 = *a1;
    v13 = *(*a1 + 24);
    v8 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::string&,unsigned long>(v9, &__p.__r_.__value_.__l.__data_);
  }

  v10 = *(v8 + 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1B5146894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::LevenshteinAlignmentWithPrefixOptimization<int>(uint64_t *a1, void *a2, unsigned int a3, char **a4, int a5)
{
  v5 = a4;
  v6 = a3;
  v47[2] = *MEMORY[0x1E69E9840];
  if ((a2[1] - *a2) >> 2 >= ((a1[1] - *a1) >> 2))
  {
    v9 = (a1[1] - *a1) >> 2;
  }

  else
  {
    v9 = (a2[1] - *a2) >> 2;
  }

  __src = 0;
  v44 = 0;
  v45 = 0;
  if (v9 < 1)
  {
    v24 = 0;
  }

  else
  {
    v31 = a5;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *a1;
      if (v11 >= (a1[1] - *a1) >> 2 || v11 >= (a2[1] - *a2) >> 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = *(v12 + 4 * v11);
      if (v13 != *(*a2 + 4 * v11))
      {
        break;
      }

      if (v10 >= v45)
      {
        v14 = __src;
        v15 = v10 - __src;
        v16 = (v10 - __src) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v18 = v45 - __src;
        if ((v45 - __src) >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v19);
        }

        v20 = v16;
        v21 = (8 * v16);
        *v21 = v13;
        v21[1] = *(v12 + 4 * v11);
        v10 = 8 * v16 + 8;
        v22 = &v21[-2 * v20];
        memcpy(v22, v14, v15);
        v23 = __src;
        __src = v22;
        v44 = v10;
        v45 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v10 = v13;
        *(v10 + 4) = *(v12 + 4 * v11);
        v10 += 8;
      }

      v44 = v10;
      if ((v9 & 0x7FFFFFFF) == ++v11)
      {
        LODWORD(v11) = v9;
        break;
      }
    }

    v24 = 4 * v11;
    v5 = a4;
    a5 = v31;
    v6 = a3;
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (a5)
  {
    v46 = 0x200000001;
  }

  else
  {
    v46 = 0x100000002;
  }

  LODWORD(v47[0]) = 0;
  std::vector<kaldi::LevenshteinOp::Value>::__assign_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value const*,kaldi::LevenshteinOp::Value const*>(&v40, &v46, v47 + 4, 3uLL);
  v25 = a1[1];
  v26 = v24 + *a1;
  v47[0] = 0;
  v47[1] = 0;
  v46 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v46, v26, v25, (v25 - v26) >> 2);
  v27 = a2[1];
  v28 = v24 + *a2;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v37, v28, v27, (v27 - v28) >> 2);
  __p = 0;
  v35 = 0;
  v36 = 0;
  std::vector<kaldi::LevenshteinOp::Value>::__init_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value*,kaldi::LevenshteinOp::Value*>(&__p, v40, v41, (v41 - v40) >> 2);
  v29 = kaldi::LevenshteinAlignment<int>(&v46, &v37, v6, v5, &__p);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v46)
  {
    v47[0] = v46;
    operator delete(v46);
  }

  std::vector<std::pair<int,int>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<int,int>*>,std::__wrap_iter<std::pair<int,int>*>>(v5, *v5, __src, v44, (v44 - __src) >> 3);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (__src)
  {
    v44 = __src;
    operator delete(__src);
  }

  return v29;
}

void sub_1B5146BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::string&,unsigned long>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__construct_node_hash<std::string&,unsigned long>();
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

void sub_1B5146EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5146F8C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B51471FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51472C4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<quasar::Token>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = (v5 + 224 * a2);
      v11 = 224 * a2;
      do
      {
        quasar::Token::Token(v5);
        v5 = (v5 + 224);
        v11 -= 224;
      }

      while (v11);
      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 5);
    if (v6 + a2 > 0x124924924924924)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 5);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x92492492492492)
    {
      v9 = 0x124924924924924;
    }

    else
    {
      v9 = v8;
    }

    v22 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v9);
    }

    v12 = 224 * v6;
    v19 = 0;
    v20 = v12;
    v21 = v12;
    v13 = 224 * a2;
    v14 = (v12 + 224 * a2);
    do
    {
      quasar::Token::Token(v12);
      v12 += 224;
      v13 -= 224;
    }

    while (v13);
    *&v21 = v14;
    v15 = *(a1 + 8);
    v16 = v20 + *a1 - v15;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    v18 = *(a1 + 16);
    *(a1 + 8) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    std::__split_buffer<quasar::Token>::~__split_buffer(&v19);
  }
}

void sub_1B5147460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::LevenshteinAlignment<int>(uint64_t *a1, char **a2, unsigned int a3, uint64_t a4, unsigned int **a5)
{
  v96 = *MEMORY[0x1E69E9840];
  v8 = *a5;
  v9 = a5[1];
  if (*a5 == v9)
  {
    __src = 0x100000000;
    v94 = 2;
    std::vector<kaldi::LevenshteinOp::Value>::__assign_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value const*,kaldi::LevenshteinOp::Value const*>(a5, &__src, v95, 3uLL);
    v8 = *a5;
    v9 = a5[1];
  }

  if (v8 == v9)
  {
    goto LABEL_95;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a3;
  do
  {
    v14 = *v8;
    if (*v8 == 2)
    {
      ++v12;
    }

    else if (v14 == 1)
    {
      ++v11;
    }

    else
    {
      if (v14)
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
LABEL_95:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__src);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&__src, "numSubOrOk == 1 && numDel == 1 && numIns == 1");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__src);
  }

  *(a4 + 8) = *a4;
  v87 = *a1;
  v88 = a1[1];
  v15 = (v88 - *a1) >> 2;
  v17 = *a2;
  v16 = a2[1];
  std::vector<std::vector<int>>::vector[abi:ne200100](&__src, v15 + 1);
  v86 = a5;
  v18 = 0;
  v19 = 0;
  v20 = v15;
  v85 = v16 - v17;
  v21 = (v16 - v17) >> 2;
  v22 = v21 + 1;
  do
  {
    std::vector<int>::resize((__src + v18), v21 + 1);
    ++v19;
    v18 += 24;
  }

  while (v19 <= v15);
  v23 = 0;
  v24 = __src;
  v25 = *__src;
  if (v22 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v21 + 1;
  }

  v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v28 = vdupq_n_s64(v26 - 1);
  v29 = xmmword_1B5AE0050;
  v30 = xmmword_1B5AE0060;
  v31 = vdupq_n_s64(4uLL);
  v32 = v25 + 2;
  do
  {
    v33 = vmovn_s64(vcgeq_u64(v28, v30));
    if (vuzp1_s16(v33, *v28.i8).u8[0])
    {
      *(v32 - 2) = v23;
    }

    if (vuzp1_s16(v33, *&v28).i8[2])
    {
      *(v32 - 1) = v23 + 1;
    }

    if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v29))).i32[1])
    {
      *v32 = v23 + 2;
      v32[1] = v23 + 3;
    }

    v23 += 4;
    v29 = vaddq_s64(v29, v31);
    v30 = vaddq_s64(v30, v31);
    v32 += 4;
  }

  while (v27 != v23);
  if (v88 != v87)
  {
    v34 = *a2;
    v35 = 2;
    if (v22 <= 2)
    {
      v36 = 2;
    }

    else
    {
      v36 = v21 + 1;
    }

    if (v15 + 1 > 2)
    {
      v35 = v15 + 1;
    }

    v37 = *v25;
    v38 = *a1 - 4;
    v39 = v36 - 1;
    v40 = 1;
    do
    {
      ++v37;
      v41 = *(v24 + 24 * v40);
      *v41 = v37;
      if (v16 != v17)
      {
        v42 = v25 + 1;
        v43 = v41 + 1;
        v44 = v34;
        v45 = v39;
        v46 = v37;
        do
        {
          v47 = *(v42 - 1);
          v48 = *v44++;
          if (*(v38 + 4 * v40) != v48)
          {
            ++v47;
          }

          v50 = *v42++;
          v49 = v50;
          if (v46 >= v50)
          {
            v46 = v49;
          }

          if (v46 + 1 < v47)
          {
            ++v46;
          }

          else
          {
            v46 = v47;
          }

          *v43++ = v46;
          --v45;
        }

        while (v45);
      }

      ++v40;
      v25 = v41;
    }

    while (v40 != v35);
  }

  if (v88 != v87 || v16 != v17)
  {
    while (1)
    {
      if (v20)
      {
        if (!v21)
        {
          v52 = 0;
          v53 = v20 - 1;
LABEL_75:
          v64 = *(*a1 + 4 * v53);
          v20 = v53;
          goto LABEL_76;
        }

        v53 = v20 - 1;
        v54 = (__src + 24 * v20);
        v55 = *(v54 - 3);
        v56 = *(v55 + 4 * (v21 - 1));
        if (*(*a1 + 4 * (v20 - 1)) != *&(*a2)[4 * v21 - 4])
        {
          ++v56;
        }

        LODWORD(p_src) = v56;
        v57 = *(v55 + 4 * v21);
        HIDWORD(p_src) = v57 + 1;
        v58 = *(*v54 + 4 * (v21 - 1));
        v92 = v58 + 1;
        if (v58 >= v57)
        {
          v59 = v57 + 1;
        }

        else
        {
          v59 = v58 + 1;
        }

        if (v59 >= v56)
        {
          v59 = v56;
        }

        for (i = *v86; ; ++i)
        {
          if (i == v86[1])
          {
            v53 = 0;
            v52 = 0;
            goto LABEL_74;
          }

          v61 = *i;
          if (*(&p_src + v61) == v59)
          {
            break;
          }
        }

        if (v61 == 1)
        {
          v62 = v20 - 1;
        }

        else
        {
          v62 = v20;
        }

        if (v61 == 1)
        {
          v63 = v21;
        }

        else
        {
          v63 = v21 - 1;
        }

        if (v61)
        {
          v53 = v62;
          v52 = v63;
        }

        else
        {
          v52 = v21 - 1;
        }
      }

      else
      {
        v53 = 0;
        v52 = v21 - 1;
      }

LABEL_74:
      v64 = v13;
      if (v53 != v20)
      {
        goto LABEL_75;
      }

LABEL_76:
      v65 = v13;
      if (v52 != v21)
      {
        v65 = *&(*a2)[4 * v52];
      }

      v66 = v64 | (v65 << 32);
      v68 = *(a4 + 8);
      v67 = *(a4 + 16);
      if (v68 >= v67)
      {
        v69 = (v68 - *a4) >> 3;
        if ((v69 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v70 = v67 - *a4;
        v71 = v70 >> 2;
        if (v70 >> 2 <= (v69 + 1))
        {
          v71 = v69 + 1;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFF8)
        {
          v72 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v72 = v71;
        }

        if (v72)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a4, v72);
        }

        v73 = (8 * v69);
        *v73 = v66;
        v51 = 8 * v69 + 8;
        v74 = *(a4 + 8) - *a4;
        v75 = v73 - v74;
        memcpy(v73 - v74, *a4, v74);
        v76 = *a4;
        *a4 = v75;
        *(a4 + 8) = v51;
        *(a4 + 16) = 0;
        if (v76)
        {
          operator delete(v76);
        }
      }

      else
      {
        *v68 = v66;
        v51 = (v68 + 1);
      }

      *(a4 + 8) = v51;
      v21 = v52;
      if (!(v20 | v52))
      {
        goto LABEL_91;
      }
    }
  }

  v51 = *(a4 + 8);
LABEL_91:
  v77 = (v51 - *a4) >> 3;
  if (v77 >= 2)
  {
    v78 = v77 >> 1;
    v79 = (v51 - 4);
    v80 = (*a4 + 4);
    do
    {
      v81 = *(v80 - 1);
      *(v80 - 1) = *(v79 - 1);
      *(v79 - 1) = v81;
      v82 = *v80;
      *v80 = *v79;
      v80 += 2;
      *v79 = v82;
      v79 -= 2;
      --v78;
    }

    while (v78);
  }

  v83 = *(*(__src + 24 * v15) + v85);
  p_src = &__src;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&p_src);
  return v83;
}

void sub_1B5147A54(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *std::vector<kaldi::LevenshteinOp::Value>::__assign_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value const*,kaldi::LevenshteinOp::Value const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t std::vector<kaldi::LevenshteinOp::Value>::__init_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value*,kaldi::LevenshteinOp::Value*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5147C1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<std::pair<int,int>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<int,int>*>,std::__wrap_iter<std::pair<int,int>*>>(void *a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return a2;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 3)
  {
    v16 = (v9 - a2) >> 3;
    if (v16 >= a5)
    {
      v20 = &a2[8 * a5];
      v21 = &v9[-8 * a5];
      v22 = a1[1];
      while (v21 < v9)
      {
        v23 = *v21;
        v21 += 8;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v9 != v20)
      {
        v24 = v20 - v9;
        v25 = v9 - 4;
        v26 = &v25[-8 * a5];
        do
        {
          *(v25 - 1) = *(v26 - 1);
          v27 = *v26;
          v26 -= 2;
          *v25 = v27;
          v25 -= 8;
          v24 += 8;
        }

        while (v24);
      }

      v28 = a2;
      do
      {
        v29 = *v7++;
        *v28 = v29;
        v28 += 8;
      }

      while (v7 != &a3[a5]);
    }

    else
    {
      v17 = (a3 + v9 - a2);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v39 = (a3 + v9 - a2);
        v19 = a1[1];
        do
        {
          v40 = *v39++;
          *v19 = v40;
          v19 += 8;
          ++v18;
        }

        while (v39 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v41 = &a2[8 * a5];
        v42 = &v18[-a5];
        v43 = v18;
        while (v42 < v9)
        {
          v44 = *v42++;
          *v43++ = v44;
        }

        a1[1] = v43;
        if (v19 != v41)
        {
          v45 = v41 - v18;
          v46 = v18 - 1;
          v47 = &v46[-2 * a5];
          do
          {
            *(v46 - 1) = *(v47 - 1);
            v48 = *v47;
            v47 -= 2;
            *v46 = v48;
            v46 -= 2;
            v45 += 8;
          }

          while (v45);
        }

        if (v9 != a2)
        {
          v49 = a2;
          do
          {
            v50 = *v7++;
            *v49 = v50;
            v49 += 8;
          }

          while (v7 != v17);
        }
      }
    }

    return a2;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 3);
  if (v12 >> 61)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v13 = a2 - v11;
  v14 = v10 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v15);
  }

  v30 = 8 * (v13 >> 3);
  v31 = 8 * a5;
  v32 = v30;
  do
  {
    v33 = *v7++;
    *v32++ = v33;
    v31 -= 8;
  }

  while (v31);
  memcpy((v30 + 8 * a5), a2, a1[1] - a2);
  v34 = *a1;
  v35 = v30 + 8 * a5 + a1[1] - a2;
  a1[1] = a2;
  v36 = a2 - v34;
  v37 = (v30 - (a2 - v34));
  memcpy(v37, v34, v36);
  v38 = *a1;
  *a1 = v37;
  a1[1] = v35;
  a1[2] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  return v30;
}

void TRegExpCompiler::TRegExpCompiler(TRegExpCompiler *this, const TLocaleInfo *a2)
{
  *this = &unk_1F2CFF7F8;
  v4 = (this + 232);
  TFsa::TFsa((this + 8));
  TAllocator::TAllocator(v4, 2048);
  *(this + 34) = a2;
  v5 = TFsa::newState((this + 8), 0);
  TFsa::addExtremity(this + 8, v5, 0);
}

void TRegExpCompiler::~TRegExpCompiler(TRegExpCompiler *this)
{
  *this = &unk_1F2CFF7F8;
  TAllocator::clear((this + 232));
  TFsa::~TFsa((this + 8));
}

{
  TRegExpCompiler::~TRegExpCompiler(this);

  JUMPOUT(0x1B8C85350);
}

void *TRegExpCompiler::mergeStateData(uint64_t a1, void *a2)
{
  v3 = a2 + 1;
  v2 = *a2;
  if (*a2 == a2 + 1)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = v2[4];
    if (v6)
    {
      v5 += *v6;
    }

    v7 = v2[1];
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
        v8 = v2[2];
        v9 = *v8 == v2;
        v2 = v8;
      }

      while (!v9);
    }

    v2 = v8;
  }

  while (v8 != v3);
  if (!v5)
  {
    return 0;
  }

  if ((v5 + 1) >> 61)
  {
    v10 = -1;
  }

  else
  {
    v10 = 8 * (v5 + 1);
  }

  result = TAllocator::allocate((a1 + 232), v10);
  *result = v5;
  v12 = *a2;
  if (*a2 != v3)
  {
    v13 = 1;
    do
    {
      v14 = v12[4];
      if (v14 && *v14)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          v13 = v16 + 1;
          result[v16++] = v14[++v15];
        }

        while (v15 < *v14);
      }

      v17 = v12[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v12[2];
          v9 = *v18 == v12;
          v12 = v18;
        }

        while (!v9);
      }

      v12 = v18;
    }

    while (v18 != v3);
  }

  return result;
}

void *TRegExpCompiler::compileCharacter(uint64_t a1, unsigned int **a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = **a2;
  if (v11 != 92)
  {
    v18 = *(a1 + 272);
    if (a3 == 2)
    {
      v20 = *(v18 + 32);
      if (v20 && v11 < 0x10000)
      {
        LODWORD(v11) = *(v20 + 4 * v11);
      }
    }

    else if (a3 == 1)
    {
      LODWORD(v11) = TLocaleInfo::toLower(v18, v11);
    }

    v21 = v11;
    v22 = v11 == 0;
    goto LABEL_19;
  }

  v13 = v10[1];
  v12 = v13;
  *a2 = v10 + 1;
  if (!v13)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "search pattern not terminated");
    TException::TException(v30, __p);
    v30[0].__vftable = &unk_1F2CFF890;
    if (v31 >= 0)
    {
      v26 = &v30[1];
    }

    else
    {
      v26 = v30[1].__vftable;
    }

    conditionalAssert(v26, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 336);
    TException::~TException(v30);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v30, "search pattern not terminated");
    TException::TException(exception, v30);
    *exception = &unk_1F2CFF890;
  }

  if (wcschr("a", v12))
  {
    v14 = TFsa::newState((a1 + 8), 0);
    TFsa::newTrans((a1 + 8), a4, v14, 0xFFFFLL);
    if (**a2)
    {
      v15 = **a2;
    }

    else
    {
      v15 = -1;
    }

    v16 = (a1 + 8);
    v17 = v14;
LABEL_23:
    v19 = a5;
    goto LABEL_24;
  }

  if (v12 == 116)
  {
    v16 = (a1 + 8);
    v17 = a4;
    v19 = a5;
    v15 = 9;
    goto LABEL_24;
  }

  if (v12 == 114)
  {
    v16 = (a1 + 8);
    v17 = a4;
    v19 = a5;
    v15 = 13;
    goto LABEL_24;
  }

  if (v12 != 110)
  {
    v24 = *(a1 + 272);
    if (a3 == 2)
    {
      v25 = *(v24 + 32);
      if (v25 && v12 < 0x10000)
      {
        LODWORD(v12) = *(v25 + 4 * v12);
      }
    }

    else if (a3 == 1)
    {
      LODWORD(v12) = TLocaleInfo::toLower(v24, v12);
    }

    v21 = v12;
    v22 = v12 == 0;
LABEL_19:
    if (v22)
    {
      v15 = -1;
    }

    else
    {
      v15 = v21;
    }

    v16 = (a1 + 8);
    v17 = a4;
    goto LABEL_23;
  }

  v16 = (a1 + 8);
  v17 = a4;
  v19 = a5;
  v15 = 10;
LABEL_24:
  result = TFsa::newTrans(v16, v17, v19, v15);
  ++*a2;
  return result;
}

void sub_1B51483A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t TException::what(TException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void *TRegExpCompiler::compileRange(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a2;
  v12 = *(a1 + 272);
  if (a4 == 2)
  {
    v15 = *(v12 + 32);
    v13 = a2;
    v14 = a3;
    if (v15)
    {
      v13 = a2;
      if (a2 < 0x10000)
      {
        v13 = *(v15 + 4 * a2);
      }

      if (a3 >= 0x10000)
      {
        v14 = a3;
      }

      else
      {
        v14 = *(v15 + 4 * a3);
      }
    }
  }

  else
  {
    v13 = a2;
    v14 = a3;
    if (a4 == 1)
    {
      v13 = TLocaleInfo::toLower(v12, a2);
      v14 = TLocaleInfo::toLower(*(a1 + 272), v9);
    }
  }

  if (v13 > v14)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v38);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "invalid [", 9);
    v29 = MEMORY[0x1B8C84C00](v28, v10);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ",", 1);
    v31 = MEMORY[0x1B8C84C00](v30, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "] range", 7);
    std::stringbuf::str();
    TException::TException(v36, &__p);
    v36[0].__vftable = &unk_1F2CFF890;
    if (v37 >= 0)
    {
      v32 = &v36[1];
    }

    else
    {
      v32 = v36[1].__vftable;
    }

    conditionalAssert(v32, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 386);
    TException::~TException(v36);
    if (v35 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::stringbuf::str();
    TException::TException(exception, v36);
    *exception = &unk_1F2CFF890;
  }

  v16 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), a5, v16, 0xFFFFLL);
  v17 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), v16, v17, 114);
  v18 = TFsa::newState((a1 + 8), 0);
  v19 = *(a1 + 272);
  if (a4 == 2)
  {
    v22 = *(v19 + 32);
    if (v22 && v10 < 0x10000)
    {
      LODWORD(v10) = *(v22 + 4 * v10);
    }

    if (v10)
    {
      v23 = v10;
    }

    else
    {
      v23 = -1;
    }

    TFsa::newTrans((a1 + 8), v17, v18, v23);
    v24 = *(*(a1 + 272) + 32);
    if (v24 && v9 < 0x10000)
    {
      LODWORD(v9) = *(v24 + 4 * v9);
    }
  }

  else if (a4 == 1)
  {
    v20 = TLocaleInfo::toLower(v19, v10);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = -1;
    }

    TFsa::newTrans((a1 + 8), v17, v18, v21);
    LODWORD(v9) = TLocaleInfo::toLower(*(a1 + 272), v9);
  }

  else
  {
    if (v10)
    {
      v25 = v10;
    }

    else
    {
      v25 = -1;
    }

    TFsa::newTrans((a1 + 8), v17, v18, v25);
  }

  if (v9)
  {
    v26 = v9;
  }

  else
  {
    v26 = -1;
  }

  return TFsa::newTrans((a1 + 8), v18, a6, v26);
}

void sub_1B5148778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void *TRegExpCompiler::compileNegatedSet(uint64_t a1, unsigned int **a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), a4, v10, 0xFFFFLL);
  v11 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), v10, v11, 110);
  v12 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), v12, a5, 110);
  v13 = TFsa::newState((a1 + 8), 0);
  TFsa::newTrans((a1 + 8), v13, v12, 0xFFFFLL);
  v14 = *a2;
  v15 = *a2;
  while (*v15 != 93)
  {
    if (!*v15)
    {
      goto LABEL_10;
    }

LABEL_6:
    v16 = TFsa::newState((a1 + 8), 0);
    v17 = *a2;
    if ((*a2)[1] == 45 && (v18 = v17[2], v18 != 93))
    {
      TRegExpCompiler::compileRange(a1, *v17, v18, a3, v11, v16);
      v15 = *a2 + 3;
      *a2 = v15;
      v11 = v16;
    }

    else
    {
      TRegExpCompiler::compileCharacter(a1, a2, a3, v11, v16);
      v15 = *a2;
      v11 = v16;
    }
  }

  if (v15 == v14)
  {
    goto LABEL_6;
  }

LABEL_10:

  return TFsa::newTrans((a1 + 8), v11, v13, -1);
}

void *TRegExpCompiler::compileSet(void *result, unsigned int **a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v10 = *a2;
  v11 = *a2;
  while (1)
  {
    v12 = *v11;
    if (v12 == 93)
    {
      break;
    }

    if (!v12)
    {
      return result;
    }

LABEL_6:
    if (v11[1] == 45 && (v13 = v11[2], v13 != 93))
    {
      result = TRegExpCompiler::compileRange(v9, v12, v13, a3, a4, a5);
      v11 = *a2 + 3;
      *a2 = v11;
    }

    else
    {
      result = TRegExpCompiler::compileCharacter(v9, a2, a3, a4, a5);
      v11 = *a2;
    }
  }

  if (v11 == v10)
  {
    goto LABEL_6;
  }

  return result;
}

void *TRegExpCompiler::compile(void *a1, __int32 **a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = **a2;
  if (wcschr("*", v9))
  {
    std::string::basic_string[abi:ne200100]<0>(&v52, "*+?{ follows nothing");
    TException::TException(&v46, &v52);
    v46.__vftable = &unk_1F2CFF890;
    if (v49 >= 0)
    {
      v41 = &v47;
    }

    else
    {
      v41 = v47;
    }

    conditionalAssert(v41, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 468);
    TException::~TException(&v46);
    if (v53 < 0)
    {
      operator delete(v52);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v46, "*+?{ follows nothing");
    TException::TException(exception, &v46);
    *exception = &unk_1F2CFF890;
  }

  for (i = a4; v9; a4 = v11)
  {
    if (v9 == 41)
    {
      return TFsa::newTrans((a1 + 1), a4, a5, -1);
    }

    v10 = TFsa::newState((a1 + 1), 0);
    TFsa::newTrans((a1 + 1), a4, v10, -1);
    v11 = TFsa::newState((a1 + 1), 0);
    v12 = *a2;
    v13 = **a2;
    if (v13 == 91)
    {
      v15 = v12[1];
      *a2 = v12 + 1;
      if (v15 == 94)
      {
        *a2 = v12 + 2;
        TRegExpCompiler::compileNegatedSet(a1, a2, a3, v10, v11);
      }

      else
      {
        TRegExpCompiler::compileSet(a1, a2, a3, v10, v11);
      }

      v14 = *a2;
      if (**a2 != 93)
      {
        std::string::basic_string[abi:ne200100]<0>(&v52, "unmatched []");
        TException::TException(&v46, &v52);
        v46.__vftable = &unk_1F2CFF890;
        if (v49 >= 0)
        {
          v39 = &v47;
        }

        else
        {
          v39 = v47;
        }

        conditionalAssert(v39, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 509);
        TException::~TException(&v46);
        if (v53 < 0)
        {
          operator delete(v52);
        }

        v40 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v46, "unmatched []");
        TException::TException(v40, &v46);
        *v40 = &unk_1F2CFF890;
      }
    }

    else if (v13 == 40)
    {
      *a2 = v12 + 1;
      TRegExpCompiler::compile(a1, a2, a3, v10, v11);
      v14 = *a2;
      if (**a2 != 41)
      {
        std::string::basic_string[abi:ne200100]<0>(&v52, "unmatched ()");
        TException::TException(&v46, &v52);
        v46.__vftable = &unk_1F2CFF890;
        if (v49 >= 0)
        {
          v37 = &v47;
        }

        else
        {
          v37 = v47;
        }

        conditionalAssert(v37, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 489);
        TException::~TException(&v46);
        if (v53 < 0)
        {
          operator delete(v52);
        }

        v38 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v46, "unmatched ()");
        TException::TException(v38, &v46);
        *v38 = &unk_1F2CFF890;
      }
    }

    else
    {
      if (wcschr("*", **a2))
      {
        std::string::basic_string[abi:ne200100]<0>(&v52, "nested *+?{");
        TException::TException(&v46, &v52);
        v46.__vftable = &unk_1F2CFF890;
        if (v49 >= 0)
        {
          v35 = &v47;
        }

        else
        {
          v35 = v47;
        }

        conditionalAssert(v35, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 516);
        TException::~TException(&v46);
        if (v53 < 0)
        {
          operator delete(v52);
        }

        v36 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(&v46, "nested *+?{");
        TException::TException(v36, &v46);
        *v36 = &unk_1F2CFF890;
      }

      if (v13 == 124)
      {
        TFsa::newTrans((a1 + 1), a4, a5, -1);
        v11 = TFsa::newState((a1 + 1), 0);
        TFsa::newTrans((a1 + 1), i, v11, -1);
        ++*a2;
        goto LABEL_61;
      }

      if (!wcschr("^", v13))
      {
        TRegExpCompiler::compileCharacter(a1, a2, a3, v10, v11);
        v18 = *a2;
        goto LABEL_22;
      }

      v16 = TFsa::newState((a1 + 1), 0);
      TFsa::newTrans((a1 + 1), v10, v16, 0xFFFFLL);
      if (**a2)
      {
        v17 = **a2;
      }

      else
      {
        v17 = -1;
      }

      TFsa::newTrans((a1 + 1), v16, v11, v17);
      v14 = *a2;
    }

    v18 = (v14 + 1);
    *a2 = (v14 + 1);
LABEL_22:
    v19 = *v18;
    if (*v18 == 123)
    {
      *a2 = v18 + 1;
      v51 = 0;
      *&v52 = 0;
      parseRepetition(a2, &v52, &v51);
      v46.__vftable = v48;
      v47 = xmmword_1B5AE2110;
      v50 = 1;
      v20 = v52;
      if (v52 >= 2)
      {
        v21 = v52 - 1;
        do
        {
          TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), v8, v18 - v8);
          --v21;
        }

        while (v21);
      }

      v22 = v51;
      if (v51 == -1)
      {
        v25 = *(&v47 + 1);
        if (v20)
        {
          TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), v8, v18 - v8);
          v25 = *(&v47 + 1);
        }

        v54[0] = 42;
        TBuffer<wchar_t>::insert(&v46, v25, v54, 1uLL);
      }

      else if (v51 > v20)
      {
        if (!v20)
        {
          v54[0] = 63;
          TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), v54, 1uLL);
          *&v52 = 1;
          v20 = 1;
        }

        v23 = v22 - v20;
        if (v23)
        {
          v24 = v18 - v8;
          do
          {
            TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), v8, v24);
            v54[0] = 63;
            TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), v54, 1uLL);
            --v23;
          }

          while (v23);
        }
      }

      v26 = 0;
      v27 = *a2;
        ;
      }

      TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), v27, v26 - 1);
      if ((*(&v47 + 1) + 1) >> 62)
      {
        v29 = -1;
      }

      else
      {
        v29 = 4 * (*(&v47 + 1) + 1);
      }

      v18 = TAllocator::allocate((a1 + 29), v29);
      if (*(&v47 + 1) >= v47)
      {
        if (v50)
        {
          v54[0] = 0;
          TBuffer<wchar_t>::insert(&v46, *(&v47 + 1), v54, 1uLL);
          v30 = v46.__vftable;
          --*(&v47 + 1);
        }

        else
        {
          v30 = v46.__vftable;
          if (v47)
          {
            *(v46.__vftable + v47 - 1) = 0;
          }
        }
      }

      else
      {
        v30 = v46.__vftable;
        *(&v46.~exception + *(&v47 + 1)) = 0;
      }

      wcscpy(v18, v30);
      *a2 = v18;
      if (v50 == 1 && v46.__vftable != v48 && v46.__vftable)
      {
        MEMORY[0x1B8C85310]();
        v18 = *a2;
      }

      v19 = *v18;
    }

    switch(v19)
    {
      case '?':
        *a2 = v18 + 1;
LABEL_59:
        v31 = (a1 + 1);
        v32 = a4;
        v33 = v11;
LABEL_60:
        TFsa::newTrans(v31, v32, v33, -1);
        break;
      case '+':
        *a2 = v18 + 1;
        v31 = (a1 + 1);
        v32 = v11;
        v33 = v10;
        goto LABEL_60;
      case '*':
        *a2 = v18 + 1;
        TFsa::newTrans((a1 + 1), v11, v10, -1);
        goto LABEL_59;
    }

LABEL_61:
    v8 = *a2;
    v9 = **a2;
  }

  return TFsa::newTrans((a1 + 1), a4, a5, -1);
}

void sub_1B5149300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t parseRepetition(unsigned int **a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  v6 = **a1;
  {
    operator new();
  }

  if (v6 < 48 || v6 >= 0x3A && (v6 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v6) == -1))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "expected a digit after {");
    TException::TException(v39, __p);
    v39[0].__vftable = &unk_1F2CFF890;
    if (v40 >= 0)
    {
      v14 = &v39[1];
    }

    else
    {
      v14 = v39[1].__vftable;
    }

    conditionalAssert(v14, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 264);
    TException::~TException(v39);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v39, "expected a digit after {");
    TException::TException(exception, v39);
    *exception = &unk_1F2CFF890;
  }

  v7 = *a1;
  {
    operator new();
  }

  result = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v7, a1);
  *a2 = result;
  v9 = *a1;
  v10 = **a1;
  if (v10 != 44)
  {
    if (v10 != 125)
    {
      if (!v10)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "search pattern not terminated");
        TException::TException(v39, __p);
        v39[0].__vftable = &unk_1F2CFF890;
        if (v40 >= 0)
        {
          v16 = &v39[1];
        }

        else
        {
          v16 = v39[1].__vftable;
        }

        conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 270);
        TException::~TException(v39);
        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        v17 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v39, "search pattern not terminated");
        TException::TException(v17, v39);
        *v17 = &unk_1F2CFF890;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "invalid {} range");
      TException::TException(v39, __p);
      v39[0].__vftable = &unk_1F2CFF890;
      if (v40 >= 0)
      {
        v18 = &v39[1];
      }

      else
      {
        v18 = v39[1].__vftable;
      }

      conditionalAssert(v18, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 285);
      TException::~TException(v39);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      v19 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v39, "invalid {} range");
      TException::TException(v19, v39);
      *v19 = &unk_1F2CFF890;
    }

    if (!result)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "invalid {0} range");
      TException::TException(v39, __p);
      v39[0].__vftable = &unk_1F2CFF890;
      if (v40 >= 0)
      {
        v20 = &v39[1];
      }

      else
      {
        v20 = v39[1].__vftable;
      }

      conditionalAssert(v20, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 276);
      TException::~TException(v39);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      v21 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v39, "invalid {0} range");
      TException::TException(v21, v39);
      *v21 = &unk_1F2CFF890;
    }

    *a3 = result;
LABEL_21:
    v12 = v9 + 1;
    goto LABEL_22;
  }

  v11 = v9[1];
  *a1 = v9 + 1;
  if (v11 != 125)
  {
    {
      operator new();
    }

    if (v11 < 48 || v11 >= 0x3A && (v11 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11) == -1))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v39);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "expected a digit after {", 24);
      v23 = MEMORY[0x1B8C84C30](v22, *a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ",", 1);
      std::stringbuf::str();
      TException::TException(__p, v34);
      __p[0] = &unk_1F2CFF890;
      if (v38 >= 0)
      {
        v24 = &__p[1];
      }

      else
      {
        v24 = __p[1];
      }

      conditionalAssert(v24, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 300);
      TException::~TException(__p);
      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      v25 = __cxa_allocate_exception(0x20uLL);
      std::stringbuf::str();
      TException::TException(v25, __p);
      *v25 = &unk_1F2CFF890;
    }

    v13 = *a1;
    {
      operator new();
    }

    result = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v13, a1);
    *a3 = result;
    v9 = *a1;
    if (**a1 != 125)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "search pattern not terminated");
      TException::TException(v39, __p);
      v39[0].__vftable = &unk_1F2CFF890;
      if (v40 >= 0)
      {
        v26 = &v39[1];
      }

      else
      {
        v26 = v39[1].__vftable;
      }

      conditionalAssert(v26, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 306);
      TException::~TException(v39);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      v27 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v39, "search pattern not terminated");
      TException::TException(v27, v39);
      *v27 = &unk_1F2CFF890;
    }

    if (*a2 > result)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v39);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "invalid {", 9);
      v29 = MEMORY[0x1B8C84C30](v28, *a2);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ",", 1);
      v31 = MEMORY[0x1B8C84C30](v30, *a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "} range", 7);
      std::stringbuf::str();
      TException::TException(__p, v34);
      __p[0] = &unk_1F2CFF890;
      if (v38 >= 0)
      {
        v32 = &__p[1];
      }

      else
      {
        v32 = __p[1];
      }

      conditionalAssert(v32, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 313);
      TException::~TException(__p);
      if (v35 < 0)
      {
        operator delete(v34[0]);
      }

      v33 = __cxa_allocate_exception(0x20uLL);
      std::stringbuf::str();
      TException::TException(v33, __p);
      *v33 = &unk_1F2CFF890;
    }

    goto LABEL_21;
  }

  *a3 = -1;
  v12 = v9 + 2;
LABEL_22:
  *a1 = v12;
  return result;
}

void sub_1B5149D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::exception a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  MEMORY[0x1B8C85350](v27, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

__int32 *TRegExpCompiler::compileFlags(uint64_t a1, __int32 **a2, uint64_t a3, uint64_t *a4, int *a5)
{
  *a4 = a3;
  v9 = *a2;
  result = wcschr(*a2, 58);
  if (result)
  {
    v11 = result;
    if (result == v9 || *(result - 1) != 92)
    {
      while (v9 < v11)
      {
        v12 = *v9;
        switch(v12)
        {
          case 'z':
            v13 = 0;
            break;
          case 'i':
            v13 = 1;
            break;
          case 'c':
            v13 = 2;
            break;
          default:
            std::ostringstream::basic_ostringstream[abi:ne200100](v24);
            v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "invalid flag '", 14);
            v17 = MEMORY[0x1B8C84C00](v16, **a2);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "'", 1);
            std::stringbuf::str();
            TException::TException(v22, &__p);
            v22[0].__vftable = &unk_1F2CFF890;
            if (v23 >= 0)
            {
              v18 = &v22[1];
            }

            else
            {
              v18 = v22[1].__vftable;
            }

            conditionalAssert(v18, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 663);
            TException::~TException(v22);
            if (v21 < 0)
            {
              operator delete(__p);
            }

            exception = __cxa_allocate_exception(0x20uLL);
            std::stringbuf::str();
            TException::TException(exception, v22);
            *exception = &unk_1F2CFF890;
        }

        *a5 = v13;
        v14 = TFsa::newState((a1 + 8), 0);
        TFsa::newTrans((a1 + 8), *a4, v14, 0xFFFFLL);
        *a4 = v14;
        v15 = TFsa::newState((a1 + 8), 0);
        result = TFsa::newTrans((a1 + 8), *a4, v15, v12);
        *a4 = v15;
        v9 = *a2 + 1;
        *a2 = v9;
      }

      *a2 = v9 + 1;
    }
  }

  return result;
}

void sub_1B514A0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void TRegExpCompiler::add(void *a1, __int32 *a2, uint64_t a3)
{
  v17 = 0;
  v11[0] = 0;
  v16 = a2;
  v5 = a1[20];
  v6 = a1[21];
  if (v5 != v6)
  {
    while (!*v5)
    {
      if (++v5 == v6)
      {
        v5 = a1[21];
        break;
      }
    }
  }

  TRegExpCompiler::compileFlags(a1, &v16, *v5, v11, &v17);
  v7 = TFsa::newState((a1 + 1), 0);
  TRegExpCompiler::compile(a1, &v16, v17, v11[0], v7);
  if (*v16)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "unmatched ()");
    TException::TException(v14, __p);
    v14[0].__vftable = &unk_1F2CFF890;
    if (v15 >= 0)
    {
      v9 = &v14[1];
    }

    else
    {
      v9 = v14[1].__vftable;
    }

    conditionalAssert(v9, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/regexp.cpp", 697);
    TException::~TException(v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v14, "unmatched ()");
    TException::TException(exception, v14);
    *exception = &unk_1F2CFF890;
  }

  v8 = TAllocator::allocate((a1 + 29), 16);
  *v8 = 1;
  v8[1] = a3;
  v7[1] = v8;
  TFsa::addExtremity((a1 + 1), v7, 1u);
}

void sub_1B514A560(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v23)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a22);
    __cxa_end_catch();
    JUMPOUT(0x1B514A5F0);
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

uint64_t TRegExpCompiler::compressDfaRec(uint64_t result, uint64_t *a2, void **a3, void *a4, void *a5, void *a6)
{
  v6 = *a2;
  if (!*(*a6 + 8 * *a2))
  {
    v12 = result;
    v13 = *a3;
    v14 = *a5;
    *v13 = *a4;
    v13[1] = v14;
    v15 = *a3;
    *a3 += 2;
    *(*a6 + 8 * v6) = v15;
    v16 = a2[1];
    if (v16 && *v16)
    {
      v17 = 0;
      v18 = *a5;
      do
      {
        *v18++ = v16[++v17];
      }

      while (v17 < *v16);
      *a5 = v18;
    }

    v19 = *a4;
    result = TState::getTransCount(a2, 1u);
    *a4 += 16 * result;
    for (i = a2[3]; i; v19 += 16)
    {
      v21 = i[2];
      result = TRegExpCompiler::compressDfaRec(v12, v21, a3, a4, a5, a6);
      v22 = *(*a6 + 8 * *v21);
      *v19 = *i;
      *(v19 + 8) = v22;
      i = i[5];
    }
  }

  return result;
}

void TRegExpCompiler::compressDfa(TRegExpCompiler *this, const TFsa *a2)
{
  v2 = *(a2 + 6);
  v3 = *(a2 + 7);
  if (v2 != v3)
  {
    while (!*v2)
    {
      if (++v2 == v3)
      {
        goto LABEL_13;
      }
    }
  }

  if (v2 != v3)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(*v2 + 8);
      if (v5)
      {
        v4 += *v5;
      }

      v6 = v2 + 1;
      do
      {
        if (v6 == v3)
        {
          goto LABEL_13;
        }
      }

      while (!*v6++);
      v2 = v6 - 1;
    }
  }

LABEL_13:
  operator new[]();
}

void sub_1B514A924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TRegExpCompiler::compile(TRegExpCompiler *this)
{
  TFsa::TFsa(v2);
  TFsa::nfaToDfa(this + 8, v2, this);
  TRegExpCompiler::compressDfa(this, v2);
}

uint64_t TRegExpSearch::searchNegatedRange(uint64_t *a1, unint64_t *a2, unsigned int *a3, uint64_t a4)
{
  result = *a1;
  v9 = *a3;
  if (a4 == 2)
  {
    v10 = *(result + 32);
    if (v10 && v9 < 0x10000)
    {
      v9 = *(v10 + 4 * v9);
    }
  }

  else if (a4 == 1)
  {
    result = TLocaleInfo::toLower(result, *a3);
    v9 = result;
  }

  v11 = *a2;
  v12 = a2[2];
  while (v11 < v12)
  {
    v13 = *(v11 + 8);
    v14 = *v13;
    v15 = v13[2];
    if (*v13 < v15)
    {
      do
      {
        if (v9 < *v11 || v9 > *v14)
        {
          result = TRegExpSearch::searchNegated(a1, *(v14 + 8), a3, a4);
          v15 = v13[2];
        }

        v14 += 16;
      }

      while (v14 < v15);
      v12 = a2[2];
    }

    v11 += 16;
  }

  return result;
}

uint64_t TRegExpSearch::searchNegated(uint64_t *a1, unint64_t *a2, unsigned int *a3, uint64_t a4)
{
  result = *a1;
  v9 = *a3;
  if (a4 == 2)
  {
    v10 = *(result + 32);
    if (v10 && v9 < 0x10000)
    {
      v9 = *(v10 + 4 * v9);
    }
  }

  else if (a4 == 1)
  {
    result = TLocaleInfo::toLower(result, *a3);
    v9 = result;
  }

  for (i = *a2; i < a2[2]; i += 16)
  {
    if (*i == 0xFFFF)
    {
      result = TRegExpSearch::searchNegatedCommand(a1, *(i + 8), a3, a4);
    }

    else if (v9 != *i)
    {
      result = TRegExpSearch::searchNegated(a1, *(i + 8), a3, a4);
    }
  }

  return result;
}

uint64_t TRegExpSearch::searchNegatedCommand(uint64_t result, unint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v4 = *a2;
  if (*a2 < a2[2])
  {
    v8 = result;
    do
    {
      v9 = *v4;
      if (*v4 == 114)
      {
        result = TRegExpSearch::searchNegatedRange(v8, *(v4 + 8), a3, a4);
      }

      else if (v9 == 110)
      {
        result = TRegExpSearch::search(v8, *(v4 + 8), a3 + 1, a4);
      }

      else
      {
        result = testCharClass(v9, *a3);
        if ((result & 1) == 0)
        {
          result = TRegExpSearch::searchNegated(v8, *(v4 + 8), a3, a4);
        }
      }

      v4 += 16;
    }

    while (v4 < a2[2]);
  }

  return result;
}

void TRegExpSearch::search(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int a4)
{
  while (1)
  {
    if ((*(a1 + 44) & 1) == 0 || !*a3)
    {
      for (i = a2[1]; i < a2[3]; ++i)
      {
        *(a1 + 41) = 1;
        v12 = *(a1 + 16);
        if (v12)
        {
          v14 = *v12;
          v13 = v12[1];
          v15 = *i;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v12) >> 3);
          if (v13 == *v12)
          {
LABEL_18:
            v20 = *(a1 + 32);
            v21 = v12[2];
            if (v13 >= v21)
            {
              v23 = v16 + 1;
              if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v24 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v14) >> 3);
              if (2 * v24 > v23)
              {
                v23 = 2 * v24;
              }

              if (v24 >= 0x555555555555555)
              {
                v25 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v25 = v23;
              }

              if (v25)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<TRegExpMatch>>(*(a1 + 16), v25);
              }

              v26 = 24 * v16;
              *v26 = v20;
              *(v26 + 8) = a3;
              *(v26 + 16) = v15;
              v22 = 24 * v16 + 24;
              v27 = v12[1] - *v12;
              v28 = v26 - v27;
              memcpy((v26 - v27), *v12, v27);
              v29 = *v12;
              *v12 = v28;
              v12[1] = v22;
              v12[2] = 0;
              if (v29)
              {
                operator delete(v29);
              }
            }

            else
            {
              *v13 = v20;
              *(v13 + 1) = a3;
              v22 = (v13 + 24);
              *(v13 + 2) = v15;
            }

            v12[1] = v22;
          }

          else
          {
            if (v16 <= 1)
            {
              v17 = 1;
            }

            else
            {
              v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v12) >> 3);
            }

            v18 = v14 + 16;
            while (1)
            {
              if (*v18 == v15)
              {
                v19 = *(a1 + 32);
                if (*(v18 - 2) == v19 && *(v18 - 1) < a3)
                {
                  break;
                }
              }

              v18 += 3;
              if (!--v17)
              {
                goto LABEL_18;
              }
            }

            *(v18 - 2) = v19;
            *(v18 - 1) = a3;
            *v18 = v15;
          }
        }
      }
    }

    v7 = a2[2];
    v8 = *a2;
    v9 = v7 - *a2;
    if (v7 == *a2)
    {
      break;
    }

    if (*v8 == 0xFFFF)
    {
      TRegExpSearch::searchCommand(a1, *(v8 + 8), a3, a4);
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    v30 = v9 >> 4;
    v31 = *a3;
    if (!v31 && v10 < v30)
    {
      *(a1 + 40) = 1;
      return;
    }

    v32 = *a1;
    if (a4 == 2)
    {
      v33 = *(v32 + 32);
      if (v33)
      {
        v34 = v31 < 0x10000;
      }

      else
      {
        v34 = 0;
      }

      if (v34)
      {
        LODWORD(v31) = *(v33 + 4 * v31);
      }
    }

    else if (a4 == 1)
    {
      LODWORD(v31) = TLocaleInfo::toLower(v32, v31);
    }

    v35 = v30 - 1;
    if (v10 < v30)
    {
      v36 = *a2;
      do
      {
        v37 = (v35 + v10) >> 1;
        v38 = *(v36 + 16 * v37);
        if (v31 == v38)
        {
          break;
        }

        if (v31 > v38)
        {
          v35 = v37 - 1;
        }

        else
        {
          v10 = v37 + 1;
        }
      }

      while (v10 <= v35);
      v8 = v36 + 16 * v37;
    }

    if (v10 > v35)
    {
      return;
    }

    a2 = *(v8 + 8);
    ++a3;
  }
}

uint64_t testCharClass(int a1, int a2)
{
  result = 0;
  if (a1 <= 96)
  {
    if (a1 > 79)
    {
      if (a1 <= 84)
      {
        if (a1 != 80)
        {
          if (a1 != 83)
          {
            return result;
          }

          {
            operator new();
          }

          result = 0;
          if (a2 > 159)
          {
            if (a2 >= 12288)
            {
              if (a2 == 12288)
              {
                return result;
              }

              v15 = 65279;
            }

            else
            {
              if (a2 == 160)
              {
                return result;
              }

              v15 = 8203;
            }

            if (a2 != v15)
            {
              return 1;
            }
          }

          else if (a2 > 0x20 || ((1 << a2) & 0x100002600) == 0)
          {
            return 1;
          }

          return result;
        }

        {
          operator new();
        }

        isPunct = TLocaleInfo::isPunct(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2);
        return isPunct ^ 1u;
      }

      if (a1 == 85)
      {
        {
          operator new();
        }

        isPunct = TLocaleInfo::isUpper(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2);
        return isPunct ^ 1u;
      }

      if (a1 != 87)
      {
        return result;
      }

      {
        operator new();
      }

      v7 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
      if (a2 < 48 || a2 >= 0x3A && (a2 < 0x660 || TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2) == -1))
      {
        v8 = v7;
LABEL_62:
        isPunct = TLocaleInfo::isAlpha(v8, a2);
        return isPunct ^ 1u;
      }

      return 0;
    }

    if (a1 == 65)
    {
      {
        operator new();
      }

      v8 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
      goto LABEL_62;
    }

    if (a1 != 68)
    {
      if (a1 != 76)
      {
        return result;
      }

      {
        operator new();
      }

      isPunct = TLocaleInfo::isLower(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2);
      return isPunct ^ 1u;
    }

    {
      operator new();
    }

    DigitExtended = a2 - 48;
    if (a2 >= 48)
    {
      if (a2 <= 0x39)
      {
        return DigitExtended == -1;
      }

      if (a2 >= 0x660)
      {
        DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2);
        return DigitExtended == -1;
      }
    }

    DigitExtended = -1;
    return DigitExtended == -1;
  }

  if (a1 <= 111)
  {
    if (a1 == 97)
    {
      {
        operator new();
      }

      v10 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
      goto LABEL_67;
    }

    if (a1 != 100)
    {
      if (a1 == 108)
      {
        {
          operator new();
        }

        v6 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;

        return TLocaleInfo::isLower(v6, a2);
      }

      return result;
    }

    {
      operator new();
    }

    v14 = a2 - 48;
    if (a2 >= 48)
    {
      if (a2 <= 0x39)
      {
        return v14 != -1;
      }

      if (a2 >= 0x660)
      {
        v14 = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2);
        return v14 != -1;
      }
    }

    v14 = -1;
    return v14 != -1;
  }

  if (a1 > 116)
  {
    if (a1 == 117)
    {
      {
        operator new();
      }

      v12 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;

      return TLocaleInfo::isUpper(v12, a2);
    }

    if (a1 != 119)
    {
      return result;
    }

    {
      operator new();
    }

    v9 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;
    if (a2 >= 48 && (a2 < 0x3A || a2 >= 0x660 && TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2) != -1))
    {
      return 1;
    }

    v10 = v9;
LABEL_67:

    return TLocaleInfo::isAlpha(v10, a2);
  }

  if (a1 == 112)
  {
    {
      operator new();
    }

    v11 = TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo;

    return TLocaleInfo::isPunct(v11, a2);
  }

  if (a1 != 115)
  {
    return result;
  }

  {
    operator new();
  }

  result = 1;
  if (a2 <= 159)
  {
    if (a2 <= 0x20 && ((1 << a2) & 0x100002600) != 0)
    {
      return result;
    }

    return 0;
  }

  if (a2 >= 12288)
  {
    if (a2 == 12288)
    {
      return result;
    }

    v16 = 65279;
  }

  else
  {
    if (a2 == 160)
    {
      return result;
    }

    v16 = 8203;
  }

  if (a2 != v16)
  {
    return 0;
  }

  return result;
}

void sub_1B514B7A0(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TRegExpSearch::searchRange(uint64_t *a1, unint64_t *a2, unsigned int *a3, uint64_t a4)
{
  result = *a1;
  v9 = *a3;
  if (a4 == 2)
  {
    v10 = *(result + 32);
    if (v10 && v9 < 0x10000)
    {
      v9 = *(v10 + 4 * v9);
    }
  }

  else if (a4 == 1)
  {
    result = TLocaleInfo::toLower(result, *a3);
    v9 = result;
  }

  v11 = *a2;
  v12 = a2[2];
  while (v11 < v12)
  {
    if (v9 >= *v11)
    {
      v13 = *(v11 + 8);
      v14 = *v13;
      v15 = v13[2];
      if (*v13 < v15)
      {
        do
        {
          if (v9 <= *v14)
          {
            result = TRegExpSearch::search(a1, *(v14 + 8), a3 + 1, a4);
            v15 = v13[2];
          }

          v14 += 16;
        }

        while (v14 < v15);
        v12 = a2[2];
      }
    }

    v11 += 16;
  }

  return result;
}

uint64_t TRegExpSearch::searchCommand(uint64_t result, unsigned int **a2, unsigned int *a3, uint64_t a4)
{
  v4 = *a2;
  if (*a2 < a2[2])
  {
    v8 = result;
    while (1)
    {
      result = *v4;
      if (result > 98)
      {
        break;
      }

      if (result == 36)
      {
        if (!*a3)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (result != 94)
        {
          goto LABEL_16;
        }

        if (*(v8 + 24) == a3)
        {
LABEL_15:
          v9 = *(v4 + 1);
          v10 = v8;
          v11 = a3;
          goto LABEL_22;
        }
      }

LABEL_24:
      v4 += 4;
      if (v4 >= a2[2])
      {
        return result;
      }
    }

    switch(result)
    {
      case 'c':
        v9 = *(v4 + 1);
        v10 = v8;
        v11 = a3;
        v12 = 2;
        break;
      case 'i':
        v9 = *(v4 + 1);
        v10 = v8;
        v11 = a3;
        v12 = 1;
        break;
      case 'z':
        v9 = *(v4 + 1);
        v10 = v8;
        v11 = a3;
        v12 = 0;
        break;
      default:
LABEL_16:
        if (!*a3)
        {
          *(v8 + 40) = 1;
          goto LABEL_24;
        }

        if (result == 114)
        {
          result = TRegExpSearch::searchRange(v8, *(v4 + 1), a3, a4);
          goto LABEL_24;
        }

        if (result == 110)
        {
          result = TRegExpSearch::searchNegated(v8, *(v4 + 1), a3, a4);
          goto LABEL_24;
        }

        if (result != 46)
        {
          result = testCharClass(result, *a3);
          if (!result)
          {
            goto LABEL_24;
          }
        }

        v9 = *(v4 + 1);
        v11 = a3 + 1;
        v10 = v8;
LABEL_22:
        v12 = a4;
        break;
    }

    result = TRegExpSearch::search(v10, v9, v11, v12);
    goto LABEL_24;
  }

  return result;
}

uint64_t TRegExpSearch::operator()(uint64_t a1, unsigned int *a2, int a3, uint64_t a4)
{
  v4 = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a2;
  *(a1 + 40) = 0;
  *(a1 + 44) = a3;
  *(a1 + 32) = a2;
  v5 = *a2;
  if (*a2)
  {
    v6 = a2;
    do
    {
      TRegExpSearch::search(a1, **(a1 + 8), v6, 0);
      if ((v4 & 2) != 0)
      {
        break;
      }

      v8 = *(a1 + 32);
      v9 = *(v8 + 4);
      v6 = (v8 + 4);
      *(a1 + 32) = v6;
    }

    while (v9);
    LOBYTE(v5) = *(a1 + 40);
  }

  return v5 & 1;
}

uint64_t TRegExpSearch::operator()(uint64_t a1, unsigned int *a2, int a3)
{
  v3 = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 40) = 0;
  *(a1 + 44) = a3;
  *(a1 + 32) = a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = a2;
  do
  {
    TRegExpSearch::search(a1, **(a1 + 8), v4, 0);
    result = *(a1 + 41);
    if ((v3 & 2) != 0)
    {
      break;
    }

    if (result)
    {
      break;
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 4);
    v4 = (v7 + 4);
    *(a1 + 32) = v4;
  }

  while (v8);
  return result;
}

void *TRegExp::TRegExp(void *result, uint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = a2;
  return result;
}

void TRegExp::add(uint64_t a1, __int32 *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    operator new();
  }

  TRegExpCompiler::add(v3, a2, a3);
}

TRegExpCompiler *TRegExp::doneAdding(TRegExp *this)
{
  result = *(this + 1);
  if (result)
  {
    TRegExpCompiler::compile(result);
  }

  return result;
}

TRegExp *TRegExp::TRegExp(TRegExp *a1, __int32 *a2, uint64_t a3)
{
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = a3;
  TRegExp::add(a1, a2, 0);
  TRegExp::doneAdding(a1);
  return a1;
}

void TRegExp::~TRegExp(TRegExp *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    TRegExpGraph::~TRegExpGraph(v3);
    MEMORY[0x1B8C85350]();
  }
}

uint64_t TRegExp::match(void *a1, unsigned int *a2, int a3, uint64_t a4)
{
  v4 = a1[2];
  if (!v4)
  {
    return 0;
  }

  v6[0] = *a1;
  v6[1] = v4;
  return TRegExpSearch::operator()(v6, a2, a3, a4);
}

uint64_t TRegExp::match(void *a1, unsigned int *a2, int a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return 0;
  }

  v5[0] = *a1;
  v5[1] = v3;
  return TRegExpSearch::operator()(v5, a2, a3);
}

uint64_t TRegExp::stringToRegExp(uint64_t result, uint64_t a2, int a3, char a4)
{
  v6 = result;
  if (a3 == 1)
  {
    v7 = "i";
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_6;
    }

    v7 = "c";
  }

  *(a2 + 16) = 0;
  result = TBuffer<wchar_t>::insert(a2, 0, v7, 2uLL);
LABEL_6:
  if ((a4 & 2) != 0)
  {
    v11 = 94;
    result = TBuffer<wchar_t>::insert(a2, *(a2 + 16), &v11, 1uLL);
  }

  v8 = *v6;
  if (*v6)
  {
    v9 = v6 + 1;
    do
    {
      if (wcschr("?", v8))
      {
        v11 = 92;
        TBuffer<wchar_t>::insert(a2, *(a2 + 16), &v11, 1uLL);
        v8 = *(v9 - 1);
      }

      v11 = v8;
      result = TBuffer<wchar_t>::insert(a2, *(a2 + 16), &v11, 1uLL);
      v10 = *v9++;
      v8 = v10;
    }

    while (v10);
  }

  if (a4)
  {
    v11 = 36;
    return TBuffer<wchar_t>::insert(a2, *(a2 + 16), &v11, 1uLL);
  }

  return result;
}

void TSyntaxException::~TSyntaxException(std::exception *this)
{
  TException::~TException(this);

  JUMPOUT(0x1B8C85350);
}

void *TException::TException(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2CFF8B8;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

void TException::~TException(std::exception *this)
{
  TException::~TException(this);

  JUMPOUT(0x1B8C85350);
}

{
  this->__vftable = &unk_1F2CFF8B8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t TLocaleInfo::isPunct(uint64_t a1, unsigned int a2)
{
  if (a2 > 255)
  {
    if (a2 < 0x5BE)
    {
      return 0;
    }

    if (a2 <= 0x6E9)
    {
      if (a2 - 1470 < 0x37 && ((0x60000000000125uLL >> (a2 + 66)) & 1) != 0)
      {
        return 1;
      }

      v3 = a2 & 0x7FE;
      return a2 == 1563 || v3 == 1566 || a2 - 1542 < 0xA || v3 == 1642 || v3 == 1644 || a2 == 1748 || a2 == 1758 || a2 == 1769;
    }

    if (a2 >= 0xE2F)
    {
      if (a2 <= 0xE5B)
      {
        return a2 == 3654 || (a2 & 0xFEF) == 3631 || a2 == 3663 || a2 > 0xE59;
      }

      v16 = a2 >> 4;
      if (a2 >> 4 >= 0x201)
      {
        if (a2 >> 2 <= 0xC3E)
        {
          return v16 < 0x267 || a2 - 12289 < 4 || a2 - 12294 < 0x17 || a2 == 12539;
        }

        if (a2 >= 0xFF01)
        {
          if (v16 < 0xFF1)
          {
            return 1;
          }

          result = 1;
          if ((a2 - 65504 > 0xE || a2 == 65511) && (a2 - 65306 > 0x26 || ((1 << (a2 - 26)) & 0x7E0000007FLL) == 0))
          {
            return a2 - 65371 < 0xB;
          }

          return result;
        }
      }
    }

    return 0;
  }

  if (a2 - 33 < 0xF)
  {
    return 1;
  }

  result = 1;
  if (a2 - 91 > 0x24 || ((1 << (a2 - 91)) & 0x1F0000003FLL) == 0)
  {
    v15 = a2 - 161 < 0x1F || (a2 & 0xFFFFFFDF) == 215;
    return a2 - 58 < 7 || v15;
  }

  return result;
}

void TRegExpGraph::~TRegExpGraph(TRegExpGraph *this)
{
  if (*this)
  {
    MEMORY[0x1B8C85310](*this - 16, 0x70C80105F9A77);
  }

  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x1B8C85310](v2 - 16, 0x1060C807B16006ELL);
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x1B8C85310](v3, 0x1000C8000313F17);
  }
}

uint64_t TBuffer<wchar_t>::insert(uint64_t result, unint64_t a2, int *a3, unint64_t a4)
{
  v5 = *(result + 16);
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(result + 16);
  }

  if (*(result + 1048) == 1)
  {
    v7 = v5 + a4;
    v8 = *(result + 8);
    if (v5 + a4 > v8 && v8 < 2 * v7)
    {
      *(result + 8) = (2 * v7) | 1;
      operator new[]();
    }
  }

  v9 = v6 + a4;
  v10 = *(result + 8);
  if (v6 < v5 && v9 < v10)
  {
    v12 = v5 + a4;
    if (v10 < v5 + a4)
    {
      v12 = *(result + 8);
    }

    v13 = v12 - v9;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v14 = (*result + 4 * v12 - 4);
    do
    {
      *v14 = v14[-a4];
      --v14;
      --v13;
    }

    while (v13);
  }

  v15 = v10 - v6;
  if (v10 > v6)
  {
    if (v15 >= a4)
    {
      v15 = a4;
    }

    if (v15)
    {
      v16 = (*result + 4 * v6);
      do
      {
        v17 = *a3++;
        *v16++ = v17;
        --v15;
      }

      while (v15);
    }
  }

  *(result + 16) = v5 + a4;
  if (v5 + a4 < v10)
  {
    *(*result + 4 * (v5 + a4)) = 0;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TRegExpMatch>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void quasar::SpeechRecognizerActiveConfiguration::all(_BYTE *a1@<X8>)
{
  *a1 = 0;
  a1[24] = 0;
  a1[32] = 0;
  a1[56] = 0;
  a1[64] = 0;
  a1[88] = 0;
  a1[96] = 0;
  a1[120] = 0;
  a1[128] = 0;
  a1[152] = 0;
  a1[160] = 0;
  a1[184] = 0;
  a1[192] = 0;
  a1[216] = 0;
  a1[224] = 0;
  a1[248] = 0;
}

void *quasar::printOptionalSet<std::string>(void *result, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 24) == 1)
  {
    v8[4] = v3;
    v8[5] = v4;
    v6 = result;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, *a2, a2[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " = {", 4);
    v8[0] = ",";
    v8[1] = 1;
    quasar::joinToStream<std::set<std::string>>(v6, a3, v8);
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "} ", 2);
  }

  return result;
}

void *quasar::printOptionalSet<BOOL>(void *result, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 24) == 1)
  {
    v8[4] = v3;
    v8[5] = v4;
    v6 = result;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(result, *a2, a2[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " = {", 4);
    v8[0] = ",";
    v8[1] = 1;
    quasar::joinToStream<std::set<BOOL>>(v6, a3, v8);
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "} ", 2);
  }

  return result;
}

uint64_t quasar::joinToStream<std::set<unsigned int>>(uint64_t result, void *a2, uint64_t *a3)
{
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v6 = result;
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, *a3, a3[1]);
      }

      result = MEMORY[0x1B8C84C10](v6, *(v4 + 7));
      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v7 = 0;
      v4 = v9;
    }

    while (v9 != v3);
  }

  return result;
}

void *quasar::joinToStream<std::set<std::string>>(void *result, void *a2, uint64_t *a3)
{
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v6 = result;
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, *a3, a3[1]);
      }

      v8 = *(v4 + 55);
      if (v8 >= 0)
      {
        v9 = (v4 + 4);
      }

      else
      {
        v9 = v4[4];
      }

      if (v8 >= 0)
      {
        v10 = *(v4 + 55);
      }

      else
      {
        v10 = v4[5];
      }

      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v9, v10);
      v11 = v4[1];
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
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v7 = 0;
      v4 = v12;
    }

    while (v12 != v3);
  }

  return result;
}

uint64_t quasar::joinToStream<std::set<BOOL>>(uint64_t result, void *a2, uint64_t *a3)
{
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    v6 = result;
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, *a3, a3[1]);
      }

      result = MEMORY[0x1B8C84BD0](v6, *(v4 + 25));
      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v7 = 0;
      v4 = v9;
    }

    while (v9 != v3);
  }

  return result;
}

uint64_t quasar::PSRAudioProcessor::PSRAudioProcessor(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, int a6)
{
  v63 = a4;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v8 = *a5;
  if (!*a5)
  {
    std::allocate_shared[abi:ne200100]<quasar::RecogAudioBuffer,std::allocator<quasar::RecogAudioBuffer>,unsigned int const&,0>();
  }

  v9 = a5[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v10 = *(a1 + 8);
    *a1 = v8;
    *(a1 + 8) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  else
  {
    *a1 = v8;
    *(a1 + 8) = 0;
  }

  Ptree = quasar::SystemConfig::getPtree(a2, a3);
  v12 = Ptree;
  v59 = *Ptree;
  if (*(Ptree + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v60, *(Ptree + 8), *(Ptree + 16));
  }

  else
  {
    v13 = *(Ptree + 8);
    v60.__r_.__value_.__r.__words[2] = *(Ptree + 24);
    *&v60.__r_.__value_.__l.__data_ = v13;
  }

  memset(v61, 0, sizeof(v61));
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v61, *(v12 + 32), *(v12 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v12 + 40) - *(v12 + 32)) >> 3));
  v62 = *(v12 + 56);
  v14 = quasar::PTree::begin(&v59);
  if (v14 != quasar::PTree::end(&v59))
  {
    if (*(v14 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, *v14, *(v14 + 8));
    }

    else
    {
      v15 = *v14;
      v58.__r_.__value_.__r.__words[2] = *(v14 + 16);
      *&v58.__r_.__value_.__l.__data_ = v15;
    }

    v42 = v63;
    v43 = 0;
    v44 = 0;
    v50 = 0;
    v51 = 0;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    memset(v49, 0, sizeof(v49));
    v52 = 0u;
    memset(v53, 0, sizeof(v53));
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 1;
    v41[0] = 0;
    v41[1] = 0;
    if (a6)
    {
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v58.__r_.__value_.__l.__size_ != 5)
        {
          goto LABEL_25;
        }

        v16 = v58.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) != 5)
        {
          goto LABEL_25;
        }

        v16 = &v58;
      }

      data = v16->__r_.__value_.__l.__data_;
      v18 = v16->__r_.__value_.__s.__data_[4];
      if (data == 1851875942 && v18 == 107)
      {
        if (*(a3 + 23) >= 0)
        {
          v27 = *(a3 + 23);
        }

        else
        {
          v27 = *(a3 + 8);
        }

        std::string::basic_string[abi:ne200100](&v38, v27 + 1);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v38;
        }

        else
        {
          v28 = v38.__r_.__value_.__r.__words[0];
        }

        if (v27)
        {
          if (*(a3 + 23) >= 0)
          {
            v29 = a3;
          }

          else
          {
            v29 = *a3;
          }

          memmove(v28, v29, v27);
        }

        *(&v28->__r_.__value_.__l.__data_ + v27) = 46;
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v58;
        }

        else
        {
          v30 = v58.__r_.__value_.__r.__words[0];
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v58.__r_.__value_.__l.__size_;
        }

        v32 = std::string::append(&v38, v30, size);
        v33 = *&v32->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        std::allocate_shared[abi:ne200100]<quasar::OnlineVadGatedFbankWithAudioAnalyticsFe,std::allocator<quasar::OnlineVadGatedFbankWithAudioAnalyticsFe>,std::string,0>();
      }
    }

LABEL_25:
    if (*(a3 + 23) >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = *(a3 + 8);
    }

    std::string::basic_string[abi:ne200100](&v38, v20 + 1);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v38;
    }

    else
    {
      v21 = v38.__r_.__value_.__r.__words[0];
    }

    if (v20)
    {
      if (*(a3 + 23) >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      memmove(v21, v22, v20);
    }

    *(&v21->__r_.__value_.__l.__data_ + v20) = 46;
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v58;
    }

    else
    {
      v23 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v58.__r_.__value_.__l.__size_;
    }

    v25 = std::string::append(&v38, v23, v24);
    v26 = *&v25->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    quasar::FeatureExtractorSimpleFactory::createFeatureExtractor(&__p, &v40);
  }

  v34 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  quasar::PTree::~PTree(&v59);
  return a1;
}

void sub_1B514CE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a33 = a11;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a33);
  a33 = a12;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a33);
  v35 = *(v33 + 24);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(v33 + 8);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::PSRAudioProcessor::compute(uint64_t a1, uint64_t a2)
{
  kaldi::Matrix<float>::Matrix(v13);
  kaldi::Matrix<float>::Matrix(v12);
  kaldi::Matrix<float>::Matrix(v11);
  kaldi::Matrix<float>::Matrix(v10);
  kaldi::Matrix<float>::Matrix(v9);
  kaldi::OnlineFeatInputItfIO::OnlineFeatInputItfIO(v8, a2, v13, v12, v11, v10, v9);
  v4 = *(a1 + 16);
  v7[0] = v8[0];
  v7[1] = v8[1];
  v7[2] = v8[2];
  v5 = (**v4)(v4, v7);
  kaldi::Matrix<float>::~Matrix(v9);
  kaldi::Matrix<float>::~Matrix(v10);
  kaldi::Matrix<float>::~Matrix(v11);
  kaldi::Matrix<float>::~Matrix(v12);
  kaldi::Matrix<float>::~Matrix(v13);
  return v5;
}

void sub_1B514D07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  kaldi::Matrix<float>::~Matrix(&a27);
  kaldi::Matrix<float>::~Matrix(v27 - 152);
  kaldi::Matrix<float>::~Matrix(v27 - 112);
  kaldi::Matrix<float>::~Matrix(v27 - 72);
  _Unwind_Resume(a1);
}

void quasar::FeatureExtractorArgs::~FeatureExtractorArgs(void **this)
{
  if (*(this + 223) < 0)
  {
    operator delete(this[25]);
  }

  if (*(this + 199) < 0)
  {
    operator delete(this[22]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  v2 = this[17];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[13];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v8 = this + 9;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v4 = this[8];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[6];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this[4];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = this[1];
  if (v7)
  {
    if (!atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v7 + 16))(v7);
    }
  }
}

void std::__shared_ptr_emplace<quasar::RecogAudioBuffer>::__shared_ptr_emplace[abi:ne200100]<unsigned int const&,std::allocator<quasar::RecogAudioBuffer>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF8E0;
  std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,unsigned int const&>();
}

void std::__shared_ptr_emplace<quasar::RecogAudioBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF8E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,unsigned int const&>()
{
  v1 = 0;
  LOBYTE(__p) = 0;
  _ZNSt3__115allocate_sharedB8ne200100IKN5kaldi5TimerENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B514D408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<kaldi::Timer const>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineVadGatedFbankWithAudioAnalyticsFe>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<quasar::OnlineVadGatedFbankWithAudioAnalyticsFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF980;
  quasar::OnlineVadGatedFbankWithAudioAnalyticsFe::OnlineVadGatedFbankWithAudioAnalyticsFe((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineVadGatedFbankWithAudioAnalyticsFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

BOOL compressed_filename_p(const char *a1)
{
  v2 = strlen(a1);
  if (v2 >= 3uLL && (v3 = &a1[v2], *(v3 - 2) == 46) && *(v3 - 1) == 90)
  {
    return *v3 == 0;
  }

  else
  {
    return 0;
  }
}

BOOL gzipped_filename_p(const char *a1)
{
  v2 = strlen(a1);
  v3 = v2;
  if (v2 < 4uLL)
  {
    if (v2 != 3)
    {
      return 0;
    }
  }

  else if (!strcmp(&a1[v2 - 3], ".gz"))
  {
    return 1;
  }

  v5 = &a1[v3];
  if (a1[v3 - 2] == 46 && *(v5 - 1) == 122)
  {
    return *v5 == 0;
  }

  return 0;
}

FILE *srilm_zopen(uint64_t a1, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a1 == 45 && !*(a1 + 1))
  {
    v6 = *a2;
    if (v6 != 97 && v6 != 119)
    {
      if (v6 != 114)
      {
        return 0;
      }

      v7 = &srilm_zopen_stdin_used;
      if (srilm_zopen_stdin_used == 1)
      {
        if (srilm_zopen_stdin_warning)
        {
LABEL_14:
          v8 = 0;
LABEL_22:
          v10 = dup(v8);
          if (v10 < 0)
          {
            return 0;
          }

          return fdopen(v10, a2);
        }

        fwrite("warning: '-' used multiple times for input\n", 0x2BuLL, 1uLL, *MEMORY[0x1E69E9848]);
        v7 = &srilm_zopen_stdin_warning;
      }

      *v7 = 1;
      goto LABEL_14;
    }

    v9 = &srilm_zopen_stdout_used;
    if (srilm_zopen_stdout_used == 1)
    {
      if (srilm_zopen_stdout_warning)
      {
LABEL_21:
        v8 = 1;
        goto LABEL_22;
      }

      fwrite("warning: '-' used multiple times for output\n", 0x2CuLL, 1uLL, *MEMORY[0x1E69E9848]);
      v9 = &srilm_zopen_stdout_warning;
    }

    *v9 = 1;
    goto LABEL_21;
  }

  if (compressed_filename_p(a1))
  {
    v4 = 0;
    v5 = "exec compress -c";
    goto LABEL_30;
  }

  if (gzipped_filename_p(a1))
  {
    v4 = 0;
    v5 = "exec gzip -c";
    goto LABEL_30;
  }

  if (bzipped_filename_p(a1))
  {
    v4 = 0;
    v5 = "exec bzip2";
    goto LABEL_30;
  }

  if (sevenzipped_filename_p(a1))
  {
    v4 = 1;
    v5 = "exec 7z a -si";
    goto LABEL_30;
  }

  if (xz_filename_p(a1))
  {
    v4 = 0;
    v5 = "exec xz";
LABEL_30:
    v12 = *a2;
    if (v12 == 119)
    {
      v14 = open(a1, 513, 438);
      if ((v14 & 0x80000000) == 0)
      {
        close(v14);
        if (v4)
        {
          unlink(a1);
          v15 = "%s;%s %s";
        }

        else
        {
          v15 = "%s;%s >%s";
        }

        snprintf(__str, 0x464uLL, v15, ":", v5, a1);
        return popen(__str, a2);
      }
    }

    else if (v12 == 114)
    {
      v13 = open(a1, 0);
      if ((v13 & 0x80000000) == 0)
      {
        close(v13);
        snprintf(__str, 0x464uLL, "%s;%s %s");
        return popen(__str, a2);
      }
    }

    return 0;
  }

  return fopen(a1, a2);
}

uint64_t zclose(FILE *a1)
{
  memset(&v7, 0, sizeof(v7));
  v2 = fileno(a1);
  if (fstat(v2, &v7) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v7.st_mode & 0xF000) != 0x1000 || !fileno(a1) || fileno(a1) == 1)
  {
    return fclose(a1);
  }

  v6 = pclose(a1);
  if (v6 == 13)
  {
    return 0;
  }

  v4 = v6;
  if (v6 == -1)
  {
    return ferror(a1);
  }

  if (!*__error())
  {
    *__error() = 5;
  }

  return v4;
}

void sub_1B514DD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    quasar::artifact::LoadLmHandleFromArtifact(a9);
  }

  if (a10)
  {
    (*(*a10 + 8))();
  }

  _Unwind_Resume(exception_object);
}

void quasar::artifact::LoadLmHandleFromArtifact(quasar::artifact::AppLmArtifact **a1, uint64_t a2, uint64_t *a3)
{
  LifeCycleStage = quasar::artifact::AppLmArtifact::getLifeCycleStage(*a1);
  v7 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
  v8 = v7;
  v9 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v7);
  v10 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v9 + 320);
  if (v8 == v10)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    *__p = 0u;
    v35 = 0u;
    LODWORD(v36) = 1065353216;
    quasar::SystemConfig::SystemConfig(v43);
  }

  if (quasar::gLogLevel >= 2)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    *v43 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v43);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Artifact in ", 12);
    v12 = quasar::artifact::AppLmArtifact::getLifeCycleStage(*a1);
    String = quasar::PTree::getString(v12);
    v14 = *(String + 23);
    if (v14 >= 0)
    {
      v15 = String;
    }

    else
    {
      v15 = *String;
    }

    if (v14 >= 0)
    {
      v16 = *(String + 23);
    }

    else
    {
      v16 = *(String + 8);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " stage will be transformed to ", 30);
    v19 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v18);
    v20 = quasar::PTree::getString((v19 + 320));
    v21 = *(v20 + 23);
    if (v21 >= 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = *v20;
    }

    if (v21 >= 0)
    {
      v23 = *(v20 + 23);
    }

    else
    {
      v23 = *(v20 + 8);
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v22, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " stage", 6);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(v43);
  }

  v25 = *a1;
  *a1 = 0;
  v38 = v25;
  v26 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v10);
  v27 = *a3;
  *a3 = 0;
  v37 = v27;
  std::string::basic_string[abi:ne200100]<0>(v43, "app-lm.data");
  std::string::basic_string[abi:ne200100]<0>(__p, "app-lm.NGRAM");
  quasar::artifact::TransitionArtifact(&v38, (v26 + 320), a2, &v37, &v39);
  if (SBYTE7(v35) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v44) < 0)
  {
    operator delete(v43[0]);
  }

  v28 = v37;
  v37 = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = v38;
  v38 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  if (v39)
  {
    v30 = quasar::artifact::AppLmArtifact::getLifeCycleStage(v39);
    v31 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v30);
    v32 = v31;
    v33 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v31);
    if (v32 == quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v33 + 320))
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      *__p = 0u;
      v35 = 0u;
      LODWORD(v36) = 1065353216;
      quasar::SystemConfig::SystemConfig(v43);
    }
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v43);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "transformedArtifact != nullptr && transformedArtifact->getLifeCycleStage() == AppLmArtifactLifeCycleStages::get().DECODING_READY", 128);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v43);
}

void quasar::artifact::GetTargetLmeForAddingCustomProns()
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  *__p = 0u;
  v1 = 0u;
  v2 = 1065353216;
  quasar::SystemConfig::SystemConfig(v6);
}

void ***std::unique_ptr<std::vector<std::string>>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x1B8C85350](v2, 0x20C40960023A9);
  }

  return a1;
}

uint64_t *std::unique_ptr<quasar::CustomPronData>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 56);
    std::vector<quasar::AppLmData::Oov>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 32);
    std::vector<quasar::AppLmData::Oov>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    MEMORY[0x1B8C85350](v2, 0x1032C40BCD9A066);
  }

  return a1;
}

void quasar::artifact::ConstructIdentifier(const void **a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v6 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    memmove(p_p, v8, v6);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v6) = 58;
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = std::string::append(&__p, v10, v11);
  *a3 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B514E784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B514E818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1B8C85350](v15, 0x10B3C40549B666DLL);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B514E974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a10)
  {
    quasar::artifact::CreatePhraseCountsArtifact();
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  *v18 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B514EBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a10)
  {
    quasar::artifact::CreatePhraseCountsArtifact();
  }

  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (a19)
  {
    (*(*a19 + 8))(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B514EDF4(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1B8C85200](v3);
  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

void quasar::artifact::TransitionArtifact(quasar::artifact::AppLmArtifact **a1@<X0>, quasar::artifact *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, quasar::artifact::AppLmArtifact **a5@<X8>)
{
  LifeCycleStage = quasar::artifact::AppLmArtifact::getLifeCycleStage(*a1);
  if (quasar::artifact::IsValidLifeCycle(LifeCycleStage, v11))
  {
    if (quasar::artifact::IsValidLifeCycle(a2, v12))
    {
      v13 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(a2);
      if (v13 >= quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage))
      {
        v22 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(a2);
        if (v22 == quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage))
        {
          v23 = *a1;
          *a1 = 0;
          *a5 = v23;
          return;
        }

        v24 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
        v25 = v24;
        v26 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v24);
        if (v25 < quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v26 + 320))
        {
          v27 = *a1;
          quasar::filesystem::Path::Path(&v31, a3);
          v28 = *a4;
          *a4 = 0;
          v48 = v28;
          quasar::artifact::AppLmArtifact::loadAppLmData(v27);
        }

        if (quasar::gLogLevel >= 1)
        {
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
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v31 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Unable to transform artifact beyond ", 36);
          v30 = quasar::artifact::operator<<(v29, LifeCycleStage);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ".", 1);
          goto LABEL_10;
        }
      }

      else if (quasar::gLogLevel >= 1)
      {
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
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Unable to revert during the life cycle (from ", 45);
        v15 = quasar::artifact::operator<<(v14, LifeCycleStage);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " to ", 4);
        v17 = quasar::artifact::operator<<(v16, a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ").", 2);
LABEL_10:
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v31);
      }
    }

    else if (quasar::gLogLevel >= 1)
    {
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
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Target life cycle stage is invalid (", 36);
      v21 = quasar::artifact::operator<<(v20, a2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ").", 2);
      goto LABEL_10;
    }
  }

  else if (quasar::gLogLevel >= 1)
  {
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
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Artifact is in incorrect life cycle stage (", 43);
    v19 = quasar::artifact::operator<<(v18, LifeCycleStage);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ").", 2);
    goto LABEL_10;
  }

  *a5 = 0;
}

void sub_1B5150134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    quasar::artifact::TransitionArtifact();
  }

  JUMPOUT(0x1B5150150);
}

void sub_1B5150180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (STACK[0x248])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x248]);
  }

  quasar::SystemConfig::~SystemConfig(&STACK[0x250]);
  v17 = *(v16 - 104);
  *(v16 - 104) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  JUMPOUT(0x1B5150630);
}

void sub_1B515018C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&a73);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&STACK[0x218]);
  JUMPOUT(0x1B51505B4);
}

void sub_1B51501DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, uint64_t a63)
{
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&a73);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&STACK[0x218]);
  if (STACK[0x248])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x248]);
  }

  quasar::SystemConfig::~SystemConfig(&STACK[0x250]);
  v74 = *(v73 - 104);
  *(v73 - 104) = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  JUMPOUT(0x1B5150630);
}

void sub_1B515024C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B51502FCLL);
}

void sub_1B5150284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&a53);
  if (a70 < 0)
  {
    JUMPOUT(0x1B5150308);
  }

  std::unique_ptr<std::vector<std::string>>::~unique_ptr[abi:ne200100](&v70);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&v71);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&v72);
  JUMPOUT(0x1B5150414);
}

void sub_1B5150314()
{
  v0 = STACK[0x238];
  STACK[0x238] = 0;
  if (v0)
  {
    quasar::artifact::TransitionArtifact();
  }

  JUMPOUT(0x1B5150330);
}

void sub_1B515032C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (STACK[0x248])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x248]);
  }

  quasar::SystemConfig::~SystemConfig(&STACK[0x250]);
  v23 = *(v22 - 104);
  *(v22 - 104) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  JUMPOUT(0x1B5150630);
}

void sub_1B5150348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::~pair(&a58);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&a54);
  JUMPOUT(0x1B51503DCLL);
}

void sub_1B515036C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&a65);
  quasar::AppLmData::Oov::~Oov(&a17);
  a17 = &a69;
  std::vector<quasar::AppLmData::Oov>::__destroy_vector::operator()[abi:ne200100](&a17);
  JUMPOUT(0x1B51503FCLL);
}

void sub_1B515043C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B51503ECLL);
}

void sub_1B5150454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  if (STACK[0x248])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x248]);
  }

  quasar::SystemConfig::~SystemConfig(&STACK[0x250]);
  v9 = *(v8 - 104);
  *(v8 - 104) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  JUMPOUT(0x1B5150630);
}

void sub_1B515046C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  JUMPOUT(0x1B51505C8);
}

void sub_1B5150488(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  *(v1 - 112) = 0;
  if (v3)
  {
    quasar::artifact::TransitionArtifact();
  }

  quasar::artifact::TransitionArtifact(&STACK[0x250]);
  _Unwind_Resume(a1);
}

void sub_1B51504A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&a65);
  quasar::AppLmData::Oov::~Oov(&__p);
  __p = &a69;
  std::vector<quasar::AppLmData::Oov>::__destroy_vector::operator()[abi:ne200100](&__p);
  JUMPOUT(0x1B51505A4);
}

void sub_1B51505FC(_Unwind_Exception *a1)
{
  if (STACK[0x248])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x248]);
  }

  quasar::SystemConfig::~SystemConfig(&STACK[0x250]);
  v1 = *(v2 - 104);
  *(v2 - 104) = 0;
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(a1);
}

void boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::basic_ptree(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1B51506C4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x1020C402FC1992ELL);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::~pair(uint64_t a1)
{
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::add_child(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, a2[1]);
    v6 = *(a2 + 23) < 0;
  }

  else
  {
    v6 = 0;
    v11 = *a2;
  }

  v12 = *(a2 + 24);
  v7 = &v11;
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v11.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  v13 = v7 + a2[4] - v8;
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::force_path(a1, &v11);
  boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>::reduce(&v11, &v10);
  std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::pair[abi:ne200100]<std::string&,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>> const&,0>(&__p, &v10, a3);
}

void sub_1B515086C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::~pair(&a9);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void boost::property_tree::json_parser::write_json<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(void *a1, uint64_t a2, uint64_t a3)
{
  __p = 0uLL;
  v4 = 0;
  boost::property_tree::json_parser::write_json_internal<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(a1, a2, &__p, a3);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p);
  }
}

void sub_1B51508FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51509BC(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(*(*(v1 + 32) + 16 * *(v1 + 40) + 8));
  __cxa_rethrow();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *,false>(unint64_t *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v48 = a2[-1].n128_u64[0];
        v46 = a2 - 1;
        if (v48 >= *v12)
        {
          return result;
        }

LABEL_77:
        v77 = *v12;
        *v12 = *v46;
        result = v77;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v43 = (v12 + 2);
      v44 = v12[2];
      v47 = a2[-1].n128_u64[0];
      v46 = a2 - 1;
      v45 = v47;
      if (v44 < *v12)
      {
        if (v45 < v44)
        {
          goto LABEL_77;
        }

        v76 = *v12;
        *v12 = *v43;
        result = v76;
        *v43 = v76;
        if (v46->n128_u64[0] >= v12[2])
        {
          return result;
        }

        result = *v43;
        *v43 = *v46;
LABEL_78:
        *v46 = result;
        return result;
      }

      if (v45 >= v44)
      {
        return result;
      }

      result = *v43;
      *v43 = *v46;
      *v46 = result;
      goto LABEL_109;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *,0>(v12, v12 + 1, v12 + 4, v12 + 3, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *>(v12, a2->n128_u64);
      }

      else if (v12 != a2)
      {
        v52 = (v12 + 2);
        while (v52 != a2)
        {
          v53 = v52;
          v54 = a1[2];
          if (v54 < *a1)
          {
            v55 = a1[3];
            v56 = v53;
            do
            {
              result = v56[-1];
              *v56 = result;
              v57 = v56[-2].n128_u64[0];
              --v56;
            }

            while (v54 < v57);
            v56->n128_u64[0] = v54;
            v56->n128_u64[1] = v55;
          }

          v52 = v53 + 1;
          a1 = v53;
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *>(v12, a2->n128_u64, a2->n128_u64, a3);
      }

      return result;
    }

    v16 = &v12[2 * (v15 >> 1)];
    v17 = v16;
    v18 = v9->n128_u64[0];
    if (v15 >= 0x81)
    {
      v19 = *v16;
      if (*v16 >= *v12)
      {
        if (v18 < v19)
        {
          v61 = *v16;
          *v16 = *v9;
          *v9 = v61;
          if (*v16 < *v12)
          {
            v62 = *v12;
            *v12 = *v16;
            *v16 = v62;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v65 = *v12;
          *v12 = *v16;
          *v16 = v65;
          if (v9->n128_u64[0] >= *v16)
          {
            goto LABEL_28;
          }

          v59 = *v16;
          *v16 = *v9;
        }

        else
        {
          v59 = *v12;
          *v12 = *v9;
        }

        *v9 = v59;
      }

LABEL_28:
      v21 = (v12 + 2);
      v22 = (v16 - 2);
      v23 = *(v16 - 2);
      v24 = v10->n128_u64[0];
      if (v23 >= v12[2])
      {
        if (v24 < v23)
        {
          v66 = *v22;
          *v22 = *v10;
          *v10 = v66;
          if (v22->n128_u64[0] < v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (v10->n128_u64[0] >= v22->n128_u64[0])
          {
            goto LABEL_40;
          }

          v68 = *v22;
          *v22 = *v10;
          v25 = v68;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = (v12 + 4);
      v31 = v16[2];
      v29 = (v16 + 2);
      v30 = v31;
      v32 = v11->n128_u64[0];
      if (v31 >= v12[4])
      {
        if (v32 < v30)
        {
          v69 = *v29;
          *v29 = *v11;
          *v11 = v69;
          if (v29->n128_u64[0] < v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v30)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (v11->n128_u64[0] >= v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v70 = *v29;
          *v29 = *v11;
          v33 = v70;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17;
      v37 = v29->n128_u64[0];
      if (*v17 >= v22->n128_u64[0])
      {
        if (v37 < v36)
        {
          v72 = *v17;
          *v17 = *v29;
          *v29 = v72;
          if (*v17 < v22->n128_u64[0])
          {
            v73 = *v22;
            *v22 = *v17;
            *v17 = v73;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v74 = *v22;
        *v22 = *v17;
        *v17 = v74;
        if (v29->n128_u64[0] >= *v17)
        {
LABEL_58:
          v75 = *v12;
          *v12 = *v17;
          *v17 = v75;
          goto LABEL_59;
        }

        v71 = *v17;
        *v17 = *v29;
      }

      else
      {
        v71 = *v22;
        *v22 = *v29;
      }

      *v29 = v71;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 >= *v17)
    {
      if (v18 < v20)
      {
        v63 = *v12;
        *v12 = *v9;
        *v9 = v63;
        if (*v12 < *v17)
        {
          v64 = *v17;
          *v17 = *v12;
          *v12 = v64;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v60 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v60;
        goto LABEL_59;
      }

      v67 = *v17;
      *v17 = *v12;
      *v12 = v67;
      if (v9->n128_u64[0] < *v12)
      {
        v60 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *(v12 - 2) >= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *,std::__less<void,void> &>(v12, a2->n128_u64);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *,std::__less<void,void> &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *>(v12, v38, v39);
    v12 = (v38 + 1);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *>((v38 + 1), a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = (v38 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v43 = (v12 + 2);
  v49 = v12[2];
  v50 = (v12 + 4);
  v51 = v12[4];
  if (v49 >= *v12)
  {
    if (v51 < v49)
    {
      result = *v43;
      *v43 = *v50;
      *v50 = result;
      if (v12[2] < *v12)
      {
        v79 = *v12;
        *v12 = *v43;
        result = v79;
        *v43 = v79;
      }
    }
  }

  else
  {
    if (v51 < v49)
    {
      v78 = *v12;
      *v12 = *v50;
      result = v78;
      goto LABEL_105;
    }

    v80 = *v12;
    *v12 = *v43;
    result = v80;
    *v43 = v80;
    if (v51 < v12[2])
    {
      result = *v43;
      *v43 = *v50;
LABEL_105:
      *v50 = result;
    }
  }

  if (v9->n128_u64[0] >= v50->n128_u64[0])
  {
    return result;
  }

  result = *v50;
  *v50 = *v9;
  *v9 = result;
  if (v50->n128_u64[0] >= v43->n128_u64[0])
  {
    return result;
  }

  result = *v43;
  *v43 = *v50;
  *v50 = result;
LABEL_109:
  if (v12[2] < *v12)
  {
    v81 = *v12;
    *v12 = *v43;
    result = v81;
    *v43 = v81;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

unint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (v6 < *v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 16);
            v8 -= 16;
            if (v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*a1 >= *(a2 - 2))
  {
    v6 = a1 + 2;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 2;
    }

    while (v3 >= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[2];
      v4 += 2;
    }

    while (v3 >= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 2);
      a2 -= 2;
    }

    while (v3 < v7);
  }

  while (v4 < a2)
  {
    v11 = *v4;
    *v4 = *a2;
    *a2 = v11;
    do
    {
      v8 = v4[2];
      v4 += 2;
    }

    while (v3 >= v8);
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (v3 < v9);
  }

  if (v4 - 2 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *,std::__less<void,void> &>(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = *&a1[++v2];
  }

  while (v5 < v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *(a2-- - 2);
    }

    while (v9 >= v4);
  }

  else
  {
    do
    {
      v8 = *(a2-- - 2);
    }

    while (v8 >= v4);
  }

  if (v6 < a2)
  {
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10++ + 2);
      }

      while (v13 < v4);
      do
      {
        v14 = *(v11-- - 2);
      }

      while (v14 >= v4);
    }

    while (v10 < v11);
    v7 = v10 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u64[0] >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v41 = *a1;
        *a1 = *v6;
        *v6 = v41;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v38 = *a1;
      *a1 = *v6;
      *v6 = v38;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u64[0] >= v18->n128_u64[0])
    {
      return 1;
    }

    v39 = *v18;
    *v18 = *v20;
    *v20 = v39;
    if (v18->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v40 = *v6;
    *v6 = *v18;
    *v18 = v40;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_u64[0];
    if (v30->n128_u64[0] < v11->n128_u64[0])
    {
      v34 = v30->n128_i64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1 + v35 + 16);
        v35 -= 16;
        if (v33 >= v36)
        {
          v37 = (a1 + v35 + 48);
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v33;
      v37[1] = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v30 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = v16 + 2;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = v16 + 4;
            if (*(v19 - 2) >= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v17 == v6)
        {
          *v17 = v30;
        }

        else
        {
          *v17 = *v6;
          *v6 = v30;
          v21 = (v17 - a1 + 16) >> 4;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (!v22)
          {
            v24 = v23 >> 1;
            v25 = &a1[2 * v24];
            v26 = *v17;
            if (*v25 < *v17)
            {
              v27 = v17[1];
              do
              {
                v28 = v17;
                v17 = v25;
                *v28 = *v25;
                if (!v24)
                {
                  break;
                }

                v24 = (v24 - 1) >> 1;
                v25 = &a1[2 * v24];
              }

              while (*v25 < v26);
              *v17 = v26;
              v17[1] = v27;
            }
          }
        }

        v22 = v8-- <= 2;
      }

      while (!v22);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::sequenced_index_node<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>>>> *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        if (*v8 < v8[2])
        {
          v10 = v8[2];
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (v10 >= *a4)
      {
        v12 = a4[1];
        do
        {
          v13 = a4;
          a4 = v8;
          *v13 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 16 * v14);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v15 = *v8;
            v7 = v14;
          }

          else
          {
            v15 = *v8;
            if (*v8 >= v8[2])
            {
              v7 = v14;
            }

            else
            {
              v15 = v8[2];
              v8 += 2;
            }
          }
        }

        while (v15 >= v11);
        *a4 = v11;
        a4[1] = v12;
      }
    }
  }

  return result;
}

void std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::pair[abi:ne200100]<char const*,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>,0>(std::string *a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(a1, *a2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    a1[1].__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&a1[1].__r_.__value_.__l.__data_ = v4;
  }

  operator new();
}

void sub_1B5151C28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::NgramSrilmCountConfig>::__shared_ptr_emplace[abi:ne200100]<quasar::SystemConfig &,std::string const&,std::allocator<quasar::NgramSrilmCountConfig>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFF9D0;
  quasar::NgramSrilmCountConfig::NgramSrilmCountConfig(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::NgramSrilmCountConfig>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFF9D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

std::string *boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::put<std::string,boost::property_tree::id_translator<std::string>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::get_child_optional(a1, a2, &v5);
  if (!v5)
  {
    operator new();
  }

  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::put_value<std::string,boost::property_tree::id_translator<std::string>>(v5, a3);
  return v5;
}

void sub_1B5151ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(va);
  _Unwind_Resume(a1);
}

void boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::get_child_optional(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v6 = *(a2 + 23) < 0;
  }

  else
  {
    v6 = 0;
    __p = *a2;
  }

  v10 = *(a2 + 24);
  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  v11 = p_p + *(a2 + 32) - v8;
  *a3 = boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::walk_path(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5151FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::put_value<std::string,boost::property_tree::id_translator<std::string>>(std::string *this, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  std::string::operator=(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::put_child(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a2, a2[1]);
    v6 = *(a2 + 23) < 0;
  }

  else
  {
    v6 = 0;
    v13 = *a2;
  }

  v14 = *(a2 + 24);
  v7 = &v13;
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  v15 = v7 + a2[4] - v8;
  v9 = boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::force_path(a1, &v13);
  boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>::reduce(&v13, &v12);
  v10 = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::find<std::string>(*(v9 + 24) + 16, &v12.__r_.__value_.__l.__data_);
  if (*(*(v9 + 24) + 8) != v10)
  {
    boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::operator=((v10 + 3), a3);
  }

  std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::pair[abi:ne200100]<std::string&,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>> const&,0>(&__p, &v12, a3);
}

void sub_1B5152230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::~pair(&a9);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::walk_path(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (*(a2 + 32) != v4 + v3)
  {
    boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>::reduce(a2, &__p);
    v6 = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::find<std::string>(*(a1 + 24) + 16, &__p.__r_.__value_.__l.__data_);
    if (*(*(a1 + 24) + 8) == v6)
    {
      a1 = 0;
    }

    else
    {
      a1 = boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::walk_path(v6 + 3, a2);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

void sub_1B5152328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>::reduce(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v6 = *a1;
    v5 = a1[1];
  }

  else
  {
    v6 = a1;
  }

  v7 = v6 + v5;
  v8 = memchr(a1[4], *(a1 + 24), v6 + v5 - v4);
  if (v8)
  {
    v7 = v8;
  }

  std::string::__init_with_size[abi:ne200100]<char *,char *>(&v11, v4, v7, v7 - v4);
  a1[4] = v7;
  v9 = *(a1 + 23);
  if (v9 < 0)
  {
    v10 = *a1;
    v9 = a1[1];
  }

  else
  {
    v10 = a1;
  }

  if (v7 != v10 + v9)
  {
    a1[4] = (v7 + 1);
  }

  v12 = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  v12 = 1;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if ((v12 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = __p;
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B51524A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void boost::property_tree::ptree_error::~ptree_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1B8C85350);
}

const void **boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (v3)
  {
    v6 = *(a1 - 8);
    do
    {
      while (1)
      {
        v7 = (v3 - 56);
        if (std::less<std::string>::operator()[abi:ne200100](a1 + 1, (v3 - 56), a2))
        {
          break;
        }

        v3 = *(v3 + 8);
        v6 = v7;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v3 = *(v3 + 16);
    }

    while (v3);
    v7 = v6;
LABEL_7:
    if (v7 != v2 && !std::less<std::string>::operator()[abi:ne200100](a1 + 1, a2, v7))
    {
      return v7;
    }
  }

  return v2;
}

uint64_t boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::force_path(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a2 + v4;
  }

  else
  {
    v5 = (*a2 + a2[1]);
  }

  if ((v4 & 0x80u) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = memchr(a2[4], *(a2 + 24), &v5[-a2[4]]);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v9 != v6 + v7)
  {
    boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>::reduce(a2, &v12);
    v10 = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::find<std::string>(*(a1 + 24) + 16, &v12.__r_.__value_.__l.__data_);
    if (*(*(a1 + 24) + 8) == v10)
    {
      operator new();
    }

    a1 = boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::force_path(v10 + 3, a2);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

void sub_1B5152748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::~pair(&a13);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&a9);
  if (*(v13 - 49) < 0)
  {
    operator delete(*(v13 - 72));
  }

  _Unwind_Resume(a1);
}

void boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v2, *a2, *(a2 + 8));
  }

  else
  {
    v2 = *a2;
  }

  operator new();
}

void sub_1B5152858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x1B8C85350](v14, 0x1020C402FC1992ELL);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::pair[abi:ne200100]<std::string&,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  operator new();
}

void sub_1B5152940(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::pair[abi:ne200100]<std::string&,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>> const&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  operator new();
}

void sub_1B5152A40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::property_tree::json_parser::write_json_internal<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if ((boost::property_tree::json_parser::verify_json<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(a2, 0) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "ptree contains data that cannot be represented in JSON format");
    boost::property_tree::file_parser_error::file_parser_error(&v14, v13, a3, 0);
    v14.__locale_ = &unk_1F2CFFB50;
    v10 = "/AppleInternal/Library/BuildRoots/4~B_v8ugAyYI0IKEYsMtCXGlJLPsrxIHMQK5jjw9Y/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/json_parser/detail/write.hpp";
    v11 = "void boost::property_tree::json_parser::write_json_internal(std::basic_ostream<typename Ptree::key_type::value_type> &, const Ptree &, const std::string &, BOOL) [Ptree = boost::property_tree::basic_ptree<std::string, std::string>]";
    v12 = 159;
    boost::throw_exception<boost::property_tree::json_parser::json_parser_error>(&v14, &v10);
  }

  boost::property_tree::json_parser::write_json_helper<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(a1, a2, 0, a4);
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v8 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v14);
  std::ostream::put();
  result = std::ostream::flush();
  if (*(a1 + *(*a1 - 24) + 32))
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "write error");
    boost::property_tree::file_parser_error::file_parser_error(&v14, v13, a3, 0);
    v14.__locale_ = &unk_1F2CFFB50;
    v10 = "/AppleInternal/Library/BuildRoots/4~B_v8ugAyYI0IKEYsMtCXGlJLPsrxIHMQK5jjw9Y/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/property_tree/json_parser/detail/write.hpp";
    v11 = "void boost::property_tree::json_parser::write_json_internal(std::basic_ostream<typename Ptree::key_type::value_type> &, const Ptree &, const std::string &, BOOL) [Ptree = boost::property_tree::basic_ptree<std::string, std::string>]";
    v12 = 163;
    boost::throw_exception<boost::property_tree::json_parser::json_parser_error>(&v14, &v10);
  }

  return result;
}

void sub_1B5152C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19)
{
  boost::property_tree::file_parser_error::~file_parser_error(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t boost::property_tree::json_parser::verify_json<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(uint64_t a1, int a2)
{
  if (!a2)
  {
    boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::get_value<std::string,boost::property_tree::id_translator<std::string>>(a1, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (size)
    {
      return 0;
    }
  }

  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::get_value<std::string,boost::property_tree::id_translator<std::string>>(a1, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*(&__p.__r_.__value_.__s + 23) || !*(*(a1 + 24) + 24))
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    v5 = *(*(a1 + 24) + 24);
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      return 0;
    }
  }

  else
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_17:
  v7 = *(*(a1 + 24) + 8);
  v8 = *(v7 + 88);
  if (v8)
  {
    v9 = v8 - 80;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == v7)
  {
    return 1;
  }

  do
  {
    result = boost::property_tree::json_parser::verify_json<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(v9 + 24, (a2 + 1));
    if (!result)
    {
      break;
    }

    v10 = *(v9 + 88);
    v9 = v10 ? v10 - 80 : 0;
  }

  while (v9 != *(*(a1 + 24) + 8));
  return result;
}

void boost::throw_exception<boost::property_tree::json_parser::json_parser_error>(uint64_t a1, uint64_t a2)
{
  exception = __cxa_allocate_exception(0x78uLL);
  boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::wrapexcept(exception, a1, a2);
}

void boost::property_tree::json_parser::write_json_helper<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 < 1)
  {
LABEL_42:
    __p.__r_.__value_.__s.__data_[0] = 123;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
    if (a4)
    {
      __p.__r_.__value_.__s.__data_[0] = 10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
    }

    v22 = *(*(a2 + 24) + 8);
    v23 = *(v22 + 88);
    if (v23)
    {
      v24 = v23 - 80;
    }

    else
    {
      v24 = 0;
    }

    v41 = 4 * a3;
    if (v24 == v22)
    {
LABEL_80:
      if (a4)
      {
        std::string::basic_string[abi:ne200100](&__p, v41, 32);
        v35 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v36 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v35, v36);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v21 = 125;
      goto LABEL_90;
    }

    while (1)
    {
      if (a4)
      {
        std::string::basic_string[abi:ne200100](&__p, v41 + 4, 32);
        v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v25, v26);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      __p.__r_.__value_.__s.__data_[0] = 34;
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      boost::property_tree::json_parser::create_escapes<char>(v24, &__p);
      v28 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
      v42.__r_.__value_.__s.__data_[0] = 34;
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, &v42, 1);
      v42.__r_.__value_.__s.__data_[0] = 58;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, &v42, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (a4)
      {
        goto LABEL_65;
      }

LABEL_66:
      boost::property_tree::json_parser::write_json_helper<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(a1, v24 + 24, (a3 + 1), a4);
      v32 = *(v24 + 88);
      if (v32)
      {
        v33 = v32 - 80;
      }

      else
      {
        v33 = 0;
      }

      if (v33 != *(*(a2 + 24) + 8))
      {
        __p.__r_.__value_.__s.__data_[0] = 44;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      }

      if (a4)
      {
        __p.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      }

      v34 = *(v24 + 88);
      if (v34)
      {
        v24 = v34 - 80;
      }

      else
      {
        v24 = 0;
      }

      if (v24 == *(*(a2 + 24) + 8))
      {
        goto LABEL_80;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (!a4)
    {
      goto LABEL_66;
    }

LABEL_65:
    __p.__r_.__value_.__s.__data_[0] = 32;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
    goto LABEL_66;
  }

  v8 = *(a2 + 24);
  if (*(v8 + 24))
  {
    memset(&__p, 0, sizeof(__p));
    v9 = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::count<std::string>(v8 + 16, &__p.__r_.__value_.__l.__data_);
    v10 = *(*(a2 + 24) + 24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v9 == v10)
    {
      __p.__r_.__value_.__s.__data_[0] = 91;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      if (a4)
      {
        __p.__r_.__value_.__s.__data_[0] = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      }

      v11 = *(*(a2 + 24) + 8);
      v12 = *(v11 + 88);
      if (v12)
      {
        v13 = v12 - 80;
      }

      else
      {
        v13 = 0;
      }

      if (v13 != v11)
      {
        do
        {
          if (a4)
          {
            std::string::basic_string[abi:ne200100](&__p, 4 * a3 + 4, 32);
            v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v14, v15);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          boost::property_tree::json_parser::write_json_helper<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>(a1, v13 + 24, (a3 + 1), a4);
          v16 = *(v13 + 88);
          if (v16)
          {
            v17 = v16 - 80;
          }

          else
          {
            v17 = 0;
          }

          if (v17 != *(*(a2 + 24) + 8))
          {
            __p.__r_.__value_.__s.__data_[0] = 44;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
          }

          if (a4)
          {
            __p.__r_.__value_.__s.__data_[0] = 10;
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
          }

          v18 = *(v13 + 88);
          if (v18)
          {
            v13 = v18 - 80;
          }

          else
          {
            v13 = 0;
          }
        }

        while (v13 != *(*(a2 + 24) + 8));
      }

      if (a4)
      {
        std::string::basic_string[abi:ne200100](&__p, (4 * a3), 32);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v21 = 93;
LABEL_90:
      __p.__r_.__value_.__s.__data_[0] = v21;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &__p, 1);
      return;
    }

    goto LABEL_42;
  }

  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::get_value<std::string,boost::property_tree::id_translator<std::string>>(a2, &v42);
  boost::property_tree::json_parser::create_escapes<char>(&v42, &__p);
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v42.__r_.__value_.__s.__data_[0] = 34;
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, &v42, 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &__p;
  }

  else
  {
    v38 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = __p.__r_.__value_.__l.__size_;
  }

  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
  v42.__r_.__value_.__s.__data_[0] = 34;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, &v42, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B5153320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::get_value<std::string,boost::property_tree::id_translator<std::string>>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = __p;
  }
}

void sub_1B5153434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 80) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 88));
  boost::property_tree::file_parser_error::~file_parser_error((a1 + 8));
  return a1;
}

uint64_t boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::wrapexcept(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  *a1 = &unk_1F2CFD548;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 8) = &unk_1F2CFFB78;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v6 = *(a2 + 16);
    *(a1 + 40) = *(a2 + 32);
    *(a1 + 24) = v6;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v7 = *(a2 + 40);
    *(a1 + 64) = *(a2 + 56);
    *(a1 + 48) = v7;
  }

  v8 = *(a2 + 64);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *a1 = &unk_1F2CFFAD8;
  *(a1 + 8) = &unk_1F2CFFB08;
  *(a1 + 72) = v8;
  *(a1 + 80) = &unk_1F2CFFB30;
  *(a1 + 112) = a3[1].i32[0];
  *(a1 + 96) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_1B51535FC(_Unwind_Exception *a1)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::property_tree::json_parser::json_parser_error::json_parser_error(uint64_t a1, uint64_t a2)
{
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &unk_1F2CFFB78;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v4[1], *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    v4[2].__vftable = *(a2 + 32);
    v4[1] = v5;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  *(a1 + 64) = *(a2 + 64);
  *a1 = &unk_1F2CFFB50;
  return a1;
}

void sub_1B51536F0(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_1B515395C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  std::runtime_error::~runtime_error(v12);
  MEMORY[0x1B8C85350](v10, v11);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x78uLL);
  boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 80) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 88));
  boost::property_tree::file_parser_error::~file_parser_error((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 72) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 80));

  boost::property_tree::file_parser_error::~file_parser_error(a1);
}

{
  *(a1 + 72) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 80));
  boost::property_tree::file_parser_error::~file_parser_error(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  boost::property_tree::file_parser_error::~file_parser_error(v1);
}

{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  boost::property_tree::file_parser_error::~file_parser_error(v1);

  JUMPOUT(0x1B8C85350);
}

void boost::property_tree::json_parser::json_parser_error::~json_parser_error(std::runtime_error *this)
{
  boost::property_tree::file_parser_error::~file_parser_error(this);

  JUMPOUT(0x1B8C85350);
}

void boost::property_tree::file_parser_error::~file_parser_error(std::runtime_error *this)
{
  boost::property_tree::file_parser_error::~file_parser_error(this);

  JUMPOUT(0x1B8C85350);
}

{
  this->__vftable = &unk_1F2CFFB78;
  if (SHIBYTE(this[3].__imp_.__imp_) < 0)
  {
    operator delete(this[2].__imp_.__imp_);
  }

  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::runtime_error::~runtime_error(this);
}

uint64_t boost::wrapexcept<boost::property_tree::json_parser::json_parser_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD548;
  boost::property_tree::json_parser::json_parser_error::json_parser_error(a1 + 8, a2 + 8);
  v4 = *(a2 + 88);
  *(a1 + 80) = &unk_1F2CFD578;
  *(a1 + 88) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v5;
  *a1 = &unk_1F2CFFAD8;
  *(a1 + 8) = &unk_1F2CFFB08;
  *(a1 + 80) = &unk_1F2CFFB30;
  return a1;
}

uint64_t boost::property_tree::file_parser_error::file_parser_error(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  boost::property_tree::file_parser_error::format_what(a2, a3, a4);
  std::runtime_error::runtime_error(a1, &v11);
  *a1 = &unk_1F2CFFA38;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_1F2CFFB78;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
    *(a1 + 32) = *(a2 + 16);
    *(a1 + 16) = v8;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v9;
  }

  *(a1 + 64) = a4;
  return a1;
}

void sub_1B5153F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 39) < 0)
  {
    operator delete(*v16);
  }

  std::runtime_error::~runtime_error(v15);
  _Unwind_Resume(a1);
}

uint64_t boost::property_tree::file_parser_error::format_what(uint64_t a1, const char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  if (a2[23] < 0)
  {
    if (*(a2 + 1))
    {
      a2 = *a2;
    }

    else
    {
      a2 = "<unspecified file>";
    }
  }

  else if (!a2[23])
  {
    a2 = "<unspecified file>";
  }

  v6 = strlen(a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, a2, v6);
  if (a3)
  {
    v21 = 40;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, &v21, 1);
    v8 = MEMORY[0x1B8C84C30](v7, a3);
    v21 = 41;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v21, 1);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ": ", 2);
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  std::stringbuf::str();
  v15[0] = *MEMORY[0x1E69E54D8];
  v13 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v13;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v20);
}

void boost::property_tree::json_parser::create_escapes<char>(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = a1[23];
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
    v5 = a1[23];
  }

  else
  {
    v5 = *(a1 + 1);
  }

  for (; v5; --v5)
  {
    v6 = *v4;
    if (v6 <= 0x5C && (v6 - 48) >= 0x2Cu && (v6 & 0xFE) != 0x20 && (v6 - 35) >= 0xCu)
    {
      if (*v4 > 0xCu)
      {
        if (*v4 > 0x2Eu)
        {
          if (v6 == 47)
          {
            std::string::push_back(a2, 92);
            LOBYTE(v6) = 47;
          }

          else
          {
            if (v6 != 92)
            {
LABEL_37:
              std::string::push_back(a2, 92);
              std::string::push_back(a2, 117);
              std::string::push_back(a2, 48);
              std::string::push_back(a2, 48);
              std::string::push_back(a2, a0123456789abcd[v6 >> 4]);
              std::string::push_back(a2, a0123456789abcd[v6 & 0xF]);
              goto LABEL_35;
            }

            LOBYTE(v6) = 92;
            std::string::push_back(a2, 92);
          }
        }

        else if (v6 == 13)
        {
          std::string::push_back(a2, 92);
          LOBYTE(v6) = 114;
        }

        else
        {
          if (v6 != 34)
          {
            goto LABEL_37;
          }

          std::string::push_back(a2, 92);
          LOBYTE(v6) = 34;
        }
      }

      else if (*v4 > 9u)
      {
        if (v6 == 10)
        {
          std::string::push_back(a2, 92);
          LOBYTE(v6) = 110;
        }

        else
        {
          if (v6 != 12)
          {
            goto LABEL_37;
          }

          std::string::push_back(a2, 92);
          LOBYTE(v6) = 102;
        }
      }

      else if (v6 == 8)
      {
        std::string::push_back(a2, 92);
        LOBYTE(v6) = 98;
      }

      else
      {
        if (v6 != 9)
        {
          goto LABEL_37;
        }

        std::string::push_back(a2, 92);
        LOBYTE(v6) = 116;
      }
    }

    std::string::push_back(a2, v6);
LABEL_35:
    ++v4;
  }
}

void sub_1B51543F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::count<std::string>(uint64_t a1, const void **a2)
{
  v2 = boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::equal_range<std::string,std::less<std::string>>(a1, a2, a1 + 1);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = v3;
  v4 = 0;
  do
  {
    ++v4;
    v7 = v2 + 56;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(&v7);
    if (v7)
    {
      v2 = v7 - 56;
    }

    else
    {
      v2 = 0;
    }
  }

  while (v2 != v5);
  return v4;
}

unint64_t boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>,boost::multi_index::detail::nth_layer<2,std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,boost::multi_index::indexed_by<boost::multi_index::sequenced<boost::multi_index::tag<mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>>,boost::multi_index::ordered_non_unique<boost::multi_index::tag<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,boost::multi_index::member<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>,std::string const,&std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>::first>,std::less<std::string>>,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na,mpl_::na>,std::allocator<std::pair<std::string const,boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>>>>,boost::mpl::v_item<boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::subs::by_name,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_non_unique_tag,boost::multi_index::detail::null_augment_policy>::equal_range<std::string,std::less<std::string>>(uint64_t a1, const void **a2, uint64_t a3)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    return v3;
  }

  while (1)
  {
    v7 = v4;
    while (1)
    {
      v8 = v7 - 56;
      if (!std::less<std::string>::operator()[abi:ne200100](a3, (v7 - 56), a2))
      {
        break;
      }

      v7 = *(v7 + 16);
      if (!v7)
      {
        return v3;
      }
    }

    v9 = std::less<std::string>::operator()[abi:ne200100](a3, a2, (v7 - 56));
    v4 = *(v7 + 8);
    if (!v9)
    {
      break;
    }

    v3 = v7 - 56;
    if (!v4)
    {
      return v8;
    }
  }

  if (v4)
  {
    do
    {
      while (1)
      {
        v11 = v4 - 56;
        if (!std::less<std::string>::operator()[abi:ne200100](a3, (v4 - 56), a2))
        {
          break;
        }

        v4 = *(v4 + 16);
        if (!v4)
        {
          goto LABEL_17;
        }
      }

      v4 = *(v4 + 8);
      v8 = v11;
    }

    while (v4);
  }

  else
  {
LABEL_17:
    v11 = v8;
  }

  v12 = *(v7 + 16);
  if (!v12)
  {
    return v11;
  }

  do
  {
    while (!std::less<std::string>::operator()[abi:ne200100](a3, a2, (v12 - 56)))
    {
      v12 = *(v12 + 16);
      if (!v12)
      {
        return v11;
      }
    }

    v12 = *(v12 + 8);
  }

  while (v12);
  return v11;
}

uint64_t boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    do
    {
      *result = v2;
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  else
  {
    v3 = (*v1 & 0xFFFFFFFFFFFFFFFELL);
    if (v1 == v3[2])
    {
      do
      {
        v5 = v3;
        *result = v3;
        v3 = (*v3 & 0xFFFFFFFFFFFFFFFELL);
      }

      while (v5 == v3[2]);
      v4 = v5[2];
    }

    else
    {
      v4 = 0;
    }

    if (v4 != v3)
    {
      *result = v3;
    }
  }

  return result;
}

void quasar::makeNbestElement(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  kaldi::quasar::TranslationUtil::NbestElement::NbestElement(a3);
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      memset(v13, 0, 24);
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      memset(v17, 0, 156);
      __src = *(v6 + 4 * v8);
      std::vector<kaldi::LevenshteinOp::Value>::__assign_with_size[abi:ne200100]<kaldi::LevenshteinOp::Value const*,kaldi::LevenshteinOp::Value const*>(&v17[1], &__src, v13, 1uLL);
      v9 = (*a2 + v7);
      if (v9 != &v17[7])
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v17[7], *v9, v9[1], (v9[1] - *v9) >> 2);
      }

      v10 = *(a3 + 8);
      if (v10 >= *(a3 + 16))
      {
        v11 = std::vector<kaldi::quasar::TranslationUtil::PathElement>::__emplace_back_slow_path<kaldi::quasar::TranslationUtil::PathElement const&>(a3, v13);
      }

      else
      {
        kaldi::quasar::TranslationUtil::PathElement::PathElement(*(a3 + 8), v13);
        v11 = v10 + 240;
      }

      *(a3 + 8) = v11;
      kaldi::quasar::TranslationUtil::PathElement::~PathElement(v13);
      ++v8;
      v6 = *a1;
      v7 += 24;
    }

    while (v8 < (a1[1] - *a1) >> 2);
  }
}

void sub_1B515474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 1) = v4;
  kaldi::quasar::TranslationUtil::PathElement::~PathElement(va);
  kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v3);
  _Unwind_Resume(a1);
}

uint64_t quasar::PDecForceAlignOptions::options@<X0>(quasar::PDecForceAlignOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 176;
  v3[1] = this + 16;
  v3[2] = this + 336;
  v3[3] = this + 480;
  v3[4] = this + 624;
  v3[5] = this + 784;
  v3[6] = this + 928;
  v3[7] = this + 1072;
  v3[8] = this + 1232;
  v3[9] = this + 1712;
  v3[10] = this + 1856;
  v3[11] = this + 2144;
  v3[12] = this + 2000;
  v3[13] = this + 1392;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 0xEuLL);
}

uint64_t quasar::PDecForceAlignBlock::init(__n128 *this)
{
  v2 = quasar::OptionValue<std::string>::value(&this[11].n128_u64[1]);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    if (*(v2 + 8) != 5)
    {
      goto LABEL_10;
    }

    v2 = *v2;
  }

  else if (v3 != 5)
  {
    goto LABEL_10;
  }

  if (*v2 != 1684824427 || *(v2 + 4) != 105)
  {
LABEL_10:
    v5 = quasar::OptionValue<std::string>::value(&this[11].n128_u64[1]);
    v6 = *(v5 + 23);
    if (v6 < 0)
    {
      if (*(v5 + 8) != 8)
      {
        goto LABEL_30;
      }

      v5 = *v5;
    }

    else if (v6 != 8)
    {
LABEL_30:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v21);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Unknown model type: ", 20);
      v20 = quasar::OptionValue<std::string>::value(&this[11].n128_u64[1]);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v19, v20);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v21);
    }

    if (*v5 != 0x6F73736572707365)
    {
      goto LABEL_30;
    }

    v7 = quasar::OptionValue<std::string>::value(&this[1].n128_u64[1]);
    quasar::OptionValue<BOOL>::value(&this[21].n128_u64[1]);
    v8 = *quasar::OptionValue<BOOL>::value(&this[107].n128_u64[1]);
    v9 = this[155].n128_u64[0];
    v38 = this[154].n128_u64[1];
    v39 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    kaldi::quasar::TMTools::GetModel<kaldi::quasar::Encdec>(v7, v8, 1, &v38, &v21);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>>::__assign_alt[abi:ne200100]<1ul,std::shared_ptr<kaldi::quasar::Encdec>,std::shared_ptr<kaldi::quasar::Encdec>>(&this[151], this + 151, &v21);
    if (v21.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21.n128_u64[1]);
    }

    v10 = v39;
    if (v39)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v15 = quasar::OptionValue<std::string>::value(&this[1].n128_u64[1]);
  quasar::OptionValue<BOOL>::value(&this[21].n128_u64[1]);
  v16 = *quasar::OptionValue<BOOL>::value(&this[107].n128_u64[1]);
  v17 = this[155].n128_u64[0];
  v40 = this[154].n128_u64[1];
  v41 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  kaldi::quasar::TMTools::GetModel<kaldi::quasar::TorchEncoderDecoder>(v15, v16, 0, &v40, &v21);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v18 = quasar::PDecModelVersionChecker::PDecModelVersionChecker(&v42, v21.n128_i64[0]);
  quasar::PDecModelVersionChecker::checkVersion(v18, this[1].n128_u32[0]);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>>::__assign_alt[abi:ne200100]<0ul,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>&>(&this[151], this[151].n128_u64, &v21);
  v10 = v21.n128_u64[1];
  if (v21.n128_u64[1])
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_22:
  v11 = quasar::OptionValue<std::string>::value(&this[77].n128_u64[1]);
  v21.n128_u64[0] = quasar::OptionValue<std::string>::value(&this[97].n128_u64[1]);
  v21.n128_u64[1] = v11;
  *&v22 = this;
  v12 = this[152].n128_u32[0];
  if (v12 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v42 = &v21;
  result = (off_1F2CFFFF0[v12])(&v42, &this[151]);
  this[152].n128_u64[1] = result;
  this[153].n128_u32[0] = v14;
  return result;
}

void sub_1B5154AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 - 48);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TMTools::GetModel<kaldi::quasar::TorchEncoderDecoder>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, void *a4@<X4>, void *a5@<X8>)
{
  v22 = a2;
  v21 = a3;
  if ((a2 & 1) == 0)
  {
    std::allocate_shared[abi:ne200100]<kaldi::quasar::TorchEncoderDecoder,std::allocator<kaldi::quasar::TorchEncoderDecoder>,std::string const&,BOOL &,BOOL &,0>();
  }

  if (*a4)
  {
    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::TorchEncoderDecoder>();
  }

  v7 = kaldi::quasar::TorchEncoderDecoder::ModelFileMap(0);
  v20[0].__locale_ = a1;
  v8 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v7, a1);
  *a5 = 0;
  a5[1] = 0;
  v9 = *(v8 + 64);
  if (!v9)
  {
LABEL_19:
    operator new();
  }

  v10 = std::__shared_weak_count::lock(v9);
  a5[1] = v10;
  if (v10)
  {
    v11 = *(v8 + 56);
    *a5 = v11;
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (!*a5)
  {
LABEL_17:
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    goto LABEL_19;
  }

LABEL_8:
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v20, 1);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "ModelSharing: cache id ", 23);
    v13 = MEMORY[0x1B8C84BB0](v12, v7);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", getting existing model for ", 29);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 23);
    }

    else
    {
      v17 = *(a1 + 8);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", id: ", 6);
    MEMORY[0x1B8C84BB0](v19, *a5);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v20);
  }
}

void sub_1B5154DC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TMTools::GetModel<kaldi::quasar::Encdec>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, void *a4@<X4>, void *a5@<X8>)
{
  v22 = a2;
  v21 = a3;
  if ((a2 & 1) == 0)
  {
    std::allocate_shared[abi:ne200100]<kaldi::quasar::Encdec,std::allocator<kaldi::quasar::Encdec>,std::string const&,BOOL &,BOOL &,0>();
  }

  if (*a4)
  {
    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::Encdec>();
  }

  v7 = kaldi::quasar::Encdec::ModelFileMap(0);
  v20[0].__locale_ = a1;
  v8 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v7, a1);
  *a5 = 0;
  a5[1] = 0;
  v9 = *(v8 + 64);
  if (!v9)
  {
LABEL_19:
    operator new();
  }

  v10 = std::__shared_weak_count::lock(v9);
  a5[1] = v10;
  if (v10)
  {
    v11 = *(v8 + 56);
    *a5 = v11;
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  if (!*a5)
  {
LABEL_17:
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    goto LABEL_19;
  }

LABEL_8:
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v20, 1);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "ModelSharing: cache id ", 23);
    v13 = MEMORY[0x1B8C84BB0](v12, v7);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", getting existing model for ", 29);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 23);
    }

    else
    {
      v17 = *(a1 + 8);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", id: ", 6);
    MEMORY[0x1B8C84BB0](v19, *a5);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v20);
  }
}

void sub_1B51550EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2)
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

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, a2, v3);
}

void quasar::PDecForceAlignBlock::processBody(quasar::PDecForceAlignBlock *this)
{
  v105 = *MEMORY[0x1E69E9840];
  Value = quasar::ProcessingInput::getValue((this + 2304));
  if (*Value == Value[1])
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    *v88 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v88, "PDecForceAlignBlock 'source' input must not be empty");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v88);
  }

  __p[0] = 0;
  __p[1] = 0;
  v87 = 0;
  memset(v85, 0, sizeof(v85));
  v3 = quasar::ProcessingInput::getValue((this + 2304));
  v4 = *(*v3 + 200);
  v5 = *(*v3 + 208);
  while (v4 != v5)
  {
    std::vector<std::string>::push_back[abi:ne200100](v85, v4);
    if (v4[16] == -1 && *quasar::OptionValue<BOOL>::value(this + 233) == 1)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      *v88 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Option 'use-sentencepiece-ids' require vocabulary IDs set in 'input phrase'.", 76);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v88);
    }

    v6 = v4 + 16;
    std::vector<int>::push_back[abi:ne200100](__p, v6);
    v4 = v6 + 18;
  }

  memset(&v84, 0, sizeof(v84));
  if (*quasar::OptionValue<BOOL>::value(this + 233) != 1)
  {
    v67[0].__r_.__value_.__r.__words[0] = " ";
    v67[0].__r_.__value_.__l.__size_ = 1;
    quasar::join<std::vector<std::string>>(v85, v67);
    v11 = quasar::OptionValue<std::string>::value(this + 135);
    v12 = quasar::OptionValue<std::string>::value(this + 155);
    kaldi::quasar::MultiLangDecorator::Apply(this + 2440, v88, v11, v12, v67);
    std::string::basic_string[abi:ne200100]<0>(v81, " ");
    quasar::split(v67, v81, 0, &v82);
  }

  v7 = *(this + 608);
  if (v7 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v67[0].__r_.__value_.__r.__words[0] = v88;
  v8 = (off_1F2D000A0[v7])(v67, this + 2416);
  v9 = quasar::OptionValue<std::string>::value(this + 135);
  v10 = quasar::OptionValue<std::string>::value(this + 155);
  kaldi::quasar::MultiLangDecorator::Apply(this + 2440, __p, v9, v10, v8, v88);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = *v88;
  v87 = v89;
  v82 = 0uLL;
  v83 = 0;
  v13 = quasar::OptionValue<std::string>::value(this + 175);
  v88[0] = v13;
  v14 = *(this + 608);
  if (v14 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v64 = v13;
  v67[0].__r_.__value_.__r.__words[0] = v88;
  (off_1F2D000B0[v14])(v67, this + 2416);
  for (i = 0; ; ++i)
  {
    v16 = *quasar::OptionValue<int>::value(this + 61);
    v17 = quasar::ProcessingInput::getValue((this + 2360));
    v18 = 0xF83E0F83E0F83E1 * ((v17[1] - *v17) >> 3);
    if (v18 >= v16)
    {
      v18 = v16;
    }

    if (v18 <= i)
    {
      break;
    }

    v19 = (*quasar::ProcessingInput::getValue((this + 2360)) + 264 * i);
    memset(v81, 0, sizeof(v81));
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v21 = *(v19 + 25);
    v20 = *(v19 + 26);
    while (v21 != v20)
    {
      std::vector<std::string>::push_back[abi:ne200100](v81, v21);
      v22 = v21 + 4;
      std::vector<int>::push_back[abi:ne200100](&v78, v22);
      if (*v22 == -1 && *quasar::OptionValue<BOOL>::value(this + 233) == 1)
      {
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        *v88 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Option 'use-sentencepiece-ids' require vocabulary IDs set in 'input phrase'.", 76);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v88);
      }

      v21 = (v22 + 18);
    }

    v23 = *(&v82 + 1);
    if (*(&v82 + 1) >= v83)
    {
      v24 = std::vector<quasar::TranslationPhraseInternal>::__emplace_back_slow_path<quasar::TranslationPhraseInternal const&>(&v82, v19);
    }

    else
    {
      quasar::TranslationPhraseInternal::TranslationPhraseInternal(*(&v82 + 1), v19);
      v24 = v23 + 264;
    }

    *(&v82 + 1) = v24;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    memset(v74, 0, sizeof(v74));
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v70 = 1;
    if (*(this + 608) == 1)
    {
      v25 = quasar::OptionValue<BOOL>::value(this + 233);
      v26 = *(this + 302);
      if (*v25 == 1)
      {
        v27 = quasar::OptionValue<std::string>::value(this + 79);
        v28 = *quasar::OptionValue<int>::value(this + 99);
        v29 = *quasar::OptionValue<int>::value(this + 117);
        v88[1] = 0;
        *&v89 = 0;
        v88[0] = &v88[1];
        kaldi::quasar::Encdec::ConstrainSoftmax(v26, v27, v28, v29, __p, &v78, v88);
        std::__tree<int>::destroy(v88, v88[1]);
      }

      else
      {
        v32 = quasar::OptionValue<std::string>::value(this + 79);
        v33 = *quasar::OptionValue<int>::value(this + 99);
        v34 = quasar::OptionValue<int>::value(this + 117);
        kaldi::quasar::Encdec::ConstrainSoftmax(v26, v32, v33, *v34, &v84, v81);
      }

      v70 = 0;
    }

    else
    {
      v30 = quasar::OptionValue<std::string>::value(this + 79);
      v31 = *(v30 + 23);
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 && quasar::gLogLevel >= 2)
      {
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        *v88 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Ignoring shortlisting configuration for kaldi models, running with full readout layer", 85);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(v88);
      }
    }

    v35 = *quasar::OptionValue<BOOL>::value(this + 269);
    v36 = *quasar::OptionValue<BOOL>::value(this + 251);
    v37 = quasar::OptionValue<std::string>::value(this + 195);
    v38 = quasar::OptionValue<std::string>::value(this + 155);
    v39 = quasar::OptionValue<std::string>::value(this + 79);
    v40 = *quasar::OptionValue<BOOL>::value(this + 233);
    v88[0] = &v84;
    v88[1] = v81;
    *&v89 = __p;
    *(&v89 + 1) = &v78;
    *&v90 = &v75;
    *(&v90 + 1) = v74;
    *&v91 = &v71;
    BYTE8(v91) = v36;
    BYTE9(v91) = v35;
    *&v92 = v37;
    *(&v92 + 1) = v38;
    *&v93 = &v70;
    BYTE8(v93) = v40;
    *&v94 = v64;
    *(&v94 + 1) = v39;
    v41 = *(this + 608);
    if (v41 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v67[0].__r_.__value_.__r.__words[0] = v88;
    (off_1F2D000C0[v41])(v67, this + 2416);
    v42 = *(&v82 + 1);
    v43 = v71;
    v44 = v72;
    v45 = (v72 - v71) >> 2;
    if (v36 - 0xF0F0F0F0F0F0F0FLL * ((*(*(&v82 + 1) - 56) - *(*(&v82 + 1) - 64)) >> 3) != v45 && quasar::gLogLevel >= 1)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      *v88 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Inconsistent alignment dimension ", 33);
      v47 = MEMORY[0x1B8C84C30](v46, (v72 - v71) >> 2);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " expecting ", 11);
      MEMORY[0x1B8C84C30](v48, v36 - 0xF0F0F0F0F0F0F0FLL * ((*(*(&v82 + 1) - 56) - *(*(&v82 + 1) - 64)) >> 3));
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v88);
      v43 = v71;
      v44 = v72;
      v42 = *(&v82 + 1);
      v45 = (v72 - v71) >> 2;
    }

    if (v44 == v43)
    {
      v51 = 0.0;
    }

    else
    {
      v49 = 0;
      v50 = v45 - 1;
      if (v45 <= 1)
      {
        v45 = 1;
      }

      v51 = 0.0;
      do
      {
        v52 = *v43;
        if (!v36 || v50)
        {
          v53 = *(v42 - 64) + v49;
          *(v53 + 60) = v52;
          *(v53 + 96) = *v43;
        }

        v51 = v51 + v52;
        --v50;
        v49 += 136;
        ++v43;
        --v45;
      }

      while (v45);
    }

    *(v42 - 264) = v51;
    *(v42 - 40) = v51;
    if ((v35 & 1) == 0)
    {
      v54 = *(this + 608);
      if (v54 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v67[0].__r_.__value_.__r.__words[0] = v88;
      if ((off_1F2D000D0[v54])(v67, this + 2416))
      {
        quasar::makeNbestElement(&v75, v74, v88);
        memset(v67, 0, 24);
        std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__init_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::NbestElement const*,kaldi::quasar::TranslationUtil::NbestElement const*>(v67, v88, &v105, 1uLL);
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v88);
        kaldi::quasar::TranslationUtil::ComputeBackwardAlignments(v67);
        kaldi::quasar::TranslationUtil::MergeAlignments(v67);
        v55 = *(&v82 + 1);
        v56 = *(*(&v82 + 1) - 64);
        v57 = *(*(&v82 + 1) - 56);
        if (0xF0F0F0F0F0F0F0F1 * ((v57 - v56) >> 3) != 0xEEEEEEEEEEEEEEEFLL * ((*(v67[0].__r_.__value_.__r.__words[0] + 8) - *v67[0].__r_.__value_.__l.__data_) >> 4) && quasar::gLogLevel >= 1)
        {
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          *v88 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v88);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Inconsistent alignment dimension!", 33);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(v88);
          v55 = *(&v82 + 1);
          v56 = *(*(&v82 + 1) - 64);
          v57 = *(*(&v82 + 1) - 56);
        }

        if (v57 != v56)
        {
          v59 = 0;
          v60 = 0;
          v61 = 32;
          do
          {
            v62 = *v67[0].__r_.__value_.__l.__data_ + v59;
            if (v62 + 88 != v56 + v61)
            {
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v56 + v61), *(v62 + 88), *(v62 + 96), (*(v62 + 96) - *(v62 + 88)) >> 2);
              v55 = *(&v82 + 1);
            }

            ++v60;
            v56 = *(v55 - 64);
            v61 += 136;
            v59 += 240;
          }

          while (0xF0F0F0F0F0F0F0F1 * ((*(v55 - 56) - v56) >> 3) > v60);
        }

        v88[0] = v67;
        std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](v88);
      }
    }

    quasar::PTree::PTree(v88);
    std::string::basic_string[abi:ne200100]<0>(v68, quasar::FORCEALIGN_SOURCE_META);
    v63 = quasar::ProcessingInput::getValue((this + 2304));
    quasar::TranslationPhraseInternal::convertTokensToString(v65, *v63);
    quasar::PTree::PTree(v67, v65);
    quasar::PTree::putChild(v88, v68, v67, 1);
    quasar::PTree::~PTree(v67);
    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v68, quasar::FORCEALIGN_TARGET_META);
    quasar::TranslationPhraseInternal::convertTokensToString(v65, v19);
    quasar::PTree::PTree(v67, v65);
    quasar::PTree::putChild(v88, v68, v67, 1);
    quasar::PTree::~PTree(v67);
    if (v66 < 0)
    {
      operator delete(v65[0]);
    }

    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    quasar::MetaInfo::update((*(&v82 + 1) - 8), v88);
    quasar::PTree::~PTree(v88);
    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    v88[0] = v74;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v88);
    if (v75)
    {
      v76 = v75;
      operator delete(v75);
    }

    if (v78)
    {
      v79 = v78;
      operator delete(v78);
    }

    v88[0] = v81;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v88);
  }

  quasar::ProcessingBlock::send(this + *(*this - 24), &v82, 0);
  v88[0] = &v82;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](v88);
  v88[0] = &v84;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v88);
  v88[0] = v85;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v88);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}