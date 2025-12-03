@interface _EARTransformUtil
+ (id)hatToQsrString:(id)string;
+ (id)hatToQsrStrings:(id)strings;
@end

@implementation _EARTransformUtil

+ (id)hatToQsrString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    stringCopy = [stringCopy ear_toString];
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  __p = 0;
  v10 = 0;
  v11 = 0;
  v5 = quasar::QsrText::SingletonInstance(stringCopy);
  if (quasar::QsrText::hatToQsrToken(v5, &v12, &__p))
  {
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{p_p, __p, v10, v11, v12, v13, v14}];
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }

  return v7;
}

+ (id)hatToQsrStrings:(id)strings
{
  v34[16] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = strings;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v3)
  {
    v4 = *v30;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * i);
        v7 = v6;
        if (v6)
        {
          [v6 ear_toString];
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v28 = 0;
        }

        v8 = v25;
        if (v25 >= v26)
        {
          v10 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3);
          v11 = v10 + 1;
          if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v26 - v24) >> 3) > v11)
          {
            v11 = 0x5555555555555556 * ((v26 - v24) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v26 - v24) >> 3) >= 0x555555555555555)
          {
            v12 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v12 = v11;
          }

          v33.__end_cap_.__value_ = &v24;
          if (v12)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v24, v12);
          }

          v13 = 8 * ((v25 - v24) >> 3);
          v14 = *__p;
          *(v13 + 16) = v28;
          *v13 = v14;
          __p[1] = 0;
          v28 = 0;
          __p[0] = 0;
          v15 = 24 * v10 + 24;
          v16 = (24 * v10 - (v25 - v24));
          memcpy((v13 - (v25 - v24)), v24, v25 - v24);
          v17 = v24;
          v18 = v26;
          v24 = v16;
          v25 = v15;
          v26 = 0;
          v33.__end_ = v17;
          v33.__end_cap_.__value_ = v18;
          v33.__first_ = v17;
          v33.__begin_ = v17;
          std::__split_buffer<std::string>::~__split_buffer(&v33);
          v25 = v15;
          if (SHIBYTE(v28) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v9 = *__p;
          *(v25 + 2) = v28;
          *v8 = v9;
          v25 = v8 + 24;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v3);
  }

  memset(v34, 0, 24);
  v20 = quasar::QsrText::SingletonInstance(v19);
  if (quasar::QsrText::hatToQsrTokens(v20, &v24, v34, 0))
  {
    EARHelpers::VectorToArray<std::string>(v34);
  }

  else
  {
    [MEMORY[0x1E695DEC8] array];
  }
  v21 = ;
  *&v29 = v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
  v34[0] = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v34);

  return v21;
}

@end