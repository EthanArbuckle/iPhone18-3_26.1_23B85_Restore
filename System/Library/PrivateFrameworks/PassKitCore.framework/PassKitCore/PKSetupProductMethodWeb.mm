@interface PKSetupProductMethodWeb
- (PKSetupProductMethodWeb)initWithCoder:(id)coder;
- (PKSetupProductMethodWeb)initWithDictionary:(id)dictionary partnerIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_decorateDescription:(id)description;
- (void)encodeWithCode:(id)code;
@end

@implementation PKSetupProductMethodWeb

- (PKSetupProductMethodWeb)initWithDictionary:(id)dictionary partnerIdentifier:(id)identifier
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKSetupProductMethodWeb;
  v7 = [(PKSetupProductMethod *)&v13 initWithDictionary:dictionaryCopy partnerIdentifier:identifier];
  if (v7)
  {
    v8 = [dictionaryCopy PKStringForKey:@"webType"];
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

- (void)_decorateDescription:(id)description
{
  v6.receiver = self;
  v6.super_class = PKSetupProductMethodWeb;
  descriptionCopy = description;
  [(PKSetupProductMethod *)&v6 _decorateDescription:descriptionCopy];
  if (self->_webType == 1)
  {
    v5 = @"issuerInstallments";
  }

  else
  {
    v5 = @"unknown";
  }

  [descriptionCopy appendFormat:@"webType: '%@'; ", v5];
}

- (PKSetupProductMethodWeb)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKSetupProductMethodWeb;
  v5 = [(PKSetupProductMethod *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_webType = [coderCopy decodeIntegerForKey:@"webType"];
  }

  return v5;
}

- (void)encodeWithCode:(id)code
{
  v5.receiver = self;
  v5.super_class = PKSetupProductMethodWeb;
  codeCopy = code;
  [(PKSetupProductMethod *)&v5 encodeWithCoder:codeCopy];
  [codeCopy encodeInteger:self->_webType forKey:{@"webType", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PKSetupProductMethodWeb);
  [(PKSetupProductMethod *)self _copyInto:v4];
  v4->_webType = self->_webType;
  return v4;
}

@end