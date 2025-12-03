@interface GKDynamicColumnSectionMetrics
+ (id)dynamicColumnSectionMetricsWithColumnsInPortrait:(unint64_t)portrait columnsInLandscape:(unint64_t)landscape;
+ (id)dynamicColumnSectionMetricsWithColumnsInPortrait:(unint64_t)portrait columnsInLandscape:(unint64_t)landscape forIdiom:(int64_t)idiom;
- (CGSize)itemSizeForCollectionView:(id)view;
- (GKDynamicColumnSectionMetrics)initWithIdiom:(int64_t)idiom;
- (id)copyWithZone:(_NSZone *)zone;
- (void)updateColumnsInPortrait:(unint64_t)portrait columnsInLandscape:(unint64_t)landscape;
@end

@implementation GKDynamicColumnSectionMetrics

+ (id)dynamicColumnSectionMetricsWithColumnsInPortrait:(unint64_t)portrait columnsInLandscape:(unint64_t)landscape forIdiom:(int64_t)idiom
{
  v7 = [objc_alloc(objc_opt_class()) initWithIdiom:idiom];
  if (portrait)
  {
    if (landscape)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = [v9 stringWithFormat:@"%@ (portraitColumnCount > 0)\n[%s (%s:%d)]", v10, "+[GKDynamicColumnSectionMetrics dynamicColumnSectionMetricsWithColumnsInPortrait:columnsInLandscape:forIdiom:]", objc_msgSend(lastPathComponent, "UTF8String"), 637];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
    if (landscape)
    {
      goto LABEL_3;
    }
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
  lastPathComponent2 = [v16 lastPathComponent];
  v18 = [v14 stringWithFormat:@"%@ (landscapeColumnCount > 0)\n[%s (%s:%d)]", v15, "+[GKDynamicColumnSectionMetrics dynamicColumnSectionMetricsWithColumnsInPortrait:columnsInLandscape:forIdiom:]", objc_msgSend(lastPathComponent2, "UTF8String"), 638];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v18}];
LABEL_3:
  [v7 setColumnsInPortrait:portrait];
  [v7 setColumnsInLandscape:landscape];

  return v7;
}

+ (id)dynamicColumnSectionMetricsWithColumnsInPortrait:(unint64_t)portrait columnsInLandscape:(unint64_t)landscape
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (*MEMORY[0x277D0C258])
  {
    v9 = *MEMORY[0x277D0C8F0];
  }

  else
  {
    v9 = 1;
  }

  if (userInterfaceIdiom == 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return [self dynamicColumnSectionMetricsWithColumnsInPortrait:portrait columnsInLandscape:landscape forIdiom:v10];
}

- (GKDynamicColumnSectionMetrics)initWithIdiom:(int64_t)idiom
{
  v6.receiver = self;
  v6.super_class = GKDynamicColumnSectionMetrics;
  result = [(GKSectionMetrics *)&v6 initWithIdiom:?];
  if (result)
  {
    result->_columnsInLandscape = 2;
    v5 = 1;
    if (idiom == 1)
    {
      v5 = 2;
    }

    result->_columnsInPortrait = v5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = GKDynamicColumnSectionMetrics;
  v4 = [(GKSectionMetrics *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setColumnsInPortrait:self->_columnsInPortrait];
    [v5 setColumnsInLandscape:self->_columnsInLandscape];
  }

  return v5;
}

- (CGSize)itemSizeForCollectionView:(id)view
{
  v18.receiver = self;
  v18.super_class = GKDynamicColumnSectionMetrics;
  viewCopy = view;
  [(GKSectionMetrics *)&v18 itemSizeForCollectionView:viewCopy];
  v6 = v5;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v8 = [mEMORY[0x277D75128] statusBarOrientation] - 3;

  v9 = &OBJC_IVAR___GKDynamicColumnSectionMetrics__columnsInPortrait;
  if (v8 < 2)
  {
    v9 = &OBJC_IVAR___GKDynamicColumnSectionMetrics__columnsInLandscape;
  }

  v10 = *(&self->super.super.super.isa + *v9);
  [viewCopy bounds];
  v12 = v11;

  [(GKSectionMetrics *)self padding];
  v15 = (v12 - (v13 + v14)) / v10;
  v16 = floorf(v15);
  v17 = v6;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)updateColumnsInPortrait:(unint64_t)portrait columnsInLandscape:(unint64_t)landscape
{
  [(GKDynamicColumnSectionMetrics *)self setColumnsInLandscape:landscape];

  [(GKDynamicColumnSectionMetrics *)self setColumnsInPortrait:portrait];
}

@end