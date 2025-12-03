@interface CRKClearASMCredentialsRequest
- (CRKClearASMCredentialsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKClearASMCredentialsRequest

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKClearASMCredentialsRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKClearASMCredentialsRequest role](self, "role", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"role"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKClearASMCredentialsRequest type](self, "type")}];
  [coderCopy encodeObject:v6 forKey:@"type"];
}

- (CRKClearASMCredentialsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CRKClearASMCredentialsRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
    v5->_role = [v6 integerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v7 integerValue];
  }

  return v5;
}

@end