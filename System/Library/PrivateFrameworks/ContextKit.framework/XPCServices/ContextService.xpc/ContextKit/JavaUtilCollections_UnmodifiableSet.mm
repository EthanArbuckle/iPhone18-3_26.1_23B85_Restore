@interface JavaUtilCollections_UnmodifiableSet
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation JavaUtilCollections_UnmodifiableSet

- (BOOL)isEqual:(id)equal
{
  c = self->super.c_;
  if (!c)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilCollection *)c isEqual:equal];
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