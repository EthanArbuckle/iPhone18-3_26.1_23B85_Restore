@interface NTKWhistlerAnalogColorEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
@end

@implementation NTKWhistlerAnalogColorEditOption

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__NTKWhistlerAnalogColorEditOption__orderedValuesForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
  v5[4] = a1;
  v3 = __60__NTKWhistlerAnalogColorEditOption__orderedValuesForDevice___block_invoke(v5, a3);

  return v3;
}

id __60__NTKWhistlerAnalogColorEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&kDisabledDataSourcesKey_block_invoke_18_lock);
  if (kDisabledDataSourcesKey_block_invoke_18___cachedDevice)
  {
    v4 = kDisabledDataSourcesKey_block_invoke_18___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != kDisabledDataSourcesKey_block_invoke_18___previousCLKDeviceVersion))
  {
    kDisabledDataSourcesKey_block_invoke_18___cachedDevice = v3;
    kDisabledDataSourcesKey_block_invoke_18___previousCLKDeviceVersion = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = kDisabledDataSourcesKey_block_invoke_18_value;
    kDisabledDataSourcesKey_block_invoke_18_value = v6;
  }

  v8 = kDisabledDataSourcesKey_block_invoke_18_value;
  os_unfair_lock_unlock(&kDisabledDataSourcesKey_block_invoke_18_lock);

  return v8;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___NTKWhistlerAnalogColorEditOption;
  v3 = objc_msgSendSuper2(&v7, sel___orderedValuesForDevice_, a3);
  v4 = [v3 mutableCopy];

  [v4 removeObject:&unk_284184FF0];
  v5 = [MEMORY[0x277CBEB18] arrayWithObjects:{&unk_284184FF0, &unk_2841853C8, 0}];
  [v5 addObjectsFromArray:v4];

  return v5;
}

@end