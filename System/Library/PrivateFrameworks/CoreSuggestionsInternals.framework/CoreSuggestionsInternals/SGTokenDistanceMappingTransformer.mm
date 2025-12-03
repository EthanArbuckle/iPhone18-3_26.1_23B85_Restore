@interface SGTokenDistanceMappingTransformer
+ (BOOL)debugAppendText:(id)text;
+ (id)transformArray:(id)array withTargetIndex:(unint64_t)index maximumDistance:(unint64_t)distance;
+ (id)withTarget:(id)target maxDistance:(unint64_t)distance;
+ (void)debugSetContext:(id)context;
+ (void)debugStoreContext;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTokenDistanceMappingTransformer:(id)transformer;
- (SGTokenDistanceMappingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (SGTokenDistanceMappingTransformer)initWithTarget:(id)target maxDistance:(unint64_t)distance;
- (id)toPlistWithChunks:(id)chunks;
- (id)transform:(id)transform;
- (unint64_t)hash;
@end

@implementation SGTokenDistanceMappingTransformer

- (unint64_t)hash
{
  targetString = [(SGTokenDistanceMappingTransformer *)self targetString];
  v4 = [targetString hash];

  return [(SGTokenDistanceMappingTransformer *)self maxDistance]- v4 + 32 * v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGTokenDistanceMappingTransformer *)self isEqualToTokenDistanceMappingTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToTokenDistanceMappingTransformer:(id)transformer
{
  transformerCopy = transformer;
  if (transformerCopy)
  {
    targetString = [(SGTokenDistanceMappingTransformer *)self targetString];
    targetString2 = [transformerCopy targetString];
    if (targetString == targetString2 || (-[SGTokenDistanceMappingTransformer targetString](self, "targetString"), v3 = objc_claimAutoreleasedReturnValue(), [transformerCopy targetString], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      maxDistance = [(SGTokenDistanceMappingTransformer *)self maxDistance];
      v9 = maxDistance == [transformerCopy maxDistance];
      if (targetString == targetString2)
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

- (SGTokenDistanceMappingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  v7 = [plistCopy objectForKeyedSubscript:@"TARGET_STRING"];
  v8 = [plistCopy objectForKeyedSubscript:@"MAC_DISTANCE"];

  v9 = -[SGTokenDistanceMappingTransformer initWithTarget:maxDistance:](self, "initWithTarget:maxDistance:", v7, [v8 unsignedIntegerValue]);
  return v9;
}

- (id)toPlistWithChunks:(id)chunks
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"TARGET_STRING";
  targetString = [(SGTokenDistanceMappingTransformer *)self targetString];
  v9[1] = @"MAC_DISTANCE";
  v10[0] = targetString;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SGTokenDistanceMappingTransformer maxDistance](self, "maxDistance")}];
  v10[1] = v5;
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
    __assert_rtn("[SGTokenDistanceMappingTransformer transform:]", "SGTokenDistanceMappingTransformer.m", 47, "[input isKindOfClass:[NSArray class]]");
  }

  if ([transformCopy count])
  {
    targetString = [(SGTokenDistanceMappingTransformer *)self targetString];
    v6 = [transformCopy indexOfObject:targetString];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = [objc_opt_class() transformArray:transformCopy withTargetIndex:v7 maximumDistance:{-[SGTokenDistanceMappingTransformer maxDistance](self, "maxDistance")}];
  }

  else
  {
    v8 = transformCopy;
  }

  v9 = v8;

  return v9;
}

- (SGTokenDistanceMappingTransformer)initWithTarget:(id)target maxDistance:(unint64_t)distance
{
  targetCopy = target;
  v10.receiver = self;
  v10.super_class = SGTokenDistanceMappingTransformer;
  v7 = [(SGTokenDistanceMappingTransformer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SGTokenDistanceMappingTransformer *)v7 setTargetString:targetCopy];
    [(SGTokenDistanceMappingTransformer *)v8 setMaxDistance:distance];
  }

  return v8;
}

+ (BOOL)debugAppendText:(id)text
{
  v15[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  if (os_variant_has_internal_diagnostics() && [textCopy length])
  {
    objc_sync_enter(@"SuggestionsMLDebugContextDataKey");
    v4 = [SGPaths suggestionsDirectoryFile:@"assertion_context"];
    v5 = [textCopy stringByAppendingString:@"\n------\n"];
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
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [defaultManager createFileAtPath:v4 contents:v6 attributes:v10];
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
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v4 = [threadDictionary objectForKeyedSubscript:@"SuggestionsMLDebugContextDataKey"];
    [self debugAppendText:v4];
  }
}

+ (void)debugSetContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_diagnostics())
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    if ([contextCopy length])
    {
      [threadDictionary setObject:contextCopy forKeyedSubscript:@"SuggestionsMLDebugContextDataKey"];
    }

    else
    {
      [threadDictionary removeObjectForKey:@"SuggestionsMLDebugContextDataKey"];
    }
  }
}

+ (id)transformArray:(id)array withTargetIndex:(unint64_t)index maximumDistance:(unint64_t)distance
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if ([arrayCopy count] <= index)
  {
    [self debugStoreContext];
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      indexCopy = index;
      v20 = 2048;
      v21 = [arrayCopy count];
      _os_log_impl(&dword_231E60000, v9, OS_LOG_TYPE_INFO, "SGTokenDistanceMappingTransformer: index=%lu, count=%lu", buf, 0x16u);
    }

    if ([arrayCopy count] <= index)
    {
      __assert_rtn("+[SGTokenDistanceMappingTransformer transformArray:withTargetIndex:maximumDistance:]", "SGTokenDistanceMappingTransformer.m", 66, "index < input.count");
    }
  }

  v10 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__SGTokenDistanceMappingTransformer_transformArray_withTargetIndex_maximumDistance___block_invoke;
  v14[3] = &unk_27894EC80;
  indexCopy2 = index;
  distanceCopy = distance;
  v11 = v10;
  v15 = v11;
  [arrayCopy enumerateObjectsUsingBlock:v14];

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

+ (id)withTarget:(id)target maxDistance:(unint64_t)distance
{
  targetCopy = target;
  v6 = [[SGTokenDistanceMappingTransformer alloc] initWithTarget:targetCopy maxDistance:distance];

  return v6;
}

@end