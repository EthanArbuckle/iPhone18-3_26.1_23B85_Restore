@interface PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry
- (PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry)initWithCapability:(id)capability metadata:(id)metadata;
@end

@implementation PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry

- (PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry)initWithCapability:(id)capability metadata:(id)metadata
{
  capabilityCopy = capability;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry;
  v9 = [(PKAuxiliaryCapabilityKeyCreationMetadataResponseEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_capability, capability);
    objc_storeStrong(&v10->_metadata, metadata);
  }

  return v10;
}

@end