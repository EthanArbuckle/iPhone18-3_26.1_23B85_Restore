@interface SGCircularBufferArray
- (SGCircularBufferArray)initWithCapacity:(unint64_t)capacity;
- (id)allObjects;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object;
@end

@implementation SGCircularBufferArray

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

- (id)allObjects
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
    v8 = backingStore;
  }

  return v8;
}

- (void)addObject:(id)object
{
  backingStore = self->_backingStore;
  objectCopy = object;
  v6 = [(NSMutableArray *)backingStore count];
  v7 = self->_backingStore;
  if (v6 >= self->_capacity)
  {
    [(NSMutableArray *)v7 setObject:objectCopy atIndexedSubscript:self->_currentIndex];

    self->_currentIndex = (self->_currentIndex + 1) % self->_capacity;
  }

  else
  {
    [(NSMutableArray *)v7 addObject:objectCopy];
  }

  ++self->_mutationDetector;
}

- (SGCircularBufferArray)initWithCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = SGCircularBufferArray;
  v4 = [(SGCircularBufferArray *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = capacity;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:capacity];
    backingStore = v5->_backingStore;
    v5->_backingStore = v6;

    v5->_currentIndex = 0;
  }

  return v5;
}

@end