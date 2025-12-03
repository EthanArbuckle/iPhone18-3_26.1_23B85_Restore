@interface JUCustomView
+ (void)initialize;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation JUCustomView

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___JUCustomView;
  objc_msgSendSuper2(&v2, sel_initialize);
}

- (void)traitCollectionDidChange:(id)change
{
  v3.receiver = self;
  v3.super_class = JUCustomView;
  [(JUCustomView *)&v3 traitCollectionDidChange:change];
}

@end