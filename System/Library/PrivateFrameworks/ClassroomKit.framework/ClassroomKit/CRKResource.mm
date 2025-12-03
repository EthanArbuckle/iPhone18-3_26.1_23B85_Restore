@interface CRKResource
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHostedResource:(id)resource;
- (CRKResource)initWithCoder:(id)coder;
- (CRKResource)initWithDictionary:(id)dictionary;
- (CRKResource)initWithHostedURL:(id)l isZippedBundle:(BOOL)bundle;
- (NSDictionary)dictionaryValue;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKResource

- (CRKResource)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"HostedURL"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"IsZippedBundle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    self = -[CRKResource initWithHostedURL:isZippedBundle:](self, "initWithHostedURL:isZippedBundle:", v5, [v6 BOOLValue]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CRKResource)initWithHostedURL:(id)l isZippedBundle:(BOOL)bundle
{
  lCopy = l;
  if (!lCopy)
  {
    [CRKResource initWithHostedURL:a2 isZippedBundle:self];
  }

  v12.receiver = self;
  v12.super_class = CRKResource;
  v9 = [(CRKResource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hostedURL, l);
    v10->_zippedBundle = bundle;
  }

  return v10;
}

- (unint64_t)hash
{
  hostedURL = [(CRKResource *)self hostedURL];
  v4 = [hostedURL hash];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKResource isZippedBundle](self, "isZippedBundle")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRKResource *)self isEqualToHostedResource:equalCopy];

  return v5;
}

- (BOOL)isEqualToHostedResource:(id)resource
{
  resourceCopy = resource;
  hostedURL = [(CRKResource *)self hostedURL];
  hostedURL2 = [resourceCopy hostedURL];
  if ([hostedURL isEqual:hostedURL2])
  {
    isZippedBundle = [(CRKResource *)self isZippedBundle];
    v8 = isZippedBundle ^ [resourceCopy isZippedBundle] ^ 1;
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
  hostedURL = [(CRKResource *)self hostedURL];
  absoluteString = [hostedURL absoluteString];
  isZippedBundle = [(CRKResource *)self isZippedBundle];
  v8 = @"NO";
  if (isZippedBundle)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p { hostedURL = %@, isZippedBundle = %@ }>", v4, self, absoluteString, v8];

  return v9;
}

- (NSDictionary)dictionaryValue
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"HostedURL";
  hostedURL = [(CRKResource *)self hostedURL];
  v7[1] = @"IsZippedBundle";
  v8[0] = hostedURL;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKResource isZippedBundle](self, "isZippedBundle")}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (CRKResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CRKResource;
  v5 = [(CRKResource *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"hostedURL"];
    hostedURL = v5->_hostedURL;
    v5->_hostedURL = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zippedBundle"];
    v5->_zippedBundle = [v9 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hostedURL = [(CRKResource *)self hostedURL];
  [coderCopy encodeObject:hostedURL forKey:@"hostedURL"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKResource isZippedBundle](self, "isZippedBundle")}];
  [coderCopy encodeObject:v6 forKey:@"zippedBundle"];
}

- (void)initWithHostedURL:(uint64_t)a1 isZippedBundle:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKResource.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"hostedURL"}];
}

@end