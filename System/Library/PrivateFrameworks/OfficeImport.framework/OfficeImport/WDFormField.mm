@interface WDFormField
- (WDFormField)initWithParagraph:(id)a3;
- (id)description;
@end

@implementation WDFormField

- (WDFormField)initWithParagraph:(id)a3
{
  v4.receiver = self;
  v4.super_class = WDFormField;
  return [(WDRun *)&v4 initWithParagraph:a3];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDFormField;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end