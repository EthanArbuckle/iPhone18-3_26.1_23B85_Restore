@interface BMTopicEntity
- (BMTopicEntity)initWithProto:(id)a3;
- (BMTopicEntity)initWithProtoData:(id)a3;
- (BMTopicEntity)initWithTopicId:(id)a3 displayName:(id)a4 attributes:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMTopicEntity

- (BMTopicEntity)initWithTopicId:(id)a3 displayName:(id)a4 attributes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMTopicEntity;
  v12 = [(BMTopicEntity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topicId, a3);
    objc_storeStrong(&v13->_displayName, a4);
    objc_storeStrong(&v13->_attributes, a5);
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    topicId = self->_topicId;
    v7 = [v5 topicId];
    if ([(NSString *)topicId isEqualToString:v7])
    {
      displayName = self->_displayName;
      v9 = [v5 displayName];
      if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:displayName target:v9])
      {
        attributes = self->_attributes;
        v11 = [v5 attributes];
        v12 = [BMEntityRelationshipEventUtilities checkNullableDictionaryEqualityForSource:attributes target:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)encodeAsProto
{
  v2 = [(BMTopicEntity *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMTopicEntity)initWithProto:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 attributes];

    if (v6)
    {
      v6 = objc_opt_new();
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v7 = [v5 attributes];
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            v13 = [v12 value];
            v14 = [v12 key];
            [v6 setValue:v13 forKey:v14];
          }

          v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);
      }
    }

    v15 = [v5 topicId];
    v16 = [v5 displayName];
    v17 = [v6 copy];
    self = [(BMTopicEntity *)self initWithTopicId:v15 displayName:v16 attributes:v17];

    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BMTopicEntity)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBTopicEntity alloc] initWithData:v4];

    self = [(BMTopicEntity *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(BMTopicEntity *)self topicId];
  [v3 setTopicId:v4];

  v5 = [(BMTopicEntity *)self displayName];
  [v3 setDisplayName:v5];

  v6 = [(BMTopicEntity *)self attributes];

  if (v6)
  {
    v7 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [(BMTopicEntity *)self attributes];
    v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = objc_opt_new();
          [v14 setKey:v12];
          v15 = [(BMTopicEntity *)self attributes];
          v16 = [v15 objectForKeyedSubscript:v12];
          [v14 setValue:v16];

          [v7 addObject:v14];
          objc_autoreleasePoolPop(v13);
        }

        v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v17 = [v7 copy];
    [v3 setAttributes:v17];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

@end