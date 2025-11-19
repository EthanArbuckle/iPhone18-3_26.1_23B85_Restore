@interface NSDictionary
@end

@implementation NSDictionary

void __58__NSDictionary_CDMRecursiveSearch___cdm_hasKey_withValue___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    *(*(a1[6] + 8) + 24) = [v6 _cdm_hasKey:a1[4] withValue:a1[5]];
  }

  *a4 = *(*(a1[6] + 8) + 24);
}

@end