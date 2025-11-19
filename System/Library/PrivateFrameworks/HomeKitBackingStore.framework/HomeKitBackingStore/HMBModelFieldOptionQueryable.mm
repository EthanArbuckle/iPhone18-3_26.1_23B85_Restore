@interface HMBModelFieldOptionQueryable
- (HMBModelFieldOptionQueryable)initWithEncodingBlock:(id)a3 decodingBlock:(id)a4 descriptionBlock:(id)a5;
- (void)applyTo:(id)a3;
@end

@implementation HMBModelFieldOptionQueryable

- (void)applyTo:(id)a3
{
  v4 = a3;
  v5 = [(HMBModelFieldOptionQueryable *)self encodingBlock];

  if (v5)
  {
    v6 = [(HMBModelFieldOptionQueryable *)self encodingBlock];
    [v4 setEncodeBlock:v6];

    v7 = [(HMBModelFieldOptionQueryable *)self decodingBlock];
    [v4 setDecodeBlock:v7];

    v8 = [(HMBModelFieldOptionQueryable *)self descriptionBlock];
    [v4 setDescriptionBlock:v8];
  }

  else
  {
    v9 = [v4 classObj];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __40__HMBModelFieldOptionQueryable_applyTo___block_invoke;
    v13[3] = &__block_descriptor_40_e16___NSData_16__0_8lu32l8;
    v13[4] = v9;
    [v4 setEncodeBlock:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__HMBModelFieldOptionQueryable_applyTo___block_invoke_2;
    v12[3] = &__block_descriptor_40_e16__16__0__NSData_8lu32l8;
    v12[4] = v9;
    [v4 setDecodeBlock:v12];
    [v4 classObj];
    if (objc_opt_respondsToSelector())
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __40__HMBModelFieldOptionQueryable_applyTo___block_invoke_3;
      v11[3] = &__block_descriptor_40_e26___NSString_16__0__NSData_8lu32l8;
      v11[4] = v9;
      v10 = v11;
    }

    else
    {
      v10 = &__block_literal_global_8278;
    }

    [v4 setDescriptionBlock:v10];
  }
}

- (HMBModelFieldOptionQueryable)initWithEncodingBlock:(id)a3 decodingBlock:(id)a4 descriptionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HMBModelFieldOptionQueryable;
  v11 = [(HMBModelFieldOptionQueryable *)&v19 init];
  if (v11)
  {
    v12 = MEMORY[0x231885A30](v8);
    encodingBlock = v11->_encodingBlock;
    v11->_encodingBlock = v12;

    v14 = MEMORY[0x231885A30](v9);
    decodingBlock = v11->_decodingBlock;
    v11->_decodingBlock = v14;

    v16 = MEMORY[0x231885A30](v10);
    descriptionBlock = v11->_descriptionBlock;
    v11->_descriptionBlock = v16;
  }

  return v11;
}

@end