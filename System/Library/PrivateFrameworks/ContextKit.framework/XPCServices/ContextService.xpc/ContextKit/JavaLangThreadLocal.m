@interface JavaLangThreadLocal
+ (void)initialize;
- (id)get;
- (id)initializeValuesWithJavaLangThread:(id)a3;
- (id)valuesWithJavaLangThread:(id)a3;
- (void)dealloc;
- (void)remove;
- (void)setWithId:(id)a3;
@end

@implementation JavaLangThreadLocal

- (id)get
{
  v3 = JavaLangThread_currentThread();
  v4 = [(JavaLangThreadLocal *)self valuesWithJavaLangThread:v3];
  if (!v4)
  {
    v5 = [(JavaLangThreadLocal *)self initializeValuesWithJavaLangThread:v3];
    if (v5)
    {
      goto LABEL_10;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = *(v4 + 1);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v4[4];
  v8 = v7 & self->hash__;
  v9 = *(v6 + 8);
  if (v8 < 0 || v8 >= v9)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, v7 & self->hash__);
  }

  if (self->reference_ == *(v6 + 24 + 8 * v8))
  {
    v10 = *(v6 + 8);
    v11 = v8 + 1;
    if (v8 + 1 < 0 || v11 >= v10)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, v11);
    }

    return *(v6 + 24 + 8 * v11);
  }

LABEL_10:

  return [v5 getAfterMissWithJavaLangThreadLocal:self];
}

- (void)setWithId:(id)a3
{
  v5 = JavaLangThread_currentThread();
  v6 = [(JavaLangThreadLocal *)self valuesWithJavaLangThread:v5];
  if (!v6)
  {
    v6 = [(JavaLangThreadLocal *)self initializeValuesWithJavaLangThread:v5];
    if (!v6)
    {
      JreThrowNullPointerException();
    }
  }

  [v6 putWithJavaLangThreadLocal:self withId:a3];
}

- (void)remove
{
  v3 = [(JavaLangThreadLocal *)self valuesWithJavaLangThread:JavaLangThread_currentThread()];
  if (v3)
  {

    [v3 removeWithJavaLangThreadLocal:self];
  }
}

- (id)initializeValuesWithJavaLangThread:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [JavaLangThreadLocal_Values alloc];
  JavaLangThreadLocal_Values_init(v4);

  return JreStrongAssignAndConsume(a3 + 2, v4);
}

- (id)valuesWithJavaLangThread:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return *(a3 + 2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangThreadLocal;
  [(JavaLangThreadLocal *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(0);
    JreStrongAssignAndConsume(&qword_100554B98, v2);
    atomic_store(1u, &JavaLangThreadLocal__initialized);
  }
}

@end