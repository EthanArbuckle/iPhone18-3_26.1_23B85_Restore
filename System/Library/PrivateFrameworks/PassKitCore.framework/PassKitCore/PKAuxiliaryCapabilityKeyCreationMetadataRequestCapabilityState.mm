@interface PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState
- (PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState)initWithCapability:(id)capability currentVersion:(id)version targetVersion:(id)targetVersion;
- (id)dictionaryRepresentation;
@end

@implementation PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState

- (PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState)initWithCapability:(id)capability currentVersion:(id)version targetVersion:(id)targetVersion
{
  capabilityCopy = capability;
  versionCopy = version;
  targetVersionCopy = targetVersion;
  v15.receiver = self;
  v15.super_class = PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState;
  v12 = [(PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_capability, capability);
    objc_storeStrong(&v13->_currentVersion, version);
    objc_storeStrong(&v13->_targetVersion, targetVersion);
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  identifier = [(PKPassAuxiliaryRegistrationRequirement *)self->_capability identifier];
  [v3 setObject:identifier forKeyedSubscript:@"capabilityIdentifier"];

  [v3 setObject:self->_currentVersion forKeyedSubscript:@"currentVersion"];
  [v3 setObject:self->_targetVersion forKeyedSubscript:@"targetVersion"];
  v5 = [v3 copy];

  return v5;
}

@end