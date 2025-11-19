@interface NLSearchParserManager
+ (NLSearchParserManager)defaultManager;
+ (id)availableLanguages;
- (NLSearchParserManager)initWithLocale:(id)a3 context:(id)a4 options:(id)a5;
- (NLSearchParserManager)initWithOptions:(id)a3;
- (id)tokenizeAndEnumerateAttributedParsesForQuery:(id)a3 options:(id)a4 withBlock:(id)a5;
- (void)dealloc;
- (void)enumerateAttributedParsesForQuery:(id)a3 options:(id)a4 withBlock:(id)a5;
- (void)enumerateDateRangeAttributedParseForOptions:(id)a3 withBlock:(id)a4;
- (void)enumerateSearchSuggestions:(id)a3 options:(id)a4 withBlock:(id)a5;
@end

@implementation NLSearchParserManager

+ (NLSearchParserManager)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[NLSearchParserManager defaultManager];
  }

  return defaultManager___DefaultManager;
}

NLSearchParserManager *__39__NLSearchParserManager_defaultManager__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"contextIdentifier";
  v3[0] = @"com.apple.NLP";
  result = -[NLSearchParserManager initWithOptions:]([NLSearchParserManager alloc], "initWithOptions:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1]);
  defaultManager___DefaultManager = result;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)availableLanguages
{
  v2 = NLSearchParserCopyAvailableLanguages();

  return v2;
}

- (NLSearchParserManager)initWithOptions:(id)a3
{
  v4.receiver = self;
  v4.super_class = NLSearchParserManager;
  if ([(NLSearchParserManager *)&v4 init])
  {
    NLSearchParserCreate();
  }

  return 0;
}

- (NLSearchParserManager)initWithLocale:(id)a3 context:(id)a4 options:(id)a5
{
  v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a5];
  v9 = v8;
  if (a3)
  {
    [v8 setObject:a3 forKey:@"locale"];
  }

  if (a4)
  {
    [v9 setObject:a4 forKey:@"contextIdentifier"];
  }

  return [(NLSearchParserManager *)self initWithOptions:v9];
}

- (void)enumerateDateRangeAttributedParseForOptions:(id)a3 withBlock:(id)a4
{
  if ([a3 valueForKey:@"startDateQuery"] && objc_msgSend(a3, "valueForKey:", @"startDateQuery") && objc_msgSend(a3, "valueForKey:", @"endDateQuery"))
  {
    if ([a3 valueForKey:@"endDateQuery"])
    {
      v8[0] = 0;
      v8[1] = v8;
      v8[2] = 0x2020000000;
      v9 = 0;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __79__NLSearchParserManager_enumerateDateRangeAttributedParseForOptions_withBlock___block_invoke;
      v7[3] = &unk_278740700;
      v7[4] = self;
      v7[5] = a3;
      v7[6] = a4;
      v7[7] = v8;
      [(NLSearchParserManager *)self enumerateSearchSuggestions:0 options:a3 withBlock:v7];
      _Block_object_dispose(v8, 8);
    }
  }
}

void __79__NLSearchParserManager_enumerateDateRangeAttributedParseForOptions_withBlock___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3052000000;
  v11[3] = __Block_byref_object_copy__17;
  v11[4] = __Block_byref_object_dispose__17;
  v11[5] = [MEMORY[0x277CCAB68] stringWithString:a2];
  v6 = a1[4];
  v7 = a1[5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__NLSearchParserManager_enumerateDateRangeAttributedParseForOptions_withBlock___block_invoke_87;
  v10[3] = &unk_2787406D8;
  v8 = a1[6];
  v9 = a1[7];
  v10[4] = a2;
  v10[5] = v8;
  v10[6] = v11;
  v10[7] = v9;
  [v6 enumerateAttributedParsesForQuery:a2 options:v7 withBlock:v10];
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  _Block_object_dispose(v11, 8);
}

void __79__NLSearchParserManager_enumerateDateRangeAttributedParseForOptions_withBlock___block_invoke_87(void *a1, void *a2, _BYTE *a3)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6 = [a2 length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__NLSearchParserManager_enumerateDateRangeAttributedParseForOptions_withBlock___block_invoke_2;
  v8[3] = &unk_2787406B0;
  v8[4] = a1[4];
  v8[5] = v9;
  v8[6] = a1[6];
  v8[7] = a3;
  [a2 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v8}];
  if (![objc_msgSend(*(*(a1[6] + 8) + 40) stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")), "length"}])
  {
    v7 = *(a1[7] + 8);
    (*(a1[5] + 16))();
    if (*(*(a1[7] + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  _Block_object_dispose(v9, 8);
}

uint64_t __79__NLSearchParserManager_enumerateDateRangeAttributedParseForOptions_withBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 count];
  if (result)
  {
    v11 = [a2 objectForKey:@"dateType"];
    if ([v11 intValue] == 41 || (result = objc_msgSend(v11, "intValue"), result == 42) || (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      result = [*(*(*(a1 + 48) + 8) + 40) replaceOccurrencesOfString:objc_msgSend(*(a1 + 32) withString:"substringWithRange:" options:a3 range:{a4), &stru_284010170, 0, 0, objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length")}];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  *a5 = **(a1 + 56);
  return result;
}

- (void)enumerateAttributedParsesForQuery:(id)a3 options:(id)a4 withBlock:(id)a5
{
  v9 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if ([a4 objectForKeyedSubscript:@"locale"])
    {
      NLSearchParserSetLocale(self->_parser, [a4 objectForKeyedSubscript:@"locale"]);
    }

    if ([a4 objectForKeyedSubscript:@"date"])
    {
      NLSearchParserSetDate(self->_parser, [a4 objectForKeyedSubscript:@"date"]);
    }

    if ([a4 objectForKeyedSubscript:@"customResourceDirectory"])
    {
      NLSearchParserSetCustomResourceDirectory(self->_parser, [a4 objectForKeyedSubscript:@"customResourceDirectory"]);
    }

    if ([objc_msgSend(a4 objectForKeyedSubscript:{@"includeFutureDates", "BOOLValue"}])
    {
      NLSearchParserSetFutureDates(self->_parser, 1);
    }
  }

  NLSearchParserSetString(self->_parser, a3);
  parser = self->_parser;
  NLSearchParserCopyParseWithOptions();
}

uint64_t __77__NLSearchParserManager_enumerateAttributedParsesForQuery_options_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 valueForKey:@"kNLDateComponents"];
  v8 = [a2 valueForKey:@"kNLStartDateComponents"];
  v9 = [a2 valueForKey:@"kNLEndDateComponents"];
  v10 = [a2 valueForKey:@"kNLFrequencyDateComponents"];
  v11 = [a2 valueForKey:@"kNLDateType"];
  v12 = [a2 valueForKey:@"kNLDateModifier"];
  v13 = [a2 valueForKey:@"kNLDisplayDate"];
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = v14;
  if (!v13 || !(v7 | v8))
  {
    result = [v11 intValue];
    if (result != 42)
    {
      return result;
    }

    v18 = @"dateType";
    v19 = v15;
    v20 = v11;
    goto LABEL_23;
  }

  [v14 setObject:v13 forKey:@"displayDateString"];
  if (v7)
  {
    v7 = dateComponentsForDate(v7);
  }

  if (v8)
  {
    v8 = dateComponentsForDate(v8);
  }

  if (v9)
  {
    v16 = dateComponentsForDate(v9);
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_29:
    v17 = 0;
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v16 = 0;
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_9:
  v17 = dateComponentsForDate(v10);
  if (v8)
  {
LABEL_10:
    [v15 setObject:v8 forKey:@"startDateComponents"];
  }

LABEL_11:
  if (v16)
  {
    [v15 setObject:v16 forKey:@"endDateComponents"];
  }

  if (v7)
  {
    [v15 setObject:v7 forKey:@"dateComponents"];
  }

  if (v10)
  {
    [v15 setObject:v17 forKey:@"frequencyDateComponents"];
  }

  if (v11)
  {
    [v15 setObject:v11 forKey:@"dateType"];
  }

  if (!v12)
  {
    goto LABEL_24;
  }

  v18 = @"dateModifier";
  v19 = v15;
  v20 = v12;
LABEL_23:
  [v19 setObject:v20 forKey:v18];
LABEL_24:
  v22 = *(*(*(a1 + 32) + 8) + 40);

  return [v22 setAttributes:v15 range:{a3, a4}];
}

- (id)tokenizeAndEnumerateAttributedParsesForQuery:(id)a3 options:(id)a4 withBlock:(id)a5
{
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a3 && [a3 length])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__NLSearchParserManager_tokenizeAndEnumerateAttributedParsesForQuery_options_withBlock___block_invoke_2;
    v11[3] = &unk_278740750;
    v11[4] = a5;
    [(NLSearchParserManager *)self enumerateAttributedParsesForQuery:a3 options:a4 withBlock:v11];
  }

  else if (a4 && [a4 objectForKey:@"startDateQuery"])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__NLSearchParserManager_tokenizeAndEnumerateAttributedParsesForQuery_options_withBlock___block_invoke;
    v12[3] = &unk_278740750;
    v12[4] = a5;
    [(NLSearchParserManager *)self enumerateDateRangeAttributedParseForOptions:a4 withBlock:v12];
  }

  return v9;
}

- (void)enumerateSearchSuggestions:(id)a3 options:(id)a4 withBlock:(id)a5
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  parser = self->_parser;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__NLSearchParserManager_enumerateSearchSuggestions_options_withBlock___block_invoke;
  v6[3] = &unk_278740778;
  v6[4] = a5;
  v6[5] = v7;
  NLSearchParserEnumerateSuggestions(parser, a3, a4, v6);
  _Block_object_dispose(v7, 8);
}

uint64_t __70__NLSearchParserManager_enumerateSearchSuggestions_options_withBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)dealloc
{
  parser = self->_parser;
  if (parser)
  {
    CFRelease(parser);
  }

  v4.receiver = self;
  v4.super_class = NLSearchParserManager;
  [(NLSearchParserManager *)&v4 dealloc];
}

@end