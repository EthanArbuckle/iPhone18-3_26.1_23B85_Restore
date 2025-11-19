@interface CKMessageEntryViewController
- (CKMessageEntryViewController)initWithEntryView:(id)a3;
- (void)loadView;
@end

@implementation CKMessageEntryViewController

- (CKMessageEntryViewController)initWithEntryView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKMessageEntryViewController;
  v6 = [(CKMessageEntryViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryView, a3);
  }

  return v7;
}

- (void)loadView
{
  if ([(CKMessageEntryViewController *)self inputAccessoryViewControllerEnabled])
  {
    v3 = [(CKMessageEntryViewController *)self entryView];
    [(UIInputViewController *)self setView:v3];
  }
}

@end