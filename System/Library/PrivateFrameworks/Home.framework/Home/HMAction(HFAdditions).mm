@interface HMAction(HFAdditions)
- (id)hf_affectedAccessoryProfiles;
- (id)hf_affectedAccessoryRepresentables;
- (uint64_t)hf_affectedCharacteristic;
- (uint64_t)hf_isServiceLikeItemInvolved:()HFAdditions;
@end

@implementation HMAction(HFAdditions)

- (uint64_t)hf_affectedCharacteristic
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  NSLog(&cfstr_HasNotImplemen.isa, v1);

  return 0;
}

- (id)hf_affectedAccessoryProfiles
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  NSLog(&cfstr_HasNotImplemen_0.isa, v1);

  if (_MergedGlobals_300 != -1)
  {
    dispatch_once(&_MergedGlobals_300, &__block_literal_global_7_9);
  }

  v2 = qword_280E03A20;

  return v2;
}

- (uint64_t)hf_isServiceLikeItemInvolved:()HFAdditions
{
  v4 = a3;
  services = [v4 services];
  v6 = [services na_flatMap:&__block_literal_global_10_10];

  objc_opt_class();
  v7 = v4;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  mediaProfileContainer = [v9 mediaProfileContainer];
  mediaProfiles = [mediaProfileContainer mediaProfiles];
  objc_opt_class();
  v12 = v7;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = MEMORY[0x277CBEB98];
  accessory = [v14 accessory];
  profiles = [accessory profiles];
  v18 = profiles;
  if (profiles)
  {
    v19 = profiles;
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v20 = [v15 setWithArray:v19];

  hf_affectedAccessoryProfiles = [self hf_affectedAccessoryProfiles];
  hf_affectedCharacteristic = [self hf_affectedCharacteristic];
  if ([v6 containsObject:hf_affectedCharacteristic] & 1) != 0 || (objc_msgSend(hf_affectedAccessoryProfiles, "intersectsSet:", mediaProfiles))
  {
    v23 = 1;
  }

  else
  {
    v23 = [hf_affectedAccessoryProfiles intersectsSet:v20];
  }

  return v23;
}

- (id)hf_affectedAccessoryRepresentables
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(a2);
  NSLog(&cfstr_HasNotImplemen_1.isa, v4, v5);

  if (qword_280E03A28 != -1)
  {
    dispatch_once(&qword_280E03A28, &__block_literal_global_19_9);
  }

  v6 = qword_280E03A30;

  return v6;
}

@end