@interface _COClusterRealmExplicitMembership
+ (id)realmWithClusterIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_COClusterRealmExplicitMembership)initWithCoder:(id)a3;
- (id)_initWithClusterIdentifier:(id)a3;
- (unint64_t)hash;
- (void)activate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _COClusterRealmExplicitMembership

- (id)_initWithClusterIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  v10.receiver = self;
  v10.super_class = _COClusterRealmExplicitMembership;
  v6 = [(COClusterRealm *)&v10 _initWithPredicate:v5];

  if (v6)
  {
    v7 = [v4 copy];
    v8 = v6[6];
    v6[6] = v7;
  }

  return v6;
}

+ (id)realmWithClusterIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithClusterIdentifier:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(_COClusterRealmExplicitMembership *)self clusterIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _COClusterRealmExplicitMembership;
  if ([(COClusterRealm *)&v9 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 clusterIdentifier];
    v6 = [(_COClusterRealmExplicitMembership *)self clusterIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)activate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[COFeatureStatus isCOClusterEnabled])
  {
    v5 = COLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(_COClusterRealmExplicitMembership *)self clusterIdentifier];
      *buf = 134218498;
      v15 = self;
      v16 = 2112;
      v17 = self;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p COClusterRealmExplicitMembership %@ activate called with cluster identifier %@", buf, 0x20u);
    }

    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __46___COClusterRealmExplicitMembership_activate___block_invoke;
    v11 = &unk_278E121C0;
    v12 = self;
    v13 = v4;
    [(COClusterRealm *)self _withLock:&v8];
    [(COClusterRealm *)self _invokeUpdateHandler:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (_COClusterRealmExplicitMembership)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _COClusterRealmExplicitMembership;
  v5 = [(COClusterRealm *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusteridentifier"];
    if (![v6 length])
    {

      v9 = 0;
      goto LABEL_6;
    }

    v7 = [v6 copy];
    clusterIdentifier = v5->_clusterIdentifier;
    v5->_clusterIdentifier = v7;
  }

  v9 = v5;
LABEL_6:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _COClusterRealmExplicitMembership;
  v4 = a3;
  [(COClusterRealm *)&v6 encodeWithCoder:v4];
  v5 = [(_COClusterRealmExplicitMembership *)self clusterIdentifier:v6.receiver];
  [v4 encodeObject:v5 forKey:@"clusteridentifier"];
}

@end