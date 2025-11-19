@interface WDCharacterRun
- (WDCharacterRun)initWithParagraph:(id)a3;
- (WDCharacterRun)initWithParagraph:(id)a3 string:(id)a4;
- (id)description;
- (void)clearString;
- (void)copyPropertiesFrom:(id)a3;
- (void)removeLastCharacter:(unsigned __int16)a3;
- (void)setPropertiesForDocument;
@end

@implementation WDCharacterRun

- (void)setPropertiesForDocument
{
  v7 = [(WDCharacterProperties *)self->super.mProperties document];
  v3 = [v7 styleSheet];
  v4 = [v3 defaultCharacterProperties];
  v5 = [v4 copy];
  mProperties = self->super.mProperties;
  self->super.mProperties = v5;
}

- (void)clearString
{
  mString = self->mString;
  self->mString = 0;
}

- (WDCharacterRun)initWithParagraph:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WDCharacterRun;
  v5 = [(WDRunWithCharacterProperties *)&v12 initWithParagraph:v4];
  if (v5)
  {
    v6 = [WDCharacterProperties alloc];
    v7 = [v4 document];
    v8 = [(WDCharacterProperties *)v6 initWithDocument:v7];
    [(WDRunWithCharacterProperties *)v5 setProperties:v8];

    v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
    mString = v5->mString;
    v5->mString = v9;

    v5->mBinaryWriterContentFlag = 0;
  }

  return v5;
}

- (WDCharacterRun)initWithParagraph:(id)a3 string:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WDCharacterRun *)self initWithParagraph:v6];
  v9 = v8;
  if (v8)
  {
    [(NSMutableString *)v8->mString setString:v7];
  }

  return v9;
}

- (void)removeLastCharacter:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(NSMutableString *)self->mString length];
  if (v5)
  {
    v6 = v5 - 1;
    if ([(NSMutableString *)self->mString characterAtIndex:v5 - 1]== v3)
    {
      mString = self->mString;
      v8 = [(NSMutableString *)mString substringWithRange:0, v6];
      [(NSMutableString *)mString setString:?];
    }
  }
}

- (void)copyPropertiesFrom:(id)a3
{
  v7 = a3;
  v4 = [v7[2] copy];
  mProperties = self->super.mProperties;
  self->super.mProperties = v4;
  v6 = v4;

  [v7[2] copyPropertiesInto:self->super.mProperties];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDCharacterRun;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end