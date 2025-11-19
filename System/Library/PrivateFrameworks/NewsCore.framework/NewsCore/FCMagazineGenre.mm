@interface FCMagazineGenre
+ (id)magazineGenreWithGenre:(id)a3 localizedDescription:(id)a4;
- (BOOL)isEqual:(id)a3;
- (FCMagazineGenre)init;
- (FCMagazineGenre)initWithConfigDictionary:(id)a3;
- (FCMagazineGenre)initWithGenre:(id)a3 localizedDescription:(id)a4;
- (unint64_t)hash;
@end

@implementation FCMagazineGenre

- (FCMagazineGenre)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCMagazineGenre init]";
    v10 = 2080;
    v11 = "FCMagazineGenre.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCMagazineGenre init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCMagazineGenre)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationStringValue(v4, @"genre", 0);
  v6 = FCAppConfigurationStringValue(v4, @"localizedDescription", 0);

  v7 = [(FCMagazineGenre *)self initWithGenre:v5 localizedDescription:v6];
  return v7;
}

- (FCMagazineGenre)initWithGenre:(id)a3 localizedDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FCMagazineGenre;
  v8 = [(FCMagazineGenre *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    genre = v8->_genre;
    v8->_genre = v9;

    v11 = [v7 copy];
    localizedDescription = v8->_localizedDescription;
    v8->_localizedDescription = v11;
  }

  return v8;
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

  if (v6)
  {
    v7 = MEMORY[0x1E69E58C0];
    v8 = [(FCMagazineGenre *)self genre];
    v9 = [v6 genre];
    if ([v7 nf_object:v8 isEqualToObject:v9])
    {
      v10 = MEMORY[0x1E69E58C0];
      v11 = [(FCMagazineGenre *)self localizedDescription];
      v12 = [v6 localizedDescription];
      v13 = [v10 nf_object:v11 isEqualToObject:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(FCMagazineGenre *)self genre];
  v4 = [v3 hash];
  v5 = [(FCMagazineGenre *)self localizedDescription];
  v6 = [v5 hash];

  return v6 ^ v4;
}

+ (id)magazineGenreWithGenre:(id)a3 localizedDescription:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[FCMagazineGenre alloc] initWithGenre:v6 localizedDescription:v5];

  return v7;
}

@end