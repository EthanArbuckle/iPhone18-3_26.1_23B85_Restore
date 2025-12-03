@interface SunMiscUnsafe
+ (id)getUnsafe;
+ (int)getArrayIndexScaleForComponentTypeWithIOSClass:(id)class;
+ (int64_t)objectFieldOffset0WithJavaLangReflectField:(id)field;
+ (void)initialize;
- (BOOL)compareAndSwapIntWithId:(id)id withLong:(int64_t)long withInt:(int)int withInt:(int)withInt;
- (BOOL)compareAndSwapLongWithId:(id)id withLong:(int64_t)long withLong:(int64_t)withLong withLong:(int64_t)a6;
- (BOOL)compareAndSwapObjectWithId:(id)id withLong:(int64_t)long withId:(id)withId withId:(id)a6;
- (id)allocateInstanceWithIOSClass:(id)class;
- (id)getObjectVolatileWithId:(id)id withLong:(int64_t)long;
- (id)getObjectWithId:(id)id withLong:(int64_t)long;
- (int)arrayBaseOffsetWithIOSClass:(id)class;
- (int)arrayIndexScaleWithIOSClass:(id)class;
- (int)getIntVolatileWithId:(id)id withLong:(int64_t)long;
- (int)getIntWithId:(id)id withLong:(int64_t)long;
- (int64_t)getLongVolatileWithId:(id)id withLong:(int64_t)long;
- (int64_t)getLongWithId:(id)id withLong:(int64_t)long;
- (int64_t)objectFieldOffsetWithJavaLangReflectField:(id)field;
- (void)parkWithBoolean:(BOOL)boolean withLong:(int64_t)long;
- (void)putIntVolatileWithId:(id)id withLong:(int64_t)long withInt:(int)int;
- (void)putIntWithId:(id)id withLong:(int64_t)long withInt:(int)int;
- (void)putLongVolatileWithId:(id)id withLong:(int64_t)long withLong:(int64_t)withLong;
- (void)putLongWithId:(id)id withLong:(int64_t)long withLong:(int64_t)withLong;
- (void)putObjectVolatileWithId:(id)id withLong:(int64_t)long withId:(id)withId;
- (void)putObjectWithId:(id)id withLong:(int64_t)long withId:(id)withId;
- (void)putOrderedIntWithId:(id)id withLong:(int64_t)long withInt:(int)int;
- (void)putOrderedLongWithId:(id)id withLong:(int64_t)long withLong:(int64_t)withLong;
- (void)putOrderedObjectWithId:(id)id withLong:(int64_t)long withId:(id)withId;
- (void)unparkWithId:(id)id;
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

- (int64_t)objectFieldOffsetWithJavaLangReflectField:(id)field
{
  if (!field)
  {
    JreThrowNullPointerException();
  }

  if (JavaLangReflectModifier_isStaticWithInt_([field getModifiers]))
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"valid for instance fields only");
    objc_exception_throw(v5);
  }

  if ((atomic_load_explicit(&SunMiscUnsafe__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028F724();
  }

  return [field unsafeOffset];
}

+ (int64_t)objectFieldOffset0WithJavaLangReflectField:(id)field
{
  if ((atomic_load_explicit(&SunMiscUnsafe__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028F724();
  }

  return [field unsafeOffset];
}

- (int)arrayBaseOffsetWithIOSClass:(id)class
{
  if (!class)
  {
    JreThrowNullPointerException();
  }

  getComponentType = [class getComponentType];
  if (!getComponentType)
  {
    v12 = JreStrcat("$@", v4, v5, v6, v7, v8, v9, v10, @"Valid for array classes only: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  return sub_10028F05C(getComponentType);
}

- (int)arrayIndexScaleWithIOSClass:(id)class
{
  if (!class)
  {
    JreThrowNullPointerException();
  }

  getComponentType = [class getComponentType];
  if (!getComponentType)
  {
    v13 = JreStrcat("$@", v4, v5, v6, v7, v8, v9, v10, @"Valid for array classes only: ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  v11 = getComponentType;
  if ((atomic_load_explicit(&SunMiscUnsafe__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028F724();
  }

  return [v11 getSizeof];
}

+ (int)getArrayIndexScaleForComponentTypeWithIOSClass:(id)class
{
  if ((atomic_load_explicit(&SunMiscUnsafe__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10028F724();
  }

  return [class getSizeof];
}

- (BOOL)compareAndSwapIntWithId:(id)id withLong:(int64_t)long withInt:(int)int withInt:(int)withInt
{
  v6 = (id + long);
  if (((id + long) & 3) != 0)
  {
    sub_10028F1CC(v6);
  }

  intCopy = int;
  atomic_compare_exchange_strong(v6, &intCopy, withInt);
  return intCopy == int;
}

- (BOOL)compareAndSwapLongWithId:(id)id withLong:(int64_t)long withLong:(int64_t)withLong withLong:(int64_t)a6
{
  v6 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(v6);
  }

  withLongCopy = withLong;
  atomic_compare_exchange_strong(v6, &withLongCopy, a6);
  return withLongCopy == withLong;
}

- (BOOL)compareAndSwapObjectWithId:(id)id withLong:(int64_t)long withId:(id)withId withId:(id)a6
{
  v6 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(id + long);
  }

  v9 = a6;
  withIdCopy = withId;
  atomic_compare_exchange_strong(v6, &withIdCopy, a6);
  v11 = withIdCopy == withId;
  if (withIdCopy == withId)
  {
    withIdCopy2 = withId;
  }

  else
  {
  }

  return v11;
}

- (int)getIntVolatileWithId:(id)id withLong:(int64_t)long
{
  v4 = (id + long);
  if (((id + long) & 3) != 0)
  {
    sub_10028F1CC(v4);
  }

  return atomic_load(v4);
}

- (void)putIntVolatileWithId:(id)id withLong:(int64_t)long withInt:(int)int
{
  v5 = (id + long);
  if (((id + long) & 3) != 0)
  {
    sub_10028F1CC(v5);
  }

  atomic_store(int, v5);
}

- (int64_t)getLongVolatileWithId:(id)id withLong:(int64_t)long
{
  v4 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(v4);
  }

  return atomic_load(v4);
}

- (void)putLongVolatileWithId:(id)id withLong:(int64_t)long withLong:(int64_t)withLong
{
  v5 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(v5);
  }

  atomic_store(withLong, v5);
}

- (id)getObjectVolatileWithId:(id)id withLong:(int64_t)long
{
  v4 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(v4);
  }

  return atomic_load(v4);
}

- (void)putObjectVolatileWithId:(id)id withLong:(int64_t)long withId:(id)withId
{
  v5 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(id + long);
  }

  withIdCopy = withId;
  v8 = atomic_exchange(v5, withId);

  v9 = v8;
}

- (int)getIntWithId:(id)id withLong:(int64_t)long
{
  v4 = (id + long);
  if (((id + long) & 3) != 0)
  {
    sub_10028F1CC(v4);
  }

  return *v4;
}

- (void)putIntWithId:(id)id withLong:(int64_t)long withInt:(int)int
{
  v5 = (id + long);
  if (((id + long) & 3) != 0)
  {
    sub_10028F1CC(v5);
  }

  *v5 = int;
}

- (void)putOrderedIntWithId:(id)id withLong:(int64_t)long withInt:(int)int
{
  v5 = (id + long);
  if (((id + long) & 3) != 0)
  {
    sub_10028F1CC(v5);
  }

  atomic_store(int, v5);
}

- (int64_t)getLongWithId:(id)id withLong:(int64_t)long
{
  v4 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(v4);
  }

  return *v4;
}

- (void)putLongWithId:(id)id withLong:(int64_t)long withLong:(int64_t)withLong
{
  v5 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(v5);
  }

  *v5 = withLong;
}

- (void)putOrderedLongWithId:(id)id withLong:(int64_t)long withLong:(int64_t)withLong
{
  v5 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(v5);
  }

  atomic_store(withLong, v5);
}

- (id)getObjectWithId:(id)id withLong:(int64_t)long
{
  v4 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(v4);
  }

  return *v4;
}

- (void)putObjectWithId:(id)id withLong:(int64_t)long withId:(id)withId
{
  v5 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(id + long);
  }

  withIdCopy = withId;
  __swp(withIdCopy, v5);

  v7 = withIdCopy;
}

- (void)putOrderedObjectWithId:(id)id withLong:(int64_t)long withId:(id)withId
{
  v5 = (id + long);
  if (((id + long) & 7) != 0)
  {
    sub_10028F1CC(id + long);
  }

  withIdCopy = withId;
  v8 = atomic_exchange_explicit(v5, withId, memory_order_release);

  v9 = v8;
}

- (void)parkWithBoolean:(BOOL)boolean withLong:(int64_t)long
{
  booleanCopy = boolean;
  v6 = JavaLangThread_currentThread();
  if (booleanCopy)
  {
    if (v6)
    {

      [(JavaLangThread *)v6 parkUntilWithLong:long];
      return;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  [(JavaLangThread *)v6 parkForWithLong:long];
}

- (void)unparkWithId:(id)id
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = new_JavaLangIllegalArgumentException_initWithNSString_(@"valid for Threads only");
    objc_exception_throw(v4);
  }

  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  [id unpark];
}

- (id)allocateInstanceWithIOSClass:(id)class
{
  objcClass = [class objcClass];

  return [objcClass alloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_1005570D8, [SunMiscUnsafe alloc]);
    JreStrongAssign(&qword_1005570E0, qword_1005570D8);
    atomic_store(1u, &SunMiscUnsafe__initialized);
  }
}

@end