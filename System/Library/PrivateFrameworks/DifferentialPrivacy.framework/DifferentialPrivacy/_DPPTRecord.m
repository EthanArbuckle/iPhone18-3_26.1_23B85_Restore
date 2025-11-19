@interface _DPPTRecord
+ (id)createRecordFromManagedObject:(id)a3;
- (BOOL)copyFromManagedObject:(id)a3;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPTRecord:(id)a3;
- (_DPPTRecord)init;
- (_DPPTRecord)initWithCoder:(id)a3;
- (_DPPTRecord)initWithKey:(id)a3 privateValue:(id)a4 creationDate:(double)a5 submitted:(BOOL)a6 objectId:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)entityName;
- (id)jsonString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DPPTRecord

- (_DPPTRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPPTRecord *)self initWithKey:@"com.apple._DPPTRecord" privateValue:&stru_2839671C8 creationDate:0 submitted:0 objectId:v5];
}

- (_DPPTRecord)initWithKey:(id)a3 privateValue:(id)a4 creationDate:(double)a5 submitted:(BOOL)a6 objectId:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = _DPPTRecord;
  v16 = [(_DPPTRecord *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, a3);
    v18 = [v14 copy];
    privateValue = v17->_privateValue;
    v17->_privateValue = v18;

    v17->_creationDate = a5;
    v17->_submitted = a6;
    v17->_reportVersion = +[_DPJSONOutputHelper currentVersion];
    objc_storeStrong(&v17->_objectId, a7);
  }

  return v17;
}

- (id)jsonString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(_DPPTRecord *)self privateValue];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (_DPPTRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateValue"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  v11 = [v10 BOOLValue];
  v12 = [(_DPPTRecord *)self initWithKey:v5 privateValue:v6 creationDate:v11 submitted:0 objectId:v9];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeObject:self->_key forKey:@"key"];
  [v8 encodeObject:self->_privateValue forKey:@"privateValue"];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [v8 encodeObject:v4 forKey:@"creationDate"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_submitted];
  [v8 encodeObject:v5 forKey:@"submitted"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_reportVersion];
  [v8 encodeObject:v6 forKey:@"reportVersion"];

  objectId = self->_objectId;
  if (objectId)
  {
    [v8 encodeObject:objectId forKey:@"objectId"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPPTRecord *)self key];
  v6 = [(_DPPTRecord *)self privateValue];
  [(_DPPTRecord *)self creationDate];
  v8 = v7;
  v9 = [(_DPPTRecord *)self submitted];
  v10 = [(_DPPTRecord *)self objectId];
  v11 = [v4 initWithKey:v5 privateValue:v6 creationDate:v9 submitted:v10 objectId:v8];

  return v11;
}

- (BOOL)isEqualToPTRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [(_DPPTRecord *)self key];
  v6 = [v4 key];
  v7 = [v5 isEqualToString:v6];

  v8 = [(_DPPTRecord *)self privateValue];
  v9 = [v4 privateValue];
  v10 = [v8 isEqualToString:v9];

  [(_DPPTRecord *)self creationDate];
  v12 = v11;
  [v4 creationDate];
  v14 = areEqualTimeIntervals(v12, v13);
  LODWORD(v9) = [(_DPPTRecord *)self submitted];
  v15 = v9 ^ [v4 submitted];
  v16 = [(_DPPTRecord *)self reportVersion];
  v17 = [v4 reportVersion];
  v18 = [(_DPPTRecord *)self objectId];

  if (v18)
  {
    v19 = [(_DPPTRecord *)self objectId];
    v20 = [v4 objectId];
    v21 = [v19 isEqual:v20];
  }

  else
  {
    v22 = [v4 objectId];

    v21 = v22 == 0;
  }

  if (!(v15 & 1 | ((v7 & v10 & v14 & 1) == 0)))
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPPTRecord *)self isEqualToPTRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPPTRecord *)self key];
  v4 = [v3 hash];
  v5 = [(_DPPTRecord *)self privateValue];
  v6 = [v5 hash] ^ v4;
  [(_DPPTRecord *)self creationDate];
  v8 = v7;
  v9 = v6 ^ [(_DPPTRecord *)self submitted];
  v10 = v9 ^ [(_DPPTRecord *)self reportVersion];
  v11 = [(_DPPTRecord *)self objectId];
  v12 = v10 ^ [v11 hash];

  return v12 ^ v8;
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
    v7 = [(_DPPTRecord *)self key];
    [v6 setKey:v7];

    v8 = [(_DPPTRecord *)self privateValue];
    [v6 setPrivateValue:v8];

    [(_DPPTRecord *)self creationDate];
    [v6 setCreationDate:?];
    [v6 setSubmitted:{-[_DPPTRecord submitted](self, "submitted")}];
    [v6 setReportVersion:{-[_DPPTRecord reportVersion](self, "reportVersion")}];
    v9 = [(_DPPTRecord *)self objectId];
    v10 = [v6 objectID];

    if (v9 != v10)
    {
      v11 = [v6 objectID];
      [(_DPPTRecord *)self setObjectId:v11];
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
    [(_DPPTRecord *)self setKey:v7];

    v8 = [v6 privateValue];
    [(_DPPTRecord *)self setPrivateValue:v8];

    [v6 creationDate];
    [(_DPPTRecord *)self setCreationDate:?];
    -[_DPPTRecord setSubmitted:](self, "setSubmitted:", [v6 submitted]);
    -[_DPPTRecord setReportVersion:](self, "setReportVersion:", [v6 reportVersion]);
    v9 = [v6 objectID];

    [(_DPPTRecord *)self setObjectId:v9];
  }

  return isKindOfClass & 1;
}

@end