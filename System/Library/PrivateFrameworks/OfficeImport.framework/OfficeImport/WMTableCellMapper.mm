@interface WMTableCellMapper
- (WMTableCellMapper)initWithWDTableCell:(id)cell atIndex:(unsigned int)index parent:(id)parent;
- (id)tableMapper;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapCellStyleAt:(id)at;
@end

@implementation WMTableCellMapper

- (id)tableMapper
{
  parent = [(CMMapper *)self parent];
  if (parent)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Parent = [parent parent];

      parent = v2Parent;
    }

    while (v2Parent);
  }

  return parent;
}

- (WMTableCellMapper)initWithWDTableCell:(id)cell atIndex:(unsigned int)index parent:(id)parent
{
  v6 = *&index;
  cellCopy = cell;
  parentCopy = parent;
  v19.receiver = self;
  v19.super_class = WMTableCellMapper;
  v11 = [(CMMapper *)&v19 initWithParent:parentCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->mWdTableCell, cell);
    properties = [cellCopy properties];
    v12->mWidth = [properties width];

    v12->mHeight = 0.0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [parentCopy height];
      v12->mHeight = v14;
    }

    tableMapper = [(WMTableCellMapper *)v12 tableMapper];
    columnInfo = [tableMapper columnInfo];
    mWidth = v12->mWidth;
    *&mWidth = mWidth;
    v12->mColSpan = [columnInfo columnSpan:v6 at:mWidth];
  }

  return v12;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v8 = [OIXMLElement elementWithType:19];
  [atCopy addChild:v8];
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
    cssStyleString = [(WMStyle *)v13 cssStyleString];
    [(CMMapper *)self addAttribute:0x286EEA590 toNode:v19 value:cssStyleString];
  }

  text = [(WDTableCell *)self->mWdTableCell text];
  v18 = [[WMSectionContentMapper alloc] initWithWDText:text parent:self];
  [(WMSectionContentMapper *)v18 mapAt:v19 withState:stateCopy];
}

- (void)mapCellStyleAt:(id)at
{
  atCopy = at;
  v4 = objc_alloc_init(WMTableCellStyle);
  v5 = [(WDTableCell *)self->mWdTableCell row];
  table = [v5 table];
  properties = [table properties];
  if ([properties isBaseStyleOverridden])
  {
    baseStyle = [properties baseStyle];
    [(WMTableCellStyle *)v4 addTableCellStyleProperties:baseStyle];
  }

  properties2 = [(WDTableCell *)self->mWdTableCell properties];
  [(WMTableCellStyle *)v4 addTableCellProperties:properties2];

  [(WMTableCellStyle *)v4 leftPadding];
  self->mLeftPadding = v10;
  [(WMTableCellStyle *)v4 rightPadding];
  self->mRightPadding = v11;
  tableMapper = [(WMTableCellMapper *)self tableMapper];
  insideBorders = [tableMapper insideBorders];
  if (insideBorders)
  {
    [(CMStyle *)v4 addProperty:insideBorders forKey:0x286F08330];
  }

  if (self->mHeight > 0.0)
  {
    [(CMStyle *)v4 appendPropertyForName:0x286EF6790 length:2 unit:?];
  }

  [(CMMapper *)self addStyleUsingGlobalCacheTo:atCopy style:v4];
}

@end