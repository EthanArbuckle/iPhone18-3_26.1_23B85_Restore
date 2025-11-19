@interface GCPromise
- (GCPromise)init;
- (id)debugDescription;
- (id)description;
- (id)initWithFuture:(id *)a1;
- (id)redactedDescription;
- (void)dealloc;
@end

@implementation GCPromise

- (id)initWithFuture:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = GCPromise;
    a1 = objc_msgSendSuper2(&v6, sel_init);
    objc_storeStrong(a1 + 1, a2);
  }

  return a1;
}

- (GCPromise)init
{
  [(GCPromise *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  if ((atomic_load_explicit(&self->_future->_state, memory_order_acquire) & 0x80) != 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [(GCPromise *)self debugDescription];
    [v4 handleFailureInMethod:a2 object:self file:@"GCFuture.mm" lineNumber:1981 description:{@"Promise deallocated without finishing: %@", v5}];

    [(GCFuture *)self->_future cancel];
  }

  v6.receiver = self;
  v6.super_class = GCPromise;
  [(GCPromise *)&v6 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCFuture *)self->_future debugDescription];
  v7 = [v3 stringWithFormat:@"<%@ %p> -> %@", v5, self, v6];

  return v7;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCFuture *)self->_future redactedDescription];
  v7 = [v3 stringWithFormat:@"<%@> -> %@", v5, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCFuture *)self->_future description];
  v7 = [v3 stringWithFormat:@"<%@> -> %@", v5, v6];

  return v7;
}

@end