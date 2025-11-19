@interface FMTitleView
- (void)layoutSubviews;
@end

@implementation FMTitleView

- (void)layoutSubviews
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FMTitleView.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"[navbar isKindOfClass:[UINavigationBar class]]"}];
}

@end