@interface JavaUtilConcurrentConcurrentHashMap_Node
- (BOOL)isEqual:(id)equal;
- (JavaUtilConcurrentConcurrentHashMap_Node)initWithInt:(int)int withId:(id)id withId:(id)withId withJavaUtilConcurrentConcurrentHashMap_Node:(id)node;
- (id)findWithInt:(int)int withId:(id)id;
- (unint64_t)hash;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_Node

- (JavaUtilConcurrentConcurrentHashMap_Node)initWithInt:(int)int withId:(id)id withId:(id)withId withJavaUtilConcurrentConcurrentHashMap_Node:(id)node
{
  self->hash__ = int;
  JreStrongAssign(&self->key_, id);
  JreVolatileStrongAssign(&self->val_, withId);
  JreStrongAssign(&self->next_, node);
  return self;
}

- (unint64_t)hash
{
  key = self->key_;
  if (!key || (v4 = [key hash], (v5 = atomic_load(&self->val_)) == 0))
  {
    JreThrowNullPointerException();
  }

  return ([v5 hash] ^ v4);
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
            v9 = atomic_load(&self->val_);
            if (v8 == v9)
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

- (id)findWithInt:(int)int withId:(id)id
{
  if (!id)
  {
    return 0;
  }

  do
  {
    if (self->hash__ == int)
    {
      key = self->key_;
      if (key == id || key && ([id isEqual:?] & 1) != 0)
      {
        break;
      }
    }

    self = self->next_;
  }

  while (self);
  return self;
}

- (void)dealloc
{
  JreReleaseVolatile(&self->val_);

  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_Node;
  [(JavaUtilConcurrentConcurrentHashMap_Node *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_Node;
  [(JavaUtilConcurrentConcurrentHashMap_Node *)&v3 __javaClone];
  JreRetainVolatile(&self->val_);
}

@end