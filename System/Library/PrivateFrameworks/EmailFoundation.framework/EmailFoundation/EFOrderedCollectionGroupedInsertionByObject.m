@interface EFOrderedCollectionGroupedInsertionByObject
- (EFOrderedCollectionGroupedInsertionByObject)initWithObjects:(id)a3 previousObject:(id)a4 nextObject:(id)a5 isMove:(BOOL)a6;
@end

@implementation EFOrderedCollectionGroupedInsertionByObject

- (EFOrderedCollectionGroupedInsertionByObject)initWithObjects:(id)a3 previousObject:(id)a4 nextObject:(id)a5 isMove:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = EFOrderedCollectionGroupedInsertionByObject;
  v14 = [(EFOrderedCollectionGroupedInsertionByObject *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_objects, a3);
    objc_storeStrong(&v15->_previousObject, a4);
    objc_storeStrong(&v15->_nextObject, a5);
    v15->_isMove = a6;
  }

  return v15;
}

@end