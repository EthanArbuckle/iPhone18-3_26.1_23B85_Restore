@interface CalMockCalendarDataContainerProvider
- (BOOL)accountUsesDataSeparatedContainer:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CalMockCalendarDataContainerProvider)initWithAccountDataContainerMap:(id)a3 defaultDataContainer:(id)a4;
- (CalMockCalendarDataContainerProvider)initWithCalendarDataContainerURL:(id)a3;
- (CalMockCalendarDataContainerProvider)initWithCoder:(id)a3;
- (id)containerForAccountIdentifier:(id)a3;
- (id)containerInfoForAccount:(id)a3;
- (id)containerInfoForAccountIdentifier:(id)a3;
- (id)containerInfoForPersonaIdentifier:(id)a3;
- (id)personaForAccountIdentifier:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CalMockCalendarDataContainerProvider

- (CalMockCalendarDataContainerProvider)initWithCalendarDataContainerURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CalMockCalendarDataContainerProvider;
  v6 = [(CalMockCalendarDataContainerProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendarDataContainerURL, a3);
  }

  return v7;
}

- (CalMockCalendarDataContainerProvider)initWithAccountDataContainerMap:(id)a3 defaultDataContainer:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = CalMockCalendarDataContainerProvider;
  v9 = [(CalMockCalendarDataContainerProvider *)&v28 init];
  v10 = v9;
  if (v9)
  {
    v23 = v8;
    objc_storeStrong(&v9->_calendarDataContainerURL, a4);
    objc_storeStrong(&v10->_accountsWithSpecificContainers, a3);
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v7;
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

    v8 = v23;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

- (CalMockCalendarDataContainerProvider)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"accountsWithSpecificContainers"];

  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"calendarDataContainerURL"];

  v11 = [(CalMockCalendarDataContainerProvider *)self initWithAccountDataContainerMap:v9 defaultDataContainer:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  accountsWithSpecificContainers = self->_accountsWithSpecificContainers;
  v5 = a3;
  [v5 encodeObject:accountsWithSpecificContainers forKey:@"accountsWithSpecificContainers"];
  [v5 encodeObject:self->_calendarDataContainerURL forKey:@"calendarDataContainerURL"];
}

- (id)containerForAccountIdentifier:(id)a3
{
  v4 = [(NSDictionary *)self->_accountsWithSpecificContainers objectForKeyedSubscript:a3];
  calendarDataContainerURL = v4;
  if (!v4)
  {
    calendarDataContainerURL = self->_calendarDataContainerURL;
  }

  v6 = calendarDataContainerURL;

  return v6;
}

- (id)personaForAccountIdentifier:(id)a3
{
  v4 = [(NSDictionary *)self->_accountsWithSpecificContainers objectForKeyedSubscript:a3];
  v5 = [(NSDictionary *)self->_personaIDsByContainer objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)accountUsesDataSeparatedContainer:(id)a3
{
  v3 = [(NSDictionary *)self->_accountsWithSpecificContainers objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)containerInfoForAccount:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(CalMockCalendarDataContainerProvider *)self containerInfoForAccountIdentifier:v4];

  return v5;
}

- (id)containerInfoForAccountIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CalMockCalendarDataContainerInfo);
  [(CalMockCalendarDataContainerInfo *)v5 setAccountID:v4];
  v6 = [(CalMockCalendarDataContainerProvider *)self personaForAccountIdentifier:v4];
  [(CalMockCalendarDataContainerInfo *)v5 setPersonaID:v6];

  v7 = [(CalMockCalendarDataContainerProvider *)self containerForAccountIdentifier:v4];
  [(CalMockCalendarDataContainerInfo *)v5 setContainerURL:v7];

  v8 = [(CalMockCalendarDataContainerProvider *)self accountUsesDataSeparatedContainer:v4];
  [(CalMockCalendarDataContainerInfo *)v5 setUsesDataSeparatedContainer:v8];

  return v5;
}

- (id)containerInfoForPersonaIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        if ([v4 isEqualToString:v11])
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
  [(CalMockCalendarDataContainerInfo *)v12 setPersonaID:v4];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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