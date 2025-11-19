@interface MIBundleMetadata
+ (id)metadataFromURL:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)serializeToURL:(id)a3 error:(id *)a4;
- (MIBundleMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIBundleMetadata

- (MIBundleMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIBundleMetadata *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installDate"];
    installDate = v5->_installDate;
    v5->_installDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installBuildVersion"];
    installBuildVersion = v5->_installBuildVersion;
    v5->_installBuildVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installType"];
    v5->_installType = [v10 unsignedIntegerValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderFailureReason"];
    v5->_placeholderFailureReason = [v11 unsignedIntegerValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderFailureUnderlyingError"];
    placeholderFailureUnderlyingError = v5->_placeholderFailureUnderlyingError;
    v5->_placeholderFailureUnderlyingError = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderFailureUnderlyingErrorSource"];
    v5->_placeholderFailureUnderlyingErrorSource = [v14 unsignedIntegerValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchKitAppExecutableHash"];
    watchKitAppExecutableHash = v5->_watchKitAppExecutableHash;
    v5->_watchKitAppExecutableHash = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoInstallOverride"];
    v5->_autoInstallOverride = [v17 unsignedIntegerValue];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alternateIconName"];
    alternateIconName = v5->_alternateIconName;
    v5->_alternateIconName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkedParentBundleID"];
    linkedParentBundleID = v5->_linkedParentBundleID;
    v5->_linkedParentBundleID = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"linkedChildBundleIDs"];
    linkedChildBundleIDs = v5->_linkedChildBundleIDs;
    v5->_linkedChildBundleIDs = v25;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(MIBundleMetadata *)self installDate];
  v6 = [v5 copy];
  [v4 setInstallDate:v6];

  v7 = [(MIBundleMetadata *)self installBuildVersion];
  v8 = [v7 copy];
  [v4 setInstallBuildVersion:v8];

  [v4 setInstallType:{-[MIBundleMetadata installType](self, "installType")}];
  [v4 setPlaceholderFailureReason:{-[MIBundleMetadata placeholderFailureReason](self, "placeholderFailureReason")}];
  v9 = [(MIBundleMetadata *)self placeholderFailureUnderlyingError];
  v10 = [v9 copy];
  [v4 setPlaceholderFailureUnderlyingError:v10];

  [v4 setPlaceholderFailureUnderlyingErrorSource:{-[MIBundleMetadata placeholderFailureUnderlyingErrorSource](self, "placeholderFailureUnderlyingErrorSource")}];
  v11 = [(MIBundleMetadata *)self watchKitAppExecutableHash];
  v12 = [v11 copy];
  [v4 setWatchKitAppExecutableHash:v12];

  [v4 setAutoInstallOverride:{-[MIBundleMetadata autoInstallOverride](self, "autoInstallOverride")}];
  v13 = [(MIBundleMetadata *)self alternateIconName];
  v14 = [v13 copy];
  [v4 setAlternateIconName:v14];

  v15 = [(MIBundleMetadata *)self linkedParentBundleID];
  v16 = [v15 copy];
  [v4 setLinkedParentBundleID:v16];

  v17 = [(MIBundleMetadata *)self linkedChildBundleIDs];
  v18 = [v17 copy];
  [v4 setLinkedChildBundleIDs:v18];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIBundleMetadata *)self installDate];
  [v4 encodeObject:v5 forKey:@"installDate"];

  v6 = [(MIBundleMetadata *)self installBuildVersion];
  [v4 encodeObject:v6 forKey:@"installBuildVersion"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIBundleMetadata installType](self, "installType")}];
  [v4 encodeObject:v7 forKey:@"installType"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIBundleMetadata placeholderFailureReason](self, "placeholderFailureReason")}];
  [v4 encodeObject:v8 forKey:@"placeholderFailureReason"];

  v9 = [(MIBundleMetadata *)self placeholderFailureUnderlyingError];
  [v4 encodeObject:v9 forKey:@"placeholderFailureUnderlyingError"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIBundleMetadata placeholderFailureUnderlyingErrorSource](self, "placeholderFailureUnderlyingErrorSource")}];
  [v4 encodeObject:v10 forKey:@"placeholderFailureUnderlyingErrorSource"];

  v11 = [(MIBundleMetadata *)self watchKitAppExecutableHash];
  [v4 encodeObject:v11 forKey:@"watchKitAppExecutableHash"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIBundleMetadata autoInstallOverride](self, "autoInstallOverride")}];
  [v4 encodeObject:v12 forKey:@"autoInstallOverride"];

  v13 = [(MIBundleMetadata *)self alternateIconName];
  [v4 encodeObject:v13 forKey:@"alternateIconName"];

  v14 = [(MIBundleMetadata *)self linkedParentBundleID];
  [v4 encodeObject:v14 forKey:@"linkedParentBundleID"];

  v15 = [(MIBundleMetadata *)self linkedChildBundleIDs];
  [v4 encodeObject:v15 forKey:@"linkedChildBundleIDs"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIBundleMetadata *)self installDate];
      v7 = [(MIBundleMetadata *)v5 installDate];
      v8 = MICompareObjects(v6, v7);

      if (v8 && ([(MIBundleMetadata *)self installBuildVersion], v9 = objc_claimAutoreleasedReturnValue(), [(MIBundleMetadata *)v5 installBuildVersion], v10 = objc_claimAutoreleasedReturnValue(), v11 = MICompareObjects(v9, v10), v10, v9, v11) && (v12 = [(MIBundleMetadata *)self installType], v12 == [(MIBundleMetadata *)v5 installType]) && (v13 = [(MIBundleMetadata *)self placeholderFailureReason], v13 == [(MIBundleMetadata *)v5 placeholderFailureReason]) && ([(MIBundleMetadata *)self placeholderFailureUnderlyingError], v14 = objc_claimAutoreleasedReturnValue(), [(MIBundleMetadata *)v5 placeholderFailureUnderlyingError], v15 = objc_claimAutoreleasedReturnValue(), v16 = MICompareObjects(v14, v15), v15, v14, v16) && (v17 = [(MIBundleMetadata *)self placeholderFailureUnderlyingErrorSource], v17 == [(MIBundleMetadata *)v5 placeholderFailureUnderlyingErrorSource]) && ([(MIBundleMetadata *)self watchKitAppExecutableHash], v18 = objc_claimAutoreleasedReturnValue(), [(MIBundleMetadata *)v5 watchKitAppExecutableHash], v19 = objc_claimAutoreleasedReturnValue(), v20 = MICompareObjects(v18, v19), v19, v18, v20) && (v21 = [(MIBundleMetadata *)self autoInstallOverride], v21 == [(MIBundleMetadata *)v5 autoInstallOverride]) && ([(MIBundleMetadata *)self alternateIconName], v22 = objc_claimAutoreleasedReturnValue(), [(MIBundleMetadata *)v5 alternateIconName], v23 = objc_claimAutoreleasedReturnValue(), v24 = MICompareObjects(v22, v23), v23, v22, v24) && ([(MIBundleMetadata *)self linkedParentBundleID], v25 = objc_claimAutoreleasedReturnValue(), [(MIBundleMetadata *)v5 linkedParentBundleID], v26 = objc_claimAutoreleasedReturnValue(), v27 = MICompareObjects(v25, v26), v26, v25, v27))
      {
        v28 = [(MIBundleMetadata *)self linkedChildBundleIDs];
        v29 = [(MIBundleMetadata *)v5 linkedChildBundleIDs];
        v30 = MICompareObjects(v28, v29);
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (id)description
{
  v21 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  v4 = [(MIBundleMetadata *)self installDate];
  v5 = [(MIBundleMetadata *)self installBuildVersion];
  v6 = [(MIBundleMetadata *)self installType];
  v7 = [(MIBundleMetadata *)self placeholderFailureReason];
  v8 = [(MIBundleMetadata *)self placeholderFailureUnderlyingError];
  v9 = [(MIBundleMetadata *)self placeholderFailureUnderlyingErrorSource];
  v10 = [(MIBundleMetadata *)self watchKitAppExecutableHash];
  v11 = [(MIBundleMetadata *)self autoInstallOverride];
  v12 = [(MIBundleMetadata *)self alternateIconName];
  v13 = [v21 stringWithFormat:@"<%@<%p> installDate=%@, installBuildVersion=%@, installType=%lu, placeholderFailureReason=%lu, placeholderFailureUnderlyingError=%@, placeholderFailureUnderlyingErrorSource=%lu, watchKitAppExecutableHash=%@, autoInstallOverride=%lu, alternateIconName=%@", v20, self, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(MIBundleMetadata *)self linkedParentBundleID];
  v16 = [(MIBundleMetadata *)self linkedChildBundleIDs];
  v17 = [v14 stringWithFormat:@"%@, linkedParentBundleID=%@ linkedChildBundleIDs=%@", v13, v15, v16];

  v18 = [v17 stringByAppendingString:@">"];

  return v18;
}

+ (id)metadataFromURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v26 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:3 error:&v26];
  v7 = v26;
  v8 = v7;
  if (!v6)
  {
    v16 = [v7 domain];
    if ([v16 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v17 = [v8 code];

      if (v17 == 260)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v20 = [v5 path];
    v10 = _CreateAndLogError("+[MIBundleMetadata metadataFromURL:error:]", 156, @"MIInstallerErrorDomain", 130, v8, 0, @"Failed to read bundle metadata from %@", v21, v20);

    v9 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v25 = v7;
  v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v6 error:&v25];
  v10 = v25;

  if (v9)
  {
    v11 = [v9 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    if (!v11)
    {
      v12 = [v9 error];
      v13 = [v5 path];
      v15 = _CreateAndLogError("+[MIBundleMetadata metadataFromURL:error:]", 169, @"MIInstallerErrorDomain", 130, v12, 0, @"Failed to decode bundle metadata from %@", v14, v13);

      v10 = v15;
    }

    [v9 finishDecoding];
LABEL_14:
    v8 = v10;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v18 = [v5 path];
  v8 = _CreateAndLogError("+[MIBundleMetadata metadataFromURL:error:]", 163, @"MIInstallerErrorDomain", 130, v10, 0, @"Failed to read bundle metadata from %@", v19, v18);

LABEL_10:
  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v11)
  {
    v22 = v8;
    *a4 = v8;
  }

LABEL_17:
  v23 = v11;

  return v11;
}

- (BOOL)serializeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v7 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  v8 = [v7 encodedData];

  if (v8)
  {
    v16 = 0;
    v9 = [v8 writeToURL:v6 options:268435457 error:&v16];
    v10 = v16;
    if ((v9 & 1) == 0)
    {
      v11 = [v6 path];
      v13 = _CreateAndLogError("[MIBundleMetadata serializeToURL:error:]", 207, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to write serialized MIBundleMetadata to %@", v12, v11);

      v10 = v13;
    }

    if (a4 && v10)
    {
      v14 = v10;
      *a4 = v10;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 == 0;
}

@end