@interface CSComplicationLayout
- (id)_initWithFramesByElement:(id)element draggedItemInsertionIndex:(int64_t)index;
@end

@implementation CSComplicationLayout

- (id)_initWithFramesByElement:(id)element draggedItemInsertionIndex:(int64_t)index
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = CSComplicationLayout;
  v8 = [(CSComplicationLayout *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_framesByElement, element);
    v9->_draggedItemInsertionIndex = index;
  }

  return v9;
}

@end