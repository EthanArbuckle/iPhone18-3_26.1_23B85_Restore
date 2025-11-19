@interface HFChildServiceFilter
- (HFChildServiceFilter)initWithChildServiceTypes:(id)a3;
- (id)filteredChildServicesForParentService:(id)a3;
@end

@implementation HFChildServiceFilter

- (HFChildServiceFilter)initWithChildServiceTypes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFChildServiceFilter;
  v5 = [(HFChildServiceFilter *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    childServiceTypes = v5->_childServiceTypes;
    v5->_childServiceTypes = v6;
  }

  return v5;
}

- (id)filteredChildServicesForParentService:(id)a3
{
  v4 = [a3 hf_childServices];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HFChildServiceFilter_filteredChildServicesForParentService___block_invoke;
  v7[3] = &unk_277DF4020;
  v7[4] = self;
  v5 = [v4 na_filter:v7];

  return v5;
}

BOOL __62__HFChildServiceFilter_filteredChildServicesForParentService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) childServiceTypes];
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = v4;
  v6 = [*(a1 + 32) childServiceTypes];
  v7 = [v3 serviceType];
  v8 = [v6 containsObject:v7];

  if (!v8)
  {
    v9 = 0;
  }

  else
  {
LABEL_3:
    v9 = [v3 configurationState] != 2;
  }

  return v9;
}

@end