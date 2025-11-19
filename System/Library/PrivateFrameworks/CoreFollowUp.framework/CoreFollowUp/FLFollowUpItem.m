@interface FLFollowUpItem
+ (id)_expirationDateFormatter;
+ (int64_t)_daysRemaining:(id)a3 ceiling:(BOOL)a4;
- (BOOL)_shouldAdjustInstanceToMidnight;
- (BOOL)displayExpirationDate;
- (BOOL)isExpired;
- (BOOL)isHSA2LoginItem;
- (BOOL)isHSA2PasswordResetItem;
- (FLFollowUpItem)init;
- (FLFollowUpItem)initWithCoder:(id)a3;
- (FLFollowUpItem)initWithoutDefaults;
- (NSData)_userInfoData;
- (id)_informativeNotificationTextOrDate;
- (id)_midnightAdjustedDate;
- (id)_priorityFlagString;
- (id)_styleFlagsString;
- (id)description;
- (id)formattedExpirationDate;
- (void)encodeWithCoder:(id)a3;
- (void)setShowInSettings:(BOOL)a3;
- (void)setTargetBundleIdentifier:(id)a3;
- (void)set_userInfoData:(id)a3;
@end

@implementation FLFollowUpItem

- (FLFollowUpItem)initWithoutDefaults
{
  v3.receiver = self;
  v3.super_class = FLFollowUpItem;
  return [(FLFollowUpItem *)&v3 init];
}

- (BOOL)isHSA2LoginItem
{
  v2 = [(FLFollowUpItem *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"FLHSA2LoginNotification"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isHSA2PasswordResetItem
{
  v2 = [(FLFollowUpItem *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"FLHSA2PasswordResetNotification"];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (id)_expirationDateFormatter
{
  if (_expirationDateFormatter_onceToken != -1)
  {
    +[FLFollowUpItem _expirationDateFormatter];
  }

  v3 = _expirationDateFormatter_formatter;

  return v3;
}

uint64_t __42__FLFollowUpItem__expirationDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _expirationDateFormatter_formatter;
  _expirationDateFormatter_formatter = v0;

  [_expirationDateFormatter_formatter setTimeStyle:0];
  v2 = _expirationDateFormatter_formatter;

  return [v2 setDateStyle:2];
}

- (FLFollowUpItem)init
{
  v9.receiver = self;
  v9.super_class = FLFollowUpItem;
  v2 = [(FLFollowUpItem *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_showInSettings = 1;
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    uniqueIdentifier = v3->_uniqueIdentifier;
    v3->_uniqueIdentifier = v5;

    groupIdentifier = v3->_groupIdentifier;
    v3->_groupIdentifier = @"com.apple.followup.group.device";

    objc_storeStrong(&v3->_targetBundleIdentifier, @"com.apple.Preferences");
    objc_storeStrong(&v3->_categoryIdentifier, @"com.apple.followupd.FLDefaultCategory");
  }

  return v3;
}

- (void)setTargetBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  targetBundleIdentifier = self->_targetBundleIdentifier;
  self->_targetBundleIdentifier = v5;

  v7 = [v4 isEqualToString:@"com.apple.Preferences"];
  self->_showInSettings = v7;
}

- (void)setShowInSettings:(BOOL)a3
{
  self->_showInSettings = a3;
  if (a3)
  {
    v4 = @"com.apple.Preferences";
    targetBundleIdentifier = self->_targetBundleIdentifier;
    self->_targetBundleIdentifier = &v4->isa;
  }

  else
  {
    v6 = self->_targetBundleIdentifier;
    self->_targetBundleIdentifier = 0;
  }

  MEMORY[0x2821F96F8]();
}

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:uniqueIdentifier forKey:@"_uniqueIdentifier"];
  [v5 encodeObject:self->_notification forKey:@"_notification"];
  [v5 encodeBool:self->_showInSettings forKey:@"_showInSettings"];
  [v5 encodeObject:self->_title forKey:@"_title"];
  [v5 encodeObject:self->_informativeText forKey:@"_informativeText"];
  [v5 encodeInteger:self->_displayStyle forKey:@"_displayStyle"];
  [v5 encodeBool:self->_shouldPersistWhenActivated forKey:@"_shouldPersistWhenActivated"];
  [v5 encodeBool:self->_shouldPersistWhenDismissed forKey:@"_shouldPersistWhenDismissed"];
  [v5 encodeObject:self->_actions forKey:@"_actions"];
  [v5 encodeObject:self->_userInfo forKey:@"_userInfo"];
  [v5 encodeInteger:self->_sqlID forKey:@"_sqlID"];
  [v5 encodeObject:self->_clientIdentifier forKey:@"_clientIdentifier"];
  [v5 encodeObject:self->_delegateMachServiceName forKey:@"_delegateMachServiceName"];
  [v5 encodeObject:self->_extensionIdentifier forKey:@"_extensionIdentifier"];
  [v5 encodeObject:self->_groupIdentifier forKey:@"_groupIdentifier"];
  [v5 encodeObject:self->_collectionIdentifier forKey:@"_collectionIdentifier"];
  [v5 encodeObject:self->_targetBundleIdentifier forKey:@"_targetBundleIdentifier"];
  [v5 encodeObject:self->_representingBundlePath forKey:@"_representingBundlePath"];
  [v5 encodeObject:self->_bundleIconName forKey:@"_bundleIconName"];
  [v5 encodeObject:self->_informativeFooterText forKey:@"_informativeFooterText"];
  [v5 encodeObject:self->_categoryIdentifier forKey:@"_categoryIdentifier"];
  [v5 encodeObject:self->_expirationDate forKey:@"_expirationDate"];
  [v5 encodeObject:self->_accountIdentifier forKey:@"_accountIdentifier"];
  [v5 encodeObject:self->_typeIdentifier forKey:@"_typeIdentifier"];
}

- (FLFollowUpItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FLFollowUpItem *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_notification"];
    notification = v5->_notification;
    v5->_notification = v8;

    v5->_showInSettings = [v4 decodeBoolForKey:@"_showInSettings"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v12;

    v5->_displayStyle = [v4 decodeIntegerForKey:@"_displayStyle"];
    v5->_shouldPersistWhenActivated = [v4 decodeBoolForKey:@"_shouldPersistWhenActivated"];
    v5->_shouldPersistWhenDismissed = [v4 decodeBoolForKey:@"_shouldPersistWhenDismissed"];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_actions"];
    actions = v5->_actions;
    v5->_actions = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v19 setWithObjects:{v20, v21, v22, v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v25;

    v5->_sqlID = [v4 decodeIntegerForKey:@"_sqlID"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_delegateMachServiceName"];
    delegateMachServiceName = v5->_delegateMachServiceName;
    v5->_delegateMachServiceName = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_extensionIdentifier"];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_collectionIdentifier"];
    collectionIdentifier = v5->_collectionIdentifier;
    v5->_collectionIdentifier = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_targetBundleIdentifier"];
    targetBundleIdentifier = v5->_targetBundleIdentifier;
    v5->_targetBundleIdentifier = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_representingBundlePath"];
    representingBundlePath = v5->_representingBundlePath;
    v5->_representingBundlePath = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIconName"];
    bundleIconName = v5->_bundleIconName;
    v5->_bundleIconName = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_informativeFooterText"];
    informativeFooterText = v5->_informativeFooterText;
    v5->_informativeFooterText = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_categoryIdentifier"];
    categoryIdentifier = v5->_categoryIdentifier;
    v5->_categoryIdentifier = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_typeIdentifier"];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = v51;
  }

  return v5;
}

- (NSData)_userInfoData
{
  v3 = [(FLFollowUpItem *)self userInfo];

  if (v3)
  {
    v4 = MEMORY[0x277CCAC58];
    v5 = [(FLFollowUpItem *)self userInfo];
    v9 = 0;
    v3 = [v4 dataWithPropertyList:v5 format:200 options:0 error:&v9];
    v6 = v9;

    if (!v3)
    {
      v7 = _FLLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [FLFollowUpAction _userInfoData];
      }
    }
  }

  return v3;
}

- (void)set_userInfoData:(id)a3
{
  if (a3)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:&v8];
    v5 = v8;
    [(FLFollowUpItem *)self setUserInfo:v4];

    v6 = [(FLFollowUpItem *)self userInfo];

    if (!v6)
    {
      v7 = _FLLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [FLFollowUpAction set_userInfoData:];
      }
    }
  }
}

- (BOOL)_shouldAdjustInstanceToMidnight
{
  v2 = [(FLFollowUpItem *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"FLUserInfoPropertyAdjustExpirationToMidnight"];

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

- (id)_midnightAdjustedDate
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = self->_expirationDate;
  v4 = [(FLFollowUpItem *)self expirationDate];
  if (v4 && [(FLFollowUpItem *)self _shouldAdjustInstanceToMidnight])
  {
    v5 = +[FLEnvironment currentEnvironment];
    v6 = [v5 normalizeExpirationToMidnight];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEA80] currentCalendar];
      v8 = [(FLFollowUpItem *)self expirationDate];
      v9 = [v7 components:30 fromDate:v8];

      v10 = [v7 dateWithEra:objc_msgSend(v9 year:"era") month:objc_msgSend(v9 day:"year") hour:objc_msgSend(v9 minute:"month") second:objc_msgSend(v9 nanosecond:{"day"), 23, 59, 0, 0}];

      if (!v10)
      {
        v11 = _FLLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          expirationDate = self->_expirationDate;
          *buf = 138412802;
          v16 = v9;
          v17 = 2112;
          v18 = v7;
          v19 = 2112;
          v20 = expirationDate;
          _os_log_error_impl(&dword_22E696000, v11, OS_LOG_TYPE_ERROR, "Could not build midnight adjusted date with comoponents %@ from calendar %@, reverting to expiration date as is %@", buf, 0x20u);
        }

        v10 = self->_expirationDate;
      }

      v3 = v10;
    }
  }

  else
  {
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isExpired
{
  v2 = [(FLFollowUpItem *)self _midnightAdjustedDate];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [v2 compare:v3] == -1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)displayExpirationDate
{
  v3 = [(FLFollowUpItem *)self expirationDate];

  v6 = [(FLFollowUpItem *)self userInfo];
  v4 = [v6 objectForKeyedSubscript:@"FLUserInfoPropertyDontDisplayDate"];

  objc_opt_class();
  v5 = objc_opt_isKindOfClass() ^ 1;
  LOBYTE(v6) = v5 & (v3 != 0);
  if ((v5 & 1) == 0 && v3)
  {
    LODWORD(v6) = [v4 BOOLValue] ^ 1;
  }

  return v6;
}

- (id)formattedExpirationDate
{
  v3 = [(FLFollowUpItem *)self _midnightAdjustedDate];
  if (!v3)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v4 = [(FLFollowUpItem *)self userInfo];
  v5 = [v4 objectForKeyedSubscript:@"FLUserInfoPropertyAbsoluteFormat"];

  v6 = [(FLFollowUpItem *)self userInfo];
  v7 = [v6 objectForKeyedSubscript:@"FLUserInfoPropertyRelativeZeroDay"];

  v8 = [(FLFollowUpItem *)self userInfo];
  v9 = [v8 objectForKeyedSubscript:@"FLUserInfoPropertyRelativeSingleDay"];

  v10 = [(FLFollowUpItem *)self userInfo];
  v11 = [v10 objectForKeyedSubscript:@"FLUserInfoPropertyRelativePluralDaysFormat"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(FLFollowUpItem *)self userInfo];
      v13 = [v12 objectForKeyedSubscript:@"FLUserInfoPropertyRelativeIsCeiling"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 BOOLValue];
      }

      else
      {
        v14 = 0;
      }

      v21 = [FLFollowUpItem _daysRemaining:v3 ceiling:v14];
      if (v21 == 1)
      {
        v16 = v9;
        goto LABEL_17;
      }

      if (!v21)
      {
        v16 = v7;
        goto LABEL_17;
      }

      v22 = MEMORY[0x277CCACA8];
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
      [v22 localizedStringWithFormat:v11, v20];
      v17 = LABEL_19:;

      goto LABEL_20;
    }
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v18 = +[FLFollowUpItem _expirationDateFormatter];
    v13 = [v18 stringFromDate:v3];

    v19 = MEMORY[0x277CCACA8];
    v20 = FLLoc(@"ITEM_EXPIRATION_FORMAT");
    [v19 localizedStringWithFormat:v20, v13];
    goto LABEL_19;
  }

  v15 = +[FLFollowUpItem _expirationDateFormatter];
  v13 = [v15 stringFromDate:v3];

  v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v5, v13];
LABEL_17:
  v17 = v16;
LABEL_20:

LABEL_21:

  return v17;
}

- (id)_informativeNotificationTextOrDate
{
  v3 = [(FLFollowUpItem *)self notification];
  v4 = [v3 informativeText];

  v5 = [(FLFollowUpItem *)self notification];
  v6 = [v5 informativeText];
  v7 = v6;
  if (!v6)
  {
    v6 = &stru_284330A78;
  }

  if ([(__CFString *)v6 isEqualToString:?])
  {
    v8 = [(FLFollowUpItem *)self displayExpirationDate];

    if (!v8)
    {
      goto LABEL_8;
    }

    [(FLFollowUpItem *)self formattedExpirationDate];
    v4 = v5 = v4;
  }

  else
  {
  }

LABEL_8:

  return v4;
}

+ (int64_t)_daysRemaining:(id)a3 ceiling:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[FLEnvironment currentEnvironment];
  [v6 oneDayTimeInterval];
  v8 = v7;

  [v5 timeIntervalSinceNow];
  v10 = v9;

  v11 = ceil(v10 / v8);
  v12 = floor(v10 / v8);
  if (v4)
  {
    return v11;
  }

  return v12;
}

- (id)description
{
  v24 = MEMORY[0x277CCACA8];
  v3 = [objc_opt_class() description];
  uniqueIdentifier = self->_uniqueIdentifier;
  v23 = v3;
  groupIdentifier = self->_groupIdentifier;
  clientIdentifier = self->_clientIdentifier;
  typeIdentifier = self->_typeIdentifier;
  accountIdentifier = self->_accountIdentifier;
  targetBundleIdentifier = self->_targetBundleIdentifier;
  title = self->_title;
  actions = self->_actions;
  notification = self->_notification;
  collectionIdentifier = self->_collectionIdentifier;
  representingBundlePath = self->_representingBundlePath;
  bundleIconName = self->_bundleIconName;
  informativeFooterText = self->_informativeFooterText;
  categoryIdentifier = self->_categoryIdentifier;
  extensionIdentifier = self->_extensionIdentifier;
  v11 = [(FLFollowUpItem *)self _styleFlagsString];
  v12 = [(FLFollowUpItem *)self _priorityFlagString];
  v13 = [v24 stringWithFormat:@"<%@: %p - UID:%@\nEID:%@\nTBI:%@\nClientID:%@\nGID:%@\nCollection:%@\nAccountID:%@\nTypeID:%@\ntitle:%@\nactions:%@\nnotification:%@\nrepresentingBundlePath:%@\nbundleIconName:%@\ninformativeFooterText:%@\nCategoryID:%@\nStyle:%@\nPriority:%@\nExpires:%@", v23, self, uniqueIdentifier, extensionIdentifier, targetBundleIdentifier, clientIdentifier, groupIdentifier, collectionIdentifier, accountIdentifier, typeIdentifier, title, actions, notification, representingBundlePath, bundleIconName, informativeFooterText, categoryIdentifier, v11, v12, self->_expirationDate];

  return v13;
}

- (id)_styleFlagsString
{
  [(FLFollowUpItem *)self displayStyle];
  v3 = MEMORY[0x277CCACA8];
  if (([(FLFollowUpItem *)self displayStyle]& 0x10) != 0)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (([(FLFollowUpItem *)self displayStyle]& 8) != 0)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (([(FLFollowUpItem *)self displayStyle]& 2) != 0)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [v3 stringWithFormat:@"omit badge: %@, badge only: %@, zero action: %@", v4, v5, v6];
}

- (id)_priorityFlagString
{
  if (([(FLFollowUpItem *)self displayStyle]& 1) != 0)
  {
    return @"High";
  }

  if (([(FLFollowUpItem *)self displayStyle]& 4) != 0)
  {
    return @"Critical";
  }

  return @"Default";
}

@end