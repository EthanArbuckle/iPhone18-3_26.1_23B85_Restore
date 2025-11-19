@interface PKDiscoveryEngagementMessage
- (BOOL)isEqual:(id)a3;
- (PKDiscoveryEngagementMessage)initWithCoder:(id)a3;
- (PKDiscoveryEngagementMessage)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)localizeWithBundle:(id)a3;
- (void)updateForRuleResult:(BOOL)a3;
- (void)updateWithDiscoveryEngagementMessage:(id)a3;
@end

@implementation PKDiscoveryEngagementMessage

- (PKDiscoveryEngagementMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKDiscoveryEngagementMessage;
  v5 = [(PKDiscoveryObject *)&v19 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"type"];
    if ([v6 isEqualToString:@"promotion"])
    {
      v7 = 2;
    }

    else if ([v6 isEqualToString:@"feature"])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:@"welcome"])
    {
      v7 = 0;
    }

    else if ([v6 isEqualToString:@"accountStatus"])
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v5->_type = v7;
    v8 = [v4 PKStringForKey:@"passQualifier"];
    v5->_passQualifier = PKDiscoveryPassQualifierFromString(v8);

    v9 = [v4 PKStringForKey:@"titleKey"];
    titleKey = v5->_titleKey;
    v5->_titleKey = v9;

    v11 = [v4 PKStringForKey:@"messageKey"];
    messageKey = v5->_messageKey;
    v5->_messageKey = v11;

    v13 = [v4 PKDictionaryForKey:@"iconURLs"];
    iconURLs = v5->_iconURLs;
    v5->_iconURLs = v13;

    v5->_reportIdentifierToAggd = [v4 PKBoolForKey:@"canReportIdentifier"];
    v15 = [v4 PKDictionaryForKey:@"action"];
    if (v15)
    {
      v16 = [[PKDiscoveryEngagementMessageAction alloc] initWithDictionary:v15];
      action = v5->_action;
      v5->_action = v16;
    }
  }

  return v5;
}

- (void)localizeWithBundle:(id)a3
{
  titleKey = self->_titleKey;
  v9 = a3;
  v5 = [v9 localizedStringForKey:titleKey value:&stru_1F227FD28 table:@"localizable"];
  localizedTitle = self->_localizedTitle;
  self->_localizedTitle = v5;

  v7 = [v9 localizedStringForKey:self->_messageKey value:&stru_1F227FD28 table:@"localizable"];
  localizedMessage = self->_localizedMessage;
  self->_localizedMessage = v7;

  [(PKDiscoveryEngagementMessageAction *)self->_action localizeWithBundle:v9];
}

- (void)updateWithDiscoveryEngagementMessage:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKDiscoveryEngagementMessage;
  if ([(PKDiscoveryObject *)&v13 updateWithDiscoveryObject:v4])
  {
    self->_type = [v4 type];
    self->_passQualifier = [v4 passQualifier];
    v5 = [v4 titleKey];
    titleKey = self->_titleKey;
    self->_titleKey = v5;

    v7 = [v4 messageKey];
    messageKey = self->_messageKey;
    self->_messageKey = v7;

    v9 = [v4 iconURLs];
    iconURLs = self->_iconURLs;
    self->_iconURLs = v9;

    v11 = [v4 action];
    action = self->_action;
    self->_action = v11;

    self->_reportIdentifierToAggd = [v4 canReportIdentifierToAggd];
  }
}

- (void)updateForRuleResult:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  if ([(PKDiscoveryObject *)self isTerminalStatus])
  {
    v5 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PKDiscoveryObject *)self identifier];
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Discovery Message with identifier: %@ is in terminal state and won't be updated based on rule result", &v12, 0xCu);
    }
  }

  else
  {
    if (v3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 6;
    }

    v8 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PKDiscoveryObject *)self identifier];
      v10 = [(PKDiscoveryObject *)self status];
      v11 = "NO";
      v12 = 138413058;
      v13 = v9;
      v14 = 2048;
      if (v3)
      {
        v11 = "YES";
      }

      v15 = v10;
      v16 = 2048;
      v17 = v7;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Updating status of Discovery Message with identifier: %@ from %ld to %ld for result %s", &v12, 0x2Au);
    }

    [(PKDiscoveryObject *)self setStatus:v7];
  }
}

- (PKDiscoveryEngagementMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PKDiscoveryEngagementMessage;
  v5 = [(PKDiscoveryObject *)&v22 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_passQualifier = [v4 decodeIntegerForKey:@"passQualifier"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleKey"];
    titleKey = v5->_titleKey;
    v5->_titleKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messageKey"];
    messageKey = v5->_messageKey;
    v5->_messageKey = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"iconURLs"];
    iconURLs = v5->_iconURLs;
    v5->_iconURLs = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v15;

    v5->_reportIdentifierToAggd = [v4 decodeBoolForKey:@"canReportIdentifier"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedMessage"];
    localizedMessage = v5->_localizedMessage;
    v5->_localizedMessage = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKDiscoveryEngagementMessage;
  v4 = a3;
  [(PKDiscoveryObject *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_passQualifier forKey:@"passQualifier"];
  [v4 encodeObject:self->_titleKey forKey:@"titleKey"];
  [v4 encodeObject:self->_messageKey forKey:@"messageKey"];
  [v4 encodeObject:self->_iconURLs forKey:@"iconURLs"];
  [v4 encodeObject:self->_action forKey:@"action"];
  [v4 encodeBool:self->_reportIdentifierToAggd forKey:@"canReportIdentifier"];
  [v4 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [v4 encodeObject:self->_localizedMessage forKey:@"localizedMessage"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19.receiver = self;
  v19.super_class = PKDiscoveryEngagementMessage;
  v5 = [(PKDiscoveryObject *)&v19 copyWithZone:?];
  v5[13] = self->_type;
  v5[14] = self->_passQualifier;
  v6 = [(NSString *)self->_titleKey copyWithZone:a3];
  v7 = v5[15];
  v5[15] = v6;

  v8 = [(NSString *)self->_messageKey copyWithZone:a3];
  v9 = v5[16];
  v5[16] = v8;

  v10 = [(NSDictionary *)self->_iconURLs copyWithZone:a3];
  v11 = v5[17];
  v5[17] = v10;

  v12 = [(PKDiscoveryEngagementMessageAction *)self->_action copyWithZone:a3];
  v13 = v5[18];
  v5[18] = v12;

  *(v5 + 96) = self->_reportIdentifierToAggd;
  v14 = [(NSString *)self->_localizedTitle copyWithZone:a3];
  v15 = v5[19];
  v5[19] = v14;

  v16 = [(NSString *)self->_localizedMessage copyWithZone:a3];
  v17 = v5[20];
  v5[20] = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKDiscoveryEngagementMessage;
  if (![(PKDiscoveryObject *)&v20 isEqual:v4])
  {
    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_type != v4[13] || self->_passQualifier != v4[14])
  {
    goto LABEL_36;
  }

  titleKey = self->_titleKey;
  v6 = v4[15];
  if (titleKey)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (titleKey != v6)
    {
      goto LABEL_36;
    }
  }

  else if (([(NSString *)titleKey isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

  messageKey = self->_messageKey;
  v9 = v4[16];
  if (messageKey && v9)
  {
    if (([(NSString *)messageKey isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (messageKey != v9)
  {
    goto LABEL_36;
  }

  iconURLs = self->_iconURLs;
  v11 = v4[17];
  if (iconURLs && v11)
  {
    if (([(NSDictionary *)iconURLs isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (iconURLs != v11)
  {
    goto LABEL_36;
  }

  action = self->_action;
  v13 = v4[18];
  if (action && v13)
  {
    if (![(PKDiscoveryEngagementMessageAction *)action isEqual:?])
    {
      goto LABEL_36;
    }
  }

  else if (action != v13)
  {
    goto LABEL_36;
  }

  if (self->_reportIdentifierToAggd != *(v4 + 96))
  {
    goto LABEL_36;
  }

  localizedTitle = self->_localizedTitle;
  v15 = v4[19];
  if (!localizedTitle || !v15)
  {
    if (localizedTitle == v15)
    {
      goto LABEL_32;
    }

LABEL_36:
    v18 = 0;
    goto LABEL_37;
  }

  if (([(NSString *)localizedTitle isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  localizedMessage = self->_localizedMessage;
  v17 = v4[20];
  if (localizedMessage && v17)
  {
    v18 = [(NSString *)localizedMessage isEqual:?];
  }

  else
  {
    v18 = localizedMessage == v17;
  }

LABEL_37:

  return v18;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = PKDiscoveryEngagementMessage;
  v3 = [(PKDiscoveryObject *)&v10 hash];
  v4 = [MEMORY[0x1E695DF70] array];
  [v4 safelyAddObject:self->_titleKey];
  [v4 safelyAddObject:self->_messageKey];
  [v4 safelyAddObject:self->_iconURLs];
  [v4 safelyAddObject:self->_action];
  [v4 safelyAddObject:self->_localizedTitle];
  [v4 safelyAddObject:self->_localizedMessage];
  v5 = PKCombinedHash(v3, v4);
  v6 = self->_type - v5 + 32 * v5;
  v7 = self->_passQualifier - v6 + 32 * v6;
  v8 = self->_reportIdentifierToAggd - v7 + 32 * v7;

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v9.receiver = self;
  v9.super_class = PKDiscoveryEngagementMessage;
  v4 = [(PKDiscoveryObject *)&v9 description];
  [v3 appendFormat:@" %@ ", v4];

  type = self->_type;
  if (type > 3)
  {
    v6 = @"unkown";
  }

  else
  {
    v6 = off_1E79CCA80[type];
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  [v3 appendFormat:@"passQualifier: '%ld'; ", self->_passQualifier];
  [v3 appendFormat:@"titleKey: '%@'; ", self->_titleKey];
  [v3 appendFormat:@"messageKey: '%@'; ", self->_messageKey];
  [v3 appendFormat:@"iconURLs: '%@'; ", self->_iconURLs];
  [v3 appendFormat:@"action: '%@'; ", self->_action];
  [v3 appendFormat:@"title: '%@'; ", self->_localizedTitle];
  [v3 appendFormat:@"message: '%@'; ", self->_localizedMessage];
  if (self->_reportIdentifierToAggd)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"canReportIdentifier: '%@'; ", v7];
  [v3 appendFormat:@">"];

  return v3;
}

@end