@interface IMFMFSession
+ (id)sharedInstance;
- (BOOL)allChatParticipantsFollowingMyLocation:(id)location;
- (BOOL)allChatParticipantsSharingLocationWithMe:(id)me;
- (BOOL)chatHasParticipantsFollowingMyLocation:(id)location;
- (BOOL)chatHasParticipantsSharingLocationWithMe:(id)me;
- (BOOL)chatHasSiblingParticipantsSharingLocationWithMe:(id)me;
- (BOOL)disableLocationSharing;
- (BOOL)findMyHandleIsFollowingMyLocation:(id)location;
- (BOOL)findMyHandleIsSharingLocationWithMe:(id)me;
- (BOOL)handleIsFollowingMyLocation:(id)location;
- (BOOL)handleIsSharingLocationWithMe:(id)me;
- (BOOL)imIsProvisionedForLocationSharing;
- (BOOL)restrictLocationSharing;
- (Class)__FMFSessionClass;
- (Class)__FMLSessionClass;
- (IMFMFSession)init;
- (id)_accountStore;
- (id)_bestAccountForAddresses:(id)addresses;
- (id)_callerIDForChat:(id)chat;
- (id)_dateFromShareDuration:(int64_t)duration;
- (id)allSiblingFindMyHandlesForChat:(id)chat;
- (id)findMyHandlesForChat:(id)chat;
- (id)findMyHandlesSharingLocationWithMe;
- (id)findMyLocationForFindMyHandle:(id)handle;
- (id)findMyLocationForHandle:(id)handle;
- (id)findMyLocationForHandleOrSibling:(id)sibling;
- (id)findMyURLForChat:(id)chat;
- (id)fmfGroupIdGroup;
- (id)fmfGroupIdOneToOne;
- (id)timedOfferExpirationForChat:(id)chat;
- (void)_accountStoreDidChangeNotification:(id)notification;
- (void)_configureFindMyLocateSession;
- (void)_initializeFindMySessionIfInAllowedProcess;
- (void)_postNotification:(id)notification object:(id)object userInfo:(id)info;
- (void)_setUpFindMyLocateSessionCallbacks;
- (void)_startFMLSessionMonitoring;
- (void)_startSharingWithFMFHandles:(id)handles inChat:(id)chat untilDate:(id)date;
- (void)_startSharingWithFMLHandles:(id)handles inChat:(id)chat withDuration:(int64_t)duration;
- (void)_stopSharingWithFMFHandles:(id)handles inChat:(id)chat;
- (void)_stopSharingWithFMLHandles:(id)handles inChat:(id)chat;
- (void)_updateActiveDevice;
- (void)dealloc;
- (void)didChangeActiveLocationSharingDevice:(id)device;
- (void)didReceiveLocation:(id)location;
- (void)didStartAbilityToGetLocationForHandle:(id)handle;
- (void)didStartSharingMyLocationWithHandle:(id)handle;
- (void)didStopAbilityToGetLocationForHandle:(id)handle;
- (void)didStopSharingMyLocationWithHandle:(id)handle;
- (void)friendshipRequestReceived:(id)received;
- (void)friendshipWasRemoved:(id)removed;
- (void)makeThisDeviceActiveDevice;
- (void)refreshLocationForChat:(id)chat;
- (void)refreshLocationForHandle:(id)handle inChat:(id)chat;
- (void)sendMappingPacket:(id)packet toHandle:(id)handle;
- (void)startSharingWithChat:(id)chat withDuration:(int64_t)duration;
- (void)startSharingWithHandle:(id)handle inChat:(id)chat withDuration:(int64_t)duration;
- (void)startTrackingLocationForChat:(id)chat;
- (void)startTrackingLocationForHandle:(id)handle;
- (void)stopSharingWithChat:(id)chat;
- (void)stopSharingWithHandle:(id)handle inChat:(id)chat;
- (void)stopTrackingLocationForChat:(id)chat;
- (void)stopTrackingLocationForHandle:(id)handle;
@end

@implementation IMFMFSession

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, 0, 0);

  v6.receiver = self;
  v6.super_class = IMFMFSession;
  [(IMFMFSession *)&v6 dealloc];
}

- (IMFMFSession)init
{
  v7.receiver = self;
  v7.super_class = IMFMFSession;
  v2 = [(IMFMFSession *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend__initializeFindMySessionIfInAllowedProcess(v2, v3, v4);
  }

  return v5;
}

- (void)_initializeFindMySessionIfInAllowedProcess
{
  IsLockedDown = objc_msgSend_deviceIsLockedDown(MEMORY[0x1E69A8020], a2, v2);
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isWaldoEnabled = objc_msgSend_isWaldoEnabled(v7, v8, v9);

  if (IMIsRunningInImagent())
  {
    v13 = 1;
    if (IsLockedDown)
    {
LABEL_13:
      v28 = IMLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2C38();
      }

LABEL_15:

      return;
    }
  }

  else
  {
    v13 = IMIsRunningInMessagesUIProcess();
    if (IsLockedDown)
    {
      goto LABEL_13;
    }
  }

  if (((isWaldoEnabled ^ 1 | v13) & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v11, v12);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v14, v15, v16);

  v18 = IMOSLoggingEnabled();
  if (SessionEnabled)
  {
    if (v18)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "FindMyLocateSession is enabled. Attempting to configure the session.", buf, 2u);
      }
    }

    v22 = objc_msgSend___FMLSessionClass(self, v19, v20);
    if (v22)
    {
      v23 = objc_alloc_init(v22);
      fmlSession = self->_fmlSession;
      self->_fmlSession = v23;

      objc_msgSend_setFmfProvisionedState_(self, v25, 0);
      objc_msgSend__configureFindMyLocateSession(self, v26, v27);
      return;
    }

    v28 = IMLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2C6C();
    }

    goto LABEL_15;
  }

  if (v18)
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *v43 = 0;
      _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "FindMyLocateSession is disabled. Attempting to configure the legacy FMFSession.", v43, 2u);
    }
  }

  v30 = objc_msgSend___FMFSessionClass(self, v19, v20);
  if (v30)
  {
    v31 = [v30 alloc];
    v33 = objc_msgSend_initWithDelegate_(v31, v32, self);
    session = self->_session;
    self->_session = v33;

    v35 = self->_session;
    v38 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v36, v37);
    objc_msgSend_setDelegateQueue_(v35, v39, v38);

    objc_msgSend__updateActiveDevice(self, v40, v41);
    objc_msgSend_setFmfProvisionedState_(self, v42, 0);
  }
}

- (void)_configureFindMyLocateSession
{
  objc_msgSend__setUpFindMyLocateSessionCallbacks(self, a2, v2);

  MEMORY[0x1EEE66B58](self, sel__startFMLSessionMonitoring, v4);
}

- (void)_setUpFindMyLocateSessionCallbacks
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v4, v5, v6);

  if (SessionEnabled)
  {
    objc_initWeak(&location, self);
    v10 = objc_msgSend_fmlSession(self, v8, v9);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v14 = objc_msgSend_fmlSession(self, v12, v13);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = sub_1A83ACCC8;
      v39[3] = &unk_1E78142C0;
      objc_copyWeak(&v40, &location);
      objc_msgSend_setLocationUpdateCallback_(v14, v15, v39);

      objc_destroyWeak(&v40);
    }

    else
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2CA0();
      }
    }

    v19 = objc_msgSend_fmlSession(self, v16, v17);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v23 = objc_msgSend_fmlSession(self, v21, v22);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = sub_1A83ACDF0;
      v37[3] = &unk_1E7814310;
      objc_copyWeak(&v38, &location);
      objc_msgSend_setFriendshipUpdateCallback_(v23, v24, v37);

      objc_destroyWeak(&v38);
    }

    else
    {
      v27 = IMLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2CD4();
      }
    }

    v28 = objc_msgSend_fmlSession(self, v25, v26);
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v32 = objc_msgSend_fmlSession(self, v30, v31);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_1A83AD040;
      v35[3] = &unk_1E7814338;
      objc_copyWeak(&v36, &location);
      objc_msgSend_setMeDeviceUpdateCallback_(v32, v33, v35);

      objc_destroyWeak(&v36);
    }

    else
    {
      v34 = IMLogHandleForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2D08();
      }
    }

    objc_destroyWeak(&location);
  }
}

- (void)_startFMLSessionMonitoring
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v4, v5, v6);

  if (SessionEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "_startFMLSessionMonitoring: kicking off initial updates.", buf, 2u);
      }
    }

    v11 = objc_msgSend_fmlSession(self, v8, v9);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v15 = objc_msgSend_fmlSession(self, v13, v14);
      objc_msgSend_startUpdatingFriendsWithInitialUpdates_completion_(v15, v16, 0, &unk_1F1B6F560);
    }

    else
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2DB4();
      }
    }

    v19 = objc_msgSend_fmlSession(self, v17, v18);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v23 = objc_msgSend_fmlSession(self, v21, v22);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = sub_1A83AD5F4;
      v42[3] = &unk_1E7814380;
      v42[4] = self;
      objc_msgSend_getFriendsSharingLocationsWithMeWithCompletion_(v23, v24, v42);
    }

    else
    {
      v23 = IMLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2DE8();
      }
    }

    v27 = objc_msgSend_fmlSession(self, v25, v26);
    v28 = objc_opt_respondsToSelector();

    if (v28)
    {
      v31 = objc_msgSend_fmlSession(self, v29, v30);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_1A83AD7D0;
      v41[3] = &unk_1E7814380;
      v41[4] = self;
      objc_msgSend_getFriendsFollowingMyLocationWithCompletion_(v31, v32, v41);
    }

    else
    {
      v31 = IMLogHandleForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2DE8();
      }
    }

    v35 = objc_msgSend_fmlSession(self, v33, v34);
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      v39 = objc_msgSend_fmlSession(self, v37, v38);
      objc_msgSend_startMonitoringActiveLocationSharingDeviceChangeWithCompletion_(v39, v40, &unk_1F1B6F580);
    }

    else
    {
      v39 = IMLogHandleForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2E1C();
      }
    }
  }
}

+ (id)sharedInstance
{
  if (qword_1ED767968 != -1)
  {
    sub_1A84E2F30();
  }

  v3 = qword_1ED767908;

  return v3;
}

- (BOOL)restrictLocationSharing
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v4, v5, v6);

  if (!SessionEnabled)
  {
    v10 = objc_msgSend___FMFSessionClass(self, v8, v9);
    if (v10)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v10 = objc_msgSend___FMLSessionClass(self, v8, v9);
  if (!v10)
  {
    return 0;
  }

LABEL_3:

  return MEMORY[0x1EEE66B58](v10, sel_FMFRestricted, v11);
}

- (BOOL)disableLocationSharing
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v4, v5, v6);

  if (!SessionEnabled)
  {
    v14 = objc_msgSend___FMFSessionClass(self, v8, v9);
    if (v14)
    {
      if (!objc_msgSend_FMFAllowed(v14, v11, v12))
      {
        goto LABEL_4;
      }

LABEL_7:
      v13 = objc_msgSend_imIsProvisionedForLocationSharing(self, v11, v12) ^ 1;
      return (v13 | objc_msgSend_deviceIsLockedDown(MEMORY[0x1E69A8020], v11, v12)) & 1;
    }

LABEL_8:
    LOBYTE(v13) = 0;
    return (v13 | objc_msgSend_deviceIsLockedDown(MEMORY[0x1E69A8020], v11, v12)) & 1;
  }

  v10 = objc_msgSend___FMLSessionClass(self, v8, v9);
  if (!v10)
  {
    goto LABEL_8;
  }

  if (objc_msgSend_FMFAllowed(v10, v11, v12))
  {
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v13) = 1;
  return (v13 | objc_msgSend_deviceIsLockedDown(MEMORY[0x1E69A8020], v11, v12)) & 1;
}

- (BOOL)imIsProvisionedForLocationSharing
{
  v33 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_fmfProvisionedState(self, a2, v2))
  {
    v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
    objc_msgSend_removeObserver_(v6, v7, self);

    v10 = objc_msgSend__accountStore(self, v8, v9);
    v14 = objc_msgSend_aa_primaryAppleAccountWithPreloadedDataclasses(v10, v11, v12);
    if (v14)
    {
      v16 = *MEMORY[0x1AC56C560]("ACAccountDataclassShareLocation", @"Accounts");
      if (v16)
      {
        if (objc_msgSend_isProvisionedForDataclass_(v14, v15, v16))
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            LOWORD(v29) = 0;
            _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "IMFMFSession - Failed to weak link ACAccountDataclassShareLocation", &v29, 2u);
          }
        }

        v17 = 1;
      }

      objc_msgSend_setFmfProvisionedState_(self, v19, v17);
    }

    else
    {
      v17 = 1;
      objc_msgSend_setFmfProvisionedState_(self, v13, 1);
    }

    v22 = *MEMORY[0x1AC56C560]("ACAccountStoreDidChangeNotification", @"Accounts");
    if (v22)
    {
      v23 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v20, v21);
      objc_msgSend_addObserver_selector_name_object_(v23, v24, self, sel__accountStoreDidChangeNotification_, v22, 0);
    }

    else if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "IMFMFSession - Failed to weak link ACAccountStoreDidChangeNotification", &v29, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v29 = 136315394;
        v30 = "[IMFMFSession imIsProvisionedForLocationSharing]";
        v31 = 2048;
        v32 = v17;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "%s provisioned state generated is %lu", &v29, 0x16u);
      }
    }
  }

  result = objc_msgSend_fmfProvisionedState(self, v4, v5) == 1;
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_accountStore
{
  if (qword_1EB2E9D58 != -1)
  {
    sub_1A84E2F44();
  }

  v3 = qword_1EB2E9D60;

  return v3;
}

- (void)_accountStoreDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Account store did change, invalidating FMF provision state", v7, 2u);
    }
  }

  objc_msgSend_setFmfProvisionedState_(self, v5, 0);
}

- (id)findMyHandlesForChat:(id)chat
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_participants(chat, a2, chat);
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_initWithCapacity_(v4, v8, v7);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = objc_msgSend_ID(*(*(&v24 + 1) + 8 * i), v13, v14, v24);
        v20 = objc_msgSend_handleWithIdentifier_(IMFindMyHandle, v19, v18);

        if (v20)
        {
          objc_msgSend_addObject_(v9, v21, v20);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v24, v28, 16);
    }

    while (v15);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)findMyURLForChat:(id)chat
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_findMyHandlesForChat_(self, a2, chat);
  v4 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v35, v39, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = objc_msgSend_fmfHandle(v13, v8, v9);

        if (v14)
        {
          v15 = objc_msgSend_fmfHandle(v13, v8, v9);
          v18 = objc_msgSend_identifier(v15, v16, v17);
          objc_msgSend_addObject_(v4, v19, v18);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v35, v39, 16);
    }

    while (v10);
  }

  if (objc_msgSend_count(v4, v20, v21))
  {
    v24 = objc_msgSend_componentsJoinedByString_(v4, v22, @",");
  }

  else
  {
    v24 = &stru_1F1B76F98;
  }

  v25 = MEMORY[0x1E696AEC0];
  v26 = objc_msgSend_URLPathAllowedCharacterSet(MEMORY[0x1E696AB08], v22, v23);
  v28 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v24, v27, v26);
  v30 = objc_msgSend_stringWithFormat_(v25, v29, @"findmy://fr/%@", v28);

  v32 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v31, v30);

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)allSiblingFindMyHandlesForChat:(id)chat
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_participants(chat, a2, chat);
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_initWithCapacity_(v4, v8, v7);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v22, v26, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = objc_msgSend_findMySiblingHandles(*(*(&v22 + 1) + 8 * i), v13, v14, v22);
        objc_msgSend_unionSet_(v9, v19, v18);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v22, v26, 16);
    }

    while (v15);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)sendMappingPacket:(id)packet toHandle:(id)handle
{
  v27 = *MEMORY[0x1E69E9840];
  packetCopy = packet;
  handleCopy = handle;
  v8 = IMLocationLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = packetCopy;
    v25 = 2112;
    v26 = handleCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Forwarding mapping packet: %@ to daemon for ID: %@", &v23, 0x16u);
  }

  v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
  v14 = objc_msgSend_remoteDaemon(v11, v12, v13);
  v17 = objc_msgSend_identifier(handleCopy, v15, v16);
  v20 = objc_msgSend_establishingAccountID(self, v18, v19);
  objc_msgSend_sendMappingPacket_toHandle_account_(v14, v21, packetCopy, v17, v20);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)startTrackingLocationForHandle:(id)handle
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_findMyHandle(handle, a2, handle);
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v7, v8, v9);

  if (SessionEnabled)
  {
    v13 = objc_msgSend_fmlHandle(v4, v11, v12);

    if (v13)
    {
      v16 = objc_msgSend_fmlHandle(v4, v14, v15);
      v32[0] = v16;
      v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, v32, 1);
      objc_msgSend__startRefreshingLocationForFMLHandles_priority_isFromGroup_(self, v19, v18, 0, 0);
    }
  }

  else
  {
    v20 = objc_msgSend_fmfHandle(v4, v11, v12);

    if (v20)
    {
      v23 = objc_msgSend_session(self, v21, v22);
      v24 = MEMORY[0x1E695DFD8];
      v27 = objc_msgSend_fmfHandle(v4, v25, v26);
      v29 = objc_msgSend_setWithObjects_(v24, v28, v27, 0);
      objc_msgSend_addHandles_(v23, v30, v29);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)startTrackingLocationForChat:(id)chat
{
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v32 = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "", v32, 2u);
    }
  }

  v7 = objc_msgSend_allSiblingFindMyHandlesForChat_(self, v5, chatCopy);
  v10 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v8, v9);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v10, v11, v12);

  if (SessionEnabled)
  {
    v16 = objc_msgSend___im_fmlHandles(v7, v14, v15);
    v19 = objc_msgSend_chatStyle(chatCopy, v17, v18);
    if (objc_msgSend_count(v16, v20, v21))
    {
      v24 = v19 != 45;
      v25 = objc_msgSend_allObjects(v16, v22, v23);
      objc_msgSend__startRefreshingLocationForFMLHandles_priority_isFromGroup_(self, v26, v25, 0, v24);
LABEL_10:
    }
  }

  else
  {
    v16 = objc_msgSend___im_fmfHandles(v7, v14, v15);
    if (objc_msgSend_count(v16, v27, v28))
    {
      v25 = objc_msgSend_session(self, v29, v30);
      objc_msgSend_addHandles_(v25, v31, v16);
      goto LABEL_10;
    }
  }
}

- (void)stopTrackingLocationForHandle:(id)handle
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_findMyHandle(handle, a2, handle);
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v7, v8, v9);

  if (SessionEnabled)
  {
    v13 = objc_msgSend_fmlHandle(v4, v11, v12);

    if (v13)
    {
      v16 = objc_msgSend_fmlHandle(v4, v14, v15);
      v32[0] = v16;
      v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, v32, 1);
      objc_msgSend__stopTrackingLocationForFMLHandles_priority_isFromGroup_(self, v19, v18, 0, 0);
    }
  }

  else
  {
    v20 = objc_msgSend_fmfHandle(v4, v11, v12);

    if (v20)
    {
      v23 = objc_msgSend_session(self, v21, v22);
      v24 = MEMORY[0x1E695DFD8];
      v27 = objc_msgSend_fmfHandle(v4, v25, v26);
      v29 = objc_msgSend_setWithObjects_(v24, v28, v27, 0);
      objc_msgSend_removeHandles_(v23, v30, v29);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)stopTrackingLocationForChat:(id)chat
{
  chatCopy = chat;
  v5 = objc_msgSend_allSiblingFindMyHandlesForChat_(self, v4, chatCopy);
  v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v6, v7);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v8, v9, v10);

  if (!SessionEnabled)
  {
    v14 = objc_msgSend___im_fmfHandles(v5, v12, v13);
    if (!objc_msgSend_count(v14, v29, v30))
    {
      goto LABEL_8;
    }

    v27 = objc_msgSend_session(self, v31, v32);
    objc_msgSend_removeHandles_(v27, v33, v14);
    goto LABEL_7;
  }

  v14 = objc_msgSend___im_fmlHandles(v5, v12, v13);
  v17 = objc_msgSend_chatStyle(chatCopy, v15, v16);
  if (objc_msgSend_count(v14, v18, v19))
  {
    v22 = objc_msgSend_fmlSession(self, v20, v21);
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v26 = v17 != 45;
      v27 = objc_msgSend_allObjects(v14, v24, v25);
      objc_msgSend__stopTrackingLocationForFMLHandles_priority_isFromGroup_(self, v28, v27, 0, v26);
LABEL_7:
    }
  }

LABEL_8:
}

- (id)_dateFromShareDuration:(int64_t)duration
{
  if (duration == 1)
  {
    v4 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], a2, 1);
    v7 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
    v3 = objc_msgSend_nextDateAfterDate_matchingUnit_value_options_(v4, v8, v7, 32, 4, 1024);
  }

  else if (duration)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], a2, 0, 3600.0);
  }

  return v3;
}

- (void)startSharingWithHandle:(id)handle inChat:(id)chat withDuration:(int64_t)duration
{
  handleCopy = handle;
  v8 = MEMORY[0x1E69A8070];
  chatCopy = chat;
  v12 = objc_msgSend_sharedFeatureFlags(v8, v10, v11);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v12, v13, v14);

  if (SessionEnabled)
  {
    v18 = objc_msgSend_findMyHandle(handleCopy, v16, v17);
    v21 = objc_msgSend_fmlHandle(v18, v19, v20);

    if (v21)
    {
      objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v22, v21);
    }

    else
    {
      objc_msgSend_set(MEMORY[0x1E695DFD8], v22, v23);
    }
    v29 = ;
    objc_msgSend__startSharingWithFMLHandles_inChat_withDuration_(self, v32, v29, chatCopy, duration);
  }

  else
  {
    v21 = objc_msgSend__dateFromShareDuration_(self, v16, duration);
    v26 = objc_msgSend_findMyHandle(handleCopy, v24, v25);
    v29 = objc_msgSend_fmfHandle(v26, v27, v28);

    if (v29)
    {
      objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v30, v29);
    }

    else
    {
      objc_msgSend_set(MEMORY[0x1E695DFD8], v30, v31);
    }
    v33 = ;
    objc_msgSend__startSharingWithFMFHandles_inChat_untilDate_(self, v34, v33, chatCopy, v21);

    chatCopy = v33;
  }
}

- (void)stopSharingWithHandle:(id)handle inChat:(id)chat
{
  v28[1] = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v7 = MEMORY[0x1E69A8070];
  handleCopy = handle;
  v11 = objc_msgSend_sharedFeatureFlags(v7, v9, v10);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v11, v12, v13);

  v17 = objc_msgSend_findMyHandle(handleCopy, v15, v16);

  if (SessionEnabled)
  {
    v20 = objc_msgSend_fmlHandle(v17, v18, v19);

    if (v20)
    {
      v28[0] = v20;
      v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v28, 1);
      objc_msgSend__stopSharingWithFMLHandles_inChat_(self, v23, v22, chatCopy);
    }

    else
    {
      v22 = MEMORY[0x1E695E0F0];
      objc_msgSend__stopSharingWithFMLHandles_inChat_(self, v21, MEMORY[0x1E695E0F0], chatCopy);
    }
  }

  else
  {
    v20 = objc_msgSend_fmfHandle(v17, v18, v19);

    if (v20)
    {
      objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v24, v20);
    }

    else
    {
      objc_msgSend_set(MEMORY[0x1E695DFD8], v24, v25);
    }
    v22 = ;
    objc_msgSend__stopSharingWithFMFHandles_inChat_(self, v26, v22, chatCopy);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)startSharingWithChat:(id)chat withDuration:(int64_t)duration
{
  chatCopy = chat;
  v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v6, v7);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v8, v9, v10);

  v13 = objc_msgSend_findMyHandlesForChat_(self, v12, chatCopy);
  v16 = v13;
  if (SessionEnabled)
  {
    v17 = objc_msgSend___im_fmlHandles(v13, v14, v15);

    objc_msgSend__startSharingWithFMLHandles_inChat_withDuration_(self, v18, v17, chatCopy, duration);
  }

  else
  {
    v17 = objc_msgSend___im_fmfHandles(v13, v14, v15);

    if (objc_msgSend_count(v17, v19, v20))
    {
      v22 = objc_msgSend__dateFromShareDuration_(self, v21, duration);
      objc_msgSend__startSharingWithFMFHandles_inChat_untilDate_(self, v23, v17, chatCopy, v22);
    }
  }
}

- (void)stopSharingWithChat:(id)chat
{
  chatCopy = chat;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v6, v7, v8);

  v11 = objc_msgSend_allSiblingFindMyHandlesForChat_(self, v10, chatCopy);
  v14 = v11;
  if (SessionEnabled)
  {
    v15 = objc_msgSend___im_fmlHandles(v11, v12, v13);

    v18 = objc_msgSend_allObjects(v15, v16, v17);
    objc_msgSend__stopSharingWithFMLHandles_inChat_(self, v19, v18, chatCopy);
  }

  else
  {
    v15 = objc_msgSend___im_fmfHandles(v11, v12, v13);

    if (objc_msgSend_count(v15, v20, v21))
    {
      objc_msgSend__stopSharingWithFMFHandles_inChat_(self, v22, v15, chatCopy);
    }
  }
}

- (id)findMyLocationForHandle:(id)handle
{
  v4 = objc_msgSend_findMyHandle(handle, a2, handle);
  v6 = objc_msgSend_findMyLocationForFindMyHandle_(self, v5, v4);

  return v6;
}

- (id)findMyLocationForFindMyHandle:(id)handle
{
  handleCopy = handle;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v7, v8, v9);

  if (SessionEnabled)
  {
    v13 = objc_msgSend_fmlHandle(handleCopy, v11, v12);

    if (v13)
    {
      v16 = objc_msgSend_fmlSession(self, v14, v15);
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        v20 = objc_msgSend_fmlSession(self, v18, v19);
        v23 = objc_msgSend_fmlHandle(handleCopy, v21, v22);
        v25 = objc_msgSend_cachedLocationForHandle_(v20, v24, v23);

        if (v25)
        {
          v27 = objc_msgSend_locationWithFMLLocation_(IMFindMyLocation, v26, v25);
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_17;
      }

      v38 = IMLogHandleForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E30B8();
      }
    }

    else
    {
      v38 = IMLogHandleForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E30EC();
      }
    }
  }

  else
  {
    v28 = objc_msgSend_fmfHandle(handleCopy, v11, v12);

    if (v28)
    {
      v31 = objc_msgSend_session(self, v29, v30);
      v34 = objc_msgSend_fmfHandle(handleCopy, v32, v33);
      v36 = objc_msgSend_cachedLocationForHandle_(v31, v35, v34);
      v27 = objc_msgSend_locationWithFMFLocation_(IMFindMyLocation, v37, v36);

      goto LABEL_17;
    }

    v38 = IMLogHandleForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3084();
    }
  }

  v27 = 0;
LABEL_17:

  return v27;
}

- (id)findMyLocationForHandleOrSibling:(id)sibling
{
  v89 = *MEMORY[0x1E69E9840];
  siblingCopy = sibling;
  v7 = objc_msgSend_findMyHandlesSharingLocationWithMe(self, v5, v6);
  v9 = objc_msgSend_cnContactWithKeys_(siblingCopy, v8, MEMORY[0x1E695E0F0]);
  v11 = v9;
  if (!v9)
  {
    v63 = objc_msgSend_findMyLocationForHandle_(self, v10, siblingCopy);
    v66 = objc_msgSend_fmfLocation(v63, v64, v65);
    v69 = objc_msgSend_location(v66, v67, v68);
    if (v69)
    {
    }

    else
    {
      v72 = objc_msgSend_fmlLocation(v63, v70, v71);

      if (!v72)
      {
        v37 = 0;
        goto LABEL_40;
      }
    }

    v37 = v63;
LABEL_40:

    goto LABEL_41;
  }

  v75 = siblingCopy;
  v76 = v9;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = objc_msgSend_phoneNumbersForCNContact_(MEMORY[0x1E69A7FD0], v10, v9);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v83, v88, 16);
  selfCopy = self;
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = *v84;
  v16 = 0x1E780D000uLL;
  do
  {
    v17 = 0;
    do
    {
      if (*v84 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v83 + 1) + 8 * v17);
      v19 = IMInternationalForPhoneNumberWithOptions();
      v21 = objc_msgSend_handleWithIdentifier_(*(v16 + 2512), v20, v19);
      if ((objc_msgSend_containsObject_(v7, v22, v21) & 1) == 0)
      {

        goto LABEL_14;
      }

      v24 = v7;
      v25 = v16;
      v26 = objc_msgSend_findMyLocationForFindMyHandle_(self, v23, v21);
      v29 = objc_msgSend_fmfLocation(v26, v27, v28);
      v32 = objc_msgSend_location(v29, v30, v31);
      if (v32)
      {

LABEL_12:
        v37 = v26;
        goto LABEL_13;
      }

      v36 = objc_msgSend_fmlLocation(v26, v33, v34);

      if (v36)
      {
        goto LABEL_12;
      }

      v37 = 0;
LABEL_13:

      self = selfCopy;
      v16 = v25;
      v7 = v24;
      if (v37)
      {
        goto LABEL_35;
      }

LABEL_14:
      ++v17;
    }

    while (v14 != v17);
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v83, v88, 16);
    v14 = v38;
  }

  while (v38);
LABEL_18:

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = objc_msgSend_emailsForCNContact_(MEMORY[0x1E69A7FD0], v39, v76);
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v79, v87, 16);
  if (!v41)
  {
    goto LABEL_34;
  }

  v44 = v41;
  v45 = *v80;
  while (2)
  {
    v46 = 0;
    while (2)
    {
      if (*v80 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v47 = objc_msgSend_lowercaseString(*(*(&v79 + 1) + 8 * v46), v42, v43);
      v49 = objc_msgSend_handleWithIdentifier_(IMFindMyHandle, v48, v47);
      if (objc_msgSend_containsObject_(v7, v50, v49))
      {
        v52 = objc_msgSend_findMyLocationForFindMyHandle_(self, v51, v49);
        v55 = objc_msgSend_fmfLocation(v52, v53, v54);
        v58 = objc_msgSend_location(v55, v56, v57);
        if (v58)
        {

          goto LABEL_28;
        }

        v61 = objc_msgSend_fmlLocation(v52, v59, v60);

        if (v61)
        {
LABEL_28:
          v37 = v52;
        }

        else
        {
          v37 = 0;
        }

        self = selfCopy;
        if (v37)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      if (v44 != ++v46)
      {
        continue;
      }

      break;
    }

    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v79, v87, 16);
    v44 = v62;
    if (v62)
    {
      continue;
    }

    break;
  }

LABEL_34:
  v37 = 0;
LABEL_35:

  siblingCopy = v75;
  v11 = v76;
LABEL_41:

  v73 = *MEMORY[0x1E69E9840];

  return v37;
}

- (void)refreshLocationForHandle:(id)handle inChat:(id)chat
{
  handleCopy = handle;
  chatCopy = chat;
  v10 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v8, v9);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v10, v11, v12);

  if ((SessionEnabled & 1) == 0)
  {
    v15 = objc_msgSend__callerIDForChat_(self, v14, chatCopy);
    v20 = objc_msgSend_fmfHandle(handleCopy, v16, v17);
    if (v20)
    {
      v21 = MEMORY[0x1E695DFD8];
      v22 = objc_msgSend_fmfHandle(handleCopy, v18, v19);
      v24 = objc_msgSend_setWithObject_(v21, v23, v22);

      v27 = objc_msgSend_session(self, v25, v26);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1A83AFFF8;
      v30[3] = &unk_1E78143D0;
      v31 = v24;
      v32 = v15;
      selfCopy = self;
      v34 = handleCopy;
      v28 = v24;
      objc_msgSend_refreshLocationForHandles_callerId_priority_completion_(v27, v29, v28, v32, 1, v30);
    }

    else
    {
      v28 = IMLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E3120();
      }
    }
  }
}

- (void)refreshLocationForChat:(id)chat
{
  chatCopy = chat;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v7, v8, v9);

  if ((SessionEnabled & 1) == 0)
  {
    v12 = objc_msgSend__callerIDForChat_(self, v11, chatCopy);
    v15 = objc_msgSend_allSiblingFindMyHandles(chatCopy, v13, v14);
    v18 = objc_msgSend___im_fmfHandles(v15, v16, v17);

    v21 = objc_msgSend_session(self, v19, v20);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1A83B0228;
    v25[3] = &unk_1E78143D0;
    v26 = v18;
    v27 = v12;
    selfCopy = self;
    v29 = chatCopy;
    v22 = v12;
    v23 = v18;
    objc_msgSend_refreshLocationForHandles_callerId_priority_completion_(v21, v24, v23, v22, 1, v25);
  }
}

- (BOOL)handleIsSharingLocationWithMe:(id)me
{
  v4 = objc_msgSend_findMyHandle(me, a2, me);
  LOBYTE(self) = objc_msgSend_findMyHandleIsSharingLocationWithMe_(self, v5, v4);

  return self;
}

- (id)findMyHandlesSharingLocationWithMe
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v4, v5, v6);

  if (SessionEnabled)
  {
    v10 = objc_msgSend_array(MEMORY[0x1E695DEC8], v8, v9);
    v13 = objc_msgSend_fmlSession(self, v11, v12);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v17 = objc_msgSend_fmlSession(self, v15, v16);
      v20 = objc_msgSend_cachedFriendsSharingLocationsWithMe(v17, v18, v19);
      v23 = v20;
      if (v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = objc_msgSend_array(MEMORY[0x1E695DEC8], v21, v22);
      }

      v35 = v24;

      v10 = v35;
    }

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v15, v10);
    v34 = objc_msgSend___im_findMyHandlesWithFMLFriends_(v36, v38, v37);
  }

  else
  {
    v25 = objc_msgSend_session(self, v8, v9);
    v28 = objc_msgSend_getHandlesSharingLocationsWithMe(v25, v26, v27);
    v31 = v28;
    if (v28)
    {
      v32 = v28;
    }

    else
    {
      v32 = objc_msgSend_set(MEMORY[0x1E695DFD8], v29, v30);
    }

    v10 = v32;

    v34 = objc_msgSend___im_findMyHandlesWithFMFHandles_(MEMORY[0x1E695DFD8], v33, v10);
  }

  return v34;
}

- (BOOL)findMyHandleIsSharingLocationWithMe:(id)me
{
  if (!me)
  {
    return 0;
  }

  meCopy = me;
  v7 = objc_msgSend_findMyHandlesSharingLocationWithMe(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v7, v8, meCopy);

  return v9;
}

- (BOOL)chatHasParticipantsSharingLocationWithMe:(id)me
{
  v23 = *MEMORY[0x1E69E9840];
  meCopy = me;
  v7 = objc_msgSend_findMyHandlesSharingLocationWithMe(self, v5, v6);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = objc_msgSend_findMyHandles(meCopy, v8, v9, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v18, v22, 16);
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v10);
        }

        if (objc_msgSend_containsObject_(v7, v12, *(*(&v18 + 1) + 8 * i)))
        {
          LOBYTE(v13) = 1;
          goto LABEL_11;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v18, v22, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)chatHasSiblingParticipantsSharingLocationWithMe:(id)me
{
  v23 = *MEMORY[0x1E69E9840];
  meCopy = me;
  v7 = objc_msgSend_findMyHandlesSharingLocationWithMe(self, v5, v6);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = objc_msgSend_allSiblingFindMyHandles(meCopy, v8, v9, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v18, v22, 16);
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v10);
        }

        if (objc_msgSend_containsObject_(v7, v12, *(*(&v18 + 1) + 8 * i)))
        {
          LOBYTE(v13) = 1;
          goto LABEL_11;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v18, v22, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)allChatParticipantsSharingLocationWithMe:(id)me
{
  v25 = *MEMORY[0x1E69E9840];
  meCopy = me;
  v7 = objc_msgSend_findMyHandlesSharingLocationWithMe(self, v5, v6);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = objc_msgSend_findMyHandles(meCopy, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v24, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v10);
        }

        if (!objc_msgSend_containsObject_(v7, v13, *(*(&v20 + 1) + 8 * i)))
        {
          v17 = 0;
          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v20, v24, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)handleIsFollowingMyLocation:(id)location
{
  v4 = objc_msgSend_findMyHandle(location, a2, location);
  LOBYTE(self) = objc_msgSend_findMyHandleIsFollowingMyLocation_(self, v5, v4);

  return self;
}

- (BOOL)findMyHandleIsFollowingMyLocation:(id)location
{
  locationCopy = location;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v7, v8, v9);

  if (!SessionEnabled)
  {
    v26 = objc_msgSend_session(self, v11, v12);
    v23 = objc_msgSend_getHandlesFollowingMyLocation(v26, v27, v28);

    v33 = objc_msgSend_fmfHandle(locationCopy, v29, v30);
    if (v33)
    {
      v34 = objc_msgSend_fmfHandle(locationCopy, v31, v32);
      v36 = objc_msgSend_containsObject_(v23, v35, v34);
    }

    else
    {
      v36 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (locationCopy)
  {
    v13 = objc_msgSend_fmlSession(self, v11, v12);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v17 = MEMORY[0x1E695DFD8];
      v18 = objc_msgSend_fmlSession(self, v15, v16);
      v21 = objc_msgSend_cachedFriendsFollowingMyLocation(v18, v19, v20);
      v23 = objc_msgSend_setWithArray_(v17, v22, v21);

      if (v23)
      {
        objc_msgSend___im_findMyHandlesWithFMLFriends_(MEMORY[0x1E695DFD8], v24, v23);
      }

      else
      {
        objc_msgSend_set(MEMORY[0x1E695DFD8], v24, v25);
      }
      v33 = ;
      v36 = objc_msgSend_containsObject_(v33, v37, locationCopy);
      goto LABEL_12;
    }
  }

  v36 = 0;
LABEL_13:

  return v36;
}

- (BOOL)chatHasParticipantsFollowingMyLocation:(id)location
{
  v62 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v9 = objc_msgSend_chatStyle(locationCopy, v5, v6);
  if (v9 == 45)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_fmfGroupIdGroup(self, v7, v8);
  }

  v11 = objc_msgSend__callerIDForChat_(self, v7, locationCopy);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = objc_msgSend_participants(locationCopy, v12, v13);
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v56, v61, 16);
  if (v49)
  {
    v50 = *v57;
    v47 = locationCopy;
    v48 = v11;
    while (2)
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v57 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v56 + 1) + 8 * i);
        v19 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v15, v16);
        SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v19, v20, v21);

        if (SessionEnabled)
        {
          v25 = v10;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v26 = objc_msgSend_findMySiblingHandles(v18, v23, v24);
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v52, v60, 16);
          if (v28)
          {
            v31 = v28;
            v32 = *v53;
            while (2)
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v53 != v32)
                {
                  objc_enumerationMutation(v26);
                }

                v34 = objc_msgSend_fmlHandle(*(*(&v52 + 1) + 8 * j), v29, v30);
                v36 = objc_msgSend__canShareLocationWithFMLHandle_isFromGroup_(self, v35, v34, v9 != 45);

                if (v36)
                {

                  v44 = 1;
                  v10 = v25;
                  locationCopy = v47;
                  v11 = v48;
                  goto LABEL_26;
                }
              }

              v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v52, v60, 16);
              if (v31)
              {
                continue;
              }

              break;
            }
          }

          v10 = v25;
          v11 = v48;
        }

        else
        {
          v37 = objc_msgSend_findMyHandle(v18, v23, v24);
          v40 = objc_msgSend_fmfHandle(v37, v38, v39);

          if (v40)
          {
            v41 = objc_msgSend_session(self, v15, v16);
            canShareLocationWithHandle_groupId_callerId = objc_msgSend_canShareLocationWithHandle_groupId_callerId_(v41, v42, v40, v10, v11);

            if (canShareLocationWithHandle_groupId_callerId)
            {
              v44 = 1;
              locationCopy = v47;
              goto LABEL_26;
            }
          }
        }
      }

      v44 = 0;
      locationCopy = v47;
      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v56, v61, 16);
      if (v49)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v44 = 0;
  }

LABEL_26:

  v45 = *MEMORY[0x1E69E9840];
  return v44;
}

- (BOOL)allChatParticipantsFollowingMyLocation:(id)location
{
  v65 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v9 = objc_msgSend_chatStyle(locationCopy, v5, v6);
  if (v9 == 45)
  {
    v53 = 0;
  }

  else
  {
    v53 = objc_msgSend_fmfGroupIdGroup(self, v7, v8);
  }

  v52 = objc_msgSend__callerIDForChat_(self, v7, locationCopy);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = objc_msgSend_participants(locationCopy, v10, v11);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v59, v64, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v60;
    v18 = 0x1E69A8000uLL;
    v50 = locationCopy;
    while (2)
    {
      v19 = 0;
      v51 = v16;
      do
      {
        if (*v60 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v59 + 1) + 8 * v19);
        v21 = objc_msgSend_sharedFeatureFlags(*(v18 + 112), v14, v15);
        SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v21, v22, v23);

        if (SessionEnabled)
        {
          v27 = v17;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v28 = objc_msgSend_findMySiblingHandles(v20, v25, v26);
          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v55, v63, 16);
          if (v30)
          {
            v33 = v30;
            v34 = *v56;
            while (2)
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v56 != v34)
                {
                  objc_enumerationMutation(v28);
                }

                v36 = objc_msgSend_fmlHandle(*(*(&v55 + 1) + 8 * i), v31, v32);
                v38 = objc_msgSend__canShareLocationWithFMLHandle_isFromGroup_(self, v37, v36, v9 != 45);

                if (v38)
                {

                  v17 = v27;
                  v18 = 0x1E69A8000;
                  v16 = v51;
                  goto LABEL_23;
                }
              }

              v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v55, v63, 16);
              if (v33)
              {
                continue;
              }

              break;
            }
          }

LABEL_28:
          LOBYTE(v42) = 0;
LABEL_29:
          locationCopy = v50;
          goto LABEL_30;
        }

        v39 = objc_msgSend_findMyHandle(v20, v25, v26);
        v42 = objc_msgSend_fmfHandle(v39, v40, v41);

        if (!v42)
        {
          goto LABEL_29;
        }

        v45 = objc_msgSend_session(self, v43, v44);
        canShareLocationWithHandle_groupId_callerId = objc_msgSend_canShareLocationWithHandle_groupId_callerId_(v45, v46, v42, v53, v52);

        if ((canShareLocationWithHandle_groupId_callerId & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_23:
        ++v19;
      }

      while (v19 != v16);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v59, v64, 16);
      LOBYTE(v42) = 1;
      locationCopy = v50;
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v42) = 1;
  }

LABEL_30:

  v48 = *MEMORY[0x1E69E9840];
  return v42;
}

- (id)timedOfferExpirationForChat:(id)chat
{
  v58 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  if (objc_msgSend_chatStyle(chatCopy, v5, v6) == 45)
  {
    objc_msgSend_fmfGroupIdOneToOne(self, v7, v8);
  }

  else
  {
    objc_msgSend_fmfGroupIdGroup(self, v7, v8);
  }
  v9 = ;
  v51 = objc_msgSend__callerIDForChat_(self, v10, chatCopy);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v50 = chatCopy;
  obj = objc_msgSend_participants(chatCopy, v11, v12);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v53, v57, 16);
  if (!v14)
  {
    v18 = 0;
    goto LABEL_23;
  }

  v17 = v14;
  v18 = 0;
  v19 = *v54;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v54 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = objc_msgSend_findMyHandle(*(*(&v53 + 1) + 8 * i), v15, v16);
      v24 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v22, v23);
      SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v24, v25, v26);

      if (!SessionEnabled)
      {
        v37 = objc_msgSend_session(self, v28, v29);
        v40 = objc_msgSend_fmfHandle(v21, v43, v44);
        v42 = objc_msgSend_getOfferExpirationForHandle_groupId_callerId_(v37, v45, v40, v9, v51);
LABEL_14:
        v46 = v42;

        if (!v18)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v30 = objc_msgSend_fmlHandle(v21, v28, v29);
      if (v30)
      {
        v33 = v30;
        v34 = objc_msgSend_fmlSession(self, v31, v32);
        v35 = objc_opt_respondsToSelector();

        if (v35)
        {
          v37 = objc_msgSend_fmlSession(self, v31, v36);
          v40 = objc_msgSend_fmlHandle(v21, v38, v39);
          v42 = objc_msgSend_cachedOfferExpirationForHandle_groupId_(v37, v41, v40, v9);
          goto LABEL_14;
        }
      }

      v46 = 0;
      if (!v18)
      {
LABEL_18:
        v18 = v46;
        goto LABEL_19;
      }

LABEL_15:
      if (objc_msgSend_compare_(v46, v31, v18) == 1)
      {
        v47 = v46;

        v18 = v47;
      }

LABEL_19:
    }

    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v53, v57, 16);
  }

  while (v17);
LABEL_23:

  v48 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)_updateActiveDevice
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v4, v5, v6);

  if (SessionEnabled)
  {
    v10 = objc_msgSend_fmlSession(self, v8, v9);
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Calling FindMyLocateSession getActiveLocationSharingDeviceWithCompletion", buf, 2u);
      }
    }

    v15 = objc_msgSend_fmlSession(self, v12, v13);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A83B165C;
    v19[3] = &unk_1E78143F8;
    v19[4] = self;
    objc_msgSend_getActiveLocationSharingDeviceWithCompletion_(v15, v16, v19);
  }

  else
  {
    v15 = objc_msgSend_session(self, v8, v9);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A83B17DC;
    v18[3] = &unk_1E7814420;
    v18[4] = self;
    objc_msgSend_getActiveLocationSharingDevice_(v15, v17, v18);
  }
}

- (void)makeThisDeviceActiveDevice
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  SessionEnabled = objc_msgSend_isFindMyLocateSessionEnabled(v4, v5, v6);

  if (SessionEnabled)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3274();
    }
  }

  else
  {
    v12 = objc_msgSend_session(self, v8, v9);
    objc_msgSend_setActiveDevice_completion_(v12, v11, 0, &unk_1F1B6F5E0);
  }
}

- (void)didReceiveLocation:(id)location
{
  v15 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = locationCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didReceiveLocation %@", &v13, 0xCu);
  }

  v8 = objc_msgSend_handle(locationCopy, v6, v7);
  v10 = objc_msgSend_handleWithFMFHandle_(IMFindMyHandle, v9, v8);

  objc_msgSend_didReceiveLocationForHandle_(self, v11, v10);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)friendshipRequestReceived:(id)received
{
  v15 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = receivedCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF friendshipRequestReceived %@", &v13, 0xCu);
  }

  v8 = objc_msgSend_fromHandle(receivedCopy, v6, v7);
  v10 = objc_msgSend_handleWithFMFHandle_(IMFindMyHandle, v9, v8);

  objc_msgSend__postRelationshipStatusDidChangeNotificationWithIMFindMyHandle_(self, v11, v10);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)friendshipWasRemoved:(id)removed
{
  v12 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = removedCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF friendshipWasRemoved %@", &v10, 0xCu);
  }

  v7 = objc_msgSend_handleWithFMFHandle_(IMFindMyHandle, v6, removedCopy);
  objc_msgSend__postRelationshipStatusDidChangeNotificationWithIMFindMyHandle_(self, v8, v7);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didStartSharingMyLocationWithHandle:(id)handle
{
  v12 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = handleCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didStartSharingMyLocationWithHandle %@", &v10, 0xCu);
  }

  v7 = objc_msgSend_handleWithFMFHandle_(IMFindMyHandle, v6, handleCopy);
  objc_msgSend__postRelationshipStatusDidChangeNotificationWithIMFindMyHandle_(self, v8, v7);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didStopSharingMyLocationWithHandle:(id)handle
{
  v12 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = handleCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didStopSharingMyLocationWithHandle %@", &v10, 0xCu);
  }

  v7 = objc_msgSend_handleWithFMFHandle_(IMFindMyHandle, v6, handleCopy);
  objc_msgSend__postRelationshipStatusDidChangeNotificationWithIMFindMyHandle_(self, v8, v7);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didStartAbilityToGetLocationForHandle:(id)handle
{
  v12 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = handleCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didStartAbilityToGetLocationForHandle %@", &v10, 0xCu);
  }

  v7 = objc_msgSend_handleWithFMFHandle_(IMFindMyHandle, v6, handleCopy);
  objc_msgSend__postRelationshipStatusDidChangeNotificationWithIMFindMyHandle_(self, v8, v7);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didStopAbilityToGetLocationForHandle:(id)handle
{
  v12 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = handleCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didStopAbilityToGetLocationForHandle %@", &v10, 0xCu);
  }

  v7 = objc_msgSend_handleWithFMFHandle_(IMFindMyHandle, v6, handleCopy);
  objc_msgSend__postRelationshipStatusDidChangeNotificationWithIMFindMyHandle_(self, v8, v7);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)didChangeActiveLocationSharingDevice:(id)device
{
  v11 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = deviceCopy;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "FMF didChangeActiveLocationSharingDevice %@", &v9, 0xCu);
  }

  objc_msgSend__updateActiveDevice(self, v6, v7);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)_bestAccountForAddresses:(id)addresses
{
  addressesCopy = addresses;
  v6 = objc_msgSend_iMessageService(IMServiceImpl, v4, v5);
  v7 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(addressesCopy, 1, v6);

  if ((objc_msgSend__isUsableForSending(v7, v8, v9) & 1) == 0)
  {
    v14 = objc_msgSend_smsService(IMServiceImpl, v10, v11);
    if (v14)
    {
      v15 = objc_msgSend_sharedInstance(IMAccountController, v12, v13);
      v17 = objc_msgSend_accountsForService_(v15, v16, v14);
      v20 = objc_msgSend___imFirstObject(v17, v18, v19);

      v7 = v20;
    }
  }

  return v7;
}

- (void)_startSharingWithFMLHandles:(id)handles inChat:(id)chat withDuration:(int64_t)duration
{
  v43 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  chatCopy = chat;
  if (!objc_msgSend_joinState(chatCopy, v10, v11))
  {
    v34 = IMLocationLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_DEFAULT, "_startSharingWithFMLHandles not sharing because we've left the chat", buf, 2u);
    }

    goto LABEL_8;
  }

  v14 = objc_msgSend_account(chatCopy, v12, v13);
  v17 = objc_msgSend_uniqueID(v14, v15, v16);
  objc_msgSend_setEstablishingAccountID_(self, v18, v17);

  v21 = objc_msgSend_chatStyle(chatCopy, v19, v20);
  v22 = IMLocationLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = handlesCopy;
    v41 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEFAULT, "_startSharingWithFMLHandles calling sendFriendshipOfferToHandles: %@, with duration: %ld", buf, 0x16u);
  }

  v25 = objc_msgSend_fmlSession(self, v23, v24);
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v29 = objc_msgSend_fmlSession(self, v27, v28);
    v32 = objc_msgSend_allObjects(handlesCopy, v30, v31);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_1A83B24B4;
    v36[3] = &unk_1E7814448;
    v37 = handlesCopy;
    durationCopy2 = duration;
    objc_msgSend_sendFriendshipOfferToHandles_expiration_isFromGroup_completion_(v29, v33, v32, duration, v21 != 45, v36);

    v34 = v37;
LABEL_8:
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_startSharingWithFMFHandles:(id)handles inChat:(id)chat untilDate:(id)date
{
  v48 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  chatCopy = chat;
  dateCopy = date;
  if (objc_msgSend_joinState(chatCopy, v11, v12))
  {
    v15 = objc_msgSend_account(chatCopy, v13, v14);
    v18 = objc_msgSend_uniqueID(v15, v16, v17);
    objc_msgSend_setEstablishingAccountID_(self, v19, v18);

    if (objc_msgSend_chatStyle(chatCopy, v20, v21) == 45)
    {
      objc_msgSend_fmfGroupIdOneToOne(self, v22, v23);
    }

    else
    {
      objc_msgSend_fmfGroupIdGroup(self, v22, v23);
    }
    v25 = ;
    v27 = objc_msgSend__callerIDForChat_(self, v26, chatCopy);
    v28 = IMLocationLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v41 = handlesCopy;
      v42 = 2112;
      v43 = dateCopy;
      v44 = 2112;
      v45 = v27;
      v46 = 2112;
      v47 = v25;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "willSendFriendshipOfferToHandles %@ untilDate %@ callerId %@ groupId %@", buf, 0x2Au);
    }

    v31 = objc_msgSend_session(self, v29, v30);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1A83B284C;
    v35[3] = &unk_1E7814470;
    v36 = handlesCopy;
    v37 = dateCopy;
    v38 = v27;
    v39 = v25;
    v32 = v25;
    v24 = v27;
    objc_msgSend_sendFriendshipOfferToHandles_groupId_callerId_endDate_completion_(v31, v33, v36, v32, v24, v37, v35);
  }

  else
  {
    v24 = IMLocationLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_DEFAULT, "_startSharingWithFMFHandles not sharing because we've left the chat", buf, 2u);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)_stopSharingWithFMFHandles:(id)handles inChat:(id)chat
{
  v34 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  chatCopy = chat;
  if (objc_msgSend_chatStyle(chatCopy, v8, v9) == 45)
  {
    objc_msgSend_fmfGroupIdOneToOne(self, v10, v11);
  }

  else
  {
    objc_msgSend_fmfGroupIdGroup(self, v10, v11);
  }
  v12 = ;
  v14 = objc_msgSend__callerIDForChat_(self, v13, chatCopy);

  v15 = IMLocationLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = handlesCopy;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "willStopSharingMyLocationWithHandles %@ callerId %@ groupId %@", buf, 0x20u);
  }

  v18 = objc_msgSend_session(self, v16, v17);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A83B2B1C;
  v24[3] = &unk_1E7814498;
  v25 = handlesCopy;
  v26 = v14;
  v27 = v12;
  v19 = v12;
  v20 = v14;
  v21 = handlesCopy;
  objc_msgSend_stopSharingMyLocationWithHandles_groupId_callerId_completion_(v18, v22, v21, v19, v20, v24);

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_stopSharingWithFMLHandles:(id)handles inChat:(id)chat
{
  v30 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  chatCopy = chat;
  v8 = IMLocationLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = handlesCopy;
    v28 = 2112;
    v29 = chatCopy;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "_stopSharingWithFMLHandles %@ inChat: %@", buf, 0x16u);
  }

  v11 = objc_msgSend_chatStyle(chatCopy, v9, v10);
  if (objc_msgSend_count(handlesCopy, v12, v13))
  {
    v16 = objc_msgSend_fmlSession(self, v14, v15);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v20 = objc_msgSend_fmlSession(self, v18, v19);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1A83B2DC4;
      v23[3] = &unk_1E78144C0;
      v24 = handlesCopy;
      v25 = v11 != 45;
      objc_msgSend_stopSharingLocationWith_isFromGroup_completion_(v20, v21, v24, v11 != 45, v23);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)_callerIDForChat:(id)chat
{
  chatCopy = chat;
  v8 = objc_msgSend_lastAddressedHandleID(chatCopy, v4, v5);
  if (!v8)
  {
    v9 = objc_msgSend_account(chatCopy, v6, v7);
    v8 = objc_msgSend_displayName(v9, v10, v11);
  }

  v12 = MEMORY[0x1AC56C550](@"FMFHandle", @"FMF");
  v14 = 0;
  if (v8 && v12)
  {
    v14 = objc_msgSend_handleWithId_(v12, v13, v8);
  }

  return v14;
}

- (void)_postNotification:(id)notification object:(id)object userInfo:(id)info
{
  v22 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  objectCopy = object;
  infoCopy = info;
  v10 = IMLocationLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412802;
    v17 = notificationCopy;
    v18 = 2112;
    v19 = objectCopy;
    v20 = 2112;
    v21 = infoCopy;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Posting FMF notification: %@  object: %@ userInfo: %@", &v16, 0x20u);
  }

  v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v13, v14, notificationCopy, objectCopy, infoCopy);

  v15 = *MEMORY[0x1E69E9840];
}

- (Class)__FMFSessionClass
{
  if (qword_1EB2EA000 != -1)
  {
    sub_1A84E33DC();
  }

  v3 = qword_1EB2EA008;

  return v3;
}

- (Class)__FMLSessionClass
{
  if (qword_1EB2E9D68 != -1)
  {
    sub_1A84E33F0();
  }

  v3 = qword_1EB2E9D70;

  return v3;
}

- (id)fmfGroupIdOneToOne
{
  if (qword_1EB2EA4A0 != -1)
  {
    sub_1A84E3404();
  }

  v3 = qword_1EB2EA498;

  return v3;
}

- (id)fmfGroupIdGroup
{
  if (qword_1EB2EA4B0 != -1)
  {
    sub_1A84E3418();
  }

  v3 = qword_1EB2EA4A8;

  return v3;
}

@end