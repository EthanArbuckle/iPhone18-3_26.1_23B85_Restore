@interface NSString(MFSharedResourcesDirectoryPathUtils)
- (id)mf_betterStringByResolvingSymlinksInPath;
- (id)mf_canonicalizedAbsolutePath;
- (id)mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath;
- (id)mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath;
- (id)mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath;
@end

@implementation NSString(MFSharedResourcesDirectoryPathUtils)

- (id)mf_betterStringByResolvingSymlinksInPath
{
  _MFLockGlobalLock();
  v2 = mf_betterStringByResolvingSymlinksInPath_resolvedPaths;
  if (!mf_betterStringByResolvingSymlinksInPath_resolvedPaths)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = mf_betterStringByResolvingSymlinksInPath_resolvedPaths;
    mf_betterStringByResolvingSymlinksInPath_resolvedPaths = v3;

    v2 = mf_betterStringByResolvingSymlinksInPath_resolvedPaths;
  }

  stringByResolvingSymlinksInPath = [v2 objectForKey:self];
  _MFUnlockGlobalLock();
  if (!stringByResolvingSymlinksInPath)
  {
    stringByResolvingSymlinksInPath = [self stringByResolvingSymlinksInPath];
    if (stringByResolvingSymlinksInPath)
    {
      _MFLockGlobalLock();
      [mf_betterStringByResolvingSymlinksInPath_resolvedPaths setObject:stringByResolvingSymlinksInPath forKey:self];
      [mf_betterStringByResolvingSymlinksInPath_resolvedPaths setObject:stringByResolvingSymlinksInPath forKey:stringByResolvingSymlinksInPath];
      _MFUnlockGlobalLock();
    }
  }

  return stringByResolvingSymlinksInPath;
}

- (id)mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath
{
  mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath = [self mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath];
  if (([mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath hasPrefix:@"~"] & 1) == 0)
  {
    if (mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir)
    {
      mf_betterStringByResolvingSymlinksInPath = 0;
    }

    else
    {
      mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath2 = [@"~" mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath];
      mf_betterStringByResolvingSymlinksInPath = [mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath2 mf_betterStringByResolvingSymlinksInPath];

      _MFLockGlobalLock();
      if (!mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir)
      {
        objc_storeStrong(&mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir, mf_betterStringByResolvingSymlinksInPath);
      }

      _MFUnlockGlobalLock();
    }

    if ([mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath hasPrefix:?])
    {
      v4 = [mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath substringFromIndex:{objc_msgSend(mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir, "length")}];
      v5 = [@"~" stringByAppendingString:v4];

      mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath = v5;
    }
  }

  return mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath;
}

- (id)mf_canonicalizedAbsolutePath
{
  fileSystemRepresentation = [self fileSystemRepresentation];
  v2 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  realpath_DARWIN_EXTSN(fileSystemRepresentation, v2);
  if (*v2)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [defaultManager stringWithFileSystemRepresentation:v2 length:strlen(v2)];
  }

  else
  {
    v4 = 0;
  }

  free(v2);

  return v4;
}

- (id)mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath
{
  v2 = [self length];
  v3 = v2;
  if (v2 >= 0x400)
  {
    v4 = 1024;
  }

  else
  {
    v4 = v2;
  }

  v5 = malloc_type_malloc(0x800uLL, 0x1000040BDFB0063uLL);
  [self getCharacters:v5 range:{0, v4}];
  if (v3 < 2)
  {
    if (!v3)
    {
      v4 = 0;
      goto LABEL_18;
    }

LABEL_10:
    v4 = 1;
  }

  else
  {
    while (v5[v4 - 1] == 47)
    {
      if (v4-- <= 2)
      {
        goto LABEL_10;
      }
    }
  }

  if (*v5 == 126)
  {
    v7 = v4 - 1;
    if (v4 == 1 || v5[1] == 47)
    {
      v8 = CPSharedResourcesDirectory();
      v9 = [v8 length];
      v10 = v9;
      v11 = v9 + v7;
      if (v9 + v7 <= 1024)
      {
        memmove(&v5[v9], v5 + 1, 2 * v7);
        [v8 getCharacters:v5 range:{0, v10}];
        v4 = v11;
      }
    }
  }

LABEL_18:
  v12 = [MEMORY[0x1E696AEC0] stringWithCharacters:v5 length:v4];
  free(v5);

  return v12;
}

- (id)mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v2 = [selfCopy length];
  v3 = v2;
  if (v2 < 1)
  {
    goto LABEL_35;
  }

  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  memset(&v22 - v4, 170, v6);
  if (v3 >= 0x101)
  {
    v5 = malloc_type_malloc(2 * v3, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(v5, 2 * v3);
  }

  [selfCopy getCharacters:v5 range:{0, v3}];
  if (v3 != 1)
  {
    v7 = v3;
    while (v5[v7 - 1] == 47)
    {
      if (v7-- <= 2)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = 1;
  if (*v5 != 47)
  {
LABEL_11:
    v9 = CPSharedResourcesDirectory();
    v10 = [v9 length];
    v11 = v10;
    v12 = v7 - v10;
    if (v7 >= v10)
    {
      v22 = &v22;
      if (v10 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v10;
      }

      MEMORY[0x1EEE9AC00](v10);
      v15 = &v22 - v14;
      memset(&v22 - v14, 170, v16);
      if (v11 >= 0x101)
      {
        v15 = malloc_type_malloc(2 * v13, 0x1000040BDFB0063uLL);
      }

      else
      {
        bzero(v15, 2 * v13);
      }

      [v9 getCharacters:v15 range:{0, v11, v22, v23}];
      if (v11 < 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        while (v5[v17] == *&v15[2 * v17])
        {
          if (v11 == ++v17)
          {
            v17 = v11;
            break;
          }
        }
      }

      if (v11 >= 0x101)
      {
        free(v15);
      }

      if (v17 == v7)
      {
        *v5 = 126;
        v7 = 1;
      }

      else if (v17 == v11)
      {
        v18 = &v5[v11];
        if (*v18 == 47)
        {
          memmove(v5 + 1, v18, 2 * v12);
          *v5 = 126;
          v7 = v12 + 1;
        }
      }
    }
  }

  v19 = [MEMORY[0x1E696AEC0] stringWithCharacters:v5 length:v7];

  if (v3 >= 0x101)
  {
    free(v5);
  }

  selfCopy = v19;
LABEL_35:
  v20 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

@end