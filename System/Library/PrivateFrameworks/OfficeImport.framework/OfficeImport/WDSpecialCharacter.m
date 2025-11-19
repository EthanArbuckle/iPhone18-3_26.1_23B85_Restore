@interface WDSpecialCharacter
- (WDSpecialCharacter)initWithParagraph:(id)a3;
- (id)description;
@end

@implementation WDSpecialCharacter

- (WDSpecialCharacter)initWithParagraph:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WDSpecialCharacter;
  v5 = [(WDRunWithCharacterProperties *)&v11 initWithParagraph:v4];
  if (v5)
  {
    v6 = [WDCharacterProperties alloc];
    v7 = [v4 document];
    v8 = [(WDCharacterProperties *)v6 initWithDocument:v7];
    mProperties = v5->super.mProperties;
    v5->super.mProperties = v8;

    v5->mType = 0xFFFF;
  }

  return v5;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDSpecialCharacter;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end