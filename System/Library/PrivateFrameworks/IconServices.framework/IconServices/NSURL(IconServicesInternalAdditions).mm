@interface NSURL(IconServicesInternalAdditions)
+ (id)_is_unregisteredPersonlityFileExtensions;
+ (uint64_t)__is__isNetBoot;
- (id)__is__attributeModifiedDate;
- (id)__is__contentModifiedDate;
- (id)__is_canonicalURL;
- (void)__is__modifiedDate;
@end

@implementation NSURL(IconServicesInternalAdditions)

+ (id)_is_unregisteredPersonlityFileExtensions
{
  if (_is_unregisteredPersonlityFileExtensions_onceToken != -1)
  {
    +[NSURL(IconServicesInternalAdditions) _is_unregisteredPersonlityFileExtensions];
  }

  v1 = _is_unregisteredPersonlityFileExtensions_personalityMap;

  return v1;
}

- (id)__is_canonicalURL
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695DB78];
  v12[0] = *MEMORY[0x1E695DA88];
  v2 = v12[0];
  v12[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v11 = 0;
  v5 = [a1 __is_resourceValuesForKeys:v4 error:&v11];

  v6 = [v5 _IF_stringForKey:v2];
  v7 = [v5 _IF_BOOLForKey:v3];
  if (v6)
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)__is__contentModifiedDate
{
  v5 = 0;
  v1 = [a1 __is__getResourceValue:&v5 forKey:*MEMORY[0x1E695DA98] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = [MEMORY[0x1E695DF00] distantPast];

    v2 = v3;
  }

  return v2;
}

- (id)__is__attributeModifiedDate
{
  v5 = 0;
  v1 = [a1 __is__getResourceValue:&v5 forKey:*MEMORY[0x1E695DA80] error:0];
  v2 = v5;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = [MEMORY[0x1E695DF00] distantPast];

    v2 = v3;
  }

  return v2;
}

- (void)__is__modifiedDate
{
  v2 = [a1 __is__attributeModifiedDate];
  v3 = [a1 __is__contentModifiedDate];
  if ([v3 compare:v2] == -1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

+ (uint64_t)__is__isNetBoot
{
  if (__is__isNetBoot_once != -1)
  {
    +[NSURL(IconServicesInternalAdditions) __is__isNetBoot];
  }

  return __is__isNetBoot_result;
}

@end