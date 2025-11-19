@interface _EARSpeechRecognitionToken
- (BOOL)isEqual:(id)a3;
- (NSString)ipaPhoneSequence;
- (NSString)phoneSequence;
- (NSString)tokenName;
- (_EARSpeechRecognitionToken)initWithTokenName:(id)a3 start:(double)a4 end:(double)a5 silenceStart:(double)a6 confidence:(double)a7 hasSpaceAfter:(BOOL)a8 hasSpaceBefore:(BOOL)a9 phoneSequence:(id)a10 ipaPhoneSequence:(id)a11 appendedAutoPunctuation:(BOOL)a12;
- (id)_initWithQuasarToken:(const void *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _EARSpeechRecognitionToken

- (unint64_t)hash
{
  v2 = [(_EARSpeechRecognitionToken *)self tokenName];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = quasar::Token::operator==(&self->_quasarToken.tokenName.__rep_.__l.__data_, v4 + 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_EARSpeechRecognitionToken)initWithTokenName:(id)a3 start:(double)a4 end:(double)a5 silenceStart:(double)a6 confidence:(double)a7 hasSpaceAfter:(BOOL)a8 hasSpaceBefore:(BOOL)a9 phoneSequence:(id)a10 ipaPhoneSequence:(id)a11 appendedAutoPunctuation:(BOOL)a12
{
  v22 = a3;
  v23 = a10;
  v24 = a11;
  if (v22)
  {
    [v22 ear_toString];
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_6:
    v33 = 0uLL;
    v34 = 0;
    if (v24)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v35 = 0uLL;
  v36 = 0;
  if (!v23)
  {
    goto LABEL_6;
  }

LABEL_3:
  [v23 ear_toString];
  if (v24)
  {
LABEL_4:
    [v24 ear_toString];
    goto LABEL_8;
  }

LABEL_7:
  v31 = 0uLL;
  v32 = 0;
LABEL_8:
  memset(v30, 0, sizeof(v30));
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v25 = a7;
  quasar::Token::Token(v37, &v35, (a4 * 1000.0), (a5 * 1000.0), (a6 * 1000.0), a8, a9, &v33, v25, &v31, v30, a12, __p, 0, 0, 0);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v30;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  v26 = [(_EARSpeechRecognitionToken *)self _initWithQuasarToken:v37];
  if (v47 < 0)
  {
    operator delete(v46);
  }

  if (v45 < 0)
  {
    operator delete(v44);
  }

  *&v33 = &v43;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v33);
  if (v42 < 0)
  {
    operator delete(v41);
  }

  *&v33 = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v37[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37[0].__r_.__value_.__l.__data_);
  }

  return v26;
}

- (id)_initWithQuasarToken:(const void *)a3
{
  v7.receiver = self;
  v7.super_class = _EARSpeechRecognitionToken;
  v4 = [(_EARSpeechRecognitionToken *)&v7 init];
  v5 = v4;
  if (v4)
  {
    quasar::Token::operator=(&v4->_quasarToken, a3);
  }

  return v5;
}

- (NSString)tokenName
{
  if ((*(&self->_quasarToken.tokenName.__rep_.__l + 23) & 0x8000000000000000) != 0)
  {
    data = self->_quasarToken.tokenName.__rep_.__l.__data_;
  }

  else
  {
    data = &self->_quasarToken;
  }

  return [MEMORY[0x1E696AEC0] ear_stringWithStringView:data];
}

- (NSString)phoneSequence
{
  if ((*(&self[1]._quasarToken.var1 + 3) & 0x8000000000000000) != 0)
  {
    size = self[1]._quasarToken.tokenName.__rep_.__l.__size_;
  }

  else
  {
    size = &self[1]._quasarToken.tokenName.__rep_.__s.__data_[8];
  }

  return [MEMORY[0x1E696AEC0] ear_stringWithStringView:size];
}

- (NSString)ipaPhoneSequence
{
  if ((SHIBYTE(self[3].super.isa) & 0x8000000000000000) != 0)
  {
    v2 = *(&self[2]._quasarToken.tokenName.__rep_.__l + 2);
  }

  else
  {
    v2 = &self[2]._quasarToken.tokenName.__rep_.__s.__data_[16];
  }

  return [MEMORY[0x1E696AEC0] ear_stringWithStringView:v2];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_EARSpeechRecognitionToken *)self tokenName];
  [(_EARSpeechRecognitionToken *)self start];
  v6 = v5;
  [(_EARSpeechRecognitionToken *)self silenceStart];
  v8 = v7;
  [(_EARSpeechRecognitionToken *)self end];
  v10 = v9;
  [(_EARSpeechRecognitionToken *)self confidence];
  v12 = v11;
  v13 = [(_EARSpeechRecognitionToken *)self hasSpaceAfter];
  v14 = [(_EARSpeechRecognitionToken *)self hasSpaceBefore];
  v15 = [(_EARSpeechRecognitionToken *)self phoneSequence];
  v16 = [(_EARSpeechRecognitionToken *)self ipaPhoneSequence];
  v17 = [(_EARSpeechRecognitionToken *)self appendedAutoPunctuation];
  v18 = [(_EARSpeechRecognitionToken *)self prependedAutoPunctuation];
  v19 = [(_EARSpeechRecognitionToken *)self isModifiedByAutoPunctuation];
  [(_EARSpeechRecognitionToken *)self graphCost];
  v21 = v20;
  [(_EARSpeechRecognitionToken *)self acousticCost];
  v23 = [v3 stringWithFormat:@"<_EARSpeechRecognitionToken> tokenName=%@, start=%f, silenceStart=%f, end=%f, confidence=%f, hasSpaceAfter=%d, hasSpaceBefore=%d, phoneSeq=%@, ipaPhoneSeq=%@, appendedAutoPunctuation=%d, prependedAutoPunctuation=%d, isModifiedByAutoPunctuation=%d, graphCost=%f, acousticCost=%f", v4, v6, v8, v10, v12, v13, v14, v15, v16, v17, v18, v19, v21, v22];

  return v23;
}

@end