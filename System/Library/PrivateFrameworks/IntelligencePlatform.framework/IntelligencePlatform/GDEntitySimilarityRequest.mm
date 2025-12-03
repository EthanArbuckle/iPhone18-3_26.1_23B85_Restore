@interface GDEntitySimilarityRequest
- (GDEntitySimilarityRequest)initWithCoder:(id)coder;
- (GDEntitySimilarityRequest)initWithEntityId1:(id)id1 entityId2:(id)id2 entitySimilarityMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDEntitySimilarityRequest

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"GDEntitySimilarityRequest<entityId1: %@, entityId2: %@, entitySimilarityMode: %ld>", self->_entityId1, self->_entityId2, self->_entitySimilarityMode];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  entityId1 = self->_entityId1;
  entityId2 = self->_entityId2;
  entitySimilarityMode = self->_entitySimilarityMode;

  return [v4 initWithEntityId1:entityId1 entityId2:entityId2 entitySimilarityMode:entitySimilarityMode];
}

- (GDEntitySimilarityRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_entityId1);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_entityId2);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_entitySimilarityMode);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  intValue = [v13 intValue];
  v15 = [(GDEntitySimilarityRequest *)self initWithEntityId1:v7 entityId2:v10 entitySimilarityMode:intValue];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  entityId1 = self->_entityId1;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_entityId1);
  [coderCopy encodeObject:entityId1 forKey:v6];

  entityId2 = self->_entityId2;
  v8 = NSStringFromSelector(sel_entityId2);
  [coderCopy encodeObject:entityId2 forKey:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_entitySimilarityMode];
  v9 = NSStringFromSelector(sel_entitySimilarityMode);
  [coderCopy encodeObject:v10 forKey:v9];
}

- (GDEntitySimilarityRequest)initWithEntityId1:(id)id1 entityId2:(id)id2 entitySimilarityMode:(int64_t)mode
{
  id1Copy = id1;
  id2Copy = id2;
  v16.receiver = self;
  v16.super_class = GDEntitySimilarityRequest;
  v10 = [(GDEntitySimilarityRequest *)&v16 init];
  if (v10)
  {
    v11 = [id1Copy copy];
    entityId1 = v10->_entityId1;
    v10->_entityId1 = v11;

    v13 = [id2Copy copy];
    entityId2 = v10->_entityId2;
    v10->_entityId2 = v13;

    v10->_entitySimilarityMode = mode;
  }

  return v10;
}

@end