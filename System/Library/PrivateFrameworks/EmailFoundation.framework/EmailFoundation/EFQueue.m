@interface EFQueue
+ (id)boundedQueueWithCapacity:(unint64_t)a3;
+ (id)boundedQueueWithCapacity:(unint64_t)a3 overflowHandler:(id)a4;
+ (id)bufferedQueueWithCapacity:(unint64_t)a3 batchHandler:(id)a4;
+ (id)priorityQueueWithComparator:(id)a3;
- (EFQueue)init;
- (EFQueue)initWithStrategy:(id)a3;
- (id)debugDescription;
- (id)dequeue;
- (id)description;
- (id)drain;
@end

@implementation EFQueue

- (id)drain
{
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:self->_buffer];
  [(NSMutableArray *)self->_buffer removeAllObjects];

  return v3;
}

+ (id)priorityQueueWithComparator:(id)a3
{
  v3 = a3;
  v4 = [[_EFPriorityQueueStrategy alloc] initWithComparator:v3];
  v5 = [[EFQueue alloc] initWithStrategy:v4];

  return v5;
}

+ (id)boundedQueueWithCapacity:(unint64_t)a3 overflowHandler:(id)a4
{
  v5 = a4;
  v6 = [[_EFBoundedQueueStrategy alloc] initWithCapacity:a3 overflowHandler:v5];
  v7 = [[EFQueue alloc] initWithStrategy:v6];

  return v7;
}

+ (id)boundedQueueWithCapacity:(unint64_t)a3
{
  v3 = [[_EFBoundedQueueStrategy alloc] initWithCapacity:a3 overflowHandler:0];
  v4 = [[EFQueue alloc] initWithStrategy:v3];

  return v4;
}

+ (id)bufferedQueueWithCapacity:(unint64_t)a3 batchHandler:(id)a4
{
  v5 = a4;
  v6 = [[_EFBufferedQueueStrategy alloc] initWithCapacity:a3 batchHandler:v5];
  v7 = [[EFQueue alloc] initWithStrategy:v6];

  return v7;
}

- (EFQueue)init
{
  v3 = objc_alloc_init(_EFDefaultQueueingStrategy);
  v4 = [(EFQueue *)self initWithStrategy:v3];

  return v4;
}

- (EFQueue)initWithStrategy:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = EFQueue;
  v6 = [(EFQueue *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    buffer = v6->_buffer;
    v6->_buffer = v7;

    objc_storeStrong(&v6->_strategy, a3);
  }

  return v6;
}

- (id)debugDescription
{
  v3 = [(EFQueue *)self description];
  v4 = [(NSMutableArray *)self->_buffer componentsJoinedByString:@", \n\t"];
  if (![v4 length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" {\n\t%@\n}", v4];

    v4 = v5;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v3, v4];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EFQueueingStrategy *)self->_strategy descriptionType];
  v6 = [v3 stringWithFormat:@"<%@: %p> (%@) %lld items", v4, self, v5, -[NSMutableArray count](self->_buffer, "count")];

  return v6;
}

- (id)dequeue
{
  v3 = [(EFQueue *)self peek];
  if (v3)
  {
    [(NSMutableArray *)self->_buffer removeObjectAtIndex:0];
  }

  return v3;
}

@end