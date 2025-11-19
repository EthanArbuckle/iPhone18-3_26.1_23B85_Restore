@interface NSString(MobileBackup)
+ (id)mb_stringWithFileSystemRepresentation:()MobileBackup;
- (BOOL)mb_pathComponentExistsInSet:()MobileBackup;
- (id)mb_backupIDByAddingCKPrefix;
- (id)mb_backupIDByRemovingCKPrefix;
- (id)mb_stringByAppendingGreenteaSuffix;
- (id)mb_stringByAppendingSlash;
- (uint64_t)mb_pathHasSQLiteJournalSuffix;
@end

@implementation NSString(MobileBackup)

+ (id)mb_stringWithFileSystemRepresentation:()MobileBackup
{
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 stringWithFileSystemRepresentation:a3 length:strlen(a3)];

  return v5;
}

- (id)mb_stringByAppendingSlash
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = a1;
  }

  else
  {
    v2 = [a1 stringByAppendingString:@"/"];
  }

  return v2;
}

- (BOOL)mb_pathComponentExistsInSet:()MobileBackup
{
  v4 = a3;
  v5 = a1;
  if ([v4 containsObject:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = v5;
    while (1)
    {
      v8 = [v7 length];
      v6 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = [v7 stringByDeletingLastPathComponent];

      v7 = v5;
      if ([v4 containsObject:v5])
      {
        goto LABEL_8;
      }
    }

    v5 = v7;
  }

LABEL_8:

  return v6;
}

- (uint64_t)mb_pathHasSQLiteJournalSuffix
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = MBSQLiteJournalSuffixes();
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([a1 hasSuffix:{*(*(&v10 + 1) + 8 * v6), v10}])
        {
          v7 = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)mb_stringByAppendingGreenteaSuffix
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__NSString_MobileBackup__mb_stringByAppendingGreenteaSuffix__block_invoke;
  block[3] = &unk_1E8684460;
  block[4] = a1;
  block[5] = a2;
  if (mb_stringByAppendingGreenteaSuffix_once != -1)
  {
    dispatch_once(&mb_stringByAppendingGreenteaSuffix_once, block);
  }

  if (mb_stringByAppendingGreenteaSuffix_isGreenTea == 1)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_CH", a1];
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

- (id)mb_backupIDByAddingCKPrefix
{
  if ([a1 hasPrefix:@"D:"])
  {
    v2 = a1;
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"D:", a1];
  }

  return v2;
}

- (id)mb_backupIDByRemovingCKPrefix
{
  if ([a1 hasPrefix:@"D:"])
  {
    v2 = [a1 substringFromIndex:{objc_msgSend(@"D:", "length")}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

@end