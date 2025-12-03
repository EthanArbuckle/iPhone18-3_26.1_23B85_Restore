@interface OrgApacheLuceneIndexMergePolicy_MergeSpecification
- (OrgApacheLuceneIndexMergePolicy_MergeSpecification)init;
- (id)segStringWithOrgApacheLuceneStoreDirectory:(id)directory;
- (void)addWithOrgApacheLuceneIndexMergePolicy_OneMerge:(id)merge;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMergePolicy_MergeSpecification

- (OrgApacheLuceneIndexMergePolicy_MergeSpecification)init
{
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->merges_, v3);
  return self;
}

- (void)addWithOrgApacheLuceneIndexMergePolicy_OneMerge:(id)merge
{
  merges = self->merges_;
  if (!merges)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)merges addWithId:merge];
}

- (id)segStringWithOrgApacheLuceneStoreDirectory:(id)directory
{
  v4 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v4 appendWithNSString:@"MergeSpec:\n"];
  merges = self->merges_;
  if (!merges)
  {
    goto LABEL_12;
  }

  v6 = [(JavaUtilList *)merges size];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      v9 = [(JavaLangStringBuilder *)v4 appendWithNSString:@"  "];
      if (!v9)
      {
        break;
      }

      v10 = v8 + 1;
      v11 = [v9 appendWithInt:(v8 + 1)];
      if (!v11)
      {
        break;
      }

      v12 = [v11 appendWithNSString:@": "];
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = [(JavaUtilList *)self->merges_ getWithInt:v8];
      if (!v14)
      {
        break;
      }

      [v13 appendWithNSString:{objc_msgSend(v14, "segString")}];
      v8 = (v8 + 1);
      if (v7 == v10)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    JreThrowNullPointerException();
  }

LABEL_9:

  return [(JavaLangStringBuilder *)v4 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMergePolicy_MergeSpecification;
  [(OrgApacheLuceneIndexMergePolicy_MergeSpecification *)&v3 dealloc];
}

@end