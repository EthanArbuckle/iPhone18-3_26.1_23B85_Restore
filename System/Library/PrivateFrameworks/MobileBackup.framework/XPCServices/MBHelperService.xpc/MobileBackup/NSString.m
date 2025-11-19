@interface NSString
+ (id)mb_stringWithFileSystemRepresentation:(const char *)a3;
- (BOOL)mb_pathComponentExistsInSet:(id)a3;
- (BOOL)mb_pathHasSQLiteJournalSuffix;
- (id)mb_backupIDByAddingCKPrefix;
- (id)mb_backupIDByRemovingCKPrefix;
- (id)mb_stringByAppendingGreenteaSuffix;
- (id)mb_stringByAppendingSlash;
@end

@implementation NSString

+ (id)mb_stringWithFileSystemRepresentation:(const char *)a3
{
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 stringWithFileSystemRepresentation:a3 length:strlen(a3)];

  return v5;
}

- (id)mb_stringByAppendingSlash
{
  if ([(NSString *)self hasSuffix:@"/"])
  {
    v3 = self;
  }

  else
  {
    v3 = [(NSString *)self stringByAppendingString:@"/"];
  }

  return v3;
}

- (BOOL)mb_pathComponentExistsInSet:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 containsObject:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = v5;
    while (1)
    {
      v8 = [(NSString *)v7 length];
      v6 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = [(NSString *)v7 stringByDeletingLastPathComponent];

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

- (BOOL)mb_pathHasSQLiteJournalSuffix
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = MBSQLiteJournalSuffixes();
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(NSString *)self hasSuffix:*(*(&v10 + 1) + 8 * i), v10])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)mb_stringByAppendingGreenteaSuffix
{
  if (qword_10002A130 != -1)
  {
    sub_1000144EC();
  }

  if (byte_10002A128 == 1)
  {
    v3 = [NSString stringWithFormat:@"%@_CH", self];
  }

  else
  {
    v3 = self;
  }

  return v3;
}

- (id)mb_backupIDByAddingCKPrefix
{
  if ([(NSString *)self hasPrefix:@"D:"])
  {
    v3 = self;
  }

  else
  {
    v3 = [NSString stringWithFormat:@"%@%@", @"D:", self];
  }

  return v3;
}

- (id)mb_backupIDByRemovingCKPrefix
{
  if ([(NSString *)self hasPrefix:@"D:"])
  {
    v3 = -[NSString substringFromIndex:](self, "substringFromIndex:", [@"D:" length]);
  }

  else
  {
    v3 = self;
  }

  return v3;
}

@end