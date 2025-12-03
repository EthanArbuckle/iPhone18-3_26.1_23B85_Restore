@interface MKFResidentSyncMetadata
- (BOOL)validateForInsertOrUpdate:(id *)update;
@end

@implementation MKFResidentSyncMetadata

- (BOOL)validateForInsertOrUpdate:(id *)update
{
  v15.receiver = self;
  v15.super_class = MKFResidentSyncMetadata;
  LODWORD(v5) = [(HMDManagedObject *)&v15 validateForInsertOrUpdate:?];
  if (v5)
  {
    home = [(MKFResidentSyncMetadata *)self home];

    if (home)
    {
      lastSyncToken = [(MKFResidentSyncMetadata *)self lastSyncToken];
      if (!lastSyncToken)
      {
LABEL_6:
        LOBYTE(v5) = 1;
        return v5;
      }

      v8 = lastSyncToken;
      lastSeenToken = [(MKFResidentSyncMetadata *)self lastSeenToken];
      if (lastSeenToken)
      {
        v10 = lastSeenToken;
        lastSyncTimestamp = [(MKFResidentSyncMetadata *)self lastSyncTimestamp];

        if (lastSyncTimestamp)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      if (update)
      {
        v12 = @"lastSeenToken and lastSyncTimestamp are required if lastSyncToken is set";
        goto LABEL_12;
      }
    }

    else if (update)
    {
      v12 = @"home is required";
LABEL_12:
      v13 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:v12];
      v5 = v13;
      LOBYTE(v5) = 0;
      *update = v13;
      return v5;
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

@end