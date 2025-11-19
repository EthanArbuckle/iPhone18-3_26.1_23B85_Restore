@interface JavaUtilHashSet
+ (void)initialize;
- (BOOL)addWithId:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEmpty;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilHashSet)initWithJavaUtilHashMap:(id)a3;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)iterator;
- (int)size;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilHashSet

- (JavaUtilHashSet)initWithJavaUtilHashMap:(id)a3
{
  JavaUtilAbstractSet_init(self, a2);
  JreStrongAssign(&self->backingMap_, a3);
  return self;
}

- (BOOL)addWithId:(id)a3
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)backingMap putWithId:a3 withId:qword_100554938]== 0;
}

- (void)clear
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilHashMap *)backingMap clear];
}

- (id)clone
{
  v7.receiver = self;
  v7.super_class = JavaUtilHashSet;
  v3 = [(JavaUtilHashSet *)&v7 clone];
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_8;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  backingMap = self->backingMap_;
  if (!backingMap)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilHashMap *)backingMap clone];
  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    JreThrowClassCastException();
  }

  JreStrongAssign(v3 + 1, v5);
  return v3;
}

- (BOOL)containsWithId:(id)a3
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)backingMap containsKeyWithId:a3];
}

- (BOOL)isEmpty
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)backingMap isEmpty];
}

- (id)iterator
{
  backingMap = self->backingMap_;
  if (!backingMap || (v3 = [(JavaUtilHashMap *)backingMap keySet]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 iterator];
}

- (BOOL)removeWithId:(id)a3
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)backingMap removeWithId:a3]!= 0;
}

- (int)size
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)backingMap size];
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3 || ([a3 defaultWriteObject], (backingMap = self->backingMap_) == 0) || (table = backingMap->table_) == 0)
  {
    JreThrowNullPointerException();
  }

  [a3 writeIntWithInt:table->super.size_];
  LODWORD(v7) = 0.75;
  [a3 writeFloatWithFloat:v7];
  [a3 writeIntWithInt:{-[JavaUtilHashSet size](self, "size")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = [(JavaUtilHashSet *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(self);
        }

        [a3 writeObjectWithId:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [(JavaUtilHashSet *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    goto LABEL_7;
  }

  [a3 defaultReadObject];
  v5 = [a3 readInt];
  [a3 readFloat];
  JreStrongAssign(&self->backingMap_, [(JavaUtilHashSet *)self createBackingMapWithInt:v5 withFloat:?]);
  v6 = [a3 readInt];
  if ((v6 - 1) >= 0)
  {
    v7 = v6;
    while (1)
    {
      v8 = [a3 readObject];
      backingMap = self->backingMap_;
      if (!backingMap)
      {
        break;
      }

      [(JavaUtilHashMap *)backingMap putWithId:v8 withId:self];
      if (--v7 <= 0)
      {
        return;
      }
    }

LABEL_7:
    JreThrowNullPointerException();
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashSet;
  [(JavaUtilHashSet *)&v3 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v9 = a3->var3[4];
  if (!v9)
  {
    v9 = [(JavaUtilHashMap *)self->backingMap_ keySet];
    a3->var3[4] = v9;
  }

  return [v9 countByEnumeratingWithState:a3 objects:a4 count:a5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaUtilHashSet *)self clone];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_100554938, [NSObject alloc]);
    atomic_store(1u, &JavaUtilHashSet__initialized);
  }
}

@end