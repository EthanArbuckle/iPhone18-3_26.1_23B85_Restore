@interface CKMessageEntryViewController
- (CKMessageEntryViewController)initWithEntryView:(id)view;
- (void)loadView;
@end

@implementation CKMessageEntryViewController

- (CKMessageEntryViewController)initWithEntryView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = CKMessageEntryViewController;
  v6 = [(CKMessageEntryViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryView, view);
  }

  return v7;
}

- (void)loadView
{
  if ([(CKMessageEntryViewController *)self inputAccessoryViewControllerEnabled])
  {
    entryView = [(CKMessageEntryViewController *)self entryView];
    [(UIInputViewController *)self setView:entryView];
  }
}

@end