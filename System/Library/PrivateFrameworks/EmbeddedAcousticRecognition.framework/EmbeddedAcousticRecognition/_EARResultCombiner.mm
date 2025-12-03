@interface _EARResultCombiner
+ (void)initialize;
- (_EARResultCombiner)initWithConfiguration:(id)configuration;
- (id)combinedResultWithSystemResults:(id)results;
@end

@implementation _EARResultCombiner

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARResultCombiner)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7.receiver = self;
  v7.super_class = _EARResultCombiner;
  if ([(_EARResultCombiner *)&v7 init])
  {
    [configurationCopy fileSystemRepresentation];
    std::make_unique[abi:ne200100]<quasar::RankingResultCombiner,char const*,0>();
  }

  v5 = 0;

  return v5;
}

- (id)combinedResultWithSystemResults:(id)results
{
  v183[5] = *MEMORY[0x1E69E9840];
  memset(v134, 0, sizeof(v134));
  memset(v133, 0, sizeof(v133));
  memset(v132, 0, sizeof(v132));
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  obj = results;
  v99 = [obj countByEnumeratingWithState:&v128 objects:v154 count:16];
  if (v99)
  {
    v102 = *v129;
    do
    {
      for (i = 0; i != v99; ++i)
      {
        if (*v129 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v100 = *(*(&v128 + 1) + 8 * i);
        sausage = [v100 sausage];
        v126 = 0;
        v127 = 0;
        v125 = 0;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0u;
        v108 = sausage;
        v103 = [v108 countByEnumeratingWithState:&v138 objects:&v155 count:16];
        if (v103)
        {
          v106 = *v139;
          do
          {
            for (j = 0; j != v103; ++j)
            {
              if (*v139 != v106)
              {
                objc_enumerationMutation(v108);
              }

              v4 = *(*(&v138 + 1) + 8 * j);
              v136 = 0;
              v137 = 0;
              v135 = 0;
              v145 = 0u;
              v146 = 0u;
              v147 = 0u;
              v148 = 0u;
              v113 = v4;
              v120 = [v113 countByEnumeratingWithState:&v145 objects:&v159 count:16];
              if (v120)
              {
                v116 = *v146;
                do
                {
                  for (k = 0; k != v120; k = k + 1)
                  {
                    if (*v146 != v116)
                    {
                      objc_enumerationMutation(v113);
                    }

                    v6 = *(*(&v145 + 1) + 8 * k);
                    v143 = 0;
                    v144 = 0;
                    v142 = 0;
                    __src = 0u;
                    v150 = 0u;
                    v151 = 0u;
                    v152 = 0u;
                    v7 = v6;
                    v8 = [v7 countByEnumeratingWithState:&__src objects:v163 count:16];
                    if (v8)
                    {
                      v9 = *v150;
                      do
                      {
                        for (m = 0; m != v8; ++m)
                        {
                          if (*v150 != v9)
                          {
                            objc_enumerationMutation(v7);
                          }

                          v11 = *(*(&__src + 1) + 8 * m);
                          v12 = v11;
                          if (v11)
                          {
                            [v11 quasarToken];
                          }

                          else
                          {
                            memset(v183, 0, 32);
                            v181 = 0u;
                            __p = 0u;
                            v180 = 0u;
                            v178 = 0u;
                            memset(v179, 0, sizeof(v179));
                            memset(v177, 0, sizeof(v177));
                            v176 = 0u;
                            memset(v175, 0, sizeof(v175));
                          }

                          v13 = v143;
                          if (v143 >= v144)
                          {
                            v143 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token>(&v142, v175);
                            if (SHIBYTE(v183[0]) < 0)
                            {
                              operator delete(__p);
                            }
                          }

                          else
                          {
                            v14 = *&v175[0].__r_.__value_.__l.__data_;
                            *(v143 + 16) = *(&v175[0].__r_.__value_.__l + 2);
                            *v13 = v14;
                            memset(v175, 0, 24);
                            v15 = *(&v175[1].__r_.__value_.__r.__words[1] + 7);
                            *(v13 + 24) = *&v175[1].__r_.__value_.__l.__data_;
                            *(v13 + 39) = v15;
                            v16 = v177[0];
                            *(v13 + 48) = v176;
                            *(v13 + 64) = v16;
                            *(v13 + 72) = 0;
                            v177[0] = 0;
                            v176 = 0uLL;
                            *(v13 + 80) = 0;
                            *(v13 + 88) = 0;
                            *(v13 + 72) = *&v177[1];
                            *(v13 + 88) = v177[3];
                            memset(&v177[1], 0, 24);
                            v17 = v178;
                            *(v13 + 112) = v179[0];
                            *(v13 + 120) = 0;
                            *(v13 + 96) = v17;
                            v179[0] = 0;
                            v178 = 0uLL;
                            *(v13 + 128) = 0;
                            *(v13 + 136) = 0;
                            *(v13 + 120) = *&v179[1];
                            *(v13 + 136) = v179[3];
                            memset(&v179[1], 0, 24);
                            v18 = v180;
                            *(v13 + 160) = v181;
                            *(v13 + 144) = v18;
                            *&v181 = 0;
                            v180 = 0uLL;
                            LODWORD(v16) = DWORD2(v181);
                            *(v13 + 172) = WORD6(v181);
                            *(v13 + 168) = v16;
                            v19 = __p;
                            *(v13 + 192) = v183[0];
                            *(v13 + 176) = v19;
                            v183[0] = 0;
                            __p = 0uLL;
                            v20 = *&v183[1];
                            *(v13 + 216) = v183[3];
                            *(v13 + 200) = v20;
                            v143 = v13 + 224;
                          }

                          if (SBYTE7(v181) < 0)
                          {
                            operator delete(v180);
                          }

                          v153 = &v179[1];
                          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v153);
                          if (SHIBYTE(v179[0]) < 0)
                          {
                            operator delete(v178);
                          }

                          v153 = &v177[1];
                          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v153);
                          if (SHIBYTE(v177[0]) < 0)
                          {
                            operator delete(v176);
                          }

                          if (SHIBYTE(v175[0].__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v175[0].__r_.__value_.__l.__data_);
                          }
                        }

                        v8 = [v7 countByEnumeratingWithState:&__src objects:v163 count:16];
                      }

                      while (v8);
                    }

                    std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v135, &v142);
                    v175[0].__r_.__value_.__r.__words[0] = &v142;
                    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v175);
                  }

                  v120 = [v113 countByEnumeratingWithState:&v145 objects:&v159 count:16];
                }

                while (v120);
              }

              std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](&v125, &v135);
              v175[0].__r_.__value_.__r.__words[0] = &v135;
              std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v175);
            }

            v103 = [v108 countByEnumeratingWithState:&v138 objects:&v155 count:16];
          }

          while (v103);
        }

        std::vector<std::vector<std::vector<std::vector<quasar::Token>>>>::push_back[abi:ne200100](v134, &v125);
        v175[0].__r_.__value_.__r.__words[0] = &v125;
        std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](v175);

        nBestIndexes = [v100 nBestIndexes];
        *&v146 = 0;
        v145 = 0uLL;
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v107 = nBestIndexes;
        v22 = [v107 countByEnumeratingWithState:&v155 objects:v163 count:16];
        if (v22)
        {
          v109 = *v156;
          do
          {
            v23 = 0;
            v111 = v22;
            do
            {
              if (*v156 != v109)
              {
                objc_enumerationMutation(v107);
              }

              v24 = *(*(&v155 + 1) + 8 * v23);
              *&v150 = 0;
              __src = 0uLL;
              v159 = 0u;
              v160 = 0u;
              v161 = 0u;
              v162 = 0u;
              v121 = v24;
              v25 = [v121 countByEnumeratingWithState:&v159 objects:v175 count:16];
              v114 = v23;
              if (v25)
              {
                v26 = *v160;
                v117 = *v160;
                do
                {
                  for (n = 0; n != v25; ++n)
                  {
                    if (*v160 != v26)
                    {
                      objc_enumerationMutation(v121);
                    }

                    v28 = *(*(&v159 + 1) + 8 * n);
                    unsignedLongValue = [v28 unsignedLongValue];
                    v30 = *(&__src + 1);
                    if (*(&__src + 1) >= v150)
                    {
                      v32 = __src;
                      v33 = *(&__src + 1) - __src;
                      v34 = (*(&__src + 1) - __src) >> 3;
                      v35 = v34 + 1;
                      if ((v34 + 1) >> 61)
                      {
                        std::vector<int>::__throw_length_error[abi:ne200100]();
                      }

                      v36 = v150 - __src;
                      if ((v150 - __src) >> 2 > v35)
                      {
                        v35 = v36 >> 2;
                      }

                      v37 = v36 >= 0x7FFFFFFFFFFFFFF8;
                      v38 = 0x1FFFFFFFFFFFFFFFLL;
                      if (!v37)
                      {
                        v38 = v35;
                      }

                      if (v38)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v38);
                      }

                      *(8 * v34) = unsignedLongValue;
                      v31 = 8 * v34 + 8;
                      memcpy(0, v32, v33);
                      v39 = __src;
                      *&__src = 0;
                      *(&__src + 1) = v31;
                      *&v150 = 0;
                      if (v39)
                      {
                        operator delete(v39);
                      }

                      v26 = v117;
                    }

                    else
                    {
                      **(&__src + 1) = unsignedLongValue;
                      v31 = v30 + 8;
                    }

                    *(&__src + 1) = v31;
                  }

                  v25 = [v121 countByEnumeratingWithState:&v159 objects:v175 count:16];
                }

                while (v25);
              }

              std::vector<std::vector<unsigned int>>::push_back[abi:ne200100](&v145, &__src);
              if (__src)
              {
                *(&__src + 1) = __src;
                operator delete(__src);
              }

              v23 = v114 + 1;
            }

            while (v114 + 1 != v111);
            v22 = [v107 countByEnumeratingWithState:&v155 objects:v163 count:16];
          }

          while (v22);
        }

        std::vector<std::vector<std::vector<unsigned long>>>::push_back[abi:ne200100](v133, &v145);
        v175[0].__r_.__value_.__r.__words[0] = &v145;
        std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v175);

        confidences = [v100 confidences];
        *&v160 = 0;
        v159 = 0uLL;
        memset(v163, 0, sizeof(v163));
        v164 = 0u;
        v165 = 0u;
        v122 = confidences;
        v41 = [v122 countByEnumeratingWithState:v163 objects:v175 count:16];
        if (v41)
        {
          v42 = **&v163[16];
          v118 = **&v163[16];
          do
          {
            for (ii = 0; ii != v41; ++ii)
            {
              if (**&v163[16] != v42)
              {
                objc_enumerationMutation(v122);
              }

              v44 = *(*&v163[8] + 8 * ii);
              [v44 floatValue];
              v46 = *(&v159 + 1);
              if (*(&v159 + 1) >= v160)
              {
                v48 = v159;
                v49 = *(&v159 + 1) - v159;
                v50 = (*(&v159 + 1) - v159) >> 2;
                v51 = v50 + 1;
                if ((v50 + 1) >> 62)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                v52 = v160 - v159;
                if ((v160 - v159) >> 1 > v51)
                {
                  v51 = v52 >> 1;
                }

                v37 = v52 >= 0x7FFFFFFFFFFFFFFCLL;
                v53 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v37)
                {
                  v53 = v51;
                }

                if (v53)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v159, v53);
                }

                *(4 * v50) = v45;
                v47 = 4 * v50 + 4;
                memcpy(0, v48, v49);
                v54 = v159;
                *&v159 = 0;
                *(&v159 + 1) = v47;
                *&v160 = 0;
                if (v54)
                {
                  operator delete(v54);
                }

                v42 = v118;
              }

              else
              {
                **(&v159 + 1) = v45;
                v47 = v46 + 4;
              }

              *(&v159 + 1) = v47;
            }

            v41 = [v122 countByEnumeratingWithState:v163 objects:v175 count:16];
          }

          while (v41);
        }

        std::vector<std::vector<float>>::push_back[abi:ne200100](v132, &v159);
        if (v159)
        {
          *(&v159 + 1) = v159;
          operator delete(v159);
        }
      }

      v99 = [obj countByEnumeratingWithState:&v128 objects:v154 count:16];
    }

    while (v99);
  }

  __src = 0uLL;
  *&v150 = 0;
  v145 = 0uLL;
  *&v146 = 0;
  v138 = 0uLL;
  *&v139 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  (**self->_combiner.__ptr_)(self->_combiner.__ptr_, v134);
  v112 = objc_alloc_init(_EARCombinedResult);
  array = [MEMORY[0x1E695DF70] array];
  v115 = *(&__src + 1);
  v55 = __src;
  if (__src != *(&__src + 1))
  {
    do
    {
      v155 = 0uLL;
      *&v156 = 0;
      v123 = v55;
      std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v155, *v55, v55[1], 0xAAAAAAAAAAAAAAABLL * ((v55[1] - *v55) >> 3));
      array2 = [MEMORY[0x1E695DF70] array];
      v56 = *(&v155 + 1);
      for (jj = v155; jj != v56; jj += 3)
      {
        v159 = 0uLL;
        *&v160 = 0;
        std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v159, *jj, jj[1], 0x6DB6DB6DB6DB6DB7 * ((jj[1] - *jj) >> 5));
        array3 = [MEMORY[0x1E695DF70] array];
        v60 = *(&v159 + 1);
        for (kk = v159; kk != v60; kk = (kk + 224))
        {
          quasar::Token::Token(v175, kk);
          quasar::Token::Token(v163, v175);
          v61 = [[_EARSpeechRecognitionToken alloc] _initWithQuasarToken:v163];
          [array3 addObject:v61];

          if (v174 < 0)
          {
            operator delete(v173);
          }

          if (v172 < 0)
          {
            operator delete(v171);
          }

          v153 = &v170;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v153);
          if (v169 < 0)
          {
            operator delete(v168);
          }

          v153 = &v167;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v153);
          if (v166 < 0)
          {
            operator delete(v165);
          }

          if ((v163[23] & 0x80000000) != 0)
          {
            operator delete(*v163);
          }

          if (SHIBYTE(v183[0]) < 0)
          {
            operator delete(__p);
          }

          if (SBYTE7(v181) < 0)
          {
            operator delete(v180);
          }

          v153 = &v179[1];
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v153);
          if (SHIBYTE(v179[0]) < 0)
          {
            operator delete(v178);
          }

          v153 = &v177[1];
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v153);
          if (SHIBYTE(v177[0]) < 0)
          {
            operator delete(v176);
          }

          if (SHIBYTE(v175[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v175[0].__r_.__value_.__l.__data_);
          }
        }

        v62 = [array3 copy];

        [array2 addObject:v62];
        v175[0].__r_.__value_.__r.__words[0] = &v159;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v175);
      }

      v63 = [array2 copy];

      [array addObject:v63];
      v175[0].__r_.__value_.__r.__words[0] = &v155;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v175);
      v55 = v123 + 3;
    }

    while (v123 + 3 != v115);
  }

  v64 = [array copy];

  [(_EARSystemResult *)v112 setSausage:v64];
  array4 = [MEMORY[0x1E695DF70] array];
  v67 = *(&v145 + 1);
  for (mm = v145; mm != v67; mm += 3)
  {
    memset(v175, 0, 24);
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v175, *mm, mm[1], (mm[1] - *mm) >> 3);
    array5 = [MEMORY[0x1E695DF70] array];
    size = v175[0].__r_.__value_.__l.__size_;
    for (nn = v175[0].__r_.__value_.__r.__words[0]; nn != size; ++nn)
    {
      v71 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*nn];
      [array5 addObject:v71];
    }

    v72 = [array5 copy];

    [array4 addObject:v72];
    if (v175[0].__r_.__value_.__r.__words[0])
    {
      v175[0].__r_.__value_.__l.__size_ = v175[0].__r_.__value_.__r.__words[0];
      operator delete(v175[0].__r_.__value_.__l.__data_);
    }
  }

  v73 = [array4 copy];

  [(_EARSystemResult *)v112 setNBestIndexes:v73];
  array6 = [MEMORY[0x1E695DF70] array];
  v77 = *(&v138 + 1);
  for (i1 = v138; i1 != v77; ++i1)
  {
    LODWORD(v75) = *i1;
    v78 = [MEMORY[0x1E696AD98] numberWithFloat:v75];
    [array6 addObject:v78];
  }

  v79 = [array6 copy];

  [(_EARSystemResult *)v112 setConfidences:v79];
  array7 = [MEMORY[0x1E695DF70] array];
  v81 = v142;
  for (i2 = v143; v81 != i2; v81 = (v81 + 24))
  {
    if (*(v81 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v175, *v81, *(v81 + 1));
    }

    else
    {
      v83 = *v81;
      v175[0].__r_.__value_.__r.__words[2] = *(v81 + 2);
      *&v175[0].__r_.__value_.__l.__data_ = v83;
    }

    if ((v175[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v84 = v175;
    }

    else
    {
      v84 = v175[0].__r_.__value_.__r.__words[0];
    }

    v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v84];
    [array7 addObject:v85];

    if (SHIBYTE(v175[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175[0].__r_.__value_.__l.__data_);
    }
  }

  v86 = [array7 copy];

  [(_EARCombinedResult *)v112 setNBestStrings:v86];
  array8 = [MEMORY[0x1E695DF70] array];
  v88 = v135;
  v89 = v136;
  if (v135 != v136)
  {
    do
    {
      v90 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*v88];
      [array8 addObject:v90];

      ++v88;
    }

    while (v88 != v89);
  }

  v91 = [array8 copy];

  [(_EARCombinedResult *)v112 setNBestSourceIndexes:v91];
  array9 = [MEMORY[0x1E695DF70] array];
  v93 = v125;
  v94 = v126;
  if (v125 != v126)
  {
    do
    {
      v95 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*v93];
      [array9 addObject:v95];

      ++v93;
    }

    while (v93 != v94);
  }

  v96 = [array9 copy];

  [(_EARCombinedResult *)v112 setOriginalRanks:v96];
  v97 = v112;

  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }

  v175[0].__r_.__value_.__r.__words[0] = &v142;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v175);
  if (v138)
  {
    *(&v138 + 1) = v138;
    operator delete(v138);
  }

  v175[0].__r_.__value_.__r.__words[0] = &v145;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v175);
  v175[0].__r_.__value_.__r.__words[0] = &__src;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](v175);
  v175[0].__r_.__value_.__r.__words[0] = v132;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v175);
  v175[0].__r_.__value_.__r.__words[0] = v133;
  std::vector<std::vector<std::vector<unsigned long>>>::__destroy_vector::operator()[abi:ne200100](v175);
  v175[0].__r_.__value_.__r.__words[0] = v134;
  std::vector<std::vector<std::vector<std::vector<quasar::Token>>>>::__destroy_vector::operator()[abi:ne200100](v175);

  return v97;
}

@end