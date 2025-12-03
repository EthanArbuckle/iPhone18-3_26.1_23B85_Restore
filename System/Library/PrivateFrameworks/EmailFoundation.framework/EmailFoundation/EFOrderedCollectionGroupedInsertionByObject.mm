@interface EFOrderedCollectionGroupedInsertionByObject
- (EFOrderedCollectionGroupedInsertionByObject)initWithObjects:(id)objects previousObject:(id)object nextObject:(id)nextObject isMove:(BOOL)move;
@end

@implementation EFOrderedCollectionGroupedInsertionByObject

- (EFOrderedCollectionGroupedInsertionByObject)initWithObjects:(id)objects previousObject:(id)object nextObject:(id)nextObject isMove:(BOOL)move
{
  objectsCopy = objects;
  objectCopy = object;
  nextObjectCopy = nextObject;
  v17.receiver = self;
  v17.super_class = EFOrderedCollectionGroupedInsertionByObject;
  v14 = [(EFOrderedCollectionGroupedInsertionByObject *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_objects, objects);
    objc_storeStrong(&v15->_previousObject, object);
    objc_storeStrong(&v15->_nextObject, nextObject);
    v15->_isMove = move;
  }

  return v15;
}

@end