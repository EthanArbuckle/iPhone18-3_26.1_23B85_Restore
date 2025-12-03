@interface _DPCMSRecord
+ (id)createRecordFromManagedObject:(id)object;
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCMSRecord:(id)record;
- (_DPCMSRecord)init;
- (_DPCMSRecord)initWithCoder:(id)coder;
- (_DPCMSRecord)initWithKey:(id)key creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)entityName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DPCMSRecord

- (_DPCMSRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPCMSRecord *)self initWithKey:@"UNKNOWN" creationDate:0 submitted:0 objectId:v5];
}

- (_DPCMSRecord)initWithKey:(id)key creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id
{
  keyCopy = key;
  idCopy = id;
  v16.receiver = self;
  v16.super_class = _DPCMSRecord;
  v13 = [(_DPCMSRecord *)&v16 init];
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

- (_DPCMSRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  bOOLValue = [v9 BOOLValue];
  v11 = [(_DPCMSRecord *)self initWithKey:v5 creationDate:bOOLValue submitted:0 objectId:v8];

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
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_submitted)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  v8 = [v3 stringWithFormat:@"%@: { key=%@  creationDate=%.16g ; submitted=%s ; reportVersion=%lld ; ", v5, self->_key, *&self->_creationDate, v7, self->_reportVersion];;

  if (self->_objectId)
  {
    [v8 appendFormat:@"objectId=%@ }", self->_objectId];
  }

  else
  {
    [v8 appendString:@"objectId=(nil) }"];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPCMSRecord *)self key];
  [(_DPCMSRecord *)self creationDate];
  v7 = v6;
  submitted = [(_DPCMSRecord *)self submitted];
  objectId = [(_DPCMSRecord *)self objectId];
  v10 = [v4 initWithKey:v5 creationDate:submitted submitted:objectId objectId:v7];

  return v10;
}

- (BOOL)isEqualToCMSRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_6;
  }

  v5 = [(_DPCMSRecord *)self key];
  v6 = [recordCopy key];
  v7 = [v5 isEqualToString:v6];

  [(_DPCMSRecord *)self creationDate];
  v9 = v8;
  [recordCopy creationDate];
  v11 = areEqualTimeIntervals(v9, v10);
  LODWORD(v6) = [(_DPCMSRecord *)self submitted];
  v12 = v6 ^ [recordCopy submitted];
  reportVersion = [(_DPCMSRecord *)self reportVersion];
  reportVersion2 = [recordCopy reportVersion];
  objectId = [(_DPCMSRecord *)self objectId];

  if (objectId)
  {
    objectId2 = [(_DPCMSRecord *)self objectId];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPCMSRecord *)self isEqualToCMSRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPCMSRecord *)self key];
  v4 = [v3 hash];
  [(_DPCMSRecord *)self creationDate];
  v6 = v5;
  v7 = v4 ^ [(_DPCMSRecord *)self submitted];
  v8 = v7 ^ [(_DPCMSRecord *)self reportVersion];
  objectId = [(_DPCMSRecord *)self objectId];
  v10 = v8 ^ [objectId hash];

  return v10 ^ v6;
}

+ (id)createRecordFromManagedObject:(id)object
{
  v35[4] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v35[2] = objc_opt_class();
  v35[3] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
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
    v7 = [(_DPCMSRecord *)self key];
    [v6 setKey:v7];

    [(_DPCMSRecord *)self creationDate];
    [v6 setCreationDate:?];
    [v6 setSubmitted:{-[_DPCMSRecord submitted](self, "submitted")}];
    [v6 setReportVersion:{-[_DPCMSRecord reportVersion](self, "reportVersion")}];
    objectId = [(_DPCMSRecord *)self objectId];
    objectID = [v6 objectID];

    if (objectId != objectID)
    {
      objectID2 = [v6 objectID];
      [(_DPCMSRecord *)self setObjectId:objectID2];
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
    [(_DPCMSRecord *)self setKey:v7];

    [v6 creationDate];
    [(_DPCMSRecord *)self setCreationDate:?];
    -[_DPCMSRecord setSubmitted:](self, "setSubmitted:", [v6 submitted]);
    -[_DPCMSRecord setReportVersion:](self, "setReportVersion:", [v6 reportVersion]);
    objectID = [v6 objectID];

    [(_DPCMSRecord *)self setObjectId:objectID];
  }

  return isKindOfClass & 1;
}

@end