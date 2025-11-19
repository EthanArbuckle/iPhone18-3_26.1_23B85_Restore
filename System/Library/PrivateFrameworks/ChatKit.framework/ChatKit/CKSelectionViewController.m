@interface CKSelectionViewController
- (_TtC7ChatKit25CKSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)toolbarItemForIdentifier:(id)a3;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3;
- (void)configureWithToolbarController:(id)a3;
- (void)handleNewComposeSelection;
- (void)viewDidLoad;
@end

@implementation CKSelectionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_190987ECC();
}

- (_TtC7ChatKit25CKSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_190D56F10();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return CKSelectionViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = sub_190D53470();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D53460();
  v8 = self;
  CKSelectionViewController.updateContentUnavailableConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (void)configureWithToolbarController:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_macToolbarController);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_macToolbarController) = a3;
  v5 = a3;
  v6 = self;

  [v5 setSecondaryItemProvider_];
  [v5 setShouldDrawPrimaryBlur_];
}

- (void)handleNewComposeSelection
{
  v2 = self;
  CKSelectionViewController.handleNewComposeSelection()();
}

- (id)toolbarItemForIdentifier:(id)a3
{
  if (sub_190D56F10() == 0xD000000000000024 && 0x8000000190E69E50 == v4)
  {
    v5 = self;

LABEL_5:
    v8 = sub_19098A884();
    goto LABEL_7;
  }

  v6 = sub_190D58760();
  v7 = self;

  if (v6)
  {
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end