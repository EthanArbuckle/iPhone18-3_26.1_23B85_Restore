@interface FCFeedItemFeature
+ (id)featureForAllArticles;
+ (id)featureForTopicID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FCFeedItemFeature)initWithCoder:(id)a3;
- (FCFeedItemFeature)initWithType:(int64_t)a3 key:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCFeedItemFeature

+ (id)featureForTopicID:(id)a3
{
  v3 = a3;
  v4 = [[FCFeedItemFeature alloc] initWithType:1 key:v3];

  return v4;
}

+ (id)featureForAllArticles
{
  if (qword_1EDB27968 != -1)
  {
    dispatch_once(&qword_1EDB27968, &__block_literal_global_167);
  }

  v3 = _MergedGlobals_207;

  return v3;
}

uint64_t __42__FCFeedItemFeature_featureForAllArticles__block_invoke()
{
  v0 = [[FCFeedItemFeature alloc] initWithType:2 key:@"allArticles"];
  v1 = _MergedGlobals_207;
  _MergedGlobals_207 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (FCFeedItemFeature)initWithType:(int64_t)a3 key:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FCFeedItemFeature;
  v8 = [(FCFeedItemFeature *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_key, a4);
  }

  return v9;
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

  v7 = [(FCFeedItemFeature *)self key];
  v8 = [v6 key];
  v9 = [v7 isEqual:v8];

  return v9;
}

- (unint64_t)hash
{
  v2 = [(FCFeedItemFeature *)self key];
  v3 = [v2 hash];

  return v3;
}

- (FCFeedItemFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [v4 decodeIntegerForKey:@"type"];

  v7 = [[FCFeedItemFeature alloc] initWithType:v6 key:v5];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(FCFeedItemFeature *)self key];
  [v5 encodeObject:v4 forKey:@"key"];

  [v5 encodeInteger:-[FCFeedItemFeature type](self forKey:{"type"), @"type"}];
}

@end