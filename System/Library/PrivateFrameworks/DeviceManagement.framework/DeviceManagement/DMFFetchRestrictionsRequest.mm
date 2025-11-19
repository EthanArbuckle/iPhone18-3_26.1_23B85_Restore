@interface DMFFetchRestrictionsRequest
- (DMFFetchRestrictionsRequest)init;
- (DMFFetchRestrictionsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchRestrictionsRequest

- (DMFFetchRestrictionsRequest)init
{
  v3.receiver = self;
  v3.super_class = DMFFetchRestrictionsRequest;
  result = [(CATTaskRequest *)&v3 init];
  if (result)
  {
    result->_profileFilterFlags = 0;
  }

  return result;
}

- (DMFFetchRestrictionsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFFetchRestrictionsRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includeProfileRestrictions"];
    v5->_includeProfileRestrictions = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profileFilterFlags"];
    v5->_profileFilterFlags = [v7 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFFetchRestrictionsRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFFetchRestrictionsRequest includeProfileRestrictions](self, "includeProfileRestrictions", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"includeProfileRestrictions"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchRestrictionsRequest profileFilterFlags](self, "profileFilterFlags")}];
  [v4 encodeObject:v6 forKey:@"profileFilterFlags"];
}

@end