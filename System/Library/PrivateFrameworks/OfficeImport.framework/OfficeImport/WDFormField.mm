@interface WDFormField
- (WDFormField)initWithParagraph:(id)paragraph;
- (id)description;
@end

@implementation WDFormField

- (WDFormField)initWithParagraph:(id)paragraph
{
  v4.receiver = self;
  v4.super_class = WDFormField;
  return [(WDRun *)&v4 initWithParagraph:paragraph];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDFormField;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end