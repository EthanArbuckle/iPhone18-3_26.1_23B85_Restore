@interface _DPBSSFPRecord
+ (id)createRecordFromManagedObject:(id)a3;
- (BOOL)copyFromManagedObject:(id)a3;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBSSFPRecord:(id)a3;
- (_DPBSSFPRecord)init;
- (_DPBSSFPRecord)initWithCoder:(id)a3;
- (_DPBSSFPRecord)initWithKey:(id)a3 privateValue:(id)a4 tableVersion:(id)a5 segmentIndex:(int64_t)a6 verificationMode:(BOOL)a7 creationDate:(double)a8 submitted:(BOOL)a9 objectId:(id)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)entityName;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DPBSSFPRecord

- (_DPBSSFPRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPBSSFPRecord *)self initWithKey:@"com.apple._DPBSSFPRecord" privateValue:&stru_2839671C8 tableVersion:&stru_2839671C8 segmentIndex:0 verificationMode:0 creationDate:0 submitted:v5 objectId:0];
}

- (_DPBSSFPRecord)initWithKey:(id)a3 privateValue:(id)a4 tableVersion:(id)a5 segmentIndex:(int64_t)a6 verificationMode:(BOOL)a7 creationDate:(double)a8 submitted:(BOOL)a9 objectId:(id)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a10;
  v29.receiver = self;
  v29.super_class = _DPBSSFPRecord;
  v22 = [(_DPBSSFPRecord *)&v29 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_key, a3);
    v24 = [v19 copy];
    privateValue = v23->_privateValue;
    v23->_privateValue = v24;

    v26 = [v20 copy];
    tableVersion = v23->_tableVersion;
    v23->_tableVersion = v26;

    v23->_segmentIndex = a6;
    v23->_verificationMode = a7;
    v23->_creationDate = a8;
    v23->_submitted = a9;
    v23->_reportVersion = +[_DPJSONOutputHelper currentVersion];
    objc_storeStrong(&v23->_objectId, a10);
  }

  return v23;
}

- (id)jsonString
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_DPBSSFPRecord *)self tableVersion];
  v5 = [(_DPBSSFPRecord *)self verificationMode];
  v6 = [(_DPBSSFPRecord *)self segmentIndex];
  v7 = [(_DPBSSFPRecord *)self privateValue];
  v8 = [v3 stringWithFormat:@"%@%d;%lld;%@", v4, v5, v6, v7];;

  return v8;
}

- (_DPBSSFPRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateValue"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tableVersion"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"segmentIndex"];
  v9 = [v8 integerValue];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"verificationMode"];
  v11 = [v10 BOOLValue];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  v16 = [v15 BOOLValue];
  v17 = [(_DPBSSFPRecord *)self initWithKey:v5 privateValue:v6 tableVersion:v7 segmentIndex:v9 verificationMode:v11 creationDate:v16 submitted:v14 objectId:0];

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeObject:self->_key forKey:@"key"];
  [v10 encodeObject:self->_privateValue forKey:@"privateValue"];
  [v10 encodeObject:self->_tableVersion forKey:@"tableVersion"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_segmentIndex];
  [v10 encodeObject:v4 forKey:@"segmentIndex"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_verificationMode];
  [v10 encodeObject:v5 forKey:@"verificationMode"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [v10 encodeObject:v6 forKey:@"creationDate"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_submitted];
  [v10 encodeObject:v7 forKey:@"submitted"];

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_reportVersion];
  [v10 encodeObject:v8 forKey:@"reportVersion"];

  objectId = self->_objectId;
  if (objectId)
  {
    [v10 encodeObject:objectId forKey:@"objectId"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPBSSFPRecord *)self key];
  v6 = [(_DPBSSFPRecord *)self privateValue];
  v7 = [(_DPBSSFPRecord *)self tableVersion];
  v8 = [(_DPBSSFPRecord *)self segmentIndex];
  v9 = [(_DPBSSFPRecord *)self verificationMode];
  [(_DPBSSFPRecord *)self creationDate];
  v11 = v10;
  v12 = [(_DPBSSFPRecord *)self submitted];
  v13 = [(_DPBSSFPRecord *)self objectId];
  v14 = [v4 initWithKey:v5 privateValue:v6 tableVersion:v7 segmentIndex:v8 verificationMode:v9 creationDate:v12 submitted:v11 objectId:v13];

  return v14;
}

- (BOOL)isEqualToBSSFPRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [(_DPBSSFPRecord *)self key];
  v6 = [v4 key];
  v37 = [v5 isEqualToString:v6];

  v13 = [(_DPBSSFPRecord *)self privateValue];
  v7 = [v4 privateValue];
  v8 = [v13 isEqualToString:v7];

  v9 = [(_DPBSSFPRecord *)self tableVersion];
  v10 = [v4 tableVersion];
  v36 = [v9 isEqualToString:v10];

  v11 = [(_DPBSSFPRecord *)self segmentIndex];
  v35 = [v4 segmentIndex];
  v12 = [(_DPBSSFPRecord *)self verificationMode];
  LODWORD(v13) = v12 ^ [v4 verificationMode];
  [(_DPBSSFPRecord *)self creationDate];
  v15 = v14;
  [v4 creationDate];
  v17 = areEqualTimeIntervals(v15, v16);
  v18 = [(_DPBSSFPRecord *)self submitted];
  v19 = v18 ^ [v4 submitted];
  v20 = [(_DPBSSFPRecord *)self reportVersion];
  v21 = [v4 reportVersion];
  v22 = [(_DPBSSFPRecord *)self objectId];

  if (v22)
  {
    v23 = [(_DPBSSFPRecord *)self objectId];
    [v4 objectId];
    v24 = v19;
    v25 = v17;
    v26 = v21;
    v27 = v13;
    v13 = v20;
    v28 = v11;
    v30 = v29 = v8;
    v34 = [v23 isEqual:v30];

    v8 = v29;
    v11 = v28;
    v20 = v13;
    LOBYTE(v13) = v27;
    v21 = v26;
    v17 = v25;
    LOBYTE(v19) = v24;
  }

  else
  {
    v31 = [v4 objectId];

    v34 = v31 == 0;
  }

  if (!((v11 != v35 || (v37 & v8 & v36 & 1) == 0) | v13 & 1 | !v17 | v19 & 1))
  {
    v32 = (v20 == v21) & v34;
  }

  else
  {
LABEL_6:
    v32 = 0;
  }

  return v32;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPBSSFPRecord *)self isEqualToBSSFPRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPBSSFPRecord *)self key];
  v4 = [v3 hash];
  v5 = [(_DPBSSFPRecord *)self privateValue];
  v6 = [v5 hash] ^ v4;
  v7 = [(_DPBSSFPRecord *)self tableVersion];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(_DPBSSFPRecord *)self segmentIndex];
  v10 = v9 ^ [(_DPBSSFPRecord *)self verificationMode];
  [(_DPBSSFPRecord *)self creationDate];
  v12 = v11;
  v13 = v10 ^ [(_DPBSSFPRecord *)self submitted];
  v14 = v13 ^ [(_DPBSSFPRecord *)self reportVersion];
  v15 = [(_DPBSSFPRecord *)self objectId];
  v16 = v14 ^ [v15 hash];

  return v16 ^ v12;
}

+ (id)createRecordFromManagedObject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 copyFromManagedObject:v3];

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

- (BOOL)copyToManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v4;
    v7 = [(_DPBSSFPRecord *)self key];
    [v6 setKey:v7];

    v8 = [(_DPBSSFPRecord *)self privateValue];
    [v6 setPrivateValue:v8];

    v9 = [(_DPBSSFPRecord *)self tableVersion];
    [v6 setTableVersion:v9];

    [v6 setSegmentIndex:{-[_DPBSSFPRecord segmentIndex](self, "segmentIndex")}];
    [v6 setVerificationMode:{-[_DPBSSFPRecord verificationMode](self, "verificationMode")}];
    [(_DPBSSFPRecord *)self creationDate];
    [v6 setCreationDate:?];
    [v6 setSubmitted:{-[_DPBSSFPRecord submitted](self, "submitted")}];
    [v6 setReportVersion:{-[_DPBSSFPRecord reportVersion](self, "reportVersion")}];
    v10 = [(_DPBSSFPRecord *)self objectId];
    v11 = [v6 objectID];

    if (v10 != v11)
    {
      v12 = [v6 objectID];
      [(_DPBSSFPRecord *)self setObjectId:v12];
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)copyFromManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v4;
    v7 = [v6 key];
    [(_DPBSSFPRecord *)self setKey:v7];

    v8 = [v6 privateValue];
    [(_DPBSSFPRecord *)self setPrivateValue:v8];

    v9 = [v6 tableVersion];
    [(_DPBSSFPRecord *)self setTableVersion:v9];

    -[_DPBSSFPRecord setSegmentIndex:](self, "setSegmentIndex:", [v6 segmentIndex]);
    -[_DPBSSFPRecord setVerificationMode:](self, "setVerificationMode:", [v6 verificationMode]);
    [v6 creationDate];
    [(_DPBSSFPRecord *)self setCreationDate:?];
    -[_DPBSSFPRecord setSubmitted:](self, "setSubmitted:", [v6 submitted]);
    -[_DPBSSFPRecord setReportVersion:](self, "setReportVersion:", [v6 reportVersion]);
    v10 = [v6 objectID];

    [(_DPBSSFPRecord *)self setObjectId:v10];
  }

  return isKindOfClass & 1;
}

@end