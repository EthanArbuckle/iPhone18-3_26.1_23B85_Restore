@interface OrgApacheLuceneUtilFstUtil_Result
- (OrgApacheLuceneUtilFstUtil_Result)initWithOrgApacheLuceneUtilIntsRef:(id)a3 withId:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFstUtil_Result

- (OrgApacheLuceneUtilFstUtil_Result)initWithOrgApacheLuceneUtilIntsRef:(id)a3 withId:(id)a4
{
  JreStrongAssign(&self->input_, a3);
  JreStrongAssign(&self->output_, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstUtil_Result;
  [(OrgApacheLuceneUtilFstUtil_Result *)&v3 dealloc];
}

@end