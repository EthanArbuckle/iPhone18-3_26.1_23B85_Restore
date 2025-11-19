@interface JavaUtilCollections_SingletonList
- (BOOL)containsWithId:(id)a3;
- (JavaUtilCollections_SingletonList)initWithId:(id)a3;
- (id)getWithInt:(int)a3;
- (void)dealloc;
@end

@implementation JavaUtilCollections_SingletonList

- (JavaUtilCollections_SingletonList)initWithId:(id)a3
{
  JavaUtilAbstractList_init(self, a2);
  JreStrongAssign(&self->element_, a3);
  return self;
}

- (BOOL)containsWithId:(id)a3
{
  element = self->element_;
  if (element)
  {
    LOBYTE(v4) = [element isEqual:a3];
  }

  else
  {
    return a3 == 0;
  }

  return v4;
}

- (id)getWithInt:(int)a3
{
  if (a3)
  {
    v4 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v4);
  }

  return self->element_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_SingletonList;
  [(JavaUtilCollections_SingletonList *)&v3 dealloc];
}

@end