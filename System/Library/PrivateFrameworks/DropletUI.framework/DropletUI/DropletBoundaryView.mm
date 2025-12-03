@interface DropletBoundaryView
- (_TtC9DropletUI19DropletBoundaryView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation DropletBoundaryView

- (_TtC9DropletUI19DropletBoundaryView)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds);
  *v3 = 0u;
  v3[1] = 0u;
  result = sub_249ED6E50();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for DropletBoundaryView();
  v2 = v13.receiver;
  [(DropletBoundaryView *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 16];
  v16 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry];
  v17 = v3;
  v4 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 80];
  v6 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 32];
  v5 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 48];
  v20 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 64];
  v21 = v4;
  v18 = v6;
  v19 = v5;
  v7 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 144];
  v9 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 96];
  v8 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 112];
  v24 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 128];
  v25 = v7;
  v22 = v9;
  v23 = v8;
  v11 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 176];
  v10 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 192];
  v12 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 160];
  v29 = *&v2[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 208];
  v27 = v11;
  v28 = v10;
  v26 = v12;
  if (!sub_249EB74B8(&v16))
  {
    v14[10] = v26;
    v14[11] = v27;
    v14[12] = v28;
    v15 = v29;
    v14[6] = v22;
    v14[7] = v23;
    v14[8] = v24;
    v14[9] = v25;
    v14[2] = v18;
    v14[3] = v19;
    v14[4] = v20;
    v14[5] = v21;
    v14[0] = v16;
    v14[1] = v17;
    sub_249ED6410(v14);
  }
}

@end