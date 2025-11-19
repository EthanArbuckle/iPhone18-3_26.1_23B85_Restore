@interface OrgLukhnosPortmobileLangClassValue
- (OrgLukhnosPortmobileLangClassValue)init;
- (id)getWithIOSClass:(id)a3;
- (void)dealloc;
- (void)removeWithIOSClass:(id)a3;
@end

@implementation OrgLukhnosPortmobileLangClassValue

- (OrgLukhnosPortmobileLangClassValue)init
{
  self->defaultCached_ = 0;
  JreStrongAssign(&self->defaultCachedMember_, 0);
  v3 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume(&self->cache_, v3);
  return self;
}

- (id)getWithIOSClass:(id)a3
{
  cache = self->cache_;
  if (!cache)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaUtilMap *)cache containsKeyWithId:?])
  {
    v6 = self->cache_;

    return [(JavaUtilMap *)v6 getWithId:a3];
  }

  else
  {
    v8 = [(OrgLukhnosPortmobileLangClassValue *)self computeValueWithIOSClass:a3];
    [(JavaUtilMap *)self->cache_ putWithId:a3 withId:v8];
    return v8;
  }
}

- (void)removeWithIOSClass:(id)a3
{
  cache = self->cache_;
  if (!cache)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilMap *)cache removeWithId:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgLukhnosPortmobileLangClassValue;
  [(OrgLukhnosPortmobileLangClassValue *)&v3 dealloc];
}

@end