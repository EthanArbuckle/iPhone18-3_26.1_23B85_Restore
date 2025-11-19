@interface _CHSControlConfigurationReference
- (_CHSControlConfigurationReference)initWithControlIdentity:(id)a3 uniqueIdentifier:(id)a4;
@end

@implementation _CHSControlConfigurationReference

- (_CHSControlConfigurationReference)initWithControlIdentity:(id)a3 uniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _CHSControlConfigurationReference;
  v8 = [(_CHSControlConfigurationReference *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    controlIdentity = v8->_controlIdentity;
    v8->_controlIdentity = v9;

    v11 = [v7 copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v11;
  }

  return v8;
}

@end