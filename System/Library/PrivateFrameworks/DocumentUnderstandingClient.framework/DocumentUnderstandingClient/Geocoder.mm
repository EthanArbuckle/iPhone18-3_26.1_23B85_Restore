@interface Geocoder
+ (void)geocodeAddress:(NSString *)address withTimeout:(double)timeout completionHandler:(id)handler;
@end

@implementation Geocoder

+ (void)geocodeAddress:(NSString *)address withTimeout:(double)timeout completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = address;
  *(v9 + 24) = timeout;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  addressCopy = address;

  sub_249D18A68(&unk_249D234D8, v9);
}

@end