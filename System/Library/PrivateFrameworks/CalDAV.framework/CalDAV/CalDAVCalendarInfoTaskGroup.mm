@interface CalDAVCalendarInfoTaskGroup
- (CalDAVCalendarInfoTaskGroup)initWithAccountInfoProvider:(id)provider containerURLs:(id)ls taskManager:(id)manager;
- (id)_copyContainerParserMappings;
- (id)_copyContainerWithURL:(id)l andProperties:(id)properties;
- (id)containerForURL:(id)l;
@end

@implementation CalDAVCalendarInfoTaskGroup

- (CalDAVCalendarInfoTaskGroup)initWithAccountInfoProvider:(id)provider containerURLs:(id)ls taskManager:(id)manager
{
  v8.receiver = self;
  v8.super_class = CalDAVCalendarInfoTaskGroup;
  v5 = [(CoreDAVContainerInfoTaskGroup *)&v8 initWithAccountInfoProvider:provider containerURLs:ls taskManager:manager];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong((&v5->super.super.super.isa + *MEMORY[0x277CFDCB8]), *MEMORY[0x277CFDDC0]);
    objc_storeStrong((&v6->super.super.super.isa + *MEMORY[0x277CFDCB0]), *MEMORY[0x277CFDD78]);
    v6->_fetchSharees = 0;
  }

  return v6;
}

- (id)_copyContainerParserMappings
{
  v29 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = CalDAVCalendarInfoTaskGroup;
  _copyContainerParserMappings = [(CoreDAVContainerInfoTaskGroup *)&v27 _copyContainerParserMappings];
  v4 = +[CalDAVContainer copyPropertyMappingsForParser];
  v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:_copyContainerParserMappings];
  if ([(CalDAVCalendarInfoTaskGroup *)self fetchSharees])
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
  v21 = _copyContainerParserMappings;
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
  _copyContainerParserMappings = v21;
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

- (id)_copyContainerWithURL:(id)l andProperties:(id)properties
{
  propertiesCopy = properties;
  lCopy = l;
  v7 = [(CoreDAVContainer *)[CalDAVContainer alloc] initWithURL:lCopy andProperties:propertiesCopy];

  return v7;
}

- (id)containerForURL:(id)l
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  appendSlashIfNeeded = [absoluteString appendSlashIfNeeded];

  v27 = lCopy;
  uRLWithoutUsername = [lCopy URLWithoutUsername];
  absoluteString2 = [uRLWithoutUsername absoluteString];
  appendSlashIfNeeded2 = [absoluteString2 appendSlashIfNeeded];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(&self->super.super.super.isa + *MEMORY[0x277CFDCC0]);
  v30 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v30)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v31 = *v34;
  while (2)
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v34 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v33 + 1) + 8 * i);
      v11 = [v10 url];
      absoluteString3 = [v11 absoluteString];
      appendSlashIfNeeded3 = [absoluteString3 appendSlashIfNeeded];

      if ([appendSlashIfNeeded3 isEqualToString:appendSlashIfNeeded])
      {
        v22 = v10;
LABEL_20:

        goto LABEL_22;
      }

      stringByRemovingPercentEncoding = [appendSlashIfNeeded3 stringByRemovingPercentEncoding];
      if ([stringByRemovingPercentEncoding isEqualToString:appendSlashIfNeeded])
      {
        v23 = v10;
LABEL_19:

        goto LABEL_20;
      }

      stringByRemovingPercentEncoding2 = [appendSlashIfNeeded stringByRemovingPercentEncoding];
      if ([appendSlashIfNeeded3 isEqualToString:stringByRemovingPercentEncoding2])
      {
        v24 = v10;

        goto LABEL_19;
      }

      v16 = [v10 url];
      uRLWithoutUsername2 = [v16 URLWithoutUsername];
      absoluteString4 = [uRLWithoutUsername2 absoluteString];
      appendSlashIfNeeded4 = [absoluteString4 appendSlashIfNeeded];

      v20 = [appendSlashIfNeeded4 isEqualToString:appendSlashIfNeeded2];
      v21 = v20;
      if (v20)
      {
        v28 = v10;
      }

      if (v21)
      {
        v10 = v28;
        goto LABEL_22;
      }
    }

    v10 = 0;
    v30 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

@end