@interface MKFResidentSyncMetadata
- (BOOL)validateForInsertOrUpdate:(id *)a3;
@end

@implementation MKFResidentSyncMetadata

- (BOOL)validateForInsertOrUpdate:(id *)a3
{
  v15.receiver = self;
  v15.super_class = MKFResidentSyncMetadata;
  LODWORD(v5) = [(HMDManagedObject *)&v15 validateForInsertOrUpdate:?];
  if (v5)
  {
    v6 = [(MKFResidentSyncMetadata *)self home];

    if (v6)
    {
      v7 = [(MKFResidentSyncMetadata *)self lastSyncToken];
      if (!v7)
      {
LABEL_6:
        LOBYTE(v5) = 1;
        return v5;
      }

      v8 = v7;
      v9 = [(MKFResidentSyncMetadata *)self lastSeenToken];
      if (v9)
      {
        v10 = v9;
        v11 = [(MKFResidentSyncMetadata *)self lastSyncTimestamp];

        if (v11)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      if (a3)
      {
        v12 = @"lastSeenToken and lastSyncTimestamp are required if lastSyncToken is set";
        goto LABEL_12;
      }
    }

    else if (a3)
    {
      v12 = @"home is required";
LABEL_12:
      v13 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:v12];
      v5 = v13;
      LOBYTE(v5) = 0;
      *a3 = v13;
      return v5;
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

@end