@interface BMTopicEntity
- (BMTopicEntity)initWithProto:(id)proto;
- (BMTopicEntity)initWithProtoData:(id)data;
- (BMTopicEntity)initWithTopicId:(id)id displayName:(id)name attributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMTopicEntity

- (BMTopicEntity)initWithTopicId:(id)id displayName:(id)name attributes:(id)attributes
{
  idCopy = id;
  nameCopy = name;
  attributesCopy = attributes;
  v15.receiver = self;
  v15.super_class = BMTopicEntity;
  v12 = [(BMTopicEntity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_topicId, id);
    objc_storeStrong(&v13->_displayName, name);
    objc_storeStrong(&v13->_attributes, attributes);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    topicId = self->_topicId;
    topicId = [v5 topicId];
    if ([(NSString *)topicId isEqualToString:topicId])
    {
      displayName = self->_displayName;
      displayName = [v5 displayName];
      if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:displayName target:displayName])
      {
        attributes = self->_attributes;
        attributes = [v5 attributes];
        v12 = [BMEntityRelationshipEventUtilities checkNullableDictionaryEqualityForSource:attributes target:attributes];
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
  proto = [(BMTopicEntity *)self proto];
  data = [proto data];

  return data;
}

- (BMTopicEntity)initWithProto:(id)proto
{
  v26 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    attributes = [v5 attributes];

    if (attributes)
    {
      attributes = objc_opt_new();
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      attributes2 = [v5 attributes];
      v8 = [attributes2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(attributes2);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            value = [v12 value];
            v14 = [v12 key];
            [attributes setValue:value forKey:v14];
          }

          v9 = [attributes2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);
      }
    }

    topicId = [v5 topicId];
    displayName = [v5 displayName];
    v17 = [attributes copy];
    self = [(BMTopicEntity *)self initWithTopicId:topicId displayName:displayName attributes:v17];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BMTopicEntity)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBTopicEntity alloc] initWithData:dataCopy];

    self = [(BMTopicEntity *)self initWithProto:v5];
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
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  topicId = [(BMTopicEntity *)self topicId];
  [v3 setTopicId:topicId];

  displayName = [(BMTopicEntity *)self displayName];
  [v3 setDisplayName:displayName];

  attributes = [(BMTopicEntity *)self attributes];

  if (attributes)
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
          attributes2 = [(BMTopicEntity *)self attributes];
          v16 = [attributes2 objectForKeyedSubscript:v12];
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