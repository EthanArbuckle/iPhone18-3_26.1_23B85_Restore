@interface SGMatchinfoData
+ (id)matchinfoDataWithEntityId:(id)id detailEntityId:(id)entityId;
+ (id)matchinfoDataWithEntityId:(id)id detailEntityId:(id)entityId matchinfoData:(id)data;
- (BOOL)isEqualToMatchinfoData:(id)data;
- (SGMatchinfoData)initWithCoder:(id)coder;
- (SGMatchinfoData)initWithMatchinfoDataWithEntityId:(id)id detailEntityId:(id)entityId matchinfoData:(id)data;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGMatchinfoData

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGMatchinfoData: entityId=%@ detailEntityId=%@ matchinfoData=%@", self->_entityId, self->_detailEntityId, self->_matchinfoData];

  return v2;
}

- (BOOL)isEqualToMatchinfoData:(id)data
{
  dataCopy = data;
  entityId = self->_entityId;
  entityId = [dataCopy entityId];
  if ([(NSNumber *)entityId isEqualToNumber:entityId])
  {
    detailEntityId = self->_detailEntityId;
    detailEntityId = [dataCopy detailEntityId];
    if ([(NSNumber *)detailEntityId isEqualToNumber:detailEntityId])
    {
      matchinfoData = self->_matchinfoData;
      matchinfoData = [dataCopy matchinfoData];
      v11 = [(NSData *)matchinfoData isEqualToData:matchinfoData];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  entityId = self->_entityId;
  coderCopy = coder;
  [coderCopy encodeObject:entityId forKey:@"entityId"];
  [coderCopy encodeObject:self->_detailEntityId forKey:@"detailEntityId"];
  [coderCopy encodeObject:self->_matchinfoData forKey:@"matchinfoData"];
}

- (SGMatchinfoData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = SGMatchinfoData;
  v6 = [(SGMatchinfoData *)&v20 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"entityId"];

    if (v8)
    {
      v9 = v8;
      entityId = v6->_entityId;
      v6->_entityId = v9;
    }

    else
    {
      entityId = [MEMORY[0x1E696AAA8] currentHandler];
      [entityId handleFailureInMethod:a2 object:v6 file:@"SGMatchinfoData.m" lineNumber:48 description:{@"nonnull property %s *%s was null when decoded", "NSNumber", "entityId"}];
    }

    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"detailEntityId"];

    if (v12)
    {
      v13 = v12;
      detailEntityId = v6->_detailEntityId;
      v6->_detailEntityId = v13;
    }

    else
    {
      detailEntityId = [MEMORY[0x1E696AAA8] currentHandler];
      [detailEntityId handleFailureInMethod:a2 object:v6 file:@"SGMatchinfoData.m" lineNumber:49 description:{@"nonnull property %s *%s was null when decoded", "NSNumber", "detailEntityId"}];
    }

    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"matchinfoData"];

    if (v16)
    {
      v17 = v16;
      matchinfoData = v6->_matchinfoData;
      v6->_matchinfoData = v17;
    }

    else
    {
      matchinfoData = [MEMORY[0x1E696AAA8] currentHandler];
      [matchinfoData handleFailureInMethod:a2 object:v6 file:@"SGMatchinfoData.m" lineNumber:50 description:{@"nonnull property %s *%s was null when decoded", "NSData", "matchinfoData"}];
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_entityId hash];
  v4 = [(NSNumber *)self->_detailEntityId hash]- v3 + 32 * v3;
  return [(NSData *)self->_matchinfoData hash]- v4 + 32 * v4;
}

- (SGMatchinfoData)initWithMatchinfoDataWithEntityId:(id)id detailEntityId:(id)entityId matchinfoData:(id)data
{
  idCopy = id;
  entityIdCopy = entityId;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = SGMatchinfoData;
  v12 = [(SGMatchinfoData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityId, id);
    objc_storeStrong(&v13->_detailEntityId, entityId);
    objc_storeStrong(&v13->_matchinfoData, data);
  }

  return v13;
}

+ (id)matchinfoDataWithEntityId:(id)id detailEntityId:(id)entityId
{
  entityIdCopy = entityId;
  idCopy = id;
  v8 = [self alloc];
  v9 = objc_opt_new();
  v10 = [v8 initWithMatchinfoDataWithEntityId:idCopy detailEntityId:entityIdCopy matchinfoData:v9];

  return v10;
}

+ (id)matchinfoDataWithEntityId:(id)id detailEntityId:(id)entityId matchinfoData:(id)data
{
  dataCopy = data;
  entityIdCopy = entityId;
  idCopy = id;
  v11 = [[self alloc] initWithMatchinfoDataWithEntityId:idCopy detailEntityId:entityIdCopy matchinfoData:dataCopy];

  return v11;
}

@end