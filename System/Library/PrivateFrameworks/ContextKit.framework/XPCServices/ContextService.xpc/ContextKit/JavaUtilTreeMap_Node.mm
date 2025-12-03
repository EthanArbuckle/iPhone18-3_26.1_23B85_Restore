@interface JavaUtilTreeMap_Node
- (BOOL)isEqual:(id)equal;
- (JavaUtilTreeMap_Node)initWithJavaUtilTreeMap_Node:(id)node withId:(id)id;
- (id)copy__WithJavaUtilTreeMap_Node:(id)node;
- (id)first;
- (id)last;
- (id)next;
- (id)prev;
- (id)setValueWithId:(id)id;
- (unint64_t)hash;
- (void)__javaClone;
- (void)dealloc;
@end

@implementation JavaUtilTreeMap_Node

- (JavaUtilTreeMap_Node)initWithJavaUtilTreeMap_Node:(id)node withId:(id)id
{
  objc_storeWeak(&self->parent_, node);
  JreStrongAssign(&self->key_, id);
  self->height_ = 1;
  return self;
}

- (id)copy__WithJavaUtilTreeMap_Node:(id)node
{
  v4 = new_JavaUtilTreeMap_Node_initWithJavaUtilTreeMap_Node_withId_(node, self->key_);
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

- (id)setValueWithId:(id)id
{
  value = self->value_;
  JreStrongAssign(&self->value_, id);
  return value;
}

- (BOOL)isEqual:(id)equal
{
  LODWORD(getValue) = [JavaUtilMap_Entry_class_() isInstance:equal];
  if (getValue)
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

    key = self->key_;
    getKey = [equal getKey];
    if (key)
    {
      LODWORD(getValue) = [key isEqual:getKey];
      if (!getValue)
      {
        return getValue;
      }
    }

    else if (getKey)
    {
      LOBYTE(getValue) = 0;
      return getValue;
    }

    value = self->value_;
    getValue = [equal getValue];
    if (value)
    {

      LOBYTE(getValue) = [value isEqual:getValue];
    }

    else
    {
      LOBYTE(getValue) = getValue == 0;
    }
  }

  return getValue;
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
  selfCopy = self;
  right = self->right_;
  if (right)
  {

    return [(JavaUtilTreeMap_Node *)right first];
  }

  else
  {
    while (1)
    {
      Weak = objc_loadWeak(&selfCopy->parent_);
      if (!Weak)
      {
        break;
      }

      v5 = selfCopy;
      selfCopy = Weak;
      if (Weak->left_ == v5)
      {
        return selfCopy;
      }
    }

    return 0;
  }
}

- (id)prev
{
  selfCopy = self;
  left = self->left_;
  if (left)
  {

    return [(JavaUtilTreeMap_Node *)left last];
  }

  else
  {
    while (1)
    {
      Weak = objc_loadWeak(&selfCopy->parent_);
      if (!Weak)
      {
        break;
      }

      v5 = selfCopy;
      selfCopy = Weak;
      if (Weak->right_ == v5)
      {
        return selfCopy;
      }
    }

    return 0;
  }
}

- (id)first
{
  do
  {
    selfCopy = self;
    self = self->left_;
  }

  while (self);
  return selfCopy;
}

- (id)last
{
  do
  {
    selfCopy = self;
    self = self->right_;
  }

  while (self);
  return selfCopy;
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