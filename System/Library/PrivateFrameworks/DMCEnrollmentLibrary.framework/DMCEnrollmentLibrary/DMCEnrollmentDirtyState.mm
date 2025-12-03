@interface DMCEnrollmentDirtyState
- (BOOL)dirtyRMStoreForErSSO;
- (DMCEnrollmentDirtyState)initWithDictionary:(id)dictionary;
- (NSArray)dirtyAltDISDs;
- (NSArray)dirtyBundleIDs;
- (NSArray)dirtyPersonaIDs;
- (NSArray)dirtyProfileIdentifiers;
- (NSArray)dirtyRMAccounts;
- (NSMutableDictionary)stateDictionary;
- (id)dictionary;
- (void)_addValue:(id)value toArrayForKey:(id)key;
- (void)_removeValue:(id)value fromArrayForKey:(id)key;
- (void)clearDirtyRMStoreForErSSO;
- (void)setDirtyRMStoreForErSSO;
@end

@implementation DMCEnrollmentDirtyState

- (DMCEnrollmentDirtyState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = DMCEnrollmentDirtyState;
  v5 = [(DMCEnrollmentDirtyState *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    stateDictionary = v5->_stateDictionary;
    v5->_stateDictionary = v6;
  }

  return v5;
}

- (id)dictionary
{
  v3 = [(NSMutableDictionary *)self->_stateDictionary count];
  if (v3)
  {
    v3 = [(NSMutableDictionary *)self->_stateDictionary copy];
  }

  return v3;
}

- (NSArray)dirtyPersonaIDs
{
  stateDictionary = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"PersonaID"];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)dirtyRMAccounts
{
  stateDictionary = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"RMAccountIdentifier"];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)dirtyAltDISDs
{
  stateDictionary = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"AltDSID"];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)dirtyProfileIdentifiers
{
  stateDictionary = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"ProfileIdentifier"];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)dirtyBundleIDs
{
  stateDictionary = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"BundleID"];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)dirtyRMStoreForErSSO
{
  stateDictionary = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [stateDictionary objectForKeyedSubscript:@"RMStoreForErSSO"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setDirtyRMStoreForErSSO
{
  stateDictionary = [(DMCEnrollmentDirtyState *)self stateDictionary];
  [stateDictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"RMStoreForErSSO"];
}

- (void)clearDirtyRMStoreForErSSO
{
  stateDictionary = [(DMCEnrollmentDirtyState *)self stateDictionary];
  [stateDictionary setObject:0 forKeyedSubscript:@"RMStoreForErSSO"];
}

- (void)_addValue:(id)value toArrayForKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  stateDictionary = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v8 = [stateDictionary objectForKeyedSubscript:keyCopy];
  v9 = [v8 containsObject:valueCopy];

  if ((v9 & 1) == 0)
  {
    stateDictionary2 = [(DMCEnrollmentDirtyState *)self stateDictionary];
    v11 = [stateDictionary2 objectForKeyedSubscript:keyCopy];

    if (!v11)
    {
      v12 = objc_opt_new();
      stateDictionary3 = [(DMCEnrollmentDirtyState *)self stateDictionary];
      [stateDictionary3 setObject:v12 forKeyedSubscript:keyCopy];
    }

    stateDictionary4 = [(DMCEnrollmentDirtyState *)self stateDictionary];
    v15 = [stateDictionary4 objectForKeyedSubscript:keyCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      stateDictionary5 = [(DMCEnrollmentDirtyState *)self stateDictionary];
      v18 = [stateDictionary5 objectForKeyedSubscript:keyCopy];
      v19 = [v18 mutableCopy];
      stateDictionary6 = [(DMCEnrollmentDirtyState *)self stateDictionary];
      [stateDictionary6 setObject:v19 forKeyedSubscript:keyCopy];
    }

    stateDictionary7 = [(DMCEnrollmentDirtyState *)self stateDictionary];
    v22 = [stateDictionary7 objectForKeyedSubscript:keyCopy];
    [v22 addObject:valueCopy];
  }
}

- (void)_removeValue:(id)value fromArrayForKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  stateDictionary = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v8 = [stateDictionary objectForKeyedSubscript:keyCopy];
  v9 = [v8 containsObject:valueCopy];

  if (v9)
  {
    stateDictionary2 = [(DMCEnrollmentDirtyState *)self stateDictionary];
    v11 = [stateDictionary2 objectForKeyedSubscript:keyCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      stateDictionary3 = [(DMCEnrollmentDirtyState *)self stateDictionary];
      v14 = [stateDictionary3 objectForKeyedSubscript:keyCopy];
      v15 = [v14 mutableCopy];
      stateDictionary4 = [(DMCEnrollmentDirtyState *)self stateDictionary];
      [stateDictionary4 setObject:v15 forKeyedSubscript:keyCopy];
    }

    stateDictionary5 = [(DMCEnrollmentDirtyState *)self stateDictionary];
    v18 = [stateDictionary5 objectForKeyedSubscript:keyCopy];
    [v18 removeObject:valueCopy];
  }
}

- (NSMutableDictionary)stateDictionary
{
  stateDictionary = self->_stateDictionary;
  if (!stateDictionary)
  {
    v4 = objc_opt_new();
    v5 = self->_stateDictionary;
    self->_stateDictionary = v4;

    stateDictionary = self->_stateDictionary;
  }

  return stateDictionary;
}

@end