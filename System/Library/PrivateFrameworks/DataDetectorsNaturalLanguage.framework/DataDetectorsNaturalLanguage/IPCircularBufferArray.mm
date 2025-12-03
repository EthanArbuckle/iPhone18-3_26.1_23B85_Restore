@interface IPCircularBufferArray
- (IPCircularBufferArray)initWithCapacity:(unint64_t)capacity;
- (NSArray)allObjects;
- (id)lastObject;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object completionHandler:(id)handler;
@end

@implementation IPCircularBufferArray

- (IPCircularBufferArray)initWithCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = IPCircularBufferArray;
  v4 = [(IPCircularBufferArray *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = capacity;
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:capacity];
    backingStore = v5->_backingStore;
    v5->_backingStore = v6;

    v5->_currentIndex = 0;
  }

  return v5;
}

- (void)addObject:(id)object completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  if ([(NSMutableArray *)self->_backingStore count]>= self->_capacity)
  {
    if (handlerCopy)
    {
      v7 = [(NSMutableArray *)self->_backingStore objectAtIndexedSubscript:self->_currentIndex];
    }

    else
    {
      v7 = 0;
    }

    [(NSMutableArray *)self->_backingStore setObject:objectCopy atIndexedSubscript:self->_currentIndex];
    self->_currentIndex = (self->_currentIndex + 1) % self->_capacity;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v7);
    }
  }

  else
  {
    [(NSMutableArray *)self->_backingStore addObject:objectCopy];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  lastObject = self->_lastObject;
  ++self->_mutationDetector;
  self->_lastObject = objectCopy;
}

- (id)lastObject
{
  v2 = [self->_lastObject copy];

  return v2;
}

- (NSArray)allObjects
{
  p_backingStore = &self->_backingStore;
  backingStore = self->_backingStore;
  v4 = p_backingStore[1];
  if (v4)
  {
    v6 = [(NSMutableArray *)backingStore subarrayWithRange:v4, self->_capacity - v4];
    v7 = [(NSMutableArray *)self->_backingStore subarrayWithRange:0, self->_currentIndex];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];
  }

  else
  {
    v8 = [(NSMutableArray *)backingStore copy];
  }

  return v8;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  countCopy = count;
  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &self->_mutationDetector;
  }

  if (var0 + count > [(NSMutableArray *)self->_backingStore count])
  {
    countCopy = [(NSMutableArray *)self->_backingStore count]- state->var0;
  }

  state->var1 = objects;
  if (countCopy)
  {
    for (i = 0; i != countCopy; ++i)
    {
      objects[i] = [(NSMutableArray *)self->_backingStore objectAtIndexedSubscript:(i + self->_currentIndex + state->var0) % self->_capacity];
    }
  }

  state->var0 += countCopy;
  return countCopy;
}

@end