@interface _EARTextNormalization
- (_EARTextNormalization)initWithModelRoot:(id)root;
- (_EARTextNormalization)initWithModelRoot:(id)root mungeRuleFile:(id)file;
- (_EARTextNormalization)initWithModelRoot:(id)root mungeRules:(id)rules;
- (_EARTextNormalization)initWithMungeRules:(id)rules;
- (_EARTextNormalization)initWithNcsRoot:(id)root;
- (_EARTextNormalization)initWithNcsRoot:(id)root mungeRuleFile:(id)file;
- (_EARTextNormalization)initWithNcsRoot:(id)root mungeRules:(id)rules;
- (id)munge:(id)munge;
- (id)normalize:(id)normalize;
- (id)tokenize:(id)tokenize;
@end

@implementation _EARTextNormalization

- (_EARTextNormalization)initWithNcsRoot:(id)root mungeRuleFile:(id)file
{
  rootCopy = root;
  fileCopy = file;
  if (rootCopy)
  {
    v8 = [_EARQuasarTokenizer extractModelRootFromNcsRoot:rootCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(_EARTextNormalization *)self initWithModelRoot:v8 mungeRuleFile:fileCopy];

  return v9;
}

- (_EARTextNormalization)initWithNcsRoot:(id)root mungeRules:(id)rules
{
  rootCopy = root;
  rulesCopy = rules;
  if (rootCopy)
  {
    v8 = [_EARQuasarTokenizer extractModelRootFromNcsRoot:rootCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(_EARTextNormalization *)self initWithModelRoot:v8 mungeRules:rulesCopy];

  return v9;
}

- (_EARTextNormalization)initWithNcsRoot:(id)root
{
  v4 = [_EARQuasarTokenizer extractModelRootFromNcsRoot:root];
  v5 = [(_EARTextNormalization *)self initWithModelRoot:v4];

  return v5;
}

- (_EARTextNormalization)initWithModelRoot:(id)root mungeRuleFile:(id)file
{
  rootCopy = root;
  fileCopy = file;
  v12.receiver = self;
  v12.super_class = _EARTextNormalization;
  v8 = [(_EARTextNormalization *)&v12 init];
  if (v8)
  {
    if (rootCopy)
    {
      v9 = [[_EARQuasarTokenizer alloc] initWithModelRoot:rootCopy];
      tokenizer = v8->_tokenizer;
      v8->_tokenizer = &v9->super;
    }

    if (fileCopy)
    {
      [fileCopy ear_toString];
      operator new();
    }
  }

  return v8;
}

- (_EARTextNormalization)initWithModelRoot:(id)root mungeRules:(id)rules
{
  rootCopy = root;
  rulesCopy = rules;
  v14.receiver = self;
  v14.super_class = _EARTextNormalization;
  v8 = [(_EARTextNormalization *)&v14 init];
  if (v8)
  {
    v9 = [[_EARQuasarTokenizer alloc] initWithModelRoot:rootCopy];
    tokenizer = v8->_tokenizer;
    v8->_tokenizer = &v9->super;

    if (rulesCopy)
    {
      [rulesCopy ear_toString];
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v13, &__p, 24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  return 0;
}

- (_EARTextNormalization)initWithModelRoot:(id)root
{
  rootCopy = root;
  v9.receiver = self;
  v9.super_class = _EARTextNormalization;
  v5 = [(_EARTextNormalization *)&v9 init];
  if (v5)
  {
    v6 = [[_EARQuasarTokenizer alloc] initWithModelRoot:rootCopy];
    tokenizer = v5->_tokenizer;
    v5->_tokenizer = &v6->super;
  }

  return v5;
}

- (_EARTextNormalization)initWithMungeRules:(id)rules
{
  rulesCopy = rules;
  v8.receiver = self;
  v8.super_class = _EARTextNormalization;
  if ([(_EARTextNormalization *)&v8 init])
  {
    if (rulesCopy)
    {
      [rulesCopy ear_toString];
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v7, &__p, 24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  return 0;
}

- (id)normalize:(id)normalize
{
  normalizeCopy = normalize;
  if (self->_tokenizer)
  {
    v5 = [(_EARTextNormalization *)self tokenize:normalizeCopy];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v5 = [normalizeCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (self->_munger.__ptr_)
  {
    v7 = [(_EARTextNormalization *)self munge:v5];
    goto LABEL_8;
  }

LABEL_7:
  v7 = v5;
LABEL_8:
  v8 = v7;

  return v8;
}

- (id)tokenize:(id)tokenize
{
  v3 = [(_EARTokenizer *)self->_tokenizer tokenize:tokenize];

  return v3;
}

- (id)munge:(id)munge
{
  v31[16] = *MEMORY[0x1E69E9840];
  memset(&v23, 0, sizeof(v23));
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = munge;
  v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = *v27;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v7 = v6;
        if (v6)
        {
          [v6 ear_toString];
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v25 = 0;
        }

        end = v23.__end_;
        if (v23.__end_ >= v23.__end_cap_.__value_)
        {
          v10 = 0xAAAAAAAAAAAAAAABLL * ((v23.__end_ - v23.__begin_) >> 3);
          v11 = v10 + 1;
          if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v23.__end_cap_.__value_ - v23.__begin_) >> 3) > v11)
          {
            v11 = 0x5555555555555556 * ((v23.__end_cap_.__value_ - v23.__begin_) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v23.__end_cap_.__value_ - v23.__begin_) >> 3) >= 0x555555555555555)
          {
            v12 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v12 = v11;
          }

          v30.__end_cap_.__value_ = &v23;
          if (v12)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v23, v12);
          }

          v13 = 8 * ((v23.__end_ - v23.__begin_) >> 3);
          v14 = *__p;
          *(v13 + 16) = v25;
          *v13 = v14;
          __p[1] = 0;
          v25 = 0;
          __p[0] = 0;
          v15 = (24 * v10 + 24);
          v16 = (24 * v10 - (v23.__end_ - v23.__begin_));
          memcpy((v13 - (v23.__end_ - v23.__begin_)), v23.__begin_, v23.__end_ - v23.__begin_);
          begin = v23.__begin_;
          value = v23.__end_cap_.__value_;
          v23.__begin_ = v16;
          v23.__end_ = v15;
          v23.__end_cap_.__value_ = 0;
          v30.__end_ = begin;
          v30.__end_cap_.__value_ = value;
          v30.__first_ = begin;
          v30.__begin_ = begin;
          std::__split_buffer<std::string>::~__split_buffer(&v30);
          v23.__end_ = v15;
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v9 = *__p;
          v23.__end_->__r_.__value_.__r.__words[2] = v25;
          *&end->__r_.__value_.__l.__data_ = v9;
          v23.__end_ = end + 1;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v3);
  }

  quasar::Munger::munge(self->_munger.__ptr_, &v23, 0, 0);
  v19 = EARHelpers::VectorToArray<std::string>(&v23);
  v31[0] = &v23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v31);

  return v19;
}

@end