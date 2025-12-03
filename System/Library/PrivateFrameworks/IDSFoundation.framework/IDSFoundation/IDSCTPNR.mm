@interface IDSCTPNR
- (BOOL)isPNRSupported;
- (BOOL)isRelevantContext:(id)context;
- (BOOL)isSIMReady;
- (BOOL)issuePNRForMechanism:(id)mechanism pushToken:(id)token attemptCount:(unsigned int)count sessionToken:(id)sessionToken completion:(id)completion;
- (BOOL)userOptInRequired;
- (CTXPCServiceSubscriptionContext)context;
- (IDSCTPNRDelegate)PNRDelegate;
- (IDSCTPNRInfo)PNRInfo;
- (NSString)description;
- (id)_initWithCoreTelephonyClient:(id)client SIM:(id)m;
- (id)_telephonyRequestForPushToken:(id)token phoneNumberValidationMechanism:(id)mechanism attemptCount:(unsigned int)count sessionToken:(id)sessionToken;
- (unint64_t)slotID;
- (void)_resetCarrierShortcodeSupportedCachedValue;
- (void)carrierBundleChange:(id)change;
- (void)operatorBundleChange:(id)change;
- (void)pnrReadyStateNotification:(id)notification regState:(BOOL)state;
- (void)pnrRequestSent:(id)sent pnrReqData:(id)data;
- (void)pnrResponseReceived:(id)received pnrRspData:(id)data;
- (void)setContext:(id)context;
@end

@implementation IDSCTPNR

- (BOOL)isSIMReady
{
  v28 = *MEMORY[0x1E69E9840];
  coreTelephonyClient = self->_coreTelephonyClient;
  context = [(IDSCTPNR *)self context];
  v15 = 0;
  v5 = [coreTelephonyClient getPNRContext:context outError:&v15];
  v6 = v15;

  if (v6)
  {
    registration = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1EAE0();
    }
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      if ([v5 isReady])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      phoneNumber = [v5 phoneNumber];
      imsi = [v5 imsi];
      plmn = [v5 plmn];
      context2 = [(IDSCTPNR *)self context];
      *buf = 138413570;
      v17 = v5;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = phoneNumber;
      v22 = 2112;
      v23 = imsi;
      v24 = 2112;
      v25 = plmn;
      v26 = 2112;
      v27 = context2;
      _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "Read telephony phone number registration context { PNRContext: %@, isReady: %@, phoneNumber: %@, IMSI: %@, PLMN: %@, subscriptionContext: %@ }", buf, 0x3Eu);
    }
  }

  isReady = [v5 isReady];
  return isReady;
}

- (CTXPCServiceSubscriptionContext)context
{
  v51 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_contextLock);
  p_context = &self->_context;
  context = self->_context;
  if (!context)
  {
    v5 = _os_feature_enabled_impl();
    coreTelephonyClient = self->_coreTelephonyClient;
    if (v5)
    {
      v44 = 0;
      v33 = [coreTelephonyClient getActiveContexts:&v44];
      v34 = v44;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      existingUserSubscriptions = [v33 existingUserSubscriptions];
      v8 = [existingUserSubscriptions countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v41;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v41 != v10)
            {
              objc_enumerationMutation(existingUserSubscriptions);
            }

            v12 = [MEMORY[0x1E6965090] contextWithXPCContextInfo:*(*(&v40 + 1) + 8 * i)];
            labelID = [v12 labelID];
            v14 = [labelID isEqualToString:self->_labelID];

            if (v14)
            {
              v27 = *p_context;
              *p_context = v12;

              goto LABEL_26;
            }
          }

          v9 = [existingUserSubscriptions countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:

      v28 = [MEMORY[0x1E69A6138] sms];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v33;
        goto LABEL_33;
      }

      v29 = *p_context;
      *buf = 138412546;
      v47 = v29;
      v48 = 2112;
      v18 = v33;
      v49 = v33;
    }

    else
    {
      v39 = 0;
      v15 = [coreTelephonyClient getSubscriptionInfoWithError:&v39];
      v16 = v39;
      if (!v15)
      {
        v17 = [MEMORY[0x1E69A6138] sms];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E1EA10();
        }
      }

      v34 = v16;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v18 = v15;
      subscriptions = [v15 subscriptions];
      v20 = [subscriptions countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        while (2)
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(subscriptions);
            }

            v24 = *(*(&v35 + 1) + 8 * j);
            labelID2 = [v24 labelID];
            v26 = [labelID2 isEqualToString:self->_labelID];

            if (v26)
            {
              objc_storeStrong(&self->_context, v24);
              goto LABEL_29;
            }
          }

          v21 = [subscriptions countByEnumeratingWithState:&v35 objects:v45 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:

      v28 = [MEMORY[0x1E69A6138] sms];
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v30 = *p_context;
      *buf = 138412546;
      v47 = v30;
      v48 = 2112;
      v49 = v18;
    }

    _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "Finished loading context for PNR { context: %@, info: %@ }", buf, 0x16u);
LABEL_33:

    context = *p_context;
  }

  v31 = context;
  os_unfair_lock_unlock(&self->_contextLock);

  return v31;
}

- (BOOL)isPNRSupported
{
  coreTelephonyClient = self->_coreTelephonyClient;
  context = [(IDSCTPNR *)self context];
  v9 = 0;
  v4 = [coreTelephonyClient getPNRSupportStatus:context outError:&v9];
  v5 = v9;
  isSupported = [v4 isSupported];

  if (v5)
  {
    v7 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1EA78();
    }
  }

  return isSupported;
}

- (BOOL)userOptInRequired
{
  v17 = *MEMORY[0x1E69E9840];
  carrierShortcodeSupported = self->_carrierShortcodeSupported;
  if (carrierShortcodeSupported == -1)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    context = [(IDSCTPNR *)self context];
    v6 = 1;
    v7 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
    v8 = [coreTelephonyClient copyCarrierBundleValue:context key:@"RegistrationOptInRequired" bundleType:v7 error:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v8 BOOLValue] ^ 1;
    }

    self->_carrierShortcodeSupported = v6;
    v9 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"YES";
      v11 = self->_carrierShortcodeSupported;
      if (v6)
      {
        v10 = @"NO";
      }

      v13 = 138412546;
      v14 = v10;
      v15 = 2048;
      v16 = v11;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Determined if phone number registration opt-in is required by carrier bundle { optInRequired: %@, carrierShortcodeSupported: %ld }", &v13, 0x16u);
    }

    carrierShortcodeSupported = self->_carrierShortcodeSupported;
  }

  return carrierShortcodeSupported != 1;
}

- (id)_initWithCoreTelephonyClient:(id)client SIM:(id)m
{
  clientCopy = client;
  mCopy = m;
  v14.receiver = self;
  v14.super_class = IDSCTPNR;
  v9 = [(IDSCTPNR *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_contextLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_coreTelephonyClient, client);
    [clientCopy setDelegate:v10];
    sIMIdentifier = [mCopy SIMIdentifier];
    labelID = v10->_labelID;
    v10->_labelID = sIMIdentifier;

    v10->_carrierShortcodeSupported = -1;
    v10->_hardwareType = [mCopy hardwareType];
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  labelID = [(IDSCTPNR *)self labelID];
  v6 = [v3 stringWithFormat:@"<%@: %p, labelID: %@>", v4, self, labelID];

  return v6;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock(&self->_contextLock);
  context = self->_context;
  self->_context = contextCopy;

  os_unfair_lock_unlock(&self->_contextLock);
}

- (id)_telephonyRequestForPushToken:(id)token phoneNumberValidationMechanism:(id)mechanism attemptCount:(unsigned int)count sessionToken:(id)sessionToken
{
  v7 = *&count;
  v26 = *MEMORY[0x1E69E9840];
  mechanismCopy = mechanism;
  sessionTokenCopy = sessionToken;
  v11 = MEMORY[0x1E69A6138];
  tokenCopy = token;
  v13 = [v11 sms];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = mechanismCopy;
    _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "Constructing phone number registration request { mechanism: %@ }", &v24, 0xCu);
  }

  v14 = objc_alloc_init(MEMORY[0x1E6965060]);
  [v14 setPushToken:tokenCopy];

  [v14 setEmbedded:0];
  [v14 setAttemptCount:0];
  [v14 setPnrReqList:0];
  if (objc_opt_respondsToSelector())
  {
    [v14 setSessionToken:sessionTokenCopy];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_alloc_init(MEMORY[0x1E6965058]);
  [v16 setSvcCenterAddr:0];
  [v16 setDestAddr:0];
  type = [mechanismCopy type];
  v18 = type;
  if (type == 3)
  {
    context = [mechanismCopy context];

    if (!context)
    {
      v18 = 3;
      goto LABEL_15;
    }

    context2 = [mechanismCopy context];
    [v14 setEmbedded:context2];
    goto LABEL_12;
  }

  if (type != 2)
  {
    if (type != 1)
    {
      goto LABEL_16;
    }

    context3 = [mechanismCopy context];

    if (!context3)
    {
      v18 = 1;
      goto LABEL_15;
    }

    context2 = [mechanismCopy context];
    [v16 setDestAddr:context2];
LABEL_12:
  }

LABEL_15:
  [v16 setPnrMechanism:v18];
  [v15 addObject:v16];
LABEL_16:
  if ([v15 count])
  {
    [v14 setPnrReqList:v15];
  }

  else
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
    [v14 setAttemptCount:v22];
  }

  return v14;
}

- (unint64_t)slotID
{
  context = [(IDSCTPNR *)self context];
  slotID = [context slotID];

  if (slotID)
  {
    return slotID == 2;
  }

  else
  {
    return 2;
  }
}

- (IDSCTPNRInfo)PNRInfo
{
  v33 = *MEMORY[0x1E69E9840];
  coreTelephonyClient = self->_coreTelephonyClient;
  context = [(IDSCTPNR *)self context];
  v20 = 0;
  v5 = [coreTelephonyClient getPNRContext:context outError:&v20];
  v6 = v20;

  if (v6)
  {
    registration = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1EB48();
    }
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      if ([v5 isReady])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      phoneNumber = [v5 phoneNumber];
      imsi = [v5 imsi];
      plmn = [v5 plmn];
      context2 = [(IDSCTPNR *)self context];
      *buf = 138413570;
      v22 = v5;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = phoneNumber;
      v27 = 2112;
      v28 = imsi;
      v29 = 2112;
      v30 = plmn;
      v31 = 2112;
      v32 = context2;
      _os_log_impl(&dword_1A7AD9000, registration, OS_LOG_TYPE_DEFAULT, "Read telephony phone number registration context { PNRContext: %@, isReady: %@, phoneNumber: %@, IMSI: %@, PLMN: %@, subscriptionContext: %@ }", buf, 0x3Eu);
    }
  }

  v13 = [IDSCTPNRInfo alloc];
  imsi2 = [v5 imsi];
  plmn2 = [v5 plmn];
  phoneNumber2 = [v5 phoneNumber];
  phoneNumberOnSIM = [v5 phoneNumberOnSIM];
  v18 = [(IDSCTPNRInfo *)v13 initWithIMSI:imsi2 PLMN:plmn2 PNRPhoneNumber:phoneNumber2 phoneBookNumber:phoneNumberOnSIM];

  return v18;
}

- (BOOL)issuePNRForMechanism:(id)mechanism pushToken:(id)token attemptCount:(unsigned int)count sessionToken:(id)sessionToken completion:(id)completion
{
  v9 = *&count;
  v42 = *MEMORY[0x1E69E9840];
  mechanismCopy = mechanism;
  tokenCopy = token;
  sessionTokenCopy = sessionToken;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!sessionTokenCopy)
    {
      v16 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E1EBB0(v16);
      }
    }

    context = [(IDSCTPNR *)self context];
    v18 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = context;
      v34 = 2112;
      v35 = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "Loaded subscription info for phone number registration request { context: %@, error: %@ }", buf, 0x16u);
    }

    if (context && self->_coreTelephonyClient)
    {
      v19 = [(IDSCTPNR *)self _telephonyRequestForPushToken:tokenCopy phoneNumberValidationMechanism:mechanismCopy attemptCount:v9 sessionToken:sessionTokenCopy];
      v20 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        pushToken = [v19 pushToken];
        [v19 attemptCount];
        v22 = v28 = tokenCopy;
        pnrReqList = [v19 pnrReqList];
        *buf = 138413314;
        v33 = pushToken;
        v34 = 2112;
        v35 = v22;
        v36 = 2112;
        v37 = pnrReqList;
        v38 = 2112;
        v39 = context;
        v40 = 2112;
        v41 = mechanismCopy;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "Issuing phone number registration request { pushToken: %@, attemptCount: %@, mechanisms: %@, context: %@, mechanism: %@ }", buf, 0x34u);

        tokenCopy = v28;
      }

      coreTelephonyClient = self->_coreTelephonyClient;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1A7C61208;
      v29[3] = &unk_1E77E2218;
      v30 = v19;
      v31 = completionCopy;
      v25 = v19;
      [coreTelephonyClient issuePNRRequest:context pnrReqType:v25 completion:v29];

      v26 = 1;
    }

    else
    {
      v25 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E1EBF4(self, context, v25);
      }

      v26 = 0;
    }
  }

  else
  {
    context = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(context, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1EC88();
    }

    v26 = 0;
  }

  return v26;
}

- (BOOL)isRelevantContext:(id)context
{
  contextCopy = context;
  context = [(IDSCTPNR *)self context];
  if (context == contextCopy)
  {
    v7 = 1;
  }

  else
  {
    labelID = [contextCopy labelID];
    v7 = [labelID isEqualToString:self->_labelID];
  }

  return v7;
}

- (void)carrierBundleChange:(id)change
{
  if ([(IDSCTPNR *)self isRelevantContext:change])
  {
    v4 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1A7E1ECFC();
    }

    [(IDSCTPNR *)self _resetCarrierShortcodeSupportedCachedValue];
  }
}

- (void)operatorBundleChange:(id)change
{
  if ([(IDSCTPNR *)self isRelevantContext:change])
  {
    v4 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1A7E1ED70();
    }

    [(IDSCTPNR *)self _resetCarrierShortcodeSupportedCachedValue];
  }
}

- (void)_resetCarrierShortcodeSupportedCachedValue
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A6138] sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    carrierShortcodeSupported = self->_carrierShortcodeSupported;
    v5 = 134217984;
    v6 = carrierShortcodeSupported;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Resetting cached carrier shortcode value { previousCarrierShortcodeSupportedValue: %ld }", &v5, 0xCu);
  }

  os_unfair_lock_lock(&self->_contextLock);
  self->_carrierShortcodeSupported = -1;
  os_unfair_lock_unlock(&self->_contextLock);
}

- (void)pnrReadyStateNotification:(id)notification regState:(BOOL)state
{
  stateCopy = state;
  if ([(IDSCTPNR *)self isRelevantContext:notification])
  {
    WeakRetained = objc_loadWeakRetained(&self->_PNRDelegate);
    [WeakRetained PNRReadyStateChanged:stateCopy];
  }
}

- (void)pnrRequestSent:(id)sent pnrReqData:(id)data
{
  dataCopy = data;
  if ([(IDSCTPNR *)self isRelevantContext:sent])
  {
    WeakRetained = objc_loadWeakRetained(&self->_PNRDelegate);
    [WeakRetained PNRRequestSentWithRequestData:dataCopy];
  }
}

- (void)pnrResponseReceived:(id)received pnrRspData:(id)data
{
  dataCopy = data;
  if ([(IDSCTPNR *)self isRelevantContext:received])
  {
    v6 = [IDSCTPNRResponseData alloc];
    pNRInfo = [(IDSCTPNR *)self PNRInfo];
    phoneBookNumber = [pNRInfo phoneBookNumber];
    v9 = [(IDSCTPNRResponseData *)v6 initWithCTResponse:dataCopy phoneBookNumber:phoneBookNumber];

    WeakRetained = objc_loadWeakRetained(&self->_PNRDelegate);
    [WeakRetained PNRResponseReceivedWithResponseData:v9];
  }
}

- (IDSCTPNRDelegate)PNRDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_PNRDelegate);

  return WeakRetained;
}

@end