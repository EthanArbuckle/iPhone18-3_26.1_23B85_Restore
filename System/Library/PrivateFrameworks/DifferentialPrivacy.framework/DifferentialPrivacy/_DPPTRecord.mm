@interface _DPPTRecord
+ (id)createRecordFromManagedObject:(id)object;
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPTRecord:(id)record;
- (_DPPTRecord)init;
- (_DPPTRecord)initWithCoder:(id)coder;
- (_DPPTRecord)initWithKey:(id)key privateValue:(id)value creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)entityName;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DPPTRecord

- (_DPPTRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPPTRecord *)self initWithKey:@"com.apple._DPPTRecord" privateValue:&stru_2839671C8 creationDate:0 submitted:0 objectId:v5];
}

- (_DPPTRecord)initWithKey:(id)key privateValue:(id)value creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id
{
  keyCopy = key;
  valueCopy = value;
  idCopy = id;
  v21.receiver = self;
  v21.super_class = _DPPTRecord;
  v16 = [(_DPPTRecord *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, key);
    v18 = [valueCopy copy];
    privateValue = v17->_privateValue;
    v17->_privateValue = v18;

    v17->_creationDate = date;
    v17->_submitted = submitted;
    v17->_reportVersion = +[_DPJSONOutputHelper currentVersion];
    objc_storeStrong(&v17->_objectId, id);
  }

  return v17;
}

- (id)jsonString
{
  v2 = MEMORY[0x277CCACA8];
  privateValue = [(_DPPTRecord *)self privateValue];
  v4 = [v2 stringWithFormat:@"%@", privateValue];

  return v4;
}

- (_DPPTRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateValue"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  bOOLValue = [v10 BOOLValue];
  v12 = [(_DPPTRecord *)self initWithKey:v5 privateValue:v6 creationDate:bOOLValue submitted:0 objectId:v9];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_key forKey:@"key"];
  [coderCopy encodeObject:self->_privateValue forKey:@"privateValue"];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [coderCopy encodeObject:v4 forKey:@"creationDate"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_submitted];
  [coderCopy encodeObject:v5 forKey:@"submitted"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_reportVersion];
  [coderCopy encodeObject:v6 forKey:@"reportVersion"];

  objectId = self->_objectId;
  if (objectId)
  {
    [coderCopy encodeObject:objectId forKey:@"objectId"];
  }
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [&stru_2839671C8 mutableCopy];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 appendFormat:@"%@: { key=%@ ; ", v6, self->_key];

  v7 = "NO";
  if (self->_submitted)
  {
    v7 = "YES";
  }

  [v4 appendFormat:@"privateValue=%@ ; creationDate=%.16g ; submitted=%s ; reportVersion=%lld ; ", self->_privateValue, *&self->_creationDate, v7, self->_reportVersion];
  if (self->_objectId)
  {
    [v4 appendFormat:@"objectId=%@ }", self->_objectId];
  }

  else
  {
    [v4 appendString:@"objectId=(nil) }"];
  }

  v8 = [v4 copy];

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPPTRecord *)self key];
  privateValue = [(_DPPTRecord *)self privateValue];
  [(_DPPTRecord *)self creationDate];
  v8 = v7;
  submitted = [(_DPPTRecord *)self submitted];
  objectId = [(_DPPTRecord *)self objectId];
  v11 = [v4 initWithKey:v5 privateValue:privateValue creationDate:submitted submitted:objectId objectId:v8];

  return v11;
}

- (BOOL)isEqualToPTRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_6;
  }

  v5 = [(_DPPTRecord *)self key];
  v6 = [recordCopy key];
  v7 = [v5 isEqualToString:v6];

  privateValue = [(_DPPTRecord *)self privateValue];
  privateValue2 = [recordCopy privateValue];
  v10 = [privateValue isEqualToString:privateValue2];

  [(_DPPTRecord *)self creationDate];
  v12 = v11;
  [recordCopy creationDate];
  v14 = areEqualTimeIntervals(v12, v13);
  LODWORD(privateValue2) = [(_DPPTRecord *)self submitted];
  v15 = privateValue2 ^ [recordCopy submitted];
  reportVersion = [(_DPPTRecord *)self reportVersion];
  reportVersion2 = [recordCopy reportVersion];
  objectId = [(_DPPTRecord *)self objectId];

  if (objectId)
  {
    objectId2 = [(_DPPTRecord *)self objectId];
    objectId3 = [recordCopy objectId];
    v21 = [objectId2 isEqual:objectId3];
  }

  else
  {
    objectId4 = [recordCopy objectId];

    v21 = objectId4 == 0;
  }

  if (!(v15 & 1 | ((v7 & v10 & v14 & 1) == 0)))
  {
    v23 = (reportVersion == reportVersion2) & v21;
  }

  else
  {
LABEL_6:
    v23 = 0;
  }

  return v23;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPPTRecord *)self isEqualToPTRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPPTRecord *)self key];
  v4 = [v3 hash];
  privateValue = [(_DPPTRecord *)self privateValue];
  v6 = [privateValue hash] ^ v4;
  [(_DPPTRecord *)self creationDate];
  v8 = v7;
  v9 = v6 ^ [(_DPPTRecord *)self submitted];
  v10 = v9 ^ [(_DPPTRecord *)self reportVersion];
  objectId = [(_DPPTRecord *)self objectId];
  v12 = v10 ^ [objectId hash];

  return v12 ^ v8;
}

+ (id)createRecordFromManagedObject:(id)object
{
  objectCopy = object;
  v4 = objc_opt_new();
  v5 = [v4 copyFromManagedObject:objectCopy];

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
    v7 = [(_DPPTRecord *)self key];
    [v6 setKey:v7];

    privateValue = [(_DPPTRecord *)self privateValue];
    [v6 setPrivateValue:privateValue];

    [(_DPPTRecord *)self creationDate];
    [v6 setCreationDate:?];
    [v6 setSubmitted:{-[_DPPTRecord submitted](self, "submitted")}];
    [v6 setReportVersion:{-[_DPPTRecord reportVersion](self, "reportVersion")}];
    objectId = [(_DPPTRecord *)self objectId];
    objectID = [v6 objectID];

    if (objectId != objectID)
    {
      objectID2 = [v6 objectID];
      [(_DPPTRecord *)self setObjectId:objectID2];
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
    [(_DPPTRecord *)self setKey:v7];

    privateValue = [v6 privateValue];
    [(_DPPTRecord *)self setPrivateValue:privateValue];

    [v6 creationDate];
    [(_DPPTRecord *)self setCreationDate:?];
    -[_DPPTRecord setSubmitted:](self, "setSubmitted:", [v6 submitted]);
    -[_DPPTRecord setReportVersion:](self, "setReportVersion:", [v6 reportVersion]);
    objectID = [v6 objectID];

    [(_DPPTRecord *)self setObjectId:objectID];
  }

  return isKindOfClass & 1;
}

@end