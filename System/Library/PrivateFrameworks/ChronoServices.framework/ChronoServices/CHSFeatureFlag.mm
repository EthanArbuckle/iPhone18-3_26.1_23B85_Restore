@interface CHSFeatureFlag
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (CHSFeatureFlag)init;
- (CHSFeatureFlag)initWithCoder:(id)a3;
- (CHSFeatureFlag)initWithDomain:(id)a3 featureName:(id)a4;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSFeatureFlag

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"CHSFeatureFlag.m" lineNumber:23 description:@"-[CHSFeatureFlag new] is unavailable"];

  return 0;
}

- (CHSFeatureFlag)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CHSFeatureFlag.m" lineNumber:28 description:@"-[CHSFeatureFlag init] is unavailable"];

  return 0;
}

- (CHSFeatureFlag)initWithDomain:(id)a3 featureName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CHSFeatureFlag;
  v8 = [(CHSFeatureFlag *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    domain = v8->_domain;
    v8->_domain = v9;

    v11 = [v7 copy];
    featureName = v8->_featureName;
    v8->_featureName = v11;

    v8->_cDomain = strdup([v6 UTF8String]);
    v8->_cFeatureName = strdup([v7 UTF8String]);
  }

  return v8;
}

- (void)dealloc
{
  free(self->_cDomain);
  free(self->_cFeatureName);
  v3.receiver = self;
  v3.super_class = CHSFeatureFlag;
  [(CHSFeatureFlag *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(NSString *)self->_domain isEqualToString:v5->_domain])
      {
        v6 = [(NSString *)self->_featureName isEqualToString:v5->_featureName];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __29__CHSFeatureFlag_description__block_invoke;
  v10 = &unk_1E7453000;
  v4 = v3;
  v11 = v4;
  v12 = self;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 build];

  return v5;
}

uint64_t __29__CHSFeatureFlag_description__block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 8) withName:@"domain"];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v2 appendString:v3 withName:@"featureName"];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_domain forKey:@"domain"];
  [v4 encodeObject:self->_featureName forKey:@"featureName"];
}

- (CHSFeatureFlag)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureName"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    self = [(CHSFeatureFlag *)self initWithDomain:v5 featureName:v6];
    v9 = self;
  }

  return v9;
}

@end