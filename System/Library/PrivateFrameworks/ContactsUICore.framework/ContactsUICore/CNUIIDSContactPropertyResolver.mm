@interface CNUIIDSContactPropertyResolver
+ (id)IDSRelevantPropertiesForContact:(id)a3;
+ (id)descriptorForCopyingStrippedContact:(id)a3;
+ (id)descriptorForRequiredKeys;
- (CNUIIDSContactPropertyResolver)initWithIDSAvailabilityProvider:(id)a3;
- (id)resolveAllFaceTimeIDSPropertiesForContact:(id)a3 schedulerProvider:(id)a4;
- (id)resolveBestExpanseIDSPropertyForContact:(id)a3 schedulerProvider:(id)a4;
- (id)resolveBestFaceTimeIDSPropertyForContact:(id)a3 schedulerProvider:(id)a4;
- (id)resolveBestIDSPropertyForContact:(id)a3 schedulerProvider:(id)a4 usingAvailabilityProviderCall:(id)a5;
- (id)resolveBestIMessageIDSPropertyForContact:(id)a3 schedulerProvider:(id)a4;
- (id)resolveIDSPropertiesForContact:(id)a3 schedulerProvider:(id)a4 usingAvailabilityProviderCall:(id)a5;
@end

@implementation CNUIIDSContactPropertyResolver

+ (id)descriptorForRequiredKeys
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = *MEMORY[0x1E695C330];
  v8[0] = *MEMORY[0x1E695C208];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNUIIDSContactPropertyResolver descriptorForRequiredKeys]"];
  v6 = [v2 descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

+ (id)descriptorForCopyingStrippedContact:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = [a3 keyVector];
  v4 = [v3 mutableCopy];

  v5 = *MEMORY[0x1E695C400];
  v16[0] = *MEMORY[0x1E695C278];
  v16[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [v4 subtractKeys:v6];

  v7 = *MEMORY[0x1E695C3F0];
  v15[0] = *MEMORY[0x1E695C238];
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v4 subtractKeys:v8];

  v9 = MEMORY[0x1E695CD58];
  v14 = v4;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNUIIDSContactPropertyResolver descriptorForCopyingStrippedContact:]"];
  v12 = [v9 descriptorWithKeyDescriptors:v10 description:v11];

  return v12;
}

- (CNUIIDSContactPropertyResolver)initWithIDSAvailabilityProvider:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNUIIDSContactPropertyResolver;
  v6 = [(CNUIIDSContactPropertyResolver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsAvailabilityProvider, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)IDSRelevantPropertiesForContact:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 descriptorForCopyingStrippedContact:v4];
  v21[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v7 = [v4 copyWithPropertyKeys:v6];

  v8 = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__CNUIIDSContactPropertyResolver_IDSRelevantPropertiesForContact___block_invoke;
  aBlock[3] = &unk_1E76E93A0;
  v20 = v7;
  v9 = v7;
  v10 = _Block_copy(aBlock);
  v11 = *MEMORY[0x1E695C208];
  v12 = [v9 emailAddresses];
  v13 = v10[2](v10, v11, v12);
  [v8 addObjectsFromArray:v13];

  v14 = *MEMORY[0x1E695C330];
  v15 = [v9 phoneNumbers];
  v16 = v10[2](v10, v14, v15);
  [v8 addObjectsFromArray:v16];

  v17 = [v8 copy];

  return v17;
}

id __66__CNUIIDSContactPropertyResolver_IDSRelevantPropertiesForContact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 _cn_filter:&__block_literal_global_43];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__CNUIIDSContactPropertyResolver_IDSRelevantPropertiesForContact___block_invoke_3;
  v10[3] = &unk_1E76E9378;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = v5;
  v8 = [v6 _cn_map:v10];

  return v8;
}

id __66__CNUIIDSContactPropertyResolver_IDSRelevantPropertiesForContact___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695CE08];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [a2 identifier];
  v6 = [v2 contactPropertyWithContactNoCopy:v3 propertyKey:v4 identifier:v5];

  return v6;
}

- (id)resolveBestIDSPropertyForContact:(id)a3 schedulerProvider:(id)a4 usingAvailabilityProviderCall:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E6996798];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __115__CNUIIDSContactPropertyResolver_resolveBestIDSPropertyForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke;
  v17[3] = &unk_1E76E9450;
  v18 = v9;
  v19 = self;
  v20 = v8;
  v21 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  v15 = [v11 observableWithBlock:v17];

  return v15;
}

id __115__CNUIIDSContactPropertyResolver_resolveBestIDSPropertyForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) backgroundScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __115__CNUIIDSContactPropertyResolver_resolveBestIDSPropertyForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke_2;
  v9[3] = &unk_1E76E9428;
  v5 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v5;
  v13 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = v3;
  v6 = v3;
  v7 = [v4 performCancelableBlock:v9];

  return v7;
}

void __115__CNUIIDSContactPropertyResolver_resolveBestIDSPropertyForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v11 = [objc_opt_class() IDSRelevantPropertiesForContact:a1[5]];
  v4 = [v11 _cn_map:&__block_literal_global_17_3];
  v5 = (*(a1[8] + 16))();
  v6 = [v5 filter:&__block_literal_global_21_0];
  v7 = [v6 map:&__block_literal_global_24_0];
  v8 = [v7 scan:&__block_literal_global_27];
  v9 = [v8 throttle:a1[6] schedulerProvider:0.0];
  v10 = [v9 subscribe:a1[7]];
  [v3 addCancelable:v10];
}

CNUIContactPropertyIDSHandle *__115__CNUIIDSContactPropertyResolver_resolveBestIDSPropertyForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNUIContactPropertyIDSHandle alloc] initWithContactProperty:v2];

  return v3;
}

id __115__CNUIIDSContactPropertyResolver_resolveBestIDSPropertyForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 handle];
  v3 = [v2 contactProperty];

  return v3;
}

void *__115__CNUIIDSContactPropertyResolver_resolveBestIDSPropertyForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[CNUIContactPropertyRanker bestPropertyComparator];
  v7 = (v6)[2](v6, v5, v4);

  if (v7 == -1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

- (id)resolveBestFaceTimeIDSPropertyForContact:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__CNUIIDSContactPropertyResolver_resolveBestFaceTimeIDSPropertyForContact_schedulerProvider___block_invoke;
  v10[3] = &unk_1E76E9478;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [(CNUIIDSContactPropertyResolver *)self resolveBestIDSPropertyForContact:a3 schedulerProvider:v7 usingAvailabilityProviderCall:v10];

  return v8;
}

id __93__CNUIIDSContactPropertyResolver_resolveBestFaceTimeIDSPropertyForContact_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 idsAvailabilityProvider];
  v6 = [v5 validateHandlesForFaceTime:v4 schedulerProvider:*(a1 + 40)];

  return v6;
}

- (id)resolveBestIMessageIDSPropertyForContact:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__CNUIIDSContactPropertyResolver_resolveBestIMessageIDSPropertyForContact_schedulerProvider___block_invoke;
  v10[3] = &unk_1E76E9478;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [(CNUIIDSContactPropertyResolver *)self resolveBestIDSPropertyForContact:a3 schedulerProvider:v7 usingAvailabilityProviderCall:v10];

  return v8;
}

id __93__CNUIIDSContactPropertyResolver_resolveBestIMessageIDSPropertyForContact_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 idsAvailabilityProvider];
  v6 = [v5 validateHandlesForIMessage:v4 schedulerProvider:*(a1 + 40)];

  return v6;
}

- (id)resolveBestExpanseIDSPropertyForContact:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__CNUIIDSContactPropertyResolver_resolveBestExpanseIDSPropertyForContact_schedulerProvider___block_invoke;
  v10[3] = &unk_1E76E9478;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [(CNUIIDSContactPropertyResolver *)self resolveBestIDSPropertyForContact:a3 schedulerProvider:v7 usingAvailabilityProviderCall:v10];

  return v8;
}

id __92__CNUIIDSContactPropertyResolver_resolveBestExpanseIDSPropertyForContact_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 idsAvailabilityProvider];
  v6 = [v5 validateHandlesForExpanse:v4 schedulerProvider:*(a1 + 40)];

  return v6;
}

- (id)resolveIDSPropertiesForContact:(id)a3 schedulerProvider:(id)a4 usingAvailabilityProviderCall:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E6996798];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __113__CNUIIDSContactPropertyResolver_resolveIDSPropertiesForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke;
  v17[3] = &unk_1E76E9450;
  v18 = v9;
  v19 = self;
  v20 = v8;
  v21 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  v15 = [v11 observableWithBlock:v17];

  return v15;
}

id __113__CNUIIDSContactPropertyResolver_resolveIDSPropertiesForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) backgroundScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __113__CNUIIDSContactPropertyResolver_resolveIDSPropertiesForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke_2;
  v9[3] = &unk_1E76E9428;
  v5 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v5;
  v13 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = v3;
  v6 = v3;
  v7 = [v4 performCancelableBlock:v9];

  return v7;
}

void __113__CNUIIDSContactPropertyResolver_resolveIDSPropertiesForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v10 = [objc_opt_class() IDSRelevantPropertiesForContact:a1[5]];
  v4 = [v10 _cn_map:&__block_literal_global_33_0];
  v5 = (*(a1[8] + 16))();
  v6 = [v5 filter:&__block_literal_global_35_1];
  v7 = [v6 map:&__block_literal_global_37];
  v8 = [v7 throttle:a1[6] schedulerProvider:0.0];
  v9 = [v8 subscribe:a1[7]];
  [v3 addCancelable:v9];
}

CNUIContactPropertyIDSHandle *__113__CNUIIDSContactPropertyResolver_resolveIDSPropertiesForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNUIContactPropertyIDSHandle alloc] initWithContactProperty:v2];

  return v3;
}

id __113__CNUIIDSContactPropertyResolver_resolveIDSPropertiesForContact_schedulerProvider_usingAvailabilityProviderCall___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 handle];
  v3 = [v2 contactProperty];

  return v3;
}

- (id)resolveAllFaceTimeIDSPropertiesForContact:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__CNUIIDSContactPropertyResolver_resolveAllFaceTimeIDSPropertiesForContact_schedulerProvider___block_invoke;
  v10[3] = &unk_1E76E9478;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [(CNUIIDSContactPropertyResolver *)self resolveIDSPropertiesForContact:a3 schedulerProvider:v7 usingAvailabilityProviderCall:v10];

  return v8;
}

id __94__CNUIIDSContactPropertyResolver_resolveAllFaceTimeIDSPropertiesForContact_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 idsAvailabilityProvider];
  v6 = [v5 validateHandlesForFaceTime:v4 schedulerProvider:*(a1 + 40)];

  return v6;
}

@end