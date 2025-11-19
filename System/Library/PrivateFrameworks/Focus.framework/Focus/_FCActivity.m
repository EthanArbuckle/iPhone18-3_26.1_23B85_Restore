@interface _FCActivity
- (BOOL)_updateMode:(id)a3;
- (BOOL)isEqual:(id)a3;
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
- (_FCActivity)initWithMode:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)activitySemanticType;
- (unint64_t)hash;
- (void)_setActivityCreationDate:(id)a3;
- (void)_setActivityLifetimeDescriptions:(id)a3;
- (void)_setActivityLifetimesAlternativeDescription:(id)a3;
@end

@implementation _FCActivity

- (_FCActivity)initWithMode:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _FCActivity;
  v5 = [(_FCActivity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_FCActivity *)v5 _setDndMode:v4];
  }

  return v6;
}

- (void)_setActivityCreationDate:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  activityCreationDate = v4->_activityCreationDate;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = v4->_activityCreationDate;
    v4->_activityCreationDate = v6;
  }

  objc_sync_exit(v4);
}

- (void)_setActivityLifetimeDescriptions:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  p_activityLifetimeDescriptions = &v4->_activityLifetimeDescriptions;
  activityLifetimeDescriptions = v4->_activityLifetimeDescriptions;
  if ((BSEqualArrays() & 1) == 0)
  {
    if (v10)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v10 copyItems:1];
      v8 = v4->_activityLifetimeDescriptions;
      v4->_activityLifetimeDescriptions = v7;

      p_activityLifetimeDescriptions = &v4->_activityLifetimesAlternativeDescription;
    }

    v9 = *p_activityLifetimeDescriptions;
    *p_activityLifetimeDescriptions = 0;
  }

  objc_sync_exit(v4);
}

- (void)_setActivityLifetimesAlternativeDescription:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  activityLifetimesAlternativeDescription = v4->_activityLifetimesAlternativeDescription;
  if ((BSEqualStrings() & 1) == 0)
  {
    v6 = [v9 copy];
    v7 = v4->_activityLifetimesAlternativeDescription;
    v4->_activityLifetimesAlternativeDescription = v6;

    if (v4->_activityLifetimesAlternativeDescription)
    {
      activityLifetimeDescriptions = v4->_activityLifetimeDescriptions;
      v4->_activityLifetimeDescriptions = 0;
    }
  }

  objc_sync_exit(v4);
}

- (BOOL)_updateMode:(id)a3
{
  v4 = a3;
  v5 = [(_FCActivity *)self _dndMode];
  v6 = BSEqualObjects();
  if ((v6 & 1) == 0)
  {
    [(_FCActivity *)self _setDndMode:v4];
  }

  return v6 ^ 1;
}

- (NSString)activityIdentifier
{
  v2 = [(_FCActivity *)self _dndMode];
  v3 = [v2 modeIdentifier];

  return v3;
}

- (NSUUID)activityUniqueIdentifier
{
  v2 = [(_FCActivity *)self _dndMode];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)activityDisplayName
{
  v2 = [(_FCActivity *)self _dndMode];
  v3 = [v2 name];

  return v3;
}

- (NSString)activitySymbolImageName
{
  v2 = [(_FCActivity *)self _dndMode];
  v3 = [v2 symbolImageName];

  return v3;
}

- (NSString)activityColorName
{
  v2 = [(_FCActivity *)self _dndMode];
  v3 = [v2 tintColorName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D05930] defaultTintColorName];
  }

  v6 = v5;

  return v6;
}

- (int64_t)activitySemanticType
{
  v2 = [(_FCActivity *)self _dndMode];
  v3 = [v2 semanticType];

  return v3;
}

- (NSDate)activityCreationDate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activityCreationDate;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)activityDetailText
{
  v2 = [(_FCActivity *)self _dndMode];
  v3 = [v2 semanticType];

  if (v3 <= 9 && ((0x233u >> v3) & 1) != 0)
  {
    v4 = off_279013E68[v3];
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
  v2 = [(_FCActivity *)self _dndMode];
  v3 = [v2 settingsURL];

  return v3;
}

- (NSURL)activitySetupURL
{
  v2 = [(_FCActivity *)self _dndMode];
  v3 = [v2 setupURL];

  return v3;
}

- (BOOL)isPlaceholder
{
  v2 = [(_FCActivity *)self _dndMode];
  v3 = [v2 isPlaceholder];

  return v3;
}

- (NSArray)activityLifetimeDescriptions
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activityLifetimeDescriptions;
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)hash
{
  v2 = [(_FCActivity *)self _dndMode];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_FCActivity *)self _dndMode];
      v7 = [(_FCActivity *)v5 _dndMode];

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
  v5 = [(_FCActivity *)self activityIdentifier];
  v6 = [(_FCActivity *)self activityUniqueIdentifier];
  v7 = [(_FCActivity *)self activityDisplayName];
  v8 = [v3 stringWithFormat:@"<%@: %p activityIdentifier: %@; activityUniqueIdentifier: %@; activityDisplayName: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (NSString)debugDescription
{
  v3 = [(_FCActivity *)self description];
  v4 = [v3 mutableCopy];

  v5 = [v4 rangeOfString:@">" options:4];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(_FCActivity *)self activitySymbolImageName];
  v8 = [(_FCActivity *)self activityColorName];
  [(_FCActivity *)self isPlaceholder];
  v9 = NSStringFromBOOL();
  v10 = [(_FCActivity *)self activityLifetimeDescriptions];
  v11 = [v10 count];
  v12 = MEMORY[0x277CCACA8];
  if (v11)
  {
    v13 = [(_FCActivity *)self activityLifetimeDescriptions];
    [v12 stringWithFormat:@"activityLifetimeDescriptions: %@", v13];
  }

  else
  {
    v13 = [(_FCActivity *)self activityLifetimesAlternativeDescription];
    [v12 stringWithFormat:@"activityLifetimesAlternativeDescription: %@", v13];
  }
  v14 = ;
  v15 = [v6 stringWithFormat:@" activitySymbolImageName: %@; activityColorName: %@; isPlaceholder: %@; %@", v7, v8, v9, v14];;
  [v4 insertString:v15 atIndex:v5];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(_FCActivity *)self _dndMode];
  v6 = [v4 initWithMode:v5];

  v7 = [(_FCActivity *)self activityLifetimeDescriptions];
  [v6 _setActivityLifetimeDescriptions:v7];

  v8 = [(_FCActivity *)self activityLifetimesAlternativeDescription];
  [v6 _setActivityLifetimesAlternativeDescription:v8];

  return v6;
}

@end