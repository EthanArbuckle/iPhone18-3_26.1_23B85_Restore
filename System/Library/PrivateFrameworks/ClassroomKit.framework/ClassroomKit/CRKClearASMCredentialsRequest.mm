@interface CRKClearASMCredentialsRequest
- (CRKClearASMCredentialsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKClearASMCredentialsRequest

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKClearASMCredentialsRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKClearASMCredentialsRequest role](self, "role", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"role"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKClearASMCredentialsRequest type](self, "type")}];
  [v4 encodeObject:v6 forKey:@"type"];
}

- (CRKClearASMCredentialsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKClearASMCredentialsRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"role"];
    v5->_role = [v6 integerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v7 integerValue];
  }

  return v5;
}

@end