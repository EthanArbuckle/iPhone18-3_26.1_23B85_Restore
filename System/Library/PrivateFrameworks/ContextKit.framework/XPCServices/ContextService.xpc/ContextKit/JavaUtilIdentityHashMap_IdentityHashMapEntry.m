@interface JavaUtilIdentityHashMap_IdentityHashMapEntry
- (BOOL)isEqual:(id)a3;
- (JavaUtilIdentityHashMap_IdentityHashMapEntry)initWithJavaUtilIdentityHashMap:(id)a3 withId:(id)a4 withId:(id)a5;
- (id)clone;
- (id)setValueWithId:(id)a3;
- (void)dealloc;
@end

@implementation JavaUtilIdentityHashMap_IdentityHashMapEntry

- (JavaUtilIdentityHashMap_IdentityHashMapEntry)initWithJavaUtilIdentityHashMap:(id)a3 withId:(id)a4 withId:(id)a5
{
  JavaUtilMapEntry_initWithId_withId_(self, a4, a5);
  JreStrongAssign(&self->map_, a3);
  return self;
}

- (id)clone
{
  v3.receiver = self;
  v3.super_class = JavaUtilIdentityHashMap_IdentityHashMapEntry;
  return [(JavaUtilMapEntry *)&v3 clone];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [JavaUtilMap_Entry_class_() isInstance:a3];
    if (v5)
    {
      v6 = JavaUtilMap_Entry_class_();
      if (!a3)
      {
        JreThrowNullPointerException();
      }

      if (([v6 isInstance:a3] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      key = self->super.key_;
      if (key == [a3 getKey])
      {
        value = self->super.value_;
        LOBYTE(v5) = value == [a3 getValue];
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (id)setValueWithId:(id)a3
{
  v8.receiver = self;
  v8.super_class = JavaUtilIdentityHashMap_IdentityHashMapEntry;
  v5 = [(JavaUtilMapEntry *)&v8 setValueWithId:?];
  map = self->map_;
  if (!map)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilIdentityHashMap *)map putWithId:self->super.key_ withId:a3];
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilIdentityHashMap_IdentityHashMapEntry;
  [(JavaUtilMapEntry *)&v3 dealloc];
}

@end