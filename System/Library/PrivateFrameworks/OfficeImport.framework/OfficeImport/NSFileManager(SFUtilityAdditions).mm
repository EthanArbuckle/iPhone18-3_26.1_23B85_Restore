@interface NSFileManager(SFUtilityAdditions)
- (uint64_t)sfu_directoryUsage:()SFUtilityAdditions;
- (uint64_t)sfu_pathUsage:()SFUtilityAdditions;
- (uint64_t)sfu_setAttributes:()SFUtilityAdditions ofItemAtURL:recursively:error:;
- (uint64_t)sfup_setAttributes:()SFUtilityAdditions ofItemAtURL:recursively:error:shouldUpdateAttributesHandler:;
@end

@implementation NSFileManager(SFUtilityAdditions)

- (uint64_t)sfu_directoryUsage:()SFUtilityAdditions
{
  v4 = [a1 subpathsAtPath:?];
  v5 = [v4 count];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *MEMORY[0x277CCA1C0];
  do
  {
    v10 = [objc_msgSend(a3 stringByAppendingPathComponent:{objc_msgSend(v4, "objectAtIndex:", v8)), "stringByResolvingSymlinksInPath"}];
    v11 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v11)
    {
      v12 = [v11 objectForKey:v9];
      if (v12)
      {
        v7 += [v12 unsignedLongLongValue];
      }
    }

    ++v8;
  }

  while (v6 != v8);
  return v7;
}

- (uint64_t)sfu_pathUsage:()SFUtilityAdditions
{
  v12 = 0;
  if (![a1 fileExistsAtPath:a3 isDirectory:&v12])
  {
    return 0;
  }

  if (v12 == 1)
  {
    return [a1 sfu_directoryUsage:a3];
  }

  v11 = 0;
  v6 = [a1 attributesOfItemAtPath:a3 error:&v11];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) sfu_pathUsage:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/NSFileManager_SFUAdditions.m"];
    v9 = [v11 code];
    v10 = [v11 domain];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:56 isFatal:0 description:"Failed to get size of file at path: %@ error: %zd %{public}@ %@", a3, v9, v10, v11];
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return [v6 fileSize];
}

- (uint64_t)sfup_setAttributes:()SFUtilityAdditions ofItemAtURL:recursively:error:shouldUpdateAttributesHandler:
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v13 = objc_autoreleasePoolPush();
  v14 = [a1 attributesOfItemAtPath:objc_msgSend(a4 error:{"path"), &v40}];
  v15 = [v14 fileType];
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = v15;
  v17 = [v15 isEqualToString:*MEMORY[0x277CCA1F8]];
  v18 = *MEMORY[0x277CCA1F0];
  if ((v17 & 1) == 0 && ([v16 isEqualToString:*MEMORY[0x277CCA1F0]] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CCA1E8]) & 1) == 0)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) sfup_setAttributes:ofItemAtURL:recursively:error:shouldUpdateAttributesHandler:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v29, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/NSFileManager_SFUAdditions.m"], 76, 0, "Unhandled type: %@", v16);
    +[OITSUAssertionHandler logBacktraceThrottled];
LABEL_28:
    v20 = 0;
    goto LABEL_29;
  }

  if (([v16 isEqualToString:v18] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CCA1E8]))
  {
    v19 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v19 && ([objc_msgSend(objc_msgSend(a4 "path")] & 1) != 0 || a7 && !(*(a7 + 16))(a7, v14))
    {
      v20 = 1;
    }

    else
    {
      v20 = [a1 setAttributes:a3 ofItemAtPath:objc_msgSend(a4 error:{"path"), &v40}];
    }
  }

  else
  {
    v20 = 0;
  }

  if ([v16 isEqualToString:*MEMORY[0x277CCA1E8]])
  {
    v21 = a5 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_29;
  }

  v22 = [a1 contentsOfDirectoryAtURL:a4 includingPropertiesForKeys:0 options:0 error:&v40];
  if (!v22)
  {
    goto LABEL_28;
  }

  v23 = v22;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = [v22 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v24)
  {
    objc_autoreleasePoolPop(v13);
    return 1;
  }

  v25 = v24;
  v26 = *v37;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v37 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = [a1 sfup_setAttributes:a3 ofItemAtURL:*(*(&v36 + 1) + 8 * i) recursively:1 error:&v40 shouldUpdateAttributesHandler:a7];
    }

    v20 = v28;
    v25 = [v23 countByEnumeratingWithState:&v36 objects:v41 count:16];
  }

  while (v25);
LABEL_29:
  if ((v20 & 1) == 0 && v40)
  {
    v30 = v40;
  }

  objc_autoreleasePoolPop(v13);
  if (v40)
  {
    v31 = v20;
  }

  else
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    v32 = v40;
  }

  if (a6)
  {
    v33 = v20;
  }

  else
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    v34 = v40;
    if (!v40)
    {
      v34 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
    }

    v20 = 0;
    *a6 = v34;
  }

  return v20;
}

- (uint64_t)sfu_setAttributes:()SFUtilityAdditions ofItemAtURL:recursively:error:
{
  v7 = a5;
  v9 = [a1 sfup_setAttributes:a3 ofItemAtURL:a4 recursively:a5 error:a6 shouldUpdateAttributesHandler:0];
  v10 = v9;
  if (a6 && (v9 & 1) == 0 && ([*a6 tsu_isNoSuchFileError] & 1) == 0)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) sfu_setAttributes:ofItemAtURL:recursively:error:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/sf/NSFileManager_SFUAdditions.m"];
    if (v7)
    {
      v13 = @" recursively";
    }

    else
    {
      v13 = &stru_286EE1130;
    }

    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, v12, 131, 0, "Failed to%{public}@ change file attributes at %@: %zd %{public}@ %@", v13, a4, [*a6 code], objc_msgSend(*a6, "domain"), *a6);
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return v10;
}

@end