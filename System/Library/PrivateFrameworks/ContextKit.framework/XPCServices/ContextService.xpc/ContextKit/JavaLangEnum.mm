@interface JavaLangEnum
+ (void)initialize;
- (JavaLangEnum)initWithNSString:(id)a3 withInt:(int)a4;
- (id)getDeclaringClass;
- (int)compareToWithId:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaLangEnum

- (JavaLangEnum)initWithNSString:(id)a3 withInt:(int)a4
{
  JreStrongAssign(&self->name_, a3);
  self->ordinal_ = a4;
  return self;
}

- (unint64_t)hash
{
  ordinal = self->ordinal_;
  name = self->name_;
  if (name)
  {
    LODWORD(name) = [(NSString *)name hash];
  }

  return name + ordinal;
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return self->ordinal_ - *(a3 + 4);
}

- (id)getDeclaringClass
{
  v2 = [(JavaLangEnum *)self getClass];
  v3 = [v2 getSuperclass];
  v4 = JavaLangEnum_class_();
  objc_opt_class();
  if (v4 == v3)
  {
    if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_7:
      JreThrowClassCastException();
    }
  }

  else if (v3)
  {
    v2 = v3;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    return 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangEnum;
  [(JavaLangEnum *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [JavaLangEnum__1 alloc];
    LibcoreUtilBasicLruCache_initWithInt_(v2, 64);
    JreStrongAssignAndConsume(&qword_1005570C0, v2);
    atomic_store(1u, &JavaLangEnum__initialized);
  }
}

@end