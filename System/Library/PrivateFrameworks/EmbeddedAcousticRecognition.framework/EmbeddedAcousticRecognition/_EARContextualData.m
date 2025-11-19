@interface _EARContextualData
+ (void)initialize;
- (BOOL)addNamedEntity:(id)a3 metadata:(id)a4;
- (BOOL)containsEntity;
- (BOOL)hasVisualContext;
- (_EARContextualData)initWithConfiguration:(id)a3 overrides:(id)a4;
- (id).cxx_construct;
- (id)metrics;
- (map<std::string,)getWords;
- (unordered_map<std::string,)getTemplateToAverageCost;
- (unordered_map<std::string,)getTemplateToDeviationCost;
- (void)iterNamedEntitySourceWithApplication:(id)a3 block:(id)a4;
- (void)iterNamedEntitySourceWithApplication:(id)a3 task:(id)a4 block:(id)a5;
- (void)iterRankedContactSourceWithApplication:(id)a3 block:(id)a4;
- (void)iterRankedContactSourceWithApplication:(id)a3 task:(id)a4 block:(id)a5;
@end

@implementation _EARContextualData

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARContextualData)initWithConfiguration:(id)a3 overrides:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = _EARContextualData;
  v8 = [(_EARContextualData *)&v31 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 fileExistsAtPath:v6];

    if (v10)
    {
      *&v14 = 0;
      *(&v14 + 1) = &v14;
      *&v15 = 0x5812000000;
      *(&v15 + 1) = __Block_byref_object_copy__8;
      *&v16 = __Block_byref_object_dispose__8;
      *(&v16 + 1) = &unk_1B5CADD23;
      v17 = 0u;
      v18 = 0u;
      LODWORD(v19) = 1065353216;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54___EARContextualData_initWithConfiguration_overrides___block_invoke;
      v13[3] = &unk_1E7C1AA50;
      v13[4] = &v14;
      [v7 enumerateKeysAndObjectsUsingBlock:v13];
      if (v6)
      {
        [v6 ear_toString];
      }

      operator new();
    }

    if (quasar::gLogLevel >= 4)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Contextual data: configuration file does not exist", 50);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v14);
    }

    v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)addNamedEntity:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v46 = v6;
  EARHelpers::truncateFromFirstNull(&v46);
  v8 = v46;

  v9 = [v7 valueForKey:@"category"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 valueForKey:@"category"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 valueForKey:@"language"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v7 valueForKey:@"language"];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 valueForKey:@"score"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v7 valueForKey:@"score"];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v7 valueForKey:@"sourceFramework"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v7 valueForKey:@"sourceFramework"];
  }

  else
  {
    v16 = 0;
  }

  if ([v8 length] && v16)
  {
    v27 = 0;
    v28 = 0;
    *__p = 0u;
    *v22 = 0u;
    v23 = 0u;
    *v24 = 0u;
    memset(v25, 0, sizeof(v25));
    v26 = 0;
    if ([v16 intValue] == 1)
    {
      if (v10 && [v12 length])
      {
        if (v8)
        {
          [v8 ear_toString];
        }

        else
        {
          v29 = 0uLL;
          *&v30 = 0;
        }

        if (SHIBYTE(v22[0]) < 0)
        {
          operator delete(__p[0]);
        }

        v26 = [v10 intValue];
        if (v12)
        {
          [v12 ear_toString];
        }

        else
        {
          v29 = 0uLL;
          *&v30 = 0;
        }

        if (SHIBYTE(v25[3]) < 0)
        {
          operator delete(v25[1]);
        }

        *&v25[1] = v29;
        v25[3] = v30;
        [v14 doubleValue];
        v27 = v19;
        v18 = 1;
LABEL_49:
        v28 = v18;
        v17 = quasar::ContextualData::addNamedEntity(self->_contextualData.__ptr_, __p);
        goto LABEL_50;
      }

      if (quasar::gLogLevel >= 4)
      {
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
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "Contextual data: missing category or language for Portrait named entity", 71);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v29);
      }
    }

    else
    {
      if ([v16 intValue] == 2)
      {
        if (v8)
        {
          [v8 ear_toString];
        }

        else
        {
          v29 = 0uLL;
          *&v30 = 0;
        }

        if (SHIBYTE(v22[0]) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v29;
        v22[0] = v30;
        v18 = 2;
        goto LABEL_49;
      }

      if ([v16 intValue] == 3)
      {
        if (v8)
        {
          [v8 ear_toString];
        }

        else
        {
          v29 = 0uLL;
          *&v30 = 0;
        }

        if (SHIBYTE(v22[0]) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v29;
        v22[0] = v30;
        v18 = 3;
        goto LABEL_49;
      }
    }

    v17 = 0;
LABEL_50:
    if (SHIBYTE(v25[3]) < 0)
    {
      operator delete(v25[1]);
    }

    if (SHIBYTE(v25[0]) < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[1]);
    }

    if (SHIBYTE(v22[0]) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_58;
  }

  if (quasar::gLogLevel >= 4)
  {
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
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "Contextual data: invalid contextual named entity data", 53);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v29);
  }

  v17 = 0;
LABEL_58:

  return v17;
}

- (void)iterNamedEntitySourceWithApplication:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  ptr = self->_contextualData.__ptr_;
  if (v6)
  {
    [v6 ear_toString];
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Dictation");
  quasar::ContextualData::getNamedEntityQueryConfig(ptr, v17, __p, v19);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  for (i = v20; i; i = *i)
  {
    v10 = i + 2;
    v11 = objc_autoreleasePoolPush();
    if (*(i + 39) < 0)
    {
      v10 = *v10;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-*(i + 11)];
    v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-*(i + 12)];
    v7[2](v7, v12, v13, v14);

    objc_autoreleasePoolPop(v11);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v19);
}

- (void)iterNamedEntitySourceWithApplication:(id)a3 task:(id)a4 block:(id)a5
{
  v8 = a3;
  v25 = a4;
  v9 = a5;
  ptr = self->_contextualData.__ptr_;
  v24 = v8;
  if (v8)
  {
    [v8 ear_toString];
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  if (v25)
  {
    [v25 ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v27 = 0;
  }

  quasar::ContextualData::getNamedEntityQueryConfig(ptr, &v28, __p, v31);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  v11 = v32;
  if (!v32)
  {
    goto LABEL_42;
  }

  do
  {
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    quasar::toLower((v11 + 2), &v28);
    if (SHIBYTE(v30) < 0)
    {
      if (v29 == 3)
      {
        v16 = *v28 != 27745 || *(v28 + 2) != 108;
        operator delete(v28);
        if (!v16)
        {
LABEL_40:
          v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-*(v11 + 11)];
          v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-*(v11 + 12)];
          v9[2](v9, v13, v22, v23, *(v11 + 10));

          goto LABEL_41;
        }
      }

      else
      {
        operator delete(v28);
      }
    }

    else if (SHIBYTE(v30) == 3 && v28 == 27745 && BYTE2(v28) == 108)
    {
      goto LABEL_40;
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    kaldi::SplitStringToVector((v11 + 2), ",|", 1, &v28);
    v18 = v28;
    v17 = v29;
    while (v18 != v17)
    {
      if (*(v18 + 23) < 0)
      {
        if (!v18[1])
        {
          goto LABEL_38;
        }

        v19 = *v18;
LABEL_37:
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
        [v13 addObject:v20];

        goto LABEL_38;
      }

      v19 = v18;
      if (*(v18 + 23))
      {
        goto LABEL_37;
      }

LABEL_38:
      v18 += 3;
    }

    v21 = [v13 count];
    __p[0] = &v28;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    if (v21)
    {
      goto LABEL_40;
    }

LABEL_41:

    objc_autoreleasePoolPop(v12);
    v11 = *v11;
  }

  while (v11);
LABEL_42:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v31);
}

- (void)iterRankedContactSourceWithApplication:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  ptr = self->_contextualData.__ptr_;
  if (v6)
  {
    [v6 ear_toString];
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Dictation");
  quasar::ContextualData::getRankedContactQueryConfig(ptr, v16, __p, v18);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  for (i = v19; i; i = *i)
  {
    v10 = i + 2;
    v11 = objc_autoreleasePoolPush();
    if (*(i + 39) < 0)
    {
      v10 = *v10;
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0];
    v7[2](v7, v12, v13, *(i + 52));

    objc_autoreleasePoolPop(v11);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v18);
}

- (void)iterRankedContactSourceWithApplication:(id)a3 task:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  ptr = self->_contextualData.__ptr_;
  if (v8)
  {
    [v8 ear_toString];
    if (v9)
    {
LABEL_3:
      [v9 ear_toString];
      goto LABEL_6;
    }
  }

  else
  {
    v19[0] = 0;
    v19[1] = 0;
    v20 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
LABEL_6:
  quasar::ContextualData::getRankedContactQueryConfig(ptr, v19, __p, v21);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  for (i = v22; i; i = *i)
  {
    v13 = i + 2;
    v14 = objc_autoreleasePoolPush();
    if (*(i + 39) < 0)
    {
      v13 = *v13;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.0];
    (*(v10 + 2))(v10, v15, v16, *(i + 52), *(i + 10));

    objc_autoreleasePoolPop(v14);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v21);
}

- (id)metrics
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF20]);
  ptr = self->_contextualData.__ptr_;
  if (ptr)
  {
    quasar::ContextualData::getStats(ptr);
  }

  v5 = v3;

  return v5;
}

- (BOOL)containsEntity
{
  ptr = self->_contextualData.__ptr_;
  if (ptr)
  {
    LOBYTE(ptr) = quasar::ContextualData::containsWords(ptr);
  }

  return ptr;
}

- (map<std::string,)getWords
{
  result = self->_contextualData.__ptr_;
  if (result)
  {
    return quasar::ContextualData::getWords(result, retstr);
  }

  retstr->var0.var2 = 0;
  retstr->var0.var1.__left_ = 0;
  retstr->var0.var0 = &retstr->var0.var1;
  return result;
}

- (unordered_map<std::string,)getTemplateToAverageCost
{
  result = self->_contextualData.__ptr_;
  if (result)
  {
    return quasar::ContextualData::getTemplateToAverageCost(result, retstr);
  }

  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  return result;
}

- (unordered_map<std::string,)getTemplateToDeviationCost
{
  result = self->_contextualData.__ptr_;
  if (result)
  {
    return quasar::ContextualData::getTemplateToDeviationCost(result, retstr);
  }

  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  return result;
}

- (BOOL)hasVisualContext
{
  ptr = self->_contextualData.__ptr_;
  if (ptr)
  {
    LOBYTE(ptr) = quasar::ContextualData::getHasVisualContext(ptr);
  }

  return ptr;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end