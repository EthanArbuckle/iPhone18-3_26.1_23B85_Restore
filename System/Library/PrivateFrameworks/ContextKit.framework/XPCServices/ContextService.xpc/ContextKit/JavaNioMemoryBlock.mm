@interface JavaNioMemoryBlock
+ (id)wrapFromJniWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (JavaNioMemoryBlock)initWithLong:(int64_t)a3 withLong:(int64_t)a4;
- (id)description;
- (int)peekIntWithInt:(int)a3 withJavaNioByteOrder:(id)a4;
- (int64_t)peekLongWithInt:(int)a3 withJavaNioByteOrder:(id)a4;
- (signed)peekShortWithInt:(int)a3 withJavaNioByteOrder:(id)a4;
- (void)pokeIntWithInt:(int)a3 withInt:(int)a4 withJavaNioByteOrder:(id)a5;
- (void)pokeLongWithInt:(int)a3 withLong:(int64_t)a4 withJavaNioByteOrder:(id)a5;
- (void)pokeShortWithInt:(int)a3 withShort:(signed __int16)a4 withJavaNioByteOrder:(id)a5;
@end

@implementation JavaNioMemoryBlock

+ (id)wrapFromJniWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  v6 = [JavaNioMemoryBlock_UnmanagedBlock alloc];
  v6->super.address_ = a3;
  v6->super.size_ = a4;

  return v6;
}

- (JavaNioMemoryBlock)initWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  self->address_ = a3;
  self->size_ = a4;
  return self;
}

- (void)pokeShortWithInt:(int)a3 withShort:(signed __int16)a4 withJavaNioByteOrder:(id)a5
{
  if (!a5)
  {
    JreThrowNullPointerException();
  }

  v6 = self->address_ + a3;
  v7 = *(a5 + 8);

  LibcoreIoMemory_pokeShortWithLong_withShort_withBoolean_(v6, a4, v7);
}

- (signed)peekShortWithInt:(int)a3 withJavaNioByteOrder:(id)a4
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  v5 = (self->address_ + a3);
  v6 = *(a4 + 8);

  return LibcoreIoMemory_peekShortWithLong_withBoolean_(v5, v6);
}

- (void)pokeIntWithInt:(int)a3 withInt:(int)a4 withJavaNioByteOrder:(id)a5
{
  if (!a5)
  {
    JreThrowNullPointerException();
  }

  v6 = self->address_ + a3;
  v7 = *(a5 + 8);

  LibcoreIoMemory_pokeIntWithLong_withInt_withBoolean_(v6, a4, v7);
}

- (int)peekIntWithInt:(int)a3 withJavaNioByteOrder:(id)a4
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  v5 = (self->address_ + a3);
  v6 = *(a4 + 8);

  return LibcoreIoMemory_peekIntWithLong_withBoolean_(v5, v6);
}

- (void)pokeLongWithInt:(int)a3 withLong:(int64_t)a4 withJavaNioByteOrder:(id)a5
{
  if (!a5)
  {
    JreThrowNullPointerException();
  }

  v6 = self->address_ + a3;
  v7 = *(a5 + 8);

  LibcoreIoMemory_pokeLongWithLong_withLong_withBoolean_(v6, a4, v7);
}

- (int64_t)peekLongWithInt:(int)a3 withJavaNioByteOrder:(id)a4
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  v5 = (self->address_ + a3);
  v6 = *(a4 + 8);

  return LibcoreIoMemory_peekLongWithLong_withBoolean_(v5, v6);
}

- (id)description
{
  v3 = [-[JavaNioMemoryBlock getClass](self "getClass")];
  address = self->address_;
  return JreStrcat("$CJC", v4, v5, v6, v7, v8, v9, v10, v3);
}

@end