@interface MBRestoreDirectoryAnnotator
+ (BOOL)isRestoredPath:(id)a3;
- (id)_annotateDomain:(id)a3 atDomainRoot:(id)a4;
- (id)_annotateNotBackedUpDomain:(id)a3 domainRoot:(id)a4 relativePath:(id)a5;
- (id)_annotatePath:(id)a3 value:(id)a4;
- (id)_annotateRestoredDomain:(id)a3 domainRoot:(id)a4 relativePath:(id)a5;
- (id)_baseRestorePathForDomain:(id)a3;
- (id)_initWithPersona:(id)a3 engineType:(int)a4 backupPolicy:(int64_t)a5 shouldRestoreSystemFiles:(BOOL)a6 encrypted:(BOOL)a7;
- (id)_makeAnnotatedIntermediatePaths:(id)a3;
- (id)_makeEmptyAnnotationFileWithPath:(id)a3 value:(id)a4;
- (id)annotateDomain:(id)a3 atDomainRoot:(id)a4;
- (id)annotateDomains:(id)a3;
@end

@implementation MBRestoreDirectoryAnnotator

+ (BOOL)isRestoredPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = +[MBExtendedAttributes valueForKey:forPathFSR:error:](MBExtendedAttributes, "valueForKey:forPathFSR:error:", @"MBRestoreAnnotation", [v3 fileSystemRepresentation], 0);
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

- (id)_initWithPersona:(id)a3 engineType:(int)a4 backupPolicy:(int64_t)a5 shouldRestoreSystemFiles:(BOOL)a6 encrypted:(BOOL)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = MBRestoreDirectoryAnnotator;
  v14 = [(MBRestoreDirectoryAnnotator *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_persona, a3);
    v15->_engineType = a4;
    v15->_backupPolicy = a5;
    v15->_shouldRestoreSystemFiles = a6;
    v15->_encrypted = a7;
  }

  return v15;
}

- (id)annotateDomains:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(v4);
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
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)annotateDomain:(id)a3 atDomainRoot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBRestoreDirectoryAnnotator annotateDomain:atDomainRoot:]", "MBRestoreDirectoryAnnotator.m", 88, "domain");
  }

  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[MBRestoreDirectoryAnnotator annotateDomain:atDomainRoot:]", "MBRestoreDirectoryAnnotator.m", 89, "domainRoot");
  }

  v9 = [(MBRestoreDirectoryAnnotator *)self _annotateDomain:v6 atDomainRoot:v7];

  return v9;
}

- (id)_annotateDomain:(id)a3 atDomainRoot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 isUninstalledAppDomain])
  {
    if (!v7)
    {
      v7 = [(MBRestoreDirectoryAnnotator *)self _baseRestorePathForDomain:v6];
    }

    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 name];
      *buf = 138543618;
      v62 = v13;
      v63 = 2112;
      v64 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Annotating domain: %{public}@ at %@", buf, 0x16u);

      v49 = [v6 name];
      v50 = v7;
      _MBLog();
    }

    v14 = [v6 isAppDomain];
    v8 = +[NSMutableSet set];
    if (!self->_shouldRestoreSystemFiles && !v14)
    {
      goto LABEL_25;
    }

    v15 = [v6 relativePathsNotToBackup];
    [v8 unionSet:v15];

    if (self->_backupPolicy == 1)
    {
      v16 = [v6 relativePathsNotToBackupToDrive];
      [v8 unionSet:v16];

      v17 = [v6 relativePathsNotToBackupInMegaBackup];
    }

    else
    {
      engineType = self->_engineType;
      if ((engineType - 2) < 2)
      {
        v20 = [v6 relativePathsNotToBackupToService];
LABEL_20:
        v21 = v20;
        [v8 unionSet:v20];

        goto LABEL_21;
      }

      if (engineType != 4 && engineType != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"Unexpected engine type: %d", self->_engineType];
LABEL_21:
        if (!self->_encrypted && self->_engineType != 4)
        {
          v22 = [v6 relativePathsToOnlyBackupEncrypted];
          [v8 unionSet:v22];
        }

        v23 = [v6 relativePathsToRemoveOnRestore];
        [v8 mb_minusPathSet:v23];

LABEL_25:
        v24 = [v8 allObjects];
        v25 = [v24 sortedArrayUsingComparator:&stru_1003C29C0];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v10 = v25;
        v26 = [v10 countByEnumeratingWithState:&v55 objects:v60 count:16];
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
                objc_enumerationMutation(v10);
              }

              v30 = [(MBRestoreDirectoryAnnotator *)self _annotateNotBackedUpDomain:v6 domainRoot:v7 relativePath:*(*(&v55 + 1) + 8 * i)];
              if (v30)
              {
                v11 = v30;
                v31 = v10;
                goto LABEL_50;
              }
            }

            v27 = [v10 countByEnumeratingWithState:&v55 objects:v60 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        v31 = +[NSMutableSet set];
        if ((self->_shouldRestoreSystemFiles | v14))
        {
          v32 = [v6 relativePathsToBackupAndRestore];
          [v31 unionSet:v32];

          v33 = [v6 relativePathsToRestoreOnly];
          [v31 unionSet:v33];

          if ((self->_engineType & 0xFFFFFFFE) == 2)
          {
            v34 = [v6 relativePathsToRestoreOnlyFromService];
            [v31 unionSet:v34];
          }

          v35 = [v6 relativePathsToRemoveOnRestore];
        }

        else
        {
          v36 = [v6 relativePathsOfSystemFilesToAlwaysRestore];
          [v31 unionSet:v36];

          v35 = [v6 relativePathsOfSystemFilesToAlwaysRemoveOnRestore];
        }

        v37 = v35;
        [v31 unionSet:v35];

        v38 = [v6 relativePathsNotToRemoveIfNotRestored];
        [v31 unionSet:v38];

        v39 = [v6 relativePathsToBackupToDriveAndStandardAccount];
        [v31 unionSet:v39];

        [v31 mb_minusPathSet:v8];
        v40 = [v31 allObjects];
        v41 = [v40 sortedArrayUsingComparator:&stru_1003C29E0];

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

              v47 = [(MBRestoreDirectoryAnnotator *)self _annotateRestoredDomain:v6 domainRoot:v7 relativePath:*(*(&v51 + 1) + 8 * j)];
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

      v17 = [v6 relativePathsNotToBackupToDrive];
    }

    v19 = v17;
    [v8 unionSet:v17];

    if (self->_engineType != 4)
    {
      goto LABEL_21;
    }

    v20 = [v6 relativePathsNotToTransferDeviceToDevice];
    goto LABEL_20;
  }

  v8 = MBGetDefaultLog();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 0;
    goto LABEL_52;
  }

  v9 = [v6 name];
  *buf = 138543362;
  v62 = v9;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping annotating uninstalled app domain: %{public}@", buf, 0xCu);

  v10 = [v6 name];
  _MBLog();
  v11 = 0;
LABEL_51:

LABEL_52:

  return v11;
}

- (id)_baseRestorePathForDomain:(id)a3
{
  v4 = a3;
  v5 = [v4 shouldRestoreToSharedVolume];
  persona = self->_persona;
  if (v5)
  {
    [(MBPersona *)persona sharedIncompleteRestoreDirectory];
  }

  else
  {
    [(MBPersona *)persona userIncompleteRestoreDirectory];
  }
  v7 = ;
  v8 = [v4 rootPath];

  v9 = [v7 stringByAppendingPathComponent:v8];

  return v9;
}

- (id)_annotateNotBackedUpDomain:(id)a3 domainRoot:(id)a4 relativePath:(id)a5
{
  v6 = [a4 stringByAppendingPathComponent:a5];
  v7 = [(MBRestoreDirectoryAnnotator *)self _makeEmptyAnnotationFileWithPath:v6 value:@"NotBackedUp"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  return v8;
}

- (id)_annotateRestoredDomain:(id)a3 domainRoot:(id)a4 relativePath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 stringByAppendingPathComponent:v9];
  v11 = +[NSFileManager defaultManager];
  v23 = 0;
  v12 = [v11 attributesOfItemAtPath:v10 error:&v23];
  v13 = v23;

  if (!v12)
  {
    if ([MBError codeForNSError:v13]== 4)
    {
      v17 = [v8 relativePathsNotToRemoveIfNotRestored];
      v18 = [v9 mb_pathComponentExistsInSet:v17];

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

  v14 = [v12 fileType];
  v15 = [v14 isEqualToString:NSFileTypeDirectory];

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

- (id)_annotatePath:(id)a3 value:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Annotating with '%@': %@", buf, 0x16u);
    _MBLog();
  }

  v8 = [v5 fileSystemRepresentation];
  v9 = [v6 dataUsingEncoding:4];
  v14 = 0;
  v10 = [MBExtendedAttributes setValue:v9 forKey:@"MBRestoreAnnotation" forPathFSR:v8 error:&v14];
  v11 = v14;
  v12 = 0;
  if ((v10 & 1) == 0)
  {
    v12 = [MBError errorWithCode:100 error:v11 format:@"Error setting %@ extended attribute", v6];
  }

  return v12;
}

- (id)_makeAnnotatedIntermediatePaths:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByDeletingLastPathComponent];
  v6 = +[NSFileManager defaultManager];
  v17 = 0;
  v7 = [v6 attributesOfItemAtPath:v5 error:&v17];
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
    v11 = [MBError errorWithCode:100 error:v8 path:v4 format:v12];
    goto LABEL_9;
  }

  v10 = [(MBRestoreDirectoryAnnotator *)self _makeAnnotatedIntermediatePaths:v5];

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
  v15 = [v14 createDirectoryAtPath:v5 withIntermediateDirectories:0 attributes:0 error:&v16];
  v8 = v16;

  if ((v15 & 1) == 0)
  {
    v12 = @"Error creating annotated parent directory";
    goto LABEL_8;
  }

  v9 = [(MBRestoreDirectoryAnnotator *)self _annotatePath:v5 value:@"Intermediate"];

  if (v9)
  {
    v11 = v9;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_10:

  return v9;
}

- (id)_makeEmptyAnnotationFileWithPath:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MBRestoreDirectoryAnnotator *)self _makeAnnotatedIntermediatePaths:v6];
  if (!v8)
  {
    v10 = open([v6 fileSystemRepresentation], 1793, 420);
    if (v10 < 0)
    {
      if (*__error() == 17 || *__error() == 21)
      {
        v12 = MBGetDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v30 = v7;
          v31 = 2112;
          v32 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Not creating %@ empty annotation file at path since it already exists: %@", buf, 0x16u);
          _MBLog();
        }

        v8 = 0;
      }

      else if (*__error() == 1)
      {
        v13 = [v6 stringByDeletingLastPathComponent];
        v28 = 0;
        v14 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:v13 identifiedBy:@"annotation-temp" error:&v28];
        v15 = v28;
        v16 = v15;
        if (v14)
        {
          v17 = [v14 makeTemporaryFilePath];
          v18 = v17;
          v19 = open([v17 fileSystemRepresentation], 1793, 420);
          if (v19 < 0)
          {
            v8 = [MBError posixErrorWithCode:100 path:v6 format:@"Error creating empty annotation file to rename"];
            v21 = 0;
          }

          else
          {
            v20 = [(MBRestoreDirectoryAnnotator *)self _annotatePath:v17 value:v7];
            if (v20)
            {
              v21 = v20;
              v8 = v21;
            }

            else
            {
              v22 = v17;
              v23 = [v17 fileSystemRepresentation];
              v24 = v6;
              v25 = [v6 fileSystemRepresentation];
              rename(v23, v25, v26);
              if (v27)
              {
                v8 = [MBError posixErrorWithPath:v6 format:@"Error renaming empty annotation file into place"];
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
        v8 = [MBError posixErrorWithCode:100 path:v6 format:@"Error creating empty annotation file"];
      }
    }

    else
    {
      v11 = v10;
      v8 = [(MBRestoreDirectoryAnnotator *)self _annotatePath:v6 value:v7];
      if (!v8)
      {
        close(v11);
      }
    }
  }

  return v8;
}

@end