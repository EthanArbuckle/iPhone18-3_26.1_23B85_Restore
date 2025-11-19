@interface SGTokenDistanceMappingTransformer
+ (BOOL)debugAppendText:(id)a3;
+ (id)transformArray:(id)a3 withTargetIndex:(unint64_t)a4 maximumDistance:(unint64_t)a5;
+ (id)withTarget:(id)a3 maxDistance:(unint64_t)a4;
+ (void)debugSetContext:(id)a3;
+ (void)debugStoreContext;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTokenDistanceMappingTransformer:(id)a3;
- (SGTokenDistanceMappingTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (SGTokenDistanceMappingTransformer)initWithTarget:(id)a3 maxDistance:(unint64_t)a4;
- (id)toPlistWithChunks:(id)a3;
- (id)transform:(id)a3;
- (unint64_t)hash;
@end

@implementation SGTokenDistanceMappingTransformer

- (unint64_t)hash
{
  v3 = [(SGTokenDistanceMappingTransformer *)self targetString];
  v4 = [v3 hash];

  return [(SGTokenDistanceMappingTransformer *)self maxDistance]- v4 + 32 * v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGTokenDistanceMappingTransformer *)self isEqualToTokenDistanceMappingTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToTokenDistanceMappingTransformer:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = [(SGTokenDistanceMappingTransformer *)self targetString];
    v8 = [v6 targetString];
    if (v7 == v8 || (-[SGTokenDistanceMappingTransformer targetString](self, "targetString"), v3 = objc_claimAutoreleasedReturnValue(), [v6 targetString], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v10 = [(SGTokenDistanceMappingTransformer *)self maxDistance];
      v9 = v10 == [v6 maxDistance];
      if (v7 == v8)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (SGTokenDistanceMappingTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"TARGET_STRING"];
  v8 = [v6 objectForKeyedSubscript:@"MAC_DISTANCE"];

  v9 = -[SGTokenDistanceMappingTransformer initWithTarget:maxDistance:](self, "initWithTarget:maxDistance:", v7, [v8 unsignedIntegerValue]);
  return v9;
}

- (id)toPlistWithChunks:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"TARGET_STRING";
  v4 = [(SGTokenDistanceMappingTransformer *)self targetString];
  v9[1] = @"MAC_DISTANCE";
  v10[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SGTokenDistanceMappingTransformer maxDistance](self, "maxDistance")}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)transform:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[SGTokenDistanceMappingTransformer transform:]", "SGTokenDistanceMappingTransformer.m", 47, "[input isKindOfClass:[NSArray class]]");
  }

  if ([v4 count])
  {
    v5 = [(SGTokenDistanceMappingTransformer *)self targetString];
    v6 = [v4 indexOfObject:v5];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = [objc_opt_class() transformArray:v4 withTargetIndex:v7 maximumDistance:{-[SGTokenDistanceMappingTransformer maxDistance](self, "maxDistance")}];
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (SGTokenDistanceMappingTransformer)initWithTarget:(id)a3 maxDistance:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SGTokenDistanceMappingTransformer;
  v7 = [(SGTokenDistanceMappingTransformer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SGTokenDistanceMappingTransformer *)v7 setTargetString:v6];
    [(SGTokenDistanceMappingTransformer *)v8 setMaxDistance:a4];
  }

  return v8;
}

+ (BOOL)debugAppendText:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_variant_has_internal_diagnostics() && [v3 length])
  {
    objc_sync_enter(@"SuggestionsMLDebugContextDataKey");
    v4 = [SGPaths suggestionsDirectoryFile:@"assertion_context"];
    v5 = [v3 stringByAppendingString:@"\n------\n"];
    v6 = [v5 dataUsingEncoding:4];

    v7 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v4];
    v8 = v7;
    if (v7)
    {
      [v7 seekToEndOfFile];
      [v8 writeData:v6];
      [v8 closeFile];
      v9 = 1;
    }

    else
    {
      v14 = *MEMORY[0x277CCA1B0];
      v15[0] = *MEMORY[0x277CCA198];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [v11 createFileAtPath:v4 contents:v6 attributes:v10];
    }

    objc_sync_exit(@"SuggestionsMLDebugContextDataKey");
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (void)debugStoreContext
{
  if (os_variant_has_internal_diagnostics())
  {
    v3 = [MEMORY[0x277CCACC8] currentThread];
    v5 = [v3 threadDictionary];

    v4 = [v5 objectForKeyedSubscript:@"SuggestionsMLDebugContextDataKey"];
    [a1 debugAppendText:v4];
  }
}

+ (void)debugSetContext:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    v3 = [MEMORY[0x277CCACC8] currentThread];
    v4 = [v3 threadDictionary];

    if ([v5 length])
    {
      [v4 setObject:v5 forKeyedSubscript:@"SuggestionsMLDebugContextDataKey"];
    }

    else
    {
      [v4 removeObjectForKey:@"SuggestionsMLDebugContextDataKey"];
    }
  }
}

+ (id)transformArray:(id)a3 withTargetIndex:(unint64_t)a4 maximumDistance:(unint64_t)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 count] <= a4)
  {
    [a1 debugStoreContext];
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v19 = a4;
      v20 = 2048;
      v21 = [v8 count];
      _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGTokenDistanceMappingTransformer: index=%lu, count=%lu", buf, 0x16u);
    }

    if ([v8 count] <= a4)
    {
      __assert_rtn("+[SGTokenDistanceMappingTransformer transformArray:withTargetIndex:maximumDistance:]", "SGTokenDistanceMappingTransformer.m", 66, "index < input.count");
    }
  }

  v10 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__SGTokenDistanceMappingTransformer_transformArray_withTargetIndex_maximumDistance___block_invoke;
  v14[3] = &unk_27894EC80;
  v16 = a4;
  v17 = a5;
  v11 = v10;
  v15 = v11;
  [v8 enumerateObjectsUsingBlock:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __84__SGTokenDistanceMappingTransformer_transformArray_withTargetIndex_maximumDistance___block_invoke(uint64_t a1, void *a2, int a3)
{
  LODWORD(v4) = a3 - *(a1 + 40);
  if ((v4 & 0x80000000) == 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = (*(a1 + 40) - a3);
  }

  if (*(a1 + 48) > v4)
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCACA8];
    v8 = a2;
    v9 = [[v7 alloc] initWithFormat:@"%@__%d", v8, (*(a1 + 40) - a3)];

    [v6 addObject:v9];
  }
}

+ (id)withTarget:(id)a3 maxDistance:(unint64_t)a4
{
  v5 = a3;
  v6 = [[SGTokenDistanceMappingTransformer alloc] initWithTarget:v5 maxDistance:a4];

  return v6;
}

@end