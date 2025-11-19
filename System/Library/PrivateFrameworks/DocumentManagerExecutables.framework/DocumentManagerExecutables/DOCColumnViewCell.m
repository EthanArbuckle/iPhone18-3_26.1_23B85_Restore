@interface DOCColumnViewCell
- (_TtC26DocumentManagerExecutables17DOCColumnViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation DOCColumnViewCell

- (_TtC26DocumentManagerExecutables17DOCColumnViewCell)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized DOCColumnViewCell.init(coder:)(v3);

  return v4;
}

- (void)layoutSubviews
{
  v2 = self;
  DOCColumnViewCell.layoutSubviews()();
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(DOCColumnViewCell *)&v6 prepareForReuse];
  DOCColumnViewCell.clearContents()();
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCColumnViewCell_navigationFocusGuide;
  swift_beginAccess();
  v4 = *&v2[v3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v4 setPreferredFocusEnvironments_];
}

@end