@interface WDTableStyleOverride
- (WDStyle)style;
- (WDTableStyleOverride)initWithDocument:(id)document;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCharacterProperties;
- (id)mutableParagraphProperties;
- (id)mutableTableCellStyleProperties;
- (id)mutableTableRowProperties;
- (void)setCharacterPropertiesOverridden:(BOOL)overridden;
- (void)setTableCellStylePropertiesOverridden:(BOOL)overridden;
- (void)setTableRowPropertiesOverridden:(BOOL)overridden;
@end

@implementation WDTableStyleOverride

- (WDStyle)style
{
  WeakRetained = objc_loadWeakRetained(&self->mStyle);

  return WeakRetained;
}

- (id)mutableParagraphProperties
{
  mParagraphProperties = self->mParagraphProperties;
  if (!mParagraphProperties)
  {
    v4 = [WDParagraphProperties alloc];
    WeakRetained = objc_loadWeakRetained(&self->mDocument);
    v6 = [(WDParagraphProperties *)v4 initWithDocument:WeakRetained];
    v7 = self->mParagraphProperties;
    self->mParagraphProperties = v6;

    *(self + 56) |= 1u;
    mParagraphProperties = self->mParagraphProperties;
  }

  return mParagraphProperties;
}

- (id)mutableCharacterProperties
{
  mCharacterProperties = self->mCharacterProperties;
  if (!mCharacterProperties)
  {
    v4 = [WDCharacterProperties alloc];
    WeakRetained = objc_loadWeakRetained(&self->mDocument);
    v6 = [(WDCharacterProperties *)v4 initWithDocument:WeakRetained];
    v7 = self->mCharacterProperties;
    self->mCharacterProperties = v6;

    *(self + 56) |= 2u;
    mCharacterProperties = self->mCharacterProperties;
  }

  return mCharacterProperties;
}

- (id)mutableTableCellStyleProperties
{
  mTableCellStyleProperties = self->mTableCellStyleProperties;
  if (!mTableCellStyleProperties)
  {
    v4 = objc_alloc_init(WDTableCellProperties);
    v5 = self->mTableCellStyleProperties;
    self->mTableCellStyleProperties = v4;

    *(self + 56) |= 8u;
    mTableCellStyleProperties = self->mTableCellStyleProperties;
  }

  return mTableCellStyleProperties;
}

- (id)mutableTableRowProperties
{
  mTableRowProperties = self->mTableRowProperties;
  if (!mTableRowProperties)
  {
    v4 = [WDTableRowProperties alloc];
    WeakRetained = objc_loadWeakRetained(&self->mDocument);
    v6 = [(WDTableRowProperties *)v4 initWithDocument:WeakRetained];
    v7 = self->mTableRowProperties;
    self->mTableRowProperties = v6;

    *(self + 56) |= 4u;
    mTableRowProperties = self->mTableRowProperties;
  }

  return mTableRowProperties;
}

- (WDTableStyleOverride)initWithDocument:(id)document
{
  documentCopy = document;
  v8.receiver = self;
  v8.super_class = WDTableStyleOverride;
  v5 = [(WDTableStyleOverride *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mDocument, documentCopy);
  }

  return v6;
}

- (void)setCharacterPropertiesOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 56) = *(self + 56) & 0xFD | v3;
}

- (void)setTableRowPropertiesOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 56) = *(self + 56) & 0xFB | v3;
}

- (void)setTableCellStylePropertiesOverridden:(BOOL)overridden
{
  if (overridden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 56) = *(self + 56) & 0xF7 | v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WDTableStyleOverride allocWithZone:?]];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->mStyle);
    objc_storeWeak(&v4->mStyle, WeakRetained);

    v4->mPart = self->mPart;
    v6 = [(WDParagraphProperties *)self->mParagraphProperties copy];
    mParagraphProperties = v4->mParagraphProperties;
    v4->mParagraphProperties = v6;

    *(v4 + 56) = *(v4 + 56) & 0xFE | *(self + 56) & 1;
    v8 = [(WDCharacterProperties *)self->mCharacterProperties copy];
    mCharacterProperties = v4->mCharacterProperties;
    v4->mCharacterProperties = v8;

    *(v4 + 56) = *(v4 + 56) & 0xFD | *(self + 56) & 2;
    v10 = [(WDTableRowProperties *)self->mTableRowProperties copy];
    mTableRowProperties = v4->mTableRowProperties;
    v4->mTableRowProperties = v10;

    *(v4 + 56) = *(v4 + 56) & 0xFB | *(self + 56) & 4;
    v12 = [(WDTableCellProperties *)self->mTableCellStyleProperties copy];
    mTableCellStyleProperties = v4->mTableCellStyleProperties;
    v4->mTableCellStyleProperties = v12;

    *(v4 + 56) = *(v4 + 56) & 0xF7 | *(self + 56) & 8;
    v14 = v4;
  }

  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDTableStyleOverride;
  v2 = [(WDTableStyleOverride *)&v4 description];

  return v2;
}

@end