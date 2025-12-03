@interface PKDiscoveryEngagementMessageAction
- (BOOL)isEqual:(id)equal;
- (PKDiscoveryEngagementMessageAction)initWithCoder:(id)coder;
- (PKDiscoveryEngagementMessageAction)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)localizeWithBundle:(id)bundle;
@end

@implementation PKDiscoveryEngagementMessageAction

- (PKDiscoveryEngagementMessageAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKDiscoveryEngagementMessageAction;
  v5 = [(PKDiscoveryEngagementMessageAction *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"titleKey"];
    titleKey = v5->_titleKey;
    v5->_titleKey = v6;

    v8 = [dictionaryCopy PKStringForKey:@"type"];
    if ([@"passDetails" isEqualToString:v8])
    {
      v9 = 1;
    }

    else if ([@"openURL" isEqualToString:v8])
    {
      v9 = 2;
    }

    else if ([@"cardNumbers" isEqualToString:v8])
    {
      v9 = 3;
    }

    else if ([@"setDefaultWallet" isEqualToString:v8])
    {
      v9 = 4;
    }

    else if ([@"setDefaultApple" isEqualToString:v8])
    {
      v9 = 5;
    }

    else if ([@"setDefaultWalletAndApple" isEqualToString:v8])
    {
      v9 = 6;
    }

    else
    {
      v9 = 0;
    }

    v5->_type = v9;
    v10 = [dictionaryCopy PKDictionaryForKey:@"actionInfo"];
    actionInfo = v5->_actionInfo;
    v5->_actionInfo = v10;
  }

  return v5;
}

- (void)localizeWithBundle:(id)bundle
{
  v4 = [bundle localizedStringForKey:self->_titleKey value:&stru_1F227FD28 table:@"localizable"];
  localizedTitle = self->_localizedTitle;
  self->_localizedTitle = v4;
}

- (PKDiscoveryEngagementMessageAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKDiscoveryEngagementMessageAction;
  v5 = [(PKDiscoveryEngagementMessageAction *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleKey"];
    titleKey = v5->_titleKey;
    v5->_titleKey = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"actionInfo"];
    actionInfo = v5->_actionInfo;
    v5->_actionInfo = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  titleKey = self->_titleKey;
  coderCopy = coder;
  [coderCopy encodeObject:titleKey forKey:@"titleKey"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_actionInfo forKey:@"actionInfo"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKDiscoveryEngagementMessageAction allocWithZone:](PKDiscoveryEngagementMessageAction init];
  v6 = [(NSString *)self->_titleKey copyWithZone:zone];
  titleKey = v5->_titleKey;
  v5->_titleKey = v6;

  v5->_type = self->_type;
  v8 = [(NSDictionary *)self->_actionInfo copyWithZone:zone];
  actionInfo = v5->_actionInfo;
  v5->_actionInfo = v8;

  v10 = [(NSString *)self->_localizedTitle copyWithZone:zone];
  localizedTitle = v5->_localizedTitle;
  v5->_localizedTitle = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  titleKey = self->_titleKey;
  v6 = equalCopy[1];
  if (titleKey && v6)
  {
    if (([(NSString *)titleKey isEqual:?]& 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (titleKey != v6)
  {
    goto LABEL_15;
  }

  if (self->_type != equalCopy[2])
  {
    goto LABEL_15;
  }

  actionInfo = self->_actionInfo;
  v8 = equalCopy[3];
  if (!actionInfo || !v8)
  {
    if (actionInfo == v8)
    {
      goto LABEL_11;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  if (([(NSDictionary *)actionInfo isEqual:?]& 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  localizedTitle = self->_localizedTitle;
  v10 = equalCopy[4];
  if (localizedTitle && v10)
  {
    v11 = [(NSString *)localizedTitle isEqual:?];
  }

  else
  {
    v11 = localizedTitle == v10;
  }

LABEL_16:

  return v11;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_titleKey];
  [array safelyAddObject:self->_actionInfo];
  [array safelyAddObject:self->_localizedTitle];
  v4 = PKCombinedHash(17, array);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"titleKey: '%@'; ", self->_titleKey];
  [v3 appendFormat:@"type: '%ld'; ", self->_type];
  [v3 appendFormat:@"actionInfo: '%@'; ", self->_actionInfo];
  [v3 appendFormat:@"title: '%@'; ", self->_localizedTitle];
  [v3 appendFormat:@">"];

  return v3;
}

@end