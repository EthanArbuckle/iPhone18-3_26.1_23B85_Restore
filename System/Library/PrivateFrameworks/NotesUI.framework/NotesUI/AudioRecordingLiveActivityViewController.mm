@interface AudioRecordingLiveActivityViewController
- (_TtC7NotesUI40AudioRecordingLiveActivityViewController)initWithCoder:(id)a3;
- (_TtC7NotesUI40AudioRecordingLiveActivityViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AudioRecordingLiveActivityViewController

- (_TtC7NotesUI40AudioRecordingLiveActivityViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingFinishedTask) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton) = 0;
  result = sub_1D441ABC4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  v2 = v5.receiver;
  [(AudioRecordingLiveActivityViewController *)&v5 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  v4 = v5.receiver;
  [(AudioRecordingLiveActivityViewController *)&v5 viewIsAppearing:v3];
  sub_1D4417DB4();
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  v2 = v3.receiver;
  [(AudioRecordingLiveActivityViewController *)&v3 viewWillLayoutSubviews];
  sub_1D4417DB4();
}

- (_TtC7NotesUI40AudioRecordingLiveActivityViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end