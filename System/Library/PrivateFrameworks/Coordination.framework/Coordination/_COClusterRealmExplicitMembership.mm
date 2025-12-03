@interface _COClusterRealmExplicitMembership
+ (id)realmWithClusterIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (_COClusterRealmExplicitMembership)initWithCoder:(id)coder;
- (id)_initWithClusterIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)activate:(id)activate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _COClusterRealmExplicitMembership

- (id)_initWithClusterIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  v10.receiver = self;
  v10.super_class = _COClusterRealmExplicitMembership;
  v6 = [(COClusterRealm *)&v10 _initWithPredicate:v5];

  if (v6)
  {
    v7 = [identifierCopy copy];
    v8 = v6[6];
    v6[6] = v7;
  }

  return v6;
}

+ (id)realmWithClusterIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] _initWithClusterIdentifier:identifierCopy];

  return v5;
}

- (unint64_t)hash
{
  clusterIdentifier = [(_COClusterRealmExplicitMembership *)self clusterIdentifier];
  v3 = [clusterIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _COClusterRealmExplicitMembership;
  if ([(COClusterRealm *)&v9 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    clusterIdentifier = [equalCopy clusterIdentifier];
    clusterIdentifier2 = [(_COClusterRealmExplicitMembership *)self clusterIdentifier];
    v7 = [clusterIdentifier isEqualToString:clusterIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)activate:(id)activate
{
  v20 = *MEMORY[0x277D85DE8];
  activateCopy = activate;
  if (+[COFeatureStatus isCOClusterEnabled])
  {
    v5 = COLogForCategory(7);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      clusterIdentifier = [(_COClusterRealmExplicitMembership *)self clusterIdentifier];
      *buf = 134218498;
      selfCopy = self;
      v16 = 2112;
      selfCopy2 = self;
      v18 = 2112;
      v19 = clusterIdentifier;
      _os_log_impl(&dword_244328000, v5, OS_LOG_TYPE_DEFAULT, "%p COClusterRealmExplicitMembership %@ activate called with cluster identifier %@", buf, 0x20u);
    }

    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __46___COClusterRealmExplicitMembership_activate___block_invoke;
    v11 = &unk_278E121C0;
    selfCopy3 = self;
    v13 = activateCopy;
    [(COClusterRealm *)self _withLock:&v8];
    [(COClusterRealm *)self _invokeUpdateHandler:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (_COClusterRealmExplicitMembership)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _COClusterRealmExplicitMembership;
  v5 = [(COClusterRealm *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusteridentifier"];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _COClusterRealmExplicitMembership;
  coderCopy = coder;
  [(COClusterRealm *)&v6 encodeWithCoder:coderCopy];
  v5 = [(_COClusterRealmExplicitMembership *)self clusterIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"clusteridentifier"];
}

@end