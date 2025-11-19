@interface EFOrderedCollectionGroupedInsertion
- (EFOrderedCollectionGroupedInsertion)initWithObjects:(id)a3 index:(unint64_t)a4;
@end

@implementation EFOrderedCollectionGroupedInsertion

- (EFOrderedCollectionGroupedInsertion)initWithObjects:(id)a3 index:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = EFOrderedCollectionGroupedInsertion;
  v8 = [(EFOrderedCollectionGroupedInsertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_objects, a3);
    v9->_index = a4;
  }

  return v9;
}

@end