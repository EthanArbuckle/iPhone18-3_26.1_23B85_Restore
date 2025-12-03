@interface HURingBuffer
- (HURingBuffer)initWithCount:(unint64_t)count;
- (id)content;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addObject:(id)object;
- (void)reset;
@end

@implementation HURingBuffer

- (HURingBuffer)initWithCount:(unint64_t)count
{
  v9.receiver = self;
  v9.super_class = HURingBuffer;
  v4 = [(HURingBuffer *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_size = count;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4->_size];
    bufferArray = v5->_bufferArray;
    v5->_bufferArray = v6;

    [(HURingBuffer *)v5 reset];
  }

  return v5;
}

- (void)addObject:(id)object
{
  head = self->_head;
  bufferArray = self->_bufferArray;
  objectCopy = object;
  v7 = [(NSMutableArray *)bufferArray count];
  v8 = self->_bufferArray;
  if (head >= v7)
  {
    [(NSMutableArray *)v8 addObject:objectCopy];
  }

  else
  {
    [(NSMutableArray *)v8 replaceObjectAtIndex:self->_head withObject:objectCopy];
  }

  self->_head = (self->_head + 1) % self->_size;
}

- (id)content
{
  v3 = [(NSMutableArray *)self->_bufferArray count];
  bufferArray = self->_bufferArray;
  if (v3 >= self->_size)
  {
    v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, self->_head}];
    v7 = [(NSMutableArray *)bufferArray objectsAtIndexes:v6];

    v8 = self->_bufferArray;
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{self->_head, self->_size - self->_head}];
    v10 = [(NSMutableArray *)v8 objectsAtIndexes:v9];

    v11 = [v10 arrayByAddingObjectsFromArray:v7];
    v5 = [v11 copy];
  }

  else
  {
    v5 = [(NSMutableArray *)self->_bufferArray copy];
  }

  return v5;
}

- (void)reset
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_size];
  bufferArray = self->_bufferArray;
  self->_bufferArray = v3;

  self->_head = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HURingBuffer alloc] initWithCount:self->_size];
  v4->_head = self->_head;
  v5 = [(NSMutableArray *)self->_bufferArray copy];
  bufferArray = v4->_bufferArray;
  v4->_bufferArray = v5;

  return v4;
}

@end