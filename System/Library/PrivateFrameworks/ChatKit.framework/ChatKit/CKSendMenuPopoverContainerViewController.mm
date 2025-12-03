@interface CKSendMenuPopoverContainerViewController
- (CKSendMenuPopoverPresentationDelegate)delegate;
- (_TtC7ChatKit40CKSendMenuPopoverContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)updateChildViewController:(id)controller style:(unint64_t)style completion:(id)completion;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKSendMenuPopoverContainerViewController

- (CKSendMenuPopoverPresentationDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)updateChildViewController:(id)controller style:(unint64_t)style completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  controllerCopy = controller;
  selfCopy = self;
  sub_190AEDF68(controllerCopy, style, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_190AED8AC(appear);
}

- (_TtC7ChatKit40CKSendMenuPopoverContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end