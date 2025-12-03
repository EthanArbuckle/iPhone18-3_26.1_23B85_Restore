@interface CNUIUserActionCacheKeyGenerator
+ (id)descriptionOfActionType:(id)type;
+ (id)fingerprintOfEmailAddresses:(id)addresses;
+ (id)fingerprintOfInstantMessageAddresses:(id)addresses;
+ (id)fingerprintOfPhoneNumbers:(id)numbers;
+ (id)fingerprintOfPostalAddresses:(id)addresses;
+ (id)fingerprintOfSocialProfiles:(id)profiles;
+ (id)handlesForActionType:(id)type contact:(id)contact;
+ (id)keyForContact:(id)contact actionType:(id)type;
+ (id)os_log;
+ (unint64_t)propertiesForActionType:(id)type;
@end

@implementation CNUIUserActionCacheKeyGenerator

+ (id)os_log
{
  if (os_log_cn_once_token_1 != -1)
  {
    +[CNUIUserActionCacheKeyGenerator os_log];
  }

  v3 = os_log_cn_once_object_1;

  return v3;
}

uint64_t __41__CNUIUserActionCacheKeyGenerator_os_log__block_invoke()
{
  os_log_cn_once_object_1 = os_log_create("com.apple.contacts.ui", "user-actions-cache-key-generator");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)keyForContact:(id)contact actionType:(id)type
{
  typeCopy = type;
  v7 = [self handlesForActionType:typeCopy contact:contact];
  trim = [MEMORY[0x1E6996840] Trim];
  v9 = [v7 _cn_map:trim];

  if ([v9 count])
  {
    v10 = [v9 componentsJoinedByString:{@", "}];
    string = [MEMORY[0x1E696AD60] string];
    v12 = [self descriptionOfActionType:typeCopy];
    [(__CFString *)string appendString:v12];

    [(__CFString *)string appendString:@"["];
    [(__CFString *)string appendString:v10];
    [(__CFString *)string appendString:@"]"];
  }

  else
  {
    string = &stru_1F162C170;
  }

  return string;
}

+ (id)descriptionOfActionType:(id)type
{
  typeCopy = type;
  if ([*MEMORY[0x1E695C170] isEqualToString:typeCopy])
  {
    typeCopy = @"Mail";
  }

  else if ([*MEMORY[0x1E695C178] isEqualToString:typeCopy])
  {
    typeCopy = @"Message";
  }

  else if ([*MEMORY[0x1E695C150] isEqualToString:typeCopy])
  {
    typeCopy = @"AudioCall";
  }

  else if ([*MEMORY[0x1E695C1B8] isEqualToString:typeCopy])
  {
    typeCopy = @"VideoCall";
  }

  else if ([*MEMORY[0x1E695C190] isEqualToString:typeCopy])
  {
    typeCopy = @"TTY";
  }

  else if ([*MEMORY[0x1E695C1A8] isEqualToString:typeCopy])
  {
    typeCopy = @"TTYRelay";
  }

  else if ([*MEMORY[0x1E695C188] isEqualToString:typeCopy])
  {
    typeCopy = @"Pay";
  }

  else if ([*MEMORY[0x1E695C160] isEqualToString:typeCopy])
  {
    typeCopy = @"Directions";
  }

  else if ([*MEMORY[0x1E695C168] isEqualToString:typeCopy])
  {
    typeCopy = @"Expanse";
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_FAULT))
    {
      [(CNUIUserActionCacheKeyGenerator *)typeCopy descriptionOfActionType:os_log];
    }

    typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownActionType(%@)", typeCopy];
  }

  return typeCopy;
}

+ (id)handlesForActionType:(id)type contact:(id)contact
{
  contactCopy = contact;
  v7 = MEMORY[0x1E695DF70];
  typeCopy = type;
  array = [v7 array];
  v10 = [self propertiesForActionType:typeCopy];

  if (v10)
  {
    phoneNumbers = [contactCopy phoneNumbers];
    v15 = [self fingerprintOfPhoneNumbers:phoneNumbers];

    [array addObjectsFromArray:v15];
    if ((v10 & 2) == 0)
    {
LABEL_3:
      if ((v10 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_3;
  }

  emailAddresses = [contactCopy emailAddresses];
  v17 = [self fingerprintOfEmailAddresses:emailAddresses];

  [array addObjectsFromArray:v17];
  if ((v10 & 4) == 0)
  {
LABEL_4:
    if ((v10 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  postalAddresses = [contactCopy postalAddresses];
  v19 = [self fingerprintOfPostalAddresses:postalAddresses];

  [array addObjectsFromArray:v19];
  if ((v10 & 8) == 0)
  {
LABEL_5:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  socialProfiles = [contactCopy socialProfiles];
  v21 = [self fingerprintOfSocialProfiles:socialProfiles];

  [array addObjectsFromArray:v21];
  if ((v10 & 0x10) != 0)
  {
LABEL_6:
    instantMessageAddresses = [contactCopy instantMessageAddresses];
    v12 = [self fingerprintOfInstantMessageAddresses:instantMessageAddresses];

    [array addObjectsFromArray:v12];
  }

LABEL_7:

  return array;
}

+ (unint64_t)propertiesForActionType:(id)type
{
  v12[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([*MEMORY[0x1E695C170] isEqualToString:typeCopy])
  {
    v4 = 2;
  }

  else
  {
    if (([*MEMORY[0x1E695C178] isEqualToString:typeCopy] & 1) == 0 && (objc_msgSend(*MEMORY[0x1E695C150], "isEqualToString:", typeCopy) & 1) == 0 && (objc_msgSend(*MEMORY[0x1E695C1B8], "isEqualToString:", typeCopy) & 1) == 0)
    {
      if ([*MEMORY[0x1E695C190] isEqualToString:typeCopy] & 1) != 0 || (objc_msgSend(*MEMORY[0x1E695C1A8], "isEqualToString:", typeCopy))
      {
        v4 = 1;
        goto LABEL_7;
      }

      if ([*MEMORY[0x1E695C188] isEqualToString:typeCopy])
      {
        v4 = 3;
        goto LABEL_7;
      }

      if ([*MEMORY[0x1E695C160] isEqualToString:typeCopy])
      {
        v4 = 4;
        goto LABEL_7;
      }

      if (([*MEMORY[0x1E695C168] isEqualToString:typeCopy] & 1) == 0)
      {
        v6 = MEMORY[0x1E695DF30];
        v7 = *MEMORY[0x1E695D930];
        v11 = @"action-type";
        v12[0] = typeCopy;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
        v9 = [v6 exceptionWithName:v7 reason:@"CNActionType not handled" userInfo:v8];
        v10 = v9;

        objc_exception_throw(v9);
      }
    }

    v4 = 27;
  }

LABEL_7:

  return v4;
}

+ (id)fingerprintOfPhoneNumbers:(id)numbers
{
  v3 = MEMORY[0x1E695CEE0];
  numbersCopy = numbers;
  value = [v3 Value];
  v6 = [numbersCopy _cn_map:value];

  stringValue = [MEMORY[0x1E695CF50] StringValue];
  v8 = [v6 _cn_map:stringValue];

  v9 = [v8 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  _cn_distinctObjects = [v9 _cn_distinctObjects];

  isNotEmpty = [MEMORY[0x1E6996840] IsNotEmpty];
  v12 = [_cn_distinctObjects _cn_filter:isNotEmpty];

  return v12;
}

+ (id)fingerprintOfEmailAddresses:(id)addresses
{
  v3 = MEMORY[0x1E695CEE0];
  addressesCopy = addresses;
  value = [v3 Value];
  v6 = [addressesCopy _cn_map:value];

  v7 = [v6 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  _cn_distinctObjects = [v7 _cn_distinctObjects];

  isNotEmpty = [MEMORY[0x1E6996840] IsNotEmpty];
  v10 = [_cn_distinctObjects _cn_filter:isNotEmpty];

  return v10;
}

+ (id)fingerprintOfPostalAddresses:(id)addresses
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695CC00];
  v21[0] = *MEMORY[0x1E695CC30];
  v21[1] = v3;
  v4 = *MEMORY[0x1E695CC18];
  v21[2] = *MEMORY[0x1E695CC28];
  v21[3] = v4;
  v5 = MEMORY[0x1E695DEC8];
  addressesCopy = addresses;
  v7 = [v5 arrayWithObjects:v21 count:4];
  value = [MEMORY[0x1E695CEE0] Value];
  v9 = [addressesCopy _cn_map:value];

  _cn_distinctObjects = [v9 _cn_distinctObjects];

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __64__CNUIUserActionCacheKeyGenerator_fingerprintOfPostalAddresses___block_invoke;
  v19 = &unk_1E76E7E30;
  v20 = v7;
  v11 = v7;
  v12 = [_cn_distinctObjects _cn_flatMap:&v16];
  isNotEmpty = [MEMORY[0x1E6996840] IsNotEmpty];
  v14 = [v12 _cn_filter:isNotEmpty];

  return v14;
}

id __64__CNUIUserActionCacheKeyGenerator_fingerprintOfPostalAddresses___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dictionaryRepresentation];
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CNUIUserActionCacheKeyGenerator_fingerprintOfPostalAddresses___block_invoke_2;
  v8[3] = &unk_1E76E7E08;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _cn_compactMap:v8];

  return v6;
}

+ (id)fingerprintOfSocialProfiles:(id)profiles
{
  v3 = MEMORY[0x1E695CEE0];
  profilesCopy = profiles;
  value = [v3 Value];
  v6 = [profilesCopy _cn_map:value];

  username = [MEMORY[0x1E695CFA0] Username];
  v8 = [v6 _cn_compactMap:username];

  v9 = [v8 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  _cn_distinctObjects = [v9 _cn_distinctObjects];

  isNotEmpty = [MEMORY[0x1E6996840] IsNotEmpty];
  v12 = [_cn_distinctObjects _cn_filter:isNotEmpty];

  return v12;
}

+ (id)fingerprintOfInstantMessageAddresses:(id)addresses
{
  v3 = MEMORY[0x1E695CEE0];
  addressesCopy = addresses;
  value = [v3 Value];
  v6 = [addressesCopy _cn_map:value];

  username = [MEMORY[0x1E695CED8] Username];
  v8 = [v6 _cn_compactMap:username];

  v9 = [v8 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  _cn_distinctObjects = [v9 _cn_distinctObjects];

  isNotEmpty = [MEMORY[0x1E6996840] IsNotEmpty];
  v12 = [_cn_distinctObjects _cn_filter:isNotEmpty];

  return v12;
}

+ (void)descriptionOfActionType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_FAULT, "Generating cache key for unknown action type: %{public}@", &v2, 0xCu);
}

@end