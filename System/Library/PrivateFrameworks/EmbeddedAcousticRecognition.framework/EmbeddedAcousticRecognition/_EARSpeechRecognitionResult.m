@interface _EARSpeechRecognitionResult
- (id).cxx_construct;
- (id)_initWithTokens:()vector<quasar:(std:()vector<quasar:(std:(double)a5 :(id)a6 allocator<quasar:(id)a7 :(double)a8 Token>> *)a4 :(BOOL)a9 Token :(const void *)a10 allocator<quasar::Token>> *)a3 :Token preITNTokens:confidence:voiceCommandInterpretations:preITNVoiceCommandInterpretations:utteranceStart:preITNUseHatText:formattingInfo:;
- (id)_initWithTokens:()vector<quasar:(std:()vector<quasar:(std:(double)a5 :allocator<quasar::Token>> *)a4 :Token :allocator<quasar::Token>> *)a3 :Token preITNTokens:confidence:;
- (id)_initWithTokens:()vector<quasar:(std:()vector<quasar:(std::allocator<quasar::Token>> *)a4 :Token :allocator<quasar::Token>> *)a3 :Token preITNTokens:;
- (id)description;
- (vector<quasar::Token,)quasarPreItnTokens;
- (vector<quasar::Token,)quasarTokens;
@end

@implementation _EARSpeechRecognitionResult

- (id)_initWithTokens:()vector<quasar:(std:()vector<quasar:(std::allocator<quasar::Token>> *)a4 :Token :allocator<quasar::Token>> *)a3 :Token preITNTokens:
{
  memset(v9, 0, sizeof(v9));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v9, a3->__begin_, a3->__end_, 0x6DB6DB6DB6DB6DB7 * (a3->__end_ - a3->__begin_));
  memset(v8, 0, sizeof(v8));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v8, a4->__begin_, a4->__end_, 0x6DB6DB6DB6DB6DB7 * (a4->__end_ - a4->__begin_));
  v6 = [(_EARSpeechRecognitionResult *)self _initWithTokens:v9 preITNTokens:v8 confidence:0.0];
  v10 = v8;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = v9;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v10);
  return v6;
}

- (id)_initWithTokens:()vector<quasar:(std:()vector<quasar:(std:(double)a5 :allocator<quasar::Token>> *)a4 :Token :allocator<quasar::Token>> *)a3 :Token preITNTokens:confidence:
{
  memset(v14, 0, sizeof(v14));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v14, a3->__begin_, a3->__end_, 0x6DB6DB6DB6DB6DB7 * (a3->__end_ - a3->__begin_));
  memset(v13, 0, sizeof(v13));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v13, a4->__begin_, a4->__end_, 0x6DB6DB6DB6DB6DB7 * (a4->__end_ - a4->__begin_));
  v12 = 0;
  *__p = 0u;
  v11 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
  LOBYTE(v12) = 0;
  v8 = [(_EARSpeechRecognitionResult *)self _initWithTokens:v14 preITNTokens:v13 confidence:0 voiceCommandInterpretations:0 preITNVoiceCommandInterpretations:0 utteranceStart:__p preITNUseHatText:a5 formattingInfo:0.0];
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  __p[0] = v13;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v14;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  return v8;
}

- (id)_initWithTokens:()vector<quasar:(std:()vector<quasar:(std:(double)a5 :(id)a6 allocator<quasar:(id)a7 :(double)a8 Token>> *)a4 :(BOOL)a9 Token :(const void *)a10 allocator<quasar::Token>> *)a3 :Token preITNTokens:confidence:voiceCommandInterpretations:preITNVoiceCommandInterpretations:utteranceStart:preITNUseHatText:formattingInfo:
{
  v11 = a9;
  v18 = a6;
  v19 = a7;
  v34.receiver = self;
  v34.super_class = _EARSpeechRecognitionResult;
  v20 = [(_EARSpeechRecognitionResult *)&v34 init];
  v21 = v20;
  v22 = v20;
  if (v20)
  {
    if (v11)
    {
      if (*(a10 + 32) == 1)
      {
        begin = a4->__begin_;
        end = a4->__end_;
        while (begin != end)
        {
          quasar::hatTextEncode(begin);
          if (*(&begin->tokenName.__rep_.__l + 23) < 0)
          {
            operator delete(begin->tokenName.__rep_.__l.__data_);
          }

          v25 = v32;
          *(&begin->tokenName.__rep_.__l + 2) = v33;
          *begin->tokenName.__rep_.__s.__data_ = v25;
          begin += 7;
        }
      }

      else
      {
        v32 = 0uLL;
        v33 = 0;
        v26 = quasar::QsrText::SingletonInstance(v20);
        quasar::QsrText::qsrToHatTokens(v26, a4, &v32, 1);
        std::vector<quasar::Token>::__vdeallocate(&a4->__begin_);
        *&a4->__begin_ = v32;
        a4->__cap_ = v33;
        v33 = 0;
        v32 = 0uLL;
        v35 = &v32;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v35);
      }
    }

    if (&v21->_quasarTokens != a3)
    {
      std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v21->_quasarTokens, a3->__begin_, a3->__end_, 0x6DB6DB6DB6DB6DB7 * (a3->__end_ - a3->__begin_));
    }

    if (&v21->_quasarPreItnTokens != a4)
    {
      std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v21->_quasarPreItnTokens, a4->__begin_, a4->__end_, 0x6DB6DB6DB6DB6DB7 * (a4->__end_ - a4->__begin_));
    }

    v22->_confidence = a5;
    v27 = [v18 copy];
    voiceCommandInterpretations = v22->_voiceCommandInterpretations;
    v22->_voiceCommandInterpretations = v27;

    v29 = [v19 copy];
    preITNVoiceCommandInterpretations = v22->_preITNVoiceCommandInterpretations;
    v22->_preITNVoiceCommandInterpretations = v29;

    v22->_utteranceStart = a8;
  }

  return v22;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _EARSpeechRecognitionResult;
  v3 = [(_EARSpeechRecognitionResult *)&v8 description];
  v4 = [(_EARSpeechRecognitionResult *)self tokens];
  v5 = [(_EARSpeechRecognitionResult *)self preITNTokens];
  v6 = [v3 stringByAppendingFormat:@" tokens=%@, preITNTokens=%@", v4, v5];

  return v6;
}

- (vector<quasar::Token,)quasarTokens
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(retstr, self->_quasarTokens.__begin_, self->_quasarTokens.__end_, 0x6DB6DB6DB6DB6DB7 * (self->_quasarTokens.__end_ - self->_quasarTokens.__begin_));
}

- (vector<quasar::Token,)quasarPreItnTokens
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(retstr, self->_quasarPreItnTokens.__begin_, self->_quasarPreItnTokens.__end_, 0x6DB6DB6DB6DB6DB7 * (self->_quasarPreItnTokens.__end_ - self->_quasarPreItnTokens.__begin_));
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  return self;
}

@end