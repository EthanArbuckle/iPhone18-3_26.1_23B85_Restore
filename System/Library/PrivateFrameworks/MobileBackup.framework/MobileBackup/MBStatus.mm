@interface MBStatus
+ (id)status;
+ (id)statusWithDrive:(id)a3 path:(id)a4 error:(id *)a5;
+ (int)backupStateWithString:(id)a3;
+ (int)snapshotStateWithString:(id)a3;
- (BOOL)writeToDrive:(id)a3 path:(id)a4 error:(id *)a5;
- (MBStatus)init;
- (MBStatus)initWithPropertyList:(id)a3;
- (id)description;
- (id)propertyList;
@end

@implementation MBStatus

+ (int)backupStateWithString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"empty"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"old"])
  {
    v4 = 1;
  }

  else
  {
    if (([v3 isEqualToString:@"new"] & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"Invalid backup state name: %@", v3}]);
    }

    v4 = 2;
  }

  return v4;
}

+ (int)snapshotStateWithString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"uploading"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"moving"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"removing"])
  {
    v4 = 2;
  }

  else
  {
    if (([v3 isEqualToString:@"finished"] & 1) == 0)
    {
      objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"Invalid snapshot state name: %@", v3}]);
    }

    v4 = 3;
  }

  return v4;
}

+ (id)status
{
  v2 = objc_alloc_init(MBStatus);

  return v2;
}

+ (id)statusWithDrive:(id)a3 path:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 propertyListAtPath:v8 options:0 error:a5];
  if (v9)
  {
    v10 = [[MBStatus alloc] initWithPropertyList:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MBStatus)init
{
  v3.receiver = self;
  v3.super_class = MBStatus;
  result = [(MBStatus *)&v3 init];
  if (result)
  {
    result->_version = 3.3;
  }

  return result;
}

- (MBStatus)initWithPropertyList:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MBException alloc];
    v16 = @"Status.plist not a dictionary";
    goto LABEL_26;
  }

  v19.receiver = self;
  v19.super_class = MBStatus;
  v5 = [(MBStatus *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"Backup Success"];
    v7 = [v4 objectForKeyedSubscript:@"Version"];
    if (!v7)
    {
      v5->_version = 0.0;
      v5->_versionAmbiguous = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      v5->_version = v8;
      if (v8 != 0.0 && (v8 < 2.4 || v8 >= 4.0))
      {
        v17 = [[MBException alloc] initWithCode:203 format:{@"Unsupported status version: %0.1f", *&v5->_version}];
LABEL_27:
        objc_exception_throw(v17);
      }

      v5->_versionAmbiguous = v6 != 0;
      if (v8 >= 2.0)
      {
        v9 = [v4 objectForKeyedSubscript:@"UUID"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v5->_uuid, v9);
          v10 = [v4 objectForKeyedSubscript:@"Date"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v5->_date, v10);
            v11 = [v4 objectForKeyedSubscript:@"BackupState"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v5->_backupState = [MBStatus backupStateWithString:v11];
              v12 = [v4 objectForKeyedSubscript:@"SnapshotState"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v5->_snapshotState = [MBStatus snapshotStateWithString:v12];
                v13 = [v4 objectForKeyedSubscript:@"IsFullBackup"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v5->_fullBackup = [v13 BOOLValue];

LABEL_17:
                  goto LABEL_18;
                }

                v15 = [MBException alloc];
                v16 = @"IsFullBackup value not a number";
              }

              else
              {
                v15 = [MBException alloc];
                v16 = @"SnapshotState not a string";
              }
            }

            else
            {
              v15 = [MBException alloc];
              v16 = @"BackupState not a string";
            }
          }

          else
          {
            v15 = [MBException alloc];
            v16 = @"Date value not a date";
          }
        }

        else
        {
          v15 = [MBException alloc];
          v16 = @"UUID value not a string";
        }

        goto LABEL_26;
      }

LABEL_16:
      v5->_backupState = 1;
      goto LABEL_17;
    }

    v15 = [MBException alloc];
    v16 = @"Version value not a NSNumber";
LABEL_26:
    v17 = [v15 initWithCode:11 format:{v16, v18}];
    goto LABEL_27;
  }

LABEL_18:

  return v5;
}

- (id)propertyList
{
  if (self->_version != 3.3)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MBStatus.m" lineNumber:178 description:@"Saving old status format?"];
  }

  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  v4 = [NSString stringWithFormat:@"%0.1f", 0x400A666666666666];
  [v3 setObject:v4 forKeyedSubscript:@"Version"];

  [v3 setObject:self->_uuid forKeyedSubscript:@"UUID"];
  [v3 setObject:self->_date forKeyedSubscript:@"Date"];
  v5 = [(MBStatus *)self backupStateName];
  [v3 setObject:v5 forKeyedSubscript:@"BackupState"];

  v6 = [(MBStatus *)self snapshotStateName];
  [v3 setObject:v6 forKeyedSubscript:@"SnapshotState"];

  v7 = [NSNumber numberWithBool:self->_fullBackup];
  [v3 setObject:v7 forKeyedSubscript:@"IsFullBackup"];

  return v3;
}

- (BOOL)writeToDrive:(id)a3 path:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MBStatus *)self propertyList];
  LOBYTE(a5) = [v9 uploadPropertyList:v10 toPath:v8 options:0 error:a5];

  return a5;
}

- (id)description
{
  v3 = objc_opt_class();
  [(MBStatus *)self version];
  v5 = v4;
  v6 = [(MBStatus *)self date];
  v7 = [(MBStatus *)self backupStateName];
  v8 = [(MBStatus *)self snapshotStateName];
  v9 = [NSString stringWithFormat:@"<%@: version=%0.1f, date=%@, backupState=%@, snapshotState=%@, fullBackup=%d>", v3, v5, v6, v7, v8, [(MBStatus *)self isFullBackup]];

  return v9;
}

@end