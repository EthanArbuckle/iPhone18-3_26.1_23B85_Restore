@interface CNAutocompleteResultTokenMatcher
+ (id)indexTokensFromPhoneNumber:(id)number;
+ (id)normalizePhoneNumber:(id)number countryCode:(id)code;
+ (id)searchTokensFromString:(id)string;
+ (id)tokenizePhoneNumber:(id)number;
- (BOOL)evaluateResult:(id)result;
- (BOOL)evaluateSingleResult:(id)result;
- (BOOL)evaluateTopLevelGroupResult:(id)result;
- (CNAutocompleteResultTokenMatcher)initWithSearchString:(id)string;
- (CNAutocompleteResultTokenMatcher)initWithSearchString:(id)string countryCode:(id)code;
- (id)filterAdapter;
- (id)nameTokensForResult:(id)result;
- (id)representationsOfPhoneNumber:(id)number;
- (id)tokensForResultName:(id)name;
- (id)tokensForResultValue:(id)value;
@end

@implementation CNAutocompleteResultTokenMatcher

- (CNAutocompleteResultTokenMatcher)initWithSearchString:(id)string
{
  v4 = MEMORY[0x277CBEAF8];
  stringCopy = string;
  currentLocale = [v4 currentLocale];
  v7 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];

  v8 = [(CNAutocompleteResultTokenMatcher *)self initWithSearchString:stringCopy countryCode:v7];
  return v8;
}

- (CNAutocompleteResultTokenMatcher)initWithSearchString:(id)string countryCode:(id)code
{
  stringCopy = string;
  codeCopy = code;
  v15.receiver = self;
  v15.super_class = CNAutocompleteResultTokenMatcher;
  v8 = [(CNAutocompleteResultTokenMatcher *)&v15 init];
  if (v8)
  {
    v9 = [objc_opt_class() searchTokensFromString:stringCopy];
    tokens = v8->_tokens;
    v8->_tokens = v9;

    v11 = [codeCopy copy];
    countryCode = v8->_countryCode;
    v8->_countryCode = v11;

    v13 = v8;
  }

  return v8;
}

+ (id)searchTokensFromString:(id)string
{
  v3 = [CNAutocompleteInputStringTokenizer tokensFromString:string];
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

- (BOOL)evaluateResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    v5 = [(CNAutocompleteResultTokenMatcher *)self evaluateSingleResult:resultCopy]|| [(CNAutocompleteResultTokenMatcher *)self evaluateTopLevelGroupResult:resultCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)evaluateSingleResult:(id)result
{
  selfCopy = self;
  v4 = [(CNAutocompleteResultTokenMatcher *)self nameTokensForResult:result];
  LOBYTE(selfCopy) = [CNAutocompleteTokenMatcher doSearchTokens:selfCopy->_tokens matchNameTokens:v4];

  return selfCopy;
}

- (BOOL)evaluateTopLevelGroupResult:(id)result
{
  v17 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  if ([resultCopy resultType] == 1)
  {
    v12 = 0;
    v5 = [resultCopy members:&v12];
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
        v16 = resultCopy;
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

- (id)nameTokensForResult:(id)result
{
  v4 = MEMORY[0x277CBEB18];
  resultCopy = result;
  array = [v4 array];
  v7 = [(CNAutocompleteResultTokenMatcher *)self tokensForResultName:resultCopy];
  [array addObject:v7];

  value = [resultCopy value];

  v9 = [(CNAutocompleteResultTokenMatcher *)self tokensForResultValue:value];
  [array addObject:v9];

  _cn_flatten = [array _cn_flatten];
  v11 = [_cn_flatten _cn_map:&__block_literal_global_24];

  return v11;
}

- (id)tokensForResultName:(id)name
{
  v3 = MEMORY[0x277CBEB18];
  nameCopy = name;
  array = [v3 array];
  nameComponents = [nameCopy nameComponents];
  firstName = [nameComponents firstName];
  [array _cn_addNonNilObject:firstName];

  nameComponents2 = [nameCopy nameComponents];
  lastName = [nameComponents2 lastName];
  [array _cn_addNonNilObject:lastName];

  nameComponents3 = [nameCopy nameComponents];
  nickname = [nameComponents3 nickname];
  [array _cn_addNonNilObject:nickname];

  nameComponents4 = [nameCopy nameComponents];
  nameSuffix = [nameComponents4 nameSuffix];
  [array _cn_addNonNilObject:nameSuffix];

  displayName = [nameCopy displayName];

  [array _cn_addNonNilObject:displayName];
  v15 = [array _cn_flatMap:&__block_literal_global_9_0];

  return v15;
}

- (id)tokensForResultValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    addressType = [valueCopy addressType];
    address = [valueCopy address];
    if (addressType == 2)
    {
      v8 = [(CNAutocompleteResultTokenMatcher *)self representationsOfPhoneNumber:address];
      [array addObjectsFromArray:v8];
    }

    else
    {
      [array _cn_addNonNilObject:address];
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

- (id)representationsOfPhoneNumber:(id)number
{
  numberCopy = number;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    _cn_distinctObjects = MEMORY[0x277CBEBF8];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    [array addObject:numberCopy];
    v7 = [objc_opt_class() normalizePhoneNumber:numberCopy countryCode:self->_countryCode];
    [array _cn_addNonNilObject:v7];
    v8 = [objc_opt_class() indexTokensFromPhoneNumber:v7];
    [array addObjectsFromArray:v8];

    v9 = [objc_opt_class() indexTokensFromPhoneNumber:numberCopy];
    [array addObjectsFromArray:v9];

    _cn_distinctObjects = [array _cn_distinctObjects];
  }

  return _cn_distinctObjects;
}

+ (id)indexTokensFromPhoneNumber:(id)number
{
  v20 = *MEMORY[0x277D85DE8];
  [self tokenizePhoneNumber:number];
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

+ (id)tokenizePhoneNumber:(id)number
{
  v3 = tokenizePhoneNumber__cn_once_token_1;
  numberCopy = number;
  if (v3 != -1)
  {
    +[CNAutocompleteResultTokenMatcher tokenizePhoneNumber:];
  }

  v5 = [numberCopy componentsSeparatedByCharactersInSet:tokenizePhoneNumber__cn_once_object_1];

  v6 = [v5 _cn_filter:&__block_literal_global_18_2];

  return v6;
}

uint64_t __56__CNAutocompleteResultTokenMatcher_tokenizePhoneNumber___block_invoke()
{
  tokenizePhoneNumber__cn_once_object_1 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"+()- "];

  return MEMORY[0x2821F96F8]();
}

+ (id)normalizePhoneNumber:(id)number countryCode:(id)code
{
  codeCopy = code;
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