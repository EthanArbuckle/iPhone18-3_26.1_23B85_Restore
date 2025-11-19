@interface CSCoverSheetContentsContainerView
- (CSCoverSheetView)coverSheetView;
- (void)didAddSubview:(id)a3;
@end

@implementation CSCoverSheetContentsContainerView

- (void)didAddSubview:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSCoverSheetContentsContainerView;
  [(CSCoverSheetContentsContainerView *)&v5 didAddSubview:a3];
  v4 = [(CSCoverSheetContentsContainerView *)self coverSheetView];
  [v4 _orderSubviews];
}

- (CSCoverSheetView)coverSheetView
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetView);

  return WeakRetained;
}

@end