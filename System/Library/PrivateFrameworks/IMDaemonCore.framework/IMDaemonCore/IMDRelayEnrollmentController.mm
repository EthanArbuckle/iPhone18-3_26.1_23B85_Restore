@interface IMDRelayEnrollmentController
- (BOOL)_areiMessageAndiCloudAccountTheSame:(id)same;
- (BOOL)_deviceAllowedToDisableRelay:(id)relay;
- (BOOL)sendApprovalDisplayPinToDevice:(id)device;
- (IMDRelayEnrollmentController)initWithServiceDelegate:(id)delegate dispatchDelegate:(id)dispatchDelegate;
- (id)_allowedDevicesforSMSRelay;
- (id)_allowedIDSDevicesforSMSRelay;
- (id)_bestAccountWithAlias:(id)alias;
- (id)_challengedDevicesforSMSRelay;
- (id)_challengedIDSDevicesforSMSRelay;
- (id)_ignoredDevicesforSMSRelay;
- (id)_ignoredIDSDevicesforSMSRelay;
- (void)_addDefaultPairedDeviceToAllowedSMSRelayList;
- (void)_addDeviceToAllowedSMSRelay:(id)relay shouldSendApproval:(BOOL)approval;
- (void)_addDeviceToChallengedSMSRelay:(id)relay;
- (void)_addDeviceToIgnoredSMSRelay:(id)relay;
- (void)_addHSA2PairedDevicesToAllowedSMSRelayList;
- (void)_approveSelfForSMSRelay;
- (void)_enableSMSRelayForDevice:(id)device;
- (void)_micEnabledStateDidChange:(id)change;
- (void)_migrateSMSRelayForMICIfNeeded;
- (void)_noteDeviceHasMICForSMSRelay:(id)relay;
- (void)_removeDeviceFromAllowedSMSRelay:(id)relay;
- (void)_removeDeviceFromChallengedSMSRelay:(id)relay;
- (void)_removeDeviceFromIgnoredSMSRelay:(id)relay;
- (void)_removeDeviceHasMICForSMSRelay:(id)relay;
- (void)_sendPinCodeToDeviceAndPromptForResponse:(id)response;
- (void)_shouldAutoEnableDevicesforSMSRelay:(id)relay;
- (void)dealloc;
- (void)enrollDeviceInSMSRelay:(id)relay;
- (void)enrollSelfDeviceInSMSRelay;
- (void)handler:(id)handler incomingDisplayPinCode:(id)code toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0;
- (void)handler:(id)handler incomingEnrollMeRequest:(id)request toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0;
- (void)handler:(id)handler incomingResponseForApproval:(id)approval toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0;
- (void)sendApprovalEnrollMe;
- (void)sendUnApproveToDevice:(id)device extraKeys:(id)keys;
- (void)setHasBeenRemoteApproved:(BOOL)approved;
- (void)unEnrollDeviceInSMSRelay:(id)relay;
@end

@implementation IMDRelayEnrollmentController

- (IMDRelayEnrollmentController)initWithServiceDelegate:(id)delegate dispatchDelegate:(id)dispatchDelegate
{
  delegateCopy = delegate;
  dispatchDelegateCopy = dispatchDelegate;
  v18.receiver = self;
  v18.super_class = IMDRelayEnrollmentController;
  v9 = [(IMDRelayEnrollmentController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceDelegate, delegate);
    objc_storeStrong(&v10->_dispatchDelegate, dispatchDelegate);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Setting up push handler", v17, 2u);
      }
    }

    v12 = +[IMDRelayPushHandler sharedInstance];
    [v12 addListener:v10];

    v13 = +[IMDRelayPushHandler sharedInstance];
    [v13 setRegistered:1];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "...done", v17, 2u);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__micEnabledStateDidChange_ name:@"com.apple.IMDaemonCore.IMDCKUtilities.MiCEnabledStateReturned" object:0];

    [(IMDRelayEnrollmentController *)v10 _migrateSMSRelayForMICIfNeeded];
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[IMDRelayPushHandler sharedInstance];
  [v3 removeListener:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = IMDRelayEnrollmentController;
  [(IMDRelayEnrollmentController *)&v5 dealloc];
}

- (void)enrollDeviceInSMSRelay:(id)relay
{
  v14 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v5 = IMOSLoggingEnabled();
  if (relayCopy)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = relayCopy;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "SMS Service Session Received Request To Enroll %@ Into SMS Relay ", &v12, 0xCu);
      }
    }

    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    v8 = [serviceDelegate idsDeviceFromUniqueID:relayCopy];

    if ([v8 isHSATrusted])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = v8;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Automatically enrolling HSA trusted device %@ ", &v12, 0xCu);
        }
      }

      [(IMDRelayEnrollmentController *)self _addDeviceToAllowedSMSRelay:v8 shouldSendApproval:1];
    }

    else
    {
      [(IMDRelayEnrollmentController *)self _sendPinCodeToDeviceAndPromptForResponse:relayCopy];
    }
  }

  else if (v5)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "empty deviceID passed in", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)unEnrollDeviceInSMSRelay:(id)relay
{
  v14 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v5 = IMOSLoggingEnabled();
  if (relayCopy)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = relayCopy;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "SMS Service Session Received Request To Un Enroll %@ Into SMS Relay ", &v12, 0xCu);
      }
    }

    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    v8 = [serviceDelegate idsDeviceFromUniqueID:relayCopy];

    [(IMDRelayEnrollmentController *)self _removeDeviceFromAllowedSMSRelay:v8];
    [(IMDRelayEnrollmentController *)self sendUnApproveToDevice:v8 extraKeys:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.sms.smsRelayDevices.changed", 0, 0, 0);
  }

  else if (v5)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "empty deviceID passed in", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)enrollSelfDeviceInSMSRelay
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "SMS Service Session Received Request To Enroll ourselves for SMS Relay", v4, 2u);
    }
  }

  [(IMDRelayEnrollmentController *)self sendApprovalEnrollMe];
}

- (id)_allowedDevicesforSMSRelay
{
  v2 = *MEMORY[0x277D1A4F8];
  v3 = IMGetCachedDomainValueForKey();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)_allowedIDSDevicesforSMSRelay
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D1A4F8];
  v22 = IMGetCachedDomainValueForKey();
  if (v22)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    peerDevices = [serviceDelegate peerDevices];

    obj = peerDevices;
    v6 = [peerDevices countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v11 = v22;
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v23 + 1) + 8 * j);
                uniqueID = [v10 uniqueID];
                LODWORD(v16) = [uniqueID isEqualToString:v16];

                if (v16)
                {
                  [v21 addObject:v10];
                  goto LABEL_17;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v21 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_ignoredDevicesforSMSRelay
{
  v2 = *MEMORY[0x277D1A4F8];
  v3 = IMGetCachedDomainValueForKey();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)_ignoredIDSDevicesforSMSRelay
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D1A4F8];
  v22 = IMGetCachedDomainValueForKey();
  if (v22)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    peerDevices = [serviceDelegate peerDevices];

    obj = peerDevices;
    v6 = [peerDevices countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v11 = v22;
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v23 + 1) + 8 * j);
                uniqueID = [v10 uniqueID];
                LODWORD(v16) = [uniqueID isEqualToString:v16];

                if (v16)
                {
                  [v21 addObject:v10];
                  goto LABEL_17;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v21 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_challengedDevicesforSMSRelay
{
  v2 = *MEMORY[0x277D1A4F8];
  v3 = IMGetCachedDomainValueForKey();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)_challengedIDSDevicesforSMSRelay
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D1A4F8];
  v22 = IMGetCachedDomainValueForKey();
  if (v22)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    peerDevices = [serviceDelegate peerDevices];

    obj = peerDevices;
    v6 = [peerDevices countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v11 = v22;
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v23 + 1) + 8 * j);
                uniqueID = [v10 uniqueID];
                LODWORD(v16) = [uniqueID isEqualToString:v16];

                if (v16)
                {
                  [v21 addObject:v10];
                  goto LABEL_17;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v21 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_noteDeviceHasMICForSMSRelay:(id)relay
{
  v17 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = *MEMORY[0x277D1A4F8];
  v5 = *MEMORY[0x277D1A4F0];
  v6 = IMGetCachedDomainValueForKey();
  v7 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
  if (v7)
  {
    uniqueID = [relayCopy uniqueID];
    if ([v7 containsObject:uniqueID])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Told to add an item but we already have its ID, ignoring and moving on.", v14, 2u);
        }
      }
    }

    else
    {
      [v7 addObject:uniqueID];
      v10 = [v7 count];
      if (v10 < [v6 count] && IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v14[0] = 67109376;
          v14[1] = [v7 count];
          v15 = 1024;
          v16 = [v6 count];
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", v14, 0xEu);
        }
      }

      if (![v7 count] && IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", v14, 2u);
        }
      }

      IMSetDomainValueForKey();
      IMSyncronizeAppPreferences();
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_removeDeviceHasMICForSMSRelay:(id)relay
{
  v29 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v3 = *MEMORY[0x277D1A4F8];
  v4 = *MEMORY[0x277D1A4F0];
  v5 = IMGetCachedDomainValueForKey();
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
  if (v6)
  {
    uniqueID = [relayCopy uniqueID];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v9)
    {
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          if ([v12 isEqualToString:uniqueID])
          {
            [v8 removeObject:v12];
            v13 = [v8 count];
            if (v13 < [v5 count] && IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = [v8 count];
                v16 = [v5 count];
                *buf = 67109376;
                v25 = v15;
                v26 = 1024;
                v27 = v16;
                _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "_removeDeviceFromMICSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", buf, 0xEu);
              }
            }

            if (![v8 count] && IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "_removeDeviceFromMICSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", buf, 2u);
              }
            }

            IMSetDomainValueForKey();
            IMSyncronizeAppPreferences();
            goto LABEL_22;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_addDeviceToAllowedSMSRelay:(id)relay shouldSendApproval:(BOOL)approval
{
  approvalCopy = approval;
  v21 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v7 = *MEMORY[0x277D1A4F8];
  v8 = IMGetCachedDomainValueForKey();
  v9 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
  if (v9)
  {
    uniqueID = [relayCopy uniqueID];
    if ([v9 containsObject:uniqueID])
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Told to add an item but we allready have its ID, moving on", v18, 2u);
        }
      }
    }

    else
    {
      [v9 addObject:uniqueID];
      v12 = [v9 count];
      if (v12 < [v8 count] && IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v18[0] = 67109376;
          v18[1] = [v9 count];
          v19 = 1024;
          v20 = [v8 count];
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", v18, 0xEu);
        }
      }

      if (![v9 count] && IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", v18, 2u);
        }
      }

      IMSetDomainValueForKey();
      IMSyncronizeAppPreferences();
      if ([MEMORY[0x277D1AB70] IDSDeviceSupportsIncomingSMSRelayFilteringForDeviceType:{objc_msgSend(relayCopy, "deviceType")}])
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LOWORD(v18[0]) = 0;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Added device for relay. Relaying current SMS Filtering settings.", v18, 2u);
          }
        }

        v16 = +[IMDFilteringController sharedInstance];
        [v16 _relayCurrentSMSFilteringSettings];
      }
    }
  }

  if (approvalCopy)
  {
    [(IMDRelayEnrollmentController *)self sendApprovalResponseToDevice:relayCopy enteredCorrectly:1 wasCancelled:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_removeDeviceFromAllowedSMSRelay:(id)relay
{
  v28 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = *MEMORY[0x277D1A4F8];
  v5 = IMGetCachedDomainValueForKey();
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
  if (v6)
  {
    uniqueID = [relayCopy uniqueID];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          if ([v12 isEqualToString:{uniqueID, v19}])
          {
            [v8 removeObject:v12];
            v13 = [v8 count];
            if (v13 < [v5 count] && IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = [v8 count];
                v16 = [v5 count];
                *buf = 67109376;
                v24 = v15;
                v25 = 1024;
                v26 = v16;
                _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "_removeDeviceFromAllowedSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", buf, 0xEu);
              }
            }

            if (![v8 count] && IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "_removeDeviceFromAllowedSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", buf, 2u);
              }
            }

            IMSetDomainValueForKey();
            IMSyncronizeAppPreferences();
            goto LABEL_22;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_addDeviceToIgnoredSMSRelay:(id)relay
{
  v16 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = *MEMORY[0x277D1A4F8];
  v5 = IMGetCachedDomainValueForKey();
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
  if (v6)
  {
    uniqueID = [relayCopy uniqueID];
    if ([v6 containsObject:uniqueID])
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v13[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Told to add an iteam but we allready have its ID, moving on", v13, 2u);
        }
      }
    }

    else
    {
      [v6 addObject:uniqueID];
      v9 = [v6 count];
      if (v9 < [v5 count] && IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13[0] = 67109376;
          v13[1] = [v6 count];
          v14 = 1024;
          v15 = [v5 count];
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: newIgnoredDeviceUUIDs count: %d ignoredDeviceUUIDs count: %d", v13, 0xEu);
        }
      }

      if (![v6 count] && IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v13[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "_addDeviceToIgnoredSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", v13, 2u);
        }
      }

      IMSetDomainValueForKey();
      IMSyncronizeAppPreferences();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeDeviceFromIgnoredSMSRelay:(id)relay
{
  v28 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = *MEMORY[0x277D1A4F8];
  v5 = IMGetCachedDomainValueForKey();
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
  if (v6)
  {
    uniqueID = [relayCopy uniqueID];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          if ([v12 isEqualToString:{uniqueID, v19}])
          {
            [v8 removeObject:v12];
            v13 = [v8 count];
            if (v13 < [v5 count] && IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = [v8 count];
                v16 = [v5 count];
                *buf = 67109376;
                v24 = v15;
                v25 = 1024;
                v26 = v16;
                _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "_removeDeviceFromIgnoredSMSRelay: newIgnoredDeviceUUIDs count: %d ignoredDeviceUUIDs count: %d", buf, 0xEu);
              }
            }

            if (![v8 count] && IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "_removeDeviceFromIgnoredSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", buf, 2u);
              }
            }

            IMSetDomainValueForKey();
            IMSyncronizeAppPreferences();
            goto LABEL_22;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_addDefaultPairedDeviceToAllowedSMSRelayList
{
  v21 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Trying to add default paired device to allowed list", buf, 2u);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  peerDevices = [serviceDelegate peerDevices];

  v6 = [peerDevices countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v8 = *v15;
    *&v7 = 138412290;
    v13 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(peerDevices);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 isDefaultPairedDevice])
        {
          [(IMDRelayEnrollmentController *)self _addDeviceToAllowedSMSRelay:v10 shouldSendApproval:0];
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = v13;
              v19 = v10;
              _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Added to paired list %@", buf, 0xCu);
            }
          }
        }
      }

      v6 = [peerDevices countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_addDeviceToChallengedSMSRelay:(id)relay
{
  v16 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = *MEMORY[0x277D1A4F8];
  v5 = IMGetCachedDomainValueForKey();
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
  if (v6)
  {
    uniqueID = [relayCopy uniqueID];
    if ([v6 containsObject:uniqueID])
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v13[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Told to add an iteam but we allready have its ID, moving on", v13, 2u);
        }
      }
    }

    else
    {
      [v6 addObject:uniqueID];
      v9 = [v6 count];
      if (v9 < [v5 count] && IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13[0] = 67109376;
          v13[1] = [v6 count];
          v14 = 1024;
          v15 = [v5 count];
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", v13, 0xEu);
        }
      }

      if (![v6 count] && IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v13[0]) = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "_addDeviceToIgnoredSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", v13, 2u);
        }
      }

      IMSetDomainValueForKey();
      IMSyncronizeAppPreferences();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeDeviceFromChallengedSMSRelay:(id)relay
{
  v28 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v4 = *MEMORY[0x277D1A4F8];
  v5 = IMGetCachedDomainValueForKey();
  v6 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
  if (v6)
  {
    uniqueID = [relayCopy uniqueID];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          if ([v12 isEqualToString:{uniqueID, v19}])
          {
            [v8 removeObject:v12];
            v13 = [v8 count];
            if (v13 < [v5 count] && IMOSLoggingEnabled())
            {
              v14 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = [v8 count];
                v16 = [v5 count];
                *buf = 67109376;
                v24 = v15;
                v25 = 1024;
                v26 = v16;
                _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "_addDeviceToAllowedSMSRelay: newAllowedDeviceUUIDs count: %d allowedDeviceUUIDs count: %d", buf, 0xEu);
              }
            }

            if (![v8 count] && IMOSLoggingEnabled())
            {
              v17 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "_addDeviceToIgnoredSMSRelay: going to write an empty dictionary to the kSMSDefaultsAllowedKey", buf, 2u);
              }
            }

            IMSetDomainValueForKey();
            IMSyncronizeAppPreferences();
            goto LABEL_22;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_sendPinCodeToDeviceAndPromptForResponse:(id)response
{
  v34 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  v6 = [serviceDelegate idsDeviceFromUniqueID:responseCopy];

  if (!v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = responseCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Tried to enroll a device that doesnt excist in our set of devices or was nil %@", buf, 0xCu);
    }
  }

  if ([(IMDRelayEnrollmentController *)self sendApprovalDisplayPinToDevice:v6])
  {
    v8 = MEMORY[0x277D19238];
    modelIdentifier = [v6 modelIdentifier];
    v29 = [v8 marketingNameForModel:modelIdentifier];

    name = [v6 name];
    v10 = IMDaemonCoreBundle();
    v27 = [v10 __im_localizedStringForKey:@"ENTER_THE_CODE_SHOWN_ON_YOUR_DEVICE_FOR_SMS_RELAY"];

    v11 = IMDaemonCoreBundle();
    v26 = [v11 __im_localizedStringForKey:@"RELAY_ENROLLMENT_TEXT_MESSAGE_FORWARDING"];

    v12 = IMDaemonCoreBundle();
    v13 = [v12 __im_localizedStringForKey:@"RELAY_ENROLLMENT_ALLOW"];

    v14 = IMDaemonCoreBundle();
    v15 = [v14 __im_localizedStringForKey:@"RELAY_ENROLLMENT_CANCEL"];

    v16 = MEMORY[0x277CBEAC0];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:v27, v29, name];
    v18 = [MEMORY[0x277CBEA60] arrayWithObject:&stru_283F23018];
    v19 = [MEMORY[0x277CBEA60] arrayWithObject:&stru_283F23018];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:5];
    v21 = [v16 dictionaryWithObjectsAndKeys:{v26, *MEMORY[0x277D19228], v17, *MEMORY[0x277D19208], v18, *MEMORY[0x277D19220], v19, *MEMORY[0x277D19218], v13, *MEMORY[0x277D191F8], v15, *MEMORY[0x277D191F0], v20, *MEMORY[0x277CBF1F8], 0}];

    v22 = [MEMORY[0x277D192D0] userNotificationWithIdentifier:@"SMSRelayCodeInput" timeout:3 alertLevel:0 displayFlags:v21 displayInformation:0.0];
    mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_22B547A54;
    v30[3] = &unk_2787040C0;
    v30[4] = self;
    v31 = v6;
    [mEMORY[0x277D192D8] addUserNotification:v22 listener:0 completionHandler:v30];
  }

  else if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "We were unable to send the PIN to the other device to be displayed, Sorry", buf, 2u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendApprovalDisplayPinToDevice:(id)device
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  randomSixDigitCode = [(IMDRelayEnrollmentController *)self randomSixDigitCode];
  if (!self->_pendingCodesToDevicesForApproval)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    pendingCodesToDevicesForApproval = self->_pendingCodesToDevicesForApproval;
    self->_pendingCodesToDevicesForApproval = Mutable;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:randomSixDigitCode];
  if (v8)
  {
    v9 = self->_pendingCodesToDevicesForApproval;
    uniqueID = [deviceCopy uniqueID];
    CFDictionarySetValue(v9, uniqueID, v8);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7D2038(deviceCopy);
  }

  v11 = MEMORY[0x277CBEAC0];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:randomSixDigitCode];
  v13 = [v11 dictionaryWithObjectsAndKeys:{v12, IMDRelayApprovalKeyKey, 0}];

  v14 = JWEncodeDictionary();
  _FTCopyGzippedData = [v14 _FTCopyGzippedData];
  v16 = MEMORY[0x277CBEB38];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:142];
  v18 = StringGUID();
  v19 = IDSGetUUIDData();
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v21 = [v16 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], MEMORY[0x277CBEC28], *MEMORY[0x277D185A0], v17, *MEMORY[0x277D18588], v19, *MEMORY[0x277D18668], _FTCopyGzippedData, *MEMORY[0x277D18598], v20, *MEMORY[0x277D18650], 0}];

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      name = [deviceCopy name];
      *buf = 138412290;
      v29 = name;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Sending a Pin Code To Device %@  to display to enroll them into SMS Relay", buf, 0xCu);
    }
  }

  dispatchDelegate = [(IMDRelayEnrollmentController *)self dispatchDelegate];
  v25 = [dispatchDelegate sendEnrollmentRelatedMessageOverIDS:v21 deviceToSendTo:deviceCopy];

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)sendApprovalEnrollMe
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "SMS Service session received request to enroll ourselves into SMS Relay", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "SMS Service session received request to enroll ourselves into SMS Relay", buf, 2u);
    }
  }

  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  dominentPhoneNumberAlias = [serviceDelegate dominentPhoneNumberAlias];

  serviceDelegate2 = [(IMDRelayEnrollmentController *)self serviceDelegate];
  _callerIDForRelay = [serviceDelegate2 _callerIDForRelay];

  if ([_callerIDForRelay _appearsToBePhoneNumber] && (-[IMDRelayEnrollmentController serviceDelegate](self, "serviceDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isAliasRelayCapable:", _callerIDForRelay), v9, v10))
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "This device has a callerID set to a phone number, That phone number is SMS Relay enabled, we should use that ", buf, 2u);
      }
    }

    v12 = _callerIDForRelay;
    if (!v12)
    {
LABEL_46:
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "We are unable to send any request for enabling SMS Relay for ourselves, we know of no phone with an alias we can use!!!!!", buf, 2u);
        }
      }

      v12 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "This device does not have a callerID set, so we are going to use the Dominent phone number one if possible ", buf, 2u);
      }
    }

    if (!dominentPhoneNumberAlias)
    {
      goto LABEL_46;
    }

    v12 = dominentPhoneNumberAlias;
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "It is possible to use the Dominent phone number alias, thats awesome, lets go for it", buf, 2u);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "We have an alias, we know where to send this request, lets go for it", buf, 2u);
    }
  }

  v16 = +[IMDCKUtilities sharedInstance];
  cloudKitSyncingEnabled = [v16 cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "MOC is ON including in this enrollment payload", buf, 2u);
      }
    }

    v37 = IMDRelayMICStateKey;
    v38[0] = &unk_283F4E510;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v20 = JWEncodeDictionary();
    _FTCopyGzippedData = [v20 _FTCopyGzippedData];
  }

  else
  {
    _FTCopyGzippedData = 0;
  }

  v22 = MEMORY[0x277CBEB38];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:148];
  v24 = StringGUID();
  v25 = IDSGetUUIDData();
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v27 = [v22 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], MEMORY[0x277CBEC28], *MEMORY[0x277D185A0], v23, *MEMORY[0x277D18588], v25, *MEMORY[0x277D18668], v26, *MEMORY[0x277D18650], 0}];

  if (_FTCopyGzippedData)
  {
    CFDictionarySetValue(v27, *MEMORY[0x277D18598], _FTCopyGzippedData);
  }

  serviceDelegate3 = [(IMDRelayEnrollmentController *)self serviceDelegate];
  v29 = [serviceDelegate3 _deviceForCallerID:v12];

  if (v29)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        name = [v29 name];
        *buf = 138412290;
        v36 = name;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Asking for device %@  to enroll me into SMS Relay", buf, 0xCu);
      }
    }

    dispatchDelegate = [(IMDRelayEnrollmentController *)self dispatchDelegate];
    [dispatchDelegate sendEnrollmentRelatedMessageOverIDS:v27 deviceToSendTo:v29];
  }

LABEL_51:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)sendUnApproveToDevice:(id)device extraKeys:(id)keys
{
  v28 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  keysCopy = keys;
  v6 = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{MEMORY[0x277CBEC38], IMDRelayAuthorizationRevokedKey, 0}];
  v8 = v7;
  if (keysCopy)
  {
    Mutable = [(__CFDictionary *)v7 mutableCopy];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    [(__CFDictionary *)Mutable addEntriesFromDictionary:keysCopy];

    v8 = Mutable;
  }

  v10 = JWEncodeDictionary();
  _FTCopyGzippedData = [v10 _FTCopyGzippedData];
  v12 = StringGUID();
  v13 = MEMORY[0x277CBEB38];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:145];
  v15 = IDSGetUUIDData();
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
  v17 = [v13 dictionaryWithObjectsAndKeys:{v6, *MEMORY[0x277D18660], v6, *MEMORY[0x277D18648], MEMORY[0x277CBEC28], *MEMORY[0x277D185A0], v14, *MEMORY[0x277D18588], v15, *MEMORY[0x277D18668], _FTCopyGzippedData, *MEMORY[0x277D18598], v16, *MEMORY[0x277D18650], 0}];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      name = [deviceCopy name];
      *buf = 138412546;
      v25 = name;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Sending an Un-Approve message to device %@ message guid %@", buf, 0x16u);
    }
  }

  dispatchDelegate = [(IMDRelayEnrollmentController *)self dispatchDelegate];
  [dispatchDelegate sendEnrollmentRelatedMessageOverIDS:v17 deviceToSendTo:deviceCopy];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_approveSelfForSMSRelay
{
  if (![(IMDRelayEnrollmentController *)self hasBeenRemoteApproved])
  {
    [(IMDRelayEnrollmentController *)self setHasBeenRemoteApproved:1];
    IMSyncronizeAppPreferences();
    serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
    [serviceDelegate updateRelayStatus];
  }
}

- (void)_micEnabledStateDidChange:(id)change
{
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "MIC State has changed, checking next steps for SMS Relay", v6, 2u);
    }
  }

  [(IMDRelayEnrollmentController *)self enrollSelfDeviceInSMSRelay];
}

- (void)_migrateSMSRelayForMICIfNeeded
{
  v21 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Checking if we need to enroll as an SMS relay device.", &v17, 2u);
    }
  }

  v4 = *MEMORY[0x277D1A4F8];
  v5 = *MEMORY[0x277D1A500];
  v6 = IMGetCachedDomainValueForKey();
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  productVersion = [mEMORY[0x277D07DB0] productVersion];

  v9 = [productVersion isEqualToString:v6];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = productVersion;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "> Last migration was for {%@}, currently {%@}.", &v17, 0x16u);
    }
  }

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "> We have already completed SMS MiC relay migration.", &v17, 2u);
      }

LABEL_23:
    }
  }

  else
  {
    IMSetDomainValueForKey();
    IMSyncronizeAppPreferences();
    v12 = +[IMDCKUtilities sharedInstance];
    cloudKitSyncingEnabled = [v12 cloudKitSyncingEnabled];

    v14 = IMOSLoggingEnabled();
    if (cloudKitSyncingEnabled)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "> Beginning flow to enroll device in SMS relay.", &v17, 2u);
        }
      }

      [(IMDRelayEnrollmentController *)self enrollSelfDeviceInSMSRelay];
    }

    else if (v14)
    {
      v11 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "> MiC is disabled, so no need to enroll device for SMS relay.", &v17, 2u);
      }

      goto LABEL_23;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_areiMessageAndiCloudAccountTheSame:(id)same
{
  v26 = *MEMORY[0x277D85DE8];
  sameCopy = same;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  accounts = [serviceDelegate accounts];

  v7 = [accounts countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(accounts);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 accountType] == 1 && objc_msgSend(v10, "isActive"))
        {
          profileID = [v10 profileID];
          sameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"D:%@", sameCopy];
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v22 = sameCopy;
              v23 = 2112;
              v24 = profileID;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "iCloud DSID is %@, imessage DSID is %@", buf, 0x16u);
            }
          }

          v14 = [profileID isEqualToString:sameCopy];

          if (v14)
          {
            LOBYTE(v7) = 1;
            goto LABEL_17;
          }
        }
      }

      v7 = [accounts countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_enableSMSRelayForDevice:(id)device
{
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = *MEMORY[0x277D1A4F8];
  v6 = IMGetCachedDomainValueForKey();
  v7 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
  uniqueID = [deviceCopy uniqueID];
  if (![(IMDRelayEnrollmentController *)self _isDeviceATrustedHSA2Device:deviceCopy])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v9 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = deviceCopy;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Device is not on HSA2 trusted list, not approving it for SMS relay %@", &v12, 0xCu);
    }

    goto LABEL_6;
  }

  if ([v6 containsObject:uniqueID])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = deviceCopy;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "(HSA2 Trusted) Already added device to paired list once %@", &v12, 0xCu);
      }

LABEL_6:
    }
  }

  else
  {
    [(IMDRelayEnrollmentController *)self _addDeviceToAllowedSMSRelay:deviceCopy shouldSendApproval:1];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = deviceCopy;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "(HSA2 Trusted) Added to paired list %@", &v12, 0xCu);
      }
    }

    [v7 addObject:uniqueID];
    IMSetDomainValueForKey();
    IMSyncronizeAppPreferences();
  }

LABEL_16:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_shouldAutoEnableDevicesforSMSRelay:(id)relay
{
  relayCopy = relay;
  if (relayCopy)
  {
    v5 = +[IMDCKUtilities sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_22B54993C;
    v6[3] = &unk_278704110;
    v6[4] = self;
    v7 = relayCopy;
    [v5 fetchCloudKitAccountStatusWithCompletion:v6];
  }
}

- (void)_addHSA2PairedDevicesToAllowedSMSRelayList
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Trying to add HSA2 paired devices to allowed list", buf, 2u);
    }
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B549C04;
  v4[3] = &unk_278704138;
  v4[4] = self;
  [(IMDRelayEnrollmentController *)self _shouldAutoEnableDevicesforSMSRelay:v4];
}

- (void)setHasBeenRemoteApproved:(BOOL)approved
{
  v3 = *MEMORY[0x277D1A4F8];
  IMSetDomainBoolForKey();

  IMSyncronizeAppPreferences();
}

- (id)_bestAccountWithAlias:(id)alias
{
  v25 = *MEMORY[0x277D85DE8];
  aliasCopy = alias;
  v4 = +[IMDServiceController sharedController];
  v5 = [v4 serviceWithName:*MEMORY[0x277D1A610]];

  v6 = +[IMDAccountController sharedInstance];
  v7 = [v6 accountsForService:v5];

  firstObject = [v7 firstObject];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        aliases = [v14 aliases];
        v16 = [aliases containsObject:aliasCopy];

        if (v16)
        {
          v17 = v14;

          firstObject = v17;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)handler:(id)handler incomingDisplayPinCode:(id)code toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0
{
  v50 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  codeCopy = code;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v47 = fromIdentifierCopy;
      v48 = 2112;
      v49 = identifierCopy;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "SMS Service Session Received an incomming approval request from:%@ to:%@", buf, 0x16u);
    }
  }

  v40 = codeCopy;
  v19 = [codeCopy _numberForKey:IMDRelayApprovalKeyKey];
  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  v21 = [serviceDelegate idsDeviceFromPushToken:tokenCopy];

  if ([v21 supportsSMSRelay])
  {
    linkedUserURIs = [v21 linkedUserURIs];
    firstObject = [linkedUserURIs firstObject];
    _stripFZIDPrefix = [firstObject _stripFZIDPrefix];

    v25 = IMFormattedDisplayStringForID();
    stringWithLTREmbedding = [v25 stringWithLTREmbedding];

    v27 = IMDaemonCoreBundle();
    v28 = [v27 __im_localizedStringForKey:@"RELAY_ENROLLMENT_CANCEL"];

    v29 = IMDaemonCoreBundle();
    v30 = [v29 __im_localizedStringForKey:@"TO_SEND_AND_RECEIVE_YOUR_IPHONE_TEXT_MESSAGES"];

    v31 = MEMORY[0x277D192D0];
    uniqueID = [v21 uniqueID];
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:v30, stringWithLTREmbedding, v19];
    v34 = [v31 userNotificationWithIdentifier:uniqueID title:v33 message:0 defaultButton:v28 alternateButton:0 otherButton:0];

    if (v34)
    {
      [v34 setUsesNotificationCenter:0];
      [v34 setRepresentedApplicationBundle:*MEMORY[0x277D192F0]];
      mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
      [mEMORY[0x277D192D8] addUserNotification:v34 listener:0 completionHandler:&unk_283F19A48];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "********** We received an imcomming pin code alert from a non SMS Device", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v21;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "The device that sent this request was %@", buf, 0xCu);
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)handler:(id)handler incomingEnrollMeRequest:(id)request toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0
{
  v53 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  requestCopy = request;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v48 = fromIdentifierCopy;
      v49 = 2112;
      v50 = identifierCopy;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "SMS Service Session Received a request to enroll a device into SMS Relay from:%@ to:%@", buf, 0x16u);
    }
  }

  v21 = [requestCopy _numberForKey:{IMDRelayMICStateKey, handlerCopy}];
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = @"YES";
      *buf = 138412802;
      v48 = fromIdentifierCopy;
      v49 = 2112;
      if (!v21)
      {
        v23 = @"NO";
      }

      v50 = identifierCopy;
      v51 = 2112;
      v52 = v23;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "SMS Service Session Received a request to enroll a device into SMS Relay from:%@ to:%@, micIsOn:%@", buf, 0x20u);
    }
  }

  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  v25 = [serviceDelegate idsDeviceFromPushToken:tokenCopy];

  if (v25)
  {
    _allowedDevicesforSMSRelay = [(IMDRelayEnrollmentController *)self _allowedDevicesforSMSRelay];
    uniqueID = [v25 uniqueID];
    v28 = [_allowedDevicesforSMSRelay containsObject:uniqueID];

    if (v28)
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Received request to enroll a device into SMS Relay, However we already have this device in our allowed list ", buf, 2u);
        }
      }

      if (!v21)
      {
        [(IMDRelayEnrollmentController *)self _removeDeviceHasMICForSMSRelay:v25];
        goto LABEL_49;
      }

      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Received request to enroll a device into SMS Relay, However this is just an update for its MIC State to YES, Saving that down", buf, 2u);
        }
      }

      goto LABEL_42;
    }

    _challengedDevicesforSMSRelay = [(IMDRelayEnrollmentController *)self _challengedDevicesforSMSRelay];
    uniqueID2 = [v25 uniqueID];
    v35 = [_challengedDevicesforSMSRelay containsObject:uniqueID2];

    if (v35)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_49;
      }

      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Received request to enroll a device into SMS Relay, However this device has requested to be enrolled before, Not allowing it to try again", buf, 2u);
      }

      goto LABEL_30;
    }

    isHSATrusted = [v25 isHSATrusted];
    v37 = IMOSLoggingEnabled();
    if (isHSATrusted)
    {
      if (v37)
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = v25;
          _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Automatically enrolling for SMS relay with requesting device: %@", buf, 0xCu);
        }
      }

      [(IMDRelayEnrollmentController *)self _addDeviceToAllowedSMSRelay:v25 shouldSendApproval:1];
      if (v21)
      {
LABEL_42:
        [(IMDRelayEnrollmentController *)self _noteDeviceHasMICForSMSRelay:v25];
      }
    }

    else
    {
      if (v37)
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Received request to enroll a device into SMS Relay, This is your first time trying, You only get 1 chance", buf, 2u);
        }
      }

      [(IMDRelayEnrollmentController *)self _addDeviceToChallengedSMSRelay:v25];
      uniqueID3 = [v25 uniqueID];
      [(IMDRelayEnrollmentController *)self _sendPinCodeToDeviceAndPromptForResponse:uniqueID3];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "********** We received an Enroll me Request from a device that we do not recognize", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = 0;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "The device that sent this request was %@", buf, 0xCu);
      }

LABEL_30:
    }
  }

LABEL_49:

  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)_deviceAllowedToDisableRelay:(id)relay
{
  v25 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  peerDevices = [serviceDelegate peerDevices];

  v7 = [peerDevices countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(peerDevices);
        }

        uniqueID = [*(*(&v18 + 1) + 8 * i) uniqueID];
        uniqueID2 = [relayCopy uniqueID];
        v12 = [uniqueID isEqualToString:uniqueID2];

        if (v12)
        {
          if ([relayCopy supportsSMSRelay])
          {
            supportsMMSRelay = 1;
          }

          else
          {
            supportsMMSRelay = [relayCopy supportsMMSRelay];
          }

          goto LABEL_18;
        }
      }

      v7 = [peerDevices countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      name = [relayCopy name];
      *buf = 138412290;
      v23 = name;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Device %@ was not found in our relay service!", buf, 0xCu);
    }
  }

  supportsMMSRelay = 0;
LABEL_18:

  v16 = *MEMORY[0x277D85DE8];
  return supportsMMSRelay;
}

- (void)handler:(id)handler incomingResponseForApproval:(id)approval toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp storageContext:(id)self0
{
  v60 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  approvalCopy = approval;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v57 = fromIdentifierCopy;
      v58 = 2112;
      v59 = identifierCopy;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "SMS Service Session Received an incomming approval response from:%@ to:%@", buf, 0x16u);
    }
  }

  serviceDelegate = [(IMDRelayEnrollmentController *)self serviceDelegate];
  v23 = [serviceDelegate idsDeviceFromPushToken:tokenCopy];

  v24 = [approvalCopy objectForKey:IMDRelayAuthorizationRevokedKey];
  bOOLValue = [v24 BOOLValue];

  v26 = [approvalCopy objectForKey:IMDRelayAuthorizationUnauthorizedDeviceKey];
  bOOLValue2 = [v26 BOOLValue];

  if (bOOLValue)
  {
    v28 = [(IMDRelayEnrollmentController *)self _deviceAllowedToDisableRelay:v23];
    v29 = IMOSLoggingEnabled();
    if (v28)
    {
      if (v29)
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          name = [v23 name];
          *buf = 138412290;
          v57 = name;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Device %@ Told us that they have turned off SMS Relay for us, revoking them now ", buf, 0xCu);
        }
      }

      v32 = *MEMORY[0x277D1A4F8];
      IMSetDomainBoolForKey();
      [(IMDRelayEnrollmentController *)self setHasBeenRemoteApproved:0];
      if (bOOLValue2)
      {
        if (IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "This response indicated to us that we tried to send when we shouldnt have tried to send, Pulling out the guid and marking that message as a failure ", buf, 2u);
          }
        }

        v34 = [approvalCopy _stringForKey:IMDRelayMessageDictionaryGUIDKey];
        if (v34)
        {
          if (IMOSLoggingEnabled())
          {
            v35 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v57 = v34;
              _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Telling message GUID %@ that it's a failure", buf, 0xCu);
            }
          }

          serviceDelegate2 = [(IMDRelayEnrollmentController *)self serviceDelegate];
          [serviceDelegate2 didReceiveMessageError:v34];
        }
      }

      v37 = +[IMDFilteringController sharedInstance];
      uniqueIDOverride = [v23 uniqueIDOverride];
      [v37 _checkAndUpdateSMSFilteringSettingsForDeviceID:uniqueIDOverride smsFilterCapabilitiesOptions:0 filterExtensionName:0];

      serviceDelegate3 = [(IMDRelayEnrollmentController *)self serviceDelegate];
      [serviceDelegate3 updateRelayStatus];
    }

    else if (v29)
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        name2 = [v23 name];
        *buf = 138412290;
        v57 = name2;
        _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "Device %@ Told us that they have turned off SMS Relay for us, but we determined they are not allowed to. Ignoring!", buf, 0xCu);
      }
    }
  }

  else
  {
    v40 = [approvalCopy objectForKey:IMDRelayApprovalResponseKey];
    bOOLValue3 = [v40 BOOLValue];

    v42 = [approvalCopy objectForKey:IMDRelayApprovalWasCancelledKey];
    bOOLValue4 = [v42 BOOLValue];

    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = @"NO";
        if (bOOLValue3)
        {
          v46 = @"YES";
        }

        else
        {
          v46 = @"NO";
        }

        if (bOOLValue4)
        {
          v45 = @"YES";
        }

        *buf = 138412546;
        v57 = v46;
        v58 = 2112;
        v59 = v45;
        _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "The response was %@ Was it a cancelation/revokation? %@ ", buf, 0x16u);
      }
    }

    [(IMDRelayEnrollmentController *)self setHasBeenRemoteApproved:bOOLValue3];
    serviceDelegate4 = [(IMDRelayEnrollmentController *)self serviceDelegate];
    [serviceDelegate4 updateRelayStatus];

    mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
    uniqueID = [v23 uniqueID];
    [mEMORY[0x277D192D8] removeNotificationsForServiceIdentifier:uniqueID];
  }

  v52 = *MEMORY[0x277D85DE8];
}

@end