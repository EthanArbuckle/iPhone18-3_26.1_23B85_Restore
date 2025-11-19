@interface OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray
- (OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray)initWithInt:(int)a3;
- (OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray)initWithInt:(int)a3 withOrgApacheLuceneUtilCounter:(id)a4;
- (id)grow;
- (id)init__;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray

- (OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray)initWithInt:(int)a3 withOrgApacheLuceneUtilCounter:(id)a4
{
  JreStrongAssign(&self->bytesUsed_, a4);
  self->initSize_ = a3;
  return self;
}

- (OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray)initWithInt:(int)a3
{
  v5 = OrgApacheLuceneUtilCounter_newCounter();
  JreStrongAssign(&self->bytesUsed_, v5);
  self->initSize_ = a3;
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