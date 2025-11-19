@interface _DPNumericDataRecord
+ (id)createRecordFromManagedObject:(id)a3;
- (BOOL)copyFromManagedObject:(id)a3;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNumericDataRecord:(id)a3;
- (_DPNumericDataRecord)init;
- (_DPNumericDataRecord)initWithCoder:(id)a3;
- (_DPNumericDataRecord)initWithKey:(id)a3 clearNumber:(double)a4 privateNumber:(double)a5 creationDate:(double)a6 submitted:(BOOL)a7 objectId:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)entityName;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DPNumericDataRecord

- (_DPNumericDataRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPNumericDataRecord *)self initWithKey:@"com.apple._DPNumericDataRecord" clearNumber:0 privateNumber:0 creationDate:0.0 submitted:0.0 objectId:v5];
}

- (_DPNumericDataRecord)initWithKey:(id)a3 clearNumber:(double)a4 privateNumber:(double)a5 creationDate:(double)a6 submitted:(BOOL)a7 objectId:(id)a8
{
  v14 = a3;
  v15 = a8;
  v19.receiver = self;
  v19.super_class = _DPNumericDataRecord;
  v16 = [(_DPNumericDataRecord *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, a3);
    v17->_clearNumber = 0.0;
    v17->_privateNumber = a5;
    v17->_creationDate = a6;
    v17->_submitted = a7;
    v17->_reportVersion = +[_DPJSONOutputHelper currentVersion];
    objc_storeStrong(&v17->_objectId, a8);
  }

  return v17;
}

- (id)jsonString
{
  v2 = MEMORY[0x277CCACA8];
  [(_DPNumericDataRecord *)self privateNumber];
  return [v2 stringWithFormat:@"%lf", v3];
}

- (_DPNumericDataRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clearNumber"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateNumber"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  v16 = [v15 BOOLValue];
  v17 = [(_DPNumericDataRecord *)self initWithKey:v5 clearNumber:v16 privateNumber:0 creationDate:v8 submitted:v11 objectId:v14];

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeObject:self->_key forKey:@"key"];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_clearNumber];
  [v10 encodeObject:v4 forKey:@"clearNumber"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_privateNumber];
  [v10 encodeObject:v5 forKey:@"privateNumber"];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPNumericDataRecord *)self key];
  [(_DPNumericDataRecord *)self clearNumber];
  v7 = v6;
  [(_DPNumericDataRecord *)self privateNumber];
  v9 = v8;
  [(_DPNumericDataRecord *)self creationDate];
  v11 = v10;
  v12 = [(_DPNumericDataRecord *)self submitted];
  v13 = [(_DPNumericDataRecord *)self objectId];
  v14 = [v4 initWithKey:v5 clearNumber:v12 privateNumber:v13 creationDate:v7 submitted:v9 objectId:v11];

  return v14;
}

- (BOOL)isEqualToNumericDataRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [(_DPNumericDataRecord *)self key];
  v6 = [v4 key];
  v7 = [v5 isEqualToString:v6];

  [(_DPNumericDataRecord *)self clearNumber];
  v9 = v8;
  [v4 clearNumber];
  v11 = vabdd_f64(v9, v10);
  [(_DPNumericDataRecord *)self privateNumber];
  v13 = v12;
  [v4 privateNumber];
  v15 = vabdd_f64(v13, v14);
  [(_DPNumericDataRecord *)self creationDate];
  v17 = v16;
  [v4 creationDate];
  v19 = areEqualTimeIntervals(v17, v18);
  LOBYTE(v6) = [(_DPNumericDataRecord *)self submitted];
  v20 = v6 ^ [v4 submitted];
  v21 = [(_DPNumericDataRecord *)self reportVersion];
  v22 = [v4 reportVersion];
  v23 = [(_DPNumericDataRecord *)self objectId];

  if (v23)
  {
    v24 = [(_DPNumericDataRecord *)self objectId];
    v25 = [v4 objectId];
    v26 = [v24 isEqual:v25];
  }

  else
  {
    v27 = [v4 objectId];

    v26 = v27 == 0;
  }

  if (!((v11 >= 1.0e-20 || (v7 & 1) == 0 || v15 >= 1.0e-20 || !v19) | v20 & 1))
  {
    v28 = (v21 == v22) & v26;
  }

  else
  {
LABEL_6:
    v28 = 0;
  }

  return v28;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPNumericDataRecord *)self isEqualToNumericDataRecord:v5];
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
  v11 = [(_DPNumericDataRecord *)self submitted];
  v12 = v11 ^ [(_DPNumericDataRecord *)self reportVersion];
  v13 = [(_DPNumericDataRecord *)self objectId];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
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
    v8 = [(_DPNumericDataRecord *)self objectId];
    v9 = [v6 objectID];

    if (v8 != v9)
    {
      v10 = [v6 objectID];
      [(_DPNumericDataRecord *)self setObjectId:v10];
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
    [(_DPNumericDataRecord *)self setKey:v7];

    [v6 clearNumber];
    [(_DPNumericDataRecord *)self setClearNumber:?];
    [v6 privateNumber];
    [(_DPNumericDataRecord *)self setPrivateNumber:?];
    [v6 creationDate];
    [(_DPNumericDataRecord *)self setCreationDate:?];
    -[_DPNumericDataRecord setSubmitted:](self, "setSubmitted:", [v6 submitted]);
    -[_DPNumericDataRecord setReportVersion:](self, "setReportVersion:", [v6 reportVersion]);
    v8 = [v6 objectID];

    [(_DPNumericDataRecord *)self setObjectId:v8];
  }

  return isKindOfClass & 1;
}

@end