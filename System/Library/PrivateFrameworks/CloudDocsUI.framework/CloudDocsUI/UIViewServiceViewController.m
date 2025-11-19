@interface UIViewServiceViewController
@end

@implementation UIViewServiceViewController

void __55___UIViewServiceViewController_initWithNibName_bundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 preferredContentSize];
  v5 = v4;
  v7 = v6;

  [WeakRetained _updatedContentSizeForPreferredContentSize:{v5, v7}];
  v9 = v8;
  v11 = v10;
  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 setPreferredContentSize:{v9, v11}];
}

@end