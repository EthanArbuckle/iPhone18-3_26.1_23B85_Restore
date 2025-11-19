@interface CDPUICustodianOSSelectionViewModel
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CDPUICustodianOSSelectionViewModel

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CDPUICustodianOSSelectionViewModel allocWithZone:?]];
  v5 = [(NSString *)self->_title copy];
  title = v4->_title;
  v4->_title = v5;

  v7 = [(NSString *)self->_message copy];
  message = v4->_message;
  v4->_message = v7;

  v9 = [(UIImage *)self->_icon copy];
  icon = v4->_icon;
  v4->_icon = v9;

  v4->_tableViewStyle = self->_tableViewStyle;
  v11 = [(NSArray *)self->_escapeOffers copy];
  escapeOffers = v4->_escapeOffers;
  v4->_escapeOffers = v11;

  v13 = [(NSArray *)self->_options copy];
  options = v4->_options;
  v4->_options = v13;

  return v4;
}

@end