@interface FMDIdentitySigningRequest
- (FMDIdentitySigningRequest)initWithCoder:(id)a3;
- (FMDIdentitySigningRequest)initWithData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDIdentitySigningRequest

- (FMDIdentitySigningRequest)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FMDIdentitySigningRequest;
  v5 = [(FMDIdentitySigningRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDIdentitySigningRequest *)v5 setDataToSign:v4];
    [(FMDIdentitySigningRequest *)v6 setValidityInMinutes:10];
  }

  return v6;
}

- (FMDIdentitySigningRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDIdentitySigningRequest;
  v5 = [(FMDIdentitySigningRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataToSign"];
    [(FMDIdentitySigningRequest *)v5 setDataToSign:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"validityInMinutes"];
    -[FMDIdentitySigningRequest setValidityInMinutes:](v5, "setValidityInMinutes:", [v7 integerValue]);

    -[FMDIdentitySigningRequest setUseSCRT:](v5, "setUseSCRT:", [v4 decodeBoolForKey:@"useSCRT"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(FMDIdentitySigningRequest *)self dataToSign];
  [v6 encodeObject:v4 forKey:@"dataToSign"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FMDIdentitySigningRequest validityInMinutes](self, "validityInMinutes")}];
  [v6 encodeObject:v5 forKey:@"validityInMinutes"];

  [v6 encodeBool:-[FMDIdentitySigningRequest useSCRT](self forKey:{"useSCRT"), @"useSCRT"}];
}

@end