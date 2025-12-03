@interface NSURL(TSUAdditions)
+ (id)tsu_fileURLWithPath:()TSUAdditions;
- (BOOL)tsu_isInTrash;
- (BOOL)tsu_setNeedsDocumentIdentifierAndReturnError:()TSUAdditions;
- (id)tsu_displayName;
- (id)tsu_documentIdentifier;
- (id)tsu_fileProviderBookmarkableString;
- (id)tsu_fileSystemTypeName;
- (id)tsu_fileTypeIdentifierHandlingFileCoordinationPromises;
- (id)tsu_reachableFileURLByDeletingUnreachablePathComponents;
- (id)tsu_shareOwnerName;
- (uint64_t)_isShareRole:()TSUAdditions role:error:;
- (uint64_t)tsu_displayName:()TSUAdditions error:;
- (uint64_t)tsu_fileSize;
- (uint64_t)tsu_fileSize:()TSUAdditions error:;
- (uint64_t)tsu_isDocumentUploaded;
- (uint64_t)tsu_isDocumentUploaded:()TSUAdditions error:;
- (uint64_t)tsu_isOnAPFSVolume;
- (uint64_t)tsu_isOnSameVolumeAs:()TSUAdditions;
- (uint64_t)tsu_isShareCollaborator;
- (uint64_t)tsu_isShareOwner;
- (uint64_t)tsu_isShared;
- (uint64_t)tsu_isShared:()TSUAdditions error:;
- (uint64_t)tsu_shareOwnerName:()TSUAdditions error:;
- (void)tsu_performSecurityScopedResourceAccessAsynchronouslyUsingBlock:()TSUAdditions;
- (void)tsu_performSecurityScopedResourceAccessUsingBlock:()TSUAdditions;
- (void)tsu_removeCachedResourceValueForKeys:()TSUAdditions;
@end

@implementation NSURL(TSUAdditions)

- (id)tsu_documentIdentifier
{
  v4 = 0;
  v1 = [self getResourceValue:&v4 forKey:*MEMORY[0x277CBE7C8] error:0];
  v2 = v4;
  if ((v1 & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (void)tsu_performSecurityScopedResourceAccessUsingBlock:()TSUAdditions
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    startAccessingSecurityScopedResource = [self startAccessingSecurityScopedResource];
    v6[2](v6);
    v4 = v6;
    if (startAccessingSecurityScopedResource)
    {
      [self stopAccessingSecurityScopedResource];
      v4 = v6;
    }
  }
}

- (void)tsu_performSecurityScopedResourceAccessAsynchronouslyUsingBlock:()TSUAdditions
{
  if (a3)
  {
    v4 = a3;
    startAccessingSecurityScopedResource = [self startAccessingSecurityScopedResource];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __87__NSURL_TSUAdditions__tsu_performSecurityScopedResourceAccessAsynchronouslyUsingBlock___block_invoke;
    v6[3] = &unk_2799C6410;
    v7 = startAccessingSecurityScopedResource;
    v6[4] = self;
    v4[2](v4, v6);
  }
}

- (uint64_t)tsu_fileSize
{
  v2 = 0;
  [self tsu_fileSize:&v2 error:0];
  return v2;
}

- (uint64_t)tsu_fileSize:()TSUAdditions error:
{
  v36[1] = *MEMORY[0x277D85DE8];
  v34 = 0;
  v6 = *MEMORY[0x277CBE838];
  v7 = [self getResourceValue:&v34 forKey:*MEMORY[0x277CBE838] error:0];
  v8 = v34;
  v9 = v8;
  unsignedLongLongValue = 0;
  if (v7)
  {
    unsignedLongLongValue = [v8 unsignedLongLongValue];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v36[0] = v6;
  v12 = 1;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v14 = [defaultManager enumeratorAtURL:self includingPropertiesForKeys:v13 options:0 errorHandler:0];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v27 = a4;
    v18 = *v31;
    v12 = 1;
    do
    {
      v19 = 0;
      do
      {
        v20 = v9;
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v30 + 1) + 8 * v19);
        v28 = 0;
        v29 = 0;
        v22 = [v21 getResourceValue:&v29 forKey:v6 error:&v28];
        v9 = v29;

        v23 = v28;
        if (v22)
        {
          unsignedLongLongValue += [v9 unsignedLongLongValue];
        }

        else
        {
          if ((v12 & 1) == 0)
          {
            goto LABEL_15;
          }

          if (TSUDefaultCat_init_token != -1)
          {
            [NSURL(TSUAdditions) tsu_fileSize:error:];
          }

          if (v27)
          {
            v24 = v23;
            v12 = 0;
            *v27 = v23;
          }

          else
          {
LABEL_15:
            v12 = 0;
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v17);
  }

  if (a3)
  {
    *a3 = unsignedLongLongValue;
  }

  return v12 & 1;
}

- (uint64_t)tsu_isShared
{
  v2 = 0;
  [self tsu_isShared:&v2 error:0];
  return v2;
}

- (uint64_t)tsu_isShared:()TSUAdditions error:
{
  bOOLValue = [0 BOOLValue];
  if (a3)
  {
    *a3 = bOOLValue;
  }

  return 1;
}

- (uint64_t)_isShareRole:()TSUAdditions role:error:
{
  v7 = a4;
  if (TSUDefaultCat_init_token == -1)
  {
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [NSURL(TSUAdditions) _isShareRole:role:error:];
  if (a5)
  {
LABEL_3:
    *a5 = 0;
  }

LABEL_4:
  if (a3)
  {
    *a3 = 0;
  }

  return 0;
}

- (uint64_t)tsu_isShareCollaborator
{
  v2 = 0;
  [self tsu_isShareCollaborator:&v2 error:0];
  return v2;
}

- (uint64_t)tsu_isShareOwner
{
  v2 = 0;
  [self tsu_isShareOwner:&v2 error:0];
  return v2;
}

- (id)tsu_displayName
{
  v3 = 0;
  [self tsu_displayName:&v3 error:0];
  v1 = v3;

  return v1;
}

- (uint64_t)tsu_displayName:()TSUAdditions error:
{
  startAccessingSecurityScopedResource = [self startAccessingSecurityScopedResource];
  v8 = *MEMORY[0x277CBE8D0];
  v14 = 0;
  v9 = [self getPromisedItemResourceValue:a3 forKey:v8 error:&v14];
  v10 = v14;
  if (v9)
  {
    goto LABEL_7;
  }

  if (TSUDefaultCat_init_token == -1)
  {
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [NSURL(TSUAdditions) tsu_displayName:error:];
  if (a3)
  {
LABEL_4:
    lastPathComponent = [self lastPathComponent];
    *a3 = [lastPathComponent stringByDeletingPathExtension];
  }

LABEL_5:
  if (a4)
  {
    v12 = v10;
    *a4 = v10;
  }

LABEL_7:
  if (startAccessingSecurityScopedResource)
  {
    [self stopAccessingSecurityScopedResource];
  }

  return v9;
}

- (uint64_t)tsu_isDocumentUploaded
{
  v2 = 0;
  [self tsu_isDocumentUploaded:&v2 error:0];
  return v2;
}

- (uint64_t)tsu_isDocumentUploaded:()TSUAdditions error:
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__NSURL_TSUAdditions__tsu_isDocumentUploaded_error___block_invoke;
  v8[3] = &unk_2799C6438;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = &v15;
  v8[7] = &v19;
  [self tsu_performSecurityScopedResourceAccessUsingBlock:v8];
  if (a4)
  {
    *a4 = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  if (a3)
  {
    *a3 = *(v20 + 24);
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v6;
}

- (id)tsu_shareOwnerName
{
  v3 = 0;
  [self tsu_shareOwnerName:&v3 error:0];
  v1 = v3;

  return v1;
}

- (uint64_t)tsu_shareOwnerName:()TSUAdditions error:
{
  if (TSUDefaultCat_init_token != -1)
  {
    [NSURL(TSUAdditions) tsu_shareOwnerName:error:];
  }

  *a3 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

- (BOOL)tsu_setNeedsDocumentIdentifierAndReturnError:()TSUAdditions
{
  v4 = open([self fileSystemRepresentation], 0x200000);
  if (v4 < 0)
  {
    v6 = -1;
    if (!a3)
    {
      return v6 == 0;
    }

    goto LABEL_9;
  }

  v5 = v4;
  memset(&v8, 0, sizeof(v8));
  v6 = fstat(v4, &v8);
  if (!v6)
  {
    if ((v8.st_flags & 0x40) != 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = fchflags(v5, v8.st_flags | 0x40);
    }
  }

  close(v5);
  if (a3)
  {
LABEL_9:
    if (v6)
    {
      *a3 = [MEMORY[0x277CCA9B8] tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    }
  }

  return v6 == 0;
}

- (id)tsu_fileTypeIdentifierHandlingFileCoordinationPromises
{
  v3 = 0;
  [self getResourceValue:&v3 forKey:*MEMORY[0x277CBE918] error:0];
  v1 = v3;

  return v1;
}

- (id)tsu_fileSystemTypeName
{
  v7 = *MEMORY[0x277D85DE8];
  if (![self isFileURL])
  {
    v4 = 0;
    goto LABEL_12;
  }

  path = [self path];
  memset(&v6, 0, 512);
  if (!statfs([path fileSystemRepresentation], &v6) || (objc_msgSend(path, "stringByDeletingLastPathComponent"), v3 = objc_claimAutoreleasedReturnValue(), path, path = v3, LODWORD(v3) = statfs(objc_msgSend(v3, "fileSystemRepresentation"), &v6), __error(), !v3))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6.f_fstypename];
    goto LABEL_11;
  }

  if (![self checkResourceIsReachableAndReturnError:0])
  {
LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  if (TSUDefaultCat_init_token != -1)
  {
    [NSURL(TSUAdditions) tsu_fileSystemTypeName];
    goto LABEL_10;
  }

  v4 = 0;
LABEL_11:

LABEL_12:

  return v4;
}

- (uint64_t)tsu_isOnAPFSVolume
{
  if (![self isFileURL])
  {
    return 0;
  }

  tsu_fileSystemTypeName = [self tsu_fileSystemTypeName];
  v3 = tsu_fileSystemTypeName;
  if (tsu_fileSystemTypeName)
  {
    v4 = [tsu_fileSystemTypeName isEqualToString:@"apfs"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tsu_reachableFileURLByDeletingUnreachablePathComponents
{
  if ([self isFileURL])
  {
    selfCopy = self;
    while (1)
    {
      path = [selfCopy path];
      v4 = [path length];

      if (v4 < 3)
      {
        break;
      }

      if ([selfCopy checkResourceIsReachableAndReturnError:0])
      {
        v5 = selfCopy;
        selfCopy = v5;
        if (v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        uRLByDeletingLastPathComponent = [selfCopy URLByDeletingLastPathComponent];

        selfCopy = uRLByDeletingLastPathComponent;
      }
    }

    v5 = 0;
LABEL_10:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)tsu_isOnSameVolumeAs:()TSUAdditions
{
  v4 = a3;
  tsu_reachableFileURLByDeletingUnreachablePathComponents = [self tsu_reachableFileURLByDeletingUnreachablePathComponents];
  tsu_reachableFileURLByDeletingUnreachablePathComponents2 = [v4 tsu_reachableFileURLByDeletingUnreachablePathComponents];

  if (![tsu_reachableFileURLByDeletingUnreachablePathComponents isFileURL] || !objc_msgSend(tsu_reachableFileURLByDeletingUnreachablePathComponents2, "isFileURL"))
  {
    v14 = 0;
    goto LABEL_20;
  }

  memset(&v17, 0, sizeof(v17));
  memset(&v16, 0, sizeof(v16));
  path = [tsu_reachableFileURLByDeletingUnreachablePathComponents path];
  fileSystemRepresentation = [path fileSystemRepresentation];

  if (fileSystemRepresentation)
  {
    v9 = lstat(fileSystemRepresentation, &v17);
    if (v9 != -1)
    {
      goto LABEL_8;
    }

    if (TSUDefaultCat_init_token != -1)
    {
      [NSURL(TSUAdditions) tsu_isOnSameVolumeAs:];
    }
  }

  v9 = -1;
LABEL_8:
  path2 = [tsu_reachableFileURLByDeletingUnreachablePathComponents2 path];
  fileSystemRepresentation2 = [path2 fileSystemRepresentation];

  if (!fileSystemRepresentation2)
  {
LABEL_12:
    v12 = -1;
    goto LABEL_13;
  }

  v12 = lstat(fileSystemRepresentation2, &v16);
  if (v12 == -1)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      [NSURL(TSUAdditions) tsu_isOnSameVolumeAs:];
    }

    goto LABEL_12;
  }

LABEL_13:
  if (v12 | v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = v17.st_dev == v16.st_dev;
  }

  v14 = v13;
LABEL_20:

  return v14;
}

+ (id)tsu_fileURLWithPath:()TSUAdditions
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tsu_fileProviderBookmarkableString
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v2 = dispatch_semaphore_create(0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__NSURL_TSUAdditions__tsu_fileProviderBookmarkableString__block_invoke;
  v6[3] = &unk_2799C6488;
  v6[4] = self;
  v8 = &v9;
  v3 = v2;
  v7 = v3;
  [self tsu_performSecurityScopedResourceAccessAsynchronouslyUsingBlock:v6];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)tsu_removeCachedResourceValueForKeys:()TSUAdditions
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [self removeCachedResourceValueForKey:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)tsu_isInTrash
{
  v5 = 2;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = 0;
  LODWORD(self) = [defaultManager getRelationship:&v5 ofDirectory:102 inDomain:0 toItemAtURL:self error:&v4];

  if (self)
  {
    return v5 == 0;
  }

  if (TSUDefaultCat_init_token == -1)
  {
    return 0;
  }

  [NSURL(TSUAdditions) tsu_isInTrash];
  return 0;
}

@end