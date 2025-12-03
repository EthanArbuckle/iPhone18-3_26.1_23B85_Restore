@interface _HKGraphViewSelectionContext
- (CGRect)seriesSelectionRect;
- (double)minimumSelectionDistance;
@end

@implementation _HKGraphViewSelectionContext

- (double)minimumSelectionDistance
{
  selectionState = [(_HKGraphViewSelectionContext *)self selectionState];
  result = 40.0;
  if (selectionState < 3)
  {
    return 1.79769313e308;
  }

  return result;
}

- (CGRect)seriesSelectionRect
{
  x = self->_seriesSelectionRect.origin.x;
  y = self->_seriesSelectionRect.origin.y;
  width = self->_seriesSelectionRect.size.width;
  height = self->_seriesSelectionRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end