@interface SUUIContentInsetScrollView
- (void)setScrollIndicatorInsets:(UIEdgeInsets)insets;
@end

@implementation SUUIContentInsetScrollView

- (void)setScrollIndicatorInsets:(UIEdgeInsets)insets
{
  v5.receiver = self;
  v5.super_class = SUUIContentInsetScrollView;
  [(SUUIContentInsetScrollView *)&v5 setScrollIndicatorInsets:insets.top, insets.left, insets.bottom, insets.right];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SUUIScrollViewContentInsetDidChangeNotification" object:self];
}

@end