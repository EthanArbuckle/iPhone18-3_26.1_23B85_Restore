@interface DMCEnrollmentDirtyState
- (BOOL)dirtyRMStoreForErSSO;
- (DMCEnrollmentDirtyState)initWithDictionary:(id)a3;
- (NSArray)dirtyAltDISDs;
- (NSArray)dirtyBundleIDs;
- (NSArray)dirtyPersonaIDs;
- (NSArray)dirtyProfileIdentifiers;
- (NSArray)dirtyRMAccounts;
- (NSMutableDictionary)stateDictionary;
- (id)dictionary;
- (void)_addValue:(id)a3 toArrayForKey:(id)a4;
- (void)_removeValue:(id)a3 fromArrayForKey:(id)a4;
- (void)clearDirtyRMStoreForErSSO;
- (void)setDirtyRMStoreForErSSO;
@end

@implementation DMCEnrollmentDirtyState

- (DMCEnrollmentDirtyState)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMCEnrollmentDirtyState;
  v5 = [(DMCEnrollmentDirtyState *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
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
  v2 = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"PersonaID"];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)dirtyRMAccounts
{
  v2 = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"RMAccountIdentifier"];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)dirtyAltDISDs
{
  v2 = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"AltDSID"];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)dirtyProfileIdentifiers
{
  v2 = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"ProfileIdentifier"];
  v4 = [v3 copy];

  return v4;
}

- (NSArray)dirtyBundleIDs
{
  v2 = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"BundleID"];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)dirtyRMStoreForErSSO
{
  v2 = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v3 = [v2 objectForKeyedSubscript:@"RMStoreForErSSO"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setDirtyRMStoreForErSSO
{
  v2 = [(DMCEnrollmentDirtyState *)self stateDictionary];
  [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"RMStoreForErSSO"];
}

- (void)clearDirtyRMStoreForErSSO
{
  v2 = [(DMCEnrollmentDirtyState *)self stateDictionary];
  [v2 setObject:0 forKeyedSubscript:@"RMStoreForErSSO"];
}

- (void)_addValue:(id)a3 toArrayForKey:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v8 containsObject:v23];

  if ((v9 & 1) == 0)
  {
    v10 = [(DMCEnrollmentDirtyState *)self stateDictionary];
    v11 = [v10 objectForKeyedSubscript:v6];

    if (!v11)
    {
      v12 = objc_opt_new();
      v13 = [(DMCEnrollmentDirtyState *)self stateDictionary];
      [v13 setObject:v12 forKeyedSubscript:v6];
    }

    v14 = [(DMCEnrollmentDirtyState *)self stateDictionary];
    v15 = [v14 objectForKeyedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v17 = [(DMCEnrollmentDirtyState *)self stateDictionary];
      v18 = [v17 objectForKeyedSubscript:v6];
      v19 = [v18 mutableCopy];
      v20 = [(DMCEnrollmentDirtyState *)self stateDictionary];
      [v20 setObject:v19 forKeyedSubscript:v6];
    }

    v21 = [(DMCEnrollmentDirtyState *)self stateDictionary];
    v22 = [v21 objectForKeyedSubscript:v6];
    [v22 addObject:v23];
  }
}

- (void)_removeValue:(id)a3 fromArrayForKey:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(DMCEnrollmentDirtyState *)self stateDictionary];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v8 containsObject:v19];

  if (v9)
  {
    v10 = [(DMCEnrollmentDirtyState *)self stateDictionary];
    v11 = [v10 objectForKeyedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v13 = [(DMCEnrollmentDirtyState *)self stateDictionary];
      v14 = [v13 objectForKeyedSubscript:v6];
      v15 = [v14 mutableCopy];
      v16 = [(DMCEnrollmentDirtyState *)self stateDictionary];
      [v16 setObject:v15 forKeyedSubscript:v6];
    }

    v17 = [(DMCEnrollmentDirtyState *)self stateDictionary];
    v18 = [v17 objectForKeyedSubscript:v6];
    [v18 removeObject:v19];
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