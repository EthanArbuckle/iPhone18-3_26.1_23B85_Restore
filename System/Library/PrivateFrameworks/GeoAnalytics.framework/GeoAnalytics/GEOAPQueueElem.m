@interface GEOAPQueueElem
- (GEOAPQueueElem)init;
- (void)dealloc;
@end

@implementation GEOAPQueueElem

- (GEOAPQueueElem)init
{
  v6.receiver = self;
  v6.super_class = GEOAPQueueElem;
  v2 = [(GEOAPQueueElem *)&v6 init];
  if (v2)
  {
    v3 = _GEOCreateTransaction();
    dirty = v2->_dirty;
    v2->_dirty = v3;
  }

  return v2;
}

- (void)dealloc
{
  dirty = self->_dirty;
  self->_dirty = 0;

  v4.receiver = self;
  v4.super_class = GEOAPQueueElem;
  [(GEOAPQueueElem *)&v4 dealloc];
}

@end