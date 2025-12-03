@interface _DPBitValueRecord
+ (id)createRecordFromManagedObject:(id)object;
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBitValueRecord:(id)record;
- (_DPBitValueRecord)init;
- (_DPBitValueRecord)initWithCoder:(id)coder;
- (_DPBitValueRecord)initWithKey:(id)key clearBitValue:(signed __int16)value privateBitValueStr:(id)str creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)entityName;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DPBitValueRecord

- (_DPBitValueRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPBitValueRecord *)self initWithKey:@"com.apple._DPBitValueDataRecord" clearBitValue:0 privateBitValueStr:&stru_2839671C8 creationDate:0 submitted:0 objectId:v5];
}

- (_DPBitValueRecord)initWithKey:(id)key clearBitValue:(signed __int16)value privateBitValueStr:(id)str creationDate:(double)date submitted:(BOOL)submitted objectId:(id)id
{
  keyCopy = key;
  strCopy = str;
  idCopy = id;
  v20.receiver = self;
  v20.super_class = _DPBitValueRecord;
  v17 = [(_DPBitValueRecord *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_key, key);
    v18->_clearBitValue = 0;
    objc_storeStrong(&v18->_privateBitValueStr, str);
    v18->_creationDate = date;
    v18->_submitted = submitted;
    v18->_reportVersion = +[_DPJSONOutputHelper currentVersion];
    objc_storeStrong(&v18->_objectId, id);
  }

  return v18;
}

- (id)jsonString
{
  v2 = MEMORY[0x277CCACA8];
  privateBitValueStr = [(_DPBitValueRecord *)self privateBitValueStr];
  v4 = [v2 stringWithFormat:@"%@", privateBitValueStr];

  return v4;
}

- (_DPBitValueRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clearBitValue"];
  shortValue = [v6 shortValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateBitValueStr"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  bOOLValue = [v12 BOOLValue];
  v14 = [(_DPBitValueRecord *)self initWithKey:v5 clearBitValue:shortValue privateBitValueStr:v8 creationDate:bOOLValue submitted:0 objectId:v11];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_key forKey:@"key"];
  v4 = [MEMORY[0x277CCABB0] numberWithShort:self->_clearBitValue];
  [coderCopy encodeObject:v4 forKey:@"clearBitValue"];

  [coderCopy encodeObject:self->_privateBitValueStr forKey:@"privateBitValueStr"];
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

  [v4 appendFormat:@"privateBitValueStr=%@ ; creationDate=%.16g ; submitted=%s ; reportVersion=%lld ; ", self->_privateBitValueStr, *&self->_creationDate, v7, self->_reportVersion];
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
  v5 = [(_DPBitValueRecord *)self key];
  clearBitValue = [(_DPBitValueRecord *)self clearBitValue];
  privateBitValueStr = [(_DPBitValueRecord *)self privateBitValueStr];
  [(_DPBitValueRecord *)self creationDate];
  v9 = v8;
  submitted = [(_DPBitValueRecord *)self submitted];
  objectId = [(_DPBitValueRecord *)self objectId];
  v12 = [v4 initWithKey:v5 clearBitValue:clearBitValue privateBitValueStr:privateBitValueStr creationDate:submitted submitted:objectId objectId:v9];

  return v12;
}

- (BOOL)isEqualToBitValueRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_6;
  }

  v5 = [(_DPBitValueRecord *)self key];
  v6 = [recordCopy key];
  v26 = [v5 isEqualToString:v6];

  clearBitValue = [(_DPBitValueRecord *)self clearBitValue];
  clearBitValue2 = [recordCopy clearBitValue];
  privateBitValueStr = [(_DPBitValueRecord *)self privateBitValueStr];
  privateBitValueStr2 = [recordCopy privateBitValueStr];
  v10 = [privateBitValueStr isEqualToString:privateBitValueStr2];

  [(_DPBitValueRecord *)self creationDate];
  v12 = v11;
  [recordCopy creationDate];
  v14 = areEqualTimeIntervals(v12, v13);
  LOBYTE(privateBitValueStr2) = [(_DPBitValueRecord *)self submitted];
  v15 = privateBitValueStr2 ^ [recordCopy submitted];
  reportVersion = [(_DPBitValueRecord *)self reportVersion];
  reportVersion2 = [recordCopy reportVersion];
  objectId = [(_DPBitValueRecord *)self objectId];

  if (objectId)
  {
    objectId2 = [(_DPBitValueRecord *)self objectId];
    objectId3 = [recordCopy objectId];
    v21 = [objectId2 isEqual:objectId3];
  }

  else
  {
    objectId4 = [recordCopy objectId];

    v21 = objectId4 == 0;
  }

  if (!((clearBitValue != clearBitValue2 || (v26 & 1) == 0 || (v10 & 1) == 0 || !v14) | v15 & 1))
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPBitValueRecord *)self isEqualToBitValueRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPBitValueRecord *)self key];
  v4 = [v3 hash];
  v5 = v4 ^ [(_DPBitValueRecord *)self clearBitValue];
  privateBitValueStr = [(_DPBitValueRecord *)self privateBitValueStr];
  v7 = v5 ^ [privateBitValueStr hash];
  [(_DPBitValueRecord *)self creationDate];
  v9 = v8;
  v10 = v7 ^ [(_DPBitValueRecord *)self submitted];
  v11 = v10 ^ [(_DPBitValueRecord *)self reportVersion];
  objectId = [(_DPBitValueRecord *)self objectId];
  v13 = v11 ^ [objectId hash];

  return v13 ^ v9;
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
    v7 = [(_DPBitValueRecord *)self key];
    [v6 setKey:v7];

    [v6 setClearBitValue:{-[_DPBitValueRecord clearBitValue](self, "clearBitValue")}];
    privateBitValueStr = [(_DPBitValueRecord *)self privateBitValueStr];
    [v6 setPrivateBitValueStr:privateBitValueStr];

    [(_DPBitValueRecord *)self creationDate];
    [v6 setCreationDate:?];
    [v6 setSubmitted:{-[_DPBitValueRecord submitted](self, "submitted")}];
    [v6 setReportVersion:{-[_DPBitValueRecord reportVersion](self, "reportVersion")}];
    objectId = [(_DPBitValueRecord *)self objectId];
    objectID = [v6 objectID];

    if (objectId != objectID)
    {
      objectID2 = [v6 objectID];
      [(_DPBitValueRecord *)self setObjectId:objectID2];
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
    [(_DPBitValueRecord *)self setKey:v7];

    -[_DPBitValueRecord setClearBitValue:](self, "setClearBitValue:", [v6 clearBitValue]);
    privateBitValueStr = [v6 privateBitValueStr];
    [(_DPBitValueRecord *)self setPrivateBitValueStr:privateBitValueStr];

    [v6 creationDate];
    [(_DPBitValueRecord *)self setCreationDate:?];
    -[_DPBitValueRecord setSubmitted:](self, "setSubmitted:", [v6 submitted]);
    -[_DPBitValueRecord setReportVersion:](self, "setReportVersion:", [v6 reportVersion]);
    objectID = [v6 objectID];

    [(_DPBitValueRecord *)self setObjectId:objectID];
  }

  return isKindOfClass & 1;
}

@end