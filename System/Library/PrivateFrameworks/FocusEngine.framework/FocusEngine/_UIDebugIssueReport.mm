@interface _UIDebugIssueReport
- (NSArray)issues;
- (_UIDebugIssueReport)init;
- (void)addIssue:(id)issue;
@end

@implementation _UIDebugIssueReport

- (_UIDebugIssueReport)init
{
  v6.receiver = self;
  v6.super_class = _UIDebugIssueReport;
  v2 = [(_UIDebugIssueReport *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableIssues = v2->_mutableIssues;
    v2->_mutableIssues = v3;
  }

  return v2;
}

- (NSArray)issues
{
  v2 = [(NSMutableArray *)self->_mutableIssues copy];

  return v2;
}

- (void)addIssue:(id)issue
{
  issueCopy = issue;
  v7 = issueCopy;
  if (!issueCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugIssueReport.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"issue"}];

    issueCopy = 0;
  }

  [(NSMutableArray *)self->_mutableIssues addObject:issueCopy];
}

@end