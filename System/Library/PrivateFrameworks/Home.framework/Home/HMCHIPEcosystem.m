@interface HMCHIPEcosystem
@end

@implementation HMCHIPEcosystem

uint64_t __54__HMCHIPEcosystem_HFAdditions__hf_ecosystemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 vendor];
  if (([v6 isAppleVendor] & 1) == 0)
  {

LABEL_5:
    v10 = [v4 vendor];
    if ([v10 isAppleVendor])
    {
    }

    else
    {
      v11 = [v5 vendor];
      v12 = [v11 isAppleVendor];

      if (v12)
      {
        v9 = 1;
        goto LABEL_10;
      }
    }

    v13 = [v4 name];
    v14 = [v5 name];
    v9 = [v13 localizedStandardCompare:v14];

    goto LABEL_10;
  }

  v7 = [v5 vendor];
  v8 = [v7 isAppleVendor];

  if (v8)
  {
    goto LABEL_5;
  }

  v9 = -1;
LABEL_10:

  return v9;
}

@end