@interface OrgApacheLuceneSearchTermCollectingRewrite
- (void)collectTermsWithOrgApacheLuceneIndexIndexReader:(id)a3 withOrgApacheLuceneSearchMultiTermQuery:(id)a4 withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:(id)a5;
@end

@implementation OrgApacheLuceneSearchTermCollectingRewrite

- (void)collectTermsWithOrgApacheLuceneIndexIndexReader:(id)a3 withOrgApacheLuceneSearchMultiTermQuery:(id)a4 withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:(id)a5
{
  if (!a3 || (v8 = [a3 getContext], v21 = 0u, v22 = 0u, v23 = 0u, v24 = 0u, !v8) || (v9 = v8, (v10 = objc_msgSend(v8, "leaves", v21)) == 0))
  {
LABEL_24:
    JreThrowNullPointerException();
  }

  v11 = v10;
  v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        if (!v16)
        {
          goto LABEL_24;
        }

        v17 = [*(*(&v21 + 1) + 8 * v15) reader];
        if (!v17 || !a4)
        {
          goto LABEL_24;
        }

        v18 = [v17 termsWithNSString:*(a4 + 12)];
        if (v18)
        {
          if (!a5)
          {
            goto LABEL_24;
          }

          v19 = [(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)self getTermsEnumWithOrgApacheLuceneSearchMultiTermQuery:a4 withOrgApacheLuceneIndexTerms:v18 withOrgApacheLuceneUtilAttributeSource:*(a5 + 3)];
          if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000D5C70();
          }

          if (v19 != OrgApacheLuceneIndexTermsEnum_EMPTY_)
          {
            [a5 setReaderContextWithOrgApacheLuceneIndexIndexReaderContext:v9 withOrgApacheLuceneIndexLeafReaderContext:v16];
            [a5 setNextEnumWithOrgApacheLuceneIndexTermsEnum:v19];
            if (!v19)
            {
              goto LABEL_24;
            }

            while (1)
            {
              v20 = [v19 next];
              if (!v20)
              {
                break;
              }

              if (([a5 collectWithOrgApacheLuceneUtilBytesRef:v20] & 1) == 0)
              {
                return;
              }
            }
          }
        }

        v15 = v15 + 1;
      }

      while (v15 != v13);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }
}

@end