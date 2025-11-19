@interface MULabeledTokenViewModel
- (MULabeledTokenViewModel)initWithLabelValue:(id)a3 tokenValue:(id)a4;
@end

@implementation MULabeledTokenViewModel

- (MULabeledTokenViewModel)initWithLabelValue:(id)a3 tokenValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = MULabeledTokenViewModel;
  v9 = [(MULabeledTokenViewModel *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unalteredLabelValue, a3);
    objc_storeStrong(&v10->_unalteredTokenValue, a4);
    v11 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v12 = [v7 stringByTrimmingCharactersInSet:v11];
    labelValue = v10->_labelValue;
    v10->_labelValue = v12;

    v14 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v15 = [v8 stringByTrimmingCharactersInSet:v14];
    tokenValue = v10->_tokenValue;
    v10->_tokenValue = v15;
  }

  return v10;
}

@end