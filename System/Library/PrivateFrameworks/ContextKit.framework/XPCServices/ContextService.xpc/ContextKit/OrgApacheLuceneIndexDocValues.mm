@interface OrgApacheLuceneIndexDocValues
+ (id)emptySortedSet;
+ (id)singletonWithOrgApacheLuceneIndexNumericDocValues:(id)values withOrgApacheLuceneUtilBits:(id)bits;
+ (id)singletonWithOrgApacheLuceneIndexSortedDocValues:(id)values;
@end

@implementation OrgApacheLuceneIndexDocValues

+ (id)emptySortedSet
{
  v2 = OrgApacheLuceneIndexDocValues_emptySorted();
  v3 = new_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(v2);

  return v3;
}

+ (id)singletonWithOrgApacheLuceneIndexSortedDocValues:(id)values
{
  v3 = new_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(values);

  return v3;
}

+ (id)singletonWithOrgApacheLuceneIndexNumericDocValues:(id)values withOrgApacheLuceneUtilBits:(id)bits
{
  v4 = new_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(values, bits);

  return v4;
}

@end