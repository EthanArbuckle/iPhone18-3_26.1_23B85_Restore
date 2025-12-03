@interface SGSymbolicMappingTransformer
+ (id)withNumericMapping:(id)mapping andSymbolicMapping:(id)symbolicMapping;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSymbolicMappingTransformer:(id)transformer;
- (SGSymbolicMappingTransformer)initWithNumericMapping:(id)mapping andSymbolicMapping:(id)symbolicMapping;
- (SGSymbolicMappingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)toPlistWithChunks:(id)chunks;
- (id)transform:(id)transform;
- (unint64_t)hash;
@end

@implementation SGSymbolicMappingTransformer

- (unint64_t)hash
{
  numericMapping = [(SGSymbolicMappingTransformer *)self numericMapping];
  v4 = [numericMapping hash];

  characterMapping = [(SGSymbolicMappingTransformer *)self characterMapping];
  v6 = [characterMapping hash] - v4 + 32 * v4;

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSymbolicMappingTransformer *)self isEqualToSymbolicMappingTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToSymbolicMappingTransformer:(id)transformer
{
  transformerCopy = transformer;
  if (transformerCopy)
  {
    numericMapping = [(SGSymbolicMappingTransformer *)self numericMapping];
    numericMapping2 = [transformerCopy numericMapping];
    if (numericMapping == numericMapping2 || (-[SGSymbolicMappingTransformer numericMapping](self, "numericMapping"), v3 = objc_claimAutoreleasedReturnValue(), [transformerCopy numericMapping], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      characterMapping = [(SGSymbolicMappingTransformer *)self characterMapping];
      characterMapping2 = [transformerCopy characterMapping];
      v12 = characterMapping2;
      if (characterMapping == characterMapping2)
      {

        v9 = 1;
      }

      else
      {
        characterMapping3 = [(SGSymbolicMappingTransformer *)self characterMapping];
        characterMapping4 = [transformerCopy characterMapping];
        v9 = [characterMapping3 isEqual:characterMapping4];
      }

      if (numericMapping == numericMapping2)
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

- (SGSymbolicMappingTransformer)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  v7 = [plistCopy objectForKeyedSubscript:@"NUMERIC_MAPPING"];
  v8 = [plistCopy objectForKeyedSubscript:@"CHARACTER_MAPPING"];

  v9 = [(SGSymbolicMappingTransformer *)self initWithNumericMapping:v7 andSymbolicMapping:v8];
  return v9;
}

- (id)toPlistWithChunks:(id)chunks
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"NUMERIC_MAPPING";
  numericMapping = [(SGSymbolicMappingTransformer *)self numericMapping];
  v9[1] = @"CHARACTER_MAPPING";
  v10[0] = numericMapping;
  characterMapping = [(SGSymbolicMappingTransformer *)self characterMapping];
  v10[1] = characterMapping;
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
    __assert_rtn("[SGSymbolicMappingTransformer transform:]", "SGSymbolicMappingTransformer.m", 65, "[input isKindOfClass:[NSArray class]]");
  }

  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__SGSymbolicMappingTransformer_transform___block_invoke;
  v9[3] = &unk_27894F210;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [transformCopy enumerateObjectsUsingBlock:v9];
  v7 = v6;

  return v6;
}

void __42__SGSymbolicMappingTransformer_transform___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (_PASLooksLikeNumber())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) numericMapping];
LABEL_3:
    v5 = v4;
    v6 = numberedString(v4, [v9 length]);
    [v3 addObject:v6];

    goto LABEL_8;
  }

  v7 = [*(a1 + 40) characterSet];
  if ([v9 rangeOfCharacterFromSet:v7] == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(v9, "hasPrefix:", @"SG_FEATURE") & 1) != 0)
  {
  }

  else
  {
    v8 = [v9 hasPrefix:@"SG_TARGET"];

    if ((v8 & 1) == 0)
    {
      v3 = *(a1 + 32);
      v4 = [*(a1 + 40) characterMapping];
      goto LABEL_3;
    }
  }

  [*(a1 + 32) addObject:v9];
LABEL_8:
}

- (SGSymbolicMappingTransformer)initWithNumericMapping:(id)mapping andSymbolicMapping:(id)symbolicMapping
{
  mappingCopy = mapping;
  symbolicMappingCopy = symbolicMapping;
  v13.receiver = self;
  v13.super_class = SGSymbolicMappingTransformer;
  v8 = [(SGSymbolicMappingTransformer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(SGSymbolicMappingTransformer *)v8 setNumericMapping:mappingCopy];
    [(SGSymbolicMappingTransformer *)v9 setCharacterMapping:symbolicMappingCopy];
    letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
    invertedSet = [letterCharacterSet invertedSet];
    [(SGSymbolicMappingTransformer *)v9 setCharacterSet:invertedSet];
  }

  return v9;
}

+ (id)withNumericMapping:(id)mapping andSymbolicMapping:(id)symbolicMapping
{
  symbolicMappingCopy = symbolicMapping;
  mappingCopy = mapping;
  v7 = [[SGSymbolicMappingTransformer alloc] initWithNumericMapping:mappingCopy andSymbolicMapping:symbolicMappingCopy];

  return v7;
}

@end