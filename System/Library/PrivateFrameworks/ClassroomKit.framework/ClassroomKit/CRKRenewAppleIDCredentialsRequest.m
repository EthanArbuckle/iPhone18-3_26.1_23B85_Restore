@interface CRKRenewAppleIDCredentialsRequest
- (CRKRenewAppleIDCredentialsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKRenewAppleIDCredentialsRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[CRKRenewAppleIDCredentialsRequest force](self, "force")}];
  [v5 encodeObject:v6 forKey:@"force"];

  v7 = [(CRKRenewAppleIDCredentialsRequest *)self reason];
  [v5 encodeObject:v7 forKey:@"reason"];
}

- (CRKRenewAppleIDCredentialsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRKRenewAppleIDCredentialsRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"force"];
    v5->_force = [v6 BOOLValue];

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v8;
  }

  return v5;
}

@end