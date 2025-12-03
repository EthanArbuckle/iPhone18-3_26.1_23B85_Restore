@interface ActivityEventStatusItem
- (HFActivityLogCoordinator_Swift)activityLogCoordinator;
- (_TtC4Home23ActivityEventStatusItem)initWithHome:(id)home room:(id)room valueSource:(id)source;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation ActivityEventStatusItem

- (HFActivityLogCoordinator_Swift)activityLogCoordinator
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC4Home23ActivityEventStatusItem_activityLogCoordinator);

  return v3;
}

- (_TtC4Home23ActivityEventStatusItem)initWithHome:(id)home room:(id)room valueSource:(id)source
{
  v6 = sub_20DD636C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC4Home23ActivityEventStatusItem_midnightToday;
  v12 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  hf_startOfDay = [v12 hf_startOfDay];

  sub_20DD63674();
  (*(v7 + 32))(self + v11, v10, v6);
  result = sub_20DD65814();
  __break(1u);
  return result;
}

- (id)_subclass_updateWithOptions:(id)options
{
  if (options)
  {
    v4 = sub_20DD64DC4();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_20DA9B814(v4);

  return v6;
}

@end