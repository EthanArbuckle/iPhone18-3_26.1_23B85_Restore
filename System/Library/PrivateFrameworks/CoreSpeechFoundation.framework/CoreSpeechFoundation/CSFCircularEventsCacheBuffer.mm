@interface CSFCircularEventsCacheBuffer
- (CSFCircularEventsCacheBuffer)init;
- (void)addEventToCacheBuffer:(id)buffer;
@end

@implementation CSFCircularEventsCacheBuffer

- (void)addEventToCacheBuffer:(id)buffer
{
  if (buffer)
  {
    [(NSMutableArray *)self->_eventsArray insertObject:buffer atIndex:(self->_lastEventIndex + 1) % 0x14uLL];
  }
}

- (CSFCircularEventsCacheBuffer)init
{
  v7.receiver = self;
  v7.super_class = CSFCircularEventsCacheBuffer;
  v2 = [(CSFCircularEventsCacheBuffer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lastEventIndex = -1;
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:20];
    eventsArray = v3->_eventsArray;
    v3->_eventsArray = v4;
  }

  return v3;
}

@end