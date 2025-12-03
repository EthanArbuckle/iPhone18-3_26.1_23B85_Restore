@interface DMPluginParameters
+ (id)backupDeviceUUIDFromDispositionSupersetOfContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (DMPluginParameters)initWithDispositionSupersetOfContext:(id)context backupDeviceUUID:(id)d;
@end

@implementation DMPluginParameters

- (DMPluginParameters)initWithDispositionSupersetOfContext:(id)context backupDeviceUUID:(id)d
{
  contextCopy = context;
  dCopy = d;
  v11.receiver = self;
  v11.super_class = DMPluginParameters;
  v8 = [(DMPluginParameters *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(DMPluginParameters *)v8 setDispositionSupersetOfContext:contextCopy];
    [(DMPluginParameters *)v9 setBackupDeviceUUID:dCopy];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_4;
  }

  dispositionSupersetOfContext = [(DMPluginParameters *)self dispositionSupersetOfContext];
  dispositionSupersetOfContext2 = [equalCopy dispositionSupersetOfContext];
  v7 = dispositionSupersetOfContext2;
  if (dispositionSupersetOfContext == dispositionSupersetOfContext2)
  {
  }

  else
  {
    dispositionSupersetOfContext3 = [(DMPluginParameters *)self dispositionSupersetOfContext];
    dispositionSupersetOfContext4 = [equalCopy dispositionSupersetOfContext];
    v10 = [dispositionSupersetOfContext3 isEqualToDictionary:dispositionSupersetOfContext4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  backupDeviceUUID = [(DMPluginParameters *)self backupDeviceUUID];
  backupDeviceUUID2 = [equalCopy backupDeviceUUID];
  if (backupDeviceUUID == backupDeviceUUID2)
  {
    v11 = 1;
  }

  else
  {
    backupDeviceUUID3 = [(DMPluginParameters *)self backupDeviceUUID];
    backupDeviceUUID4 = [equalCopy backupDeviceUUID];
    v11 = [backupDeviceUUID3 isEqualToString:backupDeviceUUID4];
  }

LABEL_10:
  return v11;
}

+ (id)backupDeviceUUIDFromDispositionSupersetOfContext:(id)context
{
  v3 = [context objectForKeyedSubscript:@"BackupDeviceUUID"];
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