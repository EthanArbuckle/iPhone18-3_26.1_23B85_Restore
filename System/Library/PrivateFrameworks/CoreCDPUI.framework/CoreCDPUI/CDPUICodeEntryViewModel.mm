@interface CDPUICodeEntryViewModel
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CDPUICodeEntryViewModel

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CDPUICodeEntryViewModel allocWithZone:?]];
  v5 = [(NSString *)self->_promptTitle copy];
  promptTitle = v4->_promptTitle;
  v4->_promptTitle = v5;

  v7 = [(NSString *)self->_promptMessage copy];
  promptMessage = v4->_promptMessage;
  v4->_promptMessage = v7;

  v9 = [self->_codeEnteredAction copy];
  codeEnteredAction = v4->_codeEnteredAction;
  v4->_codeEnteredAction = v9;

  objc_storeStrong(&v4->_escapeOffer, self->_escapeOffer);
  return v4;
}

@end