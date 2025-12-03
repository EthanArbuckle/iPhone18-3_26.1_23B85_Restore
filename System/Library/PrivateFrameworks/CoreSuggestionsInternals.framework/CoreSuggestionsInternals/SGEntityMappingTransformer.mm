@interface SGEntityMappingTransformer
+ (id)withEmailMapping:(id)mapping linkMapping:(id)linkMapping;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEntityMappingTransformer:(id)transformer;
- (SGEntityMappingTransformer)initWithEmailMapping:(id)mapping linkMapping:(id)linkMapping;
- (SGEntityMappingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
- (id)transform:(id)transform;
- (unint64_t)hash;
@end

@implementation SGEntityMappingTransformer

- (unint64_t)hash
{
  emailMapping = [(SGEntityMappingTransformer *)self emailMapping];
  v4 = [emailMapping hash];

  linkMapping = [(SGEntityMappingTransformer *)self linkMapping];
  v6 = [linkMapping hash] - v4 + 32 * v4;

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGEntityMappingTransformer *)self isEqualToEntityMappingTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToEntityMappingTransformer:(id)transformer
{
  transformerCopy = transformer;
  if (transformerCopy)
  {
    emailMapping = [(SGEntityMappingTransformer *)self emailMapping];
    emailMapping2 = [transformerCopy emailMapping];
    if (emailMapping == emailMapping2 || (-[SGEntityMappingTransformer emailMapping](self, "emailMapping"), v3 = objc_claimAutoreleasedReturnValue(), [transformerCopy emailMapping], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      linkMapping = [(SGEntityMappingTransformer *)self linkMapping];
      linkMapping2 = [transformerCopy linkMapping];
      v12 = linkMapping2;
      if (linkMapping == linkMapping2)
      {

        v9 = 1;
      }

      else
      {
        linkMapping3 = [(SGEntityMappingTransformer *)self linkMapping];
        linkMapping4 = [transformerCopy linkMapping];
        v9 = [linkMapping3 isEqual:linkMapping4];
      }

      if (emailMapping == emailMapping2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (SGEntityMappingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  v7 = [plistCopy objectForKeyedSubscript:@"EMAIL_MAPPING"];
  v8 = [plistCopy objectForKeyedSubscript:@"LINK_MAPPING"];

  v9 = [(SGEntityMappingTransformer *)self initWithEmailMapping:v7 linkMapping:v8];
  return v9;
}

- (id)toPlistWithChunks:(id)chunks
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"EMAIL_MAPPING";
  emailMapping = [(SGEntityMappingTransformer *)self emailMapping];
  v9[1] = @"LINK_MAPPING";
  v10[0] = emailMapping;
  linkMapping = [(SGEntityMappingTransformer *)self linkMapping];
  v10[1] = linkMapping;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)transform:(id)transform
{
  transformCopy = transform;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[SGEntityMappingTransformer transform:]", "SGEntityMappingTransformer.m", 54, "[input isKindOfClass:[NSString class]]");
  }

  v5 = objc_opt_new();
  if (getEntityMappingDispatchQueue__pasOnceToken2 != -1)
  {
    dispatch_once(&getEntityMappingDispatchQueue__pasOnceToken2, &__block_literal_global_4244);
  }

  v6 = getEntityMappingDispatchQueue__pasExprOnceResult;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SGEntityMappingTransformer_transform___block_invoke;
  block[3] = &unk_278956130;
  v13 = transformCopy;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = transformCopy;
  dispatch_sync(v6, block);
  v9 = v15;
  v10 = v7;

  return v7;
}

void __40__SGEntityMappingTransformer_transform___block_invoke(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [v2 length];
  v4 = objc_autoreleasePoolPush();
  v5 = [a1[5] dataDetector];
  v31 = v2;
  v6 = [v5 matchesInString:v2 options:0 range:{0, objc_msgSend(v2, "length")}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v6;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v34)
  {
    v29 = v3;
    v30 = v4;
    v7 = 0;
    v8 = 0;
    v33 = *v36;
    do
    {
      v9 = 0;
      v10 = v7;
      v11 = v8;
      do
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v9);
        v13 = objc_autoreleasePoolPush();
        v7 = [v12 range];
        v8 = v14;
        if ([v12 resultType] == 32)
        {
          v15 = [v12 URL];
          v16 = [v15 scheme];
          v17 = [v16 isEqualToString:@"mailto"];

          v18 = a1[5];
          if (v17)
          {
            [v18 emailMapping];
          }

          else
          {
            [v18 linkMapping];
          }
          v19 = ;
        }

        else
        {
          v19 = 0;
        }

        v20 = v10 + v11;
        v21 = v7 - (v10 + v11);
        if (v7 > v10 + v11)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = a1[6];
          v24 = [v31 substringWithRange:{v20, v21}];
          [v23 appendString:v24];

          objc_autoreleasePoolPop(v22);
        }

        [a1[6] appendString:{v19, v29, v30}];

        objc_autoreleasePoolPop(v13);
        ++v9;
        v10 = v7;
        v11 = v8;
      }

      while (v34 != v9);
      v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v34);
    v3 = v29;
    v4 = v30;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (v3 > v7 + v8)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = a1[6];
    v27 = [v31 substringWithRange:{v7 + v8, v3 - (v7 + v8)}];
    [v26 appendString:v27];

    objc_autoreleasePoolPop(v25);
  }

  objc_autoreleasePoolPop(v4);
  v28 = *MEMORY[0x277D85DE8];
}

- (SGEntityMappingTransformer)initWithEmailMapping:(id)mapping linkMapping:(id)linkMapping
{
  v19 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  linkMappingCopy = linkMapping;
  v16.receiver = self;
  v16.super_class = SGEntityMappingTransformer;
  v8 = [(SGEntityMappingTransformer *)&v16 init];
  if (v8)
  {
    v15 = 0;
    v9 = [MEMORY[0x277CCA948] dataDetectorWithTypes:32 error:&v15];
    v10 = v15;
    [(SGEntityMappingTransformer *)v8 setDataDetector:v9];

    if (v10)
    {
      v11 = sgLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v10 localizedDescription];
        *buf = 138412290;
        v18 = localizedDescription;
        _os_log_error_impl(&dword_231E60000, v11, OS_LOG_TYPE_ERROR, "Error constructing data detector for featurizing: %@", buf, 0xCu);
      }
    }

    [(SGEntityMappingTransformer *)v8 setEmailMapping:mappingCopy];
    [(SGEntityMappingTransformer *)v8 setLinkMapping:linkMappingCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)withEmailMapping:(id)mapping linkMapping:(id)linkMapping
{
  linkMappingCopy = linkMapping;
  mappingCopy = mapping;
  v7 = [[SGEntityMappingTransformer alloc] initWithEmailMapping:mappingCopy linkMapping:linkMappingCopy];

  return v7;
}

@end