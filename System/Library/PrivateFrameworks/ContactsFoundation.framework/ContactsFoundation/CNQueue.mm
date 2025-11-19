@interface CNQueue
+ (id)boundedQueueWithCapacity:(unint64_t)a3;
+ (id)boundedQueueWithCapacity:(unint64_t)a3 overflowHandler:(id)a4;
+ (id)priorityQueueWithComparator:(id)a3;
- (CNQueue)init;
- (CNQueue)initWithStrategy:(id)a3;
- (NSArray)allObjects;
- (id)dequeue;
- (id)drain;
- (void)enqueueObjectsFromArray:(id)a3;
@end

@implementation CNQueue

- (CNQueue)init
{
  v3 = objc_alloc_init(_CNDefaultQueueingStrategy);
  v4 = [(CNQueue *)self initWithStrategy:v3];

  return v4;
}

- (id)dequeue
{
  if ([(NSMutableArray *)self->_buffer count])
  {
    v3 = [(NSMutableArray *)self->_buffer firstObject];
    [(NSMutableArray *)self->_buffer removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)allObjects
{
  v2 = [(NSMutableArray *)self->_buffer copy];

  return v2;
}

+ (id)priorityQueueWithComparator:(id)a3
{
  v4 = a3;
  v5 = [[_CNPriorityQueueingStrategy alloc] initWithComparator:v4];

  v6 = [[a1 alloc] initWithStrategy:v5];

  return v6;
}

+ (id)boundedQueueWithCapacity:(unint64_t)a3
{
  v4 = [[_CNBoundedQueueingStrategy alloc] initWithCapacity:a3];
  v5 = [[a1 alloc] initWithStrategy:v4];

  return v5;
}

+ (id)boundedQueueWithCapacity:(unint64_t)a3 overflowHandler:(id)a4
{
  v6 = a4;
  v7 = [[_CNBoundedQueueingStrategy alloc] initWithCapacity:a3 overflowHandler:v6];

  v8 = [[a1 alloc] initWithStrategy:v7];

  return v8;
}

- (CNQueue)initWithStrategy:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CNQueue;
  v6 = [(CNQueue *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    buffer = v6->_buffer;
    v6->_buffer = v7;

    objc_storeStrong(&v6->_strategy, a3);
    v9 = v6;
  }

  return v6;
}

- (void)enqueueObjectsFromArray:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CNQueue *)self enqueue:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)drain
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 addObjectsFromArray:self->_buffer];
  [(NSMutableArray *)self->_buffer removeAllObjects];

  return v3;
}

@end