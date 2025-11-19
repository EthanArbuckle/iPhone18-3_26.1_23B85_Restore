@interface CDPUIPiggybackingViewModel
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CDPUIPiggybackingViewModel

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CDPUIPiggybackingViewModel allocWithZone:?]];
  v5 = [(NSString *)self->_iconName copy];
  iconName = v4->_iconName;
  v4->_iconName = v5;

  v7 = [(NSString *)self->_title copy];
  title = v4->_title;
  v4->_title = v7;

  v9 = [(NSString *)self->_message copy];
  message = v4->_message;
  v4->_message = v9;

  v11 = [(NSString *)self->_footer copy];
  footer = v4->_footer;
  v4->_footer = v11;

  v13 = [(CDPEscapeOption *)self->_sendCodeOption copy];
  sendCodeOption = v4->_sendCodeOption;
  v4->_sendCodeOption = v13;

  v15 = [(CDPRemoteValidationEscapeOffer *)self->_cantGetToDeviceOption copy];
  cantGetToDeviceOption = v4->_cantGetToDeviceOption;
  v4->_cantGetToDeviceOption = v15;

  return v4;
}

@end