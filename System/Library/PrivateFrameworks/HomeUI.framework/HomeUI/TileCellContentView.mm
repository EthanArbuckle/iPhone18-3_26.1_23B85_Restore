@interface TileCellContentView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSArray)standardLabels;
- (_TtC6HomeUI19TileCellContentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation TileCellContentView

- (NSArray)standardLabels
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v3 = swift_allocObject();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel);
  *(v3 + 16) = xmmword_20D5BECD0;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel);
  *(v3 + 48) = v6;
  sub_20CECF940(0, &unk_28111FB30);
  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = sub_20D567A58();

  return v10;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_20D015004(change);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v10 = sub_20D01524C(width, height, priority, fittingPriority);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (_TtC6HomeUI19TileCellContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateConstraints
{
  selfCopy = self;
  TileCellContentView.updateConstraints()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  TileCellContentView.layoutSubviews()();
}

@end