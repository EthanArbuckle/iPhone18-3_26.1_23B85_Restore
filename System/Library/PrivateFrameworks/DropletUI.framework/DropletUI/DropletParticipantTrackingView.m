@interface DropletParticipantTrackingView
- (_TtC9DropletUI30DropletParticipantTrackingView)initWithCoder:(id)a3;
- (_TtC9DropletUI30DropletParticipantTrackingView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
@end

@implementation DropletParticipantTrackingView

- (_TtC9DropletUI30DropletParticipantTrackingView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry;
  sub_249EB72C0(v11);
  v4 = v11[11];
  *(v3 + 10) = v11[10];
  *(v3 + 11) = v4;
  *(v3 + 12) = v11[12];
  *(v3 + 26) = v12;
  v5 = v11[7];
  *(v3 + 6) = v11[6];
  *(v3 + 7) = v5;
  v6 = v11[9];
  *(v3 + 8) = v11[8];
  *(v3 + 9) = v6;
  v7 = v11[3];
  *(v3 + 2) = v11[2];
  *(v3 + 3) = v7;
  v8 = v11[5];
  *(v3 + 4) = v11[4];
  *(v3 + 5) = v8;
  v9 = v11[1];
  *v3 = v11[0];
  *(v3 + 1) = v9;
  result = sub_249ED6E50();
  __break(1u);
  return result;
}

- (void)didMoveToSuperview
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for DropletParticipantTrackingView();
  v2 = v14.receiver;
  [(DropletParticipantTrackingView *)&v14 didMoveToSuperview];
  v3 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 16);
  v17 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry);
  v18 = v3;
  v4 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 80);
  v6 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 32);
  v5 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 48);
  v21 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 64);
  v22 = v4;
  v19 = v6;
  v20 = v5;
  v7 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 144);
  v9 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 96);
  v8 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 112);
  v25 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 128);
  v26 = v7;
  v23 = v9;
  v24 = v8;
  v11 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 176);
  v10 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 192);
  v12 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 160);
  v30 = *(v2 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry + 208);
  v28 = v11;
  v29 = v10;
  v27 = v12;
  if (!sub_249EB74B8(&v17))
  {
    v15[10] = v27;
    v15[11] = v28;
    v15[12] = v29;
    v16 = v30;
    v15[6] = v23;
    v15[7] = v24;
    v15[8] = v25;
    v15[9] = v26;
    v15[2] = v19;
    v15[3] = v20;
    v15[4] = v21;
    v15[5] = v22;
    v13 = *MEMORY[0x277D85000] & *v2;
    v15[0] = v17;
    v15[1] = v18;
    (*(v13 + 144))(v15);
  }
}

- (_TtC9DropletUI30DropletParticipantTrackingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end