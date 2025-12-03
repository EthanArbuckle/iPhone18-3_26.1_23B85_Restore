@interface ICPasswordChangeView
- (ICPasswordChangeViewController)parentViewController;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation ICPasswordChangeView

- (void)layoutSubviews
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v3.receiver = self;
  v3.super_class = ICPasswordChangeView;
  [(ICPasswordChangeView *)&v3 layoutSubviews];
  [MEMORY[0x1E6979518] commit];
}

- (void)updateConstraints
{
  v3 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
  v4 = MEMORY[0x1E696ACD8];
  parentViewController = [(ICPasswordChangeView *)self parentViewController];
  v6 = parentViewController;
  if (v3)
  {
    defaultConstraints = [parentViewController defaultConstraints];
    [v4 deactivateConstraints:defaultConstraints];

    v8 = MEMORY[0x1E696ACD8];
    parentViewController2 = [(ICPasswordChangeView *)self parentViewController];
    [parentViewController2 alternateConstraintsForAXLargerTextSizes];
  }

  else
  {
    alternateConstraintsForAXLargerTextSizes = [parentViewController alternateConstraintsForAXLargerTextSizes];
    [v4 deactivateConstraints:alternateConstraintsForAXLargerTextSizes];

    v8 = MEMORY[0x1E696ACD8];
    parentViewController2 = [(ICPasswordChangeView *)self parentViewController];
    [parentViewController2 defaultConstraints];
  }
  v11 = ;
  [v8 activateConstraints:v11];

  v12.receiver = self;
  v12.super_class = ICPasswordChangeView;
  [(ICPasswordChangeView *)&v12 updateConstraints];
}

- (ICPasswordChangeViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end