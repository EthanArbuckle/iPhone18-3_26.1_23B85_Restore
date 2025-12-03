@interface OrgApacheLuceneUtilPackedPackedInts_Mutable
- (id)getFormat;
- (void)clear;
- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_Mutable

- (void)clear
{
  v3 = [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self size];

  [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self fillWithInt:0 withInt:v3 withLong:0];
}

- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output
{
  v4 = new_OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withOrgApacheLuceneStoreDataOutput_withInt_withInt_withInt_([(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self getFormat], output, [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self size], [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self getBitsPerValue], 1024);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  [(OrgApacheLuceneUtilPackedPackedInts_Writer *)v4 writeHeader];
  if ([(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self size]>= 1)
  {
    v6 = 0;
    do
    {
      [(OrgApacheLuceneUtilPackedPackedWriter *)v5 addWithLong:[(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self getWithInt:v6]];
      v6 = (v6 + 1);
    }

    while (v6 < [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self size]);
  }

  [(OrgApacheLuceneUtilPackedPackedWriter *)v5 finish];
}

- (id)getFormat
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  return OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0];
}

@end