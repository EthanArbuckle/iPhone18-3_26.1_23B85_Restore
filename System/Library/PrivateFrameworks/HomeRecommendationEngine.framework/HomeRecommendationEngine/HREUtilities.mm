@interface HREUtilities
+ (id)accessoryCategoryAnalyticsDescription:(id)a3;
@end

@implementation HREUtilities

+ (id)accessoryCategoryAnalyticsDescription:(id)a3
{
  v3 = a3;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__HREUtilities_accessoryCategoryAnalyticsDescription___block_invoke;
  v24[3] = &unk_279777430;
  v4 = v3;
  v25 = v4;
  v5 = MEMORY[0x259C0B570](v24);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __54__HREUtilities_accessoryCategoryAnalyticsDescription___block_invoke_3;
  v22 = &unk_279777430;
  v6 = v4;
  v23 = v6;
  v7 = MEMORY[0x259C0B570](&v19);
  v8 = [v6 accessories];
  v9 = [v8 na_map:&__block_literal_global_11_0];

  if ([v9 count] == 1)
  {
    v10 = [v9 anyObject];
  }

  else
  {
    v10 = 0;
  }

  if (v5[2](v5))
  {
    v11 = @"MixedServiceGroup";
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else if (v7[2](v7))
  {
    v11 = @"MixedMediaAccessory";
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else if (v10)
  {
    v11 = 0;
  }

  else
  {
    v10 = *MEMORY[0x277CCE8C8];
    v11 = 0;
    if (!v10)
    {
LABEL_15:
      v15 = 0;
      goto LABEL_18;
    }
  }

  v12 = [MEMORY[0x277CD1650] hf_getUserFriendlyDescriptionKey:v10];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x277CD1D90] hf_getUserFriendlyDescriptionKey:v10];
  }

  v15 = v14;

LABEL_18:
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  v17 = v16;

  return v16;
}

uint64_t __54__HREUtilities_accessoryCategoryAnalyticsDescription___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) services];
  v2 = [v1 na_all:&__block_literal_global_14];

  return v2;
}

BOOL __54__HREUtilities_accessoryCategoryAnalyticsDescription___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 hf_serviceGroup];
  v3 = v2 != 0;

  return v3;
}

uint64_t __54__HREUtilities_accessoryCategoryAnalyticsDescription___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) accessories];
  v2 = [v1 na_any:&__block_literal_global_8_3];

  return v2;
}

@end