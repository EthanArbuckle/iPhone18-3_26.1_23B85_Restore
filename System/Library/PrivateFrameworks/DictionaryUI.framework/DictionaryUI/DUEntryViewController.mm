@interface DUEntryViewController
+ (id)entryViewControllerWithDefinitionValue:(id)a3;
- (DUEntryViewController)initWithDefinitionValue:(id)a3;
- (void)viewDidLoad;
@end

@implementation DUEntryViewController

+ (id)entryViewControllerWithDefinitionValue:(id)a3
{
  v3 = a3;
  v4 = [[DUEntryViewController alloc] initWithDefinitionValue:v3];

  return v4;
}

- (DUEntryViewController)initWithDefinitionValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DUEntryViewController;
  v5 = [(DUEntryViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(DUEntryViewController *)v5 setDefinitionValue:v4];
    v7 = [v4 term];
    [(DUEntryViewController *)v6 setTitle:v7];
  }

  return v6;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = DUEntryViewController;
  [(DUEntryViewController *)&v13 viewDidLoad];
  v3 = [(DUEntryViewController *)self view];
  [v3 setAutoresizingMask:18];
  v4 = [objc_alloc(MEMORY[0x277CE38B0]) initWithSource:@"a { pointer-events:none !important; }" forMainFrameOnly:0];
  v5 = objc_opt_new();
  [v5 _addUserStyleSheet:v4];
  v6 = objc_opt_new();
  [v6 setUserContentController:v5];
  v7 = objc_alloc(MEMORY[0x277CE3850]);
  [v3 bounds];
  v8 = [v7 initWithFrame:v6 configuration:?];
  [v8 setOpaque:0];
  v9 = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:v9];

  [v8 setAutoresizingMask:18];
  v10 = [(DUEntryViewController *)self definitionValue];
  v11 = [v10 longDefinition];
  v12 = [v8 loadHTMLString:v11 baseURL:0];

  [v3 addSubview:v8];
}

@end