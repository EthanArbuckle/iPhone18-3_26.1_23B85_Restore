@interface CSCoverSheetContentsContainerView
- (CSCoverSheetView)coverSheetView;
- (void)didAddSubview:(id)subview;
@end

@implementation CSCoverSheetContentsContainerView

- (void)didAddSubview:(id)subview
{
  v5.receiver = self;
  v5.super_class = CSCoverSheetContentsContainerView;
  [(CSCoverSheetContentsContainerView *)&v5 didAddSubview:subview];
  coverSheetView = [(CSCoverSheetContentsContainerView *)self coverSheetView];
  [coverSheetView _orderSubviews];
}

- (CSCoverSheetView)coverSheetView
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetView);

  return WeakRetained;
}

@end