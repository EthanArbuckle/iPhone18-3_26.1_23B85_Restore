@interface WDStyle
- (BOOL)isAnythingOverridden;
- (WDStyle)baseStyle;
- (WDStyle)initWithStyleSheet:(id)sheet id:(id)id type:(int)type;
- (WDStyle)nextStyle;
- (WDStyleSheet)styleSheet;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setBaseStyle:(id)style;
- (void)setName:(id)name;
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

- (WDStyle)initWithStyleSheet:(id)sheet id:(id)id type:(int)type
{
  sheetCopy = sheet;
  idCopy = id;
  v29.receiver = self;
  v29.super_class = WDStyle;
  v10 = [(WDStyle *)&v29 init];
  if (v10)
  {
    v11 = [WDParagraphProperties alloc];
    document = [sheetCopy document];
    v13 = [(WDParagraphProperties *)v11 initWithDocument:document];
    mParagraphProperties = v10->mParagraphProperties;
    v10->mParagraphProperties = v13;

    v15 = [WDCharacterProperties alloc];
    document2 = [sheetCopy document];
    v17 = [(WDCharacterProperties *)v15 initWithDocument:document2];
    mCharacterProperties = v10->mCharacterProperties;
    v10->mCharacterProperties = v17;

    v10->mStyleType = type;
    if (type == 3)
    {
      document3 = [sheetCopy document];
      v20 = [[WDTableRowProperties alloc] initWithDocument:document3];
      mTableRowProperties = v10->mTableRowProperties;
      v10->mTableRowProperties = v20;

      v22 = objc_alloc_init(WDTableCellProperties);
      mTableCellProperties = v10->mTableCellProperties;
      v10->mTableCellProperties = v22;

      v24 = 0;
      mTableStyleOverrides = v10->mTableStyleOverrides;
      do
      {
        v26 = [[WDTableStyleOverride alloc] initWithDocument:document3];
        v27 = mTableStyleOverrides[v24];
        mTableStyleOverrides[v24] = v26;

        [(WDTableStyleOverride *)mTableStyleOverrides[v24] setPart:v24];
        ++v24;
      }

      while (v24 != 12);
    }

    objc_storeStrong(&v10->mId, id);
    objc_storeWeak(&v10->mStyleSheet, sheetCopy);
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

- (void)setName:(id)name
{
  objc_storeStrong(&self->mName, name);
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->mStyleSheet);
  [WeakRetained setName:nameCopy forId:self->mId];
}

- (void)setBaseStyle:(id)style
{
  styleCopy = style;
  v8 = styleCopy;
  if (styleCopy)
  {
    v5 = styleCopy;
    while (v5 != self)
    {
      baseStyle = [(WDStyle *)v5 baseStyle];

      v5 = baseStyle;
      if (!baseStyle)
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

- (id)copyWithZone:(_NSZone *)zone
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