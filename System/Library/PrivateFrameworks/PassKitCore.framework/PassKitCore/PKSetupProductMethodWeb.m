@interface PKSetupProductMethodWeb
- (PKSetupProductMethodWeb)initWithCoder:(id)a3;
- (PKSetupProductMethodWeb)initWithDictionary:(id)a3 partnerIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_decorateDescription:(id)a3;
- (void)encodeWithCode:(id)a3;
@end

@implementation PKSetupProductMethodWeb

- (PKSetupProductMethodWeb)initWithDictionary:(id)a3 partnerIdentifier:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PKSetupProductMethodWeb;
  v7 = [(PKSetupProductMethod *)&v13 initWithDictionary:v6 partnerIdentifier:a4];
  if (v7)
  {
    v8 = [v6 PKStringForKey:@"webType"];
    v9 = v8;
    v11 = 1;
    if (v8 != @"issuerInstallments")
    {
      if (!v8 || (v10 = [(__CFString *)v8 isEqualToString:@"issuerInstallments"], v9, !v10))
      {
        v11 = 0;
      }
    }

    v7->_webType = v11;
  }

  return v7;
}

- (void)_decorateDescription:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKSetupProductMethodWeb;
  v4 = a3;
  [(PKSetupProductMethod *)&v6 _decorateDescription:v4];
  if (self->_webType == 1)
  {
    v5 = @"issuerInstallments";
  }

  else
  {
    v5 = @"unknown";
  }

  [v4 appendFormat:@"webType: '%@'; ", v5];
}

- (PKSetupProductMethodWeb)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKSetupProductMethodWeb;
  v5 = [(PKSetupProductMethod *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_webType = [v4 decodeIntegerForKey:@"webType"];
  }

  return v5;
}

- (void)encodeWithCode:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodWeb;
  v4 = a3;
  [(PKSetupProductMethod *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_webType forKey:{@"webType", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PKSetupProductMethodWeb);
  [(PKSetupProductMethod *)self _copyInto:v4];
  v4->_webType = self->_webType;
  return v4;
}

@end