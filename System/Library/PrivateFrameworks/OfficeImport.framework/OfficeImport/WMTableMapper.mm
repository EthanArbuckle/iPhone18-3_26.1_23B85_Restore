@interface WMTableMapper
+ (BOOL)isTableDeleted:(id)deleted;
- (WMTableMapper)initWithWDTable:(id)table parent:(id)parent;
- (id)copyColumnInfo;
- (id)copyStopArrayForRow:(unint64_t)row;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation WMTableMapper

- (id)copyColumnInfo
{
  rowCount = [(WDTable *)self->mWdTable rowCount];
  if (!rowCount)
  {
    return 0;
  }

  v4 = rowCount;
  v5 = [(WMTableMapper *)self copyStopArrayForRow:0];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [[WMTableColumnInfo alloc] initWithStopArray:v5];
  if (v4 == 1)
  {
    v8 = v6;
  }

  else
  {
    for (i = 1; i != v4; ++i)
    {
      v8 = [(WMTableMapper *)self copyStopArrayForRow:i];

      [(WMTableColumnInfo *)v7 mergeStopArray:v8];
      v6 = v8;
    }
  }

  return v7;
}

- (WMTableMapper)initWithWDTable:(id)table parent:(id)parent
{
  tableCopy = table;
  parentCopy = parent;
  v21.receiver = self;
  v21.super_class = WMTableMapper;
  v9 = [(CMMapper *)&v21 initWithParent:parentCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mWdTable, table);
    v11 = [WMTableStyle alloc];
    properties = [tableCopy properties];
    v13 = [(WMTableStyle *)v11 initWithWDTableProperties:properties];
    mStyle = v10->mStyle;
    v10->mStyle = v13;

    v15 = [(CMStyle *)v10->mStyle propertyForName:0x286F08310];
    mInsideBorders = v10->mInsideBorders;
    v10->mInsideBorders = v15;

    properties2 = [(CMStyle *)v10->mStyle properties];
    [properties2 removeObjectForKey:0x286F08310];

    copyColumnInfo = [(WMTableMapper *)v10 copyColumnInfo];
    mColumnInfo = v10->mColumnInfo;
    v10->mColumnInfo = copyColumnInfo;
  }

  return v10;
}

+ (BOOL)isTableDeleted:(id)deleted
{
  deletedCopy = deleted;
  rowCount = [deletedCopy rowCount];
  if (rowCount)
  {
    v5 = 0;
    for (i = 0; i != rowCount; v5 = i >= rowCount)
    {
      v7 = [deletedCopy rowAt:i];
      v8 = [WMTableRowMapper isTableRowDeleted:v7];

      if (!v8)
      {
        break;
      }

      ++i;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  if (![WMTableMapper isTableDeleted:self->mWdTable])
  {
    v7 = objc_autoreleasePoolPush();
    properties = [(WDTable *)self->mWdTable properties];
    v29 = properties;
    if ([properties isHorizontalPositionOverridden])
    {
      horizontalPosition = [properties horizontalPosition];
    }

    else
    {
      horizontalPosition = 0;
    }

    v10 = horizontalPosition;
    if ([properties isLeftDistanceFromTextOverridden])
    {
      v10 = v10 - [properties leftDistanceFromText];
    }

    if ([properties isHorizontalAnchorOverridden] && objc_msgSend(properties, "horizontalAnchor") == 2)
    {
      [stateCopy leftMargin];
      v10 = v10 - v11;
    }

    [(CMStyle *)self->mStyle appendPropertyForName:0x286EF67B0 length:2 unit:v10];
    v12 = [OIXMLElement elementWithType:18];
    archiver = [(CMMapper *)self archiver];
    v14 = [archiver progressiveMappingIsPausedOnPath:0];

    if (v14)
    {
      [atCopy addChild:v12];
    }

    cssStyleString = [(WMStyle *)self->mStyle cssStyleString];
    [(CMMapper *)self addAttribute:0x286EEA590 toNode:v12 value:cssStyleString];
    archiver2 = [(CMMapper *)self archiver];
    [archiver2 pauseProgressiveMappingOnPath:0];
    v27 = v14;

    rowCount = [(WDTable *)self->mWdTable rowCount];
    v17 = v7;
    if (rowCount)
    {
      v18 = 0;
      for (i = 0; i != rowCount; ++i)
      {
        v20 = [(WDTable *)self->mWdTable rowAt:i];

        v21 = [[WMTableRowMapper alloc] initWithWDTableRow:v20 parent:self];
        [(WMTableRowMapper *)v21 mapAt:v12 withState:stateCopy];

        v18 = v20;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = v17;
    if ((v27 & 1) == 0)
    {
      archiver3 = [(CMMapper *)self archiver];
      [archiver3 restartProgressiveMappingOnPath:0];

      archiver4 = [(CMMapper *)self archiver];
      [archiver4 pushCssToPath:0];

      archiver5 = [(CMMapper *)self archiver];
      xMLString = [v12 XMLString];
      [archiver5 pushText:xMLString toPath:0];
    }

    objc_autoreleasePoolPop(v22);
  }
}

- (id)copyStopArrayForRow:(unint64_t)row
{
  v3 = [(WDTable *)self->mWdTable rowAt:row];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = 0;
    v6 = 0.0;
    while ([v3 cellCount] > v5)
    {
      v7 = [v3 cellAt:v5];
      properties = [v7 properties];
      v6 = v6 + [properties width];

      *&v9 = v6;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
      [v4 addObject:v10];

      ++v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end