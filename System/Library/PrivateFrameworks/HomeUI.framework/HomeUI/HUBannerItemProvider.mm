@interface HUBannerItemProvider
+ (id)_bannerItemClasses;
+ (id)sortOrderForBannerItemCategory:(unint64_t)category;
- (HUBannerItemProvider)initWithHome:(id)home;
- (HUBannerItemProvider)initWithItems:(id)items;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUBannerItemProvider

+ (id)_bannerItemClasses
{
  if (_MergedGlobals_5_0 != -1)
  {
    dispatch_once(&_MergedGlobals_5_0, &__block_literal_global_79);
  }

  v3 = qword_281120CF0;

  return v3;
}

void __42__HUBannerItemProvider__bannerItemClasses__block_invoke_2()
{
  v2[8] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v2[7] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:8];
  v1 = qword_281120CF0;
  qword_281120CF0 = v0;
}

+ (id)sortOrderForBannerItemCategory:(unint64_t)category
{
  if (category == 2)
  {
    if (qword_281120D18 == -1)
    {
      v3 = &qword_281120D20;
      goto LABEL_10;
    }

    v5 = &qword_281120D18;
    v6 = &__block_literal_global_107;
    goto LABEL_17;
  }

  if (category == 1)
  {
    if (qword_281120D08 == -1)
    {
      v3 = &qword_281120D10;
      goto LABEL_10;
    }

    v5 = &qword_281120D08;
    v6 = &__block_literal_global_98;
LABEL_17:
    dispatch_once(v5, v6);
    v3 = v5 + 1;
    goto LABEL_10;
  }

  if (category)
  {
    goto LABEL_11;
  }

  if (qword_281120CF8 != -1)
  {
    v5 = &qword_281120CF8;
    v6 = &__block_literal_global_91;
    goto LABEL_17;
  }

  v3 = &qword_281120D00;
LABEL_10:
  self = *v3;
LABEL_11:

  return self;
}

void __55__HUBannerItemProvider_sortOrderForBannerItemCategory___block_invoke_2()
{
  v2[3] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:3];
  v1 = qword_281120D00;
  qword_281120D00 = v0;
}

void __55__HUBannerItemProvider_sortOrderForBannerItemCategory___block_invoke_4()
{
  v2[10] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v2[7] = objc_opt_class();
  v2[8] = objc_opt_class();
  v2[9] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:10];
  v1 = qword_281120D10;
  qword_281120D10 = v0;
}

void __55__HUBannerItemProvider_sortOrderForBannerItemCategory___block_invoke_6()
{
  v2[3] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:3];
  v1 = qword_281120D20;
  qword_281120D20 = v0;
}

uint64_t __44__HUBannerItemProvider_bannerItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 latestResults];
  v7 = [v6 objectForKeyedSubscript:@"bannerItemCategory"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_282490D88;
  }

  v10 = v9;

  v11 = [v5 latestResults];
  v12 = [v11 objectForKeyedSubscript:@"bannerItemCategory"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &unk_282490D88;
  }

  v15 = v14;

  v16 = [v10 compare:v15];
  if (!v16)
  {
    v17 = +[HUBannerItemProvider sortOrderForBannerItemCategory:](HUBannerItemProvider, "sortOrderForBannerItemCategory:", [v10 integerValue]);
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "indexOfObject:", objc_opt_class())}];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "indexOfObject:", objc_opt_class())}];
    v16 = [v18 compare:v19];
    if (!v16)
    {
      v20 = [v4 latestResults];
      v21 = *MEMORY[0x277D13EC8];
      v22 = [v20 objectForKeyedSubscript:*MEMORY[0x277D13EC8]];
      v23 = v22;
      v24 = &unk_282490DA0;
      if (v22)
      {
        v24 = v22;
      }

      v38 = v24;

      v25 = [v5 latestResults];
      v26 = [v25 objectForKeyedSubscript:v21];
      v27 = v26;
      v28 = &unk_282490DA0;
      if (v26)
      {
        v28 = v26;
      }

      v29 = v28;

      v30 = v38;
      if ([v38 isEqualToNumber:v29])
      {
        v31 = [v4 latestResults];
        v32 = *MEMORY[0x277D140B8];
        v37 = [v31 objectForKeyedSubscript:*MEMORY[0x277D140B8]];

        v33 = [v5 latestResults];
        [v33 objectForKeyedSubscript:v32];
        v34 = v36 = v29;

        v30 = v38;
        v16 = [v37 localizedStandardCompare:v34];

        v29 = v36;
      }

      else
      {
        v16 = [v29 compare:v38];
      }
    }
  }

  return v16;
}

- (HUBannerItemProvider)initWithHome:(id)home
{
  v34 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  obj = [objc_opt_class() _bannerItemClasses];
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v6)
  {
    v8 = 0;
    v25 = 0;
    v26 = 0;
    v9 = 0;
    goto LABEL_21;
  }

  v7 = v6;
  v8 = 0;
  v25 = 0;
  v26 = 0;
  v9 = 0;
  v10 = *v30;
  do
  {
    v11 = 0;
    do
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v29 + 1) + 8 * v11);
      v13 = [[v12 alloc] initWithHome:homeCopy];
      [v5 addObject:v13];
      if (([(objc_class *)v12 isEqual:objc_opt_class()]& 1) != 0)
      {
        v14 = v8;
        v8 = v13;
        goto LABEL_10;
      }

      if (([(objc_class *)v12 isEqual:objc_opt_class()]& 1) != 0)
      {
        v14 = v26;
        v26 = v13;
LABEL_10:
        v15 = v9;
LABEL_11:
        v16 = v13;

        v9 = v15;
        goto LABEL_12;
      }

      if (([(objc_class *)v12 isEqual:objc_opt_class()]& 1) != 0)
      {
        v14 = v25;
        v15 = v9;
        v25 = v13;
        goto LABEL_11;
      }

      v17 = [(objc_class *)v12 isEqual:objc_opt_class()];
      v14 = v9;
      v15 = v13;
      if (v17)
      {
        goto LABEL_11;
      }

LABEL_12:

      ++v11;
    }

    while (v7 != v11);
    v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    v7 = v18;
  }

  while (v18);
LABEL_21:

  v28.receiver = selfCopy;
  v28.super_class = HUBannerItemProvider;
  v19 = [(HFStaticItemProvider *)&v28 initWithItems:v5];
  p_isa = &v19->super.super.super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_home, home);
    objc_storeStrong(p_isa + 5, v8);
    objc_storeStrong(p_isa + 6, v26);
    objc_storeStrong(p_isa + 7, v9);
    objc_storeStrong(p_isa + 8, v25);
  }

  v21 = p_isa;

  return v21;
}

- (HUBannerItemProvider)initWithItems:(id)items
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUBannerItemProvider.m" lineNumber:174 description:{@"%s is unavailable; use %@ instead", "-[HUBannerItemProvider initWithItems:]", v6}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HUBannerItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

@end