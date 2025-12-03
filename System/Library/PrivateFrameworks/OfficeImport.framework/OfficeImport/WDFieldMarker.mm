@interface WDFieldMarker
- (WDFieldMarker)initWithParagraph:(id)paragraph;
- (id)description;
- (void)setHasSeparator:(BOOL)separator;
- (void)setLocked:(BOOL)locked;
- (void)setNested:(BOOL)nested;
- (void)setPrivateResult:(BOOL)result;
- (void)setResultDirty:(BOOL)dirty;
- (void)setResultEdited:(BOOL)edited;
@end

@implementation WDFieldMarker

- (WDFieldMarker)initWithParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v10.receiver = self;
  v10.super_class = WDFieldMarker;
  v5 = [(WDRunWithCharacterProperties *)&v10 initWithParagraph:paragraphCopy];
  if (v5)
  {
    v6 = [WDCharacterProperties alloc];
    document = [paragraphCopy document];
    v8 = [(WDCharacterProperties *)v6 initWithDocument:document];

    [(WDCharacterProperties *)v8 setResolveMode:0];
    [(WDCharacterProperties *)v8 setSpecialCharacter:1];
    [(WDCharacterProperties *)v8 setResolveMode:2];
    [(WDRunWithCharacterProperties *)v5 setProperties:v8];
  }

  return v5;
}

- (void)setResultDirty:(BOOL)dirty
{
  if (dirty)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xFD | v3;
}

- (void)setResultEdited:(BOOL)edited
{
  if (edited)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xFB | v3;
}

- (void)setLocked:(BOOL)locked
{
  if (locked)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xF7 | v3;
}

- (void)setPrivateResult:(BOOL)result
{
  if (result)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xEF | v3;
}

- (void)setNested:(BOOL)nested
{
  if (nested)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 48) = *(self + 48) & 0xDF | v3;
}

- (void)setHasSeparator:(BOOL)separator
{
  if (separator)
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