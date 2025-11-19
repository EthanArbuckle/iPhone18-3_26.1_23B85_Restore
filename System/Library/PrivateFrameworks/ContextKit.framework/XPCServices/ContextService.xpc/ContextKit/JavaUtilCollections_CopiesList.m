@interface JavaUtilCollections_CopiesList
- (BOOL)containsWithId:(id)a3;
- (id)getWithInt:(int)a3;
- (void)dealloc;
@end

@implementation JavaUtilCollections_CopiesList

- (BOOL)containsWithId:(id)a3
{
  v3 = *&self->n_;
  if (v3)
  {
    LOBYTE(v4) = [v3 isEqual:a3];
  }

  else
  {
    return a3 == 0;
  }

  return v4;
}

- (id)getWithInt:(int)a3
{
  if (a3 < 0 || *(&self->super.modCount_ + 1) <= a3)
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