@interface PDFReplicaViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (_TtC12NewsArticles24PDFReplicaViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)PDFViewWillClickOnLink:(id)a3 withURL:(id)a4;
- (void)handlePinchGesture;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation PDFReplicaViewController

- (_TtC12NewsArticles24PDFReplicaViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7C45CD4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  v5 = a3;
  [(PDFReplicaViewController *)&v9 traitCollectionDidChange:v5];
  v6 = [v4 traitCollection];
  v7 = *&v4[OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingStateMachine];
  if (v7)
  {
    v8 = sub_1D7C47CDC([v7 state]);
    sub_1D7C48048(v8);
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1D7C46004(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D7C46148();
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  sub_1D7C466B8();
}

- (void)handlePinchGesture
{
  v2 = self;
  sub_1D7C46E34();
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  sub_1D7992EFC(0, &qword_1EE0BEC90);
  v6 = a3;
  v7 = self;
  LOBYTE(self) = sub_1D7D311DC();

  return self & 1;
}

- (void)PDFViewWillClickOnLink:(id)a3 withURL:(id)a4
{
  v5 = sub_1D7D2824C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  __swift_project_boxed_opaque_existential_1(*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_eventHandler) + 6, (*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_eventHandler))[9]);
  v10 = self;
  sub_1D7AF3F18(v9);
  (*(v6 + 8))(v9, v5);
}

@end