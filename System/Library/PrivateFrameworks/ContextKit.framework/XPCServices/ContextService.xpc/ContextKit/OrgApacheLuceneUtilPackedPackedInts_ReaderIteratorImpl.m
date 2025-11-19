@interface OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl
- (OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl)initWithInt:(int)a3 withInt:(int)a4 withOrgApacheLuceneStoreDataInput:(id)a5;
- (int64_t)next;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl

- (OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl)initWithInt:(int)a3 withInt:(int)a4 withOrgApacheLuceneStoreDataInput:(id)a5
{
  JreStrongAssign(&self->in_, a5);
  self->bitsPerValue_ = a4;
  self->valueCount_ = a3;
  return self;
}

- (int64_t)next
{
  v2 = [(OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl *)self nextWithInt:1];
  v3 = v2[1];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = v2;
  v5 = *(v2 + 4);
  v6 = *(v3 + 8);
  if ((v5 & 0x80000000) != 0 || v5 >= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, v5);
  }

  result = *(v3 + 16 + 8 * v5);
  *(v4 + 4) = v5 + 1;
  --*(v4 + 5);
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl;
  [(OrgApacheLuceneUtilPackedPackedInts_ReaderIteratorImpl *)&v3 dealloc];
}

@end