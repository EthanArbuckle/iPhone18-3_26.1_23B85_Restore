@interface ImageDescriptionViewRepresentable.Coordinator
- (_TtCV23ImagePlaygroundInternal33ImageDescriptionViewRepresentable11Coordinator)init;
- (void)imageDescriptionViewControllerDidCancel:(id)cancel;
- (void)imageDescriptionViewControllerDidSave:(id)save;
@end

@implementation ImageDescriptionViewRepresentable.Coordinator

- (void)imageDescriptionViewControllerDidCancel:(id)cancel
{
  sub_1D2878568();
  v5[2] = self;
  selfCopy = self;
  sub_1D239DDE8(sub_1D25A24BC, v5);
}

- (void)imageDescriptionViewControllerDidSave:(id)save
{
  sub_1D2878568();
  v7[2] = save;
  v7[3] = self;
  saveCopy = save;
  selfCopy = self;
  sub_1D239DDE8(sub_1D25A23E0, v7);
}

- (_TtCV23ImagePlaygroundInternal33ImageDescriptionViewRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end