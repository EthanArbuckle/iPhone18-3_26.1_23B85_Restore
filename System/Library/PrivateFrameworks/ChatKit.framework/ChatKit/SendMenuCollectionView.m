@interface SendMenuCollectionView
- (_TtC7ChatKit22SendMenuCollectionView)initWithCoder:(id)a3;
- (_TtC7ChatKit22SendMenuCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
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

- (_TtC7ChatKit22SendMenuCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate) = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for SendMenuCollectionView();
  return [(SendMenuCollectionView *)&v11 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

- (_TtC7ChatKit22SendMenuCollectionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SendMenuCollectionView();
  v5 = a3;
  v6 = [(SendMenuCollectionView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end