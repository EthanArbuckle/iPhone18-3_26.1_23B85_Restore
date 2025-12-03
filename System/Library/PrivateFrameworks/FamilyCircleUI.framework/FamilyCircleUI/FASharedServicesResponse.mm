@interface FASharedServicesResponse
- (FASharedServicesResponse)initWithHTTPResponse:(id)response data:(id)data;
- (void)_initializeServicesMapWithGroups:(id)groups andServices:(id)services;
- (void)_sharedServicesWithNoGrouping:(id)grouping;
@end

@implementation FASharedServicesResponse

- (FASharedServicesResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v25 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = FASharedServicesResponse;
  v4 = [(AAResponse *)&v20 initWithHTTPResponse:response data:data bodyIsPlist:1];
  v5 = v4;
  if (v4)
  {
    responseDictionary = [(AAResponse *)v4 responseDictionary];
    v7 = [responseDictionary objectForKeyedSubscript:@"familySharedServicesGroups"];

    responseDictionary2 = [(AAResponse *)v5 responseDictionary];
    v9 = [responseDictionary2 objectForKeyedSubscript:@"familySharedServices"];

    responseDictionary3 = [(AAResponse *)v5 responseDictionary];
    v11 = [responseDictionary3 objectForKeyedSubscript:@"locationAllowed"];

    if (v11)
    {
      bOOLValue = [v11 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    [(FASharedServicesResponse *)v5 _setLocationAllowedWithLocation:bOOLValue];
    if (v9)
    {
      [(FASharedServicesResponse *)v5 _sharedServicesWithNoGrouping:v9];
      if (v7)
      {
        [(FASharedServicesResponse *)v5 _initializeServicesMapWithGroups:v7 andServices:v9];
      }
    }

    else
    {
      responseDictionary4 = [(AAResponse *)v5 responseDictionary];
      v14 = [responseDictionary4 objectForKeyedSubscript:@"status"];

      responseDictionary5 = [(AAResponse *)v5 responseDictionary];
      v16 = [responseDictionary5 objectForKeyedSubscript:@"status-message"];

      v17 = _FALogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v14;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_21BB35000, v17, OS_LOG_TYPE_DEFAULT, "Error: Shared services not seen in server response data with status=%@ message=%@", buf, 0x16u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_initializeServicesMapWithGroups:(id)groups andServices:(id)services
{
  v52 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  v45 = objc_opt_new();
  if (groupsCopy)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v43 = groupsCopy;
    v5 = groupsCopy;
    v6 = [v5 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v47;
      do
      {
        v9 = 0;
        do
        {
          if (*v47 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [objc_alloc(MEMORY[0x277D08340]) initWithServerResponse:*(*(&v46 + 1) + 8 * v9)];
          services = self->_services;
          v12 = MEMORY[0x277CCAC30];
          groupID = [v10 groupID];
          v14 = [v12 predicateWithFormat:@"SELF.groupID == %@", groupID];
          v15 = [(NSArray *)services filteredArrayUsingPredicate:v14];

          [v10 setServices:v15];
          [v45 addObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v7);
    }

    v16 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"groupID" ascending:1];
    v50 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    v18 = [v45 sortedArrayUsingDescriptors:v17];
    serviceGroups = self->_serviceGroups;
    self->_serviceGroups = v18;

    v20 = self->_services;
    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.groupID == %@", &stru_282D9AA68];
    v22 = [(NSArray *)v20 filteredArrayUsingPredicate:v21];

    if ([v22 count])
    {
      v23 = _FALogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(FASharedServicesResponse *)v23 _initializeServicesMapWithGroups:v24 andServices:v25, v26, v27, v28, v29, v30];
      }

      firstObject = [(NSArray *)self->_serviceGroups firstObject];
      services = [firstObject services];
      v33 = [v22 arrayByAddingObjectsFromArray:services];

      firstObject2 = [(NSArray *)self->_serviceGroups firstObject];
      [firstObject2 setServices:v33];
    }

    groupsCopy = v43;
  }

  else
  {
    v16 = _FALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(FASharedServicesResponse *)v16 _initializeServicesMapWithGroups:v35 andServices:v36, v37, v38, v39, v40, v41];
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_sharedServicesWithNoGrouping:(id)grouping
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (grouping)
  {
    v4 = [grouping fa_map:&__block_literal_global_21];
    v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"order" ascending:1];
    v17[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v7 = [v4 sortedArrayUsingDescriptors:v6];
    services = self->_services;
    self->_services = v7;
  }

  else
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(FASharedServicesResponse *)v4 _sharedServicesWithNoGrouping:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

id __58__FASharedServicesResponse__sharedServicesWithNoGrouping___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D08338];
  v3 = a2;
  v4 = [[v2 alloc] initWithDictionary:v3];

  return v4;
}

@end