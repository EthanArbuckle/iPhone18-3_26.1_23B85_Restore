@interface DKCanonicalVersion
+ (DKCanonicalVersion)canonicalVersionWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCanonicalVersion:(id)version;
- (BOOL)isNewerThan:(id)than;
- (DKCanonicalVersion)initWithCoder:(id)coder;
- (DKCanonicalVersion)initWithString:(id)string;
- (id)_parseParts:(id)parts;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DKCanonicalVersion

+ (DKCanonicalVersion)canonicalVersionWithString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy];

  return v5;
}

- (DKCanonicalVersion)initWithString:(id)string
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = DKCanonicalVersion;
  v6 = [(DKCanonicalVersion *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(DKCanonicalVersion *)v6 _parseParts:stringCopy];
    parts = v7->_parts;
    v7->_parts = v8;

    objc_storeStrong(&v7->_string, string);
  }

  return v7;
}

- (BOOL)isNewerThan:(id)than
{
  thanCopy = than;
  parts = [(DKCanonicalVersion *)self parts];
  v6 = [parts count];

  parts2 = [thanCopy parts];
  v8 = [parts2 count];

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
      parts3 = [(DKCanonicalVersion *)self parts];
      v13 = [parts3 objectAtIndexedSubscript:v10];
      parts4 = [thanCopy parts];
      v15 = [parts4 objectAtIndexedSubscript:v10];
      v16 = [v13 compare:v15];

      if (v16 == 1)
      {
        v25 = 1;
        goto LABEL_12;
      }

      parts5 = [(DKCanonicalVersion *)self parts];
      v18 = [parts5 objectAtIndexedSubscript:v10];
      parts6 = [thanCopy parts];
      v20 = [parts6 objectAtIndexedSubscript:v10];
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
    parts7 = [(DKCanonicalVersion *)self parts];
    v23 = [parts7 count];
    parts8 = [thanCopy parts];
    v25 = v23 > [parts8 count];
  }

LABEL_12:

  return v25;
}

- (DKCanonicalVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DKCanonicalVersion;
  v5 = [(DKCanonicalVersion *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"parts"];
    parts = v5->_parts;
    v5->_parts = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"string"];
    string = v5->_string;
    v5->_string = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parts = [(DKCanonicalVersion *)self parts];
  [coderCopy encodeObject:parts forKey:@"parts"];

  string = [(DKCanonicalVersion *)self string];
  [coderCopy encodeObject:string forKey:@"string"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSArray *)self->_parts copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_string copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (unint64_t)hash
{
  parts = [(DKCanonicalVersion *)self parts];
  v3 = [parts hash];

  return v3;
}

- (BOOL)isEqualToCanonicalVersion:(id)version
{
  versionCopy = version;
  parts = [(DKCanonicalVersion *)self parts];
  parts2 = [versionCopy parts];

  LOBYTE(versionCopy) = [parts isEqual:parts2];
  return versionCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DKCanonicalVersion *)self isEqualToCanonicalVersion:equalCopy];
  }

  return v5;
}

- (id)_parseParts:(id)parts
{
  v19 = *MEMORY[0x277D85DE8];
  partsCopy = parts;
  array = [MEMORY[0x277CBEB18] array];
  if (partsCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [partsCopy componentsSeparatedByString:@"."];
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
          [array addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    objc_autoreleasePoolPop(v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

@end