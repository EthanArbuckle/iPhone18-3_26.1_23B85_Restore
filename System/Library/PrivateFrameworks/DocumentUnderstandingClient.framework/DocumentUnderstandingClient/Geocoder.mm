@interface Geocoder
+ (void)geocodeAddress:(NSString *)a3 withTimeout:(double)a4 completionHandler:(id)a5;
@end

@implementation Geocoder

+ (void)geocodeAddress:(NSString *)a3 withTimeout:(double)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  v10 = a3;

  sub_249D18A68(&unk_249D234D8, v9);
}

@end