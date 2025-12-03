@interface SYAtomicFIFO
- (SYAtomicFIFO)initWithCapacity:(unint64_t)capacity;
- (id)dequeue;
- (id)dequeueUntil:(id)until;
- (id)head;
- (id)tail;
- (void)enqueue:(id)enqueue;
- (void)removeAllObjects;
@end

@implementation SYAtomicFIFO

- (SYAtomicFIFO)initWithCapacity:(unint64_t)capacity
{
  v10.receiver = self;
  v10.super_class = SYAtomicFIFO;
  v4 = [(SYAtomicFIFO *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:capacity];
    store = v5->_store;
    v5->_store = v6;

    v8 = v5;
  }

  return v5;
}

- (void)enqueue:(id)enqueue
{
  enqueueCopy = enqueue;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_store addObject:enqueueCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)dequeue
{
  os_unfair_lock_lock(&self->_lock);
  firstObject = [(NSMutableArray *)self->_store firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_store removeObjectAtIndex:0];
  }

  os_unfair_lock_unlock(&self->_lock);

  return firstObject;
}

- (id)dequeueUntil:(id)until
{
  untilCopy = until;
  os_unfair_lock_lock(&self->_lock);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3010000000;
  v23 = 0;
  v24 = 0;
  v22 = &unk_1DF8F37BD;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  store = self->_store;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__SYAtomicFIFO_dequeueUntil___block_invoke;
  v9[3] = &unk_1E86CA348;
  v11 = &v19;
  v6 = untilCopy;
  v10 = v6;
  v12 = &v13;
  [(NSMutableArray *)store enumerateObjectsUsingBlock:v9];
  [(NSMutableArray *)self->_store removeObjectsInRange:v20[4], v20[5]];
  os_unfair_lock_unlock(&self->_lock);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

void __29__SYAtomicFIFO_dequeueUntil___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  ++*(*(a1[5] + 8) + 40);
  v8 = v7;
  if ((*(a1[4] + 16))())
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_store removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)head
{
  os_unfair_lock_lock(&self->_lock);
  firstObject = [(NSMutableArray *)self->_store firstObject];
  os_unfair_lock_unlock(&self->_lock);

  return firstObject;
}

- (id)tail
{
  os_unfair_lock_lock(&self->_lock);
  lastObject = [(NSMutableArray *)self->_store lastObject];
  os_unfair_lock_unlock(&self->_lock);

  return lastObject;
}

@end