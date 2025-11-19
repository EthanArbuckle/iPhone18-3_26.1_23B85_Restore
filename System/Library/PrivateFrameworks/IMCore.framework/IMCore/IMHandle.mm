@interface IMHandle
+ (id)bestIMHandleInArray:(id)a3;
+ (id)cnPhoneticKeys;
+ (id)filterIMHandlesForAccountSiblings:(id)a3 onAccount:(id)a4;
+ (id)filterIMHandlesForBestAccountSiblings:(id)a3;
+ (id)handlesForCNContact:(id)a3;
+ (id)nameOfStatus:(unint64_t)a3;
+ (void)_loadStatusNames;
+ (void)handlesForContacts:(id)a3 useBestHandle:(BOOL)a4 useExtendedAsyncLookup:(BOOL)a5 completion:(id)a6;
- (BOOL)_allowedByScreenTime;
- (BOOL)_hasServiceNameProperties;
- (BOOL)_isChatSiblingOf:(id)a3;
- (BOOL)_setCapabilities:(unint64_t)a3;
- (BOOL)areCNContactPropertiesRecent;
- (BOOL)hasAudio;
- (BOOL)hasCapability:(unint64_t)a3;
- (BOOL)hasMultiwayAudio;
- (BOOL)hasMultiwayVideo;
- (BOOL)hasName;
- (BOOL)hasOtherSiblings;
- (BOOL)hasServer;
- (BOOL)isAccountSiblingOf:(id)a3;
- (BOOL)isApple;
- (BOOL)isBetterThanIMHandle:(id)a3 nonPhoneNumbersPreferred:(BOOL)a4;
- (BOOL)isBuddy;
- (BOOL)isBusiness;
- (BOOL)isChatBot;
- (BOOL)isContact;
- (BOOL)isContactButNotMe;
- (BOOL)isIndiaShortCode;
- (BOOL)isKTVerified;
- (BOOL)isLoginIMHandle;
- (BOOL)isLoginIMHandleForAnyAccount;
- (BOOL)isMako;
- (BOOL)isMapKitBusiness;
- (BOOL)isSiblingOf:(id)a3;
- (BOOL)isStewie;
- (BOOL)isStewieEmergency;
- (BOOL)isStewieEmergencyServices;
- (BOOL)isStewieRoadside;
- (BOOL)isStewieTranscriptSharingHandle;
- (BOOL)isSystemUser;
- (BOOL)looksLikeChatBot;
- (BOOL)matchesIMHandle:(id)a3;
- (BOOL)matchesLoginHandleForAnyAccount;
- (BOOL)resetCNContact;
- (DNDContactHandle)dndContactHandle;
- (IMBrandManager)brandManager;
- (IMHandle)imHandleWithoutResource;
- (IMHandle)init;
- (IMHandle)initWithAccount:(id)a3 ID:(id)a4 alreadyCanonical:(BOOL)a5;
- (IMHandle)initWithCoder:(id)a3;
- (NSArray)accountSiblingsArray;
- (NSArray)emails;
- (NSArray)existingAccountSiblingsArray;
- (NSArray)groupsArray;
- (NSArray)siblingsArray;
- (NSDate)availabilityStatusPublishedDate;
- (NSSet)groups;
- (NSSet)siblings;
- (NSString)IDWithoutResource;
- (NSString)_displayNameWithAbbreviation;
- (NSString)accountTypeName;
- (NSString)countryCode;
- (NSString)displayID;
- (NSString)email;
- (NSString)firstName;
- (NSString)fullName;
- (NSString)idleString;
- (NSString)lastName;
- (NSString)mobileDeviceName;
- (NSString)name;
- (NSString)nameAndEmail;
- (NSString)nameAndID;
- (NSString)nameOfStatus;
- (NSString)nameThatIsNotHandle;
- (NSString)nickname;
- (NSString)normalizedID;
- (NSString)offlineString;
- (NSString)phoneticFirstName;
- (NSString)phoneticFullName;
- (NSString)phoneticLastName;
- (NSString)resource;
- (NSString)server;
- (NSString)statusMessage;
- (double)idleTime;
- (double)timeSinceStatusChanged;
- (double)timeSinceWentOffline;
- (id)_IDWithTrimmedServer;
- (id)_bestChatSibling;
- (id)_chatSiblings;
- (id)_contactID;
- (id)_displayNameWithContact:(id)a3;
- (id)_displayNameWithNicknameIfAvailable;
- (id)_formattedPhoneNumber;
- (id)_handleInfo;
- (id)_unformattedPhoneNumber;
- (id)beginObservingAvailability;
- (id)bestAccountSibling;
- (id)bestIMHandleForAccount:(id)a3 onService:(id)a4 inGroup:(id)a5 otherThan:(id)a6;
- (id)bestSibling;
- (id)chatSiblingsArray;
- (id)cnContactWithKeys:(id)a3;
- (id)dependentIMHandles;
- (id)description;
- (id)displayNameForChat:(id)a3;
- (id)existingChatSiblingsArray;
- (id)existingIMHandleWithoutResource;
- (id)findMyHandle;
- (id)findMySiblingHandles;
- (id)fmfHandle;
- (id)imHandleForOtherAccount:(id)a3;
- (id)immediateNameWithNeedsSuggestedNameFetch:(BOOL *)a3 useSuggestedName:(BOOL)a4 allowHandles:(BOOL)a5;
- (id)namePrefixedWithMaybe;
- (id)nicknameFromNicknameController;
- (id)nicknameObject;
- (id)publicAPIPropertiesDictionary;
- (int64_t)availability;
- (int64_t)blockedStatus;
- (int64_t)compareAccountNames:(id)a3;
- (int64_t)compareFirstNames:(id)a3;
- (int64_t)compareIDs:(id)a3;
- (int64_t)compareLastNames:(id)a3;
- (int64_t)compareNormalizedIDs:(id)a3;
- (int64_t)compareStatus:(id)a3;
- (int64_t)offGridMode;
- (unint64_t)capabilities;
- (unint64_t)status;
- (unsigned)sortOrderInGroup:(id)a3;
- (void)_clearCNContactProperties;
- (void)_createPhoneNumberRefIfNeeded;
- (void)_fetchBrandInfoForBrandWithURI:(id)a3 forType:(unint64_t)a4 simID:(id)a5;
- (void)_fetchBrandInfoForBusiness:(unint64_t)a3 simID:(id)a4;
- (void)_fetchBrandInfoForRoadside;
- (void)_fetchBrandLogoFromChatRegistryFor:(id)a3;
- (void)_fetchedBrand:(id)a3 withBrandURI:(id)a4 simID:(id)a5;
- (void)_filterStatusMessage;
- (void)_postNotification:(id)a3;
- (void)_postNotificationName:(id)a3 userInfo:(id)a4;
- (void)_postOnScreenChangedNotificationForBrandProperty:(id)a3;
- (void)_setBaseFirstName:(id)a3 lastName:(id)a4 fullName:(id)a5;
- (void)_setCountryCode:(id)a3 updateSiblings:(BOOL)a4;
- (void)_setExtraProperties:(id)a3;
- (void)_setIDStatus:(int64_t)a3;
- (void)_setOriginalID:(id)a3;
- (void)_setOriginalID:(id)a3 updateSiblings:(BOOL)a4;
- (void)_stopRetainingAccount:(id)a3;
- (void)_updateOriginalID:(id)a3;
- (void)_updateStatusBasedOnAuthRequestStatus;
- (void)associatedBusinessIDChanged;
- (void)autoInviteToViewAvailabilityIfNeededFromHandleID:(id)a3;
- (void)autoInviteToViewOffGridModeIfNeededFromHandleID:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fetchBrandInfoIfNecessaryWithSimID:(id)a3;
- (void)forceFetchChatBotBrandInfoWithSimID:(id)a3;
- (void)isInvitedToViewMyFocusStatusFromHandleID:(id)a3 completion:(id)a4;
- (void)propertiesChanged:(id)a3;
- (void)releaseNotificationQueue;
- (void)resetCNContactProperties;
- (void)resetCachedName;
- (void)scheduleSuggestedNameFetchIfNecessary;
- (void)setBlockedStatus:(int64_t)a3;
- (void)setCapabilities:(unint64_t)a3;
- (void)setCustomPictureData:(id)a3;
- (void)setCustomPictureData:(id)a3 key:(id)a4;
- (void)setFeedUpdatedDate:(id)a3;
- (void)setFirstName:(id)a3 lastName:(id)a4 fullName:(id)a5 andUpdateABPerson:(BOOL)a6;
- (void)setIdleSince:(id)a3;
- (void)setImageData:(id)a3;
- (void)setIsBot:(BOOL)a3;
- (void)setIsMobile:(BOOL)a3;
- (void)setLocalNickname:(id)a3;
- (void)setStatus:(unint64_t)a3 message:(id)a4 richMessage:(id)a5;
- (void)setSuggestedName:(id)a3;
- (void)statusMessageChanged:(id)a3;
- (void)updateCNContact:(id)a3;
@end

@implementation IMHandle

- (IMHandle)init
{
  v14.receiver = self;
  v14.super_class = IMHandle;
  v3 = [(IMHandle *)&v14 init];
  if (v3)
  {
    v4 = objc_msgSend_copyStringGUIDForObject_(MEMORY[0x1E696AEC0], v2, v3);
    guid = v3->_guid;
    v3->_guid = v4;

    v3->_isAnonymous = 0;
    *&v3->_isMobile = 0;
    v3->_status = 0;
    statusMsg = v3->_statusMsg;
    v3->_statusMsg = &stru_1F1B76F98;

    prevStatusMsg = v3->_prevStatusMsg;
    v3->_prevStatusMsg = &stru_1F1B76F98;

    v8 = IMCountryCodeForIncomingTextMessage();
    v11 = objc_msgSend_copy(v8, v9, v10);
    countryCode = v3->_countryCode;
    v3->_countryCode = v11;
  }

  return v3;
}

- (BOOL)looksLikeChatBot
{
  v2 = self;
  v3 = [(IMHandle *)v2 ID];
  if (!v3)
  {
    sub_1A84E5DBC();
    v3 = sub_1A84E5D8C();
  }

  v4 = [(NSString *)v3 __im_isChatBotPatterned];

  return v4;
}

- (BOOL)isMapKitBusiness
{
  isBusiness = self->_isBusiness;
  if (!isBusiness)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = objc_msgSend_ID(self, a2, v2);
    v7 = MEMORY[0x1AC56C3A0]();
    v9 = objc_msgSend_numberWithBool_(v5, v8, v7);
    v10 = self->_isBusiness;
    self->_isBusiness = v9;

    isBusiness = self->_isBusiness;
  }

  return objc_msgSend_BOOLValue(isBusiness, a2, v2);
}

- (BOOL)isStewieRoadside
{
  v3 = objc_msgSend_ID(self, a2, v2);
  v4 = IMIsStringStewieRoadside();

  return v4;
}

- (BOOL)isBusiness
{
  if (objc_msgSend_isMapKitBusiness(self, a2, v2))
  {
    return 1;
  }

  return objc_msgSend_isChatBot(self, v4, v5);
}

- (BOOL)isChatBot
{
  v2 = self;
  v3 = sub_1A824DF2C();

  return v3 & 1;
}

- (BOOL)isStewieTranscriptSharingHandle
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v4, v5, v6);

  if (isTranscriptSharingEnabled)
  {
    v10 = objc_msgSend_ID(self, v8, v9);
    if (objc_msgSend_hasPrefix_(v10, v11, *MEMORY[0x1E69A7DB0]))
    {

      return 1;
    }

    v14 = objc_msgSend_ID(self, v12, v13);
    hasSuffix = objc_msgSend_hasSuffix_(v14, v15, *MEMORY[0x1E69A6EA0]);

    if (hasSuffix)
    {
      return 1;
    }
  }

  return 0;
}

- (id)existingChatSiblingsArray
{
  v4 = objc_msgSend_sharedInstance(IMHandleRegistrar, a2, v2);
  v6 = objc_msgSend__existingChatSiblingsForHandle_(v4, v5, self);

  return v6;
}

- (NSString)countryCode
{
  countryCode = self->_countryCode;
  if (countryCode)
  {
    v3 = countryCode;
  }

  else
  {
    v3 = IMCountryCodeForIncomingTextMessage();
  }

  return v3;
}

- (void)associatedBusinessIDChanged
{
  if (objc_msgSend_isStewieRoadside(self, a2, v2))
  {

    objc_msgSend__fetchBrandInfoForRoadside(self, v4, v5);
  }
}

- (BOOL)isLoginIMHandle
{
  v3 = self;
  v4 = objc_msgSend_loginIMHandle(self->_account, a2, v2);
  LOBYTE(v3) = v4 == v3;

  return v3;
}

- (BOOL)isContact
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], a2, v2);
  if (objc_msgSend_isBatchFetchingForLaunchCompleted(v4, v5, v6))
  {
  }

  else
  {
    v8 = IMIsRunningInUnitTesting();

    if ((v8 & 1) == 0)
    {
      v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v7, v9);
      v16 = objc_msgSend_ID(self, v14, v15);
      isIDAKnownContact = objc_msgSend_isIDAKnownContact_(v11, v17, v16);

      goto LABEL_6;
    }
  }

  v10 = MEMORY[0x1E69A7FD0];
  v11 = objc_msgSend_cnContactWithKeys_(self, v7, MEMORY[0x1E695E0F0]);
  isIDAKnownContact = objc_msgSend_isCNContactAKnownContact_(v10, v12, v11);
LABEL_6:

  return isIDAKnownContact;
}

- (BOOL)isStewie
{
  v3 = objc_msgSend_ID(self, a2, v2);
  v4 = MEMORY[0x1AC56C3D0]();

  return v4;
}

- (NSString)name
{
  v4 = objc_msgSend_cachedName(self, a2, v2);

  if (objc_msgSend_isBusiness(self, v5, v6) && v4)
  {
    v9 = objc_msgSend_cachedName(self, v7, v8);
    v10 = MEMORY[0x1E69A7F28];
    v13 = objc_msgSend_ID(self, v11, v12);
    v15 = objc_msgSend_placeholderNameForBrandURI_(v10, v14, v13);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v16, v15);

    if ((isEqualToString & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
    goto LABEL_11;
  }

  v18 = IMHandleLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "No cached name, fetching", v31, 2u);
  }

  v20 = objc_msgSend_immediateNameWithNeedsSuggestedNameFetch_useSuggestedName_(self, v19, 0, 1);
  if (objc_msgSend_length(v20, v21, v22))
  {
    objc_msgSend_setCachedName_(self, v23, v20);
  }

LABEL_11:
  v24 = objc_msgSend_cachedName(self, v7, v8);
  if (objc_msgSend_length(v24, v25, v26))
  {
    objc_msgSend_cachedName(self, v27, v28);
  }

  else
  {
    objc_msgSend_immediateNameWithNeedsSuggestedNameFetch_useSuggestedName_(self, v27, 0, 1);
  }
  v29 = ;

  return v29;
}

- (BOOL)_hasServiceNameProperties
{
  if (objc_msgSend_length(self->_firstName, a2, v2) || objc_msgSend_length(self->_lastName, v4, v5))
  {
    return 1;
  }

  if (!objc_msgSend_length(self->_nickname, v6, v7))
  {
    return 0;
  }

  v12 = objc_msgSend_ID(self, v10, v11);
  v8 = objc_msgSend_localizedCompare_(v12, v13, self->_nickname) != 0;

  return v8;
}

- (void)scheduleSuggestedNameFetchIfNecessary
{
  if ((objc_msgSend_hasCheckedForSuggestions(self, a2, v2) & 1) == 0)
  {
    v6 = objc_msgSend_sharedInstance(IMSuggestionsService, v4, v5);
    objc_msgSend_scheduleFetchIfNecessaryForHandle_(v6, v7, self);

    MEMORY[0x1EEE66B58](self, sel_setHasCheckedForSuggestions_, 1);
  }
}

- (int64_t)blockedStatus
{
  v4 = objc_msgSend_sharedBlockList(MEMORY[0x1E69A7F20], a2, v2);
  if (objc_msgSend_allowsExpensiveBlockListChecking(v4, v5, v6))
  {
    v9 = objc_msgSend_ID(self, v7, v8);
    v11 = objc_msgSend_addressIsBlocked_(v4, v10, v9) ^ 1;
  }

  else
  {
    v11 = 2;
  }

  return v11;
}

- (BOOL)isStewieEmergency
{
  v3 = objc_msgSend_ID(self, a2, v2);
  v4 = IMIsStringStewieEmergency();

  return v4;
}

- (BOOL)isIndiaShortCode
{
  v4 = objc_msgSend_normalizedID(self, a2, v2);
  v7 = objc_msgSend_im_stripCategoryLabel(v4, v5, v6);
  v10 = objc_msgSend_length(v7, v8, v9);

  result = objc_msgSend_isEqual_(self->_countryCode, v11, @"in");
  if ((v10 - 3) >= 7)
  {
    return 0;
  }

  return result;
}

- (NSString)normalizedID
{
  normalizedFormOfID = self->_normalizedFormOfID;
  if (normalizedFormOfID)
  {
    goto LABEL_6;
  }

  v5 = objc_msgSend_service(self, a2, v2);
  v8 = objc_msgSend_supportsPhoneNumberMapping(v5, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_service(self, v9, v10);
    v13 = objc_msgSend_normalizedFormOfID_(v11, v12, self->_id);
    v14 = self->_normalizedFormOfID;
    self->_normalizedFormOfID = v13;

    normalizedFormOfID = self->_normalizedFormOfID;
    if (normalizedFormOfID)
    {
LABEL_6:
      v17 = normalizedFormOfID;
      goto LABEL_7;
    }

    v15 = MEMORY[0x1AC56C3F0](self->_id);
    v16 = self->_normalizedFormOfID;
    self->_normalizedFormOfID = v15;
  }

  normalizedFormOfID = self->_normalizedFormOfID;
  if (normalizedFormOfID)
  {
    goto LABEL_6;
  }

  v17 = MEMORY[0x1AC56C3F0](self->_id);
LABEL_7:

  return v17;
}

- (NSString)_displayNameWithAbbreviation
{
  v6 = objc_msgSend_cnContact(self, a2, v2);
  if (v6)
  {
    if (objc_msgSend_shouldShowNickNames(MEMORY[0x1E69A7FD0], v4, v5))
    {
      v9 = objc_msgSend_nickname(self, v7, v8);
      v12 = objc_msgSend_length(v9, v10, v11);
    }

    else
    {
      v9 = 0;
      v12 = objc_msgSend_length(0, v7, v8);
    }

    if (v12)
    {
      v15 = v9;
    }

    else
    {
      v16 = objc_msgSend_cachedDisplayNameWithAbbreviation(self, v13, v14);

      if (!v16)
      {
        if (objc_msgSend_shouldShowAbbreviatedNames(MEMORY[0x1E69A7FD0], v17, v18))
        {
          v21 = objc_msgSend_abbreviatedNameForCNContact_(MEMORY[0x1E69A7FD0], v19, v6);
          v24 = objc_msgSend_length(v21, v22, v23);
        }

        else
        {
          v21 = 0;
          v24 = objc_msgSend_length(0, v19, v20);
        }

        if (v24)
        {
          objc_msgSend_setCachedDisplayNameWithAbbreviation_(self, v25, v21);
        }
      }

      v26 = objc_msgSend_cachedDisplayNameWithAbbreviation(self, v17, v18);
      if (objc_msgSend_length(v26, v27, v28))
      {
        objc_msgSend_cachedDisplayNameWithAbbreviation(self, v29, v30);
      }

      else
      {
        objc_msgSend_name(self, v29, v30);
      }
      v15 = ;
    }
  }

  else
  {
    v15 = objc_msgSend_name(self, v4, v5);
  }

  return v15;
}

- (NSString)nickname
{
  v6 = objc_msgSend_cnContact(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_nickNameForCNContact_(MEMORY[0x1E69A7FD0], v4, v6);
    v10 = objc_msgSend_length(v7, v8, v9);
  }

  else
  {
    v7 = 0;
    v10 = objc_msgSend_length(0, v4, v5);
  }

  if (v10)
  {
    v13 = v7;
LABEL_8:
    v16 = v13;
    goto LABEL_9;
  }

  if (objc_msgSend__hasServiceNameProperties(self, v11, v12))
  {
    v13 = self->_nickname;
    goto LABEL_8;
  }

  if (objc_msgSend_isLoginIMHandle(self, v14, v15))
  {
    v20 = objc_msgSend_me(IMMe, v18, v19);
    v16 = objc_msgSend_nickname(v20, v21, v22);
  }

  else
  {
    v16 = 0;
  }

LABEL_9:

  return v16;
}

- (NSString)displayID
{
  displayID = self->_displayID;
  if (displayID)
  {
    v4 = displayID;
    goto LABEL_9;
  }

  v6 = objc_msgSend__formattedPhoneNumber(self, a2, v2);
  if (objc_msgSend_length(v6, v7, v8))
  {
    v11 = v6;
  }

  else
  {
    isBusiness = objc_msgSend_isBusiness(self, v9, v10);
    id = self->_id;
    if (!isBusiness)
    {
      if (objc_msgSend_length(id, v12, v13))
      {
        v19 = objc_msgSend_im_stripCategoryLabel(self->_id, v17, v18);
        MEMORY[0x1AC56C3F0]();
      }

      else
      {
        v19 = MEMORY[0x1AC56C3F0](self->_uncanonicalID);
        objc_msgSend_im_stripCategoryLabel(v19, v20, v21);
      }
      v22 = ;

      if (objc_msgSend__appearsToBePhoneNumber(v22, v23, v24))
      {
        v25 = IMFormattedDisplayStringForNumber();
      }

      else
      {
        v25 = v22;
      }

      v4 = v25;

      goto LABEL_8;
    }

    v11 = id;
  }

  v4 = v11;
LABEL_8:

LABEL_9:

  return v4;
}

- (id)_formattedPhoneNumber
{
  formattedNumber = self->_formattedNumber;
  if (formattedNumber)
  {
    v4 = formattedNumber;
    goto LABEL_20;
  }

  v6 = objc_msgSend_length(self->_uncanonicalID, a2, v2);
  v7 = 24;
  if (!v6)
  {
    v7 = 16;
  }

  v8 = MEMORY[0x1AC56C3F0](*(&self->super.isa + v7));
  v11 = v8;
  if (self->_hasCheckedPhoneNumber)
  {
    if (!self->_phoneNumberRef)
    {
      goto LABEL_18;
    }
  }

  else if (!objc_msgSend__appearsToBePhoneNumber(v8, v9, v10))
  {
LABEL_18:
    v4 = 0;
    goto LABEL_19;
  }

  if (objc_msgSend__appearsToBePhoneNumber(v11, v9, v10))
  {
    v12 = IMFormattedNumberForUnformattedNumber();
    v13 = IMCopyStringWithLocalizedNumbers();
    if (v13)
    {
      v14 = v13;
      if (CFStringGetLength(v13) > 0)
      {
        goto LABEL_15;
      }

      CFRelease(v14);
    }

    v14 = v12;
    v12 = v14;
  }

  else
  {
    v14 = v11;
    v12 = 0;
  }

LABEL_15:
  v15 = self->_formattedNumber;
  self->_formattedNumber = &v14->isa;

  if (!objc_msgSend_length(v12, v16, v17))
  {

    goto LABEL_18;
  }

  qmemcpy(v27, ", * ", sizeof(v27));
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v20 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], v19, &v27[1], 1);
  v22 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x1E696AEC0], v21, v27, 1);
  v24 = objc_msgSend_initWithFormat_(v18, v23, @"%@%@%@", v20, v12, v22);
  v25 = self->_formattedNumber;
  self->_formattedNumber = v24;

  v4 = self->_formattedNumber;
LABEL_19:

LABEL_20:

  return v4;
}

- (IMBrandManager)brandManager
{
  brandManager = self->_brandManager;
  if (brandManager)
  {
    v3 = brandManager;
  }

  else if (IMIsRunningInUnitTesting())
  {
    v3 = 0;
  }

  else
  {
    v6 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F38], v4, v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8264014;
    block[3] = &unk_1E780FCB0;
    v3 = v6;
    v9 = v3;
    if (qword_1EB2EA290 != -1)
    {
      dispatch_once(&qword_1EB2EA290, block);
    }
  }

  return v3;
}

- (BOOL)_allowedByScreenTime
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_ID(self, a2, v2);
  v6 = objc_msgSend_sharedInstance(IMDowntimeController, v4, v5);
  v13[0] = v3;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v13, 1);
  v10 = objc_msgSend_allowedToShowConversationWithHandleIDs_sync_context_(v6, v9, v8, 0, 0);

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)cnPhoneticKeys
{
  if (qword_1EB2E90F8 != -1)
  {
    sub_1A84E011C();
  }

  v3 = qword_1EB2E90D0;

  return v3;
}

+ (void)_loadStatusNames
{
  byte_1EB2EA268 = 1;
  v2 = MEMORY[0x1E695DF20];
  v3 = _IMFrameworkBundle();
  v5 = objc_msgSend_pathForResource_ofType_(v3, v4, @"OnlineStatuses", @"plist");
  v25 = objc_msgSend_dictionaryWithContentsOfFile_(v2, v6, v5);

  v8 = objc_msgSend_objectForKey_(v25, v7, @"StatusList");
  v11 = objc_msgSend_count(v8, v9, v10);
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = qword_1EB2EA260;
  qword_1EB2EA260 = v12;

  if (v11 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = IMPersonStatusFromFZPersonStatus(v15, v14);
      v18 = objc_msgSend_objectAtIndex_(v8, v17, v16);
      v20 = objc_msgSend_objectForKey_(v18, v19, @"_LOCALIZABLE_");
      v21 = qword_1EB2EA260;
      v23 = objc_msgSend_objectForKey_(v20, v22, @"StatusName");
      objc_msgSend_addObject_(v21, v24, v23);

      v15 = (v15 + 1);
    }

    while (v11 != v15);
  }
}

+ (id)nameOfStatus:(unint64_t)a3
{
  if ((byte_1EB2EA268 & 1) == 0)
  {
    objc_msgSend__loadStatusNames(a1, a2, a3);
  }

  v4 = qword_1EB2EA260;

  return objc_msgSend_objectAtIndex_(v4, a2, a3);
}

- (IMHandle)initWithAccount:(id)a3 ID:(id)a4 alreadyCanonical:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v15 = objc_msgSend_init(self, v11, v12);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = objc_msgSend_IMCoreSetupTimingCollection(MEMORY[0x1E69A6170], v13, v14);
  objc_msgSend_startTimingForKey_(v16, v17, @"IMCoreSetup: IMHandle init");
  objc_storeStrong((v15 + 8), a3);
  if (v5)
  {
    v20 = objc_msgSend_copy(v10, v18, v19);
    v21 = *(v15 + 16);
    *(v15 + 16) = v20;
  }

  else
  {
    v22 = objc_msgSend_canonicalFormOfID_(v9, v18, v10);
    v23 = *(v15 + 16);
    *(v15 + 16) = v22;

    if (objc_msgSend_isEqualToString_(v10, v24, *(v15 + 16)))
    {
      goto LABEL_7;
    }

    v21 = IMCleanupPhoneNumber();
    v29 = objc_msgSend_copy(v21, v27, v28);
    v30 = *(v15 + 24);
    *(v15 + 24) = v29;
  }

LABEL_7:
  *(v15 + 304) = 0x7FFFFFFFFFFFFFFFLL;
  *(v15 + 288) = objc_msgSend_capabilities(v9, v25, v26);
  if (*(v15 + 16) && *(v15 + 8))
  {
    v33 = objc_msgSend_sharedInstance(IMHandleRegistrar, v31, v32);
    objc_msgSend_registerIMHandle_(v33, v34, v15);

    v37 = objc_msgSend_account(v15, v35, v36);
    objc_msgSend_registerIMHandle_(v37, v38, v15);

    objc_msgSend__registerForNotifications(v15, v39, v40);
  }

  objc_msgSend_stopTimingForKey_(v16, v31, @"IMCoreSetup: IMHandle init");
  objc_msgSend_fetchBrandInfoIfNecessary(v15, v41, v42);

LABEL_11:
  return v15;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = IMHandleLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    id = self->_id;
    *buf = 138412546;
    v18 = id;
    v19 = 2112;
    v20 = account;
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc ID: %@    Account: %@", buf, 0x16u);
  }

  if (objc_msgSend_watchingIMHandle(self, v6, v7))
  {
    objc_msgSend_stopWatchingIMHandle_(self->_account, v8, self);
  }

  objc_msgSend_unregisterIMHandleWithID_(self->_account, v8, self->_id);
  v11 = objc_msgSend_sharedInstance(IMHandleRegistrar, v9, v10);
  objc_msgSend_unregisterIMHandle_(v11, v12, self);

  phoneNumberRef = self->_phoneNumberRef;
  if (phoneNumberRef)
  {
    CFRelease(phoneNumberRef);
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, " => done", buf, 2u);
    }
  }

  v16.receiver = self;
  v16.super_class = IMHandle;
  [(IMHandle *)&v16 dealloc];
  v15 = *MEMORY[0x1E69E9840];
}

- (id)_handleInfo
{
  v3 = MEMORY[0x1E695DF20];
  v4 = *MEMORY[0x1E69A6310];
  id = self->_id;
  uncanonicalID = self->_uncanonicalID;
  v7 = *MEMORY[0x1E69A6390];
  v8 = objc_msgSend_countryCode(self, a2, v2);
  v10 = objc_msgSend_dictionaryWithObjectsAndKeys_(v3, v9, id, v4, uncanonicalID, v7, v8, *MEMORY[0x1E69A62E8], 0);

  return v10;
}

- (void)_setOriginalID:(id)a3 updateSiblings:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    uncanonicalID = self->_uncanonicalID;
    if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
    {
      v10 = objc_msgSend_copy(v6, v8, v9);
      v11 = self->_uncanonicalID;
      self->_uncanonicalID = v10;

      if (v4)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = objc_msgSend_existingChatSiblingsArray(self, v12, v13, 0);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v29, 16);
        if (v16)
        {
          v18 = v16;
          v19 = *v26;
          do
          {
            v20 = 0;
            do
            {
              if (*v26 != v19)
              {
                objc_enumerationMutation(v14);
              }

              v21 = *(*(&v25 + 1) + 8 * v20);
              if (v21 != self)
              {
                objc_msgSend__setOriginalID_updateSiblings_(v21, v17, v6, 0);
              }

              ++v20;
            }

            while (v18 != v20);
            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v25, v29, 16);
          }

          while (v18);
        }
      }

      formattedNumber = self->_formattedNumber;
      self->_formattedNumber = 0;

      objc_msgSend_postNotificationName_(self, v23, @"__kIMHandleInfoChangedNotification");
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_setCountryCode:(id)a3 updateSiblings:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    countryCode = self->_countryCode;
    if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
    {
      v10 = objc_msgSend_copy(v6, v8, v9);
      v11 = self->_countryCode;
      self->_countryCode = v10;

      if (v4)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v14 = objc_msgSend_existingChatSiblingsArray(self, v12, v13, 0);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v23, v27, 16);
        if (v16)
        {
          v18 = v16;
          v19 = *v24;
          do
          {
            v20 = 0;
            do
            {
              if (*v24 != v19)
              {
                objc_enumerationMutation(v14);
              }

              v21 = *(*(&v23 + 1) + 8 * v20);
              if (v21 != self)
              {
                objc_msgSend__setCountryCode_updateSiblings_(v21, v17, v6, 0);
              }

              ++v20;
            }

            while (v18 != v20);
            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v23, v27, 16);
          }

          while (v18);
        }
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_setOriginalID:(id)a3
{
  v5 = IMCleanupPhoneNumber();
  objc_msgSend__setOriginalID_updateSiblings_(self, v4, v5, 1);
}

- (BOOL)isMako
{
  isMako = self->_isMako;
  if (!isMako)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = objc_msgSend_ID(self, a2, v2);
    IsMakoURI = IMSharedHelperIsMakoURI();
    v9 = objc_msgSend_numberWithBool_(v5, v8, IsMakoURI);
    v10 = self->_isMako;
    self->_isMako = v9;

    isMako = self->_isMako;
  }

  return objc_msgSend_BOOLValue(isMako, a2, v2);
}

- (BOOL)isApple
{
  isApple = self->_isApple;
  if (!isApple)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = objc_msgSend_ID(self, a2, v2);
    if (IMSharedHelperIsAppleURI())
    {
      objc_msgSend_numberWithInt_(v5, v7, 1);
    }

    else
    {
      isMako = objc_msgSend_isMako(self, v7, v8);
      objc_msgSend_numberWithInt_(v5, v10, isMako);
    }
    v11 = ;
    v12 = self->_isApple;
    self->_isApple = v11;

    isApple = self->_isApple;
  }

  return objc_msgSend_BOOLValue(isApple, a2, v2);
}

- (BOOL)isStewieEmergencyServices
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v4, v5, v6);

  result = 0;
  if (isTranscriptSharingEnabled)
  {
    v10 = objc_msgSend_ID(self, v8, v9);
    hasSuffix = objc_msgSend_hasSuffix_(v10, v11, *MEMORY[0x1E69A6EA0]);

    if (hasSuffix)
    {
      return 1;
    }
  }

  return result;
}

- (IMHandle)initWithCoder:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"ID");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v9, v8, @"AccountID");
  v13 = objc_msgSend_sharedInstance(IMAccountController, v11, v12);
  v15 = objc_msgSend_accountForUniqueID_(v13, v14, v10);

  if (v15)
  {
    goto LABEL_27;
  }

  v18 = objc_opt_class();
  v20 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v18, @"ServiceName");
  v21 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(v4, v22, v21, @"ServiceLoginID");
  v71 = v70 = v20;
  v24 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v23, v20);
  v27 = objc_msgSend_sharedInstance(IMAccountController, v25, v26);
  v29 = objc_msgSend_accountsForService_(v27, v28, v24);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v30 = v29;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v72, v76, 16);
  if (v32)
  {
    v33 = v32;
    v66 = v10;
    v67 = v7;
    v68 = v4;
    v69 = self;
    v34 = 0;
    v35 = *v73;
LABEL_4:
    v36 = 0;
    v37 = v34;
    while (1)
    {
      if (*v73 != v35)
      {
        objc_enumerationMutation(v30);
      }

      v34 = *(*(&v72 + 1) + 8 * v36);

      v39 = objc_msgSend_canonicalFormOfID_(v24, v38, v71);
      v42 = objc_msgSend_login(v34, v40, v41);
      v44 = objc_msgSend_canonicalFormOfID_(v24, v43, v42);
      v46 = objc_msgSend_equalID_andID_(v24, v45, v39, v44);

      if (v46)
      {
        break;
      }

      ++v36;
      v37 = v34;
      if (v33 == v36)
      {
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v47, &v72, v76, 16);
        if (v33)
        {
          goto LABEL_4;
        }

        v4 = v68;
        self = v69;
        v10 = v66;
        v7 = v67;
        goto LABEL_11;
      }
    }

    v15 = v34;

    v4 = v68;
    self = v69;
    v10 = v66;
    v7 = v67;
    if (!v15)
    {
      goto LABEL_14;
    }

    v50 = 0;
    v51 = v15;
    v52 = v70;
  }

  else
  {
LABEL_11:

LABEL_14:
    v53 = objc_msgSend_sharedInstance(IMAccountController, v48, v49, v66, v67, v68, v69);
    v15 = objc_msgSend_bestAccountForService_(v53, v54, v24);

    v52 = v70;
    if (v15 || (objc_msgSend_sharedInstance(IMAccountController, v55, v56), v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bestAccountForService_(v57, v58, 0), v15 = objc_claimAutoreleasedReturnValue(), v57, v15))
    {
      v50 = 0;
      v51 = 0;
    }

    else
    {

      v51 = 0;
      self = 0;
      v50 = 1;
    }
  }

  if ((v50 & 1) == 0)
  {
LABEL_27:
    if (objc_msgSend_length(v7, v16, v17, v66, v67, v68, v69))
    {
      v59 = objc_msgSend_imHandleWithID_(v15, v60, v7);
      v62 = objc_msgSend_decodeBoolForKey_(v4, v61, @"AnonymousKey");
      objc_msgSend_setAnonymous_(v59, v63, v62);
    }

    else
    {
      v59 = 0;
    }

    self = 0;
  }

  else
  {
    v59 = 0;
  }

  v64 = *MEMORY[0x1E69E9840];
  return v59;
}

- (void)encodeWithCoder:(id)a3
{
  v28 = a3;
  v6 = objc_msgSend_account(self, v4, v5);
  v9 = objc_msgSend_uniqueID(v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(v28, v10, v9, @"AccountID");

  v13 = objc_msgSend_account(self, v11, v12);
  v16 = objc_msgSend_login(v13, v14, v15);

  if (objc_msgSend_length(v16, v17, v18))
  {
    objc_msgSend_encodeObject_forKey_(v28, v19, v16, @"ServiceLoginID");
  }

  v21 = objc_msgSend_account(self, v19, v20);
  v24 = objc_msgSend_internalName(v21, v22, v23);
  objc_msgSend_encodeObject_forKey_(v28, v25, v24, @"ServiceName");

  objc_msgSend_encodeObject_forKey_(v28, v26, self->_id, @"ID");
  objc_msgSend_encodeBool_forKey_(v28, v27, self->_isAnonymous, @"AnonymousKey");
}

+ (id)handlesForCNContact:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_sharedInstance(IMHandleRegistrar, v4, v5);
  v9 = objc_msgSend_identifier(v3, v7, v8);

  v11 = objc_msgSend_handlesForCNIdentifier_(v6, v10, v9);
  v14 = objc_msgSend_allObjects(v11, v12, v13);

  return v14;
}

- (id)imHandleForOtherAccount:(id)a3
{
  v6 = a3;
  if (!v6 || (objc_msgSend_account(self, v4, v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v6))
  {
    v16 = self;
    goto LABEL_22;
  }

  otherServiceIDs = self->_otherServiceIDs;
  v11 = objc_msgSend_internalName(v6, v8, v9);
  v13 = objc_msgSend_objectForKey_(otherServiceIDs, v12, v11);

  if (!v13)
  {
    v17 = objc_msgSend_service(self, v14, v15);
    v20 = objc_msgSend_service(v6, v18, v19);

    if (v17 == v20)
    {
LABEL_11:
      v42 = objc_msgSend_ID(self, v21, v22);
      v44 = objc_msgSend_imHandleWithID_alreadyCanonical_(v6, v43, v42, 1);
      goto LABEL_19;
    }

    v23 = objc_msgSend_service(self, v21, v22);
    if (objc_msgSend_supportsMessaging(v23, v24, v25))
    {
      v28 = objc_msgSend_service(self, v26, v27);
      if (objc_msgSend_supportsCanonicalHandles(v28, v29, v30))
      {
        v33 = objc_msgSend_service(v6, v31, v32);
        if (objc_msgSend_supportsMessaging(v33, v34, v35))
        {
          v38 = objc_msgSend_service(v6, v36, v37);
          v41 = objc_msgSend_supportsCanonicalHandles(v38, v39, v40);

          if (v41)
          {
            goto LABEL_11;
          }

LABEL_15:
          v45 = objc_msgSend_service(v6, v21, v22);
          v42 = objc_msgSend_bestIMHandleForService_(self, v46, v45);

          if (v42 == self)
          {
            v44 = v42;
          }

          else
          {
            if (!v42)
            {
              v16 = 0;
              goto LABEL_20;
            }

            v44 = objc_msgSend_imHandleForOtherAccount_(v42, v47, v6);
          }

LABEL_19:
          v16 = v44;
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    goto LABEL_15;
  }

  v16 = objc_msgSend_imHandleWithID_(v6, v14, v13);
LABEL_21:

LABEL_22:

  return v16;
}

- (NSArray)groupsArray
{
  v4 = objc_msgSend_account(self, a2, v2);
  v7 = objc_msgSend_ID(self, v5, v6);
  v9 = objc_msgSend_memberGroups_(v4, v8, v7);

  return v9;
}

- (NSSet)groups
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_msgSend_groupsArray(self, a2, v2);
  v6 = objc_msgSend_setWithArray_(v3, v5, v4);

  return v6;
}

- (void)_postNotification:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_shouldQueueNotifications(self, v5, v6))
  {
    v10 = objc_msgSend_name(v4, v7, v8);
    notificationNameQueue = self->_notificationNameQueue;
    if (!notificationNameQueue)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = self->_notificationNameQueue;
      self->_notificationNameQueue = v12;

      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      notificationQueue = self->_notificationQueue;
      self->_notificationQueue = v14;

      notificationNameQueue = self->_notificationNameQueue;
    }

    if ((objc_msgSend_containsObject_(notificationNameQueue, v9, v10) & 1) == 0)
    {
      objc_msgSend_addObject_(self->_notificationNameQueue, v16, v10);
      objc_msgSend_addObject_(self->_notificationQueue, v17, v4);
    }
  }

  else
  {
    v18 = IMHandleLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      v25 = self;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "%@ is posting %@", &v24, 0x16u);
    }

    v21 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v19, v20);
    objc_msgSend___mainThreadPostNotification_(v21, v22, v4);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_postNotificationName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (!self->_blockNotifications && byte_1EB2E50B8 == 1)
  {
    v9 = objc_msgSend_notificationWithName_object_userInfo_(MEMORY[0x1E696AD80], v7, v6, self, v8);
    v12 = objc_msgSend_mainThread(MEMORY[0x1E696AF00], v10, v11);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A82F0208;
    v15[3] = &unk_1E7810140;
    v15[4] = self;
    v16 = v9;
    v13 = v9;
    objc_msgSend___im_performBlock_(v12, v14, v15);
  }
}

- (NSString)nameAndEmail
{
  v4 = objc_msgSend_email(self, a2, v2);
  if (objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend_name(self, v7, v8);
    if (objc_msgSend_length(v9, v10, v11))
    {
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"%@ \u202A<%@>\u202C", v9, v4);
    }

    else
    {
      v13 = v4;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isContactButNotMe
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], a2, v2);
  v6 = objc_msgSend_fetchMeContactWithKeys_(v4, v5, 0);
  v9 = objc_msgSend_identifier(v6, v7, v8);

  v12 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v10, v11);
  if (objc_msgSend_isBatchFetchingForLaunchCompleted(v12, v13, v14))
  {
  }

  else
  {
    v16 = IMIsRunningInUnitTesting();

    if ((v16 & 1) == 0)
    {
      v25 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v15, v17);
      v28 = objc_msgSend_ID(self, v26, v27);
      v18 = objc_msgSend_cnContactIdentifierForID_(v25, v29, v28);

      if (v18)
      {
        v24 = objc_msgSend_isEqualToString_(v18, v30, v9) ^ 1;
        goto LABEL_9;
      }

LABEL_8:
      LOBYTE(v24) = 0;
      goto LABEL_9;
    }
  }

  v18 = objc_msgSend_cnContactWithKeys_(self, v15, MEMORY[0x1E695E0F0]);
  if (!objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v19, v18))
  {
    goto LABEL_8;
  }

  v22 = objc_msgSend_identifier(v18, v20, v21);
  v24 = objc_msgSend_isEqualToString_(v22, v23, v9) ^ 1;

LABEL_9:
  return v24;
}

- (BOOL)resetCNContact
{
  v44 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_length(self->_id, a2, v2) >= 2 && objc_msgSend_characterAtIndex_(self->_id, v4, 1) == 58)
  {
    isEqualToContact = 0;
  }

  else
  {
    v6 = IMHandleLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_msgSend_guid(self, v7, v8);
      *buf = 138412290;
      v43 = v9;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEFAULT, "Resetting contact for guid: %@", buf, 0xCu);
    }

    v10 = self->_cnContact;
    v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v11, v12);
    v16 = objc_msgSend_ID(self, v14, v15);
    v18 = objc_msgSend_fetchCNContactForHandleWithID_(v13, v17, v16);

    objc_msgSend_updateCNContact_(self, v19, v18);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v22 = objc_msgSend_existingChatSiblingsArray(self, v20, v21, 0);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v37, v41, 16);
    if (v24)
    {
      v26 = v24;
      v27 = *v38;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v37 + 1) + 8 * i);
          if (v29 != self)
          {
            objc_msgSend_updateCNContact_(v29, v25, v18);
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v37, v41, 16);
      }

      while (v26);
    }

    if ((objc_msgSend_areCNContactPropertiesRecent(self, v30, v31) & 1) == 0)
    {
      objc_msgSend_resetCNContactProperties(self, v32, v33);
      objc_msgSend_postNotificationName_(self, v34, @"__kIMHandleInfoChangedNotification");
    }

    if (v18 | v10)
    {
      isEqualToContact = objc_msgSend__im_isEqualToContact_(v18, v32, v10);
    }

    else
    {
      isEqualToContact = 0;
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return isEqualToContact;
}

- (BOOL)areCNContactPropertiesRecent
{
  v4 = objc_msgSend_nickname(self, a2, v2);
  v6 = v4;
  cnNickname = self->_cnNickname;
  if (cnNickname | v4 && !objc_msgSend_isEqualToString_(v4, v5, cnNickname))
  {
    goto LABEL_10;
  }

  v8 = objc_msgSend_firstName(self, v5, cnNickname);

  cnFirstName = self->_cnFirstName;
  if (cnFirstName | v8 && !objc_msgSend_isEqualToString_(v8, v9, cnFirstName))
  {
    v16 = 0;
    v6 = v8;
    goto LABEL_13;
  }

  v11 = objc_msgSend_lastName(self, v9, cnFirstName);

  cnLastName = self->_cnLastName;
  if (cnLastName | v11 && !objc_msgSend_isEqualToString_(v11, v12, cnLastName))
  {
    v16 = 0;
    v6 = v11;
    goto LABEL_13;
  }

  v6 = objc_msgSend_fullName(self, v12, cnLastName);

  cnFullName = self->_cnFullName;
  if (cnFullName | v6 && !objc_msgSend_isEqualToString_(v6, v14, cnFullName))
  {
LABEL_10:
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

LABEL_13:

  return v16;
}

- (void)_clearCNContactProperties
{
  v4 = objc_msgSend_nickname(self, a2, v2);
  cnNickname = self->_cnNickname;
  self->_cnNickname = v4;

  v8 = objc_msgSend_fullName(self, v6, v7);
  cnFullName = self->_cnFullName;
  self->_cnFullName = v8;

  v12 = objc_msgSend_firstName(self, v10, v11);
  cnFirstName = self->_cnFirstName;
  self->_cnFirstName = v12;

  v16 = objc_msgSend_lastName(self, v14, v15);
  cnLastName = self->_cnLastName;
  self->_cnLastName = v16;

  MEMORY[0x1EEE66BB8](v16);
}

- (void)resetCNContactProperties
{
  if (self->_cnContact && (objc_msgSend_areCNContactPropertiesRecent(self, a2, v2) & 1) == 0)
  {

    MEMORY[0x1EEE66B58](self, sel__clearCNContactProperties, v4);
  }
}

- (id)_IDWithTrimmedServer
{
  IDWithTrimmedServer = self->_IDWithTrimmedServer;
  if (IDWithTrimmedServer)
  {
    v4 = IDWithTrimmedServer;
  }

  else
  {
    v6 = objc_msgSend_login(self->_account, a2, v2);
    v8 = objc_msgSend_rangeOfString_(v6, v7, @"@");
    v13 = objc_msgSend_ID(self, v9, v10);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v15 = objc_msgSend_substringFromIndex_(v6, v11, v8 + 1);
    if (v15 && objc_msgSend_hasSuffix_(v13, v14, v15))
    {
      v17 = objc_msgSend_rangeOfString_options_(v13, v16, v15, 4);
      v19 = objc_msgSend_substringToIndex_(v13, v18, v17);
      if (objc_msgSend_hasSuffix_(v19, v20, @"@"))
      {
        v23 = objc_msgSend_length(v19, v21, v22);
        v25 = objc_msgSend_substringToIndex_(v19, v24, v23 - 1);
      }

      else
      {
        v25 = v19;
      }

      v26 = self->_IDWithTrimmedServer;
      self->_IDWithTrimmedServer = v25;
    }

    v27 = self->_IDWithTrimmedServer;
    if (!v27)
    {
LABEL_12:
      v28 = objc_msgSend_ID(self, v11, v12);
    }

    else
    {
      v28 = v27;
    }

    v4 = v28;
  }

  return v4;
}

- (NSString)nameThatIsNotHandle
{
  v4 = objc_msgSend_cachedNameThatIsNotHandle(self, a2, v2);

  if (objc_msgSend_isBusiness(self, v5, v6) && v4)
  {
    v9 = objc_msgSend_cachedNameThatIsNotHandle(self, v7, v8);
    v10 = MEMORY[0x1E69A7F28];
    v13 = objc_msgSend_ID(self, v11, v12);
    v15 = objc_msgSend_placeholderNameForBrandURI_(v10, v14, v13);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v16, v15);

    if ((isEqualToString & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
    goto LABEL_11;
  }

  v18 = IMHandleLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "No cached name, fetching", v31, 2u);
  }

  v20 = objc_msgSend_immediateNameWithNeedsSuggestedNameFetch_useSuggestedName_allowHandles_(self, v19, 0, 1, 0);
  if (objc_msgSend_length(v20, v21, v22))
  {
    objc_msgSend_setCachedNameThatIsNotHandle_(self, v23, v20);
  }

LABEL_11:
  v24 = objc_msgSend_cachedNameThatIsNotHandle(self, v7, v8);
  if (objc_msgSend_length(v24, v25, v26))
  {
    objc_msgSend_cachedNameThatIsNotHandle(self, v27, v28);
  }

  else
  {
    objc_msgSend_immediateNameWithNeedsSuggestedNameFetch_useSuggestedName_allowHandles_(self, v27, 0, 1, 0);
  }
  v29 = ;

  return v29;
}

- (void)setSuggestedName:(id)a3
{
  v14 = a3;
  if ((objc_msgSend_isEqualToString_(self->_suggestedName, v4, v14) & 1) == 0)
  {
    v7 = objc_msgSend_copy(v14, v5, v6);
    suggestedName = self->_suggestedName;
    self->_suggestedName = v7;

    v11 = objc_msgSend_length(self->_suggestedName, v9, v10) != 0;
    objc_msgSend_setHasSuggestedName_(self, v12, v11);
    objc_msgSend_postNotificationName_(self, v13, @"__kIMHandleInfoChangedNotification");
  }
}

- (id)immediateNameWithNeedsSuggestedNameFetch:(BOOL *)a3 useSuggestedName:(BOOL)a4 allowHandles:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v154 = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_cnContact(self, a2, a3);
  objc_msgSend_setIsPrefixedWithMaybe_(self, v10, 0);
  if (!v9)
  {
    v13 = IMHandleLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_msgSend_ID(self, v14, v15);
      *buf = 138412290;
      v153 = v16;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "DisplayName: Refetching Contact for id: %@", buf, 0xCu);
    }

    v19 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v17, v18);
    v22 = objc_msgSend_ID(self, v20, v21);
    v9 = objc_msgSend_fetchCNContactForHandleWithID_(v19, v23, v22);

    if (v9)
    {
      objc_msgSend_updateCNContact_(self, v11, v9);
    }
  }

  if (v5 && objc_msgSend_isAnonymous(self, v11, v12))
  {
    v24 = objc_msgSend_resource(self, v11, v12);
    v27 = objc_msgSend_length(v24, v25, v26) == 0;
    v28 = IMHandleLogHandle();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "DisplayName: Returning displayID since handle is anonymous", buf, 2u);
      }

      v38 = objc_msgSend_displayID(self, v50, v51);
      goto LABEL_22;
    }

    if (v29)
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "DisplayName: Returning resource since handle is anonymous", buf, 2u);
    }

    goto LABEL_21;
  }

  if (v9)
  {
    v30 = IMHandleLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_DEFAULT, "DisplayName: Getting display name from Contact", buf, 2u);
    }

    v24 = objc_msgSend__displayNameWithContact_(self, v31, v9);
    v34 = objc_msgSend_length(v24, v32, v33);
  }

  else
  {
    v24 = 0;
    v34 = objc_msgSend_length(0, v11, v12);
  }

  if (v34)
  {
    v37 = IMHandleLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v153 = v24;
      _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_DEFAULT, "DisplayName: found displayName: %@", buf, 0xCu);
    }

LABEL_21:
    v38 = v24;
    v24 = v38;
LABEL_22:
    v39 = v38;
    goto LABEL_23;
  }

  if (!objc_msgSend_isLoginIMHandle(self, v35, v36))
  {
    goto LABEL_35;
  }

  v44 = objc_msgSend_me(IMMe, v42, v43);
  v39 = objc_msgSend_fullName(v44, v45, v46);

  if (!objc_msgSend_length(v39, v47, v48))
  {

LABEL_35:
    if (objc_msgSend__hasServiceNameProperties(self, v42, v43))
    {
      v54 = IMHandleLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v54, OS_LOG_TYPE_DEFAULT, "DisplayName: Using Service name properties", buf, 2u);
      }

      if (objc_msgSend_length(self->_fullName, v55, v56))
      {
        goto LABEL_39;
      }

      if (objc_msgSend_length(self->_firstName, v57, v58) && !objc_msgSend_length(self->_lastName, v60, v61))
      {
        firstName = self->_firstName;
        goto LABEL_40;
      }

      if (!objc_msgSend_length(self->_firstName, v60, v61) && objc_msgSend_length(self->_lastName, v62, v63))
      {
        firstName = self->_lastName;
        goto LABEL_40;
      }

      if (!objc_msgSend_length(self->_firstName, v62, v63) && !objc_msgSend_length(self->_lastName, v64, v65) && objc_msgSend_length(self->_nickname, v64, v65))
      {
        firstName = self->_nickname;
        goto LABEL_40;
      }

      if (objc_msgSend_length(self->_firstName, v64, v65) && objc_msgSend_length(self->_lastName, v66, v67))
      {
        v68 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v66, @"%@ %@", self->_firstName, self->_lastName);
        fullName = self->_fullName;
        self->_fullName = v68;
      }

      if (objc_msgSend_length(self->_fullName, v66, v67))
      {
LABEL_39:
        firstName = self->_fullName;
LABEL_40:
        v38 = firstName;
        goto LABEL_22;
      }
    }

    v70 = objc_msgSend_suggestedName(self, v52, v53);
    v73 = v70;
    if (v6 && objc_msgSend_length(v70, v71, v72) && objc_msgSend__allowedByScreenTime(self, v71, v72))
    {
      v74 = IMHandleLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v153 = v73;
        _os_log_impl(&dword_1A823F000, v74, OS_LOG_TYPE_DEFAULT, "DisplayName: Using suggested name %@", buf, 0xCu);
      }

      v75 = v73;
LABEL_113:
      v39 = v75;
      goto LABEL_114;
    }

    if (a3 && !v73)
    {
      v147[0] = 0;
      v76 = objc_msgSend_sharedInstance(IMSuggestionsService, v71, v72);
      v79 = objc_msgSend_displayID(self, v77, v78);
      v39 = objc_msgSend_suggestedNameFromCache_wasFound_(v76, v80, v79, v147);

      if (v147[0] == 1 && objc_msgSend_length(v39, v81, v82))
      {
        objc_msgSend_setSuggestedName_(self, v83, v39);
        if (v6)
        {
          v84 = IMHandleLogHandle();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v153 = 0;
            _os_log_impl(&dword_1A823F000, v84, OS_LOG_TYPE_DEFAULT, "DisplayName: Using cached suggested name %@", buf, 0xCu);
          }

LABEL_106:

LABEL_114:
          goto LABEL_23;
        }
      }

      else
      {
        *a3 = 1;
      }
    }

    if (objc_msgSend_isBusiness(self, v71, v72))
    {
      v87 = objc_msgSend_displayID(self, v85, v86);
      objc_initWeak(buf, self);
      v90 = objc_msgSend_sharedInstance(IMHandleRegistrar, v88, v89);
      v148[0] = MEMORY[0x1E69E9820];
      v148[1] = 3221225472;
      v148[2] = sub_1A82F1710;
      v148[3] = &unk_1E7811DE0;
      objc_copyWeak(&v151, buf);
      v91 = v87;
      v149 = v91;
      v150 = self;
      v93 = objc_msgSend_businessNameForUID_blockFetch_updateHandler_uniqueHandler_(v90, v92, v91, 0, 0, v148);

      v94 = IMHandleLogHandle();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *v147 = 0;
        _os_log_impl(&dword_1A823F000, v94, OS_LOG_TYPE_DEFAULT, "DisplayName: Using biz name", v147, 2u);
      }

      if (v93)
      {
        v39 = v93;
      }

      else
      {
        v100 = MEMORY[0x1E69A7F28];
        v101 = objc_msgSend_ID(self, v95, v96);
        v39 = objc_msgSend_placeholderNameForBrandURI_(v100, v102, v101);
      }

      objc_destroyWeak(&v151);
      objc_destroyWeak(buf);

      goto LABEL_114;
    }

    if (v5)
    {
      if (v9)
      {
        v39 = objc_msgSend_displayNameWithPhoneNumberOrEmailForContact_(MEMORY[0x1E69A7FD0], v85, v9);
        v99 = objc_msgSend_length(v39, v97, v98);
      }

      else
      {
        v103 = objc_msgSend_ID(self, v85, v86);
        v104 = MEMORY[0x1AC56C3C0]();

        v107 = objc_msgSend_ID(self, v105, v106);
        if (v104)
        {
          v39 = IMFormattedDisplayStringForNumber();

          v99 = objc_msgSend_length(v39, v108, v109);
        }

        else
        {
          IsEmail = IMStringIsEmail();

          if (IsEmail)
          {
            v113 = objc_msgSend_ID(self, v111, v112);
            v39 = IMFormattedDisplayStringForNumber();

            v99 = objc_msgSend_length(v39, v114, v115);
          }

          else
          {
            v39 = 0;
            v99 = objc_msgSend_length(0, v111, v112);
          }
        }
      }

      if (v99)
      {
        v84 = IMHandleLogHandle();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v84, OS_LOG_TYPE_DEFAULT, "DisplayName: Using formattedDisplayName", buf, 2u);
        }

        goto LABEL_106;
      }
    }

    v116 = objc_msgSend_ID(self, v85, v86);
    v119 = objc_msgSend_length(v116, v117, v118) == 0;

    if (v119)
    {
      v124 = IMHandleLogHandle();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v124, OS_LOG_TYPE_DEFAULT, "DisplayName: Using ID", buf, 2u);
      }

      v125 = sub_1A8361964();
      v39 = objc_msgSend_localizedStringForKey_value_table_(v125, v126, @"Buddy Name", &stru_1F1B76F98, @"IMCoreLocalizable");

      goto LABEL_114;
    }

    if (v5 && objc_msgSend_hasServer(self, v120, v121))
    {
      v39 = objc_msgSend__IDWithTrimmedServer(self, v120, v121);
      if (objc_msgSend_length(v39, v122, v123))
      {
        v84 = IMHandleLogHandle();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v84, OS_LOG_TYPE_DEFAULT, "DisplayName: Using ID from Server", buf, 2u);
        }

        goto LABEL_106;
      }
    }

    v127 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v120, v121);
    v130 = objc_msgSend_stewieEnabled(v127, v128, v129);

    if (v130)
    {
      if (objc_msgSend_isStewieEmergency(self, v131, v132))
      {
        v135 = sub_1A8361964();
        v39 = objc_msgSend_localizedStringForKey_value_table_(v135, v136, @"STEWIE_EMERGENCY_SOS_HANDLE", &stru_1F1B76F98, @"IMCoreLocalizable-SOS");

        v84 = IMHandleLogHandle();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v84, OS_LOG_TYPE_DEFAULT, "DisplayName: Using Stewie emergency name", buf, 2u);
        }

        goto LABEL_106;
      }

      if (objc_msgSend_isStewieRoadside(self, v133, v134))
      {
        v139 = objc_msgSend_sharedInstance(IMChorosMonitor, v137, v138);
        v142 = objc_msgSend_ID(self, v140, v141);
        v39 = objc_msgSend_roadsideProviderNameForChatIdentifier_(v139, v143, v142);

        goto LABEL_114;
      }
    }

    if (!v5)
    {
      v39 = 0;
      goto LABEL_114;
    }

    v144 = IMHandleLogHandle();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v144, OS_LOG_TYPE_DEFAULT, "DisplayName: Last resort displayID", buf, 2u);
    }

    v75 = objc_msgSend_displayID(self, v145, v146);
    goto LABEL_113;
  }

  v49 = IMHandleLogHandle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_DEFAULT, "DisplayName: Using IMMe's FullName", buf, 2u);
  }

LABEL_23:
  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (id)_displayNameWithContact:(id)a3
{
  v4 = objc_msgSend_displayNameWithCNNickNameOrFullNameOrCompanyNameOrAbbreviatedForContact_(MEMORY[0x1E69A7FD0], a2, a3);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v9 = objc_msgSend__displayNameWithNicknameIfAvailable(self, v5, v6);
    v8 = v9;
    if (v9)
    {
      v10 = v9;
    }
  }

  return v8;
}

- (id)nicknameObject
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = sub_1A8259B70;
  v53 = sub_1A825AEE4;
  v54 = 0;
  if (IMSharedHelperCurrentRegionRequiresKnownSenderForNickname())
  {
    v5 = MEMORY[0x1E69A7FD0];
    v6 = objc_msgSend_cnContact(self, v3, v4);
    LOBYTE(v5) = objc_msgSend_isCNContactAKnownContact_(v5, v7, v6);

    if ((v5 & 1) == 0)
    {
      v41 = 0;
      goto LABEL_13;
    }
  }

  if (objc_msgSend_hasSuggestedName(self, v3, v4))
  {
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    v13 = objc_msgSend_sharedInstance(IMSuggestionsService, v11, v12);
    v16 = objc_msgSend_displayID(self, v14, v15);
    v17 = MEMORY[0x1E69E96A0];
    v18 = MEMORY[0x1E69E96A0];
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = sub_1A82F1B8C;
    v46 = &unk_1E7811E08;
    v48 = &v49;
    v19 = v10;
    v47 = v19;
    objc_msgSend_fetchUncachedSuggestedRealNameForDisplayName_prependMaybe_queue_block_(v13, v20, v16, 0, v17, &v43);

    v21 = v47;
  }

  else
  {
    v22 = objc_msgSend_nicknameFromNicknameController(self, v8, v9);

    if (!v22)
    {
      goto LABEL_8;
    }

    v19 = objc_msgSend_sharedInstance(IMNicknameController, v23, v24);
    v26 = objc_msgSend_nicknameForHandle_(v19, v25, self);
    v21 = v50[5];
    v50[5] = v26;
  }

LABEL_8:
  if (!v50[5])
  {
    v27 = objc_msgSend_firstName(self, v23, v24);

    if (v27)
    {
      v28 = objc_alloc(MEMORY[0x1E69A8190]);
      v31 = objc_msgSend_firstName(self, v29, v30);
      v34 = objc_msgSend_lastName(self, v32, v33);
      Name_lastName_avatar_pronouns = objc_msgSend_initWithFirstName_lastName_avatar_pronouns_(v28, v35, v31, v34, 0, 0);
      v37 = v50[5];
      v50[5] = Name_lastName_avatar_pronouns;
    }
  }

  v38 = v50[5];
  v39 = objc_msgSend_ID(self, v23, v24, v43, v44, v45, v46);
  objc_msgSend_setHandle_(v38, v40, v39);

  v41 = v50[5];
LABEL_13:
  _Block_object_dispose(&v49, 8);

  return v41;
}

- (id)nicknameFromNicknameController
{
  v4 = objc_msgSend_sharedInstance(IMNicknameController, a2, v2);
  v6 = objc_msgSend_nicknameForHandle_(v4, v5, self);

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v10 = objc_msgSend_firstName(v6, v8, v9);
    objc_msgSend_setGivenName_(v7, v11, v10);

    v14 = objc_msgSend_lastName(v6, v12, v13);
    objc_msgSend_setFamilyName_(v7, v15, v14);

    v17 = objc_msgSend_stringFromContact_style_(MEMORY[0x1E695CD80], v16, v7, 0);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_displayNameWithNicknameIfAvailable
{
  if (objc_msgSend__allowedByScreenTime(self, a2, v2))
  {
    v6 = objc_msgSend_nicknameFromNicknameController(self, v4, v5);
    if (objc_msgSend_length(v6, v7, v8))
    {
      objc_msgSend_setIsPrefixedWithMaybe_(self, v9, 1);
      v10 = MEMORY[0x1E696AEC0];
      v11 = IMCoreLocalizedString(@"Maybe: %@", @"Maybe: %@");
      v13 = objc_msgSend_stringWithFormat_(v10, v12, v11, v6);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)namePrefixedWithMaybe
{
  if (objc_msgSend_isPrefixedWithMaybe(self, a2, v2))
  {
    v6 = objc_msgSend_name(self, v4, v5);
  }

  else if (objc_msgSend_hasSuggestedName(self, v4, v5))
  {
    v6 = objc_msgSend_suggestedName(self, v7, v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)displayNameForChat:(id)a3
{
  v205 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = IMHandleLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v153 = objc_msgSend_chatIdentifier(v3, v5, v6);
    v152 = objc_msgSend_guid(v3, v7, v8);
    v151 = objc_msgSend_persistentID(v3, v9, v10);
    v149 = objc_msgSend_account(v3, v11, v12);
    v150 = objc_msgSend_uniqueID(v149, v13, v14);
    v17 = objc_msgSend_chatStyle(v3, v15, v16);
    v20 = objc_msgSend_joinState(v3, v18, v19);
    v148 = objc_msgSend_participants(v3, v21, v22);
    v147 = objc_msgSend_participants(v3, v23, v24);
    v27 = objc_msgSend_count(v147, v25, v26);
    v145 = objc_msgSend_roomName(v3, v28, v29);
    v32 = objc_msgSend_displayName(v3, v30, v31);
    v35 = objc_msgSend_lastAddressedHandleID(v3, v33, v34);
    v144 = objc_msgSend_lastAddressedSIMID(v3, v36, v37);
    v143 = objc_msgSend_groupID(v3, v38, v39);
    v142 = objc_msgSend_unreadMessageCount(v3, v40, v41);
    v141 = objc_msgSend_messageFailureCount(v3, v42, v43);
    isFiltered = objc_msgSend_isFiltered(v3, v44, v45);
    v139 = objc_msgSend_mergedThreadFilterModes(v3, v46, v47);
    hasHadSuccessfulQuery = objc_msgSend_hasHadSuccessfulQuery(v3, v48, v49);
    v137 = objc_msgSend_bizIntent(v3, v50, v51);
    v136 = objc_msgSend_personCentricID(v3, v52, v53);
    isRecovered = objc_msgSend_isRecovered(v3, v54, v55);
    isDeletingIncomingMessages = objc_msgSend_isDeletingIncomingMessages(v3, v56, v57);
    log = v4;
    isPendingReview = objc_msgSend_isPendingReview(v3, v58, v59);
    v63 = objc_msgSend_mergedPinningIdentifiers(v3, v61, v62);
    *buf = 134224130;
    v156 = v3;
    v157 = 2112;
    v158 = v153;
    v159 = 2112;
    v160 = v152;
    v161 = 2112;
    v162 = v151;
    v163 = 2112;
    v164 = v150;
    v165 = 1024;
    v166 = v17;
    v167 = 1024;
    v168 = v20;
    v169 = 1024;
    v170 = v148 != 0;
    v171 = 2048;
    v172 = v27;
    v173 = 2112;
    v174 = v145;
    v175 = 2112;
    v176 = v32;
    v177 = 2112;
    v178 = v35;
    v179 = 2112;
    v180 = v144;
    v181 = 2112;
    v182 = v143;
    v183 = 1024;
    v184 = v142;
    v185 = 1024;
    v186 = v141;
    v187 = 1024;
    v188 = isFiltered;
    v189 = 2112;
    v190 = v139;
    v191 = 1024;
    v192 = hasHadSuccessfulQuery;
    v193 = 2112;
    v194 = v137;
    v195 = 2112;
    v196 = v136;
    v197 = 1024;
    v198 = isRecovered;
    v199 = 1024;
    v200 = isDeletingIncomingMessages;
    v201 = 1024;
    v202 = isPendingReview;
    v4 = log;
    v203 = 2112;
    v204 = v63;
    _os_log_impl(&dword_1A823F000, log, OS_LOG_TYPE_DEFAULT, "Calculating displayName for chat: <IMChat %p> [Identifier: %@  GUID: %@  Persistent ID: %@  Account: %@  Style: %c  State: %d  hasParticipants: %{BOOL}d  Participants: %lu  Room Name: %@  Display Name: %@  Last Addressed Handle: %@ Last Addressed SIMID: %@  Group ID: %@  Unread Count: %u  Failure Count: %u  isFiltered: %d  filterModes: %@  hasHadSuccessfulQuery: %{BOOL}d  bizIntent: %@  personCentricID: %@  isRecovered: %{BOOL}d  isDeletingIncomingMessages: %{BOOL}d  isPendingReview: %{BOOL}d  mergedPinningIdentifiers: %@]", buf, 0xD4u);
  }

  v66 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v64, v65);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v66, v67, v68);

  if (isTranscriptSharingEnabled && objc_msgSend_isStewieSharingChat(v3, v70, v71))
  {
    v72 = objc_msgSend_immediateNameWithNeedsSuggestedNameFetch_useSuggestedName_(self, v70, 0, 0);
    v75 = objc_msgSend_controlCharacterSet(MEMORY[0x1E696AB08], v73, v74);
    v77 = objc_msgSend_stringByTrimmingCharactersInSet_(v72, v76, v75);

    v80 = objc_msgSend__unformattedPhoneNumber(self, v78, v79);
    if (objc_msgSend_isEqualToString_(v77, v81, v80))
    {
      v84 = objc_msgSend_stewieSharingSuggestedName(v3, v82, v83);

      if (v84)
      {
        v85 = IMHandleLogHandle();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v88 = objc_msgSend_stewieSharingSuggestedName(v3, v86, v87);
          *buf = 138412290;
          v156 = v88;
          _os_log_impl(&dword_1A823F000, v85, OS_LOG_TYPE_DEFAULT, "Returning transcript sharing suggested name: %@", buf, 0xCu);
        }

        v91 = objc_msgSend_stewieSharingSuggestedName(v3, v89, v90);
LABEL_23:
        v102 = v91;

LABEL_28:
        goto LABEL_29;
      }
    }

    else
    {
    }

    v112 = IMHandleLogHandle();
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v156 = v72;
      _os_log_impl(&dword_1A823F000, v112, OS_LOG_TYPE_DEFAULT, "Found name: %@ for stewie sharing chat", buf, 0xCu);
    }

    v91 = v72;
    goto LABEL_23;
  }

  if ((objc_msgSend_isBusiness(self, v70, v71) & 1) == 0 && !objc_msgSend_isStewie(self, v92, v93))
  {
    v72 = objc_msgSend_cnContact(self, v94, v95);
    if (v72)
    {
      if (objc_msgSend_chatStyle(v3, v103, v104) != 45)
      {
        v119 = objc_msgSend_cachedDisplayNameWithAbbreviation(self, v105, v106);

        if (!v119)
        {
          if (objc_msgSend_shouldShowAbbreviatedNames(MEMORY[0x1E69A7FD0], v120, v121))
          {
            v124 = objc_msgSend_abbreviatedNameForCNContact_(MEMORY[0x1E69A7FD0], v122, v72);
            v127 = objc_msgSend_length(v124, v125, v126);
          }

          else
          {
            v124 = 0;
            v127 = objc_msgSend_length(0, v122, v123);
          }

          if (v127)
          {
            v128 = IMHandleLogHandle();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v156 = v124;
              _os_log_impl(&dword_1A823F000, v128, OS_LOG_TYPE_DEFAULT, "Found short name, setting self.cachedDisplayNameWithAbbreviation to: %@", buf, 0xCu);
            }

            objc_msgSend_setCachedDisplayNameWithAbbreviation_(self, v129, v124);
          }
        }

        v77 = objc_msgSend_cachedDisplayNameWithAbbreviation(self, v120, v121);
        if (objc_msgSend_length(v77, v130, v131))
        {
          objc_msgSend_cachedDisplayNameWithAbbreviation(self, v132, v133);
        }

        else
        {
          objc_msgSend_name(self, v132, v133);
        }
        v91 = ;
        goto LABEL_23;
      }

      v107 = IMHandleLogHandle();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v110 = objc_msgSend_name(self, v108, v109);
        *buf = 138412290;
        v156 = v110;
        v111 = "Chat style is instantMessageChatStyle, returning name: %@";
LABEL_26:
        _os_log_impl(&dword_1A823F000, v107, OS_LOG_TYPE_DEFAULT, v111, buf, 0xCu);
      }
    }

    else
    {
      v107 = IMHandleLogHandle();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v110 = objc_msgSend_name(self, v113, v114);
        *buf = 138412290;
        v156 = v110;
        v111 = "No contact found, returning self.name: %@";
        goto LABEL_26;
      }
    }

    v102 = objc_msgSend_name(self, v115, v116);
    goto LABEL_28;
  }

  v96 = IMHandleLogHandle();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    v99 = objc_msgSend_name(self, v97, v98);
    *buf = 138412290;
    v156 = v99;
    _os_log_impl(&dword_1A823F000, v96, OS_LOG_TYPE_DEFAULT, "Found name: %@ for stewie or business chat", buf, 0xCu);
  }

  v102 = objc_msgSend_name(self, v100, v101);
LABEL_29:

  v117 = *MEMORY[0x1E69E9840];

  return v102;
}

- (NSString)fullName
{
  v4 = objc_msgSend_cnContact(self, a2, v2);
  v6 = objc_msgSend_fullNameForCNContact_(MEMORY[0x1E69A7FD0], v5, v4);
  if (objc_msgSend_length(v6, v7, v8))
  {
    v11 = v6;
  }

  else if (objc_msgSend__hasServiceNameProperties(self, v9, v10) && (fullName = self->_fullName) != 0)
  {
    v11 = fullName;
  }

  else
  {
    if (objc_msgSend_isLoginIMHandle(self, v12, v13))
    {
      v17 = objc_msgSend_me(IMMe, v15, v16);
      v20 = objc_msgSend_fullName(v17, v18, v19);
      v23 = objc_msgSend_trimmedString(v20, v21, v22);

      if (objc_msgSend_length(v23, v24, v25))
      {
        goto LABEL_11;
      }
    }

    v11 = objc_msgSend_name(self, v15, v16);
  }

  v23 = v11;
LABEL_11:

  return v23;
}

- (NSString)nameAndID
{
  if (objc_msgSend_hasName(self, a2, v2))
  {
    v6 = objc_msgSend_name(self, v4, v5);
    v9 = objc_msgSend_displayID(self, v7, v8);
    if (objc_msgSend_equalID_andID_(self->_account, v10, v6, v9))
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"%@", v6);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"%@ \u202A<%@>\u202C", v6, v9);
    }
    v14 = ;
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v6 = objc_msgSend_displayID(self, v4, v5);
    v14 = objc_msgSend_stringWithFormat_(v12, v13, @"%@", v6);
  }

  return v14;
}

- (BOOL)hasName
{
  if (objc_msgSend__hasABName(self, a2, v2) & 1) != 0 || (objc_msgSend__hasServiceNameProperties(self, v4, v5))
  {
    return 1;
  }

  v9 = objc_msgSend_name(self, v6, v7);
  v8 = objc_msgSend_length(v9, v10, v11) != 0;

  return v8;
}

- (NSString)firstName
{
  v4 = objc_msgSend_cnContact(self, a2, v2);
  v6 = objc_msgSend_firstNameForCNContact_(MEMORY[0x1E69A7FD0], v5, v4);
  if (objc_msgSend_length(v6, v7, v8))
  {
    v11 = v6;
LABEL_3:
    v12 = v11;
    goto LABEL_4;
  }

  if (objc_msgSend__hasServiceNameProperties(self, v9, v10))
  {
    firstName = self->_firstName;
    if (firstName)
    {
      v11 = firstName;
      goto LABEL_3;
    }
  }

  if (objc_msgSend_isLoginIMHandle(self, v14, v15))
  {
    v19 = objc_msgSend_me(IMMe, v17, v18);
    v12 = objc_msgSend_firstName(v19, v20, v21);
  }

  else
  {
    v12 = 0;
  }

LABEL_4:

  return v12;
}

- (NSString)lastName
{
  v4 = objc_msgSend_cnContact(self, a2, v2);
  v6 = objc_msgSend_lastNameForCNContact_(MEMORY[0x1E69A7FD0], v5, v4);
  if (objc_msgSend_length(v6, v7, v8))
  {
    v11 = v6;
LABEL_3:
    v12 = v11;
    goto LABEL_4;
  }

  if (objc_msgSend__hasServiceNameProperties(self, v9, v10))
  {
    if (objc_msgSend_length(self->_lastName, v14, v15))
    {
      v11 = self->_lastName;
      goto LABEL_3;
    }
  }

  else if (objc_msgSend_isLoginIMHandle(self, v14, v15))
  {
    v18 = objc_msgSend_me(IMMe, v16, v17);
    v12 = objc_msgSend_lastName(v18, v19, v20);

    goto LABEL_4;
  }

  v12 = 0;
LABEL_4:

  return v12;
}

- (NSString)phoneticFirstName
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_cnPhoneticKeys(v3, v4, v5);
  v8 = objc_msgSend_cnContactWithKeys_(self, v7, v6);

  v10 = objc_msgSend_phoneticFirstNameForCNContact_(MEMORY[0x1E69A7FD0], v9, v8);
  if (objc_msgSend_length(v10, v11, v12))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)phoneticLastName
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_cnPhoneticKeys(v3, v4, v5);
  v8 = objc_msgSend_cnContactWithKeys_(self, v7, v6);

  v10 = objc_msgSend_phoneticLastNameForCNContact_(MEMORY[0x1E69A7FD0], v9, v8);
  if (objc_msgSend_length(v10, v11, v12))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)phoneticFullName
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_cnPhoneticKeys(v3, v4, v5);
  v8 = objc_msgSend_cnContactWithKeys_(self, v7, v6);

  v10 = objc_msgSend_phoneticFullNameForCNContact_(MEMORY[0x1E69A7FD0], v9, v8);
  if (objc_msgSend_length(v10, v11, v12))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_setBaseFirstName:(id)a3 lastName:(id)a4 fullName:(id)a5
{
  v29 = a3;
  v8 = a4;
  v10 = a5;
  firstName = self->_firstName;
  if (firstName == v29)
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_isEqualToString_(v29, v9, firstName) ^ 1;
  }

  lastName = self->_lastName;
  if (lastName == v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_msgSend_isEqualToString_(v8, v9, lastName) ^ 1;
  }

  fullName = self->_fullName;
  if (fullName == v10)
  {
    if (((v12 | v14) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (!(v12 & 1 | ((objc_msgSend_isEqualToString_(v10, v9, fullName) & 1) == 0) | v14 & 1))
  {
    goto LABEL_13;
  }

  v16 = objc_msgSend_copy(v10, v9, fullName);
  v17 = self->_fullName;
  self->_fullName = v16;

  v20 = objc_msgSend_copy(v29, v18, v19);
  v21 = self->_firstName;
  self->_firstName = v20;

  v24 = objc_msgSend_copy(v8, v22, v23);
  v25 = self->_lastName;
  self->_lastName = v24;

  if ((objc_msgSend__hasABName(self, v26, v27) & 1) == 0)
  {
    objc_msgSend_postNotificationName_(self, v28, @"__kIMHandleInfoChangedNotification");
  }

LABEL_13:
}

- (void)setImageData:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E695C400];
  v24[0] = *MEMORY[0x1E695C278];
  v24[1] = v5;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v24, 2);
  v9 = objc_msgSend_cnContactWithKeys_(self, v8, v7);

  v13 = objc_msgSend_imageData(v9, v10, v11);
  if (v13 != v4 && (objc_msgSend_isEqualToData_(v4, v12, v13) & 1) == 0)
  {
    v16 = objc_msgSend_mutableCopy(v9, v14, v15);
    objc_msgSend_setImageData_(v16, v17, v4);
    v20 = objc_msgSend_copy(v16, v18, v19);
    objc_msgSend_updateCNContact_(self, v21, v20);

    objc_msgSend_postNotificationName_(self, v22, @"__kIMHandleInfoChangedNotification");
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setLocalNickname:(id)a3
{
  v4 = a3;
  nickname = self->_nickname;
  if (nickname != v4)
  {
    v13 = v4;
    nickname = objc_msgSend_isEqualToString_(nickname, v4, v4);
    if ((nickname & 1) == 0)
    {
      fullName = self->_fullName;
      self->_fullName = 0;

      v9 = objc_msgSend_copy(v13, v7, v8);
      v10 = self->_nickname;
      self->_nickname = v9;

      nickname = objc_msgSend__hasABName(self, v11, v12);
      if ((nickname & 1) == 0)
      {
        nickname = objc_msgSend_postNotificationName_(self, v13, @"__kIMHandleInfoChangedNotification");
      }
    }
  }

  MEMORY[0x1EEE66BB8](nickname);
}

- (void)setFirstName:(id)a3 lastName:(id)a4 fullName:(id)a5 andUpdateABPerson:(BOOL)a6
{
  if (!a6)
  {
    MEMORY[0x1EEE66B58](self, sel__setBaseFirstName_lastName_fullName_, a3);
  }
}

- (NSString)email
{
  v3 = objc_msgSend_emails(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v8 = objc_msgSend___imFirstObject(v3, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)emails
{
  v3 = MEMORY[0x1E69A7FD0];
  v4 = objc_msgSend_cnContactWithKeys_(self, a2, MEMORY[0x1E695E0F0]);
  v6 = objc_msgSend_emailsForCNContact_(v3, v5, v4);

  if (objc_msgSend_count(v6, v7, v8))
  {
    v11 = v6;
LABEL_5:
    v14 = v11;
    goto LABEL_6;
  }

  if (objc_msgSend_count(self->_emails, v9, v10))
  {
    v11 = self->_emails;
    goto LABEL_5;
  }

  if (objc_msgSend_isLoginIMHandle(self, v12, v13))
  {
    v18 = objc_msgSend_me(IMMe, v16, v17);
    v14 = objc_msgSend_emails(v18, v19, v20);
  }

  else
  {
    v14 = 0;
  }

LABEL_6:

  return v14;
}

- (id)cnContactWithKeys:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_isBusiness(self, v5, v6) & 1) != 0 || (objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v7, v8), v10 = objc_claimAutoreleasedReturnValue(), isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v10, v11, v12), v10, isTranscriptSharingEnabled) && (objc_msgSend_isStewieTranscriptSharingHandle(self, v14, v15))
  {
    v9 = 0;
    goto LABEL_19;
  }

  v18 = self->_cnContact;
  if (v18)
  {
    v19 = IMHandleLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E0130(v19);
    }

    v22 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v20, v21);
    v9 = objc_msgSend_completedContact_withKeys_(v22, v23, v18, v4);

    if (v9)
    {
      goto LABEL_13;
    }
  }

  v24 = objc_msgSend_im_stripCategoryLabel(self->_id, v16, v17);
  v25 = IMHandleLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_msgSend_guid(self, v26, v27);
    v41 = 138412290;
    v42 = v28;
    _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_DEFAULT, "No contact found. Fetching for guid: %@", &v41, 0xCu);
  }

  if (!objc_msgSend_length(v24, v29, v30))
  {

    goto LABEL_15;
  }

  v33 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v31, v32);
  v9 = objc_msgSend_fetchCNContactForHandleID_withKeys_(v33, v34, v24, v4);

  if (!v9)
  {
LABEL_15:
    v35 = IMHandleLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_msgSend_guid(self, v36, v37);
      v41 = 138412290;
      v42 = v38;
      _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_DEFAULT, "No contact made. %@", &v41, 0xCu);
    }

    v9 = 0;
    goto LABEL_18;
  }

LABEL_13:
  objc_msgSend_updateCNContact_(self, v16, v9);
LABEL_18:

LABEL_19:
  v39 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)updateCNContact:(id)a3
{
  v5 = a3;
  if (self->_cnContact != v5)
  {
    objc_msgSend_setCnContact_(self, v4, v5);
    if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v6, v7))
    {
      objc_msgSend_setCachedDisplayNameWithAbbreviation_(self, v8, 0);
      if (objc_msgSend_isBusiness(self, v9, v10))
      {
        v13 = MEMORY[0x1E69A7F28];
        v14 = objc_msgSend_ID(self, v11, v12);
        v16 = objc_msgSend_placeholderNameForBrandURI_(v13, v15, v14);
        objc_msgSend_setCachedName_(self, v17, v16);
      }

      else
      {
        objc_msgSend_setCachedName_(self, v11, 0);
      }

      v22 = objc_msgSend_sharedInstance(IMHandleRegistrar, v18, v19);
      objc_msgSend_addHandleToCNIDMap_CNContact_(v22, v23, self, v5);
    }

    else
    {
      objc_initWeak(&location, self);
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = sub_1A82F34FC;
      v33 = &unk_1E7811E30;
      objc_copyWeak(&v36, &location);
      v34 = self;
      v35 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], &v30);

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }

    v24 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v20, v21, v30, v31, v32, v33, v34);
    isBatchFetchingForLaunchCompleted = objc_msgSend_isBatchFetchingForLaunchCompleted(v24, v25, v26);

    if (isBatchFetchingForLaunchCompleted)
    {
      objc_msgSend_sendNotificationABPersonChanged(self, v28, v29);
    }
  }
}

- (BOOL)isSystemUser
{
  v4 = objc_msgSend_ID(self, a2, v2);
  v7 = objc_msgSend_service(self, v5, v6);
  v10 = objc_msgSend_serviceProperties(v7, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, *MEMORY[0x1E69A5EE0]);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v13, v12);

  if (isEqualToString)
  {
    return 1;
  }

  v17 = objc_msgSend_objectForKey_(self->_extraProps, v15, *MEMORY[0x1E69A6320]);
  v20 = objc_msgSend_BOOLValue(v17, v18, v19);

  return v20;
}

- (BOOL)isKTVerified
{
  v4 = objc_msgSend_sharedController(IMKeyTransparencyController, a2, v2);
  v7 = objc_msgSend_ID(self, v5, v6);
  v10 = objc_msgSend__stripFZIDPrefix(v7, v8, v9);
  v12 = objc_msgSend_ktVerifierResultForHandleID_(v4, v11, v10);

  v17 = objc_msgSend_staticAccountKeyEnforced(v12, v13, v14) && (objc_msgSend_optedIn(v12, v15, v16) & 1) != 0;
  return v17;
}

- (void)setIsMobile:(BOOL)a3
{
  if (self->_isMobile != a3)
  {
    self->_isMobile = a3;
    objc_msgSend_postNotificationName_(self, a2, @"__kIMHandleIsMobileChangedNotification");
  }
}

- (void)setIsBot:(BOOL)a3
{
  if (self->_isBot != a3)
  {
    self->_isBot = a3;
    objc_msgSend_postNotificationName_(self, a2, @"__kIMHandleIsBotChangedNotification");
  }
}

- (NSString)mobileDeviceName
{
  v3 = objc_msgSend_extraProperties(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x1E69A6330]);

  return v5;
}

- (BOOL)hasServer
{
  v3 = objc_msgSend_account(self, a2, v2);
  v6 = objc_msgSend_service(v3, v4, v5);
  v9 = objc_msgSend_jabberService(IMServiceImpl, v7, v8);
  v10 = v6 == v9;

  return v10;
}

- (NSString)server
{
  if (objc_msgSend_hasServer(self, a2, v2))
  {
    v6 = objc_msgSend_IDWithoutResource(self, v4, v5);
    v8 = objc_msgSend_rangeOfString_(v6, v7, @"@");
    if (v8 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v8, &v9[v8] >= objc_msgSend_length(self->_id, v9, v10)))
    {
      v13 = 0;
    }

    else
    {
      v13 = objc_msgSend_substringFromIndex_(v6, v12, v11 + 1);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isBuddy
{
  v4 = objc_msgSend_account(self, a2, v2);
  v7 = objc_msgSend_ID(self, v5, v6);
  v9 = objc_msgSend_memberGroups_(v4, v8, v7);
  v10 = v9 != 0;

  return v10;
}

- (BOOL)isLoginIMHandleForAnyAccount
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isLoginIMHandle(self, a2, v2))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = objc_msgSend_accountSiblingsArray(self, v4, v5, 0);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
    if (v6)
    {
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v7);
          }

          if (objc_msgSend_isLoginIMHandle(*(*(&v15 + 1) + 8 * i), v9, v10))
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v15, v19, 16);
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)matchesLoginHandleForAnyAccount
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_accountSiblingsArray(self, a2, v2);
  v7 = objc_msgSend_normalizedID(self, v5, v6);
  v8 = MEMORY[0x1AC56C3F0]();

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v4;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v28, v32, 16);
  if (v13)
  {
    v14 = *v29;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = objc_msgSend_account(*(*(&v28 + 1) + 8 * i), v11, v12, v28);
        v19 = objc_msgSend_loginIMHandle(v16, v17, v18);
        v22 = objc_msgSend_normalizedID(v19, v20, v21);
        v23 = MEMORY[0x1AC56C3F0]();

        v25 = objc_msgSend_caseInsensitiveCompare_(v8, v24, v23);
        if (!v25)
        {
          LOBYTE(v13) = 1;
          goto LABEL_11;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v28, v32, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v26 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_createPhoneNumberRefIfNeeded
{
  if (!self->_hasCheckedPhoneNumber && !self->_phoneNumberRef)
  {
    self->_hasCheckedPhoneNumber = 1;
    v5 = MEMORY[0x1AC56C3F0](self->_id, a2);
    if (objc_msgSend__appearsToBePhoneNumber(v5, v3, v4))
    {
      self->_phoneNumberRef = IMPhoneNumberRefCopyForPhoneNumber();
    }
  }
}

- (void)_updateOriginalID:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((objc_msgSend_hasPrefix_(v4, v5, @"+") & 1) == 0)
  {
    if (objc_msgSend_length(v4, v6, v7))
    {
      if ((objc_msgSend__appearsToBeEmail(v4, v8, v9) & 1) == 0)
      {
        v12 = objc_msgSend_originalID(self, v10, v11);
        isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v4, v13, v12);

        if ((isEqualToIgnoringCase & 1) == 0)
        {
          v17 = objc_msgSend_sharedController(IMDaemonController, v15, v16);
          v19 = *MEMORY[0x1E69A6260] & objc_msgSend_capabilitiesForListenerID_(v17, v18, 0);

          if (v19)
          {
            v20 = IMHandleLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v23 = objc_msgSend_originalID(self, v21, v22);
              v41 = 138412802;
              v42 = v23;
              v43 = 2112;
              v44 = v4;
              v45 = 2112;
              v46 = self;
              _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_DEFAULT, "Updating unformatted ID from %@ to %@ (%@)", &v41, 0x20u);
            }

            v26 = objc_msgSend_sharedController(IMDaemonController, v24, v25);
            v29 = objc_msgSend_remoteDaemon(v26, v27, v28);
            v32 = objc_msgSend_ID(self, v30, v31);
            v35 = objc_msgSend_service(self, v33, v34);
            v38 = objc_msgSend_internalName(v35, v36, v37);
            objc_msgSend_updateUnformattedID_forBuddyID_onService_(v29, v39, v4, v32, v38);
          }
        }
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (id)_unformattedPhoneNumber
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__formattedPhoneNumber(self, a2, v2);
  if (objc_msgSend_length(v3, v4, v5))
  {
    v6 = IMHandleLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEFAULT, "Unformatted phone number: %@", &v14, 0xCu);
    }

    v9 = objc_msgSend_controlCharacterSet(MEMORY[0x1E696AB08], v7, v8);
    v11 = objc_msgSend_stringByTrimmingCharactersInSet_(v3, v10, v9);

    v3 = v11;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isBetterThanIMHandle:(id)a3 nonPhoneNumbersPreferred:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9 = v6;
  if (v6)
  {
    if (v6 != self)
    {
      v139 = objc_msgSend_status(self, v7, v8);
      v138 = objc_msgSend_status(v9, v10, v11);
      v14 = objc_msgSend_account(self, v12, v13);
      v17 = objc_msgSend_account(v9, v15, v16);
      v20 = objc_msgSend_sharedInstance(IMAccountController, v18, v19);
      v23 = objc_msgSend_accounts(v20, v21, v22);
      v26 = objc_msgSend_account(self, v24, v25);
      isMobile = objc_msgSend_containsObjectIdenticalTo_(v23, v27, v26);

      v31 = objc_msgSend_sharedInstance(IMAccountController, v29, v30);
      v34 = objc_msgSend_accounts(v31, v32, v33);
      v37 = objc_msgSend_account(v9, v35, v36);
      v39 = objc_msgSend_containsObjectIdenticalTo_(v34, v38, v37);

      if (isMobile != v39)
      {
        v42 = v14;
LABEL_14:

        goto LABEL_15;
      }

      isOperational = objc_msgSend_isOperational(v14, v40, v41);
      v42 = v14;
      if (isOperational != objc_msgSend_isOperational(v17, v44, v45))
      {
        v48 = objc_msgSend_isOperational(v14, v46, v47);
LABEL_13:
        LOBYTE(isMobile) = v48;
        goto LABEL_14;
      }

      isActive = objc_msgSend_isActive(v14, v46, v47);
      if (isActive != objc_msgSend_isActive(v17, v50, v51))
      {
        v48 = objc_msgSend_isActive(v14, v52, v53);
        goto LABEL_13;
      }

      isConnected = objc_msgSend_isConnected(v14, v52, v53);
      if (isConnected != objc_msgSend_isConnected(v17, v55, v56))
      {
        v48 = objc_msgSend_isConnected(v14, v57, v58);
        goto LABEL_13;
      }

      isLoginIMHandle = objc_msgSend_isLoginIMHandle(self, v57, v58);
      v63 = objc_msgSend_isLoginIMHandle(v9, v61, v62);
      if (isLoginIMHandle && !v63)
      {
LABEL_18:
        LOBYTE(isMobile) = 0;
        goto LABEL_14;
      }

      if (isLoginIMHandle & 1 | ((v63 & 1) == 0))
      {
        if (v139 <= 1)
        {
          v65 = 1;
        }

        else
        {
          v65 = v139;
        }

        if (v138 <= 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = v138;
        }

        if (v65 == v66)
        {
          if (v4)
          {
            isMobile = objc_msgSend_isMobile(self, v66, v64);
            if (isMobile != objc_msgSend_isMobile(v9, v67, v68))
            {
              goto LABEL_30;
            }

            v71 = objc_msgSend_ID(self, v69, v70);
            isMobile = objc_msgSend__appearsToBePhoneNumber(v71, v72, v73);

            v76 = objc_msgSend_ID(v9, v74, v75);
            v79 = objc_msgSend__appearsToBePhoneNumber(v76, v77, v78);

            if (isMobile != v79)
            {
LABEL_30:
              LOBYTE(isMobile) = isMobile ^ 1;
              goto LABEL_14;
            }
          }

          v80 = objc_msgSend_capabilities(self, v66, v64);
          v83 = objc_msgSend_capabilities(v9, v81, v82);
          if (v80 != v83)
          {
            v86 = 0x20000;
            v87 = 8u;
            do
            {
              LOBYTE(isMobile) = (v86 & ~v80) == 0;
              if (isMobile != ((v86 & ~v83) == 0))
              {
                goto LABEL_14;
              }

              v86 = *(&unk_1A84FFDF0 + v87);
              v87 += 8;
            }

            while (v87 != 64);
          }

          isBuddy = objc_msgSend_isBuddy(self, v84, v85);
          if (isBuddy != objc_msgSend_isBuddy(v9, v89, v90))
          {
            v48 = objc_msgSend_isBuddy(self, v91, v92);
            goto LABEL_13;
          }

          if (objc_msgSend_hasResource(v9, v91, v92) && objc_msgSend_hasResource(self, v93, v94))
          {
            v97 = objc_msgSend_account(self, v95, v96);
            v100 = objc_msgSend_loginIMHandle(v97, v98, v99);
            v103 = objc_msgSend_server(v100, v101, v102);

            if (objc_msgSend_length(v103, v104, v105))
            {
              v108 = objc_msgSend_server(self, v106, v107);
              isMobile = objc_msgSend_isEqualToString_(v108, v109, v103);

              v112 = objc_msgSend_server(v9, v110, v111);
              isEqualToString = objc_msgSend_isEqualToString_(v112, v113, v103);

              if (isMobile != isEqualToString)
              {

                goto LABEL_14;
              }
            }
          }

          if (IMPersonStatusIsOnline(v65) && IMPersonStatusIsOnline(v65))
          {
            v117 = objc_msgSend_priority(v9, v115, v116);
            priority = self->_priority;
            LOBYTE(isMobile) = priority > v117;
            if (priority != v117)
            {
              goto LABEL_14;
            }
          }

          v119 = objc_msgSend_account(self, v115, v116);
          isMobile = objc_msgSend_isConnected(v119, v120, v121);

          v124 = objc_msgSend_account(v9, v122, v123);
          v127 = objc_msgSend_isConnected(v124, v125, v126);

          if (isMobile != v127)
          {
            goto LABEL_14;
          }

          objc_msgSend_timeSinceWentOffline(self, v128, v129);
          v131 = v130;
          objc_msgSend_timeSinceWentOffline(v9, v132, v133);
          if (v131 != v135)
          {
            if (v131 >= 0.0 || v135 < 0.0)
            {
              v136 = v131 >= 0.0;
              if (v135 >= 0.0)
              {
                v136 = 0;
              }

              LOBYTE(isMobile) = v131 < v135 || v136;
              goto LABEL_14;
            }

            goto LABEL_18;
          }

          v137 = objc_msgSend_compareIDs_(self, v134, v9);
          if (v137 != -1)
          {
            if (v137 != 1)
            {
              LOBYTE(isMobile) = v9 > self;
              goto LABEL_14;
            }

            goto LABEL_18;
          }
        }

        else if (v139 != 2 || v138 != 3)
        {
          LOBYTE(isMobile) = IMComparePersonStatus(v65, v66) == NSOrderedDescending;
          goto LABEL_14;
        }
      }

      LOBYTE(isMobile) = 1;
      goto LABEL_14;
    }

    LOBYTE(isMobile) = 0;
  }

  else
  {
    LOBYTE(isMobile) = 1;
  }

LABEL_15:

  return isMobile;
}

- (id)bestAccountSibling
{
  v3 = objc_msgSend_existingAccountSiblingsArray(self, a2, v2);
  v5 = objc_msgSend_bestIMHandleInArray_(IMHandle, v4, v3);

  return v5;
}

+ (id)bestIMHandleInArray:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v15, v19, 16);
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (!v8 || objc_msgSend_isBetterThanIMHandle_(*(*(&v15 + 1) + 8 * i), v6, v8))
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v15, v19, 16);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)bestIMHandleForAccount:(id)a3 onService:(id)a4 inGroup:(id)a5 otherThan:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v44 = a6;
  if (v12 && !objc_msgSend_length(v12, v13, v14))
  {

    v12 = 0;
  }

  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v18 = objc_msgSend_siblings(self, v16, v17);
  v20 = objc_msgSend_initWithSet_(v15, v19, v18);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = v20;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v45, v49, 16);
  if (v23)
  {
    v24 = v23;
    v43 = 0;
    v25 = 0;
    v26 = *v46;
    while (1)
    {
      for (i = 0; i != v24; ++i)
      {
        v28 = v25;
        if (*v46 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v45 + 1) + 8 * i);

        if (v11)
        {
          v31 = objc_msgSend_service(v25, v29, v30);

          if (v31 != v11)
          {
            continue;
          }
        }

        if (v10)
        {
          v32 = objc_msgSend_account(v25, v29, v30);

          if (v32 != v10)
          {
            continue;
          }
        }

        if (!v12)
        {
          if (v44 && v25 == v44)
          {
            continue;
          }

LABEL_25:
          if ((objc_msgSend_isLoginIMHandle(v25, v29, v30, v43) & 1) == 0 && objc_msgSend_isBetterThanIMHandle_(v25, v29, v43))
          {
            v39 = v25;

            v43 = v39;
          }

          continue;
        }

        v33 = objc_msgSend_groupsArray(v25, v29, v30);
        v34 = v12;
        v36 = objc_msgSend_containsObject_(v33, v35, v12);

        if (v44)
        {
          v37 = v25 == v44;
        }

        else
        {
          v37 = 0;
        }

        v38 = v37;
        if (!v36)
        {
          v12 = v34;
          continue;
        }

        v12 = v34;
        if ((v38 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v29, &v45, v49, 16);
      if (!v24)
      {

        v40 = v43;
        goto LABEL_33;
      }
    }
  }

  v40 = 0;
LABEL_33:

  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

- (id)bestSibling
{
  if (self->_account && (objc_msgSend_sharedInstance(IMAccountController, a2, v2), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_accounts(v4, v5, v6), v7 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend_containsObjectIdenticalTo_(v7, v8, self->_account), v7, v4, v9))
  {
    v10 = objc_msgSend_bestIMHandleForAccount_onService_inGroup_otherThan_(self, a2, self->_account, 0, 0, 0);
  }

  else
  {
    v11 = objc_msgSend_service(self, a2, v2);
    v13 = objc_msgSend_bestIMHandleForAccount_onService_inGroup_otherThan_(self, v12, 0, v11, 0, 0);

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_msgSend_bestIMHandleForAccount_onService_inGroup_otherThan_(self, v14, 0, 0, 0, 0);
    }

    v10 = v15;
  }

  return v10;
}

- (void)_setExtraProperties:(id)a3
{
  isEqual = a3;
  extraProps = self->_extraProps;
  if (extraProps != isEqual)
  {
    v13 = isEqual;
    isEqual = objc_msgSend_isEqual_(isEqual, isEqual, extraProps);
    if ((isEqual & 1) == 0)
    {
      v7 = self->_extraProps;
      if (v7)
      {
        v8 = objc_msgSend_mutableCopy(v7, v13, v6);
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v10 = v8;
      objc_msgSend_addEntriesFromDictionary_(v8, v9, v13);
      v11 = self->_extraProps;
      self->_extraProps = v10;

      isEqual = objc_msgSend_postNotificationName_(self, v12, @"__kIMHandleExtraPropertiesChangedNotification");
    }
  }

  MEMORY[0x1EEE66BB8](isEqual);
}

- (void)propertiesChanged:(id)a3
{
  v37 = a3;
  if (objc_msgSend_count(v37, v4, v5) != 1 || (objc_msgSend_objectForKey_(v37, v6, *MEMORY[0x1E69A6310]), v8 = objc_claimAutoreleasedReturnValue(), v8, v9 = v37, !v8))
  {
    if (!self->_blockNotifications)
    {
      objc_msgSend_beginNotificationQueue(self, v6, v7);
    }

    v10 = *MEMORY[0x1E69A62E0];
    v11 = objc_msgSend_objectForKey_(v37, v6, *MEMORY[0x1E69A62E0]);

    if (v11)
    {
      v14 = objc_msgSend_objectForKey_(v37, v12, v10);
      v17 = objc_msgSend_unsignedLongLongValue(v14, v15, v16);
      objc_msgSend_setCapabilities_(self, v18, v17);
    }

    if (!qword_1EB2EA270)
    {
      v19 = objc_alloc(MEMORY[0x1E695DEC8]);
      v20 = *MEMORY[0x1E69A6380];
      v21 = *MEMORY[0x1E69A6338];
      v22 = objc_msgSend_initWithObjects_(v19, *MEMORY[0x1E69A62D0], *MEMORY[0x1E69A6310], *MEMORY[0x1E69A6380], *MEMORY[0x1E69A6370], *MEMORY[0x1E69A6378], *MEMORY[0x1E69A6308], *MEMORY[0x1E69A6328], *MEMORY[0x1E69A62F0], v10, *MEMORY[0x1E69A6348], *MEMORY[0x1E69A62D8], *MEMORY[0x1E69A62F8], *MEMORY[0x1E69A6300], *MEMORY[0x1E69A62D0], *MEMORY[0x1E69A6338], *MEMORY[0x1E69A6360], *MEMORY[0x1E69A6388], 0);
      v23 = qword_1EB2EA270;
      qword_1EB2EA270 = v22;
    }

    v24 = objc_msgSend_mutableCopy(v37, v12, v13);
    objc_msgSend_removeObjectsForKeys_(v24, v25, qword_1EB2EA270);
    objc_msgSend__setExtraProperties_(self, v26, v24);
    v28 = objc_msgSend_objectForKey_(v37, v27, *MEMORY[0x1E69A6318]);
    self->_isAnonymous = objc_msgSend_intValue(v28, v29, v30) != 0;

    if (!self->_blockNotifications)
    {
      objc_msgSend_releaseNotificationQueue(self, v31, v32);
      if (!self->_notificationQueueCount)
      {
        v35 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v33, v34);
        objc_msgSend___mainThreadPostNotificationName_object_(v35, v36, @"__kIMBuddyPropertiesChangedDoneNotification", self);
      }
    }

    v9 = v37;
  }
}

- (void)setBlockedStatus:(int64_t)a3
{
  if (a3 == 1)
  {
    v11 = objc_msgSend_sharedBlockList(MEMORY[0x1E69A7F20], a2, 1);
    v6 = objc_msgSend_cnContact(self, v8, v9);
    objc_msgSend_blockContact_(v11, v10, v6);
  }

  else
  {
    if (a3)
    {
      return;
    }

    v11 = objc_msgSend_sharedBlockList(MEMORY[0x1E69A7F20], a2, 0);
    v6 = objc_msgSend_cnContact(self, v4, v5);
    objc_msgSend_unblockContact_(v11, v7, v6);
  }
}

- (unsigned)sortOrderInGroup:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend_account(self, v7, v8);
    v11 = objc_msgSend_sortOrderForIMHandle_inGroup_(v9, v10, self, v4);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)accountTypeName
{
  v3 = objc_msgSend_account(self, a2, v2);
  v6 = objc_msgSend_shortName(v3, v4, v5);

  return v6;
}

- (NSString)resource
{
  resourceIndex = self->_resourceIndex;
  if (resourceIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_msgSend_substringFromIndex_(self->_id, a2, resourceIndex);
  }

  return v4;
}

- (NSString)IDWithoutResource
{
  IDWithoutResource = self->_IDWithoutResource;
  if (!IDWithoutResource)
  {
    resourceIndex = self->_resourceIndex;
    if (resourceIndex)
    {
      v5 = resourceIndex == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = self->_id;
    }

    else
    {
      v6 = objc_msgSend_substringToIndex_(self->_id, a2, resourceIndex - 1);
    }

    v7 = self->_IDWithoutResource;
    self->_IDWithoutResource = v6;

    IDWithoutResource = self->_IDWithoutResource;
  }

  v8 = IDWithoutResource;

  return v8;
}

- (IMHandle)imHandleWithoutResource
{
  if (self->_resourceIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = self;
  }

  else
  {
    v5 = objc_msgSend_account(self, a2, v2);
    v8 = objc_msgSend_IDWithoutResource(self, v6, v7);
    v4 = objc_msgSend_imHandleWithID_(v5, v9, v8);
  }

  return v4;
}

- (id)existingIMHandleWithoutResource
{
  if (self->_resourceIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = self;
  }

  else
  {
    v5 = objc_msgSend_account(self, a2, v2);
    v8 = objc_msgSend_IDWithoutResource(self, v6, v7);
    v4 = objc_msgSend_existingIMHandleWithID_(v5, v9, v8);
  }

  return v4;
}

- (id)dependentIMHandles
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_resourceIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = objc_msgSend_arrayOfAllIMHandles(self->_account, v5, v6, 0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v19, v23, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (v15 != self)
          {
            v16 = objc_msgSend_imHandleWithoutResource(*(*(&v19 + 1) + 8 * i), v10, v11);

            if (v16 == self)
            {
              objc_msgSend_addObject_(v4, v10, v15);
            }
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v19, v23, 16);
      }

      while (v12);
    }
  }

  else
  {
    v4 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_stopRetainingAccount:(id)a3
{
  account = self->_account;
  self->_account = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)_updateStatusBasedOnAuthRequestStatus
{
  if (objc_msgSend_isLoginIMHandle(self, a2, v2))
  {
    return;
  }

  v4 = sub_1A8361964();
  authRequestStatus = self->_authRequestStatus;
  if (authRequestStatus == 2)
  {
    v7 = @"Not authorized";
    goto LABEL_6;
  }

  if (authRequestStatus == 1)
  {
    v7 = @"Waiting for authorization";
LABEL_6:
    v10 = v4;
    v8 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, v7, &stru_1F1B76F98, @"IMCoreLocalizable");
    objc_msgSend_setStatus_message_richMessage_(self, v9, 0, v8, 0);

    v4 = v10;
  }
}

- (unint64_t)status
{
  v3 = objc_msgSend_account(self, a2, v2);
  isConnected = objc_msgSend_isConnected(v3, v4, v5);

  if (isConnected)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (void)statusMessageChanged:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_status(self, v4, v5);
  objc_msgSend_setStatus_message_richMessage_(self, v7, v6, v8, 0);
}

- (NSString)nameOfStatus
{
  v3 = objc_msgSend_nameOfStatus_(IMHandle, a2, self->_status);
  if (!objc_msgSend_status(self, v4, v5))
  {
    v8 = objc_msgSend_account(self, v6, v7);
    v11 = objc_msgSend_loginStatus(v8, v9, v10);

    if (v11 != 4)
    {
      v12 = sub_1A8361964();
      v14 = objc_msgSend_localizedStringForKey_value_table_(v12, v13, @" (You are offline)", &stru_1F1B76F98, @"IMCoreLocalizable");
      v16 = objc_msgSend_stringByAppendingString_(v3, v15, v14);

      v3 = v16;
    }
  }

  return v3;
}

- (double)idleTime
{
  idleSince = self->_idleSince;
  if (!idleSince)
  {
    return 0.0;
  }

  objc_msgSend_timeIntervalSinceNow(idleSince, a2, v2);
  return -v4;
}

- (void)_setIDStatus:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_IDStatus != a3)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        IDStatus = self->_IDStatus;
        v8 = 138412802;
        v9 = self;
        v10 = 1024;
        v11 = IDStatus;
        v12 = 1024;
        v13 = a3;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "Posting ID status change for: %@   from %d to %d", &v8, 0x18u);
      }
    }

    self->_IDStatus = a3;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setIdleSince:(id)a3
{
  v4 = a3;
  idleSince = self->_idleSince;
  v10 = v4;
  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    v8 = objc_msgSend_copy(v10, v6, v7);
    v9 = self->_idleSince;
    self->_idleSince = v8;
  }
}

- (void)setFeedUpdatedDate:(id)a3
{
  v10 = a3;
  if ((objc_msgSend_isEqualToDate_(v10, v4, self->_feedUpdatedDate) & 1) == 0)
  {
    v7 = objc_msgSend_copy(v10, v5, v6);
    feedUpdatedDate = self->_feedUpdatedDate;
    self->_feedUpdatedDate = v7;

    objc_msgSend_postNotificationName_(self, v9, @"__kIMHandleFeedUpdatedDateChangedNotification");
  }
}

- (NSString)offlineString
{
  if (objc_msgSend_status(self, a2, v2) != 1 || (objc_msgSend_timeSinceWentOffline(self, v4, v5), v6 < 0.0))
  {
    v7 = 0;
    goto LABEL_23;
  }

  v8 = sub_1A8361964();
  objc_msgSend_timeSinceStatusChanged(self, v9, v10);
  v13 = (v12 / 60.0);
  v14 = (v13 % 60);
  v15 = (v13 / 60 % 24);
  if (v13 < 1440)
  {
    if (v15 == 1)
    {
      if (v14 >= 2)
      {
        v39 = MEMORY[0x1E696AEC0];
        objc_msgSend_localizedStringForKey_value_table_(v8, v11, @"Logged out 1 hour %@ minutes ago", &stru_1F1B76F98, @"IMCoreLocalizable");
        goto LABEL_12;
      }

      objc_msgSend_localizedStringForKey_value_table_(v8, v11, @"Logged out 1 hour 1 minute ago", &stru_1F1B76F98, @"IMCoreLocalizable");
    }

    else
    {
      if (v15)
      {
        v47 = MEMORY[0x1E696AEC0];
        if (v14 == 1)
        {
          v48 = objc_msgSend_localizedStringForKey_value_table_(v8, v11, @"Logged out %@ hours 1 minute ago", &stru_1F1B76F98, @"IMCoreLocalizable");
          v50 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v49, v15);
          v53 = objc_msgSend_localizedString(v50, v51, v52);
          v7 = objc_msgSend_stringWithFormat_(v47, v54, v48, v53);
        }

        else
        {
          v48 = objc_msgSend_localizedStringForKey_value_table_(v8, v11, @"Logged out %@ hours %@ minutes ago", &stru_1F1B76F98, @"IMCoreLocalizable");
          v50 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v55, v15);
          v53 = objc_msgSend_localizedString(v50, v56, v57);
          v59 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v58, v14);
          v62 = objc_msgSend_localizedString(v59, v60, v61);
          v7 = objc_msgSend_stringWithFormat_(v47, v63, v48, v53, v62);
        }

        goto LABEL_22;
      }

      if (v14 >= 2)
      {
        v39 = MEMORY[0x1E696AEC0];
        objc_msgSend_localizedStringForKey_value_table_(v8, v11, @"Logged out %@ minutes ago", &stru_1F1B76F98, @"IMCoreLocalizable");
        v40 = LABEL_12:;
        v42 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v41, v14);
        v45 = objc_msgSend_localizedString(v42, v43, v44);
        v7 = objc_msgSend_stringWithFormat_(v39, v46, v40, v45);

        goto LABEL_22;
      }

      if (v14 == 1)
      {
        objc_msgSend_localizedStringForKey_value_table_(v8, v11, @"Logged out 1 minute ago", &stru_1F1B76F98, @"IMCoreLocalizable");
      }

      else
      {
        objc_msgSend_localizedStringForKey_value_table_(v8, v11, @"Logged out under a minute ago", &stru_1F1B76F98, @"IMCoreLocalizable");
      }
    }
    v7 = ;
    goto LABEL_22;
  }

  v16 = -(v13 / 0x5A0u);
  v17 = objc_alloc_init(MEMORY[0x1E695DF10]);
  objc_msgSend_setDay_(v17, v18, v16);
  objc_msgSend_setHour_(v17, v19, -v15);
  objc_msgSend_setMinute_(v17, v20, -v14);
  v23 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v21, v22);
  v26 = objc_msgSend_date(MEMORY[0x1E695DF00], v24, v25);
  v28 = objc_msgSend_dateByAddingComponents_toDate_options_(v23, v27, v17, v26, 0);

  v29 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setFormatterBehavior_(v29, v30, 1040);
  objc_msgSend_setDateStyle_(v29, v31, 2);
  objc_msgSend_setTimeStyle_(v29, v32, 1);
  v34 = objc_msgSend_stringFromDate_(v29, v33, v28);
  v35 = MEMORY[0x1E696AEC0];
  v37 = objc_msgSend_localizedStringForKey_value_table_(v8, v36, @"Logged out %@", &stru_1F1B76F98, @"IMCoreLocalizable");
  v7 = objc_msgSend_stringWithFormat_(v35, v38, v37, v34);

LABEL_22:
LABEL_23:

  return v7;
}

- (NSString)idleString
{
  v4 = objc_msgSend_status(self, a2, v2);
  objc_msgSend_idleTime(self, v5, v6);
  if (v7 <= 0.0 && v4 != 2)
  {
    v18 = 0;
    goto LABEL_10;
  }

  v9 = v7;
  v10 = sub_1A8361964();
  v12 = objc_msgSend_nameOfStatus_(IMHandle, v11, 2);
  v14 = v12;
  if (v9 > 0.0 && (v15 = (v9 / 60.0), v16 = (v15 % 60), v17 = v15 / 60 % 24, v17 | v16))
  {
    if (v15 >= 1440)
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF10]);
      objc_msgSend_setDay_(v20, v21, (((((1240768329 * v15) >> 32) - v15) >> 10) + ((((1240768329 * v15) >> 32) - v15) >> 31)));
      objc_msgSend_setHour_(v20, v22, -v17);
      objc_msgSend_setMinute_(v20, v23, -v16);
      v26 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v24, v25);
      v29 = objc_msgSend_date(MEMORY[0x1E695DF00], v27, v28);
      v31 = objc_msgSend_dateByAddingComponents_toDate_options_(v26, v30, v20, v29, 0);

      if (v15 >> 5 < 0x13B)
      {
        if (!qword_1EB2EA280)
        {
          v54 = objc_alloc_init(MEMORY[0x1E696AB78]);
          v55 = qword_1EB2EA280;
          qword_1EB2EA280 = v54;

          objc_msgSend_setFormatterBehavior_(qword_1EB2EA280, v56, 1040);
          objc_msgSend_setDateStyle_(qword_1EB2EA280, v57, 0);
          objc_msgSend_setTimeStyle_(qword_1EB2EA280, v58, 1);
        }

        if (!qword_1EB2EA288)
        {
          v59 = objc_alloc_init(MEMORY[0x1E696AB78]);
          v60 = qword_1EB2EA288;
          qword_1EB2EA288 = v59;

          objc_msgSend_setFormatterBehavior_(qword_1EB2EA288, v61, 1040);
          objc_msgSend_setDateStyle_(qword_1EB2EA288, v62, 0);
          objc_msgSend_setTimeStyle_(qword_1EB2EA288, v63, 1);
          objc_msgSend_setDateFormat_(qword_1EB2EA288, v64, @"EEE");
        }

        v65 = objc_msgSend_stringFromDate_(qword_1EB2EA280, v32, v31);
        v67 = objc_msgSend_stringFromDate_(qword_1EB2EA288, v66, v31);
        v40 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v68, @"%@ %@", v67, v65);
      }

      else
      {
        v33 = qword_1EB2EA278;
        if (!qword_1EB2EA278)
        {
          v34 = objc_alloc_init(MEMORY[0x1E696AB78]);
          v35 = qword_1EB2EA278;
          qword_1EB2EA278 = v34;

          objc_msgSend_setFormatterBehavior_(qword_1EB2EA278, v36, 1040);
          objc_msgSend_setDateStyle_(qword_1EB2EA278, v37, 2);
          objc_msgSend_setTimeStyle_(qword_1EB2EA278, v38, 1);
          v33 = qword_1EB2EA278;
        }

        v40 = objc_msgSend_stringFromDate_(v33, v32, v31);
      }

      v69 = MEMORY[0x1E696AEC0];
      v70 = objc_msgSend_localizedStringForKey_value_table_(v10, v39, @"%@ (Since %@)", &stru_1F1B76F98, @"IMCoreLocalizable");
      v18 = objc_msgSend_stringWithFormat_(v69, v71, v70, v14, v40);

      goto LABEL_9;
    }

    v41 = MEMORY[0x1E696AEC0];
    if (v17)
    {
      if (!v16)
      {
        v78 = objc_msgSend_localizedStringForKey_value_table_(v10, v13, @"%@ (%@ h)", &stru_1F1B76F98, @"IMCoreLocalizable");
        v80 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v79, (v15 / 60 % 24));
        v83 = objc_msgSend_localizedString(v80, v81, v82);
        v18 = objc_msgSend_stringWithFormat_(v41, v84, v78, v14, v83);

        goto LABEL_9;
      }

      v42 = objc_msgSend_localizedStringForKey_value_table_(v10, v13, @"%@ (%@ h %@ min)", &stru_1F1B76F98, @"IMCoreLocalizable");
      v44 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v43, (v15 / 60 % 24));
      v47 = objc_msgSend_localizedString(v44, v45, v46);
      v49 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v48, v16);
      v52 = objc_msgSend_localizedString(v49, v50, v51);
      v18 = objc_msgSend_stringWithFormat_(v41, v53, v42, v14, v47, v52);
    }

    else
    {
      v42 = objc_msgSend_localizedStringForKey_value_table_(v10, v13, @"%@ (%@ min)", &stru_1F1B76F98, @"IMCoreLocalizable");
      v73 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v72, (v15 % 60));
      v76 = objc_msgSend_localizedString(v73, v74, v75);
      v18 = objc_msgSend_stringWithFormat_(v41, v77, v42, v14, v76);
    }
  }

  else
  {
    v18 = v12;
  }

LABEL_9:

LABEL_10:

  return v18;
}

- (void)_filterStatusMessage
{
  if (!self->_processedStatusMsg)
  {
    statusMsg = self->_statusMsg;
    if (statusMsg)
    {
      if (objc_msgSend_rangeOfString_(statusMsg, a2, @"%n") == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = objc_msgSend_copy(self->_statusMsg, v4, v5);
        processedStatusMsg = self->_processedStatusMsg;
        self->_processedStatusMsg = v6;
      }

      else
      {
        v8 = objc_alloc(MEMORY[0x1E696AD60]);
        v24 = objc_msgSend_initWithString_(v8, v9, self->_statusMsg);
        v12 = objc_msgSend_me(IMMe, v10, v11);
        v15 = objc_msgSend_fullName(v12, v13, v14);
        v18 = objc_msgSend_length(v24, v16, v17);
        objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v24, v19, @"%n", v15, 2, 0, v18);

        v22 = objc_msgSend_copy(v24, v20, v21);
        v23 = self->_processedStatusMsg;
        self->_processedStatusMsg = v22;
      }

      MEMORY[0x1EEE66BB8](v6);
    }
  }
}

- (NSString)statusMessage
{
  processedStatusMsg = self->_processedStatusMsg;
  if (!processedStatusMsg)
  {
    objc_msgSend__filterStatusMessage(self, a2, v2);
    processedStatusMsg = self->_processedStatusMsg;
  }

  return processedStatusMsg;
}

- (void)setStatus:(unint64_t)a3 message:(id)a4 richMessage:(id)a5
{
  v50 = a4;
  v9 = a5;
  if (v50 && (v9 || (objc_msgSend_isEqualToString_(v50, v8, self->_statusMsg) & 1) == 0))
  {
    objc_storeStrong(&self->_prevStatusMsg, self->_statusMsg);
    v28 = objc_msgSend_copy(v50, v26, v27);
    statusMsg = self->_statusMsg;
    self->_statusMsg = v28;

    processedStatusMsg = self->_processedStatusMsg;
    self->_processedStatusMsg = 0;

    v33 = objc_msgSend_copy(v9, v31, v32);
    richStatusMsg = self->_richStatusMsg;
    self->_richStatusMsg = v33;

    if (a3 == 3)
    {
      v35 = objc_msgSend_trimmedString(self->_statusMsg, v16, v17);
      v38 = objc_msgSend_length(v35, v36, v37);

      if (!v38)
      {
        v22 = sub_1A8361964();
        v25 = objc_msgSend_localizedStringForKey_value_table_(v22, v39, @"Away", &stru_1F1B76F98, @"IMCoreLocalizable");
        v42 = objc_msgSend_copy(v25, v40, v41);
        v43 = self->_statusMsg;
        self->_statusMsg = v42;

        goto LABEL_11;
      }
    }
  }

  else
  {
    if (self->_status == a3)
    {
      goto LABEL_22;
    }

    v10 = self->_processedStatusMsg;
    self->_processedStatusMsg = 0;

    v11 = self->_richStatusMsg;
    self->_richStatusMsg = 0;

    v14 = objc_msgSend_copy(self->_statusMsg, v12, v13);
    prevStatusMsg = self->_prevStatusMsg;
    self->_prevStatusMsg = v14;

    if (a3 == 3)
    {
      v18 = objc_msgSend_trimmedString(self->_statusMsg, v16, v17);
      v21 = objc_msgSend_length(v18, v19, v20);

      if (!v21)
      {
        v22 = sub_1A8361964();
        v24 = objc_msgSend_localizedStringForKey_value_table_(v22, v23, @"Away", &stru_1F1B76F98, @"IMCoreLocalizable");
        v25 = self->_statusMsg;
        self->_statusMsg = v24;
LABEL_11:
      }
    }
  }

  objc_msgSend__clearStatusMessageURLCache(self, v16, v17);
  status = self->_status;
  if (status != a3)
  {
    self->_status = a3;
    self->_prevStatus = status;
  }

  v45 = objc_alloc_init(MEMORY[0x1E695DF00]);
  whenStatusChanged = self->_whenStatusChanged;
  self->_whenStatusChanged = v45;

  if (IMPersonStatusIsOnline(self->_prevStatus) && !IMPersonStatusIsOnline(self->_status))
  {
    v49 = objc_alloc_init(MEMORY[0x1E695DF00]);
    whenWentOffline = self->_whenWentOffline;
    self->_whenWentOffline = v49;
  }

  else
  {
    if (!IMPersonStatusIsOnline(self->_status))
    {
      goto LABEL_21;
    }

    whenWentOffline = self->_whenWentOffline;
    if (!whenWentOffline)
    {
      goto LABEL_21;
    }

    self->_whenWentOffline = 0;
  }

LABEL_21:
  objc_msgSend_postNotificationName_(self, v47, @"__kIMHandleStatusChangedNotification");
LABEL_22:
}

- (double)timeSinceWentOffline
{
  whenWentOffline = self->_whenWentOffline;
  if (!whenWentOffline)
  {
    return -1.0;
  }

  objc_msgSend_timeIntervalSinceNow(whenWentOffline, a2, v2);
  return -v4;
}

- (double)timeSinceStatusChanged
{
  whenStatusChanged = self->_whenStatusChanged;
  if (!whenStatusChanged)
  {
    return 99999.0;
  }

  objc_msgSend_timeIntervalSinceNow(whenStatusChanged, a2, v2);
  return -v4;
}

- (int64_t)offGridMode
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A80A8], a2, v2);
  v6 = objc_msgSend_offGridModeForHandle_(v4, v5, self);

  return v6;
}

- (void)autoInviteToViewOffGridModeIfNeededFromHandleID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_matchesLoginHandleForAnyAccount(self, v5, v6))
  {
    v9 = IMHandleLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Not auto sharing off grid mode with myself";
LABEL_10:
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }
  }

  else if (objc_msgSend_isContact(self, v7, v8))
  {
    v9 = objc_msgSend_normalizedID(self, v11, v12);
    v13 = IMHandleLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Requesting to share personal off grid mode with handle: %@ fromHandle: %@", buf, 0x16u);
    }

    v16 = objc_msgSend_sharedInstance(MEMORY[0x1E69A81A0], v14, v15);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A82F6684;
    v19[3] = &unk_1E7811E58;
    v19[4] = self;
    v20 = v4;
    objc_msgSend_attemptIfNecessaryToAutomaticallyShareOffGridModeWithHandleID_fromHandleID_completion_(v16, v17, v9, v20, v19);
  }

  else
  {
    v9 = IMHandleLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Not auto sharing off grid mode with non contact";
      goto LABEL_10;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (int64_t)availability
{
  v4 = objc_msgSend_sharedInstance(IMHandleAvailabilityManager, a2, v2);
  v6 = objc_msgSend_availabilityForHandle_(v4, v5, self);

  return v6;
}

- (NSDate)availabilityStatusPublishedDate
{
  v4 = objc_msgSend_sharedInstance(IMHandleAvailabilityManager, a2, v2);
  v6 = objc_msgSend_availabilityStatusPublishedDateForHandle_(v4, v5, self);

  return v6;
}

- (id)beginObservingAvailability
{
  v4 = objc_msgSend_sharedInstance(IMHandleStatusManager, a2, v2);
  v6 = objc_msgSend_acquireObservationAssertionForHandle_(v4, v5, self);

  return v6;
}

- (void)isInvitedToViewMyFocusStatusFromHandleID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14 = objc_msgSend_normalizedID(self, v8, v9);
  v12 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F08], v10, v11);
  objc_msgSend_isFocusStatusSharedWithHandleID_fromHandleID_completion_(v12, v13, v14, v7, v6);
}

- (void)autoInviteToViewAvailabilityIfNeededFromHandleID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_matchesLoginHandleForAnyAccount(self, v5, v6))
  {
    v9 = IMHandleLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Not auto sharing availability with myself";
LABEL_10:
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
    }
  }

  else if (objc_msgSend_isContact(self, v7, v8))
  {
    v9 = objc_msgSend_normalizedID(self, v11, v12);
    v13 = IMHandleLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Requesting to share personal availability with handle: %@ fromHandle: %@", buf, 0x16u);
    }

    v16 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F08], v14, v15);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A82F6B38;
    v19[3] = &unk_1E7811E80;
    v19[4] = self;
    v20 = v4;
    objc_msgSend_attemptIfNeccessaryToAutomaticallyShareFocusStatusWithHandleID_fromHandleID_completion_(v16, v17, v9, v20, v19);
  }

  else
  {
    v9 = IMHandleLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Not auto sharing availability with non contact";
      goto LABEL_10;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (int64_t)compareFirstNames:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend__nameForComparisonPreferFirst_(self, v5, 1);
  v8 = objc_msgSend__nameForComparisonPreferFirst_(v4, v7, 1);

  v10 = objc_msgSend_localizedCompareToString_(v6, v9, v8);
  return v10;
}

- (int64_t)compareLastNames:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend__nameForComparisonPreferFirst_(self, v5, 0);
  v8 = objc_msgSend__nameForComparisonPreferFirst_(v4, v7, 0);

  v10 = objc_msgSend_localizedCompareToString_(v6, v9, v8);
  return v10;
}

- (int64_t)compareStatus:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_status(self, v5, v6);
  v10 = objc_msgSend_status(v4, v8, v9);
  v12 = IMComparePersonStatus(v7, v10);
  if (!v12)
  {
    v12 = objc_msgSend_compareIDs_(self, v11, v4);
  }

  return v12;
}

- (int64_t)compareIDs:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_ID(self, v5, v6);
  v10 = objc_msgSend_ID(v4, v8, v9);
  if (objc_msgSend__appearsToBePhoneNumber(v7, v11, v12) && objc_msgSend__appearsToBePhoneNumber(v10, v13, v14))
  {
    v16 = objc_msgSend_service(v4, v13, v15);
    if (objc_msgSend__wantsInternationizedNumbers(v16, v17, v18))
    {
      v21 = objc_msgSend_service(self, v19, v20);
      v24 = objc_msgSend__wantsInternationizedNumbers(v21, v22, v23);

      if (v24)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v26 = objc_msgSend_countryCode(self, v13, v25);
    v27 = IMInternationalForPhoneNumberWithOptions();

    v30 = objc_msgSend_countryCode(self, v28, v29);
    v31 = IMInternationalForPhoneNumberWithOptions();

    v7 = v27;
    v10 = v31;
  }

LABEL_8:
  v32 = objc_msgSend_caseInsensitiveCompare_(v7, v13, v10);

  return v32;
}

- (int64_t)compareNormalizedIDs:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_normalizedID(self, v5, v6);
  v10 = objc_msgSend_normalizedID(v4, v8, v9);

  v12 = objc_msgSend_localizedCaseInsensitiveCompare_(v7, v11, v10);
  return v12;
}

- (int64_t)compareAccountNames:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_account(self, v5, v6);
  v10 = objc_msgSend_accountDescription(v7, v8, v9);
  v13 = objc_msgSend_account(v4, v11, v12);

  v16 = objc_msgSend_accountDescription(v13, v14, v15);
  v18 = objc_msgSend_localizedCompareToString_(v10, v17, v16);

  return v18;
}

- (BOOL)matchesIMHandle:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    v9 = objc_msgSend_account(v4, v5, v6);
    if (v9 == self->_account)
    {
      v17 = 0;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
      v11 = objc_msgSend_cnContactWithKeys_(self, v8, MEMORY[0x1E695E0F0]);
      v13 = objc_msgSend_cnContactWithKeys_(v7, v12, v10);
      isEqualToContact = objc_msgSend__im_isEqualToContact_(v11, v14, v13);

      if (isEqualToContact)
      {
        v17 = 1;
      }

      else
      {
        v20 = objc_msgSend_imHandleForOtherAccount_(self, v16, v9);
        if (v20 == v7)
        {
          v17 = 1;
        }

        else
        {
          v21 = objc_msgSend_account(self, v18, v19);
          v23 = objc_msgSend_imHandleForOtherAccount_(v7, v22, v21);
          v17 = v23 == self;
        }
      }
    }
  }

  return v17;
}

- (BOOL)hasOtherSiblings
{
  v3 = objc_msgSend_siblings(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) > 1;

  return v6;
}

- (NSArray)siblingsArray
{
  v3 = objc_msgSend_siblings(self, a2, v2);
  v6 = objc_msgSend_allObjects(v3, v4, v5);

  return v6;
}

+ (id)filterIMHandlesForAccountSiblings:(id)a3 onAccount:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = v5;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v32, v36, 16);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v33;
      do
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v32 + 1) + 8 * v15);

          v19 = objc_msgSend_service(v13, v17, v18, v32);
          v22 = objc_msgSend_service(v7, v20, v21);

          if (v19 == v22)
          {
            v25 = objc_msgSend_ID(v13, v23, v24);
            v27 = objc_msgSend_imHandleWithID_alreadyCanonical_(v7, v26, v25, 1);

            if (v27 && (objc_msgSend_containsObjectIdenticalTo_(v8, v28, v27) & 1) == 0)
            {
              objc_msgSend_addObject_(v8, v29, v27);
            }
          }

          ++v15;
          v16 = v13;
        }

        while (v12 != v15);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v23, &v32, v36, 16);
      }

      while (v12);
    }
  }

  else
  {
    v8 = objc_msgSend_filterIMHandlesForBestAccountSiblings_(IMHandle, v6, v5);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)filterIMHandlesForBestAccountSiblings:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_bestAccountSibling(*(*(&v18 + 1) + 8 * i), v8, v9, v18);
        if ((objc_msgSend_containsObjectIdenticalTo_(v4, v14, v13) & 1) == 0)
        {
          objc_msgSend_addObject_(v4, v15, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSArray)existingAccountSiblingsArray
{
  v4 = objc_msgSend_sharedInstance(IMHandleRegistrar, a2, v2);
  v6 = objc_msgSend__existingAccountSiblingsForHandle_(v4, v5, self);

  return v6;
}

- (NSArray)accountSiblingsArray
{
  v4 = objc_msgSend_sharedInstance(IMHandleRegistrar, a2, v2);
  v6 = objc_msgSend__accountSiblingsForHandle_(v4, v5, self);

  return v6;
}

- (id)chatSiblingsArray
{
  v4 = objc_msgSend_sharedInstance(IMHandleRegistrar, a2, v2);
  v6 = objc_msgSend__chatSiblingsForHandle_(v4, v5, self);

  return v6;
}

- (NSSet)siblings
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = objc_msgSend_sharedInstance(IMHandleRegistrar, v4, v5);
  v8 = objc_msgSend_siblingsForIMHandle_(v6, v7, self);

  if (objc_msgSend_count(v8, v9, v10))
  {
    objc_msgSend_unionSet_(v3, v11, v8);
  }

  v13 = objc_msgSend_accountSiblingsArray(self, v11, v12);
  if (objc_msgSend_count(v13, v14, v15))
  {
    objc_msgSend_addObjectsFromArray_(v3, v16, v13);
  }

  v18 = objc_msgSend_chatSiblingsArray(self, v16, v17);
  if (objc_msgSend_count(v18, v19, v20))
  {
    objc_msgSend_addObjectsFromArray_(v3, v21, v18);
  }

  return v3;
}

- (BOOL)isAccountSiblingOf:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_accountSiblingsArray(self, v5, v6);
  v9 = objc_msgSend_containsObjectIdenticalTo_(v7, v8, v4);

  return v9;
}

- (BOOL)isSiblingOf:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v12 = 1;
  }

  else
  {
    v7 = objc_msgSend_siblings(self, v4, v5);
    if (objc_msgSend_count(v7, v8, v9) == 1)
    {
      v12 = 0;
    }

    else
    {
      v13 = objc_msgSend_service(v6, v10, v11);
      v16 = objc_msgSend_service(self, v14, v15);

      if (v13 == v16 && (objc_msgSend_ID(v6, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend_ID(self, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v19, v23, v22), v22, v19, (isEqualToString & 1) != 0))
      {
        v12 = 1;
      }

      else
      {
        v25 = objc_msgSend_member_(v7, v17, v6);
        v12 = v25 != 0;
      }
    }
  }

  return v12;
}

- (BOOL)_isChatSiblingOf:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_ID(v4, v5, v6);
  v10 = objc_msgSend_ID(self, v8, v9);
  if (objc_msgSend_isEqualToString_(v7, v11, v10))
  {
    isEqualToString = 1;
  }

  else
  {
    v15 = objc_msgSend__contactID(v4, v12, v13);
    v18 = objc_msgSend__contactID(self, v16, v17);
    isEqualToString = objc_msgSend_isEqualToString_(v15, v19, v18);
  }

  return isEqualToString;
}

- (id)_contactID
{
  v2 = objc_msgSend_cnContactWithKeys_(self, a2, MEMORY[0x1E695E0F0]);
  v5 = objc_msgSend_identifier(v2, v3, v4);

  return v5;
}

- (id)_chatSiblings
{
  v3 = objc_msgSend_chatSiblingsArray(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v7 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v6, v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_bestChatSibling
{
  v3 = objc_msgSend__chatSiblingsArray(self, a2, v2);
  v5 = objc_msgSend_bestIMHandleInArray_(IMHandle, v4, v3);

  return v5;
}

- (unint64_t)capabilities
{
  v4 = objc_msgSend_loginIMHandle(self->_account, a2, v2);
  objc_msgSend_isConnected(self->_account, v5, v6);
  capabilities = self->_capabilities;
  objc_msgSend_defaultHandleCapabilities(self->_account, v8, v9);

  return capabilities;
}

- (void)setCapabilities:(unint64_t)a3
{
  capabilities = self->_capabilities;
  if (objc_msgSend__setCapabilities_(self, a2, a3))
  {
    v6 = MEMORY[0x1E695DF20];
    v10 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v5, capabilities);
    v8 = objc_msgSend_dictionaryWithObject_forKey_(v6, v7, v10, @"__kIMHandleCapabilitiesUserInfoOldCapsKey");
    objc_msgSend__postNotificationName_userInfo_(self, v9, @"__kIMHandleCapabilitiesChangedNotification", v8);
  }
}

- (BOOL)_setCapabilities:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  capabilities = self->_capabilities;
  if (capabilities != a3)
  {
    self->_capabilities = a3;
    v6 = IMHandleLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_capabilities;
      v8 = _IMStringFromFZCapabilities();
      v11 = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEFAULT, "%@ capabilities changed: %@", &v11, 0x16u);
    }
  }

  result = capabilities != a3;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)hasCapability:(unint64_t)a3
{
  v5 = objc_msgSend_ID(self, a2, a3);
  v8 = objc_msgSend__appearsToBePhoneNumber(v5, v6, v7);

  if (!v8)
  {
    return (a3 & ~objc_msgSend_capabilities(self, v9, v10)) == 0;
  }

  result = 0;
  if (a3 != 0x100000 && a3 != 0x400000)
  {
    return (a3 & ~objc_msgSend_capabilities(self, v9, v10)) == 0;
  }

  return result;
}

- (BOOL)hasMultiwayVideo
{
  hasVideo = objc_msgSend_hasVideo(self, a2, v2);
  if (hasVideo)
  {

    LOBYTE(hasVideo) = objc_msgSend_hasCapability_(self, v5, 0x1000000);
  }

  return hasVideo;
}

- (BOOL)hasAudio
{
  v4 = objc_msgSend_ID(self, a2, v2);
  v7 = objc_msgSend__appearsToBePhoneNumber(v4, v5, v6);

  if (v7)
  {
    return 0;
  }

  if (objc_msgSend_hasCapability_(self, v8, 655360))
  {
    return 1;
  }

  return objc_msgSend_hasCapability_(self, v10, 0x400000);
}

- (BOOL)hasMultiwayAudio
{
  hasAudio = objc_msgSend_hasAudio(self, a2, v2);
  if (hasAudio)
  {

    LOBYTE(hasAudio) = objc_msgSend_hasCapability_(self, v5, 0x800000);
  }

  return hasAudio;
}

- (void)setCustomPictureData:(id)a3
{
  v5 = a3;
  pictureData = self->_pictureData;
  v9 = v5;
  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    objc_storeStrong(&self->_pictureData, a3);
    objc_msgSend_customPictureDataChanged_key_(self, v7, v9, 0);
    objc_msgSend_postNotificationName_(self, v8, @"__kIMHandlePictureChangedNotification");
  }
}

- (void)setCustomPictureData:(id)a3 key:(id)a4
{
  v11 = a3;
  v7 = a4;
  pictureData = self->_pictureData;
  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    objc_storeStrong(&self->_pictureData, a3);
    objc_msgSend_postNotificationName_(self, v9, @"__kIMHandlePictureChangedNotification");
    objc_msgSend_customPictureDataChanged_key_(self, v10, v11, v7);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E695DEC8];
  v4 = objc_opt_class();
  v7 = NSStringFromClass(v4);
  id = self->_id;
  v9 = @"<None>";
  if (self->_uncanonicalID)
  {
    uncanonicalID = self->_uncanonicalID;
  }

  else
  {
    uncanonicalID = @"<None>";
  }

  v13 = objc_msgSend_countryCode(self, v5, v6);
  if (v13)
  {
    v9 = objc_msgSend_countryCode(self, v11, v12);
  }

  cnContact = self->_cnContact;
  if (cnContact)
  {
    v15 = objc_msgSend_descriptionForCNContact_(MEMORY[0x1E69A7FD0], v11, self->_cnContact);
  }

  else
  {
    v15 = @"<No CNStore Match>";
  }

  v16 = objc_msgSend_accountDescription(self->_account, v11, v12);
  v18 = objc_msgSend_arrayWithObjects_(v3, v17, @"[", v7, @": <", id, @":", uncanonicalID, @":", v9, @"> (CNContact: "), v15, CFSTR(") (Account: "), v16, CFSTR("]"), 0;
  v19 = IMCreateSimpleComponentString();

  if (cnContact)
  {
  }

  if (v13)
  {
  }

  return v19;
}

- (DNDContactHandle)dndContactHandle
{
  dndContactHandle = self->_dndContactHandle;
  if (!dndContactHandle)
  {
    v5 = objc_msgSend_ID(self, a2, v2);
    if (objc_msgSend__appearsToBeEmail(v5, v6, v7))
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = objc_alloc_init(MEMORY[0x1AC56C550](@"DNDMutableContactHandle", @"DoNotDisturb"));
    objc_msgSend_setValue_(v9, v10, v5);
    objc_msgSend_setType_(v9, v11, v8);
    v14 = objc_msgSend_copy(v9, v12, v13);
    v15 = self->_dndContactHandle;
    self->_dndContactHandle = v14;

    dndContactHandle = self->_dndContactHandle;
  }

  return dndContactHandle;
}

- (void)fetchBrandInfoIfNecessaryWithSimID:(id)a3
{
  v13 = a3;
  v6 = objc_msgSend_brand(self, v4, v5);

  if (!v6)
  {
    if (objc_msgSend_isMapKitBusiness(self, v13, v8))
    {
      BrandInfoForBusiness_simID = objc_msgSend__fetchBrandInfoForBusiness_simID_(self, v9, 1, v13);
    }

    else if (objc_msgSend_isStewieRoadside(self, v9, v10))
    {
      BrandInfoForBusiness_simID = objc_msgSend__fetchBrandInfoForRoadside(self, v11, v12);
    }

    else
    {
      BrandInfoForBusiness_simID = objc_msgSend_looksLikeChatBot(self, v11, v12);
      if (BrandInfoForBusiness_simID)
      {
        BrandInfoForBusiness_simID = objc_msgSend__fetchBrandInfoForBusiness_simID_(self, v13, 2, v13);
      }
    }
  }

  MEMORY[0x1EEE66BB8](BrandInfoForBusiness_simID);
}

- (void)forceFetchChatBotBrandInfoWithSimID:(id)a3
{
  v7 = a3;
  if (objc_msgSend_looksLikeChatBot(self, v4, v5))
  {
    objc_msgSend__fetchBrandInfoForBusiness_simID_(self, v6, 2, v7);
  }
}

- (void)_fetchBrandInfoForBrandWithURI:(id)a3 forType:(unint64_t)a4 simID:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if ((IMIsRunningInMessagesComposeViewService() & 1) == 0)
  {
    if (v9)
    {
      isEqualToString = objc_msgSend_isEqualToString_(self->_brandURI, v11, v9);
      if (a4 == 2 || (isEqualToString & 1) == 0)
      {
        objc_storeStrong(&self->_brandURI, a3);
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v25 = v9;
            v26 = 2112;
            v27 = v10;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEBUG, "Fetching business info for business with brandURI: %@, simID: %@", buf, 0x16u);
          }
        }

        objc_initWeak(buf, self);
        v16 = objc_msgSend_brandManager(self, v14, v15);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = sub_1A82F85B8;
        v20[3] = &unk_1E7811EA8;
        objc_copyWeak(&v23, buf);
        v21 = v9;
        v22 = v10;
        objc_msgSend_brandWithURI_usingSim_forType_completion_(v16, v17, v21, v22, a4, v20);

        objc_destroyWeak(&v23);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E0264(v18);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_fetchBrandInfoForBusiness:(unint64_t)a3 simID:(id)a4
{
  v6 = a4;
  v10 = objc_msgSend_ID(self, v7, v8);
  objc_msgSend__fetchBrandInfoForBrandWithURI_forType_simID_(self, v9, v10, a3, v6);
}

- (void)_fetchBrandInfoForRoadside
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A82F8868;
  v2[3] = &unk_1E780FDC8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)_fetchedBrand:(id)a3 withBrandURI:(id)a4 simID:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v11 = a5;
  if (v8)
  {
    if (objc_msgSend_isEqualToString_(self->_brandURI, v10, v9))
    {
      objc_msgSend_setBrand_(self, v12, v8);
      objc_msgSend__postOnScreenChangedNotificationForBrandProperty_(self, v13, *MEMORY[0x1E69A6840]);
      if ((IMIsRunningInMessagesAssistantExtension() & 1) == 0)
      {
        v14 = objc_initWeak(&location, self);
        isChatBot = objc_msgSend_isChatBot(self, v15, v16);

        if (isChatBot)
        {
          v18 = IMHandleLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v39 = v9;
            v40 = 2112;
            v41 = v11;
            _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Fetching logo image data for brandURI: %@, simID: %@", buf, 0x16u);
          }

          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = sub_1A82F8CF4;
          v34[3] = &unk_1E7811EF8;
          v19 = &v36;
          objc_copyWeak(&v36, &location);
          v35 = v9;
          objc_msgSend_logoDataOfType_desiredSize_usingSim_completion_(v8, v20, 2, v11, v34, 172.0, 172.0);
          v21 = &v35;
        }

        else
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = sub_1A82F9030;
          v31[3] = &unk_1E7811EF8;
          v19 = &v33;
          objc_copyWeak(&v33, &location);
          v24 = v9;
          v32 = v24;
          objc_msgSend_squareLogoDataForDesiredSize_completion_(v8, v25, v31, 172.0, 172.0);
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = sub_1A82F9284;
          v28[3] = &unk_1E7811EF8;
          objc_copyWeak(&v30, &location);
          v29 = v24;
          objc_msgSend_wideLogoDataForDesiredSize_completion_(v8, v26, v28, 540.0, 81.0);

          objc_destroyWeak(&v30);
          v21 = &v32;
        }

        objc_destroyWeak(v19);
        objc_destroyWeak(&location);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        brandURI = self->_brandURI;
        *buf = 138412546;
        v39 = v9;
        v40 = 2112;
        v41 = brandURI;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Ignoring fetched brand for brandURI: %@, as it doesn't match current brandURI: %@", buf, 0x16u);
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_fetchBrandLogoFromChatRegistryFor:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_sharedRegistry(IMChatRegistry, v5, v6);
  v10 = objc_msgSend___im_stripSip(v4, v8, v9);
  v12 = objc_msgSend_brandLogoDataFromChatIdentifier_(v7, v11, v10);

  v13 = IMOSLoggingEnabled();
  if (v12)
  {
    if (v13)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v29 = 134218242;
        v30 = objc_msgSend_length(v12, v16, v17);
        v31 = 2112;
        v32 = v4;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEBUG, "ChatBot Logo - Use cached logo %lu for %@", &v29, 0x16u);
      }
    }

    objc_msgSend_setBrandSquareLogoImageData_(self, v14, v12);
    objc_msgSend__postOnScreenChangedNotificationForBrandProperty_(self, v18, *MEMORY[0x1E69A6848]);
  }

  else if (v13)
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v22 = objc_msgSend_sharedRegistry(IMChatRegistry, v20, v21);
      v25 = objc_msgSend___im_stripSip(v4, v23, v24);
      v27 = objc_msgSend_brandLogoUrlFromChatIdentifier_(v22, v26, v25);
      v29 = 138412546;
      v30 = v4;
      v31 = 2112;
      v32 = v27;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEBUG, "ChatBot Logo - Cached logo does not exist for %@, its url is %@", &v29, 0x16u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_postOnScreenChangedNotificationForBrandProperty:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21[0] = *MEMORY[0x1E69A6868];
  v4 = a3;
  v7 = objc_msgSend_ID(self, v5, v6);
  v9 = v7;
  v10 = &stru_1F1B76F98;
  if (v7)
  {
    v10 = v7;
  }

  v21[1] = *MEMORY[0x1E69A6858];
  v22[0] = v10;
  v22[1] = v4;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v22, v21, 2);

  v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v14, v15, *MEMORY[0x1E69A6870], self, v11);

  v18 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v16, v17);

  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v18, v19, *MEMORY[0x1E69A6838], self, v11);
  v20 = *MEMORY[0x1E69E9840];
}

- (void)releaseNotificationQueue
{
  v23 = *MEMORY[0x1E69E9840];
  notificationQueueCount = self->_notificationQueueCount;
  if (notificationQueueCount <= 0)
  {
    sub_1A84E02A8(a2, self, &self->_notificationQueueCount, &v21);
    notificationQueueCount = v21;
  }

  self->_notificationQueueCount = notificationQueueCount - 1;
  if ((objc_msgSend_shouldQueueNotifications(self, a2, v2) & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = objc_msgSend_copy(self->_notificationQueue, v5, v6, 0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v22, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v7);
          }

          objc_msgSend__postNotification_(self, v10, *(*(&v17 + 1) + 8 * i));
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v22, 16);
      }

      while (v11);
    }

    notificationNameQueue = self->_notificationNameQueue;
    self->_notificationNameQueue = 0;

    notificationQueue = self->_notificationQueue;
    self->_notificationQueue = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)publicAPIPropertiesDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_msgSend_service(self, v4, v5);
  v9 = objc_msgSend_internalName(v6, v7, v8);

  if (objc_msgSend_isEqualToString_(v9, v10, @"SubNet"))
  {
    v13 = @"Bonjour";

    v9 = v13;
  }

  if (v9)
  {
    objc_msgSend_setObject_forKey_(v3, v11, v9, @"__kIMPersonServiceNameKey");
  }

  v14 = objc_msgSend_ID(self, v11, v12);

  if (v14)
  {
    v17 = objc_msgSend_ID(self, v15, v16);
    objc_msgSend_setObject_forKey_(v3, v18, v17, @"__kIMPersonScreenNameKey");
  }

  isBuddy = objc_msgSend_isBuddy(self, v15, v16);
  v22 = MEMORY[0x1E696AD98];
  if (isBuddy)
  {
    v23 = objc_msgSend_status(self, v20, v21);
    v25 = objc_msgSend_numberWithInteger_(v22, v24, v23);
    objc_msgSend_setObject_forKey_(v3, v26, v25, @"__kIMPersonStatusKey");

    v29 = objc_msgSend_statusMessage(self, v27, v28);

    if (v29)
    {
      v32 = objc_msgSend_statusMessage(self, v30, v31);
      objc_msgSend_setObject_forKey_(v3, v33, v32, @"__kIMPersonStatusMessageKey");
    }

    idleSince = self->_idleSince;
    if (idleSince)
    {
      objc_msgSend_setObject_forKey_(v3, v30, idleSince, @"__kIMPersonIdleSinceKey");
    }

    v35 = objc_msgSend_firstName(self, v30, idleSince);
    if (objc_msgSend_length(v35, v36, v37))
    {
      objc_msgSend_setObject_forKey_(v3, v38, v35, @"__kIMPersonFirstNameKey");
    }

    v40 = objc_msgSend_lastName(self, v38, v39);
    if (objc_msgSend_length(v40, v41, v42))
    {
      objc_msgSend_setObject_forKey_(v3, v43, v40, @"__kIMPersonLastNameKey");
    }

    v45 = objc_msgSend_email(self, v43, v44);

    if (v45)
    {
      v48 = objc_msgSend_email(self, v46, v47);
      objc_msgSend_setObject_forKey_(v3, v49, v48, @"__kIMPersonEmailKey");
    }

    v50 = objc_msgSend_pictureData(self, v46, v47);

    if (v50)
    {
      v53 = objc_msgSend_pictureData(self, v51, v52);
      objc_msgSend_setObject_forKey_(v3, v54, v53, @"__kIMPersonPictureDataKey");
    }

    v55 = MEMORY[0x1E696AD98];
    hasCapability = objc_msgSend_hasCapability_(self, v51, 0x100000);
    v58 = objc_msgSend_numberWithBool_(v55, v57, hasCapability ^ 1u);
    objc_msgSend_setObject_forKey_(v3, v59, v58, @"__kIMPersonAVBusyKey");

    v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (objc_msgSend_hasCapability_(self, v61, 1024))
    {
      objc_msgSend_addObject_(v60, v62, @"__kIMCapabilityText");
    }

    if (objc_msgSend_hasCapability_(self, v62, 32))
    {
      objc_msgSend_addObject_(v60, v63, @"__kIMCapabilityFileTransfer");
    }

    if ((objc_msgSend_hasCapability_(self, v63, 655360) & 1) != 0 || objc_msgSend_hasCapability_(self, v64, 4718592))
    {
      objc_msgSend_addObject_(v60, v64, @"__kIMCapabilityAudioConference");
    }

    if ((objc_msgSend_hasCapability_(self, v64, 393216) & 1) != 0 || objc_msgSend_hasCapability_(self, v65, 2359296))
    {
      objc_msgSend_addObject_(v60, v65, @"__kIMCapabilityVideoConference");
    }

    v67 = objc_msgSend_sharedController(IMDaemonController, v65, v66);
    v70 = objc_msgSend_listener(v67, v68, v69);
    v73 = objc_msgSend_vcCapabilities(v70, v71, v72);

    if ((~v73 & 0xA0000) != 0 || (objc_msgSend_containsObject_(v60, v74, @"__kIMCapabilityAudioConference") & 1) == 0)
    {
      objc_msgSend_removeObject_(v60, v74, @"__kIMCapabilityAudioConference");
    }

    if ((v73 & 0x40000) == 0 || (*&v73 & 0x220000) == 0 || (objc_msgSend_containsObject_(v60, v74, @"__kIMCapabilityVideoConference") & 1) == 0)
    {
      objc_msgSend_removeObject_(v60, v74, @"__kIMCapabilityVideoConference");
    }

    objc_msgSend_setObject_forKey_(v3, v74, v60, @"__kIMPersonCapabilitiesKey");
    objc_msgSend_setObject_forKey_(v3, v75, v60, @"__kIMPersonAllowedCapabilitiesKey");
  }

  else
  {
    v35 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v20, 1);
    objc_msgSend_setObject_forKey_(v3, v76, v35, @"__kIMPersonStatusKey");
  }

  return v3;
}

+ (void)handlesForContacts:(id)a3 useBestHandle:(BOOL)a4 useExtendedAsyncLookup:(BOOL)a5 completion:(id)a6
{
  HIDWORD(v191) = a5;
  v7 = a4;
  v239 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v192 = a6;
  v11 = objc_msgSend_count(v8, v9, v10);
  v12 = IMHandleLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Received empty array of contacts", buf, 2u);
    }

    v132 = v192;
    (*(v192 + 2))(v192, 0, 0, 0);
    goto LABEL_80;
  }

  if (v13)
  {
    *buf = 138412802;
    *&buf[4] = v8;
    *&buf[12] = 1024;
    *&buf[14] = v7;
    *&buf[18] = 1024;
    *&buf[20] = HIDWORD(v191);
    _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempting to identify best handles for contacts: %@ with conditions [useBestHandle:%{BOOL}d, useExtendedAsyncLookup:%{BOOL}d]", buf, 0x18u);
  }

  LODWORD(v191) = v7;

  v16 = objc_msgSend_sharedRegistry(IMChatRegistry, v14, v15);
  v19 = objc_msgSend_cachedChats(v16, v17, v18);
  v21 = objc_msgSend___imArrayByFilteringWithBlock_(v19, v20, &unk_1F1B6F080);

  v23 = objc_msgSend_sortedArrayUsingComparator_(v21, v22, &unk_1F1B6F0A0);

  v195 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v24, v25);
  v194 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v26, v27);
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v28 = v23;
  v193 = v28;
  v198 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v225, v235, 16);
  if (v198)
  {
    v197 = *v226;
    v199 = v8;
    while (2)
    {
      for (i = 0; i != v198; ++i)
      {
        if (*v226 != v197)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v225 + 1) + 8 * i);
        v34 = objc_msgSend_contacts(v33, v30, v31, v191);
        if (objc_msgSend_intersectsSet_(v8, v35, v34))
        {
          v196 = i;
          if (objc_msgSend_isEqualToSet_(v8, v36, v34))
          {
            v39 = objc_msgSend_count(v34, v37, v38);
            v42 = objc_msgSend_participants(v33, v40, v41);
            v45 = objc_msgSend_count(v42, v43, v44);

            if (v39 == v45)
            {
              v133 = sub_1A835FAD4(v8, v33);
              v134 = IMHandleLogHandle();
              if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
              {
                v137 = objc_msgSend_account(v33, v135, v136);
                *buf = 138412802;
                *&buf[4] = v133;
                *&buf[12] = 2112;
                *&buf[14] = v137;
                *&buf[22] = 2112;
                v237 = v33;
                _os_log_impl(&dword_1A823F000, v134, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 1: Found handles: %@, account: %@, for union match chat: %@", buf, 0x20u);
              }

              v140 = objc_msgSend_account(v33, v138, v139);
              (*(v192 + 2))(v192, v133, v140, v33);

              v142 = v193;
              v141 = v194;
              v103 = v193;
              goto LABEL_79;
            }
          }

          v46 = objc_msgSend_chatIdentifier(v33, v37, v38);
          objc_msgSend_setObject_forKeyedSubscript_(v195, v47, v34, v46);

          v204 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v48, v49);
          v221 = 0u;
          v222 = 0u;
          v223 = 0u;
          v224 = 0u;
          obj = v34;
          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v221, v234, 16);
          if (v51)
          {
            v53 = v51;
            v54 = *v222;
            v201 = v33;
            v202 = v34;
            v200 = *v222;
            do
            {
              v55 = 0;
              v203 = v53;
              do
              {
                if (*v222 != v54)
                {
                  objc_enumerationMutation(obj);
                }

                v56 = *(*(&v221 + 1) + 8 * v55);
                if (objc_msgSend_containsObject_(v8, v52, v56))
                {
                  v208 = v56;
                  v57 = v33;
                  v60 = objc_msgSend_account(v57, v58, v59);
                  v229 = 0u;
                  v230 = 0u;
                  v231 = 0u;
                  v232 = 0u;
                  v207 = v57;
                  v63 = objc_msgSend_participants(v57, v61, v62);
                  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v229, buf, 16);
                  if (v65)
                  {
                    v68 = v65;
                    v206 = v55;
                    v69 = *v230;
                    while (2)
                    {
                      for (j = 0; j != v68; ++j)
                      {
                        if (*v230 != v69)
                        {
                          objc_enumerationMutation(v63);
                        }

                        v71 = objc_msgSend_ID(*(*(&v229 + 1) + 8 * j), v66, v67);
                        v73 = objc_msgSend_imHandleWithID_(v60, v72, v71);

                        v75 = objc_msgSend_cnContactWithKeys_(v73, v74, MEMORY[0x1E695E0F0]);
                        v78 = v75;
                        if (v75)
                        {
                          v79 = objc_msgSend_identifier(v75, v76, v77);
                          v82 = objc_msgSend_identifier(v208, v80, v81);
                          isEqualToString = objc_msgSend_isEqualToString_(v79, v83, v82);

                          if (isEqualToString)
                          {

                            goto LABEL_29;
                          }
                        }
                      }

                      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v66, &v229, buf, 16);
                      if (v68)
                      {
                        continue;
                      }

                      break;
                    }

                    v73 = 0;
LABEL_29:
                    v8 = v199;
                    v54 = v200;
                    v33 = v201;
                    v34 = v202;
                    v53 = v203;
                    v55 = v206;
                  }

                  else
                  {
                    v73 = 0;
                  }

                  v87 = objc_msgSend_identifier(v208, v85, v86);
                  objc_msgSend_setObject_forKeyedSubscript_(v204, v88, v73, v87);
                }

                ++v55;
              }

              while (v55 != v53);
              v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v221, v234, 16);
            }

            while (v53);
          }

          v91 = objc_msgSend_account(v33, v89, v90);
          v94 = objc_msgSend_uniqueID(v91, v92, v93);

          v96 = objc_msgSend_objectForKeyedSubscript_(v194, v95, v94);

          if (!v96)
          {
            v99 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v97, v98);
            objc_msgSend_setObject_forKeyedSubscript_(v194, v100, v99, v94);
          }

          v101 = objc_msgSend_objectForKeyedSubscript_(v194, v97, v94);
          objc_msgSend_addEntriesFromDictionary_(v101, v102, v204);

          v28 = v193;
          i = v196;
        }
      }

      v198 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v225, v235, 16);
      if (v198)
      {
        continue;
      }

      break;
    }
  }

  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v103 = v28;
  v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v104, &v217, v233, 16);
  if (v105)
  {
    v108 = v105;
    v109 = *v218;
    while (2)
    {
      for (k = 0; k != v108; ++k)
      {
        if (*v218 != v109)
        {
          objc_enumerationMutation(v103);
        }

        v111 = *(*(&v217 + 1) + 8 * k);
        v112 = objc_msgSend_chatIdentifier(v111, v106, v107, v191);
        v114 = objc_msgSend_objectForKeyedSubscript_(v195, v113, v112);

        if (v114 && objc_msgSend_isSubsetOfSet_(v8, v115, v114))
        {
          v143 = sub_1A835FAD4(v8, v111);
          v144 = IMHandleLogHandle();
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            v147 = objc_msgSend_account(v111, v145, v146);
            *buf = 138412802;
            *&buf[4] = v143;
            *&buf[12] = 2112;
            *&buf[14] = v147;
            *&buf[22] = 2112;
            v237 = v111;
            _os_log_impl(&dword_1A823F000, v144, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 2: Found handles: %@, account: %@, for subset match chat: %@", buf, 0x20u);
          }

          v150 = objc_msgSend_account(v111, v148, v149);
          (*(v192 + 2))(v192, v143, v150, 0);

          goto LABEL_78;
        }
      }

      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v106, &v217, v233, 16);
      if (v108)
      {
        continue;
      }

      break;
    }
  }

  v215[0] = MEMORY[0x1E69E9820];
  v215[1] = 3221225472;
  v215[2] = sub_1A835FCC4;
  v215[3] = &unk_1E78135E8;
  v116 = v8;
  v216 = v116;
  v118 = objc_msgSend_keysOfEntriesPassingTest_(v194, v117, v215);
  if (objc_msgSend_count(v118, v119, v120) != 1)
  {
    if (objc_msgSend_count(v118, v121, v122) < 2)
    {
      goto LABEL_72;
    }

    v151 = v118;
    v154 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v152, v153);
    if (objc_msgSend_iMessageEnabledForSenderLastAddressedHandle_simID_(IMServiceImpl, v155, 0, 0))
    {
      v158 = objc_msgSend_iMessageService(IMService, v156, v157);
      v159 = &unk_1F1BA1860;
      objc_msgSend_name(v158, v160, v161, v191);
    }

    else
    {
      if (!objc_msgSend_smsEnabled(IMServiceImpl, v156, v157))
      {
LABEL_67:
        v168 = objc_msgSend_allObjects(v151, v162, v163, v191);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1A8360BC0;
        v237 = &unk_1E78104A0;
        v238 = v154;
        v169 = v154;
        v171 = objc_msgSend_sortedArrayUsingComparator_(v168, v170, buf);
        v173 = objc_msgSend_objectAtIndexedSubscript_(v171, v172, 0);

        if (objc_msgSend_length(v173, v174, v175))
        {
          v177 = objc_msgSend_objectForKeyedSubscript_(v194, v176, v173);
          v178 = IMHandleLogHandle();
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v173;
            *&buf[12] = 2112;
            *&buf[14] = v177;
            _os_log_impl(&dword_1A823F000, v178, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 3: Selected best account: %@ that messaged all handles: %@", buf, 0x16u);
          }

          v181 = objc_msgSend_sharedInstance(IMAccountController, v179, v180);
          v183 = objc_msgSend_accountForUniqueID_(v181, v182, v173);
          (*(v192 + 2))(v192, v177, v183, 0);

          goto LABEL_77;
        }

LABEL_72:
        if (HIDWORD(v191))
        {
          v184 = sub_1A835FD00(v116);
          v185 = sub_1A835FEBC(v116);
          v186 = *MEMORY[0x1E69A4818];
          v209[0] = MEMORY[0x1E69E9820];
          v209[1] = 3221225472;
          v209[2] = sub_1A8360128;
          v209[3] = &unk_1E7813638;
          v214 = v191;
          v210 = v185;
          v211 = v116;
          v212 = v184;
          v213 = v192;
          v187 = v184;
          v188 = v185;
          sub_1A8360070(v187, v186, v209);
        }

        else
        {
          v189 = IMHandleLogHandle();
          if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v189, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Failed to find handles for contacts", buf, 2u);
          }

          (*(v192 + 2))(v192, 0, 0, 0);
        }

        goto LABEL_77;
      }

      v158 = objc_msgSend_smsService(IMService, v162, v163);
      v159 = &unk_1F1BA1878;
      objc_msgSend_name(v158, v164, v165, v191);
    }
    v166 = ;
    objc_msgSend_setObject_forKeyedSubscript_(v154, v167, v159, v166);

    goto LABEL_67;
  }

  v123 = objc_msgSend_anyObject(v118, v121, v122);
  v125 = objc_msgSend_objectForKeyedSubscript_(v194, v124, v123);
  v126 = IMHandleLogHandle();
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v125;
    *&buf[12] = 2112;
    *&buf[14] = v123;
    _os_log_impl(&dword_1A823F000, v126, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 3: Found handles: %@ for account: %@ that contacted all recipients", buf, 0x16u);
  }

  v129 = objc_msgSend_sharedInstance(IMAccountController, v127, v128);
  v131 = objc_msgSend_accountForUniqueID_(v129, v130, v123);
  (*(v192 + 2))(v192, v125, v131, 0);

LABEL_77:
  v103 = v216;
LABEL_78:
  v142 = v193;
  v141 = v194;
LABEL_79:

  v132 = v192;
LABEL_80:

  v190 = *MEMORY[0x1E69E9840];
}

- (id)fmfHandle
{
  v3 = MEMORY[0x1AC56C550](@"FMFHandle", @"FMF");
  if (v3)
  {
    v6 = v3;
    v7 = objc_msgSend_ID(self, v4, v5);
    v9 = objc_msgSend_handleWithId_(v6, v8, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)findMyHandle
{
  v3 = objc_msgSend_ID(self, a2, v2);
  v5 = objc_msgSend_handleWithIdentifier_(IMFindMyHandle, v4, v3);

  return v5;
}

- (id)findMySiblingHandles
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, v2);
  v8 = objc_msgSend_cnContactWithKeys_(self, v5, MEMORY[0x1E695E0F0]);
  if (v8)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v9 = objc_msgSend_phoneNumbersForCNContact_(MEMORY[0x1E69A7FD0], v6, v8);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v46, v51, 16);
    if (v11)
    {
      v12 = v11;
      v13 = *v47;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v47 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v46 + 1) + 8 * i);
          v16 = IMInternationalForPhoneNumberWithOptions();
          v18 = objc_msgSend_handleWithIdentifier_(IMFindMyHandle, v17, v16);
          objc_msgSend_addObject_(v4, v19, v18);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v20, &v46, v51, 16);
      }

      while (v12);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v22 = objc_msgSend_emailsForCNContact_(MEMORY[0x1E69A7FD0], v21, v8, 0);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v42, v50, 16);
    if (v24)
    {
      v27 = v24;
      v28 = *v43;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = objc_msgSend_lowercaseString(*(*(&v42 + 1) + 8 * j), v25, v26);
          v32 = objc_msgSend_handleWithIdentifier_(IMFindMyHandle, v31, v30);
          objc_msgSend_addObject_(v4, v33, v32);
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v42, v50, 16);
      }

      while (v27);
    }
  }

  else
  {
    v35 = objc_msgSend_ID(self, v6, v7);
    v37 = objc_msgSend_handleWithIdentifier_(IMFindMyHandle, v36, v35);

    objc_msgSend_addObject_(v4, v38, v37);
  }

  v39 = objc_msgSend_setWithSet_(MEMORY[0x1E695DFD8], v34, v4);

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (void)resetCachedName
{
  v2 = self;
  [(IMHandle *)v2 setCachedName:0];
  [(IMHandle *)v2 setCachedDisplayNameWithAbbreviation:0];
}

@end