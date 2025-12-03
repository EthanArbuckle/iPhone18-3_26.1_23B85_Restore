@interface FloatingLayout
- (_TtC13FitnessCoreUI14FloatingLayout)initWithCoder:(id)coder;
- (_TtC13FitnessCoreUI14FloatingLayout)initWithSection:(id)section;
- (_TtC13FitnessCoreUI14FloatingLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC13FitnessCoreUI14FloatingLayout)initWithSectionProvider:(id)provider;
- (_TtC13FitnessCoreUI14FloatingLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (void)prepareForCollectionViewUpdates:(id)updates;
@end

@implementation FloatingLayout

- (void)prepareForCollectionViewUpdates:(id)updates
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C3C2818();
  v4 = sub_20C3E8DAC();
  selfCopy = self;
  sub_20C3C15D8(v4);
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  v4 = sub_20C3E809C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C3E805C();
  selfCopy = self;
  v9 = sub_20C3C1BAC(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (_TtC13FitnessCoreUI14FloatingLayout)initWithSection:(id)section
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingLayout_animatableIndexPaths) = MEMORY[0x277D84FA0];
  v7.receiver = self;
  v7.super_class = type metadata accessor for FloatingLayout();
  v5 = [(FloatingLayout *)&v7 initWithSection:section];

  return v5;
}

- (_TtC13FitnessCoreUI14FloatingLayout)initWithSection:(id)section configuration:(id)configuration
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingLayout_animatableIndexPaths) = MEMORY[0x277D84FA0];
  v9.receiver = self;
  v9.super_class = type metadata accessor for FloatingLayout();
  v7 = [(FloatingLayout *)&v9 initWithSection:section configuration:configuration];

  return v7;
}

- (_TtC13FitnessCoreUI14FloatingLayout)initWithSectionProvider:(id)provider
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(provider);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingLayout_animatableIndexPaths) = MEMORY[0x277D84FA0];
  aBlock[4] = sub_20C3C446C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C3C2298;
  aBlock[3] = &block_descriptor_9;
  v7 = _Block_copy(aBlock);

  v10.receiver = self;
  v10.super_class = type metadata accessor for FloatingLayout();
  v8 = [(FloatingLayout *)&v10 initWithSectionProvider:v7];

  _Block_release(v7);

  return v8;
}

- (_TtC13FitnessCoreUI14FloatingLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(provider);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingLayout_animatableIndexPaths) = MEMORY[0x277D84FA0];
  aBlock[4] = sub_20C3C278C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C3C2298;
  aBlock[3] = &block_descriptor_2;
  v9 = _Block_copy(aBlock);
  configurationCopy = configuration;

  v13.receiver = self;
  v13.super_class = type metadata accessor for FloatingLayout();
  v11 = [(FloatingLayout *)&v13 initWithSectionProvider:v9 configuration:configurationCopy];

  _Block_release(v9);

  return v11;
}

- (_TtC13FitnessCoreUI14FloatingLayout)initWithCoder:(id)coder
{
  sub_20C3E8E3C();
  sub_20C3E8E2C();
  sub_20C3E8E1C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC13FitnessCoreUI14FloatingLayout_animatableIndexPaths) = MEMORY[0x277D84FA0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for FloatingLayout();
  coderCopy = coder;
  v6 = [(FloatingLayout *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end