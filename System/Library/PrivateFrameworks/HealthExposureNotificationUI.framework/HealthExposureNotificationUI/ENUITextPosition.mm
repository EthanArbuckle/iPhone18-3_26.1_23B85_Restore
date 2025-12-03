@interface ENUITextPosition
+ (id)positionWithLocation:(unint64_t)location;
@end

@implementation ENUITextPosition

+ (id)positionWithLocation:(unint64_t)location
{
  v4 = objc_alloc_init(ENUITextPosition);
  [(ENUITextPosition *)v4 setLocation:location];

  return v4;
}

@end