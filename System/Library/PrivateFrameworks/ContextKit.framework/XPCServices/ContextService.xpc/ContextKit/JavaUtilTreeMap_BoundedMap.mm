@interface JavaUtilTreeMap_BoundedMap
- (BOOL)containsKeyWithId:(id)id;
- (id)boundWithJavaUtilTreeMap_Node:(id)node withJavaUtilTreeMap_BoundEnum:(id)enum withJavaUtilTreeMap_BoundEnum:(id)boundEnum;
- (id)ceilingEntryWithId:(id)id;
- (id)ceilingKeyWithId:(id)id;
- (id)comparator;
- (id)descendingKeySet;
- (id)descendingMap;
- (id)entrySet;
- (id)firstEntry;
- (id)firstKey;
- (id)floorEntryWithId:(id)id;
- (id)floorKeyWithId:(id)id;
- (id)getWithId:(id)id;
- (id)headMapWithId:(id)id;
- (id)headMapWithId:(id)id withBoolean:(BOOL)boolean;
- (id)higherEntryWithId:(id)id;
- (id)higherKeyWithId:(id)id;
- (id)lastEntry;
- (id)lastKey;
- (id)lowerEntryWithId:(id)id;
- (id)lowerKeyWithId:(id)id;
- (id)navigableKeySet;
- (id)pollFirstEntry;
- (id)pollLastEntry;
- (id)putWithId:(id)id withId:(id)withId;
- (id)removeWithId:(id)id;
- (id)subMapWithId:(id)id withBoolean:(BOOL)boolean withId:(id)withId withBoolean:(BOOL)withBoolean;
- (id)subMapWithId:(id)id withId:(id)withId;
- (id)tailMapWithId:(id)id;
- (id)tailMapWithId:(id)id withBoolean:(BOOL)boolean;
- (id)values;
- (id)writeReplace;
- (int)size;
- (void)dealloc;
@end

@implementation JavaUtilTreeMap_BoundedMap

- (int)size
{
  entrySet = [(JavaUtilTreeMap_BoundedMap *)self entrySet];
  if (!entrySet)
  {
    JreThrowNullPointerException();
  }

  iterator = [entrySet iterator];

  return JavaUtilTreeMap_countWithJavaUtilIterator_(iterator);
}

- (id)getWithId:(id)id
{
  if (!sub_1001E0314(self, id, self->fromBound_, self->toBound_))
  {
    return 0;
  }

  v5 = self->this$0_;

  return [(JavaUtilTreeMap *)v5 getWithId:id];
}

- (BOOL)containsKeyWithId:(id)id
{
  v5 = sub_1001E0314(self, id, self->fromBound_, self->toBound_);
  if (v5)
  {
    v6 = self->this$0_;

    LOBYTE(v5) = [(JavaUtilTreeMap *)v6 containsKeyWithId:id];
  }

  return v5;
}

- (id)putWithId:(id)id withId:(id)withId
{
  if ((sub_1001E0314(self, id, self->fromBound_, self->toBound_) & 1) == 0)
  {
    v9 = sub_1001E01BC(self, id, self->fromBound_, self->toBound_);
    objc_exception_throw(v9);
  }

  v7 = self->this$0_;

  return [(JavaUtilTreeMap *)v7 putInternalWithId:id withId:withId];
}

- (id)removeWithId:(id)id
{
  if (!sub_1001E0314(self, id, self->fromBound_, self->toBound_))
  {
    return 0;
  }

  v5 = self->this$0_;

  return [(JavaUtilTreeMap *)v5 removeWithId:id];
}

- (id)boundWithJavaUtilTreeMap_Node:(id)node withJavaUtilTreeMap_BoundEnum:(id)enum withJavaUtilTreeMap_BoundEnum:(id)boundEnum
{
  if (!node)
  {
    return 0;
  }

  if (sub_1001E0314(self, [node getKey], enum, boundEnum))
  {
    return node;
  }

  return 0;
}

- (id)firstEntry
{
  result = sub_1001DFD9C(self, 1);
  if (result)
  {
    v3 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(result);

    return v3;
  }

  return result;
}

- (id)pollFirstEntry
{
  result = sub_1001DFD9C(self, 1);
  if (result)
  {
    v4 = result;
    [(JavaUtilTreeMap *)self->this$0_ removeInternalWithJavaUtilTreeMap_Node:result];
    v5 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(v4);

    return v5;
  }

  return result;
}

- (id)firstKey
{
  v2 = sub_1001DFD9C(self, 1);
  if (!v2)
  {
    v4 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v4);
  }

  return [v2 getKey];
}

- (id)lastEntry
{
  result = sub_1001DFD9C(self, 0);
  if (result)
  {
    v3 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(result);

    return v3;
  }

  return result;
}

- (id)pollLastEntry
{
  result = sub_1001DFD9C(self, 0);
  if (result)
  {
    v4 = result;
    [(JavaUtilTreeMap *)self->this$0_ removeInternalWithJavaUtilTreeMap_Node:result];
    v5 = new_JavaUtilAbstractMap_SimpleImmutableEntry_initWithJavaUtilMap_Entry_(v4);

    return v5;
  }

  return result;
}

- (id)lastKey
{
  v2 = sub_1001DFD9C(self, 0);
  if (!v2)
  {
    v4 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v4);
  }

  return [v2 getKey];
}

- (id)lowerEntryWithId:(id)id
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = sub_1001E0700(self, id, JavaUtilTreeMap_RelationEnum_values_[0]);
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

  result = sub_1001E0700(self, id, JavaUtilTreeMap_RelationEnum_values_[0]);
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

  result = sub_1001E0700(self, id, qword_100558068);
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

  result = sub_1001E0700(self, id, qword_100558068);
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

  result = sub_1001E0700(self, id, qword_100558080);
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

  result = sub_1001E0700(self, id, qword_100558080);
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

  result = sub_1001E0700(self, id, qword_100558088);
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

  result = sub_1001E0700(self, id, qword_100558088);
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)comparator
{
  result = [(JavaUtilTreeMap *)self->this$0_ comparator];
  if (!self->ascending_)
  {

    return JavaUtilCollections_reverseOrderWithJavaUtilComparator_(result);
  }

  return result;
}

- (id)entrySet
{
  result = self->entrySet_;
  if (!result)
  {
    v4 = new_JavaUtilTreeMap_BoundedMap_BoundedEntrySet_initWithJavaUtilTreeMap_BoundedMap_(self);

    return JreStrongAssignAndConsume(&self->entrySet_, v4);
  }

  return result;
}

- (id)navigableKeySet
{
  result = self->keySet_BoundedMap_;
  if (!result)
  {
    v4 = new_JavaUtilTreeMap_BoundedMap_BoundedKeySet_initWithJavaUtilTreeMap_BoundedMap_(self);

    return JreStrongAssignAndConsume(&self->keySet_BoundedMap_, v4);
  }

  return result;
}

- (id)values
{
  result = self->valuesCollection_BoundedMap_;
  if (!result)
  {
    v4 = new_JavaUtilTreeMap_BoundedMap_BoundedValuesCollection_initWithJavaUtilTreeMap_BoundedMap_(self);

    return JreStrongAssignAndConsume(&self->valuesCollection_BoundedMap_, v4);
  }

  return result;
}

- (id)descendingMap
{
  v2 = self->this$0_;
  ascending = self->ascending_;
  from = self->from_;
  fromBound = self->fromBound_;
  to = self->to_;
  toBound = self->toBound_;
  v8 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v8, v2, !ascending, from, fromBound, to, toBound);

  return v8;
}

- (id)descendingKeySet
{
  v2 = self->this$0_;
  ascending = self->ascending_;
  from = self->from_;
  fromBound = self->fromBound_;
  to = self->to_;
  toBound = self->toBound_;
  v8 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v8, v2, !ascending, from, fromBound, to, toBound);
  v9 = v8;

  return [(JavaUtilTreeMap_BoundedMap *)v9 navigableKeySet];
}

- (id)subMapWithId:(id)id withBoolean:(BOOL)boolean withId:(id)withId withBoolean:(BOOL)withBoolean
{
  withBooleanCopy = withBoolean;
  booleanCopy = boolean;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v11 = JavaUtilTreeMap_BoundEnum_values_[0];
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
    v14 = JavaUtilTreeMap_BoundEnum_values_;
  }

  v15 = *v14;

  return sub_1001E1314(self, id, v13, withId, v15);
}

- (id)subMapWithId:(id)id withId:(id)withId
{
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v7 = JavaUtilTreeMap_BoundEnum_values_[0];
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v8 = qword_100558098;

  return sub_1001E1314(self, id, v7, withId, v8);
}

- (id)headMapWithId:(id)id withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v7 = JavaUtilTreeMap_BoundEnum_values_[0];
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

  return sub_1001E1314(self, 0, v10, id, v9);
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

  return sub_1001E1314(self, 0, v5, id, v6);
}

- (id)tailMapWithId:(id)id withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v7 = JavaUtilTreeMap_BoundEnum_values_[0];
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

  return sub_1001E1314(self, id, v9, 0, v10);
}

- (id)tailMapWithId:(id)id
{
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v5 = JavaUtilTreeMap_BoundEnum_values_[0];
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v6 = qword_1005580A0;

  return sub_1001E1314(self, id, v5, 0, v6);
}

- (id)writeReplace
{
  v2 = self->this$0_;
  from = self->from_;
  fromBound = self->fromBound_;
  to = self->to_;
  toBound = self->toBound_;
  if (self->ascending_)
  {
    v7 = off_1003E8D00;
  }

  else
  {
    v7 = off_1003E8D08;
  }

  v8 = objc_alloc(*v7);
  JavaUtilTreeMap_NavigableSubMap_initWithJavaUtilTreeMap_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v8, v2, from, fromBound, to, toBound);

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_BoundedMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

@end