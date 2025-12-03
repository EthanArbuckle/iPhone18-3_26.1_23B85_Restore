@interface OrgApacheLuceneUtilFstUtil_Result
- (OrgApacheLuceneUtilFstUtil_Result)initWithOrgApacheLuceneUtilIntsRef:(id)ref withId:(id)id;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFstUtil_Result

- (OrgApacheLuceneUtilFstUtil_Result)initWithOrgApacheLuceneUtilIntsRef:(id)ref withId:(id)id
{
  JreStrongAssign(&self->input_, ref);
  JreStrongAssign(&self->output_, id);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstUtil_Result;
  [(OrgApacheLuceneUtilFstUtil_Result *)&v3 dealloc];
}

@end