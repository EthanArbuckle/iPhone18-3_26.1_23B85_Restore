@interface OrgApacheLuceneCodecsCompressingLZ4_HCHashTable
- (void)dealloc;
- (void)insertWithInt:(int)int withByteArray:(id)array;
- (void)resetWithInt:(int)int;
@end

@implementation OrgApacheLuceneCodecsCompressingLZ4_HCHashTable

- (void)resetWithInt:(int)int
{
  self->nextToUpdate_ = int;
  self->base_ = int;
  JavaUtilArrays_fillWithIntArray_withInt_(self->hashTable_, -1);
  chainTable = self->chainTable_;

  JavaUtilArrays_fillWithShortArray_withShort_(chainTable, 0);
}

- (void)insertWithInt:(int)int withByteArray:(id)array
{
  for (i = self->nextToUpdate_; i < int; self->nextToUpdate_ = i)
  {
    sub_10007EE74(self, array, i);
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