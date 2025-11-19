@interface OrgApacheLuceneSearchExplanation
- (id)getDetails;
- (id)getSummary;
- (id)toHtml;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchExplanation

- (id)getSummary
{
  [(OrgApacheLuceneSearchExplanation *)self getValue];
  *&v4 = v3;
  [(OrgApacheLuceneSearchExplanation *)self getDescription];
  return JreStrcat("F$$", v5, v6, v7, v8, v9, v10, v11, v4);
}

- (id)getDetails
{
  details = self->details_;
  if (!details)
  {
    JreThrowNullPointerException();
  }

  if (qword_100554010 != -1)
  {
    sub_10004C90C();
  }

  v3 = [IOSObjectArray arrayWithLength:0 type:qword_100554008];

  return [(JavaUtilList *)details toArrayWithNSObjectArray:v3];
}

- (id)toHtml
{
  v3 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"<ul>\n"];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"<li>"];
  [(OrgApacheLuceneSearchExplanation *)self getValue];
  *&v5 = v4;
  [(OrgApacheLuceneSearchExplanation *)self getDescription];
  [(JavaLangStringBuilder *)v3 appendWithNSString:JreStrcat("F$$", v6, v7, v8, v9, v10, v11, v12, v5)];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"<br />\n"];
  v13 = [(OrgApacheLuceneSearchExplanation *)self getDetails];
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  if (v13[2] >= 1)
  {
    v15 = 0;
    while (1)
    {
      v16 = *&v14[2 * v15 + 6];
      if (!v16)
      {
        break;
      }

      -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [v16 toHtml]);
      if (++v15 >= v14[2])
      {
        goto LABEL_6;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }

LABEL_6:
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"</li>\n"];
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"</ul>\n"];

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchExplanation;
  [(OrgApacheLuceneSearchExplanation *)&v3 dealloc];
}

@end