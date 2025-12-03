@interface PKPaymentPassActionRemoteConfiguration
- (PKPaymentPassActionRemoteConfiguration)initWithCoder:(id)coder;
- (PKPaymentPassActionRemoteConfiguration)initWithDictionary:(id)dictionary;
- (PKPaymentPassActionRemoteConfiguration)initWithRequiresAppletData:(BOOL)data appletDataRequiresEncryption:(BOOL)encryption;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentPassActionRemoteConfiguration

- (PKPaymentPassActionRemoteConfiguration)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v5 = [dictionaryCopy PKBoolForKey:@"requiresAppletData"];
    v6 = [dictionaryCopy PKBoolForKey:@"appletDataRequiresEncryption"];

    self = [(PKPaymentPassActionRemoteConfiguration *)self initWithRequiresAppletData:v5 appletDataRequiresEncryption:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKPaymentPassActionRemoteConfiguration)initWithRequiresAppletData:(BOOL)data appletDataRequiresEncryption:(BOOL)encryption
{
  v7.receiver = self;
  v7.super_class = PKPaymentPassActionRemoteConfiguration;
  result = [(PKPaymentPassActionRemoteConfiguration *)&v7 init];
  if (result)
  {
    result->_requiresAppletData = data;
    result->_appletDataRequiresEncryption = data && encryption;
  }

  return result;
}

- (PKPaymentPassActionRemoteConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKPaymentPassActionRemoteConfiguration;
  v5 = [(PKPaymentPassActionRemoteConfiguration *)&v7 init];
  if (v5)
  {
    v5->_requiresAppletData = [coderCopy decodeBoolForKey:@"requiresAppletData"];
    v5->_appletDataRequiresEncryption = [coderCopy decodeBoolForKey:@"appletDataRequiresEncryption"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  requiresAppletData = self->_requiresAppletData;
  coderCopy = coder;
  [coderCopy encodeBool:requiresAppletData forKey:@"requiresAppletData"];
  [coderCopy encodeBool:self->_appletDataRequiresEncryption forKey:@"appletDataRequiresEncryption"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
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