@interface SunMiscUnsafe
+ (id)getUnsafe;
+ (int)getArrayIndexScaleForComponentTypeWithIOSClass:(id)a3;
+ (int64_t)objectFieldOffset0WithJavaLangReflectField:(id)a3;
+ (void)initialize;
- (BOOL)compareAndSwapIntWithId:(id)a3 withLong:(int64_t)a4 withInt:(int)a5 withInt:(int)a6;
- (BOOL)compareAndSwapLongWithId:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5 withLong:(int64_t)a6;
- (BOOL)compareAndSwapObjectWithId:(id)a3 withLong:(int64_t)a4 withId:(id)a5 withId:(id)a6;
- (id)allocateInstanceWithIOSClass:(id)a3;
- (id)getObjectVolatileWithId:(id)a3 withLong:(int64_t)a4;
- (id)getObjectWithId:(id)a3 withLong:(int64_t)a4;
- (int)arrayBaseOffsetWithIOSClass:(id)a3;
- (int)arrayIndexScaleWithIOSClass:(id)a3;
- (int)getIntVolatileWithId:(id)a3 withLong:(int64_t)a4;
- (int)getIntWithId:(id)a3 withLong:(int64_t)a4;
- (int64_t)getLongVolatileWithId:(id)a3 withLong:(int64_t)a4;
- (int64_t)getLongWithId:(id)a3 withLong:(int64_t)a4;
- (int64_t)objectFieldOffsetWithJavaLangReflectField:(id)a3;
- (void)parkWithBoolean:(BOOL)a3 withLong:(int64_t)a4;
- (void)putIntVolatileWithId:(id)a3 withLong:(int64_t)a4 withInt:(int)a5;
- (void)putIntWithId:(id)a3 withLong:(int64_t)a4 withInt:(int)a5;
- (void)putLongVolatileWithId:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (void)putLongWithId:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (void)putObjectVolatileWithId:(id)a3 withLong:(int64_t)a4 withId:(id)a5;
- (void)putObjectWithId:(id)a3 withLong:(int64_t)a4 withId:(id)a5;
- (void)putOrderedIntWithId:(id)a3 withLong:(int64_t)a4 withInt:(int)a5;
- (void)putOrderedLongWithId:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (void)putOrderedObjectWithId:(id)a3 withLong:(int64_t)a4 withId:(id)a5;
- (void)unparkWithId:(id)a3;
@end

@implementation SunMiscUnsafe

+ (id)getUnsafe
{
  if ((atomic_load_explicit(&SunMiscUnsafe__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028F724();
  }

  return qword_1005570D8;
}

- (int64_t)objectFieldOffsetWithJavaLangReflectField:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (JavaLangReflectModifier_isStaticWithInt_([a3 getModifiers]))
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"valid for instance fields only");
    objc_exception_throw(v5);
  }

  if ((atomic_load_explicit(&SunMiscUnsafe__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028F724();
  }

  return [a3 unsafeOffset];
}

+ (int64_t)objectFieldOffset0WithJavaLangReflectField:(id)a3
{
  if ((atomic_load_explicit(&SunMiscUnsafe__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028F724();
  }

  return [a3 unsafeOffset];
}

- (int)arrayBaseOffsetWithIOSClass:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v3 = [a3 getComponentType];
  if (!v3)
  {
    v12 = JreStrcat("$@", v4, v5, v6, v7, v8, v9, v10, @"Valid for array classes only: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  return sub_10028F05C(v3);
}

- (int)arrayIndexScaleWithIOSClass:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v3 = [a3 getComponentType];
  if (!v3)
  {
    v13 = JreStrcat("$@", v4, v5, v6, v7, v8, v9, v10, @"Valid for array classes only: ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  v11 = v3;
  if ((atomic_load_explicit(&SunMiscUnsafe__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028F724();
  }

  return [v11 getSizeof];
}

+ (int)getArrayIndexScaleForComponentTypeWithIOSClass:(id)a3
{
  if ((atomic_load_explicit(&SunMiscUnsafe__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028F724();
  }

  return [a3 getSizeof];
}

- (BOOL)compareAndSwapIntWithId:(id)a3 withLong:(int64_t)a4 withInt:(int)a5 withInt:(int)a6
{
  v6 = (a3 + a4);
  if (((a3 + a4) & 3) != 0)
  {
    sub_10028F1CC(v6);
  }

  v7 = a5;
  atomic_compare_exchange_strong(v6, &v7, a6);
  return v7 == a5;
}

- (BOOL)compareAndSwapLongWithId:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5 withLong:(int64_t)a6
{
  v6 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(v6);
  }

  v7 = a5;
  atomic_compare_exchange_strong(v6, &v7, a6);
  return v7 == a5;
}

- (BOOL)compareAndSwapObjectWithId:(id)a3 withLong:(int64_t)a4 withId:(id)a5 withId:(id)a6
{
  v6 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(a3 + a4);
  }

  v9 = a6;
  v10 = a5;
  atomic_compare_exchange_strong(v6, &v10, a6);
  v11 = v10 == a5;
  if (v10 == a5)
  {
    v12 = a5;
  }

  else
  {
  }

  return v11;
}

- (int)getIntVolatileWithId:(id)a3 withLong:(int64_t)a4
{
  v4 = (a3 + a4);
  if (((a3 + a4) & 3) != 0)
  {
    sub_10028F1CC(v4);
  }

  return atomic_load(v4);
}

- (void)putIntVolatileWithId:(id)a3 withLong:(int64_t)a4 withInt:(int)a5
{
  v5 = (a3 + a4);
  if (((a3 + a4) & 3) != 0)
  {
    sub_10028F1CC(v5);
  }

  atomic_store(a5, v5);
}

- (int64_t)getLongVolatileWithId:(id)a3 withLong:(int64_t)a4
{
  v4 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(v4);
  }

  return atomic_load(v4);
}

- (void)putLongVolatileWithId:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  v5 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(v5);
  }

  atomic_store(a5, v5);
}

- (id)getObjectVolatileWithId:(id)a3 withLong:(int64_t)a4
{
  v4 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(v4);
  }

  return atomic_load(v4);
}

- (void)putObjectVolatileWithId:(id)a3 withLong:(int64_t)a4 withId:(id)a5
{
  v5 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(a3 + a4);
  }

  v7 = a5;
  v8 = atomic_exchange(v5, a5);

  v9 = v8;
}

- (int)getIntWithId:(id)a3 withLong:(int64_t)a4
{
  v4 = (a3 + a4);
  if (((a3 + a4) & 3) != 0)
  {
    sub_10028F1CC(v4);
  }

  return *v4;
}

- (void)putIntWithId:(id)a3 withLong:(int64_t)a4 withInt:(int)a5
{
  v5 = (a3 + a4);
  if (((a3 + a4) & 3) != 0)
  {
    sub_10028F1CC(v5);
  }

  *v5 = a5;
}

- (void)putOrderedIntWithId:(id)a3 withLong:(int64_t)a4 withInt:(int)a5
{
  v5 = (a3 + a4);
  if (((a3 + a4) & 3) != 0)
  {
    sub_10028F1CC(v5);
  }

  atomic_store(a5, v5);
}

- (int64_t)getLongWithId:(id)a3 withLong:(int64_t)a4
{
  v4 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(v4);
  }

  return *v4;
}

- (void)putLongWithId:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  v5 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(v5);
  }

  *v5 = a5;
}

- (void)putOrderedLongWithId:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  v5 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(v5);
  }

  atomic_store(a5, v5);
}

- (id)getObjectWithId:(id)a3 withLong:(int64_t)a4
{
  v4 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(v4);
  }

  return *v4;
}

- (void)putObjectWithId:(id)a3 withLong:(int64_t)a4 withId:(id)a5
{
  v5 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(a3 + a4);
  }

  v6 = a5;
  __swp(v6, v5);

  v7 = v6;
}

- (void)putOrderedObjectWithId:(id)a3 withLong:(int64_t)a4 withId:(id)a5
{
  v5 = (a3 + a4);
  if (((a3 + a4) & 7) != 0)
  {
    sub_10028F1CC(a3 + a4);
  }

  v7 = a5;
  v8 = atomic_exchange_explicit(v5, a5, memory_order_release);

  v9 = v8;
}

- (void)parkWithBoolean:(BOOL)a3 withLong:(int64_t)a4
{
  v5 = a3;
  v6 = JavaLangThread_currentThread();
  if (v5)
  {
    if (v6)
    {

      [(JavaLangThread *)v6 parkUntilWithLong:a4];
      return;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  [(JavaLangThread *)v6 parkForWithLong:a4];
}

- (void)unparkWithId:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = new_JavaLangIllegalArgumentException_initWithNSString_(@"valid for Threads only");
    objc_exception_throw(v4);
  }

  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [a3 unpark];
}

- (id)allocateInstanceWithIOSClass:(id)a3
{
  v3 = [a3 objcClass];

  return [v3 alloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_1005570D8, [SunMiscUnsafe alloc]);
    JreStrongAssign(&qword_1005570E0, qword_1005570D8);
    atomic_store(1u, &SunMiscUnsafe__initialized);
  }
}

@end