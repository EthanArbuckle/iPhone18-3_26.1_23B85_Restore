@interface IXRemoteInstallConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForAppWithBundleID:(id)a3 localizedName:(id)a4 installMode:(unsigned __int8)a5;
- (unint64_t)hash;
- (void)setIconData:(id)a3 containingImageOfType:(unsigned __int8)a4;
@end

@implementation IXRemoteInstallConfiguration

- (id)initForAppWithBundleID:(id)a3 localizedName:(id)a4 installMode:(unsigned __int8)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = IXRemoteInstallConfiguration;
  v11 = [(IXRemoteInstallConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bundleID, a3);
    objc_storeStrong(&v12->_localizedName, a4);
    v12->_installMode = a5;
  }

  return v12;
}

- (void)setIconData:(id)a3 containingImageOfType:(unsigned __int8)a4
{
  v6 = [a3 copy];
  iconData = self->_iconData;
  self->_iconData = v6;

  self->_iconType = a4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(IXRemoteInstallConfiguration *)self bundleID];
  v7 = [(IXRemoteInstallConfiguration *)self localizedName];
  v8 = [v5 initForAppWithBundleID:v6 localizedName:v7 installMode:{-[IXRemoteInstallConfiguration installMode](self, "installMode")}];

  [v8 setImportance:{-[IXRemoteInstallConfiguration importance](self, "importance")}];
  v9 = [(IXRemoteInstallConfiguration *)self iconData];
  [v8 setIconData:v9 containingImageOfType:{-[IXRemoteInstallConfiguration iconType](self, "iconType")}];

  [v8 setStashMode:{-[IXRemoteInstallConfiguration stashMode](self, "stashMode")}];
  v10 = [(IXRemoteInstallConfiguration *)self deltaDirectoryURL];
  v11 = [v10 copyWithZone:a3];
  [v8 setDeltaDirectoryURL:v11];

  [v8 setPairedAutoInstallOverride:{-[IXRemoteInstallConfiguration pairedAutoInstallOverride](self, "pairedAutoInstallOverride")}];
  v12 = [(IXRemoteInstallConfiguration *)self storeMetadata];
  v13 = [v12 copyWithZone:a3];
  [v8 setStoreMetadata:v13];

  v14 = [(IXRemoteInstallConfiguration *)self sinfData];
  v15 = [v14 copyWithZone:a3];
  [v8 setSinfData:v15];

  v16 = [(IXRemoteInstallConfiguration *)self provisioningProfileDatas];
  v17 = [v16 copyWithZone:a3];
  [v8 setProvisioningProfileDatas:v17];

  [v8 setProvisioningProfileInstallFailureIsFatal:{-[IXRemoteInstallConfiguration provisioningProfileInstallFailureIsFatal](self, "provisioningProfileInstallFailureIsFatal")}];
  v18 = [(IXRemoteInstallConfiguration *)self remoteInstallTargetURL];
  v19 = [v18 copyWithZone:a3];
  [v8 setRemoteInstallTargetURL:v19];

  v20 = [(IXRemoteInstallConfiguration *)self remoteInstallTargetDirectoryURL];
  v21 = [v20 copyWithZone:a3];
  [v8 setRemoteInstallTargetDirectoryURL:v21];

  v22 = [(IXRemoteInstallConfiguration *)self remoteInstallTargetBundleName];
  v23 = [v22 copyWithZone:a3];
  [v8 setRemoteInstallTargetBundleName:v23];

  [v8 setInstallableType:{-[IXRemoteInstallConfiguration installableType](self, "installableType")}];
  v24 = [(IXRemoteInstallConfiguration *)self targetLastPathComponent];
  v25 = [v24 copyWithZone:a3];
  [v8 setTargetLastPathComponent:v25];

  v26 = [(IXRemoteInstallConfiguration *)self bundleVersion];
  v27 = [v26 copyWithZone:a3];
  [v8 setBundleVersion:v27];

  v28 = [(IXRemoteInstallConfiguration *)self geoJSONData];
  v29 = [v28 copyWithZone:a3];
  [v8 setGeoJSONData:v29];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [(IXRemoteInstallConfiguration *)self bundleID];
  v7 = [(IXRemoteInstallConfiguration *)v5 bundleID];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if ((v8 != 0) != (v9 != 0) || v8 && v9 && ![v8 isEqual:v9])
  {
    goto LABEL_8;
  }

  v11 = [(IXRemoteInstallConfiguration *)self localizedName];
  v12 = [(IXRemoteInstallConfiguration *)v5 localizedName];
  v8 = v11;
  v13 = v12;
  v10 = v13;
  if ((v8 != 0) != (v13 != 0) || v8 && v13 && ![v8 isEqual:v13])
  {
LABEL_8:

    v14 = 0;
  }

  else
  {

    v16 = [(IXRemoteInstallConfiguration *)self installMode];
    if (v16 != [(IXRemoteInstallConfiguration *)v5 installMode])
    {
      goto LABEL_35;
    }

    v17 = [(IXRemoteInstallConfiguration *)self importance];
    if (v17 != [(IXRemoteInstallConfiguration *)v5 importance])
    {
      goto LABEL_35;
    }

    v18 = [(IXRemoteInstallConfiguration *)self iconData];
    v19 = [(IXRemoteInstallConfiguration *)v5 iconData];
    v20 = sub_100006E08(v18, v19);

    if (!v20)
    {
      goto LABEL_35;
    }

    v21 = [(IXRemoteInstallConfiguration *)self iconType];
    if (v21 != [(IXRemoteInstallConfiguration *)v5 iconType])
    {
      goto LABEL_35;
    }

    v22 = [(IXRemoteInstallConfiguration *)self stashMode];
    if (v22 != [(IXRemoteInstallConfiguration *)v5 stashMode])
    {
      goto LABEL_35;
    }

    v23 = [(IXRemoteInstallConfiguration *)self deltaDirectoryURL];
    v24 = [(IXRemoteInstallConfiguration *)v5 deltaDirectoryURL];
    v25 = sub_100006E08(v23, v24);

    if (!v25)
    {
      goto LABEL_35;
    }

    v26 = [(IXRemoteInstallConfiguration *)self pairedAutoInstallOverride];
    if (v26 != [(IXRemoteInstallConfiguration *)v5 pairedAutoInstallOverride])
    {
      goto LABEL_35;
    }

    v27 = [(IXRemoteInstallConfiguration *)self storeMetadata];
    v28 = [(IXRemoteInstallConfiguration *)v5 storeMetadata];
    v29 = sub_100006E08(v27, v28);

    if (!v29)
    {
      goto LABEL_35;
    }

    v30 = [(IXRemoteInstallConfiguration *)self sinfData];
    v31 = [(IXRemoteInstallConfiguration *)v5 sinfData];
    v32 = sub_100006E08(v30, v31);

    if (!v32)
    {
      goto LABEL_35;
    }

    v33 = [(IXRemoteInstallConfiguration *)self provisioningProfileDatas];
    v34 = [(IXRemoteInstallConfiguration *)v5 provisioningProfileDatas];
    v35 = sub_100006E08(v33, v34);

    if (!v35)
    {
      goto LABEL_35;
    }

    v36 = [(IXRemoteInstallConfiguration *)self provisioningProfileInstallFailureIsFatal];
    if (v36 != [(IXRemoteInstallConfiguration *)v5 provisioningProfileInstallFailureIsFatal])
    {
      goto LABEL_35;
    }

    v37 = [(IXRemoteInstallConfiguration *)self remoteInstallTargetURL];
    v38 = [(IXRemoteInstallConfiguration *)v5 remoteInstallTargetURL];
    v39 = sub_100006E08(v37, v38);

    if (!v39)
    {
      goto LABEL_35;
    }

    v40 = [(IXRemoteInstallConfiguration *)self remoteInstallTargetDirectoryURL];
    v41 = [(IXRemoteInstallConfiguration *)v5 remoteInstallTargetDirectoryURL];
    v42 = sub_100006E08(v40, v41);

    if (!v42)
    {
      goto LABEL_35;
    }

    v43 = [(IXRemoteInstallConfiguration *)self remoteInstallTargetBundleName];
    v44 = [(IXRemoteInstallConfiguration *)v5 remoteInstallTargetBundleName];
    v45 = sub_100006E08(v43, v44);

    if (!v45)
    {
      goto LABEL_35;
    }

    v46 = [(IXRemoteInstallConfiguration *)self installableType];
    if (v46 != [(IXRemoteInstallConfiguration *)v5 installableType])
    {
      goto LABEL_35;
    }

    v47 = [(IXRemoteInstallConfiguration *)self targetLastPathComponent];
    v48 = [(IXRemoteInstallConfiguration *)v5 targetLastPathComponent];
    v49 = sub_100006E08(v47, v48);

    if (!v49 || ([(IXRemoteInstallConfiguration *)self bundleVersion], v50 = objc_claimAutoreleasedReturnValue(), [(IXRemoteInstallConfiguration *)v5 bundleVersion], v51 = objc_claimAutoreleasedReturnValue(), v52 = sub_100006E08(v50, v51), v51, v50, !v52))
    {
LABEL_35:
      v14 = 0;
      goto LABEL_10;
    }

    v8 = [(IXRemoteInstallConfiguration *)self geoJSONData];
    v10 = [(IXRemoteInstallConfiguration *)v5 geoJSONData];
    v14 = sub_100006E08(v8, v10);
  }

LABEL_10:
LABEL_13:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(IXRemoteInstallConfiguration *)self bundleID];
  v4 = [v3 hash];

  v5 = [(IXRemoteInstallConfiguration *)self localizedName];
  v6 = [v5 hash] ^ v4;

  v7 = v6 ^ [(IXRemoteInstallConfiguration *)self installMode];
  v8 = [(IXRemoteInstallConfiguration *)self importance];
  v9 = [(IXRemoteInstallConfiguration *)self iconData];
  v10 = v7 ^ v8 ^ [v9 hash];

  v11 = [(IXRemoteInstallConfiguration *)self iconType];
  v12 = v11 ^ [(IXRemoteInstallConfiguration *)self stashMode];
  v13 = [(IXRemoteInstallConfiguration *)self deltaDirectoryURL];
  v14 = v10 ^ v12 ^ [v13 hash];

  v15 = [(IXRemoteInstallConfiguration *)self pairedAutoInstallOverride];
  v16 = [(IXRemoteInstallConfiguration *)self storeMetadata];
  v17 = v15 ^ [v16 hash];

  v18 = [(IXRemoteInstallConfiguration *)self sinfData];
  v19 = v17 ^ [v18 hash];

  v20 = [(IXRemoteInstallConfiguration *)self provisioningProfileDatas];
  v21 = v14 ^ v19 ^ [v20 hash];

  v22 = [(IXRemoteInstallConfiguration *)self provisioningProfileInstallFailureIsFatal];
  v23 = [(IXRemoteInstallConfiguration *)self remoteInstallTargetURL];
  v24 = v22 ^ [v23 hash];

  v25 = [(IXRemoteInstallConfiguration *)self remoteInstallTargetDirectoryURL];
  v26 = v24 ^ [v25 hash];

  v27 = [(IXRemoteInstallConfiguration *)self remoteInstallTargetBundleName];
  v28 = v26 ^ [v27 hash];

  v29 = v21 ^ v28 ^ [(IXRemoteInstallConfiguration *)self installableType];
  v30 = [(IXRemoteInstallConfiguration *)self targetLastPathComponent];
  v31 = [v30 hash];

  v32 = [(IXRemoteInstallConfiguration *)self bundleVersion];
  v33 = v31 ^ [v32 hash];

  v34 = [(IXRemoteInstallConfiguration *)self geoJSONData];
  v35 = v33 ^ [v34 hash];

  return v29 ^ v35;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IXRemoteInstallConfiguration *)self bundleID];
  v6 = [(IXRemoteInstallConfiguration *)self localizedName];
  v7 = [(IXRemoteInstallConfiguration *)self installMode];
  v8 = [(IXRemoteInstallConfiguration *)self deltaScheme];
  v9 = [(IXRemoteInstallConfiguration *)self deltaDirectoryURL];
  v10 = [v9 path];
  v11 = [NSString stringWithFormat:@"<%@ 0x%p: bundleID=%@ localizedName=%@ installMode=%hhu deltaScheme=%lu deltaDirectory=%@>", v4, self, v5, v6, v7, v8, v10];

  return v11;
}

@end