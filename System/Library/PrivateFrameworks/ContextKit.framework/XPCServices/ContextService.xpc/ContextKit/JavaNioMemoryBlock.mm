@interface JavaNioMemoryBlock
+ (id)wrapFromJniWithLong:(int64_t)long withLong:(int64_t)withLong;
- (JavaNioMemoryBlock)initWithLong:(int64_t)long withLong:(int64_t)withLong;
- (id)description;
- (int)peekIntWithInt:(int)int withJavaNioByteOrder:(id)order;
- (int64_t)peekLongWithInt:(int)int withJavaNioByteOrder:(id)order;
- (signed)peekShortWithInt:(int)int withJavaNioByteOrder:(id)order;
- (void)pokeIntWithInt:(int)int withInt:(int)withInt withJavaNioByteOrder:(id)order;
- (void)pokeLongWithInt:(int)int withLong:(int64_t)long withJavaNioByteOrder:(id)order;
- (void)pokeShortWithInt:(int)int withShort:(signed __int16)short withJavaNioByteOrder:(id)order;
@end

@implementation JavaNioMemoryBlock

+ (id)wrapFromJniWithLong:(int64_t)long withLong:(int64_t)withLong
{
  v6 = [JavaNioMemoryBlock_UnmanagedBlock alloc];
  v6->super.address_ = long;
  v6->super.size_ = withLong;

  return v6;
}

- (JavaNioMemoryBlock)initWithLong:(int64_t)long withLong:(int64_t)withLong
{
  self->address_ = long;
  self->size_ = withLong;
  return self;
}

- (void)pokeShortWithInt:(int)int withShort:(signed __int16)short withJavaNioByteOrder:(id)order
{
  if (!order)
  {
    JreThrowNullPointerException();
  }

  v6 = self->address_ + int;
  v7 = *(order + 8);

  LibcoreIoMemory_pokeShortWithLong_withShort_withBoolean_(v6, short, v7);
}

- (signed)peekShortWithInt:(int)int withJavaNioByteOrder:(id)order
{
  if (!order)
  {
    JreThrowNullPointerException();
  }

  v5 = (self->address_ + int);
  v6 = *(order + 8);

  return LibcoreIoMemory_peekShortWithLong_withBoolean_(v5, v6);
}

- (void)pokeIntWithInt:(int)int withInt:(int)withInt withJavaNioByteOrder:(id)order
{
  if (!order)
  {
    JreThrowNullPointerException();
  }

  v6 = self->address_ + int;
  v7 = *(order + 8);

  LibcoreIoMemory_pokeIntWithLong_withInt_withBoolean_(v6, withInt, v7);
}

- (int)peekIntWithInt:(int)int withJavaNioByteOrder:(id)order
{
  if (!order)
  {
    JreThrowNullPointerException();
  }

  v5 = (self->address_ + int);
  v6 = *(order + 8);

  return LibcoreIoMemory_peekIntWithLong_withBoolean_(v5, v6);
}

- (void)pokeLongWithInt:(int)int withLong:(int64_t)long withJavaNioByteOrder:(id)order
{
  if (!order)
  {
    JreThrowNullPointerException();
  }

  v6 = self->address_ + int;
  v7 = *(order + 8);

  LibcoreIoMemory_pokeLongWithLong_withLong_withBoolean_(v6, long, v7);
}

- (int64_t)peekLongWithInt:(int)int withJavaNioByteOrder:(id)order
{
  if (!order)
  {
    JreThrowNullPointerException();
  }

  v5 = (self->address_ + int);
  v6 = *(order + 8);

  return LibcoreIoMemory_peekLongWithLong_withBoolean_(v5, v6);
}

- (id)description
{
  v3 = [-[JavaNioMemoryBlock getClass](self "getClass")];
  address = self->address_;
  return JreStrcat("$CJC", v4, v5, v6, v7, v8, v9, v10, v3);
}

@end