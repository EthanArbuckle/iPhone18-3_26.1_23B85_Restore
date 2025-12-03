@interface MagazineCategoriesPickerViewController
- (_TtC7NewsUI238MagazineCategoriesPickerViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI238MagazineCategoriesPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)closeButtonTappedWithSender:(id)sender;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MagazineCategoriesPickerViewController

- (_TtC7NewsUI238MagazineCategoriesPickerViewController)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_coverViewManager;
  sub_219BE6C14();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_219BE6C04();
  v5 = OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_eventManager;
  sub_219100058(0, &qword_27CC135A8, sub_218EF69A0, &type metadata for MagazineCategoriesPickerViewController.Event, MEMORY[0x277D6CAA0]);
  swift_allocObject();
  *(&self->super.super.super.isa + v5) = sub_219BE1D34();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_contentSizeObserver) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)closeButtonTappedWithSender:(id)sender
{
  selfCopy = self;
  parentViewController = [(MagazineCategoriesPickerViewController *)selfCopy parentViewController];
  if (parentViewController)
  {
    v4 = parentViewController;
    [parentViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC7NewsUI238MagazineCategoriesPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2190FE674();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_2190FECC0();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MagazineCategoriesPickerViewController *)&v5 viewDidAppear:appearCopy];
  sub_219BE1D04();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(MagazineCategoriesPickerViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2190FFE98();
}

@end