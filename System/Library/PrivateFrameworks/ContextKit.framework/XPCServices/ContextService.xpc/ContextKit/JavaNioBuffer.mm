@interface JavaNioBuffer
- (id)clear;
- (id)description;
- (id)flip;
- (id)reset;
- (void)checkWritable;
@end

@implementation JavaNioBuffer

- (id)clear
{
  *(self + 2) = 0xFFFFFFFFLL;
  *(self + 3) = *(self + 2);
  return self;
}

- (id)flip
{
  *(self + 3) = *(self + 5);
  *(self + 2) = 0xFFFFFFFFLL;
  return self;
}

- (void)checkWritable
{
  if ([(JavaNioBuffer *)self isReadOnly])
  {
    v2 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Read-only buffer");
    objc_exception_throw(v2);
  }
}

- (id)reset
{
  v2 = *(self + 4);
  if (v2 == -1)
  {
    v3 = new_JavaNioInvalidMarkException_initWithNSString_(@"Mark not set");
    objc_exception_throw(v3);
  }

  *(self + 5) = v2;
  return self;
}

- (id)description
{
  v3 = [-[JavaNioBuffer getClass](self "getClass")];
  capacity = self->capacity_;
  limit = self->limit_;
  position = self->position_;
  return JreStrcat("$$I$I$IC", v4, v5, v6, v7, v8, v9, v10, v3);
}

@end