@interface OrgApacheLuceneUtilFstUtil_FSTPath
- (id)description;
- (id)newPathWithId:(id)a3 withOrgApacheLuceneUtilIntsRefBuilder:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFstUtil_FSTPath

- (id)newPathWithId:(id)a3 withOrgApacheLuceneUtilIntsRefBuilder:(id)a4
{
  arc = self->arc_;
  boost = self->boost_;
  context = self->context_;
  v9 = [OrgApacheLuceneUtilFstUtil_FSTPath alloc];
  OrgApacheLuceneUtilFstUtil_FSTPath_initWithId_withOrgApacheLuceneUtilFstFST_Arc_withOrgApacheLuceneUtilIntsRefBuilder_withFloat_withJavaLangCharSequence_(v9, a3, arc, a4, context, boost);

  return v9;
}

- (id)description
{
  input = self->input_;
  if (!input)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneUtilIntsRefBuilder *)input get];
  boost = self->boost_;
  context = self->context_;
  cost = self->cost_;
  return JreStrcat("$@$@$@$F", v4, v5, v6, v7, v8, v9, v10, @"input=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstUtil_FSTPath;
  [(OrgApacheLuceneUtilFstUtil_FSTPath *)&v3 dealloc];
}

@end