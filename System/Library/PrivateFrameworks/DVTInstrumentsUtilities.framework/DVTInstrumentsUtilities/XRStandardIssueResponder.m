@interface XRStandardIssueResponder
+ (void)initialize;
- (void)handleIssue:(id)a3 type:(signed __int16)a4 from:(id)a5;
@end

@implementation XRStandardIssueResponder

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_27EE86768 = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (void)handleIssue:(id)a3 type:(signed __int16)a4 from:(id)a5
{
  v6 = a4;
  v10 = a3;
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  if (v6 >= 4)
  {
    __assert_rtn("[XRStandardIssueResponder handleIssue:type:from:]", "XRStandardIssueResponder.m", 45, "0");
  }

  NSLog(&off_278EFA480[v6]->isa, v10, v8);
  objc_sync_exit(v9);
}

@end