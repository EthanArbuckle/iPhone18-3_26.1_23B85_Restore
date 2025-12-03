@interface WMTableStyle
- (WMTableStyle)initWithWDTableProperties:(id)properties;
- (void)addTableProperties:(id)properties;
@end

@implementation WMTableStyle

- (WMTableStyle)initWithWDTableProperties:(id)properties
{
  propertiesCopy = properties;
  v10.receiver = self;
  v10.super_class = WMTableStyle;
  v6 = [(CMStyle *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mWdTableProperties, properties);
    [(WMTableStyle *)v7 addTableProperties:propertiesCopy];
    v8 = v7;
  }

  return v7;
}

- (void)addTableProperties:(id)properties
{
  propertiesCopy = properties;
  if (([propertiesCopy isTopBorderOverridden] & 1) != 0 || (objc_msgSend(propertiesCopy, "isLeftBorderOverridden") & 1) != 0 || (objc_msgSend(propertiesCopy, "isBottomBorderOverridden") & 1) != 0 || objc_msgSend(propertiesCopy, "isRightBorderOverridden"))
  {
    v4 = objc_alloc_init(WMBordersProperty);
    if ([propertiesCopy isTopBorderOverridden])
    {
      topBorder = [propertiesCopy topBorder];
      [(WMBordersProperty *)v4 setBorder:topBorder location:1];
    }

    if ([propertiesCopy isLeftBorderOverridden])
    {
      leftBorder = [propertiesCopy leftBorder];
      [(WMBordersProperty *)v4 setBorder:leftBorder location:2];
    }

    if ([propertiesCopy isBottomBorderOverridden])
    {
      bottomBorder = [propertiesCopy bottomBorder];
      [(WMBordersProperty *)v4 setBorder:bottomBorder location:3];
    }

    if ([propertiesCopy isRightBorderOverridden])
    {
      rightBorder = [propertiesCopy rightBorder];
      [(WMBordersProperty *)v4 setBorder:rightBorder location:4];
    }

    [(CMBordersProperty *)v4 adjustValues];
    [(CMStyle *)self addProperty:v4 forKey:@"outsideBoders"];
  }

  isInsideHorizontalBorderOverridden = [propertiesCopy isInsideHorizontalBorderOverridden];
  if (isInsideHorizontalBorderOverridden)
  {
    insideHorizontalBorder = [propertiesCopy insideHorizontalBorder];
  }

  else
  {
    insideHorizontalBorder = 0;
  }

  if ([propertiesCopy isInsideVerticalBorderOverridden])
  {
    insideVerticalBorder = [propertiesCopy insideVerticalBorder];
  }

  else
  {
    if (!isInsideHorizontalBorderOverridden)
    {
      goto LABEL_26;
    }

    insideVerticalBorder = 0;
  }

  v12 = objc_alloc_init(WMBordersProperty);
  v13 = v12;
  if (insideHorizontalBorder)
  {
    [(WMBordersProperty *)v12 setBorder:insideHorizontalBorder location:1];
    [(WMBordersProperty *)v13 setBorder:insideHorizontalBorder location:3];
  }

  if (insideVerticalBorder)
  {
    [(WMBordersProperty *)v13 setBorder:insideVerticalBorder location:4];
    [(WMBordersProperty *)v13 setBorder:insideVerticalBorder location:2];
  }

  [(CMBordersProperty *)v13 adjustValues];
  [(CMStyle *)self addProperty:v13 forKey:0x286F08310];

LABEL_26:
}

@end