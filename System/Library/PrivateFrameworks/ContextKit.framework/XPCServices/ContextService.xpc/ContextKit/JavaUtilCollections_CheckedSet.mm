@interface JavaUtilCollections_CheckedSet
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation JavaUtilCollections_CheckedSet

- (BOOL)isEqual:(id)a3
{
  c = self->super.c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c isEqual:a3];
}

- (unint64_t)hash
{
  c = self->super.c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c hash];
}

@end