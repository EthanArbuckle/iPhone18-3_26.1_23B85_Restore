@interface ICDocCamRectangleResultsQueue
- (ICDocCamRectangleResultsQueue)init;
- (id)dequeue;
- (id)peek;
- (id)peek:(int64_t)a3;
- (id)peekTail;
- (int64_t)size;
- (void)apply:(id)a3 atIndex:(int64_t)a4;
- (void)apply:(id)a3 fromIndex:(int64_t)a4 toIndex:(unint64_t)a5;
- (void)clear;
- (void)enqueue:(id)a3;
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

- (void)enqueue:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(ICDocCamRectangleResultsQueue *)v4 array];
  [v5 addObject:v6];

  objc_sync_exit(v4);
}

- (id)dequeue
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ICDocCamRectangleResultsQueue *)v2 array];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ICDocCamRectangleResultsQueue *)v2 peek];
    v6 = [(ICDocCamRectangleResultsQueue *)v2 array];
    [v6 removeObjectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)clear
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(ICDocCamRectangleResultsQueue *)obj array];
  [v2 removeAllObjects];

  objc_sync_exit(obj);
}

- (id)peek
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ICDocCamRectangleResultsQueue *)v2 array];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ICDocCamRectangleResultsQueue *)v2 array];
    v6 = [v5 objectAtIndex:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 copy];

  objc_sync_exit(v2);

  return v7;
}

- (id)peek:(int64_t)a3
{
  v5 = [(ICDocCamRectangleResultsQueue *)self array];
  v6 = [v5 lastObject];

  if (v6 && (-[ICDocCamRectangleResultsQueue array](self, "array"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8 > a3))
  {
    v9 = [(ICDocCamRectangleResultsQueue *)self array];
    v10 = [v9 objectAtIndex:a3];
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ICDocCamRectangleResultsQueue *)v2 array];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ICDocCamRectangleResultsQueue *)v2 array];
    v6 = [v5 lastObject];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v6];

  objc_sync_exit(v2);

  return v7;
}

- (void)apply:(id)a3 atIndex:(int64_t)a4
{
  v9 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(ICDocCamRectangleResultsQueue *)v6 array];
  v8 = [v7 objectAtIndex:a4];

  v9[2](v9, v8);
  objc_sync_exit(v6);
}

- (void)apply:(id)a3 fromIndex:(int64_t)a4 toIndex:(unint64_t)a5
{
  v19 = a3;
  v8 = self;
  objc_sync_enter(v8);
  if (a4 <= a5)
  {
    do
    {
      v15 = [(ICDocCamRectangleResultsQueue *)v8 array];
      v16 = [v15 objectAtIndex:a4];

      v17 = v19[2](v19, v16);
      if (++a4 <= a5)
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

  else if (a4 >= a5)
  {
    a4 = a4;
    v9 = a5;
    do
    {
      v10 = [(ICDocCamRectangleResultsQueue *)v8 array];
      v11 = [v10 objectAtIndex:a4];

      v12 = v19[2](v19, v11);
      if (a4-- <= v9)
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

  objc_sync_exit(v8);
}

- (int64_t)size
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ICDocCamRectangleResultsQueue *)v2 array];
  v4 = [v3 count];

  objc_sync_exit(v2);
  return v4;
}

@end