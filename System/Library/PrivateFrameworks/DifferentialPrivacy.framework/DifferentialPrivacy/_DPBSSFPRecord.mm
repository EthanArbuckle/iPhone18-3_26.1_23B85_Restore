@interface _DPBSSFPRecord
+ (id)createRecordFromManagedObject:(id)object;
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBSSFPRecord:(id)record;
- (_DPBSSFPRecord)init;
- (_DPBSSFPRecord)initWithCoder:(id)coder;
- (_DPBSSFPRecord)initWithKey:(id)key privateValue:(id)value tableVersion:(id)version segmentIndex:(int64_t)index verificationMode:(BOOL)mode creationDate:(double)date submitted:(BOOL)submitted objectId:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)entityName;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DPBSSFPRecord

- (_DPBSSFPRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPBSSFPRecord *)self initWithKey:@"com.apple._DPBSSFPRecord" privateValue:&stru_2839671C8 tableVersion:&stru_2839671C8 segmentIndex:0 verificationMode:0 creationDate:0 submitted:v5 objectId:0];
}

- (_DPBSSFPRecord)initWithKey:(id)key privateValue:(id)value tableVersion:(id)version segmentIndex:(int64_t)index verificationMode:(BOOL)mode creationDate:(double)date submitted:(BOOL)submitted objectId:(id)self0
{
  keyCopy = key;
  valueCopy = value;
  versionCopy = version;
  idCopy = id;
  v29.receiver = self;
  v29.super_class = _DPBSSFPRecord;
  v22 = [(_DPBSSFPRecord *)&v29 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_key, key);
    v24 = [valueCopy copy];
    privateValue = v23->_privateValue;
    v23->_privateValue = v24;

    v26 = [versionCopy copy];
    tableVersion = v23->_tableVersion;
    v23->_tableVersion = v26;

    v23->_segmentIndex = index;
    v23->_verificationMode = mode;
    v23->_creationDate = date;
    v23->_submitted = submitted;
    v23->_reportVersion = +[_DPJSONOutputHelper currentVersion];
    objc_storeStrong(&v23->_objectId, id);
  }

  return v23;
}

- (id)jsonString
{
  v3 = MEMORY[0x277CCACA8];
  tableVersion = [(_DPBSSFPRecord *)self tableVersion];
  verificationMode = [(_DPBSSFPRecord *)self verificationMode];
  segmentIndex = [(_DPBSSFPRecord *)self segmentIndex];
  privateValue = [(_DPBSSFPRecord *)self privateValue];
  v8 = [v3 stringWithFormat:@"%@%d;%lld;%@", tableVersion, verificationMode, segmentIndex, privateValue];;

  return v8;
}

- (_DPBSSFPRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateValue"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tableVersion"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"segmentIndex"];
  integerValue = [v8 integerValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"verificationMode"];
  bOOLValue = [v10 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  bOOLValue2 = [v15 BOOLValue];
  v17 = [(_DPBSSFPRecord *)self initWithKey:v5 privateValue:v6 tableVersion:v7 segmentIndex:integerValue verificationMode:bOOLValue creationDate:bOOLValue2 submitted:v14 objectId:0];

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_key forKey:@"key"];
  [coderCopy encodeObject:self->_privateValue forKey:@"privateValue"];
  [coderCopy encodeObject:self->_tableVersion forKey:@"tableVersion"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_segmentIndex];
  [coderCopy encodeObject:v4 forKey:@"segmentIndex"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_verificationMode];
  [coderCopy encodeObject:v5 forKey:@"verificationMode"];

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
  if (self->_verificationMode)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  if (self->_submitted)
  {
    v7 = "YES";
  }

  [v4 appendFormat:@"privateValue=%@ ; tableVersion=%@ ; sergmentIndex=%lld ; verificationMode=%s ; creationDate=%.16g ; submitted=%s ; reportVersion=%lld ; ", *&self->_privateValue, self->_segmentIndex, v8, *&self->_creationDate, v7, self->_reportVersion];
  if (self->_objectId)
  {
    [v4 appendFormat:@"objectId=%@ }", self->_objectId];
  }

  else
  {
    [v4 appendString:@"objectId=(nil) }"];
  }

  v9 = [v4 copy];

  objc_autoreleasePoolPop(v3);

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPBSSFPRecord *)self key];
  privateValue = [(_DPBSSFPRecord *)self privateValue];
  tableVersion = [(_DPBSSFPRecord *)self tableVersion];
  segmentIndex = [(_DPBSSFPRecord *)self segmentIndex];
  verificationMode = [(_DPBSSFPRecord *)self verificationMode];
  [(_DPBSSFPRecord *)self creationDate];
  v11 = v10;
  submitted = [(_DPBSSFPRecord *)self submitted];
  objectId = [(_DPBSSFPRecord *)self objectId];
  v14 = [v4 initWithKey:v5 privateValue:privateValue tableVersion:tableVersion segmentIndex:segmentIndex verificationMode:verificationMode creationDate:submitted submitted:v11 objectId:objectId];

  return v14;
}

- (BOOL)isEqualToBSSFPRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_6;
  }

  v5 = [(_DPBSSFPRecord *)self key];
  v6 = [recordCopy key];
  v37 = [v5 isEqualToString:v6];

  privateValue = [(_DPBSSFPRecord *)self privateValue];
  privateValue2 = [recordCopy privateValue];
  v8 = [privateValue isEqualToString:privateValue2];

  tableVersion = [(_DPBSSFPRecord *)self tableVersion];
  tableVersion2 = [recordCopy tableVersion];
  v36 = [tableVersion isEqualToString:tableVersion2];

  segmentIndex = [(_DPBSSFPRecord *)self segmentIndex];
  segmentIndex2 = [recordCopy segmentIndex];
  verificationMode = [(_DPBSSFPRecord *)self verificationMode];
  LODWORD(privateValue) = verificationMode ^ [recordCopy verificationMode];
  [(_DPBSSFPRecord *)self creationDate];
  v15 = v14;
  [recordCopy creationDate];
  v17 = areEqualTimeIntervals(v15, v16);
  submitted = [(_DPBSSFPRecord *)self submitted];
  v19 = submitted ^ [recordCopy submitted];
  reportVersion = [(_DPBSSFPRecord *)self reportVersion];
  reportVersion2 = [recordCopy reportVersion];
  objectId = [(_DPBSSFPRecord *)self objectId];

  if (objectId)
  {
    objectId2 = [(_DPBSSFPRecord *)self objectId];
    [recordCopy objectId];
    v24 = v19;
    v25 = v17;
    v26 = reportVersion2;
    v27 = privateValue;
    privateValue = reportVersion;
    v28 = segmentIndex;
    v30 = v29 = v8;
    v34 = [objectId2 isEqual:v30];

    v8 = v29;
    segmentIndex = v28;
    reportVersion = privateValue;
    LOBYTE(privateValue) = v27;
    reportVersion2 = v26;
    v17 = v25;
    LOBYTE(v19) = v24;
  }

  else
  {
    objectId3 = [recordCopy objectId];

    v34 = objectId3 == 0;
  }

  if (!((segmentIndex != segmentIndex2 || (v37 & v8 & v36 & 1) == 0) | privateValue & 1 | !v17 | v19 & 1))
  {
    v32 = (reportVersion == reportVersion2) & v34;
  }

  else
  {
LABEL_6:
    v32 = 0;
  }

  return v32;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPBSSFPRecord *)self isEqualToBSSFPRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPBSSFPRecord *)self key];
  v4 = [v3 hash];
  privateValue = [(_DPBSSFPRecord *)self privateValue];
  v6 = [privateValue hash] ^ v4;
  tableVersion = [(_DPBSSFPRecord *)self tableVersion];
  v8 = [tableVersion hash];
  v9 = v6 ^ v8 ^ [(_DPBSSFPRecord *)self segmentIndex];
  v10 = v9 ^ [(_DPBSSFPRecord *)self verificationMode];
  [(_DPBSSFPRecord *)self creationDate];
  v12 = v11;
  v13 = v10 ^ [(_DPBSSFPRecord *)self submitted];
  v14 = v13 ^ [(_DPBSSFPRecord *)self reportVersion];
  objectId = [(_DPBSSFPRecord *)self objectId];
  v16 = v14 ^ [objectId hash];

  return v16 ^ v12;
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
    v7 = [(_DPBSSFPRecord *)self key];
    [v6 setKey:v7];

    privateValue = [(_DPBSSFPRecord *)self privateValue];
    [v6 setPrivateValue:privateValue];

    tableVersion = [(_DPBSSFPRecord *)self tableVersion];
    [v6 setTableVersion:tableVersion];

    [v6 setSegmentIndex:{-[_DPBSSFPRecord segmentIndex](self, "segmentIndex")}];
    [v6 setVerificationMode:{-[_DPBSSFPRecord verificationMode](self, "verificationMode")}];
    [(_DPBSSFPRecord *)self creationDate];
    [v6 setCreationDate:?];
    [v6 setSubmitted:{-[_DPBSSFPRecord submitted](self, "submitted")}];
    [v6 setReportVersion:{-[_DPBSSFPRecord reportVersion](self, "reportVersion")}];
    objectId = [(_DPBSSFPRecord *)self objectId];
    objectID = [v6 objectID];

    if (objectId != objectID)
    {
      objectID2 = [v6 objectID];
      [(_DPBSSFPRecord *)self setObjectId:objectID2];
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
    [(_DPBSSFPRecord *)self setKey:v7];

    privateValue = [v6 privateValue];
    [(_DPBSSFPRecord *)self setPrivateValue:privateValue];

    tableVersion = [v6 tableVersion];
    [(_DPBSSFPRecord *)self setTableVersion:tableVersion];

    -[_DPBSSFPRecord setSegmentIndex:](self, "setSegmentIndex:", [v6 segmentIndex]);
    -[_DPBSSFPRecord setVerificationMode:](self, "setVerificationMode:", [v6 verificationMode]);
    [v6 creationDate];
    [(_DPBSSFPRecord *)self setCreationDate:?];
    -[_DPBSSFPRecord setSubmitted:](self, "setSubmitted:", [v6 submitted]);
    -[_DPBSSFPRecord setReportVersion:](self, "setReportVersion:", [v6 reportVersion]);
    objectID = [v6 objectID];

    [(_DPBSSFPRecord *)self setObjectId:objectID];
  }

  return isKindOfClass & 1;
}

@end