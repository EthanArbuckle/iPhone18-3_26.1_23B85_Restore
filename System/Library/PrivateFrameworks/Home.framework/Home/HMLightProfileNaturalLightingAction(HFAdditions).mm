@interface HMLightProfileNaturalLightingAction(HFAdditions)
- (id)hf_affectedAccessoryProfiles;
- (id)hf_affectedAccessoryRepresentables;
@end

@implementation HMLightProfileNaturalLightingAction(HFAdditions)

- (id)hf_affectedAccessoryProfiles
{
  v4 = [a1 lightProfile];

  if (v4)
  {
    v5 = objc_getAssociatedObject(a1, a2);
    if (!v5 || ([a1 lightProfile], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "containsObject:", v6), v6, (v7 & 1) == 0))
    {
      v8 = MEMORY[0x277CBEB98];
      v9 = [a1 lightProfile];
      v10 = [v8 setWithObject:v9];

      objc_setAssociatedObject(a1, a2, v10, 0x301);
      v5 = v10;
    }
  }

  else
  {
    if (qword_280E03A48 != -1)
    {
      dispatch_once(&qword_280E03A48, &__block_literal_global_31_6);
    }

    v5 = qword_280E03A50;
  }

  return v5;
}

- (id)hf_affectedAccessoryRepresentables
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [a1 lightProfile];
  v3 = [v1 na_setWithSafeObject:v2];

  return v3;
}

@end