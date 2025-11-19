@interface WMTableRowMapper
+ (BOOL)isTableRowDeleted:(id)a3;
- (WMTableRowMapper)initWithWDTableRow:(id)a3 parent:(id)a4;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)setRowProperties:(id)a3;
@end

@implementation WMTableRowMapper

- (WMTableRowMapper)initWithWDTableRow:(id)a3 parent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WMTableRowMapper;
  v9 = [(CMMapper *)&v13 initWithParent:v8];
  v10 = v9;
  if (v9)
  {
    v9->mHeight = 0.0;
    objc_storeStrong(&v9->mWdTableRow, a3);
    v11 = [v7 properties];
    [(WMTableRowMapper *)v10 setRowProperties:v11];
  }

  return v10;
}

+ (BOOL)isTableRowDeleted:(id)a3
{
  v3 = [a3 properties];
  v4 = [v3 characterProperties];
  v5 = [v4 isDeletedOverridden] && (objc_msgSend(v4, "deleted") & 0xFFFFFF7F) == 1;

  return v5;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (![WMTableRowMapper isTableRowDeleted:self->mWdTableRow])
  {
    v7 = [OIXMLElement elementWithType:21];
    [v17 addChild:v7];
    v8 = objc_alloc_init(WMStyle);
    [(CMStyle *)v8 appendPropertyForName:0x286F077D0 stringValue:@"top"];
    v9 = [(WMStyle *)v8 cssStyleString];
    [(CMMapper *)self addAttribute:0x286EEA590 toNode:v7 value:v9];
    v10 = [(WDTableRow *)self->mWdTableRow cellCount];
    if (v10)
    {
      v16 = v9;
      v11 = 0;
      v12 = 0;
      for (i = 0; i != v10; ++i)
      {
        v14 = [(WDTableRow *)self->mWdTableRow cellAt:i];

        v15 = [[WMTableCellMapper alloc] initWithWDTableCell:v14 atIndex:v12 parent:self];
        [(WMTableCellMapper *)v15 mapAt:v7 withState:v6];
        v12 = [(WMTableCellMapper *)v15 colSpan]+ v12;

        v11 = v14;
      }

      v9 = v16;
    }
  }
}

- (void)setRowProperties:(id)a3
{
  v4 = a3;
  if ([v4 isHeightOverridden])
  {
    self->mHeight = [v4 height];
  }
}

@end