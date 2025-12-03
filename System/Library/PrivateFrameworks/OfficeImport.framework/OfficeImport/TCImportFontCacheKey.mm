@interface TCImportFontCacheKey
+ (id)createFontCacheKeyForName:(id)name size:(int)size;
- (BOOL)isEqual:(id)equal;
@end

@implementation TCImportFontCacheKey

+ (id)createFontCacheKeyForName:(id)name size:(int)size
{
  v4 = *&size;
  nameCopy = name;
  v6 = objc_alloc_init(TCImportFontCacheKey);
  [(TCImportFontCacheKey *)v6 setName:nameCopy];
  [(TCImportFontCacheKey *)v6 setSize:v4];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_size == equalCopy[2] && [(NSString *)self->_name isEqualToString:*(equalCopy + 2)];

  return v5;
}

@end