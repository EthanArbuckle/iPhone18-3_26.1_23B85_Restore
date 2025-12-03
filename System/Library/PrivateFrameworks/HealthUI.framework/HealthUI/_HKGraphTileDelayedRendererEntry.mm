@interface _HKGraphTileDelayedRendererEntry
- (_HKGraphTileDelayedRendererEntry)initWithImageRenderer:(id)renderer lastAssignmentTime:(double)time;
@end

@implementation _HKGraphTileDelayedRendererEntry

- (_HKGraphTileDelayedRendererEntry)initWithImageRenderer:(id)renderer lastAssignmentTime:(double)time
{
  rendererCopy = renderer;
  v11.receiver = self;
  v11.super_class = _HKGraphTileDelayedRendererEntry;
  v8 = [(_HKGraphTileDelayedRendererEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_imageRenderer, renderer);
    v9->_lastAssignmentTime = time;
  }

  return v9;
}

@end