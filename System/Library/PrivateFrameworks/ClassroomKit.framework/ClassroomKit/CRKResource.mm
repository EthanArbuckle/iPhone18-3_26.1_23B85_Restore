@interface CRKResource
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHostedResource:(id)a3;
- (CRKResource)initWithCoder:(id)a3;
- (CRKResource)initWithDictionary:(id)a3;
- (CRKResource)initWithHostedURL:(id)a3 isZippedBundle:(BOOL)a4;
- (NSDictionary)dictionaryValue;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKResource

- (CRKResource)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"HostedURL"];
  v6 = [v4 objectForKeyedSubscript:@"IsZippedBundle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    self = -[CRKResource initWithHostedURL:isZippedBundle:](self, "initWithHostedURL:isZippedBundle:", v5, [v6 BOOLValue]);
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CRKResource)initWithHostedURL:(id)a3 isZippedBundle:(BOOL)a4
{
  v8 = a3;
  if (!v8)
  {
    [CRKResource initWithHostedURL:a2 isZippedBundle:self];
  }

  v12.receiver = self;
  v12.super_class = CRKResource;
  v9 = [(CRKResource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hostedURL, a3);
    v10->_zippedBundle = a4;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(CRKResource *)self hostedURL];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKResource isZippedBundle](self, "isZippedBundle")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKResource *)self isEqualToHostedResource:v4];

  return v5;
}

- (BOOL)isEqualToHostedResource:(id)a3
{
  v4 = a3;
  v5 = [(CRKResource *)self hostedURL];
  v6 = [v4 hostedURL];
  if ([v5 isEqual:v6])
  {
    v7 = [(CRKResource *)self isZippedBundle];
    v8 = v7 ^ [v4 isZippedBundle] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKResource *)self hostedURL];
  v6 = [v5 absoluteString];
  v7 = [(CRKResource *)self isZippedBundle];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p { hostedURL = %@, isZippedBundle = %@ }>", v4, self, v6, v8];

  return v9;
}

- (NSDictionary)dictionaryValue
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"HostedURL";
  v3 = [(CRKResource *)self hostedURL];
  v7[1] = @"IsZippedBundle";
  v8[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKResource isZippedBundle](self, "isZippedBundle")}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (CRKResource)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRKResource;
  v5 = [(CRKResource *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"hostedURL"];
    hostedURL = v5->_hostedURL;
    v5->_hostedURL = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zippedBundle"];
    v5->_zippedBundle = [v9 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRKResource *)self hostedURL];
  [v4 encodeObject:v5 forKey:@"hostedURL"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKResource isZippedBundle](self, "isZippedBundle")}];
  [v4 encodeObject:v6 forKey:@"zippedBundle"];
}

- (void)initWithHostedURL:(uint64_t)a1 isZippedBundle:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKResource.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"hostedURL"}];
}

@end