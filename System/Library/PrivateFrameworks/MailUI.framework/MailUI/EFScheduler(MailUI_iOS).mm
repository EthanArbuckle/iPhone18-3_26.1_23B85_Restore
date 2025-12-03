@interface EFScheduler(MailUI_iOS)
+ (void)mf_afterUIDelay:()MailUI_iOS performBlock:;
@end

@implementation EFScheduler(MailUI_iOS)

+ (void)mf_afterUIDelay:()MailUI_iOS performBlock:
{
  v9 = a4;
  UIAnimationDragCoefficient();
  v6 = v5 * self;
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  v8 = [mainThreadScheduler afterDelay:v9 performBlock:v6];
}

@end