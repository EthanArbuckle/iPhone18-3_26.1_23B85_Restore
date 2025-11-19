@interface CNUIPRSPosterConfigurationAttributes
- (CNUIPRSPosterConfigurationAttributes)initWithCNConfiguration:(id)a3;
@end

@implementation CNUIPRSPosterConfigurationAttributes

- (CNUIPRSPosterConfigurationAttributes)initWithCNConfiguration:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CNUIPRSPosterConfigurationAttributes;
  v5 = [(CNUIPRSPosterConfigurationAttributes *)&v13 init];
  if (v5)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v6 = getPRSPosterConfigurationAttributesClass_softClass_0;
    v18 = getPRSPosterConfigurationAttributesClass_softClass_0;
    if (!getPRSPosterConfigurationAttributesClass_softClass_0)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __getPRSPosterConfigurationAttributesClass_block_invoke_0;
      v14[3] = &unk_1E76E79E0;
      v14[4] = &v15;
      __getPRSPosterConfigurationAttributesClass_block_invoke_0(v14);
      v6 = v16[3];
    }

    v7 = v6;
    _Block_object_dispose(&v15, 8);
    v8 = [v6 alloc];
    v9 = [v4 wrappedPosterConfiguration];
    v10 = [v8 initWithConfiguration:v9];
    wrappedPosterAttributes = v5->_wrappedPosterAttributes;
    v5->_wrappedPosterAttributes = v10;
  }

  return v5;
}

@end