@interface _NUHistogramRenderResult
- (_NUHistogramRenderResult)initWithHistogram:(id)a3;
@end

@implementation _NUHistogramRenderResult

- (_NUHistogramRenderResult)initWithHistogram:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _NUHistogramRenderResult;
  v5 = [(_NUHistogramRenderResult *)&v8 init];
  histogram = v5->_histogram;
  v5->_histogram = v4;

  return v5;
}

@end