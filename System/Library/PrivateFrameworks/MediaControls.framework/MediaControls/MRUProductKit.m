@interface MRUProductKit
+ (void)assetHardwareModel:(id)a3 color:(id)a4 allowFallback:(BOOL)a5 timeout:(double)a6 completion:(id)a7;
- (MRUProductKit)init;
@end

@implementation MRUProductKit

+ (void)assetHardwareModel:(id)a3 color:(id)a4 allowFallback:(BOOL)a5 timeout:(double)a6 completion:(id)a7
{
  v7 = _Block_copy(a7);
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