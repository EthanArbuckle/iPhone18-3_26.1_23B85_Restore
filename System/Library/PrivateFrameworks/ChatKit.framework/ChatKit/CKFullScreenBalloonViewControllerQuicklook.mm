@interface CKFullScreenBalloonViewControllerQuicklook
- (CKFullScreenBalloonViewControllerQuicklook)initWithChatItem:(id)item delegate:(id)delegate;
- (CKFullScreenBalloonViewControllerQuicklook)initWithChatItem:(id)item displayConfiguration:(id)configuration delegate:(id)delegate;
- (CKFullScreenBalloonViewControllerQuicklook)initWithCoder:(id)coder;
- (CKFullScreenBalloonViewControllerQuicklook)initWithNibName:(id)name bundle:(id)bundle;
- (void)keyboardWillShow:(id)show;
- (void)showTapbackPicker;
@end

@implementation CKFullScreenBalloonViewControllerQuicklook

- (void)showTapbackPicker
{
  selfCopy = self;
  sub_190934ACC();
}

- (void)keyboardWillShow:(id)show
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60C00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (show)
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

  selfCopy = self;
  sub_190935150(v7);

  sub_19022EEA4(v7, &qword_1EAD60C00);
}

- (CKFullScreenBalloonViewControllerQuicklook)initWithChatItem:(id)item delegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  return [(CKFullScreenBalloonViewController *)&v7 initWithChatItem:item delegate:delegate];
}

- (CKFullScreenBalloonViewControllerQuicklook)initWithChatItem:(id)item displayConfiguration:(id)configuration delegate:(id)delegate
{
  itemCopy = item;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v8 = sub_190D58740();
  v11.receiver = self;
  v11.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  v9 = [(CKFullScreenBalloonViewController *)&v11 initWithChatItem:itemCopy displayConfiguration:v8 delegate:delegate];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

- (CKFullScreenBalloonViewControllerQuicklook)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_190D56F10();
    bundleCopy = bundle;
    v7 = sub_190D56ED0();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  v9 = [(CKFullScreenBalloonViewControllerQuicklook *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (CKFullScreenBalloonViewControllerQuicklook)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  coderCopy = coder;
  v5 = [(CKFullScreenBalloonViewControllerQuicklook *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end