@interface JavaLangEnum
+ (void)initialize;
- (JavaLangEnum)initWithNSString:(id)string withInt:(int)int;
- (id)getDeclaringClass;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaLangEnum

- (JavaLangEnum)initWithNSString:(id)string withInt:(int)int
{
  JreStrongAssign(&self->name_, string);
  self->ordinal_ = int;
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

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return self->ordinal_ - *(id + 4);
}

- (id)getDeclaringClass
{
  getClass = [(JavaLangEnum *)self getClass];
  getSuperclass = [getClass getSuperclass];
  v4 = JavaLangEnum_class_();
  objc_opt_class();
  if (v4 == getSuperclass)
  {
    if (getClass && (objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_7:
      JreThrowClassCastException();
    }
  }

  else if (getSuperclass)
  {
    getClass = getSuperclass;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    return 0;
  }

  return getClass;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangEnum;
  [(JavaLangEnum *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaLangEnum__1 alloc];
    LibcoreUtilBasicLruCache_initWithInt_(v2, 64);
    JreStrongAssignAndConsume(&qword_1005570C0, v2);
    atomic_store(1u, &JavaLangEnum__initialized);
  }
}

@end