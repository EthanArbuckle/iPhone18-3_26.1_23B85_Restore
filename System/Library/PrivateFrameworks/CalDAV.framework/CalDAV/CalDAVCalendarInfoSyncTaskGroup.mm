@interface CalDAVCalendarInfoSyncTaskGroup
- (id)copyContainerParserMappings;
@end

@implementation CalDAVCalendarInfoSyncTaskGroup

- (id)copyContainerParserMappings
{
  v29 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = CalDAVCalendarInfoSyncTaskGroup;
  copyContainerParserMappings = [(CoreDAVContainerInfoSyncTaskGroup *)&v27 copyContainerParserMappings];
  v4 = +[CalDAVContainer copyPropertyMappingsForParser];
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:copyContainerParserMappings];
  if ([(CalDAVCalendarInfoSyncTaskGroup *)self fetchSharees])
  {
    [v5 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDE90] name:@"invite" parseClass:objc_opt_class()];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v7)
  {

    v17 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v20 = v4;
  v21 = copyContainerParserMappings;
  v22 = 0;
  v9 = *v24;
  v10 = *MEMORY[0x277CFDEF8];
  v11 = *MEMORY[0x277CFDFE0];
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      nameSpace = [v13 nameSpace];
      if ([nameSpace isEqualToString:v10])
      {
        name = [v13 name];
        v16 = [name isEqualToString:v11];

        if (!v16)
        {
          continue;
        }

        nameSpace = v22;
        v22 = v13;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  }

  while (v8);

  v4 = v20;
  copyContainerParserMappings = v21;
  v17 = v22;
  if (v22)
  {
    [v6 removeObject:v22];
  }

LABEL_17:
  [v6 unionSet:v4];

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

@end