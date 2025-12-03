@interface CCUIModuleInstance
- (CCUILayoutSize)prototypeModuleSize;
- (CCUIModuleInstance)initWithMetadata:(id)metadata module:(id)module prototypeModuleSize:(CCUILayoutSize)size;
- (CCUIModuleInstance)initWithMetadata:(id)metadata module:(id)module prototypeModuleSize:(CCUILayoutSize)size uniqueIdentifier:(id)identifier displayName:(id)name;
@end

@implementation CCUIModuleInstance

- (CCUIModuleInstance)initWithMetadata:(id)metadata module:(id)module prototypeModuleSize:(CCUILayoutSize)size
{
  height = size.height;
  width = size.width;
  v9 = MEMORY[0x277CCAD78];
  moduleCopy = module;
  metadataCopy = metadata;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];

  v14 = [(CCUIModuleInstance *)self initWithMetadata:metadataCopy module:moduleCopy prototypeModuleSize:width uniqueIdentifier:height displayName:uUIDString, 0];
  return v14;
}

- (CCUIModuleInstance)initWithMetadata:(id)metadata module:(id)module prototypeModuleSize:(CCUILayoutSize)size uniqueIdentifier:(id)identifier displayName:(id)name
{
  height = size.height;
  width = size.width;
  metadataCopy = metadata;
  moduleCopy = module;
  identifierCopy = identifier;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = CCUIModuleInstance;
  v18 = [(CCUIModuleInstance *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_metadata, metadata);
    objc_storeStrong(&v19->_module, module);
    v19->_prototypeModuleSize.width = width;
    v19->_prototypeModuleSize.height = height;
    v20 = [identifierCopy copy];
    uniqueIdentifier = v19->_uniqueIdentifier;
    v19->_uniqueIdentifier = v20;

    v22 = [nameCopy copy];
    displayName = v19->_displayName;
    v19->_displayName = v22;
  }

  return v19;
}

- (CCUILayoutSize)prototypeModuleSize
{
  height = self->_prototypeModuleSize.height;
  width = self->_prototypeModuleSize.width;
  result.height = height;
  result.width = width;
  return result;
}

@end