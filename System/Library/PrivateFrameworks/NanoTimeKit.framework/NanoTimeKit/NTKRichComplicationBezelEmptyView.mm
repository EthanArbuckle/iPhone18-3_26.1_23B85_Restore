@interface NTKRichComplicationBezelEmptyView
- (void)layoutSubviews;
@end

@implementation NTKRichComplicationBezelEmptyView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = NTKRichComplicationBezelEmptyView;
  [(NTKRichComplicationBezelEmptyView *)&v6 layoutSubviews];
  v3 = [(NTKRichComplicationBezelView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(NTKRichComplicationBezelView *)self delegate];
    [v5 didUpdateBezelTextForRichComplicationBezelView:self];
  }
}

@end