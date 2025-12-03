@interface _NUHistogramRenderResult
- (_NUHistogramRenderResult)initWithHistogram:(id)histogram;
@end

@implementation _NUHistogramRenderResult

- (_NUHistogramRenderResult)initWithHistogram:(id)histogram
{
  histogramCopy = histogram;
  v8.receiver = self;
  v8.super_class = _NUHistogramRenderResult;
  v5 = [(_NUHistogramRenderResult *)&v8 init];
  histogram = v5->_histogram;
  v5->_histogram = histogramCopy;

  return v5;
}

@end