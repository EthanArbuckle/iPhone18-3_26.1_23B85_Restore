@interface JavaUtilTreeMap_BoundedMap
- (BOOL)containsKeyWithId:(id)a3;
- (id)boundWithJavaUtilTreeMap_Node:(id)a3 withJavaUtilTreeMap_BoundEnum:(id)a4 withJavaUtilTreeMap_BoundEnum:(id)a5;
- (id)ceilingEntryWithId:(id)a3;
- (id)ceilingKeyWithId:(id)a3;
- (id)comparator;
- (id)descendingKeySet;
- (id)descendingMap;
- (id)entrySet;
- (id)firstEntry;
- (id)firstKey;
- (id)floorEntryWithId:(id)a3;
- (id)floorKeyWithId:(id)a3;
- (id)getWithId:(id)a3;
- (id)headMapWithId:(id)a3;
- (id)headMapWithId:(id)a3 withBoolean:(BOOL)a4;
- (id)higherEntryWithId:(id)a3;
- (id)higherKeyWithId:(id)a3;
- (id)lastEntry;
- (id)lastKey;
- (id)lowerEntryWithId:(id)a3;
- (id)lowerKeyWithId:(id)a3;
- (id)navigableKeySet;
- (id)pollFirstEntry;
- (id)pollLastEntry;
- (id)putWithId:(id)a3 withId:(id)a4;
- (id)removeWithId:(id)a3;
- (id)subMapWithId:(id)a3 withBoolean:(BOOL)a4 withId:(id)a5 withBoolean:(BOOL)a6;
- (id)subMapWithId:(id)a3 withId:(id)a4;
- (id)tailMapWithId:(id)a3;
- (id)tailMapWithId:(id)a3 withBoolean:(BOOL)a4;
- (id)values;
- (id)writeReplace;
- (int)size;
- (void)dealloc;
@end

@implementation JavaUtilTreeMap_BoundedMap

- (int)size
{
  v2 = [(JavaUtilTreeMap_BoundedMap *)self entrySet];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = [v2 iterator];

  return JavaUtilTreeMap_countWithJavaUtilIterator_(v3);
}

- (id)getWithId:(id)a3
{
  if (!sub_1001E0314(self, a3, self->fromBound_, self->toBound_))
  {
    return 0;
  }

  v5 = self->this$0_;

  return [(JavaUtilTreeMap *)v5 getWithId:a3];
}

- (BOOL)containsKeyWithId:(id)a3
{
  v5 = sub_1001E0314(self, a3, self->fromBound_, self->toBound_);
  if (v5)
  {
    v6 = self->this$0_;

    LOBYTE(v5) = [(JavaUtilTreeMap *)v6 containsKeyWithId:a3];
  }

  return v5;
}

- (id)putWithId:(id)a3 withId:(id)a4
{
  if ((sub_1001E0314(self, a3, self->fromBound_, self->toBound_) & 1) == 0)
  {
    v9 = sub_1001E01BC(self, a3, self->fromBound_, self->toBound_);
    objc_exception_throw(v9);
  }

  v7 = self->this$0_;

  return [(JavaUtilTreeMap *)v7 putInternalWithId:a3 withId:a4];
}

- (id)removeWithId:(id)a3
{
  if (!sub_1001E0314(self, a3, self->fromBound_, self->toBound_))
  {
    return 0;
  }

  v5 = self->this$0_;

  return [(JavaUtilTreeMap *)v5 removeWithId:a3];
}

- (id)boundWithJavaUtilTreeMap_Node:(id)a3 withJavaUtilTreeMap_BoundEnum:(id)a4 withJavaUtilTreeMap_BoundEnum:(id)a5
{
  if (!a3)
  {
    return 0;
  }

  if (sub_1001E0314(self, [a3 getKey], a4, a5))
  {
    return a3;
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

- (id)lowerEntryWithId:(id)a3
{
  if ((atomic_load_explicit(&JavaUtilTreeMap_RelationEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37B0();
  }

  result = sub_1001E0700(self, a3, JavaUtilTreeMap_RelationEnum_values_[0]);
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

  result = sub_1001E0700(self, a3, JavaUtilTreeMap_RelationEnum_values_[0]);
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

  result = sub_1001E0700(self, a3, qword_100558068);
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

  result = sub_1001E0700(self, a3, qword_100558068);
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

  result = sub_1001E0700(self, a3, qword_100558080);
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

  result = sub_1001E0700(self, a3, qword_100558080);
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

  result = sub_1001E0700(self, a3, qword_100558088);
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

  result = sub_1001E0700(self, a3, qword_100558088);
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

- (id)subMapWithId:(id)a3 withBoolean:(BOOL)a4 withId:(id)a5 withBoolean:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
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
    v14 = JavaUtilTreeMap_BoundEnum_values_;
  }

  v15 = *v14;

  return sub_1001E1314(self, a3, v13, a5, v15);
}

- (id)subMapWithId:(id)a3 withId:(id)a4
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

  return sub_1001E1314(self, a3, v7, a4, v8);
}

- (id)headMapWithId:(id)a3 withBoolean:(BOOL)a4
{
  v4 = a4;
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

  if (v4)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = qword_1005580A0;

  return sub_1001E1314(self, 0, v10, a3, v9);
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

  return sub_1001E1314(self, 0, v5, a3, v6);
}

- (id)tailMapWithId:(id)a3 withBoolean:(BOOL)a4
{
  v4 = a4;
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

  if (v4)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = qword_1005580A0;

  return sub_1001E1314(self, a3, v9, 0, v10);
}

- (id)tailMapWithId:(id)a3
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

  return sub_1001E1314(self, a3, v5, 0, v6);
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