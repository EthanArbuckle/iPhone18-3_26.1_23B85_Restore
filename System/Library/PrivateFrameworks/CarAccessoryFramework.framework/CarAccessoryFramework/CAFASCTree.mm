@interface CAFASCTree
+ (id)_nodesOfType:(unsigned __int8)type fromDict:(id)dict;
- (BOOL)_hasAccessory:(id)accessory service:(id)service characteristicOrControl:(id)control;
- (BOOL)hasAccessory:(id)accessory;
- (BOOL)hasAccessory:(id)accessory service:(id)service;
- (CAFASCTree)initWithContentsOfFile:(id)file;
- (CAFASCTree)initWithDictionary:(id)dictionary;
- (id)nodeForAccessory:(id)accessory serviceType:(id)type;
- (id)treeLogLines;
- (void)logErrorIfNeededForMissingRegistration:(id)registration;
- (void)validateRegisteredForAccessory:(id)accessory;
- (void)validateRegisteredForAccessory:(id)accessory service:(id)service;
- (void)validateRegisteredForAccessory:(id)accessory service:(id)service characteristic:(id)characteristic;
- (void)validateRegisteredForAccessory:(id)accessory service:(id)service control:(id)control;
@end

@implementation CAFASCTree

- (CAFASCTree)initWithContentsOfFile:(id)file
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:file];
  v5 = [(CAFASCTree *)self initWithDictionary:v4];

  return v5;
}

- (CAFASCTree)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = CAFASCTree;
  v5 = [(CAFASCTree *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_new();
    missingRegistrations = v5->_missingRegistrations;
    v5->_missingRegistrations = v6;

    v8 = [CAFASCTree _nodesOfType:0 fromDict:dictionaryCopy];
    accessories = v5->_accessories;
    v5->_accessories = v8;
  }

  return v5;
}

+ (id)_nodesOfType:(unsigned __int8)type fromDict:(id)dict
{
  dictCopy = dict;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__CAFASCTree__nodesOfType_fromDict___block_invoke;
  v9[3] = &unk_27890F448;
  typeCopy = type;
  v7 = v6;
  v10 = v7;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __36__CAFASCTree__nodesOfType_fromDict___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v5 = [CAFASCTreeNode nodeType:*(a1 + 40) withString:a2];
  if (v5)
  {
    objc_opt_class();
    v6 = v12;
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [CAFASCTree _nodesOfType:(*(a1 + 40) + 1) fromDict:v7];
    [v5 setChildren:v8];

    v9 = [v6 objectForKeyedSubscript:@"RegisteredValues"];
    [v5 setRegisteredValues:v9];

    v10 = *(a1 + 32);
    v11 = [v5 type];
    [v10 setObject:v5 forKeyedSubscript:v11];
  }
}

- (BOOL)hasAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessories = [(CAFASCTree *)self accessories];
  if ([accessories count])
  {
    accessories2 = [(CAFASCTree *)self accessories];
    v7 = [accessories2 objectForKeyedSubscript:accessoryCopy];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)hasAccessory:(id)accessory service:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  if ([(CAFASCTree *)self hasAccessory:accessoryCopy])
  {
    accessories = [(CAFASCTree *)self accessories];
    v9 = [accessories objectForKeyedSubscript:accessoryCopy];
    children = [v9 children];
    v11 = [children count];

    if (v11)
    {
      v12 = [(CAFASCTree *)self nodeForAccessory:accessoryCopy serviceType:serviceCopy];
      v13 = v12 != 0;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_hasAccessory:(id)accessory service:(id)service characteristicOrControl:(id)control
{
  accessoryCopy = accessory;
  serviceCopy = service;
  controlCopy = control;
  if ([(CAFASCTree *)self hasAccessory:accessoryCopy]&& [(CAFASCTree *)self hasAccessory:accessoryCopy service:serviceCopy])
  {
    accessories = [(CAFASCTree *)self accessories];
    v12 = [accessories objectForKeyedSubscript:accessoryCopy];
    children = [v12 children];
    v14 = [children objectForKeyedSubscript:serviceCopy];
    children2 = [v14 children];
    if ([children2 count])
    {
      accessories2 = [(CAFASCTree *)self accessories];
      [accessories2 objectForKeyedSubscript:accessoryCopy];
      v24 = v27 = accessories;
      [v24 children];
      v16 = v26 = v12;
      v17 = [v16 objectForKeyedSubscript:serviceCopy];
      [v17 children];
      v18 = v14;
      v20 = v19 = children;
      v21 = [v20 objectForKeyedSubscript:controlCopy];
      v22 = v21 != 0;

      children = v19;
      v14 = v18;

      v12 = v26;
      accessories = v27;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)nodeForAccessory:(id)accessory serviceType:(id)type
{
  typeCopy = type;
  accessoryCopy = accessory;
  accessories = [(CAFASCTree *)self accessories];
  v9 = [accessories objectForKeyedSubscript:accessoryCopy];

  v10 = [v9 _childNodeMatchingType:typeCopy];

  return v10;
}

- (id)treeLogLines
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  accessories = [(CAFASCTree *)self accessories];
  allValues = [accessories allValues];

  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) treeLogLinesIndent:0];
        [v3 addObjectsFromArray:v10];
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)validateRegisteredForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (![(CAFASCTree *)self hasAccessory:?])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [CAFAccessoryTypes accessoryNameForType:accessoryCopy];
    v6 = [v4 stringWithFormat:@"%@", v5];
    [(CAFASCTree *)self logErrorIfNeededForMissingRegistration:v6];
  }
}

- (void)validateRegisteredForAccessory:(id)accessory service:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  if (![(CAFASCTree *)self hasAccessory:accessoryCopy service:serviceCopy])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [CAFAccessoryTypes accessoryNameForType:accessoryCopy];
    v9 = [CAFServiceTypes serviceNameForType:serviceCopy];
    v10 = [v7 stringWithFormat:@"%@.%@", v8, v9];
    [(CAFASCTree *)self logErrorIfNeededForMissingRegistration:v10];
  }
}

- (void)validateRegisteredForAccessory:(id)accessory service:(id)service characteristic:(id)characteristic
{
  accessoryCopy = accessory;
  serviceCopy = service;
  characteristicCopy = characteristic;
  if (![(CAFASCTree *)self hasAccessory:accessoryCopy service:serviceCopy characteristic:characteristicCopy])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [CAFAccessoryTypes accessoryNameForType:accessoryCopy];
    v12 = [CAFServiceTypes serviceNameForType:serviceCopy];
    v13 = [CAFCharacteristicTypes characteristicNameForType:characteristicCopy];
    v14 = [v10 stringWithFormat:@"%@.%@.%@", v11, v12, v13];
    [(CAFASCTree *)self logErrorIfNeededForMissingRegistration:v14];
  }
}

- (void)validateRegisteredForAccessory:(id)accessory service:(id)service control:(id)control
{
  accessoryCopy = accessory;
  serviceCopy = service;
  controlCopy = control;
  if (![(CAFASCTree *)self hasAccessory:accessoryCopy service:serviceCopy control:controlCopy])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [CAFAccessoryTypes accessoryNameForType:accessoryCopy];
    v12 = [CAFServiceTypes serviceNameForType:serviceCopy];
    v13 = [CAFControlTypes controlNameForType:controlCopy];
    v14 = [v10 stringWithFormat:@"%@.%@.%@", v11, v12, v13];
    [(CAFASCTree *)self logErrorIfNeededForMissingRegistration:v14];
  }
}

- (void)logErrorIfNeededForMissingRegistration:(id)registration
{
  registrationCopy = registration;
  missingRegistrations = [(CAFASCTree *)self missingRegistrations];
  objc_sync_enter(missingRegistrations);
  missingRegistrations2 = [(CAFASCTree *)self missingRegistrations];
  v7 = [missingRegistrations2 containsObject:registrationCopy];

  if ((v7 & 1) == 0)
  {
    missingRegistrations3 = [(CAFASCTree *)self missingRegistrations];
    [missingRegistrations3 addObject:registrationCopy];

    v9 = CAFRegistrationLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CAFASCTree *)registrationCopy logErrorIfNeededForMissingRegistration:v9];
    }
  }

  objc_sync_exit(missingRegistrations);
}

- (void)logErrorIfNeededForMissingRegistration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231618000, a2, OS_LOG_TYPE_ERROR, "!! This app is not registered for %@ !!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end