@interface JavaUtilCollections_SingletonList
- (BOOL)containsWithId:(id)id;
- (JavaUtilCollections_SingletonList)initWithId:(id)id;
- (id)getWithInt:(int)int;
- (void)dealloc;
@end

@implementation JavaUtilCollections_SingletonList

- (JavaUtilCollections_SingletonList)initWithId:(id)id
{
  JavaUtilAbstractList_init(self, a2);
  JreStrongAssign(&self->element_, id);
  return self;
}

- (BOOL)containsWithId:(id)id
{
  element = self->element_;
  if (element)
  {
    LOBYTE(v4) = [element isEqual:id];
  }

  else
  {
    return id == 0;
  }

  return v4;
}

- (id)getWithInt:(int)int
{
  if (int)
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