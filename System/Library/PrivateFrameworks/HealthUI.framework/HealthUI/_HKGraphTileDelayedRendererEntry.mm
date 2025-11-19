@interface _HKGraphTileDelayedRendererEntry
- (_HKGraphTileDelayedRendererEntry)initWithImageRenderer:(id)a3 lastAssignmentTime:(double)a4;
@end

@implementation _HKGraphTileDelayedRendererEntry

- (_HKGraphTileDelayedRendererEntry)initWithImageRenderer:(id)a3 lastAssignmentTime:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _HKGraphTileDelayedRendererEntry;
  v8 = [(_HKGraphTileDelayedRendererEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_imageRenderer, a3);
    v9->_lastAssignmentTime = a4;
  }

  return v9;
}

@end