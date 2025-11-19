@interface CDPUIInfoViewModel
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CDPUIInfoViewModel

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CDPUIInfoViewModel allocWithZone:?]];
  v5 = [(NSString *)self->_title copy];
  title = v4->_title;
  v4->_title = v5;

  v7 = [(NSString *)self->_message copy];
  message = v4->_message;
  v4->_message = v7;

  v9 = [(CDPEscapeOption *)self->_option1 copy];
  option1 = v4->_option1;
  v4->_option1 = v9;

  v11 = [(CDPEscapeOption *)self->_option2 copy];
  option2 = v4->_option2;
  v4->_option2 = v11;

  return v4;
}

@end