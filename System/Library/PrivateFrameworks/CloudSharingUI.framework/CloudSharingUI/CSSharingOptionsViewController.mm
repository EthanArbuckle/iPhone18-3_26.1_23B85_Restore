@interface CSSharingOptionsViewController
- (CSSharingOptionsViewController)initWithCollaborationSharingOptions:(id)options layoutMargins:(NSDirectionalEdgeInsets)margins userDidChangeOption:(id)option contentSizeDidChange:(id)change;
- (CSSharingOptionsViewController)initWithCollaborationSharingOptionsView:(id)view userDidChangeOption:(id)option;
- (CSSharingOptionsViewController)initWithSharingOptionsView:(id)view userDidChangeOption:(id)option;
- (void)_commonInitWithControllerAndUpdates:(void *)updates;
- (void)setHostBundleID:(id)d;
@end

@implementation CSSharingOptionsViewController

- (CSSharingOptionsViewController)initWithCollaborationSharingOptions:(id)options layoutMargins:(NSDirectionalEdgeInsets)margins userDidChangeOption:(id)option contentSizeDidChange:(id)change
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  optionsCopy = options;
  optionCopy = option;
  changeCopy = change;
  v19.receiver = self;
  v19.super_class = CSSharingOptionsViewController;
  v16 = [(CSSharingOptionsViewController *)&v19 initWithNibName:0 bundle:0];
  if (v16)
  {
    trailing = [_TtC14CloudSharingUI25SharingOptionsViewFactory createCollaborationShareOptionsView:optionsCopy layoutMargins:optionCopy userDidChangeOption:changeCopy contentSizeDidChange:top, leading, bottom, trailing];
    [(CSSharingOptionsViewController *)v16 _commonInitWithControllerAndUpdates:trailing];
  }

  return v16;
}

- (CSSharingOptionsViewController)initWithCollaborationSharingOptionsView:(id)view userDidChangeOption:(id)option
{
  viewCopy = view;
  optionCopy = option;
  v10.receiver = self;
  v10.super_class = CSSharingOptionsViewController;
  v8 = [(CSSharingOptionsViewController *)&v10 initWithNibName:0 bundle:0];
  if (v8)
  {
    [(CSSharingOptionsViewController *)viewCopy initWithCollaborationSharingOptionsView:optionCopy userDidChangeOption:v8];
  }

  return v8;
}

- (CSSharingOptionsViewController)initWithSharingOptionsView:(id)view userDidChangeOption:(id)option
{
  viewCopy = view;
  optionCopy = option;
  v10.receiver = self;
  v10.super_class = CSSharingOptionsViewController;
  v8 = [(CSSharingOptionsViewController *)&v10 initWithNibName:0 bundle:0];
  if (v8)
  {
    [(CSSharingOptionsViewController *)viewCopy initWithSharingOptionsView:optionCopy userDidChangeOption:v8];
  }

  return v8;
}

- (void)setHostBundleID:(id)d
{
  objc_storeStrong(&self->_hostBundleID, d);
  dCopy = d;
  (*(self->_sourceAppBundleIDDidChangeBlock + 2))();
}

- (void)_commonInitWithControllerAndUpdates:(void *)updates
{
  v34[4] = *MEMORY[0x277D85DE8];
  if (updates)
  {
    v3 = a2;
    sourceAppBundleIDDidChangeBlock = [v3 sourceAppBundleIDDidChangeBlock];
    v5 = updates[124];
    updates[124] = sourceAppBundleIDDidChangeBlock;

    viewController = [v3 viewController];

    [viewController beginAppearanceTransition:1 animated:0];
    view = [viewController view];
    [view setBackgroundColor:0];

    view2 = [viewController view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

    [updates addChildViewController:viewController];
    view3 = [updates view];
    view4 = [viewController view];
    [view3 addSubview:view4];

    v24 = MEMORY[0x277CCAAD0];
    view5 = [updates view];
    widthAnchor = [view5 widthAnchor];
    view6 = [viewController view];
    widthAnchor2 = [view6 widthAnchor];
    v29 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v34[0] = v29;
    view7 = [updates view];
    heightAnchor = [view7 heightAnchor];
    view8 = [viewController view];
    heightAnchor2 = [view8 heightAnchor];
    v23 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v34[1] = v23;
    view9 = [updates view];
    leftAnchor = [view9 leftAnchor];
    view10 = [viewController view];
    leftAnchor2 = [view10 leftAnchor];
    v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v34[2] = v12;
    view11 = [updates view];
    topAnchor = [view11 topAnchor];
    view12 = [viewController view];
    topAnchor2 = [view12 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v34[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
    [v24 activateConstraints:v18];

    [viewController didMoveToParentViewController:updates];
    [viewController endAppearanceTransition];
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