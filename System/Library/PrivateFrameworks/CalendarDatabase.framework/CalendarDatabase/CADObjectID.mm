@interface CADObjectID
- (BOOL)isEqual:(id)a3;
- (CADObjectID)initWithCoder:(id)a3;
- (CADObjectID)initWithDictionaryRepresentation:(id)a3;
- (CADObjectID)initWithEntityType:(int)a3 entityID:(int)a4 databaseID:(int)a5;
- (id)URIRepresentation;
- (id)dictionaryRepresentation;
- (id)stringRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADObjectID

- (unint64_t)hash
{
  entityID = self->_entityID;
  if (entityID >= 0)
  {
    v3 = self->_entityID;
  }

  else
  {
    v3 = -entityID;
  }

  return ((self->_temporary << 31) | ((self->_entityType & 0x7F) << 24) | v3 & 0xFFFFFF) ^ (1327217884 * self->_databaseID);
}

- (CADObjectID)initWithEntityType:(int)a3 entityID:(int)a4 databaseID:(int)a5
{
  v10.receiver = self;
  v10.super_class = CADObjectID;
  v8 = [(CADObjectID *)&v10 init];
  if (v8)
  {
    if (!isValidEntityType(a3))
    {
      [CADObjectID initWithEntityType:a3 entityID:? databaseID:?];
    }

    v8->_entityType = a3;
    v8->_entityID = a4;
    v8->_databaseID = a5;
    v8->_temporary = a4 < 0;
  }

  return v8;
}

- (CADObjectID)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CADObjectID;
  v5 = [(CADObjectID *)&v12 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 decodeIntForKey:@"entityType"];
  v5->_entityType = v6;
  if (isValidEntityType(v6))
  {
    v5->_entityID = [v4 decodeIntForKey:@"rowID"];
    v5->_databaseID = [v4 decodeIntForKey:@"dbID"];
    v5->_temporary = [v4 decodeBoolForKey:@"temporary"];
LABEL_4:
    v7 = v5;
    goto LABEL_8;
  }

  v8 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    entityType = v5->_entityType;
    *buf = 67109120;
    v14 = entityType;
    _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_ERROR, "Unknown entity type (%i) in [CADObjectID initWithCoder:]", buf, 8u);
  }

  v7 = 0;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt:self->_entityType forKey:@"entityType"];
  [v5 encodeInt:self->_entityID forKey:@"rowID"];
  databaseID = self->_databaseID;
  if (databaseID)
  {
    [v5 encodeInt:databaseID forKey:@"dbID"];
  }

  [v5 encodeBool:self->_temporary forKey:@"temporary"];
}

- (CADObjectID)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CADObjectID;
  v5 = [(CADObjectID *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"entityType"];
    v5->_entityType = [v6 intValue];

    v7 = [v4 objectForKeyedSubscript:@"rowID"];
    v5->_entityID = [v7 intValue];

    v8 = [v4 objectForKeyedSubscript:@"dbID"];
    v5->_databaseID = [v8 intValue];

    v9 = [v4 objectForKeyedSubscript:@"temporary"];
    v5->_temporary = [v9 BOOLValue];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"entityType";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:self->_entityType];
  v11[0] = v3;
  v10[1] = @"rowID";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_entityID];
  v11[1] = v4;
  v10[2] = @"dbID";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_databaseID];
  v11[2] = v5;
  v10[3] = @"temporary";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_temporary];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)stringRepresentation
{
  databaseID = self->_databaseID;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(CADObjectID *)self entityName];
  v6 = v5;
  v7 = @"p";
  if (self->_temporary)
  {
    v7 = @"t";
  }

  entityID = self->_entityID;
  if (databaseID)
  {
    [v4 stringWithFormat:@"%@://%d/%@/%@%d", @"x-apple-eventkit", databaseID, v5, v7, entityID];
  }

  else
  {
    [v4 stringWithFormat:@"%@:///%@/%@%d", @"x-apple-eventkit", v5, v7, entityID, v11];
  }
  v9 = ;

  return v9;
}

- (id)URIRepresentation
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(CADObjectID *)self stringRepresentation];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4)
  {
    Class = object_getClass(self);
    if (Class == object_getClass(v5))
    {
      v8 = v5;
      entityType = self->_entityType;
      if (entityType == [(CADObjectID *)v8 entityType]&& (entityID = self->_entityID, entityID == [(CADObjectID *)v8 entityID]) && (temporary = self->_temporary, temporary == [(CADObjectID *)v8 isTemporary]))
      {
        databaseID = self->_databaseID;
        v7 = databaseID == [(CADObjectID *)v8 databaseID];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = [(CADObjectID *)v5 isEqual:self];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)initWithEntityType:(int)a1 entityID:databaseID:.cold.1(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_ERROR, "Unknown entity type (%i) in [CADObjectID initWithEntityType:entityID:databaseID:]", v3, 8u);
  }

  __assert_rtn("[CADObjectID initWithEntityType:entityID:databaseID:]", "CADObjectID.m", 38, "0");
}

@end