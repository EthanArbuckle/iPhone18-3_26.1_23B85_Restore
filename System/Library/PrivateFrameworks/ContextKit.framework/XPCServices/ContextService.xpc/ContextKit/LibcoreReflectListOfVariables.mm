@interface LibcoreReflectListOfVariables
- (LibcoreReflectListOfVariables)init;
- (id)getArray;
- (void)addWithJavaLangReflectTypeVariable:(id)variable;
- (void)dealloc;
@end

@implementation LibcoreReflectListOfVariables

- (void)addWithJavaLangReflectTypeVariable:(id)variable
{
  array = self->array_;
  if (!array)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilArrayList *)array addWithId:variable];
}

- (id)getArray
{
  array = self->array_;
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = [IOSObjectArray arrayWithLength:[(JavaUtilArrayList *)array size] type:JavaLangReflectTypeVariable_class_()];
  v5 = self->array_;

  return [(JavaUtilArrayList *)v5 toArrayWithNSObjectArray:v4];
}

- (LibcoreReflectListOfVariables)init
{
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->array_, v3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreReflectListOfVariables;
  [(LibcoreReflectListOfVariables *)&v3 dealloc];
}

@end