@interface IDSOpportunisticData
- (BOOL)isInvalid;
- (BOOL)shouldSendToDestination:(id)destination;
- (IDSOpportunisticData)initWithCoder:(id)coder;
- (IDSOpportunisticData)initWithData:(id)data identifier:(id)identifier serviceName:(id)name accountUniqueID:(id)d options:(id)options;
- (IDSOpportunisticData)initWithData:(id)data identifier:(id)identifier serviceName:(id)name accountUniqueID:(id)d options:(id)options sendCount:(id)count;
- (id)copy;
- (id)description;
- (int64_t)sendCountForURI:(id)i;
- (void)encodeWithCoder:(id)coder;
- (void)incrementSendCountForDestination:(id)destination;
- (void)markInvalid;
@end

@implementation IDSOpportunisticData

- (IDSOpportunisticData)initWithData:(id)data identifier:(id)identifier serviceName:(id)name accountUniqueID:(id)d options:(id)options
{
  v12 = MEMORY[0x1E695DF90];
  optionsCopy = options;
  dCopy = d;
  nameCopy = name;
  identifierCopy = identifier;
  dataCopy = data;
  v18 = objc_alloc_init(v12);
  v19 = [(IDSOpportunisticData *)self initWithData:dataCopy identifier:identifierCopy serviceName:nameCopy accountUniqueID:dCopy options:optionsCopy sendCount:v18];

  return v19;
}

- (IDSOpportunisticData)initWithData:(id)data identifier:(id)identifier serviceName:(id)name accountUniqueID:(id)d options:(id)options sendCount:(id)count
{
  dataCopy = data;
  identifierCopy = identifier;
  nameCopy = name;
  dCopy = d;
  optionsCopy = options;
  countCopy = count;
  v24.receiver = self;
  v24.super_class = IDSOpportunisticData;
  v18 = [(IDSOpportunisticData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_data, data);
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v19->_serviceName, name);
    objc_storeStrong(&v19->_accountUniqueID, d);
    objc_storeStrong(&v19->_options, options);
    objc_storeStrong(&v19->_sendCount, count);
  }

  return v19;
}

- (BOOL)isInvalid
{
  if (!self->_data)
  {
    return 1;
  }

  expiryDate = [(IDSOpportunisticOptions *)self->_options expiryDate];
  if (expiryDate)
  {
    expiryDate2 = [(IDSOpportunisticOptions *)self->_options expiryDate];
    v5 = objc_opt_new();
    v6 = [expiryDate2 compare:v5] == -1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)markInvalid
{
  data = self->_data;
  self->_data = 0;
}

- (BOOL)shouldSendToDestination:(id)destination
{
  v21 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  if ([(IDSOpportunisticData *)self isInvalid])
  {
    v5 = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    normalizedURIs = [destinationCopy normalizedURIs];
    v7 = [normalizedURIs countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(normalizedURIs);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_sendCount objectForKeyedSubscript:v11];
          if ([v12 integerValue] >= 3)
          {

LABEL_15:
            v5 = 0;
            goto LABEL_16;
          }

          blocklistedDestinations = [(IDSOpportunisticOptions *)self->_options blocklistedDestinations];
          v14 = [blocklistedDestinations containsObject:v11];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        v8 = [normalizedURIs countByEnumeratingWithState:&v16 objects:v20 count:16];
        v5 = 1;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 1;
    }

LABEL_16:
  }

  return v5;
}

- (void)incrementSendCountForDestination:(id)destination
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  normalizedURIs = [destination normalizedURIs];
  v5 = [normalizedURIs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(normalizedURIs);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_sendCount objectForKeyedSubscript:v9];

        if (v10)
        {
          v11 = MEMORY[0x1E696AD98];
          v12 = [(NSMutableDictionary *)self->_sendCount objectForKeyedSubscript:v9];
          v13 = [v11 numberWithInteger:{objc_msgSend(v12, "integerValue") + 1}];
          [(NSMutableDictionary *)self->_sendCount setObject:v13 forKeyedSubscript:v9];
        }

        else
        {
          [(NSMutableDictionary *)self->_sendCount setObject:&unk_1F1B20258 forKeyedSubscript:v9];
        }
      }

      v6 = [normalizedURIs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (int64_t)sendCountForURI:(id)i
{
  v3 = [(NSMutableDictionary *)self->_sendCount objectForKeyedSubscript:i];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)copy
{
  v3 = objc_alloc(objc_opt_class());
  data = [(IDSOpportunisticData *)self data];
  identifier = [(IDSOpportunisticData *)self identifier];
  serviceName = [(IDSOpportunisticData *)self serviceName];
  accountUniqueID = [(IDSOpportunisticData *)self accountUniqueID];
  options = [(IDSOpportunisticData *)self options];
  sendCount = [(IDSOpportunisticData *)self sendCount];
  v10 = [v3 initWithData:data identifier:identifier serviceName:serviceName accountUniqueID:accountUniqueID options:options sendCount:sendCount];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(IDSOpportunisticData *)self identifier];
  data = [(IDSOpportunisticData *)self data];
  v7 = [data length];
  serviceName = [(IDSOpportunisticData *)self serviceName];
  accountUniqueID = [(IDSOpportunisticData *)self accountUniqueID];
  options = [(IDSOpportunisticData *)self options];
  v11 = [v3 stringWithFormat:@"<%@:%p %@, %llu bytes, service: %@, account: %@, options: %@>", v4, self, identifier, v7, serviceName, accountUniqueID, options];

  return v11;
}

- (IDSOpportunisticData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountUniqueID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"sendCount"];

  v15 = [(IDSOpportunisticData *)self initWithData:v5 identifier:v6 serviceName:v8 accountUniqueID:v7 options:v9 sendCount:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(IDSOpportunisticData *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  identifier = [(IDSOpportunisticData *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  serviceName = [(IDSOpportunisticData *)self serviceName];
  [coderCopy encodeObject:serviceName forKey:@"service"];

  accountUniqueID = [(IDSOpportunisticData *)self accountUniqueID];
  [coderCopy encodeObject:accountUniqueID forKey:@"accountUniqueID"];

  options = [(IDSOpportunisticData *)self options];
  [coderCopy encodeObject:options forKey:@"options"];

  sendCount = [(IDSOpportunisticData *)self sendCount];
  [coderCopy encodeObject:sendCount forKey:@"sendCount"];
}

@end