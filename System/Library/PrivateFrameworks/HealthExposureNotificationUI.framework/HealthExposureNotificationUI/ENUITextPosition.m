@interface ENUITextPosition
+ (id)positionWithLocation:(unint64_t)a3;
@end

@implementation ENUITextPosition

+ (id)positionWithLocation:(unint64_t)a3
{
  v4 = objc_alloc_init(ENUITextPosition);
  [(ENUITextPosition *)v4 setLocation:a3];

  return v4;
}

@end