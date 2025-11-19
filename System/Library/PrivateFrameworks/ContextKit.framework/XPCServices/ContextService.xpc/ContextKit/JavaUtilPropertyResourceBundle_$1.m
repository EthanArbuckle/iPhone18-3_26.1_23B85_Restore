@interface JavaUtilPropertyResourceBundle_$1
- (BOOL)hasMoreElements;
- (id)nextElement;
- (void)dealloc;
@end

@implementation JavaUtilPropertyResourceBundle_$1

- (BOOL)hasMoreElements
{
  local = self->local_;
  if (!local)
  {
    JreThrowNullPointerException();
  }

  if (([(JavaUtilEnumeration *)local hasMoreElements]& 1) != 0)
  {
    return 1;
  }

  return sub_1001D9DB8(self);
}

- (id)nextElement
{
  local = self->local_;
  if (!local)
  {
    goto LABEL_10;
  }

  if ([(JavaUtilEnumeration *)local hasMoreElements])
  {
    pEnum = self->local_;
    goto LABEL_7;
  }

  if (sub_1001D9DB8(self))
  {
    nextElement = self->nextElement_;
    JreStrongAssign(&self->nextElement_, 0);
    return nextElement;
  }

  pEnum = self->pEnum_;
  if (!pEnum)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_7:

  return [(JavaUtilEnumeration *)pEnum nextElement];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilPropertyResourceBundle__1;
  [(JavaUtilPropertyResourceBundle_$1 *)&v3 dealloc];
}

@end