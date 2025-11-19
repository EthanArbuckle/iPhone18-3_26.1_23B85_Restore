@interface MBKeychain
+ (BOOL)addAllPasswordItems:(id)a3 error:(id *)a4;
+ (BOOL)addPasswordItem:(id)a3 error:(id *)a4;
+ (id)allPasswordItemsForServices:(id)a3 error:(id *)a4;
+ (id)passwordItemsForService:(id)a3 account:(id)a4 limit:(unint64_t)a5 error:(id *)a6;
@end

@implementation MBKeychain

+ (id)passwordItemsForService:(id)a3 account:(id)a4 limit:(unint64_t)a5 error:(id *)a6
{
  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  if (a3)
  {
    [v10 setObject:a3 forKeyedSubscript:kSecAttrService];
  }

  if (a4)
  {
    [v10 setObject:a4 forKeyedSubscript:kSecAttrAccount];
  }

  if (a5 == 1)
  {
    v11 = &kSecMatchLimitOne;
    goto LABEL_9;
  }

  if (!a5)
  {
    v11 = &kSecMatchLimitAll;
LABEL_9:
    v12 = *v11;
    goto LABEL_11;
  }

  v12 = [NSNumber numberWithUnsignedInteger:a5];
LABEL_11:
  [v10 setObject:v12 forKeyedSubscript:kSecMatchLimit];
  [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnAttributes];
  result = 0;
  v13 = SecItemCopyMatching(v10, &result);
  if (v13 == -25300)
  {
    return &__NSArray0__struct;
  }

  if (v13)
  {
    v14 = 0;
    if (a6)
    {
      *a6 = [MBError errorWithCode:1 format:@"SecItemCopyMatching error: %d", v13];
    }
  }

  else
  {
    v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [result count]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = result;
    v16 = [result countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(NSMutableArray *)v14 addObject:[MBKeychainItem keychainItemWithAttributes:*(*(&v21 + 1) + 8 * i)]];
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v17);
    }
  }

  return v14;
}

+ (id)allPasswordItemsForServices:(id)a3 error:(id *)a4
{
  v6 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = [MBKeychain allPasswordItemsForService:*(*(&v13 + 1) + 8 * i) error:a4];
        if (!v11)
        {
          return 0;
        }

        [v6 addObjectsFromArray:v11];
      }

      v8 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

+ (BOOL)addPasswordItem:(id)a3 error:(id *)a4
{
  v17[0] = kSecClassGenericPassword;
  v16[0] = kSecClass;
  v16[1] = kSecAttrService;
  v17[1] = [a3 serviceName];
  v16[2] = kSecAttrAccount;
  v17[2] = [a3 accountName];
  v16[3] = kSecAttrAccessGroup;
  v17[3] = [a3 accessGroupName];
  v16[4] = kSecAttrAccessible;
  v17[4] = [a3 accessibilityType];
  v16[5] = kSecValueData;
  v16[6] = kSecReturnData;
  v17[5] = [a3 valueData];
  v17[6] = &__kCFBooleanFalse;
  v6 = SecItemAdd([NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:7], 0);
  if (!v6)
  {
    return 1;
  }

  if (v6 == -25299)
  {
    v15[0] = kSecClassGenericPassword;
    v14[0] = kSecClass;
    v14[1] = kSecAttrService;
    v15[1] = [a3 serviceName];
    v14[2] = kSecAttrAccount;
    v15[2] = [a3 accountName];
    v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
    v12[0] = kSecAttrAccessible;
    v12[1] = kSecValueData;
    v13[0] = [a3 accessibilityType];
    v13[1] = [a3 valueData];
    v8 = SecItemUpdate(v7, [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2]);
    result = v8 == 0;
    if (a4 && v8)
    {
      v10 = [MBError errorWithCode:1 format:@"SecItemUpdate error: %d", v8];
LABEL_9:
      v11 = v10;
      result = 0;
      *a4 = v11;
    }
  }

  else
  {
    if (a4)
    {
      v10 = [MBError errorWithCode:1 format:@"SecItemAdd error: %d", v6];
      goto LABEL_9;
    }

    return 0;
  }

  return result;
}

+ (BOOL)addAllPasswordItems:(id)a3 error:(id *)a4
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(a3);
      }

      v10 = [MBKeychain addPasswordItem:*(*(&v12 + 1) + 8 * v9) error:a4];
      if (!v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v10) = 1;
  }

  return v10;
}

@end