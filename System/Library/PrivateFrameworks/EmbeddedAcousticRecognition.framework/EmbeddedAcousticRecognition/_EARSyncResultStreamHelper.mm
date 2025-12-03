@interface _EARSyncResultStreamHelper
- (_EARSyncResultStreamHelper)initWithTagResults:(BOOL)results;
- (id)addPartialFinalTag:()basic_string<char result:()std:(std::allocator<char>> *)std :char_traits<char>;
- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results;
- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result;
@end

@implementation _EARSyncResultStreamHelper

- (_EARSyncResultStreamHelper)initWithTagResults:(BOOL)results
{
  resultsCopy = results;
  v10.receiver = self;
  v10.super_class = _EARSyncResultStreamHelper;
  v4 = [(_EARSyncResultStreamHelper *)&v10 init];
  if (v4)
  {
    v5 = dispatch_semaphore_create(0);
    finishSemaphore = v4->_finishSemaphore;
    v4->_finishSemaphore = v5;

    if (resultsCopy)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      taggedResults = v4->_taggedResults;
      v4->_taggedResults = v7;
    }
  }

  return v4;
}

- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result
{
  resultCopy = result;
  if (self->_taggedResults)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "partial");
    v6 = [(_EARSyncResultStreamHelper *)self addPartialFinalTag:__p result:resultCopy];
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    [(NSMutableArray *)self->_taggedResults addObject:v6];
  }
}

- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error
{
  objc_storeStrong(&self->_error, error);
  errorCopy = error;
  dispatch_semaphore_signal(self->_finishSemaphore);
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResults:(id)results
{
  resultsCopy = results;
  objc_storeStrong(&self->_results, results);
  if (self->_taggedResults)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "final");
    firstObject = [resultsCopy firstObject];
    v8 = [(_EARSyncResultStreamHelper *)self addPartialFinalTag:__p result:firstObject];

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    [(NSMutableArray *)self->_taggedResults addObject:v8];
  }
}

- (id)addPartialFinalTag:()basic_string<char result:()std:(std::allocator<char>> *)std :char_traits<char>
{
  v5 = v3;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (*(&std->__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, std->__rep_.__l.__data_, std->__rep_.__l.__size_);
  }

  else
  {
    v33 = *std;
  }

  std::string::basic_string[abi:ne200100]<0>(v31, "");
  std::string::basic_string[abi:ne200100]<0>(v29, "");
  memset(v28, 0, sizeof(v28));
  std::string::basic_string[abi:ne200100]<0>(v26, "");
  quasar::Token::Token(v34, &v33, 0, 0, 0, 1, 0, v31, 0.0, v29, v28, 0, v26, 0, 0, 0);
  std::vector<quasar::Token>::push_back[abi:ne200100](&v44, v34);
  if (SBYTE7(v43[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v41) < 0)
  {
    operator delete(v40[0]);
  }

  v47 = v39 + 1;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v47);
  if (SBYTE7(v39[0]) < 0)
  {
    operator delete(v38[0]);
  }

  v47 = v37 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v47);
  if (SBYTE7(v37[0]) < 0)
  {
    operator delete(v36[0]);
  }

  if (SBYTE7(v35[0]) < 0)
  {
    operator delete(v34[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v26[0] = v28;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v26);
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v5)
    {
      goto LABEL_22;
    }

LABEL_42:
    v20 = [_EARSpeechRecognitionResult alloc];
    memset(v25, 0, sizeof(v25));
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v25, v44, v45, 0x6DB6DB6DB6DB6DB7 * ((v45 - v44) >> 5));
    memset(v24, 0, sizeof(v24));
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v24, v44, v45, 0x6DB6DB6DB6DB6DB7 * ((v45 - v44) >> 5));
    v19 = [(_EARSpeechRecognitionResult *)v20 _initWithTokens:v25 preITNTokens:v24];
    v34[0] = v24;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v34);
    v34[0] = v25;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v34);
    goto LABEL_43;
  }

  operator delete(v33.__r_.__value_.__l.__data_);
  if (!v5)
  {
    goto LABEL_42;
  }

LABEL_22:
  tokens = [v5 tokens];
  for (i = 0; [tokens count] > i; ++i)
  {
    v8 = [tokens objectAtIndex:i];
    v9 = v8;
    if (v8)
    {
      [v8 quasarToken];
    }

    else
    {
      memset(v43, 0, sizeof(v43));
      v41 = 0u;
      *__p = 0u;
      *v40 = 0u;
      *v38 = 0u;
      memset(v39, 0, sizeof(v39));
      memset(v37, 0, sizeof(v37));
      *v36 = 0u;
      *v34 = 0u;
      memset(v35, 0, sizeof(v35));
    }

    v10 = v45;
    if (v45 >= v46)
    {
      v45 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token>(&v44, v34);
      if (SBYTE7(v43[0]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v11 = *v34;
      *(v45 + 16) = *&v35[0];
      *v10 = v11;
      v34[1] = 0;
      *&v35[0] = 0;
      v34[0] = 0;
      v12 = *(&v35[1] + 7);
      *(v10 + 24) = *(v35 + 8);
      *(v10 + 39) = v12;
      v13 = *&v37[0];
      *(v10 + 48) = *v36;
      *(v10 + 64) = v13;
      *(v10 + 72) = 0;
      v36[1] = 0;
      *&v37[0] = 0;
      v36[0] = 0;
      *(v10 + 80) = 0;
      *(v10 + 88) = 0;
      *(v10 + 72) = *(v37 + 8);
      *(v10 + 88) = *(&v37[1] + 1);
      memset(v37 + 8, 0, 24);
      v14 = *v38;
      *(v10 + 112) = *&v39[0];
      *(v10 + 120) = 0;
      *(v10 + 96) = v14;
      v38[1] = 0;
      *&v39[0] = 0;
      v38[0] = 0;
      *(v10 + 128) = 0;
      *(v10 + 136) = 0;
      *(v10 + 120) = *(v39 + 8);
      *(v10 + 136) = *(&v39[1] + 1);
      memset(v39 + 8, 0, 24);
      v15 = *v40;
      *(v10 + 160) = v41;
      *(v10 + 144) = v15;
      v40[1] = 0;
      *&v41 = 0;
      v40[0] = 0;
      LODWORD(v13) = DWORD2(v41);
      *(v10 + 172) = WORD6(v41);
      *(v10 + 168) = v13;
      v16 = *__p;
      *(v10 + 192) = *&v43[0];
      *(v10 + 176) = v16;
      __p[1] = 0;
      *&v43[0] = 0;
      __p[0] = 0;
      v17 = *(v43 + 8);
      *(v10 + 216) = DWORD2(v43[1]);
      *(v10 + 200) = v17;
      v45 = v10 + 224;
    }

    if (SBYTE7(v41) < 0)
    {
      operator delete(v40[0]);
    }

    v31[0] = v39 + 8;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v31);
    if (SBYTE7(v39[0]) < 0)
    {
      operator delete(v38[0]);
    }

    v31[0] = v37 + 8;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v31);
    if (SBYTE7(v37[0]) < 0)
    {
      operator delete(v36[0]);
    }

    if (SBYTE7(v35[0]) < 0)
    {
      operator delete(v34[0]);
    }
  }

  v18 = [_EARSpeechRecognitionResult alloc];
  memset(v23, 0, sizeof(v23));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v23, v44, v45, 0x6DB6DB6DB6DB6DB7 * ((v45 - v44) >> 5));
  memset(v22, 0, sizeof(v22));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v22, v44, v45, 0x6DB6DB6DB6DB6DB7 * ((v45 - v44) >> 5));
  v19 = [(_EARSpeechRecognitionResult *)v18 _initWithTokens:v23 preITNTokens:v22];
  v34[0] = v22;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v34);
  v34[0] = v23;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v34);

LABEL_43:
  v34[0] = &v44;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v34);

  return v19;
}

@end