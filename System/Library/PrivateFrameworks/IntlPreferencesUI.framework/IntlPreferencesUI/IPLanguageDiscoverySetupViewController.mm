@interface IPLanguageDiscoverySetupViewController
- (IPLanguageDiscoverySetupViewController)initWithCoder:(id)coder;
- (IPLanguageDiscoverySetupViewController)initWithLocaleIdentifier:(id)identifier completionHandler:(id)handler;
- (IPLanguageDiscoverySetupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NSString)localeIdentifier;
- (id)completionHandler;
- (void)setCompletionHandler:(id)handler;
- (void)setLocaleIdentifier:(id)identifier;
- (void)viewDidLoad;
@end

@implementation IPLanguageDiscoverySetupViewController

- (NSString)localeIdentifier
{
  v2 = (self + OBJC_IVAR___IPLanguageDiscoverySetupViewController_localeIdentifier);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_25556D6DC();

  return v5;
}

- (void)setLocaleIdentifier:(id)identifier
{
  v4 = sub_25556D6EC();
  v6 = v5;
  v7 = (self + OBJC_IVAR___IPLanguageDiscoverySetupViewController_localeIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (id)completionHandler
{
  v2 = (self + OBJC_IVAR___IPLanguageDiscoverySetupViewController_completionHandler);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  aBlock[4] = v3;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25556870C;
  aBlock[3] = &block_descriptor_12;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (void)setCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___IPLanguageDiscoverySetupViewController_completionHandler);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = sub_255569724;
  v6[1] = v5;
}

- (IPLanguageDiscoverySetupViewController)initWithLocaleIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_25556D6EC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = (self + OBJC_IVAR___IPLanguageDiscoverySetupViewController_localeIdentifier);
  *v10 = v6;
  v10[1] = v8;
  v11 = (self + OBJC_IVAR___IPLanguageDiscoverySetupViewController_completionHandler);
  *v11 = sub_25556969C;
  v11[1] = v9;
  v13.receiver = self;
  v13.super_class = IPLanguageDiscoverySetupViewController;
  return [(IPLanguageDiscoverySetupViewController *)&v13 initWithNibName:0 bundle:0];
}

- (IPLanguageDiscoverySetupViewController)initWithCoder:(id)coder
{
  result = sub_25556D73C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  IPLanguageDiscoverySetupViewController.viewDidLoad()();
}

- (IPLanguageDiscoverySetupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end