@interface BBBulletinModifyUpdate
+ (id)updateWithBulletin:(id)a3 feeds:(unint64_t)a4;
@end

@implementation BBBulletinModifyUpdate

+ (id)updateWithBulletin:(id)a3 feeds:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithBulletin:v6 feeds:a4];

  return v7;
}

@end