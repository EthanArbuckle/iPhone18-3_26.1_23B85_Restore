@interface _COClusterRealmHome
+ (id)realmForCurrent;
+ (id)realmWithHomeKitHomeIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (_COClusterRealmHome)initWithCoder:(id)coder;
- (id)_identifierForGroupResult:(id)result;
- (id)_initWithPredicate:(id)predicate forHome:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)activate:(id)activate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _COClusterRealmHome

+ (id)realmForCurrent
{
  predicateForCurrentDevice = [MEMORY[0x277D27468] predicateForCurrentDevice];
  v3 = [[_COClusterRealmHome alloc] _initWithPredicate:predicateForCurrentDevice];

  return v3;
}

- (id)_initWithPredicate:(id)predicate forHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = _COClusterRealmHome;
  v8 = [(COClusterRealm *)&v11 _initWithPredicate:predicate];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 6, home);
  }

  return v9;
}

+ (id)realmWithHomeKitHomeIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CCAC30];
  identifierCopy = identifier;
  v6 = [v4 predicateWithValue:0];
  v7 = [[self alloc] _initWithPredicate:v6 forHome:identifierCopy];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _COClusterRealmHome;
  v4 = [(COClusterRealm *)&v8 description];
  specificHomeUUID = [(_COClusterRealmHome *)self specificHomeUUID];
  v6 = [v3 stringWithFormat:@"<%@ sh: %@>", v4, specificHomeUUID];

  return v6;
}

- (unint64_t)hash
{
  specificHomeUUID = [(_COClusterRealmHome *)self specificHomeUUID];

  if (specificHomeUUID)
  {
    specificHomeUUID2 = [(_COClusterRealmHome *)self specificHomeUUID];
    v5 = [specificHomeUUID2 hash];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _COClusterRealmHome;
    return [(COClusterRealm *)&v7 hash];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _COClusterRealmHome;
  if ([(COClusterRealm *)&v9 isEqual:equalCopy])
  {
    specificHomeUUID = [(_COClusterRealmHome *)self specificHomeUUID];
    specificHomeUUID2 = [equalCopy specificHomeUUID];
    if (specificHomeUUID == specificHomeUUID2)
    {
      v7 = 1;
    }

    else
    {
      v7 = [specificHomeUUID isEqual:specificHomeUUID2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_identifierForGroupResult:(id)result
{
  firstObject = [result firstObject];
  homeKitHomeIdentifier = [firstObject HomeKitHomeIdentifier];
  uUIDString = [homeKitHomeIdentifier UUIDString];

  return uUIDString;
}

- (void)activate:(id)activate
{
  v18 = *MEMORY[0x277D85DE8];
  activateCopy = activate;
  if (+[COFeatureStatus isCOClusterEnabled])
  {
    v5 = COLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      specificHomeUUID = [(_COClusterRealmHome *)self specificHomeUUID];
      *buf = 134218498;
      selfCopy = self;
      v14 = 2112;
      selfCopy2 = self;
      v16 = 2112;
      v17 = specificHomeUUID;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p COClusterRealmHome %@ activate called with specificHomeUUID %@", buf, 0x20u);
    }

    specificHomeUUID2 = [(_COClusterRealmHome *)self specificHomeUUID];

    if (specificHomeUUID2)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __32___COClusterRealmHome_activate___block_invoke;
      v10[3] = &unk_278E121C0;
      v10[4] = self;
      v11 = activateCopy;
      [(COClusterRealm *)self _withLock:v10];
      [(COClusterRealm *)self _invokeUpdateHandler];
    }

    else
    {
      v9.receiver = self;
      v9.super_class = _COClusterRealmHome;
      [(COClusterRealm *)&v9 activate:activateCopy];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (_COClusterRealmHome)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _COClusterRealmHome;
  v5 = [(COClusterRealm *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeidentifier"];
    specificHomeUUID = v5->_specificHomeUUID;
    v5->_specificHomeUUID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _COClusterRealmHome;
  coderCopy = coder;
  [(COClusterRealm *)&v6 encodeWithCoder:coderCopy];
  v5 = [(_COClusterRealmHome *)self specificHomeUUID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"homeidentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  predicate = [(COClusterRealm *)self predicate];
  specificHomeUUID = [(_COClusterRealmHome *)self specificHomeUUID];
  v7 = [v4 _initWithPredicate:predicate forHome:specificHomeUUID];

  return v7;
}

@end