@interface SUUIImagePlaceholder
- (SUUIImagePlaceholder)initWithBackgroundColor:(id)a3 borderColor:(id)a4 borderWidth:(double)a5 cornerPathBlock:(id)a6;
- (SUUIImagePlaceholder)initWithBackgroundColor:(id)a3 borderColor:(id)a4 borderWidth:(double)a5 cornerRadius:(double)a6;
@end

@implementation SUUIImagePlaceholder

- (SUUIImagePlaceholder)initWithBackgroundColor:(id)a3 borderColor:(id)a4 borderWidth:(double)a5 cornerRadius:(double)a6
{
  v10 = a3;
  v11 = a4;
  if (a6 >= 0.00000011920929)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __SUUIImagePlaceholderCornerPathBlockCreate_block_invoke_2;
    aBlock[3] = &__block_descriptor_40_e53___UIBezierPath_40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
    *&aBlock[4] = a6;
    v12 = _Block_copy(aBlock);
  }

  else if (a5 >= 0.00000011920929)
  {
    v12 = &__block_literal_global_54;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(SUUIImagePlaceholder *)self initWithBackgroundColor:v10 borderColor:v11 borderWidth:v12 cornerPathBlock:a5];

  return v13;
}

- (SUUIImagePlaceholder)initWithBackgroundColor:(id)a3 borderColor:(id)a4 borderWidth:(double)a5 cornerPathBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = SUUIImagePlaceholder;
  v14 = [(SUUIImagePlaceholder *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_backgroundColor, a3);
    objc_storeStrong(&v15->_borderColor, a4);
    v15->_borderWidth = a5;
    v16 = [v13 copy];
    cornerPathBlock = v15->_cornerPathBlock;
    v15->_cornerPathBlock = v16;
  }

  return v15;
}

@end