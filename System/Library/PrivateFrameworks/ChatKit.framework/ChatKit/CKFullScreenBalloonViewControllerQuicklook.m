@interface CKFullScreenBalloonViewControllerQuicklook
- (CKFullScreenBalloonViewControllerQuicklook)initWithChatItem:(id)a3 delegate:(id)a4;
- (CKFullScreenBalloonViewControllerQuicklook)initWithChatItem:(id)a3 displayConfiguration:(id)a4 delegate:(id)a5;
- (CKFullScreenBalloonViewControllerQuicklook)initWithCoder:(id)a3;
- (CKFullScreenBalloonViewControllerQuicklook)initWithNibName:(id)a3 bundle:(id)a4;
- (void)keyboardWillShow:(id)a3;
- (void)showTapbackPicker;
@end

@implementation CKFullScreenBalloonViewControllerQuicklook

- (void)showTapbackPicker
{
  v2 = self;
  sub_190934ACC();
}

- (void)keyboardWillShow:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60C00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (a3)
  {
    sub_190D50F60();
    v8 = sub_190D50FB0();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_190D50FB0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = self;
  sub_190935150(v7);

  sub_19022EEA4(v7, &qword_1EAD60C00);
}

- (CKFullScreenBalloonViewControllerQuicklook)initWithChatItem:(id)a3 delegate:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  return [(CKFullScreenBalloonViewController *)&v7 initWithChatItem:a3 delegate:a4];
}

- (CKFullScreenBalloonViewControllerQuicklook)initWithChatItem:(id)a3 displayConfiguration:(id)a4 delegate:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v8 = sub_190D58740();
  v11.receiver = self;
  v11.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  v9 = [(CKFullScreenBalloonViewController *)&v11 initWithChatItem:v7 displayConfiguration:v8 delegate:a5];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

- (CKFullScreenBalloonViewControllerQuicklook)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_190D56F10();
    v6 = a4;
    v7 = sub_190D56ED0();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  v9 = [(CKFullScreenBalloonViewControllerQuicklook *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (CKFullScreenBalloonViewControllerQuicklook)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  v4 = a3;
  v5 = [(CKFullScreenBalloonViewControllerQuicklook *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end