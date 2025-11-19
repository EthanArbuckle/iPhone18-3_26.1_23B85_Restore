@interface CKSenderIdentity
+ (BOOL)conflictResolutionEnabled;
+ (BOOL)fromPickerEnabled;
+ (BOOL)identityTrackingEnabled;
+ (NSArray)senderIdentitiesForFromPicker;
+ (id)_senderIdentitiesForLocalSubscriptionsWithSeenHandles:(id)a3;
+ (id)_senderIdentitiesForOperationalAccountsWithSeenHandles:(id)a3;
+ (id)identitySwitcherMenuWithSelectedIdentity:(id)a3 selectIdentity:(id)a4;
- (BOOL)_isValidForBasicFromPicker;
- (BOOL)_looksLikePhoneNumber;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidSubscription;
- (BOOL)isiMessageEnabled;
- (CKSenderIdentity)initWithHandle:(id)a3 simID:(id)a4;
- (CKSenderIdentity)initWithSubscriptionContext:(id)a3;
- (CKSenderIdentity)initWithTUSenderIdentity:(id)a3;
- (CTXPCServiceSubscriptionContext)subscription;
- (NSString)label;
- (NSString)shortName;
- (id)description;
- (id)sanitizingForSubscriptionsOnlyBasedOnPolicy;
@end

@implementation CKSenderIdentity

+ (id)identitySwitcherMenuWithSelectedIdentity:(id)a3 selectIdentity:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v37 = a4;
  v5 = +[CKSenderIdentity senderIdentitiesForFromPicker];
  if ([v5 count])
  {
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v34 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v12 = CKFrameworkBundle();
          v13 = [v11 label];
          v14 = [v12 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKit"];

          v15 = MEMORY[0x1E69DC628];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __76__CKSenderIdentity_identitySwitcherMenuWithSelectedIdentity_selectIdentity___block_invoke;
          v39[3] = &unk_1E72EFE00;
          v16 = v37;
          v39[4] = v11;
          v40 = v16;
          v17 = [v15 actionWithTitle:v14 image:0 identifier:0 handler:v39];
          [v17 setState:{objc_msgSend(v38, "isEqual:", v11)}];
          v18 = [v11 _wantsBadgeInMenuPicker];
          v19 = v6;
          if (v18)
          {
            v20 = MEMORY[0x1E69DCAB8];
            v21 = [v11 shortName];
            v22 = [v20 __ck_actionImageForSubscriptionShortName:v21 isFilled:0];
            [v17 setImage:v22];

            v19 = v35;
          }

          [v19 addObject:v17];
        }

        v8 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v8);
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v35 count])
    {
      v24 = MEMORY[0x1E69DCC60];
      v25 = [v35 copy];
      v26 = [v24 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v25];
      [v23 addObject:v26];
    }

    if ([v6 count])
    {
      v27 = MEMORY[0x1E69DCC60];
      v28 = [v6 copy];
      v29 = [v27 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v28];
      [v23 addObject:v29];
    }

    v30 = MEMORY[0x1E69DCC60];
    v31 = [v23 copy];
    v32 = [v30 menuWithChildren:v31];

    v5 = v34;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

+ (BOOL)identityTrackingEnabled
{
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    return 1;
  }

  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isFromPickerEnabledForAll];

  return v4;
}

+ (BOOL)fromPickerEnabled
{
  if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
  {
    return 1;
  }

  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isFromPickerEnabledForAll];

  return v4;
}

+ (BOOL)conflictResolutionEnabled
{
  if (IMSharedHelperDeviceHasMultipleSubscriptionsWithAtLeastOneActive())
  {
    return 1;
  }

  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isFromPickerEnabledForAll];

  return v4;
}

+ (id)_senderIdentitiesForLocalSubscriptionsWithSeenHandles:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = [MEMORY[0x1E69A7F68] sharedInstance];
  v5 = [v4 ctSubscriptionInfo];
  v6 = [v5 subscriptions];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v37;
    v11 = off_1E72E5000;
    v12 = "CKSenderIdentity";
    *&v8 = 138412290;
    v32 = v8;
    do
    {
      v13 = 0;
      do
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        v15 = [objc_alloc(v11[226]) initWithSubscriptionContext:v14];
        v16 = [v15 handle];
        if ([v16 length])
        {
        }

        else
        {
          [v15 simID];
          v35 = v14;
          v17 = v9;
          v18 = v10;
          v19 = v3;
          v20 = v12;
          v22 = v21 = v11;
          v23 = [v22 length];

          v11 = v21;
          v12 = v20;
          v3 = v19;
          v10 = v18;
          v9 = v17;
          v14 = v35;

          if (!v23)
          {
            v29 = IMLogHandleForCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = v32;
              v41 = v35;
              _os_log_error_impl(&dword_19020E000, v29, OS_LOG_TYPE_ERROR, "Subscription %@ did not resolve to have a handle/simID, rejecting", buf, 0xCu);
            }

            goto LABEL_15;
          }
        }

        v24 = IMLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = v32;
          v41 = v14;
          _os_log_debug_impl(&dword_19020E000, v24, OS_LOG_TYPE_DEBUG, "Including subscription %@ in array of sender identities for from picker", buf, 0xCu);
        }

        v25 = [v15 handle];

        if (v25)
        {
          v26 = [v15 handle];
          v27 = [v3 containsObject:v26];

          if (v27)
          {
            goto LABEL_15;
          }

          v28 = [v15 handle];
          [v3 addObject:v28];
        }

        [v34 addObject:{v15, v32}];
LABEL_15:

        ++v13;
      }

      while (v9 != v13);
      v30 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      v9 = v30;
    }

    while (v30);
  }

  return v34;
}

+ (id)_senderIdentitiesForOperationalAccountsWithSeenHandles:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isEnhancedFromPickerEnabled];

  if (v6)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [MEMORY[0x1E69A5A80] sharedInstance];
    v8 = [v7 operationalAccounts];

    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v22 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v13 = [v12 aliases];
          v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v24;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v24 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v23 + 1) + 8 * j);
                if (([v3 containsObject:v18] & 1) == 0)
                {
                  [v3 addObject:v18];
                  v19 = [[CKSenderIdentity alloc] initWithHandle:v18];
                  [v4 addObject:v19];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v15);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }
  }

  return v4;
}

+ (NSArray)senderIdentitiesForFromPicker
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [a1 _senderIdentitiesForLocalSubscriptionsWithSeenHandles:v3];
  [v4 addObjectsFromArray:v5];

  v6 = [a1 _senderIdentitiesForOperationalAccountsWithSeenHandles:v3];
  [v4 addObjectsFromArray:v6];

  v7 = [v4 copy];

  return v7;
}

- (CTXPCServiceSubscriptionContext)subscription
{
  v3 = [MEMORY[0x1E69A7F68] sharedInstance];
  v4 = [v3 ctSubscriptionInfo];
  v5 = [(CKSenderIdentity *)self simID];
  v6 = [(CKSenderIdentity *)self handle];
  v7 = [v4 __im_subscriptionContextForForSimID:v5 phoneNumber:v6];

  return v7;
}

- (CKSenderIdentity)initWithSubscriptionContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 phoneNumber];
    v7 = IMChatCanonicalIDSIDsForAddress();
    v8 = [v7 _stripFZIDPrefix];
    v9 = [v5 labelID];
    self = [(CKSenderIdentity *)self initWithHandle:v8 simID:v9];

    v10 = self;
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(CKSenderIdentity *)v11 initWithSubscriptionContext:v12, v13, v14, v15, v16, v17, v18];
    }

    v10 = 0;
  }

  return v10;
}

- (CKSenderIdentity)initWithTUSenderIdentity:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 handle];
    v8 = [v7 normalizedValue];
    v9 = v8;
    if (!v8)
    {
      v3 = [v6 handle];
      v9 = [v3 value];
    }

    v10 = [v6 accountUUID];
    v11 = [v10 UUIDString];
    self = [(CKSenderIdentity *)self initWithHandle:v9 simID:v11];

    if (!v8)
    {
    }

    v12 = self;
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(CKSenderIdentity *)v13 initWithTUSenderIdentity:v14, v15, v16, v17, v18, v19, v20];
    }

    v12 = 0;
  }

  return v12;
}

- (CKSenderIdentity)initWithHandle:(id)a3 simID:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 length] || objc_msgSend(v8, "length"))
  {
    v35.receiver = self;
    v35.super_class = CKSenderIdentity;
    v9 = [(CKSenderIdentity *)&v35 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_handle, a3);
      if ([v8 length])
      {
        if ([v7 length] && IMStringIsEmail())
        {
          simID = IMLogHandleForCategory();
          if (os_log_type_enabled(simID, OS_LOG_TYPE_ERROR))
          {
            [(CKSenderIdentity *)v8 initWithHandle:v7 simID:simID];
          }
        }

        else
        {
          v12 = [MEMORY[0x1E69A7F68] sharedInstance];
          v13 = [v12 ctSubscriptionInfo];
          v14 = [v13 __im_subscriptionContextForForSimID:v8 phoneNumber:v7];

          v15 = [v14 phoneNumber];

          if (v15)
          {
            v16 = IMChatCanonicalIDSIDsForAddress();
            v17 = [v14 phoneNumber];
            v18 = IMChatCanonicalIDSIDsForAddress();
            v19 = [v16 isEqualToString:v18];

            v20 = IMLogHandleForCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v34 = [v14 phoneNumber];
              *buf = 138413058;
              v37 = v8;
              v38 = 1024;
              v39 = v19;
              v40 = 2112;
              v41 = v7;
              v42 = 2112;
              v43 = v34;
              _os_log_debug_impl(&dword_19020E000, v20, OS_LOG_TYPE_DEBUG, "Accept simID %@ == %{BOOL}d because handle is %@ and context phone number is %@", buf, 0x26u);
            }

            if ((v19 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v30 = [v7 length];
            v31 = IMLogHandleForCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v37 = v8;
              v38 = 1024;
              v39 = v30 == 0;
              v40 = 2112;
              v41 = v7;
              _os_log_debug_impl(&dword_19020E000, v31, OS_LOG_TYPE_DEBUG, "Accept simID %@ == %{BOOL}d because handle is %@", buf, 0x1Cu);
            }

            if (v30)
            {
              goto LABEL_22;
            }
          }

          v32 = v8;
          simID = v10->_simID;
          v10->_simID = v32;
        }
      }
    }

LABEL_22:
    self = v10;
    v29 = self;
    goto LABEL_23;
  }

  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [(CKSenderIdentity *)v21 initWithHandle:v22 simID:v23, v24, v25, v26, v27, v28];
  }

  v29 = 0;
LABEL_23:

  return v29;
}

- (BOOL)_looksLikePhoneNumber
{
  v3 = [(CKSenderIdentity *)self handle];

  if (v3)
  {
    v4 = [(CKSenderIdentity *)self handle];
    LOBYTE(v5) = MEMORY[0x193AF5D40]();
  }

  else
  {
    v4 = [(CKSenderIdentity *)self simID];
    v5 = v4 != 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self || (-[CKSenderIdentity handle](v5, "handle"), v7 = objc_claimAutoreleasedReturnValue(), -[CKSenderIdentity handle](self, "handle"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqualToString:v8], v8, v7, (v9 & 1) != 0))
    {
      v10 = 1;
    }

    else
    {
      v11 = [(CKSenderIdentity *)v6 simID];
      v12 = [(CKSenderIdentity *)self simID];
      v10 = [v11 isEqualToString:v12];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)shortName
{
  v3 = [(CKSenderIdentity *)self subscription];
  v4 = v3;
  if (v3)
  {
    v5 = CKLocalizedShortNameForContext(v3);
  }

  else
  {
    v6 = [(CKSenderIdentity *)self _looksLikePhoneNumber];
    v7 = @"@";
    if (v6)
    {
      v7 = @"#";
    }

    v5 = v7;
  }

  v8 = v5;

  return v8;
}

- (NSString)label
{
  v3 = [(CKSenderIdentity *)self subscription];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 label];
  }

  else
  {
    v6 = [(CKSenderIdentity *)self _looksLikePhoneNumber];
    v5 = [(CKSenderIdentity *)self handle];
    if (v6)
    {
      v7 = IMFormattedDisplayStringForNumber();

      v5 = v7;
    }
  }

  return v5;
}

- (BOOL)isiMessageEnabled
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [(CKSenderIdentity *)self handle];

  if (v3)
  {
    v4 = [(CKSenderIdentity *)self handle];
    v5 = IMChatCanonicalIDSIDsForAddress();

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = [MEMORY[0x1E69A5A80] sharedInstance];
    v7 = [v6 operationalAccounts];

    v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v8)
    {
      v9 = *v37;
      v27 = *v37;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v36 + 1) + 8 * i);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v12 = [v11 aliases];
          v13 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v33;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v33 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = IMChatCanonicalIDSIDsForAddress();
                v18 = [v17 isEqualToString:v5];

                if (v18)
                {

                  LOBYTE(v8) = 1;
                  goto LABEL_31;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v9 = v27;
        }

        v8 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v19 = [(CKSenderIdentity *)self simID];

    if (!v19)
    {
      LOBYTE(v8) = 0;
      return v8;
    }

    v20 = [MEMORY[0x1E69A7F68] sharedInstance];
    v21 = [v20 registeredSIMIDs];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v21;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v8)
    {
      v22 = *v29;
      while (2)
      {
        for (k = 0; k != v8; ++k)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v7);
          }

          v24 = *(*(&v28 + 1) + 8 * k);
          v25 = [(CKSenderIdentity *)self simID];
          LOBYTE(v24) = [v25 isEqualToString:v24];

          if (v24)
          {
            LOBYTE(v8) = 1;
            goto LABEL_30;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:
    v5 = v7;
  }

LABEL_31:

  return v8;
}

- (BOOL)isValidSubscription
{
  v2 = [(CKSenderIdentity *)self subscription];

  return v2 != 0;
}

- (BOOL)_isValidForBasicFromPicker
{
  v2 = [(CKSenderIdentity *)self subscription];

  if (v2)
  {
    return 1;
  }

  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isEnhancedFromPickerEnabled];

  return v5;
}

- (id)sanitizingForSubscriptionsOnlyBasedOnPolicy
{
  if ([(CKSenderIdentity *)self _isValidForBasicFromPicker])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKSenderIdentity *)self handle];
  v5 = [(CKSenderIdentity *)self simID];
  v6 = [v3 stringWithFormat:@"<CKSenderIdentity %p handle=%@ simID=%@>", self, v4, v5];

  return v6;
}

- (void)initWithHandle:(os_log_t)log simID:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Rejecting simID %@ because handle %@ appears to be an email", &v3, 0x16u);
}

@end