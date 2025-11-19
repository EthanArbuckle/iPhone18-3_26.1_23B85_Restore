@interface PKPaymentPassActionRemoteConfiguration
- (PKPaymentPassActionRemoteConfiguration)initWithCoder:(id)a3;
- (PKPaymentPassActionRemoteConfiguration)initWithDictionary:(id)a3;
- (PKPaymentPassActionRemoteConfiguration)initWithRequiresAppletData:(BOOL)a3 appletDataRequiresEncryption:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentPassActionRemoteConfiguration

- (PKPaymentPassActionRemoteConfiguration)initWithDictionary:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 PKBoolForKey:@"requiresAppletData"];
    v6 = [v4 PKBoolForKey:@"appletDataRequiresEncryption"];

    self = [(PKPaymentPassActionRemoteConfiguration *)self initWithRequiresAppletData:v5 appletDataRequiresEncryption:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PKPaymentPassActionRemoteConfiguration)initWithRequiresAppletData:(BOOL)a3 appletDataRequiresEncryption:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentPassActionRemoteConfiguration;
  result = [(PKPaymentPassActionRemoteConfiguration *)&v7 init];
  if (result)
  {
    result->_requiresAppletData = a3;
    result->_appletDataRequiresEncryption = a3 && a4;
  }

  return result;
}

- (PKPaymentPassActionRemoteConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPaymentPassActionRemoteConfiguration;
  v5 = [(PKPaymentPassActionRemoteConfiguration *)&v7 init];
  if (v5)
  {
    v5->_requiresAppletData = [v4 decodeBoolForKey:@"requiresAppletData"];
    v5->_appletDataRequiresEncryption = [v4 decodeBoolForKey:@"appletDataRequiresEncryption"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requiresAppletData = self->_requiresAppletData;
  v5 = a3;
  [v5 encodeBool:requiresAppletData forKey:@"requiresAppletData"];
  [v5 encodeBool:self->_appletDataRequiresEncryption forKey:@"appletDataRequiresEncryption"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  *(result + 8) = self->_requiresAppletData;
  *(result + 9) = self->_appletDataRequiresEncryption;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ ", objc_opt_class()];;
  v4 = v3;
  if (self->_requiresAppletData)
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  [v3 appendFormat:@"requiresAppletData: '%@'; ", v5];
  if (self->_appletDataRequiresEncryption)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  [v4 appendFormat:@"appletDataRequiresEncryption: '%@'; ", v6];
  [v4 appendFormat:@">"];

  return v4;
}

@end