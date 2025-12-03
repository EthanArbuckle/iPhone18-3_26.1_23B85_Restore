@interface SGMatchedDetails
+ (id)matchedDetailsWithContact:(id)contact matchinfoData:(id)data tokens:(id)tokens;
+ (int64_t)tokenMatchedDetailTypeForContact:(id)contact matchedDetailReader:(id)reader phraseNumber:(unsigned int)number token:(id)token;
+ (int64_t)tokensMatchedDetailTypeForContact:(id)contact contactEntityId:(id)id detailEntityId:(id)entityId matchinfoData:(id)data tokens:(id)tokens;
- (BOOL)isEqual:(id)equal;
- (SGMatchedDetails)initWithCoder:(id)coder;
- (SGMatchedDetails)initWithContact:(id)contact matchinfoData:(id)data tokens:(id)tokens;
- (id)description;
- (id)matchedDetailsForToken:(id)token;
- (id)tokensForDetail:(id)detail;
- (void)_addToTokenDetailMap:(id)map token:(id)token detail:(id)detail;
- (void)_initilizeDictionariesFromTokenDetailMap:(id)map;
- (void)_processRawData:(id)data tokens:(id)tokens contact:(id)contact tokenDetailMap:(id)map;
@end

@implementation SGMatchedDetails

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGMatchedDetails map=%@>", self->_tokenDetailMap];

  return v2;
}

- (SGMatchedDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = SGMatchedDetails;
  v6 = [(SGMatchedDetails *)&v23 init];
  if (v6)
  {
    v19 = a2;
    context = objc_autoreleasePoolPush();
    v21 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v21 initWithObjects:{v20, v7, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(context);
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"tokenDetailMap"];
    if (!v16)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:v19 object:v6 file:@"SGMatchedDetails.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"tokenDetailMap"}];
    }

    [(SGMatchedDetails *)v6 _initilizeDictionariesFromTokenDetailMap:v16];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGMatchedDetails *)self isEqualToMatchedDetails:v5];
  }

  return v6;
}

- (void)_processRawData:(id)data tokens:(id)tokens contact:(id)contact tokenDetailMap:(id)map
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  tokensCopy = tokens;
  contactCopy = contact;
  v38 = tokensCopy;
  mapCopy = map;
  if ([tokensCopy count] == 1 && (objc_msgSend(dataCopy, "matchinfoData"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, !v14))
  {
    detailEntityId = [dataCopy detailEntityId];
    v35 = +[SGRecordId recordIdWithNumericValue:](SGRecordId, "recordIdWithNumericValue:", [detailEntityId longLongValue]);
    v36 = [contactCopy detailForRecordId:v35];

    v37 = [tokensCopy objectAtIndexedSubscript:0];
    [(SGMatchedDetails *)self _addToTokenDetailMap:mapCopy token:v37 detail:v36];
  }

  else
  {
    v15 = [SGMatchedDetailsReader alloc];
    matchinfoData = [dataCopy matchinfoData];
    v17 = [(SGMatchedDetailsReader *)v15 initWithMatchedDetails:matchinfoData];

    if ([(SGMatchedDetailsReader *)v17 phraseCount]>= 1)
    {
      v18 = [tokensCopy count];
      if (v18 == [(SGMatchedDetailsReader *)v17 phraseCount])
      {
        if ([(SGMatchedDetailsReader *)v17 phraseCount]>= 1)
        {
          v19 = 0;
          v20 = 1;
          do
          {
            v21 = [v38 objectAtIndexedSubscript:v19];
            v22 = objc_opt_class();
            entityId = [dataCopy entityId];
            detailEntityId2 = [dataCopy detailEntityId];
            v25 = [v22 tokenMatchedDetailTypeForContact:contactCopy contactEntityId:entityId detailEntityId:detailEntityId2 matchedDetailReader:v17 phraseNumber:v20 - 1 token:v21];

            if (v25 == 1 || ([contactCopy name], v26 = objc_claimAutoreleasedReturnValue(), -[SGMatchedDetails _addToTokenDetailMap:token:detail:](self, "_addToTokenDetailMap:token:detail:", mapCopy, v21, v26), v26, v25))
            {
              detailEntityId3 = [dataCopy detailEntityId];
              v28 = +[SGRecordId recordIdWithInternalEntityId:](SGRecordId, "recordIdWithInternalEntityId:", [detailEntityId3 longLongValue]);

              v29 = [contactCopy detailForRecordId:v28];
              [(SGMatchedDetails *)self _addToTokenDetailMap:mapCopy token:v21 detail:v29];
            }

            v19 = v20;
          }

          while ([(SGMatchedDetailsReader *)v17 phraseCount]> v20++);
        }
      }

      else
      {
        v31 = sgLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138739971;
          v41 = tokensCopy;
          _os_log_debug_impl(&dword_1BA729000, v31, OS_LOG_TYPE_DEBUG, "tokens.count != phraseCount: %{sensitive}@", buf, 0xCu);
        }

        v32 = sgLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA729000, v32, OS_LOG_TYPE_FAULT, "tokens.count != phraseCount", buf, 2u);
        }

        if (_PASEvaluateLogFaultAndProbCrashCriteria())
        {
          abort();
        }
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)_addToTokenDetailMap:(id)map token:(id)token detail:(id)detail
{
  mapCopy = map;
  tokenCopy = token;
  if (detail)
  {
    detailCopy = detail;
    v9 = [mapCopy objectForKeyedSubscript:tokenCopy];

    if (!v9)
    {
      v10 = objc_opt_new();
      [mapCopy setObject:v10 forKeyedSubscript:tokenCopy];
    }

    v11 = [mapCopy objectForKeyedSubscript:tokenCopy];
    [v11 addObject:detailCopy];
  }
}

- (id)tokensForDetail:(id)detail
{
  v3 = [(NSDictionary *)self->_detailTokenMap objectForKeyedSubscript:detail];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)matchedDetailsForToken:(id)token
{
  v3 = [(NSDictionary *)self->_tokenDetailMap objectForKeyedSubscript:token];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)_initilizeDictionariesFromTokenDetailMap:(id)map
{
  mapCopy = map;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__SGMatchedDetails__initilizeDictionariesFromTokenDetailMap___block_invoke;
  v11[3] = &unk_1E7EFC608;
  v12 = v5;
  v6 = v5;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v11];
  v7 = [v6 copy];
  detailTokenMap = self->_detailTokenMap;
  self->_detailTokenMap = v7;

  v9 = [mapCopy copy];
  tokenDetailMap = self->_tokenDetailMap;
  self->_tokenDetailMap = v9;
}

void __61__SGMatchedDetails__initilizeDictionariesFromTokenDetailMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [*(a1 + 32) objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = objc_opt_new();
          [*(a1 + 32) setObject:v13 forKeyedSubscript:v11];
        }

        v14 = [*(a1 + 32) objectForKeyedSubscript:v11];
        [v14 addObject:v5];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (SGMatchedDetails)initWithContact:(id)contact matchinfoData:(id)data tokens:(id)tokens
{
  v26 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  dataCopy = data;
  tokensCopy = tokens;
  v24.receiver = self;
  v24.super_class = SGMatchedDetails;
  v11 = [(SGMatchedDetails *)&v24 init];
  if (v11)
  {
    v12 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = dataCopy;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(SGMatchedDetails *)v11 _processRawData:*(*(&v20 + 1) + 8 * v17++) tokens:tokensCopy contact:contactCopy tokenDetailMap:v12, v20];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v15);
    }

    [(SGMatchedDetails *)v11 _initilizeDictionariesFromTokenDetailMap:v12];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int64_t)tokenMatchedDetailTypeForContact:(id)contact matchedDetailReader:(id)reader phraseNumber:(unsigned int)number token:(id)token
{
  contactCopy = contact;
  tokenCopy = token;
  numberCopy = number;
  readerCopy = reader;
  v13 = [readerCopy matchAtPhraseIndex:number columnIndex:2];
  v14 = 1;
  LODWORD(numberCopy) = [readerCopy matchAtPhraseIndex:numberCopy columnIndex:1];

  if (numberCopy)
  {
    v15 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789+-()"];
    invertedSet = [v15 invertedSet];

    if ([tokenCopy rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789+-"];
      name = [contactCopy name];
      fullName = [name fullName];
      v20 = [fullName rangeOfCharacterFromSet:v17] == 0x7FFFFFFFFFFFFFFFLL;

      v13 |= v20;
    }

    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

+ (int64_t)tokensMatchedDetailTypeForContact:(id)contact contactEntityId:(id)id detailEntityId:(id)entityId matchinfoData:(id)data tokens:(id)tokens
{
  contactCopy = contact;
  dataCopy = data;
  tokensCopy = tokens;
  if ([id isEqual:entityId])
  {
    v16 = [[SGMatchedDetailsReader alloc] initWithMatchedDetails:dataCopy];
    if ([(SGMatchedDetailsReader *)v16 phraseCount])
    {
      v17 = [tokensCopy count];
      if (v17 != [(SGMatchedDetailsReader *)v16 phraseCount])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SGMatchedDetails.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"tokens.count == matchedDetailReader.phraseCount"}];
      }

      if ([(SGMatchedDetailsReader *)v16 phraseCount]>= 1)
      {
        v33 = dataCopy;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 1;
        v23 = 1;
        do
        {
          v34 = v21;
          v35 = v22;
          while (1)
          {
            v24 = objc_opt_class();
            v25 = [tokensCopy objectAtIndexedSubscript:v18];
            v26 = [v24 tokenMatchedDetailTypeForContact:contactCopy matchedDetailReader:v16 phraseNumber:v19 token:v25];

            if (v26 != 1)
            {
              break;
            }

            v18 = (v19 + 1);
            v23 = 0;
            v20 = 1;
            v19 = v18;
            if ([(SGMatchedDetailsReader *)v16 phraseCount]<= v18)
            {
              LOBYTE(v21) = v34;
              LOBYTE(v22) = v35;
LABEL_31:
              v30 = 4;
              if ((v21 & 1) == 0)
              {
                v30 = 1;
              }

              if (v22)
              {
                v29 = v30;
              }

              else
              {
                v29 = 5;
              }

              dataCopy = v33;
              goto LABEL_37;
            }
          }

          v22 = v35;
          if (v26 == 2)
          {
            v27 = 1;
          }

          else
          {
            v27 = v34;
          }

          if (v26 == 2)
          {
            v28 = 1;
          }

          else
          {
            v28 = v20;
          }

          if (v26)
          {
            v21 = v27;
          }

          else
          {
            v22 = 0;
            v21 = 1;
          }

          if (v26)
          {
            v20 = v28;
          }

          v18 = (v19 + 1);
          v19 = v18;
        }

        while ([(SGMatchedDetailsReader *)v16 phraseCount]> v18);
        if ((v23 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (v20)
        {
          v29 = 3;
        }

        else
        {
          v29 = 0;
        }

        dataCopy = v33;
        if ((v22 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

LABEL_37:
  }

  else
  {
    v29 = 1;
  }

  return v29;
}

+ (id)matchedDetailsWithContact:(id)contact matchinfoData:(id)data tokens:(id)tokens
{
  tokensCopy = tokens;
  dataCopy = data;
  contactCopy = contact;
  v11 = [[self alloc] initWithContact:contactCopy matchinfoData:dataCopy tokens:tokensCopy];

  return v11;
}

@end