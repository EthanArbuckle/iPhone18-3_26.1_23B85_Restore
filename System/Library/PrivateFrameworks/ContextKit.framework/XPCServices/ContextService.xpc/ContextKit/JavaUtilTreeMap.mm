@interface JavaUtilTreeMap
+ (void)initialize;
- (id)ceilingEntryWithId:(id)id;
- (id)ceilingKeyWithId:(id)id;
- (id)clone;
- (id)comparator;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descendingKeySet;
- (id)descendingMap;
- (id)entrySet;
- (id)findByEntryWithJavaUtilMap_Entry:(id)entry;
- (id)findByObjectWithId:(id)id;
- (id)findWithId:(id)id withJavaUtilTreeMap_RelationEnum:(id)enum;
- (id)firstEntry;
- (id)firstKey;
- (id)firstNode;
- (id)floorEntryWithId:(id)id;
- (id)floorKeyWithId:(id)id;
- (id)getWithId:(id)id;
- (id)headMapWithId:(id)id;
- (id)headMapWithId:(id)id withBoolean:(BOOL)boolean;
- (id)higherEntryWithId:(id)id;
- (id)higherKeyWithId:(id)id;
- (id)immutableCopyWithJavaUtilMap_Entry:(id)entry;
- (id)internalPollFirstEntry;
- (id)internalPollLastEntry;
- (id)keySet;
- (id)lastEntry;
- (id)lastKey;
- (id)lastNode;
- (id)lowerEntryWithId:(id)id;
- (id)lowerKeyWithId:(id)id;
- (id)navigableKeySet;
- (id)pollFirstEntry;
- (id)pollLastEntry;
- (id)putInternalWithId:(id)id withId:(id)withId;
- (id)removeInternalByKeyWithId:(id)id;
- (id)removeWithId:(id)id;
- (id)subMapWithId:(id)id withBoolean:(BOOL)boolean withId:(id)withId withBoolean:(BOOL)withBoolean;
- (id)subMapWithId:(id)id withId:(id)withId;
- (id)tailMapWithId:(id)id;
- (id)tailMapWithId:(id)id withBoolean:(BOOL)boolean;
- (id)values;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)removeInternalWithJavaUtilTreeMap_Node:(id)node;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilTreeMap

- (id)clone
{
  v7.receiver = self;
  v7.super_class = JavaUtilTreeMap;
  clone = [(JavaUtilAbstractMap *)&v7 clone];
  objc_opt_class();
  if (!clone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  root = self->root_;
  if (root)
  {
    v5 = [(JavaUtilTreeMap_Node *)root copy__WithJavaUtilTreeMap_Node:0];
  }

  else
  {
    v5 = 0;
  }

  JreStrongAssign(clone + 4, v5);
  JreStrongAssign(clone + 6, 0);
  JreStrongAssign(clone + 7, 0);
  JreStrongAssign(clone + 8, 0);
  return clone;
}

- (id)getWithId:(id)id
{
  result = [(JavaUtilTreeMap *)self findByObjectWithId:id];
  if (result)
  {

    return [result getValue];
  }

  return result;
}

- (void)clear
{
  JreStrongAssign(&self->root_, 0);
  self->size_ = 0;
  ++self->modCount_;
}

- (id)removeWithId:(id)id
{
  result = [(JavaUtilTreeMap *)self removeInternalByKeyWithId:id];
  if (result)
  {
    return *(result + 5);
  }

  return result;
}

- (id)putInternalWithId:(id)id withId:(id)withId
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  v7 = [(JavaUtilTreeMap *)self findWithId:id withJavaUtilTreeMap_RelationEnum:qword_100558078];
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = v7[5];
  JreStrongAssign(v7 + 5, withId);
  return v8;
}

- (id)findWithId:(id)id withJavaUtilTreeMap_RelationEnum:(id)enum
{
  comparator = self->comparator_;
  if (self->root_)
  {
    if (comparator == qword_100554EE8 && (v10 = JavaLangComparable_class_(), id))
    {
      idCopy = id;
      if (([v10 isInstance:id] & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    else
    {
      idCopy = 0;
    }

    root = self->root_;
    while (1)
    {
      if (idCopy)
      {
        if (!root)
        {
          goto LABEL_51;
        }

        v11 = [idCopy compareToWithId:root->key_];
        if (!v11)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v14 = self->comparator_;
        if (!v14 || !root)
        {
          goto LABEL_51;
        }

        v11 = [(JavaUtilComparator *)v14 compareWithId:id withId:root->key_];
        if (!v11)
        {
LABEL_24:
          ordinal = [enum ordinal];
          if (ordinal - 1 < 4)
          {
            return root;
          }

          if (ordinal == 5)
          {
LABEL_39:

            return [(JavaUtilTreeMap_Node *)root next];
          }

          if (!ordinal)
          {
LABEL_43:

            return [(JavaUtilTreeMap_Node *)root prev];
          }

          goto LABEL_27;
        }
      }

      if ((v11 & 0x80000000) != 0)
      {
        left = root->left_;
        if (left)
        {
          goto LABEL_38;
        }

        ordinal2 = [enum ordinal];
        if (ordinal2 > 2)
        {
          if ((ordinal2 - 4) < 2)
          {
            return root;
          }

          if (ordinal2 == 3)
          {
            v18 = new_JavaUtilTreeMap_Node_initWithJavaUtilTreeMap_Node_withId_(root, id);
            p_left = &root->left_;
            goto LABEL_46;
          }
        }

        else
        {
          if (ordinal2 < 2)
          {
            goto LABEL_43;
          }

LABEL_30:
          if (ordinal2 == 2)
          {
            return 0;
          }
        }
      }

      else
      {
LABEL_27:
        left = root->right_;
        if (left)
        {
LABEL_38:
          root = left;
        }

        else
        {
          ordinal2 = [enum ordinal];
          if (ordinal2 <= 2)
          {
            if (ordinal2 < 2)
            {
              return root;
            }

            goto LABEL_30;
          }

          if ((ordinal2 - 4) < 2)
          {
            goto LABEL_39;
          }

          if (ordinal2 == 3)
          {
            v18 = new_JavaUtilTreeMap_Node_initWithJavaUtilTreeMap_Node_withId_(root, id);
            p_left = &root->right_;
LABEL_46:
            JreStrongAssign(p_left, v18);
            ++self->size_;
            ++self->modCount_;
            sub_1001DC104(self, root, 1);
            return v18;
          }
        }
      }
    }
  }

  if (comparator == qword_100554EE8 && ([JavaLangComparable_class_() isInstance:id] & 1) == 0)
  {
    if (id)
    {
      v20 = [objc_msgSend(id "getClass")];
      v28 = JreStrcat("$$", v21, v22, v23, v24, v25, v26, v27, v20);
      v29 = new_JavaLangClassCastException_initWithNSString_(v28);
      objc_exception_throw(v29);
    }

LABEL_51:
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  if (qword_100558078 != enum)
  {
    return 0;
  }

  v17 = new_JavaUtilTreeMap_Node_initWithJavaUtilTreeMap_Node_withId_(0, id);
  JreStrongAssignAndConsume(&self->root_, v17);
  self->size_ = 1;
  ++self->modCount_;
  return self->root_;
}

- (id)findByObjectWithId:(id)id
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  v5 = qword_100558070;

  return [(JavaUtilTreeMap *)self findWithId:id withJavaUtilTreeMap_RelationEnum:v5];
}

- (id)findByEntryWithJavaUtilMap_Entry:(id)entry
{
  if (!entry)
  {
    JreThrowNullPointerException();
  }

  result = -[JavaUtilTreeMap findByObjectWithId:](self, "findByObjectWithId:", [entry getKey]);
  if (result)
  {
    v5 = result;
    if (LibcoreUtilObjects_equalWithId_withId_(*(result + 5), [entry getValue]))
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)removeInternalWithJavaUtilTreeMap_Node:(id)node
{
  if (!node)
  {
    JreThrowNullPointerException();
  }

  v5 = (node + 16);
  v6 = *(node + 2);
  v7 = (node + 24);
  v8 = *(node + 3);
  Weak = objc_loadWeak(node + 1);
  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = Weak;
    if (v6)
    {
      sub_1001DC4EC(self, node, v6);
      v12 = v5;
    }

    else
    {
      if (!v8)
      {
        sub_1001DC4EC(self, node, 0);
        goto LABEL_17;
      }

      sub_1001DC4EC(self, node, v8);
      v12 = v7;
    }

    JreStrongAssign(v12, 0);
LABEL_17:
    sub_1001DC104(self, v11, 0);
    --self->size_;
    ++self->modCount_;
    return;
  }

  if (*(v6 + 48) <= *(v8 + 48))
  {
    first = [v8 first];
  }

  else
  {
    first = [v6 last];
  }

  v14 = first;
  [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:first];
  v15 = *v5;
  if (*v5)
  {
    v16 = *(v15 + 12);
    JreStrongAssign(v14 + 2, *v5);
    objc_storeWeak(v15 + 1, v14);
    JreStrongAssign(v5, 0);
  }

  else
  {
    v16 = 0;
  }

  v17 = *v7;
  if (*v7)
  {
    v18 = *(v17 + 12);
    JreStrongAssign(v14 + 3, *v7);
    objc_storeWeak(v17 + 1, v14);
    JreStrongAssign(v7, 0);
  }

  else
  {
    v18 = 0;
  }

  *(v14 + 12) = JavaLangMath_maxWithInt_withInt_(v16, v18) + 1;

  sub_1001DC4EC(self, node, v14);
}

- (id)removeInternalByKeyWithId:(id)id
{
  v4 = [(JavaUtilTreeMap *)self findByObjectWithId:id];
  if (v4)
  {
    [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:v4];
  }

  return v4;
}

- (id)immutableCopyWithJavaUtilMap_Entry:(id)entry
{
  if (!entry)
  {
    return 0;
  }

  v3 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(entry);

  return v3;
}

- (id)firstNode
{
  result = self->root_;
  if (result)
  {
    return [result first];
  }

  return result;
}

- (id)firstEntry
{
  root = self->root_;
  if (!root)
  {
    return 0;
  }

  first = [(JavaUtilTreeMap_Node *)root first];
  if (!first)
  {
    return 0;
  }

  v4 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(first);

  return v4;
}

- (id)internalPollFirstEntry
{
  root = self->root_;
  if (!root)
  {
    return 0;
  }

  first = [(JavaUtilTreeMap_Node *)root first];
  [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:first];
  return first;
}

- (id)pollFirstEntry
{
  root = self->root_;
  if (!root)
  {
    return 0;
  }

  first = [(JavaUtilTreeMap_Node *)root first];
  [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:first];
  if (!first)
  {
    return 0;
  }

  v5 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(first);

  return v5;
}

- (id)firstKey
{
  root = self->root_;
  if (!root)
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  first = [(JavaUtilTreeMap_Node *)root first];
  if (!first)
  {
    JreThrowNullPointerException();
  }

  return [first getKey];
}

- (id)lastNode
{
  result = self->root_;
  if (result)
  {
    return [result last];
  }

  return result;
}

- (id)lastEntry
{
  root = self->root_;
  if (!root)
  {
    return 0;
  }

  last = [(JavaUtilTreeMap_Node *)root last];
  if (!last)
  {
    return 0;
  }

  v4 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(last);

  return v4;
}

- (id)internalPollLastEntry
{
  root = self->root_;
  if (!root)
  {
    return 0;
  }

  last = [(JavaUtilTreeMap_Node *)root last];
  [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:last];
  return last;
}

- (id)pollLastEntry
{
  root = self->root_;
  if (!root)
  {
    return 0;
  }

  last = [(JavaUtilTreeMap_Node *)root last];
  [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:last];
  if (!last)
  {
    return 0;
  }

  v5 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(last);

  return v5;
}

- (id)lastKey
{
  root = self->root_;
  if (!root)
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  last = [(JavaUtilTreeMap_Node *)root last];
  if (!last)
  {
    JreThrowNullPointerException();
  }

  return [last getKey];
}

- (id)lowerEntryWithId:(id)id
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:id withJavaUtilTreeMap_RelationEnum:JavaUtilTreeMap_RelationEnum_values_];
  if (result)
  {
    v6 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(result);

    return v6;
  }

  return result;
}

- (id)lowerKeyWithId:(id)id
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:id withJavaUtilTreeMap_RelationEnum:JavaUtilTreeMap_RelationEnum_values_];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)floorEntryWithId:(id)id
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:id withJavaUtilTreeMap_RelationEnum:qword_100558068];
  if (result)
  {
    v6 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(result);

    return v6;
  }

  return result;
}

- (id)floorKeyWithId:(id)id
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:id withJavaUtilTreeMap_RelationEnum:qword_100558068];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)ceilingEntryWithId:(id)id
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:id withJavaUtilTreeMap_RelationEnum:qword_100558080];
  if (result)
  {
    v6 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(result);

    return v6;
  }

  return result;
}

- (id)ceilingKeyWithId:(id)id
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:id withJavaUtilTreeMap_RelationEnum:qword_100558080];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)higherEntryWithId:(id)id
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:id withJavaUtilTreeMap_RelationEnum:qword_100558088];
  if (result)
  {
    v6 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(result);

    return v6;
  }

  return result;
}

- (id)higherKeyWithId:(id)id
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:id withJavaUtilTreeMap_RelationEnum:qword_100558088];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)comparator
{
  if (self->comparator_ == qword_100554EE8)
  {
    return 0;
  }

  else
  {
    return self->comparator_;
  }
}

- (id)entrySet
{
  result = self->entrySet_;
  if (!result)
  {
    v4 = new_JavaUtilTreeMap_EntrySet_initWithJavaUtilTreeMap_(self);

    return JreStrongAssignAndConsume(&self->entrySet_, v4);
  }

  return result;
}

- (id)keySet
{
  result = self->keySet_TreeMap_;
  if (!result)
  {
    v4 = new_JavaUtilTreeMap_KeySet_initWithJavaUtilTreeMap_(self);

    return JreStrongAssignAndConsume(&self->keySet_TreeMap_, v4);
  }

  return result;
}

- (id)navigableKeySet
{
  result = self->keySet_TreeMap_;
  if (!result)
  {
    v4 = new_JavaUtilTreeMap_KeySet_initWithJavaUtilTreeMap_(self);

    return JreStrongAssignAndConsume(&self->keySet_TreeMap_, v4);
  }

  return result;
}

- (id)values
{
  result = self->valuesCollection_TreeMap_;
  if (!result)
  {
    v4 = new_JavaUtilTreeMap_ValuesCollection_initWithJavaUtilTreeMap_(self);

    return JreStrongAssignAndConsume(&self->valuesCollection_TreeMap_, v4);
  }

  return result;
}

- (id)subMapWithId:(id)id withBoolean:(BOOL)boolean withId:(id)withId withBoolean:(BOOL)withBoolean
{
  withBooleanCopy = withBoolean;
  booleanCopy = boolean;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v11 = JavaUtilTreeMap_BoundEnum_values_;
  v12 = qword_100558098;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (booleanCopy)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = &qword_100558098;
  if (withBooleanCopy)
  {
    v14 = &JavaUtilTreeMap_BoundEnum_values_;
  }

  v15 = *v14;
  v16 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v16, self, 1, id, v13, withId, v15);

  return v16;
}

- (id)subMapWithId:(id)id withId:(id)withId
{
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v7 = JavaUtilTreeMap_BoundEnum_values_;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v8 = qword_100558098;
  v9 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v9, self, 1, id, v7, withId, v8);

  return v9;
}

- (id)headMapWithId:(id)id withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v7 = JavaUtilTreeMap_BoundEnum_values_;
  v8 = qword_100558098;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (booleanCopy)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = qword_1005580A0;
  v11 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v11, self, 1, 0, v10, id, v9);

  return v11;
}

- (id)headMapWithId:(id)id
{
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v5 = qword_1005580A0;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v6 = qword_100558098;
  v7 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v7, self, 1, 0, v5, id, v6);

  return v7;
}

- (id)tailMapWithId:(id)id withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v7 = JavaUtilTreeMap_BoundEnum_values_;
  v8 = qword_100558098;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  if (booleanCopy)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = qword_1005580A0;
  v11 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v11, self, 1, id, v9, 0, v10);

  return v11;
}

- (id)tailMapWithId:(id)id
{
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v5 = JavaUtilTreeMap_BoundEnum_values_;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v6 = qword_1005580A0;
  v7 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v7, self, 1, id, v5, 0, v6);

  return v7;
}

- (id)descendingMap
{
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v3 = qword_1005580A0;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v4 = qword_1005580A0;
  v5 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v5, self, 0, 0, v3, 0, v4);

  return v5;
}

- (id)descendingKeySet
{
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v3 = qword_1005580A0;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v4 = qword_1005580A0;
  v5 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v5, self, 0, 0, v3, 0, v4);
  v6 = v5;

  return [(JavaUtilTreeMap_BoundedMap *)v6 navigableKeySet];
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream)
  {
    goto LABEL_13;
  }

  putFields = [stream putFields];
  if (!putFields)
  {
    goto LABEL_13;
  }

  [putFields putWithNSString:@"comparator" withId:{-[JavaUtilTreeMap comparator](self, "comparator")}];
  [stream writeFields];
  [stream writeIntWithInt:self->size_];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  entrySet = [(JavaUtilTreeMap *)self entrySet];
  if (!entrySet)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v7 = entrySet;
  v8 = [entrySet countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (!v12)
        {
          goto LABEL_13;
        }

        [stream writeObjectWithId:{objc_msgSend(*(*(&v13 + 1) + 8 * v11), "getKey")}];
        [stream writeObjectWithId:{objc_msgSend(v12, "getValue")}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream || (v5 = [stream readFields]) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = [v5 getWithNSString:@"comparator" withId:0];
  v7 = JavaUtilComparator_class_();
  if (v6 && ([v7 isInstance:v6] & 1) == 0)
  {
    goto LABEL_14;
  }

  JreStrongAssign(&self->comparator_, v6);
  if (self->comparator_)
  {
    goto LABEL_9;
  }

  v8 = qword_100554EE8;
  v9 = JavaUtilComparator_class_();
  if (v8)
  {
    if (([v9 isInstance:v8] & 1) == 0)
    {
LABEL_14:
      JreThrowClassCastException();
    }
  }

  JreStrongAssign(&self->comparator_, v8);
LABEL_9:
  readInt = [stream readInt];
  if (readInt >= 1)
  {
    v11 = readInt;
    do
    {
      -[JavaUtilTreeMap putInternalWithId:withId:](self, "putInternalWithId:withId:", [stream readObject], objc_msgSend(stream, "readObject"));
      --v11;
    }

    while (v11);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilTreeMap *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_100554EE8, [JavaUtilTreeMap__1 alloc]);
    atomic_store(1u, &JavaUtilTreeMap__initialized);
  }
}

@end