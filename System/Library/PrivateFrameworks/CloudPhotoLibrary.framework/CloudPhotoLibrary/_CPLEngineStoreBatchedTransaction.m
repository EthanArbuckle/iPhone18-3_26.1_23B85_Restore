@interface _CPLEngineStoreBatchedTransaction
- (_CPLEngineStoreBatchedTransaction)init;
- (void)_releaseDirty;
- (void)dealloc;
@end

@implementation _CPLEngineStoreBatchedTransaction

- (void)_releaseDirty
{
  [(CPLTransaction *)self->_dirty endTransaction];
  dirty = self->_dirty;
  self->_dirty = 0;
}

- (void)dealloc
{
  [(CPLTransaction *)self->_dirty endTransaction];
  v3.receiver = self;
  v3.super_class = _CPLEngineStoreBatchedTransaction;
  [(_CPLEngineStoreBatchedTransaction *)&v3 dealloc];
}

- (_CPLEngineStoreBatchedTransaction)init
{
  v6.receiver = self;
  v6.super_class = _CPLEngineStoreBatchedTransaction;
  v2 = [(_CPLEngineStoreBatchedTransaction *)&v6 init];
  if (v2)
  {
    v3 = [CPLTransaction newTransactionWithIdentifier:@"cpl.store.batchwrite" description:@"batch write" keepPower:1];
    dirty = v2->_dirty;
    v2->_dirty = v3;
  }

  return v2;
}

@end