@interface _DPNumericDataRecord
+ (id)createRecordFromManagedObject:(id)object;
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNumericDataRecord:(id)record;
- (_DPNumericDataRecord)init;
- (_DPNumericDataRecord)initWithCoder:(id)coder;
- (_DPNumericDataRecord)initWithKey:(id)key clearNumber:(double)number privateNumber:(double)privateNumber creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)entityName;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DPNumericDataRecord

- (_DPNumericDataRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPNumericDataRecord *)self initWithKey:@"com.apple._DPNumericDataRecord" clearNumber:0 privateNumber:0 creationDate:0.0 submitted:0.0 objectId:v5];
}

- (_DPNumericDataRecord)initWithKey:(id)key clearNumber:(double)number privateNumber:(double)privateNumber creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id
{
  keyCopy = key;
  idCopy = id;
  v19.receiver = self;
  v19.super_class = _DPNumericDataRecord;
  v16 = [(_DPNumericDataRecord *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, key);
    v17->_clearNumber = 0.0;
    v17->_privateNumber = privateNumber;
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
  [(_DPNumericDataRecord *)self privateNumber];
  return [v2 stringWithFormat:@"%lf", v3];
}

- (_DPNumericDataRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clearNumber"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateNumber"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  bOOLValue = [v15 BOOLValue];
  v17 = [(_DPNumericDataRecord *)self initWithKey:v5 clearNumber:bOOLValue privateNumber:0 creationDate:v8 submitted:v11 objectId:v14];

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_key forKey:@"key"];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clearNumber];
  [coderCopy encodeObject:v4 forKey:@"clearNumber"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_privateNumber];
  [coderCopy encodeObject:v5 forKey:@"privateNumber"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [coderCopy encodeObject:v6 forKey:@"creationDate"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_submitted];
  [coderCopy encodeObject:v7 forKey:@"submitted"];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_reportVersion];
  [coderCopy encodeObject:v8 forKey:@"reportVersion"];

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

  [v4 appendFormat:@"privateNumber=%lf ; creationDate=%.16g ; submitted=%s ; reportVersion=%lld ; ", *&self->_privateNumber, *&self->_creationDate, v7, self->_reportVersion];
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
  v5 = [(_DPNumericDataRecord *)self key];
  [(_DPNumericDataRecord *)self clearNumber];
  v7 = v6;
  [(_DPNumericDataRecord *)self privateNumber];
  v9 = v8;
  [(_DPNumericDataRecord *)self creationDate];
  v11 = v10;
  submitted = [(_DPNumericDataRecord *)self submitted];
  objectId = [(_DPNumericDataRecord *)self objectId];
  v14 = [v4 initWithKey:v5 clearNumber:submitted privateNumber:objectId creationDate:v7 submitted:v9 objectId:v11];

  return v14;
}

- (BOOL)isEqualToNumericDataRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_6;
  }

  v5 = [(_DPNumericDataRecord *)self key];
  v6 = [recordCopy key];
  v7 = [v5 isEqualToString:v6];

  [(_DPNumericDataRecord *)self clearNumber];
  v9 = v8;
  [recordCopy clearNumber];
  v11 = vabdd_f64(v9, v10);
  [(_DPNumericDataRecord *)self privateNumber];
  v13 = v12;
  [recordCopy privateNumber];
  v15 = vabdd_f64(v13, v14);
  [(_DPNumericDataRecord *)self creationDate];
  v17 = v16;
  [recordCopy creationDate];
  v19 = areEqualTimeIntervals(v17, v18);
  LOBYTE(v6) = [(_DPNumericDataRecord *)self submitted];
  v20 = v6 ^ [recordCopy submitted];
  reportVersion = [(_DPNumericDataRecord *)self reportVersion];
  reportVersion2 = [recordCopy reportVersion];
  objectId = [(_DPNumericDataRecord *)self objectId];

  if (objectId)
  {
    objectId2 = [(_DPNumericDataRecord *)self objectId];
    objectId3 = [recordCopy objectId];
    v26 = [objectId2 isEqual:objectId3];
  }

  else
  {
    objectId4 = [recordCopy objectId];

    v26 = objectId4 == 0;
  }

  if (!((v11 >= 1.0e-20 || (v7 & 1) == 0 || v15 >= 1.0e-20 || !v19) | v20 & 1))
  {
    v28 = (reportVersion == reportVersion2) & v26;
  }

  else
  {
LABEL_6:
    v28 = 0;
  }

  return v28;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPNumericDataRecord *)self isEqualToNumericDataRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPNumericDataRecord *)self key];
  v4 = [v3 hash];
  [(_DPNumericDataRecord *)self clearNumber];
  v6 = v4 ^ v5;
  [(_DPNumericDataRecord *)self privateNumber];
  v8 = v7;
  [(_DPNumericDataRecord *)self creationDate];
  v10 = v6 ^ v8 ^ v9;
  submitted = [(_DPNumericDataRecord *)self submitted];
  v12 = submitted ^ [(_DPNumericDataRecord *)self reportVersion];
  objectId = [(_DPNumericDataRecord *)self objectId];
  v14 = v12 ^ [objectId hash];

  return v10 ^ v14;
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
    v7 = [(_DPNumericDataRecord *)self key];
    [v6 setKey:v7];

    [(_DPNumericDataRecord *)self clearNumber];
    [v6 setClearNumber:?];
    [(_DPNumericDataRecord *)self privateNumber];
    [v6 setPrivateNumber:?];
    [(_DPNumericDataRecord *)self creationDate];
    [v6 setCreationDate:?];
    [v6 setSubmitted:{-[_DPNumericDataRecord submitted](self, "submitted")}];
    [v6 setReportVersion:{-[_DPNumericDataRecord reportVersion](self, "reportVersion")}];
    objectId = [(_DPNumericDataRecord *)self objectId];
    objectID = [v6 objectID];

    if (objectId != objectID)
    {
      objectID2 = [v6 objectID];
      [(_DPNumericDataRecord *)self setObjectId:objectID2];
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
    [(_DPNumericDataRecord *)self setKey:v7];

    [v6 clearNumber];
    [(_DPNumericDataRecord *)self setClearNumber:?];
    [v6 privateNumber];
    [(_DPNumericDataRecord *)self setPrivateNumber:?];
    [v6 creationDate];
    [(_DPNumericDataRecord *)self setCreationDate:?];
    -[_DPNumericDataRecord setSubmitted:](self, "setSubmitted:", [v6 submitted]);
    -[_DPNumericDataRecord setReportVersion:](self, "setReportVersion:", [v6 reportVersion]);
    objectID = [v6 objectID];

    [(_DPNumericDataRecord *)self setObjectId:objectID];
  }

  return isKindOfClass & 1;
}

@end