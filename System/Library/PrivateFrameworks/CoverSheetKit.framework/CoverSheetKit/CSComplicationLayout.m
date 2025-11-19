@interface CSComplicationLayout
- (id)_initWithFramesByElement:(id)a3 draggedItemInsertionIndex:(int64_t)a4;
@end

@implementation CSComplicationLayout

- (id)_initWithFramesByElement:(id)a3 draggedItemInsertionIndex:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CSComplicationLayout;
  v8 = [(CSComplicationLayout *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_framesByElement, a3);
    v9->_draggedItemInsertionIndex = a4;
  }

  return v9;
}

@end