@interface HUNavigationMenuFactory
+ (id)addMenuForHome:(id)home room:(id)room delegate:(id)delegate includeDisabledElements:(BOOL)elements;
+ (id)homeMenuForButton:(id)button;
+ (id)systemImageForActionType:(int64_t)type;
- (HUNavigationMenuFactory)init;
@end

@implementation HUNavigationMenuFactory

+ (id)homeMenuForButton:(id)button
{
  swift_getObjCClassMetadata();
  buttonCopy = button;
  v5 = sub_20CF6D3E8(buttonCopy);

  return v5;
}

+ (id)addMenuForHome:(id)home room:(id)room delegate:(id)delegate includeDisabledElements:(BOOL)elements
{
  swift_getObjCClassMetadata();
  homeCopy = home;
  roomCopy = room;
  swift_unknownObjectRetain();
  sub_20CF6D734(homeCopy, room, delegate, elements);

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

+ (id)systemImageForActionType:(int64_t)type
{
  sub_20CF72A44(type);
  v3 = sub_20D5677F8();

  systemImageNamed_ = [objc_opt_self() systemImageNamed_];

  return systemImageNamed_;
}

@end