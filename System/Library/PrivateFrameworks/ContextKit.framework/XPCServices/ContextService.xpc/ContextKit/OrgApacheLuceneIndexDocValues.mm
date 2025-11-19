@interface OrgApacheLuceneIndexDocValues
+ (id)emptySortedSet;
+ (id)singletonWithOrgApacheLuceneIndexNumericDocValues:(id)a3 withOrgApacheLuceneUtilBits:(id)a4;
+ (id)singletonWithOrgApacheLuceneIndexSortedDocValues:(id)a3;
@end

@implementation OrgApacheLuceneIndexDocValues

+ (id)emptySortedSet
{
  v2 = OrgApacheLuceneIndexDocValues_emptySorted();
  v3 = new_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(v2);

  return v3;
}

+ (id)singletonWithOrgApacheLuceneIndexSortedDocValues:(id)a3
{
  v3 = new_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(a3);

  return v3;
}

+ (id)singletonWithOrgApacheLuceneIndexNumericDocValues:(id)a3 withOrgApacheLuceneUtilBits:(id)a4
{
  v4 = new_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(a3, a4);

  return v4;
}

@end