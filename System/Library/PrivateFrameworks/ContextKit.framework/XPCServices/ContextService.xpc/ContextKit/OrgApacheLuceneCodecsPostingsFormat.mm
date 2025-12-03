@interface OrgApacheLuceneCodecsPostingsFormat
+ (void)initialize;
- (OrgApacheLuceneCodecsPostingsFormat)initWithNSString:(id)string;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsPostingsFormat

- (OrgApacheLuceneCodecsPostingsFormat)initWithNSString:(id)string
{
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(string);
  JreStrongAssign(&self->name_, string);
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
  if (objc_opt_class() == self)
  {
    v2 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneCodecsPostingsFormat_class_()];
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsPostingsFormat_EMPTY_, v2);
    atomic_store(1u, OrgApacheLuceneCodecsPostingsFormat__initialized);
  }
}

@end