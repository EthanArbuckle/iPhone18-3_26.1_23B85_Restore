@interface WDSpecialCharacter
- (WDSpecialCharacter)initWithParagraph:(id)paragraph;
- (id)description;
@end

@implementation WDSpecialCharacter

- (WDSpecialCharacter)initWithParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v11.receiver = self;
  v11.super_class = WDSpecialCharacter;
  v5 = [(WDRunWithCharacterProperties *)&v11 initWithParagraph:paragraphCopy];
  if (v5)
  {
    v6 = [WDCharacterProperties alloc];
    document = [paragraphCopy document];
    v8 = [(WDCharacterProperties *)v6 initWithDocument:document];
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