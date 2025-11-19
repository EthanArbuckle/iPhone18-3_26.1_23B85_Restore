@interface IXRemoteInstallResult
- (BOOL)isEqual:(id)a3;
- (IXRemoteInstallResult)initWithDBUUID:(id)a3 dbSequenceNumber:(id)a4 URLOfInstalledApp:(id)a5 persistentIdentifier:(id)a6;
- (IXRemoteInstallResult)initWithURLOfInstalledApp:(id)a3 persistentIdentifier:(id)a4;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation IXRemoteInstallResult

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IXRemoteInstallResult *)self dbUUID];
      v7 = [(IXRemoteInstallResult *)v5 dbUUID];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if ((v8 != 0) != (v9 != 0) || v8 && v9 && ![v8 isEqual:v9])
      {
        goto LABEL_16;
      }

      v11 = [(IXRemoteInstallResult *)self dbSequenceNumber];
      v12 = [(IXRemoteInstallResult *)v5 dbSequenceNumber];
      v8 = v11;
      v13 = v12;
      v10 = v13;
      if ((v8 != 0) != (v13 != 0) || v8 && v13 && ![v8 isEqual:v13])
      {
        goto LABEL_16;
      }

      v14 = [(IXRemoteInstallResult *)self URLOfInstalledApp];
      v15 = [(IXRemoteInstallResult *)v5 URLOfInstalledApp];
      v8 = v14;
      v16 = v15;
      v10 = v16;
      if ((v8 != 0) != (v16 != 0) || v8 && v16 && ![v8 isEqual:v16])
      {
        goto LABEL_16;
      }

      v17 = [(IXRemoteInstallResult *)self persistentIdentifier];
      v18 = [(IXRemoteInstallResult *)v5 persistentIdentifier];
      v8 = v17;
      v19 = v18;
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
  v3 = [(IXRemoteInstallResult *)self dbUUID];
  v4 = [v3 hash];

  v5 = [(IXRemoteInstallResult *)self dbSequenceNumber];
  v6 = [v5 hash] ^ v4;

  v7 = [(IXRemoteInstallResult *)self URLOfInstalledApp];
  v8 = [v7 hash];

  v9 = [(IXRemoteInstallResult *)self persistentIdentifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IXRemoteInstallResult *)self dbUUID];
  v6 = [(IXRemoteInstallResult *)self dbSequenceNumber];
  v7 = [(IXRemoteInstallResult *)self URLOfInstalledApp];
  v8 = [NSString stringWithFormat:@"<%@ 0x%p: dbUUID=%@ dbSequenceNumber=%@ URLOfInstalledApp=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (IXRemoteInstallResult)initWithDBUUID:(id)a3 dbSequenceNumber:(id)a4 URLOfInstalledApp:(id)a5 persistentIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = IXRemoteInstallResult;
  v14 = [(IXRemoteInstallResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(IXRemoteInstallResult *)v14 setDbUUID:v10];
    [(IXRemoteInstallResult *)v15 setDbSequenceNumber:v11];
    [(IXRemoteInstallResult *)v15 setURLOfInstalledApp:v12];
    [(IXRemoteInstallResult *)v15 setPersistentIdentifier:v13];
  }

  return v15;
}

- (IXRemoteInstallResult)initWithURLOfInstalledApp:(id)a3 persistentIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IXRemoteInstallResult;
  v8 = [(IXRemoteInstallResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(IXRemoteInstallResult *)v8 setURLOfInstalledApp:v6];
    [(IXRemoteInstallResult *)v9 setPersistentIdentifier:v7];
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v10[0] = @"DBUUID";
  v3 = [(IXRemoteInstallResult *)self dbUUID];
  v4 = [v3 UUIDString];
  v11[0] = v4;
  v10[1] = @"DBSequenceNumber";
  v5 = [(IXRemoteInstallResult *)self dbSequenceNumber];
  v11[1] = v5;
  v10[2] = @"InstallPath";
  v6 = [(IXRemoteInstallResult *)self URLOfInstalledApp];
  v7 = [v6 path];
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

@end