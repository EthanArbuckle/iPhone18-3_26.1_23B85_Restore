@interface TileCellContentView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NSArray)standardLabels;
- (_TtC6HomeUI19TileCellContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_20D015004(a3);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  v10 = sub_20D01524C(width, height, a4, a5);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (_TtC6HomeUI19TileCellContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updateConstraints
{
  v2 = self;
  TileCellContentView.updateConstraints()();
}

- (void)layoutSubviews
{
  v2 = self;
  TileCellContentView.layoutSubviews()();
}

@end