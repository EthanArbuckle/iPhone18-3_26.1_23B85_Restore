@interface BMEntityRelationshipEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMEntityRelationshipEvent)initWithClientId:(id)id relationship:(id)relationship sourceEntity:(id)entity targetEntity:(id)targetEntity attributes:(id)attributes;
- (BMEntityRelationshipEvent)initWithProto:(id)proto;
- (BMEntityRelationshipEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)entityFromPBEntity:(id)entity;
- (id)proto;
@end

@implementation BMEntityRelationshipEvent

- (BMEntityRelationshipEvent)initWithClientId:(id)id relationship:(id)relationship sourceEntity:(id)entity targetEntity:(id)targetEntity attributes:(id)attributes
{
  idCopy = id;
  relationshipCopy = relationship;
  entityCopy = entity;
  targetEntityCopy = targetEntity;
  attributesCopy = attributes;
  v21.receiver = self;
  v21.super_class = BMEntityRelationshipEvent;
  v17 = [(BMEntityRelationshipEvent *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientId, id);
    objc_storeStrong(&v18->_relationship, relationship);
    objc_storeStrong(&v18->_sourceEntity, entity);
    objc_storeStrong(&v18->_targetEntity, targetEntity);
    objc_storeStrong(&v18->_attributes, attributes);
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    clientId = self->_clientId;
    clientId = [v5 clientId];
    if ([(NSString *)clientId isEqualToString:clientId])
    {
      relationship = self->_relationship;
      relationship = [v5 relationship];
      if ([(NSString *)relationship isEqualToString:relationship])
      {
        sourceEntity = self->_sourceEntity;
        sourceEntity = [v5 sourceEntity];
        if ([(BMEntity *)sourceEntity isEqual:sourceEntity])
        {
          targetEntity = self->_targetEntity;
          targetEntity = [v5 targetEntity];
          if ([(BMEntity *)targetEntity isEqual:targetEntity])
          {
            attributes = self->_attributes;
            attributes = [v5 attributes];
            v16 = [BMEntityRelationshipEventUtilities checkNullableDictionaryEqualityForSource:attributes target:attributes];
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    dataCopy = data;
    v6 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMEntityRelationshipEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMEntityRelationshipEvent)initWithProto:(id)proto
{
  v32 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    sourceEntity = [v5 sourceEntity];
    v7 = [(BMEntityRelationshipEvent *)self entityFromPBEntity:sourceEntity];

    targetEntity = [v5 targetEntity];
    v9 = [(BMEntityRelationshipEvent *)self entityFromPBEntity:targetEntity];

    attributes = [v5 attributes];

    if (attributes)
    {
      v25 = v9;
      v26 = v7;
      attributes = objc_opt_new();
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      attributes2 = [v5 attributes];
      v12 = [attributes2 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
              objc_enumerationMutation(attributes2);
            }

            v16 = *(*(&v27 + 1) + 8 * i);
            value = [v16 value];
            v18 = [v16 key];
            [attributes setValue:value forKey:v18];
          }

          v13 = [attributes2 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v13);
      }

      v9 = v25;
      v7 = v26;
    }

    clientId = [v5 clientId];
    relationship = [v5 relationship];
    v21 = [attributes copy];
    self = [(BMEntityRelationshipEvent *)self initWithClientId:clientId relationship:relationship sourceEntity:v7 targetEntity:v9 attributes:v21];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BMEntityRelationshipEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBEntityRelationshipEvent alloc] initWithData:dataCopy];

    self = [(BMEntityRelationshipEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  clientId = [(BMEntityRelationshipEvent *)self clientId];
  [v3 setClientId:clientId];

  relationship = [(BMEntityRelationshipEvent *)self relationship];
  [v3 setRelationship:relationship];

  sourceEntity = [(BMEntityRelationshipEvent *)self sourceEntity];
  proto = [sourceEntity proto];
  [v3 setSourceEntity:proto];

  targetEntity = [(BMEntityRelationshipEvent *)self targetEntity];
  proto2 = [targetEntity proto];
  [v3 setTargetEntity:proto2];

  attributes = [(BMEntityRelationshipEvent *)self attributes];

  if (attributes)
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
          attributes2 = [(BMEntityRelationshipEvent *)self attributes];
          v20 = [attributes2 objectForKeyedSubscript:v16];
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

- (id)entityFromPBEntity:(id)entity
{
  entityCopy = entity;
  v4 = [BMEntity alloc];
  hasPersonEntity = [entityCopy hasPersonEntity];
  hasTopicEntity = [entityCopy hasTopicEntity];
  v7 = [BMTopicEntity alloc];
  topicEntity = [entityCopy topicEntity];
  v9 = [(BMTopicEntity *)v7 initWithProto:topicEntity];
  v10 = [BMPersonEntity alloc];
  personEntity = [entityCopy personEntity];

  v12 = [(BMPersonEntity *)v10 initWithProto:personEntity];
  v13 = [(BMEntity *)v4 initWithIsPersonType:hasPersonEntity isTopicType:hasTopicEntity topicEntity:v9 personEntity:v12];

  return v13;
}

@end