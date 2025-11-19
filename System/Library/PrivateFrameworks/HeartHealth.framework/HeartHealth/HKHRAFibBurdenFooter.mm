@interface HKHRAFibBurdenFooter
- (HKHRAFibBurdenFooter)initWithText:(id)a3 link:(id)a4 url:(id)a5;
@end

@implementation HKHRAFibBurdenFooter

- (HKHRAFibBurdenFooter)initWithText:(id)a3 link:(id)a4 url:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HKHRAFibBurdenFooter;
  v11 = [(HKHRAFibBurdenFooter *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(HKHRAFibBurdenFooter *)v11 setFooterText:v8];
    [(HKHRAFibBurdenFooter *)v12 setFooterLink:v9];
    [(HKHRAFibBurdenFooter *)v12 setLinkURL:v10];
    v13 = v12;
  }

  return v12;
}

@end