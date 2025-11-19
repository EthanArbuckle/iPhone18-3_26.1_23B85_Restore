@interface IMAPFSUtils
+ (id)stringForPurgableFlags:(unint64_t)a3;
+ (unint64_t)purgableFlagsForPath:(id)a3 error:(int *)a4;
@end

@implementation IMAPFSUtils

+ (id)stringForPurgableFlags:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if ((a3 - 1) <= 0xAu)
  {
    [v4 addObject:off_1E7829AF8[(a3 - 1)]];
    if ((a3 & 0x100) == 0)
    {
LABEL_3:
      if ((a3 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a3 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"APFS_PURGEABLE_FAULT"];
  if ((a3 & 0x200) == 0)
  {
LABEL_4:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v5 addObject:@"APFS_PURGEABLE_LOW_URGENCY"];
  if ((a3 & 0x400) == 0)
  {
LABEL_5:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  [v5 addObject:@"APFS_PURGEABLE_MED_URGENCY"];
  if ((a3 & 0x800) != 0)
  {
LABEL_6:
    [v5 addObject:@"APFS_PURGEABLE_HIGH_URGENCY"];
  }

LABEL_7:
  v6 = @"NO";
  if ((a3 & 0x1000) != 0)
  {
    [v5 addObject:@"APFS_PURGEABLE_IGNORE_ME"];
    v7 = @"NO";
  }

  else
  {
    v7 = @"YES";
  }

  v8 = [v5 componentsJoinedByString:@" | "];
  v9 = v8;
  v10 = MEMORY[0x1E696AEC0];
  if (a3)
  {
    v6 = v7;
  }

  v11 = [(__CFString *)v8 length];
  v12 = @"NONE";
  if (v11)
  {
    v12 = v9;
  }

  v13 = [v10 stringWithFormat:@"%@ (0x%llx = %@)", v6, a3, v12];

  return v13;
}

+ (unint64_t)purgableFlagsForPath:(id)a3 error:(int *)a4
{
  v5 = a3;
  v10 = 0;
  if (fsctl([v5 UTF8String], 0x40084A47uLL, &v10, 0) == -1)
  {
    v6 = *__error();
    v7 = IMLogHandleForCategory("Purgeable");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C4768(v5, v6, v7);
    }

    if (a4)
    {
      *a4 = v6;
    }
  }

  v8 = v10;

  return v8;
}

@end