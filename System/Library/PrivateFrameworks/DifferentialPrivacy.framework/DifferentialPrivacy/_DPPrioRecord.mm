@interface _DPPrioRecord
+ (id)createRecordFromManagedObject:(id)object;
- (BOOL)copyFromManagedObject:(id)object;
- (BOOL)copyToManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPrioRecord:(id)record;
- (NSString)description;
- (_DPPrioRecord)init;
- (_DPPrioRecord)initWithCoder:(id)coder;
- (_DPPrioRecord)initWithKey:(id)key share1:(id)share1 share2:(id)share2 dimension:(int64_t)dimension metadata:(id)metadata creationDate:(double)date submitted:(BOOL)submitted objectId:(id)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)entityName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DPPrioRecord

- (_DPPrioRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  data = [MEMORY[0x277CBEA90] data];
  data2 = [MEMORY[0x277CBEA90] data];
  v8 = [(_DPPrioRecord *)self initWithKey:@"com.apple._DPPrioRecord" share1:data share2:data2 dimension:0 metadata:MEMORY[0x277CBEC10] creationDate:0 submitted:v5 objectId:0];

  return v8;
}

- (_DPPrioRecord)initWithKey:(id)key share1:(id)share1 share2:(id)share2 dimension:(int64_t)dimension metadata:(id)metadata creationDate:(double)date submitted:(BOOL)submitted objectId:(id)self0
{
  keyCopy = key;
  share1Copy = share1;
  share2Copy = share2;
  metadataCopy = metadata;
  idCopy = id;
  v32.receiver = self;
  v32.super_class = _DPPrioRecord;
  v22 = [(_DPPrioRecord *)&v32 init];
  if (v22)
  {
    v23 = [keyCopy copy];
    key = v22->_key;
    v22->_key = v23;

    v25 = [share1Copy copy];
    share1 = v22->_share1;
    v22->_share1 = v25;

    v27 = [share2Copy copy];
    share2 = v22->_share2;
    v22->_share2 = v27;

    v22->_dimension = dimension;
    v29 = [metadataCopy copy];
    metadata = v22->_metadata;
    v22->_metadata = v29;

    v22->_creationDate = date;
    v22->_submitted = submitted;
    v22->_reportVersion = +[_DPJSONOutputHelper currentVersion];
    objc_storeStrong(&v22->_objectId, id);
  }

  return v22;
}

- (_DPPrioRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"share1"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"share2"];
  v20 = [coderCopy decodeInt64ForKey:@"dimension"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"metadata"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  bOOLValue = [v16 BOOLValue];
  v18 = [(_DPPrioRecord *)self initWithKey:v21 share1:v4 share2:v5 dimension:v20 metadata:v12 creationDate:bOOLValue submitted:v15 objectId:0];

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_key forKey:@"key"];
  [coderCopy encodeObject:self->_share1 forKey:@"share1"];
  [coderCopy encodeObject:self->_share2 forKey:@"share2"];
  [coderCopy encodeInt64:self->_dimension forKey:@"dimension"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
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

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [&stru_2839671C8 mutableCopy];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 appendFormat:@"%@: { key=%@ ; ", v6, self->_key];

  v7 = [(NSData *)self->_share1 length];
  v8 = [(NSData *)self->_share2 length];
  creationDate = self->_creationDate;
  if (self->_submitted)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  reportVersion = self->_reportVersion;
  dimension = self->_dimension;
  allKeys = [(NSDictionary *)self->_metadata allKeys];
  [v4 appendFormat:@"share1=(length:%lu) ; share2=(length:%lu) ; dimension=%lld ; creationDate=%.16g ; submitted=%s ; reportVersion=%lld ; metadata=(keys: %@) ; ", v7, v8, dimension, *&creationDate, v10, reportVersion, allKeys];

  if (self->_objectId)
  {
    [v4 appendFormat:@"objectId=%@ }", self->_objectId];
  }

  else
  {
    [v4 appendString:@"objectId=(nil) }"];
  }

  v14 = [v4 copy];

  objc_autoreleasePoolPop(v3);

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPPrioRecord *)self key];
  share1 = [(_DPPrioRecord *)self share1];
  share2 = [(_DPPrioRecord *)self share2];
  dimension = [(_DPPrioRecord *)self dimension];
  metadata = [(_DPPrioRecord *)self metadata];
  [(_DPPrioRecord *)self creationDate];
  v11 = v10;
  submitted = [(_DPPrioRecord *)self submitted];
  objectId = [(_DPPrioRecord *)self objectId];
  v14 = [v4 initWithKey:v5 share1:share1 share2:share2 dimension:dimension metadata:metadata creationDate:submitted submitted:v11 objectId:objectId];

  return v14;
}

- (BOOL)isEqualToPrioRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_14;
  }

  v6 = [(_DPPrioRecord *)self key];
  v7 = [recordCopy key];
  v42 = [v6 isEqualToString:v7];

  share1 = self->_share1;
  share1 = [recordCopy share1];
  if (share1 != share1)
  {
    v10 = self->_share1;
    share12 = [recordCopy share1];
    if (![(NSData *)v10 isEqualToData:share12])
    {
      v11 = 0;
LABEL_9:

      goto LABEL_10;
    }
  }

  share2 = self->_share2;
  share2 = [recordCopy share2];
  if (share2 == share2)
  {
    v11 = 1;
  }

  else
  {
    v14 = self->_share2;
    share22 = [recordCopy share2];
    v11 = [(NSData *)v14 isEqualToData:share22];
  }

  if (share1 != share1)
  {
    goto LABEL_9;
  }

LABEL_10:

  dimension = [(_DPPrioRecord *)self dimension];
  dimension2 = [recordCopy dimension];
  metadata = [(_DPPrioRecord *)self metadata];
  metadata2 = [recordCopy metadata];
  v41 = [metadata isEqualToDictionary:metadata2];

  [(_DPPrioRecord *)self creationDate];
  v21 = v20;
  [recordCopy creationDate];
  v23 = areEqualTimeIntervals(v21, v22);
  LODWORD(metadata2) = [(_DPPrioRecord *)self submitted];
  v24 = metadata2 ^ [recordCopy submitted];
  reportVersion = [(_DPPrioRecord *)self reportVersion];
  reportVersion2 = [recordCopy reportVersion];
  objectId = [(_DPPrioRecord *)self objectId];

  if (objectId)
  {
    objectId2 = [(_DPPrioRecord *)self objectId];
    [recordCopy objectId];
    v29 = v24;
    v30 = v23;
    v31 = reportVersion2;
    v32 = reportVersion;
    v33 = dimension2;
    v34 = dimension;
    v36 = v35 = v11;
    v40 = [objectId2 isEqual:v36];

    v11 = v35;
    dimension = v34;
    dimension2 = v33;
    reportVersion = v32;
    reportVersion2 = v31;
    v23 = v30;
    LOBYTE(v24) = v29;
  }

  else
  {
    objectId3 = [recordCopy objectId];

    v40 = objectId3 == 0;
  }

  if (!((dimension != dimension2 || (v42 & v11 & 1) == 0 || (v41 & 1) == 0 || !v23) | v24 & 1))
  {
    v38 = (reportVersion == reportVersion2) & v40;
    goto LABEL_16;
  }

LABEL_14:
  v38 = 0;
LABEL_16:

  return v38;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPPrioRecord *)self isEqualToPrioRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPPrioRecord *)self key];
  v4 = [v3 hash];
  share1 = [(_DPPrioRecord *)self share1];
  v6 = [share1 hash] ^ v4;
  share2 = [(_DPPrioRecord *)self share2];
  v8 = [share2 hash];
  v9 = v6 ^ v8 ^ [(_DPPrioRecord *)self dimension];
  metadata = [(_DPPrioRecord *)self metadata];
  v11 = v9 ^ [metadata hash];
  [(_DPPrioRecord *)self creationDate];
  v13 = v12;
  v14 = v11 ^ [(_DPPrioRecord *)self submitted];
  v15 = v14 ^ [(_DPPrioRecord *)self reportVersion];
  objectId = [(_DPPrioRecord *)self objectId];
  v17 = v15 ^ [objectId hash];

  return v17 ^ v13;
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
    v7 = [(_DPPrioRecord *)self key];
    [v6 setKey:v7];

    share1 = [(_DPPrioRecord *)self share1];
    [v6 setShare1:share1];

    share2 = [(_DPPrioRecord *)self share2];
    [v6 setShare2:share2];

    [v6 setDimension:{-[_DPPrioRecord dimension](self, "dimension")}];
    v10 = MEMORY[0x277CCAAB0];
    metadata = [(_DPPrioRecord *)self metadata];
    v19 = 0;
    v12 = [v10 archivedDataWithRootObject:metadata requiringSecureCoding:1 error:&v19];
    v13 = v19;

    if (v13)
    {
      v14 = +[_DPLog framework];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(_DPPrioRecord *)v13 copyToManagedObject:v14];
      }
    }

    [v6 setMetadata:v12];
    [(_DPPrioRecord *)self creationDate];
    [v6 setCreationDate:?];
    [v6 setSubmitted:{-[_DPPrioRecord submitted](self, "submitted")}];
    [v6 setReportVersion:{-[_DPPrioRecord reportVersion](self, "reportVersion")}];
    objectId = [(_DPPrioRecord *)self objectId];
    objectID = [v6 objectID];

    if (objectId != objectID)
    {
      objectID2 = [v6 objectID];
      [(_DPPrioRecord *)self setObjectId:objectID2];
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
    [(_DPPrioRecord *)self setKey:v7];

    share1 = [v6 share1];
    [(_DPPrioRecord *)self setShare1:share1];

    share2 = [v6 share2];
    [(_DPPrioRecord *)self setShare2:share2];

    -[_DPPrioRecord setDimension:](self, "setDimension:", [v6 dimension]);
    v10 = MEMORY[0x277CCAAC8];
    v11 = _DPMetadataExpectedClasses();
    metadata = [v6 metadata];
    v18 = 0;
    v13 = [v10 unarchivedObjectOfClasses:v11 fromData:metadata error:&v18];
    v14 = v18;

    if (v14)
    {
      v15 = +[_DPLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(_DPPrioRecord *)v14 copyFromManagedObject:v15];
      }
    }

    [(_DPPrioRecord *)self setMetadata:v13];
    [v6 creationDate];
    [(_DPPrioRecord *)self setCreationDate:?];
    -[_DPPrioRecord setSubmitted:](self, "setSubmitted:", [v6 submitted]);
    -[_DPPrioRecord setReportVersion:](self, "setReportVersion:", [v6 reportVersion]);
    objectID = [v6 objectID];
    [(_DPPrioRecord *)self setObjectId:objectID];
  }

  return isKindOfClass & 1;
}

- (void)copyToManagedObject:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "Unable to securely archive metadata Dictionary! error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)copyFromManagedObject:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "Unable to securely unarchive metadata Dictionary! error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end