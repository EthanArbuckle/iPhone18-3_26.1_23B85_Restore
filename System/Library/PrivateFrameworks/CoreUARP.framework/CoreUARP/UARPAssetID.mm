@interface UARPAssetID
- (BOOL)analyticsIsEqual:(id)a3;
- (BOOL)isDeploymentAllowed;
- (BOOL)isEqual:(id)a3;
- (NSString)releaseDate;
- (UARPAssetID)initWithCoder:(id)a3;
- (UARPAssetID)initWithLocationType:(int64_t)a3 assetTag:(id)a4 filePath:(id)a5;
- (UARPAssetID)initWithLocationType:(int64_t)a3 assetTag:(id)a4 url:(id)a5;
- (UARPAssetID)initWithLocationType:(int64_t)a3 remotePath:(id)a4;
- (UARPAssetID)initWithLocationType:(int64_t)a3 remotePath:(id)a4 releaseNotesRemotePath:(id)a5;
- (UARPAssetID)initWithLocationType:(int64_t)a3 remoteURL:(id)a4;
- (UARPAssetID)initWithLocationType:(int64_t)a3 remoteURL:(id)a4 releaseNotesRemoteURL:(id)a5;
- (const)typeString;
- (id)_createUARPDeploymentRules:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)rawDescription;
- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)processUARPDeploymentRules:(id)a3;
- (void)restoreDefaultStatus;
- (void)setAssetReleaseDate:(id)a3;
- (void)setAssetVersion:(id)a3;
- (void)setAssetVersionNumber:(id)a3;
- (void)setDeploymentAllowed:(BOOL)a3;
- (void)setDeploymentDay:(id)a3;
- (void)setDeploymentPercent:(id)a3;
- (void)setDeploymentRules:(id)a3;
- (void)setDownloadStatus:(int64_t)a3;
- (void)setFirmwareFileSize:(id)a3;
- (void)setFirmwareHash:(id)a3;
- (void)setIsUrgentUpdate:(BOOL)a3;
- (void)setLocalPath:(id)a3;
- (void)setLocalURL:(id)a3;
- (void)setModelNumber:(id)a3;
- (void)setReleaseDate:(id)a3;
- (void)setReleaseNotesAvailabilityStatus:(int64_t)a3;
- (void)setReleaseNotesDownloadStatus:(int64_t)a3;
- (void)setReleaseNotesFileSize:(id)a3;
- (void)setReleaseNotesLocalPath:(id)a3;
- (void)setReleaseNotesLocalURL:(id)a3;
- (void)setReleaseNotesRemotePath:(id)a3;
- (void)setReleaseNotesRemoteURL:(id)a3;
- (void)setRemoteBuildManifestPlistPath:(id)a3;
- (void)setSignatureValidationNeeded:(BOOL)a3;
- (void)setTag:(id)a3;
- (void)setTatsuServerURL:(id)a3;
- (void)setUpdateAvailabilityStatus:(int64_t)a3;
- (void)setValidationStatus:(int64_t)a3;
@end

@implementation UARPAssetID

- (BOOL)analyticsIsEqual:(id)a3
{
  v4 = a3;
  v5 = [(UARPAssetID *)self type];
  if (v5 == [v4 type])
  {
    v6 = [(UARPAssetID *)self remoteURL];
    v7 = [v4 remoteURL];
    if ([v6 isEqual:v7])
    {
      v8 = [(UARPAssetID *)self assetVersion];
      v9 = [v4 assetVersion];
      v10 = [v8 isEqual:v9];
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

- (UARPAssetID)initWithLocationType:(int64_t)a3 remotePath:(id)a4
{
  v6 = [MEMORY[0x277CBEBC0] URLWithString:a4];
  v7 = [(UARPAssetID *)self initWithLocationType:a3 remoteURL:v6];

  return v7;
}

- (UARPAssetID)initWithLocationType:(int64_t)a3 assetTag:(id)a4 filePath:(id)a5
{
  v8 = MEMORY[0x277CBEBC0];
  v9 = a4;
  v10 = [v8 URLWithString:a5];
  v11 = [(UARPAssetID *)self initWithLocationType:a3 assetTag:v9 url:v10];

  return v11;
}

- (UARPAssetID)initWithLocationType:(int64_t)a3 assetTag:(id)a4 url:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = [(UARPAssetID *)self initWithLocationType:a3 remoteURL:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_tag, a4);
    v13 = [v10 copy];
    localURL = v12->_localURL;
    v12->_localURL = v13;
  }

  return v12;
}

- (UARPAssetID)initWithLocationType:(int64_t)a3 remoteURL:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = UARPAssetID;
  v7 = [(UARPAssetID *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
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
    v15 = [v6 copy];
    remoteURL = v8->_remoteURL;
    v8->_remoteURL = v15;

    if (!v6)
    {
      v17 = UARPAssetLocationTypeToURL(v8->_type);
      v18 = v8->_remoteURL;
      v8->_remoteURL = v17;
    }
  }

  return v8;
}

- (UARPAssetID)initWithLocationType:(int64_t)a3 remotePath:(id)a4 releaseNotesRemotePath:(id)a5
{
  v8 = a5;
  v9 = [(UARPAssetID *)self initWithLocationType:a3 remotePath:a4];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    releaseNotesRemoteURL = v10->_releaseNotesRemoteURL;
    v10->_releaseNotesRemoteURL = v11;
  }

  return v10;
}

- (UARPAssetID)initWithLocationType:(int64_t)a3 remoteURL:(id)a4 releaseNotesRemoteURL:(id)a5
{
  v8 = a5;
  v9 = [(UARPAssetID *)self initWithLocationType:a3 remoteURL:a4];
  if (v9)
  {
    v10 = [v8 copy];
    releaseNotesRemoteURL = v9->_releaseNotesRemoteURL;
    v9->_releaseNotesRemoteURL = v10;
  }

  return v9;
}

- (UARPAssetID)initWithCoder:(id)a3
{
  v54[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v51.receiver = self;
  v51.super_class = UARPAssetID;
  v5 = [(UARPAssetID *)&v51 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteURL"];
    remoteURL = v5->_remoteURL;
    v5->_remoteURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetVersion"];
    assetVersion = v5->_assetVersion;
    v5->_assetVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetVersionNumber"];
    assetVersionNumber = v5->_assetVersionNumber;
    v5->_assetVersionNumber = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteBuildManifestPlistPath"];
    remoteBuildManifestPlistPath = v5->_remoteBuildManifestPlistPath;
    v5->_remoteBuildManifestPlistPath = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localURL"];
    localURL = v5->_localURL;
    v5->_localURL = v14;

    v5->_downloadStatus = [v4 decodeIntegerForKey:@"downloadStatus"];
    v5->_updateAvailabilityStatus = [v4 decodeIntegerForKey:@"updateAvailabilityStatus"];
    v5->_releaseNotesDownloadStatus = [v4 decodeIntegerForKey:@"releaseNotesDownloadStatus"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotesRemoteURL"];
    releaseNotesRemoteURL = v5->_releaseNotesRemoteURL;
    v5->_releaseNotesRemoteURL = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotesLocalURL"];
    releaseNotesLocalURL = v5->_releaseNotesLocalURL;
    v5->_releaseNotesLocalURL = v18;

    v5->_releaseNotesAvailabilityStatus = [v4 decodeIntegerForKey:@"releaseNotesAvailabilityStatus"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseNotesFileSize"];
    releaseNotesFileSize = v5->_releaseNotesFileSize;
    v5->_releaseNotesFileSize = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firmwareFileSize"];
    firmwareFileSize = v5->_firmwareFileSize;
    v5->_firmwareFileSize = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetReleaseDate"];
    assetReleaseDate = v5->_assetReleaseDate;
    v5->_assetReleaseDate = v24;

    v5->_deploymentAllowed = [v4 decodeBoolForKey:@"deploymentAllowed"];
    v5->_signatureValidationNeeded = [v4 decodeBoolForKey:@"signatureValidationNeeded"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v5->_tag;
    v5->_tag = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firmwareHash"];
    firmwareHash = v5->_firmwareHash;
    v5->_firmwareHash = v28;

    v5->_reportProgressToDelegates = [v4 decodeBoolForKey:@"reportProgressToDelegates"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelNumber"];
    modelNumber = v5->_modelNumber;
    v5->_modelNumber = v30;

    v32 = MEMORY[0x277CBEB98];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    v34 = [v32 setWithArray:v33];

    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"downstreamAssetIDs"];
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

    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"activeAccessoriesForStaging"];
    activeAccessoriesForStaging = v5->_activeAccessoriesForStaging;
    v5->_activeAccessoriesForStaging = v42;

    v44 = MEMORY[0x277CBEB98];
    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v46 = [v44 setWithArray:v45];

    v47 = [v4 decodeObjectOfClasses:v46 forKey:@"deploymentRules"];
    deploymentRules = v5->_deploymentRules;
    v5->_deploymentRules = v47;

    v5->_isUrgentUpdate = [v4 decodeBoolForKey:@"isUrgentUpdate"];
  }

  v49 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_remoteURL forKey:@"remoteURL"];
  [v5 encodeObject:self->_assetVersion forKey:@"assetVersion"];
  [v5 encodeObject:self->_assetVersionNumber forKey:@"assetVersionNumber"];
  [v5 encodeObject:self->_remoteBuildManifestPlistPath forKey:@"remoteBuildManifestPlistPath"];
  [v5 encodeObject:self->_localURL forKey:@"localURL"];
  [v5 encodeInteger:self->_downloadStatus forKey:@"downloadStatus"];
  [v5 encodeInteger:self->_updateAvailabilityStatus forKey:@"updateAvailabilityStatus"];
  [v5 encodeInteger:self->_releaseNotesDownloadStatus forKey:@"releaseNotesDownloadStatus"];
  [v5 encodeObject:self->_releaseNotesRemoteURL forKey:@"releaseNotesRemoteURL"];
  [v5 encodeObject:self->_releaseNotesLocalURL forKey:@"releaseNotesLocalURL"];
  [v5 encodeInteger:self->_releaseNotesAvailabilityStatus forKey:@"releaseNotesAvailabilityStatus"];
  [v5 encodeObject:self->_releaseNotesFileSize forKey:@"releaseNotesFileSize"];
  [v5 encodeObject:self->_firmwareFileSize forKey:@"firmwareFileSize"];
  [v5 encodeObject:self->_assetReleaseDate forKey:@"assetReleaseDate"];
  [v5 encodeObject:self->_deploymentRules forKey:@"deploymentRules"];
  [v5 encodeBool:self->_deploymentAllowed forKey:@"deploymentAllowed"];
  [v5 encodeBool:self->_signatureValidationNeeded forKey:@"signatureValidationNeeded"];
  [v5 encodeObject:self->_tag forKey:@"tag"];
  [v5 encodeObject:self->_firmwareHash forKey:@"firmwareHash"];
  [v5 encodeObject:self->_activeAccessoriesForStaging forKey:@"activeAccessoriesForStaging"];
  [v5 encodeBool:self->_reportProgressToDelegates forKey:@"reportProgressToDelegates"];
  [v5 encodeBool:self->_isUrgentUpdate forKey:@"isUrgentUpdate"];
  [v5 encodeObject:self->_modelNumber forKey:@"modelNumber"];
  [v5 encodeObject:self->_downstreamAssetIDs forKey:@"downstreamAssetIDs"];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)setRemoteBuildManifestPlistPath:(id)a3
{
  v4 = [a3 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v34 = 1;
    }

    else
    {
      v5 = v4;
      type = self->_type;
      if (type == [(UARPAssetID *)v5 type])
      {
        remoteURL = self->_remoteURL;
        v8 = [(UARPAssetID *)v5 remoteURL];
        if (nullableObjectsEqual(remoteURL, v8))
        {
          assetVersion = self->_assetVersion;
          v10 = [(UARPAssetID *)v5 assetVersion];
          if (nullableObjectsEqual(assetVersion, v10))
          {
            assetVersionNumber = self->_assetVersionNumber;
            v12 = [(UARPAssetID *)v5 assetVersionNumber];
            if (nullableObjectsEqual(assetVersionNumber, v12))
            {
              localURL = self->_localURL;
              v14 = [(UARPAssetID *)v5 localURL];
              if (nullableObjectsEqual(localURL, v14) && (downloadStatus = self->_downloadStatus, downloadStatus == [(UARPAssetID *)v5 downloadStatus]) && (updateAvailabilityStatus = self->_updateAvailabilityStatus, updateAvailabilityStatus == [(UARPAssetID *)v5 updateAvailabilityStatus]) && (releaseNotesDownloadStatus = self->_releaseNotesDownloadStatus, releaseNotesDownloadStatus == [(UARPAssetID *)v5 releaseNotesDownloadStatus]))
              {
                releaseNotesRemoteURL = self->_releaseNotesRemoteURL;
                v19 = [(UARPAssetID *)v5 releaseNotesRemoteURL];
                if (nullableObjectsEqual(releaseNotesRemoteURL, v19))
                {
                  releaseNotesLocalURL = self->_releaseNotesLocalURL;
                  v21 = [(UARPAssetID *)v5 releaseNotesLocalURL];
                  if (nullableObjectsEqual(releaseNotesLocalURL, v21) && (releaseNotesAvailabilityStatus = self->_releaseNotesAvailabilityStatus, releaseNotesAvailabilityStatus == [(UARPAssetID *)v5 releaseNotesAvailabilityStatus]))
                  {
                    remoteBuildManifestPlistPath = self->_remoteBuildManifestPlistPath;
                    v43 = [(UARPAssetID *)v5 remoteBuildManifestPlistPath];
                    if (nullableObjectsEqual(remoteBuildManifestPlistPath, v43))
                    {
                      assetReleaseDate = self->_assetReleaseDate;
                      v42 = [(UARPAssetID *)v5 assetReleaseDate];
                      if (nullableObjectsEqual(assetReleaseDate, v42))
                      {
                        releaseNotesFileSize = self->_releaseNotesFileSize;
                        v41 = [(UARPAssetID *)v5 releaseNotesFileSize];
                        if (nullableObjectsEqual(releaseNotesFileSize, v41))
                        {
                          firmwareFileSize = self->_firmwareFileSize;
                          v40 = [(UARPAssetID *)v5 firmwareFileSize];
                          if (nullableObjectsEqual(firmwareFileSize, v40))
                          {
                            deploymentRules = self->_deploymentRules;
                            v39 = [(UARPAssetID *)v5 deploymentRules];
                            if (nullableObjectsEqual(deploymentRules, v39) && (deploymentAllowed = self->_deploymentAllowed, deploymentAllowed == [(UARPAssetID *)v5 deploymentAllowed]))
                            {
                              tag = self->_tag;
                              v38 = [(UARPAssetID *)v5 tag];
                              if (nullableObjectsEqual(tag, v38))
                              {
                                firmwareHash = self->_firmwareHash;
                                v37 = [(UARPAssetID *)v5 firmwareHash];
                                if (nullableObjectsEqual(firmwareHash, v37))
                                {
                                  modelNumber = self->_modelNumber;
                                  v36 = [(UARPAssetID *)v5 modelNumber];
                                  if (nullableObjectsEqual(modelNumber, v36))
                                  {
                                    downstreamAssetIDs = self->_downstreamAssetIDs;
                                    v33 = [(UARPAssetID *)v5 downstreamAssetIDs:v36];
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

- (void)setReleaseNotesAvailabilityStatus:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_releaseNotesAvailabilityStatus = a3;
  objc_sync_exit(obj);
}

- (void)setReleaseNotesRemotePath:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  [(UARPAssetID *)v4 setReleaseNotesRemoteURL:v5];

  objc_sync_exit(v4);
}

- (void)setReleaseNotesLocalPath:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  [(UARPAssetID *)v4 setReleaseNotesLocalURL:v5];

  objc_sync_exit(v4);
}

- (void)setReleaseNotesRemoteURL:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  releaseNotesRemoteURL = v4->_releaseNotesRemoteURL;
  v4->_releaseNotesRemoteURL = v5;

  objc_sync_exit(v4);
}

- (void)setReleaseNotesLocalURL:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  releaseNotesLocalURL = v4->_releaseNotesLocalURL;
  v4->_releaseNotesLocalURL = v5;

  objc_sync_exit(v4);
}

- (void)setReleaseNotesDownloadStatus:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_releaseNotesDownloadStatus = a3;
  objc_sync_exit(obj);
}

- (void)setReleaseDate:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v8)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    [(NSDate *)v5 setDateFormat:@"MM/dd/yyyy"];
    v6 = [(NSDate *)v5 dateFromString:v8];
    assetReleaseDate = v4->_assetReleaseDate;
    v4->_assetReleaseDate = v6;
  }

  else
  {
    v5 = v4->_assetReleaseDate;
    v4->_assetReleaseDate = 0;
  }

  objc_sync_exit(v4);
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

- (void)setAssetReleaseDate:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  assetReleaseDate = v4->_assetReleaseDate;
  v4->_assetReleaseDate = v5;

  objc_sync_exit(v4);
}

- (void)setReleaseNotesFileSize:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  releaseNotesFileSize = obj->_releaseNotesFileSize;
  obj->_releaseNotesFileSize = v4;

  objc_sync_exit(obj);
}

- (void)setFirmwareFileSize:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  firmwareFileSize = obj->_firmwareFileSize;
  obj->_firmwareFileSize = v4;

  objc_sync_exit(obj);
}

- (void)setAssetVersion:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  assetVersion = v4->_assetVersion;
  v4->_assetVersion = v5;

  objc_sync_exit(v4);
}

- (void)setAssetVersionNumber:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  assetVersionNumber = v4->_assetVersionNumber;
  v4->_assetVersionNumber = v5;

  objc_sync_exit(v4);
}

- (void)setLocalPath:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  [(UARPAssetID *)v4 setLocalURL:v5];

  objc_sync_exit(v4);
}

- (void)setLocalURL:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  localURL = obj->_localURL;
  obj->_localURL = v4;

  objc_sync_exit(obj);
}

- (void)setIsUrgentUpdate:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isUrgentUpdate = a3;
  objc_sync_exit(obj);
}

- (void)setDownloadStatus:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_downloadStatus = a3;
  objc_sync_exit(obj);
}

- (void)setUpdateAvailabilityStatus:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_updateAvailabilityStatus = a3;
  objc_sync_exit(obj);
}

- (void)setSignatureValidationNeeded:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_signatureValidationNeeded = a3;
  objc_sync_exit(obj);
}

- (void)setValidationStatus:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_validationStatus = a3;
  objc_sync_exit(obj);
}

- (void)setDeploymentDay:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  deploymentDay = obj->_deploymentDay;
  obj->_deploymentDay = v4;

  objc_sync_exit(obj);
}

- (void)setDeploymentPercent:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  deploymentPercent = obj->_deploymentPercent;
  obj->_deploymentPercent = v4;

  objc_sync_exit(obj);
}

- (void)setDeploymentAllowed:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_deploymentAllowed = a3;
  objc_sync_exit(obj);
}

- (void)setDeploymentRules:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  deploymentRules = v4->_deploymentRules;
  v4->_deploymentRules = v5;

  objc_sync_exit(v4);
}

- (void)setTag:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  tag = v4->_tag;
  v4->_tag = v5;

  objc_sync_exit(v4);
}

- (void)setFirmwareHash:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  firmwareHash = v4->_firmwareHash;
  v4->_firmwareHash = v5;

  objc_sync_exit(v4);
}

- (void)setTatsuServerURL:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  tatsuServerURL = obj->_tatsuServerURL;
  obj->_tatsuServerURL = v4;

  objc_sync_exit(obj);
}

- (void)setModelNumber:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  modelNumber = obj->_modelNumber;
  obj->_modelNumber = v4;

  objc_sync_exit(obj);
}

- (void)processUARPDeploymentRules:(id)a3
{
  v4 = [(UARPAssetID *)self _createUARPDeploymentRules:a3];
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
  v4 = [(UARPAssetID *)self typeString];
  assetVersion = self->_assetVersion;
  [v3 appendFormat:@"type=%s, assetVersion=%@/%@", v4, assetVersion, self->_assetVersionNumber];
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
  v6 = [(UARPAssetID *)self rawDescription];
  v7 = [v3 stringWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)_createUARPDeploymentRules:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v21 setDateFormat:@"MM/dd/yyyy"];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v3;
    obj = v3;
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

    v3 = v16;
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

        v14 = [v11 deploymentDay];

        if (v14)
        {
          v15 = [v11 deploymentDay];
          deploymentDay = self->_deploymentDay;
          self->_deploymentDay = v15;
        }

        v17 = [v11 deploymentPercent];

        if (v17)
        {
          v18 = [v11 deploymentPercent];
          deploymentPercent = self->_deploymentPercent;
          self->_deploymentPercent = v18;
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

- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [v6 appendWithTabDepth:a3 format:@"Asset ID:\n"];
  [v6 appendWithTabDepth:a3 + 1 format:{@"Type: %s\n", UARPAssetLocationTypeToString(self->_type)}];
  if (self->_remoteURL)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Remote URL: %@\n", self->_remoteURL}];
  }

  if (self->_assetVersion)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Asset Version: %@\n", self->_assetVersion}];
  }

  if (self->_assetVersionNumber)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Asset Version Number: %@\n", self->_assetVersionNumber}];
  }

  if (self->_localURL)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Local URL: %@\n", self->_localURL}];
  }

  if (self->_tag)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Asset Tag: %@\n", self->_tag}];
  }

  [v6 appendWithTabDepth:a3 + 1 format:{@"Download Status: %s\n", UARPAssetDownloadStatusToString(self->_downloadStatus)}];
  [v6 appendWithTabDepth:a3 + 1 format:{@"Update Availability Status: %s\n", UARPFirmwareUpdateAvailabilityStatusToString(self->_updateAvailabilityStatus)}];
  [v6 appendWithTabDepth:a3 + 1 format:{@"Release Notes Download Status: %s\n", UARPAssetDownloadStatusToString(self->_releaseNotesDownloadStatus)}];
  if (self->_releaseNotesRemoteURL)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Release Notes Remote URL: %@\n", self->_releaseNotesRemoteURL}];
  }

  if (self->_releaseNotesLocalURL)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Release Notes Local URL: %@\n", self->_releaseNotesLocalURL}];
  }

  [v6 appendWithTabDepth:a3 + 1 format:{@"Release Notes Availability Status: %s\n", UARPFirmwareUpdateAvailabilityStatusToString(self->_releaseNotesAvailabilityStatus)}];
  if (self->_assetReleaseDate)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Release Date: %@\n", self->_assetReleaseDate}];
  }

  if (self->_releaseNotesFileSize)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Release Notes File Size: %@\n", self->_releaseNotesFileSize}];
  }

  if (self->_firmwareFileSize)
  {
    [v6 appendWithTabDepth:a3 + 1 format:{@"Firmware File Size: %@\n", self->_firmwareFileSize}];
  }

  if ([(NSArray *)self->_deploymentRules count])
  {
    [v6 appendWithTabDepth:a3 + 1 format:@"Deployment Rules:\n"];
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

          [*(*(&v15 + 1) + 8 * v11++) dumpWithTabDepth:a3 + 2 dumpString:v6];
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

  [v6 appendWithTabDepth:a3 + 1 format:{@"Deployment allowed: %s\n", v12}];
  if (self->_signatureValidationNeeded)
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  [v6 appendWithTabDepth:a3 + 1 format:{@"Signature Validation Needed: %s\n", v13}];

  v14 = *MEMORY[0x277D85DE8];
}

@end