@interface IMSMSFilterHelper
+ (BOOL)IDSDeviceSupportsIncomingSMSRelayFilteringForDeviceType:(int64_t)type;
+ (BOOL)isFilterMode:(int64_t)mode subsetOf:(int64_t)of;
+ (BOOL)isValidActiveFilterAction:(int64_t)action subAction:(int64_t)subAction;
+ (BOOL)supportsIncomingSMSRelayFiltering;
+ (id)fetchSMSFilterExtensionParams;
+ (id)fetchSMSFilterParamForCategory:(int64_t)category subCategory:(int64_t)subCategory;
+ (id)filterLabelForAction:(int64_t)action subAction:(int64_t)subAction;
+ (int64_t)filterActionForCategory:(int64_t)category;
+ (int64_t)filterSubActionForCategory:(int64_t)category subCategory:(int64_t)subCategory;
+ (unint64_t)conversationFilterModeForMessageFilter:(unint64_t)filter;
+ (void)updateSMSFilterExtensionParams;
@end

@implementation IMSMSFilterHelper

+ (id)fetchSMSFilterExtensionParams
{
  v2 = qword_1EB30B7F8;
  if (qword_1EB30B7F8)
  {
LABEL_18:
    v15 = v2;
    goto LABEL_19;
  }

  if (IMGetDomainBoolForKey())
  {
    v3 = IMGetCachedDomainValueForKey();
    v4 = v3;
    if (v3 && [v3 count])
    {
      v5 = [v4 objectForKey:@"spamFilterExtensionParams"];
      v18 = 0;
      v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:&v18];
      v7 = v18;
      v8 = MEMORY[0x1E695DFD8];
      v9 = objc_opt_class();
      v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
      [v6 _enableStrictSecureDecodingMode];
      v11 = [v6 decodeObjectOfClasses:v10 forKey:*MEMORY[0x1E696A508]];
      v12 = qword_1EB30B7F8;
      qword_1EB30B7F8 = v11;

      if (!qword_1EB30B7F8 || v7)
      {
        v13 = IMLogHandleForCategory("IMSMSFilterHelper");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C5EB4();
        }
      }
    }

    else
    {
      v16 = IMLogHandleForCategory("IMSMSFilterHelper");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_1A88C5F1C(v16);
      }

      +[IMSMSFilterCapabilitiesBinder handleSubClassificationFilterChange];
    }

    v2 = qword_1EB30B7F8;
    goto LABEL_18;
  }

  v14 = IMLogHandleForCategory("IMSMSFilterHelper");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1A88C5E08(v14);
  }

  v15 = 0;
LABEL_19:

  return v15;
}

+ (void)updateSMSFilterExtensionParams
{
  v2 = qword_1EB30B7F8;
  qword_1EB30B7F8 = 0;

  v3 = IMGetCachedDomainValueForKey();
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectForKey:@"spamFilterExtensionParams"];
    v14 = 0;
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:&v14];
    v7 = v14;
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    [v6 _enableStrictSecureDecodingMode];
    v11 = [v6 decodeObjectOfClasses:v10 forKey:*MEMORY[0x1E696A508]];
    v12 = qword_1EB30B7F8;
    qword_1EB30B7F8 = v11;

    if (!qword_1EB30B7F8 || v7)
    {
      v13 = IMLogHandleForCategory("IMSMSFilterHelper");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C5F60();
      }
    }
  }
}

+ (id)fetchSMSFilterParamForCategory:(int64_t)category subCategory:(int64_t)subCategory
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = +[IMSMSFilterHelper fetchSMSFilterExtensionParams];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 action] == category && objc_msgSend(v11, "subAction") == subCategory)
        {
          v12 = v11;
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

+ (int64_t)filterActionForCategory:(int64_t)category
{
  v17 = *MEMORY[0x1E69E9840];
  if (category == 1)
  {
    return 2;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = +[IMSMSFilterHelper fetchSMSFilterExtensionParams];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 category] == category)
        {
          action = [v10 action];
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  action = 0;
LABEL_13:

  return action;
}

+ (int64_t)filterSubActionForCategory:(int64_t)category subCategory:(int64_t)subCategory
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = +[IMSMSFilterHelper fetchSMSFilterExtensionParams];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 category] == category && objc_msgSend(v11, "subCategory") == subCategory)
        {
          subAction = [v11 subAction];
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  subAction = 0;
LABEL_12:

  return subAction;
}

+ (id)filterLabelForAction:(int64_t)action subAction:(int64_t)subAction
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = +[IMSMSFilterHelper fetchSMSFilterExtensionParams];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    label = @"filtered";
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 action] == action && objc_msgSend(v12, "subAction") == subAction)
        {
          label = [v12 label];
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    label = @"filtered";
  }

LABEL_13:

  return label;
}

+ (BOOL)isValidActiveFilterAction:(int64_t)action subAction:(int64_t)subAction
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = qword_1EB30B7F8;
  qword_1EB30B7F8 = 0;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = +[IMSMSFilterHelper fetchSMSFilterExtensionParams];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 action] == action && objc_msgSend(v12, "subAction") == subAction)
        {
          v13 = 1;
          goto LABEL_12;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (unint64_t)conversationFilterModeForMessageFilter:(unint64_t)filter
{
  v3 = filter & 0xF;
  v4 = 5;
  if (v3 != 3)
  {
    v4 = 0;
  }

  if (v3 != 4)
  {
    v3 = v4;
  }

  if (filter >= 0x10)
  {
    return v3;
  }

  else
  {
    return filter;
  }
}

+ (BOOL)supportsIncomingSMSRelayFiltering
{
  v2 = IMSharedHelperDeviceIsiPad();
  if (!v2)
  {
    v3 = +[IMFeatureFlags sharedFeatureFlags];
    [v3 isCategorizationEnabled];
  }

  return v2;
}

+ (BOOL)IDSDeviceSupportsIncomingSMSRelayFilteringForDeviceType:(int64_t)type
{
  if (type <= 5)
  {
    if (type != 1)
    {
      return type == 4;
    }

LABEL_7:
    v4 = +[IMFeatureFlags sharedFeatureFlags];
    isCategorizationEnabled = [v4 isCategorizationEnabled];

    return isCategorizationEnabled;
  }

  if (type == 6 || type == 9)
  {
    goto LABEL_7;
  }

  return 0;
}

+ (BOOL)isFilterMode:(int64_t)mode subsetOf:(int64_t)of
{
  v6 = of & 0xF;
  v7 = mode & 0xF;
  if (v7 == 1 || v6 != 1)
  {
    goto LABEL_5;
  }

  if (v7 == 2)
  {
    if (!+[IMNotificationSettings isSpamFilteringEnabled](IMNotificationSettings, "isSpamFilteringEnabled") && !+[IMNotificationSettings isTextMessageExtensionEnabled])
    {
      return 1;
    }
  }

  else if (!+[IMNotificationSettings isTextMessageExtensionEnabled])
  {
    return 1;
  }

LABEL_5:
  v9 = v6 == v7;
  if (!v6)
  {
    v9 = v7 != 2;
  }

  if (of <= 0xF)
  {
    return v9;
  }

  else
  {
    return (of ^ mode) < 0x10;
  }
}

@end