@interface CSSharingOptionsViewController
- (CSSharingOptionsViewController)initWithCollaborationSharingOptions:(id)a3 layoutMargins:(NSDirectionalEdgeInsets)a4 userDidChangeOption:(id)a5 contentSizeDidChange:(id)a6;
- (CSSharingOptionsViewController)initWithCollaborationSharingOptionsView:(id)a3 userDidChangeOption:(id)a4;
- (CSSharingOptionsViewController)initWithSharingOptionsView:(id)a3 userDidChangeOption:(id)a4;
- (void)_commonInitWithControllerAndUpdates:(void *)a1;
- (void)setHostBundleID:(id)a3;
@end

@implementation CSSharingOptionsViewController

- (CSSharingOptionsViewController)initWithCollaborationSharingOptions:(id)a3 layoutMargins:(NSDirectionalEdgeInsets)a4 userDidChangeOption:(id)a5 contentSizeDidChange:(id)a6
{
  trailing = a4.trailing;
  bottom = a4.bottom;
  leading = a4.leading;
  top = a4.top;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = CSSharingOptionsViewController;
  v16 = [(CSSharingOptionsViewController *)&v19 initWithNibName:0 bundle:0];
  if (v16)
  {
    v18 = [_TtC14CloudSharingUI25SharingOptionsViewFactory createCollaborationShareOptionsView:v13 layoutMargins:v14 userDidChangeOption:v15 contentSizeDidChange:top, leading, bottom, trailing];
    [(CSSharingOptionsViewController *)v16 _commonInitWithControllerAndUpdates:v18];
  }

  return v16;
}

- (CSSharingOptionsViewController)initWithCollaborationSharingOptionsView:(id)a3 userDidChangeOption:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = CSSharingOptionsViewController;
  v8 = [(CSSharingOptionsViewController *)&v10 initWithNibName:0 bundle:0];
  if (v8)
  {
    [(CSSharingOptionsViewController *)v6 initWithCollaborationSharingOptionsView:v7 userDidChangeOption:v8];
  }

  return v8;
}

- (CSSharingOptionsViewController)initWithSharingOptionsView:(id)a3 userDidChangeOption:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = CSSharingOptionsViewController;
  v8 = [(CSSharingOptionsViewController *)&v10 initWithNibName:0 bundle:0];
  if (v8)
  {
    [(CSSharingOptionsViewController *)v6 initWithSharingOptionsView:v7 userDidChangeOption:v8];
  }

  return v8;
}

- (void)setHostBundleID:(id)a3
{
  objc_storeStrong(&self->_hostBundleID, a3);
  v5 = a3;
  (*(self->_sourceAppBundleIDDidChangeBlock + 2))();
}

- (void)_commonInitWithControllerAndUpdates:(void *)a1
{
  v34[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a2;
    v4 = [v3 sourceAppBundleIDDidChangeBlock];
    v5 = a1[124];
    a1[124] = v4;

    v6 = [v3 viewController];

    [v6 beginAppearanceTransition:1 animated:0];
    v7 = [v6 view];
    [v7 setBackgroundColor:0];

    v8 = [v6 view];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    [a1 addChildViewController:v6];
    v9 = [a1 view];
    v10 = [v6 view];
    [v9 addSubview:v10];

    v24 = MEMORY[0x277CCAAD0];
    v33 = [a1 view];
    v31 = [v33 widthAnchor];
    v32 = [v6 view];
    v30 = [v32 widthAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v34[0] = v29;
    v28 = [a1 view];
    v26 = [v28 heightAnchor];
    v27 = [v6 view];
    v25 = [v27 heightAnchor];
    v23 = [v26 constraintEqualToAnchor:v25];
    v34[1] = v23;
    v22 = [a1 view];
    v20 = [v22 leftAnchor];
    v21 = [v6 view];
    v11 = [v21 leftAnchor];
    v12 = [v20 constraintEqualToAnchor:v11];
    v34[2] = v12;
    v13 = [a1 view];
    v14 = [v13 topAnchor];
    v15 = [v6 view];
    v16 = [v15 topAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v34[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
    [v24 activateConstraints:v18];

    [v6 didMoveToParentViewController:a1];
    [v6 endAppearanceTransition];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)initWithCollaborationSharingOptionsView:(void *)a3 userDidChangeOption:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [_TtC14CloudSharingUI25SharingOptionsViewFactory createCollaborationShareOptionsView:a1 layoutMargins:a2 userDidChangeOption:&__block_literal_global contentSizeDidChange:0.0, 0.0, 0.0, 0.0];
  [(CSSharingOptionsViewController *)a3 _commonInitWithControllerAndUpdates:v4];
}

- (void)initWithSharingOptionsView:(void *)a3 userDidChangeOption:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [_TtC14CloudSharingUI25SharingOptionsViewFactory createSharingOptionsView:a1 userDidChangeOption:a2];
  [(CSSharingOptionsViewController *)a3 _commonInitWithControllerAndUpdates:v4];
}

@end