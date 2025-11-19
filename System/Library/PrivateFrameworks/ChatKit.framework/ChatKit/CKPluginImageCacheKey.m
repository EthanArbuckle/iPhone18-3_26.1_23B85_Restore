@interface CKPluginImageCacheKey
+ (id)keyWithStringIdentifier:(id)a3 integerIdentifier:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (CKPluginImageCacheKey)initWithStringIdentifier:(id)a3 integerIdentifier:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation CKPluginImageCacheKey

- (unint64_t)hash
{
  v3 = [(CKPluginImageCacheKey *)self integerIdentifier];
  v4 = [(CKPluginImageCacheKey *)self stringIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

+ (id)keyWithStringIdentifier:(id)a3 integerIdentifier:(int64_t)a4
{
  v5 = a3;
  v6 = [[CKPluginImageCacheKey alloc] initWithStringIdentifier:v5 integerIdentifier:a4];

  return v6;
}

- (CKPluginImageCacheKey)initWithStringIdentifier:(id)a3 integerIdentifier:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CKPluginImageCacheKey;
  v8 = [(CKPluginImageCacheKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stringIdentifier, a3);
    v9->_integerIdentifier = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (v5 = objc_msgSend(v4, "integerIdentifier"), v5 == -[CKPluginImageCacheKey integerIdentifier](self, "integerIdentifier")))
  {
    v6 = [v4 stringIdentifier];
    v7 = [(CKPluginImageCacheKey *)self stringIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKPluginImageCacheKey *)self stringIdentifier];
  v5 = [v3 stringWithFormat:@"%@ - %ld", v4, -[CKPluginImageCacheKey integerIdentifier](self, "integerIdentifier")];

  return v5;
}

@end