@interface _CHSControlConfigurationReference
- (_CHSControlConfigurationReference)initWithControlIdentity:(id)identity uniqueIdentifier:(id)identifier;
@end

@implementation _CHSControlConfigurationReference

- (_CHSControlConfigurationReference)initWithControlIdentity:(id)identity uniqueIdentifier:(id)identifier
{
  identityCopy = identity;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _CHSControlConfigurationReference;
  v8 = [(_CHSControlConfigurationReference *)&v14 init];
  if (v8)
  {
    v9 = [identityCopy copy];
    controlIdentity = v8->_controlIdentity;
    v8->_controlIdentity = v9;

    v11 = [identifierCopy copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v11;
  }

  return v8;
}

@end