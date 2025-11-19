@interface ImageDescriptionViewRepresentable.Coordinator
- (_TtCV23ImagePlaygroundInternal33ImageDescriptionViewRepresentable11Coordinator)init;
- (void)imageDescriptionViewControllerDidCancel:(id)a3;
- (void)imageDescriptionViewControllerDidSave:(id)a3;
@end

@implementation ImageDescriptionViewRepresentable.Coordinator

- (void)imageDescriptionViewControllerDidCancel:(id)a3
{
  sub_1D2878568();
  v5[2] = self;
  v4 = self;
  sub_1D239DDE8(sub_1D25A24BC, v5);
}

- (void)imageDescriptionViewControllerDidSave:(id)a3
{
  sub_1D2878568();
  v7[2] = a3;
  v7[3] = self;
  v5 = a3;
  v6 = self;
  sub_1D239DDE8(sub_1D25A23E0, v7);
}

- (_TtCV23ImagePlaygroundInternal33ImageDescriptionViewRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end