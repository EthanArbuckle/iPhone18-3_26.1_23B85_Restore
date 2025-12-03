@interface _FCActivity
- (BOOL)_updateMode:(id)mode;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPlaceholder;
- (NSArray)activityLifetimeDescriptions;
- (NSDate)activityCreationDate;
- (NSString)activityColorName;
- (NSString)activityDetailText;
- (NSString)activityDisplayName;
- (NSString)activityIdentifier;
- (NSString)activitySymbolImageName;
- (NSString)debugDescription;
- (NSString)description;
- (NSURL)activitySettingsURL;
- (NSURL)activitySetupURL;
- (NSUUID)activityUniqueIdentifier;
- (_FCActivity)initWithMode:(id)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)activitySemanticType;
- (unint64_t)hash;
- (void)_setActivityCreationDate:(id)date;
- (void)_setActivityLifetimeDescriptions:(id)descriptions;
- (void)_setActivityLifetimesAlternativeDescription:(id)description;
@end

@implementation _FCActivity

- (_FCActivity)initWithMode:(id)mode
{
  modeCopy = mode;
  v8.receiver = self;
  v8.super_class = _FCActivity;
  v5 = [(_FCActivity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_FCActivity *)v5 _setDndMode:modeCopy];
  }

  return v6;
}

- (void)_setActivityCreationDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activityCreationDate = selfCopy->_activityCreationDate;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [dateCopy copy];
    v7 = selfCopy->_activityCreationDate;
    selfCopy->_activityCreationDate = v6;
  }

  objc_sync_exit(selfCopy);
}

- (void)_setActivityLifetimeDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_activityLifetimeDescriptions = &selfCopy->_activityLifetimeDescriptions;
  activityLifetimeDescriptions = selfCopy->_activityLifetimeDescriptions;
  if ((BSEqualArrays() & 1) == 0)
  {
    if (descriptionsCopy)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:descriptionsCopy copyItems:1];
      v8 = selfCopy->_activityLifetimeDescriptions;
      selfCopy->_activityLifetimeDescriptions = v7;

      p_activityLifetimeDescriptions = &selfCopy->_activityLifetimesAlternativeDescription;
    }

    v9 = *p_activityLifetimeDescriptions;
    *p_activityLifetimeDescriptions = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)_setActivityLifetimesAlternativeDescription:(id)description
{
  descriptionCopy = description;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activityLifetimesAlternativeDescription = selfCopy->_activityLifetimesAlternativeDescription;
  if ((BSEqualStrings() & 1) == 0)
  {
    v6 = [descriptionCopy copy];
    v7 = selfCopy->_activityLifetimesAlternativeDescription;
    selfCopy->_activityLifetimesAlternativeDescription = v6;

    if (selfCopy->_activityLifetimesAlternativeDescription)
    {
      activityLifetimeDescriptions = selfCopy->_activityLifetimeDescriptions;
      selfCopy->_activityLifetimeDescriptions = 0;
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_updateMode:(id)mode
{
  modeCopy = mode;
  _dndMode = [(_FCActivity *)self _dndMode];
  v6 = BSEqualObjects();
  if ((v6 & 1) == 0)
  {
    [(_FCActivity *)self _setDndMode:modeCopy];
  }

  return v6 ^ 1;
}

- (NSString)activityIdentifier
{
  _dndMode = [(_FCActivity *)self _dndMode];
  modeIdentifier = [_dndMode modeIdentifier];

  return modeIdentifier;
}

- (NSUUID)activityUniqueIdentifier
{
  _dndMode = [(_FCActivity *)self _dndMode];
  identifier = [_dndMode identifier];

  return identifier;
}

- (NSString)activityDisplayName
{
  _dndMode = [(_FCActivity *)self _dndMode];
  name = [_dndMode name];

  return name;
}

- (NSString)activitySymbolImageName
{
  _dndMode = [(_FCActivity *)self _dndMode];
  symbolImageName = [_dndMode symbolImageName];

  return symbolImageName;
}

- (NSString)activityColorName
{
  _dndMode = [(_FCActivity *)self _dndMode];
  tintColorName = [_dndMode tintColorName];
  v4 = tintColorName;
  if (tintColorName)
  {
    defaultTintColorName = tintColorName;
  }

  else
  {
    defaultTintColorName = [MEMORY[0x277D05930] defaultTintColorName];
  }

  v6 = defaultTintColorName;

  return v6;
}

- (int64_t)activitySemanticType
{
  _dndMode = [(_FCActivity *)self _dndMode];
  semanticType = [_dndMode semanticType];

  return semanticType;
}

- (NSDate)activityCreationDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activityCreationDate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)activityDetailText
{
  _dndMode = [(_FCActivity *)self _dndMode];
  semanticType = [_dndMode semanticType];

  if (semanticType <= 9 && ((0x233u >> semanticType) & 1) != 0)
  {
    v4 = off_279013E68[semanticType];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:v4 value:&stru_285EB06A0 table:@"Focus"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSURL)activitySettingsURL
{
  _dndMode = [(_FCActivity *)self _dndMode];
  settingsURL = [_dndMode settingsURL];

  return settingsURL;
}

- (NSURL)activitySetupURL
{
  _dndMode = [(_FCActivity *)self _dndMode];
  setupURL = [_dndMode setupURL];

  return setupURL;
}

- (BOOL)isPlaceholder
{
  _dndMode = [(_FCActivity *)self _dndMode];
  isPlaceholder = [_dndMode isPlaceholder];

  return isPlaceholder;
}

- (NSArray)activityLifetimeDescriptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activityLifetimeDescriptions;
  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)hash
{
  _dndMode = [(_FCActivity *)self _dndMode];
  v3 = [_dndMode hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      _dndMode = [(_FCActivity *)self _dndMode];
      _dndMode2 = [(_FCActivity *)v5 _dndMode];

      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  activityIdentifier = [(_FCActivity *)self activityIdentifier];
  activityUniqueIdentifier = [(_FCActivity *)self activityUniqueIdentifier];
  activityDisplayName = [(_FCActivity *)self activityDisplayName];
  v8 = [v3 stringWithFormat:@"<%@: %p activityIdentifier: %@; activityUniqueIdentifier: %@; activityDisplayName: %@>", v4, self, activityIdentifier, activityUniqueIdentifier, activityDisplayName];;

  return v8;
}

- (NSString)debugDescription
{
  v3 = [(_FCActivity *)self description];
  v4 = [v3 mutableCopy];

  v5 = [v4 rangeOfString:@">" options:4];
  v6 = MEMORY[0x277CCACA8];
  activitySymbolImageName = [(_FCActivity *)self activitySymbolImageName];
  activityColorName = [(_FCActivity *)self activityColorName];
  [(_FCActivity *)self isPlaceholder];
  v9 = NSStringFromBOOL();
  activityLifetimeDescriptions = [(_FCActivity *)self activityLifetimeDescriptions];
  v11 = [activityLifetimeDescriptions count];
  v12 = MEMORY[0x277CCACA8];
  if (v11)
  {
    activityLifetimeDescriptions2 = [(_FCActivity *)self activityLifetimeDescriptions];
    [v12 stringWithFormat:@"activityLifetimeDescriptions: %@", activityLifetimeDescriptions2];
  }

  else
  {
    activityLifetimeDescriptions2 = [(_FCActivity *)self activityLifetimesAlternativeDescription];
    [v12 stringWithFormat:@"activityLifetimesAlternativeDescription: %@", activityLifetimeDescriptions2];
  }
  v14 = ;
  v15 = [v6 stringWithFormat:@" activitySymbolImageName: %@; activityColorName: %@; isPlaceholder: %@; %@", activitySymbolImageName, activityColorName, v9, v14];;
  [v4 insertString:v15 atIndex:v5];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _dndMode = [(_FCActivity *)self _dndMode];
  v6 = [v4 initWithMode:_dndMode];

  activityLifetimeDescriptions = [(_FCActivity *)self activityLifetimeDescriptions];
  [v6 _setActivityLifetimeDescriptions:activityLifetimeDescriptions];

  activityLifetimesAlternativeDescription = [(_FCActivity *)self activityLifetimesAlternativeDescription];
  [v6 _setActivityLifetimesAlternativeDescription:activityLifetimesAlternativeDescription];

  return v6;
}

@end