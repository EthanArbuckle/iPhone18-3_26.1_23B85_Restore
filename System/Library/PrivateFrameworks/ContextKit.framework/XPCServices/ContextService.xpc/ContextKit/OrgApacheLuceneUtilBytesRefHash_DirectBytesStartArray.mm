@interface OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray
- (OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray)initWithInt:(int)int;
- (OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray)initWithInt:(int)int withOrgApacheLuceneUtilCounter:(id)counter;
- (id)grow;
- (id)init__;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray

- (OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray)initWithInt:(int)int withOrgApacheLuceneUtilCounter:(id)counter
{
  JreStrongAssign(&self->bytesUsed_, counter);
  self->initSize_ = int;
  return self;
}

- (OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray)initWithInt:(int)int
{
  v5 = OrgApacheLuceneUtilCounter_newCounter();
  JreStrongAssign(&self->bytesUsed_, v5);
  self->initSize_ = int;
  return self;
}

- (id)grow
{
  bytesStart = self->bytesStart_;
  if (!bytesStart)
  {
    JreThrowNullPointerException();
  }

  v10 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(bytesStart, bytesStart[2] + 1, v2, v3, v4, v5, v6, v7);

  return JreStrongAssign(&self->bytesStart_, v10);
}

- (id)init__
{
  v9 = [IOSIntArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(self->initSize_, 4, v2, v3, v4, v5, v6, v7)];

  return JreStrongAssignAndConsume(&self->bytesStart_, v9);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray;
  [(OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray *)&v3 dealloc];
}

@end