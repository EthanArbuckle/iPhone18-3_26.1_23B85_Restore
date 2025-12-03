@interface HUTileCellBackgroundView
- (HUBackgroundEffectViewGrouping)effectGrouper;
- (HUTileCellBackgroundView)initWithEffectIdentifier:(id)identifier effectGrouper:(id)grouper materialStyle:(int64_t)style;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateWithEffectIdentifier:(id)identifier materialStyle:(int64_t)style;
@end

@implementation HUTileCellBackgroundView

- (HUBackgroundEffectViewGrouping)effectGrouper
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (HUTileCellBackgroundView)initWithEffectIdentifier:(id)identifier effectGrouper:(id)grouper materialStyle:(int64_t)style
{
  identifierCopy = identifier;
  swift_unknownObjectRetain();
  v8 = [(HUTileCellBackgroundView *)self initWithFrame:0.0, 0.0, 0.0, 0.0];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v8;
  sub_20CFFE02C(identifierCopy, Strong, style);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = sub_20CFFCF14();
  _captureSource = [v3 _captureSource];

  if (_captureSource)
  {
    [_captureSource _removeCaptureDependent_];
  }

  v5.receiver = selfCopy;
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
  selfCopy = self;
  sub_20CFFDD34();
}

- (void)updateWithEffectIdentifier:(id)identifier materialStyle:(int64_t)style
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  identifierCopy = identifier;
  selfCopy = self;
  sub_20CFFE02C(identifierCopy, Strong, style);
  swift_unknownObjectRelease();
}

@end