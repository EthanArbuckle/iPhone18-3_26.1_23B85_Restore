@interface CNQueue
+ (id)boundedQueueWithCapacity:(unint64_t)capacity;
+ (id)boundedQueueWithCapacity:(unint64_t)capacity overflowHandler:(id)handler;
+ (id)priorityQueueWithComparator:(id)comparator;
- (CNQueue)init;
- (CNQueue)initWithStrategy:(id)strategy;
- (NSArray)allObjects;
- (id)dequeue;
- (id)drain;
- (void)enqueueObjectsFromArray:(id)array;
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
    firstObject = [(NSMutableArray *)self->_buffer firstObject];
    [(NSMutableArray *)self->_buffer removeObjectAtIndex:0];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (NSArray)allObjects
{
  v2 = [(NSMutableArray *)self->_buffer copy];

  return v2;
}

+ (id)priorityQueueWithComparator:(id)comparator
{
  comparatorCopy = comparator;
  v5 = [[_CNPriorityQueueingStrategy alloc] initWithComparator:comparatorCopy];

  v6 = [[self alloc] initWithStrategy:v5];

  return v6;
}

+ (id)boundedQueueWithCapacity:(unint64_t)capacity
{
  v4 = [[_CNBoundedQueueingStrategy alloc] initWithCapacity:capacity];
  v5 = [[self alloc] initWithStrategy:v4];

  return v5;
}

+ (id)boundedQueueWithCapacity:(unint64_t)capacity overflowHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [[_CNBoundedQueueingStrategy alloc] initWithCapacity:capacity overflowHandler:handlerCopy];

  v8 = [[self alloc] initWithStrategy:v7];

  return v8;
}

- (CNQueue)initWithStrategy:(id)strategy
{
  strategyCopy = strategy;
  v11.receiver = self;
  v11.super_class = CNQueue;
  v6 = [(CNQueue *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    buffer = v6->_buffer;
    v6->_buffer = v7;

    objc_storeStrong(&v6->_strategy, strategy);
    v9 = v6;
  }

  return v6;
}

- (void)enqueueObjectsFromArray:(id)array
{
  v15 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [arrayCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(arrayCopy);
        }

        [(CNQueue *)self enqueue:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [arrayCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)drain
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_buffer];
  [(NSMutableArray *)self->_buffer removeAllObjects];

  return array;
}

@end