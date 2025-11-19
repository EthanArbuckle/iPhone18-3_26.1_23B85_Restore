@interface IDSOpportunisticData
- (BOOL)isInvalid;
- (BOOL)shouldSendToDestination:(id)a3;
- (IDSOpportunisticData)initWithCoder:(id)a3;
- (IDSOpportunisticData)initWithData:(id)a3 identifier:(id)a4 serviceName:(id)a5 accountUniqueID:(id)a6 options:(id)a7;
- (IDSOpportunisticData)initWithData:(id)a3 identifier:(id)a4 serviceName:(id)a5 accountUniqueID:(id)a6 options:(id)a7 sendCount:(id)a8;
- (id)copy;
- (id)description;
- (int64_t)sendCountForURI:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)incrementSendCountForDestination:(id)a3;
- (void)markInvalid;
@end

@implementation IDSOpportunisticData

- (IDSOpportunisticData)initWithData:(id)a3 identifier:(id)a4 serviceName:(id)a5 accountUniqueID:(id)a6 options:(id)a7
{
  v12 = MEMORY[0x1E695DF90];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v12);
  v19 = [(IDSOpportunisticData *)self initWithData:v17 identifier:v16 serviceName:v15 accountUniqueID:v14 options:v13 sendCount:v18];

  return v19;
}

- (IDSOpportunisticData)initWithData:(id)a3 identifier:(id)a4 serviceName:(id)a5 accountUniqueID:(id)a6 options:(id)a7 sendCount:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = IDSOpportunisticData;
  v18 = [(IDSOpportunisticData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_data, a3);
    objc_storeStrong(&v19->_identifier, a4);
    objc_storeStrong(&v19->_serviceName, a5);
    objc_storeStrong(&v19->_accountUniqueID, a6);
    objc_storeStrong(&v19->_options, a7);
    objc_storeStrong(&v19->_sendCount, a8);
  }

  return v19;
}

- (BOOL)isInvalid
{
  if (!self->_data)
  {
    return 1;
  }

  v3 = [(IDSOpportunisticOptions *)self->_options expiryDate];
  if (v3)
  {
    v4 = [(IDSOpportunisticOptions *)self->_options expiryDate];
    v5 = objc_opt_new();
    v6 = [v4 compare:v5] == -1;
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

- (BOOL)shouldSendToDestination:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v6 = [v4 normalizedURIs];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_sendCount objectForKeyedSubscript:v11];
          if ([v12 integerValue] >= 3)
          {

LABEL_15:
            v5 = 0;
            goto LABEL_16;
          }

          v13 = [(IDSOpportunisticOptions *)self->_options blocklistedDestinations];
          v14 = [v13 containsObject:v11];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)incrementSendCountForDestination:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a3 normalizedURIs];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (int64_t)sendCountForURI:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sendCount objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (id)copy
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(IDSOpportunisticData *)self data];
  v5 = [(IDSOpportunisticData *)self identifier];
  v6 = [(IDSOpportunisticData *)self serviceName];
  v7 = [(IDSOpportunisticData *)self accountUniqueID];
  v8 = [(IDSOpportunisticData *)self options];
  v9 = [(IDSOpportunisticData *)self sendCount];
  v10 = [v3 initWithData:v4 identifier:v5 serviceName:v6 accountUniqueID:v7 options:v8 sendCount:v9];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSOpportunisticData *)self identifier];
  v6 = [(IDSOpportunisticData *)self data];
  v7 = [v6 length];
  v8 = [(IDSOpportunisticData *)self serviceName];
  v9 = [(IDSOpportunisticData *)self accountUniqueID];
  v10 = [(IDSOpportunisticData *)self options];
  v11 = [v3 stringWithFormat:@"<%@:%p %@, %llu bytes, service: %@, account: %@, options: %@>", v4, self, v5, v7, v8, v9, v10];

  return v11;
}

- (IDSOpportunisticData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountUniqueID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"sendCount"];

  v15 = [(IDSOpportunisticData *)self initWithData:v5 identifier:v6 serviceName:v8 accountUniqueID:v7 options:v9 sendCount:v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSOpportunisticData *)self data];
  [v4 encodeObject:v5 forKey:@"data"];

  v6 = [(IDSOpportunisticData *)self identifier];
  [v4 encodeObject:v6 forKey:@"identifier"];

  v7 = [(IDSOpportunisticData *)self serviceName];
  [v4 encodeObject:v7 forKey:@"service"];

  v8 = [(IDSOpportunisticData *)self accountUniqueID];
  [v4 encodeObject:v8 forKey:@"accountUniqueID"];

  v9 = [(IDSOpportunisticData *)self options];
  [v4 encodeObject:v9 forKey:@"options"];

  v10 = [(IDSOpportunisticData *)self sendCount];
  [v4 encodeObject:v10 forKey:@"sendCount"];
}

@end