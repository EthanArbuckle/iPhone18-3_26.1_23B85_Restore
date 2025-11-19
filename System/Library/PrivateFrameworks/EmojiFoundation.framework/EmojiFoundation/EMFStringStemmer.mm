@interface EMFStringStemmer
+ (id)stemmerLanguageNameForLocale:(id)a3;
+ (id)supportedLanguageNames;
+ (sb_stemmer)_createSnowballStemmerForLocale:(id)a3;
+ (unsigned)supportsLocale:(id)a3;
- (EMFStringStemmer)initWithLocale:(id)a3;
- (id)stemToken:(id)a3;
- (id)stemTokens:(id)a3;
- (void)dealloc;
@end

@implementation EMFStringStemmer

+ (unsigned)supportsLocale:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() stemmerLanguageNameForLocale:v3];
  v5 = v4;
  if (v4 && (v6 = [v4 cStringUsingEncoding:1]) != 0 && (v7 = v6, v8 = sb_stemmer_list(), (v9 = *v8) != 0))
  {
    v10 = (v8 + 1);
    do
    {
      v11 = strcmp(v9, v7);
      v12 = v11 == 0;
      if (!v11)
      {
        break;
      }

      v13 = *v10++;
      v9 = v13;
    }

    while (v13);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)supportedLanguageNames
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = sb_stemmer_list();
  if (*v3)
  {
    v4 = v3 + 1;
    do
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithCString:? encoding:?];
      [v2 addObject:v5];
    }

    while (*v4++);
  }

  v7 = [v2 copy];

  return v7;
}

+ (id)stemmerLanguageNameForLocale:(id)a3
{
  v3 = MEMORY[0x1E695DF58];
  v4 = a3;
  v5 = [v3 localeWithLocaleIdentifier:@"en"];
  v6 = [v4 languageCode];

  v7 = [v5 localizedStringForLanguageCode:v6];
  v8 = [v7 lowercaseString];

  v9 = [v8 componentsSeparatedByString:@" "];
  v10 = [v9 firstObject];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;

  return v13;
}

- (EMFStringStemmer)initWithLocale:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = EMFStringStemmer;
  v6 = [(EMFStringStemmer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_encoding = 4;
    objc_storeStrong(&v6->_locale, a3);
    v7->_stemmer = [objc_opt_class() _createSnowballStemmerForLocale:v5];
    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    stemmerLock = v7->_stemmerLock;
    v7->_stemmerLock = v8;
  }

  return v7;
}

- (void)dealloc
{
  stemmer = self->_stemmer;
  if (stemmer)
  {
    sb_stemmer_delete(stemmer);
  }

  v4.receiver = self;
  v4.super_class = EMFStringStemmer;
  [(EMFStringStemmer *)&v4 dealloc];
}

- (id)stemToken:(id)a3
{
  if (self->_stemmer)
  {
    v4 = [a3 cStringUsingEncoding:self->_encoding];
    [(NSLock *)self->_stemmerLock lock];
    v5 = strlen(v4);
    v6 = sb_stemmer_stem(self->_stemmer, v4, v5);
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v6 length:sb_stemmer_length(self->_stemmer) encoding:self->_encoding];
    [(NSLock *)self->_stemmerLock unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)stemTokens:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(EMFStringStemmer *)self stemToken:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (sb_stemmer)_createSnowballStemmerForLocale:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() stemmerLanguageNameForLocale:v3];

  v5 = sb_stemmer_new([v4 cStringUsingEncoding:1], "UTF_8");
  return v5;
}

@end