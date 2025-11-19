@interface AppleTypeCRetimerFirmwareCopierBackDeploy
- (AppleTypeCRetimerFirmwareCopierBackDeploy)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5;
- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)a3;
- (BOOL)createDestinationBundleFirmwareDirectoryFor:(id)a3 error:(id *)a4;
- (BOOL)parseOptions:(id)a3;
- (id)description;
- (id)readFirmwareFileDataWithError:(id *)a3;
- (id)rtKitKeyFromBuildIdentityDict:(id)a3;
@end

@implementation AppleTypeCRetimerFirmwareCopierBackDeploy

- (AppleTypeCRetimerFirmwareCopierBackDeploy)initWithOptions:(id)a3 logFunction:(void *)a4 logContext:(void *)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = AppleTypeCRetimerFirmwareCopierBackDeploy;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)&v13 initWithOptions:v8 logFunction:a4 logContext:a5];
  v10 = v9;
  if (v9)
  {
    if (![(AppleTypeCRetimerFirmwareCopierBackDeploy *)v9 parseOptions:v8])
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

- (BOOL)parseOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"BuildIdentity"];
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

      v14 = [v4 objectForKeyedSubscript:@"FirmwareData"];
      v15 = *(&self->_destBundlePathURL + 1);
      *(&self->_destBundlePathURL + 1) = v14;

      if (*(&self->_destBundlePathURL + 1))
      {
        goto LABEL_12;
      }

      v16 = [v4 objectForKeyedSubscript:@"BundleDataDict"];
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

      v20 = [v4 objectForKeyedSubscript:@"BundlePath"];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 URLByAppendingPathComponent:*(&self->super._verbose + 1)];
        v23 = *(&self->_firmwarePathSuffix + 1);
        *(&self->_firmwarePathSuffix + 1) = v22;

LABEL_12:
        v24 = [v4 objectForKeyedSubscript:@"DestBundlePath"];
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

- (id)rtKitKeyFromBuildIdentityDict:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 hasPrefix:{@"Timer, RTKitOS", v11}])
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)createDestinationBundleFirmwareDirectoryFor:(id)a3 error:(id *)a4
{
  v6 = [NSURL fileURLWithPath:a3];
  v7 = [(NSURL *)v6 URLByDeletingLastPathComponent];
  v8 = +[NSFileManager defaultManager];
  v9 = [(NSURL *)v7 path];
  v10 = [(NSFileManager *)v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:a4];

  if ((v10 & 1) == 0)
  {
    v11 = [(NSURL *)v7 path];
    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to create destination bundle firmware directory at '%@' (%@)", v11, *a4];
  }

  return v10;
}

- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)a3
{
  v4 = *(&self->_firmwareBundleURL + 1);
  if (v4)
  {
    v6 = [v4 path];
    v7 = [NSString stringWithFormat:@"%@/%@", v6, *(&self->super._verbose + 1)];

    v8 = [NSURL fileURLWithPath:v7];
    v9 = +[NSFileManager defaultManager];
    v10 = [(NSURL *)v8 URLByDeletingLastPathComponent];
    v11 = +[NSFileManager defaultManager];
    v12 = [(NSURL *)v10 path];
    v35 = 0;
    v13 = [(NSFileManager *)v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v35];
    v14 = v35;

    if ((v13 & 1) == 0 && ([v14 isFileExistsError] & 1) == 0)
    {
      v24 = [(NSURL *)v10 path];
      [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to create directory at '%@' (%@)", v24, v14];

      if (!a3)
      {
LABEL_21:
        v21 = 0;
        goto LABEL_22;
      }

      v25 = v14;
      v21 = 0;
      *a3 = v14;
      goto LABEL_22;
    }

    v15 = [(NSURL *)v8 path];
    v16 = [(NSFileManager *)v9 fileExistsAtPath:v15];

    if (v16)
    {
      v34 = 0;
      v17 = [(NSFileManager *)v9 removeItemAtURL:v8 error:&v34];
      v18 = v34;
      v19 = v18;
      if ((v17 & 1) == 0)
      {
        v29 = [(NSURL *)v8 path];
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to remove file at '%@' (%@)", v29, v19];
        goto LABEL_17;
      }
    }

    v20 = *(&self->_destBundlePathURL + 1);
    if (v20)
    {
      v21 = 1;
      if (([v20 writeToURL:v8 atomically:1] & 1) == 0)
      {
        v22 = [(NSURL *)v8 path];
        [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to write firmware file data to '%@'", v22];
        v23 = v22;
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

    v29 = [*(&self->_firmwarePathSuffix + 1) path];
    v30 = [(NSURL *)v8 path];
    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to copy firmware from '%@' to '%@' (%@)", v29, v30, v19];

LABEL_17:
    if (a3)
    {
      v31 = v19;
      *a3 = v19;
    }

    v23 = v19;
    goto LABEL_20;
  }

  return 1;
}

- (id)readFirmwareFileDataWithError:(id *)a3
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
      v10 = [*(&self->_firmwarePathSuffix + 1) path];
      [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self log:@"Failed to read firmware file at '%@' (%@)", v10, v9];

      if (a3)
      {
        v11 = v9;
        *a3 = v9;
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
  v6 = [*(&self->_firmwarePathSuffix + 1) path];
  [(NSMutableString *)v5 appendFormat:@"\tFirmware bundle path: %@\n", v6];

  v7 = *(&self->_firmwareBundleURL + 1);
  if (v7)
  {
    v8 = [v7 path];
    [(NSMutableString *)v5 appendFormat:@"\tDestination Bundle Path: %@\n", v8];
  }

  v9 = [NSString stringWithString:v5];

  return v9;
}

@end