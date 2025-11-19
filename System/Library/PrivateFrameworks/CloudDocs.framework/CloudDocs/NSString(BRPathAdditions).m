@interface NSString(BRPathAdditions)
+ (id)br_accountSessionOpenErrorInfoPath;
+ (id)br_badFilenameAlternativeName;
+ (id)br_corruptedDBInfoPath;
+ (id)br_currentPersonaIDWithIsDataSeparated:()BRPathAdditions;
+ (id)br_emptyFilenameAlternativeName;
+ (id)br_pathForDirectory:()BRPathAdditions;
+ (id)br_pathWithDeviceID:()BRPathAdditions fileID:;
+ (id)br_personaGroupDirForFPFS:()BRPathAdditions;
+ (id)br_reimportDomainErrorInfoPath;
+ (id)br_representableHFSFileNameWithBase:()BRPathAdditions suffix:extension:makeDotFile:;
- (BOOL)_br_isExcludedWithMaximumDepth:()BRPathAdditions inFPFS:isFile:;
- (BOOL)br_isDocumentTooLargeForUpload:()BRPathAdditions maxUploadDocumentSize:;
- (BOOL)br_isInPackage;
- (BOOL)br_isPackageRoot;
- (__CFString)br_pathRelativeToPath:()BRPathAdditions;
- (const)br_fileSystemRepresentation;
- (id)_br_nameWithAddedExtension:()BRPathAdditions makeDotFile:;
- (id)br_displayFilenameWithExtensionHidden:()BRPathAdditions;
- (id)br_pathExtension;
- (id)br_pathOfPackageRoot;
- (id)br_pathRelativeToDirectory:()BRPathAdditions;
- (id)br_pathRelativeToPackageRoot;
- (id)br_realpathKeepingLastSymlink;
- (id)br_representableHFSFileNameWithNumber:()BRPathAdditions addedExtension:makeDotFile:;
- (id)br_sideFaultPath;
- (id)brc_representableHFSFileNameWithSuffix:()BRPathAdditions addedExtension:makeDotFile:;
- (id)brc_stringByDeletingPathExtension;
- (id)removingROSPPrefix;
- (uint64_t)_br_pathSafeFileSystemRepresentationWithDefaultValue:()BRPathAdditions;
- (uint64_t)br_filenameSafeFileSystemRepresentation;
- (uint64_t)br_isAbsolutePath;
- (uint64_t)br_isExcludedButPreservedAtLogOutWithFilenames:()BRPathAdditions extensions:;
- (uint64_t)br_pathSafeFileSystemRepresentation;
- (void)br_pathSafeFileSystemRepresentation;
- (void)br_realpathKeepingLastSymlink;
@end

@implementation NSString(BRPathAdditions)

+ (id)br_badFilenameAlternativeName
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = [@"tmp-bad-filename-" stringByAppendingString:v1];

  return v2;
}

- (BOOL)br_isPackageRoot
{
  v2 = offsetOfPackageRootFilenameInPath(a1, 0);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = ([a1 fileSystemRepresentation] + v2);
  do
  {
    v5 = *v3++;
    v4 = v5;
  }

  while (v5 == 47);
  return v4 == 0;
}

- (id)br_pathExtension
{
  if (![a1 length])
  {
    goto LABEL_5;
  }

  v2 = extensionInFilename([a1 fileSystemRepresentation]);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_6;
  }

  v4 = strlen(v2);
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [v6 stringWithFileSystemRepresentation:v3 length:v5];
  }

  else
  {
LABEL_5:
    v3 = 0;
  }

LABEL_6:

  return v3;
}

- (id)brc_stringByDeletingPathExtension
{
  v2 = [a1 br_pathSafeFileSystemRepresentation];
  if (!v2)
  {
    v2 = [a1 UTF8String];
  }

  v3 = extensionInFilename(v2);
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v5 stringWithFileSystemRepresentation:v2 length:&v4[~v2]];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

- (id)br_displayFilenameWithExtensionHidden:()BRPathAdditions
{
  v4 = a1;
  v5 = v4;
  if (a3)
  {
    v6 = [v4 brc_stringByDeletingPathExtension];

    v5 = v6;
  }

  v7 = [v5 stringByReplacingOccurrencesOfString:@":" withString:@"/"];

  return v7;
}

- (BOOL)br_isDocumentTooLargeForUpload:()BRPathAdditions maxUploadDocumentSize:
{
  v4 = a4;
  v54[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = a1;
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    v9 = *MEMORY[0x1E695DB50];
    v54[0] = *MEMORY[0x1E695DB78];
    v54[1] = v9;
    v36 = v9;
    v10 = *MEMORY[0x1E695DBB8];
    v54[2] = *MEMORY[0x1E695DBB8];
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __fileSystemSizeForDirectoryAtPath_block_invoke;
    v45[3] = &unk_1E7A154A0;
    v32 = v6;
    v33 = v7;
    v46 = v32;
    v12 = [v7 enumeratorAtURL:v8 includingPropertiesForKeys:v11 options:0 errorHandler:v45];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v14)
    {
      v15 = v14;
      v37 = 0;
      v16 = *v42;
      v35 = v10;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          v40 = 0;
          v19 = [v18 getResourceValue:&v40 forKey:v10 error:0];
          v20 = v40;
          v21 = v20;
          if (v19 && [v20 BOOLValue])
          {
            v38 = 0;
            v39 = 0;
            v22 = [v18 getResourceValue:&v39 forKey:v36 error:&v38];
            v23 = v39;
            v24 = v38;
            if ((v22 & 1) == 0)
            {
              v25 = brc_bread_crumbs("fileSystemSizeForDirectoryAtPath", 241);
              v26 = brc_default_log(0, 0);
              if (os_log_type_enabled(v26, 0x90u))
              {
                *buf = 138412802;
                v48 = v18;
                v49 = 2112;
                v50 = v24;
                v51 = 2112;
                v52 = v25;
                _os_log_error_impl(&dword_1AE2A9000, v26, 0x90u, "[ERROR] couldn't get fileSize for url %@: %@%@", buf, 0x20u);
              }

              v10 = v35;
            }

            v37 += [v23 integerValue];
          }

          else
          {
            v23 = 0;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v15);
    }

    else
    {
      v37 = 0;
    }

    v4 = a4;
    v29 = v37;
  }

  else
  {
    v27 = [MEMORY[0x1E696AC08] defaultManager];
    v28 = [v27 attributesOfItemAtPath:a1 error:0];
    v29 = [v28 fileSize];
  }

  result = v29 > v4;
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)br_isExcludedButPreservedAtLogOutWithFilenames:()BRPathAdditions extensions:
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 lastPathComponent];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = 1;
        if (![v8 compare:*(*(&v25 + 1) + 8 * i) options:1])
        {
          v15 = v9;
          goto LABEL_23;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v8 br_pathExtension];
  if (v15)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = v7;
    v14 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v17 = *v22;
      while (2)
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v16);
          }

          if (![v15 compare:*(*(&v21 + 1) + 8 * j) options:{1, v21}])
          {
            v14 = 1;
            goto LABEL_21;
          }
        }

        v14 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

  else
  {
    v14 = 0;
  }

LABEL_23:

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)_br_isExcludedWithMaximumDepth:()BRPathAdditions inFPFS:isFile:
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  if (![a1 length])
  {
    v10 = 0;
    goto LABEL_67;
  }

  v8 = [a1 _br_pathSafeFileSystemRepresentationWithDefaultValue:a1];
  v9 = v31;
  if (__strlcpy_chk() > 0x3FF)
  {
    v9 = strdup(v8);
    __stringp = v9;
    if (!v9)
    {
      v10 = 0;
LABEL_63:
      if (a4)
      {
        v10 = fpfs_path_is_safe_save_temp_file_ext() != 0;
      }

      goto LABEL_65;
    }
  }

  else
  {
    __stringp = v31;
  }

  v28 = a4;
  v11 = 0;
  v12 = "/";
  v13 = ".DS_Store";
  v14 = "(A Document Being Saved";
  v15 = ".nosync";
  v29 = a3;
  do
  {
    v16 = strsep(&__stringp, v12);
    if (!_CFURLCStringIsPromiseName())
    {
      if (!strcmp(v16, v13))
      {
        goto LABEL_59;
      }

      if (!strncmp(v16, v14, 0x17uLL))
      {
        goto LABEL_59;
      }

      if (strcasestr(v16, v15))
      {
        goto LABEL_59;
      }

      if (!strcmp(v16, ".ubd"))
      {
        goto LABEL_59;
      }

      if (strstr(v16, ".weakpkg"))
      {
        goto LABEL_59;
      }

      if (!strcasecmp(v16, "tmp"))
      {
        goto LABEL_59;
      }

      if (!strcasecmp(v16, ".tmp"))
      {
        goto LABEL_59;
      }

      if (++v11 > a3 || !strcasecmp(v16, "Thumbs.db") || !strcasecmp(v16, "desktop.ini"))
      {
        goto LABEL_59;
      }

      v17 = v12;
      v18 = v15;
      v19 = v14;
      v20 = v13;
      v21 = *v16;
      if (v21 == 46)
      {
        if (v16[1] == 126)
        {
          goto LABEL_61;
        }
      }

      else if (v21 == 126 && v16[1] == 36)
      {
LABEL_61:
        v10 = 1;
        goto LABEL_65;
      }

      if (!strcasecmp(v16, "Microsoft User Data") || !strcasecmp(v16, "$RECYCLE.BIN") || !strcasecmp(v16, "iPhoto Library") || !strcasecmp(v16, "Dropbox") || !strcasecmp(v16, "OneDrive") || !strcasecmp(v16, "IDrive-Sync") || !strcasecmp(v16, ".dropbox") || !strcasecmp(v16, ".dropbox.attr") || !strcasecmp(v16, "icon\r"))
      {
        goto LABEL_61;
      }

      v22 = extensionInFilename(v16);
      if (!v22 || (v23 = v22, (v24 = strlen(v22)) == 0))
      {
        v14 = v19;
        v15 = v18;
        v12 = v17;
        a3 = v29;
        continue;
      }

      v25 = v24;
      if (!strcasecmp(v23, "tmp") || !strcasecmp(v23, "photoslibrary") || !strcasecmp(v23, "photolibrary") || !strcasecmp(v23, "aplibrary") || !strcasecmp(v23, "migratedaplibrary") || !strcasecmp(v23, "migratedphotolibrary") || !strcasecmp(v23, "migratedaperturelibrary") || v25 != 1 && v23[v25 - 1] == 126 && !v23[v25])
      {
        goto LABEL_61;
      }

      if (*v23 == 115 && v23[1] == 98 && v25 == 18 && v23[2] == 45)
      {
        if (v23[11] == 45)
        {
          goto LABEL_61;
        }
      }

      else if (v25 == 3 && *v16 == 46 && *v23 == 30579 && v23[2] > 111)
      {
        goto LABEL_61;
      }

      v13 = v20;
      v14 = v19;
      v15 = v18;
      v12 = v17;
      a3 = v29;
      if (!strcasecmp(v23, "pkpass"))
      {
        break;
      }
    }
  }

  while (__stringp);
  v16 = 0;
LABEL_59:
  v10 = v16 != 0;
  a4 = v28;
  if (!v16)
  {
    goto LABEL_63;
  }

LABEL_65:
  if (v9 != v31)
  {
    free(v9);
  }

LABEL_67:
  objc_autoreleasePoolPop(v7);
  v26 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)br_isInPackage
{
  v2 = offsetOfPackageRootFilenameInPath(a1, 0);
  if (v2 < 0)
  {
    return 0;
  }

  v3 = ([a1 fileSystemRepresentation] + v2);
  do
  {
    v5 = *v3++;
    v4 = v5;
  }

  while (v5 == 47);
  return v4 != 0;
}

- (id)br_pathOfPackageRoot
{
  v3 = 0;
  offsetOfPackageRootFilenameInPath(a1, &v3);
  v1 = v3;

  return v1;
}

- (id)br_pathRelativeToPackageRoot
{
  v2 = offsetOfPackageRootFilenameInPath(a1, 0);
  if (v2 < 0)
  {
    v5 = 0;
  }

  else
  {
    v3 = v2;
    v4 = [a1 fileSystemRepresentation];
    v5 = [MEMORY[0x1E696AEC0] br_pathWithFileSystemRepresentation:v4 + v3];
  }

  return v5;
}

- (id)removingROSPPrefix
{
  if ([a1 hasPrefix:@"/System/Volumes/Data"])
  {
    v2 = [a1 substringFromIndex:{objc_msgSend(@"/System/Volumes/Data", "length")}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (__CFString)br_pathRelativeToPath:()BRPathAdditions
{
  v4 = [a3 removingROSPPrefix];
  v5 = [a1 removingROSPPrefix];
  if ([v5 length])
  {
    if (![v4 length])
    {
      v9 = v5;
LABEL_12:
      v8 = v9;
      goto LABEL_14;
    }

    if ([v4 hasSuffix:@"/"])
    {
      v6 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 1}];

      v4 = v6;
    }

    if (![v4 length] || objc_msgSend(v5, "hasPrefix:", v4))
    {
      v7 = [v5 length];
      if (v7 == [v4 length])
      {
        v8 = &stru_1F23D4ED0;
        goto LABEL_14;
      }

      if ([v5 characterAtIndex:{objc_msgSend(v4, "length")}] == 47)
      {
        v9 = [v5 substringFromIndex:{objc_msgSend(v4, "length") + 1}];
        goto LABEL_12;
      }
    }
  }

  v8 = 0;
LABEL_14:

  return v8;
}

- (uint64_t)br_isAbsolutePath
{
  result = [a1 length];
  if (result)
  {
    return [a1 characterAtIndex:0] == 47;
  }

  return result;
}

- (const)br_fileSystemRepresentation
{
  if (![a1 length])
  {
    return ".";
  }

  v2 = a1;

  return [v2 fileSystemRepresentation];
}

- (uint64_t)br_filenameSafeFileSystemRepresentation
{
  v2 = [MEMORY[0x1E696AEC0] br_badFilenameAlternativeName];
  v3 = [a1 _br_pathSafeFileSystemRepresentationWithDefaultValue:v2];

  return v3;
}

- (uint64_t)_br_pathSafeFileSystemRepresentationWithDefaultValue:()BRPathAdditions
{
  v4 = a3;
  v5 = [a1 br_pathSafeFileSystemRepresentation];
  if (!v5)
  {
    v5 = [v4 UTF8String];
  }

  return v5;
}

- (uint64_t)br_pathSafeFileSystemRepresentation
{
  v3 = *MEMORY[0x1E69E9840];
  result = [a1 fileSystemRepresentation];
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)br_realpathKeepingLastSymlink
{
  v16 = *MEMORY[0x1E69E9840];
  if (![a1 length])
  {
    goto LABEL_10;
  }

  memset(v15, 0, 512);
  v2 = [a1 _br_pathSafeFileSystemRepresentationWithDefaultValue:a1];
  v13 = xmmword_1AE33DFB8;
  v14 = 0;
  if (getattrlist(v2, &v13, v15, 0x40CuLL, 0x21u) < 0)
  {
    if (*__error() == 2)
    {
      v5 = [a1 stringByDeletingLastPathComponent];
      v6 = [v5 br_realpath];
      v7 = [a1 lastPathComponent];
      v8 = [v6 stringByAppendingPathComponent:v7];

      goto LABEL_12;
    }

    v9 = brc_bread_crumbs("[NSString(BRPathAdditions) br_realpathKeepingLastSymlink]", 641);
    v10 = brc_default_log(1, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(NSString(BRPathAdditions) *)v2 br_realpathKeepingLastSymlink];
    }

    goto LABEL_10;
  }

  v3 = SDWORD1(v15[0]);
  if (!strcmp(v2, v15 + SDWORD1(v15[0]) + 4))
  {
LABEL_10:
    v4 = a1;
    goto LABEL_11;
  }

  v4 = [MEMORY[0x1E696AEC0] br_pathWithFileSystemRepresentation:v15 + v3 + 4];
LABEL_11:
  v8 = v4;
LABEL_12:
  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)br_pathWithDeviceID:()BRPathAdditions fileID:
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[NSString(BRPathAdditions) br_pathWithDeviceID:fileID:];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  +[NSString(BRPathAdditions) br_pathWithDeviceID:fileID:];
LABEL_3:
  v9.val[1] = 0;
  v9.val[0] = a3;
  if (fsgetpath(v10, 0x400uLL, &v9, a4) < 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"/.vol/%d/%lld", a3, a4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] br_pathWithFileSystemRepresentation:v10];
  }
  v6 = ;
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)br_emptyFilenameAlternativeName
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];
  v2 = [@".com-apple-bird-noname-" stringByAppendingString:v1];

  return v2;
}

+ (id)br_representableHFSFileNameWithBase:()BRPathAdditions suffix:extension:makeDotFile:
{
  *&v39[253] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 length];
  v13 = [v11 lengthOfBytesUsingEncoding:4];
  if (v13 < 0x33)
  {
    v15 = v13;
  }

  else
  {
    v14 = [v9 stringByAppendingPathExtension:v11];

    v15 = 0;
    v11 = 0;
    v9 = v14;
  }

  v36 = 0;
  if (v15)
  {
    v16 = ~v15;
  }

  else
  {
    v16 = 0;
  }

  v35 = a6;
  if (a6)
  {
    v37 = 46;
    if (*[v9 UTF8String] == 95)
    {
      v17 = v39;
      v38 = 46;
      v18 = 2;
    }

    else
    {
      v17 = &v38;
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
    v17 = &v37;
  }

  v19 = 255;
  if (v12)
  {
    v19 = 254 - v12;
  }

  v20 = [v9 getBytes:v17 maxLength:v19 + v16 - v18 usedLength:&v36 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v9, "length"), 0}];
  v21 = v36;
  if (!v20)
  {
    v21 = 0;
  }

  v22 = v21 + v18;
  if (!v12)
  {
LABEL_19:
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v23 = v22 + 1;
  *(&v37 + v22) = 32;
  if ([v10 getBytes:&v37 + v22 + 1 maxLength:v12 usedLength:&v36 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v10, "length"), 0}])
  {
    v22 = v36 + v23;
    goto LABEL_19;
  }

  v24 = brc_bread_crumbs("+[NSString(BRPathAdditions) br_representableHFSFileNameWithBase:suffix:extension:makeDotFile:]", 741);
  v25 = brc_default_log(0, 0);
  if (os_log_type_enabled(v25, 0x90u))
  {
    +[NSString(BRPathAdditions) br_representableHFSFileNameWithBase:suffix:extension:makeDotFile:];
  }

  v26 = [MEMORY[0x1E696AFB0] UUID];
  v27 = [v26 UUIDString];
  v22 = v23 + snprintf(&v37 + v23, 254 - v22, "com-apple-bird-recovered-%s", [v27 UTF8String]);

  if (v15)
  {
LABEL_24:
    v28 = v22 + 1;
    *(&v37 + v22) = 46;
    if ([v11 getBytes:&v37 + ++v22 maxLength:v15 usedLength:&v36 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v11, "length"), 0}])
    {
      v22 = v36 + v28;
    }
  }

LABEL_26:
  if (v22 == 1)
  {
    v30 = v35;
  }

  else
  {
    v30 = 0;
  }

  if (!v22 || v30)
  {
    v31 = [MEMORY[0x1E696AEC0] br_emptyFilenameAlternativeName];
  }

  else
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v37 length:v22 encoding:4];
  }

  v32 = v31;

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)brc_representableHFSFileNameWithSuffix:()BRPathAdditions addedExtension:makeDotFile:
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 length];
  v11 = [v9 length];
  if ((a5 & 1) != 0 || v10 || v11 || [a1 lengthOfBytesUsingEncoding:4] >= 0x100)
  {
    v12 = [a1 br_pathExtension];
    v13 = [a1 brc_stringByDeletingPathExtension];
    if (v9)
    {
      if (v12)
      {
        v14 = [v12 stringByAppendingPathExtension:v9];

        v12 = v14;
      }

      else
      {
        v12 = v9;
      }
    }

    v15 = [MEMORY[0x1E696AEC0] br_representableHFSFileNameWithBase:v13 suffix:v8 extension:v12 makeDotFile:a5];
  }

  else
  {
    v15 = a1;
  }

  return v15;
}

- (id)br_representableHFSFileNameWithNumber:()BRPathAdditions addedExtension:makeDotFile:
{
  v8 = a4;
  v9 = [a3 stringValue];
  v10 = [a1 brc_representableHFSFileNameWithSuffix:v9 addedExtension:v8 makeDotFile:a5];

  return v10;
}

- (id)br_sideFaultPath
{
  v2 = [a1 stringByDeletingLastPathComponent];
  v3 = [a1 lastPathComponent];
  v4 = [v3 br_sideFaultName];
  v5 = [v2 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)_br_nameWithAddedExtension:()BRPathAdditions makeDotFile:
{
  v6 = a3;
  v7 = [a1 lengthOfBytesUsingEncoding:4];
  if (v7 + a4 + [v6 length] < 0x100)
  {
    v12 = [a1 brc_representableHFSFileNameWithSuffix:0 addedExtension:v6 makeDotFile:a4];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v8 = [a1 br_stringByDeletingPathBounceNo:&v16 andPathExtension:&v15];
    v9 = v15;
    if (v9)
    {
      v10 = v9;
      v11 = [v9 stringByAppendingPathExtension:v6];
    }

    else
    {
      v11 = v6;
    }

    if (v16)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      v12 = [v8 br_representableHFSFileNameWithNumber:v13 addedExtension:v11 makeDotFile:a4];
    }

    else
    {
      v12 = [v8 br_representableHFSFileNameWithNumber:0 addedExtension:v11 makeDotFile:a4];
    }
  }

  return v12;
}

+ (id)br_pathForDirectory:()BRPathAdditions
{
  if (getuid())
  {
    if (!a3)
    {
      +[NSString(BRPathAdditions) br_pathForDirectory:];
    }

    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 URLsForDirectory:a3 inDomains:1];

    if ([v5 count] != 1)
    {
      +[NSString(BRPathAdditions) br_pathForDirectory:];
    }

    v6 = [v5 firstObject];
    v7 = [v6 path];
    v8 = [v7 br_realpath];
  }

  else
  {
    if (a3 == 14)
    {
      v9 = @"Application Support";
    }

    else if (a3 == 5)
    {
      v9 = @"Library";
    }

    else
    {
      v10 = brc_bread_crumbs("+[NSString(BRPathAdditions) br_pathForDirectory:]", 862);
      v11 = brc_default_log(0, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [(NSString(BRPathAdditions) *)v10 br_pathForDirectory:v11];
      }

      v9 = 0;
    }

    v8 = [@"/var/mobile" stringByAppendingPathComponent:v9];
  }

  return v8;
}

- (id)br_pathRelativeToDirectory:()BRPathAdditions
{
  v2 = [MEMORY[0x1E696AEC0] br_pathForDirectory:?];
  v3 = [v2 stringByAppendingPathComponent:a1];

  return v3;
}

+ (id)br_currentPersonaIDWithIsDataSeparated:()BRPathAdditions
{
  v4 = [MEMORY[0x1E69DF068] sharedManager];
  v5 = [v4 currentPersona];
  v6 = [v4 br_currentPersonaID];
  if (a3)
  {
    *a3 = [v5 isDataSeparatedPersona];
  }

  return v6;
}

+ (id)br_personaGroupDirForFPFS:()BRPathAdditions
{
  v29 = *MEMORY[0x1E69E9840];
  if (BRCurrentProcessHasAccessToCloudDocsGroupContainers())
  {
    goto LABEL_3;
  }

  v4 = [[BRDaemonConnection alloc] initUsingUserLocalDaemonTokenService];
  v5 = [v4 newSyncTokenProxy];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __55__NSString_BRPathAdditions__br_personaGroupDirForFPFS___block_invoke;
  v23 = &unk_1E7A14CF8;
  v24 = v5;
  v6 = v5;
  [v6 fetchGroupContainerPathForCurrentPersonaForFPFS:a3 withReply:&v20];
  v7 = [v6 result];

  if (!v7)
  {
LABEL_3:
    if (a3)
    {
      v8 = @"group.com.apple.iCloudDrive";
    }

    else
    {
      v8 = @"group.com.apple.CloudDocs";
    }

    [(__CFString *)v8 UTF8String:1];
    v9 = container_create_or_lookup_path_for_current_user();
    if (v9)
    {
      v10 = v9;
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      free(v10);
      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = brc_bread_crumbs("+[NSString(BRPathAdditions) br_personaGroupDirForFPFS:]", 929);
      v12 = brc_default_log(1, 0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v26 = v19;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] container_create_or_lookup_path_for_current_user() failed with %llu%@", buf, 0x16u);
      }
    }

    v13 = [MEMORY[0x1E69DF068] sharedManager];
    v14 = [v13 currentPersona];

    v15 = brc_bread_crumbs("+[NSString(BRPathAdditions) br_personaGroupDirForFPFS:]", 937);
    v16 = brc_default_log(0, 0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      +[NSString(BRPathAdditions) br_personaGroupDirForFPFS:];
    }

    v7 = 0;
  }

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)br_corruptedDBInfoPath
{
  v0 = [MEMORY[0x1E696AEC0] br_currentSupportDir];
  v1 = [v0 stringByAppendingPathComponent:@"corrupted_db_info"];

  return v1;
}

+ (id)br_reimportDomainErrorInfoPath
{
  v0 = [MEMORY[0x1E696AEC0] br_currentSupportDir];
  v1 = [v0 stringByAppendingPathComponent:@"reimport_domain_error_info"];

  return v1;
}

+ (id)br_accountSessionOpenErrorInfoPath
{
  v0 = [MEMORY[0x1E696AEC0] br_currentSupportDir];
  v1 = [v0 stringByAppendingPathComponent:@"account_session_open_error_info"];

  return v1;
}

- (void)br_pathSafeFileSystemRepresentation
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)br_realpathKeepingLastSymlink
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v8 = 136315650;
  v9 = a1;
  v10 = 1024;
  v11 = v6;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] realpath(%s) failed %{errno}d%@", &v8, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)br_pathWithDeviceID:()BRPathAdditions fileID:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("+[NSString(BRPathAdditions) br_pathWithDeviceID:fileID:]", 663);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: fileID != 0%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)br_pathWithDeviceID:()BRPathAdditions fileID:.cold.2()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("+[NSString(BRPathAdditions) br_pathWithDeviceID:fileID:]", 664);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: deviceID != 0%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)br_representableHFSFileNameWithBase:()BRPathAdditions suffix:extension:makeDotFile:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)br_pathForDirectory:()BRPathAdditions .cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("+[NSString(BRPathAdditions) br_pathForDirectory:]", 870);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: directory > 0%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)br_pathForDirectory:()BRPathAdditions .cold.2()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("+[NSString(BRPathAdditions) br_pathForDirectory:]", 872);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: urls.count == 1%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)br_pathForDirectory:()BRPathAdditions .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unknown directory%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)br_personaGroupDirForFPFS:()BRPathAdditions .cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end