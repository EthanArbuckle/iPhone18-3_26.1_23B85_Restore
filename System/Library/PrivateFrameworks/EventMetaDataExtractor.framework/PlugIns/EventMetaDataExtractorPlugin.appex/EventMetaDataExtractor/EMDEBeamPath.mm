@interface EMDEBeamPath
- (EMDEBeamPath)initWithState:(__CFArray *)state allowedWords:()basic_string<char;
- (basic_string<char,)allowedWords;
- (basic_string<char,)currentPrediction;
- (basic_string<char,)currentWord;
- (id).cxx_construct;
- (id)initFinishedBeamFrom:(id)from additionalToken:()pair<int lengthPenalty:(float>)penalty validate:(float)validate;
- (unsigned)createBeamForPrefixBasedTokeniserFrom:(id)from additionalToken:()pair<int validate:(float>)validate;
- (unsigned)createBeamForSuffixBasedTokeniserFrom:(id)from additionalToken:()pair<int validate:(float>)validate;
- (vector<int,)tokens;
@end

@implementation EMDEBeamPath

- (EMDEBeamPath)initWithState:(__CFArray *)state allowedWords:()basic_string<char
{
  selfCopy = self;
  if (state)
  {
    v14.receiver = self;
    v14.super_class = EMDEBeamPath;
    v7 = [(EMDEBeamPath *)&v14 init];
    v8 = +[EMDEUtils config];
    v9 = [v8 objectForKeyedSubscript:@"EMDE_SEPARATOR_TOKEN"];
    __src = [v9 intValue];
    sub_100012D14(v7 + 4, &__src, &v14, 1uLL);

    std::string::assign((v7 + 56), "");
    std::string::assign((v7 + 80), "");
    *(v7 + 3) = state;
    *(v7 + 3) = 0;
    *(v7 + 4) = 0;
    std::string::operator=((v7 + 104), a4);
    v7[8] = 0;
    selfCopy = v7;
    v10 = selfCopy;
  }

  else
  {
    v11 = modelLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10008BDBC(v11);
    }

    v10 = 0;
  }

  return v10;
}

- (id)initFinishedBeamFrom:(id)from additionalToken:()pair<int lengthPenalty:(float>)penalty validate:(float)validate
{
  v6 = a6;
  penaltyCopy = penalty;
  fromCopy = from;
  if (!fromCopy)
  {
    v14 = modelLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10008BE00(v14);
    }

    goto LABEL_13;
  }

  v36.receiver = self;
  v36.super_class = EMDEBeamPath;
  v10 = [(EMDEBeamPath *)&v36 init];
  self = v10;
  [fromCopy tokens];
  v11 = *(v10 + 4);
  if (v11)
  {
    *(v10 + 5) = v11;
    operator delete(v11);
    *(v10 + 4) = 0;
    *(v10 + 5) = 0;
    *(v10 + 6) = 0;
  }

  *(v10 + 32) = v35;
  sub_100011D60(v10 + 4, &penaltyCopy);
  [fromCopy allowedWords];
  if (v10[127] < 0)
  {
    operator delete(*(v10 + 13));
  }

  *(v10 + 104) = v35;
  *(v10 + 3) = 0;
  if (v6)
  {
    [fromCopy currentWord];
    v12 = [EMDEUtils validateAndUpdateAllowedWords:v10 + 104 forWord:&__p isComplete:1];
    v13 = v12;
    if (v34 < 0)
    {
      operator delete(__p);
      if (!v13)
      {
LABEL_13:
        selfCopy = 0;
        goto LABEL_38;
      }
    }

    else if (!v12)
    {
      goto LABEL_13;
    }
  }

  [fromCopy currentWord];
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    v24 = *&v35.__r_.__value_.__l.__data_;
    operator delete(v35.__r_.__value_.__l.__data_);
    if (*(&v24 + 1))
    {
      goto LABEL_17;
    }

LABEL_32:
    [fromCopy currentPrediction];
    if (v10[79] < 0)
    {
      operator delete(*(v10 + 7));
    }

    *(v10 + 56) = v35;
    goto LABEL_35;
  }

  if (!*(&v35.__r_.__value_.__s + 23))
  {
    goto LABEL_32;
  }

LABEL_17:
  [fromCopy currentPrediction];
  v16 = std::string::append(&v32, " ");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  [fromCopy currentWord];
  if ((v31 & 0x80u) == 0)
  {
    v18 = v30;
  }

  else
  {
    v18 = v30[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v19 = v31;
  }

  else
  {
    v19 = v30[1];
  }

  v20 = std::string::append(&v35, v18, v19);
  v21 = v20->__r_.__value_.__r.__words[0];
  v38[0] = v20->__r_.__value_.__l.__size_;
  *(v38 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
  v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v10[79] < 0)
  {
    operator delete(*(v10 + 7));
  }

  v23 = v38[0];
  *(v10 + 7) = v21;
  *(v10 + 8) = v23;
  *(v10 + 71) = *(v38 + 7);
  v10[79] = v22;
  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

LABEL_35:
  [fromCopy score];
  v26 = v25 + penaltyCopy.var1;
  *(v10 + 3) = v25 + penaltyCopy.var1;
  [v10 tokens];
  v27 = v35.__r_.__value_.__r.__words[0];
  v28 = v26 / pow((((v35.__r_.__value_.__l.__size_ - v35.__r_.__value_.__r.__words[0]) >> 2) - 1), validate);
  *(v10 + 4) = v28;
  if (v27)
  {
    v35.__r_.__value_.__l.__size_ = v27;
    operator delete(v27);
  }

  std::string::assign((v10 + 104), "");
  self = v10;
  selfCopy = self;
LABEL_38:

  return selfCopy;
}

- (unsigned)createBeamForSuffixBasedTokeniserFrom:(id)from additionalToken:()pair<int validate:(float>)validate
{
  v5 = a5;
  fromCopy = from;
  [EMDEUtils getTokenForTokenID:validate];
  v9 = +[EMDEUtils config];
  v10 = [v9 objectForKeyedSubscript:@"EMDE_TOKENISER_UPPERCASE_TOKEN_ID"];
  if (v10)
  {
    v11 = +[EMDEUtils config];
    v12 = [v11 objectForKeyedSubscript:@"EMDE_TOKENISER_UPPERCASE_TOKEN_ID"];
    v13 = [v12 intValue] == validate.var0;

    if (v13)
    {
      self->_capitaliseNextWord = 1;
      if (fromCopy)
      {
        [fromCopy currentWord];
      }

      else
      {
        memset(&v48, 0, sizeof(v48));
      }

      if (*(&self->_currentWord.__rep_.__l + 23) < 0)
      {
        operator delete(self->_currentWord.__rep_.__l.__data_);
      }

      self->_currentWord = v48;
      v24 = 1;
      goto LABEL_95;
    }
  }

  else
  {
  }

  if ([fromCopy capitaliseNextWord])
  {
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    v15 = __toupper(p_str->__r_.__value_.__s.__data_[0]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &__str;
    }

    else
    {
      v16 = __str.__r_.__value_.__r.__words[0];
    }

    v16->__r_.__value_.__s.__data_[0] = v15;
  }

  LOBYTE(v17) = *(&__str.__r_.__value_.__s + 23);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__str.__r_.__value_.__s + 23))
    {
      v18 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      goto LABEL_18;
    }

LABEL_23:
    if (fromCopy)
    {
      [fromCopy currentWord];
      LOBYTE(v17) = *(&__str.__r_.__value_.__s + 23);
    }

    else
    {
      memset(&v48, 0, sizeof(v48));
    }

    if ((v17 & 0x80u) == 0)
    {
      v20 = &__str;
    }

    else
    {
      v20 = __str.__r_.__value_.__r.__words[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      size = v17;
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v48, v20, size);
    v23 = 0;
    goto LABEL_47;
  }

  v18 = __str.__r_.__value_.__l.__size_;
  if (!__str.__r_.__value_.__l.__size_)
  {
    goto LABEL_23;
  }

LABEL_18:
  v19 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__str;
  }

  if (v19->__r_.__value_.__s.__data_[v18 - 1] != 95)
  {
    goto LABEL_23;
  }

  if (fromCopy)
  {
    [fromCopy currentWord];
    LOBYTE(v17) = *(&__str.__r_.__value_.__s + 23);
  }

  else
  {
    memset(&v48, 0, sizeof(v48));
  }

  v17 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = __str.__r_.__value_.__l.__size_;
  }

  std::string::basic_string(&v47, &__str, 0, v17 - 1, &v44);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v47;
  }

  else
  {
    v25 = v47.__r_.__value_.__r.__words[0];
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v47.__r_.__value_.__l.__size_;
  }

  v22 = std::string::append(&v48, v25, v26);
  v23 = 1;
LABEL_47:
  v27 = v22->__r_.__value_.__r.__words[0];
  *&__dst = v22->__r_.__value_.__l.__size_;
  *(&__dst + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
  v28 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  p_currentWord = &self->_currentWord;
  if (*(&self->_currentWord.__rep_.__l + 23) < 0)
  {
    operator delete(p_currentWord->__rep_.__l.__data_);
  }

  self->_currentWord.__rep_.__l.__size_ = __dst;
  p_size = &self->_currentWord.__rep_.__l.__size_;
  self->_currentWord.__rep_.__l.__data_ = v27;
  *(&self->_currentWord.__rep_.__l.__size_ + 7) = *(&__dst + 7);
  *(&self->_currentWord.__rep_.__l + 23) = v28;
  if ((v23 & 1) != 0 && SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
    if (v5)
    {
LABEL_54:
      if (*(&self->_currentWord.__rep_.__l + 23) < 0)
      {
        sub_100019AD4(__p, p_currentWord->__rep_.__l.__data_, *p_size);
      }

      else
      {
        *__p = *p_currentWord->__rep_.__s.__data_;
        v46 = *(&self->_currentWord.__rep_.__l + 2);
      }

      v24 = [EMDEUtils validateAndUpdateAllowedWords:&self->_allowedWords forWord:__p isComplete:v23];
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_61;
    }
  }

  else if (v5)
  {
    goto LABEL_54;
  }

  v24 = 1;
LABEL_61:
  if (v24)
  {
    v31 = v23;
  }

  else
  {
    v31 = 0;
  }

  if (v31 == 1)
  {
    v32 = *(&self->_currentPrediction.__rep_.__l + 23);
    if (v32 < 0)
    {
      v33 = self->_currentPrediction.__rep_.__l.__size_;
    }

    else
    {
      v33 = *(&self->_currentPrediction.__rep_.__l + 23);
    }

    p_currentPrediction = &self->_currentPrediction;
    if (v33)
    {
      if (v32 >= 0)
      {
        v35 = *(&self->_currentPrediction.__rep_.__l + 23);
      }

      else
      {
        v35 = self->_currentPrediction.__rep_.__l.__size_;
      }

      v36 = &v44;
      sub_10000D358(&v44, v35 + 1);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v44.__r_.__value_.__r.__words[0];
      }

      if (v35)
      {
        if (*(&self->_currentPrediction.__rep_.__l + 23) >= 0)
        {
          data = &self->_currentPrediction;
        }

        else
        {
          data = self->_currentPrediction.__rep_.__l.__data_;
        }

        memmove(v36, data, v35);
      }

      *(&v36->__r_.__value_.__l.__data_ + v35) = 32;
      v38 = *(&self->_currentWord.__rep_.__l + 23);
      if (v38 >= 0)
      {
        v39 = &self->_currentWord;
      }

      else
      {
        v39 = self->_currentWord.__rep_.__l.__data_;
      }

      if (v38 >= 0)
      {
        v40 = *(&self->_currentWord.__rep_.__l + 23);
      }

      else
      {
        v40 = self->_currentWord.__rep_.__l.__size_;
      }

      v41 = std::string::append(&v44, v39->__rep_.__s.__data_, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v51 = v41->__r_.__value_.__r.__words[2];
      __dst = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
    }

    else if (*(&self->_currentWord.__rep_.__l + 23) < 0)
    {
      sub_100019AD4(&__dst, p_currentWord->__rep_.__l.__data_, *p_size);
    }

    else
    {
      __dst = *p_currentWord->__rep_.__s.__data_;
      v51 = *(&self->_currentWord.__rep_.__l + 2);
    }

    if (*(&self->_currentPrediction.__rep_.__l + 23) < 0)
    {
      operator delete(p_currentPrediction->__rep_.__l.__data_);
    }

    *p_currentPrediction->__rep_.__s.__data_ = __dst;
    *(&self->_currentPrediction.__rep_.__l + 2) = v51;
    HIBYTE(v51) = 0;
    LOBYTE(__dst) = 0;
    if (v33 && SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    std::string::assign(&self->_currentWord, "");
  }

LABEL_95:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v24;
}

- (unsigned)createBeamForPrefixBasedTokeniserFrom:(id)from additionalToken:()pair<int validate:(float>)validate
{
  v5 = a5;
  fromCopy = from;
  [EMDEUtils getTokenForTokenID:validate];
  v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__str.__r_.__value_.__s + 23))
    {
      p_str = &__str;
      goto LABEL_6;
    }

LABEL_10:
    if (v5)
    {
      if (fromCopy)
      {
        [fromCopy currentWord];
        v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        memset(&v42, 0, sizeof(v42));
      }

      if ((v9 & 0x80u) == 0)
      {
        v12 = &__str;
      }

      else
      {
        v12 = __str.__r_.__value_.__r.__words[0];
      }

      if ((v9 & 0x80u) == 0)
      {
        size = v9;
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v42, v12, size);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v38 = v14->__r_.__value_.__r.__words[2];
      *__p = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v11 = [EMDEUtils validateAndUpdateAllowedWords:&self->_allowedWords forWord:__p isComplete:0];
      if (SHIBYTE(v38) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
        if (!v11)
        {
          goto LABEL_86;
        }
      }

      else if (!v11)
      {
        goto LABEL_86;
      }
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    if (fromCopy)
    {
      [fromCopy currentWord];
    }

    else
    {
      memset(&v42, 0, sizeof(v42));
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &__str;
    }

    else
    {
      v16 = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = __str.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v42, v16, v17);
    v19 = v18->__r_.__value_.__r.__words[0];
    v48.__r_.__value_.__r.__words[0] = v18->__r_.__value_.__l.__size_;
    *(v48.__r_.__value_.__r.__words + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
    v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (*(&self->_currentWord.__rep_.__l + 23) < 0)
    {
      operator delete(self->_currentWord.__rep_.__l.__data_);
    }

    v21 = v48.__r_.__value_.__r.__words[0];
    self->_currentWord.__rep_.__l.__data_ = v19;
    self->_currentWord.__rep_.__l.__size_ = v21;
    *(&self->_currentWord.__rep_.__l.__size_ + 7) = *(v48.__r_.__value_.__r.__words + 7);
    *(&self->_currentWord.__rep_.__l + 23) = v20;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    goto LABEL_86;
  }

  if (!__str.__r_.__value_.__l.__size_)
  {
    goto LABEL_10;
  }

  p_str = __str.__r_.__value_.__r.__words[0];
LABEL_6:
  if (p_str->__r_.__value_.__s.__data_[0] != 95)
  {
    goto LABEL_10;
  }

  if (!v5)
  {
    LOBYTE(v11) = 1;
    goto LABEL_49;
  }

  if (fromCopy)
  {
    [fromCopy currentWord];
  }

  else
  {
    v44[0] = 0;
    v44[1] = 0;
    v45 = 0;
  }

  v22 = [EMDEUtils validateAndUpdateAllowedWords:&self->_allowedWords forWord:v44 isComplete:1];
  v11 = v22;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
    if (!v11)
    {
      goto LABEL_86;
    }
  }

  else if (!v22)
  {
    goto LABEL_86;
  }

  std::string::basic_string(&v43, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v42);
  v11 = [EMDEUtils validateAndUpdateAllowedWords:&self->_allowedWords forWord:&v43 isComplete:0];
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
LABEL_49:
    v23 = *(&self->_currentPrediction.__rep_.__l + 23);
    if (v23 < 0)
    {
      v24 = self->_currentPrediction.__rep_.__l.__size_;
    }

    else
    {
      v24 = *(&self->_currentPrediction.__rep_.__l + 23);
    }

    p_currentPrediction = &self->_currentPrediction;
    if (v24)
    {
      if (v23 >= 0)
      {
        v26 = *(&self->_currentPrediction.__rep_.__l + 23);
      }

      else
      {
        v26 = self->_currentPrediction.__rep_.__l.__size_;
      }

      v27 = &v48;
      sub_10000D358(&v48, v26 + 1);
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v48.__r_.__value_.__r.__words[0];
      }

      if (v26)
      {
        if (*(&self->_currentPrediction.__rep_.__l + 23) >= 0)
        {
          data = &self->_currentPrediction;
        }

        else
        {
          data = self->_currentPrediction.__rep_.__l.__data_;
        }

        memmove(v27, data, v26);
      }

      *(&v27->__r_.__value_.__l.__data_ + v26) = 32;
      if (fromCopy)
      {
        [fromCopy currentWord];
        v29 = HIBYTE(v41);
        v31 = v39;
        v30 = v40;
      }

      else
      {
        v30 = 0;
        v31 = 0;
        v29 = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
      }

      if ((v29 & 0x80u) == 0)
      {
        v32 = &v39;
      }

      else
      {
        v32 = v31;
      }

      if ((v29 & 0x80u) == 0)
      {
        v33 = v29;
      }

      else
      {
        v33 = v30;
      }

      v34 = std::string::append(&v48, v32, v33);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v42.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v42.__r_.__value_.__l.__data_ = v35;
    }

    else
    {
      if (fromCopy)
      {
        [fromCopy currentWord];
LABEL_76:
        if (*(&self->_currentPrediction.__rep_.__l + 23) < 0)
        {
          operator delete(p_currentPrediction->__rep_.__l.__data_);
        }

        *p_currentPrediction->__rep_.__s.__data_ = *&v42.__r_.__value_.__l.__data_;
        *(&self->_currentPrediction.__rep_.__l + 2) = *(&v42.__r_.__value_.__l + 2);
        *(&v42.__r_.__value_.__s + 23) = 0;
        v42.__r_.__value_.__s.__data_[0] = 0;
        if (v24)
        {
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v39);
          }

          if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v48.__r_.__value_.__l.__data_);
          }
        }

        std::string::basic_string(&v42, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v47);
        if (*(&self->_currentWord.__rep_.__l + 23) < 0)
        {
          operator delete(self->_currentWord.__rep_.__l.__data_);
        }

        self->_currentWord = v42;
        goto LABEL_86;
      }

      v34 = &v42;
    }

    v34->__r_.__value_.__r.__words[0] = 0;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_76;
  }

LABEL_86:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v11;
}

- (vector<int,)tokens
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_10000D2DC(retstr, self->_tokens.__begin_, self->_tokens.__end_, self->_tokens.__end_ - self->_tokens.__begin_);
}

- (basic_string<char,)currentPrediction
{
  if (result[3].__rep_.__s.__data_[7] < 0)
  {
    return sub_100019AD4(retstr, result[2].__rep_.__l.__size_, *(&result[2].__rep_.__l + 2));
  }

  *retstr = *(result + 56);
  return result;
}

- (basic_string<char,)currentWord
{
  if (result[4].__rep_.__s.__data_[7] < 0)
  {
    return sub_100019AD4(retstr, result[3].__rep_.__l.__size_, *(&result[3].__rep_.__l + 2));
  }

  *retstr = *(result + 80);
  return result;
}

- (basic_string<char,)allowedWords
{
  if (result[5].__rep_.__s.__data_[7] < 0)
  {
    return sub_100019AD4(retstr, result[4].__rep_.__l.__size_, *(&result[4].__rep_.__l + 2));
  }

  *retstr = *(result + 104);
  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  return self;
}

@end