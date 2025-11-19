@interface EARKeywordFinder
+ (void)initialize;
- (EARKeywordFinder)initWithConfiguration:(id)a3;
- (id)correctedResultWithKeyword:(id)a3 tokenizedKeyword:(id)a4 preItnSausage:(id)a5 preItnOneBest:(id)a6 preItnOneBestIndices:(id)a7 nbestSize:(int64_t)a8;
@end

@implementation EARKeywordFinder

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (EARKeywordFinder)initWithConfiguration:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EARKeywordFinder;
  if ([(EARKeywordFinder *)&v7 init])
  {
    [v4 fileSystemRepresentation];
    std::make_unique[abi:ne200100]<quasar::KeywordFinder,char const*,0>();
  }

  v5 = 0;

  return v5;
}

- (id)correctedResultWithKeyword:(id)a3 tokenizedKeyword:(id)a4 preItnSausage:(id)a5 preItnOneBest:(id)a6 preItnOneBestIndices:(id)a7 nbestSize:(int64_t)a8
{
  v8 = a8;
  v92 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v56 = a5;
  v57 = a6;
  v55 = a7;
  ptr = self->_kwf.__ptr_;
  v52 = v14;
  if (v14)
  {
    [v14 ear_toString];
  }

  else
  {
    v67[0] = 0;
    v67[1] = 0;
    v68 = 0;
  }

  v53 = ptr;
  v54 = v8;
  v17 = v15;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v77 objects:&v81 count:16];
  if (v18)
  {
    v19 = *v78;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v78 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v77 + 1) + 8 * i);
        v22 = v21;
        if (v21)
        {
          [v21 _quasarProns];
        }

        else
        {
          v76 = 0;
          v75 = 0u;
          *__p = 0u;
          memset(v74, 0, sizeof(v74));
        }

        v23 = v65;
        if (v65 >= v66)
        {
          v25 = std::vector<quasar::G2P::TokenProns>::__emplace_back_slow_path<quasar::G2P::TokenProns>(&v64, __p);
        }

        else
        {
          v24 = *__p;
          *(v65 + 16) = *&v74[0];
          *(v23 + 24) = 0;
          *v23 = v24;
          __p[1] = 0;
          *&v74[0] = 0;
          __p[0] = 0;
          *(v23 + 32) = 0;
          *(v23 + 40) = 0;
          *(v23 + 24) = *(v74 + 8);
          *(&v74[0] + 1) = 0;
          *&v74[1] = 0;
          *(v23 + 40) = *(&v74[1] + 1);
          *(v23 + 48) = 0;
          *(&v74[1] + 1) = 0;
          *(v23 + 56) = 0;
          *(v23 + 64) = 0;
          *(v23 + 48) = v75;
          *(v23 + 64) = v76;
          v75 = 0uLL;
          v76 = 0;
          v25 = v23 + 72;
        }

        v65 = v25;
        v63.__r_.__value_.__r.__words[0] = &v75;
        std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v63);
        v63.__r_.__value_.__r.__words[0] = v74 + 8;
        std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v63);
        if (SBYTE7(v74[0]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v77 objects:&v81 count:16];
    }

    while (v18);
  }

  EARHelpers::ArrayToVector2<std::vector<quasar::Token>,std::vector<quasar::Token> (*)(NSArray<_EARSpeechRecognitionToken *> *)>(v56, EARHelpers::QuasarResultFromEARSpeechRecognitionTokens, &v77);
  EARHelpers::QuasarResultFromEARSpeechRecognitionTokens(v57, &v63);
  v26 = v55;
  v61 = 0;
  v62 = 0;
  __src = 0;
  *__p = 0u;
  memset(v74, 0, sizeof(v74));
  v75 = 0u;
  v58 = v26;
  v27 = [v58 countByEnumeratingWithState:__p objects:&v81 count:16];
  if (v27)
  {
    v28 = **&v74[0];
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (**&v74[0] != v28)
        {
          objc_enumerationMutation(v58);
        }

        v30 = *(__p[1] + j);
        v31 = [v30 intValue];
        v32 = v61;
        if (v61 >= v62)
        {
          v34 = __src;
          v35 = v61 - __src;
          v36 = (v61 - __src) >> 2;
          v37 = v36 + 1;
          if ((v36 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v38 = v62 - __src;
          if ((v62 - __src) >> 1 > v37)
          {
            v37 = v38 >> 1;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v39 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v37;
          }

          if (v39)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v39);
          }

          *(4 * v36) = v31;
          v33 = 4 * v36 + 4;
          memcpy(0, v34, v35);
          v40 = __src;
          __src = 0;
          v61 = v33;
          v62 = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v61 = v31;
          v33 = (v32 + 4);
        }

        v61 = v33;
      }

      v27 = [v58 countByEnumeratingWithState:__p objects:&v81 count:16];
    }

    while (v27);
  }

  quasar::KeywordFinder::correctResultWithKeyword(v53, v67, &v64, &v77, &v63, v54, &v69);
  v81.__r_.__value_.__r.__words[0] = &v63;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v81);
  v81.__r_.__value_.__r.__words[0] = &v77;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v81);
  v81.__r_.__value_.__r.__words[0] = &v64;
  std::vector<quasar::G2P::TokenProns>::__destroy_vector::operator()[abi:ne200100](&v81);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67[0]);
  }

  v41 = [MEMORY[0x1E695DF70] array];
  v42 = v69;
  if (v69 != *(&v69 + 1))
  {
    v43 = *(&v69 + 1);
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v74[0] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(__p, *v42, v42[1], 0x6DB6DB6DB6DB6DB7 * ((v42[1] - *v42) >> 5));
      v44 = [MEMORY[0x1E695DF70] array];
      v46 = __p[0];
      v45 = __p[1];
      while (v46 != v45)
      {
        quasar::Token::Token(&v81, v46);
        v47 = [[_EARSpeechRecognitionToken alloc] _initWithQuasarToken:&v81];
        [v44 addObject:v47];

        if (v91 < 0)
        {
          operator delete(v90);
        }

        if (v89 < 0)
        {
          operator delete(v88);
        }

        *&v77 = &v87;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v77);
        if (v86 < 0)
        {
          operator delete(v85);
        }

        *&v77 = &v84;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v77);
        if (v83 < 0)
        {
          operator delete(v82);
        }

        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        v46 = (v46 + 224);
      }

      v48 = [v44 copy];

      [v41 addObject:v48];
      v81.__r_.__value_.__r.__words[0] = __p;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v81);
      v42 += 3;
    }

    while (v42 != v43);
  }

  v49 = [v41 copy];

  v50 = [[EARKeywordFinderResult alloc] _initWithCorrectedUtterances:v49];
  v81.__r_.__value_.__r.__words[0] = &v72;
  std::vector<quasar::KeywordFinder::KeywordLocationLoggingStats>::__destroy_vector::operator()[abi:ne200100](&v81);
  v81.__r_.__value_.__r.__words[0] = &v71;
  std::vector<quasar::KeywordFinder::KeywordLoggingStats>::__destroy_vector::operator()[abi:ne200100](&v81);
  v81.__r_.__value_.__r.__words[0] = &v70;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v81);
  v81.__r_.__value_.__r.__words[0] = &v69;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v81);

  return v50;
}

@end