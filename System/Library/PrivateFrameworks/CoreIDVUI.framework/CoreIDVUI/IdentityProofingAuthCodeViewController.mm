@interface IdentityProofingAuthCodeViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtC9CoreIDVUI38IdentityProofingAuthCodeViewController)initWithCoder:(id)coder;
- (void)dismissKeyboard;
- (void)keyboardWillHideWithNotification:(id)notification;
- (void)keyboardWillShowWithNotification:(id)notification;
- (void)textFieldDidChange:(id)change;
- (void)updateViewLayout:(id)layout previousTraitCollection:(id)collection;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation IdentityProofingAuthCodeViewController

- (_TtC9CoreIDVUI38IdentityProofingAuthCodeViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_authCodeTextField;
  v5 = [objc_allocWithZone(type metadata accessor for AuthCodeTextField()) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.isa + v4) = v5;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_proofIdentityTask) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_viewConfigured) = 0;
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v2 = v9.receiver;
  [(IdentityProofingViewController *)&v9 viewDidLoad];
  sub_2457B333C();
  sub_2457B3424();
  v3 = objc_opt_self();
  defaultCenter = [v3 defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_keyboardWillShowWithNotification_ name:*MEMORY[0x277D76C60] object:0];

  defaultCenter2 = [v3 defaultCenter];
  [defaultCenter2 addObserver:v2 selector:sel_keyboardWillHideWithNotification_ name:*MEMORY[0x277D76C50] object:0];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  v8 = *&v2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v7 = sub_2457B69C0;
  v7[1] = v6;

  sub_245771C34(v8);

  sub_2457B3508();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2457B37C0(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2457B39A8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(IdentityProofingAuthCodeViewController *)&v7 viewWillDisappear:disappearCopy];
  view = [v4 view];
  if (view)
  {
    v6 = view;
    [view endEditing_];
  }

  else
  {
    __break(1u);
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2457B4914(controller);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_2457B4B0C();
}

- (void)updateViewLayout:(id)layout previousTraitCollection:(id)collection
{
  selfCopy = self;
  sub_2458A3560();
  sub_2458A6BA0(*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_authCodeTextField), 0, 1, 0, 1);
}

- (void)dismissKeyboard
{
  selfCopy = self;
  view = [(IdentityProofingAuthCodeViewController *)selfCopy view];
  if (view)
  {
    v3 = view;
    [view endEditing_];
  }

  else
  {
    __break(1u);
  }
}

- (void)keyboardWillShowWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_2457B5DD4(notificationCopy);
}

- (void)keyboardWillHideWithNotification:(id)notification
{
  selfCopy = self;
  v3 = sub_2458A1930();
  [v3 contentInset];
  [v3 setContentInset_];

  v4 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView);
  [v4 verticalScrollIndicatorInsets];
  [v4 setVerticalScrollIndicatorInsets_];
}

- (void)textFieldDidChange:(id)change
{
  selfCopy = self;
  v3 = sub_2458A1B04();
  [v3 setEnabled_];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  selfCopy = self;
  if (sub_2457B2F28())
  {
    sub_2457B4C80();
  }

  view = [(IdentityProofingAuthCodeViewController *)selfCopy view];
  if (view)
  {
    v5 = view;
    [view endEditing_];

    LOBYTE(view) = 1;
  }

  else
  {
    __break(1u);
  }

  return view;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = sub_245910A04();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_2457B62DC(fieldCopy, location, length, v9, v11);

  return length & 1;
}

@end