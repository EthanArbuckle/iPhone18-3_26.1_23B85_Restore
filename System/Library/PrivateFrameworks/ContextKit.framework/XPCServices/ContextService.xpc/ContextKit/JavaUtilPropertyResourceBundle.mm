@interface JavaUtilPropertyResourceBundle
- (id)getKeys;
- (id)handleGetObjectWithNSString:(id)string;
- (id)handleKeySet;
- (void)dealloc;
@end

@implementation JavaUtilPropertyResourceBundle

- (id)handleKeySet
{
  resources = self->resources_;
  if (!resources)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilProperties *)resources stringPropertyNames];
}

- (id)getKeys
{
  if (self->super.parent_)
  {
    v3 = [JavaUtilPropertyResourceBundle__1 alloc];
    sub_1001D9F40(&v3->super.isa, self);

    return v3;
  }

  else
  {

    return sub_1001D9C14(self);
  }
}

- (id)handleGetObjectWithNSString:(id)string
{
  resources = self->resources_;
  if (!resources)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashtable *)resources getWithId:string];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilPropertyResourceBundle;
  [(JavaUtilResourceBundle *)&v3 dealloc];
}

@end