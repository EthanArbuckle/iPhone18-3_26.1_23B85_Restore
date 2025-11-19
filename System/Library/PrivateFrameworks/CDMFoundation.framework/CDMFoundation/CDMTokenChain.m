@interface CDMTokenChain
+ (id)convertCDMTokenChainToProtoTokenChain:(id)a3;
- (CDMTokenChain)initWithProtoTokenChain:(id)a3;
- (CDMTokenChain)initWithString:(id)a3 locale:(id)a4;
- (CDMTokenChain)initWithString:(id)a3 locale:(id)a4 tokens:(id)a5;
- (id)cleanStringFromToken:(int64_t)a3 toToken:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dropInsignificantTokens;
- (id)dropWhitespaceTokens;
- (id)extractTokens;
- (id)normalizedString;
- (int)tokenIndexFromCharacterIndex:(int64_t)a3;
- (unsigned)nonWhiteSpaceCountFromToken:(int64_t)a3 toToken:(int64_t)a4;
- (void)addToken:(id)a3;
@end

@implementation CDMTokenChain

- (id)normalizedString
{
  v3 = [(NSMutableArray *)self->_tokens count]- 1;

  return [(CDMTokenChain *)self cleanStringFromToken:0 toToken:v3];
}

- (id)extractTokens
{
  v37 = *MEMORY[0x1E69E9840];
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_tokens;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v3)
  {
    v28 = *v33;
    do
    {
      v4 = 0;
      v29 = v3;
      do
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * v4);
        memset(&__p, 0, sizeof(__p));
        if (([v5 isWhiteSpace] & 1) == 0)
        {
          v6 = [v5 cleanValue];
          v7 = v6;
          memset(&v30, 0, sizeof(v30));
          if (v6)
          {
            Length = CFStringGetLength(v6);
            std::basic_string<char16_t>::resize(&v30, Length, v9);
            if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v10 = &v30;
            }

            else
            {
              v10 = v30.__r_.__value_.__r.__words[0];
            }

            v39.location = 0;
            v39.length = Length;
            CFStringGetCharacters(v7, v39, v10);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v30;
          *(&v30.__r_.__value_.__s + 23) = 0;
          v30.__r_.__value_.__s.__data_[0] = 0;
        }

        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v13 = [CDMToken alloc];
          v14 = [v5 value];
          v15 = [v5 begin];
          v16 = [v5 end];
          v17 = [v5 isSignificant];
          v18 = [v5 isWhiteSpace];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v20 = __p.__r_.__value_.__l.__size_;
          }

          v21 = [MEMORY[0x1E696AEC0] stringWithCharacters:p_p length:v20];
          v22 = -[CDMToken initWithValue:begin:end:significant:whitespace:cleanValue:tokenIndex:nonWhitespaceTokenIndex:](v13, "initWithValue:begin:end:significant:whitespace:cleanValue:tokenIndex:nonWhitespaceTokenIndex:", v14, v15, v16, v17, v18, v21, [v5 tokenIndex], objc_msgSend(v5, "nonWhitespaceTokenIndex"));

          [v27 addObject:v22];
          v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        if (v12 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ++v4;
      }

      while (v29 != v4);
      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v3);
  }

  v23 = [v27 copy];
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)dropInsignificantTokens
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(objc_opt_class()) initWithString:self->_string locale:self->_locale];
  v4 = [(NSMutableArray *)self->_tokens copy];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isSignificant])
        {
          [v3 addToken:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)dropWhitespaceTokens
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(objc_opt_class()) initWithString:self->_string locale:self->_locale];
  v4 = [(NSMutableArray *)self->_tokens copy];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isWhiteSpace] & 1) == 0)
        {
          [v3 addToken:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int)tokenIndexFromCharacterIndex:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->_characterToTokenIndexMapping objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"{ string:%@ locale:%@ tokens: [", self->_string, self->_locale];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_tokens;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) description];
        [v3 appendString:v8];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [v3 appendString:@"]}"];
  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unsigned)nonWhiteSpaceCountFromToken:(int64_t)a3 toToken:(int64_t)a4
{
  v7 = [(NSMutableArray *)self->_tokens count];
  v8 = 0;
  if ((a3 & 0x8000000000000000) == 0 && v7 > a3 && a3 < a4)
  {
    v8 = 0;
    do
    {
      if (a3 >= [(NSMutableArray *)self->_tokens count])
      {
        break;
      }

      v10 = [(NSMutableArray *)self->_tokens objectAtIndexedSubscript:a3];
      v11 = [v10 isWhiteSpace];

      v8 += v11 ^ 1;
      ++a3;
    }

    while (a4 != a3);
  }

  return v8;
}

- (id)cleanStringFromToken:(int64_t)a3 toToken:(int64_t)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD60] string];
  if ([(NSMutableArray *)self->_tokens count]> a3 && a3 <= a4)
  {
    do
    {
      if (a3 >= [(NSMutableArray *)self->_tokens count])
      {
        break;
      }

      v9 = [(NSMutableArray *)self->_tokens objectAtIndexedSubscript:a3];
      v10 = [v9 getHasCleanValues];

      if (v10)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [(NSMutableArray *)self->_tokens objectAtIndexedSubscript:a3, 0];
        v12 = [v11 cleanValues];

        v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          v14 = *v21;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v12);
              }

              [v7 appendString:*(*(&v20 + 1) + 8 * i)];
            }

            v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v13);
        }
      }

      else
      {
        v12 = [(NSMutableArray *)self->_tokens objectAtIndexedSubscript:a3];
        v16 = [v12 value];
        [v7 appendString:v16];
      }
    }

    while (a3++ != a4);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)addToken:(id)a3
{
  v10 = a3;
  [(NSMutableArray *)self->_tokens addObject:?];
  if ([v10 isWhiteSpace])
  {
    for (i = [v10 begin]; i < objc_msgSend(v10, "end"); ++i)
    {
      characterToTokenIndexMapping = self->_characterToTokenIndexMapping;
      v6 = [MEMORY[0x1E696AD98] numberWithInt:0xFFFFFFFFLL];
      [(NSMutableArray *)characterToTokenIndexMapping addObject:v6];
    }
  }

  else
  {
    for (j = [v10 begin]; j < objc_msgSend(v10, "end"); ++j)
    {
      v8 = self->_characterToTokenIndexMapping;
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "tokenIndex")}];
      [(NSMutableArray *)v8 addObject:v9];
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithString:self->_string locale:self->_locale];
  if (v4)
  {
    v5 = [(NSMutableArray *)self->_tokens copy];
    v6 = v4[1];
    v4[1] = v5;

    v7 = [(NSMutableArray *)self->_characterToTokenIndexMapping copy];
    v8 = v4[2];
    v4[2] = v7;
  }

  return v4;
}

- (CDMTokenChain)initWithProtoTokenChain:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 stringValue];
  v6 = [v4 locale];
  v7 = [(CDMTokenChain *)self initWithString:v5 locale:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v4 tokens];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [[CDMToken alloc] initWithProtoToken:*(*(&v15 + 1) + 8 * v11)];
        [(CDMTokenChain *)v7 addToken:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (CDMTokenChain)initWithString:(id)a3 locale:(id)a4 tokens:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(CDMTokenChain *)self initWithString:a3 locale:a4];
  if (v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [(CDMTokenChain *)v9 addToken:*(*(&v16 + 1) + 8 * v13++), v16];
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (CDMTokenChain)initWithString:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = CDMTokenChain;
  v8 = [(CDMTokenChain *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    string = v8->_string;
    v8->_string = v9;

    v11 = [v7 copy];
    locale = v8->_locale;
    v8->_locale = v11;

    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    tokens = v8->_tokens;
    v8->_tokens = v13;

    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    characterToTokenIndexMapping = v8->_characterToTokenIndexMapping;
    v8->_characterToTokenIndexMapping = v15;
  }

  return v8;
}

+ (id)convertCDMTokenChainToProtoTokenChain:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69D13D8]);
  if (v3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v3;
    v5 = [v3 tokens];
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v10 = objc_alloc_init(MEMORY[0x1E69D13D0]);
          [v10 setBegin:{objc_msgSend(v9, "begin")}];
          [v10 setEnd:{objc_msgSend(v9, "end")}];
          v11 = [v9 value];
          [v10 setValue:v11];

          [v10 setIsSignificant:{objc_msgSend(v9, "isSignificant")}];
          [v10 setIsWhitespace:{objc_msgSend(v9, "isWhiteSpace")}];
          v12 = [v9 cleanValues];
          v13 = [v12 copy];
          [v10 setCleanValues:v13];

          v14 = [v9 cleanValue];
          [v10 setCleanValue:v14];

          [v10 setTokenIndex:{objc_msgSend(v9, "tokenIndex")}];
          [v10 setNonWhitespaceTokenIndex:{objc_msgSend(v9, "nonWhitespaceTokenIndex")}];
          v15 = [v9 normalizedValues];
          v16 = [v15 copy];
          [v10 setNormalizedValues:v16];

          [v4 addTokens:v10];
        }

        v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);
    }

    v17 = [v21 locale];
    [v4 setLocale:v17];

    v18 = [v21 string];
    [v4 setStringValue:v18];

    v3 = v21;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

@end