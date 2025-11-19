@interface PKCloudDeletedRecord
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeletedRecord:(id)a3;
- (BOOL)isPass;
- (BOOL)isPassCatalog;
- (BOOL)isRemoteAsset;
- (NSString)recordName;
- (PKCloudDeletedRecord)initWithCoder:(id)a3;
- (PKCloudDeletedRecord)initWithRecordID:(id)a3 recordType:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudDeletedRecord

- (PKCloudDeletedRecord)initWithRecordID:(id)a3 recordType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKCloudDeletedRecord;
  v9 = [(PKCloudDeletedRecord *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordID, a3);
    objc_storeStrong(&v10->_recordType, a4);
  }

  return v10;
}

- (PKCloudDeletedRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKCloudDeletedRecord;
  v5 = [(PKCloudDeletedRecord *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
    recordID = v5->_recordID;
    v5->_recordID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordType"];
    recordType = v5->_recordType;
    v5->_recordType = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  recordID = self->_recordID;
  v5 = a3;
  [v5 encodeObject:recordID forKey:@"recordID"];
  [v5 encodeObject:self->_recordType forKey:@"recordType"];
}

- (NSString)recordName
{
  v2 = [(PKCloudDeletedRecord *)self recordID];
  v3 = [v2 recordName];

  return v3;
}

- (BOOL)isPass
{
  v2 = [(PKCloudDeletedRecord *)self recordType];
  v3 = @"Pass";
  v4 = v3;
  if (v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (v2 && v3)
    {
      v5 = [(__CFString *)v2 isEqualToString:v3];
    }
  }

  return v5;
}

- (BOOL)isPassCatalog
{
  v2 = [(PKCloudDeletedRecord *)self recordType];
  v3 = @"PassCatalog";
  v4 = v3;
  if (v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (v2 && v3)
    {
      v5 = [(__CFString *)v2 isEqualToString:v3];
    }
  }

  return v5;
}

- (BOOL)isRemoteAsset
{
  v2 = [(PKCloudDeletedRecord *)self recordType];
  v3 = @"RemoteAsset";
  v4 = v3;
  if (v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (v2 && v3)
    {
      v5 = [(__CFString *)v2 isEqualToString:v3];
    }
  }

  return v5;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCloudDeletedRecord *)self isEqualToDeletedRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToDeletedRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  recordID = self->_recordID;
  v6 = v4[1];
  if (recordID)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (([(CKRecordID *)recordID isEqual:?]& 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if (recordID != v6)
  {
    goto LABEL_8;
  }

LABEL_11:
  recordType = self->_recordType;
  v11 = v4[2];
  if (recordType && v11)
  {
    v8 = [(NSString *)recordType isEqual:?];
  }

  else
  {
    v8 = recordType == v11;
  }

LABEL_9:

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_recordID];
  [v3 safelyAddObject:self->_recordType];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendString:@"----------------------------\n"];
  [v3 appendFormat:@"recordID:\n%@\n", self->_recordID];
  [v3 appendFormat:@"recordType:%@\n", self->_recordType];
  [v3 appendString:@"----------------------------\n"];

  return v3;
}

@end