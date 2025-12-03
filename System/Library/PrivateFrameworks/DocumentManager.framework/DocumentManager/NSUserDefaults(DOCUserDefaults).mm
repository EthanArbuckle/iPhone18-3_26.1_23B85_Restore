@interface NSUserDefaults(DOCUserDefaults)
- (id)doc_roleSpecificKeyForKey:()DOCUserDefaults configuration:;
- (void)doc_setObject:()DOCUserDefaults forRoleKey:configuation:;
@end

@implementation NSUserDefaults(DOCUserDefaults)

- (id)doc_roleSpecificKeyForKey:()DOCUserDefaults configuration:
{
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E699A3A8];
  hostIdentifier = [v6 hostIdentifier];
  LODWORD(v7) = [v7 isEqualToString:hostIdentifier];

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    roleIdentifier = [v6 roleIdentifier];

    v11 = MEMORY[0x1E696AEC0];
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