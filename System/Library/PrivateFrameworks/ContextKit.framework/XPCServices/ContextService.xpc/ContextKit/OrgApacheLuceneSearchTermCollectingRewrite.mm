@interface OrgApacheLuceneSearchTermCollectingRewrite
- (void)collectTermsWithOrgApacheLuceneIndexIndexReader:(id)reader withOrgApacheLuceneSearchMultiTermQuery:(id)query withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:(id)collector;
@end

@implementation OrgApacheLuceneSearchTermCollectingRewrite

- (void)collectTermsWithOrgApacheLuceneIndexIndexReader:(id)reader withOrgApacheLuceneSearchMultiTermQuery:(id)query withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:(id)collector
{
  if (!reader || (v8 = [reader getContext], v21 = 0u, v22 = 0u, v23 = 0u, v24 = 0u, !v8) || (v9 = v8, (v10 = objc_msgSend(v8, "leaves", v21)) == 0))
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

        reader = [*(*(&v21 + 1) + 8 * v15) reader];
        if (!reader || !query)
        {
          goto LABEL_24;
        }

        v18 = [reader termsWithNSString:*(query + 12)];
        if (v18)
        {
          if (!collector)
          {
            goto LABEL_24;
          }

          v19 = [(OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *)self getTermsEnumWithOrgApacheLuceneSearchMultiTermQuery:query withOrgApacheLuceneIndexTerms:v18 withOrgApacheLuceneUtilAttributeSource:*(collector + 3)];
          if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000D5C70();
          }

          if (v19 != OrgApacheLuceneIndexTermsEnum_EMPTY_)
          {
            [collector setReaderContextWithOrgApacheLuceneIndexIndexReaderContext:v9 withOrgApacheLuceneIndexLeafReaderContext:v16];
            [collector setNextEnumWithOrgApacheLuceneIndexTermsEnum:v19];
            if (!v19)
            {
              goto LABEL_24;
            }

            while (1)
            {
              next = [v19 next];
              if (!next)
              {
                break;
              }

              if (([collector collectWithOrgApacheLuceneUtilBytesRef:next] & 1) == 0)
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