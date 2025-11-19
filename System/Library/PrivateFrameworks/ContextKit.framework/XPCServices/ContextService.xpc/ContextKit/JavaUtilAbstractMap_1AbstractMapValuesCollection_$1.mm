@interface JavaUtilAbstractMap_1AbstractMapValuesCollection_$1
- (BOOL)hasNext;
- (id)next;
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilAbstractMap_1AbstractMapValuesCollection_$1

- (BOOL)hasNext
{
  setIterator = self->setIterator_;
  if (!setIterator)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilIterator *)setIterator hasNext];
}

- (id)next
{
  setIterator = self->setIterator_;
  if (!setIterator || (v3 = [(JavaUtilIterator *)setIterator next]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 getValue];
}

- (void)remove
{
  setIterator = self->setIterator_;
  if (!setIterator)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilIterator *)setIterator remove];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilAbstractMap_1AbstractMapValuesCollection__1;
  [(JavaUtilAbstractMap_1AbstractMapValuesCollection_$1 *)&v3 dealloc];
}

@end