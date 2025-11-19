@interface BMEntityRelationshipEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMEntityRelationshipEvent)initWithClientId:(id)a3 relationship:(id)a4 sourceEntity:(id)a5 targetEntity:(id)a6 attributes:(id)a7;
- (BMEntityRelationshipEvent)initWithProto:(id)a3;
- (BMEntityRelationshipEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)entityFromPBEntity:(id)a3;
- (id)proto;
@end

@implementation BMEntityRelationshipEvent

- (BMEntityRelationshipEvent)initWithClientId:(id)a3 relationship:(id)a4 sourceEntity:(id)a5 targetEntity:(id)a6 attributes:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = BMEntityRelationshipEvent;
  v17 = [(BMEntityRelationshipEvent *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientId, a3);
    objc_storeStrong(&v18->_relationship, a4);
    objc_storeStrong(&v18->_sourceEntity, a5);
    objc_storeStrong(&v18->_targetEntity, a6);
    objc_storeStrong(&v18->_attributes, a7);
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    clientId = self->_clientId;
    v7 = [v5 clientId];
    if ([(NSString *)clientId isEqualToString:v7])
    {
      relationship = self->_relationship;
      v9 = [v5 relationship];
      if ([(NSString *)relationship isEqualToString:v9])
      {
        sourceEntity = self->_sourceEntity;
        v11 = [v5 sourceEntity];
        if ([(BMEntity *)sourceEntity isEqual:v11])
        {
          targetEntity = self->_targetEntity;
          v13 = [v5 targetEntity];
          if ([(BMEntity *)targetEntity isEqual:v13])
          {
            attributes = self->_attributes;
            v15 = [v5 attributes];
            v16 = [BMEntityRelationshipEventUtilities checkNullableDictionaryEqualityForSource:attributes target:v15];
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v5 = a3;
    v6 = [[a1 alloc] initWithProtoData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMEntityRelationshipEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMEntityRelationshipEvent)initWithProto:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 sourceEntity];
    v7 = [(BMEntityRelationshipEvent *)self entityFromPBEntity:v6];

    v8 = [v5 targetEntity];
    v9 = [(BMEntityRelationshipEvent *)self entityFromPBEntity:v8];

    v10 = [v5 attributes];

    if (v10)
    {
      v25 = v9;
      v26 = v7;
      v10 = objc_opt_new();
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = [v5 attributes];
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v27 + 1) + 8 * i);
            v17 = [v16 value];
            v18 = [v16 key];
            [v10 setValue:v17 forKey:v18];
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v13);
      }

      v9 = v25;
      v7 = v26;
    }

    v19 = [v5 clientId];
    v20 = [v5 relationship];
    v21 = [v10 copy];
    self = [(BMEntityRelationshipEvent *)self initWithClientId:v19 relationship:v20 sourceEntity:v7 targetEntity:v9 attributes:v21];

    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BMEntityRelationshipEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBEntityRelationshipEvent alloc] initWithData:v4];

    self = [(BMEntityRelationshipEvent *)self initWithProto:v5];
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
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(BMEntityRelationshipEvent *)self clientId];
  [v3 setClientId:v4];

  v5 = [(BMEntityRelationshipEvent *)self relationship];
  [v3 setRelationship:v5];

  v6 = [(BMEntityRelationshipEvent *)self sourceEntity];
  v7 = [v6 proto];
  [v3 setSourceEntity:v7];

  v8 = [(BMEntityRelationshipEvent *)self targetEntity];
  v9 = [v8 proto];
  [v3 setTargetEntity:v9];

  v10 = [(BMEntityRelationshipEvent *)self attributes];

  if (v10)
  {
    v11 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(BMEntityRelationshipEvent *)self attributes];
    v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v18 = objc_opt_new();
          [v18 setKey:v16];
          v19 = [(BMEntityRelationshipEvent *)self attributes];
          v20 = [v19 objectForKeyedSubscript:v16];
          [v18 setValue:v20];

          [v11 addObject:v18];
          objc_autoreleasePoolPop(v17);
        }

        v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v21 = [v11 copy];
    [v3 setAttributes:v21];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)entityFromPBEntity:(id)a3
{
  v3 = a3;
  v4 = [BMEntity alloc];
  v5 = [v3 hasPersonEntity];
  v6 = [v3 hasTopicEntity];
  v7 = [BMTopicEntity alloc];
  v8 = [v3 topicEntity];
  v9 = [(BMTopicEntity *)v7 initWithProto:v8];
  v10 = [BMPersonEntity alloc];
  v11 = [v3 personEntity];

  v12 = [(BMPersonEntity *)v10 initWithProto:v11];
  v13 = [(BMEntity *)v4 initWithIsPersonType:v5 isTopicType:v6 topicEntity:v9 personEntity:v12];

  return v13;
}

@end