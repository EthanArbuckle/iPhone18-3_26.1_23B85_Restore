@interface HUNavigationMenuFactory
+ (id)addMenuForHome:(id)a3 room:(id)a4 delegate:(id)a5 includeDisabledElements:(BOOL)a6;
+ (id)homeMenuForButton:(id)a3;
+ (id)systemImageForActionType:(int64_t)a3;
- (HUNavigationMenuFactory)init;
@end

@implementation HUNavigationMenuFactory

+ (id)homeMenuForButton:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_20CF6D3E8(v4);

  return v5;
}

+ (id)addMenuForHome:(id)a3 room:(id)a4 delegate:(id)a5 includeDisabledElements:(BOOL)a6
{
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  sub_20CF6D734(v10, a4, a5, a6);

  swift_unknownObjectRelease();
  sub_20CECF940(0, &unk_28111FFC0);
  v12 = sub_20D567A58();

  return v12;
}

- (HUNavigationMenuFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NavigationMenuFactory();
  return [(HUNavigationMenuFactory *)&v3 init];
}

+ (id)systemImageForActionType:(int64_t)a3
{
  sub_20CF72A44(a3);
  v3 = sub_20D5677F8();

  v4 = [objc_opt_self() systemImageNamed_];

  return v4;
}

@end