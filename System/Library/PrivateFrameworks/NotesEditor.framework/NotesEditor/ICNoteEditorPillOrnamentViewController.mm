@interface ICNoteEditorPillOrnamentViewController
- (ICNoteEditorPillOrnamentViewController)initWithRootViewController:(id)a3;
- (NSArray)toolbarItems;
- (void)setToolbarItems:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ICNoteEditorPillOrnamentViewController

- (ICNoteEditorPillOrnamentViewController)initWithRootViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorPillOrnamentViewController;
  v3 = [(ICPillOrnamentViewController *)&v7 initWithRootViewController:a3 contentAnchorPoint:0.5 sceneAnchorPoint:0.0 offset:0.5 cornerRadius:1.0, 0.0, -20.0, 0.0];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75C58]);
    toolbar = v3->_toolbar;
    v3->_toolbar = v4;

    [(UIToolbar *)v3->_toolbar setItems:MEMORY[0x277CBEBF8]];
  }

  return v3;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ICNoteEditorPillOrnamentViewController;
  [(ICNoteEditorPillOrnamentViewController *)&v6 viewDidLoad];
  v3 = [(ICPillOrnamentViewController *)self contentView];
  v4 = [(ICNoteEditorPillOrnamentViewController *)self toolbar];
  [v3 addSubview:v4];

  v5 = [(ICNoteEditorPillOrnamentViewController *)self toolbar];
  [v5 ic_addAnchorsToFillSuperview];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICNoteEditorPillOrnamentViewController;
  [(ICNoteEditorPillOrnamentViewController *)&v3 viewDidLayoutSubviews];
  [(ICPillOrnamentViewController *)self setPreferredContentSize:445.0, 68.0];
}

- (NSArray)toolbarItems
{
  v2 = [(ICNoteEditorPillOrnamentViewController *)self toolbar];
  v3 = [v2 items];

  return v3;
}

- (void)setToolbarItems:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorPillOrnamentViewController *)self toolbar];
  [v5 setItems:v4];
}

@end