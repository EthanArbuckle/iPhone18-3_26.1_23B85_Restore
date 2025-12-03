@interface PSSpecifier(CoreFollowUpUI)
- (void)fl_startSpinner;
- (void)fl_stopSpinner;
@end

@implementation PSSpecifier(CoreFollowUpUI)

- (void)fl_startSpinner
{
  v2 = [self propertyForKey:*MEMORY[0x277D40148]];
  v1 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v1 startAnimating];
  [v2 setAccessoryView:v1];
}

- (void)fl_stopSpinner
{
  v1 = [self propertyForKey:*MEMORY[0x277D40148]];
  [v1 setAccessoryView:0];
}

@end