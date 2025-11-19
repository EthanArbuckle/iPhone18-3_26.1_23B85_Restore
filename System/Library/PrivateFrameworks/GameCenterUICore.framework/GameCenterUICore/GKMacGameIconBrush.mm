@interface GKMacGameIconBrush
- (CGSize)outputSize;
- (id)renderedImageIdentifier;
@end

@implementation GKMacGameIconBrush

- (id)renderedImageIdentifier
{
  [(GKMacGameIconBrush *)self outputSize];

  return NSStringFromCGSize(*&v2);
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end