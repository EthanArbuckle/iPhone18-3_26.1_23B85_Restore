@interface IMSMSFilterHelper
+ (BOOL)IDSDeviceSupportsIncomingSMSRelayFilteringForDeviceType:(int64_t)a3;
+ (BOOL)isFilterMode:(int64_t)a3 subsetOf:(int64_t)a4;
+ (BOOL)isValidActiveFilterAction:(int64_t)a3 subAction:(int64_t)a4;
+ (BOOL)supportsIncomingSMSRelayFiltering;
+ (id)fetchSMSFilterExtensionParams;
+ (id)fetchSMSFilterParamForCategory:(int64_t)a3 subCategory:(int64_t)a4;
+ (id)filterLabelForAction:(int64_t)a3 subAction:(int64_t)a4;
+ (int64_t)filterActionForCategory:(int64_t)a3;
+ (int64_t)filterSubActionForCategory:(int64_t)a3 subCategory:(int64_t)a4;
+ (unint64_t)conversationFilterModeForMessageFilter:(unint64_t)a3;
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

+ (id)fetchSMSFilterParamForCategory:(int64_t)a3 subCategory:(int64_t)a4
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
        if ([v11 action] == a3 && objc_msgSend(v11, "subAction") == a4)
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

+ (int64_t)filterActionForCategory:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
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
        if ([v10 category] == a3)
        {
          v3 = [v10 action];
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

  v3 = 0;
LABEL_13:

  return v3;
}

+ (int64_t)filterSubActionForCategory:(int64_t)a3 subCategory:(int64_t)a4
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
        if ([v11 category] == a3 && objc_msgSend(v11, "subCategory") == a4)
        {
          v12 = [v11 subAction];
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

+ (id)filterLabelForAction:(int64_t)a3 subAction:(int64_t)a4
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
    v10 = @"filtered";
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 action] == a3 && objc_msgSend(v12, "subAction") == a4)
        {
          v10 = [v12 label];
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
    v10 = @"filtered";
  }

LABEL_13:

  return v10;
}

+ (BOOL)isValidActiveFilterAction:(int64_t)a3 subAction:(int64_t)a4
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
        if ([v12 action] == a3 && objc_msgSend(v12, "subAction") == a4)
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

+ (unint64_t)conversationFilterModeForMessageFilter:(unint64_t)a3
{
  v3 = a3 & 0xF;
  v4 = 5;
  if (v3 != 3)
  {
    v4 = 0;
  }

  if (v3 != 4)
  {
    v3 = v4;
  }

  if (a3 >= 0x10)
  {
    return v3;
  }

  else
  {
    return a3;
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

+ (BOOL)IDSDeviceSupportsIncomingSMSRelayFilteringForDeviceType:(int64_t)a3
{
  if (a3 <= 5)
  {
    if (a3 != 1)
    {
      return a3 == 4;
    }

LABEL_7:
    v4 = +[IMFeatureFlags sharedFeatureFlags];
    v5 = [v4 isCategorizationEnabled];

    return v5;
  }

  if (a3 == 6 || a3 == 9)
  {
    goto LABEL_7;
  }

  return 0;
}

+ (BOOL)isFilterMode:(int64_t)a3 subsetOf:(int64_t)a4
{
  v6 = a4 & 0xF;
  v7 = a3 & 0xF;
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

  if (a4 <= 0xF)
  {
    return v9;
  }

  else
  {
    return (a4 ^ a3) < 0x10;
  }
}

@end