@interface OrgApacheLuceneCodecsCompressingLZ4_HCHashTable
- (void)dealloc;
- (void)insertWithInt:(int)a3 withByteArray:(id)a4;
- (void)resetWithInt:(int)a3;
@end

@implementation OrgApacheLuceneCodecsCompressingLZ4_HCHashTable

- (void)resetWithInt:(int)a3
{
  self->nextToUpdate_ = a3;
  self->base_ = a3;
  JavaUtilArrays_fillWithIntArray_withInt_(self->hashTable_, -1);
  chainTable = self->chainTable_;

  JavaUtilArrays_fillWithShortArray_withShort_(chainTable, 0);
}

- (void)insertWithInt:(int)a3 withByteArray:(id)a4
{
  for (i = self->nextToUpdate_; i < a3; self->nextToUpdate_ = i)
  {
    sub_10007EE74(self, a4, i);
    i = (self->nextToUpdate_ + 1);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingLZ4_HCHashTable;
  [(OrgApacheLuceneCodecsCompressingLZ4_HCHashTable *)&v3 dealloc];
}

@end