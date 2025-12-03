@interface _CCUIBaseSliderContentView
- (CCUIBaseSliderView)containingSliderView;
- (void)didAddSubview:(id)subview;
@end

@implementation _CCUIBaseSliderContentView

- (CCUIBaseSliderView)containingSliderView
{
  WeakRetained = objc_loadWeakRetained(&self->_containingSliderView);

  return WeakRetained;
}

- (void)didAddSubview:(id)subview
{
  v5.receiver = self;
  v5.super_class = _CCUIBaseSliderContentView;
  [(_CCUIBaseSliderContentView *)&v5 didAddSubview:subview];
  containingSliderView = [(_CCUIBaseSliderContentView *)self containingSliderView];
  [containingSliderView setNeedsLayout];
}

@end