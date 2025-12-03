@interface _MKFUserActivityStatus
- (BOOL)validateForInsertOrUpdate:(id *)update;
- (MKFUserActivityStatusDatabaseID)databaseID;
@end

@implementation _MKFUserActivityStatus

- (MKFUserActivityStatusDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFUserActivityStatusDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)update
{
  v14.receiver = self;
  v14.super_class = _MKFUserActivityStatus;
  LODWORD(v5) = [(_MKFModel *)&v14 validateForInsertOrUpdate:?];
  if (v5)
  {
    user = [(_MKFUserActivityStatus *)self user];
    if (user)
    {
    }

    else
    {
      guest = [(_MKFUserActivityStatus *)self guest];

      if (!guest)
      {
        if (update)
        {
          v11 = @"user or guest is required";
          goto LABEL_12;
        }

LABEL_13:
        LOBYTE(v5) = 0;
        return v5;
      }
    }

    user2 = [(_MKFUserActivityStatus *)self user];
    if (user2)
    {
      v9 = user2;
      guest2 = [(_MKFUserActivityStatus *)self guest];

      if (guest2)
      {
        if (update)
        {
          v11 = @"Both user and guest must not be set";
LABEL_12:
          v12 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:v11];
          v5 = v12;
          LOBYTE(v5) = 0;
          *update = v12;
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