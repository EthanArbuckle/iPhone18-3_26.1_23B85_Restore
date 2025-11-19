@interface CADSequenceToken
- (BOOL)isEqual:(id)a3;
- (CADSequenceToken)initWithAllDBSequenceMap:(id)a3;
- (CADSequenceToken)initWithCoder:(id)a3;
- (CADSequenceToken)initWithSerializedSequenceString:(id)a3;
- (id)description;
- (id)serializedSequenceString;
- (int)mainDBSequence;
@end

@implementation CADSequenceToken

- (CADSequenceToken)initWithAllDBSequenceMap:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CADSequenceToken;
  v6 = [(CADSequenceToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_allDBSequenceMap, a3);
  }

  return v7;
}

- (CADSequenceToken)initWithSerializedSequenceString:(id)a3
{
  v4 = a3;
  if ([v4 containsString:@"|"])
  {
    v5 = [v4 componentsSeparatedByString:@"|"];
    v25 = [MEMORY[0x277CBEB38] dictionary];
    if ([v5 count] >= 2)
    {
      v23 = self;
      v24 = v4;
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 componentsSeparatedByString:{@", "}];

      v22 = v5;
      v8 = [v5 objectAtIndexedSubscript:1];
      v9 = [v8 componentsSeparatedByString:{@", "}];

      v10 = [v7 count];
      v11 = [v9 count];
      if (v10 >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v14 = [v7 objectAtIndexedSubscript:i];
          if (([v14 isEqual:&stru_2837B4630] & 1) == 0)
          {
            v15 = [v14 intValue];
            v16 = [v9 objectAtIndexedSubscript:i];
            v17 = [v16 intValue];

            v18 = [MEMORY[0x277CCABB0] numberWithInt:v17];
            v19 = [MEMORY[0x277CCABB0] numberWithInt:v15];
            [v25 setObject:v18 forKeyedSubscript:v19];
          }
        }
      }

      self = v23;
      v4 = v24;
      v5 = v22;
    }

    v20 = [(CADSequenceToken *)self initWithAllDBSequenceMap:v25];
  }

  else
  {
    v20 = -[CADSequenceToken initWithMainDBSequence:](self, "initWithMainDBSequence:", [v4 intValue]);
  }

  return v20;
}

- (int)mainDBSequence
{
  allDBSequenceMap = self->_allDBSequenceMap;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*MEMORY[0x277CF7570]];
  v4 = [(NSDictionary *)allDBSequenceMap objectForKey:v3];

  LODWORD(v3) = [v4 intValue];
  return v3;
}

- (CADSequenceToken)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CADSequenceToken;
  v5 = [(CADSequenceToken *)&v9 init];
  if (v5)
  {
    if (initWithCoder__onceToken != -1)
    {
      [CADSequenceToken initWithCoder:];
    }

    v6 = [v4 decodeObjectOfClasses:initWithCoder____whitelistedClasses forKey:@"kAllDBSequenceMapKey"];
    allDBSequenceMap = v5->_allDBSequenceMap;
    v5->_allDBSequenceMap = v6;
  }

  return v5;
}

uint64_t __34__CADSequenceToken_initWithCoder___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = [v0 initWithObjects:{v1, objc_opt_class(), 0}];
  initWithCoder____whitelistedClasses = v2;

  return MEMORY[0x2821F96F8](v2);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(CADSequenceToken *)self allDBSequenceMap];
  v6 = [v4 allDBSequenceMap];

  LOBYTE(v4) = [v5 isEqualToDictionary:v6];
  return v4;
}

- (id)serializedSequenceString
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(CADSequenceToken *)self allDBSequenceMap];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"%@, ", *(*(&v23 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"|"];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(CADSequenceToken *)self allDBSequenceMap];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * j);
        v15 = [(CADSequenceToken *)self allDBSequenceMap];
        v16 = [v15 objectForKey:v14];

        [v3 appendFormat:@"%@, ", v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v6 = self;
  v2 = MEMORY[0x277CCACA8];
  v3 = [(CADSequenceToken *)self serializedSequenceString];
  v4 = [v2 stringWithFormat:@"<CADSequenceToken: %p> {%@}", &v6, v3];

  return v4;
}

@end