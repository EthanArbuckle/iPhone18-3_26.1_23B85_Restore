@interface SGCircularBufferArray
- (SGCircularBufferArray)initWithCapacity:(unint64_t)a3;
- (id)allObjects;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addObject:(id)a3;
@end

@implementation SGCircularBufferArray

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v5 = a5;
  var0 = a3->var0;
  if (!a3->var0)
  {
    a3->var2 = &self->_mutationDetector;
  }

  if (var0 + a5 > [(NSMutableArray *)self->_backingStore count])
  {
    v5 = [(NSMutableArray *)self->_backingStore count]- a3->var0;
  }

  a3->var1 = a4;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      a4[i] = [(NSMutableArray *)self->_backingStore objectAtIndexedSubscript:(i + self->_currentIndex + a3->var0) % self->_capacity];
    }
  }

  a3->var0 += v5;
  return v5;
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

- (void)addObject:(id)a3
{
  backingStore = self->_backingStore;
  v5 = a3;
  v6 = [(NSMutableArray *)backingStore count];
  v7 = self->_backingStore;
  if (v6 >= self->_capacity)
  {
    [(NSMutableArray *)v7 setObject:v5 atIndexedSubscript:self->_currentIndex];

    self->_currentIndex = (self->_currentIndex + 1) % self->_capacity;
  }

  else
  {
    [(NSMutableArray *)v7 addObject:v5];
  }

  ++self->_mutationDetector;
}

- (SGCircularBufferArray)initWithCapacity:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = SGCircularBufferArray;
  v4 = [(SGCircularBufferArray *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = a3;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    backingStore = v5->_backingStore;
    v5->_backingStore = v6;

    v5->_currentIndex = 0;
  }

  return v5;
}

@end