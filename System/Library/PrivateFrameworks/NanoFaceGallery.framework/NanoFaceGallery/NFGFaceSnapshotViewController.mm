@interface NFGFaceSnapshotViewController
- (NFGFaceSnapshotViewController)initWithCoder:(id)a3;
- (NFGFaceSnapshotViewController)initWithFace:(id)a3 galleryIdentifier:(id)a4;
- (NFGFaceSnapshotViewController)initWithFace:(id)a3 libraryIdentifier:(id)a4;
- (NFGFaceSnapshotViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation NFGFaceSnapshotViewController

- (NFGFaceSnapshotViewController)initWithFace:(id)a3 libraryIdentifier:(id)a4
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
  v9 = a3;
  v10 = sub_25B0DF6B8(v9, v8);

  return v10;
}

- (NFGFaceSnapshotViewController)initWithFace:(id)a3 galleryIdentifier:(id)a4
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E3740();
  v5 = a3;
  v6 = sub_25B0DF8F8(v5);

  return v6;
}

- (NFGFaceSnapshotViewController)initWithCoder:(id)a3
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

  v3 = self;
  NFGFaceSnapshotViewController.viewDidLoad()();
}

- (NFGFaceSnapshotViewController)initWithNibName:(id)a3 bundle:(id)a4
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