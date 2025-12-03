@interface AllHighlightsForDataTypeViewController
- (_TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController)initWithCollectionViewLayout:(id)layout;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation AllHighlightsForDataTypeViewController

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x160);
  selfCopy = self;
  v6(&v12);
  v8 = v12;
  sub_1BA4A71E8();
  v11 = v8;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v9 = type metadata accessor for AllHighlightsForDataTypeViewController();
  v10.receiver = selfCopy;
  v10.super_class = v9;
  [(CompoundDataSourceCollectionViewController *)&v10 viewIsAppearing:appearingCopy];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA23624C();
}

- (_TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI38AllHighlightsForDataTypeViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end