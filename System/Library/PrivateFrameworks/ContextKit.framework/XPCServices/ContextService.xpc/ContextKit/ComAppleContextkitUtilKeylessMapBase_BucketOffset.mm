@interface ComAppleContextkitUtilKeylessMapBase_BucketOffset
- (ComAppleContextkitUtilKeylessMapBase_BucketOffset)initWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (int)compareToWithId:(id)id;
@end

@implementation ComAppleContextkitUtilKeylessMapBase_BucketOffset

- (ComAppleContextkitUtilKeylessMapBase_BucketOffset)initWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  self->start_ = int;
  self->end_ = withInt;
  self->valueGroup_ = a5;
  return self;
}

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    JavaLangInteger_valueOfWithInt_(self->start_);
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = JavaLangInteger_valueOfWithInt_(self->start_);
  v6 = JavaLangInteger_valueOfWithInt_(*(id + 2));

  return [(JavaLangInteger *)v5 compareToWithId:v6];
}

@end