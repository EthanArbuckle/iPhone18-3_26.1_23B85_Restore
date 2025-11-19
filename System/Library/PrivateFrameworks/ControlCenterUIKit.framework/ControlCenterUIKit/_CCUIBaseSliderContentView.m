@interface _CCUIBaseSliderContentView
- (CCUIBaseSliderView)containingSliderView;
- (void)didAddSubview:(id)a3;
@end

@implementation _CCUIBaseSliderContentView

- (CCUIBaseSliderView)containingSliderView
{
  WeakRetained = objc_loadWeakRetained(&self->_containingSliderView);

  return WeakRetained;
}

- (void)didAddSubview:(id)a3
{
  v5.receiver = self;
  v5.super_class = _CCUIBaseSliderContentView;
  [(_CCUIBaseSliderContentView *)&v5 didAddSubview:a3];
  v4 = [(_CCUIBaseSliderContentView *)self containingSliderView];
  [v4 setNeedsLayout];
}

@end