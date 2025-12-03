@interface MIDataContainer
+ (id)dataContainerForExecutableBundle:(id)bundle forPersona:(id)persona createIfNeeded:(BOOL)needed temporary:(BOOL)temporary created:(BOOL *)created error:(id *)error;
- (id)_oldCompatiblityLinkDestination;
- (int)contentProtectionClass;
- (void)makeSymlinkToBundleInContainerIfNeeded:(id)needed;
- (void)setContentProtectionClass:(int)class;
@end

@implementation MIDataContainer

+ (id)dataContainerForExecutableBundle:(id)bundle forPersona:(id)persona createIfNeeded:(BOOL)needed temporary:(BOOL)temporary created:(BOOL *)created error:(id *)error
{
  temporaryCopy = temporary;
  neededCopy = needed;
  bundleCopy = bundle;
  personaCopy = persona;
  dataContainerContentClass = [bundleCopy dataContainerContentClass];
  if (dataContainerContentClass)
  {
    v17 = dataContainerContentClass;
    if (temporaryCopy)
    {
      if (created)
      {
        *created = 1;
      }

      v18 = objc_opt_class();
      identifier = [bundleCopy identifier];
      v20 = [v18 tempContainerWithIdentifier:identifier forPersona:personaCopy ofContentClass:v17 error:error];
    }

    else
    {
      v24 = objc_opt_class();
      identifier = [bundleCopy identifier];
      v20 = [v24 containerWithIdentifier:identifier forPersona:personaCopy ofContentClass:v17 createIfNeeded:neededCopy created:created error:error];
    }

    v23 = v20;
  }

  else
  {
    v21 = _CreateAndLogError("+[MIDataContainer dataContainerForExecutableBundle:forPersona:createIfNeeded:temporary:created:error:]", 39, @"MIInstallerErrorDomain", 4, 0, 0, @"Can't get data container for bundle %@", v16, bundleCopy);
    identifier = v21;
    if (error)
    {
      v22 = v21;
      v23 = 0;
      *error = identifier;
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

- (void)setContentProtectionClass:(int)class
{
  v5 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v9 = 0;
  v6 = [(MIContainer *)self setInfoValue:v5 forKey:@"com.apple.MobileInstallation.ContentProtectionClass" error:&v9];
  v7 = v9;

  if (v6)
  {
    self->_contentProtectionClass = class;
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    identifier = [(MIContainer *)self identifier];
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
      containerURL = [(MIContainer *)self containerURL];
      containerURL2 = [containerURL URLByAppendingPathComponent:v5 isDirectory:1];

      v9 = +[MIFileManager defaultManager];
      v18 = v4;
      v10 = [v9 destinationOfSymbolicLinkAtURL:containerURL2 error:&v18];
      v11 = v18;

      if (!v10)
      {
        domain = [v11 domain];
        if (![domain isEqualToString:*MEMORY[0x1E696A798]])
        {

          goto LABEL_24;
        }

        code = [v11 code];

        if (code != 2)
        {
LABEL_24:
          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_18;
          }

          path = [containerURL2 path];
          MOLogWrite();
          goto LABEL_17;
        }
      }

LABEL_18:

      v4 = v11;
      goto LABEL_20;
    }
  }

  domain2 = [v4 domain];
  if ([domain2 isEqualToString:@"MIContainerManagerErrorDomain"])
  {
    code2 = [v4 code];

    if (code2 == 24)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    containerURL2 = [(MIContainer *)self containerURL];
    path = [containerURL2 path];
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

- (void)makeSymlinkToBundleInContainerIfNeeded:(id)needed
{
  neededCopy = needed;
  bundle = [neededCopy bundle];
  if (bundle)
  {
    compatibilityLinkDestination = [neededCopy compatibilityLinkDestination];
    _oldCompatiblityLinkDestination = [(MIDataContainer *)self _oldCompatiblityLinkDestination];
    v8 = _oldCompatiblityLinkDestination;
    if (!(compatibilityLinkDestination | _oldCompatiblityLinkDestination))
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

    if (compatibilityLinkDestination && _oldCompatiblityLinkDestination)
    {
      if ([compatibilityLinkDestination isEqual:_oldCompatiblityLinkDestination])
      {
        if (!gLogHandle || *(gLogHandle + 44) < 7)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if (!_oldCompatiblityLinkDestination)
    {
      v9 = 0;
      if (!compatibilityLinkDestination)
      {
        goto LABEL_46;
      }

LABEL_33:
      v17 = [(MIContainer *)self containerURL:selfCopy];
      lastPathComponent = [compatibilityLinkDestination lastPathComponent];
      v19 = [v17 URLByAppendingPathComponent:lastPathComponent isDirectory:1];

      if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        path = [v19 path];
        MOLogWrite();
      }

      v20 = +[MIFileManager defaultManager];
      [v20 removeItemAtURL:v19 error:0];

      v21 = +[MIFileManager defaultManager];
      v33 = v9;
      v22 = [v21 createSymbolicLinkAtURL:v19 withDestinationURL:compatibilityLinkDestination error:&v33];
      v23 = v33;

      if (v22)
      {
        lastPathComponent2 = [compatibilityLinkDestination lastPathComponent];
        v32 = v23;
        v25 = [(MIContainer *)self setInfoValue:lastPathComponent2 forKey:@"com.apple.MobileInstallation.WorkaroundBundleSymlinkName" error:&v32];
        v26 = v32;

        if (!v25 && (!gLogHandle || *(gLogHandle + 44) >= 3))
        {
          MOLogWrite();
        }

        v23 = v26;
      }

      else if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        path2 = [v19 path];
        path3 = [compatibilityLinkDestination path];
        MOLogWrite();
      }

      v9 = v23;
      goto LABEL_46;
    }

    containerURL = [(MIContainer *)self containerURL];
    lastPathComponent3 = [v8 lastPathComponent];
    v12 = [containerURL URLByAppendingPathComponent:lastPathComponent3 isDirectory:1];

    if (gLogHandle && *(gLogHandle + 44) >= 7)
    {
      selfCopy = [v12 path];
      MOLogWrite();
    }

    v13 = +[MIFileManager defaultManager];
    v35 = 0;
    v14 = [v13 removeItemAtURL:v12 error:&v35];
    v15 = v35;

    if ((v14 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      selfCopy = [v12 path];
      v30 = v15;
      MOLogWrite();
    }

    if (compatibilityLinkDestination)
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
        selfCopy = self;
        v30 = v9;
        MOLogWrite();
      }
    }

    if (!compatibilityLinkDestination)
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