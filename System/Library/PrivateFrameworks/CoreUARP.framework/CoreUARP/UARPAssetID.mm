@interface UARPAssetID
- (BOOL)analyticsIsEqual:(id)equal;
- (BOOL)isDeploymentAllowed;
- (BOOL)isEqual:(id)equal;
- (NSString)releaseDate;
- (UARPAssetID)initWithCoder:(id)coder;
- (UARPAssetID)initWithLocationType:(int64_t)type assetTag:(id)tag filePath:(id)path;
- (UARPAssetID)initWithLocationType:(int64_t)type assetTag:(id)tag url:(id)url;
- (UARPAssetID)initWithLocationType:(int64_t)type remotePath:(id)path;
- (UARPAssetID)initWithLocationType:(int64_t)type remotePath:(id)path releaseNotesRemotePath:(id)remotePath;
- (UARPAssetID)initWithLocationType:(int64_t)type remoteURL:(id)l;
- (UARPAssetID)initWithLocationType:(int64_t)type remoteURL:(id)l releaseNotesRemoteURL:(id)rL;
- (const)typeString;
- (id)_createUARPDeploymentRules:(id)rules;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)rawDescription;
- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string;
- (void)encodeWithCoder:(id)coder;
- (void)processUARPDeploymentRules:(id)rules;
- (void)restoreDefaultStatus;
- (void)setAssetReleaseDate:(id)date;
- (void)setAssetVersion:(id)version;
- (void)setAssetVersionNumber:(id)number;
- (void)setDeploymentAllowed:(BOOL)allowed;
- (void)setDeploymentDay:(id)day;
- (void)setDeploymentPercent:(id)percent;
- (void)setDeploymentRules:(id)rules;
- (void)setDownloadStatus:(int64_t)status;
- (void)setFirmwareFileSize:(id)size;
- (void)setFirmwareHash:(id)hash;
- (void)setIsUrgentUpdate:(BOOL)update;
- (void)setLocalPath:(id)path;
- (void)setLocalURL:(id)l;
- (void)setModelNumber:(id)number;
- (void)setReleaseDate:(id)date;
- (void)setReleaseNotesAvailabilityStatus:(int64_t)status;
- (void)setReleaseNotesDownloadStatus:(int64_t)status;
- (void)setReleaseNotesFileSize:(id)size;
- (void)setReleaseNotesLocalPath:(id)path;
- (void)setReleaseNotesLocalURL:(id)l;
- (void)setReleaseNotesRemotePath:(id)path;
- (void)setReleaseNotesRemoteURL:(id)l;
- (void)setRemoteBuildManifestPlistPath:(id)path;
- (void)setSignatureValidationNeeded:(BOOL)needed;
- (void)setTag:(id)tag;
- (void)setTatsuServerURL:(id)l;
- (void)setUpdateAvailabilityStatus:(int64_t)status;
- (void)setValidationStatus:(int64_t)status;
@end

@implementation UARPAssetID

- (BOOL)analyticsIsEqual:(id)equal
{
  equalCopy = equal;
  type = [(UARPAssetID *)self type];
  if (type == [equalCopy type])
  {
    remoteURL = [(UARPAssetID *)self remoteURL];
    remoteURL2 = [equalCopy remoteURL];
    if ([remoteURL isEqual:remoteURL2])
    {
      assetVersion = [(UARPAssetID *)self assetVersion];
      assetVersion2 = [equalCopy assetVersion];
      v10 = [assetVersion isEqual:assetVersion2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UARPAssetID)initWithLocationType:(int64_t)type remotePath:(id)path
{
  v6 = [MEMORY[0x277CBEBC0] URLWithString:path];
  v7 = [(UARPAssetID *)self initWithLocationType:type remoteURL:v6];

  return v7;
}

- (UARPAssetID)initWithLocationType:(int64_t)type assetTag:(id)tag filePath:(id)path
{
  v8 = MEMORY[0x277CBEBC0];
  tagCopy = tag;
  v10 = [v8 URLWithString:path];
  v11 = [(UARPAssetID *)self initWithLocationType:type assetTag:tagCopy url:v10];

  return v11;
}

- (UARPAssetID)initWithLocationType:(int64_t)type assetTag:(id)tag url:(id)url
{
  tagCopy = tag;
  urlCopy = url;
  v11 = [(UARPAssetID *)self initWithLocationType:type remoteURL:urlCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_tag, tag);
    v13 = [urlCopy copy];
    localURL = v12->_localURL;
    v12->_localURL = v13;
  }

  return v12;
}

- (UARPAssetID)initWithLocationType:(int64_t)type remoteURL:(id)l
{
  lCopy = l;
  v20.receiver = self;
  v20.super_class = UARPAssetID;
  v7 = [(UARPAssetID *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v7->_downloadStatus = 0;
    v7->_updateAvailabilityStatus = 0;
    v9 = os_log_create("com.apple.accessoryupdater.uarp", "assetID");
    log = v8->_log;
    v8->_log = v9;

    v8->_signatureValidationNeeded = 1;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activeAccessoriesForStaging = v8->_activeAccessoriesForStaging;
    v8->_activeAccessoriesForStaging = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    downstreamAssetIDs = v8->_downstreamAssetIDs;
    v8->_downstreamAssetIDs = v13;

    v8->_reportProgressToDelegates = 1;
    v8->_deploymentAllowed = 1;
    v15 = [lCopy copy];
    remoteURL = v8->_remoteURL;
    v8->_remoteURL = v15;

    if (!lCopy)
    {
      v17 = UARPAssetLocationTypeToURL(v8->_type);
      v18 = v8->_remoteURL;
      v8->_remoteURL = v17;
    }
  }

  return v8;
}

- (UARPAssetID)initWithLocationType:(int64_t)type remotePath:(id)path releaseNotesRemotePath:(id)remotePath
{
  remotePathCopy = remotePath;
  v9 = [(UARPAssetID *)self initWithLocationType:type remotePath:path];
  v10 = v9;
  if (remotePathCopy && v9)
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:remotePathCopy];
    releaseNotesRemoteURL = v10->_releaseNotesRemoteURL;
    v10->_releaseNotesRemoteURL = v11;
  }

  return v10;
}

- (UARPAssetID)initWithLocationType:(int64_t)type remoteURL:(id)l releaseNotesRemoteURL:(id)rL
{
  rLCopy = rL;
  v9 = [(UARPAssetID *)self initWithLocationType:type remoteURL:l];
  if (v9)
  {
    v10 = [rLCopy copy];
    releaseNotesRemoteURL = v9->_releaseNotesRemoteURL;
    v9->_releaseNotesRemoteURL = v10;
  }

  return v9;
}

- (UARPAssetID)initWithCoder:(id)coder
{
  v54[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v51.receiver = self;
  v51.super_class = UARPAssetID;
  v5 = [(UARPAssetID *)&v51 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteURL"];
    remoteURL = v5->_remoteURL;
    v5->_remoteURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetVersionNumber"];
    assetVersionNumber = v5->_assetVersionNumber;
    v5->_assetVersionNumber = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteBuildManifestPlistPath"];
    remoteBuildManifestPlistPath = v5->_remoteBuildManifestPlistPath;
    v5->_remoteBuildManifestPlistPath = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localURL"];
    localURL = v5->_localURL;
    v5->_localURL = v14;

    v5->_downloadStatus = [coderCopy decodeIntegerForKey:@"downloadStatus"];
    v5->_updateAvailabilityStatus = [coderCopy decodeIntegerForKey:@"updateAvailabilityStatus"];
    v5->_releaseNotesDownloadStatus = [coderCopy decodeIntegerForKey:@"releaseNotesDownloadStatus"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotesRemoteURL"];
    releaseNotesRemoteURL = v5->_releaseNotesRemoteURL;
    v5->_releaseNotesRemoteURL = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotesLocalURL"];
    releaseNotesLocalURL = v5->_releaseNotesLocalURL;
    v5->_releaseNotesLocalURL = v18;

    v5->_releaseNotesAvailabilityStatus = [coderCopy decodeIntegerForKey:@"releaseNotesAvailabilityStatus"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotesFileSize"];
    releaseNotesFileSize = v5->_releaseNotesFileSize;
    v5->_releaseNotesFileSize = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firmwareFileSize"];
    firmwareFileSize = v5->_firmwareFileSize;
    v5->_firmwareFileSize = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetReleaseDate"];
    assetReleaseDate = v5->_assetReleaseDate;
    v5->_assetReleaseDate = v24;

    v5->_deploymentAllowed = [coderCopy decodeBoolForKey:@"deploymentAllowed"];
    v5->_signatureValidationNeeded = [coderCopy decodeBoolForKey:@"signatureValidationNeeded"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v5->_tag;
    v5->_tag = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firmwareHash"];
    firmwareHash = v5->_firmwareHash;
    v5->_firmwareHash = v28;

    v5->_reportProgressToDelegates = [coderCopy decodeBoolForKey:@"reportProgressToDelegates"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelNumber"];
    modelNumber = v5->_modelNumber;
    v5->_modelNumber = v30;

    v32 = MEMORY[0x277CBEB98];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    v34 = [v32 setWithArray:v33];

    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"downstreamAssetIDs"];
    downstreamAssetIDs = v5->_downstreamAssetIDs;
    v5->_downstreamAssetIDs = v35;

    if (!v5->_downstreamAssetIDs)
    {
      v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v38 = v5->_downstreamAssetIDs;
      v5->_downstreamAssetIDs = v37;
    }

    v39 = MEMORY[0x277CBEB98];
    v53[0] = objc_opt_class();
    v53[1] = objc_opt_class();
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    v41 = [v39 setWithArray:v40];

    v42 = [coderCopy decodeObjectOfClasses:v41 forKey:@"activeAccessoriesForStaging"];
    activeAccessoriesForStaging = v5->_activeAccessoriesForStaging;
    v5->_activeAccessoriesForStaging = v42;

    v44 = MEMORY[0x277CBEB98];
    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v46 = [v44 setWithArray:v45];

    v47 = [coderCopy decodeObjectOfClasses:v46 forKey:@"deploymentRules"];
    deploymentRules = v5->_deploymentRules;
    v5->_deploymentRules = v47;

    v5->_isUrgentUpdate = [coderCopy decodeBoolForKey:@"isUrgentUpdate"];
  }

  v49 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_remoteURL forKey:@"remoteURL"];
  [coderCopy encodeObject:self->_assetVersion forKey:@"assetVersion"];
  [coderCopy encodeObject:self->_assetVersionNumber forKey:@"assetVersionNumber"];
  [coderCopy encodeObject:self->_remoteBuildManifestPlistPath forKey:@"remoteBuildManifestPlistPath"];
  [coderCopy encodeObject:self->_localURL forKey:@"localURL"];
  [coderCopy encodeInteger:self->_downloadStatus forKey:@"downloadStatus"];
  [coderCopy encodeInteger:self->_updateAvailabilityStatus forKey:@"updateAvailabilityStatus"];
  [coderCopy encodeInteger:self->_releaseNotesDownloadStatus forKey:@"releaseNotesDownloadStatus"];
  [coderCopy encodeObject:self->_releaseNotesRemoteURL forKey:@"releaseNotesRemoteURL"];
  [coderCopy encodeObject:self->_releaseNotesLocalURL forKey:@"releaseNotesLocalURL"];
  [coderCopy encodeInteger:self->_releaseNotesAvailabilityStatus forKey:@"releaseNotesAvailabilityStatus"];
  [coderCopy encodeObject:self->_releaseNotesFileSize forKey:@"releaseNotesFileSize"];
  [coderCopy encodeObject:self->_firmwareFileSize forKey:@"firmwareFileSize"];
  [coderCopy encodeObject:self->_assetReleaseDate forKey:@"assetReleaseDate"];
  [coderCopy encodeObject:self->_deploymentRules forKey:@"deploymentRules"];
  [coderCopy encodeBool:self->_deploymentAllowed forKey:@"deploymentAllowed"];
  [coderCopy encodeBool:self->_signatureValidationNeeded forKey:@"signatureValidationNeeded"];
  [coderCopy encodeObject:self->_tag forKey:@"tag"];
  [coderCopy encodeObject:self->_firmwareHash forKey:@"firmwareHash"];
  [coderCopy encodeObject:self->_activeAccessoriesForStaging forKey:@"activeAccessoriesForStaging"];
  [coderCopy encodeBool:self->_reportProgressToDelegates forKey:@"reportProgressToDelegates"];
  [coderCopy encodeBool:self->_isUrgentUpdate forKey:@"isUrgentUpdate"];
  [coderCopy encodeObject:self->_modelNumber forKey:@"modelNumber"];
  [coderCopy encodeObject:self->_downstreamAssetIDs forKey:@"downstreamAssetIDs"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UARPAssetID alloc] initWithLocationType:self->_type remoteURL:self->_remoteURL];
  [(UARPAssetID *)v4 setRemoteBuildManifestPlistPath:self->_remoteBuildManifestPlistPath];
  [(UARPAssetID *)v4 setLocalURL:self->_localURL];
  [(UARPAssetID *)v4 setDownloadStatus:self->_downloadStatus];
  [(UARPAssetID *)v4 setUpdateAvailabilityStatus:self->_updateAvailabilityStatus];
  [(UARPAssetID *)v4 setAssetVersion:self->_assetVersion];
  [(UARPAssetID *)v4 setAssetVersionNumber:self->_assetVersionNumber];
  [(UARPAssetID *)v4 setReleaseNotesLocalURL:self->_releaseNotesLocalURL];
  [(UARPAssetID *)v4 setReleaseNotesRemoteURL:self->_releaseNotesRemoteURL];
  [(UARPAssetID *)v4 setReleaseNotesDownloadStatus:self->_releaseNotesDownloadStatus];
  [(UARPAssetID *)v4 setReleaseNotesAvailabilityStatus:self->_releaseNotesAvailabilityStatus];
  [(UARPAssetID *)v4 setReleaseNotesFileSize:self->_releaseNotesFileSize];
  [(UARPAssetID *)v4 setFirmwareFileSize:self->_firmwareFileSize];
  [(UARPAssetID *)v4 setAssetReleaseDate:self->_assetReleaseDate];
  [(UARPAssetID *)v4 setDeploymentRules:self->_deploymentRules];
  [(UARPAssetID *)v4 setDeploymentAllowed:self->_deploymentAllowed];
  [(UARPAssetID *)v4 setSignatureValidationNeeded:self->_signatureValidationNeeded];
  [(UARPAssetID *)v4 setTag:self->_tag];
  [(UARPAssetID *)v4 setFirmwareHash:self->_firmwareHash];
  objc_storeStrong(&v4->_activeAccessoriesForStaging, self->_activeAccessoriesForStaging);
  [(UARPAssetID *)v4 setIsUrgentUpdate:self->_isUrgentUpdate];
  [(UARPAssetID *)v4 setModelNumber:self->_modelNumber];
  v5 = [(NSMutableArray *)self->_downstreamAssetIDs mutableCopy];
  downstreamAssetIDs = v4->_downstreamAssetIDs;
  v4->_downstreamAssetIDs = v5;

  return v4;
}

- (void)setRemoteBuildManifestPlistPath:(id)path
{
  v4 = [path copy];
  remoteBuildManifestPlistPath = self->_remoteBuildManifestPlistPath;
  self->_remoteBuildManifestPlistPath = v4;

  MEMORY[0x2821F96F8]();
}

- (void)restoreDefaultStatus
{
  [(NSMutableArray *)self->_downstreamAssetIDs removeAllObjects];
  self->_releaseNotesAvailabilityStatus = 0;
  self->_updateAvailabilityStatus = 0;
  self->_releaseNotesDownloadStatus = 0;
  self->_downloadStatus = 0;
  modelNumber = self->_modelNumber;
  self->_modelNumber = 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v34 = 1;
    }

    else
    {
      v5 = equalCopy;
      type = self->_type;
      if (type == [(UARPAssetID *)v5 type])
      {
        remoteURL = self->_remoteURL;
        remoteURL = [(UARPAssetID *)v5 remoteURL];
        if (nullableObjectsEqual(remoteURL, remoteURL))
        {
          assetVersion = self->_assetVersion;
          assetVersion = [(UARPAssetID *)v5 assetVersion];
          if (nullableObjectsEqual(assetVersion, assetVersion))
          {
            assetVersionNumber = self->_assetVersionNumber;
            assetVersionNumber = [(UARPAssetID *)v5 assetVersionNumber];
            if (nullableObjectsEqual(assetVersionNumber, assetVersionNumber))
            {
              localURL = self->_localURL;
              localURL = [(UARPAssetID *)v5 localURL];
              if (nullableObjectsEqual(localURL, localURL) && (downloadStatus = self->_downloadStatus, downloadStatus == [(UARPAssetID *)v5 downloadStatus]) && (updateAvailabilityStatus = self->_updateAvailabilityStatus, updateAvailabilityStatus == [(UARPAssetID *)v5 updateAvailabilityStatus]) && (releaseNotesDownloadStatus = self->_releaseNotesDownloadStatus, releaseNotesDownloadStatus == [(UARPAssetID *)v5 releaseNotesDownloadStatus]))
              {
                releaseNotesRemoteURL = self->_releaseNotesRemoteURL;
                releaseNotesRemoteURL = [(UARPAssetID *)v5 releaseNotesRemoteURL];
                if (nullableObjectsEqual(releaseNotesRemoteURL, releaseNotesRemoteURL))
                {
                  releaseNotesLocalURL = self->_releaseNotesLocalURL;
                  releaseNotesLocalURL = [(UARPAssetID *)v5 releaseNotesLocalURL];
                  if (nullableObjectsEqual(releaseNotesLocalURL, releaseNotesLocalURL) && (releaseNotesAvailabilityStatus = self->_releaseNotesAvailabilityStatus, releaseNotesAvailabilityStatus == [(UARPAssetID *)v5 releaseNotesAvailabilityStatus]))
                  {
                    remoteBuildManifestPlistPath = self->_remoteBuildManifestPlistPath;
                    remoteBuildManifestPlistPath = [(UARPAssetID *)v5 remoteBuildManifestPlistPath];
                    if (nullableObjectsEqual(remoteBuildManifestPlistPath, remoteBuildManifestPlistPath))
                    {
                      assetReleaseDate = self->_assetReleaseDate;
                      assetReleaseDate = [(UARPAssetID *)v5 assetReleaseDate];
                      if (nullableObjectsEqual(assetReleaseDate, assetReleaseDate))
                      {
                        releaseNotesFileSize = self->_releaseNotesFileSize;
                        releaseNotesFileSize = [(UARPAssetID *)v5 releaseNotesFileSize];
                        if (nullableObjectsEqual(releaseNotesFileSize, releaseNotesFileSize))
                        {
                          firmwareFileSize = self->_firmwareFileSize;
                          firmwareFileSize = [(UARPAssetID *)v5 firmwareFileSize];
                          if (nullableObjectsEqual(firmwareFileSize, firmwareFileSize))
                          {
                            deploymentRules = self->_deploymentRules;
                            deploymentRules = [(UARPAssetID *)v5 deploymentRules];
                            if (nullableObjectsEqual(deploymentRules, deploymentRules) && (deploymentAllowed = self->_deploymentAllowed, deploymentAllowed == [(UARPAssetID *)v5 deploymentAllowed]))
                            {
                              tag = self->_tag;
                              v38 = [(UARPAssetID *)v5 tag];
                              if (nullableObjectsEqual(tag, v38))
                              {
                                firmwareHash = self->_firmwareHash;
                                firmwareHash = [(UARPAssetID *)v5 firmwareHash];
                                if (nullableObjectsEqual(firmwareHash, firmwareHash))
                                {
                                  modelNumber = self->_modelNumber;
                                  modelNumber = [(UARPAssetID *)v5 modelNumber];
                                  if (nullableObjectsEqual(modelNumber, modelNumber))
                                  {
                                    downstreamAssetIDs = self->_downstreamAssetIDs;
                                    v33 = [(UARPAssetID *)v5 downstreamAssetIDs:modelNumber];
                                    v34 = nullableObjectsEqual(downstreamAssetIDs, v33);
                                  }

                                  else
                                  {
                                    v34 = 0;
                                  }
                                }

                                else
                                {
                                  v34 = 0;
                                }
                              }

                              else
                              {
                                v34 = 0;
                              }
                            }

                            else
                            {
                              v34 = 0;
                            }
                          }

                          else
                          {
                            v34 = 0;
                          }
                        }

                        else
                        {
                          v34 = 0;
                        }
                      }

                      else
                      {
                        v34 = 0;
                      }
                    }

                    else
                    {
                      v34 = 0;
                    }
                  }

                  else
                  {
                    v34 = 0;
                  }
                }

                else
                {
                  v34 = 0;
                }
              }

              else
              {
                v34 = 0;
              }
            }

            else
            {
              v34 = 0;
            }
          }

          else
          {
            v34 = 0;
          }
        }

        else
        {
          v34 = 0;
        }
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (void)setReleaseNotesAvailabilityStatus:(int64_t)status
{
  obj = self;
  objc_sync_enter(obj);
  obj->_releaseNotesAvailabilityStatus = status;
  objc_sync_exit(obj);
}

- (void)setReleaseNotesRemotePath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [MEMORY[0x277CBEBC0] URLWithString:pathCopy];
  [(UARPAssetID *)selfCopy setReleaseNotesRemoteURL:v5];

  objc_sync_exit(selfCopy);
}

- (void)setReleaseNotesLocalPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [MEMORY[0x277CBEBC0] URLWithString:pathCopy];
  [(UARPAssetID *)selfCopy setReleaseNotesLocalURL:v5];

  objc_sync_exit(selfCopy);
}

- (void)setReleaseNotesRemoteURL:(id)l
{
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [lCopy copy];
  releaseNotesRemoteURL = selfCopy->_releaseNotesRemoteURL;
  selfCopy->_releaseNotesRemoteURL = v5;

  objc_sync_exit(selfCopy);
}

- (void)setReleaseNotesLocalURL:(id)l
{
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [lCopy copy];
  releaseNotesLocalURL = selfCopy->_releaseNotesLocalURL;
  selfCopy->_releaseNotesLocalURL = v5;

  objc_sync_exit(selfCopy);
}

- (void)setReleaseNotesDownloadStatus:(int64_t)status
{
  obj = self;
  objc_sync_enter(obj);
  obj->_releaseNotesDownloadStatus = status;
  objc_sync_exit(obj);
}

- (void)setReleaseDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (dateCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    [(NSDate *)v5 setDateFormat:@"MM/dd/yyyy"];
    v6 = [(NSDate *)v5 dateFromString:dateCopy];
    assetReleaseDate = selfCopy->_assetReleaseDate;
    selfCopy->_assetReleaseDate = v6;
  }

  else
  {
    v5 = selfCopy->_assetReleaseDate;
    selfCopy->_assetReleaseDate = 0;
  }

  objc_sync_exit(selfCopy);
}

- (NSString)releaseDate
{
  if (self->_assetReleaseDate)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v3 setDateFormat:@"MM/dd/yyyy"];
    v4 = [v3 stringFromDate:self->_assetReleaseDate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAssetReleaseDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [dateCopy copy];
  assetReleaseDate = selfCopy->_assetReleaseDate;
  selfCopy->_assetReleaseDate = v5;

  objc_sync_exit(selfCopy);
}

- (void)setReleaseNotesFileSize:(id)size
{
  sizeCopy = size;
  obj = self;
  objc_sync_enter(obj);
  releaseNotesFileSize = obj->_releaseNotesFileSize;
  obj->_releaseNotesFileSize = sizeCopy;

  objc_sync_exit(obj);
}

- (void)setFirmwareFileSize:(id)size
{
  sizeCopy = size;
  obj = self;
  objc_sync_enter(obj);
  firmwareFileSize = obj->_firmwareFileSize;
  obj->_firmwareFileSize = sizeCopy;

  objc_sync_exit(obj);
}

- (void)setAssetVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [versionCopy copy];
  assetVersion = selfCopy->_assetVersion;
  selfCopy->_assetVersion = v5;

  objc_sync_exit(selfCopy);
}

- (void)setAssetVersionNumber:(id)number
{
  numberCopy = number;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [numberCopy copy];
  assetVersionNumber = selfCopy->_assetVersionNumber;
  selfCopy->_assetVersionNumber = v5;

  objc_sync_exit(selfCopy);
}

- (void)setLocalPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [MEMORY[0x277CBEBC0] URLWithString:pathCopy];
  [(UARPAssetID *)selfCopy setLocalURL:v5];

  objc_sync_exit(selfCopy);
}

- (void)setLocalURL:(id)l
{
  lCopy = l;
  obj = self;
  objc_sync_enter(obj);
  localURL = obj->_localURL;
  obj->_localURL = lCopy;

  objc_sync_exit(obj);
}

- (void)setIsUrgentUpdate:(BOOL)update
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isUrgentUpdate = update;
  objc_sync_exit(obj);
}

- (void)setDownloadStatus:(int64_t)status
{
  obj = self;
  objc_sync_enter(obj);
  obj->_downloadStatus = status;
  objc_sync_exit(obj);
}

- (void)setUpdateAvailabilityStatus:(int64_t)status
{
  obj = self;
  objc_sync_enter(obj);
  obj->_updateAvailabilityStatus = status;
  objc_sync_exit(obj);
}

- (void)setSignatureValidationNeeded:(BOOL)needed
{
  obj = self;
  objc_sync_enter(obj);
  obj->_signatureValidationNeeded = needed;
  objc_sync_exit(obj);
}

- (void)setValidationStatus:(int64_t)status
{
  obj = self;
  objc_sync_enter(obj);
  obj->_validationStatus = status;
  objc_sync_exit(obj);
}

- (void)setDeploymentDay:(id)day
{
  dayCopy = day;
  obj = self;
  objc_sync_enter(obj);
  deploymentDay = obj->_deploymentDay;
  obj->_deploymentDay = dayCopy;

  objc_sync_exit(obj);
}

- (void)setDeploymentPercent:(id)percent
{
  percentCopy = percent;
  obj = self;
  objc_sync_enter(obj);
  deploymentPercent = obj->_deploymentPercent;
  obj->_deploymentPercent = percentCopy;

  objc_sync_exit(obj);
}

- (void)setDeploymentAllowed:(BOOL)allowed
{
  obj = self;
  objc_sync_enter(obj);
  obj->_deploymentAllowed = allowed;
  objc_sync_exit(obj);
}

- (void)setDeploymentRules:(id)rules
{
  rulesCopy = rules;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [rulesCopy copy];
  deploymentRules = selfCopy->_deploymentRules;
  selfCopy->_deploymentRules = v5;

  objc_sync_exit(selfCopy);
}

- (void)setTag:(id)tag
{
  tagCopy = tag;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [tagCopy copy];
  tag = selfCopy->_tag;
  selfCopy->_tag = v5;

  objc_sync_exit(selfCopy);
}

- (void)setFirmwareHash:(id)hash
{
  hashCopy = hash;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [hashCopy copy];
  firmwareHash = selfCopy->_firmwareHash;
  selfCopy->_firmwareHash = v5;

  objc_sync_exit(selfCopy);
}

- (void)setTatsuServerURL:(id)l
{
  lCopy = l;
  obj = self;
  objc_sync_enter(obj);
  tatsuServerURL = obj->_tatsuServerURL;
  obj->_tatsuServerURL = lCopy;

  objc_sync_exit(obj);
}

- (void)setModelNumber:(id)number
{
  numberCopy = number;
  obj = self;
  objc_sync_enter(obj);
  modelNumber = obj->_modelNumber;
  obj->_modelNumber = numberCopy;

  objc_sync_exit(obj);
}

- (void)processUARPDeploymentRules:(id)rules
{
  v4 = [(UARPAssetID *)self _createUARPDeploymentRules:rules];
  deploymentRules = self->_deploymentRules;
  self->_deploymentRules = v4;

  self->_deploymentAllowed = [(UARPAssetID *)self isDeploymentAllowed];
}

- (const)typeString
{
  type = self->_type;
  if (type > 0x10)
  {
    return "unrecognized";
  }

  else
  {
    return off_278EC2B68[type];
  }
}

- (id)rawDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  typeString = [(UARPAssetID *)self typeString];
  assetVersion = self->_assetVersion;
  [v3 appendFormat:@"type=%s, assetVersion=%@/%@", typeString, assetVersion, self->_assetVersionNumber];
  if (self->_modelNumber)
  {
    [v3 appendFormat:@", downstream=%@", self->_modelNumber];
  }

  if (self->_remoteURL)
  {
    [v3 appendFormat:@", remoteURL=%@", self->_remoteURL];
  }

  if (self->_localURL)
  {
    [v3 appendFormat:@", localURL=%@", self->_localURL];
  }

  if (self->_releaseNotesRemoteURL)
  {
    [v3 appendFormat:@", releaseNotesRemotePath=%@", self->_releaseNotesRemoteURL];
  }

  if ([(NSMutableArray *)self->_downstreamAssetIDs count])
  {
    [v3 appendFormat:@", downstreamAssetIDs=%lu", -[NSMutableArray count](self->_downstreamAssetIDs, "count")];
  }

  updated = UARPFirmwareUpdateAvailabilityStatusToString(self->_updateAvailabilityStatus);
  [v3 appendFormat:@", updateAvailablity=%s, releaseNotesAvailability=%s, ", updated, UARPFirmwareUpdateAvailabilityStatusToString(self->_releaseNotesAvailabilityStatus)];
  if (self->_tag)
  {
    [v3 appendFormat:@", tag=%@", self->_tag];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  rawDescription = [(UARPAssetID *)self rawDescription];
  v7 = [v3 stringWithFormat:@"<%@: %@>", v5, rawDescription];

  return v7;
}

- (id)_createUARPDeploymentRules:(id)rules
{
  v30 = *MEMORY[0x277D85DE8];
  rulesCopy = rules;
  if ([rulesCopy count])
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v21 setDateFormat:@"MM/dd/yyyy"];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = rulesCopy;
    obj = rulesCopy;
    v22 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v22)
    {
      v20 = *v24;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v23 + 1) + 8 * i);
          v6 = [v5 objectForKey:@"rampPeriod"];
          v7 = [v5 objectForKey:@"deploymentLimit"];
          v8 = [v5 objectForKey:@"countryList"];
          v9 = [v5 objectForKey:@"goLiveDate"];
          v10 = [v21 dateFromString:v9];
          v11 = objc_alloc_init(UARPDeploymentRuleConfig);
          [(UARPDeploymentRuleConfig *)v11 setGoLiveDate:v10];
          [(UARPDeploymentRuleConfig *)v11 setCountryList:v8];
          [(UARPDeploymentRuleConfig *)v11 setRampPeriod:v6];
          [(UARPDeploymentRuleConfig *)v11 setDeploymentLimit:v7];
          v12 = [[UARPDeploymentRule alloc] initWithConfig:v11];
          if (v12)
          {
            [v19 addObject:v12];
          }

          else
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v28 = v5;
              _os_log_error_impl(&dword_247AA7000, log, OS_LOG_TYPE_ERROR, "Error: Invalid rule combination not allowed %@", buf, 0xCu);
            }
          }
        }

        v22 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v22);
    }

    rulesCopy = v16;
  }

  else
  {
    v19 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)isDeploymentAllowed
{
  v32 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_deploymentRules count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v3 = self->_deploymentRules;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = 0;
      v8 = *v26;
      *&v5 = 138412290;
      v23 = v5;
LABEL_4:
      v9 = 0;
      v10 = v7;
      while (1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v25 + 1) + 8 * v9);
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = v23;
          v30 = v11;
          _os_log_impl(&dword_247AA7000, log, OS_LOG_TYPE_INFO, "Checking Rule %@", buf, 0xCu);
        }

        v24 = v10;
        v13 = [v11 isDeploymentAllowed:{&v24, v23}];
        v7 = v24;

        deploymentDay = [v11 deploymentDay];

        if (deploymentDay)
        {
          deploymentDay2 = [v11 deploymentDay];
          deploymentDay = self->_deploymentDay;
          self->_deploymentDay = deploymentDay2;
        }

        deploymentPercent = [v11 deploymentPercent];

        if (deploymentPercent)
        {
          deploymentPercent2 = [v11 deploymentPercent];
          deploymentPercent = self->_deploymentPercent;
          self->_deploymentPercent = deploymentPercent2;
        }

        if (v13)
        {
          break;
        }

        ++v9;
        v10 = v7;
        if (v6 == v9)
        {
          v6 = [(NSArray *)v3 countByEnumeratingWithState:&v25 objects:v31 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          v20 = 0;
          goto LABEL_20;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v20 = 1;
LABEL_20:
  }

  else
  {
    v20 = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string
{
  v20 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  [stringCopy appendWithTabDepth:depth format:@"Asset ID:\n"];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Type: %s\n", UARPAssetLocationTypeToString(self->_type)}];
  if (self->_remoteURL)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Remote URL: %@\n", self->_remoteURL}];
  }

  if (self->_assetVersion)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Asset Version: %@\n", self->_assetVersion}];
  }

  if (self->_assetVersionNumber)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Asset Version Number: %@\n", self->_assetVersionNumber}];
  }

  if (self->_localURL)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Local URL: %@\n", self->_localURL}];
  }

  if (self->_tag)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Asset Tag: %@\n", self->_tag}];
  }

  [stringCopy appendWithTabDepth:depth + 1 format:{@"Download Status: %s\n", UARPAssetDownloadStatusToString(self->_downloadStatus)}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Update Availability Status: %s\n", UARPFirmwareUpdateAvailabilityStatusToString(self->_updateAvailabilityStatus)}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Release Notes Download Status: %s\n", UARPAssetDownloadStatusToString(self->_releaseNotesDownloadStatus)}];
  if (self->_releaseNotesRemoteURL)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Release Notes Remote URL: %@\n", self->_releaseNotesRemoteURL}];
  }

  if (self->_releaseNotesLocalURL)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Release Notes Local URL: %@\n", self->_releaseNotesLocalURL}];
  }

  [stringCopy appendWithTabDepth:depth + 1 format:{@"Release Notes Availability Status: %s\n", UARPFirmwareUpdateAvailabilityStatusToString(self->_releaseNotesAvailabilityStatus)}];
  if (self->_assetReleaseDate)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Release Date: %@\n", self->_assetReleaseDate}];
  }

  if (self->_releaseNotesFileSize)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Release Notes File Size: %@\n", self->_releaseNotesFileSize}];
  }

  if (self->_firmwareFileSize)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Firmware File Size: %@\n", self->_firmwareFileSize}];
  }

  if ([(NSArray *)self->_deploymentRules count])
  {
    [stringCopy appendWithTabDepth:depth + 1 format:@"Deployment Rules:\n"];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_deploymentRules;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v15 + 1) + 8 * v11++) dumpWithTabDepth:depth + 2 dumpString:stringCopy];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  if (self->_deploymentAllowed)
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  [stringCopy appendWithTabDepth:depth + 1 format:{@"Deployment allowed: %s\n", v12}];
  if (self->_signatureValidationNeeded)
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  [stringCopy appendWithTabDepth:depth + 1 format:{@"Signature Validation Needed: %s\n", v13}];

  v14 = *MEMORY[0x277D85DE8];
}

@end