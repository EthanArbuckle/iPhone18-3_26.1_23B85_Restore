@interface SGMatchinfoData
+ (id)matchinfoDataWithEntityId:(id)a3 detailEntityId:(id)a4;
+ (id)matchinfoDataWithEntityId:(id)a3 detailEntityId:(id)a4 matchinfoData:(id)a5;
- (BOOL)isEqualToMatchinfoData:(id)a3;
- (SGMatchinfoData)initWithCoder:(id)a3;
- (SGMatchinfoData)initWithMatchinfoDataWithEntityId:(id)a3 detailEntityId:(id)a4 matchinfoData:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGMatchinfoData

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGMatchinfoData: entityId=%@ detailEntityId=%@ matchinfoData=%@", self->_entityId, self->_detailEntityId, self->_matchinfoData];

  return v2;
}

- (BOOL)isEqualToMatchinfoData:(id)a3
{
  v4 = a3;
  entityId = self->_entityId;
  v6 = [v4 entityId];
  if ([(NSNumber *)entityId isEqualToNumber:v6])
  {
    detailEntityId = self->_detailEntityId;
    v8 = [v4 detailEntityId];
    if ([(NSNumber *)detailEntityId isEqualToNumber:v8])
    {
      matchinfoData = self->_matchinfoData;
      v10 = [v4 matchinfoData];
      v11 = [(NSData *)matchinfoData isEqualToData:v10];
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

- (void)encodeWithCoder:(id)a3
{
  entityId = self->_entityId;
  v5 = a3;
  [v5 encodeObject:entityId forKey:@"entityId"];
  [v5 encodeObject:self->_detailEntityId forKey:@"detailEntityId"];
  [v5 encodeObject:self->_matchinfoData forKey:@"matchinfoData"];
}

- (SGMatchinfoData)initWithCoder:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = SGMatchinfoData;
  v6 = [(SGMatchinfoData *)&v20 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [v5 decodeObjectOfClasses:v7 forKey:@"entityId"];

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
    v12 = [v5 decodeObjectOfClasses:v11 forKey:@"detailEntityId"];

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
    v16 = [v5 decodeObjectOfClasses:v15 forKey:@"matchinfoData"];

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

- (SGMatchinfoData)initWithMatchinfoDataWithEntityId:(id)a3 detailEntityId:(id)a4 matchinfoData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SGMatchinfoData;
  v12 = [(SGMatchinfoData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityId, a3);
    objc_storeStrong(&v13->_detailEntityId, a4);
    objc_storeStrong(&v13->_matchinfoData, a5);
  }

  return v13;
}

+ (id)matchinfoDataWithEntityId:(id)a3 detailEntityId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v9 = objc_opt_new();
  v10 = [v8 initWithMatchinfoDataWithEntityId:v7 detailEntityId:v6 matchinfoData:v9];

  return v10;
}

+ (id)matchinfoDataWithEntityId:(id)a3 detailEntityId:(id)a4 matchinfoData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithMatchinfoDataWithEntityId:v10 detailEntityId:v9 matchinfoData:v8];

  return v11;
}

@end