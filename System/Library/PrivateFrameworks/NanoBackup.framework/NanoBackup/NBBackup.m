@interface NBBackup
- (NBBackup)initWithCoder:(id)a3;
- (NSURL)activeWatchFaceFileURL;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NBBackup

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSUUID *)self->_uuid UUIDString];
  v7 = [v3 stringWithFormat:@"<%@ %p uuid = (%@); name = (%@); productType: (%@); productName: (%@); systemVersion: (%@); systemBuildVersion: (%@); marketingVersion: (%@); lastModificationDate = (%@); sizeInBytes = (%@); deviceColor = (%@); enclosureColor = (%@); bottomEnclosureMaterial = (%@); topEnclosureMaterial = (%@); fcmMaterial = (%@); bcmWindowMaterial = (%@); coverGlassColor = (%@); housingColor = (%@); backingColor = (%@); locationOptIn = (%d); diagnosticsOptIn = (%d); deviceCSN: (%@); backupType = (%ld);watchFaceData = (%lu bytes)>", v5, self, v6, self->_name, self->_productType, self->_productName, self->_systemVersion, self->_systemBuildVersion, self->_marketingVersion, self->_lastModificationDate, self->_sizeInBytes, self->_deviceColor, self->_deviceEnclosureColor, self->_bottomEnclosureMaterial, self->_topEnclosureMaterial, self->_fcmMaterial, self->_bcmWindowMaterial, self->_coverGlassColor, self->_housingColor, self->_backingColor, self->_locationOptInEnabled, self->_diagnosticsOptInEnabled, self->_deviceCSN, self->_backupType, -[NSData length](self->_watchFaceData, "length")];;

  return v7;
}

- (NSURL)activeWatchFaceFileURL
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_hasResolvedActiveWatchFaceFilePath)
  {
    v2->_hasResolvedActiveWatchFaceFilePath = 1;
    v3 = [(NSUUID *)v2->_uuid UUIDString];
    v4 = [@"/var/mobile/Library/NanoBackup" stringByAppendingPathComponent:v3];

    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v26 = 0;
    v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v26];
    v7 = v26;

    if (v7)
    {
      v8 = nb_framework_log;
      if (os_log_type_enabled(nb_framework_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v29 = v4;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&dword_25AEFA000, v8, OS_LOG_TYPE_DEFAULT, "Failed to list file within directory (%@) with error: (%@)", buf, 0x16u);
      }
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v10)
      {
        v11 = *v23;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v22 + 1) + 8 * i);
            [v13 rangeOfString:@"ActiveWatchFace" options:{8, v22}];
            if (v14)
            {
              v15 = MEMORY[0x277CBEBC0];
              v16 = [v4 stringByAppendingPathComponent:v13];
              v17 = [v15 fileURLWithPath:v16 isDirectory:1];
              activeWatchFaceFileURL = v2->_activeWatchFaceFileURL;
              v2->_activeWatchFaceFileURL = v17;

              goto LABEL_15;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_15:
  }

  objc_sync_exit(v2);

  v19 = v2->_activeWatchFaceFileURL;
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeInteger:self->_backupType forKey:@"backupType"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_productType forKey:@"productType"];
  [v5 encodeObject:self->_productName forKey:@"productName"];
  [v5 encodeObject:self->_systemVersion forKey:@"systemVersion"];
  [v5 encodeObject:self->_systemBuildVersion forKey:@"systemBuildVersion"];
  [v5 encodeObject:self->_marketingVersion forKey:@"marketingVersion"];
  [v5 encodeObject:self->_lastModificationDate forKey:@"lastModification"];
  [v5 encodeObject:self->_sizeInBytes forKey:@"size"];
  [v5 encodeObject:self->_deviceColor forKey:@"color"];
  [v5 encodeObject:self->_deviceEnclosureColor forKey:@"enclosureColor"];
  [v5 encodeObject:self->_bottomEnclosureMaterial forKey:@"bottomEnclosure"];
  [v5 encodeObject:self->_topEnclosureMaterial forKey:@"topEnclosure"];
  [v5 encodeObject:self->_fcmMaterial forKey:@"FCMType"];
  [v5 encodeObject:self->_bcmWindowMaterial forKey:@"BCMWindow"];
  [v5 encodeObject:self->_coverGlassColor forKey:@"coverGlassColor"];
  [v5 encodeObject:self->_housingColor forKey:@"housingColor"];
  [v5 encodeObject:self->_backingColor forKey:@"backingColor"];
  [v5 encodeBool:self->_locationOptInEnabled forKey:@"location"];
  [v5 encodeBool:self->_diagnosticsOptInEnabled forKey:@"diagnostics"];
  [v5 encodeObject:self->_watchFaceData forKey:@"watchFaceData"];
  [v5 encodeObject:self->_deviceCSN forKey:@"deviceCSN"];
}

- (NBBackup)initWithCoder:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = NBBackup;
  v5 = [(NBBackup *)&v48 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_backupType = [v4 decodeIntegerForKey:@"backupType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productName"];
    productName = v5->_productName;
    v5->_productName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemBuildVersion"];
    systemBuildVersion = v5->_systemBuildVersion;
    v5->_systemBuildVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"marketingVersion"];
    marketingVersion = v5->_marketingVersion;
    v5->_marketingVersion = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModification"];
    lastModificationDate = v5->_lastModificationDate;
    v5->_lastModificationDate = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
    sizeInBytes = v5->_sizeInBytes;
    v5->_sizeInBytes = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    deviceColor = v5->_deviceColor;
    v5->_deviceColor = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enclosureColor"];
    deviceEnclosureColor = v5->_deviceEnclosureColor;
    v5->_deviceEnclosureColor = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bottomEnclosure"];
    bottomEnclosureMaterial = v5->_bottomEnclosureMaterial;
    v5->_bottomEnclosureMaterial = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topEnclosure"];
    topEnclosureMaterial = v5->_topEnclosureMaterial;
    v5->_topEnclosureMaterial = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FCMType"];
    fcmMaterial = v5->_fcmMaterial;
    v5->_fcmMaterial = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCMWindow"];
    bcmWindowMaterial = v5->_bcmWindowMaterial;
    v5->_bcmWindowMaterial = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coverGlassColor"];
    coverGlassColor = v5->_coverGlassColor;
    v5->_coverGlassColor = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"housingColor"];
    housingColor = v5->_housingColor;
    v5->_housingColor = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backingColor"];
    backingColor = v5->_backingColor;
    v5->_backingColor = v40;

    v5->_locationOptInEnabled = [v4 decodeBoolForKey:@"location"];
    v5->_diagnosticsOptInEnabled = [v4 decodeBoolForKey:@"diagnostics"];
    v42 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"watchFaceData"];
    watchFaceData = v5->_watchFaceData;
    v5->_watchFaceData = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceCSN"];
    deviceCSN = v5->_deviceCSN;
    v5->_deviceCSN = v45;
  }

  return v5;
}

@end