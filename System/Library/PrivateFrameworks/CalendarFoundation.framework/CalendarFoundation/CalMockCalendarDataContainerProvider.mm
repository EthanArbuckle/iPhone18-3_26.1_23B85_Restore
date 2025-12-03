@interface CalMockCalendarDataContainerProvider
- (BOOL)accountUsesDataSeparatedContainer:(id)container;
- (BOOL)isEqual:(id)equal;
- (CalMockCalendarDataContainerProvider)initWithAccountDataContainerMap:(id)map defaultDataContainer:(id)container;
- (CalMockCalendarDataContainerProvider)initWithCalendarDataContainerURL:(id)l;
- (CalMockCalendarDataContainerProvider)initWithCoder:(id)coder;
- (id)containerForAccountIdentifier:(id)identifier;
- (id)containerInfoForAccount:(id)account;
- (id)containerInfoForAccountIdentifier:(id)identifier;
- (id)containerInfoForPersonaIdentifier:(id)identifier;
- (id)personaForAccountIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CalMockCalendarDataContainerProvider

- (CalMockCalendarDataContainerProvider)initWithCalendarDataContainerURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = CalMockCalendarDataContainerProvider;
  v6 = [(CalMockCalendarDataContainerProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendarDataContainerURL, l);
  }

  return v7;
}

- (CalMockCalendarDataContainerProvider)initWithAccountDataContainerMap:(id)map defaultDataContainer:(id)container
{
  v30 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  containerCopy = container;
  v28.receiver = self;
  v28.super_class = CalMockCalendarDataContainerProvider;
  v9 = [(CalMockCalendarDataContainerProvider *)&v28 init];
  v10 = v9;
  if (v9)
  {
    v23 = containerCopy;
    objc_storeStrong(&v9->_calendarDataContainerURL, container);
    objc_storeStrong(&v10->_accountsWithSpecificContainers, map);
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(mapCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = mapCopy;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v12 objectForKeyedSubscript:v17];
          v19 = [@"persona-for-" stringByAppendingString:v17];
          [(NSDictionary *)v11 setObject:v19 forKeyedSubscript:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v14);
    }

    personaIDsByContainer = v10->_personaIDsByContainer;
    v10->_personaIDsByContainer = v11;

    containerCopy = v23;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

- (CalMockCalendarDataContainerProvider)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"accountsWithSpecificContainers"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calendarDataContainerURL"];

  v11 = [(CalMockCalendarDataContainerProvider *)self initWithAccountDataContainerMap:v9 defaultDataContainer:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  accountsWithSpecificContainers = self->_accountsWithSpecificContainers;
  coderCopy = coder;
  [coderCopy encodeObject:accountsWithSpecificContainers forKey:@"accountsWithSpecificContainers"];
  [coderCopy encodeObject:self->_calendarDataContainerURL forKey:@"calendarDataContainerURL"];
}

- (id)containerForAccountIdentifier:(id)identifier
{
  v4 = [(NSDictionary *)self->_accountsWithSpecificContainers objectForKeyedSubscript:identifier];
  calendarDataContainerURL = v4;
  if (!v4)
  {
    calendarDataContainerURL = self->_calendarDataContainerURL;
  }

  v6 = calendarDataContainerURL;

  return v6;
}

- (id)personaForAccountIdentifier:(id)identifier
{
  v4 = [(NSDictionary *)self->_accountsWithSpecificContainers objectForKeyedSubscript:identifier];
  v5 = [(NSDictionary *)self->_personaIDsByContainer objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)accountUsesDataSeparatedContainer:(id)container
{
  v3 = [(NSDictionary *)self->_accountsWithSpecificContainers objectForKeyedSubscript:container];
  v4 = v3 != 0;

  return v4;
}

- (id)containerInfoForAccount:(id)account
{
  identifier = [account identifier];
  v5 = [(CalMockCalendarDataContainerProvider *)self containerInfoForAccountIdentifier:identifier];

  return v5;
}

- (id)containerInfoForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(CalMockCalendarDataContainerInfo);
  [(CalMockCalendarDataContainerInfo *)v5 setAccountID:identifierCopy];
  v6 = [(CalMockCalendarDataContainerProvider *)self personaForAccountIdentifier:identifierCopy];
  [(CalMockCalendarDataContainerInfo *)v5 setPersonaID:v6];

  v7 = [(CalMockCalendarDataContainerProvider *)self containerForAccountIdentifier:identifierCopy];
  [(CalMockCalendarDataContainerInfo *)v5 setContainerURL:v7];

  v8 = [(CalMockCalendarDataContainerProvider *)self accountUsesDataSeparatedContainer:identifierCopy];
  [(CalMockCalendarDataContainerInfo *)v5 setUsesDataSeparatedContainer:v8];

  return v5;
}

- (id)containerInfoForPersonaIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_accountsWithSpecificContainers;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(CalMockCalendarDataContainerProvider *)self personaForAccountIdentifier:v10, v15];
        if ([identifierCopy isEqualToString:v11])
        {
          v12 = [(CalMockCalendarDataContainerProvider *)self containerInfoForAccountIdentifier:v10];

          goto LABEL_11;
        }
      }

      v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = objc_alloc_init(CalMockCalendarDataContainerInfo);
  [(CalMockCalendarDataContainerInfo *)v12 setPersonaID:identifierCopy];
  [(CalMockCalendarDataContainerInfo *)v12 setContainerURL:self->_calendarDataContainerURL];
  [(CalMockCalendarDataContainerInfo *)v12 setUsesDataSeparatedContainer:0];
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_calendarDataContainerURL hash];
  v4 = [(NSDictionary *)self->_accountsWithSpecificContainers hash]+ v3;
  return v4 + [(NSDictionary *)self->_personaIDsByContainer hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([(NSURL *)self->_calendarDataContainerURL isEqual:v5[1]]&& [(NSDictionary *)self->_accountsWithSpecificContainers isEqual:v5[2]])
    {
      v6 = [(NSDictionary *)self->_personaIDsByContainer isEqual:v5[3]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end