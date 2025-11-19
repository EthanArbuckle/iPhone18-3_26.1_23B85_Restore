@interface CNNameListBuilder
- (CNNameListBuilder)initWithDelegate:(id)a3;
- (id)build;
@end

@implementation CNNameListBuilder

- (CNNameListBuilder)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNNameListBuilder;
  v5 = [(CNNameListBuilder *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = v6;
  }

  return v6;
}

- (id)build
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained countOfNamesForBuilder:self];

  v5 = +[_CNComposeAddressConcatenator defaultRecipientListConcatenator];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __26__CNNameListBuilder_build__block_invoke;
  v11[3] = &unk_1E7CD2338;
  v11[4] = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __26__CNNameListBuilder_build__block_invoke_2;
  v10[3] = &unk_1E7CD20A8;
  v10[4] = self;
  v6 = [v5 commaSeparatedAddressListWithAddressCount:v4 prefixForAddressAtIndex:0 stringForAddressAtIndex:v11 lengthValidationBlock:v10];
  if ([(CNNameListBuilder *)self shouldStripEllipses])
  {
    if (build_cn_once_token_1 != -1)
    {
      [CNNameListBuilder build];
    }

    v7 = [v6 stringByTrimmingCharactersInSet:build_cn_once_object_1];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

id __26__CNNameListBuilder_build__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained builder:*(a1 + 32) nameAtIndex:a2];

  return v5;
}

uint64_t __26__CNNameListBuilder_build__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 8));
  v6 = [WeakRetained builder:*(a1 + 32) isValidLengthOfString:v4];

  return v6;
}

uint64_t __26__CNNameListBuilder_build__block_invoke_3()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"…"];
  v1 = build_cn_once_object_1;
  build_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end