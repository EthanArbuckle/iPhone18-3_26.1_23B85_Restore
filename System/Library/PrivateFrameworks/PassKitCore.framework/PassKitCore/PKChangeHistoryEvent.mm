@interface PKChangeHistoryEvent
- (BOOL)isEqual:(id)equal;
- (PKChangeHistoryEvent)init;
- (PKChangeHistoryEvent)initWithType:(int64_t)type recordType:(int64_t)recordType recordUniqueID:(id)d timestamp:(id)timestamp;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKChangeHistoryEvent

- (PKChangeHistoryEvent)init
{
  v7.receiver = self;
  v7.super_class = PKChangeHistoryEvent;
  v2 = [(PKChangeHistoryEvent *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;
  }

  return v2;
}

- (PKChangeHistoryEvent)initWithType:(int64_t)type recordType:(int64_t)recordType recordUniqueID:(id)d timestamp:(id)timestamp
{
  dCopy = d;
  timestampCopy = timestamp;
  v18.receiver = self;
  v18.super_class = PKChangeHistoryEvent;
  v13 = [(PKChangeHistoryEvent *)&v18 init];
  if (v13)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v13->_identifier;
    v13->_identifier = uUIDString;

    v13->_type = type;
    v13->_recordType = recordType;
    objc_storeStrong(&v13->_recordUniqueID, d);
    objc_storeStrong(&v13->_timestamp, timestamp);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        identifier = v6->_identifier;
        v8 = self->_identifier;
        v9 = identifier;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_19;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_20;
          }
        }

        if (self->_type != v6->_type || self->_recordType != v6->_recordType)
        {
          goto LABEL_20;
        }

        recordUniqueID = v6->_recordUniqueID;
        v8 = self->_recordUniqueID;
        v14 = recordUniqueID;
        v10 = v14;
        if (v8 == v14)
        {

LABEL_24:
          timestamp = self->_timestamp;
          v18 = v6->_timestamp;
          if (timestamp && v18)
          {
            v12 = [(NSDate *)timestamp isEqual:?];
          }

          else
          {
            v12 = timestamp == v18;
          }

          goto LABEL_21;
        }

        if (v8 && v14)
        {
          v15 = [(NSString *)v8 isEqualToString:v14];

          if (v15)
          {
            goto LABEL_24;
          }

LABEL_20:
          v12 = 0;
LABEL_21:

          goto LABEL_22;
        }

LABEL_19:

        goto LABEL_20;
      }
    }

    v12 = 0;
  }

LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  v7[3] = *MEMORY[0x1E69E9840];
  recordUniqueID = self->_recordUniqueID;
  v3 = self->_recordType - self->_type + 32 * self->_type;
  v7[0] = self->_identifier;
  v7[1] = recordUniqueID;
  v7[2] = self->_timestamp;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v5 = PKCombinedHash(v3 + 16337, v4);

  return v5;
}

- (id)description
{
  type = self->_type;
  if (type > 2)
  {
    v3 = @"unknown-event-type";
  }

  else
  {
    v3 = off_1E79E0720[type];
  }

  v4 = @"unknown-record-type";
  recordType = self->_recordType;
  if (recordType == 1)
  {
    v4 = @"PKChangedRecordTypeCatalog";
  }

  if (!recordType)
  {
    v4 = @"PKChangedRecordTypePass";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier: %@, type: %@, recordType: %@, recordUniqueID: %@, timestamp: %@", self->_identifier, v3, v4, self->_recordUniqueID, self->_timestamp];
}

@end