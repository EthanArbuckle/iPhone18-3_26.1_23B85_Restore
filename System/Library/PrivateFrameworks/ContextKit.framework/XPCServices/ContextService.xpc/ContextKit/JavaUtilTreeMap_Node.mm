@interface JavaUtilTreeMap_Node
- (BOOL)isEqual:(id)a3;
- (JavaUtilTreeMap_Node)initWithJavaUtilTreeMap_Node:(id)a3 withId:(id)a4;
- (id)copy__WithJavaUtilTreeMap_Node:(id)a3;
- (id)first;
- (id)last;
- (id)next;
- (id)prev;
- (id)setValueWithId:(id)a3;
- (unint64_t)hash;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaUtilTreeMap_Node

- (JavaUtilTreeMap_Node)initWithJavaUtilTreeMap_Node:(id)a3 withId:(id)a4
{
  objc_storeWeak(&self->parent_, a3);
  JreStrongAssign(&self->key_, a4);
  self->height_ = 1;
  return self;
}

- (id)copy__WithJavaUtilTreeMap_Node:(id)a3
{
  v4 = new_JavaUtilTreeMap_Node_initWithJavaUtilTreeMap_Node_withId_(a3, self->key_);
  left = self->left_;
  if (left)
  {
    JreStrongAssign(&v4->left_, [(JavaUtilTreeMap_Node *)left copy__WithJavaUtilTreeMap_Node:v4]);
  }

  right = self->right_;
  if (right)
  {
    JreStrongAssign(&v4->right_, [(JavaUtilTreeMap_Node *)right copy__WithJavaUtilTreeMap_Node:v4]);
  }

  JreStrongAssign(&v4->value_, self->value_);
  v4->height_ = self->height_;
  return v4;
}

- (id)setValueWithId:(id)a3
{
  value = self->value_;
  JreStrongAssign(&self->value_, a3);
  return value;
}

- (BOOL)isEqual:(id)a3
{
  LODWORD(v5) = [JavaUtilMap_Entry_class_() isInstance:a3];
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

    key = self->key_;
    v8 = [a3 getKey];
    if (key)
    {
      LODWORD(v5) = [key isEqual:v8];
      if (!v5)
      {
        return v5;
      }
    }

    else if (v8)
    {
      LOBYTE(v5) = 0;
      return v5;
    }

    value = self->value_;
    v5 = [a3 getValue];
    if (value)
    {

      LOBYTE(v5) = [value isEqual:v5];
    }

    else
    {
      LOBYTE(v5) = v5 == 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  key = self->key_;
  if (key)
  {
    v4 = [key hash];
  }

  else
  {
    v4 = 0;
  }

  value = self->value_;
  if (value)
  {
    LODWORD(value) = [value hash];
  }

  return (value ^ v4);
}

- (id)next
{
  v2 = self;
  right = self->right_;
  if (right)
  {

    return [(JavaUtilTreeMap_Node *)right first];
  }

  else
  {
    while (1)
    {
      Weak = objc_loadWeak(&v2->parent_);
      if (!Weak)
      {
        break;
      }

      v5 = v2;
      v2 = Weak;
      if (Weak->left_ == v5)
      {
        return v2;
      }
    }

    return 0;
  }
}

- (id)prev
{
  v2 = self;
  left = self->left_;
  if (left)
  {

    return [(JavaUtilTreeMap_Node *)left last];
  }

  else
  {
    while (1)
    {
      Weak = objc_loadWeak(&v2->parent_);
      if (!Weak)
      {
        break;
      }

      v5 = v2;
      v2 = Weak;
      if (Weak->right_ == v5)
      {
        return v2;
      }
    }

    return 0;
  }
}

- (id)first
{
  do
  {
    v2 = self;
    self = self->left_;
  }

  while (self);
  return v2;
}

- (id)last
{
  do
  {
    v2 = self;
    self = self->right_;
  }

  while (self);
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_Node;
  [(JavaUtilTreeMap_Node *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_Node;
  [(JavaUtilTreeMap_Node *)&v3 __javaClone];
}

@end