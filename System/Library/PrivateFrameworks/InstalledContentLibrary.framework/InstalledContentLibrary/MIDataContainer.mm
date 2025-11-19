@interface MIDataContainer
+ (id)dataContainerForExecutableBundle:(id)a3 forPersona:(id)a4 createIfNeeded:(BOOL)a5 temporary:(BOOL)a6 created:(BOOL *)a7 error:(id *)a8;
- (id)_oldCompatiblityLinkDestination;
- (int)contentProtectionClass;
- (void)makeSymlinkToBundleInContainerIfNeeded:(id)a3;
- (void)setContentProtectionClass:(int)a3;
@end

@implementation MIDataContainer

+ (id)dataContainerForExecutableBundle:(id)a3 forPersona:(id)a4 createIfNeeded:(BOOL)a5 temporary:(BOOL)a6 created:(BOOL *)a7 error:(id *)a8
{
  v10 = a6;
  v11 = a5;
  v13 = a3;
  v14 = a4;
  v15 = [v13 dataContainerContentClass];
  if (v15)
  {
    v17 = v15;
    if (v10)
    {
      if (a7)
      {
        *a7 = 1;
      }

      v18 = objc_opt_class();
      v19 = [v13 identifier];
      v20 = [v18 tempContainerWithIdentifier:v19 forPersona:v14 ofContentClass:v17 error:a8];
    }

    else
    {
      v24 = objc_opt_class();
      v19 = [v13 identifier];
      v20 = [v24 containerWithIdentifier:v19 forPersona:v14 ofContentClass:v17 createIfNeeded:v11 created:a7 error:a8];
    }

    v23 = v20;
  }

  else
  {
    v21 = _CreateAndLogError("+[MIDataContainer dataContainerForExecutableBundle:forPersona:createIfNeeded:temporary:created:error:]", 39, @"MIInstallerErrorDomain", 4, 0, 0, @"Can't get data container for bundle %@", v16, v13);
    v19 = v21;
    if (a8)
    {
      v22 = v21;
      v23 = 0;
      *a8 = v19;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (int)contentProtectionClass
{
  result = self->_contentProtectionClass;
  if (!result)
  {
    v7 = 0;
    v4 = [(MIContainer *)self infoValueForKey:@"com.apple.MobileInstallation.ContentProtectionClass" error:&v7];
    objc_opt_class();
    v5 = v4;
    v6 = 0;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    if (v6)
    {
      self->_contentProtectionClass = [v6 intValue];

      return self->_contentProtectionClass;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

- (void)setContentProtectionClass:(int)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v9 = 0;
  v6 = [(MIContainer *)self setInfoValue:v5 forKey:@"com.apple.MobileInstallation.ContentProtectionClass" error:&v9];
  v7 = v9;

  if (v6)
  {
    self->_contentProtectionClass = a3;
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v8 = [(MIContainer *)self identifier];
    MOLogWrite();
  }
}

- (id)_oldCompatiblityLinkDestination
{
  v19 = 0;
  v3 = [(MIContainer *)self infoValueForKey:@"com.apple.MobileInstallation.WorkaroundBundleSymlinkName" error:&v19];
  v4 = v19;
  if (v3)
  {
    objc_opt_class();
    v5 = v3;
    v6 = (objc_opt_isKindOfClass() & 1) != 0 ? v5 : 0;

    if (v6)
    {
      v7 = [(MIContainer *)self containerURL];
      v8 = [v7 URLByAppendingPathComponent:v5 isDirectory:1];

      v9 = +[MIFileManager defaultManager];
      v18 = v4;
      v10 = [v9 destinationOfSymbolicLinkAtURL:v8 error:&v18];
      v11 = v18;

      if (!v10)
      {
        v12 = [v11 domain];
        if (![v12 isEqualToString:*MEMORY[0x1E696A798]])
        {

          goto LABEL_24;
        }

        v13 = [v11 code];

        if (v13 != 2)
        {
LABEL_24:
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_18;
          }

          v16 = [v8 path];
          MOLogWrite();
          goto LABEL_17;
        }
      }

LABEL_18:

      v4 = v11;
      goto LABEL_20;
    }
  }

  v14 = [v4 domain];
  if ([v14 isEqualToString:@"MIContainerManagerErrorDomain"])
  {
    v15 = [v4 code];

    if (v15 == 24)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    v8 = [(MIContainer *)self containerURL];
    v16 = [v8 path];
    MOLogWrite();
    v10 = 0;
    v11 = v4;
LABEL_17:

    goto LABEL_18;
  }

LABEL_19:
  v10 = 0;
LABEL_20:

  return v10;
}

- (void)makeSymlinkToBundleInContainerIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 bundle];
  if (v5)
  {
    v6 = [v4 compatibilityLinkDestination];
    v7 = [(MIDataContainer *)self _oldCompatiblityLinkDestination];
    v8 = v7;
    if (!(v6 | v7))
    {
      if (!gLogHandle || *(gLogHandle + 44) < 7)
      {
        goto LABEL_15;
      }

LABEL_14:
      MOLogWrite();
LABEL_15:
      v9 = 0;
LABEL_46:

      goto LABEL_47;
    }

    if (v6 && v7)
    {
      if ([v6 isEqual:v7])
      {
        if (!gLogHandle || *(gLogHandle + 44) < 7)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if (!v7)
    {
      v9 = 0;
      if (!v6)
      {
        goto LABEL_46;
      }

LABEL_33:
      v17 = [(MIContainer *)self containerURL:v28];
      v18 = [v6 lastPathComponent];
      v19 = [v17 URLByAppendingPathComponent:v18 isDirectory:1];

      if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        v29 = [v19 path];
        MOLogWrite();
      }

      v20 = +[MIFileManager defaultManager];
      [v20 removeItemAtURL:v19 error:0];

      v21 = +[MIFileManager defaultManager];
      v33 = v9;
      v22 = [v21 createSymbolicLinkAtURL:v19 withDestinationURL:v6 error:&v33];
      v23 = v33;

      if (v22)
      {
        v24 = [v6 lastPathComponent];
        v32 = v23;
        v25 = [(MIContainer *)self setInfoValue:v24 forKey:@"com.apple.MobileInstallation.WorkaroundBundleSymlinkName" error:&v32];
        v26 = v32;

        if (!v25 && (!gLogHandle || *(gLogHandle + 44) >= 3))
        {
          MOLogWrite();
        }

        v23 = v26;
      }

      else if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v27 = [v19 path];
        v31 = [v6 path];
        MOLogWrite();
      }

      v9 = v23;
      goto LABEL_46;
    }

    v10 = [(MIContainer *)self containerURL];
    v11 = [v8 lastPathComponent];
    v12 = [v10 URLByAppendingPathComponent:v11 isDirectory:1];

    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      v28 = [v12 path];
      MOLogWrite();
    }

    v13 = +[MIFileManager defaultManager];
    v35 = 0;
    v14 = [v13 removeItemAtURL:v12 error:&v35];
    v15 = v35;

    if ((v14 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v28 = [v12 path];
      v30 = v15;
      MOLogWrite();
    }

    if (v6)
    {
      v9 = v15;
    }

    else
    {
      v34 = v15;
      v16 = [(MIContainer *)self setInfoValue:0 forKey:@"com.apple.MobileInstallation.WorkaroundBundleSymlinkName" error:&v34];
      v9 = v34;

      if (!v16 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        v28 = self;
        v30 = v9;
        MOLogWrite();
      }
    }

    if (!v6)
    {
      goto LABEL_46;
    }

    goto LABEL_33;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

LABEL_47:
}

@end