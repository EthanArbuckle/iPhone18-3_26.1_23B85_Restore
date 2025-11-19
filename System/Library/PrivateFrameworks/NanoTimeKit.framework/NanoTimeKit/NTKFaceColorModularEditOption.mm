@interface NTKFaceColorModularEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
@end

@implementation NTKFaceColorModularEditOption

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__NTKFaceColorModularEditOption__orderedValuesForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
  v5[4] = a1;
  v3 = __57__NTKFaceColorModularEditOption__orderedValuesForDevice___block_invoke(v5, a3);

  return v3;
}

id __57__NTKFaceColorModularEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_6_lock);
  if (_ValueKey_block_invoke_6___cachedDevice)
  {
    v4 = _ValueKey_block_invoke_6___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _ValueKey_block_invoke_6___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_6___cachedDevice = v3;
    _ValueKey_block_invoke_6___previousCLKDeviceVersion = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = _ValueKey_block_invoke_6_value;
    _ValueKey_block_invoke_6_value = v6;
  }

  v8 = _ValueKey_block_invoke_6_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_6_lock);

  return v8;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___NTKFaceColorModularEditOption;
  v3 = objc_msgSendSuper2(&v6, sel___orderedValuesForDevice_, a3);
  v4 = [v3 mutableCopy];

  [v4 insertObject:&unk_284185380 atIndex:0];

  return v4;
}

@end