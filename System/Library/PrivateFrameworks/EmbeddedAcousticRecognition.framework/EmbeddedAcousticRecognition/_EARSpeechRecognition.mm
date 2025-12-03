@interface _EARSpeechRecognition
+ (id)reconstructNBestFromSausage:(id)sausage interpretationIndices:(id)indices;
+ (id)tokens:(id)tokens alignedToTokens:(id)toTokens;
- (BOOL)isEqual:(id)equal;
- (id)_initWithNBestList:(const void *)list useHatText:(BOOL)text endsOfSentencePunctuations:(id)punctuations formattingInfo:(const void *)info;
- (id)_initWithTokenPhraseChoiceList:(const void *)list earNbest:(id)nbest endsOfSentencePunctuations:(id)punctuations;
- (id)_initWithTokenPhraseChoiceList:(const void *)list nBestList:(const void *)bestList endsOfSentencePunctuations:(id)punctuations;
- (id)_initWithTokenSausage:(id)sausage interpretationIndices:(id)indices nBest:(id)best endsOfSentencePunctuations:(id)punctuations;
- (id)adjustSpaceForTokens:(id)tokens currTokenIndex:(unint64_t)index endsOfSentencePunctuations:(id)punctuations isPotentialCommandRecognition:(BOOL)recognition;
- (id)copyWithZone:(_NSZone *)zone;
- (id)granularizedRecognition;
- (id)oneBest;
- (id)oneBestAlignedToTokens:(id)tokens;
- (id)splitRecognitionWithPotentialCommandRecognition:(BOOL)recognition;
- (pair<std::vector<std::vector<unsigned)_tokenPhraseChoiceList;
@end

@implementation _EARSpeechRecognition

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSArray *)self->_tokenSausage isEqual:equalCopy[1]]&& [(NSArray *)self->_interpretationIndices isEqual:equalCopy[2]])
  {
    v5 = [(NSSet *)self->_endsOfSentencePunctuations isEqual:equalCopy[4]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithTokenSausage:(id)sausage interpretationIndices:(id)indices nBest:(id)best endsOfSentencePunctuations:(id)punctuations
{
  sausageCopy = sausage;
  indicesCopy = indices;
  bestCopy = best;
  punctuationsCopy = punctuations;
  v24.receiver = self;
  v24.super_class = _EARSpeechRecognition;
  v14 = [(_EARSpeechRecognition *)&v24 init];
  if (v14)
  {
    v15 = [sausageCopy copy];
    tokenSausage = v14->_tokenSausage;
    v14->_tokenSausage = v15;

    v17 = [indicesCopy copy];
    interpretationIndices = v14->_interpretationIndices;
    v14->_interpretationIndices = v17;

    v19 = [bestCopy copy];
    nBest = v14->_nBest;
    v14->_nBest = v19;

    v21 = [punctuationsCopy copy];
    endsOfSentencePunctuations = v14->_endsOfSentencePunctuations;
    v14->_endsOfSentencePunctuations = v21;
  }

  return v14;
}

- (id)_initWithNBestList:(const void *)list useHatText:(BOOL)text endsOfSentencePunctuations:(id)punctuations formattingInfo:(const void *)info
{
  textCopy = text;
  punctuationsCopy = punctuations;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v11 = std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v25, *list, *(list + 1), 0xAAAAAAAAAAAAAAABLL * ((*(list + 1) - *list) >> 3));
  if (textCopy)
  {
    v12 = *(info + 32);
    v13 = v25;
    v14 = v26;
    if (v12 == 1)
    {
      while (v13 != v14)
      {
        v15 = *v13;
        v16 = *(v13 + 8);
        while (v15 != v16)
        {
          quasar::hatTextEncode(v15);
          if (*(v15 + 23) < 0)
          {
            operator delete(*v15);
          }

          v17 = v21;
          v15[2] = v22;
          *v15 = v17;
          v15 += 28;
        }

        v13 += 24;
      }
    }

    else if (v25 != v26)
    {
      do
      {
        v21 = 0uLL;
        v22 = 0;
        v18 = quasar::QsrText::SingletonInstance(v11);
        quasar::QsrText::qsrToHatTokens(v18, v13, &v21, 1);
        std::vector<quasar::Token>::__vdeallocate(v13);
        *v13 = v21;
        *(v13 + 16) = v22;
        v21 = 0uLL;
        v22 = 0;
        v24[0] = &v21;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v24);
        v13 += 24;
      }

      while (v13 != v14);
    }
  }

  quasar::getTokenizedNBestListForEAR(&v25, 0, v24);
  quasar::getTokenizedTokenPhraseChoiceListForEAR(v24, 0, &v21);
  v19 = [(_EARSpeechRecognition *)self _initWithTokenPhraseChoiceList:&v21 nBestList:v24 endsOfSentencePunctuations:punctuationsCopy];
  v28 = &v23;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v28);
  v28 = &v21;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v28);
  *&v21 = v24;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v21);
  *&v21 = &v25;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v21);

  return v19;
}

- (id)_initWithTokenPhraseChoiceList:(const void *)list earNbest:(id)nbest endsOfSentencePunctuations:(id)punctuations
{
  nbestCopy = nbest;
  punctuationsCopy = punctuations;
  v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(list + 4) - *(list + 3)) >> 3)];
  v7 = *(list + 3);
  listCopy = list;
  v31 = *(list + 4);
  if (v7 != v31)
  {
    do
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v49, *v7, v7[1], 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 3));
      v33 = v7;
      v8 = objc_alloc(MEMORY[0x1E695DF70]);
      v9 = [v8 initWithCapacity:0xAAAAAAAAAAAAAAABLL * (v50 - v49)];
      v11 = v49;
      v10 = v50;
      v34 = v50;
      while (v11 != v10)
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v46, *v11, v11[1], 0x6DB6DB6DB6DB6DB7 * ((v11[1] - *v11) >> 5));
        v12 = objc_alloc(MEMORY[0x1E695DF70]);
        v13 = [v12 initWithCapacity:0x6DB6DB6DB6DB6DB7 * ((v47 - v46) >> 5)];
        v15 = v46;
        v14 = v47;
        while (v15 != v14)
        {
          quasar::Token::Token(&v35, v15);
          v16 = [[_EARSpeechRecognitionToken alloc] _initWithQuasarToken:&v35];
          [v13 addObject:v16];

          if (v45 < 0)
          {
            operator delete(__p);
          }

          if (v43 < 0)
          {
            operator delete(v42);
          }

          v52[0] = &v41;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v52);
          if (v40 < 0)
          {
            operator delete(v39);
          }

          v52[0] = &v38;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v52);
          if (v37 < 0)
          {
            operator delete(v36);
          }

          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          v15 = (v15 + 224);
        }

        [v9 addObject:v13];

        v35.__r_.__value_.__r.__words[0] = &v46;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v35);
        v11 += 3;
        v10 = v34;
      }

      [v32 addObject:v9];

      v35.__r_.__value_.__r.__words[0] = &v49;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v35);
      v7 = v33 + 3;
    }

    while (v33 + 3 != v31);
  }

  v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(list + 1) - *list) >> 3)];
  v18 = *list;
  v19 = listCopy[1];
  if (*listCopy != v19)
  {
    do
    {
      memset(&v35, 0, sizeof(v35));
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v35, *v18, v18[1], (v18[1] - *v18) >> 2);
      v20 = objc_alloc(MEMORY[0x1E695DF70]);
      v21 = [v20 initWithCapacity:(v35.__r_.__value_.__l.__size_ - v35.__r_.__value_.__r.__words[0]) >> 2];
      size = v35.__r_.__value_.__l.__size_;
      for (i = v35.__r_.__value_.__r.__words[0]; i != size; ++i)
      {
        v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*i];
        [v21 addObject:v24];
      }

      [v17 addObject:v21];

      if (v35.__r_.__value_.__r.__words[0])
      {
        v35.__r_.__value_.__l.__size_ = v35.__r_.__value_.__r.__words[0];
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      v18 += 3;
    }

    while (v18 != v19);
  }

  listCopy = [(_EARSpeechRecognition *)self _initWithTokenSausage:v32 interpretationIndices:v17 nBest:nbestCopy endsOfSentencePunctuations:punctuationsCopy, listCopy];

  return listCopy;
}

- (id)_initWithTokenPhraseChoiceList:(const void *)list nBestList:(const void *)bestList endsOfSentencePunctuations:(id)punctuations
{
  punctuationsCopy = punctuations;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(bestList + 1) - *bestList) >> 3)];
  v7 = *bestList;
  v8 = *(bestList + 1);
  if (*bestList != v8)
  {
    do
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0x6DB6DB6DB6DB6DB7 * ((v7[1] - *v7) >> 5)];
      v11 = *v7;
      v10 = v7[1];
      while (v11 != v10)
      {
        v12 = [[_EARSpeechRecognitionToken alloc] _initWithQuasarToken:v11];
        [v9 addObject:v12];

        v11 += 224;
      }

      [v6 addObject:v9];

      v7 += 3;
    }

    while (v7 != v8);
  }

  v13 = [(_EARSpeechRecognition *)self _initWithTokenPhraseChoiceList:list earNbest:v6 endsOfSentencePunctuations:punctuationsCopy];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_EARSpeechRecognition alloc];
  tokenSausage = [(_EARSpeechRecognition *)self tokenSausage];
  interpretationIndices = [(_EARSpeechRecognition *)self interpretationIndices];
  nBest = [(_EARSpeechRecognition *)self nBest];
  endsOfSentencePunctuations = [(_EARSpeechRecognition *)self endsOfSentencePunctuations];
  v9 = [(_EARSpeechRecognition *)v4 _initWithTokenSausage:tokenSausage interpretationIndices:interpretationIndices nBest:nBest endsOfSentencePunctuations:endsOfSentencePunctuations];

  return v9;
}

- (id)oneBest
{
  if ([(NSArray *)self->_nBest count])
  {
    v3 = [(NSArray *)self->_nBest objectAtIndex:0];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

+ (id)tokens:(id)tokens alignedToTokens:(id)toTokens
{
  toTokensCopy = toTokens;
  EARHelpers::QuasarResultFromEARSpeechRecognitionTokens(tokens, v11);
  EARHelpers::QuasarResultFromEARSpeechRecognitionTokens(toTokensCopy, v10);
  quasar::Align::Align(v9, v10, v11, 2);
  DestToks = quasar::Align::getDestToks(v9);
  v7 = EARHelpers::EARSpeechRecognitionTokensFromQuasarTokens(DestToks);
  quasar::Align::~Align(v9);
  v9[0] = v10;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v9);
  v9[0] = v11;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v9);

  return v7;
}

- (id)oneBestAlignedToTokens:(id)tokens
{
  tokensCopy = tokens;
  oneBest = [(_EARSpeechRecognition *)self oneBest];
  v6 = [_EARSpeechRecognition tokens:oneBest alignedToTokens:tokensCopy];

  return v6;
}

- (pair<std::vector<std::vector<unsigned)_tokenPhraseChoiceList
{
  v83 = *MEMORY[0x1E69E9840];
  *&retstr->var0.var2 = 0u;
  *&retstr->var1.var1 = 0u;
  selfCopy = self;
  *&retstr->var0.var0 = 0u;
  v3 = self->_interpretationIndices;
  *&v54 = 0;
  v53 = 0uLL;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v3;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v4)
  {
    v40 = *v63;
    do
    {
      v5 = 0;
      do
      {
        if (*v63 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v62 + 1) + 8 * v5);
        __src[1] = 0;
        *&v58 = 0;
        __src[0] = 0;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v66 objects:v70 count:{16, selfCopy}];
        v43 = v5;
        if (v8)
        {
          v9 = *v67;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v67 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v66 + 1) + 8 * i);
              unsignedIntValue = [v11 unsignedIntValue];
              v13 = __src[1];
              if (__src[1] >= v58)
              {
                v15 = __src[0];
                v16 = __src[1] - __src[0];
                v17 = (__src[1] - __src[0]) >> 2;
                v18 = v17 + 1;
                if ((v17 + 1) >> 62)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                v19 = v58 - __src[0];
                if ((v58 - __src[0]) >> 1 > v18)
                {
                  v18 = v19 >> 1;
                }

                if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v20 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v18;
                }

                if (v20)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(__src, v20);
                }

                *(4 * v17) = unsignedIntValue;
                v14 = (4 * v17 + 4);
                memcpy(0, v15, v16);
                v21 = __src[0];
                __src[0] = 0;
                __src[1] = v14;
                *&v58 = 0;
                if (v21)
                {
                  operator delete(v21);
                }
              }

              else
              {
                *__src[1] = unsignedIntValue;
                v14 = v13 + 4;
              }

              __src[1] = v14;
            }

            v8 = [v7 countByEnumeratingWithState:&v66 objects:v70 count:16];
          }

          while (v8);
        }

        std::vector<std::vector<unsigned int>>::push_back[abi:ne200100](&v53, __src);
        if (__src[0])
        {
          __src[1] = __src[0];
          operator delete(__src[0]);
        }

        v5 = v43 + 1;
      }

      while (v43 + 1 != v4);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v82 count:16];
    }

    while (v4);
  }

  std::vector<std::vector<int>>::__vdeallocate(retstr);
  *&retstr->var0.var0 = v53;
  retstr->var0.var2 = v54;
  *&v54 = 0;
  v53 = 0uLL;
  v70[0] = &v53;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v70);
  v22 = selfCopy->_tokenSausage;
  v46 = 0;
  v45 = 0uLL;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v41 = v22;
  v36 = [(NSArray *)v41 countByEnumeratingWithState:&v48 objects:&v62 count:16];
  if (v36)
  {
    obja = *v49;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v49 != obja)
        {
          objc_enumerationMutation(v41);
        }

        v23 = *(*(&v48 + 1) + 8 * j);
        memset(v47, 0, sizeof(v47));
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v44 = v23;
        v24 = [v44 countByEnumeratingWithState:&v53 objects:&v66 count:16];
        if (v24)
        {
          v25 = *v54;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v54 != v25)
              {
                objc_enumerationMutation(v44);
              }

              v27 = *(*(&v53 + 1) + 8 * k);
              memset(v52, 0, sizeof(v52));
              *__src = 0u;
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v28 = v27;
              v29 = [v28 countByEnumeratingWithState:__src objects:v82 count:16];
              if (v29)
              {
                v30 = *v58;
                do
                {
                  for (m = 0; m != v29; ++m)
                  {
                    if (*v58 != v30)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v32 = *(__src[1] + m);
                    v33 = v32;
                    if (v32)
                    {
                      [v32 quasarToken];
                    }

                    else
                    {
                      v80 = 0u;
                      v81 = 0u;
                      v78 = 0u;
                      *__p = 0u;
                      *v77 = 0u;
                      *v75 = 0u;
                      memset(v76, 0, sizeof(v76));
                      memset(v74, 0, sizeof(v74));
                      v72 = 0u;
                      *v73 = 0u;
                      *v70 = 0u;
                      v71 = 0u;
                    }

                    std::vector<quasar::Token>::push_back[abi:ne200100](v52, v70);
                    if (SBYTE7(v80) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (SBYTE7(v78) < 0)
                    {
                      operator delete(v77[0]);
                    }

                    v61 = v76 + 1;
                    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v61);
                    if (SBYTE7(v76[0]) < 0)
                    {
                      operator delete(v75[0]);
                    }

                    v61 = v74 + 1;
                    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
                    if (SBYTE7(v74[0]) < 0)
                    {
                      operator delete(v73[0]);
                    }

                    if (SBYTE7(v71) < 0)
                    {
                      operator delete(v70[0]);
                    }
                  }

                  v29 = [v28 countByEnumeratingWithState:__src objects:v82 count:16];
                }

                while (v29);
              }

              std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v47, v52);
              v70[0] = v52;
              std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v70);
            }

            v24 = [v44 countByEnumeratingWithState:&v53 objects:&v66 count:16];
          }

          while (v24);
        }

        std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](&v45, v47);
        v70[0] = v47;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v70);
      }

      v36 = [(NSArray *)v41 countByEnumeratingWithState:&v48 objects:&v62 count:16];
    }

    while (v36);
  }

  std::vector<std::vector<std::vector<quasar::Token>>>::__vdeallocate(&retstr->var1);
  *&retstr->var1.var0 = v45;
  retstr->var1.var2 = v46;
  v46 = 0;
  v45 = 0uLL;
  v70[0] = &v45;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](v70);
  return result;
}

- (id)granularizedRecognition
{
  v3 = [_EARSpeechRecognition alloc];
  [(_EARSpeechRecognition *)self _tokenPhraseChoiceList];
  quasar::TextProc::GranularizedTokenPhraseChoiceList(v6, v8);
  v4 = [(_EARSpeechRecognition *)v3 _initWithTokenPhraseChoiceList:v8 earNbest:self->_nBest endsOfSentencePunctuations:self->_endsOfSentencePunctuations];
  v10 = &v9;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = v8;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = &v7;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = v6;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v10);

  return v4;
}

- (id)adjustSpaceForTokens:(id)tokens currTokenIndex:(unint64_t)index endsOfSentencePunctuations:(id)punctuations isPotentialCommandRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  tokensCopy = tokens;
  punctuationsCopy = punctuations;
  v10 = [tokensCopy objectAtIndexedSubscript:index];
  v11 = [v10 copy];

  if (index + 1 < [tokensCopy count])
  {
    v12 = [tokensCopy objectAtIndexedSubscript:index + 1];
    if ([v12 appendedAutoPunctuation])
    {
      if (recognitionCopy)
      {
      }

      else
      {
        v13 = [tokensCopy objectAtIndexedSubscript:index + 1];
        tokenName = [v13 tokenName];
        v15 = [punctuationsCopy containsObject:tokenName];

        if (v15)
        {
          goto LABEL_8;
        }
      }

      v12 = [tokensCopy objectAtIndexedSubscript:index + 1];
      v51 = [_EARSpeechRecognitionToken alloc];
      tokenName2 = [v11 tokenName];
      [v11 start];
      v18 = v17;
      [v11 end];
      v20 = v19;
      [v11 silenceStart];
      v22 = v21;
      [v11 confidence];
      v24 = v23;
      hasSpaceAfter = [v12 hasSpaceAfter];
      hasSpaceBefore = [v11 hasSpaceBefore];
      phoneSequence = [v11 phoneSequence];
      ipaPhoneSequence = [v11 ipaPhoneSequence];
      v29 = [(_EARSpeechRecognitionToken *)v51 initWithTokenName:tokenName2 start:hasSpaceAfter end:hasSpaceBefore silenceStart:phoneSequence confidence:ipaPhoneSequence hasSpaceAfter:v18 hasSpaceBefore:v20 phoneSequence:v22 ipaPhoneSequence:v24];

      v11 = v29;
    }
  }

LABEL_8:
  if (!index)
  {
    goto LABEL_15;
  }

  v30 = index - 1;
  v31 = [tokensCopy objectAtIndexedSubscript:index - 1];
  if ([v31 prependedAutoPunctuation])
  {
    if (recognitionCopy)
    {
    }

    else
    {
      v32 = [tokensCopy objectAtIndexedSubscript:v30];
      tokenName3 = [v32 tokenName];
      v34 = [punctuationsCopy containsObject:tokenName3];

      if (v34)
      {
        goto LABEL_15;
      }
    }

    v31 = [tokensCopy objectAtIndexedSubscript:v30];
    v35 = [_EARSpeechRecognitionToken alloc];
    tokenName4 = [v11 tokenName];
    [v11 start];
    v38 = v37;
    [v11 end];
    v40 = v39;
    [v11 silenceStart];
    v42 = v41;
    [v11 confidence];
    v44 = v43;
    hasSpaceAfter2 = [v11 hasSpaceAfter];
    hasSpaceBefore2 = [v31 hasSpaceBefore];
    phoneSequence2 = [v11 phoneSequence];
    ipaPhoneSequence2 = [v11 ipaPhoneSequence];
    v49 = [(_EARSpeechRecognitionToken *)v35 initWithTokenName:tokenName4 start:hasSpaceAfter2 end:hasSpaceBefore2 silenceStart:phoneSequence2 confidence:ipaPhoneSequence2 hasSpaceAfter:v38 hasSpaceBefore:v40 phoneSequence:v42 ipaPhoneSequence:v44];

    v11 = v49;
  }

LABEL_15:

  return v11;
}

- (id)splitRecognitionWithPotentialCommandRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  v83 = *MEMORY[0x1E69E9840];
  if (quasar::gLogLevel >= 5)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v62);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v62, "Voice Command: tokenSausage count:", 34);
    MEMORY[0x1B8C84C00](v3, [(NSArray *)self->_tokenSausage count]);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v62);
  }

  v4 = [(NSArray *)self->_tokenSausage count];
  if (v4 < 2)
  {
LABEL_27:
    if (recognitionCopy)
    {
      v21 = [[_EARSpeechRecognition alloc] _initWithTokenSausage:self->_tokenSausage interpretationIndices:self->_interpretationIndices nBest:self->_nBest endsOfSentencePunctuations:self->_endsOfSentencePunctuations];
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_51;
  }

  v5 = (v4 - 2);
  while (1)
  {
    v6 = [(NSArray *)self->_tokenSausage objectAtIndex:v5];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v58 objects:v82 count:16];
    if (v7)
    {
      break;
    }

LABEL_25:
    if (v5-- <= 0)
    {
      goto LABEL_27;
    }
  }

  v8 = *v59;
  v9 = -1;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v59 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v58 + 1) + 8 * i);
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v54 objects:v81 count:16];
      if (v13)
      {
        v14 = *v55;
        while (2)
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v55 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v54 + 1) + 8 * j);
            [v16 end];
            v18 = v17;
            [v16 silenceStart];
            if (v18 - v19 >= 1.0)
            {
              v9 = v5;
              goto LABEL_20;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v54 objects:v81 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:
    }

    v7 = [obj countByEnumeratingWithState:&v58 objects:v82 count:16];
  }

  while (v7);

  if (v9 == -1)
  {
    goto LABEL_25;
  }

  v22 = v9 + 1;
  if (recognitionCopy)
  {
    v23 = v9 + 1;
    v22 = [(NSArray *)self->_tokenSausage count]+ ~v9;
  }

  else
  {
    v23 = 0;
  }

  v36 = [(NSArray *)self->_tokenSausage subarrayWithRange:v23, v22];
  obja = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v39 = self->_interpretationIndices;
  v24 = [(NSArray *)v39 countByEnumeratingWithState:&v50 objects:v80 count:16];
  if (v24)
  {
    v25 = *v51;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v51 != v25)
        {
          objc_enumerationMutation(v39);
        }

        v27 = [*(*(&v50 + 1) + 8 * k) subarrayWithRange:{v23, v22}];
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v28 = obja;
        v29 = [v28 countByEnumeratingWithState:&v46 objects:v79 count:16];
        if (v29)
        {
          v30 = *v47;
          while (2)
          {
            for (m = 0; m != v29; ++m)
            {
              if (*v47 != v30)
              {
                objc_enumerationMutation(v28);
              }

              if ([*(*(&v46 + 1) + 8 * m) isEqualToArray:v27])
              {

                goto LABEL_48;
              }
            }

            v29 = [v28 countByEnumeratingWithState:&v46 objects:v79 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        [v28 addObject:v27];
LABEL_48:
      }

      v24 = [(NSArray *)v39 countByEnumeratingWithState:&v50 objects:v80 count:16];
    }

    while (v24);
  }

  *&v62 = 0;
  *(&v62 + 1) = &v62;
  *&v63 = 0x3032000000;
  *(&v63 + 1) = __Block_byref_object_copy__2;
  *&v64 = __Block_byref_object_dispose__2;
  *(&v64 + 1) = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v36, "count")}];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __73___EARSpeechRecognition_splitRecognitionWithPotentialCommandRecognition___block_invoke;
  v42[3] = &unk_1E7C1A398;
  v45 = recognitionCopy;
  v42[4] = self;
  v32 = v36;
  v43 = v32;
  v44 = &v62;
  [v32 enumerateObjectsUsingBlock:v42];
  v33 = *(*(&v62 + 1) + 40);

  v34 = [_EARSpeechRecognition reconstructNBestFromSausage:v33 interpretationIndices:obja];
  v21 = [[_EARSpeechRecognition alloc] _initWithTokenSausage:v33 interpretationIndices:obja nBest:v34 endsOfSentencePunctuations:self->_endsOfSentencePunctuations];

  _Block_object_dispose(&v62, 8);
LABEL_51:

  return v21;
}

+ (id)reconstructNBestFromSausage:(id)sausage interpretationIndices:(id)indices
{
  v26 = *MEMORY[0x1E69E9840];
  sausageCopy = sausage;
  indicesCopy = indices;
  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(indicesCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = indicesCopy;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v19 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 count];
        v10 = v9;
        v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
        if (v9)
        {
          v12 = 0;
          do
          {
            v13 = [v8 objectAtIndex:v12];
            v14 = [sausageCopy objectAtIndex:v12];
            v15 = [v14 objectAtIndex:{objc_msgSend(v13, "intValue")}];

            [v11 addObjectsFromArray:v15];
            ++v12;
          }

          while (v10 != v12);
        }

        [v20 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  return v20;
}

@end