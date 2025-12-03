@interface CADObjectID
- (BOOL)isEqual:(id)equal;
- (CADObjectID)initWithCoder:(id)coder;
- (CADObjectID)initWithDictionaryRepresentation:(id)representation;
- (CADObjectID)initWithEntityType:(int)type entityID:(int)d databaseID:(int)iD;
- (id)URIRepresentation;
- (id)dictionaryRepresentation;
- (id)stringRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (CADObjectID)initWithEntityType:(int)type entityID:(int)d databaseID:(int)iD
{
  v10.receiver = self;
  v10.super_class = CADObjectID;
  v8 = [(CADObjectID *)&v10 init];
  if (v8)
  {
    if (!isValidEntityType(type))
    {
      [CADObjectID initWithEntityType:type entityID:? databaseID:?];
    }

    v8->_entityType = type;
    v8->_entityID = d;
    v8->_databaseID = iD;
    v8->_temporary = d < 0;
  }

  return v8;
}

- (CADObjectID)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CADObjectID;
  v5 = [(CADObjectID *)&v12 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeIntForKey:@"entityType"];
  v5->_entityType = v6;
  if (isValidEntityType(v6))
  {
    v5->_entityID = [coderCopy decodeIntForKey:@"rowID"];
    v5->_databaseID = [coderCopy decodeIntForKey:@"dbID"];
    v5->_temporary = [coderCopy decodeBoolForKey:@"temporary"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_entityType forKey:@"entityType"];
  [coderCopy encodeInt:self->_entityID forKey:@"rowID"];
  databaseID = self->_databaseID;
  if (databaseID)
  {
    [coderCopy encodeInt:databaseID forKey:@"dbID"];
  }

  [coderCopy encodeBool:self->_temporary forKey:@"temporary"];
}

- (CADObjectID)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = CADObjectID;
  v5 = [(CADObjectID *)&v11 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"entityType"];
    v5->_entityType = [v6 intValue];

    v7 = [representationCopy objectForKeyedSubscript:@"rowID"];
    v5->_entityID = [v7 intValue];

    v8 = [representationCopy objectForKeyedSubscript:@"dbID"];
    v5->_databaseID = [v8 intValue];

    v9 = [representationCopy objectForKeyedSubscript:@"temporary"];
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
  entityName = [(CADObjectID *)self entityName];
  v6 = entityName;
  v7 = @"p";
  if (self->_temporary)
  {
    v7 = @"t";
  }

  entityID = self->_entityID;
  if (databaseID)
  {
    [v4 stringWithFormat:@"%@://%d/%@/%@%d", @"x-apple-eventkit", databaseID, entityName, v7, entityID];
  }

  else
  {
    [v4 stringWithFormat:@"%@:///%@/%@%d", @"x-apple-eventkit", entityName, v7, entityID, v11];
  }
  v9 = ;

  return v9;
}

- (id)URIRepresentation
{
  v2 = MEMORY[0x1E695DFF8];
  stringRepresentation = [(CADObjectID *)self stringRepresentation];
  v4 = [v2 URLWithString:stringRepresentation];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy)
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