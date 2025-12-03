@interface IMContactStore
+ (BOOL)_shouldAllowContactStoreLookup;
+ (BOOL)isCNContactAKnownContact:(id)contact;
+ (BOOL)shouldShowAbbreviatedNames;
+ (BOOL)shouldShowNickNames;
+ (Class)IMCNChangeHistoryFetchRequestClass;
+ (Class)IMCNContactFetchRequestClass;
+ (Class)IMCNContactFormatterClass;
+ (Class)IMCNGeminiManagerClass;
+ (Class)IMCNLabeledValueClass;
+ (Class)IMCNMeCardSharingPickerViewControllerClass;
+ (Class)IMCNMutableContactClass;
+ (Class)IMCNPhoneNumberClass;
+ (id)CNIDToFormattedStringCache;
+ (id)IDWithCurrentLocaleITUCode:(id)code;
+ (id)IDsFromCNContact:(id)contact;
+ (id)IMContactStoreQueue;
+ (id)_stringFromContact:(id)contact withStyle:(int64_t)style;
+ (id)abbreviatedNameForCNContact:(id)contact;
+ (id)companyNameForCNContact:(id)contact;
+ (id)createMutableContactWithID:(id)d;
+ (id)createMutableContactWithMapURL:(id)l andLocalizedLocationString:(id)string;
+ (id)descriptionForCNContact:(id)contact;
+ (id)dialingCodeForID:(id)d;
+ (id)dialingForCurrentLocale;
+ (id)displayNameForContact:(id)contact;
+ (id)displayNameWithCNNickNameOrFullNameOrCompanyNameOrAbbreviatedForContact:(id)contact;
+ (id)displayNameWithPhoneNumberOrEmailForContact:(id)contact;
+ (id)emailsForCNContact:(id)contact;
+ (id)firstNameForCNContact:(id)contact;
+ (id)fullNameForCNContact:(id)contact;
+ (id)kIMCNContactAvatarRecipeDataKey;
+ (id)kIMCNContactCropRectKey;
+ (id)kIMCNContactEmailAddressesKey;
+ (id)kIMCNContactIdentifierKey;
+ (id)kIMCNContactImageBackgroundColorsDataKey;
+ (id)kIMCNContactImageDataAvailableKey;
+ (id)kIMCNContactImageDataKey;
+ (id)kIMCNContactLinkIdentifierKey;
+ (id)kIMCNContactPhoneNumbersKey;
+ (id)kIMCNContactSensitiveContentConfigurationKey;
+ (id)kIMCNContactThumbnailImageDataKey;
+ (id)kIMCNContactWallpaperKey;
+ (id)kIMCNContactWatchWallpaperImageDataKey;
+ (id)keysForCNContact;
+ (id)keysForMeContact;
+ (id)keysForNicknameHandling;
+ (id)lastNameForCNContact:(id)contact;
+ (id)nickNameForCNContact:(id)contact;
+ (id)phoneNumbersForCNContact:(id)contact;
+ (id)phoneticFirstNameForCNContact:(id)contact;
+ (id)phoneticFullNameForCNContact:(id)contact;
+ (id)phoneticLastNameForCNContact:(id)contact;
+ (id)predicateForID:(id)d;
+ (id)sharedInstance;
+ (id)validateAndCleanupID:(id)d;
+ (id)validateAndFilterIDsForContactsBatchFetch:(id)fetch;
+ (void)_logArray:(id)array inBatchesOfSize:(int64_t)size;
+ (void)_logDictionaryInformation:(id)information withSortedKeys:(id)keys inRange:(_NSRange)range;
+ (void)logCNContact:(id)contact;
+ (void)logCNContact:(id)contact andID:(id)d;
+ (void)logContactFetchRequestResults:(id)results;
+ (void)logDictionary:(id)dictionary checkAdditionalLoggingEnabled:(BOOL)enabled;
+ (void)logDictionary:(id)dictionary inBatchesOfSize:(int64_t)size;
+ (void)logHandleID:(id)d;
+ (void)logHandleIDs:(id)ds checkAdditionalLoggingEnabled:(BOOL)enabled;
+ (void)logHistoryToken:(id)token;
- (BOOL)isAcceptedCNID:(id)d;
- (BOOL)isContactWithIDAlreadyFetched:(id)fetched;
- (BOOL)isCuratedCNID:(id)d;
- (BOOL)isIDAKnownContact:(id)contact;
- (IMContactStore)init;
- (IMContactStore)initWithContactStore:(id)store;
- (NSData)currentHistoryToken;
- (id)_coreRecentsEventsFromIntroductions:(id)introductions;
- (id)_postChangeEventsForAcceptedIntroductions:(id)introductions;
- (id)batchFetchContactsWithoutCachingForIdentifiers:(id)identifiers;
- (id)cnContactIdentifierForID:(id)d;
- (id)completedContact:(id)contact withKeys:(id)keys;
- (id)fetchAcceptedContactsForHandles:(id)handles;
- (id)fetchCNContactForHandleID:(id)d withKeys:(id)keys;
- (id)fetchCNContactWithIdentifier:(id)identifier;
- (id)fetchMeContactWithKeys:(id)keys;
- (id)fetchMeContactWithKeys:(id)keys withError:(id *)error;
- (id)getAllKeysFromIDToCNContactMap;
- (id)getCNIDToHandleIDsMap;
- (id)getContactForID:(id)d;
- (id)getHandleIDToCNIDMap;
- (id)getIDToCNContactMap;
- (id)handleIDsForCNID:(id)d;
- (id)preferCuratedContactFromFetchResults:(id)results;
- (id)stateDictionaryForDiagnosticsRequest;
- (void)_cacheBatchFetchResults:(id)results handleIDsWithoutCNID:(id)d;
- (void)_fetchContactsWithIdentifiers:(id)identifiers usingCNID:(BOOL)d;
- (void)_startObservingAcceptedContactChanges;
- (void)addContact:(id)contact withID:(id)d;
- (void)addEntriesToIDToCNContactMap:(id)map;
- (void)addIDToCNIDToHandleIDsMap:(id)map withCNID:(id)d;
- (void)checkForAcceptedContactStoreChanges;
- (void)checkForContactStoreChanges;
- (void)contactStoreChanged:(id)changed;
- (void)dealloc;
- (void)fetchCNContactsForHandlesWithIDs:(id)ds isFinalBatch:(BOOL)batch;
- (void)generateCNIDToHandleIDMap;
- (void)handleDropEverythingEvent;
- (void)meCardChanged:(id)changed;
- (void)recordAcceptedIntroductions:(id)introductions completion:(id)completion;
- (void)removeContactWithID:(id)d;
- (void)removeIDFromCNIDToHandleIDsMap:(id)map withCNID:(id)d;
- (void)replaceContact:(id)contact withID:(id)d;
- (void)replaceWithMutableContactForID:(id)d;
- (void)resetMeCard;
- (void)setBatchFetchingCompleted;
- (void)setBatchFetchingIsCompleted:(BOOL)completed;
- (void)setCurrentHistoryToken:(id)token;
- (void)setHandleIDToCNIDMap:(id)map;
@end

@implementation IMContactStore

+ (id)sharedInstance
{
  if (qword_1ED8CA418 != -1)
  {
    sub_1A85EF27C();
  }

  v3 = qword_1ED8CA380;

  return v3;
}

- (IMContactStore)init
{
  v23 = *MEMORY[0x1E69E9840];
  qword_1ED8CA180 = MEMORY[0x1AC570AA0](@"CNContact", @"Contacts");
  qword_1ED8CA2A0 = MEMORY[0x1AC570AA0](@"CNContactStore", @"Contacts");
  if (!+[IMContactStore _shouldAllowContactStoreLookup])
  {
    goto LABEL_24;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695CE28]);
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.imsharedutilities.forceContactsOOP", &error);
    CFRelease(v5);
    if (v6)
    {
      v7 = CFGetTypeID(v6);
      if (v7 == CFBooleanGetTypeID())
      {
        v8 = CFBooleanGetValue(v6) == 0;
        CFRelease(v6);
        if (!v8)
        {
          goto LABEL_17;
        }
      }

      else
      {
        CFRelease(v6);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = @"com.apple.imsharedutilities.forceContactsOOP";
        v21 = 2112;
        v22 = error;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Unexpected value for %@ entitlement: %@", buf, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Unexpected NULL value returned from SecTaskCreateFromSelf()", buf, 2u);
    }
  }

  [v3 setUseInProcessMapperExclusively:1];
LABEL_17:
  v11 = +[IMFeatureFlags sharedFeatureFlags];
  isIntroductionsEnabled = [v11 isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    [v3 setIncludeAcceptedIntroductions:1];
  }

  v13 = [[qword_1ED8CA2A0 alloc] initWithConfiguration:v3];

  if (v13)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "CNContactStore setup completed!", buf, 2u);
      }
    }

    goto LABEL_29;
  }

LABEL_24:
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Failed to setup CNContactStore", buf, 2u);
    }
  }

  v13 = 0;
LABEL_29:
  v16 = [(IMContactStore *)self initWithContactStore:v13];

  return v16;
}

+ (BOOL)_shouldAllowContactStoreLookup
{
  if (IMIsRunningInFaceTime() || IMIsRunningInSafari() || IMIsRunningInSOSBuddy() || IMIsRunningInSafariSandboxBroker())
  {
    v2 = IMOSLoggingEnabled();
    if (v2)
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Contacts fetch NOT allowed", v5, 2u);
      }

      LOBYTE(v2) = 0;
    }
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

+ (id)keysForMeContact
{
  v2 = MEMORY[0x1E695DF70];
  v3 = +[IMContactStore kIMCNContactIdentifierKey];
  v4 = +[IMContactStore kIMCNContactPhoneNumbersKey];
  v5 = +[IMContactStore kIMCNContactEmailAddressesKey];
  v6 = [v2 arrayWithObjects:{v3, v4, v5, 0}];

  if (+[IMContactStore IMCNContactFormatterClass])
  {
    v7 = [(objc_class *)+[IMContactStore IMCNContactFormatterClass](IMContactStore descriptorForRequiredKeysForStyle:"descriptorForRequiredKeysForStyle:", 0];
    [v6 addObject:v7];
  }

  v8 = [v6 copy];

  return v8;
}

+ (id)kIMCNContactIdentifierKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA1B0;

  return v3;
}

+ (id)kIMCNContactPhoneNumbersKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA190;

  return v3;
}

+ (id)kIMCNContactEmailAddressesKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA1B8;

  return v3;
}

+ (Class)IMCNContactFormatterClass
{
  if (qword_1ED8CA238 != -1)
  {
    sub_1A85F522C();
  }

  v3 = qword_1ED8CA260;

  return v3;
}

+ (Class)IMCNContactFetchRequestClass
{
  if (qword_1ED8CA238 != -1)
  {
    sub_1A85F522C();
  }

  v3 = qword_1ED8CA268;

  return v3;
}

- (NSData)currentHistoryToken
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A8601F64;
  v10 = sub_1A86021A0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A86A9114;
  v5[3] = &unk_1E78282D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)keysForCNContact
{
  v12[6] = *MEMORY[0x1E69E9840];
  v2 = +[IMContactStore kIMCNContactIdentifierKey];
  v12[0] = v2;
  v3 = +[IMContactStore kIMCNContactEmailAddressesKey];
  v12[1] = v3;
  v4 = +[IMContactStore kIMCNContactPhoneNumbersKey];
  v12[2] = v4;
  v5 = +[IMContactStore kIMCNContactLinkIdentifierKey];
  v12[3] = v5;
  v6 = [(objc_class *)+[IMContactStore IMCNContactFormatterClass](IMContactStore descriptorForRequiredKeysForStyle:"descriptorForRequiredKeysForStyle:", 0];
  v12[4] = v6;
  descriptorForUsedKeys = [MEMORY[0x1E696ADF0] descriptorForUsedKeys];
  v12[5] = descriptorForUsedKeys;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:6];

  if (IMSharedHelperDeviceHasMultipleSubscriptions() && [(objc_class *)+[IMContactStore deviceSupportsGemini] IMCNGeminiManagerClass]
  {
    descriptorForRequiredKeys = [(objc_class *)+[IMContactStore IMCNGeminiManagerClass](IMContactStore descriptorForRequiredKeys];
    v10 = [v8 arrayByAddingObject:descriptorForRequiredKeys];

    v8 = v10;
  }

  return v8;
}

+ (id)kIMCNContactLinkIdentifierKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA198;

  return v3;
}

+ (Class)IMCNGeminiManagerClass
{
  if (qword_1ED8CA238 != -1)
  {
    sub_1A85F522C();
  }

  v3 = qword_1ED8CA258;

  return v3;
}

- (void)generateCNIDToHandleIDMap
{
  v16 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  CNIDToHandleIDsMap = self->_CNIDToHandleIDsMap;
  self->_CNIDToHandleIDsMap = dictionary;

  if (IMAdditionalContactsLoggingEnabled())
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        allKeys = [(NSMutableDictionary *)self->_CNIDToHandleIDsMap allKeys];
        *buf = 134217984;
        v15 = [allKeys count];
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "CNIDToHandleIDsMap before update. Number of entries %lu", buf, 0xCu);
      }
    }

    getCNIDToHandleIDsMap = [(IMContactStore *)self getCNIDToHandleIDsMap];
    [IMContactStore logDictionary:getCNIDToHandleIDsMap];
  }

  handleIDToCNIDMap = [(IMContactStore *)self handleIDToCNIDMap];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A85F9B64;
  v13[3] = &unk_1E7826C50;
  v13[4] = self;
  [handleIDToCNIDMap enumerateKeysAndObjectsUsingBlock:v13];

  if (IMAdditionalContactsLoggingEnabled())
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        allKeys2 = [(NSMutableDictionary *)self->_CNIDToHandleIDsMap allKeys];
        v11 = [allKeys2 count];
        *buf = 134217984;
        v15 = v11;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "CNIDToHandleIDsMap after update. Number of entries %lu", buf, 0xCu);
      }
    }

    getCNIDToHandleIDsMap2 = [(IMContactStore *)self getCNIDToHandleIDsMap];
    [IMContactStore logDictionary:getCNIDToHandleIDsMap2];
  }
}

- (id)getHandleIDToCNIDMap
{
  v2 = [(NSDictionary *)self->_handleIDToCNIDMap copy];

  return v2;
}

+ (BOOL)shouldShowAbbreviatedNames
{
  if (qword_1ED8C97A8 != -1)
  {
    sub_1A8601E04();
  }

  mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
  v3 = mEMORY[0x1E695CE40];
  if (byte_1EB309308)
  {
    isShortNameFormatEnabled = 1;
  }

  else
  {
    isShortNameFormatEnabled = [mEMORY[0x1E695CE40] isShortNameFormatEnabled];
  }

  return isShortNameFormatEnabled;
}

+ (id)IMContactStoreQueue
{
  if (qword_1ED8C9998 != -1)
  {
    sub_1A86020BC();
  }

  v3 = qword_1ED8C9990;

  return v3;
}

+ (BOOL)shouldShowNickNames
{
  if (qword_1ED8C98F0 != -1)
  {
    sub_1A860258C();
  }

  mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
  v3 = mEMORY[0x1E695CE40];
  if (byte_1EB30A410)
  {
    shortNameFormatPrefersNicknames = 1;
  }

  else
  {
    shortNameFormatPrefersNicknames = [mEMORY[0x1E695CE40] shortNameFormatPrefersNicknames];
  }

  return shortNameFormatPrefersNicknames;
}

+ (Class)IMCNMutableContactClass
{
  if (qword_1ED8CA238 != -1)
  {
    sub_1A85F522C();
  }

  v3 = qword_1ED8CA248;

  return v3;
}

+ (Class)IMCNLabeledValueClass
{
  if (qword_1ED8CA238 != -1)
  {
    sub_1A85F522C();
  }

  v3 = qword_1ED8CA250;

  return v3;
}

+ (Class)IMCNPhoneNumberClass
{
  if (qword_1ED8CA238 != -1)
  {
    sub_1A85F522C();
  }

  v3 = qword_1ED8CA240;

  return v3;
}

- (void)checkForAcceptedContactStoreChanges
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "checkForAcceptedContactStoreChanges", buf, 2u);
    }
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = sub_1A8601E88;
  v13 = sub_1A8602138;
  array = [MEMORY[0x1E695DF70] array];
  getHandleIDToCNIDMap = [(IMContactStore *)self getHandleIDToCNIDMap];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8638FD0;
  v8[3] = &unk_1E7826CC8;
  v8[4] = self;
  v8[5] = buf;
  [getHandleIDToCNIDMap enumerateKeysAndObjectsUsingBlock:v8];
  v5 = [*(v10 + 5) copy];
  v6 = [(IMContactStore *)self fetchAcceptedContactsForHandles:v5];

  v7 = objc_alloc_init(IMContactStoreChangeHistoryEventsHandler);
  [(IMContactStoreChangeHistoryEventsHandler *)v7 updateWithCurrentAcceptedContactsMap:v6];

  _Block_object_dispose(buf, 8);
}

- (void)recordAcceptedIntroductions:(id)introductions completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  introductionsCopy = introductions;
  completionCopy = completion;
  v8 = [(IMContactStore *)self _coreRecentsEventsFromIntroductions:introductionsCopy];
  v9 = [v8 count];
  if (v9 == [introductionsCopy count] && objc_msgSend(v8, "count"))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v18 = [introductionsCopy count];
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Recording accepted introductions for %lu handles", buf, 0xCu);
      }
    }

    if (qword_1EB30AD40 != -1)
    {
      sub_1A88C0DF4();
    }

    defaultInstance = [qword_1EB30AD38 defaultInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A86392A0;
    v14[3] = &unk_1E7826D18;
    v14[4] = self;
    v15 = introductionsCopy;
    v16 = completionCopy;
    [defaultInstance recordAcceptedContactEvents:v8 sendingAddress:0 source:0 completion:v14];
  }

  else
  {
    v12 = IMLogHandleForCategory("IMContactStore+Introductions");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0E1C(v12);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.Messages.IMContactStore.Introductions" code:2 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

- (id)_postChangeEventsForAcceptedIntroductions:(id)introductions
{
  v26 = *MEMORY[0x1E69E9840];
  introductionsCopy = introductions;
  array = [MEMORY[0x1E695DF70] array];
  v6 = objc_alloc_init(IMContactStoreChangeHistoryEventsHandler);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = introductionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        handle = [v12 handle];
        [(IMContactStore *)self removeContactWithID:handle];

        handle2 = [v12 handle];
        v15 = [(IMContactStore *)self fetchCNContactForHandleWithID:handle2];

        if (v15)
        {
          [(IMContactStoreChangeHistoryEventsHandler *)v6 processAcceptedIntroductionForContact:v15];
          [array addObject:v15];
        }

        else
        {
          v16 = IMLogHandleForCategory("IMContactStore+Introductions");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1A88C0EDC(v23, v12, &v24, v16);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = [array copy];

  return v17;
}

- (id)_coreRecentsEventsFromIntroductions:(id)introductions
{
  v18 = *MEMORY[0x1E69E9840];
  introductionsCopy = introductions;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = introductionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        convertToCoreRecentsEvent = [*(*(&v13 + 1) + 8 * i) convertToCoreRecentsEvent];
        if (convertToCoreRecentsEvent)
        {
          [array addObject:convertToCoreRecentsEvent];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [array copy];

  return v11;
}

- (BOOL)isAcceptedCNID:(id)d
{
  dCopy = d;
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x1E695CD58] isCoreRecentsAcceptedIdentifier:dCopy];
  }

  else
  {
    v4 = [dCopy hasPrefix:@"CNCoreRecentsContactStore://com.apple.introductions.accepted"];
  }

  v5 = v4;

  return v5;
}

- (BOOL)isCuratedCNID:(id)d
{
  dCopy = d;
  if ([(IMContactStore *)self isUnknownCNID:dCopy])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(IMContactStore *)self isAcceptedCNID:dCopy];
  }

  return v5;
}

+ (void)logDictionary:(id)dictionary checkAdditionalLoggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dictionaryCopy = dictionary;
  if (!enabledCopy || IMAdditionalContactsLoggingEnabled())
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Logging Dictionary", v7, 2u);
      }
    }

    [IMContactStore logDictionary:dictionaryCopy inBatchesOfSize:20];
  }
}

+ (void)logDictionary:(id)dictionary inBatchesOfSize:(int64_t)size
{
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  v6 = [allKeys count];

  v7 = v6 / size;
  v8 = v6 % size;
  v9 = [IMContactStore _sortContactsFor:dictionaryCopy];
  if (v7 >= 1)
  {
    v10 = 0;
    v11 = v7;
    do
    {
      [IMContactStore _logDictionaryInformation:dictionaryCopy withSortedKeys:v9 inRange:v10, size];
      v10 += size;
      --v11;
    }

    while (v11);
  }

  if (v8 > 0)
  {
    [IMContactStore _logDictionaryInformation:dictionaryCopy withSortedKeys:v9 inRange:v7 * size, v8];
  }
}

+ (void)logHandleIDs:(id)ds checkAdditionalLoggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (!enabledCopy || IMAdditionalContactsLoggingEnabled())
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 134217984;
        v8 = [dsCopy count];
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Logging %lu IDs", &v7, 0xCu);
      }
    }

    [IMContactStore _logArray:dsCopy inBatchesOfSize:20];
  }
}

+ (void)logContactFetchRequestResults:(id)results
{
  v21 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (IMAdditionalContactsLoggingEnabled())
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        value = [resultsCopy value];
        v19 = 134217984;
        v20 = [value count];
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Logging Contact Store fetch result. Obtained (%lu) results from Contacts Store.", &v19, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "The results are:", &v19, 2u);
      }
    }

    value2 = [resultsCopy value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "fetchResult is a Dictionary", &v19, 2u);
        }
      }

      value3 = [resultsCopy value];
      [IMContactStore logDictionary:value3 inBatchesOfSize:10];
    }

    else
    {
      value4 = [resultsCopy value];
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();

      v13 = IMOSLoggingEnabled();
      if (v12)
      {
        if (v13)
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "fetchResult is an Array", &v19, 2u);
          }
        }

        value5 = [resultsCopy value];
        [IMContactStore _logArray:value5 inBatchesOfSize:10];
      }

      else if (v13)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          v19 = 138412290;
          v20 = v17;
          v18 = v17;
          _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Unable to log CNFetchResult. Class: %@", &v19, 0xCu);
        }
      }
    }
  }
}

+ (void)logHistoryToken:(id)token
{
  v7 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = tokenCopy;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Logging history token: %@", &v5, 0xCu);
    }
  }
}

+ (void)logCNContact:(id)contact
{
  v8 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [contactCopy description];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Logging additional details about CNContact: %@", &v6, 0xCu);
    }
  }
}

+ (void)logCNContact:(id)contact andID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  dCopy = d;
  if (IMAdditionalContactsLoggingEnabled())
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [contactCopy description];
        v9 = 138412546;
        v10 = dCopy;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "ID: %@ and CNContact: %@", &v9, 0x16u);
      }
    }

    [IMContactStore logCNContact:contactCopy];
  }
}

+ (void)logHandleID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (IMAdditionalContactsLoggingEnabled())
  {
    v4 = +[IMContactStore sharedInstance];
    v5 = [v4 fetchCNContactForHandleWithID:dCopy];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [v5 description];
        v8 = 138412546;
        v9 = dCopy;
        v10 = 2112;
        v11 = v7;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "For ID %@ found an entry in cache: %@", &v8, 0x16u);
      }
    }
  }
}

+ (void)_logArray:(id)array inBatchesOfSize:(int64_t)size
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v6 = [arrayCopy count];
  v14 = v6;
  v7 = v6 / size;
  if (v6 / size >= 1)
  {
    v8 = 0;
    v9 = v6 / size;
    do
    {
      v10 = [arrayCopy subarrayWithRange:{v8, size}];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v16 = v10;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }
      }

      v8 += size;
      --v9;
    }

    while (v9);
  }

  if (v14 - v7 * size > 0)
  {
    v12 = [arrayCopy subarrayWithRange:v7 * size];
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }
  }
}

+ (void)_logDictionaryInformation:(id)information withSortedKeys:(id)keys inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v26 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  keysCopy = keys;
  [keysCopy subarrayWithRange:{location, length}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v9 = v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [informationCopy objectForKey:v13];
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v22 = v13;
            v23 = 2112;
            v24 = v14;
            _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Handle ID: %@, CNID:%@", buf, 0x16u);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }
}

- (IMContactStore)initWithContactStore:(id)store
{
  storeCopy = store;
  v26.receiver = self;
  v26.super_class = IMContactStore;
  v6 = [(IMContactStore *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
    currentHistoryToken = v7->_currentHistoryToken;
    v7->_currentHistoryToken = 0;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.private.IMSharedUtilities.IMContactStore.ChangeHistoryFetch", v9);
    changeHistoryFetchQueue = v7->_changeHistoryFetchQueue;
    v7->_changeHistoryFetchQueue = v10;

    v12 = dispatch_queue_create("com.apple.private.IMSharedUtilities.IMContactStore.IDToHandleMap", v9);
    queue = v7->_queue;
    v7->_queue = v12;

    v14 = [IMStateCaptureAssistant alloc];
    v15 = [(IMStateCaptureAssistant *)v14 initWithObject:v7 title:@"IMContactStore" queue:MEMORY[0x1E69E96A0]];
    stateCaptureAssistant = v7->_stateCaptureAssistant;
    v7->_stateCaptureAssistant = v15;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_contactStoreChanged_ name:*MEMORY[0x1E695C3D8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel_meCardChanged_ name:*MEMORY[0x1E695C3E0] object:0];

    v19 = +[IMFeatureFlags sharedFeatureFlags];
    isIntroductionsEnabled = [v19 isIntroductionsEnabled];

    if (isIntroductionsEnabled)
    {
      v21 = objc_alloc_init(MEMORY[0x1E695CE28]);
      [v21 setUseInProcessMapperExclusively:1];
      [v21 setIncludeLocalContacts:0];
      [v21 setIncludeAcceptedIntroductions:1];
      v22 = [[qword_1ED8CA2A0 alloc] initWithConfiguration:v21];
      acceptedContactStore = v7->_acceptedContactStore;
      v7->_acceptedContactStore = v22;

      [(IMContactStore *)v7 _startObservingAcceptedContactChanges];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, sub_1A86A2318, @"CNMeCardSharingPickerViewControllerDidSaveNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  acceptedContactsChangeNotifier = [(IMContactStore *)self acceptedContactsChangeNotifier];
  [acceptedContactsChangeNotifier stopObserving];

  stateCaptureAssistant = [(IMContactStore *)self stateCaptureAssistant];
  [stateCaptureAssistant deregister];

  [(IMContactStore *)self setStateCaptureAssistant:0];
  v6.receiver = self;
  v6.super_class = IMContactStore;
  [(IMContactStore *)&v6 dealloc];
}

+ (Class)IMCNChangeHistoryFetchRequestClass
{
  if (qword_1ED8CA238 != -1)
  {
    sub_1A85F522C();
  }

  v3 = qword_1ED8CA270;

  return v3;
}

+ (Class)IMCNMeCardSharingPickerViewControllerClass
{
  if (qword_1ED8CA238 != -1)
  {
    sub_1A85F522C();
  }

  v3 = qword_1ED8CA288;

  return v3;
}

+ (id)kIMCNContactImageDataAvailableKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA1A8;

  return v3;
}

+ (id)kIMCNContactImageDataKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA1A0;

  return v3;
}

+ (id)kIMCNContactThumbnailImageDataKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA188;

  return v3;
}

+ (id)kIMCNContactCropRectKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA1C0;

  return v3;
}

+ (id)kIMCNContactWallpaperKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA150;

  return v3;
}

+ (id)kIMCNContactWatchWallpaperImageDataKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA148;

  return v3;
}

+ (id)kIMCNContactImageBackgroundColorsDataKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA160;

  return v3;
}

+ (id)kIMCNContactSensitiveContentConfigurationKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8CA158;

  return v3;
}

+ (id)kIMCNContactAvatarRecipeDataKey
{
  if (qword_1ED8CA1E0 != -1)
  {
    sub_1A85F42A8();
  }

  v3 = qword_1ED8C9BB0;

  return v3;
}

- (id)fetchAcceptedContactsForHandles:(id)handles
{
  v27 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  if ([handlesCopy count] && self->_acceptedContactStore)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v24 = [handlesCopy count];
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Fetching accepted contacts for %lu handles", buf, 0xCu);
      }
    }

    v6 = +[IMContactStore keysForCNContact];
    v7 = [objc_alloc(+[IMContactStore IMCNContactFetchRequestClass](IMContactStore "IMCNContactFetchRequestClass"))];
    [v7 setUnifyResults:0];
    v8 = [qword_1ED8CA180 predicateForContactsMatchingHandleStrings:handlesCopy];
    [v7 setPredicate:v8];
    v9 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v9 startTimingForKey:@"Contacts Accepted Batch Fetch"];
    acceptedContactStore = self->_acceptedContactStore;
    v22 = 0;
    v11 = [(CNContactStore *)acceptedContactStore executeFetchRequest:v7 error:&v22];
    v12 = v22;
    value = [v11 value];
    [v9 stopTimingForKey:@"Contacts Accepted Batch Fetch"];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        [v9 totalTimeForKey:@"Contacts Accepted Batch Fetch"];
        *buf = 134217984;
        v24 = v15;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Contacts accepted batch fetch from Contact Store completed. Took %f seconds.", buf, 0xCu);
      }
    }

    if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v21 = [value count];
          v17 = [handlesCopy count];
          *buf = 134218240;
          v24 = v21;
          v25 = 2048;
          v26 = v17;
          _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Got results for %lu/%lu IDs from Contacts Batch Fetch", buf, 0x16u);
        }
      }

      [IMContactStore logContactFetchRequestResults:v11];
      v18 = value;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "No results obtained from the CN fetch request for accepted contacts. Error: %@", buf, 0xCu);
        }
      }

      v18 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v6 = IMLogHandleForCategory("Contacts");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C37C4(v6);
    }

    v18 = MEMORY[0x1E695E0F8];
  }

  return v18;
}

- (void)_cacheBatchFetchResults:(id)results handleIDsWithoutCNID:(id)d
{
  v69 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  dCopy = d;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = resultsCopy;
  v7 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v7)
  {
    v8 = *v58;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v57 + 1) + 8 * i);
        identifier = [v10 identifier];
        [v42 setObject:v10 forKey:identifier];
      }

      v7 = [obj countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v7);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  allKeys = [v42 allKeys];
  v38 = [allKeys countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v38)
  {
    v37 = *v54;
    do
    {
      v12 = 0;
      do
      {
        if (*v54 != v37)
        {
          v13 = v12;
          objc_enumerationMutation(allKeys);
          v12 = v13;
        }

        v41 = v12;
        v14 = *(*(&v53 + 1) + 8 * v12);
        v15 = [v42 objectForKey:v14];
        v16 = [(IMContactStore *)self handleIDsForCNID:v14];
        if (!v16)
        {
          linkIdentifier = [v15 linkIdentifier];
          v18 = [(IMContactStore *)self handleIDsForCNID:linkIdentifier];

          v16 = v18;
        }

        if (v16)
        {
          v19 = v15 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (!v19)
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v36 = v16;
          v20 = v16;
          v21 = [v20 countByEnumeratingWithState:&v49 objects:v66 count:16];
          if (v21)
          {
            v22 = *v50;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v50 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v49 + 1) + 8 * j);
                if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
                {
                  v25 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v63 = v24;
                    v64 = 2112;
                    v65 = v15;
                    _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Adding to entriesToApp ID:%@, Contact:%@", buf, 0x16u);
                  }
                }

                [v6 setObject:v15 forKey:v24];
              }

              v21 = [v20 countByEnumeratingWithState:&v49 objects:v66 count:16];
            }

            while (v21);
          }

          v16 = v36;
        }

        v12 = v41 + 1;
      }

      while (v41 + 1 != v38);
      v38 = [allKeys countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v38);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v26 = dCopy;
  v27 = [v26 countByEnumeratingWithState:&v45 objects:v61 count:16];
  if (v27)
  {
    v28 = *v46;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v45 + 1) + 8 * k);
        v31 = [IMContactStore createMutableContactWithID:v30];
        if (v31)
        {
          [v6 setObject:v31 forKey:v30];
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v45 objects:v61 count:16];
    }

    while (v27);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v32 = [v6 copy];
    [(IMContactStore *)self addEntriesToIDToCNContactMap:v32];
  }

  else
  {
    v33 = +[IMContactStore IMContactStoreQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86A3184;
    block[3] = &unk_1E78260F0;
    block[4] = self;
    v44 = v6;
    dispatch_async(v33, block);
  }
}

- (void)fetchCNContactsForHandlesWithIDs:(id)ds isFinalBatch:(BOOL)batch
{
  batchCopy = batch;
  v41 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v30 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v30 startTimingForKey:@"Fetch CNContacts For HandleIDs"];
  v28 = dsCopy;
  v31 = [IMContactStore validateAndFilterIDsForContactsBatchFetch:dsCopy];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v38 = [dsCopy count];
      v39 = 2048;
      v40 = [v31 count];
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "%lu handles passed in. %lu valid IDs for batch fetch", buf, 0x16u);
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if ([v31 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v31;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v14 = [(NSDictionary *)self->_handleIDToCNIDMap objectForKey:v13];
          v15 = v14;
          if (v14 && ([v14 containsString:@"IMDCNPersonNotFound"] & 1) == 0)
          {
            [array addObject:v15];
          }

          else
          {
            [array2 addObject:v13];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [array count];
      v18 = [array2 count];
      *buf = 134218240;
      v38 = v17;
      v39 = 2048;
      v40 = v18;
      _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "%lu handles found in aliasCNID cache. Did not find %lu in cache.", buf, 0x16u);
    }
  }

  if ([array2 count])
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Handles without CNID in cache are:", buf, 2u);
      }
    }

    [IMContactStore logHandleIDs:array2 checkAdditionalLoggingEnabled:0];
  }

  if ([array count])
  {
    if (![array count] || (v20 = objc_msgSend(array, "count"), v21 = objc_msgSend(array, "count"), (v20 / (v21 + objc_msgSend(array2, "count"))) >= 0.1))
    {
      [(IMContactStore *)self _fetchContactsWithIdentifiers:array usingCNID:1];
      goto LABEL_41;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Refetching as we don't have anything in IMDP cache", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = array2;
      _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "Refetching contacts from MobileSMS using handle IDs: %@", buf, 0xCu);
    }
  }

  [(IMContactStore *)self _fetchContactsWithIdentifiers:array2 usingCNID:0];
LABEL_41:
  [v30 stopTimingForKey:@"Fetch CNContacts For HandleIDs"];
  v24 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    if (batchCopy)
    {
      v25 = @"Final";
    }

    else
    {
      v25 = @"Initial";
    }

    [v30 totalTimeForKey:@"Fetch CNContacts For HandleIDs"];
    *buf = 138412546;
    v38 = v25;
    v39 = 2048;
    v40 = v26;
    _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_DEFAULT, "%@ Batch Fetch completed. Took %f seconds", buf, 0x16u);
  }

  if (batchCopy)
  {
    v27 = +[IMContactStore sharedInstance];
    [v27 setBatchFetchingCompleted];

    dispatch_async(MEMORY[0x1E69E96A0], &unk_1F1BA6AC8);
  }
}

- (id)batchFetchContactsWithoutCachingForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[IMContactStore keysForCNContact];
  v6 = [objc_alloc(+[IMContactStore IMCNContactFetchRequestClass](IMContactStore "IMCNContactFetchRequestClass"))];
  [v6 setUnifyResults:1];
  v7 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:identifiersCopy];

  [v6 setPredicate:v7];
  contactStore = self->_contactStore;
  v15 = 0;
  v9 = [(CNContactStore *)contactStore executeFetchRequest:v6 error:&v15];
  value = [v9 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allValues = [value allValues];
LABEL_5:
    v12 = allValues;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allValues = value;
    goto LABEL_5;
  }

  v13 = IMLogHandleForCategory("Contacts");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C3808(v13);
  }

  v12 = MEMORY[0x1E695E0F0];
LABEL_9:

  return v12;
}

- (void)_fetchContactsWithIdentifiers:(id)identifiers usingCNID:(BOOL)d
{
  dCopy = d;
  v42 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v36 = +[IMContactStore keysForCNContact];
    v8 = [objc_alloc(+[IMContactStore IMCNContactFetchRequestClass](IMContactStore "IMCNContactFetchRequestClass"))];
    [v8 setUnifyResults:0];
    v9 = IMOSLoggingEnabled();
    if (dCopy)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Fetching Contacts using CNIDs", buf, 2u);
        }
      }

      v11 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:identifiersCopy];
    }

    else
    {
      if (v9)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Fetching Contacts using Email & Phone", buf, 2u);
        }
      }

      v11 = [qword_1ED8CA180 predicateForContactsMatchingHandleStrings:identifiersCopy];
    }

    v14 = v11;
    [v8 setPredicate:v11];
    if ((IMIsRunningInUnitTesting() & dCopy) == 1)
    {
      objc_storeStrong(&self->_CNIDsForBatchFetch, identifiers);
    }

    v15 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v15 startTimingForKey:@"Contacts Batch Fetch"];
    contactStore = self->_contactStore;
    v37 = 0;
    v17 = [(CNContactStore *)contactStore executeFetchRequest:v8 error:&v37];
    v35 = v37;
    value = [v17 value];
    [v15 stopTimingForKey:@"Contacts Batch Fetch"];
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        [v15 totalTimeForKey:@"Contacts Batch Fetch"];
        *buf = 134217984;
        v39 = v20;
        _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Contacts batch fetch from Contact Store completed. Took %f seconds.", buf, 0xCu);
      }
    }

    if (value)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [value count];
          v23 = [identifiersCopy count];
          *buf = 134218240;
          v39 = v22;
          v40 = 2048;
          v41 = v23;
          _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Got results for %lu/%lu IDs from Contacts Batch Fetch", buf, 0x16u);
        }
      }

      [IMContactStore logContactFetchRequestResults:v17];
      v24 = objc_alloc_init(MEMORY[0x1E69A6170]);
      [v24 startTimingForKey:@"Contacts Caching"];
      value2 = [v17 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        allValues = [value allValues];
        [(IMContactStore *)self _cacheBatchFetchResults:allValues handleIDsWithoutCNID:identifiersCopy];
      }

      else
      {
        value3 = [v17 value];
        objc_opt_class();
        v29 = objc_opt_isKindOfClass();

        if (v29)
        {
          [(IMContactStore *)self _cacheBatchFetchResults:value handleIDsWithoutCNID:identifiersCopy];
        }
      }

      if (IMAdditionalContactsLoggingEnabled())
      {
        getIDToCNContactMap = [(IMContactStore *)self getIDToCNContactMap];
        [IMContactStore logDictionary:getIDToCNContactMap];
      }

      [v24 stopTimingForKey:@"Contacts Caching"];
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          [v24 totalTimeForKey:@"Contacts Caching"];
          *buf = 134217984;
          v39 = v32;
          _os_log_impl(&dword_1A85E5000, v31, OS_LOG_TYPE_INFO, "IMContact Store caching completed. Took %f seconds", buf, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = v35;
        _os_log_impl(&dword_1A85E5000, v33, OS_LOG_TYPE_INFO, "No results obtained from the CN fetch request. Error: %@", buf, 0xCu);
      }
    }

    if ((IMIsRunningInUnitTesting() & 1) == 0)
    {
      currentHistoryToken = [v17 currentHistoryToken];
      [(IMContactStore *)self setCurrentHistoryToken:currentHistoryToken];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Passed in empty set of identifiers", buf, 2u);
    }
  }
}

- (void)setCurrentHistoryToken:(id)token
{
  tokenCopy = token;
  currentHistoryToken = [(IMContactStore *)self currentHistoryToken];
  [IMContactStore logHistoryToken:currentHistoryToken];

  if (tokenCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86A4250;
    block[3] = &unk_1E78260F0;
    block[4] = self;
    v11 = tokenCopy;
    dispatch_sync(queue, block);
    currentHistoryToken2 = [(IMContactStore *)self currentHistoryToken];
    [IMContactStore logHistoryToken:currentHistoryToken2];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "nil History token provided, not updating.", v9, 2u);
    }
  }
}

- (id)fetchCNContactForHandleID:(id)d withKeys:(id)keys
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keysCopy = keys;
  if (![dCopy length])
  {
    v4 = 0;
    goto LABEL_67;
  }

  v9 = [IMContactStore validateAndCleanupID:dCopy];
  if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v9;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Adding to validatedID:%@", buf, 0xCu);
    }
  }

  if ([v9 length]&& (MEMORY[0x1AC570A30](v9) & 1) == 0)
  {
    v11 = [(IMContactStore *)self getContactForID:v9];
    if ([v11 areKeysAvailable:keysCopy])
    {
LABEL_12:
      v11 = v11;
      v4 = v11;
LABEL_65:

      goto LABEL_66;
    }

    if (IMIsRunningInMessages() && ![(IMContactStore *)self isBatchFetchingForLaunchCompleted])
    {
      v20 = [v11 areKeysAvailable:keysCopy];
      v21 = IMOSLoggingEnabled();
      if (v20)
      {
        if (v21)
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v37 = v11;
            _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Batch fetching is still in process, returning: %@.", buf, 0xCu);
          }
        }

        goto LABEL_12;
      }

      if (v21)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v37 = v11;
          _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Batch fetching is still in process, but our cached contact does not have the required keys: %@. Returning: nil.", buf, 0xCu);
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (+[IMContactStore _shouldAllowContactStoreLookup])
      {
        v34 = [IMContactStore predicateForID:v9];
        v12 = +[IMContactStore keysForCNContact];
        v33 = [keysCopy arrayByExcludingObjectsInArray:v12];
        if (keysCopy && v33)
        {
          v13 = [v12 arrayByAddingObjectsFromArray:?];

          v12 = v13;
        }

        if (!v34)
        {
          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v9;
              _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "Failed to fetch predicate for id: %@.", buf, 0xCu);
            }
          }

          v18 = 0;
          v4 = 0;
LABEL_64:

          if (!v18)
          {
            goto LABEL_65;
          }

          goto LABEL_12;
        }

        v14 = objc_alloc_init(MEMORY[0x1E69A6170]);
        [v14 startTimingForKey:@"Contacts Singular Fetch"];
        contactStore = self->_contactStore;
        v35 = 0;
        v31 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v34 keysToFetch:v12 error:&v35];
        v30 = v35;
        v32 = [(IMContactStore *)self preferCuratedContactFromFetchResults:v31];

        [v14 stopTimingForKey:@"Contacts Singular Fetch"];
        [v14 totalTimeForKey:@"Contacts Singular Fetch"];
        if (v16 > 0.1 && IMOSLoggingEnabled())
        {
          v4 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            [v14 totalTimeForKey:@"Contacts Singular Fetch"];
            *buf = 134217984;
            v37 = v17;
            _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Contacts Store fetch completed. Took %f seconds", buf, 0xCu);
          }
        }

        if (v32)
        {
          [IMContactStore logCNContact:?];
          [(IMContactStore *)self addContact:v32 withID:v9];
          v18 = 1;
          goto LABEL_63;
        }

        v24 = IMOSLoggingEnabled();
        if (v30)
        {
          if (v24)
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v37 = v9;
              v38 = 2112;
              v39 = v30;
              _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Unified Fetch failed for ID: %@. Error: %@", buf, 0x16u);
            }

LABEL_54:
          }
        }

        else if (v24)
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v37 = v9;
            _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Did not find a contact with id: %@ in AddressBook.", buf, 0xCu);
          }

          goto LABEL_54;
        }

        v4 = [IMContactStore createMutableContactWithID:v9];
        if (v4)
        {
          v26 = +[IMUnlockMonitor sharedInstance];
          isUnderFirstDataProtectionLock = [v26 isUnderFirstDataProtectionLock];

          if ((isUnderFirstDataProtectionLock & 1) == 0)
          {
            [(IMContactStore *)self addContact:v4 withID:v9];
            v18 = 0;
            goto LABEL_63;
          }

          if (IMOSLoggingEnabled())
          {
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v9;
              _os_log_impl(&dword_1A85E5000, v28, OS_LOG_TYPE_INFO, "Not caching contact with id: %@ because we are before first unlock.", buf, 0xCu);
            }
          }
        }

        v18 = 1;
LABEL_63:

        v11 = v32;
        goto LABEL_64;
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Contact fetch not allowed for this process/platform.", buf, 2u);
        }

LABEL_44:
      }
    }

    v4 = 0;
    goto LABEL_65;
  }

  v4 = 0;
LABEL_66:

LABEL_67:

  return v4;
}

- (id)completedContact:(id)contact withKeys:(id)keys
{
  v36[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  keysCopy = keys;
  if (!contactCopy)
  {
LABEL_13:
    v8 = 0;
    goto LABEL_20;
  }

  if ([contactCopy areKeysAvailable:keysCopy])
  {
    v8 = contactCopy;
    goto LABEL_20;
  }

  if (!+[IMContactStore _shouldAllowContactStoreLookup])
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "Contact fetch not allowed in non Messages processes", buf, 2u);
      }
    }

    goto LABEL_13;
  }

  availableKeyDescriptor = [contactCopy availableKeyDescriptor];
  v36[0] = availableKeyDescriptor;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];

  if (keysCopy)
  {
    v11 = [v10 arrayByAddingObjectsFromArray:keysCopy];

    v10 = v11;
  }

  v12 = [objc_alloc(+[IMContactStore IMCNContactFetchRequestClass](IMContactStore "IMCNContactFetchRequestClass"))];
  [v12 setUnifyResults:0];
  v13 = MEMORY[0x1E695CD58];
  identifier = [contactCopy identifier];
  v35 = identifier;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v16 = [v13 predicateForContactsWithIdentifiers:v15];
  [v12 setPredicate:v16];

  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = sub_1A8601F64;
  v29 = sub_1A86021A0;
  v30 = 0;
  contactStore = self->_contactStore;
  v23[5] = buf;
  v24 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A86A4DFC;
  v23[3] = &unk_1E78294A0;
  v23[4] = self;
  LOBYTE(identifier) = [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v12 error:&v24 usingBlock:v23];
  v18 = v24;
  if (identifier)
  {
    v8 = *(v26 + 5);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        identifier2 = [contactCopy identifier];
        *v31 = 138412546;
        v32 = identifier2;
        v33 = 2112;
        v34 = v18;
        _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Failed to complete contact for contact id: %@, error: %@", v31, 0x16u);
      }
    }

    v8 = 0;
  }

  _Block_object_dispose(buf, 8);
LABEL_20:

  return v8;
}

- (id)fetchCNContactWithIdentifier:(id)identifier
{
  v23[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (!+[IMContactStore _shouldAllowContactStoreLookup])
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Contact fetch not allowed in non Messages processes", buf, 2u);
      }
    }

    goto LABEL_17;
  }

  v5 = +[IMContactStore keysForCNContact];
  v6 = MEMORY[0x1E695CD58];
  v23[0] = identifierCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v8 = [v6 predicateForContactsWithIdentifiers:v7];

  v9 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v9 startTimingForKey:@"Contacts Identifier Fetch"];
  contactStore = self->_contactStore;
  v18 = 0;
  v11 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v8 keysToFetch:v5 error:&v18];
  v12 = v18;
  [v9 stopTimingForKey:@"Contacts Batch Fetch"];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      [v9 totalTimeForKey:@"Contacts Identifier Fetch"];
      *buf = 134217984;
      v20 = v14;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Contacts fetch based on identifier from Contact Store completed. Took %f seconds.", buf, 0xCu);
    }
  }

  if (v12 && IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v20 = identifierCopy;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Identifier based Fetch failed for identifier: %@. Error: %@", buf, 0x16u);
    }
  }

LABEL_18:

  return v11;
}

- (void)setBatchFetchingCompleted
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Contacts batch fetching completed", v4, 2u);
    }
  }

  self->_batchFetchingForLaunchCompleted = 1;
}

- (void)setBatchFetchingIsCompleted:(BOOL)completed
{
  completedCopy = completed;
  v12 = *MEMORY[0x1E69E9840];
  v5 = IMIsRunningInUnitTesting();
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"NO";
        if (completedCopy)
        {
          v8 = @"YES";
        }

        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Set Contacts batch fetching completed: %@", &v10, 0xCu);
      }
    }

    self->_batchFetchingForLaunchCompleted = completedCopy;
  }

  else if (v6)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Not updating the Batch Fetching completed state since this interface is for Unit Testing only.", &v10, 2u);
    }
  }
}

- (void)setHandleIDToCNIDMap:(id)map
{
  mapCopy = map;
  if (IMAdditionalContactsLoggingEnabled())
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "handleIDToCNIDMap before update", buf, 2u);
      }
    }

    getHandleIDToCNIDMap = [(IMContactStore *)self getHandleIDToCNIDMap];
    [IMContactStore logDictionary:getHandleIDToCNIDMap];
  }

  v8 = IMOSLoggingEnabled();
  if (mapCopy)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Updating the handleIDToCNIDMap", v14, 2u);
      }
    }

    objc_storeStrong(&self->_handleIDToCNIDMap, map);
    if (IMAdditionalContactsLoggingEnabled())
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "handleIDToCNIDMap after update", v13, 2u);
        }
      }

      getHandleIDToCNIDMap2 = [(IMContactStore *)self getHandleIDToCNIDMap];
      [IMContactStore logDictionary:getHandleIDToCNIDMap2];
LABEL_21:
    }
  }

  else if (v8)
  {
    getHandleIDToCNIDMap2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(getHandleIDToCNIDMap2, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A85E5000, getHandleIDToCNIDMap2, OS_LOG_TYPE_INFO, "Error updating handleIDToCNIDMap", v12, 2u);
    }

    goto LABEL_21;
  }
}

- (id)handleIDsForCNID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_1A8601F64;
    v15 = sub_1A86021A0;
    v16 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86A5720;
    block[3] = &unk_1E78294C8;
    block[4] = self;
    v10 = &v11;
    v9 = dCopy;
    dispatch_sync(queue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeIDFromCNIDToHandleIDsMap:(id)map withCNID:(id)d
{
  mapCopy = map;
  dCopy = d;
  if ([mapCopy length] && objc_msgSend(dCopy, "length"))
  {
    CNIDToHandleIDsMap = self->_CNIDToHandleIDsMap;
    if (!CNIDToHandleIDsMap)
    {
      [(IMContactStore *)self generateCNIDToHandleIDMap];
      CNIDToHandleIDsMap = self->_CNIDToHandleIDsMap;
    }

    v8 = [(NSMutableDictionary *)CNIDToHandleIDsMap objectForKey:dCopy];
    v9 = [IMContactStore validateAndCleanupID:mapCopy];
    if ([v8 count] && objc_msgSend(v8, "containsObject:", v9))
    {
      [v8 removeObject:v9];
    }

    v10 = [v8 count];
    v11 = self->_CNIDToHandleIDsMap;
    if (v10)
    {
      [(NSMutableDictionary *)v11 setObject:v8 forKey:dCopy];
    }

    else
    {
      [(NSMutableDictionary *)v11 removeObjectForKey:dCopy];
    }
  }
}

- (void)addIDToCNIDToHandleIDsMap:(id)map withCNID:(id)d
{
  mapCopy = map;
  dCopy = d;
  if ([mapCopy length] && objc_msgSend(dCopy, "length"))
  {
    CNIDToHandleIDsMap = self->_CNIDToHandleIDsMap;
    if (!CNIDToHandleIDsMap)
    {
      [(IMContactStore *)self generateCNIDToHandleIDMap];
      CNIDToHandleIDsMap = self->_CNIDToHandleIDsMap;
    }

    v8 = [(NSMutableDictionary *)CNIDToHandleIDsMap objectForKey:dCopy];
    v9 = [IMContactStore validateAndCleanupID:mapCopy];
    if (![v8 count])
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);

      v8 = v10;
    }

    if ([v9 length])
    {
      [v8 addObject:v9];
    }

    if (v8)
    {
      [(NSMutableDictionary *)self->_CNIDToHandleIDsMap setObject:v8 forKey:dCopy];
    }
  }
}

- (BOOL)isIDAKnownContact:(id)contact
{
  contactCopy = contact;
  if ([contactCopy length])
  {
    v5 = [IMContactStore validateAndCleanupID:contactCopy];
    getHandleIDToCNIDMap = [(IMContactStore *)self getHandleIDToCNIDMap];
    v7 = [getHandleIDToCNIDMap objectForKey:v5];

    if (v7 && [v7 length])
    {
      v8 = [v7 containsString:@"IMDCNPersonNotFound"] ^ 1;
    }

    else
    {
      v9 = [(IMContactStore *)self getContactForID:v5];
      if (v9)
      {
        LOBYTE(v8) = [IMContactStore isCNContactAKnownContact:v9];
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)cnContactIdentifierForID:(id)d
{
  dCopy = d;
  if (![dCopy length])
  {
    identifier = 0;
    goto LABEL_14;
  }

  v5 = [IMContactStore validateAndCleanupID:dCopy];
  getHandleIDToCNIDMap = [(IMContactStore *)self getHandleIDToCNIDMap];
  v7 = [getHandleIDToCNIDMap objectForKey:v5];

  if (v7 && [v7 length])
  {
    goto LABEL_9;
  }

  v8 = [(IMContactStore *)self getContactForID:v5];
  if (!v8 || ![IMContactStore isCNContactAKnownContact:v8])
  {

LABEL_9:
    if ([v7 containsString:@"IMDCNPersonNotFound"])
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    identifier = v10;
    goto LABEL_13;
  }

  identifier = [v8 identifier];

LABEL_13:
LABEL_14:

  return identifier;
}

- (BOOL)isContactWithIDAlreadyFetched:(id)fetched
{
  fetchedCopy = fetched;
  if ([fetchedCopy length])
  {
    v5 = [(IMContactStore *)self getContactForID:fetchedCopy];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addContact:(id)contact withID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  dCopy = d;
  v8 = dCopy;
  if (contactCopy && [dCopy length])
  {
    if (IMAdditionalContactsLoggingEnabled())
    {
      [IMContactStore logCNContact:contactCopy andID:v8];
    }

    v9 = [IMContactStore validateAndCleanupID:v8];
    if ([v9 length])
    {
      queue = self->_queue;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1A86A5DF0;
      v12[3] = &unk_1E78294F0;
      v12[4] = self;
      v13 = contactCopy;
      v14 = v8;
      v15 = v9;
      dispatch_sync(queue, v12);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Not adding Contact with ID:%@ to Map", buf, 0xCu);
    }
  }
}

- (id)getContactForID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![dCopy length] && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dCopy;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Invalid ID, cannot fetch CNContact from Map.ID: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = sub_1A8601F64;
  v28 = sub_1A86021A0;
  v29 = [IMContactStore validateAndCleanupID:dCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1A8601F64;
  v19 = sub_1A86021A0;
  v20 = 0;
  if ([*(*(&buf + 1) + 40) length])
  {
    queue = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A86A61CC;
    v11[3] = &unk_1E7829518;
    v13 = &v15;
    v11[4] = self;
    p_buf = &buf;
    v12 = dCopy;
    dispatch_sync(queue, v11);
  }

  if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v16[5];
      *v21 = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = dCopy;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Returning Contact:%@ for ID:%@", v21, 0x16u);
    }
  }

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&buf, 8);

  return v9;
}

- (void)removeContactWithID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![dCopy length] && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Invalid ID, cannot remove CNContact from Map.ID: %@", buf, 0xCu);
    }
  }

  [IMContactStore logHandleID:dCopy];
  v6 = [(IMContactStore *)self getContactForID:dCopy];
  if (v6)
  {
    v7 = [IMContactStore validateAndCleanupID:dCopy];
    if ([v7 length])
    {
      queue = self->_queue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1A86A6554;
      v10[3] = &unk_1E78294F0;
      v10[4] = self;
      v11 = v7;
      v12 = v6;
      v13 = dCopy;
      dispatch_sync(queue, v10);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "No contact in map with ID: %@", buf, 0xCu);
    }
  }
}

- (void)replaceContact:(id)contact withID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  dCopy = d;
  if (![dCopy length] && IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = dCopy;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Invalid ID, cannot replace CNContact from Map.ID: %@", buf, 0xCu);
    }
  }

  if (!contactCopy && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = 0;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Invalid contact: %@", buf, 0xCu);
    }
  }

  [IMContactStore logCNContact:contactCopy andID:dCopy];
  v10 = [IMContactStore validateAndCleanupID:dCopy];
  v11 = +[IMContactStore sharedInstance];
  v12 = [v11 getContactForID:v10];

  if (contactCopy && [v10 length])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A86A6854;
    block[3] = &unk_1E7829540;
    block[4] = self;
    v15 = v10;
    v16 = v12;
    v17 = contactCopy;
    v18 = dCopy;
    dispatch_sync(queue, block);
  }
}

- (void)replaceWithMutableContactForID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([dCopy length])
  {
    [IMContactStore logHandleID:dCopy];
    v5 = [IMContactStore validateAndCleanupID:dCopy];
    if ([v5 length])
    {
      v6 = [objc_opt_class() createMutableContactWithID:v5];
      [(IMContactStore *)self replaceContact:v6 withID:v5];
      if (v6)
      {
        queue = self->_queue;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = sub_1A86A6B14;
        v10[3] = &unk_1E78294F0;
        v10[4] = self;
        v11 = v5;
        v12 = v6;
        v13 = dCopy;
        dispatch_sync(queue, v10);
      }

      else
      {
        v9 = IMLogHandleForCategory("Contacts");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C384C();
        }
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Invalid ID, cannot replace CNContact from Map.ID: %@", buf, 0xCu);
    }
  }
}

- (id)getAllKeysFromIDToCNContactMap
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A8601F64;
  v10 = sub_1A86021A0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A86A6C5C;
  v5[3] = &unk_1E78282D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addEntriesToIDToCNContactMap:(id)map
{
  mapCopy = map;
  v5 = mapCopy;
  if (mapCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A86A6D6C;
    v7[3] = &unk_1E78260F0;
    v7[4] = self;
    v8 = mapCopy;
    dispatch_sync(queue, v7);
  }
}

- (void)_startObservingAcceptedContactChanges
{
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  isIntroductionsEnabled = [v3 isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = sub_1A86A6F00;
    v10 = &unk_1E7826078;
    objc_copyWeak(&v11, &location);
    v5 = [IMAcceptedContactsChangeNotifier notifierWithBlock:&v7];
    [(IMContactStore *)self setAcceptedContactsChangeNotifier:v5, v7, v8, v9, v10];

    acceptedContactsChangeNotifier = [(IMContactStore *)self acceptedContactsChangeNotifier];
    [acceptedContactsChangeNotifier startObserving];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)contactStoreChanged:(id)changed
{
  v10 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (IMIsRunningInMessages())
  {
    if (![(IMContactStore *)self isBatchFetchingForLaunchCompleted]&& !IMIsRunningInMessagesExtension())
    {
LABEL_4:
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          LOWORD(v8) = 0;
          _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Dropping Contact Store notification since Contact's cache is not populated.", &v8, 2u);
        }
      }

      goto LABEL_14;
    }
  }

  else if (IMIsRunningInSafariPlatformSupport())
  {
    goto LABEL_4;
  }

  userInfo = [changedCopy userInfo];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = userInfo;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Received ContactStore change notification. User Info:%@", &v8, 0xCu);
    }
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_checkForContactStoreChanges object:0];
  [(IMContactStore *)self performSelector:sel_checkForContactStoreChanges withObject:0 afterDelay:0.5];

LABEL_14:
}

- (void)resetMeCard
{
  [(IMContactStore *)self setMeContact:0];

  MEMORY[0x1EEE66B58](self, sel_setShouldSkipMeContactLookup_);
}

- (void)meCardChanged:(id)changed
{
  v17 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = +[IMContactStore _shouldAllowContactStoreLookup];
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "MeCard ContactStore change notification", &v15, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "MeCard ContactStore change notification", &v15, 2u);
      }
    }

    userInfo = [changedCopy userInfo];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    if (v10 - self->_lastMeContactStoreSync >= 0.5)
    {
      [(IMContactStore *)self resetMeCard];
      v13 = +[IMContactStore keysForNicknameHandling];
      v14 = [(IMContactStore *)self fetchMeContactWithKeys:v13];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = userInfo;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Ignoring MeCard ContactStore change notification. userinfo:%@", &v15, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = userInfo;
          _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Ignoring MeCard ContactStore change notification. userinfo:%@", &v15, 0xCu);
        }
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v6)
  {
    userInfo = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1A85E5000, userInfo, OS_LOG_TYPE_INFO, "Not handling me card change notification in non Messages processes", &v15, 2u);
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (id)fetchMeContactWithKeys:(id)keys
{
  v5 = 0;
  v3 = [(IMContactStore *)self fetchMeContactWithKeys:keys withError:&v5];

  return v3;
}

- (id)fetchMeContactWithKeys:(id)keys withError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if (+[IMContactStore _shouldAllowContactStoreLookup])
  {
    if (!self->_shouldSkipMeContactLookup)
    {
      meContact = self->_meContact;
      if (!meContact || ![(CNContact *)meContact areKeysAvailable:keysCopy])
      {
        if (![keysCopy count])
        {
          v8 = +[IMContactStore keysForMeContact];

          keysCopy = v8;
        }

        v9 = [objc_alloc(+[IMContactStore IMCNContactFetchRequestClass](IMContactStore "IMCNContactFetchRequestClass"))];
        v10 = +[IMContactStore mePredicate];
        [v9 setPredicate:v10];
        contactStore = self->_contactStore;
        v25 = 0;
        v12 = [(CNContactStore *)contactStore executeFetchRequest:v9 error:&v25];
        v13 = v25;
        value = [v12 value];
        if (v13)
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v27 = v13;
              _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Could not fetch MeCard from CNContactStore:%@", buf, 0xCu);
            }
          }

          if (error)
          {
            v16 = v13;
            *error = v13;
          }
        }

        else
        {
          currentHistoryToken = [v12 currentHistoryToken];
          [(IMContactStore *)self setCurrentHistoryToken:currentHistoryToken];
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        self->_lastMeContactStoreSync = v20;
        firstObject = [value firstObject];
        v22 = self->_meContact;
        self->_meContact = firstObject;

        v23 = v13 != 0;
        if (self->_meContact)
        {
          v23 = 1;
        }

        if (!v23)
        {
          self->_shouldSkipMeContactLookup = 1;
        }
      }
    }

    v18 = self->_meContact;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Me Contact fetch not allowed in non Messages processes", buf, 2u);
      }
    }

    v18 = 0;
  }

  return v18;
}

- (void)handleDropEverythingEvent
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Dropping everything in cache.", buf, 2u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A86A79C8;
  block[3] = &unk_1E7828050;
  block[4] = self;
  dispatch_sync(queue, block);
  [(IMContactStore *)self setCurrentHistoryToken:0];
  getIDToCNContactMap = [(IMContactStore *)self getIDToCNContactMap];
  [IMContactStore logDictionary:getIDToCNContactMap];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:IMContactStoreChangedNotification object:0];
}

- (void)checkForContactStoreChanges
{
  v3 = objc_alloc_init(+[IMContactStore IMCNChangeHistoryFetchRequestClass]);
  currentHistoryToken = [(IMContactStore *)self currentHistoryToken];
  [v3 setStartingToken:currentHistoryToken];

  [v3 setShouldUnifyResults:0];
  v5 = +[IMContactStore keysForCNContact];
  [v3 setAdditionalContactKeyDescriptors:v5];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Performing a Contact Store History Fetch request", buf, 2u);
    }
  }

  getIDToCNContactMap = [(IMContactStore *)self getIDToCNContactMap];
  [IMContactStore logDictionary:getIDToCNContactMap];

  currentHistoryToken2 = [(IMContactStore *)self currentHistoryToken];
  [IMContactStore logHistoryToken:currentHistoryToken2];

  changeHistoryFetchQueue = self->_changeHistoryFetchQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A86A7BC4;
  v11[3] = &unk_1E78260F0;
  v11[4] = self;
  v12 = v3;
  v10 = v3;
  dispatch_async(changeHistoryFetchQueue, v11);
}

+ (id)displayNameWithCNNickNameOrFullNameOrCompanyNameOrAbbreviatedForContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy)
  {
    v4 = 0;
    goto LABEL_14;
  }

  if (+[IMContactStore shouldShowNickNames])
  {
    v4 = [IMContactStore nickNameForCNContact:contactCopy];
    if ([v4 length])
    {
      goto LABEL_14;
    }
  }

  v4 = [IMContactStore fullNameForCNContact:contactCopy];
  if (![v4 length])
  {
    v5 = [IMContactStore companyNameForCNContact:contactCopy];
    if ([v5 length])
    {
      v6 = v5;
LABEL_13:

      v4 = v6;
      goto LABEL_14;
    }

    if ((IMIsRunningInCarousel() & 1) == 0)
    {
      v6 = [IMContactStore abbreviatedNameForCNContact:contactCopy];
      if ([v6 length])
      {
        goto LABEL_13;
      }
    }

    v6 = 0;
    goto LABEL_13;
  }

LABEL_14:

  return v4;
}

+ (id)displayNameWithPhoneNumberOrEmailForContact:(id)contact
{
  contactCopy = contact;
  v4 = contactCopy;
  if (contactCopy)
  {
    phoneNumbers = [contactCopy phoneNumbers];
    if ([phoneNumbers count])
    {
      firstObject = [phoneNumbers firstObject];
      value = [firstObject value];
      stringValue = [value stringValue];

      v9 = IMFormattedDisplayStringForNumber();
    }

    else
    {
      stringValue = [v4 emailAddresses];
      if ([stringValue count])
      {
        firstObject2 = [stringValue firstObject];
        value2 = [firstObject2 value];

        v9 = IMFormattedDisplayStringForNumber();
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)displayNameForContact:(id)contact
{
  v11 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (!contactCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [0 description];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Invalid contact:%@", &v9, 0xCu);
      }

      goto LABEL_11;
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = [self displayNameWithCNNickNameOrFullNameOrCompanyNameOrAbbreviatedForContact:contactCopy];
  if (!v5)
  {
    v5 = [self displayNameWithPhoneNumberOrEmailForContact:contactCopy];
    if (!v5)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v9 = 138412290;
          v10 = contactCopy;
          _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "A display name for the given contact could not be generated for :%@", &v9, 0xCu);
        }

LABEL_11:

        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

LABEL_13:

  return v5;
}

+ (id)firstNameForCNContact:(id)contact
{
  if (contact)
  {
    givenName = [contact givenName];
    if ([givenName length])
    {
      v4 = givenName;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)lastNameForCNContact:(id)contact
{
  if (contact)
  {
    familyName = [contact familyName];
    if ([familyName length])
    {
      v4 = familyName;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)phoneticFirstNameForCNContact:(id)contact
{
  if (contact)
  {
    phoneticGivenName = [contact phoneticGivenName];
    if ([phoneticGivenName length])
    {
      v4 = phoneticGivenName;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)phoneticLastNameForCNContact:(id)contact
{
  if (contact)
  {
    phoneticFamilyName = [contact phoneticFamilyName];
    if ([phoneticFamilyName length])
    {
      v4 = phoneticFamilyName;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)phoneticFullNameForCNContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v4 = [objc_opt_class() _stringFromContact:contactCopy withStyle:1];
    if ([v4 length])
    {
      v5 = v4;
    }

    else
    {
      v5 = [IMContactStore phoneticFirstNameForCNContact:contactCopy];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)fullNameForCNContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v4 = [objc_opt_class() _stringFromContact:contactCopy withStyle:0];
    if ([v4 length])
    {
      v5 = v4;
    }

    else
    {
      v5 = [IMContactStore firstNameForCNContact:contactCopy];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)CNIDToFormattedStringCache
{
  v2 = +[IMContactStore IMContactStoreQueue];
  dispatch_assert_queue_V2(v2);

  if (qword_1EB30B110 != -1)
  {
    sub_1A88C38B4();
  }

  v3 = qword_1EB30B108;

  return v3;
}

+ (id)_stringFromContact:(id)contact withStyle:(int64_t)style
{
  contactCopy = contact;
  identifier = [contactCopy identifier];

  if (identifier)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_1A8601F64;
    v18 = sub_1A86021A0;
    v19 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A86A8890;
    aBlock[3] = &unk_1E7829568;
    v12 = &v14;
    styleCopy = style;
    v11 = contactCopy;
    v7 = _Block_copy(aBlock);
    v8 = +[IMContactStore IMContactStoreQueue];
    dispatch_sync(v8, v7);

    identifier = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  return identifier;
}

+ (id)companyNameForCNContact:(id)contact
{
  if (contact)
  {
    organizationName = [contact organizationName];
    if ([organizationName length])
    {
      v4 = organizationName;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)nickNameForCNContact:(id)contact
{
  if (contact)
  {
    nickname = [contact nickname];
    if ([nickname length])
    {
      v4 = nickname;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)abbreviatedNameForCNContact:(id)contact
{
  if (contact)
  {
    contactCopy = contact;
    v4 = [objc_opt_class() _stringFromContact:contactCopy withStyle:1000];

    if ([v4 length])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)IDsFromCNContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [IMContactStore phoneNumbersForCNContact:contactCopy];
    if ([v5 count])
    {
      [v4 addObjectsFromArray:v5];
    }

    v6 = [IMContactStore emailsForCNContact:contactCopy];
    if ([v6 count])
    {
      [v4 addObjectsFromArray:v6];
    }

    v7 = [v4 copy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

+ (id)emailsForCNContact:(id)contact
{
  v19 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    emailAddresses = [contactCopy emailAddresses];
    if ([emailAddresses count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = emailAddresses;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            value = [*(*(&v14 + 1) + 8 * i) value];
            if ([value length])
            {
              [v4 addObject:value];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }
    }

    v12 = [v4 copy];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

+ (id)phoneNumbersForCNContact:(id)contact
{
  v21 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    phoneNumbers = [contactCopy phoneNumbers];
    if ([phoneNumbers count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = phoneNumbers;
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            value = [*(*(&v16 + 1) + 8 * i) value];
            stringValue = [value stringValue];

            if ([stringValue length])
            {
              v13 = [IMContactStore validateAndCleanupID:stringValue];
              if ([v13 length])
              {
                [v4 addObject:v13];
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v8);
      }
    }

    v14 = [v4 copy];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (id)getCNIDToHandleIDsMap
{
  if (!self->_CNIDToHandleIDsMap && IMIsRunningInUnitTesting())
  {
    [(IMContactStore *)self generateCNIDToHandleIDMap];
  }

  v3 = [(NSMutableDictionary *)self->_CNIDToHandleIDsMap copy];
  v4 = v3;
  if (v3)
  {
    dictionary = v3;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  v6 = dictionary;

  return v6;
}

- (id)getIDToCNContactMap
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A8601F64;
  v10 = sub_1A86021A0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A86A90C8;
  v5[3] = &unk_1E78282D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)stateDictionaryForDiagnosticsRequest
{
  v15[3] = *MEMORY[0x1E69E9840];
  getIDToCNContactMap = [(IMContactStore *)self getIDToCNContactMap];
  [IMContactStore logDictionary:getIDToCNContactMap checkAdditionalLoggingEnabled:0];

  getHandleIDToCNIDMap = [(IMContactStore *)self getHandleIDToCNIDMap];
  [IMContactStore logDictionary:getHandleIDToCNIDMap checkAdditionalLoggingEnabled:0];

  v14[0] = @"debugDescription";
  v5 = [(IMContactStore *)self debugDescription];
  v15[0] = v5;
  v14[1] = @"IDsObtainedFromDaemon";
  v6 = MEMORY[0x1E696AD98];
  getHandleIDToCNIDMap2 = [(IMContactStore *)self getHandleIDToCNIDMap];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(getHandleIDToCNIDMap2, "count")}];
  v15[1] = v8;
  v14[2] = @"ContactCache";
  v9 = MEMORY[0x1E696AD98];
  getIDToCNContactMap2 = [(IMContactStore *)self getIDToCNContactMap];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(getIDToCNContactMap2, "count")}];
  v15[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

+ (id)createMutableContactWithID:(id)d
{
  v12[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![dCopy length] || (MEMORY[0x1AC570A30](dCopy) & 1) != 0)
  {
    v4 = 0;
    goto LABEL_11;
  }

  v5 = MEMORY[0x1AC570A80](dCopy);
  if ([v5 _appearsToBeEmail])
  {
    v4 = objc_alloc_init(+[IMContactStore IMCNMutableContactClass]);
    v6 = [(objc_class *)+[IMContactStore IMCNLabeledValueClass](IMContactStore labeledValueWithLabel:"labeledValueWithLabel:value:" value:0, v5];
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v4 setEmailAddresses:v7];
  }

  else
  {
    if (![v5 _appearsToBePhoneNumber])
    {
      v4 = 0;
      goto LABEL_10;
    }

    v4 = objc_alloc_init(+[IMContactStore IMCNMutableContactClass]);
    v8 = +[IMContactStore IMCNLabeledValueClass];
    v9 = [(objc_class *)+[IMContactStore IMCNPhoneNumberClass](IMContactStore phoneNumberWithStringValue:"phoneNumberWithStringValue:", v5];
    v6 = [(objc_class *)v8 labeledValueWithLabel:0 value:v9];

    v11 = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [v4 setPhoneNumbers:v7];
  }

LABEL_10:
LABEL_11:

  return v4;
}

+ (id)createMutableContactWithMapURL:(id)l andLocalizedLocationString:(id)string
{
  v11[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  stringCopy = string;
  if ([lCopy length] && objc_msgSend(stringCopy, "length"))
  {
    v7 = objc_alloc_init(MEMORY[0x1E695CF18]);
    lCopy = [(objc_class *)+[IMContactStore IMCNLabeledValueClass](IMContactStore labeledValueWithLabel:"labeledValueWithLabel:value:" value:&stru_1F1BB91F0, lCopy];
    v11[0] = lCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v7 setUrlAddresses:v9];

    [v7 setGivenName:stringCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)predicateForID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([dCopy length])
  {
    v4 = MEMORY[0x1AC570A80](dCopy);
    if (MEMORY[0x1AC570A50]())
    {
      v5 = MEMORY[0x1E695CD58];
      v6 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v4];
      v7 = [v5 predicateForContactsMatchingPhoneNumber:v6];
    }

    else if (IMStringIsEmail())
    {
      v7 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v4];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v10 = 138412290;
          v11 = v4;
          _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Failed to determine handle type for ID %@.", &v10, 0xCu);
        }
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)keysForNicknameHandling
{
  v17 = MEMORY[0x1E695DF70];
  v16 = +[IMContactStore kIMCNContactIdentifierKey];
  v19 = +[IMContactStore kIMCNContactPhoneNumbersKey];
  v18 = +[IMContactStore kIMCNContactEmailAddressesKey];
  v2 = +[IMContactStore kIMCNContactImageDataAvailableKey];
  v3 = +[IMContactStore kIMCNContactImageDataKey];
  v15 = +[IMContactStore kIMCNContactThumbnailImageDataKey];
  v14 = +[IMContactStore kIMCNContactCropRectKey];
  v4 = +[IMContactStore kIMCNContactWallpaperKey];
  v5 = +[IMContactStore kIMCNContactWatchWallpaperImageDataKey];
  v6 = +[IMContactStore kIMCNContactImageBackgroundColorsDataKey];
  v7 = +[IMContactStore kIMCNContactSensitiveContentConfigurationKey];
  v8 = +[IMContactStore kIMCNContactAvatarRecipeDataKey];
  v9 = [v17 arrayWithObjects:{v16, v19, v18, v2, v3, v15, v14, v4, v5, v6, v7, v8, 0}];

  if (+[IMContactStore IMCNContactFormatterClass])
  {
    v10 = [(objc_class *)+[IMContactStore IMCNContactFormatterClass](IMContactStore descriptorForRequiredKeysForStyle:"descriptorForRequiredKeysForStyle:", 0];
    [v9 addObject:v10];
  }

  if (+[IMContactStore IMCNMeCardSharingPickerViewControllerClass])
  {
    descriptorForRequiredKeys = [(objc_class *)+[IMContactStore IMCNMeCardSharingPickerViewControllerClass](IMContactStore descriptorForRequiredKeys];
    [v9 addObject:descriptorForRequiredKeys];
  }

  v12 = [v9 copy];

  return v12;
}

+ (id)dialingCodeForID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![dCopy length] || !objc_msgSend(dCopy, "hasPrefix:", @"+"))
  {
    v7 = 0;
    goto LABEL_13;
  }

  v4 = IMCountryCodeForNumber();
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E695DF58] ITUCountryCodeForISOCountryCode:v4];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v5;
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"+"];
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      stringValue = [v10 stringValue];
      v7 = [v9 stringByAppendingString:stringValue];

      goto LABEL_12;
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = dCopy;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Could not identify an ITU Country code for ID:%@ Country Code:%@.", &v13, 0x16u);
      }
    }
  }

  v7 = 0;
LABEL_12:

LABEL_13:

  return v7;
}

+ (id)dialingForCurrentLocale
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
  v4 = [MEMORY[0x1E695DF58] ITUCountryCodeForISOCountryCode:v3];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"+"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  stringValue = [v6 stringValue];
  v8 = [v5 stringByAppendingString:stringValue];

  return v8;
}

+ (id)IDWithCurrentLocaleITUCode:(id)code
{
  codeCopy = code;
  if ([codeCopy length])
  {
    v4 = IMStripFormattingFromAddress();
    v5 = +[IMContactStore dialingForCurrentLocale];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v5, v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isCNContactAKnownContact:(id)contact
{
  if (contact)
  {
    contactCopy = contact;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = isKindOfClass ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

+ (id)descriptionForCNContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = [IMContactStore fullNameForCNContact:contactCopy];
    v6 = MEMORY[0x1E696AEC0];
    identifier = [contactCopy identifier];
    v4 = [v6 stringWithFormat:@"%@ : %@", v5, identifier];
  }

  else
  {
    v4 = @"Failed to fetch a CNContact from ContactStore. Using placeholder";
  }

  return v4;
}

+ (id)validateAndFilterIDsForContactsBatchFetch:(id)fetch
{
  v18 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  if ([fetchCopy count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fetchCopy, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = fetchCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [IMContactStore validateAndCleanupID:*(*(&v13 + 1) + 8 * i), v13];
          if ([v10 length])
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)validateAndCleanupID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = MEMORY[0x1AC570A80](dCopy);
    v6 = IMStripFormattingFromAddress();

    im_stripCategoryLabel = [v6 im_stripCategoryLabel];

    if ([im_stripCategoryLabel length])
    {
      if (MEMORY[0x1AC570A50](im_stripCategoryLabel) & 1) != 0 || (IMStringIsEmail())
      {
        v8 = 0;
      }

      else
      {
        v8 = MEMORY[0x1AC570A30](im_stripCategoryLabel) ^ 1;
      }

      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v11 = [dCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
      v12 = [v11 length];

      v9 = 0;
      if ((v8 & 1) == 0 && v12)
      {
        v9 = im_stripCategoryLabel;
      }
    }

    else
    {
      v9 = 0;
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)preferCuratedContactFromFetchResults:(id)results
{
  v17 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if ([resultsCopy count] == 1)
  {
    firstObject = [resultsCopy firstObject];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = resultsCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      firstObject = 0;
      v8 = *v13;
LABEL_5:
      v9 = 0;
      v10 = firstObject;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        firstObject = *(*(&v12 + 1) + 8 * v9);

        if (![firstObject isCoreRecentsAccepted])
        {
          break;
        }

        ++v9;
        v10 = firstObject;
        if (v7 == v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

@end