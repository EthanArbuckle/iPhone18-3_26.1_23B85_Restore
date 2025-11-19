@interface PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState
- (PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState)initWithCapability:(id)a3 currentVersion:(id)a4 targetVersion:(id)a5;
- (id)dictionaryRepresentation;
@end

@implementation PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState

- (PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState)initWithCapability:(id)a3 currentVersion:(id)a4 targetVersion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState;
  v12 = [(PKAuxiliaryCapabilityKeyCreationMetadataRequestCapabilityState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_capability, a3);
    objc_storeStrong(&v13->_currentVersion, a4);
    objc_storeStrong(&v13->_targetVersion, a5);
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKPassAuxiliaryRegistrationRequirement *)self->_capability identifier];
  [v3 setObject:v4 forKeyedSubscript:@"capabilityIdentifier"];

  [v3 setObject:self->_currentVersion forKeyedSubscript:@"currentVersion"];
  [v3 setObject:self->_targetVersion forKeyedSubscript:@"targetVersion"];
  v5 = [v3 copy];

  return v5;
}

@end