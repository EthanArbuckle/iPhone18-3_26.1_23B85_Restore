@interface IDSDeliveryPipelineParameter
- (IDSDeliveryPipelineParameter)initWithInfo:(id)a3 uris:(id)a4 service:(id)a5 maxSize:(unint64_t)a6;
- (id)description;
@end

@implementation IDSDeliveryPipelineParameter

- (IDSDeliveryPipelineParameter)initWithInfo:(id)a3 uris:(id)a4 service:(id)a5 maxSize:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v57.receiver = self;
  v57.super_class = IDSDeliveryPipelineParameter;
  v13 = [(IDSDeliveryPipelineParameter *)&v57 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_uris, a4);
    v15 = [v10 objectForKey:IDSDeliveryFromIDKey];
    fromID = v14->_fromID;
    v14->_fromID = v15;

    v17 = [v10 objectForKey:IDSDeliveryFromShortHandle];
    fromShortHandle = v14->_fromShortHandle;
    v14->_fromShortHandle = v17;

    objc_storeStrong(&v14->_service, a5);
    v19 = [v10 objectForKey:IDSDeliveryFromIdentityKey];
    fromIdentity = v14->_fromIdentity;
    v14->_fromIdentity = v19;

    v21 = [v10 objectForKey:IDSDeliveryAlwaysSkipSelfKey];
    v14->_alwaysSkipSelf = [v21 BOOLValue];

    v22 = [v10 objectForKey:IDSDeliveryAlwaysIncludeSelfKey];
    v14->_alwaysIncludeSelf = [v22 BOOLValue];

    v23 = [v10 objectForKey:IDSDeliveryDisallowQueryRefreshKey];
    v14->_disallowQueryRefresh = [v23 BOOLValue];

    v24 = [v10 objectForKey:IDSDeliveryRegistrationPropertiesKey];
    registrationProperties = v14->_registrationProperties;
    v14->_registrationProperties = v24;

    v26 = [v10 objectForKey:IDSDeliveryDataToEncryptKey];
    dataToEncrypt = v14->_dataToEncrypt;
    v14->_dataToEncrypt = v26;

    v28 = [v10 objectForKey:IDSDeliveryEncryptionAttributesKey];
    attributes = v14->_attributes;
    v14->_attributes = v28;

    v30 = [v10 objectForKey:IDSDeliveryKeyTransparencyURIVerificationMapKey];
    ktURIVerificationMap = v14->_ktURIVerificationMap;
    v14->_ktURIVerificationMap = v30;

    v14->_forceAttachmentMessage = +[IMUserDefaults isForcingAttachmentMessage];
    v14->_forceOnePerFanout = +[IMUserDefaults isForcingOnePerFanout];
    v32 = [v10 objectForKey:IDSDeliveryWantsFirewallDonation];
    v14->_wantsFirewallDonation = [v32 BOOLValue];

    v14->_maxSize = a6;
    v33 = [v10 objectForKey:IDSDeliveryMessageKey];
    messageToSend = v14->_messageToSend;
    v14->_messageToSend = v33;

    v35 = [(IDSPeerMessage *)v14->_messageToSend wantsDeliveryStatus];
    v14->_wantsDeliveryStatus = [v35 BOOLValue];

    v14->_wantsCertifiedDelivery = [(IDSPeerMessage *)v14->_messageToSend wantsCertifiedDelivery];
    v36 = [v10 objectForKey:IDSDeliveryWillSendBlockKey];
    willSendBlock = v14->_willSendBlock;
    v14->_willSendBlock = v36;

    v38 = [v10 objectForKey:IDSDeliveryPrioritizedTokenListKey];
    prioritizedTokenList = v14->_prioritizedTokenList;
    v14->_prioritizedTokenList = v38;

    v40 = [(IDSPeerMessage *)v14->_messageToSend messageID];
    v41 = [v40 copy];
    guid = v14->_guid;
    v14->_guid = v41;

    if (!v14->_guid)
    {
      v43 = +[NSString stringGUID];
      v44 = v14->_guid;
      v14->_guid = v43;

      v45 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v14->_messageToSend;
        v47 = v14->_guid;
        *buf = 138412546;
        v59 = v46;
        v60 = 2112;
        v61 = v47;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Couldn't pull message guid out of %@, using %@", buf, 0x16u);
      }
    }

    if (CUTIsInternalInstall() && +[IMUserDefaults isForcefulLegacyEnabled])
    {
      v48 = 2;
    }

    else
    {
      v48 = +[IMUserDefaults isForcefulECCEnabled];
    }

    v14->_encryptionType = v48;
    v49 = [(IDSPeerMessage *)v14->_messageToSend deliveryMinimumTimeDelay];
    if (v49)
    {
      v14->_isScheduled = 1;
      p_isScheduled = &v14->_isScheduled;
    }

    else
    {
      v51 = [(IDSPeerMessage *)v14->_messageToSend deliveryMinimumTime];
      v14->_isScheduled = v51 != 0;
      p_isScheduled = &v14->_isScheduled;
    }

    if (*p_isScheduled)
    {
      v52 = 1;
    }

    else
    {
      v53 = [(IDSPeerMessage *)v14->_messageToSend messageBody];
      v54 = [v53 objectForKey:IDSCommandKey];
      v52 = [v54 isEqualToNumber:&off_100C3CDD8];
    }

    if ([(IDSDeliveryPipelineParameter *)v14 overrideSendOnePerTokenForService:v12])
    {
      v14->_sendOnePerToken = 1;
    }

    else
    {
      v55 = [v10 objectForKey:IDSDeliverySendOnePerTokenKey];
      v14->_sendOnePerToken = ([v55 BOOLValue] | v52) & 1;
    }
  }

  return v14;
}

- (id)description
{
  v2 = @"NO";
  if (self->_alwaysSkipSelf)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_alwaysIncludeSelf)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_disallowQueryRefresh)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_sendOnePerToken)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_wantsDeliveryStatus)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_wantsCertifiedDelivery)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_wantsFirewallDonation)
  {
    v2 = @"YES";
  }

  return [NSString stringWithFormat:@"{ URIs: %@, fromID: %@, service: %@, fromIdentity: %@, alwaysSkipSelf: %@, alwaysIncludeSelf: %@, disallowQueryRefresh: %@, sendOnePerToken: %@, registrationProperties: %@, maxSize: %lu, wantsDeliveryStatus: %@, wantsCertifiedDelivery: %@, wantsFirewallDonation: %@, messageToSend: %@ }", *&self->_uris, self->_service, self->_fromIdentity, v3, v4, v5, v6, self->_registrationProperties, self->_maxSize, v7, v8, v2, self->_messageToSend];
}

@end