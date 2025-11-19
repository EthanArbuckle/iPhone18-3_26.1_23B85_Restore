@interface ImagePickerView.Coordinator
- (_TtCV11MedicalIDUI15ImagePickerView11Coordinator)init;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
@end

@implementation ImagePickerView.Coordinator

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_258869CA0(&qword_27F95D660, type metadata accessor for InfoKey);
  v6 = sub_2588BD768();
  v7 = a3;
  v8 = self;
  sub_25886A104(v6);
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v4 = sub_2588BC298();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_258804A60(0);
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = self;
  sub_25885299C(v10);
  MEMORY[0x259C8C5A0](v7);
  sub_2588BC288();
  sub_2588BD438();

  sub_258869DE0(v10, sub_258804A60);
}

- (_TtCV11MedicalIDUI15ImagePickerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end