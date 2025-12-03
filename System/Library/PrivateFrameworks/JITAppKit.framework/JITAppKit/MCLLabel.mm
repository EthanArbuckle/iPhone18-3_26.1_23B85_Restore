@interface MCLLabel
- (void)layoutSubviews;
@end

@implementation MCLLabel

- (void)layoutSubviews
{
  selfCopy = self;
  v12 = a2;
  v11.receiver = self;
  v11.super_class = MCLLabel;
  objc_msgSendSuper2(&v11, 0x1FAD70BF8);
  [(MCLLabel *)selfCopy frame];
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  [(MCLLabel *)selfCopy setPreferredMaxLayoutWidth:v4];
  v6.receiver = selfCopy;
  v6.super_class = MCLLabel;
  objc_msgSendSuper2(&v6, 0x1FAD70BF8);
}

@end