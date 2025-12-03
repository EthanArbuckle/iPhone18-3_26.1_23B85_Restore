@interface _CKAddressBookMonogrammerProvider
+ (id)sharedInstance;
- (id)monogrammerForStyle:(int64_t)style diameter:(double)diameter;
@end

@implementation _CKAddressBookMonogrammerProvider

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___CKAddressBookMonogrammerProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_9 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9, block);
  }

  v2 = sharedInstance_sharedInstance_3;

  return v2;
}

- (id)monogrammerForStyle:(int64_t)style diameter:(double)diameter
{
  v4 = [objc_alloc(MEMORY[0x1E695D188]) initWithStyle:style diameter:diameter];

  return v4;
}

@end