@interface FCReferenceToMembership
- (FCReferenceToMembership)initWithIdentifier:(id)a3;
- (FCReferenceToMembership)initWithIdentifier:(id)a3 dictionaryRepresentation:(id)a4;
- (FCReferenceToMembership)initWithRecord:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation FCReferenceToMembership

- (FCReferenceToMembership)initWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier != nil"];
    *buf = 136315906;
    v13 = "[FCReferenceToMembership initWithIdentifier:]";
    v14 = 2080;
    v15 = "FCReferenceToMembership.m";
    v16 = 1024;
    v17 = 16;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCReferenceToMembership;
  v6 = [(FCReferenceToMembership *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      objc_storeStrong(&v6->_identifier, a3);
    }

    else
    {

      v7 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (FCReferenceToMembership)initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [v5 recordName];
  v7 = [(FCReferenceToMembership *)self initWithIdentifier:v6];

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"membershipID"];
    membershipID = v7->_membershipID;
    v7->_membershipID = v8;
  }

  return v7;
}

- (FCReferenceToMembership)initWithIdentifier:(id)a3 dictionaryRepresentation:(id)a4
{
  v6 = a4;
  v7 = [(FCReferenceToMembership *)self initWithIdentifier:a3];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"membershipID"];
    membershipID = v7->_membershipID;
    v7->_membershipID = v8;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(FCReferenceToMembership *)self membershipID];

  if (v4)
  {
    v5 = [(FCReferenceToMembership *)self membershipID];
    [v3 setObject:v5 forKey:@"membershipID"];
  }

  v6 = [v3 copy];

  return v6;
}

@end