@interface JavaUtilConcurrentConcurrentHashMap_Node
- (BOOL)isEqual:(id)a3;
- (JavaUtilConcurrentConcurrentHashMap_Node)initWithInt:(int)a3 withId:(id)a4 withId:(id)a5 withJavaUtilConcurrentConcurrentHashMap_Node:(id)a6;
- (id)findWithInt:(int)a3 withId:(id)a4;
- (unint64_t)hash;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_Node

- (JavaUtilConcurrentConcurrentHashMap_Node)initWithInt:(int)a3 withId:(id)a4 withId:(id)a5 withJavaUtilConcurrentConcurrentHashMap_Node:(id)a6
{
  self->hash__ = a3;
  JreStrongAssign(&self->key_, a4);
  JreVolatileStrongAssign(&self->val_, a5);
  JreStrongAssign(&self->next_, a6);
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

- (BOOL)isEqual:(id)a3
{
  LODWORD(v5) = [JavaUtilMap_Entry_class_() isInstance:a3];
  if (v5)
  {
    v6 = JavaUtilMap_Entry_class_();
    if (a3)
    {
      if (([v6 isInstance:a3] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v5 = [a3 getKey];
      if (v5)
      {
        v7 = v5;
        v5 = [a3 getValue];
        if (v5)
        {
          v8 = v5;
          if (v7 == self->key_ || (LODWORD(v5) = [v7 isEqual:?], v5))
          {
            v9 = atomic_load(&self->val_);
            if (v8 == v9)
            {
              LOBYTE(v5) = 1;
            }

            else
            {

              LOBYTE(v5) = [v8 isEqual:?];
            }
          }
        }
      }
    }

    else
    {
      v5 = [0 getKey];
      if (v5)
      {
        JreThrowNullPointerException();
      }
    }
  }

  return v5;
}

- (id)findWithInt:(int)a3 withId:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  do
  {
    if (self->hash__ == a3)
    {
      key = self->key_;
      if (key == a4 || key && ([a4 isEqual:?] & 1) != 0)
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