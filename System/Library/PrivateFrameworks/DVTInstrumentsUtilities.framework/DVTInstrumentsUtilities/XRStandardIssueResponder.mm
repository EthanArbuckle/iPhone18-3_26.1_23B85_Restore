@interface XRStandardIssueResponder
+ (void)initialize;
- (void)handleIssue:(id)issue type:(signed __int16)type from:(id)from;
@end

@implementation XRStandardIssueResponder

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_27EE86768 = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (void)handleIssue:(id)issue type:(signed __int16)type from:(id)from
{
  typeCopy = type;
  issueCopy = issue;
  fromCopy = from;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (typeCopy >= 4)
  {
    __assert_rtn("[XRStandardIssueResponder handleIssue:type:from:]", "XRStandardIssueResponder.m", 45, "0");
  }

  NSLog(&off_278EFA480[typeCopy]->isa, issueCopy, fromCopy);
  objc_sync_exit(selfCopy);
}

@end