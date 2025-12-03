@interface DOCSidebarCollectionView
- (BOOL)canBecomeFocused;
- (BOOL)selectionFollowsFocus;
- (_TtC26DocumentManagerExecutables24DOCSidebarCollectionView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables24DOCSidebarCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path;
- (void)setSelectionFollowsFocus:(BOOL)focus;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation DOCSidebarCollectionView

- (_TtC26DocumentManagerExecutables24DOCSidebarCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_requireCanBecomeFocusedTrue) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for DOCSidebarCollectionView();
  layoutCopy = layout;
  height = [(DOCSidebarCollectionView *)&v12 initWithFrame:layoutCopy collectionViewLayout:x, y, width, height];
  [(DOCSidebarCollectionView *)height _setAdjustsContentInsetWhenScrollDisabled:1, v12.receiver, v12.super_class];

  return height;
}

- (_TtC26DocumentManagerExecutables24DOCSidebarCollectionView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_isHandlingTouchesEndedCount) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSidebarCollectionView_requireCanBecomeFocusedTrue) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v14 = DOCSidebarCollectionView.dequeueReusableCell(withReuseIdentifier:for:)(v10, v12, v9);

  (*(v6 + 8))(v9, v5);

  return v14;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
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
    eventCopy = event;
    selfCopy = self;
    isa = Set._bridgeToObjectiveC()().super.isa;

    v15.receiver = selfCopy;
    v15.super_class = type metadata accessor for DOCSidebarCollectionView();
    [(DOCSidebarCollectionView *)&v15 touchesEnded:isa withEvent:eventCopy];

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

- (void)setSelectionFollowsFocus:(BOOL)focus
{
  focusCopy = focus;
  v5 = type metadata accessor for DOCSidebarCollectionView();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  selectionFollowsFocus = [(DOCSidebarCollectionView *)&v9 selectionFollowsFocus];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(DOCSidebarCollectionView *)&v8 setSelectionFollowsFocus:focusCopy];
  if (selectionFollowsFocus != [(DOCSidebarCollectionView *)selfCopy selectionFollowsFocus]&& [(DOCSidebarCollectionView *)selfCopy selectionFollowsFocus])
  {
    [(DOCSidebarCollectionView *)selfCopy setNeedsFocusUpdate];
  }
}

- (BOOL)canBecomeFocused
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x80);
  selfCopy = self;
  if (v2())
  {

    return 1;
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for DOCSidebarCollectionView();
    canBecomeFocused = [(DOCSidebarCollectionView *)&v6 canBecomeFocused];

    return canBecomeFocused;
  }
}

@end