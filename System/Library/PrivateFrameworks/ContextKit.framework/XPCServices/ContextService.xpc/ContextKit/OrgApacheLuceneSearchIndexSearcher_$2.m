@interface OrgApacheLuceneSearchIndexSearcher_$2
- (id)newCollector;
- (id)reduceWithJavaUtilCollection:(id)a3;
@end

@implementation OrgApacheLuceneSearchIndexSearcher_$2

- (id)newCollector
{
  v2 = new_OrgApacheLuceneSearchTotalHitCountCollector_init();

  return v2;
}

- (id)reduceWithJavaUtilCollection:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (!a3)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v4 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (!v9)
        {
          goto LABEL_13;
        }

        v6 += [v9 getTotalHits];
      }

      v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return JavaLangInteger_valueOfWithInt_(v6);
}

@end