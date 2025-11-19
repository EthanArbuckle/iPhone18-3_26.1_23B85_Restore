@interface ViewfinderViewController._Coordinator
- (_TtCV8CameraUI24ViewfinderViewControllerP33_97E8248984EBD43B1770A42696E06CCA12_Coordinator)init;
- (void)viewfinderViewController:(CAMViewfinderViewController *)a3 didRequestUnlockForCameraRollController:(CAMCameraRollController *)a4 withCameraRollActionType:(unint64_t)a5 completionHandler:(id)a6;
- (void)viewfinderViewControllerDidRequestUnlockForDocumentScanning:(CAMViewfinderViewController *)a3 completionHandler:(id)a4;
@end

@implementation ViewfinderViewController._Coordinator

- (void)viewfinderViewController:(CAMViewfinderViewController *)a3 didRequestUnlockForCameraRollController:(CAMCameraRollController *)a4 withCameraRollActionType:(unint64_t)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1A3A31AD0();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1A3A86080;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1A3A86088;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = self;
  sub_1A3A16708(0, 0, v13, &unk_1A3A86090, v18);
}

- (void)viewfinderViewControllerDidRequestUnlockForDocumentScanning:(CAMViewfinderViewController *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC488);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1A3A31AD0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A3A86028;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1A3A86038;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1A3A16708(0, 0, v9, &unk_1A3A86048, v14);
}

- (_TtCV8CameraUI24ViewfinderViewControllerP33_97E8248984EBD43B1770A42696E06CCA12_Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end