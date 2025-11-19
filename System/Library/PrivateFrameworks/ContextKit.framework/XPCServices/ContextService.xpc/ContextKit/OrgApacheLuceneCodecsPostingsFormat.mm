@interface OrgApacheLuceneCodecsPostingsFormat
+ (void)initialize;
- (OrgApacheLuceneCodecsPostingsFormat)initWithNSString:(id)a3;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsPostingsFormat

- (OrgApacheLuceneCodecsPostingsFormat)initWithNSString:(id)a3
{
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(a3);
  JreStrongAssign(&self->name_, a3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsPostingsFormat;
  [(OrgApacheLuceneCodecsPostingsFormat *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneCodecsPostingsFormat_class_()];
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsPostingsFormat_EMPTY_, v2);
    atomic_store(1u, OrgApacheLuceneCodecsPostingsFormat__initialized);
  }
}

@end