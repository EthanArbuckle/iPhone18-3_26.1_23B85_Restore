@interface _CKAddressBookMonogrammerProvider
+ (id)sharedInstance;
- (id)monogrammerForStyle:(int64_t)a3 diameter:(double)a4;
@end

@implementation _CKAddressBookMonogrammerProvider

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___CKAddressBookMonogrammerProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_9 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9, block);
  }

  v2 = sharedInstance_sharedInstance_3;

  return v2;
}

- (id)monogrammerForStyle:(int64_t)a3 diameter:(double)a4
{
  v4 = [objc_alloc(MEMORY[0x1E695D188]) initWithStyle:a3 diameter:a4];

  return v4;
}

@end