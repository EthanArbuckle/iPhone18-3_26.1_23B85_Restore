@interface IDSCTPNR
- (BOOL)isPNRSupported;
- (BOOL)isRelevantContext:(id)a3;
- (BOOL)isSIMReady;
- (BOOL)issuePNRForMechanism:(id)a3 pushToken:(id)a4 attemptCount:(unsigned int)a5 sessionToken:(id)a6 completion:(id)a7;
- (BOOL)userOptInRequired;
- (CTXPCServiceSubscriptionContext)context;
- (IDSCTPNRDelegate)PNRDelegate;
- (IDSCTPNRInfo)PNRInfo;
- (NSString)description;
- (id)_initWithCoreTelephonyClient:(id)a3 SIM:(id)a4;
- (id)_telephonyRequestForPushToken:(id)a3 phoneNumberValidationMechanism:(id)a4 attemptCount:(unsigned int)a5 sessionToken:(id)a6;
- (unint64_t)slotID;
- (void)_resetCarrierShortcodeSupportedCachedValue;
- (void)carrierBundleChange:(id)a3;
- (void)operatorBundleChange:(id)a3;
- (void)pnrReadyStateNotification:(id)a3 regState:(BOOL)a4;
- (void)pnrRequestSent:(id)a3 pnrReqData:(id)a4;
- (void)pnrResponseReceived:(id)a3 pnrRspData:(id)a4;
- (void)setContext:(id)a3;
@end

@implementation IDSCTPNR

- (BOOL)isSIMReady
{
  v28 = *MEMORY[0x1E69E9840];
  coreTelephonyClient = self->_coreTelephonyClient;
  v4 = [(IDSCTPNR *)self context];
  v15 = 0;
  v5 = [coreTelephonyClient getPNRContext:v4 outError:&v15];
  v6 = v15;

  if (v6)
  {
    v7 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1EAE0();
    }
  }

  else
  {
    v7 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ([v5 isReady])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = [v5 phoneNumber];
      v10 = [v5 imsi];
      v11 = [v5 plmn];
      v12 = [(IDSCTPNR *)self context];
      *buf = 138413570;
      v17 = v5;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Read telephony phone number registration context { PNRContext: %@, isReady: %@, phoneNumber: %@, IMSI: %@, PLMN: %@, subscriptionContext: %@ }", buf, 0x3Eu);
    }
  }

  v13 = [v5 isReady];
  return v13;
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
      v7 = [v33 existingUserSubscriptions];
      v8 = [v7 countByEnumeratingWithState:&v40 objects:v50 count:16];
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
              objc_enumerationMutation(v7);
            }

            v12 = [MEMORY[0x1E6965090] contextWithXPCContextInfo:*(*(&v40 + 1) + 8 * i)];
            v13 = [v12 labelID];
            v14 = [v13 isEqualToString:self->_labelID];

            if (v14)
            {
              v27 = *p_context;
              *p_context = v12;

              goto LABEL_26;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v40 objects:v50 count:16];
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
      v19 = [v15 subscriptions];
      v20 = [v19 countByEnumeratingWithState:&v35 objects:v45 count:16];
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
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v35 + 1) + 8 * j);
            v25 = [v24 labelID];
            v26 = [v25 isEqualToString:self->_labelID];

            if (v26)
            {
              objc_storeStrong(&self->_context, v24);
              goto LABEL_29;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v35 objects:v45 count:16];
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
  v3 = [(IDSCTPNR *)self context];
  v9 = 0;
  v4 = [coreTelephonyClient getPNRSupportStatus:v3 outError:&v9];
  v5 = v9;
  v6 = [v4 isSupported];

  if (v5)
  {
    v7 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1EA78();
    }
  }

  return v6;
}

- (BOOL)userOptInRequired
{
  v17 = *MEMORY[0x1E69E9840];
  carrierShortcodeSupported = self->_carrierShortcodeSupported;
  if (carrierShortcodeSupported == -1)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v5 = [(IDSCTPNR *)self context];
    v6 = 1;
    v7 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
    v8 = [coreTelephonyClient copyCarrierBundleValue:v5 key:@"RegistrationOptInRequired" bundleType:v7 error:0];

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

- (id)_initWithCoreTelephonyClient:(id)a3 SIM:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = IDSCTPNR;
  v9 = [(IDSCTPNR *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_contextLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_coreTelephonyClient, a3);
    [v7 setDelegate:v10];
    v11 = [v8 SIMIdentifier];
    labelID = v10->_labelID;
    v10->_labelID = v11;

    v10->_carrierShortcodeSupported = -1;
    v10->_hardwareType = [v8 hardwareType];
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSCTPNR *)self labelID];
  v6 = [v3 stringWithFormat:@"<%@: %p, labelID: %@>", v4, self, v5];

  return v6;
}

- (void)setContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_contextLock);
  context = self->_context;
  self->_context = v4;

  os_unfair_lock_unlock(&self->_contextLock);
}

- (id)_telephonyRequestForPushToken:(id)a3 phoneNumberValidationMechanism:(id)a4 attemptCount:(unsigned int)a5 sessionToken:(id)a6
{
  v7 = *&a5;
  v26 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a6;
  v11 = MEMORY[0x1E69A6138];
  v12 = a3;
  v13 = [v11 sms];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v9;
    _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "Constructing phone number registration request { mechanism: %@ }", &v24, 0xCu);
  }

  v14 = objc_alloc_init(MEMORY[0x1E6965060]);
  [v14 setPushToken:v12];

  [v14 setEmbedded:0];
  [v14 setAttemptCount:0];
  [v14 setPnrReqList:0];
  if (objc_opt_respondsToSelector())
  {
    [v14 setSessionToken:v10];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_alloc_init(MEMORY[0x1E6965058]);
  [v16 setSvcCenterAddr:0];
  [v16 setDestAddr:0];
  v17 = [v9 type];
  v18 = v17;
  if (v17 == 3)
  {
    v21 = [v9 context];

    if (!v21)
    {
      v18 = 3;
      goto LABEL_15;
    }

    v20 = [v9 context];
    [v14 setEmbedded:v20];
    goto LABEL_12;
  }

  if (v17 != 2)
  {
    if (v17 != 1)
    {
      goto LABEL_16;
    }

    v19 = [v9 context];

    if (!v19)
    {
      v18 = 1;
      goto LABEL_15;
    }

    v20 = [v9 context];
    [v16 setDestAddr:v20];
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
  v2 = [(IDSCTPNR *)self context];
  v3 = [v2 slotID];

  if (v3)
  {
    return v3 == 2;
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
  v4 = [(IDSCTPNR *)self context];
  v20 = 0;
  v5 = [coreTelephonyClient getPNRContext:v4 outError:&v20];
  v6 = v20;

  if (v6)
  {
    v7 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1EB48();
    }
  }

  else
  {
    v7 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ([v5 isReady])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = [v5 phoneNumber];
      v10 = [v5 imsi];
      v11 = [v5 plmn];
      v12 = [(IDSCTPNR *)self context];
      *buf = 138413570;
      v22 = v5;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Read telephony phone number registration context { PNRContext: %@, isReady: %@, phoneNumber: %@, IMSI: %@, PLMN: %@, subscriptionContext: %@ }", buf, 0x3Eu);
    }
  }

  v13 = [IDSCTPNRInfo alloc];
  v14 = [v5 imsi];
  v15 = [v5 plmn];
  v16 = [v5 phoneNumber];
  v17 = [v5 phoneNumberOnSIM];
  v18 = [(IDSCTPNRInfo *)v13 initWithIMSI:v14 PLMN:v15 PNRPhoneNumber:v16 phoneBookNumber:v17];

  return v18;
}

- (BOOL)issuePNRForMechanism:(id)a3 pushToken:(id)a4 attemptCount:(unsigned int)a5 sessionToken:(id)a6 completion:(id)a7
{
  v9 = *&a5;
  v42 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    if (!v14)
    {
      v16 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E1EBB0(v16);
      }
    }

    v17 = [(IDSCTPNR *)self context];
    v18 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v17;
      v34 = 2112;
      v35 = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "Loaded subscription info for phone number registration request { context: %@, error: %@ }", buf, 0x16u);
    }

    if (v17 && self->_coreTelephonyClient)
    {
      v19 = [(IDSCTPNR *)self _telephonyRequestForPushToken:v13 phoneNumberValidationMechanism:v12 attemptCount:v9 sessionToken:v14];
      v20 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v19 pushToken];
        [v19 attemptCount];
        v22 = v28 = v13;
        v23 = [v19 pnrReqList];
        *buf = 138413314;
        v33 = v21;
        v34 = 2112;
        v35 = v22;
        v36 = 2112;
        v37 = v23;
        v38 = 2112;
        v39 = v17;
        v40 = 2112;
        v41 = v12;
        _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "Issuing phone number registration request { pushToken: %@, attemptCount: %@, mechanisms: %@, context: %@, mechanism: %@ }", buf, 0x34u);

        v13 = v28;
      }

      coreTelephonyClient = self->_coreTelephonyClient;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1A7C61208;
      v29[3] = &unk_1E77E2218;
      v30 = v19;
      v31 = v15;
      v25 = v19;
      [coreTelephonyClient issuePNRRequest:v17 pnrReqType:v25 completion:v29];

      v26 = 1;
    }

    else
    {
      v25 = [MEMORY[0x1E69A6138] sms];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1A7E1EBF4(self, v17, v25);
      }

      v26 = 0;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E1EC88();
    }

    v26 = 0;
  }

  return v26;
}

- (BOOL)isRelevantContext:(id)a3
{
  v4 = a3;
  v5 = [(IDSCTPNR *)self context];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [v4 labelID];
    v7 = [v6 isEqualToString:self->_labelID];
  }

  return v7;
}

- (void)carrierBundleChange:(id)a3
{
  if ([(IDSCTPNR *)self isRelevantContext:a3])
  {
    v4 = [MEMORY[0x1E69A6138] sms];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1A7E1ECFC();
    }

    [(IDSCTPNR *)self _resetCarrierShortcodeSupportedCachedValue];
  }
}

- (void)operatorBundleChange:(id)a3
{
  if ([(IDSCTPNR *)self isRelevantContext:a3])
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

- (void)pnrReadyStateNotification:(id)a3 regState:(BOOL)a4
{
  v4 = a4;
  if ([(IDSCTPNR *)self isRelevantContext:a3])
  {
    WeakRetained = objc_loadWeakRetained(&self->_PNRDelegate);
    [WeakRetained PNRReadyStateChanged:v4];
  }
}

- (void)pnrRequestSent:(id)a3 pnrReqData:(id)a4
{
  v7 = a4;
  if ([(IDSCTPNR *)self isRelevantContext:a3])
  {
    WeakRetained = objc_loadWeakRetained(&self->_PNRDelegate);
    [WeakRetained PNRRequestSentWithRequestData:v7];
  }
}

- (void)pnrResponseReceived:(id)a3 pnrRspData:(id)a4
{
  v11 = a4;
  if ([(IDSCTPNR *)self isRelevantContext:a3])
  {
    v6 = [IDSCTPNRResponseData alloc];
    v7 = [(IDSCTPNR *)self PNRInfo];
    v8 = [v7 phoneBookNumber];
    v9 = [(IDSCTPNRResponseData *)v6 initWithCTResponse:v11 phoneBookNumber:v8];

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