@interface CKPosterRenderingTranscriptBackgroundView
- (UIEdgeInsets)safeAreaInsets;
- (_TtC7ChatKit41CKPosterRenderingTranscriptBackgroundView)init;
- (_TtC7ChatKit41CKPosterRenderingTranscriptBackgroundView)initWithCoder:(id)a3;
- (_TtC7ChatKit41CKPosterRenderingTranscriptBackgroundView)initWithFrame:(CGRect)a3;
- (_TtP7ChatKit49CKPosterRenderingTranscriptBackgroundViewDelegate_)delegate;
@end

@implementation CKPosterRenderingTranscriptBackgroundView

- (_TtC7ChatKit41CKPosterRenderingTranscriptBackgroundView)initWithFrame:(CGRect)a3
{
  swift_unknownObjectWeakInit();
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKit41CKPosterRenderingTranscriptBackgroundView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKit41CKPosterRenderingTranscriptBackgroundView)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for CKPosterRenderingTranscriptBackgroundView();
  return [(CKPosterRenderingTranscriptBackgroundView *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtP7ChatKit49CKPosterRenderingTranscriptBackgroundViewDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIEdgeInsets)safeAreaInsets
{
  v18.receiver = self;
  v18.super_class = type metadata accessor for CKPosterRenderingTranscriptBackgroundView();
  v2 = v18.receiver;
  [(CKPosterRenderingTranscriptBackgroundView *)&v18 safeAreaInsets];
  v4 = v3;
  v6 = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong posterRenderingTranscriptBackgroundView:v2 preferredSafeAreaInsetsForProposedSafeAreaInsets:{0.0, v4, 0.0, v6}];
    v9 = v8;
    v4 = v10;
    v12 = v11;
    v6 = v13;
    swift_unknownObjectRelease();
  }

  else
  {

    v9 = 0.0;
    v12 = 0.0;
  }

  v14 = v9;
  v15 = v4;
  v16 = v12;
  v17 = v6;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

@end