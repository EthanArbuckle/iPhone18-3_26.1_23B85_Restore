@interface HKCompoundFilter
@end

@implementation HKCompoundFilter

id __62___HKCompoundFilter__HKBuilders__builder_filterWithDataTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 builder_filterWithDataTypes:*(a1 + 32)];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

@end