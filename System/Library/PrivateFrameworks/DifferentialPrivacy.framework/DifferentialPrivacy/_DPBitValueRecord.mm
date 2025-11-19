@interface _DPBitValueRecord
+ (id)createRecordFromManagedObject:(id)a3;
- (BOOL)copyFromManagedObject:(id)a3;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBitValueRecord:(id)a3;
- (_DPBitValueRecord)init;
- (_DPBitValueRecord)initWithCoder:(id)a3;
- (_DPBitValueRecord)initWithKey:(id)a3 clearBitValue:(signed __int16)a4 privateBitValueStr:(id)a5 creationDate:(double)a6 submitted:(BOOL)a7 objectId:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)entityName;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DPBitValueRecord

- (_DPBitValueRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPBitValueRecord *)self initWithKey:@"com.apple._DPBitValueDataRecord" clearBitValue:0 privateBitValueStr:&stru_2839671C8 creationDate:0 submitted:0 objectId:v5];
}

- (_DPBitValueRecord)initWithKey:(id)a3 clearBitValue:(signed __int16)a4 privateBitValueStr:(id)a5 creationDate:(double)a6 submitted:(BOOL)a7 objectId:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = _DPBitValueRecord;
  v17 = [(_DPBitValueRecord *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_key, a3);
    v18->_clearBitValue = 0;
    objc_storeStrong(&v18->_privateBitValueStr, a5);
    v18->_creationDate = a6;
    v18->_submitted = a7;
    v18->_reportVersion = +[_DPJSONOutputHelper currentVersion];
    objc_storeStrong(&v18->_objectId, a8);
  }

  return v18;
}

- (id)jsonString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(_DPBitValueRecord *)self privateBitValueStr];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (_DPBitValueRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clearBitValue"];
  v7 = [v6 shortValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateBitValueStr"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  v13 = [v12 BOOLValue];
  v14 = [(_DPBitValueRecord *)self initWithKey:v5 clearBitValue:v7 privateBitValueStr:v8 creationDate:v13 submitted:0 objectId:v11];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeObject:self->_key forKey:@"key"];
  v4 = [MEMORY[0x277CCABB0] numberWithShort:self->_clearBitValue];
  [v9 encodeObject:v4 forKey:@"clearBitValue"];

  [v9 encodeObject:self->_privateBitValueStr forKey:@"privateBitValueStr"];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [v9 encodeObject:v5 forKey:@"creationDate"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_submitted];
  [v9 encodeObject:v6 forKey:@"submitted"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_reportVersion];
  [v9 encodeObject:v7 forKey:@"reportVersion"];

  objectId = self->_objectId;
  if (objectId)
  {
    [v9 encodeObject:objectId forKey:@"objectId"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPBitValueRecord *)self key];
  v6 = [(_DPBitValueRecord *)self clearBitValue];
  v7 = [(_DPBitValueRecord *)self privateBitValueStr];
  [(_DPBitValueRecord *)self creationDate];
  v9 = v8;
  v10 = [(_DPBitValueRecord *)self submitted];
  v11 = [(_DPBitValueRecord *)self objectId];
  v12 = [v4 initWithKey:v5 clearBitValue:v6 privateBitValueStr:v7 creationDate:v10 submitted:v11 objectId:v9];

  return v12;
}

- (BOOL)isEqualToBitValueRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [(_DPBitValueRecord *)self key];
  v6 = [v4 key];
  v26 = [v5 isEqualToString:v6];

  v25 = [(_DPBitValueRecord *)self clearBitValue];
  v7 = [v4 clearBitValue];
  v8 = [(_DPBitValueRecord *)self privateBitValueStr];
  v9 = [v4 privateBitValueStr];
  v10 = [v8 isEqualToString:v9];

  [(_DPBitValueRecord *)self creationDate];
  v12 = v11;
  [v4 creationDate];
  v14 = areEqualTimeIntervals(v12, v13);
  LOBYTE(v9) = [(_DPBitValueRecord *)self submitted];
  v15 = v9 ^ [v4 submitted];
  v16 = [(_DPBitValueRecord *)self reportVersion];
  v17 = [v4 reportVersion];
  v18 = [(_DPBitValueRecord *)self objectId];

  if (v18)
  {
    v19 = [(_DPBitValueRecord *)self objectId];
    v20 = [v4 objectId];
    v21 = [v19 isEqual:v20];
  }

  else
  {
    v22 = [v4 objectId];

    v21 = v22 == 0;
  }

  if (!((v25 != v7 || (v26 & 1) == 0 || (v10 & 1) == 0 || !v14) | v15 & 1))
  {
    v23 = (v16 == v17) & v21;
  }

  else
  {
LABEL_6:
    v23 = 0;
  }

  return v23;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPBitValueRecord *)self isEqualToBitValueRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPBitValueRecord *)self key];
  v4 = [v3 hash];
  v5 = v4 ^ [(_DPBitValueRecord *)self clearBitValue];
  v6 = [(_DPBitValueRecord *)self privateBitValueStr];
  v7 = v5 ^ [v6 hash];
  [(_DPBitValueRecord *)self creationDate];
  v9 = v8;
  v10 = v7 ^ [(_DPBitValueRecord *)self submitted];
  v11 = v10 ^ [(_DPBitValueRecord *)self reportVersion];
  v12 = [(_DPBitValueRecord *)self objectId];
  v13 = v11 ^ [v12 hash];

  return v13 ^ v9;
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
    v7 = [(_DPBitValueRecord *)self key];
    [v6 setKey:v7];

    [v6 setClearBitValue:{-[_DPBitValueRecord clearBitValue](self, "clearBitValue")}];
    v8 = [(_DPBitValueRecord *)self privateBitValueStr];
    [v6 setPrivateBitValueStr:v8];

    [(_DPBitValueRecord *)self creationDate];
    [v6 setCreationDate:?];
    [v6 setSubmitted:{-[_DPBitValueRecord submitted](self, "submitted")}];
    [v6 setReportVersion:{-[_DPBitValueRecord reportVersion](self, "reportVersion")}];
    v9 = [(_DPBitValueRecord *)self objectId];
    v10 = [v6 objectID];

    if (v9 != v10)
    {
      v11 = [v6 objectID];
      [(_DPBitValueRecord *)self setObjectId:v11];
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
    [(_DPBitValueRecord *)self setKey:v7];

    -[_DPBitValueRecord setClearBitValue:](self, "setClearBitValue:", [v6 clearBitValue]);
    v8 = [v6 privateBitValueStr];
    [(_DPBitValueRecord *)self setPrivateBitValueStr:v8];

    [v6 creationDate];
    [(_DPBitValueRecord *)self setCreationDate:?];
    -[_DPBitValueRecord setSubmitted:](self, "setSubmitted:", [v6 submitted]);
    -[_DPBitValueRecord setReportVersion:](self, "setReportVersion:", [v6 reportVersion]);
    v9 = [v6 objectID];

    [(_DPBitValueRecord *)self setObjectId:v9];
  }

  return isKindOfClass & 1;
}

@end