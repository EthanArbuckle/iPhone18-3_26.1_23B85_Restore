@interface WDStyle
- (BOOL)isAnythingOverridden;
- (WDStyle)baseStyle;
- (WDStyle)initWithStyleSheet:(id)a3 id:(id)a4 type:(int)a5;
- (WDStyle)nextStyle;
- (WDStyleSheet)styleSheet;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setBaseStyle:(id)a3;
- (void)setName:(id)a3;
@end

@implementation WDStyle

- (WDStyleSheet)styleSheet
{
  WeakRetained = objc_loadWeakRetained(&self->mStyleSheet);

  return WeakRetained;
}

- (WDStyle)baseStyle
{
  WeakRetained = objc_loadWeakRetained(&self->mBaseStyle);

  return WeakRetained;
}

- (WDStyle)initWithStyleSheet:(id)a3 id:(id)a4 type:(int)a5
{
  v8 = a3;
  v9 = a4;
  v29.receiver = self;
  v29.super_class = WDStyle;
  v10 = [(WDStyle *)&v29 init];
  if (v10)
  {
    v11 = [WDParagraphProperties alloc];
    v12 = [v8 document];
    v13 = [(WDParagraphProperties *)v11 initWithDocument:v12];
    mParagraphProperties = v10->mParagraphProperties;
    v10->mParagraphProperties = v13;

    v15 = [WDCharacterProperties alloc];
    v16 = [v8 document];
    v17 = [(WDCharacterProperties *)v15 initWithDocument:v16];
    mCharacterProperties = v10->mCharacterProperties;
    v10->mCharacterProperties = v17;

    v10->mStyleType = a5;
    if (a5 == 3)
    {
      v19 = [v8 document];
      v20 = [[WDTableRowProperties alloc] initWithDocument:v19];
      mTableRowProperties = v10->mTableRowProperties;
      v10->mTableRowProperties = v20;

      v22 = objc_alloc_init(WDTableCellProperties);
      mTableCellProperties = v10->mTableCellProperties;
      v10->mTableCellProperties = v22;

      v24 = 0;
      mTableStyleOverrides = v10->mTableStyleOverrides;
      do
      {
        v26 = [[WDTableStyleOverride alloc] initWithDocument:v19];
        v27 = mTableStyleOverrides[v24];
        mTableStyleOverrides[v24] = v26;

        [(WDTableStyleOverride *)mTableStyleOverrides[v24] setPart:v24];
        ++v24;
      }

      while (v24 != 12);
    }

    objc_storeStrong(&v10->mId, a4);
    objc_storeWeak(&v10->mStyleSheet, v8);
  }

  return v10;
}

- (BOOL)isAnythingOverridden
{
  if (self->mHidden || [(WDParagraphProperties *)self->mParagraphProperties isAnythingOverridden])
  {
    return 1;
  }

  mCharacterProperties = self->mCharacterProperties;

  return [(WDCharacterProperties *)mCharacterProperties isAnythingOverridden];
}

- (void)setName:(id)a3
{
  objc_storeStrong(&self->mName, a3);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mStyleSheet);
  [WeakRetained setName:v5 forId:self->mId];
}

- (void)setBaseStyle:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = v4;
    while (v5 != self)
    {
      v6 = [(WDStyle *)v5 baseStyle];

      v5 = v6;
      if (!v6)
      {
        v7 = v8;
        goto LABEL_8;
      }
    }

    v7 = 0;
LABEL_8:
  }

  else
  {
    v7 = 0;
  }

  objc_storeWeak(&self->mBaseStyle, v7);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WDStyle allocWithZone:?]];
  if (v4)
  {
    v5 = [(WDParagraphProperties *)self->mParagraphProperties copy];
    mParagraphProperties = v4->mParagraphProperties;
    v4->mParagraphProperties = v5;

    v7 = [(WDCharacterProperties *)self->mCharacterProperties copy];
    mCharacterProperties = v4->mCharacterProperties;
    v4->mCharacterProperties = v7;

    v9 = [(WDTableRowProperties *)self->mTableRowProperties copy];
    mTableRowProperties = v4->mTableRowProperties;
    v4->mTableRowProperties = v9;

    v11 = [(WDTableCellProperties *)self->mTableCellProperties copy];
    mTableCellProperties = v4->mTableCellProperties;
    v4->mTableCellProperties = v11;

    WeakRetained = objc_loadWeakRetained(&self->mStyleSheet);
    objc_storeWeak(&v4->mStyleSheet, WeakRetained);

    for (i = 40; i != 136; i += 8)
    {
      v15 = [*(&self->super.isa + i) copy];
      v16 = *(&v4->super.isa + i);
      *(&v4->super.isa + i) = v15;
    }

    v17 = [(NSString *)self->mName copy];
    mName = v4->mName;
    v4->mName = v17;

    v4->mStyleType = self->mStyleType;
    v19 = objc_loadWeakRetained(&self->mBaseStyle);
    [(WDStyle *)v4 setBaseStyle:v19];

    v20 = objc_loadWeakRetained(&self->mNextStyle);
    [(WDStyle *)v4 setNextStyle:v20];
  }

  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDStyle;
  v2 = [(WDStyle *)&v4 description];

  return v2;
}

- (WDStyle)nextStyle
{
  WeakRetained = objc_loadWeakRetained(&self->mNextStyle);

  return WeakRetained;
}

@end