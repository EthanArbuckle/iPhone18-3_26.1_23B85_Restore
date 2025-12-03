@interface FMDIdentitySigningRequest
- (FMDIdentitySigningRequest)initWithCoder:(id)coder;
- (FMDIdentitySigningRequest)initWithData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDIdentitySigningRequest

- (FMDIdentitySigningRequest)initWithData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = FMDIdentitySigningRequest;
  v5 = [(FMDIdentitySigningRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDIdentitySigningRequest *)v5 setDataToSign:dataCopy];
    [(FMDIdentitySigningRequest *)v6 setValidityInMinutes:10];
  }

  return v6;
}

- (FMDIdentitySigningRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FMDIdentitySigningRequest;
  v5 = [(FMDIdentitySigningRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataToSign"];
    [(FMDIdentitySigningRequest *)v5 setDataToSign:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"validityInMinutes"];
    -[FMDIdentitySigningRequest setValidityInMinutes:](v5, "setValidityInMinutes:", [v7 integerValue]);

    -[FMDIdentitySigningRequest setUseSCRT:](v5, "setUseSCRT:", [coderCopy decodeBoolForKey:@"useSCRT"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataToSign = [(FMDIdentitySigningRequest *)self dataToSign];
  [coderCopy encodeObject:dataToSign forKey:@"dataToSign"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FMDIdentitySigningRequest validityInMinutes](self, "validityInMinutes")}];
  [coderCopy encodeObject:v5 forKey:@"validityInMinutes"];

  [coderCopy encodeBool:-[FMDIdentitySigningRequest useSCRT](self forKey:{"useSCRT"), @"useSCRT"}];
}

@end