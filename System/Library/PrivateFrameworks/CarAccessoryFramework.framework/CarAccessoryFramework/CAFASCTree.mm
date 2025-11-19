@interface CAFASCTree
+ (id)_nodesOfType:(unsigned __int8)a3 fromDict:(id)a4;
- (BOOL)_hasAccessory:(id)a3 service:(id)a4 characteristicOrControl:(id)a5;
- (BOOL)hasAccessory:(id)a3;
- (BOOL)hasAccessory:(id)a3 service:(id)a4;
- (CAFASCTree)initWithContentsOfFile:(id)a3;
- (CAFASCTree)initWithDictionary:(id)a3;
- (id)nodeForAccessory:(id)a3 serviceType:(id)a4;
- (id)treeLogLines;
- (void)logErrorIfNeededForMissingRegistration:(id)a3;
- (void)validateRegisteredForAccessory:(id)a3;
- (void)validateRegisteredForAccessory:(id)a3 service:(id)a4;
- (void)validateRegisteredForAccessory:(id)a3 service:(id)a4 characteristic:(id)a5;
- (void)validateRegisteredForAccessory:(id)a3 service:(id)a4 control:(id)a5;
@end

@implementation CAFASCTree

- (CAFASCTree)initWithContentsOfFile:(id)a3
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:a3];
  v5 = [(CAFASCTree *)self initWithDictionary:v4];

  return v5;
}

- (CAFASCTree)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CAFASCTree;
  v5 = [(CAFASCTree *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_new();
    missingRegistrations = v5->_missingRegistrations;
    v5->_missingRegistrations = v6;

    v8 = [CAFASCTree _nodesOfType:0 fromDict:v4];
    accessories = v5->_accessories;
    v5->_accessories = v8;
  }

  return v5;
}

+ (id)_nodesOfType:(unsigned __int8)a3 fromDict:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__CAFASCTree__nodesOfType_fromDict___block_invoke;
  v9[3] = &unk_27890F448;
  v11 = a3;
  v7 = v6;
  v10 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

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

- (BOOL)hasAccessory:(id)a3
{
  v4 = a3;
  v5 = [(CAFASCTree *)self accessories];
  if ([v5 count])
  {
    v6 = [(CAFASCTree *)self accessories];
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)hasAccessory:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CAFASCTree *)self hasAccessory:v6])
  {
    v8 = [(CAFASCTree *)self accessories];
    v9 = [v8 objectForKeyedSubscript:v6];
    v10 = [v9 children];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(CAFASCTree *)self nodeForAccessory:v6 serviceType:v7];
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

- (BOOL)_hasAccessory:(id)a3 service:(id)a4 characteristicOrControl:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CAFASCTree *)self hasAccessory:v8]&& [(CAFASCTree *)self hasAccessory:v8 service:v9])
  {
    v11 = [(CAFASCTree *)self accessories];
    v12 = [v11 objectForKeyedSubscript:v8];
    v13 = [v12 children];
    v14 = [v13 objectForKeyedSubscript:v9];
    v15 = [v14 children];
    if ([v15 count])
    {
      v25 = [(CAFASCTree *)self accessories];
      [v25 objectForKeyedSubscript:v8];
      v24 = v27 = v11;
      [v24 children];
      v16 = v26 = v12;
      v17 = [v16 objectForKeyedSubscript:v9];
      [v17 children];
      v18 = v14;
      v20 = v19 = v13;
      v21 = [v20 objectForKeyedSubscript:v10];
      v22 = v21 != 0;

      v13 = v19;
      v14 = v18;

      v12 = v26;
      v11 = v27;
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

- (id)nodeForAccessory:(id)a3 serviceType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CAFASCTree *)self accessories];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 _childNodeMatchingType:v6];

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
  v4 = [(CAFASCTree *)self accessories];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) treeLogLinesIndent:0];
        [v3 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)validateRegisteredForAccessory:(id)a3
{
  v7 = a3;
  if (![(CAFASCTree *)self hasAccessory:?])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [CAFAccessoryTypes accessoryNameForType:v7];
    v6 = [v4 stringWithFormat:@"%@", v5];
    [(CAFASCTree *)self logErrorIfNeededForMissingRegistration:v6];
  }
}

- (void)validateRegisteredForAccessory:(id)a3 service:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (![(CAFASCTree *)self hasAccessory:v11 service:v6])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [CAFAccessoryTypes accessoryNameForType:v11];
    v9 = [CAFServiceTypes serviceNameForType:v6];
    v10 = [v7 stringWithFormat:@"%@.%@", v8, v9];
    [(CAFASCTree *)self logErrorIfNeededForMissingRegistration:v10];
  }
}

- (void)validateRegisteredForAccessory:(id)a3 service:(id)a4 characteristic:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (![(CAFASCTree *)self hasAccessory:v15 service:v8 characteristic:v9])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [CAFAccessoryTypes accessoryNameForType:v15];
    v12 = [CAFServiceTypes serviceNameForType:v8];
    v13 = [CAFCharacteristicTypes characteristicNameForType:v9];
    v14 = [v10 stringWithFormat:@"%@.%@.%@", v11, v12, v13];
    [(CAFASCTree *)self logErrorIfNeededForMissingRegistration:v14];
  }
}

- (void)validateRegisteredForAccessory:(id)a3 service:(id)a4 control:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  if (![(CAFASCTree *)self hasAccessory:v15 service:v8 control:v9])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [CAFAccessoryTypes accessoryNameForType:v15];
    v12 = [CAFServiceTypes serviceNameForType:v8];
    v13 = [CAFControlTypes controlNameForType:v9];
    v14 = [v10 stringWithFormat:@"%@.%@.%@", v11, v12, v13];
    [(CAFASCTree *)self logErrorIfNeededForMissingRegistration:v14];
  }
}

- (void)logErrorIfNeededForMissingRegistration:(id)a3
{
  v4 = a3;
  v5 = [(CAFASCTree *)self missingRegistrations];
  objc_sync_enter(v5);
  v6 = [(CAFASCTree *)self missingRegistrations];
  v7 = [v6 containsObject:v4];

  if ((v7 & 1) == 0)
  {
    v8 = [(CAFASCTree *)self missingRegistrations];
    [v8 addObject:v4];

    v9 = CAFRegistrationLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CAFASCTree *)v4 logErrorIfNeededForMissingRegistration:v9];
    }
  }

  objc_sync_exit(v5);
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