@interface CPSClipInvocationPolicy
+ (id)eligiblePolicy;
+ (id)ineligiblePolicyWithReason:(int64_t)reason;
+ (id)invocationPolicyWithAMSDict:(id)dict;
+ (void)requestAccountPolicyForClipMetadata:(id)metadata withCompletion:(id)completion;
- (CPSClipInvocationPolicy)initWithCoder:(id)coder;
- (CPSClipInvocationPolicy)initWithEligible:(BOOL)eligible reason:(int64_t)reason;
- (NSString)localizedTitle;
- (id)localizedMessageForClipMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSClipInvocationPolicy

- (CPSClipInvocationPolicy)initWithEligible:(BOOL)eligible reason:(int64_t)reason
{
  v10.receiver = self;
  v10.super_class = CPSClipInvocationPolicy;
  v6 = [(CPSClipInvocationPolicy *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_eligible = eligible;
    v6->_reason = reason;
    v8 = v6;
  }

  return v7;
}

+ (id)eligiblePolicy
{
  v2 = [[self alloc] initWithEligible:1 reason:0];

  return v2;
}

+ (id)ineligiblePolicyWithReason:(int64_t)reason
{
  v3 = [[self alloc] initWithEligible:0 reason:reason];

  return v3;
}

+ (void)requestAccountPolicyForClipMetadata:(id)metadata withCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  completionCopy = completion;
  if (CPSBypassAccountEligibilityCheck())
  {
    v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_INFO, "%{public}@ (%p): Bypassing account policy check.", buf, 0x16u);
    }

    sharedConnection = +[CPSClipInvocationPolicy eligiblePolicy];
    completionCopy[2](completionCopy, sharedConnection);
  }

  else
  {
    v11 = CPSAccountPolicyOverride();
    v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v13)
      {
        v14 = v12;
        *buf = 138543874;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        v31 = v11;
        _os_log_impl(&dword_2436ED000, v14, OS_LOG_TYPE_INFO, "%{public}@ (%p): Use policy override from user defaults: value = %ld ", buf, 0x20u);
      }

      sharedConnection = [CPSClipInvocationPolicy ineligiblePolicyWithReason:v11];
      completionCopy[2](completionCopy, sharedConnection);
    }

    else
    {
      if (v13)
      {
        v15 = v12;
        *buf = 138543618;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2048;
        *&buf[14] = self;
        _os_log_impl(&dword_2436ED000, v15, OS_LOG_TYPE_INFO, "%{public}@ (%p): Determining account policy.", buf, 0x16u);
      }

      v26 = 0;
      v27 = &v26;
      v28 = 0x2050000000;
      v16 = getMCProfileConnectionClass_softClass_0;
      v29 = getMCProfileConnectionClass_softClass_0;
      if (!getMCProfileConnectionClass_softClass_0)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getMCProfileConnectionClass_block_invoke_0;
        v31 = &unk_278DCDC00;
        v32 = &v26;
        __getMCProfileConnectionClass_block_invoke_0(buf);
        v16 = v27[3];
      }

      v17 = v16;
      _Block_object_dispose(&v26, 8);
      sharedConnection = [v16 sharedConnection];
      if ([sharedConnection isAppClipsAllowed])
      {
        if ([metadataCopy hasFullAppInstalledOnSystem])
        {
          v18 = CPS_LOG_CHANNEL_PREFIXClipServices();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = v18;
            v20 = objc_opt_class();
            *buf = 138543618;
            *&buf[4] = v20;
            *&buf[12] = 2048;
            *&buf[14] = self;
            _os_log_impl(&dword_2436ED000, v19, OS_LOG_TYPE_INFO, "%{public}@ (%p): Bypassing account policy check because full app is already installed.", buf, 0x16u);
          }

          v21 = +[CPSClipInvocationPolicy eligiblePolicy];
          completionCopy[2](completionCopy, v21);
        }

        else
        {
          v21 = objc_alloc_init(MEMORY[0x277CEC320]);
          [v21 setLookupFamilyInfoIfNecessary:1];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __78__CPSClipInvocationPolicy_requestAccountPolicyForClipMetadata_withCompletion___block_invoke;
          v23[3] = &unk_278DCEA18;
          selfCopy = self;
          v24 = completionCopy;
          [v21 statusWithCompletion:v23];
        }
      }

      else
      {
        v21 = [CPSClipInvocationPolicy ineligiblePolicyWithReason:6];
        completionCopy[2](completionCopy, v21);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __78__CPSClipInvocationPolicy_requestAccountPolicyForClipMetadata_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = v7;
    v21 = 138543874;
    v22 = v8;
    v23 = 2048;
    v24 = objc_opt_class();
    v25 = 2048;
    v26 = [v5 accountStatus];
    _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_INFO, "%{public}@ (%p): Obtained ASDAccountStatusCode: %ld", &v21, 0x20u);
  }

  if (!v5 || v6)
  {
    v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __78__CPSClipInvocationPolicy_requestAccountPolicyForClipMetadata_withCompletion___block_invoke_cold_1(a1, v12, v6);
    }

    v10 = *(a1 + 32);
    v11 = 12;
  }

  else
  {
    if (([v5 hasErrorStatus] & 1) == 0)
    {
      v10 = *(a1 + 32);
      v13 = +[CPSClipInvocationPolicy eligiblePolicy];
      goto LABEL_13;
    }

    if ([v5 hasResponseFlag:1])
    {
      v10 = *(a1 + 32);
      v11 = 1;
    }

    else if ([v5 hasResponseFlag:32])
    {
      v10 = *(a1 + 32);
      v11 = 4;
    }

    else if ([v5 hasResponseFlag:16])
    {
      v10 = *(a1 + 32);
      v11 = 9;
    }

    else if ([v5 hasResponseFlag:64])
    {
      v10 = *(a1 + 32);
      v11 = 10;
    }

    else if ([v5 hasResponseFlag:4])
    {
      v10 = *(a1 + 32);
      v11 = 11;
    }

    else if ([v5 hasResponseFlag:256])
    {
      v10 = *(a1 + 32);
      v11 = 3;
    }

    else if ([v5 hasResponseFlag:128])
    {
      v10 = *(a1 + 32);
      v11 = 2;
    }

    else
    {
      v16 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 40);
        v18 = v16;
        v19 = objc_opt_class();
        v20 = [v5 accountStatus];
        v21 = 138543874;
        v22 = v17;
        v23 = 2048;
        v24 = v19;
        v25 = 2048;
        v26 = v20;
        _os_log_impl(&dword_2436ED000, v18, OS_LOG_TYPE_INFO, "%{public}@ (%p): Unhandled ASDAccountStatusCode encountered while determining account policy. Account status: %ld", &v21, 0x20u);
      }

      v10 = *(a1 + 32);
      v11 = 15;
    }
  }

  v13 = [CPSClipInvocationPolicy ineligiblePolicyWithReason:v11];
LABEL_13:
  v14 = v13;
  (*(v10 + 16))(v10, v13);

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)invocationPolicyWithAMSDict:(id)dict
{
  v23 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v17 = 138543618;
    selfCopy2 = objc_opt_class();
    v19 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_INFO, "%{public}@ (%p): Determining clip policy.", &v17, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x277CEC388]) initWithDictionary:dictCopy];

  v8 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = objc_opt_class();
    responseCode = [v7 responseCode];
    v17 = 138543874;
    selfCopy2 = self;
    v19 = 2048;
    selfCopy = v10;
    v21 = 2048;
    v22 = responseCode;
    _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_INFO, "%{public}@ (%p): Obtained ASDClipRestrictionsTask response code: %ld", &v17, 0x20u);
  }

  if (CPSAMSRestrictionsCodeOverride() == 14)
  {
    goto LABEL_6;
  }

  if ([v7 hasErrorStatus])
  {
    if ([v7 hasResponseFlag:1])
    {
      v12 = 9;
      goto LABEL_7;
    }

    if ([v7 hasResponseFlag:2])
    {
      v12 = 5;
      goto LABEL_7;
    }

    if (![v7 hasResponseFlag:4])
    {
      v12 = 15;
      goto LABEL_7;
    }

LABEL_6:
    v12 = 14;
LABEL_7:
    v13 = [CPSClipInvocationPolicy ineligiblePolicyWithReason:v12];
    goto LABEL_12;
  }

  v13 = +[CPSClipInvocationPolicy eligiblePolicy];
LABEL_12:
  v14 = v13;

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSString)localizedTitle
{
  v3 = self->_reason - 1;
  if (v3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = _CPSLocalizedString(off_278DCEA50[v3], &_CPSLocalizableStringsBundleOnceToken, &_CPSLocalizableStringsBundle);
  }

  return v4;
}

- (id)localizedMessageForClipMetadata:(id)metadata
{
  metadataCopy = metadata;
  switch(self->_reason)
  {
    case 1:
      v5 = @"To use this app clip, you need to sign in with your Apple Account first.";
      goto LABEL_16;
    case 2:
      v5 = @"Before you can proceed, you must read and accept the new Terms and Conditions in the App Store.";
      goto LABEL_16;
    case 3:
      v5 = @"View and correct the problem in your Billing Info. If you cancel you may not be able to buy until this billing issue has been resolved.";
      goto LABEL_16;
    case 4:
      v5 = @"To ask permission to buy the app for this app clip, open the App Store";
      goto LABEL_16;
    case 5:
      v5 = @"To use this app clip, you first need to verify your age in the App Store";
      goto LABEL_16;
    case 6:
      v5 = @"Due to restrictions set for this device, app clips cannot be used";
      goto LABEL_16;
    case 7:
      v5 = @"App clips are not available with a managed Apple Account";
      goto LABEL_16;
    case 8:
      v5 = @"This app clip is not currently available in your country or region";
      goto LABEL_16;
    case 9:
      v5 = @"Due to restrictions set for this device, this app clip cannot be used";
      goto LABEL_16;
    case 0xALL:
      v5 = @"App clips are not available in your region";
      goto LABEL_16;
    case 0xBLL:
      v5 = @"App clips are not available with a restricted Apple Account";
      goto LABEL_16;
    case 0xCLL:
    case 0xDLL:
    case 0xFLL:
      v5 = @"App Clip Unavailable";
LABEL_16:
      v9 = _CPSLocalizedString(v5, &_CPSLocalizableStringsBundleOnceToken, &_CPSLocalizableStringsBundle);
      break;
    case 0xELL:
      v6 = MEMORY[0x277CCACA8];
      v7 = _CPSLocalizedString(@"This app clip requires iOS %@ or later", &_CPSLocalizableStringsBundleOnceToken, &_CPSLocalizableStringsBundle);
      clipMinimumOSVersion = [metadataCopy clipMinimumOSVersion];
      v9 = [v6 stringWithFormat:v7, clipMinimumOSVersion];

      break;
    default:
      v9 = 0;
      break;
  }

  return v9;
}

- (CPSClipInvocationPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CPSClipInvocationPolicy;
  v5 = [(CPSClipInvocationPolicy *)&v8 init];
  if (v5)
  {
    v5->_reason = [coderCopy decodeIntegerForKey:@"CPSClipInvocationPolicyKeyReason"];
    v5->_eligible = [coderCopy decodeBoolForKey:@"CPSClipInvocationPolicyKeyEligible"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  reason = self->_reason;
  coderCopy = coder;
  [coderCopy encodeInteger:reason forKey:@"CPSClipInvocationPolicyKeyReason"];
  [coderCopy encodeBool:self->_eligible forKey:@"CPSClipInvocationPolicyKeyEligible"];
}

void __78__CPSClipInvocationPolicy_requestAccountPolicyForClipMetadata_withCompletion___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = objc_opt_class();
  v7 = [a3 cps_privacyPreservingDescription];
  v9 = 138543874;
  v10 = v4;
  v11 = 2048;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  _os_log_error_impl(&dword_2436ED000, v5, OS_LOG_TYPE_ERROR, "%{public}@ (%p): Error determining account policy: %@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end