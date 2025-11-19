@interface NSUserDefaults(DOCUserDefaults)
- (id)doc_roleSpecificKeyForKey:()DOCUserDefaults configuration:;
- (void)doc_setObject:()DOCUserDefaults forRoleKey:configuation:;
@end

@implementation NSUserDefaults(DOCUserDefaults)

- (id)doc_roleSpecificKeyForKey:()DOCUserDefaults configuration:
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 hostIdentifier];
  v8 = [@"com.apple.DocumentsApp" isEqualToString:v7];

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v10 = [v6 roleIdentifier];

    v11 = MEMORY[0x277CCACA8];
    v12 = [v6 hostIdentifier];
    v13 = v12;
    if (v10)
    {
      v14 = [v6 roleIdentifier];
      v9 = [v11 stringWithFormat:@"%@-%@-%@", v13, v14, v5];
    }

    else
    {
      v9 = [v11 stringWithFormat:@"%@-%@", v12, v5];
    }
  }

  return v9;
}

- (void)doc_setObject:()DOCUserDefaults forRoleKey:configuation:
{
  v8 = a3;
  v9 = [a1 doc_roleSpecificKeyForKey:a4 configuration:a5];
  [a1 setObject:v8 forKey:v9];
}

@end