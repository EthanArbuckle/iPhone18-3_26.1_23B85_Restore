@interface _MKFUserActivityStatus
- (BOOL)validateForInsertOrUpdate:(id *)a3;
- (MKFUserActivityStatusDatabaseID)databaseID;
@end

@implementation _MKFUserActivityStatus

- (MKFUserActivityStatusDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFUserActivityStatusDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)a3
{
  v14.receiver = self;
  v14.super_class = _MKFUserActivityStatus;
  LODWORD(v5) = [(_MKFModel *)&v14 validateForInsertOrUpdate:?];
  if (v5)
  {
    v6 = [(_MKFUserActivityStatus *)self user];
    if (v6)
    {
    }

    else
    {
      v7 = [(_MKFUserActivityStatus *)self guest];

      if (!v7)
      {
        if (a3)
        {
          v11 = @"user or guest is required";
          goto LABEL_12;
        }

LABEL_13:
        LOBYTE(v5) = 0;
        return v5;
      }
    }

    v8 = [(_MKFUserActivityStatus *)self user];
    if (v8)
    {
      v9 = v8;
      v10 = [(_MKFUserActivityStatus *)self guest];

      if (v10)
      {
        if (a3)
        {
          v11 = @"Both user and guest must not be set";
LABEL_12:
          v12 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:v11];
          v5 = v12;
          LOBYTE(v5) = 0;
          *a3 = v12;
          return v5;
        }

        goto LABEL_13;
      }
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

@end