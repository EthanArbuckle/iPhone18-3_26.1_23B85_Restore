@interface ICDocCamRectangleResultsQueue
- (ICDocCamRectangleResultsQueue)init;
- (id)dequeue;
- (id)peek;
- (id)peek:(int64_t)peek;
- (id)peekTail;
- (int64_t)size;
- (void)apply:(id)apply atIndex:(int64_t)index;
- (void)apply:(id)apply fromIndex:(int64_t)index toIndex:(unint64_t)toIndex;
- (void)clear;
- (void)enqueue:(id)enqueue;
@end

@implementation ICDocCamRectangleResultsQueue

- (ICDocCamRectangleResultsQueue)init
{
  v5.receiver = self;
  v5.super_class = ICDocCamRectangleResultsQueue;
  v2 = [(ICDocCamRectangleResultsQueue *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ICDocCamRectangleResultsQueue *)v2 setArray:v3];
  }

  return v2;
}

- (void)enqueue:(id)enqueue
{
  enqueueCopy = enqueue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [(ICDocCamRectangleResultsQueue *)selfCopy array];
  [array addObject:enqueueCopy];

  objc_sync_exit(selfCopy);
}

- (id)dequeue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [(ICDocCamRectangleResultsQueue *)selfCopy array];
  v4 = [array count];

  if (v4)
  {
    peek = [(ICDocCamRectangleResultsQueue *)selfCopy peek];
    array2 = [(ICDocCamRectangleResultsQueue *)selfCopy array];
    [array2 removeObjectAtIndex:0];
  }

  else
  {
    peek = 0;
  }

  objc_sync_exit(selfCopy);

  return peek;
}

- (void)clear
{
  obj = self;
  objc_sync_enter(obj);
  array = [(ICDocCamRectangleResultsQueue *)obj array];
  [array removeAllObjects];

  objc_sync_exit(obj);
}

- (id)peek
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [(ICDocCamRectangleResultsQueue *)selfCopy array];
  v4 = [array count];

  if (v4)
  {
    array2 = [(ICDocCamRectangleResultsQueue *)selfCopy array];
    v6 = [array2 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 copy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)peek:(int64_t)peek
{
  array = [(ICDocCamRectangleResultsQueue *)self array];
  lastObject = [array lastObject];

  if (lastObject && (-[ICDocCamRectangleResultsQueue array](self, "array"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8 > peek))
  {
    array2 = [(ICDocCamRectangleResultsQueue *)self array];
    v10 = [array2 objectAtIndex:peek];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 copy];

  return v11;
}

- (id)peekTail
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [(ICDocCamRectangleResultsQueue *)selfCopy array];
  v4 = [array count];

  if (v4)
  {
    array2 = [(ICDocCamRectangleResultsQueue *)selfCopy array];
    lastObject = [array2 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:lastObject];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)apply:(id)apply atIndex:(int64_t)index
{
  applyCopy = apply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [(ICDocCamRectangleResultsQueue *)selfCopy array];
  v8 = [array objectAtIndex:index];

  applyCopy[2](applyCopy, v8);
  objc_sync_exit(selfCopy);
}

- (void)apply:(id)apply fromIndex:(int64_t)index toIndex:(unint64_t)toIndex
{
  applyCopy = apply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (index <= toIndex)
  {
    do
    {
      array = [(ICDocCamRectangleResultsQueue *)selfCopy array];
      v16 = [array objectAtIndex:index];

      v17 = applyCopy[2](applyCopy, v16);
      if (++index <= toIndex)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    while ((v18 & 1) != 0);
  }

  else if (index >= toIndex)
  {
    index = index;
    toIndexCopy = toIndex;
    do
    {
      array2 = [(ICDocCamRectangleResultsQueue *)selfCopy array];
      v11 = [array2 objectAtIndex:index];

      v12 = applyCopy[2](applyCopy, v11);
      if (index-- <= toIndexCopy)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12;
      }
    }

    while ((v14 & 1) != 0);
  }

  objc_sync_exit(selfCopy);
}

- (int64_t)size
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  array = [(ICDocCamRectangleResultsQueue *)selfCopy array];
  v4 = [array count];

  objc_sync_exit(selfCopy);
  return v4;
}

@end