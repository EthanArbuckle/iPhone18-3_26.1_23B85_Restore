@interface OrgApacheLuceneSearchIndexSearcher_$2
- (id)newCollector;
- (id)reduceWithJavaUtilCollection:(id)collection;
@end

@implementation OrgApacheLuceneSearchIndexSearcher_$2

- (id)newCollector
{
  v2 = new_OrgApacheLuceneSearchTotalHitCountCollector_init();

  return v2;
}

- (id)reduceWithJavaUtilCollection:(id)collection
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (!collection)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v4 = [collection countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(collection);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (!v9)
        {
          goto LABEL_13;
        }

        v6 += [v9 getTotalHits];
      }

      v5 = [collection countByEnumeratingWithState:&v11 objects:v15 count:16];
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