@interface SendMenuCollectionView
- (_TtC7ChatKit22SendMenuCollectionView)initWithCoder:(id)coder;
- (_TtC7ChatKit22SendMenuCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)safeAreaInsetsDidChange;
@end

@implementation SendMenuCollectionView

- (void)safeAreaInsetsDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SendMenuCollectionView();
  v2 = v6.receiver;
  [(SendMenuCollectionView *)&v6 safeAreaInsetsDidChange];
  v3 = &v2[OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

- (_TtC7ChatKit22SendMenuCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate) = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for SendMenuCollectionView();
  return [(SendMenuCollectionView *)&v11 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtC7ChatKit22SendMenuCollectionView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SendMenuCollectionView();
  coderCopy = coder;
  v6 = [(SendMenuCollectionView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end