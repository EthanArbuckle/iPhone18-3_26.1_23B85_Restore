@interface WDSymbol
- (WDSymbol)initWithParagraph:(id)paragraph;
- (id)description;
@end

@implementation WDSymbol

- (WDSymbol)initWithParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v14.receiver = self;
  v14.super_class = WDSymbol;
  v5 = [(WDRunWithCharacterProperties *)&v14 initWithParagraph:paragraphCopy];
  if (v5)
  {
    v6 = [WDCharacterProperties alloc];
    document = [paragraphCopy document];
    v8 = [(WDCharacterProperties *)v6 initWithDocument:document];
    [(WDRunWithCharacterProperties *)v5 setProperties:v8];

    document2 = [paragraphCopy document];
    fontTable = [document2 fontTable];

    v11 = [fontTable fontWithName:@"Symbol"];
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