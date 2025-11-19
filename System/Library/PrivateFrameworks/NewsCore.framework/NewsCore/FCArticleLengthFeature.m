@interface FCArticleLengthFeature
+ (id)longLengthFeature;
+ (id)mediumLengthFeature;
+ (id)shortLengthFeature;
- (FCArticleLengthFeature)init;
- (FCArticleLengthFeature)initWithLengthIdentifier:(id)a3;
- (FCArticleLengthFeature)initWithPersonalizationIdentifier:(id)a3;
@end

@implementation FCArticleLengthFeature

+ (id)shortLengthFeature
{
  if (qword_1EDB23E70 != -1)
  {
    dispatch_once(&qword_1EDB23E70, &__block_literal_global_173);
  }

  v3 = qword_1EDB23E68;

  return v3;
}

uint64_t __44__FCArticleLengthFeature_shortLengthFeature__block_invoke()
{
  v0 = [[FCArticleLengthFeature alloc] initWithLengthIdentifier:@"s"];
  v1 = qword_1EDB23E68;
  qword_1EDB23E68 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)mediumLengthFeature
{
  if (qword_1EDB23E80 != -1)
  {
    dispatch_once(&qword_1EDB23E80, &__block_literal_global_178);
  }

  v3 = qword_1EDB23E78;

  return v3;
}

uint64_t __45__FCArticleLengthFeature_mediumLengthFeature__block_invoke()
{
  v0 = [[FCArticleLengthFeature alloc] initWithLengthIdentifier:@"m"];
  v1 = qword_1EDB23E78;
  qword_1EDB23E78 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)longLengthFeature
{
  if (qword_1EDB23E90 != -1)
  {
    dispatch_once(&qword_1EDB23E90, &__block_literal_global_183);
  }

  v3 = qword_1EDB23E88;

  return v3;
}

uint64_t __43__FCArticleLengthFeature_longLengthFeature__block_invoke()
{
  v0 = [[FCArticleLengthFeature alloc] initWithLengthIdentifier:@"l"];
  v1 = qword_1EDB23E88;
  qword_1EDB23E88 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (FCArticleLengthFeature)init
{
  v16 = *MEMORY[0x1E69E9840];
  [(FCArticleLengthFeature *)self initWithLengthIdentifier:&stru_1F2DC7DC0];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCArticleLengthFeature init]";
    v10 = 2080;
    v11 = "FCPersonalizationFeature.m";
    v12 = 1024;
    v13 = 506;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCArticleLengthFeature init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCArticleLengthFeature)initWithLengthIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FCArticleLengthFeature;
  v5 = [(FCPersonalizationFeature *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(FCArticleLengthFeature *)v5 setLengthID:v4];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"fa0", @"+", v4];
    personalizationIdentifier = v6->super._personalizationIdentifier;
    v6->super._personalizationIdentifier = v7;
  }

  return v6;
}

- (FCArticleLengthFeature)initWithPersonalizationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 rangeOfString:@"+"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 substringWithRange:{v5 + v6, objc_msgSend(v4, "length") - (v5 + v6)}];
    self = [(FCArticleLengthFeature *)self initWithLengthIdentifier:v8];

    v7 = self;
  }

  return v7;
}

@end