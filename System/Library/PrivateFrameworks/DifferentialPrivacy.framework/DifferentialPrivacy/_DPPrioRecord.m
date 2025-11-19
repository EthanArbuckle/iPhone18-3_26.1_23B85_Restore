@interface _DPPrioRecord
+ (id)createRecordFromManagedObject:(id)a3;
- (BOOL)copyFromManagedObject:(id)a3;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPrioRecord:(id)a3;
- (NSString)description;
- (_DPPrioRecord)init;
- (_DPPrioRecord)initWithCoder:(id)a3;
- (_DPPrioRecord)initWithKey:(id)a3 share1:(id)a4 share2:(id)a5 dimension:(int64_t)a6 metadata:(id)a7 creationDate:(double)a8 submitted:(BOOL)a9 objectId:(id)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (id)entityName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DPPrioRecord

- (_DPPrioRecord)init
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v6 = [MEMORY[0x277CBEA90] data];
  v7 = [MEMORY[0x277CBEA90] data];
  v8 = [(_DPPrioRecord *)self initWithKey:@"com.apple._DPPrioRecord" share1:v6 share2:v7 dimension:0 metadata:MEMORY[0x277CBEC10] creationDate:0 submitted:v5 objectId:0];

  return v8;
}

- (_DPPrioRecord)initWithKey:(id)a3 share1:(id)a4 share2:(id)a5 dimension:(int64_t)a6 metadata:(id)a7 creationDate:(double)a8 submitted:(BOOL)a9 objectId:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a10;
  v32.receiver = self;
  v32.super_class = _DPPrioRecord;
  v22 = [(_DPPrioRecord *)&v32 init];
  if (v22)
  {
    v23 = [v17 copy];
    key = v22->_key;
    v22->_key = v23;

    v25 = [v18 copy];
    share1 = v22->_share1;
    v22->_share1 = v25;

    v27 = [v19 copy];
    share2 = v22->_share2;
    v22->_share2 = v27;

    v22->_dimension = a6;
    v29 = [v20 copy];
    metadata = v22->_metadata;
    v22->_metadata = v29;

    v22->_creationDate = a8;
    v22->_submitted = a9;
    v22->_reportVersion = +[_DPJSONOutputHelper currentVersion];
    objc_storeStrong(&v22->_objectId, a10);
  }

  return v22;
}

- (_DPPrioRecord)initWithCoder:(id)a3
{
  v3 = a3;
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"share1"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"share2"];
  v20 = [v3 decodeInt64ForKey:@"dimension"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"metadata"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"submitted"];

  v17 = [v16 BOOLValue];
  v18 = [(_DPPrioRecord *)self initWithKey:v21 share1:v4 share2:v5 dimension:v20 metadata:v12 creationDate:v17 submitted:v15 objectId:0];

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeObject:self->_key forKey:@"key"];
  [v8 encodeObject:self->_share1 forKey:@"share1"];
  [v8 encodeObject:self->_share2 forKey:@"share2"];
  [v8 encodeInt64:self->_dimension forKey:@"dimension"];
  [v8 encodeObject:self->_metadata forKey:@"metadata"];
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
  v13 = [(NSDictionary *)self->_metadata allKeys];
  [v4 appendFormat:@"share1=(length:%lu) ; share2=(length:%lu) ; dimension=%lld ; creationDate=%.16g ; submitted=%s ; reportVersion=%lld ; metadata=(keys: %@) ; ", v7, v8, dimension, *&creationDate, v10, reportVersion, v13];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_DPPrioRecord *)self key];
  v6 = [(_DPPrioRecord *)self share1];
  v7 = [(_DPPrioRecord *)self share2];
  v8 = [(_DPPrioRecord *)self dimension];
  v9 = [(_DPPrioRecord *)self metadata];
  [(_DPPrioRecord *)self creationDate];
  v11 = v10;
  v12 = [(_DPPrioRecord *)self submitted];
  v13 = [(_DPPrioRecord *)self objectId];
  v14 = [v4 initWithKey:v5 share1:v6 share2:v7 dimension:v8 metadata:v9 creationDate:v12 submitted:v11 objectId:v13];

  return v14;
}

- (BOOL)isEqualToPrioRecord:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = [(_DPPrioRecord *)self key];
  v7 = [v5 key];
  v42 = [v6 isEqualToString:v7];

  share1 = self->_share1;
  v9 = [v5 share1];
  if (share1 != v9)
  {
    v10 = self->_share1;
    v3 = [v5 share1];
    if (![(NSData *)v10 isEqualToData:v3])
    {
      v11 = 0;
LABEL_9:

      goto LABEL_10;
    }
  }

  share2 = self->_share2;
  v13 = [v5 share2];
  if (share2 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = self->_share2;
    v15 = [v5 share2];
    v11 = [(NSData *)v14 isEqualToData:v15];
  }

  if (share1 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:

  v16 = [(_DPPrioRecord *)self dimension];
  v17 = [v5 dimension];
  v18 = [(_DPPrioRecord *)self metadata];
  v19 = [v5 metadata];
  v41 = [v18 isEqualToDictionary:v19];

  [(_DPPrioRecord *)self creationDate];
  v21 = v20;
  [v5 creationDate];
  v23 = areEqualTimeIntervals(v21, v22);
  LODWORD(v19) = [(_DPPrioRecord *)self submitted];
  v24 = v19 ^ [v5 submitted];
  v25 = [(_DPPrioRecord *)self reportVersion];
  v26 = [v5 reportVersion];
  v27 = [(_DPPrioRecord *)self objectId];

  if (v27)
  {
    v28 = [(_DPPrioRecord *)self objectId];
    [v5 objectId];
    v29 = v24;
    v30 = v23;
    v31 = v26;
    v32 = v25;
    v33 = v17;
    v34 = v16;
    v36 = v35 = v11;
    v40 = [v28 isEqual:v36];

    v11 = v35;
    v16 = v34;
    v17 = v33;
    v25 = v32;
    v26 = v31;
    v23 = v30;
    LOBYTE(v24) = v29;
  }

  else
  {
    v37 = [v5 objectId];

    v40 = v37 == 0;
  }

  if (!((v16 != v17 || (v42 & v11 & 1) == 0 || (v41 & 1) == 0 || !v23) | v24 & 1))
  {
    v38 = (v25 == v26) & v40;
    goto LABEL_16;
  }

LABEL_14:
  v38 = 0;
LABEL_16:

  return v38;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPPrioRecord *)self isEqualToPrioRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPPrioRecord *)self key];
  v4 = [v3 hash];
  v5 = [(_DPPrioRecord *)self share1];
  v6 = [v5 hash] ^ v4;
  v7 = [(_DPPrioRecord *)self share2];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(_DPPrioRecord *)self dimension];
  v10 = [(_DPPrioRecord *)self metadata];
  v11 = v9 ^ [v10 hash];
  [(_DPPrioRecord *)self creationDate];
  v13 = v12;
  v14 = v11 ^ [(_DPPrioRecord *)self submitted];
  v15 = v14 ^ [(_DPPrioRecord *)self reportVersion];
  v16 = [(_DPPrioRecord *)self objectId];
  v17 = v15 ^ [v16 hash];

  return v17 ^ v13;
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
    v7 = [(_DPPrioRecord *)self key];
    [v6 setKey:v7];

    v8 = [(_DPPrioRecord *)self share1];
    [v6 setShare1:v8];

    v9 = [(_DPPrioRecord *)self share2];
    [v6 setShare2:v9];

    [v6 setDimension:{-[_DPPrioRecord dimension](self, "dimension")}];
    v10 = MEMORY[0x277CCAAB0];
    v11 = [(_DPPrioRecord *)self metadata];
    v19 = 0;
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v19];
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
    v15 = [(_DPPrioRecord *)self objectId];
    v16 = [v6 objectID];

    if (v15 != v16)
    {
      v17 = [v6 objectID];
      [(_DPPrioRecord *)self setObjectId:v17];
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
    [(_DPPrioRecord *)self setKey:v7];

    v8 = [v6 share1];
    [(_DPPrioRecord *)self setShare1:v8];

    v9 = [v6 share2];
    [(_DPPrioRecord *)self setShare2:v9];

    -[_DPPrioRecord setDimension:](self, "setDimension:", [v6 dimension]);
    v10 = MEMORY[0x277CCAAC8];
    v11 = _DPMetadataExpectedClasses();
    v12 = [v6 metadata];
    v18 = 0;
    v13 = [v10 unarchivedObjectOfClasses:v11 fromData:v12 error:&v18];
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
    v16 = [v6 objectID];
    [(_DPPrioRecord *)self setObjectId:v16];
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