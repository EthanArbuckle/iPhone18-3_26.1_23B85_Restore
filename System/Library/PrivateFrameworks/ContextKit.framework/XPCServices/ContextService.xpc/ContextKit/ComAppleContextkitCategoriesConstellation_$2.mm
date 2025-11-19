@interface ComAppleContextkitCategoriesConstellation_$2
- (void)acceptWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_$2

- (void)acceptWithInt:(int)a3 withInt:(int)a4 withInt:(int)a5
{
  v5 = self->val$idsAndHeight_;
  if (!v5 || (v9 = [(JavaUtilMap *)v5 getWithId:JavaLangInteger_valueOfWithInt_(a3)]) == 0)
  {
    JreThrowNullPointerException();
  }

  v10 = a4 + [v9 intValue];
  if ((v10 + 1) < 8)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 8;
  }

  v12 = self->val$idsAndHeight_;
  v13 = JavaLangInteger_valueOfWithInt_(a5);
  v14 = [(JavaUtilMap *)v12 putWithId:v13 withId:JavaLangInteger_valueOfWithInt_(v11)];
  if (v14)
  {
    v15 = v14;
    if ([v14 intValue] < v11)
    {
      v16 = self->val$idsAndHeight_;
      v17 = JavaLangInteger_valueOfWithInt_(a5);

      [(JavaUtilMap *)v16 putWithId:v17 withId:v15];
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation__2;
  [(ComAppleContextkitCategoriesConstellation_$2 *)&v3 dealloc];
}

@end