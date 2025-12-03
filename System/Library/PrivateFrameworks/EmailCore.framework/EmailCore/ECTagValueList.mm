@interface ECTagValueList
+ (id)_errorWithCode:(void *)code failureReason:;
+ (id)tagValueListFromDictionary:(id)dictionary error:(id *)error;
+ (id)tagValueListFromString:(id)string error:(id *)error;
- (NSString)stringRepresentation;
- (id)_initWithDictionaryRepresentation:(id)representation;
- (id)_initWithDictionaryRepresentation:(id)representation stringRepresentation:(id)stringRepresentation;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)valueForTag:(id)tag;
- (void)dealloc;
@end

@implementation ECTagValueList

uint64_t ___ef_log_ECTagValueList_block_invoke()
{
  _ef_log_ECTagValueList_log = os_log_create("com.apple.email", "ECTagValueList");

  return MEMORY[0x2821F96F8]();
}

- (id)_initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = ECTagValueList;
  v5 = [(ECTagValueList *)&v9 init];
  if (v5)
  {
    v6 = [representationCopy copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;
  }

  return v5;
}

- (id)_initWithDictionaryRepresentation:(id)representation stringRepresentation:(id)stringRepresentation
{
  representationCopy = representation;
  stringRepresentationCopy = stringRepresentation;
  v8 = [(ECTagValueList *)self _initWithDictionaryRepresentation:representationCopy];
  if (v8)
  {
    v9 = EFAtomicObjectSetIfNil();
  }

  return v8;
}

- (void)dealloc
{
  v3 = EFAtomicObjectRelease();
  v4.receiver = self;
  v4.super_class = ECTagValueList;
  [(ECTagValueList *)&v4 dealloc];
}

+ (id)tagValueListFromString:(id)string error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v5 = [stringCopy ef_stringByTrimmingTrailingCharactersInSet:newlineCharacterSet];

  v26 = v5;
  v25 = [v5 componentsSeparatedByString:@""];;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v25;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v8)
  {
    v30 = 1;
    goto LABEL_18;
  }

  v9 = *v32;
  v30 = 1;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v32 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v31 + 1) + 8 * i);
      if ([v11 length])
      {
        v12 = [v11 ef_componentsSeparatedByString:@"=" maxSeparations:1];
        if ([v12 count] == 2)
        {
          firstObject = [v12 firstObject];
          ef_stringByTrimmingWhitespaceAndNewlineCharacters = [firstObject ef_stringByTrimmingWhitespaceAndNewlineCharacters];

          lastObject = [v12 lastObject];
          ef_stringByTrimmingWhitespaceAndNewlineCharacters2 = [lastObject ef_stringByTrimmingWhitespaceAndNewlineCharacters];

          v17 = [v6 objectForKeyedSubscript:ef_stringByTrimmingWhitespaceAndNewlineCharacters];

          if (!v17)
          {
            [v6 setObject:ef_stringByTrimmingWhitespaceAndNewlineCharacters2 forKeyedSubscript:ef_stringByTrimmingWhitespaceAndNewlineCharacters];

            continue;
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Duplicate '%@' tags in tag value list", ef_stringByTrimmingWhitespaceAndNewlineCharacters];
          v8 = [(ECTagValueList *)self _errorWithCode:v18 failureReason:?];
        }

        else
        {
          v8 = [(ECTagValueList *)self _errorWithCode:0 failureReason:?];
        }

        goto LABEL_18;
      }

      v30 = 0;
    }

    v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_18:

  if (![v6 count])
  {
    v19 = [(ECTagValueList *)self _errorWithCode:0 failureReason:?];

    v6 = 0;
    v8 = v19;
  }

  if (error)
  {
    v20 = v8;
    *error = v8;
  }

  if (v8)
  {
    v21 = 0;
  }

  else
  {
    if (v30)
    {
      v22 = [[self alloc] _initWithDictionaryRepresentation:v6 stringRepresentation:stringCopy];
    }

    else
    {
      v22 = [[self alloc] _initWithDictionaryRepresentation:v6];
    }

    v21 = v22;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)_errorWithCode:(void *)code failureReason:
{
  v10[1] = *MEMORY[0x277D85DE8];
  codeCopy = code;
  objc_opt_self();
  if (codeCopy)
  {
    v9 = *MEMORY[0x277CCA470];
    v10[0] = codeCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECTagValueListErrorDomain" code:a2 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)tagValueListFromDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v7 = [[self alloc] _initWithDictionaryRepresentation:dictionaryCopy];
  }

  else if (error)
  {
    [(ECTagValueList *)self _errorWithCode:0 failureReason:?];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)stringRepresentation
{
  v3 = EFAtomicObjectLoad();
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dictionaryRepresentation = [(ECTagValueList *)self dictionaryRepresentation];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__ECTagValueList_stringRepresentation__block_invoke;
    v9[3] = &unk_27874C408;
    v6 = v4;
    v10 = v6;
    [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v9];

    v7 = [v6 componentsJoinedByString:@""];;
    v3 = EFAtomicObjectSetIfNil();
  }

  return v3;
}

void __38__ECTagValueList_stringRepresentation__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", a2, a3];
  [v3 addObject:?];
}

- (id)valueForTag:(id)tag
{
  tagCopy = tag;
  dictionaryRepresentation = [(ECTagValueList *)self dictionaryRepresentation];
  v6 = [dictionaryRepresentation objectForKeyedSubscript:tagCopy];

  return v6;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = [(ECTagValueList *)self valueForTag:subscript];

  return v3;
}

@end