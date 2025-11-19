@interface MSVCallback
+ (id)callbackWithQueue:(id)a3 block:(id)a4;
- (void)invoke;
- (void)invokeWithObject:(id)a3;
@end

@implementation MSVCallback

- (void)invokeWithObject:(id)a3
{
  v4 = a3;
  if (self->_block)
  {
    v5 = MEMORY[0x1B26EC6C0]();
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__MSVCallback_invokeWithObject___block_invoke;
    v8[3] = &unk_1E7982B00;
    v10 = v5;
    v9 = v4;
    v7 = v5;
    dispatch_async(queue, v8);
  }
}

- (void)invoke
{
  v3 = self->_block;
  if (v3)
  {
    v4 = MEMORY[0x1B26EC6C0](v3, a2);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __21__MSVCallback_invoke__block_invoke;
    block[3] = &unk_1E7982AD8;
    v8 = v4;
    v6 = v4;
    dispatch_async(queue, block);
  }
}

+ (id)callbackWithQueue:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MSVCallback);
  [(MSVCallback *)v7 setBlock:v6];

  if (v5)
  {
    [(MSVCallback *)v7 setQueue:v5];
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    [(MSVCallback *)v7 setQueue:v8];
  }

  return v7;
}

@end