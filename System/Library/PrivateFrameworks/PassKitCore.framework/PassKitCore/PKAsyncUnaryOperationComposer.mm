@interface PKAsyncUnaryOperationComposer
- (PKAsyncUnaryOperationComposer)init;
- (id)evaluateWithInput:(id)a3 completion:(id)a4;
- (id)evaluatorWithInput:(id)a3;
- (void)addOperation:(id)a3;
@end

@implementation PKAsyncUnaryOperationComposer

- (PKAsyncUnaryOperationComposer)init
{
  v7.receiver = self;
  v7.super_class = PKAsyncUnaryOperationComposer;
  v2 = [(PKAsyncUnaryOperationComposer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    operations = v3->_operations;
    v3->_operations = v4;
  }

  return v3;
}

- (void)addOperation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_lock);
    operations = self->_operations;
    v6 = _Block_copy(v4);

    [(NSMutableArray *)operations addObject:v6];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)evaluatorWithInput:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableArray *)self->_operations copy];
  os_unfair_lock_unlock(&self->_lock);
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"PKAsyncUnaryOperationComposer: cannot compose operations with nil initial input."];
  }

  v6 = [[PKAsyncUnaryOperationEvaluator alloc] _initWithOperations:v5 input:v4];

  return v6;
}

- (id)evaluateWithInput:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(PKAsyncUnaryOperationComposer *)self evaluatorWithInput:a3];
  v8 = [v7 evaluateWithCompletion:v6];

  return v8;
}

@end