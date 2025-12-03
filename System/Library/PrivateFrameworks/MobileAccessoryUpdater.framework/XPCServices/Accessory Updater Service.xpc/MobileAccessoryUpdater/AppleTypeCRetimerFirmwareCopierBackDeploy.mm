@interface AppleTypeCRetimerFirmwareCopierBackDeploy
- (AppleTypeCRetimerFirmwareCopierBackDeploy)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)error;
- (BOOL)createDestinationBundleFirmwareDirectoryFor:(id)for error:(id *)error;
- (BOOL)parseOptions:(id)options;
- (id)description;
- (id)readFirmwareFileDataWithError:(id *)error;
- (id)rtKitKeyFromBuildIdentityDict:(id)dict;
@end

@implementation AppleTypeCRetimerFirmwareCopierBackDeploy

- (AppleTypeCRetimerFirmwareCopierBackDeploy)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = AppleTypeCRetimerFirmwareCopierBackDeploy;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)&v13 initWithOptions:optionsCopy logFunction:function logContext:context];
  v10 = v9;
  if (v9)
  {
    if (![(AppleTypeCRetimerFirmwareCopierBackDeploy *)v9 parseOptions:optionsCopy])
    {
      v11 = 0;
      goto LABEL_6;
    }

    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v10 verboseLog:@"%@", v10];
  }

  v11 = v10;
LABEL_6:

  return v11;
}

- (BOOL)parseOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"BuildIdentity"];
  if (v5)
  {
    v6 = [(AppleTypeCRetimerFirmwareCopierBackDeploy *)self rtKitKeyFromBuildIdentityDict:v5];
    if (!v6)
    {
      [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Could not find RTKitOS key in build identity dictionary"];
      v26 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = [v7 objectForKeyedSubscript:@"Info"];
    v9 = v8;
    if (!v8)
    {
      [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Could not find RTKitOS info dictionary"];
      v26 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v10 = [v8 objectForKeyedSubscript:@"Path"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 copy];
      v13 = *(&self->super._verbose + 1);
      *(&self->super._verbose + 1) = v12;

      v14 = [optionsCopy objectForKeyedSubscript:@"FirmwareData"];
      v15 = *(&self->_destBundlePathURL + 1);
      *(&self->_destBundlePathURL + 1) = v14;

      if (*(&self->_destBundlePathURL + 1))
      {
        goto LABEL_12;
      }

      v16 = [optionsCopy objectForKeyedSubscript:@"BundleDataDict"];
      v17 = &selRef_writeToURL_atomically_;
      if (v16)
      {
        v29 = v16;
        v18 = [v16 objectForKeyedSubscript:v6];
        v19 = *(&self->_firmwareOverrideData + 1);
        *(&self->_firmwareOverrideData + 1) = v18;

        v17 = &selRef_writeToURL_atomically_;
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Attempt to use '%@' firmware from BundleDataDict: %@", v6, *(&self->_firmwareOverrideData + 1)];
        v16 = v29;
      }

      if (*(&self->_destBundlePathURL + 1) || *(&self->super.super.isa + *(v17 + 334)))
      {
        goto LABEL_12;
      }

      v20 = [optionsCopy objectForKeyedSubscript:@"BundlePath"];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 URLByAppendingPathComponent:*(&self->super._verbose + 1)];
        v23 = *(&self->_firmwarePathSuffix + 1);
        *(&self->_firmwarePathSuffix + 1) = v22;

LABEL_12:
        v24 = [optionsCopy objectForKeyedSubscript:@"DestBundlePath"];
        v25 = *(&self->_firmwareBundleURL + 1);
        *(&self->_firmwareBundleURL + 1) = v24;

        v26 = 1;
LABEL_18:

        goto LABEL_19;
      }

      v27 = @"Could not find bundle path";
    }

    else
    {
      v27 = @"Could not find RTKitOS path";
    }

    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:v27];
    v26 = 0;
    goto LABEL_18;
  }

  [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Could not find build identity dictionary"];
  v26 = 0;
LABEL_21:

  return v26;
}

- (id)rtKitKeyFromBuildIdentityDict:(id)dict
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dictCopy = dict;
  v4 = [dictCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(dictCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 hasPrefix:{@"Timer, RTKitOS", v11}])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [dictCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)createDestinationBundleFirmwareDirectoryFor:(id)for error:(id *)error
{
  v6 = [NSURL fileURLWithPath:for];
  uRLByDeletingLastPathComponent = [(NSURL *)v6 URLByDeletingLastPathComponent];
  v8 = +[NSFileManager defaultManager];
  path = [(NSURL *)uRLByDeletingLastPathComponent path];
  v10 = [(NSFileManager *)v8 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:error];

  if ((v10 & 1) == 0)
  {
    path2 = [(NSURL *)uRLByDeletingLastPathComponent path];
    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to create destination bundle firmware directory at '%@' (%@)", path2, *error];
  }

  return v10;
}

- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)error
{
  v4 = *(&self->_firmwareBundleURL + 1);
  if (v4)
  {
    path = [v4 path];
    v7 = [NSString stringWithFormat:@"%@/%@", path, *(&self->super._verbose + 1)];

    v8 = [NSURL fileURLWithPath:v7];
    v9 = +[NSFileManager defaultManager];
    uRLByDeletingLastPathComponent = [(NSURL *)v8 URLByDeletingLastPathComponent];
    v11 = +[NSFileManager defaultManager];
    path2 = [(NSURL *)uRLByDeletingLastPathComponent path];
    v35 = 0;
    v13 = [(NSFileManager *)v11 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v35];
    v14 = v35;

    if ((v13 & 1) == 0 && ([v14 isFileExistsError] & 1) == 0)
    {
      path3 = [(NSURL *)uRLByDeletingLastPathComponent path];
      [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to create directory at '%@' (%@)", path3, v14];

      if (!error)
      {
LABEL_21:
        v21 = 0;
        goto LABEL_22;
      }

      v25 = v14;
      v21 = 0;
      *error = v14;
      goto LABEL_22;
    }

    path4 = [(NSURL *)v8 path];
    v16 = [(NSFileManager *)v9 fileExistsAtPath:path4];

    if (v16)
    {
      v34 = 0;
      v17 = [(NSFileManager *)v9 removeItemAtURL:v8 error:&v34];
      v18 = v34;
      v19 = v18;
      if ((v17 & 1) == 0)
      {
        path5 = [(NSURL *)v8 path];
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to remove file at '%@' (%@)", path5, v19];
        goto LABEL_17;
      }
    }

    v20 = *(&self->_destBundlePathURL + 1);
    if (v20)
    {
      v21 = 1;
      if (([v20 writeToURL:v8 atomically:1] & 1) == 0)
      {
        path6 = [(NSURL *)v8 path];
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to write firmware file data to '%@'", path6];
        v23 = path6;
LABEL_20:

        goto LABEL_21;
      }

LABEL_22:

      return v21;
    }

    v26 = +[NSFileManager defaultManager];
    v27 = *(&self->_firmwarePathSuffix + 1);
    v33 = 0;
    v28 = [(NSFileManager *)v26 copyItemAtURL:v27 toURL:v8 error:&v33];
    v19 = v33;

    if (v28)
    {

      v21 = 1;
      goto LABEL_22;
    }

    path5 = [*(&self->_firmwarePathSuffix + 1) path];
    path7 = [(NSURL *)v8 path];
    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to copy firmware from '%@' to '%@' (%@)", path5, path7, v19];

LABEL_17:
    if (error)
    {
      v31 = v19;
      *error = v19;
    }

    v23 = v19;
    goto LABEL_20;
  }

  return 1;
}

- (id)readFirmwareFileDataWithError:(id *)error
{
  v4 = *(&self->_destBundlePathURL + 1);
  if (v4 || (v4 = *(&self->_firmwareOverrideData + 1)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v8 = *(&self->_firmwarePathSuffix + 1);
    v12 = 0;
    v5 = [NSData dataWithContentsOfURL:v8 options:0 error:&v12];
    v9 = v12;
    if (!v5)
    {
      path = [*(&self->_firmwarePathSuffix + 1) path];
      [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to read firmware file at '%@' (%@)", path, v9];

      if (error)
      {
        v11 = v9;
        *error = v9;
      }
    }
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"%@:\n", v4];

  [(NSMutableString *)v5 appendFormat:@"\tFirmware path suffix: %@\n", *(&self->super._verbose + 1)];
  path = [*(&self->_firmwarePathSuffix + 1) path];
  [(NSMutableString *)v5 appendFormat:@"\tFirmware bundle path: %@\n", path];

  v7 = *(&self->_firmwareBundleURL + 1);
  if (v7)
  {
    path2 = [v7 path];
    [(NSMutableString *)v5 appendFormat:@"\tDestination Bundle Path: %@\n", path2];
  }

  v9 = [NSString stringWithString:v5];

  return v9;
}

@end