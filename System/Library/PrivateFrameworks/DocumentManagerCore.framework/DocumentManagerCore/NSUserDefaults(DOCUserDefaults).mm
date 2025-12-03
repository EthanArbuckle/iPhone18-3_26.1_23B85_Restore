@interface NSUserDefaults(DOCUserDefaults)
- (id)doc_roleSpecificKeyForKey:()DOCUserDefaults configuration:;
- (void)doc_setObject:()DOCUserDefaults forRoleKey:configuation:;
@end

@implementation NSUserDefaults(DOCUserDefaults)

- (id)doc_roleSpecificKeyForKey:()DOCUserDefaults configuration:
{
  v5 = a3;
  v6 = a4;
  hostIdentifier = [v6 hostIdentifier];
  v8 = [@"com.apple.DocumentsApp" isEqualToString:hostIdentifier];

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    roleIdentifier = [v6 roleIdentifier];

    v11 = MEMORY[0x277CCACA8];
    hostIdentifier2 = [v6 hostIdentifier];
    v13 = hostIdentifier2;
    if (roleIdentifier)
    {
      roleIdentifier2 = [v6 roleIdentifier];
      v9 = [v11 stringWithFormat:@"%@-%@-%@", v13, roleIdentifier2, v5];
    }

    else
    {
      v9 = [v11 stringWithFormat:@"%@-%@", hostIdentifier2, v5];
    }
  }

  return v9;
}

- (void)doc_setObject:()DOCUserDefaults forRoleKey:configuation:
{
  v8 = a3;
  v9 = [self doc_roleSpecificKeyForKey:a4 configuration:a5];
  [self setObject:v8 forKey:v9];
}

@end