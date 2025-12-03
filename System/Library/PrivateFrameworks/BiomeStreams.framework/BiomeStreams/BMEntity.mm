@interface BMEntity
- (BMEntity)initWithIsPersonType:(BOOL)type isTopicType:(BOOL)topicType topicEntity:(id)entity personEntity:(id)personEntity;
- (BMEntity)initWithProto:(id)proto;
- (BMEntity)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMEntity

- (BMEntity)initWithIsPersonType:(BOOL)type isTopicType:(BOOL)topicType topicEntity:(id)entity personEntity:(id)personEntity
{
  entityCopy = entity;
  personEntityCopy = personEntity;
  v16.receiver = self;
  v16.super_class = BMEntity;
  v13 = [(BMEntity *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_isPersonType = type;
    v13->_isTopicType = topicType;
    objc_storeStrong(&v13->_topicEntity, entity);
    objc_storeStrong(&v14->_personEntity, personEntity);
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isTopicType = self->_isTopicType;
    if (isTopicType == [v5 isTopicType] && (isPersonType = self->_isPersonType, isPersonType == objc_msgSend(v5, "isPersonType")))
    {
      personEntity = self->_personEntity;
      personEntity = [v5 personEntity];
      if ([BMEntityRelationshipEventUtilities checkNullablePersonEntityEqualityForSource:personEntity target:personEntity])
      {
        topicEntity = self->_topicEntity;
        topicEntity = [v5 topicEntity];
        v12 = [BMEntityRelationshipEventUtilities checkNullableTopicEntityEqualityForSource:topicEntity target:topicEntity];
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
  proto = [(BMEntity *)self proto];
  data = [proto data];

  return data;
}

- (BMEntity)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = protoCopy;
    if ([v5 hasPersonEntity])
    {
      v6 = [BMPersonEntity alloc];
      personEntity = [v5 personEntity];
      v8 = [(BMPersonEntity *)v6 initWithProto:personEntity];
    }

    else
    {
      v8 = 0;
    }

    if ([v5 hasTopicEntity])
    {
      v10 = [BMTopicEntity alloc];
      topicEntity = [v5 topicEntity];
      v12 = [(BMTopicEntity *)v10 initWithProto:topicEntity];
    }

    else
    {
      v12 = 0;
    }

    self = -[BMEntity initWithIsPersonType:isTopicType:topicEntity:personEntity:](self, "initWithIsPersonType:isTopicType:topicEntity:personEntity:", [v5 hasPersonEntity], objc_msgSend(v5, "hasTopicEntity"), v12, v8);

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMEntity)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBEntity alloc] initWithData:dataCopy];

    self = [(BMEntity *)self initWithProto:v5];
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
  v3 = objc_opt_new();
  if ([(BMEntity *)self isTopicType])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v3 setEntityType:v4];
  if ([(BMEntity *)self isTopicType])
  {
    topicEntity = [(BMEntity *)self topicEntity];
    proto = [topicEntity proto];
    [v3 setTopicEntity:proto];
  }

  if ([(BMEntity *)self isPersonType])
  {
    personEntity = [(BMEntity *)self personEntity];
    proto2 = [personEntity proto];
    [v3 setPersonEntity:proto2];
  }

  return v3;
}

@end