@interface CBStack
- (CBStack)init;
- (CBStack)initWithLength:(unint64_t)a3;
- (id)popObj;
- (void)dealloc;
@end

@implementation CBStack

- (id)popObj
{
  v4 = [(NSMutableArray *)self->_stack objectAtIndex:?];
  v2 = MEMORY[0x1E69E5928](v4);
  [(NSMutableArray *)self->_stack removeObjectAtIndex:0];
  --self->_length;
  return v4;
}

- (CBStack)init
{
  v5 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v2 = objc_opt_class();
  [v5 raise:v4 format:{@"Invalid initialiser for %@.", NSStringFromClass(v2)}];
  return 0;
}

- (CBStack)initWithLength:(unint64_t)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7.receiver = self;
  v7.super_class = CBStack;
  v10 = [(CBStack *)&v7 init];
  if (v10)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBStack", "default");
    v10->_logHandle = v3;
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = [v4 initWithCapacity:v8];
    v10->_stack = v5;
    v10->_length = v8;
  }

  return v10;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](v5->_logHandle);
    v5->_logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](v5->_stack).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBStack;
  [(CBStack *)&v3 dealloc];
}

@end