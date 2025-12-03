@interface CLDurianMobileAssetUpdater
- (BOOL)createCacheDirectory:(id *)directory;
- (BOOL)isDeploymentAllowed:(id)allowed;
- (CLDurianMobileAssetUpdater)init;
- (id)assetWithMaxVersion:(id)version;
- (id)getBuildIdentities;
- (id)getFTAB;
- (id)queryPredicate;
- (id)validateAsset;
- (id)validateAssetAttributes:(id)attributes;
- (void)setCurrentSystemVersion:(id)version;
- (void)splitSuperBinary;
@end

@implementation CLDurianMobileAssetUpdater

- (CLDurianMobileAssetUpdater)init
{
  v7.receiver = self;
  v7.super_class = CLDurianMobileAssetUpdater;
  v2 = [(CLDurianMobileAssetUpdater *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(CLDurianMobileAssetUpdater *)v2 setAssetType:@"com.apple.MobileAsset.MobileAccessoryUpdate.DurianFirmware"];
    v4 = [NSURL fileURLWithPath:@"/private/var/db/accessoryupdater/DurianUpdaterService/"];
    cacheDir = v3->_cacheDir;
    v3->_cacheDir = v4;

    [(CLDurianMobileAssetUpdater *)v3 setDownloadOnCellularAllowed:1];
  }

  return v3;
}

- (void)setCurrentSystemVersion:(id)version
{
  versionCopy = version;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = versionCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Current system version is %@", &v9, 0xCu);
  }

  v5 = [versionCopy componentsSeparatedByString:@"."];
  v6 = [v5 objectAtIndex:0];
  -[CLDurianMobileAssetUpdater setCurrentMajorVersion:](self, "setCurrentMajorVersion:", [v6 longLongValue]);

  v7 = [v5 objectAtIndex:1];
  -[CLDurianMobileAssetUpdater setCurrentMinorVersion:](self, "setCurrentMinorVersion:", [v7 longLongValue]);

  v8 = [v5 objectAtIndex:2];
  -[CLDurianMobileAssetUpdater setCurrentReleaseVersion:](self, "setCurrentReleaseVersion:", [v8 longLongValue]);
}

- (void)splitSuperBinary
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    asset = [(CLDurianMobileAssetUpdater *)self asset];
    getLocalFileUrl = [asset getLocalFileUrl];
    *buf = 138412290;
    v40 = getLocalFileUrl;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Splitting SuperBinary at URL %@", buf, 0xCu);
  }

  v5 = [NSMutableDictionary dictionaryWithCapacity:2];
  v36 = objc_alloc_init(NSMutableArray);
  v38 = 0;
  firmwareBundleURL = [(CLDurianMobileAssetUpdater *)self firmwareBundleURL];
  v6 = [firmwareBundleURL URLByAppendingPathComponent:@"DurianFirmwareMobileAsset.bin"];
  v7 = [[NSMutableData alloc] initWithContentsOfURL:v6];
  bytes = [v7 bytes];
  v30 = v7;
  [v7 length];
  v33 = bytes;
  v37 = parseSuperBinaryAndPayloadHeaders();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [v6 absoluteString];
    v10 = v37[8];
    *buf = 138412546;
    v40 = absoluteString;
    v41 = 1024;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Splitting SuperBinary image=%@ into %d files", buf, 0x12u);
  }

  v29 = [NSString stringWithFormat:@"%d.%d.%d", *bytes, bytes[1], *(bytes + 1)];
  [v5 setObject:? forKey:?];
  v11 = [NSNumber numberWithInteger:4];
  v32 = v5;
  [v5 setObject:v11 forKey:@"Alignment"];

  v31 = v6;
  if (v37[8])
  {
    v12 = 0;
    v13 = 0;
    v14 = (v37 + 10);
    do
    {
      v15 = [[NSString alloc] initWithBytes:v14 length:4 encoding:4];
      v16 = [NSString stringWithFormat:@"%d.%d.%d", v14[8], v14[9], *(v14 + 5)];
      v17 = [NSString stringWithFormat:@"%c%c%c%c", *v14, v14[1], v14[2], v14[3]];
      v18 = objc_alloc_init(NSMutableDictionary);
      [v18 setObject:v16 forKey:@"Version"];
      [v18 setObject:v17 forKey:@"Tag"];
      v19 = [NSNumber numberWithInteger:*(v14 + 1)];
      [v18 setObject:v19 forKey:@"Flags"];

      v20 = [NSNumber numberWithInteger:*(v14 + 4)];
      [v18 setObject:v20 forKey:@"Size"];

      v21 = v15;
      if ([v15 isEqualToString:@"IM4M"])
      {
        [v36 addObject:v18];
      }

      else
      {
        v35 = [firmwareBundleURL URLByAppendingPathComponent:v15];

        v22 = [[NSData alloc] initWithBytes:&v33[*(v14 + 3)] length:*(v14 + 4)];
        v23 = [v35 URLByAppendingPathExtension:@"bin"];
        path = [v23 path];
        [v22 writeToFile:path atomically:0];

        v25 = [NSString stringWithFormat:@"./%@.bin", v17];
        [v18 setObject:v25 forKey:@"FilePath"];

        [v36 addObject:v18];
        v13 = v35;
      }

      ++v12;
      v14 += 20;
    }

    while (v12 < v37[8]);
  }

  else
  {
    v13 = 0;
  }

  [v32 setObject:v36 forKey:@"Items"];
  v26 = [NSPropertyListSerialization dataFromPropertyList:v32 format:100 errorDescription:&v38];
  v27 = [firmwareBundleURL URLByAppendingPathComponent:@"input.plist"];

  path2 = [v27 path];
  [v26 writeToFile:path2 atomically:1];

  free(v37);
}

- (id)getBuildIdentities
{
  asset = [(CLDurianMobileAssetUpdater *)self asset];
  getLocalFileUrl = [asset getLocalFileUrl];

  v4 = [getLocalFileUrl URLByAppendingPathComponent:@"Firmware.acsw"];
  filePathURL = [v4 filePathURL];

  v6 = [NSURL fileURLWithPath:@"BuildManifest.plist" isDirectory:0 relativeToURL:filePathURL];
  v7 = [NSDictionary dictionaryWithContentsOfURL:v6];

  v8 = [v7 objectForKey:@"BuildIdentities"];

  return v8;
}

- (id)getFTAB
{
  firmwareBundleURL = [(CLDurianMobileAssetUpdater *)self firmwareBundleURL];
  v3 = [NSURL fileURLWithPath:@"ftab.bin" isDirectory:0 relativeToURL:firmwareBundleURL];
  v4 = [NSData dataWithContentsOfURL:v3];

  return v4;
}

- (id)queryPredicate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000035FC;
  v4[3] = &unk_10000C328;
  v4[4] = self;
  v2 = [NSPredicate predicateWithBlock:v4];

  return v2;
}

- (id)assetWithMaxVersion:(id)version
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = version;
  v29 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v29)
  {
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v30 = 0;
    v28 = *v33;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v32 + 1) + 8 * i);
        attributes = [v4 attributes];
        v6 = [attributes objectForKey:@"FirmwareVersionMajor"];
        unsignedLongLongValue = [v6 unsignedLongLongValue];
        v8 = [attributes objectForKey:@"FirmwareVersionMinor"];

        unsignedLongLongValue2 = [v8 unsignedLongLongValue];
        v10 = [attributes objectForKey:@"FirmwareVersionRelease"];

        unsignedLongLongValue3 = [v10 unsignedLongLongValue];
        v12 = [attributes objectForKey:@"MinimumRequiredFirmwareVersionMajor"];

        unsignedLongLongValue4 = [v12 unsignedLongLongValue];
        v14 = [attributes objectForKey:@"MinimumRequiredFirmwareVersionMinor"];

        unsignedLongLongValue5 = [v14 unsignedLongLongValue];
        v16 = [attributes objectForKey:@"MinimumRequiredFirmwareVersionRelease"];

        unsignedLongLongValue6 = [v16 unsignedLongLongValue];
        currentMajorVersion = self->_currentMajorVersion;
        if (currentMajorVersion > unsignedLongLongValue4 || currentMajorVersion == unsignedLongLongValue4 && ((currentMinorVersion = self->_currentMinorVersion, currentMinorVersion > unsignedLongLongValue5) || currentMinorVersion == unsignedLongLongValue5 && self->_currentReleaseVersion >= unsignedLongLongValue6))
        {
          if (unsignedLongLongValue > v30 || unsignedLongLongValue == v30 && (unsignedLongLongValue2 > v26 || unsignedLongLongValue2 == v26 && unsignedLongLongValue3 > v24))
          {
            v19 = v4;

            v24 = unsignedLongLongValue3;
            v26 = unsignedLongLongValue2;
            v27 = v19;
            v30 = unsignedLongLongValue;
          }
        }
      }

      v29 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v29);
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v30 = 0;
  }

  v21 = [NSString stringWithFormat:@"%llu.%llu.%llu", v30, v26, v24];
  [(CLDurianMobileAssetUpdater *)self setUpdatedSystemVersion:v21];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    attributes2 = [v27 attributes];
    *buf = 138412290;
    v37 = attributes2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Asset attributes: %@", buf, 0xCu);
  }

  return v27;
}

- (id)validateAssetAttributes:(id)attributes
{
  v4 = [attributes objectForKey:@"FirmwareBundle"];
  [(CLDurianMobileAssetUpdater *)self setFirmwareBundleFilename:v4];

  return 0;
}

- (BOOL)isDeploymentAllowed:(id)allowed
{
  allowedCopy = allowed;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = allowedCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Querying whether deployment is allowed - attributes: %@", &v9, 0xCu);
  }

  v4 = [allowedCopy objectForKey:@"DeploymentList"];
  if (v4)
  {
    v5 = [[UARPAssetID alloc] initWithLocationType:3 remotePath:0];
    [v5 processUARPDeploymentRules:v4];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      deploymentAllowed = [v5 deploymentAllowed];
      v9 = 67109120;
      LODWORD(v10) = deploymentAllowed;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Deployment allowed: %d", &v9, 8u);
    }

    deploymentAllowed2 = [v5 deploymentAllowed];
  }

  else
  {
    deploymentAllowed2 = 1;
  }

  return deploymentAllowed2;
}

- (BOOL)createCacheDirectory:(id *)directory
{
  v5 = +[NSFileManager defaultManager];
  path = [(NSURL *)self->_cacheDir path];
  v7 = [v5 fileExistsAtPath:path];

  if (v7)
  {
    return 1;
  }

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 createDirectoryAtURL:self->_cacheDir withIntermediateDirectories:0 attributes:0 error:directory];

  result = 0;
  if (v9)
  {
    return 1;
  }

  return result;
}

- (id)validateAsset
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Validating asset from MobileAsset", buf, 2u);
  }

  asset = [(CLDurianMobileAssetUpdater *)self asset];
  getLocalFileUrl = [asset getLocalFileUrl];

  firmwareBundleFilename = [(CLDurianMobileAssetUpdater *)self firmwareBundleFilename];
  v6 = [getLocalFileUrl URLByAppendingPathComponent:firmwareBundleFilename];
  filePathURL = [v6 filePathURL];
  [(CLDurianMobileAssetUpdater *)self setFirmwareBundleURL:filePathURL];

  v8 = +[NSFileManager defaultManager];
  firmwareBundleURL = [(CLDurianMobileAssetUpdater *)self firmwareBundleURL];
  path = [firmwareBundleURL path];
  v11 = [v8 isReadableFileAtPath:path];

  if ((v11 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000044D0();
  }

  v39 = 0;
  v12 = [(CLDurianMobileAssetUpdater *)self createCacheDirectory:&v39];
  v13 = v39;
  if (v12)
  {
    cacheDir = self->_cacheDir;
    firmwareBundleURL2 = [(CLDurianMobileAssetUpdater *)self firmwareBundleURL];
    lastPathComponent = [firmwareBundleURL2 lastPathComponent];
    v17 = [(NSURL *)cacheDir URLByAppendingPathComponent:lastPathComponent];

    v18 = +[NSFileManager defaultManager];
    path2 = [v17 path];
    v20 = [v18 fileExistsAtPath:path2];

    if (v20)
    {
      v21 = +[NSFileManager defaultManager];
      v38 = v13;
      v22 = [v21 removeItemAtURL:v17 error:&v38];
      v23 = v38;

      if ((v22 & 1) == 0)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100004598();
        }

        goto LABEL_22;
      }

      v13 = v23;
    }

    v24 = +[NSFileManager defaultManager];
    firmwareBundleURL3 = [(CLDurianMobileAssetUpdater *)self firmwareBundleURL];
    v37 = v13;
    v26 = [v24 copyItemAtURL:firmwareBundleURL3 toURL:v17 error:&v37];
    v23 = v37;

    if (v26)
    {
      v27 = +[NSFileManager defaultManager];
      path3 = [v17 path];
      v29 = [v27 isWritableFileAtPath:path3];

      if (v29)
      {
        [(CLDurianMobileAssetUpdater *)self setFirmwareBundleURL:v17];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          firmwareBundleURL4 = [(CLDurianMobileAssetUpdater *)self firmwareBundleURL];
          asset2 = [(CLDurianMobileAssetUpdater *)self asset];
          attributes = [asset2 attributes];
          *buf = 138412802;
          v41 = getLocalFileUrl;
          v42 = 2112;
          v43 = firmwareBundleURL4;
          v44 = 2112;
          v45 = attributes;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "#durian Asset validation complete - original URL: %@, new bundle URL: %@, attributes: %@", buf, 0x20u);
        }

        v33 = 0;
        goto LABEL_27;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000046A0();
      }

      v35 = [NSError alloc];
      v34 = [v35 initWithDomain:kCLErrorDomainPrivate code:46 userInfo:&off_10000CAD0];
LABEL_26:
      v33 = v34;
LABEL_27:

      goto LABEL_28;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000461C();
    }

LABEL_22:
    v34 = v23;
    v23 = v34;
    goto LABEL_26;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004514();
  }

  v23 = v13;
  v33 = v23;
LABEL_28:

  return v33;
}

@end