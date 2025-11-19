@interface WDNote
- (WDNote)initWithParagraph:(id)a3 footnote:(BOOL)a4;
- (id)description;
- (int)runType;
@end

@implementation WDNote

- (int)runType
{
  if ([(WDText *)self->mText textType]== 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (WDNote)initWithParagraph:(id)a3 footnote:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v17.receiver = self;
  v17.super_class = WDNote;
  v7 = [(WDRun *)&v17 initWithParagraph:v6];
  v8 = v7;
  if (v7)
  {
    v7->mAutomaticNumbering = 1;
    v9 = [v6 document];
    v10 = [WDText alloc];
    if (v4)
    {
      v11 = 1;
    }

    else
    {
      v11 = 5;
    }

    v12 = [(WDText *)v10 initWithDocument:v9 textType:v11];
    mText = v8->mText;
    v8->mText = v12;

    v14 = [[WDCharacterRun alloc] initWithParagraph:v6];
    mReference = v8->mReference;
    v8->mReference = v14;
  }

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDNote;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end