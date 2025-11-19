@interface JUCustomView
+ (void)initialize;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation JUCustomView

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___JUCustomView;
  objc_msgSendSuper2(&v2, sel_initialize);
}

- (void)traitCollectionDidChange:(id)a3
{
  v3.receiver = self;
  v3.super_class = JUCustomView;
  [(JUCustomView *)&v3 traitCollectionDidChange:a3];
}

@end