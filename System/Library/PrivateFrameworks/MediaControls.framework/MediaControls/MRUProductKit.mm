@interface MRUProductKit
+ (void)assetHardwareModel:(id)model color:(id)color allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion;
- (MRUProductKit)init;
@end

@implementation MRUProductKit

+ (void)assetHardwareModel:(id)model color:(id)color allowFallback:(BOOL)fallback timeout:(double)timeout completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_1A22330F8(sub_1A22335A8, v8);
}

- (MRUProductKit)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MRUProductKit *)&v3 init];
}

@end