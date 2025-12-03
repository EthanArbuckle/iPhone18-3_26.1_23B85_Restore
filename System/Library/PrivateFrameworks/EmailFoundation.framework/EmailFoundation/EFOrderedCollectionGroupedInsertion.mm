@interface EFOrderedCollectionGroupedInsertion
- (EFOrderedCollectionGroupedInsertion)initWithObjects:(id)objects index:(unint64_t)index;
@end

@implementation EFOrderedCollectionGroupedInsertion

- (EFOrderedCollectionGroupedInsertion)initWithObjects:(id)objects index:(unint64_t)index
{
  objectsCopy = objects;
  v11.receiver = self;
  v11.super_class = EFOrderedCollectionGroupedInsertion;
  v8 = [(EFOrderedCollectionGroupedInsertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_objects, objects);
    v9->_index = index;
  }

  return v9;
}

@end