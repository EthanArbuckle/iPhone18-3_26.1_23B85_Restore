@interface HKHRCardioFitnessFooter
- (HKHRCardioFitnessFooter)initWithText:(id)text link:(id)link url:(id)url;
@end

@implementation HKHRCardioFitnessFooter

- (HKHRCardioFitnessFooter)initWithText:(id)text link:(id)link url:(id)url
{
  textCopy = text;
  linkCopy = link;
  urlCopy = url;
  v15.receiver = self;
  v15.super_class = HKHRCardioFitnessFooter;
  v11 = [(HKHRCardioFitnessFooter *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(HKHRCardioFitnessFooter *)v11 setFooterText:textCopy];
    [(HKHRCardioFitnessFooter *)v12 setFooterLink:linkCopy];
    [(HKHRCardioFitnessFooter *)v12 setLinkURL:urlCopy];
    v13 = v12;
  }

  return v12;
}

@end