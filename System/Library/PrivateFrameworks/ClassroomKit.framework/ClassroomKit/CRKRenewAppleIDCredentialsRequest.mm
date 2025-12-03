@interface CRKRenewAppleIDCredentialsRequest
- (CRKRenewAppleIDCredentialsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKRenewAppleIDCredentialsRequest

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[CRKRenewAppleIDCredentialsRequest force](self, "force")}];
  [coderCopy encodeObject:v6 forKey:@"force"];

  reason = [(CRKRenewAppleIDCredentialsRequest *)self reason];
  [coderCopy encodeObject:reason forKey:@"reason"];
}

- (CRKRenewAppleIDCredentialsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CRKRenewAppleIDCredentialsRequest;
  v5 = [(CATTaskRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"force"];
    v5->_force = [v6 BOOLValue];

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v8;
  }

  return v5;
}

@end