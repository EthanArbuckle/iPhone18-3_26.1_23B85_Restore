@interface CNUIUserActionCacheKeyGenerator
+ (id)descriptionOfActionType:(id)a3;
+ (id)fingerprintOfEmailAddresses:(id)a3;
+ (id)fingerprintOfInstantMessageAddresses:(id)a3;
+ (id)fingerprintOfPhoneNumbers:(id)a3;
+ (id)fingerprintOfPostalAddresses:(id)a3;
+ (id)fingerprintOfSocialProfiles:(id)a3;
+ (id)handlesForActionType:(id)a3 contact:(id)a4;
+ (id)keyForContact:(id)a3 actionType:(id)a4;
+ (id)os_log;
+ (unint64_t)propertiesForActionType:(id)a3;
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

+ (id)keyForContact:(id)a3 actionType:(id)a4
{
  v6 = a4;
  v7 = [a1 handlesForActionType:v6 contact:a3];
  v8 = [MEMORY[0x1E6996840] Trim];
  v9 = [v7 _cn_map:v8];

  if ([v9 count])
  {
    v10 = [v9 componentsJoinedByString:{@", "}];
    v11 = [MEMORY[0x1E696AD60] string];
    v12 = [a1 descriptionOfActionType:v6];
    [(__CFString *)v11 appendString:v12];

    [(__CFString *)v11 appendString:@"["];
    [(__CFString *)v11 appendString:v10];
    [(__CFString *)v11 appendString:@"]"];
  }

  else
  {
    v11 = &stru_1F162C170;
  }

  return v11;
}

+ (id)descriptionOfActionType:(id)a3
{
  v3 = a3;
  if ([*MEMORY[0x1E695C170] isEqualToString:v3])
  {
    v4 = @"Mail";
  }

  else if ([*MEMORY[0x1E695C178] isEqualToString:v3])
  {
    v4 = @"Message";
  }

  else if ([*MEMORY[0x1E695C150] isEqualToString:v3])
  {
    v4 = @"AudioCall";
  }

  else if ([*MEMORY[0x1E695C1B8] isEqualToString:v3])
  {
    v4 = @"VideoCall";
  }

  else if ([*MEMORY[0x1E695C190] isEqualToString:v3])
  {
    v4 = @"TTY";
  }

  else if ([*MEMORY[0x1E695C1A8] isEqualToString:v3])
  {
    v4 = @"TTYRelay";
  }

  else if ([*MEMORY[0x1E695C188] isEqualToString:v3])
  {
    v4 = @"Pay";
  }

  else if ([*MEMORY[0x1E695C160] isEqualToString:v3])
  {
    v4 = @"Directions";
  }

  else if ([*MEMORY[0x1E695C168] isEqualToString:v3])
  {
    v4 = @"Expanse";
  }

  else
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(CNUIUserActionCacheKeyGenerator *)v3 descriptionOfActionType:v5];
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownActionType(%@)", v3];
  }

  return v4;
}

+ (id)handlesForActionType:(id)a3 contact:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF70];
  v8 = a3;
  v9 = [v7 array];
  v10 = [a1 propertiesForActionType:v8];

  if (v10)
  {
    v14 = [v6 phoneNumbers];
    v15 = [a1 fingerprintOfPhoneNumbers:v14];

    [v9 addObjectsFromArray:v15];
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

  v16 = [v6 emailAddresses];
  v17 = [a1 fingerprintOfEmailAddresses:v16];

  [v9 addObjectsFromArray:v17];
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
  v18 = [v6 postalAddresses];
  v19 = [a1 fingerprintOfPostalAddresses:v18];

  [v9 addObjectsFromArray:v19];
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
  v20 = [v6 socialProfiles];
  v21 = [a1 fingerprintOfSocialProfiles:v20];

  [v9 addObjectsFromArray:v21];
  if ((v10 & 0x10) != 0)
  {
LABEL_6:
    v11 = [v6 instantMessageAddresses];
    v12 = [a1 fingerprintOfInstantMessageAddresses:v11];

    [v9 addObjectsFromArray:v12];
  }

LABEL_7:

  return v9;
}

+ (unint64_t)propertiesForActionType:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([*MEMORY[0x1E695C170] isEqualToString:v3])
  {
    v4 = 2;
  }

  else
  {
    if (([*MEMORY[0x1E695C178] isEqualToString:v3] & 1) == 0 && (objc_msgSend(*MEMORY[0x1E695C150], "isEqualToString:", v3) & 1) == 0 && (objc_msgSend(*MEMORY[0x1E695C1B8], "isEqualToString:", v3) & 1) == 0)
    {
      if ([*MEMORY[0x1E695C190] isEqualToString:v3] & 1) != 0 || (objc_msgSend(*MEMORY[0x1E695C1A8], "isEqualToString:", v3))
      {
        v4 = 1;
        goto LABEL_7;
      }

      if ([*MEMORY[0x1E695C188] isEqualToString:v3])
      {
        v4 = 3;
        goto LABEL_7;
      }

      if ([*MEMORY[0x1E695C160] isEqualToString:v3])
      {
        v4 = 4;
        goto LABEL_7;
      }

      if (([*MEMORY[0x1E695C168] isEqualToString:v3] & 1) == 0)
      {
        v6 = MEMORY[0x1E695DF30];
        v7 = *MEMORY[0x1E695D930];
        v11 = @"action-type";
        v12[0] = v3;
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

+ (id)fingerprintOfPhoneNumbers:(id)a3
{
  v3 = MEMORY[0x1E695CEE0];
  v4 = a3;
  v5 = [v3 Value];
  v6 = [v4 _cn_map:v5];

  v7 = [MEMORY[0x1E695CF50] StringValue];
  v8 = [v6 _cn_map:v7];

  v9 = [v8 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  v10 = [v9 _cn_distinctObjects];

  v11 = [MEMORY[0x1E6996840] IsNotEmpty];
  v12 = [v10 _cn_filter:v11];

  return v12;
}

+ (id)fingerprintOfEmailAddresses:(id)a3
{
  v3 = MEMORY[0x1E695CEE0];
  v4 = a3;
  v5 = [v3 Value];
  v6 = [v4 _cn_map:v5];

  v7 = [v6 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  v8 = [v7 _cn_distinctObjects];

  v9 = [MEMORY[0x1E6996840] IsNotEmpty];
  v10 = [v8 _cn_filter:v9];

  return v10;
}

+ (id)fingerprintOfPostalAddresses:(id)a3
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695CC00];
  v21[0] = *MEMORY[0x1E695CC30];
  v21[1] = v3;
  v4 = *MEMORY[0x1E695CC18];
  v21[2] = *MEMORY[0x1E695CC28];
  v21[3] = v4;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a3;
  v7 = [v5 arrayWithObjects:v21 count:4];
  v8 = [MEMORY[0x1E695CEE0] Value];
  v9 = [v6 _cn_map:v8];

  v10 = [v9 _cn_distinctObjects];

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __64__CNUIUserActionCacheKeyGenerator_fingerprintOfPostalAddresses___block_invoke;
  v19 = &unk_1E76E7E30;
  v20 = v7;
  v11 = v7;
  v12 = [v10 _cn_flatMap:&v16];
  v13 = [MEMORY[0x1E6996840] IsNotEmpty];
  v14 = [v12 _cn_filter:v13];

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

+ (id)fingerprintOfSocialProfiles:(id)a3
{
  v3 = MEMORY[0x1E695CEE0];
  v4 = a3;
  v5 = [v3 Value];
  v6 = [v4 _cn_map:v5];

  v7 = [MEMORY[0x1E695CFA0] Username];
  v8 = [v6 _cn_compactMap:v7];

  v9 = [v8 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  v10 = [v9 _cn_distinctObjects];

  v11 = [MEMORY[0x1E6996840] IsNotEmpty];
  v12 = [v10 _cn_filter:v11];

  return v12;
}

+ (id)fingerprintOfInstantMessageAddresses:(id)a3
{
  v3 = MEMORY[0x1E695CEE0];
  v4 = a3;
  v5 = [v3 Value];
  v6 = [v4 _cn_map:v5];

  v7 = [MEMORY[0x1E695CED8] Username];
  v8 = [v6 _cn_compactMap:v7];

  v9 = [v8 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  v10 = [v9 _cn_distinctObjects];

  v11 = [MEMORY[0x1E6996840] IsNotEmpty];
  v12 = [v10 _cn_filter:v11];

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