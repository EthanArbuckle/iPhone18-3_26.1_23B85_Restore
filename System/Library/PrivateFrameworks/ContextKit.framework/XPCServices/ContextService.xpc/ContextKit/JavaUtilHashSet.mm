@interface JavaUtilHashSet
+ (void)initialize;
- (BOOL)addWithId:(id)id;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)removeWithId:(id)id;
- (JavaUtilHashSet)initWithJavaUtilHashMap:(id)map;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)iterator;
- (int)size;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)clear;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilHashSet

- (JavaUtilHashSet)initWithJavaUtilHashMap:(id)map
{
  JavaUtilAbstractSet_init(self, a2);
  JreStrongAssign(&self->backingMap_, map);
  return self;
}

- (BOOL)addWithId:(id)id
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)backingMap putWithId:id withId:qword_100554938]== 0;
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
  clone = [(JavaUtilHashSet *)&v7 clone];
  objc_opt_class();
  if (!clone)
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

  clone2 = [(JavaUtilHashMap *)backingMap clone];
  objc_opt_class();
  if (clone2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    JreThrowClassCastException();
  }

  JreStrongAssign(clone + 1, clone2);
  return clone;
}

- (BOOL)containsWithId:(id)id
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)backingMap containsKeyWithId:id];
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

- (BOOL)removeWithId:(id)id
{
  backingMap = self->backingMap_;
  if (!backingMap)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilHashMap *)backingMap removeWithId:id]!= 0;
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

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream || ([stream defaultWriteObject], (backingMap = self->backingMap_) == 0) || (table = backingMap->table_) == 0)
  {
    JreThrowNullPointerException();
  }

  [stream writeIntWithInt:table->super.size_];
  LODWORD(v7) = 0.75;
  [stream writeFloatWithFloat:v7];
  [stream writeIntWithInt:{-[JavaUtilHashSet size](self, "size")}];
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

        [stream writeObjectWithId:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [(JavaUtilHashSet *)self countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    goto LABEL_7;
  }

  [stream defaultReadObject];
  readInt = [stream readInt];
  [stream readFloat];
  JreStrongAssign(&self->backingMap_, [(JavaUtilHashSet *)self createBackingMapWithInt:readInt withFloat:?]);
  readInt2 = [stream readInt];
  if ((readInt2 - 1) >= 0)
  {
    v7 = readInt2;
    while (1)
    {
      readObject = [stream readObject];
      backingMap = self->backingMap_;
      if (!backingMap)
      {
        break;
      }

      [(JavaUtilHashMap *)backingMap putWithId:readObject withId:self];
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

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  keySet = state->var3[4];
  if (!keySet)
  {
    keySet = [(JavaUtilHashMap *)self->backingMap_ keySet];
    state->var3[4] = keySet;
  }

  return [keySet countByEnumeratingWithState:state objects:objects count:count];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilHashSet *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_100554938, [NSObject alloc]);
    atomic_store(1u, &JavaUtilHashSet__initialized);
  }
}

@end