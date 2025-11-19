@interface MFNanoBridgeSettingsManager
+ (id)sharedInstance;
- (BOOL)_alwaysLoadContentDirectly;
- (BOOL)_askBeforeDeleting;
- (BOOL)_cloudNotificationsEnabled;
- (BOOL)_loadRemoteImages;
- (BOOL)_mobileMailAskBeforeDeleting;
- (BOOL)_mobileMailLoadRemoteImages;
- (BOOL)_mobileMailOrganizeByThread;
- (BOOL)_mobileMailPrivacyProtectionEnabled;
- (BOOL)_organizeByThread;
- (BOOL)privacyProtectionEnabled;
- (MFNanoBridgeSettingsManager)init;
- (NSArray)accountIdentities;
- (NSDictionary)standaloneAccountStateByAccountId;
- (NSString)signature;
- (id)_getValueForKey:(id)a3;
- (id)_getValueForKey:(id)a3 perGizmo:(BOOL)a4;
- (id)_includeMailMailbox;
- (id)_includeMailMailboxesFromDisk;
- (id)_loadAccounts;
- (id)_mailboxSelectionFromPreviousOSVersion;
- (id)_mobileMailDefaultAccountId;
- (id)_mobileMailSwipeRightAction;
- (id)_signature;
- (id)_swipeRightAction;
- (id)bridgeSettingsMailboxSelection;
- (id)domainAccessor;
- (id)readFromSharedPreferencesValueForKey:(id)a3;
- (unint64_t)_linesOfPreview;
- (void)_saveValueToSharedPreference:(id)a3 forKey:(id)a4;
- (void)_setDefaultAccountId:(id)a3;
- (void)_setIncludeMailMailboxes:(id)a3;
- (void)_setLinesOfPreview:(unint64_t)a3;
- (void)_setSignature:(id)a3;
- (void)_setSwipeRightAction:(id)a3;
- (void)_setValue:(id)a3 forKey:(id)a4 syncWithClient:(BOOL)a5 perGizmo:(BOOL)a6;
- (void)addSharedSettingsToArray:(id)a3 ifFilterTypes:(unint64_t)a4 containsFilter:(unint64_t)a5;
- (void)notifyMirrorSettingsFromCompanionChanged;
- (void)notifyMobileMailAccountsChanged;
- (void)notifyMobileMailAskBeforeDeletingChanged;
- (void)notifyMobileMailDefaultAccountUidChanged;
- (void)notifyMobileMailLoadRemoteImagesChanged;
- (void)notifyMobileMailOrganizeByThreadChanged;
- (void)notifyMobileMailPrivacyProtectionChanged;
- (void)notifyMobileMailSwipeRightActionChanged;
- (void)registry:(id)a3 didActivate:(id)a4;
- (void)registry:(id)a3 didUnpair:(id)a4;
- (void)reloadCachedAccounts;
- (void)setAccountIdentities:(id)a3;
- (void)setStandaloneAccountStateByAccountId:(id)a3;
- (void)setUpdateMailboxSelection:(id)a3;
- (void)updateSharedPreferences;
@end

@implementation MFNanoBridgeSettingsManager

+ (id)sharedInstance
{
  if (qword_1001859A0 != -1)
  {
    sub_1000D4B88();
  }

  v3 = qword_100185998;

  return v3;
}

- (MFNanoBridgeSettingsManager)init
{
  if (MFDeviceSupportsNanoCompanion())
  {
    v17.receiver = self;
    v17.super_class = MFNanoBridgeSettingsManager;
    v3 = [(MFNanoBridgeSettingsManager *)&v17 init];
    if (v3)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      mailboxUidById = v3->_mailboxUidById;
      v3->_mailboxUidById = v4;

      v6 = objc_alloc_init(NSMutableDictionary);
      accountByMailboxId = v3->_accountByMailboxId;
      v3->_accountByMailboxId = v6;

      v8 = [(MFNanoBridgeSettingsManager *)v3 _loadAccounts];
      activeAccounts = v3->_activeAccounts;
      v3->_activeAccounts = v8;

      v19 = 0;
      v20 = &v19;
      v21 = 0x2050000000;
      v10 = qword_1001859A8;
      v22 = qword_1001859A8;
      if (!qword_1001859A8)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100082E38;
        v18[3] = &unk_100157290;
        v18[4] = &v19;
        sub_100082E38(v18);
        v10 = v20[3];
      }

      v11 = v10;
      _Block_object_dispose(&v19, 8);
      v12 = objc_alloc_init(v10);
      syncManager = v3->_syncManager;
      v3->_syncManager = v12;

      v14 = +[PDRRegistry sharedInstance];
      [v14 addDelegate:v3];

      [(MFNanoBridgeSettingsManager *)v3 updateSharedPreferences];
    }

    self = v3;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)updateSharedPreferences
{
  if ([(MFNanoBridgeSettingsManager *)self mirrorSettingsFromCompanion])
  {

    [(MFNanoBridgeSettingsManager *)self notifyMirrorSettingsFromCompanionChanged];
  }
}

- (id)bridgeSettingsMailboxSelection
{
  v16 = objc_alloc_init(MFBridgeSettingsMailboxSelection);
  v3 = [(MFNanoBridgeSettingsManager *)self includeMailMailboxes];
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(MFNanoBridgeSettingsManager *)self includeMailMailboxes];
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 mailboxId];
          [v4 addObject:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v10;
            v14 = [v13 mailboxFilterType];

            v6 |= v14;
          }

          else
          {
            objc_opt_class();
            v6 |= objc_opt_isKindOfClass() & 1;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(MFBridgeSettingsMailboxSelection *)v16 setInboxesFilterTypes:v6];
  [(MFBridgeSettingsMailboxSelection *)v16 setSelectedMailboxes:v4];

  return v16;
}

- (void)setUpdateMailboxSelection:(id)a3
{
  v14 = a3;
  v15 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v14 mailboxesWithAllMessagesSyncEnabledIds];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_mailboxUidById objectForKeyedSubscript:v8];
        if (v9)
        {
          v10 = [MFNanoBridgeSettingsAccountSpecificMailbox alloc];
          v11 = [(NSMutableDictionary *)self->_accountByMailboxId objectForKeyedSubscript:v8];
          v12 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)v10 initWithMailboxUid:v9 account:v11];

          [v15 addObject:v12];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [v14 aggregatedMailboxesFilterTypes], 2);
  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [v14 aggregatedMailboxesFilterTypes], 4);
  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [v14 aggregatedMailboxesFilterTypes], 8);
  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [v14 aggregatedMailboxesFilterTypes], 16);
  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [v14 aggregatedMailboxesFilterTypes], 32);
  -[MFNanoBridgeSettingsManager addSharedSettingsToArray:ifFilterTypes:containsFilter:](self, "addSharedSettingsToArray:ifFilterTypes:containsFilter:", v15, [v14 aggregatedMailboxesFilterTypes], 64);
  if ([v14 aggregatedMailboxesFilterTypes])
  {
    v13 = [[MFNanoBridgeSettingsUnifiedMailbox alloc] initWithType:7];
    [v15 addObject:v13];
  }

  [(MFNanoBridgeSettingsManager *)self setIncludeMailMailboxes:v15];
}

- (void)addSharedSettingsToArray:(id)a3 ifFilterTypes:(unint64_t)a4 containsFilter:(unint64_t)a5
{
  v8 = a3;
  if ((a5 & a4) != 0)
  {
    v7 = [[MFNanoBridgeSettingsSharedMailbox alloc] initWithType:[MFNanoBridgeSettingsMailbox sourceTypeForMailboxFilterType:a5]];
    [v8 addObject:v7];
  }
}

- (NSDictionary)standaloneAccountStateByAccountId
{
  v2 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:@"kStandaloneAccountStateByAccountIdKey"];
  if (v2)
  {
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v3 = [NSArray arrayWithObjects:&v7 count:3];
    v4 = [NSSet setWithArray:v3, v7, v8];
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v2 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStandaloneAccountStateByAccountId:(id)a3
{
  v4 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [MFNanoBridgeSettingsManager _setValue:"_setValue:forKey:syncWithClient:" forKey:? syncWithClient:?];
}

- (NSArray)accountIdentities
{
  v2 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:@"kAccountIdentitiesKey"];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = qword_1001859B8;
    v13 = qword_1001859B8;
    if (!qword_1001859B8)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000830FC;
      v9[3] = &unk_100157290;
      v9[4] = &v10;
      sub_1000830FC(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v5 = [NSArray arrayWithObjects:v14 count:2];
    v6 = [NSSet setWithArray:v5];
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v6 fromData:v2 error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAccountIdentities:(id)a3
{
  v4 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [MFNanoBridgeSettingsManager _setValue:"_setValue:forKey:syncWithClient:" forKey:? syncWithClient:?];
}

- (NSString)signature
{
  v2 = +[MFNanoBridgeSettingsManager sharedInstance];
  v3 = [v2 htmlSignature];
  v4 = [v3 dataUsingEncoding:4];

  v5 = [NSAttributedString alloc];
  v19[0] = NSDocumentTypeDocumentAttribute;
  v19[1] = NSCharacterEncodingDocumentAttribute;
  v20[0] = NSHTMLTextDocumentType;
  v20[1] = &off_100163508;
  v6 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v18 = 0;
  v7 = [v5 initWithData:v4 options:v6 documentAttributes:0 error:&v18];
  v8 = v18;

  if (v8)
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4B9C(v8, v9);
    }
  }

  v10 = [v7 string];
  v11 = +[NSCharacterSet newlineCharacterSet];
  v12 = [v10 _stringByReplacingCharactersInSet:v11 withCharacter:10];

  if (v12)
  {
    while ([v12 rangeOfString:@"\n\n"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v12 stringByReplacingOccurrencesOfString:@"\n\n" withString:@"\n"];

      v12 = v13;
    }
  }

  v14 = [v12 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  v15 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v16 = [v14 stringByTrimmingCharactersInSet:v15];

  return v16;
}

- (BOOL)privacyProtectionEnabled
{
  v3 = [(MFNanoBridgeSettingsManager *)self mirrorSettingsFromCompanion];
  if (v3)
  {

    LOBYTE(v3) = [(MFNanoBridgeSettingsManager *)self _mobileMailPrivacyProtectionEnabled];
  }

  return v3;
}

- (void)notifyMirrorSettingsFromCompanionChanged
{
  if ([(MFNanoBridgeSettingsManager *)self mirrorSettingsFromCompanion])
  {
    [(MFNanoBridgeSettingsManager *)self notifyMobileMailAskBeforeDeletingChanged];
    [(MFNanoBridgeSettingsManager *)self notifyMobileMailLoadRemoteImagesChanged];
    [(MFNanoBridgeSettingsManager *)self notifyMobileMailPrivacyProtectionChanged];
    [(MFNanoBridgeSettingsManager *)self notifyMobileMailOrganizeByThreadChanged];

    [(MFNanoBridgeSettingsManager *)self notifyMobileMailDefaultAccountUidChanged];
  }

  else
  {

    [(MFNanoBridgeSettingsManager *)self notifyMobileMailPrivacyProtectionChanged];
  }
}

- (void)notifyMobileMailAskBeforeDeletingChanged
{
  v3 = [(MFNanoBridgeSettingsManager *)self _mobileMailAskBeforeDeleting];

  [(MFNanoBridgeSettingsManager *)self _setAskBeforeDeleting:v3];
}

- (void)notifyMobileMailLoadRemoteImagesChanged
{
  v3 = [(MFNanoBridgeSettingsManager *)self _mobileMailLoadRemoteImages];

  [(MFNanoBridgeSettingsManager *)self _setLoadRemoteImages:v3];
}

- (void)notifyMobileMailPrivacyProtectionChanged
{
  v3 = [(MFNanoBridgeSettingsManager *)self privacyProtectionEnabled];

  [(MFNanoBridgeSettingsManager *)self _setPrivacyProtectionEnabled:v3];
}

- (void)notifyMobileMailOrganizeByThreadChanged
{
  v3 = [(MFNanoBridgeSettingsManager *)self _mobileMailOrganizeByThread];

  [(MFNanoBridgeSettingsManager *)self _setOrganizeByThread:v3];
}

- (void)notifyMobileMailSwipeRightActionChanged
{
  v3 = [(MFNanoBridgeSettingsManager *)self _mobileMailSwipeRightAction];
  [(MFNanoBridgeSettingsManager *)self _setSwipeRightAction:?];
}

- (void)notifyMobileMailDefaultAccountUidChanged
{
  v3 = [(MFNanoBridgeSettingsManager *)self _mobileMailDefaultAccountId];
  [(MFNanoBridgeSettingsManager *)self _setDefaultAccountId:?];
}

- (void)notifyMobileMailAccountsChanged
{
  v17 = self->_activeAccounts;
  v3 = [(MFNanoBridgeSettingsManager *)self _loadAccounts];
  activeAccounts = self->_activeAccounts;
  self->_activeAccounts = v3;

  v16 = [(MFNanoBridgeSettingsManager *)self includeMailMailboxes];
  v5 = [NSMutableSet setWithArray:?];
  v6 = [[MFNanoBridgeSettingsUnifiedMailbox alloc] initWithType:7];
  v7 = [v5 containsObject:v6];
  if ([(NSArray *)self->_activeAccounts count]< 2 || [(NSArray *)v17 count]!= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = [MailAccount nano_bridgeSettingsInboxesFromAccounts:self->_activeAccounts];
    [v5 addObjectsFromArray:v14];

    goto LABEL_18;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v16;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          if (!(([v13 type] != 7) | v7 & 1))
          {
            [v5 addObject:v6];
            LOBYTE(v7) = 1;
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if (v7)
  {
    goto LABEL_17;
  }

LABEL_18:
  v15 = [v5 allObjects];
  [(MFNanoBridgeSettingsManager *)self _setIncludeMailMailboxes:v15];
}

- (void)reloadCachedAccounts
{
  +[MailAccount reloadAccounts];
  v3 = [(MFNanoBridgeSettingsManager *)self _loadAccounts];
  activeAccounts = self->_activeAccounts;
  self->_activeAccounts = v3;
}

- (id)_includeMailMailbox
{
  v19 = [(MFNanoBridgeSettingsManager *)self _mailboxSelectionFromPreviousOSVersion];
  if (v19)
  {
    v2 = MFLogGeneral();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#Nano Mailbox selection list is from legacy OS. %{public}@", buf, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0;
    }

    else
    {
      v26 = v19;
      v20 = [NSArray arrayWithObjects:&v26 count:1];
      [(MFNanoBridgeSettingsManager *)self _setIncludeMailMailboxes:?];
    }
  }

  else
  {
    v20 = [(MFNanoBridgeSettingsManager *)self _includeMailMailboxesFromDisk];
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#Nano Mailbox selection list read from disk. %{public}@", buf, 0xCu);
    }
  }

  v4 = +[MailAccount nano_activeMailAccounts];
  v5 = 0;
  if ([v4 count] && v20)
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v20 count]);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v20;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v8)
    {
      goto LABEL_27;
    }

    v9 = *v22;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v4 count] > 1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if ([v11 isValid])
          {
LABEL_21:
            [v6 addObject:v11];
            goto LABEL_25;
          }

          v12 = MFLogGeneral();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v28 = v11;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Nano Mailbox no longer available. Ignoring. %{public}@", buf, 0xCu);
          }
        }

LABEL_25:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v8)
      {
LABEL_27:

        v5 = v6;
        break;
      }
    }
  }

  if ([v5 count])
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#Nano Mailbox selection list validated. %{public}@", buf, 0xCu);
    }

    v14 = v5;
  }

  else
  {
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#Nano Mailbox selection list does not exist. Creating default seletion", buf, 2u);
    }

    v16 = +[MFNanoBridgeSettingsMailbox defaultSelectedMailboxes];
    v14 = [v16 mutableCopy];

    if ([v14 count])
    {
      [(MFNanoBridgeSettingsManager *)self _setIncludeMailMailboxes:v14];
    }
  }

  return v14;
}

- (unint64_t)_linesOfPreview
{
  v3 = sub_10007FBAC();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 unsignedIntegerValue];
LABEL_8:

      return v5;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_1001859D0;
  v14 = qword_1001859D0;
  if (!qword_1001859D0)
  {
    v7 = sub_1000831E0();
    v12[3] = dlsym(v7, "NanoMailDefaultLinesOfPreview");
    qword_1001859D0 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v5 = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"NSUInteger getNanoMailDefaultLinesOfPreview(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)_askBeforeDeleting
{
  v3 = sub_10007FF1C();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 BOOLValue];
LABEL_8:

      return v5 & 1;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_1001859E0;
  v14 = qword_1001859E0;
  if (!qword_1001859E0)
  {
    v7 = sub_1000831E0();
    v12[3] = dlsym(v7, "NanoMailDefaultAskBeforeDeleting");
    qword_1001859E0 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v5 = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"BOOL getNanoMailDefaultAskBeforeDeleting(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)_loadRemoteImages
{
  v3 = sub_10008028C();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 BOOLValue];
LABEL_8:

      return v5 & 1;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_1001859F0;
  v14 = qword_1001859F0;
  if (!qword_1001859F0)
  {
    v7 = sub_1000831E0();
    v12[3] = dlsym(v7, "NanoMailDefaultLoadRemoteImages");
    qword_1001859F0 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v5 = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"BOOL getNanoMailDefaultLoadRemoteImages(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)_organizeByThread
{
  v3 = sub_1000805FC();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 BOOLValue];
LABEL_8:

      return v5 & 1;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_100185A00;
  v14 = qword_100185A00;
  if (!qword_100185A00)
  {
    v7 = sub_1000831E0();
    v12[3] = dlsym(v7, "NanoMailDefaultOrganizeByThread");
    qword_100185A00 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v5 = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"BOOL getNanoMailDefaultOrganizeByThread(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (id)_swipeRightAction
{
  v3 = sub_100080958();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3 perGizmo:0];

  v5 = v4;
  if (!v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v6 = qword_100185A10;
    v15 = qword_100185A10;
    if (!qword_100185A10)
    {
      v7 = sub_1000831E0();
      v13[3] = dlsym(v7, "NanoMailDefaultSwipeRightAction");
      qword_100185A10 = v13[3];
      v6 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v6)
    {
      v10 = +[NSAssertionHandler currentHandler];
      v11 = [NSString stringWithUTF8String:"NSString *getNanoMailDefaultSwipeRightAction(void)"];
      [v10 handleFailureInFunction:v11 file:@"MFNanoBridgeSettingsManager.m" lineNumber:43 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v5 = *v6;
  }

  v8 = v5;

  return v8;
}

- (id)_signature
{
  v3 = sub_100080DD4();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v6 = qword_100185A20;
    v23 = qword_100185A20;
    if (!qword_100185A20)
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100083734;
      v18 = &unk_100157290;
      v19 = &v20;
      sub_100083734(&v15);
      v6 = v21[3];
    }

    v7 = v6;
    _Block_object_dispose(&v20, 8);
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v9 = qword_100185A28;
    v23 = qword_100185A28;
    if (!qword_100185A28)
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100083818;
      v18 = &unk_100157290;
      v19 = &v20;
      v10 = sub_1000831E0();
      v11 = dlsym(v10, "NanoMailDefaultSignatureLocalizationKey");
      *(v19[1] + 24) = v11;
      qword_100185A28 = *(v19[1] + 24);
      v9 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v9)
    {
      v13 = +[NSAssertionHandler currentHandler];
      v14 = [NSString stringWithUTF8String:"NSString *getNanoMailDefaultSignatureLocalizationKey(void)"];
      [v13 handleFailureInFunction:v14 file:@"MFNanoBridgeSettingsManager.m" lineNumber:49 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v5 = [v8 localizedStringForKey:*v9 value:&stru_10015BEC8 table:@"NanoMailKit"];
  }

  return v5;
}

- (BOOL)_alwaysLoadContentDirectly
{
  v3 = sub_100081144();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 BOOLValue];
LABEL_8:

      return v5 & 1;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_100185A38;
  v14 = qword_100185A38;
  if (!qword_100185A38)
  {
    v7 = sub_1000831E0();
    v12[3] = dlsym(v7, "NanoMailDefaultAlwaysLoadContentDirectly");
    qword_100185A38 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v5 = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"BOOL getNanoMailDefaultAlwaysLoadContentDirectly(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:52 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (BOOL)_cloudNotificationsEnabled
{
  v3 = sub_1000814B8();
  v4 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:v3 perGizmo:0];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 BOOLValue];
LABEL_8:

      return v5 & 1;
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = qword_100185A48;
  v14 = qword_100185A48;
  if (!qword_100185A48)
  {
    v7 = sub_1000831E0();
    v12[3] = dlsym(v7, "NanoMailDefaultCloudNotificationsEnabled");
    qword_100185A48 = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v5 = *v6;
    goto LABEL_8;
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"BOOL getNanoMailDefaultCloudNotificationsEnabled(void)"];
  [v9 handleFailureInFunction:v10 file:@"MFNanoBridgeSettingsManager.m" lineNumber:46 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)_setIncludeMailMailboxes:(id)a3
{
  v4 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [MFNanoBridgeSettingsManager _setValue:"_setValue:forKey:syncWithClient:" forKey:? syncWithClient:?];
}

- (id)_includeMailMailboxesFromDisk
{
  v2 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:@"kIncludeMailBoxesKey"];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v2 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_mailboxSelectionFromPreviousOSVersion
{
  v3 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:@"NanoMailIncludeMail"];
  if (v3)
  {
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
    [(MFNanoBridgeSettingsManager *)self _setValue:0 forKey:@"NanoMailIncludeMail" syncWithClient:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setLinesOfPreview:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = sub_10007FBAC();
  [(MFNanoBridgeSettingsManager *)self _setValue:v5 forKey:v4 syncWithClient:1];
}

- (void)_setSwipeRightAction:(id)a3
{
  v5 = a3;
  v4 = sub_100080958();
  [(MFNanoBridgeSettingsManager *)self _setValue:v5 forKey:v4 syncWithClient:1 perGizmo:0];
}

- (void)_setSignature:(id)a3
{
  v5 = a3;
  v4 = sub_100080DD4();
  [(MFNanoBridgeSettingsManager *)self _setValue:v5 forKey:v4 syncWithClient:1];
}

- (void)_setDefaultAccountId:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = qword_100185A58;
  v12 = qword_100185A58;
  if (!qword_100185A58)
  {
    v6 = sub_1000831E0();
    v10[3] = dlsym(v6, "NanoMailDefaultAccountUidKey");
    qword_100185A58 = v10[3];
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v5)
  {
    [(MFNanoBridgeSettingsManager *)self _setValue:v4 forKey:*v5 syncWithClient:1];
  }

  else
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"NSString *getNanoMailDefaultAccountUidKey(void)"];
    [v7 handleFailureInFunction:v8 file:@"MFNanoMailSoftLinking.h" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (BOOL)_mobileMailAskBeforeDeleting
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 objectForKey:@"ShowMessageDeleteConfirmation"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_mobileMailLoadRemoteImages
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 integerForKey:EMUserDefaultLoadRemoteContentKey];

  return (v3 & 2) == 0;
}

- (BOOL)_mobileMailPrivacyProtectionEnabled
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 integerForKey:EMUserDefaultLoadRemoteContentKey];

  return (~v3 & 0xC) != 0;
}

- (BOOL)_mobileMailOrganizeByThread
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 objectForKey:@"DisableThreading"];

  if (v3)
  {
    v4 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (id)_mobileMailSwipeRightAction
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 objectForKey:@"LeftEdgeSwipeAction"];

  return v3;
}

- (id)_mobileMailDefaultAccountId
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 objectForKey:MailDefaultSendingAccountKey];

  if (!v3)
  {
    v4 = +[MailAccount defaultMailAccountForDelivery];
    v3 = [v4 uniqueID];
  }

  return v3;
}

- (id)_getValueForKey:(id)a3
{
  v3 = [(MFNanoBridgeSettingsManager *)self _getValueForKey:a3 perGizmo:1];

  return v3;
}

- (id)_getValueForKey:(id)a3 perGizmo:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [(MFNanoBridgeSettingsManager *)self domainAccessor];
    v8 = [v7 synchronize];

    v9 = [(MFNanoBridgeSettingsManager *)self domainAccessor];
    v10 = [v9 objectForKey:v6];
  }

  else
  {
    v10 = [(MFNanoBridgeSettingsManager *)self readFromSharedPreferencesValueForKey:v6];
  }

  return v10;
}

- (void)_setValue:(id)a3 forKey:(id)a4 syncWithClient:(BOOL)a5 perGizmo:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(MFNanoBridgeSettingsManager *)self readFromSharedPreferencesValueForKey:v11];
  [(MFNanoBridgeSettingsManager *)self _saveValueToSharedPreference:v10 forKey:v11];
  if (v6)
  {
    v13 = [(MFNanoBridgeSettingsManager *)self domainAccessor];
    v14 = [v13 objectForKey:v11];

    if (([v14 isEqual:v10] & 1) == 0)
    {
      v15 = [(MFNanoBridgeSettingsManager *)self domainAccessor];
      [v15 setObject:v10 forKey:v11];

      v16 = [(MFNanoBridgeSettingsManager *)self domainAccessor];
      v17 = [v16 synchronize];

      if (v7)
      {
        syncManager = self->_syncManager;
        v19 = [NSSet setWithObject:v11];
        [(NPSManager *)syncManager synchronizeNanoDomain:@"com.apple.NanoMail" keys:v19];
      }
    }
  }

  else
  {
    if (([v12 isEqual:v10] | !v7))
    {
      goto LABEL_8;
    }

    v20 = self->_syncManager;
    v14 = [NSSet setWithObject:v11];
    [(NPSManager *)v20 synchronizeUserDefaultsDomain:@"com.apple.NanoMail" keys:v14];
  }

LABEL_8:
  v21 = sub_1000805FC();
  if ([v11 isEqualToString:v21])
  {
  }

  else
  {
    v22 = [v11 isEqualToString:@"kIncludeMailBoxesKey"];

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v23 = MFUserAgent();
  v24 = [v23 isMaild];

  if (v24)
  {
    v25 = MFLogGeneral();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D4C14(v11, v25);
    }

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 postNotificationName:@"MailDefaultsChangedNotification" object:v11 userInfo:0];
  }

  else
  {
    v27 = MFLogGeneral();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      v30 = v11;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#Nano Posting Darwin Notification Bridge Setting has Changed for key: %@", &v29, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"MFNanoMailImportantBridgeSettingHasChangedDarwinNotification", 0, 0, 1u);
  }

LABEL_18:
}

- (void)_saveValueToSharedPreference:(id)a3 forKey:(id)a4
{
  value = a3;
  v5 = a4;
  CFPreferencesSetValue(v5, value, @"com.apple.NanoMail", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(@"com.apple.NanoMail", kCFPreferencesCurrentUser, kCFPreferencesAnyApplication);
}

- (id)readFromSharedPreferencesValueForKey:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, @"com.apple.NanoMail", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v3;
}

- (void)registry:(id)a3 didUnpair:(id)a4
{
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = 0;
}

- (void)registry:(id)a3 didActivate:(id)a4
{
  domainAccessor = self->_domainAccessor;
  self->_domainAccessor = 0;

  [(MFNanoBridgeSettingsManager *)self updateSharedPreferences];
}

- (id)_loadAccounts
{
  [(NSMutableDictionary *)self->_mailboxUidById removeAllObjects];
  v14 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = +[MailAccount activeAccounts];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v15 = *v22;
    do
    {
      v16 = v4;
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v14 addObject:v6];
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v7 = [v6 allMailboxUids];
          v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v8)
          {
            v9 = *v18;
            do
            {
              for (j = 0; j != v8; j = j + 1)
              {
                if (*v18 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v17 + 1) + 8 * j);
                v12 = [v11 nano_mailboxId];
                if (v12)
                {
                  [(NSMutableDictionary *)self->_accountByMailboxId setObject:v6 forKeyedSubscript:v12];
                  [(NSMutableDictionary *)self->_mailboxUidById setObject:v11 forKeyedSubscript:v12];
                }
              }

              v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v8);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  return v14;
}

- (id)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = qword_100185A60;
    v13 = qword_100185A60;
    if (!qword_100185A60)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100083A48;
      v9[3] = &unk_100157290;
      v9[4] = &v10;
      sub_100083A48(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [[v4 alloc] initWithDomain:@"com.apple.NanoMail"];
    v7 = self->_domainAccessor;
    self->_domainAccessor = v6;

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

@end