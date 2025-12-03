@interface CKSelectionViewController
- (_TtC7ChatKit25CKSelectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)toolbarItemForIdentifier:(id)identifier;
- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state;
- (void)configureWithToolbarController:(id)controller;
- (void)handleNewComposeSelection;
- (void)viewDidLoad;
@end

@implementation CKSelectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_190987ECC();
}

- (_TtC7ChatKit25CKSelectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_190D56F10();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return CKSelectionViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)_bridgedUpdateContentUnavailableConfigurationUsingState:(id)state
{
  v4 = sub_190D53470();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D53460();
  selfCopy = self;
  CKSelectionViewController.updateContentUnavailableConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (void)configureWithToolbarController:(id)controller
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_macToolbarController);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_macToolbarController) = controller;
  controllerCopy = controller;
  selfCopy = self;

  [controllerCopy setSecondaryItemProvider_];
  [controllerCopy setShouldDrawPrimaryBlur_];
}

- (void)handleNewComposeSelection
{
  selfCopy = self;
  CKSelectionViewController.handleNewComposeSelection()();
}

- (id)toolbarItemForIdentifier:(id)identifier
{
  if (sub_190D56F10() == 0xD000000000000024 && 0x8000000190E69E50 == v4)
  {
    selfCopy = self;

LABEL_5:
    v8 = sub_19098A884();
    goto LABEL_7;
  }

  v6 = sub_190D58760();
  selfCopy2 = self;

  if (v6)
  {
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

@end