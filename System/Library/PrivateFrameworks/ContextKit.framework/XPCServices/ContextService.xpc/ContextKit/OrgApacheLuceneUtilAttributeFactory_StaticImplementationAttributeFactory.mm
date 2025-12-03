@interface OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory
- (BOOL)isEqual:(id)equal;
- (OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory)initWithOrgApacheLuceneUtilAttributeFactory:(id)factory withIOSClass:(id)class;
- (id)createAttributeInstanceWithIOSClass:(id)class;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory

- (OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory)initWithOrgApacheLuceneUtilAttributeFactory:(id)factory withIOSClass:(id)class
{
  JreStrongAssign(&self->delegate_, factory);
  JreStrongAssign(&self->clazz_, class);
  return self;
}

- (id)createAttributeInstanceWithIOSClass:(id)class
{
  if (!class)
  {
    goto LABEL_10;
  }

  if ([class isAssignableFrom:self->clazz_])
  {

    return [(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory *)self createInstance];
  }

  delegate = self->delegate_;
  if (!delegate)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilAttributeFactory *)delegate createAttributeInstanceWithIOSClass:class];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
  }

  else if (equal && (v5 = [equal getClass], v5 == -[OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory getClass](self, "getClass")))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    delegate = self->delegate_;
    if (!delegate)
    {
      JreThrowNullPointerException();
    }

    v6 = [(OrgApacheLuceneUtilAttributeFactory *)delegate isEqual:*(equal + 1)];
    if (v6)
    {
      LOBYTE(v6) = self->clazz_ == *(equal + 2);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  delegate = self->delegate_;
  if (!delegate || (v4 = [(OrgApacheLuceneUtilAttributeFactory *)delegate hash], (clazz = self->clazz_) == 0))
  {
    JreThrowNullPointerException();
  }

  return ([(IOSClass *)clazz hash]- v4 + 32 * v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory;
  [(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory *)&v3 dealloc];
}

@end