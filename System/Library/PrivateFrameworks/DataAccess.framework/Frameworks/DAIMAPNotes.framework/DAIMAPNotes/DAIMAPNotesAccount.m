@interface DAIMAPNotesAccount
- (BOOL)isEqualToAccount:(id)a3;
@end

@implementation DAIMAPNotesAccount

- (BOOL)isEqualToAccount:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  Name = sel_getName(a2);
  [v5 handleFailureInMethod:a2 object:self file:@"DAIMAPNotesAccount.m" lineNumber:19 description:{@"%s: How did you get here for class %@?  It's unpossible!", Name, objc_opt_class()}];

  return 0;
}

@end