@interface MULabeledTokenViewModel
- (MULabeledTokenViewModel)initWithLabelValue:(id)value tokenValue:(id)tokenValue;
@end

@implementation MULabeledTokenViewModel

- (MULabeledTokenViewModel)initWithLabelValue:(id)value tokenValue:(id)tokenValue
{
  valueCopy = value;
  tokenValueCopy = tokenValue;
  v18.receiver = self;
  v18.super_class = MULabeledTokenViewModel;
  v9 = [(MULabeledTokenViewModel *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unalteredLabelValue, value);
    objc_storeStrong(&v10->_unalteredTokenValue, tokenValue);
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v12 = [valueCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    labelValue = v10->_labelValue;
    v10->_labelValue = v12;

    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v15 = [tokenValueCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];
    tokenValue = v10->_tokenValue;
    v10->_tokenValue = v15;
  }

  return v10;
}

@end