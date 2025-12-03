@interface NFGFaceSnapshotViewController
- (NFGFaceSnapshotViewController)initWithCoder:(id)coder;
- (NFGFaceSnapshotViewController)initWithFace:(id)face galleryIdentifier:(id)identifier;
- (NFGFaceSnapshotViewController)initWithFace:(id)face libraryIdentifier:(id)identifier;
- (NFGFaceSnapshotViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation NFGFaceSnapshotViewController

- (NFGFaceSnapshotViewController)initWithFace:(id)face libraryIdentifier:(id)identifier
{
  v5 = sub_25B0E24A0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E2480();
  faceCopy = face;
  v10 = sub_25B0DF6B8(faceCopy, v8);

  return v10;
}

- (NFGFaceSnapshotViewController)initWithFace:(id)face galleryIdentifier:(id)identifier
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E3740();
  faceCopy = face;
  v6 = sub_25B0DF8F8(faceCopy);

  return v6;
}

- (NFGFaceSnapshotViewController)initWithCoder:(id)coder
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_25B0E3D00();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  NFGFaceSnapshotViewController.viewDidLoad()();
}

- (NFGFaceSnapshotViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end