@interface JavaUtilTreeMap
+ (void)initialize;
- (id)ceilingEntryWithId:(id)a3;
- (id)ceilingKeyWithId:(id)a3;
- (id)clone;
- (id)comparator;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descendingKeySet;
- (id)descendingMap;
- (id)entrySet;
- (id)findByEntryWithJavaUtilMap_Entry:(id)a3;
- (id)findByObjectWithId:(id)a3;
- (id)findWithId:(id)a3 withJavaUtilTreeMap_RelationEnum:(id)a4;
- (id)firstEntry;
- (id)firstKey;
- (id)firstNode;
- (id)floorEntryWithId:(id)a3;
- (id)floorKeyWithId:(id)a3;
- (id)getWithId:(id)a3;
- (id)headMapWithId:(id)a3;
- (id)headMapWithId:(id)a3 withBoolean:(BOOL)a4;
- (id)higherEntryWithId:(id)a3;
- (id)higherKeyWithId:(id)a3;
- (id)immutableCopyWithJavaUtilMap_Entry:(id)a3;
- (id)internalPollFirstEntry;
- (id)internalPollLastEntry;
- (id)keySet;
- (id)lastEntry;
- (id)lastKey;
- (id)lastNode;
- (id)lowerEntryWithId:(id)a3;
- (id)lowerKeyWithId:(id)a3;
- (id)navigableKeySet;
- (id)pollFirstEntry;
- (id)pollLastEntry;
- (id)putInternalWithId:(id)a3 withId:(id)a4;
- (id)removeInternalByKeyWithId:(id)a3;
- (id)removeWithId:(id)a3;
- (id)subMapWithId:(id)a3 withBoolean:(BOOL)a4 withId:(id)a5 withBoolean:(BOOL)a6;
- (id)subMapWithId:(id)a3 withId:(id)a4;
- (id)tailMapWithId:(id)a3;
- (id)tailMapWithId:(id)a3 withBoolean:(BOOL)a4;
- (id)values;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)removeInternalWithJavaUtilTreeMap_Node:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilTreeMap

- (id)clone
{
  v7.receiver = self;
  v7.super_class = JavaUtilTreeMap;
  v3 = [(JavaUtilAbstractMap *)&v7 clone];
  objc_opt_class();
  if (!v3)
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

  JreStrongAssign(v3 + 4, v5);
  JreStrongAssign(v3 + 6, 0);
  JreStrongAssign(v3 + 7, 0);
  JreStrongAssign(v3 + 8, 0);
  return v3;
}

- (id)getWithId:(id)a3
{
  result = [(JavaUtilTreeMap *)self findByObjectWithId:a3];
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

- (id)removeWithId:(id)a3
{
  result = [(JavaUtilTreeMap *)self removeInternalByKeyWithId:a3];
  if (result)
  {
    return *(result + 5);
  }

  return result;
}

- (id)putInternalWithId:(id)a3 withId:(id)a4
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  v7 = [(JavaUtilTreeMap *)self findWithId:a3 withJavaUtilTreeMap_RelationEnum:qword_100558078];
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = v7[5];
  JreStrongAssign(v7 + 5, a4);
  return v8;
}

- (id)findWithId:(id)a3 withJavaUtilTreeMap_RelationEnum:(id)a4
{
  comparator = self->comparator_;
  if (self->root_)
  {
    if (comparator == qword_100554EE8 && (v10 = JavaLangComparable_class_(), a3))
    {
      v8 = a3;
      if (([v10 isInstance:a3] & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    else
    {
      v8 = 0;
    }

    root = self->root_;
    while (1)
    {
      if (v8)
      {
        if (!root)
        {
          goto LABEL_51;
        }

        v11 = [v8 compareToWithId:root->key_];
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

        v11 = [(JavaUtilComparator *)v14 compareWithId:a3 withId:root->key_];
        if (!v11)
        {
LABEL_24:
          v15 = [a4 ordinal];
          if (v15 - 1 < 4)
          {
            return root;
          }

          if (v15 == 5)
          {
LABEL_39:

            return [(JavaUtilTreeMap_Node *)root next];
          }

          if (!v15)
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

        v13 = [a4 ordinal];
        if (v13 > 2)
        {
          if ((v13 - 4) < 2)
          {
            return root;
          }

          if (v13 == 3)
          {
            v18 = new_JavaUtilTreeMap_Node_initWithJavaUtilTreeMap_Node_withId_(root, a3);
            p_left = &root->left_;
            goto LABEL_46;
          }
        }

        else
        {
          if (v13 < 2)
          {
            goto LABEL_43;
          }

LABEL_30:
          if (v13 == 2)
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
          v13 = [a4 ordinal];
          if (v13 <= 2)
          {
            if (v13 < 2)
            {
              return root;
            }

            goto LABEL_30;
          }

          if ((v13 - 4) < 2)
          {
            goto LABEL_39;
          }

          if (v13 == 3)
          {
            v18 = new_JavaUtilTreeMap_Node_initWithJavaUtilTreeMap_Node_withId_(root, a3);
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

  if (comparator == qword_100554EE8 && ([JavaLangComparable_class_() isInstance:a3] & 1) == 0)
  {
    if (a3)
    {
      v20 = [objc_msgSend(a3 "getClass")];
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

  if (qword_100558078 != a4)
  {
    return 0;
  }

  v17 = new_JavaUtilTreeMap_Node_initWithJavaUtilTreeMap_Node_withId_(0, a3);
  JreStrongAssignAndConsume(&self->root_, v17);
  self->size_ = 1;
  ++self->modCount_;
  return self->root_;
}

- (id)findByObjectWithId:(id)a3
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  v5 = qword_100558070;

  return [(JavaUtilTreeMap *)self findWithId:a3 withJavaUtilTreeMap_RelationEnum:v5];
}

- (id)findByEntryWithJavaUtilMap_Entry:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  result = -[JavaUtilTreeMap findByObjectWithId:](self, "findByObjectWithId:", [a3 getKey]);
  if (result)
  {
    v5 = result;
    if (LibcoreUtilObjects_equalWithId_withId_(*(result + 5), [a3 getValue]))
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

- (void)removeInternalWithJavaUtilTreeMap_Node:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = (a3 + 16);
  v6 = *(a3 + 2);
  v7 = (a3 + 24);
  v8 = *(a3 + 3);
  Weak = objc_loadWeak(a3 + 1);
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
      sub_1001DC4EC(self, a3, v6);
      v12 = v5;
    }

    else
    {
      if (!v8)
      {
        sub_1001DC4EC(self, a3, 0);
        goto LABEL_17;
      }

      sub_1001DC4EC(self, a3, v8);
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
    v13 = [v8 first];
  }

  else
  {
    v13 = [v6 last];
  }

  v14 = v13;
  [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:v13];
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

  sub_1001DC4EC(self, a3, v14);
}

- (id)removeInternalByKeyWithId:(id)a3
{
  v4 = [(JavaUtilTreeMap *)self findByObjectWithId:a3];
  if (v4)
  {
    [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:v4];
  }

  return v4;
}

- (id)immutableCopyWithJavaUtilMap_Entry:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(a3);

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

  v3 = [(JavaUtilTreeMap_Node *)root first];
  if (!v3)
  {
    return 0;
  }

  v4 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(v3);

  return v4;
}

- (id)internalPollFirstEntry
{
  root = self->root_;
  if (!root)
  {
    return 0;
  }

  v4 = [(JavaUtilTreeMap_Node *)root first];
  [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:v4];
  return v4;
}

- (id)pollFirstEntry
{
  root = self->root_;
  if (!root)
  {
    return 0;
  }

  v4 = [(JavaUtilTreeMap_Node *)root first];
  [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:v4];
  if (!v4)
  {
    return 0;
  }

  v5 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(v4);

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

  v3 = [(JavaUtilTreeMap_Node *)root first];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getKey];
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

  v3 = [(JavaUtilTreeMap_Node *)root last];
  if (!v3)
  {
    return 0;
  }

  v4 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(v3);

  return v4;
}

- (id)internalPollLastEntry
{
  root = self->root_;
  if (!root)
  {
    return 0;
  }

  v4 = [(JavaUtilTreeMap_Node *)root last];
  [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:v4];
  return v4;
}

- (id)pollLastEntry
{
  root = self->root_;
  if (!root)
  {
    return 0;
  }

  v4 = [(JavaUtilTreeMap_Node *)root last];
  [(JavaUtilTreeMap *)self removeInternalWithJavaUtilTreeMap_Node:v4];
  if (!v4)
  {
    return 0;
  }

  v5 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(v4);

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

  v3 = [(JavaUtilTreeMap_Node *)root last];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getKey];
}

- (id)lowerEntryWithId:(id)a3
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:a3 withJavaUtilTreeMap_RelationEnum:JavaUtilTreeMap_RelationEnum_values_];
  if (result)
  {
    v6 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(result);

    return v6;
  }

  return result;
}

- (id)lowerKeyWithId:(id)a3
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:a3 withJavaUtilTreeMap_RelationEnum:JavaUtilTreeMap_RelationEnum_values_];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)floorEntryWithId:(id)a3
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:a3 withJavaUtilTreeMap_RelationEnum:qword_100558068];
  if (result)
  {
    v6 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(result);

    return v6;
  }

  return result;
}

- (id)floorKeyWithId:(id)a3
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:a3 withJavaUtilTreeMap_RelationEnum:qword_100558068];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)ceilingEntryWithId:(id)a3
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:a3 withJavaUtilTreeMap_RelationEnum:qword_100558080];
  if (result)
  {
    v6 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(result);

    return v6;
  }

  return result;
}

- (id)ceilingKeyWithId:(id)a3
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:a3 withJavaUtilTreeMap_RelationEnum:qword_100558080];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)higherEntryWithId:(id)a3
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:a3 withJavaUtilTreeMap_RelationEnum:qword_100558088];
  if (result)
  {
    v6 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(result);

    return v6;
  }

  return result;
}

- (id)higherKeyWithId:(id)a3
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = [(JavaUtilTreeMap *)self findWithId:a3 withJavaUtilTreeMap_RelationEnum:qword_100558088];
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

- (id)subMapWithId:(id)a3 withBoolean:(BOOL)a4 withId:(id)a5 withBoolean:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
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

  if (v8)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = &qword_100558098;
  if (v6)
  {
    v14 = &JavaUtilTreeMap_BoundEnum_values_;
  }

  v15 = *v14;
  v16 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v16, self, 1, a3, v13, a5, v15);

  return v16;
}

- (id)subMapWithId:(id)a3 withId:(id)a4
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
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v9, self, 1, a3, v7, a4, v8);

  return v9;
}

- (id)headMapWithId:(id)a3 withBoolean:(BOOL)a4
{
  v4 = a4;
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

  if (v4)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = qword_1005580A0;
  v11 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v11, self, 1, 0, v10, a3, v9);

  return v11;
}

- (id)headMapWithId:(id)a3
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
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v7, self, 1, 0, v5, a3, v6);

  return v7;
}

- (id)tailMapWithId:(id)a3 withBoolean:(BOOL)a4
{
  v4 = a4;
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

  if (v4)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = qword_1005580A0;
  v11 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v11, self, 1, a3, v9, 0, v10);

  return v11;
}

- (id)tailMapWithId:(id)a3
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
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v7, self, 1, a3, v5, 0, v6);

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

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3)
  {
    goto LABEL_13;
  }

  v5 = [a3 putFields];
  if (!v5)
  {
    goto LABEL_13;
  }

  [v5 putWithNSString:@"comparator" withId:{-[JavaUtilTreeMap comparator](self, "comparator")}];
  [a3 writeFields];
  [a3 writeIntWithInt:self->size_];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(JavaUtilTreeMap *)self entrySet];
  if (!v6)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        [a3 writeObjectWithId:{objc_msgSend(*(*(&v13 + 1) + 8 * v11), "getKey")}];
        [a3 writeObjectWithId:{objc_msgSend(v12, "getValue")}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3 || (v5 = [a3 readFields]) == 0)
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
  v10 = [a3 readInt];
  if (v10 >= 1)
  {
    v11 = v10;
    do
    {
      -[JavaUtilTreeMap putInternalWithId:withId:](self, "putInternalWithId:withId:", [a3 readObject], objc_msgSend(a3, "readObject"));
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

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilTreeMap *)self clone];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_100554EE8, [JavaUtilTreeMap__1 alloc]);
    atomic_store(1u, &JavaUtilTreeMap__initialized);
  }
}

@end