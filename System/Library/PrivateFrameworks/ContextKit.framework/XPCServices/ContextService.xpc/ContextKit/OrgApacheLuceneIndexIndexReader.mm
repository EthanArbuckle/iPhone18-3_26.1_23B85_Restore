@interface OrgApacheLuceneIndexIndexReader
- (BOOL)tryIncRef;
- (id)ensureOpen;
- (id)leaves;
- (int)getRefCount;
- (void)addReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:(id)a3;
- (void)close;
- (void)dealloc;
- (void)incRef;
- (void)registerParentReaderWithOrgApacheLuceneIndexIndexReader:(id)a3;
- (void)removeReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:(id)a3;
@end

@implementation OrgApacheLuceneIndexIndexReader

- (void)addReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:(id)a3
{
  [OrgApacheLuceneIndexIndexReader ensureOpen]_0(self);
  readerClosedListeners = self->readerClosedListeners_;
  if (!readerClosedListeners)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)readerClosedListeners addWithId:a3];
}

- (id)ensureOpen
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  result = [v2 get];
  if (result <= 0)
  {
    v4 = @"this IndexReader is closed";
    goto LABEL_8;
  }

  if (*(a1 + 9) == 1)
  {
    v4 = @"this IndexReader cannot be used anymore as one of its child readers was closed";
LABEL_8:
    v5 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(v4);
    objc_exception_throw(v5);
  }

  return result;
}

- (void)removeReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:(id)a3
{
  [OrgApacheLuceneIndexIndexReader ensureOpen]_0(self);
  readerClosedListeners = self->readerClosedListeners_;
  if (!readerClosedListeners)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)readerClosedListeners removeWithId:a3];
}

- (void)registerParentReaderWithOrgApacheLuceneIndexIndexReader:(id)a3
{
  [OrgApacheLuceneIndexIndexReader ensureOpen]_0(self);
  parentReaders = self->parentReaders_;
  if (!parentReaders)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)parentReaders addWithId:a3];
}

- (int)getRefCount
{
  refCount = self->refCount_;
  if (!refCount)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentAtomicAtomicInteger *)refCount get];
}

- (void)incRef
{
  if (![OrgApacheLuceneIndexIndexReader tryIncRef]_0(self))
  {

    [OrgApacheLuceneIndexIndexReader ensureOpen]_0(self);
  }
}

- (BOOL)tryIncRef
{
  do
  {
    v2 = *(a1 + 16);
    if (!v2)
    {
      JreThrowNullPointerException();
    }

    v3 = [v2 get];
  }

  while (v3 >= 1 && ![*(a1 + 16) compareAndSetWithInt:v3 withInt:(v3 + 1)]);
  return v3 > 0;
}

- (void)close
{
  objc_sync_enter(self);
  if (!self->closed_)
  {
    sub_100101508(self);
    self->closed_ = 1;
  }

  objc_sync_exit(self);
}

- (id)leaves
{
  v2 = [(OrgApacheLuceneIndexIndexReader *)self getContext];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 leaves];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexIndexReader;
  [(OrgApacheLuceneIndexIndexReader *)&v3 dealloc];
}

@end