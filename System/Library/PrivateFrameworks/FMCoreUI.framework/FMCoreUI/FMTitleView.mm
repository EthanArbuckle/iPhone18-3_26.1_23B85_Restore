@interface FMTitleView
- (void)layoutSubviews;
@end

@implementation FMTitleView

- (void)layoutSubviews
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"FMTitleView.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"[navbar isKindOfClass:[UINavigationBar class]]"}];
}

@end