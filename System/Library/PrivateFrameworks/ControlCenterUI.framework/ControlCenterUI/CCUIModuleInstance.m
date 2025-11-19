@interface CCUIModuleInstance
- (CCUILayoutSize)prototypeModuleSize;
- (CCUIModuleInstance)initWithMetadata:(id)a3 module:(id)a4 prototypeModuleSize:(CCUILayoutSize)a5;
- (CCUIModuleInstance)initWithMetadata:(id)a3 module:(id)a4 prototypeModuleSize:(CCUILayoutSize)a5 uniqueIdentifier:(id)a6 displayName:(id)a7;
@end

@implementation CCUIModuleInstance

- (CCUIModuleInstance)initWithMetadata:(id)a3 module:(id)a4 prototypeModuleSize:(CCUILayoutSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = MEMORY[0x277CCAD78];
  v10 = a4;
  v11 = a3;
  v12 = [v9 UUID];
  v13 = [v12 UUIDString];

  v14 = [(CCUIModuleInstance *)self initWithMetadata:v11 module:v10 prototypeModuleSize:width uniqueIdentifier:height displayName:v13, 0];
  return v14;
}

- (CCUIModuleInstance)initWithMetadata:(id)a3 module:(id)a4 prototypeModuleSize:(CCUILayoutSize)a5 uniqueIdentifier:(id)a6 displayName:(id)a7
{
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = CCUIModuleInstance;
  v18 = [(CCUIModuleInstance *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_metadata, a3);
    objc_storeStrong(&v19->_module, a4);
    v19->_prototypeModuleSize.width = width;
    v19->_prototypeModuleSize.height = height;
    v20 = [v16 copy];
    uniqueIdentifier = v19->_uniqueIdentifier;
    v19->_uniqueIdentifier = v20;

    v22 = [v17 copy];
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