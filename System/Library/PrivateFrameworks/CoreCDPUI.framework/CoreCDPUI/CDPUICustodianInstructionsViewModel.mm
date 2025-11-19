@interface CDPUICustodianInstructionsViewModel
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CDPUICustodianInstructionsViewModel

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CDPUICustodianInstructionsViewModel allocWithZone:?]];
  v5 = [(NSString *)self->_title copy];
  title = v4->_title;
  v4->_title = v5;

  v7 = [(NSString *)self->_subtitle copy];
  subtitle = v4->_subtitle;
  v4->_subtitle = v7;

  v9 = [(NSString *)self->_instructionHeader copy];
  instructionHeader = v4->_instructionHeader;
  v4->_instructionHeader = v9;

  v11 = [(NSString *)self->_instructions copy];
  instructions = v4->_instructions;
  v4->_instructions = v11;

  v13 = [(NSString *)self->_footerText copy];
  footerText = v4->_footerText;
  v4->_footerText = v13;

  objc_storeStrong(&v4->_escapeOffer, self->_escapeOffer);
  objc_storeStrong(&v4->_continueOption, self->_continueOption);
  return v4;
}

@end