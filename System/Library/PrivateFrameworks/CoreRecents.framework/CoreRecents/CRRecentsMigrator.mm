@interface CRRecentsMigrator
+ (BOOL)executeSQL:(id)a3 database:(id)a4;
+ (int)versionOfDatabase:(id)a3;
+ (void)migrateLibraryFilesFrom:(id)a3 to:(id)a4;
+ (void)setVersion:(int)a3 ofDatabase:(id)a4;
- (BOOL)migrateWithSQLiteConnection:(id)a3 toVersion:(int)a4;
- (BOOL)needsRebuild;
- (CRRecentsMigrator)initWithDelegate:(id)a3;
- (void)dealloc;
- (void)migrateMailEmbeddedLibraryToPath:(id)a3;
@end

@implementation CRRecentsMigrator

- (CRRecentsMigrator)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRRecentsMigrator;
  result = [(CRRecentsMigrator *)&v5 init];
  if (result)
  {
    result->_delegate = a3;
  }

  return result;
}

- (void)dealloc
{
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = CRRecentsMigrator;
  [(CRRecentsMigrator *)&v2 dealloc];
}

- (BOOL)needsRebuild
{
  v2 = 1;
  atomic_compare_exchange_strong_explicit(&self->_needsRebuild, &v2, 0, memory_order_relaxed, memory_order_relaxed);
  return v2 == 1;
}

- (BOOL)migrateWithSQLiteConnection:(id)a3 toVersion:(int)a4
{
  if (a3 && [a3 isOpen])
  {
    v7 = [a3 db];
    v8 = 1;
    [a3 beginTransactionWithType:1];
    v9 = sub_10000EB24(v7);
    sub_10000EBBC(v7, @"getting library version");
    switch(v9)
    {
      case 0:
        if (!a4)
        {
          goto LABEL_49;
        }

        v8 = 0;
        LOBYTE(v10) = 0;
        if ((sub_10000EC24(v7) & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_69;
      case 1:
        if (a4 == 1)
        {
          goto LABEL_49;
        }

        LOBYTE(v11) = sub_10000ED00(v7);
        v10 = 0;
        if (a4 == 2 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_26:
        LOBYTE(v11) = sub_10000ED80(v7);
        v10 = 0;
        if (a4 == 3 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_28:
        LOBYTE(v11) = sub_10000EE3C(v7);
        v10 = 0;
        if (a4 == 4 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_35:
        LOBYTE(v11) = sub_10000EE90(v7);
        v10 = 0;
        if (a4 == 5 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_41:
        LOBYTE(v11) = sub_10000EF20(v7, self->_delegate);
        v10 = 0;
        if (a4 == 6 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_43:
        LOBYTE(v11) = sub_10000F598(v7);
        v10 = 0;
        if (a4 == 7 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_51:
        LOBYTE(v11) = sub_10000F628(v7);
        v10 = 0;
        if (a4 == 8 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_53:
        LOBYTE(v11) = sub_10000F67C(v7);
        v10 = 0;
        if (a4 == 9 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_55:
        LOBYTE(v11) = sub_10000F6D0(v7);
        v10 = 0;
        if (a4 == 10 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_57:
        LOBYTE(v11) = sub_10000F724(v7, self->_delegate);
        v10 = 0;
        if (a4 == 11 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_59:
        LOBYTE(v11) = sub_10000FA54(v7);
        v10 = 0;
        if (a4 == 12 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_61:
        LOBYTE(v11) = sub_10000FAA8(v7);
        v10 = 0;
        if (a4 == 13 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_63:
        LOBYTE(v11) = sub_10000FAFC(v7);
        v10 = 0;
        if (a4 == 14 || (v11 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_65:
        v11 = sub_10000FB64(v7);
        v10 = v11;
        if (a4 == 15 || (v11 & 1) == 0)
        {
LABEL_70:
          if (v11)
          {
LABEL_71:
            sub_10000FC18(v7, a4);
            [a3 commitTransaction];
            if ((v10 & 1) == 0)
            {
              return 1;
            }

            goto LABEL_74;
          }

          [a3 commitTransaction];
          if (!v10)
          {
            return 0;
          }
        }

        else
        {
          LOBYTE(v10) = 1;
LABEL_68:
          if (sub_10000FBD0(v7))
          {
LABEL_69:
            [(CRRecentsMigrator *)self noteNeedsRebuild];
            goto LABEL_71;
          }

          [a3 commitTransaction];
          if ((v10 & 1) == 0)
          {
            return 0;
          }
        }

LABEL_74:

        result = sub_10000FCA8(v7, @"VACUUM");
        break;
      case 2:
        if (a4 != 2)
        {
          goto LABEL_26;
        }

        goto LABEL_49;
      case 3:
        if (a4 == 3)
        {
          goto LABEL_49;
        }

        goto LABEL_28;
      case 4:
        if (a4 != 4)
        {
          goto LABEL_35;
        }

        goto LABEL_49;
      case 5:
        if (a4 != 5)
        {
          goto LABEL_41;
        }

        goto LABEL_49;
      case 6:
        if (a4 == 6)
        {
          goto LABEL_49;
        }

        goto LABEL_43;
      case 7:
        if (a4 == 7)
        {
          goto LABEL_49;
        }

        goto LABEL_51;
      case 8:
        if (a4 != 8)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      case 9:
        if (a4 != 9)
        {
          goto LABEL_55;
        }

        goto LABEL_49;
      case 10:
        if (a4 != 10)
        {
          goto LABEL_57;
        }

        goto LABEL_49;
      case 11:
        if (a4 != 11)
        {
          goto LABEL_59;
        }

        goto LABEL_49;
      case 12:
        if (a4 != 12)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      case 13:
        if (a4 != 13)
        {
          goto LABEL_63;
        }

        goto LABEL_49;
      case 14:
        if (a4 != 14)
        {
          goto LABEL_65;
        }

        goto LABEL_49;
      case 15:
        LOBYTE(v10) = 0;
        v8 = 0;
        if (a4 != 15)
        {
          goto LABEL_68;
        }

        goto LABEL_50;
      case 16:
        goto LABEL_50;
      default:
        NSLog(@"Error: migration is not supported for version %d", v9);
LABEL_49:
        v8 = 0;
LABEL_50:
        [a3 commitTransaction];
        return v8;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

- (void)migrateMailEmbeddedLibraryToPath:(id)a3
{
  v4 = [[NSString alloc] initWithFormat:@"%@/Library/Mail", CPSharedResourcesDirectory()];
  [objc_opt_class() migrateLibraryFilesFrom:v4 to:a3];
}

+ (void)migrateLibraryFilesFrom:(id)a3 to:(id)a4
{
  if ([a4 containsString:@"/tmp/"])
  {
    NSLog(@"New path looks like a temporary directory, skipping migration: %@", a4);
    return;
  }

  v6 = +[NSFileManager defaultManager];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [&off_10002F658 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(&off_10002F658);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [a3 stringByAppendingPathComponent:v11];
        v13 = [a4 stringByAppendingPathComponent:v11];
        v16 = 0;
        if (!-[NSFileManager moveItemAtPath:toPath:error:](v6, "moveItemAtPath:toPath:error:", v12, v13, &v16) && ([v16 code] != 516 || (objc_msgSend(objc_msgSend(v16, "domain"), "isEqualToString:", NSCocoaErrorDomain) & 1) == 0))
        {
          v14 = [v16 code];
          v15 = v16;
          if (v14 == 4)
          {
            if ([objc_msgSend(v16 "domain")])
            {
              continue;
            }

            v15 = v16;
          }

          if (v15)
          {
            NSLog(@"Failed to migrate %@ to %@. Error: %@", v12, v13, v15);
          }
        }
      }

      v8 = [&off_10002F658 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

+ (int)versionOfDatabase:(id)a3
{
  v3 = [a3 db];

  return sub_10000EB24(v3);
}

+ (void)setVersion:(int)a3 ofDatabase:(id)a4
{
  v5 = [a4 db];

  sub_10000FC18(v5, a3);
}

+ (BOOL)executeSQL:(id)a3 database:(id)a4
{
  v5 = [a4 db];

  return sub_10000FCA8(v5, a3);
}

@end