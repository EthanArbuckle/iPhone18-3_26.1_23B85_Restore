@interface PDFReplicaViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (_TtC12NewsArticles24PDFReplicaViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)PDFViewWillClickOnLink:(id)link withURL:(id)l;
- (void)handlePinchGesture;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation PDFReplicaViewController

- (_TtC12NewsArticles24PDFReplicaViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7C45CD4();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  changeCopy = change;
  [(PDFReplicaViewController *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [v4 traitCollection];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1D7C46004(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D7C46148();
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  sub_1D7C466B8();
}

- (void)handlePinchGesture
{
  selfCopy = self;
  sub_1D7C46E34();
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  sub_1D7992EFC(0, &qword_1EE0BEC90);
  recognizerCopy = recognizer;
  selfCopy = self;
  LOBYTE(self) = sub_1D7D311DC();

  return self & 1;
}

- (void)PDFViewWillClickOnLink:(id)link withURL:(id)l
{
  v5 = sub_1D7D2824C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D281EC();
  __swift_project_boxed_opaque_existential_1(*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_eventHandler) + 6, (*(&self->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_eventHandler))[9]);
  selfCopy = self;
  sub_1D7AF3F18(v9);
  (*(v6 + 8))(v9, v5);
}

@end