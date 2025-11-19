@interface TCImportFontCacheKey
+ (id)createFontCacheKeyForName:(id)a3 size:(int)a4;
- (BOOL)isEqual:(id)a3;
@end

@implementation TCImportFontCacheKey

+ (id)createFontCacheKeyForName:(id)a3 size:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = objc_alloc_init(TCImportFontCacheKey);
  [(TCImportFontCacheKey *)v6 setName:v5];
  [(TCImportFontCacheKey *)v6 setSize:v4];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_size == v4[2] && [(NSString *)self->_name isEqualToString:*(v4 + 2)];

  return v5;
}

@end