@interface HKHRAFibBurdenFooter
- (HKHRAFibBurdenFooter)initWithText:(id)text link:(id)link url:(id)url;
@end

@implementation HKHRAFibBurdenFooter

- (HKHRAFibBurdenFooter)initWithText:(id)text link:(id)link url:(id)url
{
  textCopy = text;
  linkCopy = link;
  urlCopy = url;
  v15.receiver = self;
  v15.super_class = HKHRAFibBurdenFooter;
  v11 = [(HKHRAFibBurdenFooter *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(HKHRAFibBurdenFooter *)v11 setFooterText:textCopy];
    [(HKHRAFibBurdenFooter *)v12 setFooterLink:linkCopy];
    [(HKHRAFibBurdenFooter *)v12 setLinkURL:urlCopy];
    v13 = v12;
  }

  return v12;
}

@end