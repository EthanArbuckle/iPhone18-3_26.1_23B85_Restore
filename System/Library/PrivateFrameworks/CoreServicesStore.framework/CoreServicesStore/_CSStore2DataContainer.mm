@interface _CSStore2DataContainer
- (_CSStore2DataContainer)initWithBytesNoCopy:(Data *)copy length:(unsigned int)length;
- (void)dealloc;
@end

@implementation _CSStore2DataContainer

- (void)dealloc
{
  p = self->p;
  if (p)
  {
    CSStore2::VM::Deallocate(p, self->pAllocatedLength);
  }

  v4.receiver = self;
  v4.super_class = _CSStore2DataContainer;
  [(_CSStore2DataContainer *)&v4 dealloc];
}

- (_CSStore2DataContainer)initWithBytesNoCopy:(Data *)copy length:(unsigned int)length
{
  v9.receiver = self;
  v9.super_class = _CSStore2DataContainer;
  result = [(_CSStore2DataContainer *)&v9 init];
  if (result)
  {
    result->p = copy;
    v7 = *MEMORY[0x1E69E9AC8];
    v8 = length + *MEMORY[0x1E69E9AC8] - 1;
    if (v8 != v8 % *MEMORY[0x1E69E9AC8])
    {
      v7 *= v8 / v7;
    }

    result->pAllocatedLength = v7;
  }

  return result;
}

@end