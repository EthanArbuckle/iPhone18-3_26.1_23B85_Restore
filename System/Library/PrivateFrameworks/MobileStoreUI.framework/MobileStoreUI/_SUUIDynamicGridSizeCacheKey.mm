@interface _SUUIDynamicGridSizeCacheKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _SUUIDynamicGridSizeCacheKey

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_8;
  }

  __isSUUIDynamicGridSizeCacheKey = [equal __isSUUIDynamicGridSizeCacheKey];
  if (!__isSUUIDynamicGridSizeCacheKey)
  {
    return __isSUUIDynamicGridSizeCacheKey;
  }

  if (*(equal + 1) != self->_position)
  {
    LOBYTE(__isSUUIDynamicGridSizeCacheKey) = 0;
    return __isSUUIDynamicGridSizeCacheKey;
  }

  v6 = *(equal + 2);
  if (v6 == self->_viewElement)
  {
LABEL_8:
    LOBYTE(__isSUUIDynamicGridSizeCacheKey) = 1;
    return __isSUUIDynamicGridSizeCacheKey;
  }

  LOBYTE(__isSUUIDynamicGridSizeCacheKey) = [(SUUIViewElement *)v6 isEqual:?];
  return __isSUUIDynamicGridSizeCacheKey;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setViewElement:self->_viewElement];
  [v4 setPosition:self->_position];
  return v4;
}

@end