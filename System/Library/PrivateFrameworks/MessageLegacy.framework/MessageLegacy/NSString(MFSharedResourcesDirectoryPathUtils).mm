@interface NSString(MFSharedResourcesDirectoryPathUtils)
- (uint64_t)mf_betterStringByResolvingSymlinksInPath;
- (uint64_t)mf_canonicalizedAbsolutePath;
- (uint64_t)mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath;
- (uint64_t)mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath;
- (void)mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath;
@end

@implementation NSString(MFSharedResourcesDirectoryPathUtils)

- (uint64_t)mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath
{
  mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath = [self mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath];
  if ([mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath hasPrefix:@"~"])
  {
    return mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath;
  }

  if (!mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir)
  {
    v2 = [objc_msgSend(@"~" "mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath")];
    _MFLockGlobalLock();
    if (!mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir)
    {
      mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir = v2;
    }

    _MFUnlockGlobalLock();
  }

  if (![mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath hasPrefix:?])
  {
    return mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath;
  }

  v3 = [mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath substringFromIndex:{objc_msgSend(mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath_homeDir, "length")}];

  return [@"~" stringByAppendingString:v3];
}

- (uint64_t)mf_betterStringByResolvingSymlinksInPath
{
  _MFLockGlobalLock();
  v2 = mf_betterStringByResolvingSymlinksInPath_resolvedPaths;
  if (!mf_betterStringByResolvingSymlinksInPath_resolvedPaths)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mf_betterStringByResolvingSymlinksInPath_resolvedPaths = v2;
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

- (uint64_t)mf_canonicalizedAbsolutePath
{
  fileSystemRepresentation = [self fileSystemRepresentation];
  v2 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  realpath_DARWIN_EXTSN(fileSystemRepresentation, v2);
  if (*v2)
  {
    v3 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  }

  else
  {
    v3 = 0;
  }

  free(v2);
  return v3;
}

- (uint64_t)mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath
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
      goto LABEL_17;
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
      v10 = v9 + v7;
      if (v9 + v7 <= 1024)
      {
        v11 = v9;
        memmove(&v5[v9], v5 + 1, 2 * v7);
        [v8 getCharacters:v5 range:{0, v11}];
        v4 = v10;
      }
    }
  }

LABEL_17:
  v12 = [MEMORY[0x277CCACA8] stringWithCharacters:v5 length:v4];
  free(v5);
  return v12;
}

- (void)mf_stringByAbbreviatingSharedResourcesDirectoryWithTildeInPath
{
  selfCopy = self;
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = [self length];
  if (v2 < 1)
  {
    goto LABEL_30;
  }

  v3 = v2;
  v4 = MEMORY[0x28223BE20]();
  v6 = (v22 - v5);
  if (v4 >= 0x101)
  {
    v6 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
    [selfCopy getCharacters:v6 range:{0, v3}];
LABEL_6:
    v7 = v3;
    while (v6[v7 - 1] == 47)
    {
      if (v7-- <= 2)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_11;
  }

  bzero(v6, 2 * v4);
  [selfCopy getCharacters:v6 range:{0, v3}];
  if (v3 != 1)
  {
    goto LABEL_6;
  }

LABEL_10:
  v7 = 1;
  if (*v6 != 47)
  {
LABEL_11:
    v9 = CPSharedResourcesDirectory();
    v10 = [v9 length];
    v11 = v7 - v10;
    if (v7 >= v10)
    {
      v12 = v10;
      v13 = MEMORY[0x28223BE20]();
      v15 = v22 - v14;
      v17 = 2 * v16;
      if (v13 > 0x100)
      {
        v15 = malloc_type_malloc(v17, 0x1000040BDFB0063uLL);
      }

      else
      {
        bzero(v22 - v14, v17);
      }

      [v9 getCharacters:v15 range:{0, v12}];
      if (v12 < 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        while (v6[v18] == *&v15[2 * v18])
        {
          if (v12 == ++v18)
          {
            v18 = v12;
            break;
          }
        }
      }

      if (v12 >= 0x101)
      {
        free(v15);
      }

      if (v18 == v7)
      {
        *v6 = 126;
        v7 = 1;
      }

      else if (v18 == v12)
      {
        v19 = &v6[v12];
        if (*v19 == 47)
        {
          memmove(v6 + 1, v19, 2 * v11);
          *v6 = 126;
          v7 = v11 + 1;
        }
      }
    }
  }

  selfCopy = [MEMORY[0x277CCACA8] stringWithCharacters:v6 length:v7];
  if (v3 >= 0x101)
  {
    free(v6);
  }

LABEL_30:
  v20 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end