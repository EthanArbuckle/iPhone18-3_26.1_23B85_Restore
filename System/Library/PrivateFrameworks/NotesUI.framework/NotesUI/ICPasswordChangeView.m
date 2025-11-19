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
  v5 = [(ICPasswordChangeView *)self parentViewController];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 defaultConstraints];
    [v4 deactivateConstraints:v7];

    v8 = MEMORY[0x1E696ACD8];
    v9 = [(ICPasswordChangeView *)self parentViewController];
    [v9 alternateConstraintsForAXLargerTextSizes];
  }

  else
  {
    v10 = [v5 alternateConstraintsForAXLargerTextSizes];
    [v4 deactivateConstraints:v10];

    v8 = MEMORY[0x1E696ACD8];
    v9 = [(ICPasswordChangeView *)self parentViewController];
    [v9 defaultConstraints];
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