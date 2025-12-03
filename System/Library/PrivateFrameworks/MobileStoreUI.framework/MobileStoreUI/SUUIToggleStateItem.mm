@interface SUUIToggleStateItem
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUUIToggleStateItem

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_count;
  v6 = [(NSString *)self->_itemIdentifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_toggled;
  v8 = [(NSString *)self->_nonToggledString copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_toggledString copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  return v5;
}

@end