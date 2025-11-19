@interface CNUIPRUISPosterConfigurationUtilities
+ (id)titleStyleAttributesForCNConfiguration:(id)a3 error:(id *)a4;
@end

@implementation CNUIPRUISPosterConfigurationUtilities

+ (id)titleStyleAttributesForCNConfiguration:(id)a3 error:(id *)a4
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v6 = getPRUISPosterConfigurationUtilitiesClass_softClass;
  v16 = getPRUISPosterConfigurationUtilitiesClass_softClass;
  if (!getPRUISPosterConfigurationUtilitiesClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getPRUISPosterConfigurationUtilitiesClass_block_invoke;
    v12[3] = &unk_1E76E79E0;
    v12[4] = &v13;
    __getPRUISPosterConfigurationUtilitiesClass_block_invoke(v12);
    v6 = v14[3];
  }

  v7 = v6;
  _Block_object_dispose(&v13, 8);
  v8 = [v5 wrappedPosterConfiguration];
  v9 = [v6 titleStyleAttributesForConfiguration:v8 error:a4];

  if (v9)
  {
    v10 = [[CNUIPRUISPosterTitleStyleAttributes alloc] initWithPosterTitleStyleAttributes:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end