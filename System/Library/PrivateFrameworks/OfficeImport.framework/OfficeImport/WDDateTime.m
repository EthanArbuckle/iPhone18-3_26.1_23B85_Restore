@interface WDDateTime
- (WDDateTime)initWithParagraph:(id)a3 date:(id)a4;
- (id)description;
@end

@implementation WDDateTime

- (WDDateTime)initWithParagraph:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WDDateTime;
  v8 = [(WDRunWithCharacterProperties *)&v13 initWithParagraph:v6];
  if (v8)
  {
    v9 = [WDCharacterProperties alloc];
    v10 = [v6 document];
    v11 = [(WDCharacterProperties *)v9 initWithDocument:v10];
    [(WDRunWithCharacterProperties *)v8 setProperties:v11];

    objc_storeStrong(&v8->mDate, a4);
  }

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDDateTime;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end