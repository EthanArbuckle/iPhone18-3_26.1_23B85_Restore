@interface MediaPlayerWrapperView.Coordinator
- (_TtCV22HomeAccessoryControlUI22MediaPlayerWrapperView11Coordinator)init;
- (void)nowPlayingViewController:(id)a3 didChangeSizeWithAnimations:(id)a4 completion:(id)a5;
@end

@implementation MediaPlayerWrapperView.Coordinator

- (_TtCV22HomeAccessoryControlUI22MediaPlayerWrapperView11Coordinator)init
{
  *(&self->super.isa + OBJC_IVAR____TtCV22HomeAccessoryControlUI22MediaPlayerWrapperView11Coordinator_useCompactLayout) = 2;
  v3 = (&self->super.isa + OBJC_IVAR____TtCV22HomeAccessoryControlUI22MediaPlayerWrapperView11Coordinator_viewSize);
  v4 = type metadata accessor for MediaPlayerWrapperView.Coordinator();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(MediaPlayerWrapperView.Coordinator *)&v6 init];
}

- (void)nowPlayingViewController:(id)a3 didChangeSizeWithAnimations:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_252532A70;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v10 = sub_252532750;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = a3;
  v14 = self;
  sub_252531F04(v13, v8, v11, v10, v12);
  sub_25247CDCC(v10);
  sub_25247CDCC(v8);
}

@end