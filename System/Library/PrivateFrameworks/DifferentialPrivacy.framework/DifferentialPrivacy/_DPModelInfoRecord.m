@interface _DPModelInfoRecord
+ (id)createRecordFromManagedObject:(id)a3;
- (BOOL)copyFromManagedObject:(id)a3;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToModelInfo:(id)a3;
- (_DPModelInfoRecord)init;
- (_DPModelInfoRecord)initWithCoder:(id)a3;
- (_DPModelInfoRecord)initWithMajorVersion:(signed __int16)a3 minorVersion:(signed __int16)a4 creationDate:(double)a5 objectId:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)entityName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DPModelInfoRecord

- (_DPModelInfoRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPModelInfoRecord *)self initWithMajorVersion:0 minorVersion:0 creationDate:0 objectId:v5];
}

- (_DPModelInfoRecord)initWithMajorVersion:(signed __int16)a3 minorVersion:(signed __int16)a4 creationDate:(double)a5 objectId:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = _DPModelInfoRecord;
  v12 = [(_DPModelInfoRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_majorVersion = a3;
    v12->_minorVersion = a4;
    v12->_creationDate = a5;
    v12->_submitted = 0;
    objc_storeStrong(&v12->_objectId, a6);
  }

  return v13;
}

- (_DPModelInfoRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"majorVersion"];
  v6 = [v5 shortValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minorVersion"];
  v8 = [v7 shortValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];

  [v9 doubleValue];
  v11 = v10;

  return [(_DPModelInfoRecord *)self initWithMajorVersion:v6 minorVersion:v8 creationDate:0 objectId:v11];
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithShort:self->_majorVersion];
  [v8 encodeObject:v4 forKey:@"majorVersion"];

  v5 = [MEMORY[0x277CCABB0] numberWithShort:self->_minorVersion];
  [v8 encodeObject:v5 forKey:@"minorVersion"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [v8 encodeObject:v6 forKey:@"creationDate"];

  objectId = self->_objectId;
  if (objectId)
  {
    [v8 encodeObject:objectId forKey:@"objectId"];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { majorVersion=%d  minorVersion=%d ; creationDate=%.16g ; ", v5, self->_majorVersion, self->_minorVersion, *&self->_creationDate];;

  if (self->_objectId)
  {
    [v6 appendFormat:@"objectId=%@ }", self->_objectId];
  }

  else
  {
    [v6 appendString:@"objectId=(nil) }"];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPModelInfoRecord *)self majorVersion];
  v6 = [(_DPModelInfoRecord *)self minorVersion];
  [(_DPModelInfoRecord *)self creationDate];
  v8 = v7;
  v9 = [(_DPModelInfoRecord *)self objectId];
  v10 = [v4 initWithMajorVersion:v5 minorVersion:v6 creationDate:v9 objectId:v8];

  return v10;
}

- (BOOL)isEqualToModelInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  [(_DPModelInfoRecord *)self creationDate];
  v6 = v5;
  [v4 creationDate];
  v8 = areEqualTimeIntervals(v6, v7);
  v9 = [(_DPModelInfoRecord *)self objectId];

  if (v9)
  {
    v10 = [(_DPModelInfoRecord *)self objectId];
    v11 = [v4 objectId];
    v12 = [v10 isEqual:v11];
  }

  else
  {
    v13 = [v4 objectId];

    v12 = v13 == 0;
  }

  if ((v8 & v12) == 1 && (v14 = -[_DPModelInfoRecord majorVersion](self, "majorVersion"), v14 == [v4 majorVersion]))
  {
    v15 = [(_DPModelInfoRecord *)self minorVersion];
    v16 = v15 == [v4 minorVersion];
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

  return v16;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPModelInfoRecord *)self isEqualToModelInfo:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPModelInfoRecord *)self majorVersion];
  v4 = [(_DPModelInfoRecord *)self minorVersion]^ v3;
  [(_DPModelInfoRecord *)self creationDate];
  v6 = v5;
  v7 = [(_DPModelInfoRecord *)self objectId];
  v8 = v4 ^ [v7 hash];

  return v8 ^ v6;
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
    [v6 setMajorVersion:{-[_DPModelInfoRecord majorVersion](self, "majorVersion")}];
    [v6 setMinorVersion:{-[_DPModelInfoRecord minorVersion](self, "minorVersion")}];
    v7 = [(_DPModelInfoRecord *)self objectId];
    v8 = [v6 objectID];

    if (v7 != v8)
    {
      v9 = [v6 objectID];
      [(_DPModelInfoRecord *)self setObjectId:v9];
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
    -[_DPModelInfoRecord setMajorVersion:](self, "setMajorVersion:", [v6 majorVersion]);
    -[_DPModelInfoRecord setMinorVersion:](self, "setMinorVersion:", [v6 minorVersion]);
    v7 = [v6 objectID];

    [(_DPModelInfoRecord *)self setObjectId:v7];
  }

  return isKindOfClass & 1;
}

@end