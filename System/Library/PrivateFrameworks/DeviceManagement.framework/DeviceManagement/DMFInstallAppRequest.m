@interface DMFInstallAppRequest
- (DMFInstallAppRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFInstallAppRequest

- (DMFInstallAppRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFInstallAppRequest;
  v5 = [(DMFAppRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"licenseType"];
    v5->_licenseType = [v6 integerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowFreePurchases"];
    v5->_allowFreePurchases = [v7 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMFInstallAppRequest;
  v4 = a3;
  [(DMFAppRequest *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFInstallAppRequest licenseType](self, "licenseType", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"licenseType"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFInstallAppRequest allowFreePurchases](self, "allowFreePurchases")}];
  [v4 encodeObject:v6 forKey:@"allowFreePurchases"];
}

@end