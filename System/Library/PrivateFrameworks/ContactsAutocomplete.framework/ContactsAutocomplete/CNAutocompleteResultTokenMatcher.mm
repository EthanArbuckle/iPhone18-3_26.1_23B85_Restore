@interface CNAutocompleteResultTokenMatcher
+ (id)indexTokensFromPhoneNumber:(id)a3;
+ (id)normalizePhoneNumber:(id)a3 countryCode:(id)a4;
+ (id)searchTokensFromString:(id)a3;
+ (id)tokenizePhoneNumber:(id)a3;
- (BOOL)evaluateResult:(id)a3;
- (BOOL)evaluateSingleResult:(id)a3;
- (BOOL)evaluateTopLevelGroupResult:(id)a3;
- (CNAutocompleteResultTokenMatcher)initWithSearchString:(id)a3;
- (CNAutocompleteResultTokenMatcher)initWithSearchString:(id)a3 countryCode:(id)a4;
- (id)filterAdapter;
- (id)nameTokensForResult:(id)a3;
- (id)representationsOfPhoneNumber:(id)a3;
- (id)tokensForResultName:(id)a3;
- (id)tokensForResultValue:(id)a3;
@end

@implementation CNAutocompleteResultTokenMatcher

- (CNAutocompleteResultTokenMatcher)initWithSearchString:(id)a3
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  v6 = [v4 currentLocale];
  v7 = [v6 objectForKey:*MEMORY[0x277CBE690]];

  v8 = [(CNAutocompleteResultTokenMatcher *)self initWithSearchString:v5 countryCode:v7];
  return v8;
}

- (CNAutocompleteResultTokenMatcher)initWithSearchString:(id)a3 countryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNAutocompleteResultTokenMatcher;
  v8 = [(CNAutocompleteResultTokenMatcher *)&v15 init];
  if (v8)
  {
    v9 = [objc_opt_class() searchTokensFromString:v6];
    tokens = v8->_tokens;
    v8->_tokens = v9;

    v11 = [v7 copy];
    countryCode = v8->_countryCode;
    v8->_countryCode = v11;

    v13 = v8;
  }

  return v8;
}

+ (id)searchTokensFromString:(id)a3
{
  v3 = [CNAutocompleteInputStringTokenizer tokensFromString:a3];
  v4 = [v3 _cn_map:&__block_literal_global_24];

  return v4;
}

- (id)filterAdapter
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__CNAutocompleteResultTokenMatcher_filterAdapter__block_invoke;
  v4[3] = &unk_2781C4AB0;
  v4[4] = self;
  v2 = [v4 copy];

  return v2;
}

- (BOOL)evaluateResult:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CNAutocompleteResultTokenMatcher *)self evaluateSingleResult:v4]|| [(CNAutocompleteResultTokenMatcher *)self evaluateTopLevelGroupResult:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)evaluateSingleResult:(id)a3
{
  v3 = self;
  v4 = [(CNAutocompleteResultTokenMatcher *)self nameTokensForResult:a3];
  LOBYTE(v3) = [CNAutocompleteTokenMatcher doSearchTokens:v3->_tokens matchNameTokens:v4];

  return v3;
}

- (BOOL)evaluateTopLevelGroupResult:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 resultType] == 1)
  {
    v12 = 0;
    v5 = [v4 members:&v12];
    v6 = v12;
    if (v5)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __64__CNAutocompleteResultTokenMatcher_evaluateTopLevelGroupResult___block_invoke;
      v11[3] = &unk_2781C4AB0;
      v11[4] = self;
      v7 = [v5 _cn_any:v11];
    }

    else
    {
      v8 = CNALoggingContextDebug();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = v6;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Error: %@ a result %@ has no members", buf, 0x16u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)nameTokensForResult:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v7 = [(CNAutocompleteResultTokenMatcher *)self tokensForResultName:v5];
  [v6 addObject:v7];

  v8 = [v5 value];

  v9 = [(CNAutocompleteResultTokenMatcher *)self tokensForResultValue:v8];
  [v6 addObject:v9];

  v10 = [v6 _cn_flatten];
  v11 = [v10 _cn_map:&__block_literal_global_24];

  return v11;
}

- (id)tokensForResultName:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v6 = [v4 nameComponents];
  v7 = [v6 firstName];
  [v5 _cn_addNonNilObject:v7];

  v8 = [v4 nameComponents];
  v9 = [v8 lastName];
  [v5 _cn_addNonNilObject:v9];

  v10 = [v4 nameComponents];
  v11 = [v10 nickname];
  [v5 _cn_addNonNilObject:v11];

  v12 = [v4 nameComponents];
  v13 = [v12 nameSuffix];
  [v5 _cn_addNonNilObject:v13];

  v14 = [v4 displayName];

  [v5 _cn_addNonNilObject:v14];
  v15 = [v5 _cn_flatMap:&__block_literal_global_9_0];

  return v15;
}

- (id)tokensForResultValue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [v4 addressType];
    v7 = [v4 address];
    if (v6 == 2)
    {
      v8 = [(CNAutocompleteResultTokenMatcher *)self representationsOfPhoneNumber:v7];
      [v5 addObjectsFromArray:v8];
    }

    else
    {
      [v5 _cn_addNonNilObject:v7];
    }
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (id)representationsOfPhoneNumber:(id)a3
{
  v4 = a3;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] array];
    [v6 addObject:v4];
    v7 = [objc_opt_class() normalizePhoneNumber:v4 countryCode:self->_countryCode];
    [v6 _cn_addNonNilObject:v7];
    v8 = [objc_opt_class() indexTokensFromPhoneNumber:v7];
    [v6 addObjectsFromArray:v8];

    v9 = [objc_opt_class() indexTokensFromPhoneNumber:v4];
    [v6 addObjectsFromArray:v9];

    v5 = [v6 _cn_distinctObjects];
  }

  return v5;
}

+ (id)indexTokensFromPhoneNumber:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  [a1 tokenizePhoneNumber:a3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v18 = 0u;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = MEMORY[0x277CBEBF8];
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * v7);
        v10 = [v8 arrayByAddingObject:&stru_282787720];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __63__CNAutocompleteResultTokenMatcher_indexTokensFromPhoneNumber___block_invoke;
        v14[3] = &unk_2781C4E10;
        v14[4] = v9;
        v6 = [v10 _cn_map:v14];

        ++v7;
        v8 = v6;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)tokenizePhoneNumber:(id)a3
{
  v3 = tokenizePhoneNumber__cn_once_token_1;
  v4 = a3;
  if (v3 != -1)
  {
    +[CNAutocompleteResultTokenMatcher tokenizePhoneNumber:];
  }

  v5 = [v4 componentsSeparatedByCharactersInSet:tokenizePhoneNumber__cn_once_object_1];

  v6 = [v5 _cn_filter:&__block_literal_global_18_2];

  return v6;
}

uint64_t __56__CNAutocompleteResultTokenMatcher_tokenizePhoneNumber___block_invoke()
{
  tokenizePhoneNumber__cn_once_object_1 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"+()- "];

  return MEMORY[0x2821F96F8]();
}

+ (id)normalizePhoneNumber:(id)a3 countryCode:(id)a4
{
  v4 = a4;
  v5 = PNCopyBestGuessNormalizedNumberForCountry();
  v6 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], v5, 0x8000100u, *MEMORY[0x277CBECF0]);
  v7 = CFPhoneNumberCreate();

  String = CFPhoneNumberCreateString();
  if (!String)
  {
    String = CFPhoneNumberCreateString();
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return String;
}

@end