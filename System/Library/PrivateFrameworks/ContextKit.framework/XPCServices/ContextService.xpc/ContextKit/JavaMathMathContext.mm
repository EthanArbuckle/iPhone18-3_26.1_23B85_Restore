@interface JavaMathMathContext
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaMathMathContext

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!equal)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    if ([equal getPrecision] == self->precision_)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return [equal getRoundingMode] == self->roundingMode_;
      }

LABEL_8:
      JreThrowClassCastException();
    }
  }

  return 0;
}

- (unint64_t)hash
{
  roundingMode = self->roundingMode_;
  if (!roundingMode)
  {
    JreThrowNullPointerException();
  }

  precision = self->precision_;
  return [(JavaLangEnum *)roundingMode ordinal]| (8 * precision);
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_initWithInt_(0x2Du);
  [(JavaLangStringBuilder *)v3 appendWithCharArray:qword_100555218];
  [(JavaLangStringBuilder *)v3 appendWithInt:self->precision_];
  [(JavaLangStringBuilder *)v3 appendWithChar:32];
  [(JavaLangStringBuilder *)v3 appendWithCharArray:qword_100555220];
  [(JavaLangStringBuilder *)v3 appendWithId:self->roundingMode_];

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaMathMathContext;
  [(JavaMathMathContext *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100164E08();
    }

    v2 = qword_100557E40;
    v3 = [JavaMathMathContext alloc];
    JavaMathMathContext_initWithInt_withJavaMathRoundingModeEnum_(v3, 34, v2);
    JreStrongAssignAndConsume(&JavaMathMathContext_DECIMAL128_, v3);
    if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100164E08();
    }

    v4 = qword_100557E40;
    v5 = [JavaMathMathContext alloc];
    JavaMathMathContext_initWithInt_withJavaMathRoundingModeEnum_(v5, 7, v4);
    JreStrongAssignAndConsume(&JavaMathMathContext_DECIMAL32_, v5);
    if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100164E08();
    }

    v6 = qword_100557E40;
    v7 = [JavaMathMathContext alloc];
    JavaMathMathContext_initWithInt_withJavaMathRoundingModeEnum_(v7, 16, v6);
    JreStrongAssignAndConsume(&JavaMathMathContext_DECIMAL64_, v7);
    if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100164E08();
    }

    v8 = qword_100557E30;
    v9 = [JavaMathMathContext alloc];
    JavaMathMathContext_initWithInt_withJavaMathRoundingModeEnum_(v9, 0, v8);
    JreStrongAssignAndConsume(&JavaMathMathContext_UNLIMITED_, v9);
    v12 = 3997806;
    v11 = *L"precision=roundingMode=";
    JreStrongAssignAndConsume(&qword_100555218, [IOSCharArray newArrayWithChars:&v11 count:10]);
    v10[0] = *L"roundingMode=";
    *(v10 + 10) = *L"ingMode=";
    JreStrongAssignAndConsume(&qword_100555220, [IOSCharArray newArrayWithChars:v10 count:13]);
    atomic_store(1u, JavaMathMathContext__initialized);
  }
}

@end