@interface IMNicknameController
+ (BOOL)accountsMatchUpToUseNicknames;
+ (BOOL)multiplePhoneNumbersTiedToAppleID;
+ (id)sharedInstance;
- (BOOL)_canUpdatePersonalNickname;
- (BOOL)handleIsAllowedForSharing:(id)a3;
- (BOOL)handleIsDeniedForSharing:(id)a3;
- (BOOL)hasObservedTransitionForHandleID:(id)a3;
- (BOOL)iCloudSignedInToUseNicknames;
- (BOOL)isActiveForNickname:(id)a3;
- (BOOL)isIgnoredForNickname:(id)a3;
- (BOOL)shouldOfferNicknameSharingForChat:(id)a3;
- (BOOL)shouldOfferNicknameSharingForHandles:(id)a3;
- (IMNicknameController)init;
- (id)_changedKeysForNewNicknameDictionary:(id)a3 oldNicknameDictionary:(id)a4 withComparisonOptions:(unint64_t)a5;
- (id)_handleIDsForHandle:(id)a3;
- (id)archivedNicknameForHandleIDs:(id)a3;
- (id)createSharedProfileStateOracleForHandles:(id)a3;
- (id)currentNicknameForHandleIDs:(id)a3;
- (id)handlesForNicknamesUnderScrutiny;
- (id)imageDataForHandle:(id)a3;
- (id)nicknameForHandle:(id)a3;
- (id)nicknameForHandleIDs:(id)a3;
- (id)pendingNicknameForHandleIDs:(id)a3;
- (id)personNameComponentsForHandle:(id)a3;
- (id)remoteDaemon;
- (id)truncateNameIfNeeded:(id)a3;
- (id)unknownSenderRecordInfoFor:(id)a3;
- (unint64_t)nicknameUpdateForHandle:(id)a3 nicknameIfAvailable:(id *)a4;
- (void)_broadcastNicknamePreferencesDidChange:(id)a3;
- (void)acceptPendingNicknameForHandleID:(id)a3 updateType:(unint64_t)a4;
- (void)clearHandleFromScrutiny:(id)a3;
- (void)clearPendingNicknameUpdatesForHandle:(id)a3 forceClear:(BOOL)a4;
- (void)clearPendingNicknameUpdatesForHandleIDs:(id)a3;
- (void)denyHandlesForNicknameSharing:(id)a3;
- (void)fetchPersonalNicknameWithCompletion:(id)a3;
- (void)ignorePendingNicknameUpdatesForHandle:(id)a3;
- (void)ignorePendingNicknameUpdatesForHandleIDs:(id)a3;
- (void)markAllAsPending;
- (void)markHandleUnderScrutiny:(id)a3;
- (void)markNicknameAsIgnored:(id)a3;
- (void)sendNameOnlyToHandleIDs:(id)a3 fromHandleID:(id)a4;
- (void)sendPersonalNicknameToHandle:(id)a3 fromHandle:(id)a4;
- (void)setNicknameHandlesUnderScrutiny;
- (void)setPersonalNickname:(id)a3;
- (void)setPersonalNicknameFromOnboardingResult:(id)a3;
- (void)updateIsActiveList:(id)a3;
- (void)updateIsIgnoredList:(id)a3;
- (void)updateLocalNicknameStore;
- (void)updatePendingNicknameForHandleIDs:(id)a3;
- (void)updatePendingNicknames:(id)a3 handledNicknames:(id)a4 archivedNicknames:(id)a5;
- (void)updatePersonalNickname:(id)a3;
- (void)updatePersonalNicknameIfNecessaryWithMeCardSharingResult:(id)a3;
- (void)updateSharingAllowList:(id)a3 denyList:(id)a4;
- (void)updateTransitionedNicknameHandles:(id)a3;
- (void)updateUnknownSenderRecords:(id)a3;
@end

@implementation IMNicknameController

+ (id)sharedInstance
{
  if (qword_1ED767920 != -1)
  {
    sub_1A8242EC4();
  }

  v3 = qword_1ED7678C0;

  return v3;
}

- (IMNicknameController)init
{
  v15.receiver = self;
  v15.super_class = IMNicknameController;
  v2 = [(IMNicknameController *)&v15 init];
  v5 = v2;
  if (v2)
  {
    if (objc_msgSend__nicknameFeatureEnabled(v2, v3, v4))
    {
      objc_msgSend_setIsInitialLoad_(v5, v6, 1);
      objc_msgSend_updateLocalNicknameStore(v5, v7, v8);
      v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
      objc_msgSend_addObserver_selector_name_object_(v11, v12, v5, sel__broadcastNicknamePreferencesDidChange_, *MEMORY[0x1E69A77F0], 0);
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        return v5;
      }

      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Nickname feature is disabled, not loading IMNicknameController", v14, 2u);
      }
    }
  }

  return v5;
}

- (void)updateLocalNicknameStore
{
  v4 = objc_msgSend__nicknameFeatureEnabled(self, a2, v2);
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Updating nickname store!", buf, 2u);
      }
    }

    v9 = objc_msgSend_remoteDaemon(self, v6, v7);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_1A824FA78;
    v42[3] = &unk_1E7810ED8;
    v42[4] = self;
    objc_msgSend_fetchPersonalNicknameWithReply_(v9, v10, v42);

    v13 = objc_msgSend_remoteDaemon(self, v11, v12);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1A824B500;
    v41[3] = &unk_1E7810F00;
    v41[4] = self;
    objc_msgSend_fetchNicknamesWithReply_(v13, v14, v41);

    v17 = objc_msgSend_remoteDaemon(self, v15, v16);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1A82B7390;
    v40[3] = &unk_1E7810F28;
    v40[4] = self;
    objc_msgSend_fetchHandleSharingStateWithReply_(v17, v18, v40);

    v21 = objc_msgSend_remoteDaemon(self, v19, v20);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_1A82B7468;
    v39[3] = &unk_1E7810F50;
    v39[4] = self;
    objc_msgSend_fetchTransitionedNicknameHandlesWithReply_(v21, v22, v39);

    v25 = objc_msgSend_remoteDaemon(self, v23, v24);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_1A824B5E8;
    v38[3] = &unk_1E78100B8;
    v38[4] = self;
    objc_msgSend_fetchActiveNicknamesWithReply_(v25, v26, v38);

    v29 = objc_msgSend_remoteDaemon(self, v27, v28);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_1A824B684;
    v37[3] = &unk_1E78100B8;
    v37[4] = self;
    objc_msgSend_fetchIgnoredNicknameHandlesWithReply_(v29, v30, v37);

    v33 = objc_msgSend_remoteDaemon(self, v31, v32);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_1A824DC9C;
    v36[3] = &unk_1E78100B8;
    v36[4] = self;
    objc_msgSend_fetchUnknownSenderRecordsWithReply_(v33, v34, v36);
  }

  else if (v5)
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating nickname store", buf, 2u);
    }
  }
}

- (BOOL)_canUpdatePersonalNickname
{
  if (objc_msgSend__nicknameFeatureEnabled(self, a2, v2))
  {
    v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
    isAllowMultiplePhoneNumbersSNaPEnabled = objc_msgSend_isAllowMultiplePhoneNumbersSNaPEnabled(v6, v7, v8);

    v12 = objc_msgSend_iCloudSignedInToUseNicknames(self, v10, v11);
    LOBYTE(v13) = isAllowMultiplePhoneNumbersSNaPEnabled & v12;
    if (isAllowMultiplePhoneNumbersSNaPEnabled & 1) == 0 && (v12)
    {
      v14 = objc_opt_class();
      LOBYTE(v13) = objc_msgSend_multiplePhoneNumbersTiedToAppleID(v14, v15, v16) ^ 1;
    }
  }

  else
  {
    v13 = IMOSLoggingEnabled();
    if (v13)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Nickname feature not enabled, not updating personal nickname", v19, 2u);
      }

      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (BOOL)iCloudSignedInToUseNicknames
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], a2, v2);
  BoolFromDomain_forKey = objc_msgSend_getBoolFromDomain_forKey_(v3, v4, *MEMORY[0x1E69A77F8], *MEMORY[0x1E69A7810]);

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (BoolFromDomain_forKey)
      {
        v7 = @"YES";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "iCloud signed in for nicknames: %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return BoolFromDomain_forKey;
}

- (void)_broadcastNicknamePreferencesDidChange:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Got IMNicknamePreferencesDidChangeNotification so syncing preferences", v11, 2u);
    }
  }

  v8 = objc_msgSend_remoteDaemon(self, v5, v6);
  objc_msgSend_nicknamePreferencesDidChange(v8, v9, v10);
}

- (id)nicknameForHandle:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    if (!IMSharedHelperCurrentRegionRequiresKnownSenderForNickname() || (v8 = MEMORY[0x1E69A7FD0], objc_msgSend_cnContactWithKeys_(v4, v7, MEMORY[0x1E695E0F0]), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = objc_msgSend_isCNContactAKnownContact_(v8, v10, v9), v9, (v8 & 1) != 0))
    {
      v11 = objc_msgSend__handleIDsForHandle_(self, v7, v4);
      v13 = objc_msgSend_nicknameForHandleIDs_(self, v12, v11);

      goto LABEL_14;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v4;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Not returning nickname for handle %@, because their is no contact for the handle.", &v17, 0xCu);
      }

LABEL_12:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Nickname feature not enabled, returning nil nickname for handle %@", &v17, 0xCu);
    }

    goto LABEL_12;
  }

  v13 = 0;
LABEL_14:

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

- (unint64_t)nicknameUpdateForHandle:(id)a3 nicknameIfAvailable:(id *)a4
{
  v155 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v6, v7))
  {
    v135 = v5;
    objc_msgSend__handleIDsForHandle_(self, v8, v5);
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v9 = v144 = 0u;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v143, v154, 16);
    if (v13)
    {
      v14 = *v144;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v144 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v143 + 1) + 8 * v15);
        v17 = objc_msgSend_pendingNicknameUpdates(self, v11, v12);
        v19 = objc_msgSend_objectForKey_(v17, v18, v16);

        if (v19)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v143, v154, 16);
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      if (a4)
      {
        v24 = v19;
        *a4 = v19;
      }

      v25 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v22, v23);
      isNameAndPhotoC3Enabled = objc_msgSend_isNameAndPhotoC3Enabled(v25, v26, v27);

      v30 = *MEMORY[0x1E695C240];
      v31 = *MEMORY[0x1E695C230];
      if (isNameAndPhotoC3Enabled)
      {
        v153[0] = *MEMORY[0x1E695C240];
        v153[1] = v31;
        v32 = *MEMORY[0x1E695C420];
        v153[2] = *MEMORY[0x1E695C278];
        v153[3] = v32;
        v153[4] = *MEMORY[0x1E695C280];
        objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v29, v153, 5);
      }

      else
      {
        v152[0] = *MEMORY[0x1E695C240];
        v152[1] = v31;
        v33 = *MEMORY[0x1E695C280];
        v152[2] = *MEMORY[0x1E695C278];
        v152[3] = v33;
        objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v29, v152, 4);
      }
      v34 = ;
      v136 = objc_msgSend_cnContactWithKeys_(v135, v35, v34);

      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v36 = v9;
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v139, v151, 16);
      if (v40)
      {
        v41 = *v140;
LABEL_23:
        v42 = 0;
        while (1)
        {
          if (*v140 != v41)
          {
            objc_enumerationMutation(v36);
          }

          v43 = *(*(&v139 + 1) + 8 * v42);
          v44 = objc_msgSend_handledNicknames(self, v38, v39);
          v46 = objc_msgSend_objectForKey_(v44, v45, v43);

          if (v46)
          {
            break;
          }

          if (v40 == ++v42)
          {
            v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v139, v151, 16);
            if (v40)
            {
              goto LABEL_23;
            }

            goto LABEL_29;
          }
        }

        if (objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v47, v136))
        {
          v132 = 0;
          goto LABEL_32;
        }

        if (IMOSLoggingEnabled())
        {
          v100 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v148 = v46;
            _os_log_impl(&dword_1A823F000, v100, OS_LOG_TYPE_INFO, "Not displaying nickname update banner for unknown contact with previously handled nickname: %@", buf, 0xCu);
          }
        }

        objc_msgSend_clearPendingNicknameUpdatesForHandle_forceClear_(self, v99, v135, 1);
        v20 = 0;
        if (a4)
        {
          *a4 = 0;
        }

        goto LABEL_137;
      }

LABEL_29:

      v46 = 0;
      v132 = 1;
LABEL_32:
      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v148 = v46;
          _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "Last handled nickname: %@", buf, 0xCu);
        }
      }

      isUpdateFromNickname_withOptions = objc_msgSend_isUpdateFromNickname_withOptions_(v19, v48, v46, 4);
      v52 = objc_msgSend_isUpdateFromNickname_withOptions_(v19, v51, v46, 2);
      v55 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v53, v54);
      v58 = objc_msgSend_isNameAndPhotoC3Enabled(v55, v56, v57);

      if (v58)
      {
        v138 = objc_msgSend_isUpdateFromNickname_withOptions_(v19, v59, v46, 32);
      }

      else
      {
        v138 = 0;
      }

      v134 = objc_msgSend_isUpdateFromNickname_withOptions_(v19, v59, v46, 16);
      if (isUpdateFromNickname_withOptions)
      {
        if (IMOSLoggingEnabled())
        {
          v64 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v148 = v19;
            v149 = 2112;
            v150 = v136;
            _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "Pending nickname update %@ does not match previously handled nickname for contact %@", buf, 0x16u);
          }
        }

        v65 = objc_msgSend_givenName(v136, v62, v63);
        v68 = objc_msgSend_firstName(v19, v66, v67);
        if (objc_msgSend_isEqualToString_(v65, v69, v68))
        {
          v72 = objc_msgSend_familyName(v136, v70, v71);
          v75 = objc_msgSend_lastName(v19, v73, v74);
          isEqualToString = objc_msgSend_isEqualToString_(v72, v76, v75);

          if (isEqualToString)
          {
            if (IMOSLoggingEnabled())
            {
              v78 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1A823F000, v78, OS_LOG_TYPE_INFO, "Pending nickname name matches names for contact. Setting nameChanged to NO", buf, 2u);
              }
            }

            goto LABEL_50;
          }
        }

        else
        {
        }

        if (IMOSLoggingEnabled())
        {
          v102 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v148 = v19;
            v149 = 2112;
            v150 = v136;
            _os_log_impl(&dword_1A823F000, v102, OS_LOG_TYPE_INFO, "Pending nickname name %@ does not match current contact name %@", buf, 0x16u);
          }
        }

        objc_msgSend_updateNameFromContact_(v19, v101, v136);
        v133 = 2;
        if (v52)
        {
LABEL_51:
          v79 = objc_msgSend_imageData(v136, v60, v61);
          if (!objc_msgSend_length(v79, v80, v81))
          {
            if (IMOSLoggingEnabled())
            {
              v103 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v148 = v136;
                v149 = 2112;
                v150 = v19;
                _os_log_impl(&dword_1A823F000, v103, OS_LOG_TYPE_INFO, "Existing contact does not have an image, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
              }
            }

            v98 = 1;
            goto LABEL_92;
          }

          v84 = objc_msgSend_imageHash(v19, v82, v83);
          v87 = objc_msgSend_imageHash(v136, v85, v86);
          v88 = v87 == 0;

          if (v88)
          {
            if (IMOSLoggingEnabled())
            {
              v104 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v148 = v136;
                v149 = 2112;
                v150 = v19;
                _os_log_impl(&dword_1A823F000, v104, OS_LOG_TYPE_INFO, "Could not determine md5 hash of existing image data, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
              }

              goto LABEL_89;
            }
          }

          else if (objc_msgSend_length(v84, v89, v90))
          {
            v93 = objc_msgSend_imageHash(v136, v91, v92);
            isEqual = objc_msgSend_isEqual_(v93, v94, v84);

            v96 = IMOSLoggingEnabled();
            if (isEqual)
            {
              if (v96)
              {
                v97 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v148 = v136;
                  v149 = 2112;
                  v150 = v19;
                  _os_log_impl(&dword_1A823F000, v97, OS_LOG_TYPE_INFO, "Photo update has a the same md5 hash as the existing contact photo, suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
                }
              }

              v98 = 0;
              goto LABEL_91;
            }

            if (v96)
            {
              v104 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v148 = v136;
                v149 = 2112;
                v150 = v19;
                _os_log_impl(&dword_1A823F000, v104, OS_LOG_TYPE_INFO, "Photo update has a distinct md5 hash from the existing contact photo, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
              }

LABEL_89:
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v104 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v148 = v136;
              v149 = 2112;
              v150 = v19;
              _os_log_impl(&dword_1A823F000, v104, OS_LOG_TYPE_INFO, "Could not determine md5 hash of suggested update image data, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
            }

            goto LABEL_89;
          }

          v98 = 1;
LABEL_91:

LABEL_92:
LABEL_93:
          if (!v138)
          {
            v123 = 0;
LABEL_124:
            if (!v134 || v132 && (objc_msgSend_pronouns(v19, v60, v61), v126 = objc_claimAutoreleasedReturnValue(), v127 = v126 == 0, v126, v127))
            {
              v129 = v133 | 4;
              if (!v98)
              {
                v129 = v133;
              }

              if (v123)
              {
                v20 = v129 | 8;
              }

              else
              {
                v20 = v129;
              }
            }

            else
            {
              v128 = v133 | 4;
              if (!v98)
              {
                v128 = v133;
              }

              if (v123)
              {
                v128 |= 8uLL;
              }

              v20 = v128 | 0x10;
            }

LABEL_137:

            goto LABEL_138;
          }

          v105 = objc_msgSend_wallpaper(v136, v60, v61);
          v108 = objc_msgSend_dataRepresentation(v105, v106, v107);
          if (!objc_msgSend_length(v108, v109, v110))
          {
            if (IMOSLoggingEnabled())
            {
              v124 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v148 = v136;
                v149 = 2112;
                v150 = v19;
                _os_log_impl(&dword_1A823F000, v124, OS_LOG_TYPE_INFO, "Existing contact does not have a wallpaper, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
              }
            }

            v123 = 1;
            goto LABEL_123;
          }

          v111 = IMSharedHelperMD5OfDataInBytes();
          v114 = objc_msgSend_wallpaperImageHash(v19, v112, v113);
          if (objc_msgSend_length(v111, v115, v116))
          {
            if (objc_msgSend_length(v114, v117, v118))
            {
              v120 = objc_msgSend_isEqual_(v111, v119, v114);
              v121 = IMOSLoggingEnabled();
              if (v120)
              {
                if (v121)
                {
                  v122 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v148 = v136;
                    v149 = 2112;
                    v150 = v19;
                    _os_log_impl(&dword_1A823F000, v122, OS_LOG_TYPE_INFO, "Wallpaper update has a the same md5 hash as the existing wallpaper, suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
                  }
                }

                v123 = 0;
                goto LABEL_122;
              }

              if (v121)
              {
                v125 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v148 = v136;
                  v149 = 2112;
                  v150 = v19;
                  _os_log_impl(&dword_1A823F000, v125, OS_LOG_TYPE_INFO, "Wallpaper update has a distinct md5 hash from the existing wallpaper, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
                }

LABEL_120:
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v125 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v148 = v136;
                v149 = 2112;
                v150 = v19;
                _os_log_impl(&dword_1A823F000, v125, OS_LOG_TYPE_INFO, "Could not determine md5 hash of suggested update wallpaper data, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
              }

              goto LABEL_120;
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v125 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v148 = v136;
              v149 = 2112;
              v150 = v19;
              _os_log_impl(&dword_1A823F000, v125, OS_LOG_TYPE_INFO, "Could not determine md5 hash of existing wallpaper data, not suppressing photo update banner. Contact: %@ pendingUpdate: %@", buf, 0x16u);
            }

            goto LABEL_120;
          }

          v123 = 1;
LABEL_122:

LABEL_123:
          goto LABEL_124;
        }

LABEL_72:
        v98 = 0;
        goto LABEL_93;
      }

LABEL_50:
      v133 = 0;
      if (v52)
      {
        goto LABEL_51;
      }

      goto LABEL_72;
    }

LABEL_10:
    v20 = 0;
    v19 = v9;
LABEL_138:

    v5 = v135;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v148 = v5;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Nickname feature not enabled, no update for handle %@", buf, 0xCu);
      }
    }

    v20 = 0;
  }

  v130 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)clearPendingNicknameUpdatesForHandle:(id)a3 forceClear:(BOOL)a4
{
  v4 = a4;
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = objc_msgSend__handleIDsForHandle_(self, v7, v6);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v43 = 138412802;
      v44 = v8;
      v45 = 2112;
      v46 = v6;
      v47 = 1024;
      v48 = v4;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Clearing pending nickname update for handle IDs %@ on handle %@, force clear: %{BOOL}d", &v43, 0x1Cu);
    }
  }

  v12 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
  isNameAndPhotoC3Enabled = objc_msgSend_isNameAndPhotoC3Enabled(v12, v13, v14);

  if (objc_msgSend__nicknameFeatureEnabled(self, v16, v17))
  {
    if (!isNameAndPhotoC3Enabled || v4)
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v43 = 138412290;
          v44 = v8;
          _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "Asking the daemon to clear handle IDs: %@", &v43, 0xCu);
        }
      }

      v19 = objc_msgSend_remoteDaemon(self, v35, v36);
      v21 = objc_msgSend_allObjects(v8, v38, v39);
      objc_msgSend_clearPendingNicknameUpdatesForHandleIDs_(v19, v40, v21);
    }

    else
    {
      v19 = objc_msgSend_pendingNicknameForHandleIDs_(self, v18, v8);
      v21 = objc_msgSend_currentNicknameForHandleIDs_(self, v20, v8);
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v43 = 138412546;
          v44 = v19;
          v45 = 2112;
          v46 = v21;
          _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Found pending nickname: %@, and current nickname %@", &v43, 0x16u);
        }
      }

      isUpdateFromNickname_withOptions = objc_msgSend_isUpdateFromNickname_withOptions_(v19, v22, v21, 8);
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v43 = 67109120;
          LODWORD(v44) = isUpdateFromNickname_withOptions;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Nicknames are different: %{BOOL}d", &v43, 8u);
        }
      }

      v26 = IMOSLoggingEnabled();
      if (isUpdateFromNickname_withOptions)
      {
        if (v26)
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v43 = 138412290;
            v44 = v8;
            _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Because the nicknames are different, we're asking the daemon to clear handle IDs: %@", &v43, 0xCu);
          }
        }

        v30 = objc_msgSend_remoteDaemon(self, v27, v28);
        v33 = objc_msgSend_allObjects(v8, v31, v32);
        objc_msgSend_clearPendingNicknameUpdatesForHandleIDs_(v30, v34, v33);
      }

      else if (v26)
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          LOWORD(v43) = 0;
          _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "Nicknames were the same, no need to clear.", &v43, 2u);
        }
      }
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)clearPendingNicknameUpdatesForHandleIDs:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Clearing pending nickname update for handle IDs %@", buf, 0xCu);
    }
  }

  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v4;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v26, v30, 16);
    if (v12)
    {
      v13 = *v27;
      do
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v26 + 1) + 8 * v14);
          v16 = objc_msgSend_sharedInstance(IMNicknameController, v10, v11, v26);
          objc_msgSend_markTransitionAsObservedForHandleID_isAutoUpdate_(v16, v17, v15, 0);

          ++v14;
        }

        while (v12 != v14);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v26, v30, 16);
      }

      while (v12);
    }

    v20 = objc_msgSend_remoteDaemon(self, v18, v19);
    v23 = objc_msgSend_allObjects(v8, v21, v22);
    objc_msgSend_clearPendingNicknameUpdatesForHandleIDs_(v20, v24, v23);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)ignorePendingNicknameUpdatesForHandle:(id)a3
{
  v5 = objc_msgSend__handleIDsForHandle_(self, a2, a3);
  objc_msgSend_ignorePendingNicknameUpdatesForHandleIDs_(self, v4, v5);
}

- (void)ignorePendingNicknameUpdatesForHandleIDs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Ignoring pending nickname update for handle IDs %@", &v16, 0xCu);
    }
  }

  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v10 = objc_msgSend_remoteDaemon(self, v8, v9);
    v13 = objc_msgSend_allObjects(v4, v11, v12);
    objc_msgSend_ignorePendingNicknameUpdatesForHandleIDs_(v10, v14, v13);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)acceptPendingNicknameForHandleID:(id)a3 updateType:(unint64_t)a4
{
  v12 = a3;
  v8 = objc_msgSend__nicknameFeatureEnabled(self, v6, v7);
  if (v12 && v8)
  {
    v10 = objc_msgSend_remoteDaemon(self, v12, v9);
    objc_msgSend_acceptPendingNicknameForHandleID_updateType_(v10, v11, v12, a4);
  }
}

- (BOOL)handleIsAllowedForSharing:(id)a3
{
  v4 = objc_msgSend__handleIDsForHandle_(self, a2, a3);
  v7 = objc_msgSend_allowListedHandlesForSharing(self, v5, v6);
  v9 = objc_msgSend_intersectsSet_(v4, v8, v7);

  return v9;
}

- (BOOL)handleIsDeniedForSharing:(id)a3
{
  v4 = objc_msgSend__handleIDsForHandle_(self, a2, a3);
  v7 = objc_msgSend_denyListedHandlesForSharing(self, v5, v6);
  v9 = objc_msgSend_intersectsSet_(v4, v8, v7);

  return v9;
}

- (void)sendPersonalNicknameToHandle:(id)a3 fromHandle:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_sharedInstance(IMAccountController, v8, v9);
  v13 = objc_msgSend_iMessageService(IMServiceImpl, v11, v12);
  v15 = objc_msgSend_bestAccountForService_(v10, v14, v13);

  v17 = objc_msgSend_imHandleWithID_alreadyCanonical_(v15, v16, v7, 0);

  if (v17)
  {
    v22[0] = v17;
    v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v22, 1);
    objc_msgSend_allowHandlesForNicknameSharing_fromHandle_forceSend_(self, v20, v19, v6, 1);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)sendNameOnlyToHandleIDs:(id)a3 fromHandleID:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (objc_msgSend__nicknameFeatureEnabled(self, v7, v8))
  {
    v11 = objc_msgSend_remoteDaemon(self, v9, v10);
    objc_msgSend_sendNameOnlyToHandleIDs_fromHandleID_(v11, v12, v13, v6);
  }
}

- (void)denyHandlesForNicknameSharing:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v4;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v29, 16);
    if (v11)
    {
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = objc_msgSend__handleIDsForHandle_(self, v10, *(*(&v24 + 1) + 8 * v13), v24);
          objc_msgSend_unionSet_(v7, v15, v14);

          ++v13;
        }

        while (v11 != v13);
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v24, v29, 16);
      }

      while (v11);
    }

    if (objc_msgSend__nicknameFeatureEnabled(self, v16, v17))
    {
      v20 = objc_msgSend_remoteDaemon(self, v18, v19);
      objc_msgSend_denyHandleIDsForNicknameSharing_(v20, v21, v7);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Nickname feature disabled, not denying handles", buf, 2u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)isActiveForNickname:(id)a3
{
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v9 = objc_msgSend_activeRecords(self, v7, v8);
    v12 = objc_msgSend_handle(v4, v10, v11);
    v14 = objc_msgSend_objectForKey_(v9, v13, v12);

    if (v14)
    {
      v17 = objc_msgSend_recordID(v4, v15, v16);
      isEqualToString = objc_msgSend_isEqualToString_(v14, v18, v17);
    }

    else
    {
      isEqualToString = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Nickname feature disabled, nickname is not active.", v22, 2u);
      }
    }

    isEqualToString = 0;
  }

  return isEqualToString;
}

- (void)markNicknameAsIgnored:(id)a3
{
  v38[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((objc_msgSend__nicknameFeatureEnabled(self, v5, v6) & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Nickname feature disabled, not setting personal nickname", &v33, 2u);
    }

LABEL_12:

    goto LABEL_13;
  }

  v11 = objc_msgSend_recordID(v4, v7, v8);
  if (!v11 || (objc_msgSend_handle(v4, v9, v10), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v28 = objc_msgSend_handle(v4, v26, v27);
      v31 = objc_msgSend_recordID(v4, v29, v30);
      v33 = 138412546;
      v34 = v28;
      v35 = 2112;
      v36 = v31;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Tried marking a nickname as ignored that is missing a handle or record ID. Handle: %@, RecordID: %@", &v33, 0x16u);
    }

    goto LABEL_12;
  }

  v15 = objc_msgSend_remoteDaemon(self, v13, v14);
  v18 = objc_msgSend_handle(v4, v16, v17);
  v37 = v18;
  v21 = objc_msgSend_recordID(v4, v19, v20);
  v38[0] = v21;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v38, &v37, 1);
  objc_msgSend_markProfileRecordsAsIgnored_(v15, v24, v23);

LABEL_13:
  v32 = *MEMORY[0x1E69E9840];
}

- (BOOL)isIgnoredForNickname:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_ignoredRecords(self, v5, v6);
  v10 = objc_msgSend_handle(v4, v8, v9);
  v12 = objc_msgSend_objectForKey_(v7, v11, v10);

  if (v12)
  {
    v15 = objc_msgSend_recordID(v4, v13, v14);
    isEqualToString = objc_msgSend_isEqualToString_(v12, v16, v15);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (void)setPersonalNickname:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v32 = 136315138;
      v33 = "[IMNicknameController setPersonalNickname:]";
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Setting personal nickname for %s", &v32, 0xCu);
    }
  }

  if (objc_msgSend__nicknameFeatureEnabled(self, v6, v7))
  {
    canUpdatePersonalNickname = objc_msgSend__canUpdatePersonalNickname(self, v9, v10);
    v12 = IMOSLoggingEnabled();
    if (canUpdatePersonalNickname)
    {
      if (v12)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v32 = 138412290;
          v33 = v5;
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Setting new personal nickname and notifying daemon %@", &v32, 0xCu);
        }
      }

      if (v5)
      {
        objc_storeStrong(&self->_personalNickname, a3);
        v16 = objc_msgSend_remoteDaemon(self, v14, v15);
        objc_msgSend_setNewPersonalNickname_(v16, v17, v5);

        v20 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v18, v19);
        objc_msgSend_postNotificationName_object_(v20, v21, @"__kIMPersonalNicknameDidChangeNotification", 0);
      }
    }

    else if (v12)
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = MEMORY[0x1E696AD98];
        v25 = objc_opt_class();
        v28 = objc_msgSend_multiplePhoneNumbersTiedToAppleID(v25, v26, v27);
        v30 = objc_msgSend_numberWithBool_(v24, v29, v28);
        v32 = 138412290;
        v33 = v30;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "We can't update the personal nickname - multiplePhoneNumbers: %@}", &v32, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Nickname feature disabled, not setting personal nickname", &v32, 2u);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)fetchPersonalNicknameWithCompletion:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    canUpdatePersonalNickname = objc_msgSend__canUpdatePersonalNickname(self, v7, v8);
    v10 = IMOSLoggingEnabled();
    if (canUpdatePersonalNickname)
    {
      if (v10)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v36 = "[IMNicknameController fetchPersonalNicknameWithCompletion:]";
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Fetching personal nickname for %s", buf, 0xCu);
        }
      }

      v14 = objc_msgSend_personalNickname(self, v11, v12);

      if (v14)
      {
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Personal nickname found", buf, 2u);
          }
        }

        if (v4)
        {
          v20 = objc_msgSend_personalNickname(self, v17, v18);
          v4[2](v4, v20);
        }
      }

      else if (v4)
      {
        v30 = objc_msgSend_remoteDaemon(self, v15, v16);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = sub_1A82B4FC4;
        v33[3] = &unk_1E7810EB0;
        v33[4] = self;
        v34 = v4;
        objc_msgSend_fetchPersonalNicknameWithReply_(v30, v31, v33);
      }

      goto LABEL_28;
    }

    if (v10)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = MEMORY[0x1E696AD98];
        v24 = objc_opt_class();
        v27 = objc_msgSend_multiplePhoneNumbersTiedToAppleID(v24, v25, v26);
        v29 = objc_msgSend_numberWithBool_(v23, v28, v27);
        *buf = 138412290;
        v36 = v29;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "We can't fetch the personal nickname - multiplePhoneNumbers: %@", buf, 0xCu);
      }
    }

    if (v4)
    {
LABEL_19:
      v4[2](v4, 0);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Nickname feature disabled, not fetching personal nickname", buf, 2u);
      }
    }

    if (v4)
    {
      goto LABEL_19;
    }
  }

LABEL_28:

  v32 = *MEMORY[0x1E69E9840];
}

- (void)updatePersonalNickname:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = objc_msgSend__nicknameFeatureEnabled(self, v6, v7);
  if (!v5 || v8)
  {
    canUpdatePersonalNickname = objc_msgSend__canUpdatePersonalNickname(self, v9, v10);
    v13 = IMOSLoggingEnabled();
    if (!v5 || canUpdatePersonalNickname)
    {
      if (v13)
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v28 = 138412290;
          v29 = v5;
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Received personal nickname from daemon: %@", &v28, 0xCu);
        }
      }

      objc_storeStrong(&self->_personalNickname, a3);
      v25 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v23, v24);
      objc_msgSend_postNotificationName_object_(v25, v26, @"__kIMPersonalNicknameDidChangeNotification", 0);
    }

    else if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = MEMORY[0x1E696AD98];
        v16 = objc_opt_class();
        v19 = objc_msgSend_multiplePhoneNumbersTiedToAppleID(v16, v17, v18);
        v21 = objc_msgSend_numberWithBool_(v15, v20, v19);
        v28 = 138412290;
        v29 = v21;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "We can't update the personal nickname - multiplePhoneNumbers: %@", &v28, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating personal nickname", &v28, 2u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

+ (BOOL)accountsMatchUpToUseNicknames
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], a2, v2);
  BoolFromDomain_forKey = objc_msgSend_getBoolFromDomain_forKey_(v3, v4, *MEMORY[0x1E69A77F8], *MEMORY[0x1E69A7810]);

  return BoolFromDomain_forKey;
}

+ (BOOL)multiplePhoneNumbersTiedToAppleID
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], a2, v2);
  BoolFromDomain_forKey = objc_msgSend_getBoolFromDomain_forKey_(v3, v4, *MEMORY[0x1E69A77F8], *MEMORY[0x1E69A7808]);

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (BoolFromDomain_forKey)
      {
        v7 = @"YES";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "multiplePhoneNumbersTiedToAppleID: %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return BoolFromDomain_forKey;
}

- (BOOL)shouldOfferNicknameSharingForChat:(id)a3
{
  v4 = a3;
  if ((objc_msgSend__nicknameFeatureEnabled(self, v5, v6) & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_11;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
LABEL_10:

      goto LABEL_11;
    }

    *buf = 0;
    v15 = "Nickname feature disabled, not offering nickname sharing";
    v16 = buf;
LABEL_9:
    _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, v15, v16, 2u);
    goto LABEL_10;
  }

  if (IMSharedHelperCurrentRegionRequiresKnownSenderForNickname() && (objc_msgSend_hasKnownParticipantsCache(v4, v7, v8) & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_11;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v18 = 0;
    v15 = "Chat has known participants, and IMSharedHelperCurrentRegionRequiresKnownSenderForNickname is YES. Refusing to offer sharing.";
    v16 = &v18;
    goto LABEL_9;
  }

  if (!objc_msgSend_hasMessageFromMe(v4, v7, v8))
  {
LABEL_11:
    shouldOfferNicknameSharingForHandles = 0;
    goto LABEL_12;
  }

  v11 = objc_msgSend_participants(v4, v9, v10);
  shouldOfferNicknameSharingForHandles = objc_msgSend_shouldOfferNicknameSharingForHandles_(self, v12, v11);

LABEL_12:
  return shouldOfferNicknameSharingForHandles;
}

- (BOOL)shouldOfferNicknameSharingForHandles:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v47 = v4;
    v9 = objc_msgSend_personalNickname(self, v7, v8);

    if (v9)
    {
      v12 = objc_msgSend_allowListedHandlesForSharing(self, v10, v11);
      if (v12)
      {

LABEL_11:
        v20 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8108], v15, v16);
        v23 = objc_msgSend_sharingAudience(v20, v21, v22);

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = v4;
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v49, v61, 16);
        if (v27)
        {
          v28 = *v50;
          while (2)
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v50 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v49 + 1) + 8 * i);
              isContact = objc_msgSend_isContact(v30, v25, v26);
              IsAllowedForSharing = objc_msgSend_handleIsAllowedForSharing_(self, v32, v30);
              IsDeniedForSharing = objc_msgSend_handleIsDeniedForSharing_(self, v34, v30);
              v36 = isContact & (v23 < 2);
              if (IMOSLoggingEnabled())
              {
                v37 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  v40 = objc_msgSend_ID(v30, v38, v39);
                  v41 = v40;
                  v42 = @"NO";
                  if (v36)
                  {
                    v43 = @"YES";
                  }

                  else
                  {
                    v43 = @"NO";
                  }

                  *buf = 138413058;
                  v54 = v40;
                  if (IsAllowedForSharing)
                  {
                    v44 = @"YES";
                  }

                  else
                  {
                    v44 = @"NO";
                  }

                  v55 = 2112;
                  if (IsDeniedForSharing)
                  {
                    v42 = @"YES";
                  }

                  v56 = v43;
                  v57 = 2112;
                  v58 = v44;
                  v59 = 2112;
                  v60 = v42;
                  _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "Handle ID %@ contact %@ allow listed %@ deny listed %@", buf, 0x2Au);
                }
              }

              if (((v36 | IsAllowedForSharing | IsDeniedForSharing) & 1) == 0)
              {
                v18 = 1;
                goto LABEL_34;
              }
            }

            v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v49, v61, 16);
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        v18 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v19 = objc_msgSend_denyListedHandlesForSharing(self, v13, v14);

      if (v19)
      {
        goto LABEL_11;
      }
    }

    v18 = 0;
LABEL_35:
    v4 = v47;
    goto LABEL_36;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Nickname feature disabled, not offering nickname sharing", buf, 2u);
    }
  }

  v18 = 0;
LABEL_36:

  v45 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)setNicknameHandlesUnderScrutiny
{
  v6 = objc_msgSend_scrutinyNicknameHandles(self, a2, v2);
  v5 = objc_msgSend_allObjects(v6, v3, v4);
  IMSetDomainValueForKey();
}

- (id)handlesForNicknamesUnderScrutiny
{
  if (objc_msgSend__nicknameFeatureEnabled(self, a2, v2))
  {
    scrutinyNicknameHandles = self->_scrutinyNicknameHandles;
    if (!scrutinyNicknameHandles)
    {
      v7 = objc_msgSend_getNicknameHandlesUnderScrutiny(self, v4, v5);
      if (v7)
      {
        v8 = objc_alloc(MEMORY[0x1E695DFA8]);
        v10 = objc_msgSend_initWithArray_(v8, v9, v7);
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      }

      v13 = self->_scrutinyNicknameHandles;
      self->_scrutinyNicknameHandles = v10;

      scrutinyNicknameHandles = self->_scrutinyNicknameHandles;
    }

    v12 = scrutinyNicknameHandles;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Nickname feature disabled, not offering handles for nicknames under scrutiny", v15, 2u);
      }
    }

    v12 = 0;
  }

  return v12;
}

- (void)markHandleUnderScrutiny:(id)a3
{
  v10 = objc_msgSend_ID(a3, a2, a3);
  v6 = objc_msgSend_scrutinyNicknameHandles(self, v4, v5);
  objc_msgSend_addObject_(v6, v7, v10);

  objc_msgSend_setNicknameHandlesUnderScrutiny(self, v8, v9);
}

- (void)clearHandleFromScrutiny:(id)a3
{
  v12 = objc_msgSend_ID(a3, a2, a3);
  if (objc_msgSend_length(v12, v4, v5))
  {
    v8 = objc_msgSend_scrutinyNicknameHandles(self, v6, v7);
    objc_msgSend_removeObject_(v8, v9, v12);

    objc_msgSend_setNicknameHandlesUnderScrutiny(self, v10, v11);
  }
}

- (id)personNameComponentsForHandle:(id)a3
{
  v3 = objc_msgSend_nicknameForHandle_(self, a2, a3);
  v6 = objc_msgSend_firstName(v3, v4, v5);
  v9 = objc_msgSend_lastName(v3, v7, v8);
  v10 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v12 = v10;
  if (v6)
  {
    objc_msgSend_setGivenName_(v10, v11, v6);
  }

  if (v9)
  {
    objc_msgSend_setFamilyName_(v12, v11, v9);
  }

  return v12;
}

- (id)imageDataForHandle:(id)a3
{
  v3 = objc_msgSend_nicknameForHandle_(self, a2, a3);
  v6 = objc_msgSend_avatar(v3, v4, v5);
  hasImage = objc_msgSend_hasImage(v6, v7, v8);

  if (hasImage)
  {
    v12 = objc_msgSend_avatar(v3, v10, v11);
    v15 = objc_msgSend_imageData(v12, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)unknownSenderRecordInfoFor:(id)a3
{
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v9 = objc_msgSend_unknownSenderRecords(self, v7, v8);
    v11 = objc_msgSend_objectForKey_(v9, v10, v4);

    v13 = objc_msgSend_processSetOfUnknownSenderRecords_(MEMORY[0x1E69A8190], v12, v11);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Nickname feature disabled, no unknown sender records", v16, 2u);
      }
    }

    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

- (id)nicknameForHandleIDs:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v4;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v36, v40, 16);
    if (v9)
    {
      v11 = *v37;
      *&v10 = 138412290;
      v35 = v10;
      do
      {
        v12 = 0;
        do
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v36 + 1) + 8 * v12);
          if (IMSharedHelperCurrentRegionRequiresKnownSenderForNickname() && (objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v14, v15), v16 = objc_claimAutoreleasedReturnValue(), isIDAKnownContact = objc_msgSend_isIDAKnownContact_(v16, v17, v13), v16, (isIDAKnownContact & 1) == 0))
          {
            if (IMOSLoggingEnabled())
            {
              v29 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                *buf = v35;
                v42 = v13;
                _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Skipping handle %@ because we do not have a contact for it.", buf, 0xCu);
              }
            }
          }

          else
          {
            v19 = objc_msgSend_pendingNicknameUpdates(self, v14, v15, v35, v36);
            v21 = objc_msgSend_objectForKey_(v19, v20, v13);

            if (v21)
            {
              v26 = 0;
              v28 = v21;
LABEL_25:
              v31 = v28;

              v7 = v21;
              goto LABEL_26;
            }

            v24 = objc_msgSend_handledNicknames(self, v22, v23);
            v26 = objc_msgSend_objectForKey_(v24, v25, v13);

            v28 = v26;
            if (v26)
            {
              goto LABEL_25;
            }
          }

          ++v12;
        }

        while (v9 != v12);
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v27, &v36, v40, 16);
        v9 = v30;
      }

      while (v30);
    }

    v31 = 0;
LABEL_26:
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = v4;
        _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Nickname feature disabled, returning nil for nickname for handles %@", buf, 0xCu);
      }
    }

    v31 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)pendingNicknameForHandleIDs:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v4;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v33, 16);
    if (v11)
    {
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = objc_msgSend_pendingNicknameUpdates(self, v9, v10, v25);
          v17 = objc_msgSend_objectForKey_(v15, v16, v14);

          if (v17)
          {
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v30 = v17;
                _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Found a pending nickname: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v30 = v14;
                _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Handle ID: %@", buf, 0xCu);
              }
            }

            v20 = v17;

            goto LABEL_28;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v25, v33, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = 0;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Found no pending nickname(%@) for handle IDs: %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Nickname feature disabled, returning nil for pending nickname for %@", buf, 0xCu);
    }
  }

  v20 = 0;
LABEL_28:

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)currentNicknameForHandleIDs:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v4;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v33, 16);
    if (v11)
    {
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = objc_msgSend_handledNicknames(self, v9, v10, v25);
          v17 = objc_msgSend_objectForKey_(v15, v16, v14);

          if (v17)
          {
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v30 = v17;
                _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Found a current nickname: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v30 = v14;
                _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Handle ID: %@", buf, 0xCu);
              }
            }

            v20 = v17;

            goto LABEL_28;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v25, v33, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = 0;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Found no current nickname(%@) for handle IDs: %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Nickname feature disabled, returning nil for current nickname for %@", buf, 0xCu);
    }
  }

  v20 = 0;
LABEL_28:

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)archivedNicknameForHandleIDs:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v4;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v33, 16);
    if (v11)
    {
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = objc_msgSend_archivedNicknames(self, v9, v10, v25);
          v17 = objc_msgSend_objectForKey_(v15, v16, v14);

          if (v17)
          {
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v30 = v17;
                _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Found an archived nickname: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v30 = v14;
                _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Handle ID: %@", buf, 0xCu);
              }
            }

            v20 = v17;

            goto LABEL_28;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v25, v33, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = 0;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Found no archived nickname(%@) for handle IDs: %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v4;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Nickname feature disabled, returning nil for archived nickname for %@", buf, 0xCu);
    }
  }

  v20 = 0;
LABEL_28:

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)hasObservedTransitionForHandleID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v9 = objc_msgSend_transitionedHandles(self, v7, v8);
    v11 = objc_msgSend_containsObject_(v9, v10, v4);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Nickname feature disabled, returning NO for observed transition for %@", &v15, 0xCu);
      }
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)createSharedProfileStateOracleForHandles:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    if (IMSharedHelperCurrentRegionRequiresKnownSenderForNickname())
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v9 = v4;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v51, v57, 16);
      if (v13)
      {
        v14 = *v52;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v52 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v51 + 1) + 8 * i);
            v17 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v11, v12, v51);
            LOBYTE(v16) = objc_msgSend_isIDAKnownContact_(v17, v18, v16);

            if (v16)
            {

              goto LABEL_20;
            }
          }

          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v51, v57, 16);
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_25;
      }

      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Recipients list does not contain contact, refuse to create a state oracle.", buf, 2u);
      }
    }

    else
    {
LABEL_20:
      if (objc_msgSend_count(v4, v7, v8))
      {
        v23 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v21, v22);
        v26 = objc_msgSend_firstObject(v4, v24, v25);
        v27 = *MEMORY[0x1E695C208];
        v56[0] = *MEMORY[0x1E695C330];
        v56[1] = v27;
        v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v28, v56, 2);
        v31 = objc_msgSend_fetchCNContactForHandleID_withKeys_(v23, v30, v26, v29);

        v34 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v32, v33);
        v37 = objc_msgSend_getContactStore(v34, v35, v36);

        v39 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v38, v4);
        v41 = objc_msgSend_currentNicknameForHandleIDs_(self, v40, v39);
        v43 = objc_msgSend_pendingNicknameForHandleIDs_(self, v42, v39);
        v45 = objc_msgSend_archivedNicknameForHandleIDs_(self, v44, v39);
        v46 = objc_alloc(MEMORY[0x1E695CF98]);
        v48 = objc_msgSend_initWithContact_contactStore_archivedNickname_currentNickname_pendingNickname_(v46, v47, v31, v37, v45, v41, v43);

        goto LABEL_26;
      }

      v19 = IMLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DF82C(v19);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Nickname feature is not enabled, no state oracle.", buf, 2u);
    }
  }

LABEL_25:
  v48 = 0;
LABEL_26:

  v49 = *MEMORY[0x1E69E9840];

  return v48;
}

- (id)_changedKeysForNewNicknameDictionary:(id)a3 oldNicknameDictionary:(id)a4 withComparisonOptions:(unint64_t)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v40 = objc_msgSend_set(MEMORY[0x1E695DFA8], v8, v9);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v6;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v47, v52, 16);
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = 0;
    v16 = *v48;
    do
    {
      v17 = 0;
      v18 = v14;
      v19 = v15;
      do
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v47 + 1) + 8 * v17);
        v14 = objc_msgSend_objectForKeyedSubscript_(obj, v12, v20);

        v15 = objc_msgSend_objectForKeyedSubscript_(v7, v21, v20);

        if (!v15 || objc_msgSend_isUpdateFromNickname_withOptions_(v15, v12, v14, a5))
        {
          objc_msgSend_addObject_(v40, v12, v20);
        }

        ++v17;
        v18 = v14;
        v19 = v15;
      }

      while (v13 != v17);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v47, v52, 16);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = v7;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v43, v51, 16);
  if (v24)
  {
    v26 = v24;
    v27 = *v44;
    v28 = v40;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v44 != v27)
        {
          objc_enumerationMutation(v22);
        }

        v30 = *(*(&v43 + 1) + 8 * i);
        if ((objc_msgSend_containsObject_(v40, v25, v30) & 1) == 0)
        {
          v31 = v22;
          v32 = objc_msgSend_objectForKeyedSubscript_(v22, v25, v30);

          v34 = objc_msgSend_objectForKeyedSubscript_(obj, v33, v30);

          if (!v34 || objc_msgSend_isUpdateFromNickname_withOptions_(v34, v25, v32, a5))
          {
            objc_msgSend_addObject_(v40, v25, v30);
          }

          v14 = v32;
          v15 = v34;
          v22 = v31;
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v43, v51, 16);
    }

    while (v26);
  }

  else
  {
    v28 = v40;
  }

  v37 = objc_msgSend_allObjects(v28, v35, v36);

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (void)updatePendingNicknames:(id)a3 handledNicknames:(id)a4 archivedNicknames:(id)a5
{
  v90 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = objc_msgSend__nicknameFeatureEnabled(self, v11, v12);
  v14 = IMOSLoggingEnabled();
  if (v13)
  {
    if (v14)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v85 = objc_msgSend_count(v8, v18, v19);
        v86 = 2048;
        v87 = objc_msgSend_count(v9, v20, v21);
        v88 = 2048;
        v89 = objc_msgSend_count(v10, v22, v23);
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Nickname store updated, got %lu pending, %lu handled nicknames, %lu archived nicknames", buf, 0x20u);
      }
    }

    v24 = objc_msgSend_set(MEMORY[0x1E695DFA8], v15, v16);
    v27 = objc_msgSend_pendingNicknameUpdates(self, v25, v26);
    v29 = objc_msgSend__changedKeysForNewNicknameDictionary_oldNicknameDictionary_withComparisonOptions_(self, v28, v8, v27, 4);
    objc_msgSend_addObjectsFromArray_(v24, v30, v29);

    v33 = objc_msgSend_handledNicknames(self, v31, v32);
    v35 = objc_msgSend__changedKeysForNewNicknameDictionary_oldNicknameDictionary_withComparisonOptions_(self, v34, v9, v33, 4);
    objc_msgSend_addObjectsFromArray_(v24, v36, v35);

    v39 = objc_msgSend_archivedNicknames(self, v37, v38);
    v41 = objc_msgSend__changedKeysForNewNicknameDictionary_oldNicknameDictionary_withComparisonOptions_(self, v40, v10, v39, 4);
    objc_msgSend_addObjectsFromArray_(v24, v42, v41);

    objc_msgSend_setPendingNicknameUpdates_(self, v43, v8);
    objc_msgSend_setHandledNicknames_(self, v44, v9);
    objc_msgSend_setArchivedNicknames_(self, v45, v10);
    v82[0] = @"handleIDs";
    v50 = objc_msgSend_allKeys(v9, v46, v47);
    v51 = v50;
    if (!v50)
    {
      v51 = objc_msgSend_null(MEMORY[0x1E695DFB0], v48, v49);
    }

    v82[1] = @"__kIMNicknameDidChangeNotificationHandleIDsWithUpdatedNamesUserInfoKey";
    v83[0] = v51;
    v54 = objc_msgSend_allObjects(v24, v48, v49);
    v55 = v54;
    if (!v54)
    {
      v55 = objc_msgSend_null(MEMORY[0x1E695DFB0], v52, v53);
    }

    v83[1] = v55;
    v79 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v52, v83, v82, 2);
    if (!v54)
    {
    }

    if (!v50)
    {
    }

    v80[0] = @"pendingNicknames";
    v58 = v8;
    if (!v8)
    {
      v58 = objc_msgSend_null(MEMORY[0x1E695DFB0], v56, v57);
    }

    v81[0] = v58;
    v80[1] = @"handledNicknames";
    v59 = v9;
    if (!v9)
    {
      v59 = objc_msgSend_null(MEMORY[0x1E695DFB0], v56, v57);
    }

    v81[1] = v59;
    v80[2] = @"archivedNicknames";
    v60 = v10;
    if (!v10)
    {
      v60 = objc_msgSend_null(MEMORY[0x1E695DFB0], v56, v57);
    }

    v81[2] = v60;
    v63 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v56, v81, v80, 3);
    if (!v10)
    {
    }

    if (!v9)
    {
    }

    if (!v8)
    {
    }

    v64 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v61, v62);
    objc_msgSend_postNotificationName_object_userInfo_(v64, v65, @"__kIMNicknameDidChangeNotification", 0, v79);

    v68 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v66, v67);
    objc_msgSend_postNotificationName_object_userInfo_(v68, v69, @"__kIMPendingNicknamesDidChangeNotification", 0, v63);

    if (objc_msgSend_isInitialLoad(self, v70, v71))
    {
      objc_msgSend_setIsInitialLoad_(self, v72, 0);
      v75 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v73, v74);
      objc_msgSend_postNotificationName_object_(v75, v76, @"__kIMNicknameControllerDidLoadNotification", 0);
    }
  }

  else if (v14)
  {
    v77 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v77, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating nicknames", buf, 2u);
    }
  }

  v78 = *MEMORY[0x1E69E9840];
}

- (void)updateSharingAllowList:(id)a3 denyList:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend__nicknameFeatureEnabled(self, v8, v9);
  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v38 = objc_msgSend_count(v6, v14, v15);
        v39 = 2048;
        v40 = objc_msgSend_count(v7, v16, v17);
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Got new allow list data, count: %lu, deny list count: %lu", buf, 0x16u);
      }
    }

    objc_msgSend_setAllowListedHandlesForSharing_(self, v12, v6);
    objc_msgSend_setDenyListedHandlesForSharing_(self, v18, v7);
    v21 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v19, v20);
    v24 = objc_msgSend_handledNicknames(self, v22, v23, @"handleIDs");
    v29 = objc_msgSend_allKeys(v24, v25, v26);
    v30 = v29;
    if (!v29)
    {
      v30 = objc_msgSend_null(MEMORY[0x1E695DFB0], v27, v28);
    }

    v36 = v30;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, &v36, &v35, 1);
    objc_msgSend_postNotificationName_object_userInfo_(v21, v32, @"__kIMNicknameDidChangeNotification", 0, v31);

    if (!v29)
    {
    }
  }

  else if (v11)
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating allow list", buf, 2u);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)updateTransitionedNicknameHandles:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend__nicknameFeatureEnabled(self, v5, v6);
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = MEMORY[0x1E696AD98];
        v14 = objc_msgSend_count(v4, v11, v12);
        v16 = objc_msgSend_numberWithUnsignedInteger_(v13, v15, v14);
        v19 = 138412290;
        v20 = v16;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Got new transitioned list data, count: %@", &v19, 0xCu);
      }
    }

    objc_msgSend_setTransitionedHandles_(self, v9, v4);
  }

  else if (v8)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating transitioned handles", &v19, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateIsActiveList:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v30[0] = @"activeRecords";
    v9 = v4;
    if (!v4)
    {
      v9 = objc_msgSend_null(MEMORY[0x1E695DFB0], v7, v8);
    }

    v30[1] = @"previousActiveRecords";
    v31[0] = v9;
    v10 = objc_msgSend_activeRecords(self, v7, v8);
    v15 = objc_msgSend_copy(v10, v11, v12);
    v16 = v15;
    if (!v15)
    {
      v16 = objc_msgSend_null(MEMORY[0x1E695DFB0], v13, v14);
    }

    v31[1] = v16;
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v31, v30, 2);
    if (!v15)
    {
    }

    if (!v4)
    {
    }

    v20 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v18, v19);
    objc_msgSend_postNotificationName_object_userInfo_(v20, v21, @"__kIMActiveNicknamesDidChangeNotification", 0, v17);

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v28 = 134217984;
        v29 = objc_msgSend_count(v4, v24, v25);
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Got new active list data, count: %lu", &v28, 0xCu);
      }
    }

    objc_msgSend_setActiveRecords_(self, v22, v4);
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating active handles", &v28, 2u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)updateIsIgnoredList:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend__nicknameFeatureEnabled(self, v5, v6);
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v15 = 134217984;
        v16 = objc_msgSend_count(v4, v11, v12);
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Got new ignored list data, count: %lu", &v15, 0xCu);
      }
    }

    objc_msgSend_setIgnoredRecords_(self, v9, v4);
  }

  else if (v8)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating ignored handles", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateUnknownSenderRecords:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend__nicknameFeatureEnabled(self, v5, v6);
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v15 = 134217984;
        v16 = objc_msgSend_count(v4, v11, v12);
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Got new unknown senders list data, count: %lu", &v15, 0xCu);
      }
    }

    objc_msgSend_setUnknownSenderRecords_(self, v9, v4);
  }

  else if (v8)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating unknown sender records", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_handleIDsForHandle:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (v3)
  {
    v7 = objc_msgSend_ID(v3, v4, v5);
    objc_msgSend_addObject_(v6, v8, v7);

    v10 = objc_msgSend_cnContactWithKeys_(v3, v9, MEMORY[0x1E695E0F0]);
    v12 = objc_msgSend_phoneNumbersForCNContact_(MEMORY[0x1E69A7FD0], v11, v10);
    v14 = objc_msgSend_emailsForCNContact_(MEMORY[0x1E69A7FD0], v13, v10);
    if (objc_msgSend_count(v12, v15, v16))
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v19 = v12;
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v45, v50, 16);
      if (v21)
      {
        v22 = v21;
        v23 = *v46;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v46 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v45 + 1) + 8 * i);
            v26 = IMCanonicalizeFormattedString();
            objc_msgSend_addObject_(v6, v27, v26);
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v28, &v45, v50, 16);
        }

        while (v22);
      }
    }

    if (objc_msgSend_count(v14, v17, v18))
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v29 = v14;
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v41, v49, 16);
      if (v31)
      {
        v32 = v31;
        v33 = *v42;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v42 != v33)
            {
              objc_enumerationMutation(v29);
            }

            v35 = *(*(&v41 + 1) + 8 * j);
            v36 = IMCanonicalizeFormattedString();
            objc_msgSend_addObject_(v6, v37, v36, v41);
          }

          v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v38, &v41, v49, 16);
        }

        while (v32);
      }
    }
  }

  v39 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)updatePendingNicknameForHandleIDs:(id)a3
{
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    v9 = objc_msgSend_remoteDaemon(self, v7, v8);
    objc_msgSend_clearPendingNicknamePhotoUpdateForHandleIDs_(v9, v10, v4);
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_7;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating pending nickname", v11, 2u);
    }
  }

LABEL_7:
}

- (void)setPersonalNicknameFromOnboardingResult:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    if (objc_msgSend__canUpdatePersonalNickname(self, v7, v8))
    {
      v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8108], v9, v10);
      objc_msgSend_setSharingEnabled_(v11, v12, 1);

      v15 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8108], v13, v14);
      v18 = objc_msgSend_sharingAudience(v4, v16, v17);
      objc_msgSend_setSharingAudience_(v15, v19, v18);

      v22 = objc_msgSend_didPersistImageToContact(v4, v20, v21);
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = @"YES";
          if (v22)
          {
            v26 = @"NO";
          }

          v76 = 138412290;
          v77 = v26;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Nickname photo forked in onboarding: %@", &v76, 0xCu);
        }
      }

      v27 = objc_msgSend_meCardSharingState(self, v23, v24);
      objc_msgSend_setImageForkedFromMeCard_(v27, v28, v22 ^ 1u);

      v29 = objc_alloc_init(MEMORY[0x1E695CF18]);
      v32 = objc_msgSend_givenName(v4, v30, v31);
      v34 = objc_msgSend_truncateNameIfNeeded_(self, v33, v32);

      v37 = objc_msgSend_familyName(v4, v35, v36);
      v39 = objc_msgSend_truncateNameIfNeeded_(self, v38, v37);

      objc_msgSend_setGivenName_(v29, v40, v34);
      objc_msgSend_setFamilyName_(v29, v41, v39);
      v44 = objc_msgSend_imageData(v4, v42, v43);
      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = @"YES";
          if (!v44)
          {
            v48 = @"NO";
          }

          v76 = 138412290;
          v77 = v48;
          _os_log_impl(&dword_1A823F000, v47, OS_LOG_TYPE_INFO, "Onboarding result has imageData: %@", &v76, 0xCu);
        }
      }

      if (v44)
      {
        objc_msgSend_cropRect(v4, v45, v46);
        v49 = IMCroppedImageDataFromDataWithCropRect();

        objc_msgSend_setImageData_(v29, v50, v49);
      }

      else
      {
        v49 = 0;
      }

      v60 = objc_msgSend_wallpaper(v4, v45, v46);
      objc_msgSend_setWallpaper_(v29, v61, v60);

      v64 = objc_msgSend_watchWallpaperImageData(v4, v62, v63);
      objc_msgSend_setWatchWallpaperImageData_(v29, v65, v64);

      v66 = objc_alloc(MEMORY[0x1E69A8190]);
      v68 = objc_msgSend_initWithMeContact_(v66, v67, v29);
      if (IMOSLoggingEnabled())
      {
        v70 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          v76 = 138412290;
          v77 = v68;
          _os_log_impl(&dword_1A823F000, v70, OS_LOG_TYPE_INFO, "Setting personal nickname after onboarding to %@", &v76, 0xCu);
        }
      }

      objc_msgSend_setPersonalNickname_(self, v69, v68);
      v73 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v71, v72);
      objc_msgSend_postNotificationName_object_(v73, v74, @"__kIMNicknameOnboardingDidFinishNotification", 0);
    }

    else if (IMOSLoggingEnabled())
    {
      v52 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = MEMORY[0x1E696AD98];
        v54 = objc_opt_class();
        v57 = objc_msgSend_multiplePhoneNumbersTiedToAppleID(v54, v55, v56);
        v59 = objc_msgSend_numberWithBool_(v53, v58, v57);
        v76 = 138412290;
        v77 = v59;
        _os_log_impl(&dword_1A823F000, v52, OS_LOG_TYPE_INFO, "We can't set the personal nickname after onboarding - multiplePhoneNumbers: %@", &v76, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v51 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      LOWORD(v76) = 0;
      _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "Nickname feature is disabled, don't set personal nickname after onboarding", &v76, 2u);
    }
  }

  v75 = *MEMORY[0x1E69E9840];
}

- (void)updatePersonalNicknameIfNecessaryWithMeCardSharingResult:(id)a3
{
  v145 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend__nicknameFeatureEnabled(self, v5, v6))
  {
    if (objc_msgSend__canUpdatePersonalNickname(self, v7, v8))
    {
      v11 = objc_msgSend_meCardSharingState(self, v9, v10);
      v14 = objc_msgSend_nameForkedFromMeCard(v11, v12, v13);

      if (v14)
      {
LABEL_22:
        v52 = objc_msgSend_meCardSharingState(self, v15, v16);
        v55 = objc_msgSend_imageForkedFromMeCard(v52, v53, v54);

        v58 = objc_msgSend_didSaveImageToMeCard(v4, v56, v57);
        if (v55 == v58)
        {
          if (IMOSLoggingEnabled())
          {
            v61 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              v62 = @"YES";
              if (v58)
              {
                v62 = @"NO";
              }

              *buf = 138412290;
              v140 = v62;
              _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_INFO, "Nickname photo now forked: %@", buf, 0xCu);
            }
          }

          v63 = objc_msgSend_meCardSharingState(self, v59, v60);
          objc_msgSend_setImageForkedFromMeCard_(v63, v64, v58 ^ 1u);
        }

        v65 = objc_alloc_init(MEMORY[0x1E695CF18]);
        v68 = objc_msgSend_givenName(v4, v66, v67);
        v138 = objc_msgSend_truncateNameIfNeeded_(self, v69, v68);

        v72 = objc_msgSend_familyName(v4, v70, v71);
        v74 = objc_msgSend_truncateNameIfNeeded_(self, v73, v72);

        objc_msgSend_setGivenName_(v65, v75, v138);
        objc_msgSend_setFamilyName_(v65, v76, v74);
        v79 = objc_msgSend_personalNickname(self, v77, v78);
        v82 = objc_msgSend_contactImage(v4, v80, v81);

        if (v82 && (objc_msgSend_contactImage(v4, v83, v84), v85 = objc_claimAutoreleasedReturnValue(), objc_msgSend_imageData(v85, v86, v87), v88 = objc_claimAutoreleasedReturnValue(), v89 = v88 == 0, v88, v85, v89))
        {
          v101 = 0;
          v93 = 0;
          v100 = 1;
        }

        else
        {
          v90 = objc_msgSend_avatar(v79, v83, v84);
          v93 = objc_msgSend_imageData(v90, v91, v92);

          if (v82)
          {
            v96 = objc_msgSend_contactImage(v4, v94, v95);
            v99 = objc_msgSend_imageData(v96, v97, v98);

            v100 = 0;
            v101 = 1;
            v93 = v99;
          }

          else
          {
            v100 = 0;
            v101 = 0;
          }
        }

        if (IMOSLoggingEnabled())
        {
          v104 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
          {
            v105 = @"YES";
            if (v82)
            {
              v106 = @"YES";
            }

            else
            {
              v106 = @"NO";
            }

            if (v100)
            {
              v107 = @"YES";
            }

            else
            {
              v107 = @"NO";
            }

            *buf = 138412802;
            v140 = v106;
            v141 = 2112;
            v142 = v107;
            if (!v101)
            {
              v105 = @"NO";
            }

            v143 = 2112;
            v144 = v105;
            _os_log_impl(&dword_1A823F000, v104, OS_LOG_TYPE_INFO, "imageUpdated = %@, imageDeleted = %@, shouldCrop = %@", buf, 0x20u);
          }
        }

        if (v101)
        {
          v108 = objc_msgSend_contactImage(v4, v102, v103);
          objc_msgSend_cropRect(v108, v109, v110);
          v111 = IMCroppedImageDataFromDataWithCropRect();

          v93 = v111;
        }

        objc_msgSend_setImageData_(v65, v102, v93);
        v114 = objc_msgSend_wallpaper(v4, v112, v113);
        objc_msgSend_setWallpaper_(v65, v115, v114);

        v118 = objc_msgSend_watchWallpaperImageData(v4, v116, v117);
        objc_msgSend_setWatchWallpaperImageData_(v65, v119, v118);

        v122 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v120, v121);
        isSwiftUIAvatarRenderingEnabled = objc_msgSend_isSwiftUIAvatarRenderingEnabled(v122, v123, v124);

        if (isSwiftUIAvatarRenderingEnabled && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v128 = objc_msgSend_avatarRecipeData(v4, v126, v127);
          objc_msgSend_setAvatarRecipeData_(v65, v129, v128);
        }

        v130 = objc_alloc(MEMORY[0x1E69A8190]);
        v132 = objc_msgSend_initWithMeContact_(v130, v131, v65);
        v134 = v132;
        if (!v79 || (v100 | objc_msgSend_isUpdateFromNickname_withOptions_(v132, v133, v79, 8)) == 1)
        {
          if (IMOSLoggingEnabled())
          {
            v136 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v140 = v79;
              v141 = 2112;
              v142 = v134;
              _os_log_impl(&dword_1A823F000, v136, OS_LOG_TYPE_INFO, "Updating personal nickname from %@ to %@", buf, 0x16u);
            }
          }

          objc_msgSend_setPersonalNickname_(self, v135, v134);
        }

        goto LABEL_61;
      }

      v17 = objc_msgSend_contactStore(self, v15, v16);
      v20 = objc_msgSend_keysForNicknameHandling(MEMORY[0x1E69A7FD0], v18, v19);
      v22 = objc_msgSend_fetchMeContactWithKeys_(v17, v21, v20);

      v25 = objc_msgSend_givenName(v22, v23, v24);
      v28 = objc_msgSend_givenName(v4, v26, v27);
      if (objc_msgSend_isEqualToString_(v25, v29, v28))
      {
        v32 = objc_msgSend_familyName(v22, v30, v31);
        v35 = objc_msgSend_familyName(v4, v33, v34);
        isEqualToString = objc_msgSend_isEqualToString_(v32, v36, v35);

        if (isEqualToString)
        {
LABEL_21:

          goto LABEL_22;
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
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "Nickname name now forked", buf, 2u);
        }
      }

      v50 = objc_msgSend_meCardSharingState(self, v47, v48);
      objc_msgSend_setNameForkedFromMeCard_(v50, v51, 1);

      goto LABEL_21;
    }

    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = MEMORY[0x1E696AD98];
        v41 = objc_opt_class();
        v44 = objc_msgSend_multiplePhoneNumbersTiedToAppleID(v41, v42, v43);
        v46 = objc_msgSend_numberWithBool_(v40, v45, v44);
        *buf = 138412290;
        v140 = v46;
        _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_INFO, "We can't update the personal nickname if necessary - multiplePhoneNumbers: %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Nickname feature is disabled, don't update personal nickname with me card sharing result", buf, 2u);
    }
  }

LABEL_61:

  v137 = *MEMORY[0x1E69E9840];
}

- (id)truncateNameIfNeeded:(id)a3
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5) < 0xC9)
  {
    v7 = v3;
  }

  else
  {
    v7 = objc_msgSend_substringToIndex_(v3, v6, 200);
  }

  v8 = v7;

  return v8;
}

- (id)remoteDaemon
{
  v3 = objc_msgSend_daemonController(self, a2, v2);
  v6 = objc_msgSend_remoteDaemon(v3, v4, v5);

  return v6;
}

- (void)markAllAsPending
{
  if (objc_msgSend__nicknameFeatureEnabled(self, a2, v2))
  {
    v9 = objc_msgSend_remoteDaemon(self, v4, v5);
    objc_msgSend_markAllNicknamesAsPending(v9, v6, v7);
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Nickname feature disabled, not updating all as pending", buf, 2u);
    }
  }
}

@end