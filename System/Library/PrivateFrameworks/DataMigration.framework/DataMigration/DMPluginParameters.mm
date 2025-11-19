@interface DMPluginParameters
+ (id)backupDeviceUUIDFromDispositionSupersetOfContext:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DMPluginParameters)initWithDispositionSupersetOfContext:(id)a3 backupDeviceUUID:(id)a4;
@end

@implementation DMPluginParameters

- (DMPluginParameters)initWithDispositionSupersetOfContext:(id)a3 backupDeviceUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DMPluginParameters;
  v8 = [(DMPluginParameters *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(DMPluginParameters *)v8 setDispositionSupersetOfContext:v6];
    [(DMPluginParameters *)v9 setBackupDeviceUUID:v7];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_4;
  }

  v5 = [(DMPluginParameters *)self dispositionSupersetOfContext];
  v6 = [v4 dispositionSupersetOfContext];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(DMPluginParameters *)self dispositionSupersetOfContext];
    v9 = [v4 dispositionSupersetOfContext];
    v10 = [v8 isEqualToDictionary:v9];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = [(DMPluginParameters *)self backupDeviceUUID];
  v13 = [v4 backupDeviceUUID];
  if (v12 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = [(DMPluginParameters *)self backupDeviceUUID];
    v15 = [v4 backupDeviceUUID];
    v11 = [v14 isEqualToString:v15];
  }

LABEL_10:
  return v11;
}

+ (id)backupDeviceUUIDFromDispositionSupersetOfContext:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"BackupDeviceUUID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end