@interface MIBundleMetadata
+ (id)metadataFromURL:(id)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (MIBundleMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIBundleMetadata

- (MIBundleMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MIBundleMetadata *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installDate"];
    installDate = v5->_installDate;
    v5->_installDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installBuildVersion"];
    installBuildVersion = v5->_installBuildVersion;
    v5->_installBuildVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installType"];
    v5->_installType = [v10 unsignedIntegerValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderFailureReason"];
    v5->_placeholderFailureReason = [v11 unsignedIntegerValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderFailureUnderlyingError"];
    placeholderFailureUnderlyingError = v5->_placeholderFailureUnderlyingError;
    v5->_placeholderFailureUnderlyingError = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderFailureUnderlyingErrorSource"];
    v5->_placeholderFailureUnderlyingErrorSource = [v14 unsignedIntegerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchKitAppExecutableHash"];
    watchKitAppExecutableHash = v5->_watchKitAppExecutableHash;
    v5->_watchKitAppExecutableHash = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoInstallOverride"];
    v5->_autoInstallOverride = [v17 unsignedIntegerValue];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alternateIconName"];
    alternateIconName = v5->_alternateIconName;
    v5->_alternateIconName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkedParentBundleID"];
    linkedParentBundleID = v5->_linkedParentBundleID;
    v5->_linkedParentBundleID = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"linkedChildBundleIDs"];
    linkedChildBundleIDs = v5->_linkedChildBundleIDs;
    v5->_linkedChildBundleIDs = v25;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  installDate = [(MIBundleMetadata *)self installDate];
  v6 = [installDate copy];
  [v4 setInstallDate:v6];

  installBuildVersion = [(MIBundleMetadata *)self installBuildVersion];
  v8 = [installBuildVersion copy];
  [v4 setInstallBuildVersion:v8];

  [v4 setInstallType:{-[MIBundleMetadata installType](self, "installType")}];
  [v4 setPlaceholderFailureReason:{-[MIBundleMetadata placeholderFailureReason](self, "placeholderFailureReason")}];
  placeholderFailureUnderlyingError = [(MIBundleMetadata *)self placeholderFailureUnderlyingError];
  v10 = [placeholderFailureUnderlyingError copy];
  [v4 setPlaceholderFailureUnderlyingError:v10];

  [v4 setPlaceholderFailureUnderlyingErrorSource:{-[MIBundleMetadata placeholderFailureUnderlyingErrorSource](self, "placeholderFailureUnderlyingErrorSource")}];
  watchKitAppExecutableHash = [(MIBundleMetadata *)self watchKitAppExecutableHash];
  v12 = [watchKitAppExecutableHash copy];
  [v4 setWatchKitAppExecutableHash:v12];

  [v4 setAutoInstallOverride:{-[MIBundleMetadata autoInstallOverride](self, "autoInstallOverride")}];
  alternateIconName = [(MIBundleMetadata *)self alternateIconName];
  v14 = [alternateIconName copy];
  [v4 setAlternateIconName:v14];

  linkedParentBundleID = [(MIBundleMetadata *)self linkedParentBundleID];
  v16 = [linkedParentBundleID copy];
  [v4 setLinkedParentBundleID:v16];

  linkedChildBundleIDs = [(MIBundleMetadata *)self linkedChildBundleIDs];
  v18 = [linkedChildBundleIDs copy];
  [v4 setLinkedChildBundleIDs:v18];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  installDate = [(MIBundleMetadata *)self installDate];
  [coderCopy encodeObject:installDate forKey:@"installDate"];

  installBuildVersion = [(MIBundleMetadata *)self installBuildVersion];
  [coderCopy encodeObject:installBuildVersion forKey:@"installBuildVersion"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIBundleMetadata installType](self, "installType")}];
  [coderCopy encodeObject:v7 forKey:@"installType"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIBundleMetadata placeholderFailureReason](self, "placeholderFailureReason")}];
  [coderCopy encodeObject:v8 forKey:@"placeholderFailureReason"];

  placeholderFailureUnderlyingError = [(MIBundleMetadata *)self placeholderFailureUnderlyingError];
  [coderCopy encodeObject:placeholderFailureUnderlyingError forKey:@"placeholderFailureUnderlyingError"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIBundleMetadata placeholderFailureUnderlyingErrorSource](self, "placeholderFailureUnderlyingErrorSource")}];
  [coderCopy encodeObject:v10 forKey:@"placeholderFailureUnderlyingErrorSource"];

  watchKitAppExecutableHash = [(MIBundleMetadata *)self watchKitAppExecutableHash];
  [coderCopy encodeObject:watchKitAppExecutableHash forKey:@"watchKitAppExecutableHash"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MIBundleMetadata autoInstallOverride](self, "autoInstallOverride")}];
  [coderCopy encodeObject:v12 forKey:@"autoInstallOverride"];

  alternateIconName = [(MIBundleMetadata *)self alternateIconName];
  [coderCopy encodeObject:alternateIconName forKey:@"alternateIconName"];

  linkedParentBundleID = [(MIBundleMetadata *)self linkedParentBundleID];
  [coderCopy encodeObject:linkedParentBundleID forKey:@"linkedParentBundleID"];

  linkedChildBundleIDs = [(MIBundleMetadata *)self linkedChildBundleIDs];
  [coderCopy encodeObject:linkedChildBundleIDs forKey:@"linkedChildBundleIDs"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v30 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      installDate = [(MIBundleMetadata *)self installDate];
      installDate2 = [(MIBundleMetadata *)v5 installDate];
      v8 = MICompareObjects(installDate, installDate2);

      if (v8 && ([(MIBundleMetadata *)self installBuildVersion], v9 = objc_claimAutoreleasedReturnValue(), [(MIBundleMetadata *)v5 installBuildVersion], v10 = objc_claimAutoreleasedReturnValue(), v11 = MICompareObjects(v9, v10), v10, v9, v11) && (v12 = [(MIBundleMetadata *)self installType], v12 == [(MIBundleMetadata *)v5 installType]) && (v13 = [(MIBundleMetadata *)self placeholderFailureReason], v13 == [(MIBundleMetadata *)v5 placeholderFailureReason]) && ([(MIBundleMetadata *)self placeholderFailureUnderlyingError], v14 = objc_claimAutoreleasedReturnValue(), [(MIBundleMetadata *)v5 placeholderFailureUnderlyingError], v15 = objc_claimAutoreleasedReturnValue(), v16 = MICompareObjects(v14, v15), v15, v14, v16) && (v17 = [(MIBundleMetadata *)self placeholderFailureUnderlyingErrorSource], v17 == [(MIBundleMetadata *)v5 placeholderFailureUnderlyingErrorSource]) && ([(MIBundleMetadata *)self watchKitAppExecutableHash], v18 = objc_claimAutoreleasedReturnValue(), [(MIBundleMetadata *)v5 watchKitAppExecutableHash], v19 = objc_claimAutoreleasedReturnValue(), v20 = MICompareObjects(v18, v19), v19, v18, v20) && (v21 = [(MIBundleMetadata *)self autoInstallOverride], v21 == [(MIBundleMetadata *)v5 autoInstallOverride]) && ([(MIBundleMetadata *)self alternateIconName], v22 = objc_claimAutoreleasedReturnValue(), [(MIBundleMetadata *)v5 alternateIconName], v23 = objc_claimAutoreleasedReturnValue(), v24 = MICompareObjects(v22, v23), v23, v22, v24) && ([(MIBundleMetadata *)self linkedParentBundleID], v25 = objc_claimAutoreleasedReturnValue(), [(MIBundleMetadata *)v5 linkedParentBundleID], v26 = objc_claimAutoreleasedReturnValue(), v27 = MICompareObjects(v25, v26), v26, v25, v27))
      {
        linkedChildBundleIDs = [(MIBundleMetadata *)self linkedChildBundleIDs];
        linkedChildBundleIDs2 = [(MIBundleMetadata *)v5 linkedChildBundleIDs];
        v30 = MICompareObjects(linkedChildBundleIDs, linkedChildBundleIDs2);
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
  installDate = [(MIBundleMetadata *)self installDate];
  installBuildVersion = [(MIBundleMetadata *)self installBuildVersion];
  installType = [(MIBundleMetadata *)self installType];
  placeholderFailureReason = [(MIBundleMetadata *)self placeholderFailureReason];
  placeholderFailureUnderlyingError = [(MIBundleMetadata *)self placeholderFailureUnderlyingError];
  placeholderFailureUnderlyingErrorSource = [(MIBundleMetadata *)self placeholderFailureUnderlyingErrorSource];
  watchKitAppExecutableHash = [(MIBundleMetadata *)self watchKitAppExecutableHash];
  autoInstallOverride = [(MIBundleMetadata *)self autoInstallOverride];
  alternateIconName = [(MIBundleMetadata *)self alternateIconName];
  v13 = [v21 stringWithFormat:@"<%@<%p> installDate=%@, installBuildVersion=%@, installType=%lu, placeholderFailureReason=%lu, placeholderFailureUnderlyingError=%@, placeholderFailureUnderlyingErrorSource=%lu, watchKitAppExecutableHash=%@, autoInstallOverride=%lu, alternateIconName=%@", v20, self, installDate, installBuildVersion, installType, placeholderFailureReason, placeholderFailureUnderlyingError, placeholderFailureUnderlyingErrorSource, watchKitAppExecutableHash, autoInstallOverride, alternateIconName];

  v14 = MEMORY[0x1E696AEC0];
  linkedParentBundleID = [(MIBundleMetadata *)self linkedParentBundleID];
  linkedChildBundleIDs = [(MIBundleMetadata *)self linkedChildBundleIDs];
  v17 = [v14 stringWithFormat:@"%@, linkedParentBundleID=%@ linkedChildBundleIDs=%@", v13, linkedParentBundleID, linkedChildBundleIDs];

  v18 = [v17 stringByAppendingString:@">"];

  return v18;
}

+ (id)metadataFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v26 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:3 error:&v26];
  v7 = v26;
  v8 = v7;
  if (!v6)
  {
    domain = [v7 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      code = [v8 code];

      if (code == 260)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    path = [lCopy path];
    v10 = _CreateAndLogError("+[MIBundleMetadata metadataFromURL:error:]", 156, @"MIInstallerErrorDomain", 130, v8, 0, @"Failed to read bundle metadata from %@", v21, path);

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
      error = [v9 error];
      path2 = [lCopy path];
      v15 = _CreateAndLogError("+[MIBundleMetadata metadataFromURL:error:]", 169, @"MIInstallerErrorDomain", 130, error, 0, @"Failed to decode bundle metadata from %@", v14, path2);

      v10 = v15;
    }

    [v9 finishDecoding];
LABEL_14:
    v8 = v10;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  path3 = [lCopy path];
  v8 = _CreateAndLogError("+[MIBundleMetadata metadataFromURL:error:]", 163, @"MIInstallerErrorDomain", 130, v10, 0, @"Failed to read bundle metadata from %@", v19, path3);

LABEL_10:
  v9 = 0;
  v11 = 0;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v11)
  {
    v22 = v8;
    *error = v8;
  }

LABEL_17:
  v23 = v11;

  return v11;
}

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v7 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  encodedData = [v7 encodedData];

  if (encodedData)
  {
    v16 = 0;
    v9 = [encodedData writeToURL:lCopy options:268435457 error:&v16];
    v10 = v16;
    if ((v9 & 1) == 0)
    {
      path = [lCopy path];
      v13 = _CreateAndLogError("[MIBundleMetadata serializeToURL:error:]", 207, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to write serialized MIBundleMetadata to %@", v12, path);

      v10 = v13;
    }

    if (error && v10)
    {
      v14 = v10;
      *error = v10;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 == 0;
}

@end