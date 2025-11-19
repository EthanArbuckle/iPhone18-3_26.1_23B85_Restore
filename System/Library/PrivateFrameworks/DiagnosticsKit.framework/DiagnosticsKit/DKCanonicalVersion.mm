@interface DKCanonicalVersion
+ (DKCanonicalVersion)canonicalVersionWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCanonicalVersion:(id)a3;
- (BOOL)isNewerThan:(id)a3;
- (DKCanonicalVersion)initWithCoder:(id)a3;
- (DKCanonicalVersion)initWithString:(id)a3;
- (id)_parseParts:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DKCanonicalVersion

+ (DKCanonicalVersion)canonicalVersionWithString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4];

  return v5;
}

- (DKCanonicalVersion)initWithString:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DKCanonicalVersion;
  v6 = [(DKCanonicalVersion *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(DKCanonicalVersion *)v6 _parseParts:v5];
    parts = v7->_parts;
    v7->_parts = v8;

    objc_storeStrong(&v7->_string, a3);
  }

  return v7;
}

- (BOOL)isNewerThan:(id)a3
{
  v4 = a3;
  v5 = [(DKCanonicalVersion *)self parts];
  v6 = [v5 count];

  v7 = [v4 parts];
  v8 = [v7 count];

  if (v6 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [(DKCanonicalVersion *)self parts];
      v13 = [v12 objectAtIndexedSubscript:v10];
      v14 = [v4 parts];
      v15 = [v14 objectAtIndexedSubscript:v10];
      v16 = [v13 compare:v15];

      if (v16 == 1)
      {
        v25 = 1;
        goto LABEL_12;
      }

      v17 = [(DKCanonicalVersion *)self parts];
      v18 = [v17 objectAtIndexedSubscript:v10];
      v19 = [v4 parts];
      v20 = [v19 objectAtIndexedSubscript:v10];
      v21 = [v18 isEqual:v20];

      v11 &= v21;
      ++v10;
    }

    while (v9 != v10);
    if (v11)
    {
      goto LABEL_9;
    }

    v25 = 0;
  }

  else
  {
LABEL_9:
    v22 = [(DKCanonicalVersion *)self parts];
    v23 = [v22 count];
    v24 = [v4 parts];
    v25 = v23 > [v24 count];
  }

LABEL_12:

  return v25;
}

- (DKCanonicalVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DKCanonicalVersion;
  v5 = [(DKCanonicalVersion *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"parts"];
    parts = v5->_parts;
    v5->_parts = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    string = v5->_string;
    v5->_string = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DKCanonicalVersion *)self parts];
  [v4 encodeObject:v5 forKey:@"parts"];

  v6 = [(DKCanonicalVersion *)self string];
  [v4 encodeObject:v6 forKey:@"string"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSArray *)self->_parts copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_string copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (unint64_t)hash
{
  v2 = [(DKCanonicalVersion *)self parts];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqualToCanonicalVersion:(id)a3
{
  v4 = a3;
  v5 = [(DKCanonicalVersion *)self parts];
  v6 = [v4 parts];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self == v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DKCanonicalVersion *)self isEqualToCanonicalVersion:v4];
  }

  return v5;
}

- (id)_parseParts:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v3 componentsSeparatedByString:@"."];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "integerValue")}];
          [v4 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    objc_autoreleasePoolPop(v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

@end