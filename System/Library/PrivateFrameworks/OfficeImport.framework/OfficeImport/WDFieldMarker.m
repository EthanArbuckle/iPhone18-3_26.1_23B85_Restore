@interface WDFieldMarker
- (WDFieldMarker)initWithParagraph:(id)a3;
- (id)description;
- (void)setHasSeparator:(BOOL)a3;
- (void)setLocked:(BOOL)a3;
- (void)setNested:(BOOL)a3;
- (void)setPrivateResult:(BOOL)a3;
- (void)setResultDirty:(BOOL)a3;
- (void)setResultEdited:(BOOL)a3;
@end

@implementation WDFieldMarker

- (WDFieldMarker)initWithParagraph:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WDFieldMarker;
  v5 = [(WDRunWithCharacterProperties *)&v10 initWithParagraph:v4];
  if (v5)
  {
    v6 = [WDCharacterProperties alloc];
    v7 = [v4 document];
    v8 = [(WDCharacterProperties *)v6 initWithDocument:v7];

    [(WDCharacterProperties *)v8 setResolveMode:0];
    [(WDCharacterProperties *)v8 setSpecialCharacter:1];
    [(WDCharacterProperties *)v8 setResolveMode:2];
    [(WDRunWithCharacterProperties *)v5 setProperties:v8];
  }

  return v5;
}

- (void)setResultDirty:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xFD | v3;
}

- (void)setResultEdited:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xFB | v3;
}

- (void)setLocked:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xF7 | v3;
}

- (void)setPrivateResult:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xEF | v3;
}

- (void)setNested:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xDF | v3;
}

- (void)setHasSeparator:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xBF | v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDFieldMarker;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end