@interface SGSymbolicMappingTransformer
+ (id)withNumericMapping:(id)a3 andSymbolicMapping:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSymbolicMappingTransformer:(id)a3;
- (SGSymbolicMappingTransformer)initWithNumericMapping:(id)a3 andSymbolicMapping:(id)a4;
- (SGSymbolicMappingTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)toPlistWithChunks:(id)a3;
- (id)transform:(id)a3;
- (unint64_t)hash;
@end

@implementation SGSymbolicMappingTransformer

- (unint64_t)hash
{
  v3 = [(SGSymbolicMappingTransformer *)self numericMapping];
  v4 = [v3 hash];

  v5 = [(SGSymbolicMappingTransformer *)self characterMapping];
  v6 = [v5 hash] - v4 + 32 * v4;

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSymbolicMappingTransformer *)self isEqualToSymbolicMappingTransformer:v5];
  }

  return v6;
}

- (BOOL)isEqualToSymbolicMappingTransformer:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = [(SGSymbolicMappingTransformer *)self numericMapping];
    v8 = [v6 numericMapping];
    if (v7 == v8 || (-[SGSymbolicMappingTransformer numericMapping](self, "numericMapping"), v3 = objc_claimAutoreleasedReturnValue(), [v6 numericMapping], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v10 = [(SGSymbolicMappingTransformer *)self characterMapping];
      v11 = [v6 characterMapping];
      v12 = v11;
      if (v10 == v11)
      {

        v9 = 1;
      }

      else
      {
        v13 = [(SGSymbolicMappingTransformer *)self characterMapping];
        v14 = [v6 characterMapping];
        v9 = [v13 isEqual:v14];
      }

      if (v7 == v8)
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

- (SGSymbolicMappingTransformer)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"NUMERIC_MAPPING"];
  v8 = [v6 objectForKeyedSubscript:@"CHARACTER_MAPPING"];

  v9 = [(SGSymbolicMappingTransformer *)self initWithNumericMapping:v7 andSymbolicMapping:v8];
  return v9;
}

- (id)toPlistWithChunks:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"NUMERIC_MAPPING";
  v4 = [(SGSymbolicMappingTransformer *)self numericMapping];
  v9[1] = @"CHARACTER_MAPPING";
  v10[0] = v4;
  v5 = [(SGSymbolicMappingTransformer *)self characterMapping];
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
    __assert_rtn("[SGSymbolicMappingTransformer transform:]", "SGSymbolicMappingTransformer.m", 65, "[input isKindOfClass:[NSArray class]]");
  }

  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__SGSymbolicMappingTransformer_transform___block_invoke;
  v9[3] = &unk_27894F210;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v4 enumerateObjectsUsingBlock:v9];
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

- (SGSymbolicMappingTransformer)initWithNumericMapping:(id)a3 andSymbolicMapping:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SGSymbolicMappingTransformer;
  v8 = [(SGSymbolicMappingTransformer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(SGSymbolicMappingTransformer *)v8 setNumericMapping:v6];
    [(SGSymbolicMappingTransformer *)v9 setCharacterMapping:v7];
    v10 = [MEMORY[0x277CCA900] letterCharacterSet];
    v11 = [v10 invertedSet];
    [(SGSymbolicMappingTransformer *)v9 setCharacterSet:v11];
  }

  return v9;
}

+ (id)withNumericMapping:(id)a3 andSymbolicMapping:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SGSymbolicMappingTransformer alloc] initWithNumericMapping:v6 andSymbolicMapping:v5];

  return v7;
}

@end