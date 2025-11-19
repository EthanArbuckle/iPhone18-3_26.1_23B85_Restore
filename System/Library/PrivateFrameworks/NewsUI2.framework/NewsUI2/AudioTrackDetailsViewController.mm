@interface AudioTrackDetailsViewController
- (_TtC7NewsUI231AudioTrackDetailsViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI231AudioTrackDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)didTapPlayPauseButton;
- (void)didTapReadButton;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AudioTrackDetailsViewController

- (_TtC7NewsUI231AudioTrackDetailsViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_trackView;
  type metadata accessor for AudioTrackDetailsView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI231AudioTrackDetailsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  AudioTrackDetailsViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  AudioTrackDetailsViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  AudioTrackDetailsViewController.viewDidLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(AudioTrackDetailsViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_219133710();
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = _s7NewsUI231AudioTrackDetailsViewControllerC012presentationG012forPresented10presenting6sourceSo014UIPresentationG0CSgSo06UIViewG0C_ALSgALtF_0(v8, a4);

  return v12;
}

- (void)didTapPlayPauseButton
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_219134804;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_218793E0C;
  v6[3] = &block_descriptor_19_1;
  v4 = _Block_copy(v6);
  v5 = self;

  [(AudioTrackDetailsViewController *)v5 dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
}

- (void)didTapReadButton
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  v6[4] = sub_2191347C8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_218793E0C;
  v6[3] = &block_descriptor_99;
  v4 = _Block_copy(v6);
  v5 = self;

  [(AudioTrackDetailsViewController *)v5 dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
}

@end