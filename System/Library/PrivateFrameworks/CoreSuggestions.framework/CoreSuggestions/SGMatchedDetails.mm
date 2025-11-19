@interface SGMatchedDetails
+ (id)matchedDetailsWithContact:(id)a3 matchinfoData:(id)a4 tokens:(id)a5;
+ (int64_t)tokenMatchedDetailTypeForContact:(id)a3 matchedDetailReader:(id)a4 phraseNumber:(unsigned int)a5 token:(id)a6;
+ (int64_t)tokensMatchedDetailTypeForContact:(id)a3 contactEntityId:(id)a4 detailEntityId:(id)a5 matchinfoData:(id)a6 tokens:(id)a7;
- (BOOL)isEqual:(id)a3;
- (SGMatchedDetails)initWithCoder:(id)a3;
- (SGMatchedDetails)initWithContact:(id)a3 matchinfoData:(id)a4 tokens:(id)a5;
- (id)description;
- (id)matchedDetailsForToken:(id)a3;
- (id)tokensForDetail:(id)a3;
- (void)_addToTokenDetailMap:(id)a3 token:(id)a4 detail:(id)a5;
- (void)_initilizeDictionariesFromTokenDetailMap:(id)a3;
- (void)_processRawData:(id)a3 tokens:(id)a4 contact:(id)a5 tokenDetailMap:(id)a6;
@end

@implementation SGMatchedDetails

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGMatchedDetails map=%@>", self->_tokenDetailMap];

  return v2;
}

- (SGMatchedDetails)initWithCoder:(id)a3
{
  v5 = a3;
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
    v16 = [v5 decodeObjectOfClasses:v15 forKey:@"tokenDetailMap"];
    if (!v16)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:v19 object:v6 file:@"SGMatchedDetails.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"tokenDetailMap"}];
    }

    [(SGMatchedDetails *)v6 _initilizeDictionariesFromTokenDetailMap:v16];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGMatchedDetails *)self isEqualToMatchedDetails:v5];
  }

  return v6;
}

- (void)_processRawData:(id)a3 tokens:(id)a4 contact:(id)a5 tokenDetailMap:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v38 = v11;
  v39 = a6;
  if ([v11 count] == 1 && (objc_msgSend(v10, "matchinfoData"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, !v14))
  {
    v34 = [v10 detailEntityId];
    v35 = +[SGRecordId recordIdWithNumericValue:](SGRecordId, "recordIdWithNumericValue:", [v34 longLongValue]);
    v36 = [v12 detailForRecordId:v35];

    v37 = [v11 objectAtIndexedSubscript:0];
    [(SGMatchedDetails *)self _addToTokenDetailMap:v39 token:v37 detail:v36];
  }

  else
  {
    v15 = [SGMatchedDetailsReader alloc];
    v16 = [v10 matchinfoData];
    v17 = [(SGMatchedDetailsReader *)v15 initWithMatchedDetails:v16];

    if ([(SGMatchedDetailsReader *)v17 phraseCount]>= 1)
    {
      v18 = [v11 count];
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
            v23 = [v10 entityId];
            v24 = [v10 detailEntityId];
            v25 = [v22 tokenMatchedDetailTypeForContact:v12 contactEntityId:v23 detailEntityId:v24 matchedDetailReader:v17 phraseNumber:v20 - 1 token:v21];

            if (v25 == 1 || ([v12 name], v26 = objc_claimAutoreleasedReturnValue(), -[SGMatchedDetails _addToTokenDetailMap:token:detail:](self, "_addToTokenDetailMap:token:detail:", v39, v21, v26), v26, v25))
            {
              v27 = [v10 detailEntityId];
              v28 = +[SGRecordId recordIdWithInternalEntityId:](SGRecordId, "recordIdWithInternalEntityId:", [v27 longLongValue]);

              v29 = [v12 detailForRecordId:v28];
              [(SGMatchedDetails *)self _addToTokenDetailMap:v39 token:v21 detail:v29];
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
          v41 = v11;
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

- (void)_addToTokenDetailMap:(id)a3 token:(id)a4 detail:(id)a5
{
  v12 = a3;
  v7 = a4;
  if (a5)
  {
    v8 = a5;
    v9 = [v12 objectForKeyedSubscript:v7];

    if (!v9)
    {
      v10 = objc_opt_new();
      [v12 setObject:v10 forKeyedSubscript:v7];
    }

    v11 = [v12 objectForKeyedSubscript:v7];
    [v11 addObject:v8];
  }
}

- (id)tokensForDetail:(id)a3
{
  v3 = [(NSDictionary *)self->_detailTokenMap objectForKeyedSubscript:a3];
  v4 = [v3 allObjects];

  return v4;
}

- (id)matchedDetailsForToken:(id)a3
{
  v3 = [(NSDictionary *)self->_tokenDetailMap objectForKeyedSubscript:a3];
  v4 = [v3 allObjects];

  return v4;
}

- (void)_initilizeDictionariesFromTokenDetailMap:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__SGMatchedDetails__initilizeDictionariesFromTokenDetailMap___block_invoke;
  v11[3] = &unk_1E7EFC608;
  v12 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v11];
  v7 = [v6 copy];
  detailTokenMap = self->_detailTokenMap;
  self->_detailTokenMap = v7;

  v9 = [v4 copy];
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

- (SGMatchedDetails)initWithContact:(id)a3 matchinfoData:(id)a4 tokens:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v13 = v9;
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

          [(SGMatchedDetails *)v11 _processRawData:*(*(&v20 + 1) + 8 * v17++) tokens:v10 contact:v8 tokenDetailMap:v12, v20];
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

+ (int64_t)tokenMatchedDetailTypeForContact:(id)a3 matchedDetailReader:(id)a4 phraseNumber:(unsigned int)a5 token:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v12 matchAtPhraseIndex:a5 columnIndex:2];
  v14 = 1;
  LODWORD(v11) = [v12 matchAtPhraseIndex:v11 columnIndex:1];

  if (v11)
  {
    v15 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789+-()"];
    v16 = [v15 invertedSet];

    if ([v10 rangeOfCharacterFromSet:v16] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789+-"];
      v18 = [v9 name];
      v19 = [v18 fullName];
      v20 = [v19 rangeOfCharacterFromSet:v17] == 0x7FFFFFFFFFFFFFFFLL;

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

+ (int64_t)tokensMatchedDetailTypeForContact:(id)a3 contactEntityId:(id)a4 detailEntityId:(id)a5 matchinfoData:(id)a6 tokens:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if ([a4 isEqual:a5])
  {
    v16 = [[SGMatchedDetailsReader alloc] initWithMatchedDetails:v14];
    if ([(SGMatchedDetailsReader *)v16 phraseCount])
    {
      v17 = [v15 count];
      if (v17 != [(SGMatchedDetailsReader *)v16 phraseCount])
      {
        v32 = [MEMORY[0x1E696AAA8] currentHandler];
        [v32 handleFailureInMethod:a2 object:a1 file:@"SGMatchedDetails.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"tokens.count == matchedDetailReader.phraseCount"}];
      }

      if ([(SGMatchedDetailsReader *)v16 phraseCount]>= 1)
      {
        v33 = v14;
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
            v25 = [v15 objectAtIndexedSubscript:v18];
            v26 = [v24 tokenMatchedDetailTypeForContact:v13 matchedDetailReader:v16 phraseNumber:v19 token:v25];

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

              v14 = v33;
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

        v14 = v33;
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

+ (id)matchedDetailsWithContact:(id)a3 matchinfoData:(id)a4 tokens:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithContact:v10 matchinfoData:v9 tokens:v8];

  return v11;
}

@end