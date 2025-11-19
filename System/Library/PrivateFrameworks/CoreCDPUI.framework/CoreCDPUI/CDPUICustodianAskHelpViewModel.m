@interface CDPUICustodianAskHelpViewModel
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CDPUICustodianAskHelpViewModel

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CDPUICustodianAskHelpViewModel allocWithZone:?]];
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

  v13 = [(CDPEscapeOption *)self->_getHelpNowOption copy];
  getHelpNowOption = v4->_getHelpNowOption;
  v4->_getHelpNowOption = v13;

  v15 = [(CDPRemoteValidationEscapeOffer *)self->_dontAskForHelpOption copy];
  dontAskForHelpOption = v4->_dontAskForHelpOption;
  v4->_dontAskForHelpOption = v15;

  return v4;
}

@end