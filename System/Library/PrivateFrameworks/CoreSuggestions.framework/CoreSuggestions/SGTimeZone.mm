@interface SGTimeZone
+ (id)countryCodeForAddress:(id)address;
+ (id)sharedDetector;
+ (id)timeZoneForAddress:(id)address;
+ (id)timeZoneNameForAddress:(id)address withCountryCode:(id)code;
@end

@implementation SGTimeZone

+ (id)timeZoneNameForAddress:(id)address withCountryCode:(id)code
{
  addressCopy = address;
  codeCopy = code;
  v8 = objc_autoreleasePoolPush();
  sharedDetector = [self sharedDetector];
  v10 = [sharedDetector timeZoneNameForAddress:addressCopy withCountryCode:codeCopy];

  sharedDetector2 = [self sharedDetector];
  [sharedDetector2 cleanupCache];

  objc_autoreleasePoolPop(v8);

  return v10;
}

+ (id)countryCodeForAddress:(id)address
{
  addressCopy = address;
  v5 = objc_autoreleasePoolPush();
  sharedDetector = [self sharedDetector];
  v7 = [sharedDetector countryCodeForAddress:addressCopy];

  sharedDetector2 = [self sharedDetector];
  [sharedDetector2 cleanupCache];

  objc_autoreleasePoolPop(v5);

  return v7;
}

+ (id)timeZoneForAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    v5 = objc_autoreleasePoolPush();
    sharedDetector = [self sharedDetector];
    v7 = [sharedDetector timeZoneFromAiportCodeForAddress:addressCopy];

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:v7];
    }

    else
    {
      sharedDetector2 = [self sharedDetector];
      v7 = [sharedDetector2 countryCodeForAddress:addressCopy];

      if (v7 && ([self sharedDetector], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeZoneNameForAddress:withCountryCode:", addressCopy, v7), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
      {
        v8 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:v11];
      }

      else
      {
        v8 = 0;
      }

      sharedDetector3 = [self sharedDetector];
      [sharedDetector3 cleanupCache];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)sharedDetector
{
  if (sharedDetector_onceToken != -1)
  {
    dispatch_once(&sharedDetector_onceToken, &__block_literal_global_5717);
  }

  v3 = sharedDetector__sharedDetector;

  return v3;
}

uint64_t __28__SGTimeZone_sharedDetector__block_invoke()
{
  sharedDetector__sharedDetector = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end