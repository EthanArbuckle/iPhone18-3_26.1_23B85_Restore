@interface CKSendMenuPopoverContainerViewController
- (CKSendMenuPopoverPresentationDelegate)delegate;
- (_TtC7ChatKit40CKSendMenuPopoverContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)updateChildViewController:(id)a3 style:(unint64_t)a4 completion:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKSendMenuPopoverContainerViewController

- (CKSendMenuPopoverPresentationDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)updateChildViewController:(id)a3 style:(unint64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = self;
  sub_190AEDF68(v9, a4, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_190AED8AC(a3);
}

- (_TtC7ChatKit40CKSendMenuPopoverContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end