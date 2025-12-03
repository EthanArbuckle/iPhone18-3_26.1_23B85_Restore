@interface Ace3SoCRestoreInfoFirmwareCopierBackDeploy
- (Ace3SoCRestoreInfoFirmwareCopierBackDeploy)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)error;
- (BOOL)parseOptions:(id)options;
- (id)readFirmwareFileDataWithError:(id *)error;
@end

@implementation Ace3SoCRestoreInfoFirmwareCopierBackDeploy

- (Ace3SoCRestoreInfoFirmwareCopierBackDeploy)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = Ace3SoCRestoreInfoFirmwareCopierBackDeploy;
  v9 = [(Ace3SoCRestoreInfoHelperBackDeploy *)&v13 initWithOptions:optionsCopy logFunction:function logContext:context];
  v10 = v9;
  if (v9 && ([(Ace3SoCRestoreInfoHelperBackDeploy *)v9 log:@"%s: input options: %@", "[Ace3SoCRestoreInfoFirmwareCopierBackDeploy initWithOptions:logFunction:logContext:]", optionsCopy], ![(Ace3SoCRestoreInfoFirmwareCopierBackDeploy *)v10 parseOptions:optionsCopy]))
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (BOOL)parseOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"BuildIdentity"];
  if (v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:@"DeviceInfo"];
    if (!v6)
    {
      [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Warning: Could not find device info dictionary"];
    }

    if ([v5 count])
    {
      v7 = [(Ace3SoCRestoreInfoFirmwareCopierBackDeploy *)self firmwareKeyFromBuildIdentityDict:v5 deviceInfo:v6];
      if (!v7)
      {
        [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Could not find firmware key in build identity dictionary"];
LABEL_26:
        v16 = 0;
        goto LABEL_27;
      }

      v8 = v7;
      v9 = [v5 objectForKeyedSubscript:v7];
      v10 = [v9 objectForKeyedSubscript:@"Info"];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 objectForKeyedSubscript:@"Path"];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 copy];
          v15 = *(&self->_destBundlePathURL + 1);
          *(&self->_destBundlePathURL + 1) = v14;

LABEL_11:
          v17 = [optionsCopy objectForKeyedSubscript:@"FirmwareData"];
          v18 = *(&self->_firmwareBundleURL + 1);
          *(&self->_firmwareBundleURL + 1) = v17;

          v19 = *(&self->_firmwareBundleURL + 1);
          if (v19)
          {
            [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Detected firmware override"];
            v19 = *(&self->_firmwareBundleURL + 1);
          }

          if (!v19 && v8)
          {
            v20 = [optionsCopy objectForKeyedSubscript:@"BundleDataDict"];
            v21 = v20;
            if (v20)
            {
              v22 = [v20 objectForKeyedSubscript:v8];
              v23 = *(&self->_firmwareOverrideData + 1);
              *(&self->_firmwareOverrideData + 1) = v22;

              [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Attempt to use '%@' firmware from BundleDataDict: %@", v8, *(&self->_firmwareOverrideData + 1)];
            }

            v19 = *(&self->_firmwareBundleURL + 1);
          }

          if (v19 || *(&self->_firmwareOverrideData + 1))
          {
            goto LABEL_20;
          }

          if (*(&self->_destBundlePathURL + 1))
          {
            v27 = [optionsCopy objectForKeyedSubscript:@"BundlePath"];
            if (v27)
            {
              v28 = v27;
              v29 = [v27 URLByAppendingPathComponent:*(&self->_destBundlePathURL + 1)];
              v30 = *(&self->_firmwarePathSuffix + 1);
              *(&self->_firmwarePathSuffix + 1) = v29;

LABEL_20:
              v24 = [optionsCopy objectForKeyedSubscript:@"DestBundlePath"];
              v25 = *(&self->super._verbose + 1);
              *(&self->super._verbose + 1) = v24;

              v16 = 1;
LABEL_27:

              goto LABEL_28;
            }

            v31 = @"Could not find bundle path";
          }

          else
          {
            v31 = @"Firmware override must be specified if build identity dictionary is empty";
          }

          [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:v31];
          goto LABEL_25;
        }

        [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Could not find firmware path"];
      }

      else
      {
        [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Could not find firmware info dictionary"];
      }

LABEL_25:
      goto LABEL_26;
    }

    [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Detected empty build identity dictionary"];
    v8 = 0;
    goto LABEL_11;
  }

  [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Could not find build identity dictionary"];
  v16 = 0;
LABEL_28:

  return v16;
}

- (BOOL)copyFirmwareToDestinationBundleWithError:(id *)error
{
  v4 = *(&self->super._verbose + 1);
  if (v4 && *(&self->_destBundlePathURL + 1))
  {
    path = [v4 path];
    v7 = [NSString stringWithFormat:@"%@/%@", path, *(&self->_destBundlePathURL + 1)];

    v8 = [NSURL fileURLWithPath:v7];
    v9 = +[NSFileManager defaultManager];
    uRLByDeletingLastPathComponent = [v8 URLByDeletingLastPathComponent];
    v11 = +[NSFileManager defaultManager];
    path2 = [uRLByDeletingLastPathComponent path];
    v34 = 0;
    v13 = [v11 createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v34];
    v14 = v34;

    if ((v13 & 1) == 0 && ([v14 isFileExistsError] & 1) == 0)
    {
      path3 = [uRLByDeletingLastPathComponent path];
      [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Failed to create directory at '%@' (%@)", path3, v14];

      if (!error)
      {
        goto LABEL_21;
      }

      v24 = v14;
      v21 = 0;
      *error = v14;
      goto LABEL_22;
    }

    path4 = [v8 path];
    v16 = [v9 fileExistsAtPath:path4];

    if (v16)
    {
      v33 = 0;
      v17 = [v9 removeItemAtURL:v8 error:&v33];
      v18 = v33;
      v19 = v18;
      if ((v17 & 1) == 0)
      {
        path5 = [v8 path];
        [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Failed to remove file at '%@' (%@)", path5, v19];
        goto LABEL_18;
      }
    }

    v20 = *(&self->_firmwareBundleURL + 1);
    if (v20)
    {
      v21 = 1;
      if (([v20 writeToURL:v8 atomically:1] & 1) == 0)
      {
        path6 = [v8 path];
        [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Failed to write firmware file data to '%@'", path6];

LABEL_21:
        v21 = 0;
      }

LABEL_22:

      return v21;
    }

    v25 = +[NSFileManager defaultManager];
    v26 = *(&self->_firmwarePathSuffix + 1);
    v32 = 0;
    v27 = [v25 copyItemAtURL:v26 toURL:v8 error:&v32];
    v19 = v32;

    if (v27)
    {

      v21 = 1;
      goto LABEL_22;
    }

    path5 = [*(&self->_firmwarePathSuffix + 1) path];
    path7 = [v8 path];
    [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Failed to copy firmware from '%@' to '%@' (%@)", path5, path7, v19];

LABEL_18:
    if (error)
    {
      v30 = v19;
      *error = v19;
    }

    goto LABEL_21;
  }

  [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Not copying firmware to destination bundle"];
  return 1;
}

- (id)readFirmwareFileDataWithError:(id *)error
{
  v3 = *(&self->_firmwareBundleURL + 1);
  if (v3 || (v3 = *(&self->_firmwareOverrideData + 1)) != 0)
  {
    v5 = v3;
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
      [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Failed to read firmware file at '%@' (%@)", path, v9];

      if (error)
      {
        v11 = v9;
        *error = v9;
      }
    }
  }

  return v5;
}

@end