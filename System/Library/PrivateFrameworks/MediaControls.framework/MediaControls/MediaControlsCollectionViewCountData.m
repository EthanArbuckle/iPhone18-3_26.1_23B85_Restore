@interface MediaControlsCollectionViewCountData
- (MediaControlsCollectionViewCountData)init;
- (MediaControlsCollectionViewCountData)initWithNumberOfItems:(int64_t)a3;
- (NSIndexSet)deletedIndexes;
- (NSIndexSet)insertedIndexes;
- (NSIndexSet)updatedIndexes;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyChanges;
- (void)moveItemAtIndex:(int64_t)a3 toIndex:(int64_t)a4;
@end

@implementation MediaControlsCollectionViewCountData

- (MediaControlsCollectionViewCountData)init
{
  v10.receiver = self;
  v10.super_class = MediaControlsCollectionViewCountData;
  v2 = [(MediaControlsCollectionViewCountData *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
    insertedIndexes = v2->_insertedIndexes;
    v2->_insertedIndexes = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    deletedIndexes = v2->_deletedIndexes;
    v2->_deletedIndexes = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
    updatedIndexes = v2->_updatedIndexes;
    v2->_updatedIndexes = v7;
  }

  return v2;
}

- (MediaControlsCollectionViewCountData)initWithNumberOfItems:(int64_t)a3
{
  result = [(MediaControlsCollectionViewCountData *)self init];
  if (result)
  {
    result->_numberOfItems = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MediaControlsCollectionViewCountData alloc];
  numberOfItems = self->_numberOfItems;

  return [(MediaControlsCollectionViewCountData *)v4 initWithNumberOfItems:numberOfItems];
}

- (NSIndexSet)insertedIndexes
{
  v2 = [(NSMutableIndexSet *)self->_insertedIndexes copy];

  return v2;
}

- (NSIndexSet)deletedIndexes
{
  v2 = [(NSMutableIndexSet *)self->_deletedIndexes copy];

  return v2;
}

- (NSIndexSet)updatedIndexes
{
  v2 = [(NSMutableIndexSet *)self->_updatedIndexes copy];

  return v2;
}

- (void)moveItemAtIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  self->_hasPendingChanges = 1;
  [(NSMutableIndexSet *)self->_deletedIndexes addIndex:a3];
  insertedIndexes = self->_insertedIndexes;

  [(NSMutableIndexSet *)insertedIndexes addIndex:a4];
}

- (void)applyChanges
{
  v3 = [(NSMutableIndexSet *)self->_insertedIndexes count];
  self->_numberOfItems += v3 - [(NSMutableIndexSet *)self->_deletedIndexes count];
  [(NSMutableIndexSet *)self->_insertedIndexes removeAllIndexes];
  [(NSMutableIndexSet *)self->_deletedIndexes removeAllIndexes];
  [(NSMutableIndexSet *)self->_updatedIndexes removeAllIndexes];
  self->_hasPendingChanges = 0;
}

@end