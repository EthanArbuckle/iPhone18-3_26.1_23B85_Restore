@interface JavaUtilCollections_CopiesList
- (BOOL)containsWithId:(id)id;
- (id)getWithInt:(int)int;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CopiesList

- (BOOL)containsWithId:(id)id
{
  v3 = *&self->n_;
  if (v3)
  {
    LOBYTE(v4) = [v3 isEqual:id];
  }

  else
  {
    return id == 0;
  }

  return v4;
}

- (id)getWithInt:(int)int
{
  if (int < 0 || *(&self->super.modCount_ + 1) <= int)
  {
    v4 = new_JavaLangIndexOutOfBoundsException_init();
    objc_exception_throw(v4);
  }

  return *&self->n_;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCollections_CopiesList;
  [(JavaUtilCollections_CopiesList *)&v3 dealloc];
}

@end