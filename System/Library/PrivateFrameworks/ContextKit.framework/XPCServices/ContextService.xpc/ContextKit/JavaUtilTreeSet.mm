@interface JavaUtilTreeSet
- (BOOL)addAllWithJavaUtilCollection:(id)a3;
- (BOOL)addWithId:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEmpty;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilTreeSet)init;
- (JavaUtilTreeSet)initWithJavaUtilCollection:(id)a3;
- (JavaUtilTreeSet)initWithJavaUtilNavigableMap:(id)a3;
- (id)ceilingWithId:(id)a3;
- (id)clone;
- (id)comparator;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descendingIterator;
- (id)descendingSet;
- (id)first;
- (id)floorWithId:(id)a3;
- (id)higherWithId:(id)a3;
- (id)iterator;
- (id)last;
- (id)lowerWithId:(id)a3;
- (id)pollFirst;
- (id)pollLast;
- (int)size;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilTreeSet

- (JavaUtilTreeSet)initWithJavaUtilNavigableMap:(id)a3
{
  JavaUtilAbstractSet_init(self, a2);
  JreStrongAssign(&self->backingMap_, a3);
  return self;
}

- (JavaUtilTreeSet)init
{
  JavaUtilAbstractSet_init(self, a2);
  v3 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume(&self->backingMap_, v3);
  return self;
}

- (JavaUtilTreeSet)initWithJavaUtilCollection:(id)a3
{
  JavaUtilAbstractSet_init(self, a2);
  v5 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume(&self->backingMap_, v5);
  [(JavaUtilTreeSet *)self addAllWithJavaUtilCollection:a3];
  return self;
}

- (BOOL)addWithId:(id)a3
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100129828();
  }

  return [(JavaUtilNavigableMap *)backingMap putWithId:a3 withId:JavaLangBoolean_TRUE__]== 0;
}

- (BOOL)addAllWithJavaUtilCollection:(id)a3
{
  v4.receiver = self;
  v4.super_class = JavaUtilTreeSet;
  return [(JavaUtilAbstractCollection *)&v4 addAllWithJavaUtilCollection:a3];
}

- (void)clear
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilNavigableMap *)backingMap clear];
}

- (id)clone
{
  v10.receiver = self;
  v10.super_class = JavaUtilTreeSet;
  v3 = [(JavaUtilTreeSet *)&v10 clone];
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    JreThrowClassCastException();
  }

  backingMap = self->backingMap_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v3)
    {
      v8 = new_JavaUtilTreeMap_initWithJavaUtilSortedMap_(self->backingMap_);
      JreStrongAssignAndConsume(v3 + 1, v8);
      return v3;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v5 = self->backingMap_;
  objc_opt_class();
  if (!v5)
  {
    goto LABEL_14;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = [(JavaUtilNavigableMap *)v5 clone];
  v7 = JavaUtilNavigableMap_class_();
  if (v6)
  {
    if (![v7 isInstance:v6])
    {
      goto LABEL_13;
    }
  }

  JreStrongAssign(v3 + 1, v6);
  return v3;
}

- (id)comparator
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap comparator];
}

- (BOOL)containsWithId:(id)a3
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap containsKeyWithId:a3];
}

- (BOOL)isEmpty
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap isEmpty];
}

- (id)iterator
{
  backingMap = self->backingMap_;
  if (!backingMap || (v3 = [(JavaUtilNavigableMap *)backingMap keySet]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 iterator];
}

- (id)descendingIterator
{
  v2 = [(JavaUtilTreeSet *)self descendingSet];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 iterator];
}

- (BOOL)removeWithId:(id)a3
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap removeWithId:a3]!= 0;
}

- (int)size
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap size];
}

- (id)first
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap firstKey];
}

- (id)last
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap lastKey];
}

- (id)pollFirst
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilNavigableMap *)backingMap pollFirstEntry];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)pollLast
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaUtilNavigableMap *)backingMap pollLastEntry];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)higherWithId:(id)a3
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap higherKeyWithId:a3];
}

- (id)lowerWithId:(id)a3
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap lowerKeyWithId:a3];
}

- (id)ceilingWithId:(id)a3
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap ceilingKeyWithId:a3];
}

- (id)floorWithId:(id)a3
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilNavigableMap *)backingMap floorKeyWithId:a3];
}

- (id)descendingSet
{
  result = self->descendingSet_;
  if (!result)
  {
    backingMap = self->backingMap_;
    if (!backingMap)
    {
      JreThrowNullPointerException();
    }

    v5 = new_JavaUtilTreeSet_initWithJavaUtilNavigableMap_([(JavaUtilNavigableMap *)backingMap descendingMap]);

    return JreStrongAssignAndConsume(&self->descendingSet_, v5);
  }

  return result;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3)
  {
    goto LABEL_9;
  }

  [a3 defaultWriteObject];
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    goto LABEL_9;
  }

  [a3 writeObjectWithId:{-[JavaUtilNavigableMap comparator](backingMap, "comparator")}];
  v6 = [(JavaUtilNavigableMap *)self->backingMap_ size];
  [a3 writeIntWithInt:v6];
  if (v6 < 1)
  {
    return;
  }

  v7 = [(JavaUtilNavigableMap *)self->backingMap_ keySet];
  if (!v7 || (v8 = [v7 iterator]) == 0)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v9 = v8;
  if ([v8 hasNext])
  {
    do
    {
      [a3 writeObjectWithId:{objc_msgSend(v9, "next")}];
    }

    while (([v9 hasNext] & 1) != 0);
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];
  v5 = [a3 readObject];
  v6 = JavaUtilComparator_class_();
  if (v5 && ([v6 isInstance:v5] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v7 = new_JavaUtilTreeMap_initWithJavaUtilComparator_(v5);
  v8 = [a3 readInt];
  if (v8 >= 1)
  {
    v9 = v8;
    do
    {
      v10 = [a3 readObject];
      if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100129828();
      }

      [(JavaUtilTreeMap *)v7 putWithId:v10 withId:JavaLangBoolean_TRUE__];
      --v9;
    }

    while (v9);
  }

  JreStrongAssign(&self->backingMap_, v7);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeSet;
  [(JavaUtilTreeSet *)&v3 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v9 = a3->var3[4];
  if (!v9)
  {
    v9 = [(JavaUtilNavigableMap *)self->backingMap_ keySet];
    a3->var3[4] = v9;
  }

  return [v9 countByEnumeratingWithState:a3 objects:a4 count:a5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilTreeSet *)self clone];

  return v3;
}

@end