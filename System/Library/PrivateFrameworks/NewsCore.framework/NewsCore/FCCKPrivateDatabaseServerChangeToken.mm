@interface FCCKPrivateDatabaseServerChangeToken
+ (id)_keyForDestination:(int64_t)a3;
+ (id)tokenByAddingCKToken:(id)a3 forDestination:(int64_t)a4 toToken:(id)a5;
- (BOOL)isEqual:(id)a3;
- (FCCKPrivateDatabaseServerChangeToken)init;
- (FCCKPrivateDatabaseServerChangeToken)initWithChangeTokensByDestination:(id)a3;
- (FCCKPrivateDatabaseServerChangeToken)initWithChangeTokensByDestinationKey:(id)a3;
- (FCCKPrivateDatabaseServerChangeToken)initWithCoder:(id)a3;
- (id)changeTokenForDestination:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCCKPrivateDatabaseServerChangeToken

- (FCCKPrivateDatabaseServerChangeToken)initWithChangeTokensByDestinationKey:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCCKPrivateDatabaseServerChangeToken;
  v5 = [(FCCKPrivateDatabaseServerChangeToken *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    changeTokensByDestinationKey = v5->_changeTokensByDestinationKey;
    v5->_changeTokensByDestinationKey = v6;
  }

  return v5;
}

- (FCCKPrivateDatabaseServerChangeToken)initWithChangeTokensByDestination:(id)a3
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__FCCKPrivateDatabaseServerChangeToken_initWithChangeTokensByDestination___block_invoke;
  v8[3] = &unk_1E7C40B10;
  v4 = self;
  v9 = v4;
  v5 = [a3 fc_dictionaryByTransformingKeysWithBlock:v8];
  v6 = [(FCCKPrivateDatabaseServerChangeToken *)v4 initWithChangeTokensByDestinationKey:v5];

  return v6;
}

uint64_t __74__FCCKPrivateDatabaseServerChangeToken_initWithChangeTokensByDestination___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 integerValue];

  return [v4 _keyForDestination:v5];
}

- (FCCKPrivateDatabaseServerChangeToken)init
{
  v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
    v6 = 136315906;
    v7 = "[FCCKPrivateDatabaseServerChangeToken init]";
    v8 = 2080;
    v9 = "FCCKPrivateDatabaseServerChangeToken.m";
    v10 = 1024;
    v11 = 43;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = MEMORY[0x1E69E58C0];
  v8 = [(FCCKPrivateDatabaseServerChangeToken *)self changeTokensByDestinationKey];
  v9 = [v6 changeTokensByDestinationKey];
  LOBYTE(v7) = [v7 nf_object:v8 isEqualToObject:v9];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(FCCKPrivateDatabaseServerChangeToken *)self changeTokensByDestinationKey];
  v6 = [v4 initWithChangeTokensByDestinationKey:v5];

  return v6;
}

- (FCCKPrivateDatabaseServerChangeToken)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"changeTokensByDestinationKey"];

  v10 = [(FCCKPrivateDatabaseServerChangeToken *)self initWithChangeTokensByDestinationKey:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCCKPrivateDatabaseServerChangeToken *)self changeTokensByDestinationKey];
  [v4 encodeObject:v5 forKey:@"changeTokensByDestinationKey"];
}

+ (id)tokenByAddingCKToken:(id)a3 forDestination:(int64_t)a4 toToken:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a3;
  v9 = [objc_opt_class() _keyForDestination:a4];
  v17 = v9;
  v18[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v11 = MEMORY[0x1E695DF20];
  v12 = [v7 changeTokensByDestinationKey];

  v13 = [v11 fc_dictionaryByAddingEntriesFromDictionary:v10 toDictionary:v12];

  v14 = [objc_alloc(objc_opt_class()) initWithChangeTokensByDestinationKey:v13];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)changeTokenForDestination:(int64_t)a3
{
  v4 = [(FCCKPrivateDatabaseServerChangeToken *)self changeTokensByDestinationKey];
  v5 = [objc_opt_class() _keyForDestination:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (id)_keyForDestination:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if ((a3 - 1) < 2)
  {
    result = @"Database";
  }

  else if (a3)
  {
    if (a3 == 3)
    {
      result = @"SecureDatabase";
    }

    else
    {
      result = &stru_1F2DC7DC0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
      v6 = 136315906;
      v7 = "+[FCCKPrivateDatabaseServerChangeToken _keyForDestination:]";
      v8 = 2080;
      v9 = "FCCKPrivateDatabaseServerChangeToken.m";
      v10 = 1024;
      v11 = 123;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
    }

    result = &stru_1F2DC7DC0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end