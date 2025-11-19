@interface ComAppleContextkitUtilValueMarshalling
+ (id)getDefaultInstance;
+ (void)initialize;
- (id)getValueConverterWithInt:(int)a3;
- (void)dealloc;
- (void)registerValueConverterWithIOSClass:(id)a3 withComAppleContextkitUtilValueMarshalling_ValueConverter:(id)a4;
@end

@implementation ComAppleContextkitUtilValueMarshalling

+ (id)getDefaultInstance
{
  if ((atomic_load_explicit(ComAppleContextkitUtilValueMarshalling__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10004C170();
  }

  return qword_100554000;
}

- (void)registerValueConverterWithIOSClass:(id)a3 withComAppleContextkitUtilValueMarshalling_ValueConverter:(id)a4
{
  valueConverters = self->valueConverters_;
  if (!valueConverters || (-[JavaUtilMap putWithId:withId:](valueConverters, "putWithId:withId:", a3), !a4) || (v7 = [a4 getCode], (codeToValueConverter = self->codeToValueConverter_) == 0))
  {
    JreThrowNullPointerException();
  }

  v9 = v7;
  v10 = [(JavaUtilMap *)codeToValueConverter getWithId:JavaLangInteger_valueOfWithInt_(v7)];
  if (v10 != a4)
  {
    if (v10)
    {
      v13 = new_JavaLangIllegalStateException_initWithNSString_(@"Already registered ValueConverter with the same code");
      objc_exception_throw(v13);
    }

    v11 = self->codeToValueConverter_;
    v12 = JavaLangInteger_valueOfWithInt_(v9);

    [(JavaUtilMap *)v11 putWithId:v12 withId:a4];
  }
}

- (id)getValueConverterWithInt:(int)a3
{
  codeToValueConverter = self->codeToValueConverter_;
  if (!codeToValueConverter)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilMap *)codeToValueConverter getWithId:JavaLangInteger_valueOfWithInt_(a3)];
  if (!result)
  {
    v12 = JreStrcat("$I", v5, v6, v7, v8, v9, v10, v11, @"Can't find ValueConverter with code ");
    v13 = new_JavaIoIOException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilValueMarshalling;
  [(ComAppleContextkitUtilValueMarshalling *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&ComAppleContextkitUtilValueMarshalling_VALUES_CHARSEQUENCE_, [ComAppleContextkitUtilValueMarshalling__1 alloc]);
    JreStrongAssignAndConsume(&ComAppleContextkitUtilValueMarshalling_VALUES_INTEGER_, [ComAppleContextkitUtilValueMarshalling_IntegerValueConverter alloc]);
    JreStrongAssignAndConsume(&ComAppleContextkitUtilValueMarshalling_VALUES_INTEGER_VINT_, [ComAppleContextkitUtilValueMarshalling__2 alloc]);
    v2 = [ComAppleContextkitUtilValueMarshalling alloc];
    ComAppleContextkitUtilValueMarshalling_init(&v2->super.isa);
    JreStrongAssignAndConsume(&qword_100554000, v2);
    atomic_store(1u, ComAppleContextkitUtilValueMarshalling__initialized);
  }
}

@end