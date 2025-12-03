@interface OrgApacheLuceneSearchSpansSpans
- (id)description;
@end

@implementation OrgApacheLuceneSearchSpansSpans

- (id)description
{
  v3 = new_JavaLangStringBuilder_init();
  getClass = [(OrgApacheLuceneSearchSpansSpans *)self getClass];
  if ([getClass isAnonymousClass])
  {
    getName = [getClass getName];
  }

  else
  {
    getName = [getClass getSimpleName];
  }

  [(JavaLangStringBuilder *)v3 appendWithNSString:getName];
  v6 = -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", @"(doc=");
  if (!v6 || ([v6 appendWithInt:{-[OrgApacheLuceneSearchSpansSpans docID](self, "docID")}], (v7 = -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", @",start=")) == 0) || (objc_msgSend(v7, "appendWithInt:", -[OrgApacheLuceneSearchSpansSpans startPosition](self, "startPosition")), (v8 = -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", @",end=")) == 0))
  {
    JreThrowNullPointerException();
  }

  [v8 appendWithInt:{-[OrgApacheLuceneSearchSpansSpans endPosition](self, "endPosition")}];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@""]);

  return [(JavaLangStringBuilder *)v3 description];
}

@end