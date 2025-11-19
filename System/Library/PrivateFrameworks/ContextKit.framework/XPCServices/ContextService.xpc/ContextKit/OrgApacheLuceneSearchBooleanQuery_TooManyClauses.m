@interface OrgApacheLuceneSearchBooleanQuery_TooManyClauses
- (OrgApacheLuceneSearchBooleanQuery_TooManyClauses)init;
@end

@implementation OrgApacheLuceneSearchBooleanQuery_TooManyClauses

- (OrgApacheLuceneSearchBooleanQuery_TooManyClauses)init
{
  v9 = JreStrcat("$I", a2, v2, v3, v4, v5, v6, v7, @"maxClauseCount is set to ");
  JavaLangRuntimeException_initWithNSString_(self, v9);
  return self;
}

@end