@interface HMBModelFieldOptionQueryable
- (HMBModelFieldOptionQueryable)initWithEncodingBlock:(id)block decodingBlock:(id)decodingBlock descriptionBlock:(id)descriptionBlock;
- (void)applyTo:(id)to;
@end

@implementation HMBModelFieldOptionQueryable

- (void)applyTo:(id)to
{
  toCopy = to;
  encodingBlock = [(HMBModelFieldOptionQueryable *)self encodingBlock];

  if (encodingBlock)
  {
    encodingBlock2 = [(HMBModelFieldOptionQueryable *)self encodingBlock];
    [toCopy setEncodeBlock:encodingBlock2];

    decodingBlock = [(HMBModelFieldOptionQueryable *)self decodingBlock];
    [toCopy setDecodeBlock:decodingBlock];

    descriptionBlock = [(HMBModelFieldOptionQueryable *)self descriptionBlock];
    [toCopy setDescriptionBlock:descriptionBlock];
  }

  else
  {
    classObj = [toCopy classObj];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __40__HMBModelFieldOptionQueryable_applyTo___block_invoke;
    v13[3] = &__block_descriptor_40_e16___NSData_16__0_8lu32l8;
    v13[4] = classObj;
    [toCopy setEncodeBlock:v13];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__HMBModelFieldOptionQueryable_applyTo___block_invoke_2;
    v12[3] = &__block_descriptor_40_e16__16__0__NSData_8lu32l8;
    v12[4] = classObj;
    [toCopy setDecodeBlock:v12];
    [toCopy classObj];
    if (objc_opt_respondsToSelector())
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __40__HMBModelFieldOptionQueryable_applyTo___block_invoke_3;
      v11[3] = &__block_descriptor_40_e26___NSString_16__0__NSData_8lu32l8;
      v11[4] = classObj;
      v10 = v11;
    }

    else
    {
      v10 = &__block_literal_global_8278;
    }

    [toCopy setDescriptionBlock:v10];
  }
}

- (HMBModelFieldOptionQueryable)initWithEncodingBlock:(id)block decodingBlock:(id)decodingBlock descriptionBlock:(id)descriptionBlock
{
  blockCopy = block;
  decodingBlockCopy = decodingBlock;
  descriptionBlockCopy = descriptionBlock;
  v19.receiver = self;
  v19.super_class = HMBModelFieldOptionQueryable;
  v11 = [(HMBModelFieldOptionQueryable *)&v19 init];
  if (v11)
  {
    v12 = MEMORY[0x231885A30](blockCopy);
    encodingBlock = v11->_encodingBlock;
    v11->_encodingBlock = v12;

    v14 = MEMORY[0x231885A30](decodingBlockCopy);
    decodingBlock = v11->_decodingBlock;
    v11->_decodingBlock = v14;

    v16 = MEMORY[0x231885A30](descriptionBlockCopy);
    descriptionBlock = v11->_descriptionBlock;
    v11->_descriptionBlock = v16;
  }

  return v11;
}

@end