@interface SUUIEditorialLinkLayoutRequest
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUIEditorialLinkLayoutRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setLinks:self->_links];
  [v4 setWidth:self->_width];
  return v4;
}

@end