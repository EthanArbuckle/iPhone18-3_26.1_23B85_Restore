@interface OrgApacheLuceneIndexSegmentWriteState
- (BOOL)assertSegmentSuffixWithNSString:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexSegmentWriteState

- (BOOL)assertSegmentSuffixWithNSString:(id)a3
{
  if (!a3)
  {
    goto LABEL_9;
  }

  if ([a3 isEmpty])
  {
    return 1;
  }

  v4 = [a3 split:@"_"];
  if (!v4)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v11 = v4[2];
  if (v11 == 2)
  {
    return 1;
  }

  if (v11 == 1)
  {
    JavaLangLong_parseLongWithNSString_withInt_(a3, 36, v5, v6, v7, v8, v9, v10);
    return 1;
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexSegmentWriteState;
  [(OrgApacheLuceneIndexSegmentWriteState *)&v3 dealloc];
}

@end