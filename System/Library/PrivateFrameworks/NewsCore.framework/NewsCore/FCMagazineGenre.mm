@interface FCMagazineGenre
+ (id)magazineGenreWithGenre:(id)genre localizedDescription:(id)description;
- (BOOL)isEqual:(id)equal;
- (FCMagazineGenre)init;
- (FCMagazineGenre)initWithConfigDictionary:(id)dictionary;
- (FCMagazineGenre)initWithGenre:(id)genre localizedDescription:(id)description;
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

- (FCMagazineGenre)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationStringValue(dictionaryCopy, @"genre", 0);
  v6 = FCAppConfigurationStringValue(dictionaryCopy, @"localizedDescription", 0);

  v7 = [(FCMagazineGenre *)self initWithGenre:v5 localizedDescription:v6];
  return v7;
}

- (FCMagazineGenre)initWithGenre:(id)genre localizedDescription:(id)description
{
  genreCopy = genre;
  descriptionCopy = description;
  v14.receiver = self;
  v14.super_class = FCMagazineGenre;
  v8 = [(FCMagazineGenre *)&v14 init];
  if (v8)
  {
    v9 = [genreCopy copy];
    genre = v8->_genre;
    v8->_genre = v9;

    v11 = [descriptionCopy copy];
    localizedDescription = v8->_localizedDescription;
    v8->_localizedDescription = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
    genre = [(FCMagazineGenre *)self genre];
    genre2 = [v6 genre];
    if ([v7 nf_object:genre isEqualToObject:genre2])
    {
      v10 = MEMORY[0x1E69E58C0];
      localizedDescription = [(FCMagazineGenre *)self localizedDescription];
      localizedDescription2 = [v6 localizedDescription];
      v13 = [v10 nf_object:localizedDescription isEqualToObject:localizedDescription2];
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
  genre = [(FCMagazineGenre *)self genre];
  v4 = [genre hash];
  localizedDescription = [(FCMagazineGenre *)self localizedDescription];
  v6 = [localizedDescription hash];

  return v6 ^ v4;
}

+ (id)magazineGenreWithGenre:(id)genre localizedDescription:(id)description
{
  descriptionCopy = description;
  genreCopy = genre;
  v7 = [[FCMagazineGenre alloc] initWithGenre:genreCopy localizedDescription:descriptionCopy];

  return v7;
}

@end