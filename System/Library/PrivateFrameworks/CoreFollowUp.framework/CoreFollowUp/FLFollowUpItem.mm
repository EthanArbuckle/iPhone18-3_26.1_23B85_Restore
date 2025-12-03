@interface FLFollowUpItem
+ (id)_expirationDateFormatter;
+ (int64_t)_daysRemaining:(id)remaining ceiling:(BOOL)ceiling;
- (BOOL)_shouldAdjustInstanceToMidnight;
- (BOOL)displayExpirationDate;
- (BOOL)isExpired;
- (BOOL)isHSA2LoginItem;
- (BOOL)isHSA2PasswordResetItem;
- (FLFollowUpItem)init;
- (FLFollowUpItem)initWithCoder:(id)coder;
- (FLFollowUpItem)initWithoutDefaults;
- (NSData)_userInfoData;
- (id)_informativeNotificationTextOrDate;
- (id)_midnightAdjustedDate;
- (id)_priorityFlagString;
- (id)_styleFlagsString;
- (id)description;
- (id)formattedExpirationDate;
- (void)encodeWithCoder:(id)coder;
- (void)setShowInSettings:(BOOL)settings;
- (void)setTargetBundleIdentifier:(id)identifier;
- (void)set_userInfoData:(id)data;
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
  userInfo = [(FLFollowUpItem *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"FLHSA2LoginNotification"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isHSA2PasswordResetItem
{
  userInfo = [(FLFollowUpItem *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"FLHSA2PasswordResetNotification"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uniqueIdentifier = v3->_uniqueIdentifier;
    v3->_uniqueIdentifier = uUIDString;

    groupIdentifier = v3->_groupIdentifier;
    v3->_groupIdentifier = @"com.apple.followup.group.device";

    objc_storeStrong(&v3->_targetBundleIdentifier, @"com.apple.Preferences");
    objc_storeStrong(&v3->_categoryIdentifier, @"com.apple.followupd.FLDefaultCategory");
  }

  return v3;
}

- (void)setTargetBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy copy];
  targetBundleIdentifier = self->_targetBundleIdentifier;
  self->_targetBundleIdentifier = v5;

  v7 = [identifierCopy isEqualToString:@"com.apple.Preferences"];
  self->_showInSettings = v7;
}

- (void)setShowInSettings:(BOOL)settings
{
  self->_showInSettings = settings;
  if (settings)
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

- (void)encodeWithCoder:(id)coder
{
  uniqueIdentifier = self->_uniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueIdentifier forKey:@"_uniqueIdentifier"];
  [coderCopy encodeObject:self->_notification forKey:@"_notification"];
  [coderCopy encodeBool:self->_showInSettings forKey:@"_showInSettings"];
  [coderCopy encodeObject:self->_title forKey:@"_title"];
  [coderCopy encodeObject:self->_informativeText forKey:@"_informativeText"];
  [coderCopy encodeInteger:self->_displayStyle forKey:@"_displayStyle"];
  [coderCopy encodeBool:self->_shouldPersistWhenActivated forKey:@"_shouldPersistWhenActivated"];
  [coderCopy encodeBool:self->_shouldPersistWhenDismissed forKey:@"_shouldPersistWhenDismissed"];
  [coderCopy encodeObject:self->_actions forKey:@"_actions"];
  [coderCopy encodeObject:self->_userInfo forKey:@"_userInfo"];
  [coderCopy encodeInteger:self->_sqlID forKey:@"_sqlID"];
  [coderCopy encodeObject:self->_clientIdentifier forKey:@"_clientIdentifier"];
  [coderCopy encodeObject:self->_delegateMachServiceName forKey:@"_delegateMachServiceName"];
  [coderCopy encodeObject:self->_extensionIdentifier forKey:@"_extensionIdentifier"];
  [coderCopy encodeObject:self->_groupIdentifier forKey:@"_groupIdentifier"];
  [coderCopy encodeObject:self->_collectionIdentifier forKey:@"_collectionIdentifier"];
  [coderCopy encodeObject:self->_targetBundleIdentifier forKey:@"_targetBundleIdentifier"];
  [coderCopy encodeObject:self->_representingBundlePath forKey:@"_representingBundlePath"];
  [coderCopy encodeObject:self->_bundleIconName forKey:@"_bundleIconName"];
  [coderCopy encodeObject:self->_informativeFooterText forKey:@"_informativeFooterText"];
  [coderCopy encodeObject:self->_categoryIdentifier forKey:@"_categoryIdentifier"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"_expirationDate"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"_accountIdentifier"];
  [coderCopy encodeObject:self->_typeIdentifier forKey:@"_typeIdentifier"];
}

- (FLFollowUpItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FLFollowUpItem *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_notification"];
    notification = v5->_notification;
    v5->_notification = v8;

    v5->_showInSettings = [coderCopy decodeBoolForKey:@"_showInSettings"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v12;

    v5->_displayStyle = [coderCopy decodeIntegerForKey:@"_displayStyle"];
    v5->_shouldPersistWhenActivated = [coderCopy decodeBoolForKey:@"_shouldPersistWhenActivated"];
    v5->_shouldPersistWhenDismissed = [coderCopy decodeBoolForKey:@"_shouldPersistWhenDismissed"];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"_actions"];
    actions = v5->_actions;
    v5->_actions = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v19 setWithObjects:{v20, v21, v22, v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v25;

    v5->_sqlID = [coderCopy decodeIntegerForKey:@"_sqlID"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_delegateMachServiceName"];
    delegateMachServiceName = v5->_delegateMachServiceName;
    v5->_delegateMachServiceName = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionIdentifier"];
    extensionIdentifier = v5->_extensionIdentifier;
    v5->_extensionIdentifier = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_collectionIdentifier"];
    collectionIdentifier = v5->_collectionIdentifier;
    v5->_collectionIdentifier = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_targetBundleIdentifier"];
    targetBundleIdentifier = v5->_targetBundleIdentifier;
    v5->_targetBundleIdentifier = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_representingBundlePath"];
    representingBundlePath = v5->_representingBundlePath;
    v5->_representingBundlePath = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIconName"];
    bundleIconName = v5->_bundleIconName;
    v5->_bundleIconName = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_informativeFooterText"];
    informativeFooterText = v5->_informativeFooterText;
    v5->_informativeFooterText = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_categoryIdentifier"];
    categoryIdentifier = v5->_categoryIdentifier;
    v5->_categoryIdentifier = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_typeIdentifier"];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = v51;
  }

  return v5;
}

- (NSData)_userInfoData
{
  userInfo = [(FLFollowUpItem *)self userInfo];

  if (userInfo)
  {
    v4 = MEMORY[0x277CCAC58];
    userInfo2 = [(FLFollowUpItem *)self userInfo];
    v9 = 0;
    userInfo = [v4 dataWithPropertyList:userInfo2 format:200 options:0 error:&v9];
    v6 = v9;

    if (!userInfo)
    {
      v7 = _FLLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [FLFollowUpAction _userInfoData];
      }
    }
  }

  return userInfo;
}

- (void)set_userInfoData:(id)data
{
  if (data)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:&v8];
    v5 = v8;
    [(FLFollowUpItem *)self setUserInfo:v4];

    userInfo = [(FLFollowUpItem *)self userInfo];

    if (!userInfo)
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
  userInfo = [(FLFollowUpItem *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"FLUserInfoPropertyAdjustExpirationToMidnight"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_midnightAdjustedDate
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = self->_expirationDate;
  expirationDate = [(FLFollowUpItem *)self expirationDate];
  if (expirationDate && [(FLFollowUpItem *)self _shouldAdjustInstanceToMidnight])
  {
    v5 = +[FLEnvironment currentEnvironment];
    normalizeExpirationToMidnight = [v5 normalizeExpirationToMidnight];

    if (normalizeExpirationToMidnight)
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      expirationDate2 = [(FLFollowUpItem *)self expirationDate];
      v9 = [currentCalendar components:30 fromDate:expirationDate2];

      v10 = [currentCalendar dateWithEra:objc_msgSend(v9 year:"era") month:objc_msgSend(v9 day:"year") hour:objc_msgSend(v9 minute:"month") second:objc_msgSend(v9 nanosecond:{"day"), 23, 59, 0, 0}];

      if (!v10)
      {
        v11 = _FLLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          expirationDate = self->_expirationDate;
          *buf = 138412802;
          v16 = v9;
          v17 = 2112;
          v18 = currentCalendar;
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
  _midnightAdjustedDate = [(FLFollowUpItem *)self _midnightAdjustedDate];
  if (_midnightAdjustedDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v4 = [_midnightAdjustedDate compare:date] == -1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)displayExpirationDate
{
  expirationDate = [(FLFollowUpItem *)self expirationDate];

  userInfo = [(FLFollowUpItem *)self userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"FLUserInfoPropertyDontDisplayDate"];

  objc_opt_class();
  v5 = objc_opt_isKindOfClass() ^ 1;
  LOBYTE(userInfo) = v5 & (expirationDate != 0);
  if ((v5 & 1) == 0 && expirationDate)
  {
    LODWORD(userInfo) = [v4 BOOLValue] ^ 1;
  }

  return userInfo;
}

- (id)formattedExpirationDate
{
  _midnightAdjustedDate = [(FLFollowUpItem *)self _midnightAdjustedDate];
  if (!_midnightAdjustedDate)
  {
    v17 = 0;
    goto LABEL_21;
  }

  userInfo = [(FLFollowUpItem *)self userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"FLUserInfoPropertyAbsoluteFormat"];

  userInfo2 = [(FLFollowUpItem *)self userInfo];
  v7 = [userInfo2 objectForKeyedSubscript:@"FLUserInfoPropertyRelativeZeroDay"];

  userInfo3 = [(FLFollowUpItem *)self userInfo];
  v9 = [userInfo3 objectForKeyedSubscript:@"FLUserInfoPropertyRelativeSingleDay"];

  userInfo4 = [(FLFollowUpItem *)self userInfo];
  v11 = [userInfo4 objectForKeyedSubscript:@"FLUserInfoPropertyRelativePluralDaysFormat"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      userInfo5 = [(FLFollowUpItem *)self userInfo];
      v13 = [userInfo5 objectForKeyedSubscript:@"FLUserInfoPropertyRelativeIsCeiling"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v13 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v21 = [FLFollowUpItem _daysRemaining:_midnightAdjustedDate ceiling:bOOLValue];
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
    v13 = [v18 stringFromDate:_midnightAdjustedDate];

    v19 = MEMORY[0x277CCACA8];
    v20 = FLLoc(@"ITEM_EXPIRATION_FORMAT");
    [v19 localizedStringWithFormat:v20, v13];
    goto LABEL_19;
  }

  v15 = +[FLFollowUpItem _expirationDateFormatter];
  v13 = [v15 stringFromDate:_midnightAdjustedDate];

  v16 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v5, v13];
LABEL_17:
  v17 = v16;
LABEL_20:

LABEL_21:

  return v17;
}

- (id)_informativeNotificationTextOrDate
{
  notification = [(FLFollowUpItem *)self notification];
  informativeText = [notification informativeText];

  notification2 = [(FLFollowUpItem *)self notification];
  informativeText2 = [notification2 informativeText];
  v7 = informativeText2;
  if (!informativeText2)
  {
    informativeText2 = &stru_284330A78;
  }

  if ([(__CFString *)informativeText2 isEqualToString:?])
  {
    displayExpirationDate = [(FLFollowUpItem *)self displayExpirationDate];

    if (!displayExpirationDate)
    {
      goto LABEL_8;
    }

    [(FLFollowUpItem *)self formattedExpirationDate];
    informativeText = notification2 = informativeText;
  }

  else
  {
  }

LABEL_8:

  return informativeText;
}

+ (int64_t)_daysRemaining:(id)remaining ceiling:(BOOL)ceiling
{
  ceilingCopy = ceiling;
  remainingCopy = remaining;
  v6 = +[FLEnvironment currentEnvironment];
  [v6 oneDayTimeInterval];
  v8 = v7;

  [remainingCopy timeIntervalSinceNow];
  v10 = v9;

  v11 = ceil(v10 / v8);
  v12 = floor(v10 / v8);
  if (ceilingCopy)
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
  _styleFlagsString = [(FLFollowUpItem *)self _styleFlagsString];
  _priorityFlagString = [(FLFollowUpItem *)self _priorityFlagString];
  v13 = [v24 stringWithFormat:@"<%@: %p - UID:%@\nEID:%@\nTBI:%@\nClientID:%@\nGID:%@\nCollection:%@\nAccountID:%@\nTypeID:%@\ntitle:%@\nactions:%@\nnotification:%@\nrepresentingBundlePath:%@\nbundleIconName:%@\ninformativeFooterText:%@\nCategoryID:%@\nStyle:%@\nPriority:%@\nExpires:%@", v23, self, uniqueIdentifier, extensionIdentifier, targetBundleIdentifier, clientIdentifier, groupIdentifier, collectionIdentifier, accountIdentifier, typeIdentifier, title, actions, notification, representingBundlePath, bundleIconName, informativeFooterText, categoryIdentifier, _styleFlagsString, _priorityFlagString, self->_expirationDate];

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