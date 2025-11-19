@interface JavaUtilConcurrentConcurrentHashMap_MapEntry
- (BOOL)isEqual:(id)a3;
- (JavaUtilConcurrentConcurrentHashMap_MapEntry)initWithId:(id)a3 withId:(id)a4 withJavaUtilConcurrentConcurrentHashMap:(id)a5;
- (id)setValueWithId:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_MapEntry

- (JavaUtilConcurrentConcurrentHashMap_MapEntry)initWithId:(id)a3 withId:(id)a4 withJavaUtilConcurrentConcurrentHashMap:(id)a5
{
  JreStrongAssign(&self->key_, a3);
  JreStrongAssign(&self->val_, a4);
  JreStrongAssign(&self->map_, a5);
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
            if (v8 == self->val_)
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

- (id)setValueWithId:(id)a3
{
  if (!a3)
  {
    v9 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v9);
  }

  p_val = &self->val_;
  val = self->val_;
  JreStrongAssign(&self->val_, a3);
  v7 = p_val[1];
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  [v7 putWithId:self->key_ withId:a3];
  return val;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_MapEntry;
  [(JavaUtilConcurrentConcurrentHashMap_MapEntry *)&v3 dealloc];
}

@end