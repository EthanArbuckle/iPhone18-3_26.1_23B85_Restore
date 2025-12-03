@interface IXRemoteInstallResult
- (BOOL)isEqual:(id)equal;
- (IXRemoteInstallResult)initWithDBUUID:(id)d dbSequenceNumber:(id)number URLOfInstalledApp:(id)app persistentIdentifier:(id)identifier;
- (IXRemoteInstallResult)initWithURLOfInstalledApp:(id)app persistentIdentifier:(id)identifier;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation IXRemoteInstallResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dbUUID = [(IXRemoteInstallResult *)self dbUUID];
      dbUUID2 = [(IXRemoteInstallResult *)v5 dbUUID];
      v8 = dbUUID;
      v9 = dbUUID2;
      v10 = v9;
      if ((v8 != 0) != (v9 != 0) || v8 && v9 && ![v8 isEqual:v9])
      {
        goto LABEL_16;
      }

      dbSequenceNumber = [(IXRemoteInstallResult *)self dbSequenceNumber];
      dbSequenceNumber2 = [(IXRemoteInstallResult *)v5 dbSequenceNumber];
      v8 = dbSequenceNumber;
      v13 = dbSequenceNumber2;
      v10 = v13;
      if ((v8 != 0) != (v13 != 0) || v8 && v13 && ![v8 isEqual:v13])
      {
        goto LABEL_16;
      }

      uRLOfInstalledApp = [(IXRemoteInstallResult *)self URLOfInstalledApp];
      uRLOfInstalledApp2 = [(IXRemoteInstallResult *)v5 URLOfInstalledApp];
      v8 = uRLOfInstalledApp;
      v16 = uRLOfInstalledApp2;
      v10 = v16;
      if ((v8 != 0) != (v16 != 0) || v8 && v16 && ![v8 isEqual:v16])
      {
        goto LABEL_16;
      }

      persistentIdentifier = [(IXRemoteInstallResult *)self persistentIdentifier];
      persistentIdentifier2 = [(IXRemoteInstallResult *)v5 persistentIdentifier];
      v8 = persistentIdentifier;
      v19 = persistentIdentifier2;
      v10 = v19;
      if ((v8 != 0) != (v19 != 0) || v8 && v19 && ![v8 isEqual:v19])
      {
LABEL_16:
        v20 = 0;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (unint64_t)hash
{
  dbUUID = [(IXRemoteInstallResult *)self dbUUID];
  v4 = [dbUUID hash];

  dbSequenceNumber = [(IXRemoteInstallResult *)self dbSequenceNumber];
  v6 = [dbSequenceNumber hash] ^ v4;

  uRLOfInstalledApp = [(IXRemoteInstallResult *)self URLOfInstalledApp];
  v8 = [uRLOfInstalledApp hash];

  persistentIdentifier = [(IXRemoteInstallResult *)self persistentIdentifier];
  v10 = v8 ^ [persistentIdentifier hash];

  return v6 ^ v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  dbUUID = [(IXRemoteInstallResult *)self dbUUID];
  dbSequenceNumber = [(IXRemoteInstallResult *)self dbSequenceNumber];
  uRLOfInstalledApp = [(IXRemoteInstallResult *)self URLOfInstalledApp];
  v8 = [NSString stringWithFormat:@"<%@ 0x%p: dbUUID=%@ dbSequenceNumber=%@ URLOfInstalledApp=%@>", v4, self, dbUUID, dbSequenceNumber, uRLOfInstalledApp];

  return v8;
}

- (IXRemoteInstallResult)initWithDBUUID:(id)d dbSequenceNumber:(id)number URLOfInstalledApp:(id)app persistentIdentifier:(id)identifier
{
  dCopy = d;
  numberCopy = number;
  appCopy = app;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = IXRemoteInstallResult;
  v14 = [(IXRemoteInstallResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(IXRemoteInstallResult *)v14 setDbUUID:dCopy];
    [(IXRemoteInstallResult *)v15 setDbSequenceNumber:numberCopy];
    [(IXRemoteInstallResult *)v15 setURLOfInstalledApp:appCopy];
    [(IXRemoteInstallResult *)v15 setPersistentIdentifier:identifierCopy];
  }

  return v15;
}

- (IXRemoteInstallResult)initWithURLOfInstalledApp:(id)app persistentIdentifier:(id)identifier
{
  appCopy = app;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = IXRemoteInstallResult;
  v8 = [(IXRemoteInstallResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IXRemoteInstallResult *)v8 setURLOfInstalledApp:appCopy];
    [(IXRemoteInstallResult *)v9 setPersistentIdentifier:identifierCopy];
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v10[0] = @"DBUUID";
  dbUUID = [(IXRemoteInstallResult *)self dbUUID];
  uUIDString = [dbUUID UUIDString];
  v11[0] = uUIDString;
  v10[1] = @"DBSequenceNumber";
  dbSequenceNumber = [(IXRemoteInstallResult *)self dbSequenceNumber];
  v11[1] = dbSequenceNumber;
  v10[2] = @"InstallPath";
  uRLOfInstalledApp = [(IXRemoteInstallResult *)self URLOfInstalledApp];
  path = [uRLOfInstalledApp path];
  v11[2] = path;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

@end