@interface BWAutoSuggestTracker
- (BWAutoSuggestTracker)init;
- (CGRect)rect;
- (void)dealloc;
@end

@implementation BWAutoSuggestTracker

- (BWAutoSuggestTracker)init
{
  v5.receiver = self;
  v5.super_class = BWAutoSuggestTracker;
  v2 = [(BWAutoSuggestTracker *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_objectType = 0;
    v2->_combinedTrackerID = 0;
    v2->_validObjectCounter = 0;
    v2->_rect.origin = 0u;
    v2->_rect.size = 0u;
    v2->_centersIn = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_objectAreaIn = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_centerVx = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_centerVy = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_centerDx = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_centerDy = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWAutoSuggestTracker;
  [(BWAutoSuggestTracker *)&v3 dealloc];
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end