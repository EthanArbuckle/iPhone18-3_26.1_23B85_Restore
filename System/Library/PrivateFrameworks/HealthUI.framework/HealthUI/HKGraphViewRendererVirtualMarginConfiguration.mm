@interface HKGraphViewRendererVirtualMarginConfiguration
- (HKGraphViewRendererVirtualMarginConfiguration)initWithVirtualLeftMarginWidth:(double)width virtualRightMarginWidth:(double)marginWidth virtualLeftMarginStyle:(int64_t)style virtualRightMarginStyle:(int64_t)marginStyle;
@end

@implementation HKGraphViewRendererVirtualMarginConfiguration

- (HKGraphViewRendererVirtualMarginConfiguration)initWithVirtualLeftMarginWidth:(double)width virtualRightMarginWidth:(double)marginWidth virtualLeftMarginStyle:(int64_t)style virtualRightMarginStyle:(int64_t)marginStyle
{
  v11.receiver = self;
  v11.super_class = HKGraphViewRendererVirtualMarginConfiguration;
  result = [(HKGraphViewRendererVirtualMarginConfiguration *)&v11 init];
  if (result)
  {
    result->_virtualLeftMarginWidth = width;
    result->_virtualRightMarginWidth = marginWidth;
    result->_virtualLeftMarginStyle = style;
    result->_virtualRightMarginStyle = marginStyle;
  }

  return result;
}

@end