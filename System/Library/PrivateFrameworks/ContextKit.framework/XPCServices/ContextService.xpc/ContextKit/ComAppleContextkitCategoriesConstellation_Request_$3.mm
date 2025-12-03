@interface ComAppleContextkitCategoriesConstellation_Request_$3
- (int)compareWithId:(id)id withId:(id)withId;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_Request_$3

- (int)compareWithId:(id)id withId:(id)withId
{
  v5 = self->val$categoryIdToRank_;
  if (!v5 || (v7 = [(JavaUtilMap *)v5 getWithId:id], v8 = [(JavaUtilMap *)self->val$categoryIdToRank_ getWithId:withId], !v7))
  {
    JreThrowNullPointerException();
  }

  return [v7 compareToWithId:v8];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_Request__3;
  [(ComAppleContextkitCategoriesConstellation_Request_$3 *)&v3 dealloc];
}

@end