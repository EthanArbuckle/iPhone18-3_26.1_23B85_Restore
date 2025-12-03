@interface CBStack
- (CBStack)init;
- (CBStack)initWithLength:(unint64_t)length;
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

- (CBStack)initWithLength:(unint64_t)length
{
  selfCopy = self;
  v9 = a2;
  lengthCopy = length;
  v7.receiver = self;
  v7.super_class = CBStack;
  selfCopy = [(CBStack *)&v7 init];
  if (selfCopy)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBStack", "default");
    selfCopy->_logHandle = v3;
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = [v4 initWithCapacity:lengthCopy];
    selfCopy->_stack = v5;
    selfCopy->_length = lengthCopy;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_stack).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBStack;
  [(CBStack *)&v3 dealloc];
}

@end