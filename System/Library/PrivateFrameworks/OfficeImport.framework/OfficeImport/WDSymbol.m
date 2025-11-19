@interface WDSymbol
- (WDSymbol)initWithParagraph:(id)a3;
- (id)description;
@end

@implementation WDSymbol

- (WDSymbol)initWithParagraph:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WDSymbol;
  v5 = [(WDRunWithCharacterProperties *)&v14 initWithParagraph:v4];
  if (v5)
  {
    v6 = [WDCharacterProperties alloc];
    v7 = [v4 document];
    v8 = [(WDCharacterProperties *)v6 initWithDocument:v7];
    [(WDRunWithCharacterProperties *)v5 setProperties:v8];

    v9 = [v4 document];
    v10 = [v9 fontTable];

    v11 = [v10 fontWithName:@"Symbol"];
    mFont = v5->mFont;
    v5->mFont = v11;
  }

  return v5;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDSymbol;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end