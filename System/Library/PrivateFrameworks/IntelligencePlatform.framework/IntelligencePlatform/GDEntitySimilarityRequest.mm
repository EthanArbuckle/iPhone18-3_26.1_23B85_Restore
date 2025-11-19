@interface GDEntitySimilarityRequest
- (GDEntitySimilarityRequest)initWithCoder:(id)a3;
- (GDEntitySimilarityRequest)initWithEntityId1:(id)a3 entityId2:(id)a4 entitySimilarityMode:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDEntitySimilarityRequest

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"GDEntitySimilarityRequest<entityId1: %@, entityId2: %@, entitySimilarityMode: %ld>", self->_entityId1, self->_entityId2, self->_entitySimilarityMode];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  entityId1 = self->_entityId1;
  entityId2 = self->_entityId2;
  entitySimilarityMode = self->_entitySimilarityMode;

  return [v4 initWithEntityId1:entityId1 entityId2:entityId2 entitySimilarityMode:entitySimilarityMode];
}

- (GDEntitySimilarityRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_entityId1);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_entityId2);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_entitySimilarityMode);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = [v13 intValue];
  v15 = [(GDEntitySimilarityRequest *)self initWithEntityId1:v7 entityId2:v10 entitySimilarityMode:v14];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  entityId1 = self->_entityId1;
  v5 = a3;
  v6 = NSStringFromSelector(sel_entityId1);
  [v5 encodeObject:entityId1 forKey:v6];

  entityId2 = self->_entityId2;
  v8 = NSStringFromSelector(sel_entityId2);
  [v5 encodeObject:entityId2 forKey:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_entitySimilarityMode];
  v9 = NSStringFromSelector(sel_entitySimilarityMode);
  [v5 encodeObject:v10 forKey:v9];
}

- (GDEntitySimilarityRequest)initWithEntityId1:(id)a3 entityId2:(id)a4 entitySimilarityMode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = GDEntitySimilarityRequest;
  v10 = [(GDEntitySimilarityRequest *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    entityId1 = v10->_entityId1;
    v10->_entityId1 = v11;

    v13 = [v9 copy];
    entityId2 = v10->_entityId2;
    v10->_entityId2 = v13;

    v10->_entitySimilarityMode = a5;
  }

  return v10;
}

@end