@interface GDEntityPredicateHelper
+ (unint64_t)entityPredicateFrom:(id)a3;
@end

@implementation GDEntityPredicateHelper

+ (unint64_t)entityPredicateFrom:(id)a3
{
  v3 = sub_1ABF23C04();
  v5 = static GDEntityPredicateHelper.entityPredicate(from:)(v3, v4);

  return v5;
}

@end