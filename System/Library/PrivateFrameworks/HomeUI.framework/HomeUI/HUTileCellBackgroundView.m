@interface HUTileCellBackgroundView
- (HUBackgroundEffectViewGrouping)effectGrouper;
- (HUTileCellBackgroundView)initWithEffectIdentifier:(id)a3 effectGrouper:(id)a4 materialStyle:(int64_t)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateWithEffectIdentifier:(id)a3 materialStyle:(int64_t)a4;
@end

@implementation HUTileCellBackgroundView

- (HUBackgroundEffectViewGrouping)effectGrouper
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HUTileCellBackgroundView)initWithEffectIdentifier:(id)a3 effectGrouper:(id)a4 materialStyle:(int64_t)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = [(HUTileCellBackgroundView *)self initWithFrame:0.0, 0.0, 0.0, 0.0];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v8;
  sub_20CFFE02C(v7, Strong, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

- (void)dealloc
{
  v2 = self;
  v3 = sub_20CFFCF14();
  v4 = [v3 _captureSource];

  if (v4)
  {
    [v4 _removeCaptureDependent_];
  }

  v5.receiver = v2;
  v5.super_class = type metadata accessor for TileCellBackgroundView();
  [(HUTileCellBackgroundView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TileCellBackgroundView();
  v2 = v6.receiver;
  [(HUTileCellBackgroundView *)&v6 layoutSubviews];
  v3 = sub_20CFFCF14();
  [v2 bounds];
  [v3 setFrame_];

  v4 = sub_20CFFD48C();
  if (v4)
  {
    v5 = v4;
    [v2 bounds];
    [v5 setFrame_];

    v2 = v5;
  }
}

- (void)prepareForReuse
{
  v2 = self;
  sub_20CFFDD34();
}

- (void)updateWithEffectIdentifier:(id)a3 materialStyle:(int64_t)a4
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = a3;
  v9 = self;
  sub_20CFFE02C(v8, Strong, a4);
  swift_unknownObjectRelease();
}

@end