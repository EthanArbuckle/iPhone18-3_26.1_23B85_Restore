@interface NTKRichComplicationBezelEmptyView
- (void)layoutSubviews;
@end

@implementation NTKRichComplicationBezelEmptyView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = NTKRichComplicationBezelEmptyView;
  [(NTKRichComplicationBezelEmptyView *)&v6 layoutSubviews];
  delegate = [(NTKRichComplicationBezelView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(NTKRichComplicationBezelView *)self delegate];
    [delegate2 didUpdateBezelTextForRichComplicationBezelView:self];
  }
}

@end