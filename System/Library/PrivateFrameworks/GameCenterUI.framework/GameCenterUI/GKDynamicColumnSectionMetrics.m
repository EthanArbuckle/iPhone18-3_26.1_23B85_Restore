@interface GKDynamicColumnSectionMetrics
+ (id)dynamicColumnSectionMetricsWithColumnsInPortrait:(unint64_t)a3 columnsInLandscape:(unint64_t)a4;
+ (id)dynamicColumnSectionMetricsWithColumnsInPortrait:(unint64_t)a3 columnsInLandscape:(unint64_t)a4 forIdiom:(int64_t)a5;
- (CGSize)itemSizeForCollectionView:(id)a3;
- (GKDynamicColumnSectionMetrics)initWithIdiom:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)updateColumnsInPortrait:(unint64_t)a3 columnsInLandscape:(unint64_t)a4;
@end

@implementation GKDynamicColumnSectionMetrics

+ (id)dynamicColumnSectionMetricsWithColumnsInPortrait:(unint64_t)a3 columnsInLandscape:(unint64_t)a4 forIdiom:(int64_t)a5
{
  v7 = [objc_alloc(objc_opt_class()) initWithIdiom:a5];
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
    v12 = [v11 lastPathComponent];
    v13 = [v9 stringWithFormat:@"%@ (portraitColumnCount > 0)\n[%s (%s:%d)]", v10, "+[GKDynamicColumnSectionMetrics dynamicColumnSectionMetricsWithColumnsInPortrait:columnsInLandscape:forIdiom:]", objc_msgSend(v12, "UTF8String"), 637];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutMetrics.m"];
  v17 = [v16 lastPathComponent];
  v18 = [v14 stringWithFormat:@"%@ (landscapeColumnCount > 0)\n[%s (%s:%d)]", v15, "+[GKDynamicColumnSectionMetrics dynamicColumnSectionMetricsWithColumnsInPortrait:columnsInLandscape:forIdiom:]", objc_msgSend(v17, "UTF8String"), 638];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v18}];
LABEL_3:
  [v7 setColumnsInPortrait:a3];
  [v7 setColumnsInLandscape:a4];

  return v7;
}

+ (id)dynamicColumnSectionMetricsWithColumnsInPortrait:(unint64_t)a3 columnsInLandscape:(unint64_t)a4
{
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (*MEMORY[0x277D0C258])
  {
    v9 = *MEMORY[0x277D0C8F0];
  }

  else
  {
    v9 = 1;
  }

  if (v8 == 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return [a1 dynamicColumnSectionMetricsWithColumnsInPortrait:a3 columnsInLandscape:a4 forIdiom:v10];
}

- (GKDynamicColumnSectionMetrics)initWithIdiom:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = GKDynamicColumnSectionMetrics;
  result = [(GKSectionMetrics *)&v6 initWithIdiom:?];
  if (result)
  {
    result->_columnsInLandscape = 2;
    v5 = 1;
    if (a3 == 1)
    {
      v5 = 2;
    }

    result->_columnsInPortrait = v5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = GKDynamicColumnSectionMetrics;
  v4 = [(GKSectionMetrics *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setColumnsInPortrait:self->_columnsInPortrait];
    [v5 setColumnsInLandscape:self->_columnsInLandscape];
  }

  return v5;
}

- (CGSize)itemSizeForCollectionView:(id)a3
{
  v18.receiver = self;
  v18.super_class = GKDynamicColumnSectionMetrics;
  v4 = a3;
  [(GKSectionMetrics *)&v18 itemSizeForCollectionView:v4];
  v6 = v5;
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v8 = [v7 statusBarOrientation] - 3;

  v9 = &OBJC_IVAR___GKDynamicColumnSectionMetrics__columnsInPortrait;
  if (v8 < 2)
  {
    v9 = &OBJC_IVAR___GKDynamicColumnSectionMetrics__columnsInLandscape;
  }

  v10 = *(&self->super.super.super.isa + *v9);
  [v4 bounds];
  v12 = v11;

  [(GKSectionMetrics *)self padding];
  v15 = (v12 - (v13 + v14)) / v10;
  v16 = floorf(v15);
  v17 = v6;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)updateColumnsInPortrait:(unint64_t)a3 columnsInLandscape:(unint64_t)a4
{
  [(GKDynamicColumnSectionMetrics *)self setColumnsInLandscape:a4];

  [(GKDynamicColumnSectionMetrics *)self setColumnsInPortrait:a3];
}

@end