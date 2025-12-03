@interface WDCharacterRun
- (WDCharacterRun)initWithParagraph:(id)paragraph;
- (WDCharacterRun)initWithParagraph:(id)paragraph string:(id)string;
- (id)description;
- (void)clearString;
- (void)copyPropertiesFrom:(id)from;
- (void)removeLastCharacter:(unsigned __int16)character;
- (void)setPropertiesForDocument;
@end

@implementation WDCharacterRun

- (void)setPropertiesForDocument
{
  document = [(WDCharacterProperties *)self->super.mProperties document];
  styleSheet = [document styleSheet];
  defaultCharacterProperties = [styleSheet defaultCharacterProperties];
  v5 = [defaultCharacterProperties copy];
  mProperties = self->super.mProperties;
  self->super.mProperties = v5;
}

- (void)clearString
{
  mString = self->mString;
  self->mString = 0;
}

- (WDCharacterRun)initWithParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v12.receiver = self;
  v12.super_class = WDCharacterRun;
  v5 = [(WDRunWithCharacterProperties *)&v12 initWithParagraph:paragraphCopy];
  if (v5)
  {
    v6 = [WDCharacterProperties alloc];
    document = [paragraphCopy document];
    v8 = [(WDCharacterProperties *)v6 initWithDocument:document];
    [(WDRunWithCharacterProperties *)v5 setProperties:v8];

    v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
    mString = v5->mString;
    v5->mString = v9;

    v5->mBinaryWriterContentFlag = 0;
  }

  return v5;
}

- (WDCharacterRun)initWithParagraph:(id)paragraph string:(id)string
{
  paragraphCopy = paragraph;
  stringCopy = string;
  v8 = [(WDCharacterRun *)self initWithParagraph:paragraphCopy];
  v9 = v8;
  if (v8)
  {
    [(NSMutableString *)v8->mString setString:stringCopy];
  }

  return v9;
}

- (void)removeLastCharacter:(unsigned __int16)character
{
  characterCopy = character;
  v5 = [(NSMutableString *)self->mString length];
  if (v5)
  {
    v6 = v5 - 1;
    if ([(NSMutableString *)self->mString characterAtIndex:v5 - 1]== characterCopy)
    {
      mString = self->mString;
      v8 = [(NSMutableString *)mString substringWithRange:0, v6];
      [(NSMutableString *)mString setString:?];
    }
  }
}

- (void)copyPropertiesFrom:(id)from
{
  fromCopy = from;
  v4 = [fromCopy[2] copy];
  mProperties = self->super.mProperties;
  self->super.mProperties = v4;
  v6 = v4;

  [fromCopy[2] copyPropertiesInto:self->super.mProperties];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDCharacterRun;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end