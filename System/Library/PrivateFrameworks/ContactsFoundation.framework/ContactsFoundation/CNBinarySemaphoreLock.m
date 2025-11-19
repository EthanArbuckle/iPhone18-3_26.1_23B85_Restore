@interface CNBinarySemaphoreLock
- (CNBinarySemaphoreLock)init;
- (id)description;
- (void)dealloc;
- (void)invalidate;
- (void)lock;
@end

@implementation CNBinarySemaphoreLock

- (CNBinarySemaphoreLock)init
{
  v8.receiver = self;
  v8.super_class = CNBinarySemaphoreLock;
  v2 = [(CNBinarySemaphoreLock *)&v8 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(1);
    semaphore = v2->_semaphore;
    v2->_semaphore = v3;

    if (!v2->_semaphore)
    {
      v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"dispatch_semaphore_wait failed" userInfo:0];
      objc_exception_throw(v7);
    }

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(CNBinarySemaphoreLock *)self invalidate];
  v3.receiver = self;
  v3.super_class = CNBinarySemaphoreLock;
  [(CNBinarySemaphoreLock *)&v3 dealloc];
}

- (void)invalidate
{
  semaphore = self->_semaphore;
  self->_semaphore = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)lock
{
  if (dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"dispatch_semaphore_wait failed: %@", self];
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v3);
  }
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"semaphore" pointerValue:self->_semaphore];
  v5 = [v3 appendName:@"name" object:self->_name];
  v6 = [v3 build];

  return v6;
}

@end