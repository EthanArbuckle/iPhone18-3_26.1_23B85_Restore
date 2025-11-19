@interface IMDRelayServiceController
+ (IMDRelayServiceController)sharedInstance;
+ (id)_convertIMDHandleToDictionary:(id)a3;
+ (id)_convertIMDHandlesToArray:(id)a3;
+ (id)_convertIMMessageItemDictionaryToIMMessageItem:(id)a3 timestamp:(id)a4;
+ (id)_convertIMMessageItemToIncomingRelayDictionary:(id)a3 chat:(id)a4 serviceName:(id)a5 overridingAttachmentData:(id)a6;
+ (id)_convertIMMessageItemToOutgoingRelayDictionary:(id)a3 chat:(id)a4;
+ (id)_updateServiceOfMessageInMessageDict:(id)a3 toService:(id)a4;
- (BOOL)_canRelayMMS;
- (BOOL)_canRelayMessage:(id)a3 forChat:(id)a4 isOTC:(BOOL *)a5;
- (BOOL)_checkMMSEnablementForPhoneNumber:(id)a3 simID:(id)a4;
- (BOOL)_isConnectedOverBT:(id)a3;
- (BOOL)_isDefaultPairedDeviceRelayingLocally:(id)a3;
- (BOOL)_localDeviceSupportsEmergencySMS;
- (BOOL)_localDeviceSupportsSMS;
- (BOOL)_localDeviceSupportsSMSAndDoesNotHaveAPhoneNumberForSIMID:(id)a3;
- (BOOL)_localDeviceSupportsSMSAndHasAPhoneNumber;
- (BOOL)_needsLowQualityTranscodeForMessage:(id)a3;
- (BOOL)_relayMessageToPeers:(id)a3 forChat:(id)a4 serviceName:(id)a5 requiredCapabilities:(id)a6 reflectOnly:(BOOL)a7 excludesWatch:(BOOL)a8 onlyWatch:(BOOL)a9 overridingAttachmentData:(id)a10 skipServiceForSending:(BOOL)a11;
- (BOOL)_storeSMSRelayExecutionBlock:(id)a3 forMessageGUID:(id)a4;
- (BOOL)_syncedMMSEnabledValue;
- (BOOL)accountHasAlias:(id)a3 aliastoCheck:(id)a4;
- (BOOL)hasConnectedLocalDevice;
- (BOOL)hasPeerDevices;
- (BOOL)hasRelayDevice;
- (BOOL)isAliasRelayCapable:(id)a3 checkingSelf:(BOOL)a4;
- (BOOL)isLocalDeviceProxyRegistered;
- (BOOL)isProxyRegistered;
- (BOOL)isSMSRelayEnabled;
- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)a3;
- (BOOL)relayDictionaryToPeers:(id)a3 requiresUpload:(BOOL)a4 serviceName:(id)a5 requiredCapabilities:(id)a6 excludedCapabilities:(id)a7 excludesWatch:(BOOL)a8 onlyWatch:(BOOL)a9;
- (BOOL)sendEnrollmentRelatedMessageOverIDS:(id)a3 deviceToSendTo:(id)a4;
- (BOOL)sendFileToLocalPeers:(id)a3 metadata:(id)a4;
- (BOOL)watchConnectedOverBT;
- (IMDRelayServiceController)init;
- (IMOneTimeCodeUtilities)otcUtilities;
- (NSArray)accounts;
- (NSArray)peerDevices;
- (NSString)_callerIDForRelay;
- (NSString)dominentPhoneNumberAlias;
- (id)_IDSService;
- (id)_account;
- (id)_callerIDAccountFromSettings;
- (id)_callerIDForRelayAccountID:(id)a3;
- (id)_destinationForDevice:(id)a3 forcedIdentity:(id)a4;
- (id)_deviceForCallerID:(id)a3;
- (id)_extraOptionsForReachabilityRelayWithRequestID:(id)a3;
- (id)_sendOptionsForRelayMessage:(id)a3 command:(int64_t)a4 guid:(id)a5;
- (id)accountForAlias:(id)a3 fromAccounts:(id)a4;
- (id)idsDeviceForFromID:(id)a3;
- (id)idsDeviceFromPushToken:(id)a3;
- (id)idsDeviceFromUniqueID:(id)a3;
- (id)localDevice;
- (id)pairedDevice;
- (id)phoneAliasForDominentPhoneAlias:(id)a3 registeredPhoneNumbers:(id)a4 preferredCallerID:(id)a5 CTPhoneNumber:(id)a6;
- (id)retrieveAccountAndPhoneAliasForAccounts:(id)a3 shouldFilterRecepients:(BOOL)a4 requestProxySend:(BOOL)a5 preferredCallerID:(id)a6;
- (id)retrievePhoneAccountAndPhoneAliasFromIDSAccounts:(id)a3;
- (id)sendReachabilityRequest:(id)a3 requestID:(id)a4;
- (void)_broadcastMessageEventWithCommand:(int64_t)a3 eventName:(id)a4 forGUID:(id)a5 messageExtras:(id)a6 shouldFilterRecipients:(BOOL)a7 forcedCallerID:(id)a8;
- (void)_checkAndSetRelayService;
- (void)_clearSMSRelayMapForMessageWithGUID:(id)a3;
- (void)_executeSMSRelayBlockForMessageWithGUID:(id)a3 category:(int64_t)a4 subCategory:(int64_t)a5;
- (void)_forwardMessageEventToLocalPeers:(id)a3 forGUID:(id)a4 metadata:(id)a5;
- (void)_forwardMessageToPeers:(id)a3 messageType:(int64_t)a4 guid:(id)a5 originalSender:(id)a6 forcedCallerID:(id)a7 hasAttachment:(BOOL)a8 watchOnly:(BOOL)a9 sentToDevices:(id *)a10 requiredCapabilities:(id)a11;
- (void)_handleCapabilitiesChanged:(id)a3;
- (void)_prepareSMSRelayBlockForMessageDictionary:(id)a3 messageGUID:(id)a4 serviceName:(id)a5;
- (void)_registerForAccountChanges;
- (void)_relayEditedMessage:(id)a3 messageGUID:(id)a4 serializedHandles:(id)a5 chatStyle:(unsigned __int8)a6 callerID:(id)a7;
- (void)_relayMessageDict:(id)a3 command:(int64_t)a4 messageID:(id)a5 forcedCallerID:(id)a6 didSendSMS:(BOOL)a7 relayToWatchOnly:(BOOL)a8 shouldDisableScreenTimeRestrictions:(BOOL)a9 hasAttachments:(BOOL)a10 sentToDevices:(id *)a11 extraOptions:(id)a12 requiredCapabilities:(id)a13;
- (void)_relayMessageToPairedDevice:(id)a3 messageID:(id)a4 hasAttachments:(BOOL)a5;
- (void)_sendMessageToAllSMSRelayDevicesWithOptions:(id)a3;
- (void)_sendMessageToPairedDeviceWithOptions:(id)a3;
- (void)_setupIDSRelayServices;
- (void)_setupMMSObservation;
- (void)_teardownMMSObservation;
- (void)account:(id)a3 aliasesChanged:(id)a4;
- (void)dealloc;
- (void)didReceiveMessageError:(id)a3;
- (void)messageDelivered:(id)a3;
- (void)messageFailedToSend:(id)a3;
- (void)messageGUIDReadByRemote:(id)a3 timeRead:(id)a4;
- (void)messageReadByRemote:(id)a3;
- (void)messageSent:(id)a3 onService:(id)a4 compatibilityService:(id)a5 wasInterworked:(BOOL)a6;
- (void)relayMessage:(id)a3 chat:(id)a4 didSendSMS:(BOOL)a5 attemptingReplication:(BOOL)a6 forceReflection:(BOOL)a7 relayToWatchOnly:(BOOL)a8 shouldDisableScreenTimeRestrictions:(BOOL)a9 callerID:(id)a10 iMessageCapability:(int64_t)a11 requiredCapabilities:(id)a12 skipServiceForSending:(BOOL)a13;
- (void)reportJunkMessageToCarrier:(id)a3 toChat:(id)a4 fromCallerID:(id)a5;
- (void)sendDeleteCommand:(id)a3 forChatGUID:(id)a4;
- (void)sendEditedMessage:(id)a3 toChat:(id)a4 fromCallerID:(id)a5 backwardCompatabilityText:(id)a6;
- (void)sendReachabilityResponse:(id)a3 requestID:(id)a4 toToken:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7;
- (void)sendReadReceiptForMessageGUID:(id)a3 timeRead:(id)a4 reflectOnly:(BOOL)a5;
- (void)sendRecoverCommand:(id)a3 forChatGUID:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)updateMMSCapability;
- (void)updateRelayStatus;
@end

@implementation IMDRelayServiceController

- (void)_setupIDSRelayServices
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D1A9A0] isMessagesInstalled])
  {
    v3 = objc_alloc(MEMORY[0x277D18778]);
    v4 = *MEMORY[0x277D186A8];
    v5 = [v3 initWithService:*MEMORY[0x277D186A8]];
    [(IMDRelayServiceController *)self setSmsRelayService:v5];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(IMDRelayServiceController *)self smsRelayService];
        v8 = [v7 accounts];
        v18 = 138412546;
        v19 = v4;
        v20 = 2048;
        v21 = [v8 count];
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Finished setting Up Relay Service (Service: %@), number of accounts: %lu", &v18, 0x16u);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.sms.watch"];
    [(IMDRelayServiceController *)self setSmsWatchService:v9];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [(IMDRelayServiceController *)self smsWatchService];
        v12 = [v11 accounts];
        v13 = [v12 count];
        v18 = 138412546;
        v19 = @"com.apple.private.alloy.sms.watch";
        v20 = 2048;
        v21 = v13;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Finished setting Up SMS Watch Relay Service (Service: %@), number of accounts: %lu", &v18, 0x16u);
      }
    }

    v14 = [(IMDRelayServiceController *)self smsRelayService];
    [v14 addDelegate:self queue:MEMORY[0x277D85CD0]];

    v15 = [(IMDRelayServiceController *)self smsWatchService];
    [v15 addDelegate:self queue:MEMORY[0x277D85CD0]];

    [(IMDRelayServiceController *)self _checkAndSetRelayService];
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Messages is not installed, don't setup the relay serrvices", &v18, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_callerIDForRelayAccountID:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = objc_alloc(MEMORY[0x277D186C8]);
    v7 = [v6 initWithService:*MEMORY[0x277D186B0]];
    v8 = [v7 accountWithUniqueID:v5];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 displayName];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v29 = v10;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found Caller ID %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [(IMDRelayServiceController *)self relayService];
    v7 = [v12 accounts];

    v10 = 0;
    v13 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          if ([v16 accountType] == 1)
          {
            v17 = [v16 displayName];
            if (IMOSLoggingEnabled())
            {
              v18 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v29 = v17;
                _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Found Caller ID %@", buf, 0xCu);
              }
            }

            v10 = v17;
          }
        }

        v13 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }
  }

  if ([v10 _FZIDType])
  {
    v19 = 0;
  }

  else
  {
    v19 = IMNormalizePhoneNumber();
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)watchConnectedOverBT
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(IMDRelayServiceController *)self relayService];
  v4 = [v3 devices];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      if ([v9 deviceType] == 6)
      {
        if ([v9 isLocallyPaired])
        {
          v19 = v9;
          v10 = 1;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
          v12 = [(IMDRelayServiceController *)self _isConnectedOverBT:v11];

          if (v12)
          {
            break;
          }
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (NSString)dominentPhoneNumberAlias
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(IMDRelayServiceController *)self relayService];
  v5 = [v4 accounts];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        if ([v10 accountType] == 1)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v11 = [v10 im_registeredURIs];
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v23 + 1) + 8 * j);
                if ([v16 _appearsToBePhoneNumber] && -[IMDRelayServiceController isAliasRelayCapable:](self, "isAliasRelayCapable:", v16))
                {
                  [v3 addObject:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v13);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  if (v3)
  {
    v17 = [v3 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
    v18 = [v17 firstObject];
  }

  else
  {
    v18 = 0;
  }

  v19 = IMNormalizePhoneNumber();

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)_registerForAccountChanges
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(IMDRelayServiceController *)self relayService];
  v4 = [v3 accounts];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    v7 = MEMORY[0x277D85CD0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 accountType] == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v12 = 0;
              _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Registering for Account alias changes", v12, 2u);
            }
          }

          [v9 addRegistrationDelegate:self queue:v7];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasRelayDevice
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(IMDRelayServiceController *)self relayService];
  v5 = [v4 devices];

  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (([v10 supportsSMSRelay] & 1) != 0 || objc_msgSend(v10, "supportsMMSRelay"))
        {
          v11 = [v10 uniqueIDOverride];
          [v3 addObject:v11];

          ++v6;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
  {
    [MEMORY[0x277D1AB68] verifyCurrentRelayDevicesActive:v3];
    v12 = +[IMDFilteringController sharedInstance];
    [v12 disableFilteringIfNeeded];
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v21 = v6;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found %d Relayable Devices", buf, 8u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6 > 0;
}

- (BOOL)hasPeerDevices
{
  v2 = [(IMDRelayServiceController *)self relayService];
  v3 = [v2 devices];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)isAliasRelayCapable:(id)a3 checkingSelf:(BOOL)a4
{
  v4 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Checking if Alias %@ is active for SMS Relay ", buf, 0xCu);
    }
  }

  if ([v6 length])
  {
    if (v4 && IMSharedHelperRetrieveSimDetailsFromTelephony())
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v8 = [MEMORY[0x277D1A908] sharedInstance];
      v9 = [v8 ctSubscriptionInfo];
      obj = [v9 phoneNumbersOfActiveSubscriptions];

      v10 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v10)
      {
        v11 = *v41;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v41 != v11)
            {
              objc_enumerationMutation(obj);
            }

            if (MEMORY[0x231897D30](v6, *(*(&v40 + 1) + 8 * i)))
            {
LABEL_50:
              v25 = 1;
              goto LABEL_51;
            }
          }

          v10 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = [(IMDRelayServiceController *)self relayService];
    obj = [v13 devices];

    v30 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v30)
    {
      v29 = *v37;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * j);
          if (([v15 supportsSMSRelay] & 1) != 0 || objc_msgSend(v15, "supportsMMSRelay"))
          {
            if (IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v48 = v15;
                _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Checking Device %@", buf, 0xCu);
              }
            }

            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v17 = [v15 linkedUserURIs];
            v18 = [v17 countByEnumeratingWithState:&v32 objects:v44 count:16];
            if (v18)
            {
              v19 = *v33;
              while (2)
              {
                for (k = 0; k != v18; ++k)
                {
                  if (*v33 != v19)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v21 = *(*(&v32 + 1) + 8 * k);
                  if (IMOSLoggingEnabled())
                  {
                    v22 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v48 = v21;
                      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Checking linked URI: %@", buf, 0xCu);
                    }
                  }

                  v23 = [v21 _stripFZIDPrefix];
                  v24 = MEMORY[0x231897D30](v23, v6);

                  if (v24)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v26 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v48 = v21;
                        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "LinkedURI is active for SMS Relay, Returning %@", buf, 0xCu);
                      }
                    }

                    goto LABEL_50;
                  }
                }

                v18 = [v17 countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        v30 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v30);
    }

    v25 = 0;
LABEL_51:
  }

  else
  {
    v25 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)_deviceForCallerID:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [(IMDRelayServiceController *)self relayService];
  obj = [v5 devices];

  v23 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        if (([v7 supportsSMSRelay] & 1) != 0 || objc_msgSend(v7, "supportsMMSRelay"))
        {
          if (IMOSLoggingEnabled())
          {
            v8 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v35 = v7;
              _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Checking Device %@", buf, 0xCu);
            }
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v9 = [v7 linkedUserURIs];
          v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v10)
          {
            v11 = *v26;
            while (2)
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v26 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v25 + 1) + 8 * j);
                if (IMOSLoggingEnabled())
                {
                  v14 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v35 = v13;
                    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Checking linked URI: %@", buf, 0xCu);
                  }
                }

                v15 = [v13 _stripFZIDPrefix];
                v16 = MEMORY[0x231897D30](v15, v4);

                if (v16)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v19 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v35 = v7;
                      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "This device has the linkedURI we are looking for, return %@", buf, 0xCu);
                    }
                  }

                  v17 = v7;

                  v18 = v17;
                  goto LABEL_33;
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v23);
  }

  v17 = 0;
  v18 = obj;
LABEL_33:

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_destinationForDevice:(id)a3 forcedIdentity:(id)a4
{
  v5 = a4;
  v6 = [a3 pushToken];
  v7 = [v6 __imHexString];

  v8 = MEMORY[0x277CCACA8];
  v9 = IDSCopyIDForPhoneNumber();

  v10 = [v8 stringWithFormat:@"self-token:%@/%@", v7, v9];

  return v10;
}

- (id)localDevice
{
  v21 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Looking For Local Devices that are nearby", buf, 2u);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(IMDRelayServiceController *)self relayService];
  v5 = [v4 devices];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isDefaultPairedDevice] && objc_msgSend(v9, "isConnected"))
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v19 = v9;
              _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found Default paired Device which is nearby %@", buf, 0xCu);
            }
          }

          v10 = v9;
          goto LABEL_20;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_20:

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)pairedDevice
{
  v21 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Looking For paired Device", buf, 2u);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(IMDRelayServiceController *)self relayService];
  v5 = [v4 devices];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 isDefaultPairedDevice])
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v19 = v9;
              _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found Default paired Device %@", buf, 0xCu);
            }
          }

          v10 = v9;
          goto LABEL_19;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_19:

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)hasConnectedLocalDevice
{
  v2 = [(IMDRelayServiceController *)self localDevice];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isProxyRegistered
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(IMDRelayServiceController *)self relayService];
  v4 = [v3 accounts];
  v5 = [v4 count];

  if (v5 < 2)
  {
    v8 = [(IMDRelayServiceController *)self relayService];
    v9 = [v8 accounts];
    v10 = [v9 anyObject];

    if (v10)
    {
      if ([v10 accountType] != 2)
      {
        v7 = 1;
        goto LABEL_15;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found the local account, it is our only account, This means we are NOT proxy resgiered", buf, 2u);
        }
      }
    }

    v7 = 0;
LABEL_15:

    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "I Have more than 1 account, I am registered for Proxy Push", buf, 2u);
    }
  }

  v7 = 1;
LABEL_16:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [(IMDRelayServiceController *)self relayService];
  v13 = [v12 accounts];

  v14 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v14)
  {
    v15 = *v29;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        if ([v17 accountType] == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Found the AppleID account", buf, 2u);
            }
          }

          v18 = v17;

          if (v18)
          {
            if (([v18 isActive] & 1) == 0)
            {
              if (IMOSLoggingEnabled())
              {
                v20 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "The AppleID account is NOT active", buf, 2u);
                }
              }

              v7 = 0;
            }

            v21 = [v18 im_registeredURIs];
            v22 = [v21 count] == 0;

            if (v22)
            {
              if (IMOSLoggingEnabled())
              {
                v23 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "The AppleID Account has no usable alias's", buf, 2u);
                }
              }

              v7 = 0;
            }
          }

          goto LABEL_42;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_42:
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = @"NO";
      if (v7)
      {
        v25 = @"YES";
      }

      *buf = 138412290;
      v33 = v25;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Result of check if myself is proxy registered is %@", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isLocalDeviceProxyRegistered
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [(IMDRelayServiceController *)self localDevice];
  if (!v2)
  {
    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [v2 identities];
      v18 = 138412546;
      v19 = v2;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Device %@ has identities %@", &v18, 0x16u);
    }
  }

  v5 = [v2 identities];
  v6 = [v5 count] == 0;

  if (!v6)
  {
    v7 = [v2 identities];
    v8 = [v7 count] == 1;

    if (v8)
    {
      v9 = [v2 identities];
      v10 = [v9 firstObject];

      v11 = [v10 _stringForKey:@"uri"];
      v12 = [v11 isEqualToString:@"mailto:__localURI__@__local__URI.com"];
      if (v12 && IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "The default paired device has an identity, but is is the local account, it is NOT proxy registered for SMS", &v18, 2u);
        }
      }

      v14 = v12 ^ 1;
      goto LABEL_20;
    }

LABEL_14:
    v14 = 1;
    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "The default paired device has no identities, this means it is NOT proxy registered for SMS", &v18, 2u);
    }
  }

  v14 = 0;
LABEL_20:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (NSArray)peerDevices
{
  [(IMDRelayServiceController *)self _checkAndSetRelayService];
  v3 = [(IMDRelayServiceController *)self relayService];
  v4 = [v3 devices];

  return v4;
}

- (BOOL)isSMSRelayEnabled
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(IMDRelayServiceController *)self smsWatchService];
  v4 = [v3 accounts];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(IMDRelayServiceController *)self relayService];
    v8 = [v7 accounts];

    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      v6 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if ([v12 accountType] == 1 && (objc_msgSend(v12, "isActive") & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *v16 = 0;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "The AppleID account is not active, we can not use SMS Relay", v16, 2u);
              }
            }

            v6 = 0;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    else
    {
      v6 = 1;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (id)idsDeviceFromPushToken:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(IMDRelayServiceController *)self relayService];
  v6 = [v5 devices];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 pushToken];
        v12 = [v11 isEqualToData:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)idsDeviceFromUniqueID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(IMDRelayServiceController *)self relayService];
  v6 = [v5 devices];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 uniqueID];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)idsDeviceForFromID:(id)a3
{
  v4 = a3;
  v5 = [(IMDRelayServiceController *)self relayService];
  v6 = [v5 deviceForFromID:v4];

  return v6;
}

- (BOOL)_isDefaultPairedDeviceRelayingLocally:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [(IMDRelayServiceController *)self idsDeviceForFromID:a3];
  v5 = v4;
  if (v4)
  {
    v10[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [(IMDRelayServiceController *)self _isConnectedOverBT:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_isConnectedOverBT:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v4)
  {
    v6 = *v22;
    *&v5 = 138412802;
    v20 = v5;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        if ([(__CFString *)v8 isDefaultPairedDevice]&& [(__CFString *)v8 isConnected]&& [(__CFString *)v8 isNearby])
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v26 = v8;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Device is nearby: %@", buf, 0xCu);
            }
          }

          v16 = 1;
          goto LABEL_33;
        }

        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v26 = v8;
            _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Device is NOT nearby: %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            if ([(__CFString *)v8 isDefaultPairedDevice])
            {
              v11 = @"YES";
            }

            else
            {
              v11 = @"NO";
            }

            v12 = [(__CFString *)v8 isConnected];
            v13 = [(__CFString *)v8 isNearby];
            v14 = @"NO";
            if (v12)
            {
              v15 = @"YES";
            }

            else
            {
              v15 = @"NO";
            }

            *buf = v20;
            v26 = v11;
            if (v13)
            {
              v14 = @"YES";
            }

            v27 = 2112;
            v28 = v15;
            v29 = 2112;
            v30 = v14;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "isDefaultPairedDevice = %@, isConnected = %@, isNearby = %@", buf, 0x20u);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_33:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)_checkAndSetRelayService
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(IMDRelayServiceController *)self smsRelayService];
  v4 = [v3 accounts];
  if ([v4 count])
  {
    v5 = [(IMDRelayServiceController *)self smsRelayService];
    v6 = [v5 devices];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(IMDRelayServiceController *)self smsRelayService];
      [(IMDRelayServiceController *)self setRelayService:v8];

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_20;
      }

      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = MEMORY[0x277CCABB0];
        v11 = [(IMDRelayServiceController *)self smsRelayService];
        v12 = [v11 accounts];
        v13 = [v10 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
        v14 = MEMORY[0x277CCABB0];
        v15 = [(IMDRelayServiceController *)self smsRelayService];
        v16 = [v15 devices];
        v17 = [v14 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
        v36 = 138412546;
        v37 = v13;
        v38 = 2112;
        v39 = v17;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Relay service set to sms relay, accounts count %@ devices count %@", &v36, 0x16u);
      }

      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = [(IMDRelayServiceController *)self smsWatchService];
  v19 = [v18 accounts];
  if (![v19 count])
  {

    goto LABEL_15;
  }

  v20 = [(IMDRelayServiceController *)self smsWatchService];
  v21 = [v20 devices];
  v22 = [v21 count];

  if (!v22)
  {
LABEL_15:
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        LOWORD(v36) = 0;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "IMDRelayServiceController: Error no IDS Service available for SMS Relay", &v36, 2u);
      }
    }

    [(IMDRelayServiceController *)self setRelayService:0];
    goto LABEL_20;
  }

  v23 = [(IMDRelayServiceController *)self smsWatchService];
  [(IMDRelayServiceController *)self setRelayService:v23];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v24 = MEMORY[0x277CCABB0];
      v25 = [(IMDRelayServiceController *)self smsWatchService];
      v26 = [v25 accounts];
      v27 = [v24 numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
      v28 = MEMORY[0x277CCABB0];
      v29 = [(IMDRelayServiceController *)self smsWatchService];
      v30 = [v29 devices];
      v31 = [v28 numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
      v36 = 138412546;
      v37 = v27;
      v38 = 2112;
      v39 = v31;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Relay service set to sms watch service relay , accounts count %@ devices count %@", &v36, 0x16u);
    }

LABEL_6:
  }

LABEL_20:
  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [(IMDRelayServiceController *)self relayService];
      v36 = 138412290;
      v37 = v34;
      _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "  => Done: %@", &v36, 0xCu);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v29 = v6;
      v30 = 2112;
      v31 = v22;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "IDS Devices changed: %@ on Service:%@", buf, 0x16u);
    }
  }

  [(IMDRelayServiceController *)self updateRelayStatus];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if ([v12 isDefaultPairedDevice])
        {
          v13 = [(IMDRelayServiceController *)self enrollmentController];
          [v13 _addDeviceToAllowedSMSRelay:v12 shouldSendApproval:0];

          v14 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          LODWORD(v13) = [v14 isSatelliteContinuityEnabled];

          if (v13)
          {
            if ([(IMDRelayServiceController *)self watchConnectedOverBT])
            {
              v15 = +[IMDAccountController sharedInstance];
              v16 = [v15 anySessionForServiceName:*MEMORY[0x277D1A620]];

              [v16 _processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:1];
              v17 = +[IMDAccountController sharedInstance];
              v18 = [v17 anySessionForServiceName:*MEMORY[0x277D1A610]];

              [v18 _processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:0];
            }
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v19 = [(IMDRelayServiceController *)self enrollmentController];
  [v19 _addDefaultPairedDeviceToAllowedSMSRelayList];

  v20 = +[IMDFilteringController sharedInstance];
  [v20 _configureSyncedDefaultsWithOverride:1];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Active accounts of service %@ changed to %@", &v11, 0x16u);
    }
  }

  [(IMDRelayServiceController *)self _checkAndSetRelayService];
  v9 = [(IMDRelayServiceController *)self enrollmentController];
  [v9 _addDefaultPairedDeviceToAllowedSMSRelayList];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v22 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (v8)
      {
        v16 = @"YES";
      }

      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Message with ID %@ Sent Success %@", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)account:(id)a3 aliasesChanged:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Account %@ aliases has changes", &v10, 0xCu);
    }
  }

  [(IMDRelayServiceController *)self updateRelayStatus];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setupMMSObservation
{
  [MEMORY[0x277D1A8F8] IMSynchronizePreferredSubscriptionMMSCapabilityToWatch];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__handleCapabilitiesChanged_ name:*MEMORY[0x277D07DA0] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_22B5EFAA8, @"com.apple.MobileSMS.MMSEnabled.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CTTelephonyCenterGetDefault();
  v5 = *MEMORY[0x277CC3AF0];

  CTTelephonyCenterAddObserver();
}

- (void)_teardownMMSObservation
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.MobileSMS.MMSEnabled.changed", 0);
  CTTelephonyCenterGetDefault();
  v4 = *MEMORY[0x277CC3AF0];

  CTTelephonyCenterRemoveObserver();
}

- (BOOL)_checkMMSEnablementForPhoneNumber:(id)a3 simID:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v8 = [MEMORY[0x277D1A8F8] IMMMSEnabledForPhoneNumber:v6 simID:v7];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = @"NO";
        if (v8)
        {
          v10 = @"YES";
        }

        *buf = 138412290;
        v41 = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "MMS enabled: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = [MEMORY[0x277D07DB0] sharedInstance];
    v12 = [v11 supportsMMS];

    v13 = [MEMORY[0x277D1A908] sharedInstance];
    v14 = [v13 ctSubscriptionInfo];
    v15 = [v14 __im_subscriptionContextForForSimID:v7 phoneNumber:v6];

    v16 = [MEMORY[0x277CC36C0] sharedMessageCenter];
    v17 = [v16 isMmsConfiguredForSub:v15];

    v34 = [(IMDRelayServiceController *)self _readMMSUserOverrideForSingleSubscription];
    v35 = v17;
    if (v34)
    {
      v8 = v12 & v17;
    }

    else
    {
      v8 = 0;
    }

    if ((v12 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "MMS not supported on current device, checking for relay devices", buf, 2u);
        }
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v19 = [(IMDRelayServiceController *)self relayService];
      v20 = [v19 devices];

      v21 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v21)
      {
        v22 = *v37;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v37 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v36 + 1) + 8 * i);
            if ([v24 supportsSMSRelay] && objc_msgSend(v24, "supportsMMSRelay"))
            {
              if (IMOSLoggingEnabled())
              {
                v25 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  v26 = [v24 name];
                  *buf = 138412290;
                  v41 = v26;
                  _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "MMS relay device found: %@", buf, 0xCu);
                }
              }

              v8 = 1;
              goto LABEL_31;
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_31:
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = @"NO";
        if (v8)
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        if (v12)
        {
          v30 = @"YES";
        }

        else
        {
          v30 = @"NO";
        }

        *buf = 138413058;
        v41 = v29;
        if (v35)
        {
          v31 = @"YES";
        }

        else
        {
          v31 = @"NO";
        }

        v42 = 2112;
        v43 = v30;
        v44 = 2112;
        v45 = v31;
        if (v34)
        {
          v28 = @"YES";
        }

        v46 = 2112;
        v47 = v28;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "MMS enabled: %@ (GS:%@, CT:%@, User:%@)", buf, 0x2Au);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_syncedMMSEnabledValue
{
  v13 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MMSRelayEnabled", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
  v3 = keyExistsAndHasValidFormat == 0;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = @"NO";
        if (AppBooleanValue)
        {
          v7 = @"YES";
        }

        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "_syncedMMSEnabledValue does not exist. Defaulting to %@", buf, 0xCu);
      }

      goto LABEL_13;
    }
  }

  else if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (AppBooleanValue)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "_syncedMMSEnabledValue %@", buf, 0xCu);
    }

LABEL_13:
  }

  result = AppBooleanValue != 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateMMSCapability
{
  v30 = *MEMORY[0x277D85DE8];
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v3 = [MEMORY[0x277D1A908] sharedInstance];
    v20 = [v3 ctSubscriptionInfo];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = [v20 subscriptions];
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v5)
    {
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = [v8 phoneNumber];
          v10 = [v8 labelID];
          v11 = [(IMDRelayServiceController *)self _checkMMSEnablementForPhoneNumber:v9 simID:v10];

          v12 = [v8 userDefaultVoice];

          if (v12)
          {
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v14 = @"NO";
                if (v11)
                {
                  v14 = @"YES";
                }

                v26 = v14;
                v27 = 2112;
                v28 = v8;
                _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Synchronize isMMSEnabled %@ for voice preferred subscription %@", buf, 0x16u);
              }
            }

            [(IMDRelayServiceController *)self _synchronizeMMSCapabilityToWatch:v11];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v5);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.MMSCapable", 0, 0, 1u);
  }

  else
  {
    v16 = [(IMDRelayServiceController *)self _checkMMSEnablementForPhoneNumber:0 simID:0];
    if (qword_281420EA8 != -1)
    {
      sub_22B7D6084();
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = @"NO";
        if (v16)
        {
          v18 = @"YES";
        }

        *buf = 138412290;
        v26 = v18;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Setting MMS token to: %@", buf, 0xCu);
      }
    }

    notify_set_state(dword_281420EA0, v16);
    [(IMDRelayServiceController *)self _synchronizeMMSCapabilityToWatch:v16];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleCapabilitiesChanged:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Device capabilities changed", v6, 2u);
    }
  }

  [(IMDRelayServiceController *)self updateMMSCapability];
}

- (BOOL)accountHasAlias:(id)a3 aliastoCheck:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, " Checking if Account %@ has alias %@ ", buf, 0x16u);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = v5;
  v8 = [v5 im_registeredURIs];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v25 = v6;
            v26 = 2112;
            v27 = v12;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " comparing alias %@ and alias %@ ", buf, 0x16u);
          }
        }

        if ([v6 isEqualToIgnoringCase:v12])
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v25 = v12;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, " Positive match on alias %@ ", buf, 0xCu);
            }
          }

          v14 = 1;
          goto LABEL_23;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_23:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)accountForAlias:(id)a3 fromAccounts:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if (-[IMDRelayServiceController accountHasAlias:aliastoCheck:](self, "accountHasAlias:aliastoCheck:", v14, v6, v18) && [v14 canSend])
          {
            v15 = v14;
            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)phoneAliasForDominentPhoneAlias:(id)a3 registeredPhoneNumbers:(id)a4 preferredCallerID:(id)a5 CTPhoneNumber:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v12 length])
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v12;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, " We have a prefered Alias %@", &v27, 0xCu);
      }
    }

    if ([v12 _appearsToBePhoneNumber] && -[IMDRelayServiceController isAliasRelayCapable:](self, "isAliasRelayCapable:", v12))
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = v12;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, " This alias appears to be a phone number, we will send to that destination %@", &v27, 0xCu);
        }
      }

      v16 = v12;
      goto LABEL_36;
    }

    v17 = [(IMDRelayServiceController *)self _localDeviceSupportsSMS];
    v18 = IMOSLoggingEnabled();
    if (v17)
    {
      if (v18)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = v13;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, " This prefered alias is not a phone number, but we outselves support SMS, So we sent this one out using %@ instead", &v27, 0xCu);
        }

LABEL_25:

        goto LABEL_26;
      }

      goto LABEL_26;
    }

    if (v18)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v10;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, " This prefered alias is not a phone number, using %@ instead", &v27, 0xCu);
      }

LABEL_34:

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (!-[IMDRelayServiceController _localDeviceSupportsSMS](self, "_localDeviceSupportsSMS") || ![v11 count] || objc_msgSend(v10, "length"))
  {
    v20 = [(IMDRelayServiceController *)self _localDeviceSupportsSMS];
    v21 = IMOSLoggingEnabled();
    if (v20)
    {
      if (v21)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = v13;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, " This prefered alias is not a phone number, but we outselves support SMS, So we sent this one out using %@ instead", &v27, 0xCu);
        }

        goto LABEL_25;
      }

LABEL_26:
      v16 = v13;
      goto LABEL_36;
    }

    if (v21)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, " We have no prefered alias, we are going to use the dominant phone number one", &v27, 2u);
      }

      goto LABEL_34;
    }

LABEL_35:
    v16 = v10;
    goto LABEL_36;
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v11;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, " This prefered alias is not the IDS registered number, and we support SMS, So we sent this one out using %@ instead", &v27, 0xCu);
    }
  }

  v16 = [v11 firstObject];
LABEL_36:
  v23 = v16;

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)retrievePhoneAccountAndPhoneAliasFromIDSAccounts:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v4)
  {
    v5 = *v25;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v25 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v24 + 1) + 8 * v6);
      if (![v7 accountType])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v3 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v7 im_registeredURIs];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (!v9)
    {
LABEL_18:

      goto LABEL_19;
    }

    v10 = *v21;
LABEL_12:
    v11 = 0;
    while (1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v20 + 1) + 8 * v11);
      if ([v12 _appearsToBePhoneNumber])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
        if (v9)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    v15 = v7;
    v13 = v12;

    if (!v15)
    {
      goto LABEL_20;
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = v15;
        v30 = 2112;
        v31 = v13;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, " Found IDS account %@ with phone number %@", buf, 0x16u);
      }
    }
  }

  else
  {
LABEL_19:

    v13 = 0;
LABEL_20:
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, " Unable to find IDS phone number account", buf, 2u);
      }
    }

    v15 = 0;
  }

  v16 = [objc_alloc(MEMORY[0x277D19288]) initWithFirst:v15 second:v13];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)retrieveAccountAndPhoneAliasForAccounts:(id)a3 shouldFilterRecepients:(BOOL)a4 requestProxySend:(BOOL)a5 preferredCallerID:(id)a6
{
  LODWORD(v36) = a5;
  HIDWORD(v36) = a4;
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (HIDWORD(v36))
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138412802;
      v41 = v12;
      v42 = 2112;
      if (v36)
      {
        v11 = @"YES";
      }

      v43 = v11;
      v44 = 2112;
      v45 = v8;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "finding account and phoneAlias shouldFilterRecipients: %@ requestProxySend: %@ for accounts %@", buf, 0x20u);
    }
  }

  v39 = [(IMDRelayServiceController *)self dominentPhoneNumberAlias];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v39;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "dominentPhoneAlias is this: %@", buf, 0xCu);
    }
  }

  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v14 = [MEMORY[0x277D1A908] sharedInstance];
    v15 = [v14 registeredPhoneNumbers];

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v15;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "IDS registered phone numbers are %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
  if (!v9)
  {
    v9 = [(IMDRelayServiceController *)self _callerIDForRelay];
  }

  v18 = [(IMDRelayServiceController *)self phoneAliasForDominentPhoneAlias:v39 registeredPhoneNumbers:v15 preferredCallerID:v9 CTPhoneNumber:v17];
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v8;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, " Found Accounts %@ for SMS Relay Service ", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v18;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, " Ensuring that the account picked matches the callerID %@", buf, 0xCu);
    }
  }

  v21 = [(IMDRelayServiceController *)self accountForAlias:v18 fromAccounts:v8];
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v21;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, " Going to use account %@ For sending this message", buf, 0xCu);
    }
  }

  if (v9 && [(__CFString *)v9 _appearsToBePhoneNumber])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v9;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, " We have a phone alias override, looking for new account that matches callerID %@", buf, 0xCu);
      }
    }

    v24 = [(IMDRelayServiceController *)self accountForAlias:v9 fromAccounts:v8];
    if (v24)
    {
      v25 = v9;

      v26 = v24;
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = v26;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, " Updating sending account, Now Going to use account %@ For sending this message", buf, 0xCu);
        }
      }
    }

    else
    {
      v26 = v21;
      v25 = v18;
    }

    if (v26)
    {
LABEL_57:
      if (v26)
      {
        v29 = [objc_alloc(MEMORY[0x277D19288]) initWithFirst:v26 second:v25];
        goto LABEL_69;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v26 = v21;
    v25 = v18;
    if (v21)
    {
      goto LABEL_57;
    }
  }

  if (!v38 || (v37 & 1) != 0)
  {
    goto LABEL_57;
  }

  if (![(IMDRelayServiceController *)self _localDeviceSupportsSMS])
  {
LABEL_59:
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = @"NO";
        if (v38)
        {
          v32 = @"YES";
        }

        else
        {
          v32 = @"NO";
        }

        if (v37)
        {
          v31 = @"YES";
        }

        *buf = 138412546;
        v41 = v32;
        v42 = 2112;
        v43 = v31;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Account is nil but not finding new account based on phone number IDS account based on parameters shouldFilter %@ requestProxy %@", buf, 0x16u);
      }
    }

    v29 = [objc_alloc(MEMORY[0x277D19288]) initWithFirst:0 second:v25];
    goto LABEL_69;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, " Account is nil, getting phone account from IDS", buf, 2u);
    }
  }

  v29 = [(IMDRelayServiceController *)self retrievePhoneAccountAndPhoneAliasFromIDSAccounts:v8];
LABEL_69:
  v33 = v29;

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)_sendMessageToPairedDeviceWithOptions:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(IMDRelayServiceController *)self relayService];
  v7 = [v6 accounts];

  v8 = [v7 countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v8)
  {
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 isActive])
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v23 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = MEMORY[0x277D1AA08];
  v13 = [(IMDRelayServiceController *)self relayService];
  v14 = [MEMORY[0x277CBEAC0] dictionary];
  v21 = 0;
  v22 = 0;
  v15 = [v12 service:v13 sendMessage:v14 fromAccount:v8 toDestinations:v5 priority:300 options:v4 identifier:&v22 error:&v21];
  v16 = v22;
  v17 = v21;

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      *buf = 138413314;
      v28 = v5;
      v29 = 2112;
      if (v15)
      {
        v19 = @"YES";
      }

      v30 = v19;
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v17;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "SMS relay data sent to: %@   success: %@ account:%@  error: %@  identifier %@", buf, 0x34u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessageToAllSMSRelayDevicesWithOptions:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [(IMDRelayServiceController *)self relayService];
  v7 = [v6 devices];

  v8 = [v7 countByEnumeratingWithState:&v35 objects:v50 count:16];
  if (v8)
  {
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = IDSCopyIDForDevice();
        if ([v12 length])
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v35 objects:v50 count:16];
    }

    while (v8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = [(IMDRelayServiceController *)self relayService];
  v14 = [v13 accounts];

  v15 = [v14 countByEnumeratingWithState:&v31 objects:v49 count:16];
  if (v15)
  {
    v16 = *v32;
    while (2)
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v31 + 1) + 8 * j);
        if ([v18 isActive])
        {
          v15 = v18;
          goto LABEL_20;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v31 objects:v49 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  v19 = MEMORY[0x277D1AA08];
  v20 = [(IMDRelayServiceController *)self relayService];
  v21 = [MEMORY[0x277CBEAC0] dictionary];
  v22 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v29 = 0;
  v30 = 0;
  v23 = [v19 service:v20 sendMessage:v21 fromAccount:v15 toDestinations:v22 priority:300 options:v4 identifier:&v30 error:&v29];
  v24 = v30;
  v25 = v29;

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v27 = @"NO";
      v40 = v5;
      v41 = 2112;
      if (v23)
      {
        v27 = @"YES";
      }

      v42 = v27;
      v43 = 2112;
      v44 = v15;
      v45 = 2112;
      v46 = v25;
      v47 = 2112;
      v48 = v24;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "SMS relay data sent to: %@   success: %@ account:%@  error: %@  identifier %@", buf, 0x34u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendFileToLocalPeers:(id)a3 metadata:(id)a4
{
  v37[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Sending message to local device => dictionary: %@", buf, 0xCu);
    }
  }

  v9 = [(IMDRelayServiceController *)self localDevice];

  if (v9)
  {
    v10 = *MEMORY[0x277D187E8];
    v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v10, 0}];
    v12 = *MEMORY[0x277D185A0];
    v36[0] = *MEMORY[0x277D185F0];
    v36[1] = v12;
    v37[0] = MEMORY[0x277CBEC38];
    v37[1] = MEMORY[0x277CBEC28];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    [(IMDRelayServiceController *)self _checkAndSetRelayService];
    if (v6)
    {
      v14 = [(IMDRelayServiceController *)self relayService];
      v28 = 0;
      v29 = 0;
      v15 = [v14 sendResourceAtURL:v6 metadata:v7 toDestinations:v11 priority:300 options:v13 identifier:&v29 error:&v28];
      v16 = &v28;
      v17 = &v29;
    }

    else
    {
      v19 = MEMORY[0x277D1AA08];
      v14 = [(IMDRelayServiceController *)self relayService];
      v26 = 0;
      v27 = 0;
      v15 = [v19 service:v14 sendMessage:v7 fromAccount:0 toDestinations:v11 priority:300 options:v13 identifier:&v27 error:&v26];
      v16 = &v26;
      v17 = &v27;
    }

    v20 = *v17;
    v21 = *v16;

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = @"NO";
        *buf = 138412802;
        v31 = v21;
        v32 = 2112;
        if (v15)
        {
          v23 = @"YES";
        }

        v33 = v23;
        v34 = 2112;
        v35 = v20;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Sending message to local account (error %@) success: %@ with Identifier %@", buf, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "No Local Device Found, unable to send message", buf, 2u);
      }
    }

    LOBYTE(v15) = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)reportJunkMessageToCarrier:(id)a3 toChat:(id)a4 fromCallerID:(id)a5
{
  v32[6] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v28 = a5;
  v9 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v10 = [v9 isReportJunkEverywhereEnabled];

  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Sending report junk command to iPhone", buf, 2u);
      }
    }

    theDict = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = [IMDRelayServiceController _convertIMMessageItemToOutgoingRelayDictionary:v7 chat:v8];
    if (v12)
    {
      CFDictionarySetValue(theDict, IMDRelayMessageItemDictionary, v12);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6FB0();
    }

    v13 = _IMDRelayChatStyleStringFromChatStyle([v8 style]);
    if (v13)
    {
      CFDictionarySetValue(theDict, IMDRelayMessageDictionaryChatStyleKey, v13);
    }

    v14 = JWEncodeDictionary();
    v15 = [v14 _FTCopyGzippedData];
    v16 = *MEMORY[0x277D18648];
    v31[0] = *MEMORY[0x277D18660];
    v31[1] = v16;
    v32[0] = MEMORY[0x277CBEC38];
    v32[1] = MEMORY[0x277CBEC38];
    v17 = *MEMORY[0x277D185A0];
    v32[2] = MEMORY[0x277CBEC28];
    v18 = *MEMORY[0x277D18668];
    v31[2] = v17;
    v31[3] = v18;
    v19 = [v7 guid];
    v20 = IDSGetUUIDData();
    v32[3] = v20;
    v31[4] = *MEMORY[0x277D18588];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:123];
    v32[4] = v21;
    v31[5] = *MEMORY[0x277D18598];
    v32[5] = v15;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:6];

    v23 = [(IMDRelayServiceController *)self sendDataToPeers:v22 forcedCallerID:v28 shouldFilterRecepients:0 requestProxySend:0 dontSendTo:0];
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v30 = v23;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Success sending data to peers: %{BOOL}d", buf, 8u);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_relayEditedMessage:(id)a3 messageGUID:(id)a4 serializedHandles:(id)a5 chatStyle:(unsigned __int8)a6 callerID:(id)a7
{
  v8 = a6;
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v29 = a4;
  v30 = a5;
  v28 = a7;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = v12;
  if (v14)
  {
    CFDictionarySetValue(v13, IMDRelayMessageItemDictionary, v14);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7D6FB0();
  }

  if (v30)
  {
    CFDictionarySetValue(v13, IMDCTMessageDictionaryReceipientsKey, v30);
  }

  v15 = MEMORY[0x277CBEC38];
  CFDictionarySetValue(v13, IMDRelayMessageDictionarySendOnlyKey, MEMORY[0x277CBEC38]);
  v16 = _IMDRelayChatStyleStringFromChatStyle(v8);
  if (v16)
  {
    CFDictionarySetValue(v13, IMDRelayMessageDictionaryChatStyleKey, v16);
  }

  v17 = JWEncodeDictionary();
  v18 = [v17 _FTCopyGzippedData];
  v19 = MEMORY[0x277CBEB38];
  v20 = IDSGetUUIDData();
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:143];
  v22 = [v19 dictionaryWithObjectsAndKeys:{v15, *MEMORY[0x277D18660], v15, *MEMORY[0x277D18648], MEMORY[0x277CBEC28], *MEMORY[0x277D185A0], v20, *MEMORY[0x277D18668], v21, *MEMORY[0x277D18588], v18, *MEMORY[0x277D18598], 0}];

  v23 = [(IMDRelayServiceController *)self localDevice];
  if (!v23 || (v24 = [(IMDRelayServiceController *)self isProxyRegistered], v23, v24))
  {
    v25 = [(IMDRelayServiceController *)self sendDataToPeers:v22 forcedCallerID:v28 shouldFilterRecepients:0 requestProxySend:1 dontSendTo:0];
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v32 = v25;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Success sending data to peers: %{BOOL}d", buf, 8u);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_relayMessageToPairedDevice:(id)a3 messageID:(id)a4 hasAttachments:(BOOL)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v8 = &IMDRelayLocalMessageTypeOutgoing;
  if (a5)
  {
    v8 = &IMDRelayLocalMessageTypeOutgoingDownload;
  }

  v9 = *v8;
  v21[0] = IMDRelayLocalMessageDictionaryOutgoingDictKey;
  v21[1] = IMDRelayLocalMessageDictionaryGUIDKey;
  v22[0] = a3;
  v22[1] = a4;
  v10 = MEMORY[0x277CBEAC0];
  v11 = v9;
  v12 = a4;
  v13 = a3;
  v14 = [v10 dictionaryWithObjects:v22 forKeys:v21 count:2];
  v15 = JWEncodeDictionary();
  v16 = [v15 _FTCopyGzippedData];
  v19[0] = IMDRelayLocalMessageDictionaryDictKey;
  v19[1] = IMDRelayLocalMessageDictionaryTypeKey;
  v20[0] = v16;
  v20[1] = v11;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [(IMDRelayServiceController *)self sendToLocalPeers:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_sendOptionsForRelayMessage:(id)a3 command:(int64_t)a4 guid:(id)a5
{
  v18[6] = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = JWEncodeDictionary();
  v8 = [v7 _FTCopyGzippedData];
  v9 = *MEMORY[0x277D18648];
  v17[0] = *MEMORY[0x277D18660];
  v17[1] = v9;
  v18[0] = MEMORY[0x277CBEC38];
  v18[1] = MEMORY[0x277CBEC38];
  v10 = *MEMORY[0x277D185A0];
  v18[2] = MEMORY[0x277CBEC28];
  v11 = *MEMORY[0x277D18668];
  v17[2] = v10;
  v17[3] = v11;
  v12 = IDSGetUUIDData();

  v18[3] = v12;
  v17[4] = *MEMORY[0x277D18588];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v17[5] = *MEMORY[0x277D18598];
  v18[4] = v13;
  v18[5] = v8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:6];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_relayMessageDict:(id)a3 command:(int64_t)a4 messageID:(id)a5 forcedCallerID:(id)a6 didSendSMS:(BOOL)a7 relayToWatchOnly:(BOOL)a8 shouldDisableScreenTimeRestrictions:(BOOL)a9 hasAttachments:(BOOL)a10 sentToDevices:(id *)a11 extraOptions:(id)a12 requiredCapabilities:(id)a13
{
  v13 = a8;
  v14 = a7;
  v37 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a5;
  v34 = a6;
  v21 = a12;
  v22 = a13;
  v33 = v19;
  v23 = [(IMDRelayServiceController *)self _sendOptionsForRelayMessage:v19 command:a4 guid:v20];
  v24 = [v23 mutableCopy];

  if (v21)
  {
    [v24 addEntriesFromDictionary:v21];
  }

  if (v13)
  {
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"_SMSServiceRelayToWatchOnly"];
  }

  if ([v22 count])
  {
    [v24 setObject:v22 forKey:@"requiredCapabilitiesForSMSRelay"];
  }

  if (v14)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    if (v25)
    {
      CFDictionarySetValue(v24, *MEMORY[0x277D18650], v25);
    }

    LOBYTE(v32) = v13;
    [(IMDRelayServiceController *)self _forwardMessageToPeers:v33 messageType:a4 guid:v20 originalSender:0 forcedCallerID:v34 hasAttachment:a10 watchOnly:v32 sentToDevices:a11 requiredCapabilities:v22];
  }

  else
  {
    if (a10 && IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Relaying attachment to SMS capable device.", buf, 2u);
      }
    }

    v27 = [(IMDRelayServiceController *)self localDevice];
    if (!v27 || (v28 = [(IMDRelayServiceController *)self isProxyRegistered], v27, v28))
    {
      v29 = [(IMDRelayServiceController *)self sendDataToPeers:v24 forcedCallerID:v34 shouldFilterRecepients:0 requestProxySend:1 dontSendTo:0 sentToDevices:a11];
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v36 = v29;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Success sending data to peers: %{BOOL}d", buf, 8u);
        }
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_forwardMessageToPeers:(id)a3 messageType:(int64_t)a4 guid:(id)a5 originalSender:(id)a6 forcedCallerID:(id)a7 hasAttachment:(BOOL)a8 watchOnly:(BOOL)a9 sentToDevices:(id *)a10 requiredCapabilities:(id)a11
{
  v11 = a8;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a11;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Adding reflect only key and forwarding message to peers", buf, 2u);
    }
  }

  if ([(IMDRelayServiceController *)self isSMSRelayEnabled])
  {
    v52 = v20;
    v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v16];
    CFDictionarySetValue(v22, IMDRelayMessageDictionaryForcedShowOnlyKey, MEMORY[0x277CBEC38]);
    v23 = JWEncodeDictionary();
    v24 = IMOSLoggingEnabled();
    v51 = v16;
    v48 = v19;
    v49 = v18;
    v46 = v22;
    v47 = self;
    v45 = v23;
    if (v11)
    {
      if (v24)
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *v55 = 0;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "forwardMessageToPeers: Not compressing data", v55, 2u);
        }
      }

      v26 = v23;
    }

    else
    {
      if (v24)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *v54 = 0;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "forwardMessageToPeers: Compressing data", v54, 2u);
        }
      }

      v26 = [v23 _FTCopyGzippedData];
    }

    v28 = v26;
    v43 = MEMORY[0x277CBEB38];
    v42 = *MEMORY[0x277D18660];
    v29 = *MEMORY[0x277D18648];
    v30 = *MEMORY[0x277D185A0];
    v50 = v17;
    v31 = IDSGetUUIDData();
    v32 = *MEMORY[0x277D18668];
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v34 = *MEMORY[0x277D18588];
    v35 = *MEMORY[0x277D18598];
    v36 = [MEMORY[0x277CCABB0] numberWithBool:a9];
    v44 = v28;
    v37 = [v43 dictionaryWithObjectsAndKeys:{v42, MEMORY[0x277CBEC38], v29, MEMORY[0x277CBEC28], v30, v31, v32, v33, v34, v28, v35, v36, @"_SMSServiceRelayToWatchOnly", 0}];

    if ([v52 count])
    {
      [v37 setObject:v52 forKey:@"requiredCapabilitiesForSMSRelay"];
    }

    v19 = v48;
    v18 = v49;
    if (v48)
    {
      v17 = v50;
      [(IMDRelayServiceController *)v47 sendDataToPeers:v37 guid:v50 forcedCallerID:v48 shouldFilterRecepients:1 requestProxySend:0 dontSendTo:v49 sentToDevices:a10];
    }

    else
    {
      v38 = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
      v17 = v50;
      [(IMDRelayServiceController *)v47 sendDataToPeers:v37 guid:v50 forcedCallerID:v38 shouldFilterRecepients:1 requestProxySend:0 dontSendTo:v49 sentToDevices:a10];
    }

    v16 = v51;
    v39 = [(IMDRelayServiceController *)v47 localDevice];
    if (v39)
    {
      v40 = v39;
      v41 = [(IMDRelayServiceController *)v47 isLocalDeviceProxyRegistered];

      if (!v41)
      {
        [(IMDRelayServiceController *)v47 _relayMessageToPairedDevice:v46 messageID:v17 hasAttachments:a4 == 144];
      }
    }

    v20 = v52;
  }
}

- (BOOL)_canRelayMessage:(id)a3 forChat:(id)a4 isOTC:(BOOL *)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 isTypingMessage])
  {
    goto LABEL_6;
  }

  v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if (([v10 isRelayChatBotEnabled] & 1) == 0 && objc_msgSend(v8, "isSuggestedActionResponse"))
  {

LABEL_6:
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v8 isTypingMessage];
        v14 = [v8 isRCSEncryptionTest];
        v15 = @"NO";
        if (v13)
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        if (v14)
        {
          v15 = @"YES";
        }

        *buf = 138412546;
        v42 = v16;
        v43 = 2112;
        v44 = v15;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Not relaying message to peers, it's typing indicators: %@, RCS encryption test: %@", buf, 0x16u);
      }
    }

    v17 = 0;
    goto LABEL_16;
  }

  v11 = [v8 isRCSEncryptionTest];

  if (v11)
  {
    goto LABEL_6;
  }

  if ([v9 isChatBot])
  {
    v20 = [v8 body];
    v40 = [v20 mutableCopy];

    v21 = @"NO";
    if ([MEMORY[0x277D1A9A0] supportsDataDetectors])
    {
      v22 = [v8 body];
      v23 = [v22 length];
      v24 = *MEMORY[0x277D196A0];

      if (v23 < v24)
      {
        v25 = [v40 string];
        v26 = [v8 guid];
        v27 = [v8 sender];
        v28 = MEMORY[0x277CBEAA8];
        v29 = [v8 time];
        v30 = [v28 dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v29, "__im_nanosecondTimeInterval")}];
        [v8 isFromMe];
        v39 = IMDDScanAttributedStringWithExtendedContext();

        v21 = @"NO";
        if (v39)
        {
          v21 = @"YES";
        }
      }
    }

    v31 = [(IMDRelayServiceController *)self otcUtilities];
    v32 = [v8 sender];
    v33 = [v8 guid];
    v34 = [v31 createOTCFromMessageBody:v40 sender:v32 guid:v33];

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = "Will";
        if (!a5)
        {
          v36 = "Will not";
        }

        *buf = 136315650;
        v42 = v36;
        v37 = @"YES";
        v43 = 2112;
        if (!a5)
        {
          v37 = @"NO";
        }

        v44 = v37;
        v45 = 2112;
        v46 = v21;
        _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "%s relay chatbot message because it's a OTC: %@, found DD results: %@", buf, 0x20u);
      }
    }

    if (a5)
    {
      *a5 = v34 != 0;
    }

    if (v34)
    {
      v17 = 1;
    }

    else
    {
      v38 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v17 = [v38 isRelayChatBotEnabled];
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_needsLowQualityTranscodeForMessage:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDRelayServiceController *)self localDevice];

  if (v5 && ([v4 isFromMe] & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v4 fileTransferGUIDs];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = +[IMDAttachmentStore sharedInstance];
          v14 = [v13 attachmentWithGUID:v12];

          if (([v14 isInThumbnailState] & 1) == 0)
          {
            v15 = [v14 totalBytes];
            if (v15 > [(IMDRelayServiceController *)self _maxWatchTransferSize])
            {

              v6 = 1;
              goto LABEL_15;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_15:
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_relayMessageToPeers:(id)a3 forChat:(id)a4 serviceName:(id)a5 requiredCapabilities:(id)a6 reflectOnly:(BOOL)a7 excludesWatch:(BOOL)a8 onlyWatch:(BOOL)a9 overridingAttachmentData:(id)a10 skipServiceForSending:(BOOL)a11
{
  v50 = a8;
  v57 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a10;
  v52 = 0;
  if ([(IMDRelayServiceController *)self _canRelayMessage:v15 forChat:v16 isOTC:&v52])
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v49 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSRelaySend", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v49, &state);
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([v15 isFromMe])
    {
      v21 = 1;
      LOBYTE(v42) = a11;
      LOBYTE(v41) = 0;
      [(IMDRelayServiceController *)self relayMessage:v15 chat:v16 didSendSMS:1 attemptingReplication:0 forceReflection:0 relayToWatchOnly:0 shouldDisableScreenTimeRestrictions:v41 callerID:0 iMessageCapability:0 requiredCapabilities:v18 skipServiceForSending:v42];
    }

    else
    {
      v22 = [objc_opt_class() _convertIMMessageItemToIncomingRelayDictionary:v15 chat:v16 serviceName:v17 overridingAttachmentData:v19];
      if (v22)
      {
        [v20 addEntriesFromDictionary:v22];
        v46 = v22;
        v23 = [v16 participants];
        v48 = [IMDRelayServiceController _convertIMDHandlesToArrayOfIDs:v23];

        if ([v48 count])
        {
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = [v15 guid];
              *buf = 138412546;
              v54 = v25;
              v55 = 2112;
              v56 = v48;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Recipients when trying to relay incoming message %@, %@", buf, 0x16u);
            }
          }

          [v20 setObject:v48 forKeyedSubscript:IMDCTMessageDictionaryReceipientsKey];
        }

        else if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = [v15 guid];
            *buf = 138412290;
            v54 = v29;
            _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "No recipients when trying to relay incoming message %@", buf, 0xCu);
          }
        }

        v47 = [MEMORY[0x277D1A8F8] shouldUploadToMMCS:v20];
        v30 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        v31 = [v30 isRelayChatBotEnabled];
        v32 = v52;

        if ((v31 & v32) != 0)
        {
          v33 = [v20 mutableCopy];
          [v33 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:IMDCTMessageDictionarySendEnabledKey];
          v45 = v33;
          v34 = [v18 mutableCopy];
          v35 = *MEMORY[0x277D188F0];
          [v34 removeObject:*MEMORY[0x277D188F0]];
          v44 = v34;
          v36 = [MEMORY[0x277CBEB98] setWithObject:v35];
          if (IMOSLoggingEnabled())
          {
            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = [v15 guid];
              *buf = 138412290;
              v54 = v38;
              v43 = v38;
              _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Relay OTC message to legacy devices for message: %@", buf, 0xCu);
            }
          }

          LOBYTE(v41) = a9;
          [(IMDRelayServiceController *)self relayDictionaryToPeers:v45 requiresUpload:v47 serviceName:v17 requiredCapabilities:v44 excludedCapabilities:v36 excludesWatch:v50 onlyWatch:v41];
        }

        v21 = [(IMDRelayServiceController *)self relayDictionaryToPeers:v20 requiresUpload:v47 serviceName:v17 requiredCapabilities:v18 excludesWatch:v50 onlyWatch:a9];

        v22 = v46;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = [v15 guid];
            *buf = 138412290;
            v54 = v27;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "No message dictionary when trying to relay %@", buf, 0xCu);
          }
        }

        v21 = 0;
      }
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v21 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)relayDictionaryToPeers:(id)a3 requiresUpload:(BOOL)a4 serviceName:(id)a5 requiredCapabilities:(id)a6 excludedCapabilities:(id)a7 excludesWatch:(BOOL)a8 onlyWatch:(BOOL)a9
{
  v90 = a8;
  v91 = a4;
  v134 = *MEMORY[0x277D85DE8];
  v95 = a3;
  v92 = a5;
  v93 = a6;
  v94 = a7;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (v91)
      {
        v13 = @"YES";
      }

      *buf = 138412290;
      v129 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Trying to relay dictionary to peers, requiresUpload: %@", buf, 0xCu);
    }
  }

  if (![(IMDRelayServiceController *)self hasPeerDevices])
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " => Not sending data for received message, we have no peer devices", buf, 2u);
      }

      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v14 = [(IMDRelayServiceController *)self enrollmentController];
  v15 = [v14 _allowedDevicesforSMSRelay];
  v16 = [v15 count] == 0;

  if (v16)
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " => Not sending data for received message, we have no devices on the allowed list", buf, 2u);
      }

      goto LABEL_38;
    }

LABEL_39:
    v32 = 0;
    goto LABEL_40;
  }

  if (![(IMDRelayServiceController *)self isSMSRelayEnabled])
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " => Not sending data for received message, smsRelay not enabled", buf, 2u);
      }

LABEL_38:

      goto LABEL_39;
    }

    goto LABEL_39;
  }

  v17 = [MEMORY[0x277D18998] sharedInstance];
  v18 = [(__CFDictionary *)v95 objectForKey:IMDCTMessageDictionarySenderKey];
  v19 = [v17 isPhoneNumberEmergencyNumber:v18];

  if (v19)
  {
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v20 = [(IMDRelayServiceController *)self relayService];
    v21 = [v20 devices];

    v22 = [v21 countByEnumeratingWithState:&v118 objects:v133 count:16];
    if (v22)
    {
      v23 = *v119;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v119 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v118 + 1) + 8 * i);
          v132 = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
          v27 = [(IMDRelayServiceController *)self _isConnectedOverBT:v26];

          v28 = IMOSLoggingEnabled();
          if (v27)
          {
            if (v28)
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v129 = v25;
                v130 = 2112;
                v131 = @"YES";
                _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "This message is from an emergency number, but we have a Watch connected over BT %@, relaying message %@", buf, 0x16u);
              }
            }

            goto LABEL_46;
          }

          if (v28)
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v129 = v25;
              _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "This message is from an emergency number, not relaying to peer %@", buf, 0xCu);
            }
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v118 objects:v133 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "No watch paired connected over Bluetooth, skipping relaying emergency SMS", buf, 2u);
      }
    }

    goto LABEL_39;
  }

LABEL_46:
  v36 = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
  if (!IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    theDict = v95;
    goto LABEL_73;
  }

  theDict = [(__CFDictionary *)v95 mutableCopy];
  v37 = [(__CFDictionary *)v95 _stringForKey:IMDCTMessageDictionaryOriginatedDeviceSIMKey];
  v38 = [(__CFDictionary *)v95 _stringForKey:IMDCTMessageDictionaryOriginatedDeviceNumberKey];
  v39 = [MEMORY[0x277D1A908] sharedInstance];
  v40 = [v39 registeredSIMIDs];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v41 = v40;
  v42 = [(__CFString *)v41 countByEnumeratingWithState:&v114 objects:v127 count:16];
  if (v42)
  {
    v43 = 0;
    v44 = *v115;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v115 != v44)
        {
          objc_enumerationMutation(v41);
        }

        if ([v37 isEqualToString:*(*(&v114 + 1) + 8 * j)])
        {
          if (v38)
          {
            v46 = v38;
          }

          else
          {
            v46 = v36;
          }

          v47 = v46;

          if (IMOSLoggingEnabled())
          {
            v48 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v129 = v37;
              v130 = 2112;
              v131 = v41;
              _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Setting iMessageCapability to iMessageCapabilityAble on relay dict because message received on simID %@ is one of the registered simIDs %@", buf, 0x16u);
            }
          }

          CFDictionarySetValue(theDict, IMDRelayMessageDictionaryiMessageCapability, &unk_283F4EA98);
          v43 = 1;
          v36 = v47;
        }
      }

      v42 = [(__CFString *)v41 countByEnumeratingWithState:&v114 objects:v127 count:16];
    }

    while (v42);

    if (v43)
    {
      goto LABEL_72;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v129 = v37;
      v130 = 2112;
      v131 = v41;
      _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Setting iMessageCapability to iMessageCapabilityUnable on relay dict because message received on simID %@ isn't one of the registered simIDs %@", buf, 0x16u);
    }
  }

  CFDictionarySetValue(theDict, IMDRelayMessageDictionaryiMessageCapability, &unk_283F4EAB0);
LABEL_72:

LABEL_73:
  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = [(__CFDictionary *)theDict objectForKey:IMDCTMessageDictionaryReceipientsKey];
      *buf = 138412290;
      v129 = v51;
      _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "Recipients: %@", buf, 0xCu);
    }
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v52 = [(__CFDictionary *)theDict objectForKey:IMDCTMessageDictionaryReceipientsKey];
  v53 = [v52 countByEnumeratingWithState:&v110 objects:v126 count:16];
  if (v53)
  {
    v54 = *v111;
    while (2)
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v111 != v54)
        {
          objc_enumerationMutation(v52);
        }

        v56 = *(*(&v110 + 1) + 8 * k);
        if (IMOSLoggingEnabled())
        {
          v57 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v129 = v56;
            _os_log_impl(&dword_22B4CC000, v57, OS_LOG_TYPE_INFO, "  Recipient: %@", buf, 0xCu);
          }
        }

        v58 = [MEMORY[0x277D18998] sharedInstance];
        v59 = [v58 isPhoneNumberEmergencyNumber:v56];

        if (v59)
        {
          if (IMOSLoggingEnabled())
          {
            v61 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v61, OS_LOG_TYPE_INFO, "One of the recipients was an emergency number, this message should not be relayed", buf, 2u);
            }
          }

          v32 = 0;
          goto LABEL_135;
        }
      }

      v53 = [v52 countByEnumeratingWithState:&v110 objects:v126 count:16];
      if (v53)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v60 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, " Going to forward our received Message onto our other peers", buf, 2u);
    }
  }

  v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v90)
  {
    v96 = [(IMDRelayServiceController *)self pairedDevice];
  }

  else
  {
    v96 = 0;
  }

  if (v91)
  {
    v62 = [MEMORY[0x277CCAA00] defaultManager];
    v63 = [v62 im_randomTemporaryFileURLWithFileName:IMDRelayDownloadUploadTemporaryPathKey];
    v98 = [v63 path];

    [(__CFDictionary *)theDict writeToFile:v98 atomically:1];
    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v129 = v98;
        _os_log_impl(&dword_22B4CC000, v64, OS_LOG_TYPE_INFO, "Saved File to Path %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v65 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v65, OS_LOG_TYPE_INFO, "Starting Upload to MMCS Now", buf, 2u);
      }
    }

    v66 = [MEMORY[0x277D1ADF8] sharedInstance];
    v67 = *MEMORY[0x277D186A8];
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = sub_22B630FE8;
    v100[3] = &unk_2787069A8;
    v101 = v52;
    v102 = v92;
    v103 = theDict;
    v109 = a9;
    v104 = v93;
    v105 = v94;
    v106 = self;
    v107 = v36;
    v108 = v96;
    [v66 sendFilePath:v98 topic:v67 userInfo:0 transferID:v98 encryptFile:1 progressBlock:0 completionBlock:v100];

    v32 = 0;
    v68 = v101;
  }

  else
  {
    [v52 addEntriesFromDictionary:theDict];
    v98 = JWEncodeDictionary();
    v68 = [v98 _FTCopyGzippedData];
    v69 = MEMORY[0x277CBEB38];
    v70 = [MEMORY[0x277CCABB0] numberWithInteger:140];
    v71 = [(__CFDictionary *)theDict objectForKey:IMDCTMessageDictionaryGUIDKey];
    v72 = IDSGetUUIDData();
    v73 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v74 = [MEMORY[0x277CCABB0] numberWithBool:a9];
    v75 = [v69 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], v70, *MEMORY[0x277D18588], v72, *MEMORY[0x277D18668], v68, *MEMORY[0x277D18598], v73, *MEMORY[0x277D18650], @"_SMSServiceRelayToWatchOnly", v74, 0}];

    if ([v93 count])
    {
      [v75 setObject:v93 forKey:@"requiredCapabilitiesForSMSRelay"];
    }

    if ([v94 count])
    {
      [v75 setObject:v94 forKey:@"excludedCapabilitiesForSMSRelay"];
    }

    v76 = [(__CFDictionary *)theDict objectForKey:IMDCTMessageDictionaryGUIDKey];
    v32 = [(IMDRelayServiceController *)self sendDataToPeers:v75 guid:v76 forcedCallerID:v36 shouldFilterRecepients:1 requestProxySend:0 dontSendTo:v96 sentToDevices:0];
  }

  if (IMOSLoggingEnabled())
  {
    v77 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      v78 = @"NO";
      if (v91)
      {
        v78 = @"YES";
      }

      *buf = 138412290;
      v129 = v78;
      _os_log_impl(&dword_22B4CC000, v77, OS_LOG_TYPE_INFO, "Relaying to local device, requiresUpload %@", buf, 0xCu);
    }
  }

  if (v90)
  {
    goto LABEL_134;
  }

  if (v91)
  {
    v79 = [(IMDRelayServiceController *)self localDevice];
    v80 = v79 == 0;

    if (!v80)
    {
      if (IMOSLoggingEnabled())
      {
        v81 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
        {
          *buf = 138739971;
          v129 = theDict;
          _os_log_impl(&dword_22B4CC000, v81, OS_LOG_TYPE_INFO, "Relaying dict containing MMS to local device. %{sensitive}@ ", buf, 0xCu);
        }
      }

      v82 = &IMDRelayLocalMessageTypeIncomingDownloadMessage;
      goto LABEL_133;
    }
  }

  v83 = [(IMDRelayServiceController *)self localDevice];
  if (v83)
  {
    v84 = [(IMDRelayServiceController *)self isLocalDeviceProxyRegistered];

    if (!v84)
    {
      v82 = &IMDRelayLocalMessageTypeIncomingTextMessage;
LABEL_133:
      v85 = *v82;
      v124 = IMDRelayLocalMessageDictionaryIncomingDictKey;
      v125 = theDict;
      v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
      v87 = JWEncodeDictionary();
      v88 = [v87 _FTCopyGzippedData];
      v122[0] = IMDRelayLocalMessageDictionaryDictKey;
      v122[1] = IMDRelayLocalMessageDictionaryTypeKey;
      v123[0] = v88;
      v123[1] = v85;
      v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
      [(IMDRelayServiceController *)self sendToLocalPeers:v89];
    }
  }

LABEL_134:

LABEL_135:
  v95 = theDict;
LABEL_40:

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)sendDeleteCommand:(id)a3 forChatGUID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[IMDCKUtilities sharedInstance];
  v9 = [v8 cloudKitSyncingEnabled];

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Forwarding delete command to all other devices", buf, 2u);
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v11 = [(IMDRelayServiceController *)self pairedDevice];

  v12 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v12)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Send delete command only to the paired device", buf, 2u);
      }

      goto LABEL_10;
    }

LABEL_11:
    v13 = +[IMDChatRegistry sharedInstance];
    v14 = [v13 existingChatWithGUID:v7];

    if (v14)
    {
      v15 = JWEncodeDictionary();
      v16 = [v15 _FTCopyGzippedData];

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v6;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Forwarding delete command :%@", buf, 0xCu);
        }
      }

      v18 = MEMORY[0x277CBEAC0];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:181];
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
      v21 = [v18 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], v19, *MEMORY[0x277D18588], v16, *MEMORY[0x277D18598], v20, *MEMORY[0x277D18650], 0}];

      if (v9)
      {
        [(IMDRelayServiceController *)self _sendMessageToAllSMSRelayDevicesWithOptions:v21];
      }

      else
      {
        [(IMDRelayServiceController *)self _sendMessageToPairedDeviceWithOptions:v21];
      }
    }

    goto LABEL_21;
  }

  if (v12)
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "iCloud syncing not enbabled droping delete command to all other devices, (command %@)", buf, 0xCu);
    }
  }

LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sendRecoverCommand:(id)a3 forChatGUID:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[IMDCKUtilities sharedInstance];
  v9 = [v8 cloudKitSyncingEnabled];

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Forwarding recover command to all other devices", buf, 2u);
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v11 = [(IMDRelayServiceController *)self pairedDevice];

  v12 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v12)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Send recover command only to the paired device", buf, 2u);
      }

      goto LABEL_10;
    }

LABEL_11:
    v13 = +[IMDChatRegistry sharedInstance];
    v14 = [v13 existingChatWithGUID:v7];

    if (v14)
    {
      v15 = JWEncodeDictionary();
      v16 = [v15 _FTCopyGzippedData];

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = v6;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Forwarding recover command :%@", buf, 0xCu);
        }
      }

      v18 = [MEMORY[0x277CCABB0] numberWithDouble:{*MEMORY[0x277D18828], *MEMORY[0x277D18660], *MEMORY[0x277D18648], *MEMORY[0x277D18588], *MEMORY[0x277D18598], *MEMORY[0x277D18650], MEMORY[0x277CBEC38], MEMORY[0x277CBEC38], &unk_283F4EAC8, v16}];
      v24[4] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:5];

      if (v9)
      {
        [(IMDRelayServiceController *)self _sendMessageToAllSMSRelayDevicesWithOptions:v19];
      }

      else
      {
        [(IMDRelayServiceController *)self _sendMessageToPairedDeviceWithOptions:v19];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v7;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Recently Deleted | Early returning: SMSService recoverCommand - chat not found for GUID: %@", buf, 0xCu);
      }
    }

    goto LABEL_25;
  }

  if (v12)
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "iCloud syncing not enbabled droping recover command to all other devices, (command %@)", buf, 0xCu);
    }
  }

LABEL_25:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)sendEditedMessage:(id)a3 toChat:(id)a4 fromCallerID:(id)a5 backwardCompatabilityText:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 copyForBackwardsCompatibility];
  [v14 setBody:v13];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v14;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Device doesn't support SMS, sending backwards compatibility edit to relay devices: %@", &v21, 0xCu);
    }
  }

  v16 = [IMDRelayServiceController _convertIMMessageItemToOutgoingRelayDictionary:v14 chat:v11];
  v17 = [v10 guid];
  v18 = [v11 participants];
  v19 = [IMDRelayServiceController _convertIMDHandlesToArray:v18];
  -[IMDRelayServiceController _relayEditedMessage:messageGUID:serializedHandles:chatStyle:callerID:](self, "_relayEditedMessage:messageGUID:serializedHandles:chatStyle:callerID:", v16, v17, v19, [v11 style], v12);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)relayMessage:(id)a3 chat:(id)a4 didSendSMS:(BOOL)a5 attemptingReplication:(BOOL)a6 forceReflection:(BOOL)a7 relayToWatchOnly:(BOOL)a8 shouldDisableScreenTimeRestrictions:(BOOL)a9 callerID:(id)a10 iMessageCapability:(int64_t)a11 requiredCapabilities:(id)a12 skipServiceForSending:(BOOL)a13
{
  v37 = a8;
  v38 = a6;
  v39 = a7;
  v36 = a5;
  v42 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a10;
  v18 = a12;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "We have peer devices, relaying message...", buf, 2u);
    }
  }

  v20 = [v15 balloonBundleID];
  v35 = [v20 isEqualToString:*MEMORY[0x277D19730]];

  v21 = [v15 fileTransferGUIDs];
  v22 = [v21 count] != 0;

  if (v15 && [(IMDRelayServiceController *)self _canRelayMessage:v15 forChat:v16 isOTC:0])
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = [v16 participants];
    v34 = [IMDRelayServiceController _convertIMDHandlesToArray:v24];

    value = [IMDRelayServiceController _convertIMMessageItemToOutgoingRelayDictionary:v15 chat:v16];
    if (value)
    {
      CFDictionarySetValue(v23, IMDRelayMessageItemDictionary, value);
      if (v34)
      {
        CFDictionarySetValue(v23, IMDCTMessageDictionaryReceipientsKey, v34);
      }

      v25 = [MEMORY[0x277CCABB0] numberWithInteger:a11];
      if (v25)
      {
        CFDictionarySetValue(v23, IMDRelayMessageDictionaryiMessageCapability, v25);
      }

      v26 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v27 = [v26 isSatelliteContinuityEnabled];

      if ((v27 & a13) == 1)
      {
        CFDictionarySetValue(v23, IMDRelayMessageItemDictionarySkipServiceForSendingKey, MEMORY[0x277CBEC38]);
      }

      if (v38)
      {
        CFDictionarySetValue(v23, IMDRelayMessageDictionaryAttemptedOutgoingReplicationKey, MEMORY[0x277CBEC38]);
      }

      if (v39)
      {
        CFDictionarySetValue(v23, IMDRelayMessageDictionaryForcedShowOnlyKey, MEMORY[0x277CBEC38]);
      }

      if ([v15 isSOS])
      {
        CFDictionarySetValue(v23, IMDRelayMessageItemDictionarySkipServiceForSendingKey, MEMORY[0x277CBEC38]);
      }

      v28 = _IMDRelayChatStyleStringFromChatStyle([v16 style]);
      if (v28)
      {
        CFDictionarySetValue(v23, IMDRelayMessageDictionaryChatStyleKey, v28);
      }

      v29 = [v15 guid];
      LOBYTE(v32) = v22 & (v35 ^ 1);
      [(IMDRelayServiceController *)self _relayMessageDict:v23 messageID:v29 forcedCallerID:v17 didSendSMS:v36 relayToWatchOnly:v37 shouldDisableScreenTimeRestrictions:a9 hasAttachments:v32 requiredCapabilities:v18];
    }

    else if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = v15;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Failed to create an Message Dictionary from the IM Message, Original Message: %@", buf, 0xCu);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)sendReadReceiptForMessageGUID:(id)a3 timeRead:(id)a4 reflectOnly:(BOOL)a5
{
  v5 = a5;
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Marking message as read: %@", &v14, 0xCu);
    }
  }

  if (!v9)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Trying to mark with a nil timeRead, setting to [NSDate now]: %@", &v14, 0xCu);
      }
    }

    v9 = [MEMORY[0x277CBEAA8] now];
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v12 setObject:v9 forKeyedSubscript:IMDRelayMessageDictionaryTimeReadKey];
  if (v5)
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:IMDRelayMessageDictionaryForcedShowOnlyKey];
  }

  [(IMDRelayServiceController *)self _broadcastMessageEventWithCommand:147 eventName:IMDRelayLocalMessageTypeRead forGUID:v8 messageExtras:v12 shouldFilterRecipients:0 forcedCallerID:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)messageSent:(id)a3 onService:(id)a4 compatibilityService:(id)a5 wasInterworked:(BOOL)a6
{
  v6 = a6;
  v19 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "RELAY: Going to Tell all my clients that message with GUID %@ has been sent", &v17, 0xCu);
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = v14;
  if (v11)
  {
    [v14 setObject:v11 forKeyedSubscript:IMDRelayMessageItemDictionaryServiceKey];
  }

  if (v12)
  {
    [v15 setObject:v12 forKeyedSubscript:IMDRelayMessageItemDictionaryCompatibilityServiceKey];
  }

  if (v6)
  {
    [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:IMDRelayMessageDictionaryInterworkedKey];
  }

  [(IMDRelayServiceController *)self _broadcastMessageEventWithCommand:146 eventName:IMDRelayLocalMessageTypeSent forGUID:v10 messageExtras:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)messageDelivered:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "RELAY: Going to Tell all my clients that message with GUID %@ has been delivered", &v7, 0xCu);
    }
  }

  [(IMDRelayServiceController *)self _broadcastMessageEventWithCommand:101 eventName:IMDRelayLocalMessageTypeDelivered forGUID:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)messageReadByRemote:(id)a3
{
  v4 = a3;
  v6 = [v4 guid];
  v5 = [v4 timeRead];

  [(IMDRelayServiceController *)self messageGUIDReadByRemote:v6 timeRead:v5];
}

- (void)messageGUIDReadByRemote:(id)a3 timeRead:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "RELAY: Going to Tell all my clients that message with GUID %@ has been read", buf, 0xCu);
    }
  }

  v9 = IMDRelayLocalMessageTypeRemoteRead;
  v12 = IMDRelayMessageDictionaryTimeReadKey;
  v13 = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [(IMDRelayServiceController *)self _broadcastMessageEventWithCommand:102 eventName:v9 forGUID:v6 messageExtras:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)messageFailedToSend:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "RELAY: Going to Tell all my clients that message with GUID %@ has failed to send", &v7, 0xCu);
    }
  }

  [(IMDRelayServiceController *)self _broadcastMessageEventWithCommand:149 eventName:IMDRelayLocalMessageTypeError forGUID:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_broadcastMessageEventWithCommand:(int64_t)a3 eventName:(id)a4 forGUID:(id)a5 messageExtras:(id)a6 shouldFilterRecipients:(BOOL)a7 forcedCallerID:(id)a8
{
  v34 = a7;
  v37 = a5;
  v12 = a6;
  v13 = a8;
  v14 = MEMORY[0x277CBEB38];
  v32 = a4;
  v15 = objc_alloc_init(v14);
  [v15 setObject:v37 forKeyedSubscript:IMDRelayMessageDictionaryGUIDKey];
  if (v12)
  {
    [v15 addEntriesFromDictionary:v12];
  }

  v36 = v12;
  v33 = v15;
  v31 = JWEncodeDictionary();
  v30 = [v31 _FTCopyGzippedData];
  if (!v13)
  {
    v16 = +[IMDMessageStore sharedInstance];
    v17 = [v16 itemWithGUID:v37];

    v13 = [v17 destinationCallerID];

    if (!v13)
    {
      v13 = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
    }
  }

  v29 = MEMORY[0x277CBEB38];
  v18 = *MEMORY[0x277D18660];
  v19 = *MEMORY[0x277D18648];
  v20 = *MEMORY[0x277D185A0];
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v22 = *MEMORY[0x277D18588];
  v23 = IDSGetUUIDData();
  v24 = *MEMORY[0x277D18668];
  v25 = v13;
  v26 = *MEMORY[0x277D18598];
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v28 = [v29 dictionaryWithObjectsAndKeys:{v18, MEMORY[0x277CBEC38], v19, MEMORY[0x277CBEC28], v20, v21, v22, v23, v24, v30, v26, v27, *MEMORY[0x277D18650], 0}];

  [(IMDRelayServiceController *)self sendDataToPeers:v28 forcedCallerID:v25 shouldFilterRecepients:v34 requestProxySend:0 dontSendTo:0];
  [(IMDRelayServiceController *)self _forwardMessageEventToLocalPeers:v32 forGUID:v37 metadata:v36];
}

- (void)_forwardMessageEventToLocalPeers:(id)a3 forGUID:(id)a4 metadata:(id)a5
{
  v20[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMDRelayServiceController *)self localDevice];
  if (v11)
  {
    v12 = v11;
    v13 = [(IMDRelayServiceController *)self isLocalDeviceProxyRegistered];

    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v14 setObject:v9 forKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
      if (v10)
      {
        [v14 addEntriesFromDictionary:v10];
      }

      v15 = JWEncodeDictionary();
      v16 = [v15 _FTCopyGzippedData];
      v19[0] = IMDRelayLocalMessageDictionaryDictKey;
      v19[1] = IMDRelayLocalMessageDictionaryTypeKey;
      v20[0] = v16;
      v20[1] = v8;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
      [(IMDRelayServiceController *)self sendToLocalPeers:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendEnrollmentRelatedMessageOverIDS:(id)a3 deviceToSendTo:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v33 = a4;
  v7 = [(IMDRelayServiceController *)self relayService];
  v31 = [v7 accounts];

  v30 = [(IMDRelayServiceController *)self retrieveAccountAndPhoneAliasForAccounts:v31 shouldFilterRecepients:0 requestProxySend:0 preferredCallerID:0];
  v8 = [v30 first];
  v9 = [v30 second];
  if (v9)
  {
    v32 = v8;
  }

  else
  {
    v10 = [v33 linkedUserURIs];
    v9 = [v10 firstObject];

    v11 = [(IMDRelayServiceController *)self relayService];
    v12 = [v11 accounts];
    v32 = [(IMDRelayServiceController *)self accountForAlias:v9 fromAccounts:v12];

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "This is a non telphony device trying to enroll itself into SMS Relay", buf, 2u);
      }
    }
  }

  v14 = [(IMDRelayServiceController *)self _destinationForDevice:v33 forcedIdentity:v9];
  Mutable = [v6 mutableCopy];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v16 = IDSCopyIDForPhoneNumber();
  if (v16)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D185E0], v16);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7D6F28();
  }

  v17 = Mutable;
  [(IMDRelayServiceController *)self _checkAndSetRelayService];
  v18 = MEMORY[0x277D1AA08];
  v19 = [(IMDRelayServiceController *)self relayService];
  v20 = [MEMORY[0x277CBEAC0] dictionary];
  v21 = IMSingleObjectArray();
  v22 = [v21 __imSetFromArray];
  v34 = 0;
  v35 = 0;
  v23 = [v18 service:v19 sendMessage:v20 fromAccount:v32 toDestinations:v22 priority:300 options:v17 identifier:&v35 error:&v34];
  v24 = v35;
  v25 = v34;

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = @"NO";
      *buf = 138413314;
      v37 = v9;
      if (v23)
      {
        v27 = @"YES";
      }

      v38 = 2112;
      v39 = v27;
      v40 = 2112;
      v41 = v25;
      v42 = 2112;
      v43 = v32;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "SMS relay Enrollment data sent to: %@   success: %@   error: %@   account: %@  identifier %@", buf, 0x34u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)_extraOptionsForReachabilityRelayWithRequestID:(id)a3
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D18650];
  v9[0] = *MEMORY[0x277D185C0];
  v9[1] = v3;
  v10[0] = MEMORY[0x277CBEC38];
  v10[1] = &unk_283F4EAF8;
  v9[2] = *MEMORY[0x277D18630];
  v10[2] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)sendReachabilityRequest:(id)a3 requestID:(id)a4
{
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 createDictionary];
  v9 = JWEncodeDictionary();
  v10 = [v9 _FTCopyOptionallyGzippedData];
  v21[0] = @"D";
  v21[1] = @"C";
  v22[0] = v10;
  v22[1] = &unk_283F4EA98;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v12 = [v7 context];

  v13 = [v12 senderLastAddressedHandle];
  v20 = MEMORY[0x277CBEBF8];
  v14 = [(IMDRelayServiceController *)self _extraOptionsForReachabilityRelayWithRequestID:v6];
  LOWORD(v19) = 0;
  [(IMDRelayServiceController *)self _relayMessageDict:v11 command:190 messageID:v6 forcedCallerID:v13 didSendSMS:0 relayToWatchOnly:0 shouldDisableScreenTimeRestrictions:v19 hasAttachments:&v20 sentToDevices:v14 extraOptions:0 requiredCapabilities:?];

  v15 = v20;
  v16 = v20;

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)sendReachabilityResponse:(id)a3 requestID:(id)a4 toToken:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7
{
  v40[2] = *MEMORY[0x277D85DE8];
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v36 = [a3 createDictionary];
  v35 = JWEncodeDictionary();
  v39[0] = @"D";
  v39[1] = @"C";
  v34 = [v35 _FTCopyOptionallyGzippedData];
  v40[0] = v34;
  v40[1] = &unk_283F4EAB0;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v15 = [(IMDRelayServiceController *)self _sendOptionsForRelayMessage:v14 command:190 guid:v13];
  v16 = [v15 mutableCopy];

  [v16 setObject:v11 forKeyedSubscript:*MEMORY[0x277D185E0]];
  v17 = [(IMDRelayServiceController *)self _extraOptionsForReachabilityRelayWithRequestID:v13];

  [v16 addEntriesFromDictionary:v17];
  v18 = [(IMDRelayServiceController *)self idsDeviceFromPushToken:v12];

  v33 = v18;
  v19 = [(IMDRelayServiceController *)self _destinationForDevice:v18 forcedIdentity:v11];
  v20 = [(IMDRelayServiceController *)self relayService];
  v21 = [v20 accounts];
  v22 = [(IMDRelayServiceController *)self accountForAlias:v11 fromAccounts:v21];

  v23 = MEMORY[0x277D1AA08];
  v24 = [(IMDRelayServiceController *)self relayService];
  v25 = [MEMORY[0x277CBEAC0] dictionary];
  v26 = IMSingleObjectArray();
  v27 = [v26 __imSetFromArray];
  v37 = 0;
  v38 = 0;
  v28 = [v23 service:v24 sendMessage:v25 fromAccount:v22 toDestinations:v27 priority:300 options:v16 identifier:&v38 error:&v37];
  v29 = v38;
  v30 = v37;

  if (v30 || (v28 & 1) == 0)
  {
    v31 = IMLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7038(v19, v31);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)a3
{
  v27[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v6 = [v5 isPriorityMessagesEnabled];

  if (!v6)
  {
LABEL_16:
    LOBYTE(v20) = 0;
    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Sending Priority Message to peers", v25, 2u);
    }
  }

  if (![v4 count])
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25[0]) = 0;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "  No message guids, bailing.", v25, 2u);
      }
    }

    goto LABEL_16;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:v4 forKeyedSubscript:@"pm"];
  v9 = JWEncodeDictionary();
  v10 = [v9 _FTCopyGzippedData];
  v11 = MEMORY[0x277CBEC38];
  v12 = *MEMORY[0x277D18648];
  v26[0] = *MEMORY[0x277D18660];
  v26[1] = v12;
  v27[0] = MEMORY[0x277CBEC38];
  v27[1] = MEMORY[0x277CBEC38];
  v13 = *MEMORY[0x277D185A0];
  v27[2] = MEMORY[0x277CBEC28];
  v14 = *MEMORY[0x277D18668];
  v26[2] = v13;
  v26[3] = v14;
  v15 = [v4 objectAtIndexedSubscript:0];
  v16 = IDSGetUUIDData();
  v27[3] = v16;
  v26[4] = *MEMORY[0x277D18588];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:126];
  v27[4] = v17;
  v26[5] = *MEMORY[0x277D18598];
  v26[6] = @"_SMSServiceRelayToWatchOnly";
  v27[5] = v10;
  v27[6] = v11;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];

  v19 = [(IMDRelayServiceController *)self _callerIDForRelay];
  v20 = [(IMDRelayServiceController *)self sendDataToPeers:v18 forcedCallerID:v19 shouldFilterRecepients:1 requestProxySend:0 dontSendTo:0];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v25[0] = 67109120;
      v25[1] = v20;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Success sending data to peers: %{BOOL}d", v25, 8u);
    }
  }

LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (IMDRelayServiceController)sharedInstance
{
  if (qword_2814210E0 != -1)
  {
    sub_22B7DA010();
  }

  v3 = qword_281420F50;

  return v3;
}

- (IMDRelayServiceController)init
{
  v10.receiver = self;
  v10.super_class = IMDRelayServiceController;
  v2 = [(IMDRelayServiceController *)&v10 init];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Setting up Relay service", v9, 2u);
      }
    }

    [(IMDRelayServiceController *)v2 _setupIDSRelayServices];
    [(IMDRelayServiceController *)v2 updateRelayStatus];
    [(IMDRelayServiceController *)v2 _registerForAccountChanges];
    [(IMDRelayServiceController *)v2 _setupMMSObservation];
    v4 = [[IMDRelayEnrollmentController alloc] initWithServiceDelegate:v2 dispatchDelegate:v2];
    enrollmentController = v2->_enrollmentController;
    v2->_enrollmentController = v4;

    v6 = objc_alloc_init(IMDRelayDeletionController);
    deletionController = v2->_deletionController;
    v2->_deletionController = v6;
  }

  return v2;
}

- (void)dealloc
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Dealloc", buf, 2u);
    }
  }

  [(IMDRelayServiceController *)self _teardownMMSObservation];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:0 object:0];

  v5.receiver = self;
  v5.super_class = IMDRelayServiceController;
  [(IMDRelayServiceController *)&v5 dealloc];
}

- (NSArray)accounts
{
  [(IMDRelayServiceController *)self _checkAndSetRelayService];
  v3 = [(IMDRelayServiceController *)self relayService];
  v4 = [v3 accounts];

  return v4;
}

- (IMOneTimeCodeUtilities)otcUtilities
{
  otcUtilities = self->_otcUtilities;
  if (!otcUtilities)
  {
    v4 = objc_alloc_init(MEMORY[0x277D1AB18]);
    v5 = self->_otcUtilities;
    self->_otcUtilities = v4;

    otcUtilities = self->_otcUtilities;
  }

  return otcUtilities;
}

- (void)updateRelayStatus
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(IMDRelayServiceController *)self hasRelayDevice])
  {
    v3 = [(IMDRelayServiceController *)self _hasPhoneNumberAliasActive];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D1A4F8];
  v5 = IMGetDomainBoolForKey();
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v5)
      {
        v7 = @"YES";
      }

      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Status Of Remote Approval for Relay is %@", &v16, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (v3)
      {
        v9 = @"YES";
      }

      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Does this device have SMS Relay capable devices on its account? %@", &v16, 0xCu);
    }
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = v10;
  v12 = *MEMORY[0x277D19000];
  if (!v3)
  {
    [v10 setObject:MEMORY[0x277CBEC28] forKey:v12];
    goto LABEL_20;
  }

  [v10 setObject:MEMORY[0x277CBEC38] forKey:v12];
  if ((v5 & 1) == 0)
  {
LABEL_20:
    v13 = MEMORY[0x277CBEC28];
    goto LABEL_21;
  }

  v13 = MEMORY[0x277CBEC38];
LABEL_21:
  [v11 setObject:v13 forKey:*MEMORY[0x277D18FF8]];
  [v11 setObject:v13 forKey:*MEMORY[0x277D18FF0]];
  v14 = [(IMDRelayServiceController *)self _account];
  [v14 writeAccountDefaults:v11];

  [(IMDRelayServiceController *)self updateMMSCapability];
  v15 = *MEMORY[0x277D85DE8];
}

- (id)_account
{
  v2 = +[IMDAccountController sharedAccountController];
  v3 = [v2 anySessionForServiceName:*MEMORY[0x277D1A610]];
  v4 = [v3 account];

  return v4;
}

- (NSString)_callerIDForRelay
{
  v3 = [(IMDRelayServiceController *)self _callerIDAccountFromSettings];
  v4 = [(IMDRelayServiceController *)self _callerIDForRelayAccountID:v3];

  return v4;
}

- (id)_callerIDAccountFromSettings
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = IMPreferredAccountMap();
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v2;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Account Maps Currently Reads  %@", &v12, 0xCu);
      }
    }

    v4 = [v2 objectForKey:*MEMORY[0x277D1A620]];
    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = v4;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "iMessage Account Current reads  %@", &v12, 0xCu);
        }
      }

      v6 = [v4 objectForKey:@"guid"];
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = v6;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "iMessage Caller ID Guid reads  %@", &v12, 0xCu);
        }
      }

      if (v6)
      {
        v8 = v6;
      }

      else if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Unable to locate CallerID Account in Prefered Account Map", &v12, 2u);
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)_canRelayMMS
{
  v2 = [(IMDRelayServiceController *)self _account];
  v3 = [v2 accountDefaults];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D18FF0]];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)_localDeviceSupportsSMS
{
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = IMSMSEnabled();
      v4 = @"NO";
      if (v3)
      {
        v4 = @"YES";
      }

      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "isSMSEnabled %@", &v7, 0xCu);
    }
  }

  result = IMSMSEnabled();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_localDeviceSupportsEmergencySMS
{
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = IMSMSEnabled();
      v4 = @"NO";
      if (v3)
      {
        v4 = @"YES";
      }

      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "isEmergencySMSEnabled %@", &v7, 0xCu);
    }
  }

  result = IMSMSEnabled();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_localDeviceSupportsSMSAndHasAPhoneNumber
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
  v3 = [v2 length];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = IMSMSEnabled();
      v6 = @"NO";
      if (v5)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (v3)
      {
        v6 = @"YES";
      }

      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "isSMSEnabled %@ Has valid Phone Number %@", &v11, 0x16u);
    }
  }

  v8 = IMSMSEnabled();
  v9 = *MEMORY[0x277D85DE8];
  return v8 & (v3 != 0);
}

- (BOOL)_localDeviceSupportsSMSAndDoesNotHaveAPhoneNumberForSIMID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v4 = [MEMORY[0x277D1A908] sharedInstance];
    v5 = [v4 ctSubscriptionInfo];
    v6 = [v5 __im_subscriptionContextForForSimID:v3];

    v9 = 0;
    if (v6)
    {
      v7 = [v6 phoneNumber];
      v8 = [v7 length];

      if (!v8)
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v6 = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
    v9 = [v6 length] == 0;
  }

  v10 = IMSMSEnabled();
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      if (v10)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      if (v9)
      {
        v12 = @"YES";
      }

      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "isSMSEnabled %@ Does not have phone number to send with %@", &v16, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9 & v10;
}

- (id)_IDSService
{
  [(IMDRelayServiceController *)self _checkAndSetRelayService];

  return [(IMDRelayServiceController *)self relayService];
}

- (void)_prepareSMSRelayBlockForMessageDictionary:(id)a3 messageGUID:(id)a4 serviceName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_22B6E8B58;
  v17 = &unk_278708870;
  v11 = v8;
  v18 = v11;
  objc_copyWeak(&v20, &location);
  v12 = v10;
  v19 = v12;
  v13 = _Block_copy(&v14);
  [(IMDRelayServiceController *)self _storeSMSRelayExecutionBlock:v13 forMessageGUID:v9, v14, v15, v16, v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (BOOL)_storeSMSRelayExecutionBlock:(id)a3 forMessageGUID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 length];
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    v11 = [(NSMutableDictionary *)self->_smsRelayBlockMap objectForKey:v7];
    if (v11 && IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v22 = 138412546;
        v23 = v7;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Using existing spam relay mapping from %@ to %@", &v22, 0x16u);
      }
    }

    smsRelayBlockMap = self->_smsRelayBlockMap;
    if (!smsRelayBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v16 = self->_smsRelayBlockMap;
      p_smsRelayBlockMap = &self->_smsRelayBlockMap;
      *p_smsRelayBlockMap = Mutable;

      smsRelayBlockMap = *p_smsRelayBlockMap;
    }

    v17 = [v6 copy];
    [(NSMutableDictionary *)smsRelayBlockMap setObject:v17 forKey:v7];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = _Block_copy(v6);
        v22 = 138412546;
        v23 = v7;
        v24 = 2112;
        v25 = v19;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Generated mapping spam relay from %@ to %@", &v22, 0x16u);
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Cannot store spam relay completion block for guid as either guid or completion block is invalid", &v22, 2u);
    }

    goto LABEL_23;
  }

LABEL_24:

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_executeSMSRelayBlockForMessageWithGUID:(id)a3 category:(int64_t)a4 subCategory:(int64_t)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(NSMutableDictionary *)self->_smsRelayBlockMap objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, a4, a5);
    [(IMDRelayServiceController *)self _clearSMSRelayMapForMessageWithGUID:v8];
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "_executeSpamRelayCompletionBlockForMessageGuid: %@ Already ran completion block?, not doing anything", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_clearSMSRelayMapForMessageWithGUID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing SMS relay block mapping for %@", &v8, 0xCu);
    }
  }

  if (v4)
  {
    [(NSMutableDictionary *)self->_smsRelayBlockMap removeObjectForKey:v4];
    if (![(NSMutableDictionary *)self->_smsRelayBlockMap count])
    {
      smsRelayBlockMap = self->_smsRelayBlockMap;
      self->_smsRelayBlockMap = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMessageError:(id)a3
{
  v11 = a3;
  v3 = +[IMDMessageStore sharedInstance];
  v4 = [v3 itemWithGUID:v11];

  v5 = [v4 service];
  v6 = [v4 accountID];
  v7 = +[IMDAccountController sharedInstance];
  v8 = [v7 accountForAccountID:v6];

  v9 = [v8 session];
  if (!v9)
  {
    v10 = +[IMDAccountController sharedInstance];
    v9 = [v10 anySessionForServiceName:v5];
  }

  [v9 didReceiveError:4 forMessageID:v11 forceError:0];
}

+ (id)_convertIMMessageItemToIncomingRelayDictionary:(id)a3 chat:(id)a4 serviceName:(id)a5 overridingAttachmentData:(id)a6
{
  v93 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v79 = a4;
  v75 = a5;
  v73 = a6;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v10 setObject:@"1" forKeyedSubscript:IMDCTMessageDictionaryVersionKey];
  v11 = [v9 guid];
  [v10 setObject:v11 forKeyedSubscript:IMDCTMessageDictionaryGUIDKey];

  v12 = [v9 subject];
  [v10 setObject:v12 forKeyedSubscript:IMDCTMessageDictionarySubjectKey];

  v13 = [v9 sender];
  [v10 setObject:v13 forKeyedSubscript:IMDCTMessageDictionarySenderKey];

  v14 = [v9 time];
  [v10 setObject:v14 forKeyedSubscript:IMDCTMessageDictionaryDateKey];

  [v10 setObject:v75 forKeyedSubscript:IMDRelayMessageItemDictionaryServiceKey];
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v79, "isFiltered") & 0xF}];
  [v10 setObject:v15 forKeyedSubscript:IMDRelaySpamCategoryKey];

  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v79, "isFiltered") >> 4}];
  [v10 setObject:v16 forKeyedSubscript:IMDRelaySpamSubCategoryKey];

  [v10 setObject:IMDCTMessageDictionaryTypeSMS forKeyedSubscript:IMDCTMessageDictionaryTypeKey];
  v17 = [v79 participants];
  v18 = [IMDRelayServiceController _convertIMDHandlesToArrayOfIDs:v17];
  [v10 setObject:v18 forKeyedSubscript:IMDCTMessageDictionaryReceipientsKey];

  v19 = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
  v78 = [v9 context];
  v20 = [MEMORY[0x277D1A908] sharedInstance];
  v76 = [v20 ctSubscriptionInfo];

  if (!v78)
  {
    v21 = v76;
    if (!v76)
    {
      goto LABEL_6;
    }

    v22 = [v9 destinationCallerID];

    if (!v22)
    {
      v78 = 0;
      v21 = v76;
      goto LABEL_12;
    }

    v23 = [v9 destinationCallerID];
    v24 = [v9 destinationCallerID];
    v78 = [v76 __im_subscriptionContextForForSimID:v23 phoneNumber:v24];
  }

  v21 = v76;
LABEL_6:
  if (v78 && v21)
  {
    v77 = [v21 __im_subscriptionContextOrDefaultForForSlotID:{objc_msgSend(v78, "slotID")}];
    goto LABEL_14;
  }

  if (!v21)
  {
    goto LABEL_20;
  }

LABEL_12:
  v25 = [v21 subscriptions];
  v26 = [v25 count];

  if (!v26)
  {
LABEL_20:
    v77 = 0;
    v74 = 0;
    v33 = v19;
    goto LABEL_21;
  }

  v27 = [v76 subscriptions];
  v77 = [v27 objectAtIndexedSubscript:0];

LABEL_14:
  if (!v77)
  {
    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [v77 phoneNumber];
      v30 = [v77 labelID];
      v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v78, "slotID")}];
      *buf = 138413058;
      v86 = v77;
      v87 = 2112;
      v88 = v29;
      v89 = 2112;
      v90 = v30;
      v91 = 2112;
      v92 = v31;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Setting receiving context = %@, phoneNumber = %@, simID = %@ for given slotID %@", buf, 0x2Au);
    }
  }

  v32 = [v77 phoneNumber];

  v74 = [v77 labelID];
  v33 = v32;
LABEL_21:
  v71 = v33;
  [v10 setObject:? forKeyedSubscript:?];
  [v10 setObject:v74 forKeyedSubscript:IMDCTMessageDictionaryOriginatedDeviceSIMKey];
  v34 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "replaceID")}];
  [v10 setObject:v34 forKeyedSubscript:IMDCTMessageDictionaryReplaceMessageKey];

  v35 = MEMORY[0x277CBEC38];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:IMDCTMessageDictionarySendEnabledKey];
  v36 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v37 = [v36 isMissingMessagesEnabled];

  if (v37)
  {
    v38 = IMChatLookupDomainForServiceName();
    v39 = [v79 latestIdentifierForDomain:v38];
    if (v39)
    {
      v40 = [v79 groupID];
      [v10 setObject:v40 forKeyedSubscript:IMDRelayMessageDictionaryChatGroupIDKey];

      [v10 setObject:v39 forKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
    }

    goto LABEL_29;
  }

  v41 = [v79 groupID];

  if (v41)
  {
    v42 = [v79 groupID];
    [v10 setObject:v42 forKeyedSubscript:IMDRelayMessageDictionaryChatGroupIDKey];
  }

  v43 = [v79 originalGroupID];

  if (v43)
  {
    v38 = [v79 originalGroupID];
    [v10 setObject:v38 forKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
LABEL_29:
  }

  v44 = [v79 displayName];

  if (v44)
  {
    v45 = [v79 displayName];
    [v10 setObject:v45 forKeyedSubscript:IMDRelayMessageDictionaryChatDisplayNameKey];
LABEL_37:

    goto LABEL_38;
  }

  if ([v79 isChatBot])
  {
    v45 = [v79 businessName];
    [v10 setObject:v45 forKeyedSubscript:IMDRelayMessageDictionaryChatDisplayNameKey];
    v46 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v47 = [v46 isRelayChatBotEnabled];

    if (v47)
    {
      v48 = v35;
    }

    else
    {
      v48 = MEMORY[0x277CBEC28];
    }

    [v10 setObject:v48 forKeyedSubscript:IMDCTMessageDictionarySendEnabledKey];
    goto LABEL_37;
  }

LABEL_38:
  v49 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v50 = [v49 isReportJunkEverywhereEnabled];

  if (v50 && +[IMDCarrierReportJunkHelper supportsReportJunkForMessage:chatStyle:](IMDCarrierReportJunkHelper, "supportsReportJunkForMessage:chatStyle:", v9, [v79 style]))
  {
    v51 = [MEMORY[0x277D1A8F8] carrierNameForPhoneNumber:v71];
    if ([v51 length])
    {
      [v10 setObject:v51 forKeyedSubscript:IMDRelayCarrierSupportsReportJunk];
    }
  }

  v52 = +[IMDServiceController sharedController];
  v53 = [v9 service];
  v72 = [v52 serviceWithName:v53];

  v54 = [IMDRelayUtilities relayPartsFor:v9 overridingAttachmentData:v73];
  if (v54)
  {
    [v10 setObject:v54 forKeyedSubscript:IMDCTMessageDictionaryItemsKey];
    if ([v72 fallbackHashIsContentBased])
    {
      v55 = [MEMORY[0x277CCAB68] stringWithFormat:@"s:tel:%@", v71];
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v56 = v54;
      v57 = [v56 countByEnumeratingWithState:&v80 objects:v84 count:16];
      if (v57)
      {
        v58 = *v81;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v81 != v58)
            {
              objc_enumerationMutation(v56);
            }

            v60 = [IMDXMSUtilities calculateFallbackHashFragmentFor:*(*(&v80 + 1) + 8 * i)];
            [v55 appendString:v60];
          }

          v57 = [v56 countByEnumeratingWithState:&v80 objects:v84 count:16];
        }

        while (v57);
      }

      v61 = [v55 copy];
      [v10 setObject:v61 forKeyedSubscript:IMDCTMessageDictionaryFallbackHashKey];
    }

    else
    {
      v55 = [v9 fallbackHash];
      [v10 setObject:v55 forKeyedSubscript:IMDCTMessageDictionaryFallbackHashKey];
    }

    [v10 setObject:&unk_283F4ED80 forKeyedSubscript:IMDRelaySpamSubCategoryKey];
    v64 = [v9 criticalMessagingAppName];
    if (v64)
    {
      [v10 setObject:v64 forKeyedSubscript:IMDRelayMessageDictionaryCriticalMessagingAppNameKey];
    }

    v65 = +[IMDFilteringController sharedInstance];
    v66 = [v65 _isSpamFilteringEnabled];

    v67 = +[IMDFilteringController sharedInstance];
    v68 = [v67 _newSMSFilteringSettingsDictForFilterState:v66];
    [v10 addEntriesFromDictionary:v68];

    v63 = v10;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v62 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_INFO, "No compatible item(s) found to relay!", buf, 2u);
      }
    }

    v63 = 0;
  }

  v69 = *MEMORY[0x277D85DE8];

  return v63;
}

+ (id)_convertIMMessageItemToOutgoingRelayDictionary:(id)a3 chat:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v62) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Converting IM Message to NSDictionary", &v62, 2u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  CFDictionarySetValue(v8, IMDCTMessageDictionaryVersionKey, @"1");
  v9 = [v5 handle];
  if (v9)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryHandleKey, v9);
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA024();
    }
  }

  v12 = [v5 service];
  if (v12)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryServiceKey, v12);
  }

  else
  {
    v13 = MEMORY[0x277D86220];
    v14 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA0AC();
    }
  }

  v15 = [v5 guid];
  if (v15)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryGUIDKey, v15);
  }

  else
  {
    v16 = MEMORY[0x277D86220];
    v17 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22B7DA134();
    }
  }

  v18 = [(__CFDictionary *)v8 objectForKey:IMDRelayMessageItemDictionaryHandleKey];
  if (v18 || ([(__CFDictionary *)v8 objectForKey:IMDRelayMessageItemDictionaryServiceKey], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v60 = [(__CFDictionary *)v8 objectForKey:IMDRelayMessageItemDictionaryGUIDKey];
    v61 = v60 == 0;

    if (v61)
    {
      v57 = 0;
      goto LABEL_87;
    }
  }

  v19 = [v5 body];
  v20 = [v19 string];

  if (v20)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryPlainBodyKey, v20);
  }

  v21 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v22 = [v21 isRelayChatBotEnabled];

  if (v22)
  {
    v23 = [v5 body];
    v24 = JWEncodeCodableObject();

    if (v24)
    {
      CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryBodyDataKey, v24);
    }
  }

  v25 = [v5 subject];
  if (v25)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionarySubjectKey, v25);
  }

  v26 = [v5 replyToGUID];
  if (v26)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryReplyToGUIDKey, v26);
  }

  v27 = [v5 time];
  if (v27)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryDateKey, v27);
  }

  if ([v5 isAudioMessage])
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryIsAudioMessageKey, MEMORY[0x277CBEC38]);
  }

  v28 = [v6 groupID];

  if (v28)
  {
    v29 = [v6 groupID];
    [(__CFDictionary *)v8 setObject:v29 forKeyedSubscript:IMDRelayMessageDictionaryChatGroupIDKey];
  }

  v30 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v31 = [v30 isMissingMessagesEnabled];

  if (v31)
  {
    if ([v6 style] == 43)
    {
      v32 = [v5 service];
      v33 = IMChatLookupDomainForServiceName();

      v34 = [v6 latestIdentifierForDomain:v33];
      if (v34)
      {
        [(__CFDictionary *)v8 setObject:v34 forKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
      }
    }

    else
    {
      v33 = IMLogHandleForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        sub_22B7DA1BC(v33);
      }
    }

    goto LABEL_48;
  }

  v35 = [v6 originalGroupID];

  if (v35)
  {
    v33 = [v6 originalGroupID];
    [(__CFDictionary *)v8 setObject:v33 forKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
LABEL_48:
  }

  v36 = [v6 displayName];

  if (v36)
  {
    v37 = [v6 displayName];
    [(__CFDictionary *)v8 setObject:v37 forKeyedSubscript:IMDRelayMessageDictionaryChatDisplayNameKey];
  }

  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      LOWORD(v62) = 0;
      _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Starting parse", &v62, 2u);
    }
  }

  v39 = [IMDSuperToRelayMessageParser alloc];
  v40 = [v5 body];
  v41 = [(IMDSuperToRelayMessageParser *)v39 initWithAttributedString:v40];

  v42 = [MEMORY[0x277D1A8B8] sharedInstance];
  [v42 parseContext:v41];

  if (IMOSLoggingEnabled())
  {
    v43 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      LOWORD(v62) = 0;
      _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Done parse", &v62, 2u);
    }
  }

  v44 = [v5 body];
  v45 = [v44 string];

  if (IMOSLoggingEnabled())
  {
    v46 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = MarcoLoggingStringForMessageData();
      v62 = 138412290;
      v63 = v47;
      _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Plain: %@", &v62, 0xCu);
    }
  }

  v48 = [(IMDSuperToRelayMessageParser *)v41 outHTML];
  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = MarcoLoggingStringForMessageData();
      v62 = 138412290;
      v63 = v50;
      _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "messageString: %@", &v62, 0xCu);
    }
  }

  if ([(IMDSuperToRelayMessageParser *)v41 isSimpleString])
  {
    v51 = 0;
  }

  else
  {
    v52 = [v5 body];
    if ([v52 length])
    {
      v53 = v45 == 0;
    }

    else
    {
      v53 = 1;
    }

    v51 = !v53;
  }

  if (IMOSLoggingEnabled())
  {
    v54 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = @"NO";
      if (v51)
      {
        v55 = @"YES";
      }

      v62 = 138412290;
      v63 = v55;
      _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "sendXMLVersion: %@", &v62, 0xCu);
    }
  }

  if (v51)
  {
    v56 = v48;
    if (v56)
    {
      CFDictionarySetValue(v8, IMDRelayMessageItemDictionaryXHTMLKey, v56);
    }
  }

  v57 = v8;

LABEL_87:
  v58 = *MEMORY[0x277D85DE8];

  return v57;
}

+ (id)_convertIMMessageItemDictionaryToIMMessageItem:(id)a3 timestamp:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Converting Dictionary to IM Message", &v40, 2u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277D1AA70]);
  v9 = [v5 objectForKey:IMDRelayMessageItemDictionaryHandleKey];
  [v8 setHandle:v9];

  v10 = [v5 objectForKey:IMDRelayMessageItemDictionaryServiceKey];
  [v8 setService:v10];

  v11 = [v5 objectForKey:IMDRelayMessageItemDictionaryGUIDKey];
  [v8 setGuid:v11];

  v12 = [v5 objectForKey:IMDRelayMessageItemDictionaryGUIDKey];
  [v8 setGuid:v12];

  v13 = [v5 objectForKey:IMDRelayMessageItemDictionaryDateKey];
  if (v13)
  {
    [v8 setTime:v13];
  }

  else
  {
    v14 = _MessageDateFromTimeStamp(v6);
    [v8 setTime:v14];
  }

  v15 = [v5 objectForKey:IMDRelayMessageItemDictionaryIsAudioMessageKey];

  if (v15)
  {
    v16 = 2097157;
  }

  else
  {
    v16 = 5;
  }

  [v8 setFlags:v16];
  v17 = [v5 objectForKey:IMDRelayMessageItemDictionaryPlainBodyKey];

  if (v17)
  {
    v18 = [v5 objectForKey:IMDRelayMessageItemDictionaryPlainBodyKey];
    [v8 setPlainBody:v18];
  }

  v19 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v20 = [v19 isRelayChatBotEnabled];

  if (v20)
  {
    v21 = [v5 objectForKey:IMDRelayMessageItemDictionaryBodyDataKey];

    if (v21)
    {
      v22 = [v5 objectForKey:IMDRelayMessageItemDictionaryBodyDataKey];
      v23 = JWDecodeCodableObjectWithStandardAllowlist();

      if (v23)
      {
        [v8 setBody:v23];
      }
    }
  }

  v24 = [v5 objectForKey:IMDRelayMessageItemDictionarySubjectKey];

  if (v24)
  {
    v25 = [v5 objectForKey:IMDRelayMessageItemDictionarySubjectKey];
    [v8 setSubject:v25];
  }

  v26 = [v5 objectForKey:IMDRelayMessageItemDictionaryXHTMLKey];

  if (v26)
  {
    v27 = [IMDRelayMessageToSuperParser alloc];
    v28 = [v5 objectForKey:IMDRelayMessageItemDictionaryXHTMLKey];
    v29 = [(IMXMLParserContext *)v27 initWithContent:v28];

    v30 = [MEMORY[0x277D1AD00] sharedInstance];
    [v30 parseContext:v29];

    v31 = [(IMToSuperParserContext *)v29 body];
    [v8 setBody:v31];
    v32 = [(IMToSuperParserContext *)v29 fileTransferGUIDs];
    [v8 setFileTransferGUIDs:v32];

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = [v31 string];
        v35 = MarcoLoggingStringForMessageData();
        v36 = [v8 fileTransferGUIDs];
        v40 = 138412546;
        v41 = v35;
        v42 = 2112;
        v43 = v36;
        _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "      xhtml parsed body: %@  file tranfer GUIDs: %@", &v40, 0x16u);
      }
    }
  }

  v37 = [v5 objectForKey:IMDRelayMessageItemDictionaryReplyToGUIDKey];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v37 length])
  {
    [v8 setReplyToGUID:v37];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_updateServiceOfMessageInMessageDict:(id)a3 toService:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = [[v6 alloc] initWithDictionary:v7];

  v9 = objc_alloc(MEMORY[0x277CBEB38]);
  v10 = [v8 objectForKey:IMDRelayMessageItemDictionary];
  v11 = [v9 initWithDictionary:v10];

  v12 = v5;
  if (v12)
  {
    CFDictionarySetValue(v11, IMDRelayMessageItemDictionaryServiceKey, v12);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7DA200();
  }

  v13 = v11;
  if (v13)
  {
    CFDictionarySetValue(v8, IMDRelayMessageItemDictionary, v13);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7D6FB0();
  }

  return v8;
}

+ (id)_convertIMDHandleToDictionary:(id)a3
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v4 ID];
  v6 = IMDRelayMessageDictionaryRecipientIDKey;
  v7 = [v4 unformattedID];
  v8 = IMDRelayMessageDictionaryRecipientUnformatedIDKey;
  v9 = [v4 countryCode];

  v10 = [v3 dictionaryWithObjectsAndKeys:{v5, v6, v7, v8, v9, IMDCTMessageDictionaryCountryCodeKey, 0}];

  return v10;
}

+ (id)_convertIMDHandlesToArray:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22B6EAE10;
  v5[3] = &unk_278708890;
  v5[4] = a1;
  v3 = [a3 __imArrayByApplyingBlock:v5];

  return v3;
}

@end