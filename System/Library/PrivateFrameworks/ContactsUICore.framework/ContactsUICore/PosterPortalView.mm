@interface PosterPortalView
+ (Class)layerClass;
- (_TtC14ContactsUICore16PosterPortalView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PosterPortalView

+ (Class)layerClass
{
  sub_1A340D590();

  return swift_getObjCClassFromMetadata();
}

- (_TtC14ContactsUICore16PosterPortalView)initWithCoder:(id)a3
{
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for PosterPortalView();
  v2 = v15.receiver;
  [(PosterPortalView *)&v15 layoutSubviews];
  v3 = [v2 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = [v2 layer];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v5 setFrame_];
  }

  else
  {

    sub_1A34CDC10();
    __break(1u);
  }
}

@end