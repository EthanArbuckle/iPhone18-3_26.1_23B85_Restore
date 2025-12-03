@interface WMTableRowMapper
+ (BOOL)isTableRowDeleted:(id)deleted;
- (WMTableRowMapper)initWithWDTableRow:(id)row parent:(id)parent;
- (void)mapAt:(id)at withState:(id)state;
- (void)setRowProperties:(id)properties;
@end

@implementation WMTableRowMapper

- (WMTableRowMapper)initWithWDTableRow:(id)row parent:(id)parent
{
  rowCopy = row;
  parentCopy = parent;
  v13.receiver = self;
  v13.super_class = WMTableRowMapper;
  v9 = [(CMMapper *)&v13 initWithParent:parentCopy];
  v10 = v9;
  if (v9)
  {
    v9->mHeight = 0.0;
    objc_storeStrong(&v9->mWdTableRow, row);
    properties = [rowCopy properties];
    [(WMTableRowMapper *)v10 setRowProperties:properties];
  }

  return v10;
}

+ (BOOL)isTableRowDeleted:(id)deleted
{
  properties = [deleted properties];
  characterProperties = [properties characterProperties];
  v5 = [characterProperties isDeletedOverridden] && (objc_msgSend(characterProperties, "deleted") & 0xFFFFFF7F) == 1;

  return v5;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  if (![WMTableRowMapper isTableRowDeleted:self->mWdTableRow])
  {
    v7 = [OIXMLElement elementWithType:21];
    [atCopy addChild:v7];
    v8 = objc_alloc_init(WMStyle);
    [(CMStyle *)v8 appendPropertyForName:0x286F077D0 stringValue:@"top"];
    cssStyleString = [(WMStyle *)v8 cssStyleString];
    [(CMMapper *)self addAttribute:0x286EEA590 toNode:v7 value:cssStyleString];
    cellCount = [(WDTableRow *)self->mWdTableRow cellCount];
    if (cellCount)
    {
      v16 = cssStyleString;
      v11 = 0;
      v12 = 0;
      for (i = 0; i != cellCount; ++i)
      {
        v14 = [(WDTableRow *)self->mWdTableRow cellAt:i];

        v15 = [[WMTableCellMapper alloc] initWithWDTableCell:v14 atIndex:v12 parent:self];
        [(WMTableCellMapper *)v15 mapAt:v7 withState:stateCopy];
        v12 = [(WMTableCellMapper *)v15 colSpan]+ v12;

        v11 = v14;
      }

      cssStyleString = v16;
    }
  }
}

- (void)setRowProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy isHeightOverridden])
  {
    self->mHeight = [propertiesCopy height];
  }
}

@end