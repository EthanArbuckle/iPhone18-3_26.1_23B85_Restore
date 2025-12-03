@interface WDClinicalAccountAddedViewController
- (WDClinicalAccountAddedViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (WDClinicalAccountAddedViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)dismissHandler;
- (void)hxui_primaryFooterButtonTapped;
- (void)setDismissHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation WDClinicalAccountAddedViewController

- (id)dismissHandler
{
  v2 = (self + OBJC_IVAR___WDClinicalAccountAddedViewController_dismissHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CBD3C;
    aBlock[3] = &block_descriptor_44;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDismissHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1D11D45A8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___WDClinicalAccountAddedViewController_dismissHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_1D1138F60(v7);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D123A680();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccountAddedViewController();
  v4 = v6.receiver;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:appearCopy];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D1264228(sub_1D123C03C, v5);
}

- (void)hxui_primaryFooterButtonTapped
{
  v2 = *(self + OBJC_IVAR___WDClinicalAccountAddedViewController_shouldPromptForDataCollection);
  selfCopy = self;
  sub_1D123AE58(v2);
}

- (WDClinicalAccountAddedViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (WDClinicalAccountAddedViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end