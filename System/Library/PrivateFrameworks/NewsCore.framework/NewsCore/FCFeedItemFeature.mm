@interface FCFeedItemFeature
+ (id)featureForAllArticles;
+ (id)featureForTopicID:(id)d;
- (BOOL)isEqual:(id)equal;
- (FCFeedItemFeature)initWithCoder:(id)coder;
- (FCFeedItemFeature)initWithType:(int64_t)type key:(id)key;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCFeedItemFeature

+ (id)featureForTopicID:(id)d
{
  dCopy = d;
  v4 = [[FCFeedItemFeature alloc] initWithType:1 key:dCopy];

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

- (FCFeedItemFeature)initWithType:(int64_t)type key:(id)key
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = FCFeedItemFeature;
  v8 = [(FCFeedItemFeature *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_key, key);
  }

  return v9;
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

- (FCFeedItemFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v6 = [coderCopy decodeIntegerForKey:@"type"];

  v7 = [[FCFeedItemFeature alloc] initWithType:v6 key:v5];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(FCFeedItemFeature *)self key];
  [coderCopy encodeObject:v4 forKey:@"key"];

  [coderCopy encodeInteger:-[FCFeedItemFeature type](self forKey:{"type"), @"type"}];
}

@end