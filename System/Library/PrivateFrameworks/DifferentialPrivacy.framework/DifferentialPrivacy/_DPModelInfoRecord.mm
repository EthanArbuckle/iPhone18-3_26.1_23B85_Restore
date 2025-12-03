@interface _DPModelInfoRecord
+ (id)createRecordFromManagedObject:(id)object;
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToModelInfo:(id)info;
- (_DPModelInfoRecord)init;
- (_DPModelInfoRecord)initWithCoder:(id)coder;
- (_DPModelInfoRecord)initWithMajorVersion:(signed __int16)version minorVersion:(signed __int16)minorVersion creationDate:(double)date objectId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)entityName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DPModelInfoRecord

- (_DPModelInfoRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return [(_DPModelInfoRecord *)self initWithMajorVersion:0 minorVersion:0 creationDate:0 objectId:v5];
}

- (_DPModelInfoRecord)initWithMajorVersion:(signed __int16)version minorVersion:(signed __int16)minorVersion creationDate:(double)date objectId:(id)id
{
  idCopy = id;
  v15.receiver = self;
  v15.super_class = _DPModelInfoRecord;
  v12 = [(_DPModelInfoRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_majorVersion = version;
    v12->_minorVersion = minorVersion;
    v12->_creationDate = date;
    v12->_submitted = 0;
    objc_storeStrong(&v12->_objectId, id);
  }

  return v13;
}

- (_DPModelInfoRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"majorVersion"];
  shortValue = [v5 shortValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minorVersion"];
  shortValue2 = [v7 shortValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];

  [v9 doubleValue];
  v11 = v10;

  return [(_DPModelInfoRecord *)self initWithMajorVersion:shortValue minorVersion:shortValue2 creationDate:0 objectId:v11];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CCABB0] numberWithShort:self->_majorVersion];
  [coderCopy encodeObject:v4 forKey:@"majorVersion"];

  v5 = [MEMORY[0x277CCABB0] numberWithShort:self->_minorVersion];
  [coderCopy encodeObject:v5 forKey:@"minorVersion"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_creationDate];
  [coderCopy encodeObject:v6 forKey:@"creationDate"];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  majorVersion = [(_DPModelInfoRecord *)self majorVersion];
  minorVersion = [(_DPModelInfoRecord *)self minorVersion];
  [(_DPModelInfoRecord *)self creationDate];
  v8 = v7;
  objectId = [(_DPModelInfoRecord *)self objectId];
  v10 = [v4 initWithMajorVersion:majorVersion minorVersion:minorVersion creationDate:objectId objectId:v8];

  return v10;
}

- (BOOL)isEqualToModelInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    goto LABEL_8;
  }

  [(_DPModelInfoRecord *)self creationDate];
  v6 = v5;
  [infoCopy creationDate];
  v8 = areEqualTimeIntervals(v6, v7);
  objectId = [(_DPModelInfoRecord *)self objectId];

  if (objectId)
  {
    objectId2 = [(_DPModelInfoRecord *)self objectId];
    objectId3 = [infoCopy objectId];
    v12 = [objectId2 isEqual:objectId3];
  }

  else
  {
    objectId4 = [infoCopy objectId];

    v12 = objectId4 == 0;
  }

  if ((v8 & v12) == 1 && (v14 = -[_DPModelInfoRecord majorVersion](self, "majorVersion"), v14 == [infoCopy majorVersion]))
  {
    minorVersion = [(_DPModelInfoRecord *)self minorVersion];
    v16 = minorVersion == [infoCopy minorVersion];
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

  return v16;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPModelInfoRecord *)self isEqualToModelInfo:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  majorVersion = [(_DPModelInfoRecord *)self majorVersion];
  v4 = [(_DPModelInfoRecord *)self minorVersion]^ majorVersion;
  [(_DPModelInfoRecord *)self creationDate];
  v6 = v5;
  objectId = [(_DPModelInfoRecord *)self objectId];
  v8 = v4 ^ [objectId hash];

  return v8 ^ v6;
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
    [v6 setMajorVersion:{-[_DPModelInfoRecord majorVersion](self, "majorVersion")}];
    [v6 setMinorVersion:{-[_DPModelInfoRecord minorVersion](self, "minorVersion")}];
    objectId = [(_DPModelInfoRecord *)self objectId];
    objectID = [v6 objectID];

    if (objectId != objectID)
    {
      objectID2 = [v6 objectID];
      [(_DPModelInfoRecord *)self setObjectId:objectID2];
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
    -[_DPModelInfoRecord setMajorVersion:](self, "setMajorVersion:", [v6 majorVersion]);
    -[_DPModelInfoRecord setMinorVersion:](self, "setMinorVersion:", [v6 minorVersion]);
    objectID = [v6 objectID];

    [(_DPModelInfoRecord *)self setObjectId:objectID];
  }

  return isKindOfClass & 1;
}

@end