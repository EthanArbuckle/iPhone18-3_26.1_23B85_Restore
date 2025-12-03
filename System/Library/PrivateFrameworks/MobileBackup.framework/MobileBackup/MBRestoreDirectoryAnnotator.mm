@interface MBRestoreDirectoryAnnotator
+ (BOOL)isRestoredPath:(id)path;
- (id)_annotateDomain:(id)domain atDomainRoot:(id)root;
- (id)_annotateNotBackedUpDomain:(id)domain domainRoot:(id)root relativePath:(id)path;
- (id)_annotatePath:(id)path value:(id)value;
- (id)_annotateRestoredDomain:(id)domain domainRoot:(id)root relativePath:(id)path;
- (id)_baseRestorePathForDomain:(id)domain;
- (id)_initWithPersona:(id)persona engineType:(int)type backupPolicy:(int64_t)policy shouldRestoreSystemFiles:(BOOL)files encrypted:(BOOL)encrypted;
- (id)_makeAnnotatedIntermediatePaths:(id)paths;
- (id)_makeEmptyAnnotationFileWithPath:(id)path value:(id)value;
- (id)annotateDomain:(id)domain atDomainRoot:(id)root;
- (id)annotateDomains:(id)domains;
@end

@implementation MBRestoreDirectoryAnnotator

+ (BOOL)isRestoredPath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:pathCopy];

  if (v5)
  {
    v6 = +[MBExtendedAttributes valueForKey:forPathFSR:error:](MBExtendedAttributes, "valueForKey:forPathFSR:error:", @"MBRestoreAnnotation", [pathCopy fileSystemRepresentation], 0);
    if (v6)
    {
      v7 = [[NSString alloc] initWithData:v6 encoding:4];
      if ([v7 isEqual:@"NotRestored"])
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = [v7 isEqual:@"NotBackedUp"] ^ 1;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (id)_initWithPersona:(id)persona engineType:(int)type backupPolicy:(int64_t)policy shouldRestoreSystemFiles:(BOOL)files encrypted:(BOOL)encrypted
{
  personaCopy = persona;
  v17.receiver = self;
  v17.super_class = MBRestoreDirectoryAnnotator;
  v14 = [(MBRestoreDirectoryAnnotator *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_persona, persona);
    v15->_engineType = type;
    v15->_backupPolicy = policy;
    v15->_shouldRestoreSystemFiles = files;
    v15->_encrypted = encrypted;
  }

  return v15;
}

- (id)annotateDomains:(id)domains
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  domainsCopy = domains;
  v5 = [domainsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(domainsCopy);
      }

      v9 = *(*(&v13 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      v11 = [(MBRestoreDirectoryAnnotator *)self _annotateDomain:v9 atDomainRoot:0, v13];
      objc_autoreleasePoolPop(v10);
      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [domainsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (id)annotateDomain:(id)domain atDomainRoot:(id)root
{
  domainCopy = domain;
  rootCopy = root;
  if (!domainCopy)
  {
    __assert_rtn("[MBRestoreDirectoryAnnotator annotateDomain:atDomainRoot:]", "MBRestoreDirectoryAnnotator.m", 88, "domain");
  }

  v8 = rootCopy;
  if (!rootCopy)
  {
    __assert_rtn("[MBRestoreDirectoryAnnotator annotateDomain:atDomainRoot:]", "MBRestoreDirectoryAnnotator.m", 89, "domainRoot");
  }

  v9 = [(MBRestoreDirectoryAnnotator *)self _annotateDomain:domainCopy atDomainRoot:rootCopy];

  return v9;
}

- (id)_annotateDomain:(id)domain atDomainRoot:(id)root
{
  domainCopy = domain;
  rootCopy = root;
  if (![domainCopy isUninstalledAppDomain])
  {
    if (!rootCopy)
    {
      rootCopy = [(MBRestoreDirectoryAnnotator *)self _baseRestorePathForDomain:domainCopy];
    }

    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name = [domainCopy name];
      *buf = 138543618;
      v62 = name;
      v63 = 2112;
      v64 = rootCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Annotating domain: %{public}@ at %@", buf, 0x16u);

      name2 = [domainCopy name];
      v50 = rootCopy;
      _MBLog();
    }

    isAppDomain = [domainCopy isAppDomain];
    v8 = +[NSMutableSet set];
    if (!self->_shouldRestoreSystemFiles && !isAppDomain)
    {
      goto LABEL_25;
    }

    relativePathsNotToBackup = [domainCopy relativePathsNotToBackup];
    [v8 unionSet:relativePathsNotToBackup];

    if (self->_backupPolicy == 1)
    {
      relativePathsNotToBackupToDrive = [domainCopy relativePathsNotToBackupToDrive];
      [v8 unionSet:relativePathsNotToBackupToDrive];

      relativePathsNotToBackupInMegaBackup = [domainCopy relativePathsNotToBackupInMegaBackup];
    }

    else
    {
      engineType = self->_engineType;
      if ((engineType - 2) < 2)
      {
        relativePathsNotToBackupToService = [domainCopy relativePathsNotToBackupToService];
LABEL_20:
        v21 = relativePathsNotToBackupToService;
        [v8 unionSet:relativePathsNotToBackupToService];

        goto LABEL_21;
      }

      if (engineType != 4 && engineType != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"Unexpected engine type: %d", self->_engineType];
LABEL_21:
        if (!self->_encrypted && self->_engineType != 4)
        {
          relativePathsToOnlyBackupEncrypted = [domainCopy relativePathsToOnlyBackupEncrypted];
          [v8 unionSet:relativePathsToOnlyBackupEncrypted];
        }

        relativePathsToRemoveOnRestore = [domainCopy relativePathsToRemoveOnRestore];
        [v8 mb_minusPathSet:relativePathsToRemoveOnRestore];

LABEL_25:
        allObjects = [v8 allObjects];
        v25 = [allObjects sortedArrayUsingComparator:&stru_1003C29C0];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        name4 = v25;
        v26 = [name4 countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v56;
          while (2)
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v56 != v28)
              {
                objc_enumerationMutation(name4);
              }

              v30 = [(MBRestoreDirectoryAnnotator *)self _annotateNotBackedUpDomain:domainCopy domainRoot:rootCopy relativePath:*(*(&v55 + 1) + 8 * i)];
              if (v30)
              {
                v11 = v30;
                v31 = name4;
                goto LABEL_50;
              }
            }

            v27 = [name4 countByEnumeratingWithState:&v55 objects:v60 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        v31 = +[NSMutableSet set];
        if ((self->_shouldRestoreSystemFiles | isAppDomain))
        {
          relativePathsToBackupAndRestore = [domainCopy relativePathsToBackupAndRestore];
          [v31 unionSet:relativePathsToBackupAndRestore];

          relativePathsToRestoreOnly = [domainCopy relativePathsToRestoreOnly];
          [v31 unionSet:relativePathsToRestoreOnly];

          if ((self->_engineType & 0xFFFFFFFE) == 2)
          {
            relativePathsToRestoreOnlyFromService = [domainCopy relativePathsToRestoreOnlyFromService];
            [v31 unionSet:relativePathsToRestoreOnlyFromService];
          }

          relativePathsToRemoveOnRestore2 = [domainCopy relativePathsToRemoveOnRestore];
        }

        else
        {
          relativePathsOfSystemFilesToAlwaysRestore = [domainCopy relativePathsOfSystemFilesToAlwaysRestore];
          [v31 unionSet:relativePathsOfSystemFilesToAlwaysRestore];

          relativePathsToRemoveOnRestore2 = [domainCopy relativePathsOfSystemFilesToAlwaysRemoveOnRestore];
        }

        v37 = relativePathsToRemoveOnRestore2;
        [v31 unionSet:relativePathsToRemoveOnRestore2];

        relativePathsNotToRemoveIfNotRestored = [domainCopy relativePathsNotToRemoveIfNotRestored];
        [v31 unionSet:relativePathsNotToRemoveIfNotRestored];

        relativePathsToBackupToDriveAndStandardAccount = [domainCopy relativePathsToBackupToDriveAndStandardAccount];
        [v31 unionSet:relativePathsToBackupToDriveAndStandardAccount];

        [v31 mb_minusPathSet:v8];
        allObjects2 = [v31 allObjects];
        v41 = [allObjects2 sortedArrayUsingComparator:&stru_1003C29E0];

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v42 = v41;
        v43 = [v42 countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v52;
          while (2)
          {
            for (j = 0; j != v44; j = j + 1)
            {
              if (*v52 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = [(MBRestoreDirectoryAnnotator *)self _annotateRestoredDomain:domainCopy domainRoot:rootCopy relativePath:*(*(&v51 + 1) + 8 * j)];
              if (v47)
              {
                v11 = v47;
                goto LABEL_49;
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v51 objects:v59 count:16];
            if (v44)
            {
              continue;
            }

            break;
          }
        }

        v11 = 0;
LABEL_49:

LABEL_50:
        goto LABEL_51;
      }

      relativePathsNotToBackupInMegaBackup = [domainCopy relativePathsNotToBackupToDrive];
    }

    v19 = relativePathsNotToBackupInMegaBackup;
    [v8 unionSet:relativePathsNotToBackupInMegaBackup];

    if (self->_engineType != 4)
    {
      goto LABEL_21;
    }

    relativePathsNotToBackupToService = [domainCopy relativePathsNotToTransferDeviceToDevice];
    goto LABEL_20;
  }

  v8 = MBGetDefaultLog();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0;
    goto LABEL_52;
  }

  name3 = [domainCopy name];
  *buf = 138543362;
  v62 = name3;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping annotating uninstalled app domain: %{public}@", buf, 0xCu);

  name4 = [domainCopy name];
  _MBLog();
  v11 = 0;
LABEL_51:

LABEL_52:

  return v11;
}

- (id)_baseRestorePathForDomain:(id)domain
{
  domainCopy = domain;
  shouldRestoreToSharedVolume = [domainCopy shouldRestoreToSharedVolume];
  persona = self->_persona;
  if (shouldRestoreToSharedVolume)
  {
    [(MBPersona *)persona sharedIncompleteRestoreDirectory];
  }

  else
  {
    [(MBPersona *)persona userIncompleteRestoreDirectory];
  }
  v7 = ;
  rootPath = [domainCopy rootPath];

  v9 = [v7 stringByAppendingPathComponent:rootPath];

  return v9;
}

- (id)_annotateNotBackedUpDomain:(id)domain domainRoot:(id)root relativePath:(id)path
{
  v6 = [root stringByAppendingPathComponent:path];
  v7 = [(MBRestoreDirectoryAnnotator *)self _makeEmptyAnnotationFileWithPath:v6 value:@"NotBackedUp"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  return v8;
}

- (id)_annotateRestoredDomain:(id)domain domainRoot:(id)root relativePath:(id)path
{
  domainCopy = domain;
  pathCopy = path;
  v10 = [root stringByAppendingPathComponent:pathCopy];
  v11 = +[NSFileManager defaultManager];
  v23 = 0;
  v12 = [v11 attributesOfItemAtPath:v10 error:&v23];
  v13 = v23;

  if (!v12)
  {
    if ([MBError codeForNSError:v13]== 4)
    {
      relativePathsNotToRemoveIfNotRestored = [domainCopy relativePathsNotToRemoveIfNotRestored];
      v18 = [pathCopy mb_pathComponentExistsInSet:relativePathsNotToRemoveIfNotRestored];

      if (v18)
      {
        v19 = @"NotBackedUp";
      }

      else
      {
        v19 = @"NotRestored";
      }

      v16 = [(MBRestoreDirectoryAnnotator *)self _makeEmptyAnnotationFileWithPath:v10 value:v19];
      goto LABEL_9;
    }

    if ([MBError codeForNSError:v13]!= 5)
    {
      v21 = [MBError errorWithCode:100 error:v13 path:v10 format:@"Error getting restored file attributes"];
      goto LABEL_15;
    }

LABEL_12:
    v20 = 0;
    goto LABEL_16;
  }

  fileType = [v12 fileType];
  v15 = [fileType isEqualToString:NSFileTypeDirectory];

  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = [(MBRestoreDirectoryAnnotator *)self _annotatePath:v10 value:@"RestoreRoot"];
LABEL_9:
  v20 = v16;

  if (!v20)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v21 = v20;
  v13 = v21;
LABEL_15:
  v20 = v21;
LABEL_16:

  return v20;
}

- (id)_annotatePath:(id)path value:(id)value
{
  pathCopy = path;
  valueCopy = value;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = valueCopy;
    v17 = 2112;
    v18 = pathCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Annotating with '%@': %@", buf, 0x16u);
    _MBLog();
  }

  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  v9 = [valueCopy dataUsingEncoding:4];
  v14 = 0;
  v10 = [MBExtendedAttributes setValue:v9 forKey:@"MBRestoreAnnotation" forPathFSR:fileSystemRepresentation error:&v14];
  v11 = v14;
  valueCopy = 0;
  if ((v10 & 1) == 0)
  {
    valueCopy = [MBError errorWithCode:100 error:v11 format:@"Error setting %@ extended attribute", valueCopy];
  }

  return valueCopy;
}

- (id)_makeAnnotatedIntermediatePaths:(id)paths
{
  pathsCopy = paths;
  stringByDeletingLastPathComponent = [pathsCopy stringByDeletingLastPathComponent];
  v6 = +[NSFileManager defaultManager];
  v17 = 0;
  v7 = [v6 attributesOfItemAtPath:stringByDeletingLastPathComponent error:&v17];
  v8 = v17;

  if (v7)
  {
    v9 = 0;
    goto LABEL_10;
  }

  if ([MBError codeForNSError:v8]!= 4)
  {
    v12 = @"Error getting restored file attributes";
LABEL_8:
    v11 = [MBError errorWithCode:100 error:v8 path:pathsCopy format:v12];
    goto LABEL_9;
  }

  v10 = [(MBRestoreDirectoryAnnotator *)self _makeAnnotatedIntermediatePaths:stringByDeletingLastPathComponent];

  if (v10)
  {
    v11 = v10;
LABEL_6:
    v8 = v11;
LABEL_9:
    v9 = v11;
    goto LABEL_10;
  }

  v14 = +[NSFileManager defaultManager];
  v16 = 0;
  v15 = [v14 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:0 attributes:0 error:&v16];
  v8 = v16;

  if ((v15 & 1) == 0)
  {
    v12 = @"Error creating annotated parent directory";
    goto LABEL_8;
  }

  v9 = [(MBRestoreDirectoryAnnotator *)self _annotatePath:stringByDeletingLastPathComponent value:@"Intermediate"];

  if (v9)
  {
    v11 = v9;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_10:

  return v9;
}

- (id)_makeEmptyAnnotationFileWithPath:(id)path value:(id)value
{
  pathCopy = path;
  valueCopy = value;
  v8 = [(MBRestoreDirectoryAnnotator *)self _makeAnnotatedIntermediatePaths:pathCopy];
  if (!v8)
  {
    v10 = open([pathCopy fileSystemRepresentation], 1793, 420);
    if (v10 < 0)
    {
      if (*__error() == 17 || *__error() == 21)
      {
        v12 = MBGetDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v30 = valueCopy;
          v31 = 2112;
          v32 = pathCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Not creating %@ empty annotation file at path since it already exists: %@", buf, 0x16u);
          _MBLog();
        }

        v8 = 0;
      }

      else if (*__error() == 1)
      {
        stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
        v28 = 0;
        v14 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:stringByDeletingLastPathComponent identifiedBy:@"annotation-temp" error:&v28];
        v15 = v28;
        v16 = v15;
        if (v14)
        {
          makeTemporaryFilePath = [v14 makeTemporaryFilePath];
          v18 = makeTemporaryFilePath;
          v19 = open([makeTemporaryFilePath fileSystemRepresentation], 1793, 420);
          if (v19 < 0)
          {
            v8 = [MBError posixErrorWithCode:100 path:pathCopy format:@"Error creating empty annotation file to rename"];
            v21 = 0;
          }

          else
          {
            v20 = [(MBRestoreDirectoryAnnotator *)self _annotatePath:makeTemporaryFilePath value:valueCopy];
            if (v20)
            {
              v21 = v20;
              v8 = v21;
            }

            else
            {
              v22 = makeTemporaryFilePath;
              fileSystemRepresentation = [makeTemporaryFilePath fileSystemRepresentation];
              v24 = pathCopy;
              fileSystemRepresentation2 = [pathCopy fileSystemRepresentation];
              rename(fileSystemRepresentation, fileSystemRepresentation2, v26);
              if (v27)
              {
                v8 = [MBError posixErrorWithPath:pathCopy format:@"Error renaming empty annotation file into place"];
                v21 = 0;
              }

              else
              {
                v21 = 0;
                v8 = 0;
              }
            }

            [v14 dispose];
            if (v19)
            {
              close(v19);
            }
          }
        }

        else
        {
          v8 = v15;
        }
      }

      else
      {
        v8 = [MBError posixErrorWithCode:100 path:pathCopy format:@"Error creating empty annotation file"];
      }
    }

    else
    {
      v11 = v10;
      v8 = [(MBRestoreDirectoryAnnotator *)self _annotatePath:pathCopy value:valueCopy];
      if (!v8)
      {
        close(v11);
      }
    }
  }

  return v8;
}

@end