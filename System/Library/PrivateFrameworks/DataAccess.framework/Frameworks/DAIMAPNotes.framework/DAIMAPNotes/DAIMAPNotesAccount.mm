@interface DAIMAPNotesAccount
- (BOOL)isEqualToAccount:(id)account;
@end

@implementation DAIMAPNotesAccount

- (BOOL)isEqualToAccount:(id)account
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  Name = sel_getName(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"DAIMAPNotesAccount.m" lineNumber:19 description:{@"%s: How did you get here for class %@?  It's unpossible!", Name, objc_opt_class()}];

  return 0;
}

@end