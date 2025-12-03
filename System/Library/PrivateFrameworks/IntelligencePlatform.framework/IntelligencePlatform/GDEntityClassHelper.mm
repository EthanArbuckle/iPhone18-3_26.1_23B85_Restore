@interface GDEntityClassHelper
+ (unint64_t)entityClassFrom:(id)from;
@end

@implementation GDEntityClassHelper

+ (unint64_t)entityClassFrom:(id)from
{
  v3 = sub_1ABF23C04();
  v5 = static GDEntityClassHelper.entityClass(from:)(v3, v4);

  return v5;
}

@end