@interface IdentityProofingAuthCodeViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtC9CoreIDVUI38IdentityProofingAuthCodeViewController)initWithCoder:(id)a3;
- (void)dismissKeyboard;
- (void)keyboardWillHideWithNotification:(id)a3;
- (void)keyboardWillShowWithNotification:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)updateViewLayout:(id)a3 previousTraitCollection:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation IdentityProofingAuthCodeViewController

- (_TtC9CoreIDVUI38IdentityProofingAuthCodeViewController)initWithCoder:(id)a3
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
  v4 = [v3 defaultCenter];
  [v4 addObserver:v2 selector:sel_keyboardWillShowWithNotification_ name:*MEMORY[0x277D76C60] object:0];

  v5 = [v3 defaultCenter];
  [v5 addObserver:v2 selector:sel_keyboardWillHideWithNotification_ name:*MEMORY[0x277D76C50] object:0];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  v8 = *&v2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v7 = sub_2457B69C0;
  v7[1] = v6;

  sub_245771C34(v8);

  sub_2457B3508();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2457B37C0(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2457B39A8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(IdentityProofingAuthCodeViewController *)&v7 viewWillDisappear:v3];
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 endEditing_];
  }

  else
  {
    __break(1u);
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2457B4914(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_2457B4B0C();
}

- (void)updateViewLayout:(id)a3 previousTraitCollection:(id)a4
{
  v4 = self;
  sub_2458A3560();
  sub_2458A6BA0(*(&v4->super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_authCodeTextField), 0, 1, 0, 1);
}

- (void)dismissKeyboard
{
  v4 = self;
  v2 = [(IdentityProofingAuthCodeViewController *)v4 view];
  if (v2)
  {
    v3 = v2;
    [v2 endEditing_];
  }

  else
  {
    __break(1u);
  }
}

- (void)keyboardWillShowWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2457B5DD4(v4);
}

- (void)keyboardWillHideWithNotification:(id)a3
{
  v5 = self;
  v3 = sub_2458A1930();
  [v3 contentInset];
  [v3 setContentInset_];

  v4 = *(&v5->super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView);
  [v4 verticalScrollIndicatorInsets];
  [v4 setVerticalScrollIndicatorInsets_];
}

- (void)textFieldDidChange:(id)a3
{
  v4 = self;
  v3 = sub_2458A1B04();
  [v3 setEnabled_];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v3 = self;
  if (sub_2457B2F28())
  {
    sub_2457B4C80();
  }

  v4 = [(IdentityProofingAuthCodeViewController *)v3 view];
  if (v4)
  {
    v5 = v4;
    [v4 endEditing_];

    LOBYTE(v4) = 1;
  }

  else
  {
    __break(1u);
  }

  return v4;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_245910A04();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_2457B62DC(v12, location, length, v9, v11);

  return length & 1;
}

@end