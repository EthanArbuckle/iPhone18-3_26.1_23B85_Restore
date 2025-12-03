@interface PKDiscoveryNotification
- (BOOL)isEqualForDisplayToNotification:(id)notification;
- (PKDiscoveryNotification)initWithCoder:(id)coder;
- (PKDiscoveryNotification)initWithDictionary:(id)dictionary;
- (id)description;
- (int64_t)passQualifier;
- (void)encodeWithCoder:(id)coder;
- (void)localizeWithBundle:(id)bundle;
- (void)scheduleDeliveryForCurrentDate:(id)date;
- (void)updateForRuleResult:(BOOL)result;
- (void)updateWithNotification:(id)notification;
@end

@implementation PKDiscoveryNotification

- (PKDiscoveryNotification)initWithDictionary:(id)dictionary
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = PKDiscoveryNotification;
  v5 = [(PKDiscoveryObject *)&v27 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = [dictionaryCopy PKStringForKey:@"action"];
  if ([@"none" isEqualToString:v6])
  {
    v7 = 1;
  }

  else if ([@"pass" isEqualToString:v6])
  {
    v7 = 2;
  }

  else if ([@"passDetails" isEqualToString:v6])
  {
    v7 = 3;
  }

  else if ([@"openURL" isEqualToString:v6])
  {
    v7 = 4;
  }

  else
  {
    if (([@"discoveryCard" isEqualToString:v6] & 1) == 0)
    {

      v5->_actionType = 0;
      v17 = PKLogFacilityTypeGetObject(0x11uLL);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v26 = objc_opt_class();
      *buf = 138412546;
      v29 = v26;
      v30 = 2112;
      v31 = v6;
      v22 = v26;
      _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "%@: Unknown action type in initWithDictionary: %@", buf, 0x16u);
LABEL_19:

LABEL_20:
      v21 = 0;
      goto LABEL_21;
    }

    v7 = 5;
  }

  v5->_actionType = v7;
  v8 = [dictionaryCopy PKStringForKey:@"titleKey"];
  titleKey = v5->_titleKey;
  v5->_titleKey = v8;

  v10 = [dictionaryCopy PKStringForKey:@"messageKey"];
  messageKey = v5->_messageKey;
  v5->_messageKey = v10;

  v12 = [dictionaryCopy PKStringForKey:@"actionTitleKey"];
  actionTitleKey = v5->_actionTitleKey;
  v5->_actionTitleKey = v12;

  v14 = [dictionaryCopy PKDictionaryForKey:@"actionInfo"];
  actionInfo = v5->_actionInfo;
  v5->_actionInfo = v14;

  relevantDateRange = [(PKDiscoveryObject *)v5 relevantDateRange];
  v17 = relevantDateRange;
  if (!relevantDateRange || ([relevantDateRange startDate], (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v19 = v18, [v17 endDate], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, !v20))
  {
    v22 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      *buf = 138412546;
      v29 = v23;
      v30 = 2112;
      v31 = v5;
      v24 = v23;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "%@: Invalid PKDiscoveryNotification doesn't have relevant date range: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_16:
  v21 = v5;
LABEL_21:

  return v21;
}

- (int64_t)passQualifier
{
  v2 = [(NSDictionary *)self->_actionInfo PKStringForKey:@"passQualifier"];
  v3 = v2;
  if (v2)
  {
    v4 = PKDiscoveryPassQualifierFromString(v2);
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)localizeWithBundle:(id)bundle
{
  titleKey = self->_titleKey;
  bundleCopy = bundle;
  v6 = [bundleCopy localizedStringForKey:titleKey value:&stru_1F227FD28 table:@"localizable"];
  localizedTitle = self->_localizedTitle;
  self->_localizedTitle = v6;

  v8 = [bundleCopy localizedStringForKey:self->_messageKey value:&stru_1F227FD28 table:@"localizable"];
  localizedMessage = self->_localizedMessage;
  self->_localizedMessage = v8;

  v10 = [bundleCopy localizedStringForKey:self->_actionTitleKey value:&stru_1F227FD28 table:@"localizable"];

  localizedActionTitle = self->_localizedActionTitle;
  self->_localizedActionTitle = v10;
}

- (void)updateWithNotification:(id)notification
{
  v28 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v23.receiver = self;
  v23.super_class = PKDiscoveryNotification;
  if ([(PKDiscoveryObject *)&v23 updateWithDiscoveryObject:notificationCopy])
  {
    self->_actionType = [notificationCopy actionType];
    titleKey = [notificationCopy titleKey];
    titleKey = self->_titleKey;
    self->_titleKey = titleKey;

    messageKey = [notificationCopy messageKey];
    messageKey = self->_messageKey;
    self->_messageKey = messageKey;

    actionTitleKey = [notificationCopy actionTitleKey];
    actionTitleKey = self->_actionTitleKey;
    self->_actionTitleKey = actionTitleKey;

    actionInfo = [notificationCopy actionInfo];
    v12 = [actionInfo copy];
    actionInfo = self->_actionInfo;
    self->_actionInfo = v12;

    relevantDateRange = [(PKDiscoveryObject *)self relevantDateRange];
    v15 = relevantDateRange;
    if (!relevantDateRange || ([relevantDateRange startDate], (v16 = objc_claimAutoreleasedReturnValue()) == 0) || (v17 = v16, objc_msgSend(v15, "endDate"), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18))
    {
      v19 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        *buf = 138412546;
        v25 = v20;
        v26 = 2112;
        selfCopy = self;
        v21 = v20;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "%@: Invalid PKDiscoveryNotification doesn't have relevant date range: %@", buf, 0x16u);
      }
    }

    if (!self->_delivered && self->_scheduledDeliveryDate && ([v15 isValidForTime:?] & 1) == 0)
    {
      scheduledDeliveryDate = self->_scheduledDeliveryDate;
      self->_scheduledDeliveryDate = 0;
    }
  }
}

- (void)scheduleDeliveryForCurrentDate:(id)date
{
  dateCopy = date;
  relevantDateRange = [(PKDiscoveryObject *)self relevantDateRange];
  startDate = [relevantDateRange startDate];
  if ([dateCopy compare:startDate] == 1)
  {
    v6 = dateCopy;
  }

  else
  {
    v6 = startDate;
  }

  v7 = v6;
  endDate = [relevantDateRange endDate];
  [endDate timeIntervalSinceReferenceDate];
  v10 = v9;
  [v7 timeIntervalSinceReferenceDate];
  v12 = v10 - v11;

  v13 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v7 sinceDate:arc4random_uniform(v12)];

  scheduledDeliveryDate = self->_scheduledDeliveryDate;
  self->_scheduledDeliveryDate = v13;
}

- (void)updateForRuleResult:(BOOL)result
{
  resultCopy = result;
  v20 = *MEMORY[0x1E69E9840];
  if ([(PKDiscoveryObject *)self isTerminalStatus])
  {
    v5 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(PKDiscoveryObject *)self identifier];
      v12 = 138412290;
      v13 = identifier;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Discovery Notification with identifier: %@ is in terminal state and won't be updated based on rule result", &v12, 0xCu);
    }
  }

  else
  {
    if (resultCopy)
    {
      v7 = 2;
    }

    else
    {
      [(PKDiscoveryNotification *)self setScheduledDeliveryDate:0];
      v7 = 6;
    }

    v8 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [(PKDiscoveryObject *)self identifier];
      status = [(PKDiscoveryObject *)self status];
      v11 = "NO";
      v12 = 138413058;
      v13 = identifier2;
      v14 = 2048;
      if (resultCopy)
      {
        v11 = "YES";
      }

      v15 = status;
      v16 = 2048;
      v17 = v7;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Updating status of Discovery Notification with identifier: %@ from %ld to %ld for result %s", &v12, 0x2Au);
    }

    [(PKDiscoveryObject *)self setStatus:v7];
  }
}

- (BOOL)isEqualForDisplayToNotification:(id)notification
{
  notificationCopy = notification;
  identifier = [(PKDiscoveryObject *)self identifier];
  identifier2 = [notificationCopy identifier];
  if ([identifier isEqualToString:identifier2] && (v7 = -[PKDiscoveryObject version](self, "version"), v7 == objc_msgSend(notificationCopy, "version")) && (actionType = self->_actionType, actionType == objc_msgSend(notificationCopy, "actionType")))
  {
    actionInfo = self->_actionInfo;
    actionInfo = [notificationCopy actionInfo];
    if ([(NSDictionary *)actionInfo isEqualToDictionary:actionInfo])
    {
      localizedTitle = self->_localizedTitle;
      localizedTitle = [notificationCopy localizedTitle];
      if ([(NSString *)localizedTitle isEqualToString:localizedTitle])
      {
        localizedMessage = self->_localizedMessage;
        localizedMessage = [notificationCopy localizedMessage];
        if ([(NSString *)localizedMessage isEqualToString:localizedMessage])
        {
          localizedActionTitle = self->_localizedActionTitle;
          localizedActionTitle = [notificationCopy localizedActionTitle];
          v17 = [(NSString *)localizedActionTitle isEqualToString:localizedActionTitle];
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (PKDiscoveryNotification)initWithCoder:(id)coder
{
  v27[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = PKDiscoveryNotification;
  v5 = [(PKDiscoveryObject *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_actionType = [coderCopy decodeIntForKey:@"action"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleKey"];
    titleKey = v5->_titleKey;
    v5->_titleKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageKey"];
    messageKey = v5->_messageKey;
    v5->_messageKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionTitleKey"];
    actionTitleKey = v5->_actionTitleKey;
    v5->_actionTitleKey = v10;

    v12 = objc_alloc(MEMORY[0x1E695DFD8]);
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v14 = [v12 initWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"actionInfo"];
    actionInfo = v5->_actionInfo;
    v5->_actionInfo = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduledDeliveryDate"];
    scheduledDeliveryDate = v5->_scheduledDeliveryDate;
    v5->_scheduledDeliveryDate = v17;

    v5->_delivered = [coderCopy decodeBoolForKey:@"delivered"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedMessage"];
    localizedMessage = v5->_localizedMessage;
    v5->_localizedMessage = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedActionTitle"];
    localizedActionTitle = v5->_localizedActionTitle;
    v5->_localizedActionTitle = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKDiscoveryNotification;
  coderCopy = coder;
  [(PKDiscoveryObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_actionType forKey:{@"action", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_titleKey forKey:@"titleKey"];
  [coderCopy encodeObject:self->_messageKey forKey:@"messageKey"];
  [coderCopy encodeObject:self->_actionTitleKey forKey:@"actionTitleKey"];
  [coderCopy encodeObject:self->_actionInfo forKey:@"actionInfo"];
  [coderCopy encodeObject:self->_scheduledDeliveryDate forKey:@"delivered"];
  [coderCopy encodeBool:self->_delivered forKey:@"delivered"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedMessage forKey:@"localizedMessage"];
  [coderCopy encodeObject:self->_localizedActionTitle forKey:@"localizedActionTitle"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v9.receiver = self;
  v9.super_class = PKDiscoveryNotification;
  v4 = [(PKDiscoveryObject *)&v9 description];
  [v3 appendFormat:@" %@ ", v4];

  v5 = self->_actionType - 1;
  if (v5 > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79CA248[v5];
  }

  [v3 appendFormat:@"%@: '%@'; ", @"action", v6];
  [v3 appendFormat:@"%@: '%@'; ", @"titleKey", self->_titleKey];
  [v3 appendFormat:@"%@: '%@'; ", @"messageKey", self->_messageKey];
  [v3 appendFormat:@"%@: '%@'; ", @"actionTitleKey", self->_actionTitleKey];
  [v3 appendFormat:@"%@: '%@'; ", @"actionInfo", self->_actionInfo];
  [v3 appendFormat:@"%@: '%@'; ", @"scheduledDeliveryDate", self->_scheduledDeliveryDate];
  if (self->_delivered)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"delivered", v7];
  [v3 appendFormat:@"%@: '%@'; ", @"localizedTitle", self->_localizedTitle];
  [v3 appendFormat:@"%@: '%@'; ", @"localizedMessage", self->_localizedMessage];
  [v3 appendFormat:@"%@: '%@'; ", @"localizedActionTitle", self->_localizedActionTitle];
  [v3 appendFormat:@">"];

  return v3;
}

@end