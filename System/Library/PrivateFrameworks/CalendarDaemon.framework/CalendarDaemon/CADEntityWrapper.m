@interface CADEntityWrapper
- (CADEntityWrapper)initWithCalEntity:(void *)a3 loadedValues:(id)a4;
- (CADEntityWrapper)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADEntityWrapper

- (CADEntityWrapper)initWithCalEntity:(void *)a3 loadedValues:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CADEntityWrapper;
  v7 = [(CADEntityWrapper *)&v12 init];
  if (v7)
  {
    v7->_entityType = CalEntityGetType();
    v7->_rowID = CalEntityGetID();
    v8 = CADEntityCopyObjectID();
    objectID = v7->_objectID;
    v7->_objectID = v8;

    v7->_databaseID = [(CADObjectID *)v7->_objectID databaseID];
    if (!v7->_objectID)
    {
      v10 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v7->_loadedValues, a4);
  }

  v10 = v7;
LABEL_6:

  return v10;
}

- (CADEntityWrapper)initWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CADEntityWrapper *)a2 initWithCoder:?];
  }

  v15.receiver = self;
  v15.super_class = CADEntityWrapper;
  v6 = [(CADEntityWrapper *)&v15 init];
  if (v6)
  {
    if (initWithCoder__onceToken_1 != -1)
    {
      [CADEntityWrapper initWithCoder:];
    }

    v7 = [v5 decodeIntForKey:@"entityType"];
    v8 = [v5 decodeIntForKey:@"rowID"];
    v9 = [v5 decodeIntForKey:@"dbID"];
    v10 = [v5 decodeObjectOfClasses:initWithCoder__allowedObjectClasses forKey:@"objects"];
    loadedValues = v6->_loadedValues;
    v6->_loadedValues = v10;

    v12 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:v7 entityID:v8 databaseID:v9];
    objectID = v6->_objectID;
    v6->_objectID = v12;
  }

  return v6;
}

uint64_t __34__CADEntityWrapper_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v3 = initWithCoder__allowedKeyClasses;
  initWithCoder__allowedKeyClasses = v2;

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  initWithCoder__allowedObjectClasses = v11;

  return MEMORY[0x2821F96F8](v11);
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CADEntityWrapper *)a2 encodeWithCoder:?];
  }

  [v7 encodeInt:self->_entityType forKey:@"entityType"];
  [v7 encodeInt:self->_rowID forKey:@"rowID"];
  databaseID = self->_databaseID;
  if (databaseID)
  {
    [v7 encodeInt:databaseID forKey:@"dbID"];
  }

  loadedValues = self->_loadedValues;
  if (loadedValues)
  {
    [v7 encodeObject:loadedValues forKey:@"objects"];
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CADEntityWrapper.m" lineNumber:60 description:@"wha!"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CADEntityWrapper.m" lineNumber:83 description:@"wha!"];
}

@end