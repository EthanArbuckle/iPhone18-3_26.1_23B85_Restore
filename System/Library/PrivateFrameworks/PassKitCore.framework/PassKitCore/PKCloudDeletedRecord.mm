@interface PKCloudDeletedRecord
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeletedRecord:(id)record;
- (BOOL)isPass;
- (BOOL)isPassCatalog;
- (BOOL)isRemoteAsset;
- (NSString)recordName;
- (PKCloudDeletedRecord)initWithCoder:(id)coder;
- (PKCloudDeletedRecord)initWithRecordID:(id)d recordType:(id)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudDeletedRecord

- (PKCloudDeletedRecord)initWithRecordID:(id)d recordType:(id)type
{
  dCopy = d;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = PKCloudDeletedRecord;
  v9 = [(PKCloudDeletedRecord *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordID, d);
    objc_storeStrong(&v10->_recordType, type);
  }

  return v10;
}

- (PKCloudDeletedRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKCloudDeletedRecord;
  v5 = [(PKCloudDeletedRecord *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
    recordID = v5->_recordID;
    v5->_recordID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordType"];
    recordType = v5->_recordType;
    v5->_recordType = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  recordID = self->_recordID;
  coderCopy = coder;
  [coderCopy encodeObject:recordID forKey:@"recordID"];
  [coderCopy encodeObject:self->_recordType forKey:@"recordType"];
}

- (NSString)recordName
{
  recordID = [(PKCloudDeletedRecord *)self recordID];
  recordName = [recordID recordName];

  return recordName;
}

- (BOOL)isPass
{
  recordType = [(PKCloudDeletedRecord *)self recordType];
  v3 = @"Pass";
  v4 = v3;
  if (recordType == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (recordType && v3)
    {
      v5 = [(__CFString *)recordType isEqualToString:v3];
    }
  }

  return v5;
}

- (BOOL)isPassCatalog
{
  recordType = [(PKCloudDeletedRecord *)self recordType];
  v3 = @"PassCatalog";
  v4 = v3;
  if (recordType == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (recordType && v3)
    {
      v5 = [(__CFString *)recordType isEqualToString:v3];
    }
  }

  return v5;
}

- (BOOL)isRemoteAsset
{
  recordType = [(PKCloudDeletedRecord *)self recordType];
  v3 = @"RemoteAsset";
  v4 = v3;
  if (recordType == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (recordType && v3)
    {
      v5 = [(__CFString *)recordType isEqualToString:v3];
    }
  }

  return v5;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCloudDeletedRecord *)self isEqualToDeletedRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToDeletedRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
  {
    goto LABEL_8;
  }

  recordID = self->_recordID;
  v6 = recordCopy[1];
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
  v11 = recordCopy[2];
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
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:@"----------------------------\n"];
  [string appendFormat:@"recordID:\n%@\n", self->_recordID];
  [string appendFormat:@"recordType:%@\n", self->_recordType];
  [string appendString:@"----------------------------\n"];

  return string;
}

@end