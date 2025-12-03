@interface SUUIEditorialLinkLayoutRequest
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUUIEditorialLinkLayoutRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setLinks:self->_links];
  [v4 setWidth:self->_width];
  return v4;
}

@end