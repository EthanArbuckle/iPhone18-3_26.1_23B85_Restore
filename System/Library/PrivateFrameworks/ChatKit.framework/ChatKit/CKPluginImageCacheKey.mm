@interface CKPluginImageCacheKey
+ (id)keyWithStringIdentifier:(id)identifier integerIdentifier:(int64_t)integerIdentifier;
- (BOOL)isEqual:(id)equal;
- (CKPluginImageCacheKey)initWithStringIdentifier:(id)identifier integerIdentifier:(int64_t)integerIdentifier;
- (id)description;
- (unint64_t)hash;
@end

@implementation CKPluginImageCacheKey

- (unint64_t)hash
{
  integerIdentifier = [(CKPluginImageCacheKey *)self integerIdentifier];
  stringIdentifier = [(CKPluginImageCacheKey *)self stringIdentifier];
  v5 = [stringIdentifier hash];

  return v5 ^ integerIdentifier;
}

+ (id)keyWithStringIdentifier:(id)identifier integerIdentifier:(int64_t)integerIdentifier
{
  identifierCopy = identifier;
  v6 = [[CKPluginImageCacheKey alloc] initWithStringIdentifier:identifierCopy integerIdentifier:integerIdentifier];

  return v6;
}

- (CKPluginImageCacheKey)initWithStringIdentifier:(id)identifier integerIdentifier:(int64_t)integerIdentifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CKPluginImageCacheKey;
  v8 = [(CKPluginImageCacheKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stringIdentifier, identifier);
    v9->_integerIdentifier = integerIdentifier;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v5 = objc_msgSend(equalCopy, "integerIdentifier"), v5 == -[CKPluginImageCacheKey integerIdentifier](self, "integerIdentifier")))
  {
    stringIdentifier = [equalCopy stringIdentifier];
    stringIdentifier2 = [(CKPluginImageCacheKey *)self stringIdentifier];
    v8 = [stringIdentifier isEqualToString:stringIdentifier2];
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
  stringIdentifier = [(CKPluginImageCacheKey *)self stringIdentifier];
  v5 = [v3 stringWithFormat:@"%@ - %ld", stringIdentifier, -[CKPluginImageCacheKey integerIdentifier](self, "integerIdentifier")];

  return v5;
}

@end