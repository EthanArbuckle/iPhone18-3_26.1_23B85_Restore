@interface JavaLangEnum_$1
- (id)createWithId:(id)id;
@end

@implementation JavaLangEnum_$1

- (id)createWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if (![id isEnum])
  {
    return 0;
  }

  if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v4 = [id getDeclaredMethod:@"values" parameterTypes:LibcoreUtilEmptyArray_CLASS_];
  v5 = v4;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 setAccessibleWithBoolean:1];
  v6 = [v5 invokeWithId:0 withNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, NSObject_class_())}];
  objc_opt_class();
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v6;
}

@end