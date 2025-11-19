@interface ECTagValueList
+ (id)_errorWithCode:(void *)a3 failureReason:;
+ (id)tagValueListFromDictionary:(id)a3 error:(id *)a4;
+ (id)tagValueListFromString:(id)a3 error:(id *)a4;
- (NSString)stringRepresentation;
- (id)_initWithDictionaryRepresentation:(id)a3;
- (id)_initWithDictionaryRepresentation:(id)a3 stringRepresentation:(id)a4;
- (id)objectForKeyedSubscript:(id)a3;
- (id)valueForTag:(id)a3;
- (void)dealloc;
@end

@implementation ECTagValueList

uint64_t ___ef_log_ECTagValueList_block_invoke()
{
  _ef_log_ECTagValueList_log = os_log_create("com.apple.email", "ECTagValueList");

  return MEMORY[0x2821F96F8]();
}

- (id)_initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ECTagValueList;
  v5 = [(ECTagValueList *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;
  }

  return v5;
}

- (id)_initWithDictionaryRepresentation:(id)a3 stringRepresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ECTagValueList *)self _initWithDictionaryRepresentation:v6];
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

+ (id)tagValueListFromString:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v4 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v5 = [v27 ef_stringByTrimmingTrailingCharactersInSet:v4];

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
          v13 = [v12 firstObject];
          v14 = [v13 ef_stringByTrimmingWhitespaceAndNewlineCharacters];

          v15 = [v12 lastObject];
          v16 = [v15 ef_stringByTrimmingWhitespaceAndNewlineCharacters];

          v17 = [v6 objectForKeyedSubscript:v14];

          if (!v17)
          {
            [v6 setObject:v16 forKeyedSubscript:v14];

            continue;
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Duplicate '%@' tags in tag value list", v14];
          v8 = [(ECTagValueList *)a1 _errorWithCode:v18 failureReason:?];
        }

        else
        {
          v8 = [(ECTagValueList *)a1 _errorWithCode:0 failureReason:?];
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
    v19 = [(ECTagValueList *)a1 _errorWithCode:0 failureReason:?];

    v6 = 0;
    v8 = v19;
  }

  if (a4)
  {
    v20 = v8;
    *a4 = v8;
  }

  if (v8)
  {
    v21 = 0;
  }

  else
  {
    if (v30)
    {
      v22 = [[a1 alloc] _initWithDictionaryRepresentation:v6 stringRepresentation:v27];
    }

    else
    {
      v22 = [[a1 alloc] _initWithDictionaryRepresentation:v6];
    }

    v21 = v22;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)_errorWithCode:(void *)a3 failureReason:
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_self();
  if (v4)
  {
    v9 = *MEMORY[0x277CCA470];
    v10[0] = v4;
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

+ (id)tagValueListFromDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = [[a1 alloc] _initWithDictionaryRepresentation:v6];
  }

  else if (a4)
  {
    [(ECTagValueList *)a1 _errorWithCode:0 failureReason:?];
    *a4 = v7 = 0;
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
    v5 = [(ECTagValueList *)self dictionaryRepresentation];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__ECTagValueList_stringRepresentation__block_invoke;
    v9[3] = &unk_27874C408;
    v6 = v4;
    v10 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];

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

- (id)valueForTag:(id)a3
{
  v4 = a3;
  v5 = [(ECTagValueList *)self dictionaryRepresentation];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = [(ECTagValueList *)self valueForTag:a3];

  return v3;
}

@end