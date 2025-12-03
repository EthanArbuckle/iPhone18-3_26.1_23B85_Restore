@interface CUIPSDLayoutMetricsChannel
- (CGRect)edgeInsets;
- (CUIPSDLayoutMetricsChannel)initWithEdgeInsets:(CGRect)insets;
- (void)dealloc;
- (void)sanitizeEdgeInsets;
@end

@implementation CUIPSDLayoutMetricsChannel

- (void)dealloc
{
  [(CUIPSDLayoutMetricsChannel *)self setName:0];
  v3.receiver = self;
  v3.super_class = CUIPSDLayoutMetricsChannel;
  [(CUIPSDLayoutMetricsChannel *)&v3 dealloc];
}

- (void)sanitizeEdgeInsets
{
  if (self->_edgeInsets.origin.x < 0.0)
  {
    self->_edgeInsets.origin.x = 0.0;
  }

  if (self->_edgeInsets.origin.y < 0.0)
  {
    self->_edgeInsets.origin.y = 0.0;
  }

  if (self->_edgeInsets.size.width < 0.0)
  {
    self->_edgeInsets.size.width = 0.0;
  }

  if (self->_edgeInsets.size.height < 0.0)
  {
    self->_edgeInsets.size.height = 0.0;
  }
}

- (CUIPSDLayoutMetricsChannel)initWithEdgeInsets:(CGRect)insets
{
  height = insets.size.height;
  width = insets.size.width;
  y = insets.origin.y;
  x = insets.origin.x;
  v10.receiver = self;
  v10.super_class = CUIPSDLayoutMetricsChannel;
  v7 = [(CUIPSDLayoutMetricsChannel *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_edgeInsets.origin.x = x;
    v7->_edgeInsets.origin.y = y;
    v7->_edgeInsets.size.width = width;
    v7->_edgeInsets.size.height = height;
    [(CUIPSDLayoutMetricsChannel *)v7 sanitizeEdgeInsets];
  }

  return v8;
}

- (CGRect)edgeInsets
{
  x = self->_edgeInsets.origin.x;
  y = self->_edgeInsets.origin.y;
  width = self->_edgeInsets.size.width;
  height = self->_edgeInsets.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end