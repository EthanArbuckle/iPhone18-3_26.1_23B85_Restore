@interface ICNoteEditorPillOrnamentViewController
- (ICNoteEditorPillOrnamentViewController)initWithRootViewController:(id)controller;
- (NSArray)toolbarItems;
- (void)setToolbarItems:(id)items;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ICNoteEditorPillOrnamentViewController

- (ICNoteEditorPillOrnamentViewController)initWithRootViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorPillOrnamentViewController;
  v3 = [(ICPillOrnamentViewController *)&v7 initWithRootViewController:controller contentAnchorPoint:0.5 sceneAnchorPoint:0.0 offset:0.5 cornerRadius:1.0, 0.0, -20.0, 0.0];
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
  contentView = [(ICPillOrnamentViewController *)self contentView];
  toolbar = [(ICNoteEditorPillOrnamentViewController *)self toolbar];
  [contentView addSubview:toolbar];

  toolbar2 = [(ICNoteEditorPillOrnamentViewController *)self toolbar];
  [toolbar2 ic_addAnchorsToFillSuperview];
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
  toolbar = [(ICNoteEditorPillOrnamentViewController *)self toolbar];
  items = [toolbar items];

  return items;
}

- (void)setToolbarItems:(id)items
{
  itemsCopy = items;
  toolbar = [(ICNoteEditorPillOrnamentViewController *)self toolbar];
  [toolbar setItems:itemsCopy];
}

@end