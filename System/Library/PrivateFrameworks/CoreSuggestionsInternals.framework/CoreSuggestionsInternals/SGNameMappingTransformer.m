@interface SGNameMappingTransformer
+ (id)instanceForNameDetector;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNameMappingTransformer:(id)a3;
- (SGNameMappingTransformer)initWithNameMappings:(id)a3 minimumConfidence:(int)a4 confidenceMapper:(id)a5 tokenToIgnore:(id)a6 forNameDetector:(BOOL)a7;
- (SGNameMappingTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)nameMappingForToken:(id)a3 withConfidence:(int *)a4;
- (id)toPlistWithChunks:(id)a3;
- (id)transform:(id)a3;
- (unint64_t)hash;
@end

@implementation SGNameMappingTransformer

- (unint64_t)hash
{
  v3 = [(NSDictionary *)self->_nameMappings hash];
  v4 = [(NSString *)self->_tokenToIgnore hash];
  v5 = self->_minimumConfidence - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  return [self->_confidenceMapper hash] - v5 + 32 * v5;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGNameMappingTransformer *)self isEqualToNameMappingTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToNameMappingTransformer:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = self->_nameMappings;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSDictionary *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v8 = self->_tokenToIgnore;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (self->_minimumConfidence != *(v4 + 8))
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v11 = self->_confidenceMapper == v4[5];
LABEL_13:

  return v11;
}

- (SGNameMappingTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"NAME_MAPPINGS"];
  v8 = [v6 objectForKeyedSubscript:@"MINIMUM_CONFIDENCE"];
  v9 = [v8 intValue];
  v10 = [v6 objectForKeyedSubscript:@"TOKEN_TO_IGNORE"];

  v11 = [(SGNameMappingTransformer *)self initWithNameMappings:v7 minimumConfidence:v9 confidenceMapper:0 tokenToIgnore:v10 forNameDetector:0];
  return v11;
}

- (id)toPlistWithChunks:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  nameMappings = self->_nameMappings;
  v11[1] = @"MINIMUM_CONFIDENCE";
  v12[0] = nameMappings;
  v11[0] = @"NAME_MAPPINGS";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_minimumConfidence];
  v12[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v7 = [v6 mutableCopy];

  tokenToIgnore = self->_tokenToIgnore;
  if (tokenToIgnore)
  {
    [v7 setObject:tokenToIgnore forKeyedSubscript:@"TOKEN_TO_IGNORE"];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)transform:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[SGNameMappingTransformer transform:]", "SGNameMappingTransformer.m", 195, "[input isKindOfClass:[NSArray class]]");
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v54 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v7)
  {
    v8 = v7;
    v53 = a2;
    v9 = 0;
    v10 = 0;
    v11 = *v64;
    v56 = *v64;
    while (1)
    {
      v12 = 0;
      v57 = v8;
      do
      {
        if (*v64 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v63 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        if ([v13 isEqualToString:self->_tokenToIgnore])
        {
          if (!self->_forNameDetector)
          {
            [v6 addObject:v13];
          }
        }

        else
        {
          v62 = 0;
          v15 = [(SGNameMappingTransformer *)self nameMappingForToken:v13 withConfidence:&v62];
          if (v15)
          {
            v16 = v15;
            if (v62 >= self->_minimumConfidence)
            {
              if (v15 == @"FIRST")
              {
                v25 = v10 != @"LAST";
                v26 = v10 != @"UNDEFINED";
                v24 = v25 && v26;
                if (v25 && v26)
                {
                  v16 = @"FIRST";
                }

                else
                {
                  v16 = @"FULL";
                }
              }

              else if (v15 == @"LAST")
              {
                v29 = v10 != @"FIRST";
                v30 = v10 != @"UNDEFINED";
                v24 = v29 && v30;
                if (v29 && v30)
                {
                  v16 = @"LAST";
                }

                else
                {
                  v16 = @"FULL";
                }
              }

              else if (v15 == @"UNDEFINED")
              {
                v24 = v10 != @"FIRST" && v10 != @"LAST" && v10 != @"UNDEFINED";
                if (v10 != @"FIRST" && v10 != @"LAST")
                {
                  v16 = @"UNDEFINED";
                }

                else
                {
                  v16 = @"FULL";
                }
              }

              else if (v15 == @"POSSESSIVE")
              {
                v45 = [MEMORY[0x277CCA890] currentHandler];
                [v45 handleFailureInMethod:v53 object:self file:@"SGNameMappingTransformer.m" lineNumber:245 description:@"Shouldn't be NameMappingPossessive"];

                v24 = 1;
                v16 = @"POSSESSIVE";
              }

              else
              {
                v24 = 1;
              }

              v31 = [(NSDictionary *)self->_nameMappings objectForKeyedSubscript:v16, v53];
              if (!v31)
              {
                __assert_rtn("[SGNameMappingTransformer transform:]", "SGNameMappingTransformer.m", 249, "feature");
              }

              v32 = v31;
              v55 = v10;
              if (v24)
              {
                v33 = [v13 range];
                v35 = [SGTokenString stringWithString:v32 range:v33 confidence:v34, v62];
                [v6 addObject:v35];

                v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count") - 1}];
                [v54 addObject:v36];
              }

              else
              {
                v37 = v62;
                if (v62 <= v9)
                {
                  v37 = v9;
                }

                v62 = v37 + 1;
                v38 = [v6 lastObject];
                v39 = [v38 range];
                v40 = v6;
                v42 = v41;
                v71.location = [v13 range];
                v71.length = v43;
                v70.location = v39;
                v70.length = v42;
                v6 = v40;
                v44 = NSUnionRange(v70, v71);
                v36 = [SGTokenString stringWithString:v32 range:v44.location confidence:v44.length, v62];

                [v40 setObject:v36 atIndexedSubscript:{objc_msgSend(v40, "count") - 1}];
              }

              v10 = v16;
              v9 = v62;

              goto LABEL_46;
            }
          }

          if (v10)
          {
            v17 = [(NSDictionary *)self->_nameMappings objectForKeyedSubscript:v10];
            if (v17)
            {
              v18 = v17;
              v19 = [(NSDictionary *)self->_nameMappings objectForKeyedSubscript:@"POSSESSIVE"];
              if (v19)
              {
                v20 = v19;
                v21 = [(SGNameMappingTransformer *)self isPossessive:v13];

                if (v21)
                {
                  [v6 lastObject];
                  v23 = v22 = v10;
                  [v23 setConfidence:-v9];

                  v10 = @"POSSESSIVE";
LABEL_46:
                  v11 = v56;
                  v8 = v57;
                  goto LABEL_47;
                }
              }

              else
              {
              }
            }
          }

          if (self->_forNameDetector)
          {
            v10 = 0;
            goto LABEL_46;
          }

          v11 = v56;
          if ([v13 hasPrefix:@"SG_"])
          {
            [v6 addObject:v13];
          }

          else
          {
            v27 = [v13 lowercaseString];
            v28 = [v13 stringWithNewContents:v27];
            [v6 addObject:v28];
          }

          v10 = 0;
          v8 = v57;
        }

LABEL_47:
        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v8 != v12);
      v46 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
      v8 = v46;
      if (!v46)
      {
        goto LABEL_53;
      }
    }
  }

  v10 = 0;
LABEL_53:

  if (self->_forNameDetector)
  {
    v47 = v6;
    v48 = v54;
  }

  else
  {
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __38__SGNameMappingTransformer_transform___block_invoke;
    v59[3] = &unk_27894C550;
    v49 = v6;
    v60 = v49;
    v61 = self;
    v48 = v54;
    [v54 enumerateObjectsUsingBlock:v59];
    v50 = v49;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v6;
}

void __38__SGNameMappingTransformer_transform___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 unsignedIntegerValue];
  v4 = [*(a1 + 32) objectAtIndexedSubscript:v3];
  v5 = [v4 confidence];
  v6 = *(*(a1 + 40) + 40);
  v7 = v4;
  if (v6)
  {
    if (v5 >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = -v5;
    }

    v9 = (*(v6 + 16))(v6, v8);
    v7 = v4;
    if ([v9 length])
    {
      v7 = appendFeatureSuffix(v4, v9);
    }
  }

  if (v5 < 0)
  {
    v10 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:@"POSSESSIVE"];

    if (v10)
    {
      v11 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:@"POSSESSIVE"];
      v12 = appendFeatureSuffix(v7, v11);

      v7 = v12;
    }
  }

  if (v7 != v4)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [v4 stringWithNewContents:v7];
    [*(a1 + 32) setObject:v14 atIndexedSubscript:v3];

    objc_autoreleasePoolPop(v13);
  }
}

- (id)nameMappingForToken:(id)a3 withConfidence:(int *)a4
{
  v5 = a3;
  v6 = [v5 confidence];
  if (v6)
  {
    v7 = @"UNDEFINED";
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [SGNames attributesForNameWord:v5];
  if ((v9 & 5) == 0)
  {
    v11 = v6;
    if (!a4)
    {
      goto LABEL_35;
    }

LABEL_34:
    *a4 = v11;
    goto LABEL_35;
  }

  if ((v9 & 4) != 0)
  {
    v10 = 10;
  }

  else
  {
    v10 = 5;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if ((v9 & 2) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [v5 lowercaseString];
    if (firstnames_onceToken != -1)
    {
      dispatch_once(&firstnames_onceToken, &__block_literal_global_7319);
    }

    v14 = [firstnames_trie payloadForString:v13];
    if (lastnames_onceToken != -1)
    {
      dispatch_once(&lastnames_onceToken, &__block_literal_global_177_7320);
    }

    v15 = [lastnames_trie payloadForString:v13];
    if (v14 | v15)
    {
      v16 = v15 != 0;
      v17 = v14 != 0;
      v18 = @"FIRST";
      if (v17 && v16)
      {
        v18 = @"UNDEFINED";
      }

      if (v14)
      {
        v19 = v18;
      }

      else
      {
        v19 = @"LAST";
      }

      if (v17 && v16)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      v11 += v20;

      v8 = v19;
    }

    else
    {
      if (!v6)
      {
        v8 = 0;
LABEL_33:

        objc_autoreleasePoolPop(v12);
        if (!a4)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v8 = @"UNDEFINED";
    }

    v11 += [SGNames isCapitalized:v5];
    goto LABEL_33;
  }

  v8 = @"LAST";
  if (a4)
  {
    goto LABEL_34;
  }

LABEL_35:

  return v8;
}

- (SGNameMappingTransformer)initWithNameMappings:(id)a3 minimumConfidence:(int)a4 confidenceMapper:(id)a5 tokenToIgnore:(id)a6 forNameDetector:(BOOL)a7
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = [v14 objectForKeyedSubscript:@"FULL"];

  if (!v17)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"SGNameMappingTransformer.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"nameMappings[NameMappingFull]"}];
  }

  v18 = [v14 objectForKeyedSubscript:@"FIRST"];

  if (!v18)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"SGNameMappingTransformer.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"nameMappings[NameMappingFirst]"}];
  }

  v19 = [v14 objectForKeyedSubscript:@"LAST"];

  if (!v19)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"SGNameMappingTransformer.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"nameMappings[NameMappingLast]"}];
  }

  v20 = [v14 objectForKeyedSubscript:@"UNDEFINED"];

  if (!v20)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"SGNameMappingTransformer.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"nameMappings[NameMappingUndefined]"}];
  }

  v21 = [v14 objectForKeyedSubscript:@"POSSESSIVE"];

  if (!v21)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"SGNameMappingTransformer.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"nameMappings[NameMappingPossessive]"}];
  }

  v32.receiver = self;
  v32.super_class = SGNameMappingTransformer;
  v22 = [(SGNameMappingTransformer *)&v32 init];
  v23 = v22;
  if (v22)
  {
    v22->_forNameDetector = a7;
    objc_storeStrong(&v22->_nameMappings, a3);
    objc_storeStrong(&v23->_tokenToIgnore, a6);
    v23->_minimumConfidence = a4;
    v24 = MEMORY[0x2383809F0](v15);
    confidenceMapper = v23->_confidenceMapper;
    v23->_confidenceMapper = v24;
  }

  return v23;
}

+ (id)instanceForNameDetector
{
  v8[5] = *MEMORY[0x277D85DE8];
  v2 = [SGNameMappingTransformer alloc];
  v7[0] = @"FULL";
  v7[1] = @"FIRST";
  v8[0] = @"SG_FEATURE_FULLNAME";
  v8[1] = @"SG_FEATURE_FIRSTNAME";
  v7[2] = @"LAST";
  v7[3] = @"UNDEFINED";
  v8[2] = @"SG_FEATURE_LASTNAME";
  v8[3] = @"SG_FEATURE_FULLNAME";
  v7[4] = @"POSSESSIVE";
  v8[4] = @"SG_POSSESSIVE";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v4 = [(SGNameMappingTransformer *)v2 initWithNameMappings:v3 minimumConfidence:10 confidenceMapper:0 tokenToIgnore:0 forNameDetector:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end