@interface JavaNioByteOrder
+ (BOOL)isLittleEndian;
+ (id)nativeOrder;
+ (void)initialize;
- (JavaNioByteOrder)initWithNSString:(id)string withBoolean:(BOOL)boolean;
- (void)dealloc;
@end

@implementation JavaNioByteOrder

+ (BOOL)isLittleEndian
{
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  return 1;
}

- (JavaNioByteOrder)initWithNSString:(id)string withBoolean:(BOOL)boolean
{
  JreStrongAssign(&self->name_, string);
  self->needsSwap_ = boolean;
  return self;
}

+ (id)nativeOrder
{
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  return qword_100554CA8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioByteOrder;
  [(JavaNioByteOrder *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10014A090();
    }

    v2 = [JavaNioByteOrder alloc];
    JreStrongAssign(&v2->name_, @"BIG_ENDIAN");
    v2->needsSwap_ = 1;
    JreStrongAssignAndConsume(&JavaNioByteOrder_BIG_ENDIAN__, v2);
    v3 = [JavaNioByteOrder alloc];
    JreStrongAssign(&v3->name_, @"LITTLE_ENDIAN");
    v3->needsSwap_ = 0;
    JreStrongAssignAndConsume(&JavaNioByteOrder_LITTLE_ENDIAN__, v3);
    JreStrongAssign(&qword_100554CA8, JavaNioByteOrder_LITTLE_ENDIAN__);
    atomic_store(1u, JavaNioByteOrder__initialized);
  }
}

@end