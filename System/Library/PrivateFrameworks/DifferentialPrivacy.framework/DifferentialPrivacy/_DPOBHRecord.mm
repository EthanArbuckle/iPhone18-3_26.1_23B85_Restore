@interface _DPOBHRecord
+ (id)createRecordFromManagedObject:(id)object;
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOBHRecord:(id)record;
- (_DPOBHRecord)initWithCoder:(id)coder;
- (_DPOBHRecord)initWithKey:(id)key creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)entityName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DPOBHRecord

- (_DPOBHRecord)initWithKey:(id)key creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id
{
  keyCopy = key;
  idCopy = id;
  v16.receiver = self;
  v16.super_class = _DPOBHRecord;
  v13 = [(_DPOBHRecord *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_key, key);
    v14->_creationDate = date;
    v14->_submitted = submitted;
    v14->_reportVersion = +[_DPJSONOutputHelper currentVersion];
    objc_storeStrong(&v14->_objectId, id);
  }

  return v14;
}

- (_DPOBHRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  bOOLValue = [v9 BOOLValue];
  v11 = [(_DPOBHRecord *)self initWithKey:v5 creationDate:bOOLValue submitted:0 objectId:v8];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  key = self->_key;
  if (key)
  {
    [coderCopy encodeObject:key forKey:@"key"];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [coderCopy encodeObject:v5 forKey:@"creationDate"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_submitted];
  [coderCopy encodeObject:v6 forKey:@"submitted"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_reportVersion];
  [coderCopy encodeObject:v7 forKey:@"reportVersion"];

  objectId = self->_objectId;
  if (objectId)
  {
    [coderCopy encodeObject:objectId forKey:@"objectId"];
  }
}

- (id)description
{
  v3 = [&stru_2839671C8 mutableCopy];
  key = self->_key;
  if (!key)
  {
    key = @"(nil)";
  }

  v5 = key;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 appendFormat:@"%@: { key=%@ ; ", v7, v5];

  [v3 appendFormat:@"creationDate=%.16g ; ", *&self->_creationDate];
  if (self->_submitted)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"submitted=%@ ; ", v8];
  [v3 appendFormat:@"reportVersion=%lld ; ", self->_reportVersion];
  objectId = self->_objectId;
  if (!objectId)
  {
    objectId = @"(nil)";
  }

  [v3 appendFormat:@"objectId=%@ }", objectId];
  v10 = [v3 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPOBHRecord *)self key];
  [(_DPOBHRecord *)self creationDate];
  v7 = v6;
  submitted = [(_DPOBHRecord *)self submitted];
  objectId = [(_DPOBHRecord *)self objectId];
  v10 = [v4 initWithKey:v5 creationDate:submitted submitted:objectId objectId:v7];

  return v10;
}

- (BOOL)isEqualToOBHRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_6;
  }

  v5 = [(_DPOBHRecord *)self key];
  v6 = [recordCopy key];
  v7 = [v5 isEqualToString:v6];

  [(_DPOBHRecord *)self creationDate];
  v9 = v8;
  [recordCopy creationDate];
  v11 = areEqualTimeIntervals(v9, v10);
  LODWORD(v6) = [(_DPOBHRecord *)self submitted];
  v12 = v6 ^ [recordCopy submitted];
  reportVersion = [(_DPOBHRecord *)self reportVersion];
  reportVersion2 = [recordCopy reportVersion];
  objectId = [(_DPOBHRecord *)self objectId];

  if (objectId)
  {
    objectId2 = [(_DPOBHRecord *)self objectId];
    objectId3 = [recordCopy objectId];
    v18 = [objectId2 isEqual:objectId3];
  }

  else
  {
    objectId4 = [recordCopy objectId];

    v18 = objectId4 == 0;
  }

  if (!(v12 & 1 | ((v7 & v11 & 1) == 0)))
  {
    v20 = (reportVersion == reportVersion2) & v18;
  }

  else
  {
LABEL_6:
    v20 = 0;
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPOBHRecord *)self isEqualToOBHRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPOBHRecord *)self key];
  v4 = [v3 hash];
  [(_DPOBHRecord *)self creationDate];
  v6 = v5;
  v7 = v4 ^ [(_DPOBHRecord *)self submitted];
  v8 = v7 ^ [(_DPOBHRecord *)self reportVersion];
  objectId = [(_DPOBHRecord *)self objectId];
  v10 = v8 ^ [objectId hash];

  return v10 ^ v6;
}

+ (id)createRecordFromManagedObject:(id)object
{
  v35[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v35[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  entity = [objectCopy entity];
  name = [entity name];

  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        entityName = [v13 entityName];
        v15 = [entityName isEqualToString:name];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
LABEL_12:
    v20 = 0;
    while (1)
    {
      if (*v26 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v25 + 1) + 8 * v20);
      v22 = objc_opt_new();
      if ([v22 copyFromManagedObject:{objectCopy, v25}])
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v18)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)entityName
{
  v2 = objc_opt_class();

  return [v2 entityName];
}

- (BOOL)copyToManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = objectCopy;
    v7 = [(_DPOBHRecord *)self key];
    [v6 setKey:v7];

    [(_DPOBHRecord *)self creationDate];
    [v6 setCreationDate:?];
    [v6 setSubmitted:{-[_DPOBHRecord submitted](self, "submitted")}];
    [v6 setReportVersion:{-[_DPOBHRecord reportVersion](self, "reportVersion")}];
    objectId = [(_DPOBHRecord *)self objectId];
    objectID = [v6 objectID];

    if (objectId != objectID)
    {
      objectID2 = [v6 objectID];
      [(_DPOBHRecord *)self setObjectId:objectID2];
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)copyFromManagedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = objectCopy;
    v7 = [v6 key];
    [(_DPOBHRecord *)self setKey:v7];

    [v6 creationDate];
    [(_DPOBHRecord *)self setCreationDate:?];
    -[_DPOBHRecord setSubmitted:](self, "setSubmitted:", [v6 submitted]);
    -[_DPOBHRecord setReportVersion:](self, "setReportVersion:", [v6 reportVersion]);
    objectID = [v6 objectID];

    [(_DPOBHRecord *)self setObjectId:objectID];
  }

  return isKindOfClass & 1;
}

@end