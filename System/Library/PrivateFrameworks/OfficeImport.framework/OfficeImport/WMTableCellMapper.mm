@interface WMTableCellMapper
- (WMTableCellMapper)initWithWDTableCell:(id)a3 atIndex:(unsigned int)a4 parent:(id)a5;
- (id)tableMapper;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapCellStyleAt:(id)a3;
@end

@implementation WMTableCellMapper

- (id)tableMapper
{
  v2 = [(CMMapper *)self parent];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 parent];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (WMTableCellMapper)initWithWDTableCell:(id)a3 atIndex:(unsigned int)a4 parent:(id)a5
{
  v6 = *&a4;
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = WMTableCellMapper;
  v11 = [(CMMapper *)&v19 initWithParent:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->mWdTableCell, a3);
    v13 = [v9 properties];
    v12->mWidth = [v13 width];

    v12->mHeight = 0.0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 height];
      v12->mHeight = v14;
    }

    v15 = [(WMTableCellMapper *)v12 tableMapper];
    v16 = [v15 columnInfo];
    mWidth = v12->mWidth;
    *&mWidth = mWidth;
    v12->mColSpan = [v16 columnSpan:v6 at:mWidth];
  }

  return v12;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [OIXMLElement elementWithType:19];
  [v6 addChild:v8];
  v9 = v8;

  if (self->mColSpan >= 2)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", self->mColSpan];
    v11 = [OIXMLAttribute attributeWithName:@"colspan" stringValue:v10];
    [v9 addAttribute:v11];
  }

  [(WMTableCellMapper *)self mapCellStyleAt:v9];
  v19 = v9;
  if (self->mWidth > 0.0)
  {
    v19 = [OIXMLElement elementWithType:3];
    [v9 addChild:?];
    v12 = objc_alloc_init(WMStyle);
    v13 = v12;
    mWidth = self->mWidth;
    v15 = self->mLeftPadding + self->mRightPadding;
    if (mWidth > v15)
    {
      mWidth = mWidth - v15;
    }

    [(CMStyle *)v12 appendPropertyForName:0x286F080F0 length:2 unit:mWidth];
    v16 = [(WMStyle *)v13 cssStyleString];
    [(CMMapper *)self addAttribute:0x286EEA590 toNode:v19 value:v16];
  }

  v17 = [(WDTableCell *)self->mWdTableCell text];
  v18 = [[WMSectionContentMapper alloc] initWithWDText:v17 parent:self];
  [(WMSectionContentMapper *)v18 mapAt:v19 withState:v7];
}

- (void)mapCellStyleAt:(id)a3
{
  v14 = a3;
  v4 = objc_alloc_init(WMTableCellStyle);
  v5 = [(WDTableCell *)self->mWdTableCell row];
  v6 = [v5 table];
  v7 = [v6 properties];
  if ([v7 isBaseStyleOverridden])
  {
    v8 = [v7 baseStyle];
    [(WMTableCellStyle *)v4 addTableCellStyleProperties:v8];
  }

  v9 = [(WDTableCell *)self->mWdTableCell properties];
  [(WMTableCellStyle *)v4 addTableCellProperties:v9];

  [(WMTableCellStyle *)v4 leftPadding];
  self->mLeftPadding = v10;
  [(WMTableCellStyle *)v4 rightPadding];
  self->mRightPadding = v11;
  v12 = [(WMTableCellMapper *)self tableMapper];
  v13 = [v12 insideBorders];
  if (v13)
  {
    [(CMStyle *)v4 addProperty:v13 forKey:0x286F08330];
  }

  if (self->mHeight > 0.0)
  {
    [(CMStyle *)v4 appendPropertyForName:0x286EF6790 length:2 unit:?];
  }

  [(CMMapper *)self addStyleUsingGlobalCacheTo:v14 style:v4];
}

@end