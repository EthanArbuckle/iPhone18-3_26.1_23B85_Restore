@interface DUEntryViewController
+ (id)entryViewControllerWithDefinitionValue:(id)value;
- (DUEntryViewController)initWithDefinitionValue:(id)value;
- (void)viewDidLoad;
@end

@implementation DUEntryViewController

+ (id)entryViewControllerWithDefinitionValue:(id)value
{
  valueCopy = value;
  v4 = [[DUEntryViewController alloc] initWithDefinitionValue:valueCopy];

  return v4;
}

- (DUEntryViewController)initWithDefinitionValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = DUEntryViewController;
  v5 = [(DUEntryViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(DUEntryViewController *)v5 setDefinitionValue:valueCopy];
    term = [valueCopy term];
    [(DUEntryViewController *)v6 setTitle:term];
  }

  return v6;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = DUEntryViewController;
  [(DUEntryViewController *)&v13 viewDidLoad];
  view = [(DUEntryViewController *)self view];
  [view setAutoresizingMask:18];
  v4 = [objc_alloc(MEMORY[0x277CE38B0]) initWithSource:@"a { pointer-events:none !important; }" forMainFrameOnly:0];
  v5 = objc_opt_new();
  [v5 _addUserStyleSheet:v4];
  v6 = objc_opt_new();
  [v6 setUserContentController:v5];
  v7 = objc_alloc(MEMORY[0x277CE3850]);
  [view bounds];
  v8 = [v7 initWithFrame:v6 configuration:?];
  [v8 setOpaque:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:clearColor];

  [v8 setAutoresizingMask:18];
  definitionValue = [(DUEntryViewController *)self definitionValue];
  longDefinition = [definitionValue longDefinition];
  v12 = [v8 loadHTMLString:longDefinition baseURL:0];

  [view addSubview:v8];
}

@end