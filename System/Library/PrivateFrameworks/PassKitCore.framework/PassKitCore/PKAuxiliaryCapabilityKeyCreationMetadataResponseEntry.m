@interface PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry
- (PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry)initWithCapability:(id)a3 metadata:(id)a4;
@end

@implementation PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry

- (PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry)initWithCapability:(id)a3 metadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry;
  v9 = [(PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_capability, a3);
    objc_storeStrong(&v10->_metadata, a4);
  }

  return v10;
}

@end