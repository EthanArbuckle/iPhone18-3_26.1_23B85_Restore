@interface ComAppleContextkitUtilKeylessMapBase_BucketOffset
- (ComAppleContextkitUtilKeylessMapBase_BucketOffset)initWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5;
- (int)compareToWithId:(id)a3;
@end

@implementation ComAppleContextkitUtilKeylessMapBase_BucketOffset

- (ComAppleContextkitUtilKeylessMapBase_BucketOffset)initWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5
{
  self->start_ = a3;
  self->end_ = a4;
  self->valueGroup_ = a5;
  return self;
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    JavaLangInteger_valueOfWithInt_(self->start_);
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = JavaLangInteger_valueOfWithInt_(self->start_);
  v6 = JavaLangInteger_valueOfWithInt_(*(a3 + 2));

  return [(JavaLangInteger *)v5 compareToWithId:v6];
}

@end