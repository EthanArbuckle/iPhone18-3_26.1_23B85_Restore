@interface DOCSidebarCollectionView
- (BOOL)canBecomeFocused;
- (BOOL)selectionFollowsFocus;
- (_TtC26DocumentManagerExecutables24DOCSidebarCollectionView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables24DOCSidebarCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)dequeueReusableCellWithReuseIdentifier:(id)a3 forIndexPath:(id)a4;
- (void)setSelectionFollowsFocus:(BOOL)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation DOCSidebarCollectionView

- (_TtC26DocumentManagerExecutables24DOCSidebarCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_requireCanBecomeFocusedTrue) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for DOCSidebarCollectionView();
  v9 = a4;
  v10 = [(DOCSidebarCollectionView *)&v12 initWithFrame:v9 collectionViewLayout:x, y, width, height];
  [(DOCSidebarCollectionView *)v10 _setAdjustsContentInsetWhenScrollDisabled:1, v12.receiver, v12.super_class];

  return v10;
}

- (_TtC26DocumentManagerExecutables24DOCSidebarCollectionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_requireCanBecomeFocusedTrue) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)dequeueReusableCellWithReuseIdentifier:(id)a3 forIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = self;
  v14 = DOCSidebarCollectionView.dequeueReusableCell(withReuseIdentifier:for:)(v10, v12, v9);

  (*(v6 + 8))(v9, v5);

  return v14;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount;
  v7 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount);
  v8 = __OFADD__(v7, 1);
  v9 = (v7 + 1);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount) = v9;
    v10 = a4;
    v11 = self;
    isa = Set._bridgeToObjectiveC()().super.isa;

    v15.receiver = v11;
    v15.super_class = type metadata accessor for DOCSidebarCollectionView();
    [(DOCSidebarCollectionView *)&v15 touchesEnded:isa withEvent:v10];

    v13 = *(&self->super.super.super.super.super.isa + v6);
    v8 = __OFSUB__(v13, 1);
    v14 = (v13 - 1);
    if (!v8)
    {
      *(&self->super.super.super.super.super.isa + v6) = v14;

      return;
    }
  }

  __break(1u);
}

- (BOOL)selectionFollowsFocus
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCSidebarCollectionView();
  return [(DOCSidebarCollectionView *)&v3 selectionFollowsFocus];
}

- (void)setSelectionFollowsFocus:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for DOCSidebarCollectionView();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(DOCSidebarCollectionView *)&v9 selectionFollowsFocus];
  v8.receiver = v6;
  v8.super_class = v5;
  [(DOCSidebarCollectionView *)&v8 setSelectionFollowsFocus:v3];
  if (v7 != [(DOCSidebarCollectionView *)v6 selectionFollowsFocus]&& [(DOCSidebarCollectionView *)v6 selectionFollowsFocus])
  {
    [(DOCSidebarCollectionView *)v6 setNeedsFocusUpdate];
  }
}

- (BOOL)canBecomeFocused
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x80);
  v3 = self;
  if (v2())
  {

    return 1;
  }

  else
  {
    v6.receiver = v3;
    v6.super_class = type metadata accessor for DOCSidebarCollectionView();
    v5 = [(DOCSidebarCollectionView *)&v6 canBecomeFocused];

    return v5;
  }
}

@end