@interface WMTableMapper
+ (BOOL)isTableDeleted:(id)a3;
- (WMTableMapper)initWithWDTable:(id)a3 parent:(id)a4;
- (id)copyColumnInfo;
- (id)copyStopArrayForRow:(unint64_t)a3;
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation WMTableMapper

- (id)copyColumnInfo
{
  v3 = [(WDTable *)self->mWdTable rowCount];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
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

- (WMTableMapper)initWithWDTable:(id)a3 parent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = WMTableMapper;
  v9 = [(CMMapper *)&v21 initWithParent:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mWdTable, a3);
    v11 = [WMTableStyle alloc];
    v12 = [v7 properties];
    v13 = [(WMTableStyle *)v11 initWithWDTableProperties:v12];
    mStyle = v10->mStyle;
    v10->mStyle = v13;

    v15 = [(CMStyle *)v10->mStyle propertyForName:0x286F08310];
    mInsideBorders = v10->mInsideBorders;
    v10->mInsideBorders = v15;

    v17 = [(CMStyle *)v10->mStyle properties];
    [v17 removeObjectForKey:0x286F08310];

    v18 = [(WMTableMapper *)v10 copyColumnInfo];
    mColumnInfo = v10->mColumnInfo;
    v10->mColumnInfo = v18;
  }

  return v10;
}

+ (BOOL)isTableDeleted:(id)a3
{
  v3 = a3;
  v4 = [v3 rowCount];
  if (v4)
  {
    v5 = 0;
    for (i = 0; i != v4; v5 = i >= v4)
    {
      v7 = [v3 rowAt:i];
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

- (void)mapAt:(id)a3 withState:(id)a4
{
  v30 = a3;
  v6 = a4;
  if (![WMTableMapper isTableDeleted:self->mWdTable])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [(WDTable *)self->mWdTable properties];
    v29 = v8;
    if ([v8 isHorizontalPositionOverridden])
    {
      v9 = [v8 horizontalPosition];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if ([v8 isLeftDistanceFromTextOverridden])
    {
      v10 = v10 - [v8 leftDistanceFromText];
    }

    if ([v8 isHorizontalAnchorOverridden] && objc_msgSend(v8, "horizontalAnchor") == 2)
    {
      [v6 leftMargin];
      v10 = v10 - v11;
    }

    [(CMStyle *)self->mStyle appendPropertyForName:0x286EF67B0 length:2 unit:v10];
    v12 = [OIXMLElement elementWithType:18];
    v13 = [(CMMapper *)self archiver];
    v14 = [v13 progressiveMappingIsPausedOnPath:0];

    if (v14)
    {
      [v30 addChild:v12];
    }

    v28 = [(WMStyle *)self->mStyle cssStyleString];
    [(CMMapper *)self addAttribute:0x286EEA590 toNode:v12 value:v28];
    v15 = [(CMMapper *)self archiver];
    [v15 pauseProgressiveMappingOnPath:0];
    v27 = v14;

    v16 = [(WDTable *)self->mWdTable rowCount];
    v17 = v7;
    if (v16)
    {
      v18 = 0;
      for (i = 0; i != v16; ++i)
      {
        v20 = [(WDTable *)self->mWdTable rowAt:i];

        v21 = [[WMTableRowMapper alloc] initWithWDTableRow:v20 parent:self];
        [(WMTableRowMapper *)v21 mapAt:v12 withState:v6];

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
      v23 = [(CMMapper *)self archiver];
      [v23 restartProgressiveMappingOnPath:0];

      v24 = [(CMMapper *)self archiver];
      [v24 pushCssToPath:0];

      v25 = [(CMMapper *)self archiver];
      v26 = [v12 XMLString];
      [v25 pushText:v26 toPath:0];
    }

    objc_autoreleasePoolPop(v22);
  }
}

- (id)copyStopArrayForRow:(unint64_t)a3
{
  v3 = [(WDTable *)self->mWdTable rowAt:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = 0;
    v6 = 0.0;
    while ([v3 cellCount] > v5)
    {
      v7 = [v3 cellAt:v5];
      v8 = [v7 properties];
      v6 = v6 + [v8 width];

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