@interface JavaUtilIdentityHashMap_IdentityHashMapEntry
- (BOOL)isEqual:(id)equal;
- (JavaUtilIdentityHashMap_IdentityHashMapEntry)initWithJavaUtilIdentityHashMap:(id)map withId:(id)id withId:(id)withId;
- (id)clone;
- (id)setValueWithId:(id)id;
- (void)dealloc;
@end

@implementation JavaUtilIdentityHashMap_IdentityHashMapEntry

- (JavaUtilIdentityHashMap_IdentityHashMapEntry)initWithJavaUtilIdentityHashMap:(id)map withId:(id)id withId:(id)withId
{
  JavaUtilMapEntry_initWithId_withId_(self, id, withId);
  JreStrongAssign(&self->map_, map);
  return self;
}

- (id)clone
{
  v3.receiver = self;
  v3.super_class = JavaUtilIdentityHashMap_IdentityHashMapEntry;
  return [(JavaUtilMapEntry *)&v3 clone];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [JavaUtilMap_Entry_class_() isInstance:equal];
    if (v5)
    {
      v6 = JavaUtilMap_Entry_class_();
      if (!equal)
      {
        JreThrowNullPointerException();
      }

      if (([v6 isInstance:equal] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      key = self->super.key_;
      if (key == [equal getKey])
      {
        value = self->super.value_;
        LOBYTE(v5) = value == [equal getValue];
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (id)setValueWithId:(id)id
{
  v8.receiver = self;
  v8.super_class = JavaUtilIdentityHashMap_IdentityHashMapEntry;
  v5 = [(JavaUtilMapEntry *)&v8 setValueWithId:?];
  map = self->map_;
  if (!map)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilIdentityHashMap *)map putWithId:self->super.key_ withId:id];
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilIdentityHashMap_IdentityHashMapEntry;
  [(JavaUtilMapEntry *)&v3 dealloc];
}

@end