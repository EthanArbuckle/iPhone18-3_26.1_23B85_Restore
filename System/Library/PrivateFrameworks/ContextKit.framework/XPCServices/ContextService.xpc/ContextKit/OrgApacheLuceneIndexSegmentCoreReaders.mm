@interface OrgApacheLuceneIndexSegmentCoreReaders
- (int)getRefCount;
- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)listener;
- (void)dealloc;
- (void)decRef;
- (void)incRef;
- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)listener;
@end

@implementation OrgApacheLuceneIndexSegmentCoreReaders

- (int)getRefCount
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentAtomicAtomicInteger *)ref get];
}

- (void)incRef
{
  do
  {
    ref = self->ref_;
    if (!ref)
    {
      JreThrowNullPointerException();
    }

    v4 = [(JavaUtilConcurrentAtomicAtomicInteger *)ref get];
    if (v4 < 1)
    {
      v5 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"SegmentCoreReaders is already closed");
      objc_exception_throw(v5);
    }
  }

  while (![(JavaUtilConcurrentAtomicAtomicInteger *)self->ref_ compareAndSetWithInt:v4 withInt:(v4 + 1)]);
}

- (void)decRef
{
  ref = self->ref_;
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  if (![(JavaUtilConcurrentAtomicAtomicInteger *)ref decrementAndGet])
  {
    v6 = vextq_s8(*&self->fieldsReaderLocal_, *&self->fieldsReaderLocal_, 8uLL);
    normsProducer = self->normsProducer_;
    fields = self->fields_;
    v8 = vextq_s8(*&self->fieldsReaderOrig_, *&self->fieldsReaderOrig_, 8uLL);
    cfsReader = self->cfsReader_;
    v10 = normsProducer;
    v5 = [IOSObjectArray arrayWithObjects:&v6 count:7 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v5);
    sub_10003F0AC(self, 0);
  }
}

- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)listener
{
  coreClosedListeners = self->coreClosedListeners_;
  if (!coreClosedListeners)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)coreClosedListeners addWithId:listener];
}

- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id)listener
{
  coreClosedListeners = self->coreClosedListeners_;
  if (!coreClosedListeners)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilSet *)coreClosedListeners removeWithId:listener];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentCoreReaders;
  [(OrgApacheLuceneIndexSegmentCoreReaders *)&v3 dealloc];
}

@end