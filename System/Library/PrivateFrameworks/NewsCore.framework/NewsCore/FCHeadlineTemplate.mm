@interface FCHeadlineTemplate
+ (id)_defaultBackgroundColor;
+ (id)_defaultTitleTextColor;
+ (id)_headlineTemplateWithJSON:(id)n versionNumber:(id)number URLGenerator:(id)generator;
+ (id)templateByMergingTemplate:(id)template intoTemplate:(id)intoTemplate;
- (BOOL)isEqual:(id)equal;
- (FCHeadlineTemplate)init;
- (FCHeadlineTemplate)initWithJSONDictionary:(id)dictionary versionNumber:(int64_t)number URLGenerator:(id)generator;
- (NSArray)loadableFonts;
- (id)_allThemePropertyNames;
- (unint64_t)hash;
- (void)mergeFromTemplate:(id)template;
@end

@implementation FCHeadlineTemplate

- (FCHeadlineTemplate)init
{
  integerValue = [@"2" integerValue];

  return [(FCHeadlineTemplate *)self initWithJSONDictionary:0 versionNumber:integerValue URLGenerator:0];
}

+ (id)_headlineTemplateWithJSON:(id)n versionNumber:(id)number URLGenerator:(id)generator
{
  v30 = *MEMORY[0x1E69E9840];
  nCopy = n;
  numberCopy = number;
  generatorCopy = generator;
  if ([nCopy length])
  {
    v10 = [nCopy dataUsingEncoding:4];
    v21 = 0;
    v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:0 error:&v21];
    v12 = v21;
    if (v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to deserialize JSONData template with error: %@", v12];
      *buf = 136315906;
      v23 = "+[FCHeadlineTemplate _headlineTemplateWithJSON:versionNumber:URLGenerator:]";
      v24 = 2080;
      v25 = "FCHeadlineTemplate.m";
      v26 = 1024;
      v27 = 84;
      v28 = 2114;
      v29 = v20;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v13 = [v11 objectForKeyedSubscript:numberCopy];
    v14 = v13;
    if (v13 && ([v13 objectForKeyedSubscript:@"templateType"], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", @"Image On Top"), v15, v16))
    {
      v17 = -[FCImageOnTopPremiumHeadlineTemplate initWithJSONDictionary:versionNumber:URLGenerator:]([FCImageOnTopPremiumHeadlineTemplate alloc], "initWithJSONDictionary:versionNumber:URLGenerator:", v14, [numberCopy integerValue], generatorCopy);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)templateByMergingTemplate:(id)template intoTemplate:(id)intoTemplate
{
  intoTemplateCopy = intoTemplate;
  templateCopy = template;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 mergeFromTemplate:intoTemplateCopy];

  [v7 mergeFromTemplate:templateCopy];

  return v7;
}

- (void)mergeFromTemplate:(id)template
{
  v18 = *MEMORY[0x1E69E9840];
  templateCopy = template;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _allThemePropertyNames = [templateCopy _allThemePropertyNames];
  v6 = [_allThemePropertyNames countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(_allThemePropertyNames);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        NSSelectorFromString(v10);
        if (objc_opt_respondsToSelector())
        {
          v11 = [templateCopy valueForKey:v10];
          if (v11)
          {
            [(FCHeadlineTemplate *)self setValue:v11 forKey:v10];
          }
        }
      }

      v7 = [_allThemePropertyNames countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (FCHeadlineTemplate)initWithJSONDictionary:(id)dictionary versionNumber:(int64_t)number URLGenerator:(id)generator
{
  dictionaryCopy = dictionary;
  generatorCopy = generator;
  v42.receiver = self;
  v42.super_class = FCHeadlineTemplate;
  v10 = [(FCHeadlineTemplate *)&v42 init];
  v11 = v10;
  if (dictionaryCopy && v10)
  {
    if (number == 2)
    {
      v22 = [dictionaryCopy objectForKeyedSubscript:@"titleFontAttributes"];
      v23 = [FCTextInfo textInfoFromJSONValues:v22 URLGenerator:generatorCopy];
      headlineTitleTextInfo = v11->_headlineTitleTextInfo;
      v11->_headlineTitleTextInfo = v23;

      v25 = [dictionaryCopy objectForKeyedSubscript:@"bylineFontAttributes"];
      v26 = [FCTextInfo textInfoFromJSONValues:v25 URLGenerator:generatorCopy];
      headlineBylineTextInfo = v11->_headlineBylineTextInfo;
      v11->_headlineBylineTextInfo = v26;

      v28 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
      if (v28)
      {
        [FCColor colorWithHexString:v28];
      }

      else
      {
        [objc_opt_class() _defaultBackgroundColor];
      }
      v29 = ;
      backgroundColor = v11->_backgroundColor;
      v11->_backgroundColor = v29;

      goto LABEL_16;
    }

    if (number == 1)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __72__FCHeadlineTemplate_initWithJSONDictionary_versionNumber_URLGenerator___block_invoke;
      aBlock[3] = &unk_1E7C428D0;
      v12 = dictionaryCopy;
      v40 = v12;
      v41 = generatorCopy;
      v13 = _Block_copy(aBlock);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __72__FCHeadlineTemplate_initWithJSONDictionary_versionNumber_URLGenerator___block_invoke_2;
      v37[3] = &unk_1E7C428F8;
      v14 = v12;
      v38 = v14;
      v15 = _Block_copy(v37);
      v16 = objc_alloc_init(FCTextInfo);
      v17 = v11->_headlineTitleTextInfo;
      v11->_headlineTitleTextInfo = v16;

      v18 = [v14 objectForKeyedSubscript:@"titleFontName"];
      v19 = v13[2](v13, @"titleFontResourceID");
      v20 = [FCLoadableFont loadableFontWithName:v18 url:v19];
      [(FCTextInfo *)v11->_headlineTitleTextInfo setFont:v20];

      v21 = v15[2](v15, @"titleColor");
      if (v21)
      {
        [(FCTextInfo *)v11->_headlineTitleTextInfo setColor:v21];
      }

      else
      {
        v30 = +[FCColor blackColor];
        [(FCTextInfo *)v11->_headlineTitleTextInfo setColor:v30];
      }

      v31 = v15[2](v15, @"backgroundColor");
      v32 = v31;
      if (v31)
      {
        _defaultBackgroundColor = v31;
      }

      else
      {
        _defaultBackgroundColor = [objc_opt_class() _defaultBackgroundColor];
      }

      v34 = v11->_backgroundColor;
      v11->_backgroundColor = _defaultBackgroundColor;

      v28 = v40;
LABEL_16:
    }
  }

  return v11;
}

id __72__FCHeadlineTemplate_initWithJSONDictionary_versionNumber_URLGenerator___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v3)
  {
    v4 = [*(a1 + 40) generateURLForResourceID:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __72__FCHeadlineTemplate_initWithJSONDictionary_versionNumber_URLGenerator___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if ([v2 length])
  {
    v3 = [FCColor colorWithHexString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)loadableFonts
{
  array = [MEMORY[0x1E695DF70] array];
  headlineTitleTextInfo = [(FCHeadlineTemplate *)self headlineTitleTextInfo];
  font = [headlineTitleTextInfo font];

  if (font)
  {
    headlineTitleTextInfo2 = [(FCHeadlineTemplate *)self headlineTitleTextInfo];
    font2 = [headlineTitleTextInfo2 font];
    [array addObject:font2];
  }

  headlineBylineTextInfo = [(FCHeadlineTemplate *)self headlineBylineTextInfo];
  font3 = [headlineBylineTextInfo font];

  if (font3)
  {
    headlineBylineTextInfo2 = [(FCHeadlineTemplate *)self headlineBylineTextInfo];
    font4 = [headlineBylineTextInfo2 font];
    [array addObject:font4];
  }

  headlineExcerptTextInfo = [(FCHeadlineTemplate *)self headlineExcerptTextInfo];
  font5 = [headlineExcerptTextInfo font];

  if (font5)
  {
    headlineExcerptTextInfo2 = [(FCHeadlineTemplate *)self headlineExcerptTextInfo];
    font6 = [headlineExcerptTextInfo2 font];
    [array addObject:font6];
  }

  return array;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (self == equalCopy)
  {
    v8 = 1;
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (equalCopy && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v5 = equalCopy;
      *(v14 + 24) = 1;
      _allThemePropertyNames = [(FCHeadlineTemplate *)self _allThemePropertyNames];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __30__FCHeadlineTemplate_isEqual___block_invoke;
      v10[3] = &unk_1E7C42920;
      v10[4] = self;
      v7 = v5;
      v11 = v7;
      v12 = &v13;
      [_allThemePropertyNames enumerateObjectsUsingBlock:v10];
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);

  return v8 & 1;
}

void __30__FCHeadlineTemplate_isEqual___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 valueForKey:v7];
  v9 = [*(a1 + 40) valueForKey:v7];

  LOBYTE(v7) = [v8 isEqual:v9];
  if ((v7 & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (unint64_t)hash
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _allThemePropertyNames = [(FCHeadlineTemplate *)self _allThemePropertyNames];
  v4 = [_allThemePropertyNames countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(_allThemePropertyNames);
        }

        v9 = [(FCHeadlineTemplate *)self valueForKey:*(*(&v12 + 1) + 8 * i)];
        v6 ^= [v9 hash];
      }

      v5 = [_allThemePropertyNames countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)_allThemePropertyNames
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(sel_headlineTitleTextInfo);
  v9[0] = v2;
  v3 = NSStringFromSelector(sel_headlineExcerptTextInfo);
  v9[1] = v3;
  v4 = NSStringFromSelector(sel_backgroundColor);
  v9[2] = v4;
  v5 = NSStringFromSelector(sel_headlineBylineTextInfo);
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_defaultTitleTextColor
{
  if (qword_1EDB27620 != -1)
  {
    dispatch_once(&qword_1EDB27620, &__block_literal_global_113);
  }

  v3 = _MergedGlobals_179;

  return v3;
}

uint64_t __44__FCHeadlineTemplate__defaultTitleTextColor__block_invoke()
{
  v0 = +[FCColor blackColor];
  v1 = _MergedGlobals_179;
  _MergedGlobals_179 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_defaultBackgroundColor
{
  if (qword_1EDB27630 != -1)
  {
    dispatch_once(&qword_1EDB27630, &__block_literal_global_62_2);
  }

  v3 = qword_1EDB27628;

  return v3;
}

uint64_t __45__FCHeadlineTemplate__defaultBackgroundColor__block_invoke()
{
  v0 = [FCColor colorWithRed:0.961 green:0.957 blue:0.941 alpha:1.0];
  v1 = qword_1EDB27628;
  qword_1EDB27628 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end