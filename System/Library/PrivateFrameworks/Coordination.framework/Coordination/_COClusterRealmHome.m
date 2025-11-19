@interface _COClusterRealmHome
+ (id)realmForCurrent;
+ (id)realmWithHomeKitHomeIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_COClusterRealmHome)initWithCoder:(id)a3;
- (id)_identifierForGroupResult:(id)a3;
- (id)_initWithPredicate:(id)a3 forHome:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)activate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _COClusterRealmHome

+ (id)realmForCurrent
{
  v2 = [MEMORY[0x277D27468] predicateForCurrentDevice];
  v3 = [[_COClusterRealmHome alloc] _initWithPredicate:v2];

  return v3;
}

- (id)_initWithPredicate:(id)a3 forHome:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _COClusterRealmHome;
  v8 = [(COClusterRealm *)&v11 _initWithPredicate:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 6, a4);
  }

  return v9;
}

+ (id)realmWithHomeKitHomeIdentifier:(id)a3
{
  v4 = MEMORY[0x277CCAC30];
  v5 = a3;
  v6 = [v4 predicateWithValue:0];
  v7 = [[a1 alloc] _initWithPredicate:v6 forHome:v5];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _COClusterRealmHome;
  v4 = [(COClusterRealm *)&v8 description];
  v5 = [(_COClusterRealmHome *)self specificHomeUUID];
  v6 = [v3 stringWithFormat:@"<%@ sh: %@>", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_COClusterRealmHome *)self specificHomeUUID];

  if (v3)
  {
    v4 = [(_COClusterRealmHome *)self specificHomeUUID];
    v5 = [v4 hash];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _COClusterRealmHome;
    return [(COClusterRealm *)&v7 hash];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _COClusterRealmHome;
  if ([(COClusterRealm *)&v9 isEqual:v4])
  {
    v5 = [(_COClusterRealmHome *)self specificHomeUUID];
    v6 = [v4 specificHomeUUID];
    if (v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v5 isEqual:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_identifierForGroupResult:(id)a3
{
  v3 = [a3 firstObject];
  v4 = [v3 HomeKitHomeIdentifier];
  v5 = [v4 UUIDString];

  return v5;
}

- (void)activate:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[COFeatureStatus isCOClusterEnabled])
  {
    v5 = COLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(_COClusterRealmHome *)self specificHomeUUID];
      *buf = 134218498;
      v13 = self;
      v14 = 2112;
      v15 = self;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p COClusterRealmHome %@ activate called with specificHomeUUID %@", buf, 0x20u);
    }

    v7 = [(_COClusterRealmHome *)self specificHomeUUID];

    if (v7)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __32___COClusterRealmHome_activate___block_invoke;
      v10[3] = &unk_278E121C0;
      v10[4] = self;
      v11 = v4;
      [(COClusterRealm *)self _withLock:v10];
      [(COClusterRealm *)self _invokeUpdateHandler];
    }

    else
    {
      v9.receiver = self;
      v9.super_class = _COClusterRealmHome;
      [(COClusterRealm *)&v9 activate:v4];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (_COClusterRealmHome)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _COClusterRealmHome;
  v5 = [(COClusterRealm *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeidentifier"];
    specificHomeUUID = v5->_specificHomeUUID;
    v5->_specificHomeUUID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _COClusterRealmHome;
  v4 = a3;
  [(COClusterRealm *)&v6 encodeWithCoder:v4];
  v5 = [(_COClusterRealmHome *)self specificHomeUUID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"homeidentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(COClusterRealm *)self predicate];
  v6 = [(_COClusterRealmHome *)self specificHomeUUID];
  v7 = [v4 _initWithPredicate:v5 forHome:v6];

  return v7;
}

@end