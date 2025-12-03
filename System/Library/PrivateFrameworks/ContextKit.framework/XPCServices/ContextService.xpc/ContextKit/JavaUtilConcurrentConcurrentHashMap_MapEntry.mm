@interface JavaUtilConcurrentConcurrentHashMap_MapEntry
- (BOOL)isEqual:(id)equal;
- (JavaUtilConcurrentConcurrentHashMap_MapEntry)initWithId:(id)id withId:(id)withId withJavaUtilConcurrentConcurrentHashMap:(id)map;
- (id)setValueWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_MapEntry

- (JavaUtilConcurrentConcurrentHashMap_MapEntry)initWithId:(id)id withId:(id)withId withJavaUtilConcurrentConcurrentHashMap:(id)map
{
  JreStrongAssign(&self->key_, id);
  JreStrongAssign(&self->val_, withId);
  JreStrongAssign(&self->map_, map);
  return self;
}

- (unint64_t)hash
{
  key = self->key_;
  if (!key || (v4 = [key hash], (val = self->val_) == 0))
  {
    JreThrowNullPointerException();
  }

  return ([val hash] ^ v4);
}

- (BOOL)isEqual:(id)equal
{
  LODWORD(getKey) = [JavaUtilMap_Entry_class_() isInstance:equal];
  if (getKey)
  {
    v6 = JavaUtilMap_Entry_class_();
    if (equal)
    {
      if (([v6 isInstance:equal] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      getKey = [equal getKey];
      if (getKey)
      {
        v7 = getKey;
        getKey = [equal getValue];
        if (getKey)
        {
          v8 = getKey;
          if (v7 == self->key_ || (LODWORD(getKey) = [v7 isEqual:?], getKey))
          {
            if (v8 == self->val_)
            {
              LOBYTE(getKey) = 1;
            }

            else
            {

              LOBYTE(getKey) = [v8 isEqual:?];
            }
          }
        }
      }
    }

    else
    {
      getKey = [0 getKey];
      if (getKey)
      {
        JreThrowNullPointerException();
      }
    }
  }

  return getKey;
}

- (id)setValueWithId:(id)id
{
  if (!id)
  {
    v9 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v9);
  }

  p_val = &self->val_;
  val = self->val_;
  JreStrongAssign(&self->val_, id);
  v7 = p_val[1];
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  [v7 putWithId:self->key_ withId:id];
  return val;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_MapEntry;
  [(JavaUtilConcurrentConcurrentHashMap_MapEntry *)&v3 dealloc];
}

@end