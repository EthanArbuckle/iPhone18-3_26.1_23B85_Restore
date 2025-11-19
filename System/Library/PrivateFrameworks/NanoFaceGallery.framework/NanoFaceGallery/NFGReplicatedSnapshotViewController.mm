@interface NFGReplicatedSnapshotViewController
- (NFGReplicatedSnapshotViewController)initWithCoder:(id)a3;
- (NFGReplicatedSnapshotViewController)initWithFace:(id)a3 uuid:(id)a4;
- (NFGReplicatedSnapshotViewController)initWithFace:(id)a3 uuid:(id)a4 index:(unint64_t)a5;
- (NFGReplicatedSnapshotViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NTKFace)face;
- (void)viewDidLoad;
@end

@implementation NFGReplicatedSnapshotViewController

- (NTKFace)face
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR___NFGReplicatedSnapshotViewController__face);

  return v3;
}

- (NFGReplicatedSnapshotViewController)initWithFace:(id)a3 uuid:(id)a4
{
  v6 = sub_25B0E24A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E2480();
  v11 = a3;
  v12 = sub_25B0E2470();
  v13 = [(NFGReplicatedSnapshotViewController *)self initWithFace:v11 uuid:v12 index:100];

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (NFGReplicatedSnapshotViewController)initWithFace:(id)a3 uuid:(id)a4 index:(unint64_t)a5
{
  v7 = sub_25B0E24A0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E2480();
  v11 = NFGReplicatedSnapshotViewController.init(face:uuid:index:)(a3, v10, a5);

  return v11;
}

- (NFGReplicatedSnapshotViewController)initWithCoder:(id)a3
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
  NFGReplicatedSnapshotViewController.viewDidLoad()();
}

- (NFGReplicatedSnapshotViewController)initWithNibName:(id)a3 bundle:(id)a4
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