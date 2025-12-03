@interface GKMetricData
- (GKMetricData)init;
- (GKSectionMetrics)sectionMetrics;
- (NSString)layoutKey;
- (id)_gkDescriptionWithChildren:(int64_t)children;
- (id)localDescription;
- (void)addAttributes:(id)attributes forLocation:(unint64_t)location;
- (void)setMetrics:(id)metrics;
@end

@implementation GKMetricData

- (GKMetricData)init
{
  v7.receiver = self;
  v7.super_class = GKMetricData;
  v2 = [(GKMetricData *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentMaxVisibleItemCount = -1;
    array = [MEMORY[0x277CBEB18] array];
    [(GKMetricData *)v3 setHeaderPinnableAttributes:array];

    array2 = [MEMORY[0x277CBEB18] array];
    [(GKMetricData *)v3 setFooterPinnableAttributes:array2];
  }

  return v3;
}

- (id)localDescription
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = GKMetricData;
  v4 = [(GKMetricData *)&v14 description];
  v5 = v4;
  if (self->_metrics)
  {
    v6 = MEMORY[0x277CCACA8];
    layoutKey = [(GKMetricData *)self layoutKey];
    v8 = [v6 stringWithFormat:@" layoutKey:'%@'", layoutKey];
    metrics = self->_metrics;
    currentMaxVisibleItemCount = self->_currentMaxVisibleItemCount;
    if (metrics)
    {
      localDescription = [(GKGridLayoutMetrics *)metrics localDescription];
      v12 = [v3 stringWithFormat:@"%@%@: maxVis:%ld %@", v5, v8, currentMaxVisibleItemCount, localDescription];
    }

    else
    {
      v12 = [v3 stringWithFormat:@"%@%@: maxVis:%ld %@", v5, v8, self->_currentMaxVisibleItemCount, &stru_28612D290];
    }
  }

  else
  {
    v12 = [v3 stringWithFormat:@"%@%@: maxVis:%ld %@", v4, &stru_28612D290, self->_currentMaxVisibleItemCount, &stru_28612D290];
  }

  return v12;
}

- (id)_gkDescriptionWithChildren:(int64_t)children
{
  v5 = _gkTabStringForTabLevel();
  string = [MEMORY[0x277CCAB68] string];
  v18.receiver = self;
  v18.super_class = GKMetricData;
  v7 = [(GKMetricData *)&v18 description];
  v8 = v7;
  if (self->_metrics)
  {
    v9 = MEMORY[0x277CCACA8];
    layoutKey = [(GKMetricData *)self layoutKey];
    v11 = [v9 stringWithFormat:@" layoutKey:'%@'", layoutKey];
    [string appendFormat:@"%@%@: maxVis:%ld {", v8, v11, self->_currentMaxVisibleItemCount];
  }

  else
  {
    [string appendFormat:@"%@%@: maxVis:%ld {", v7, &stru_28612D290, self->_currentMaxVisibleItemCount];
  }

  metrics = self->_metrics;
  if (metrics)
  {
    v13 = [(GKGridLayoutMetrics *)metrics _gkDescriptionWithChildren:children + 1];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v15 = [v13 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    [string appendFormat:@"\n%@    sectionMetrics: %@", v5, v15];
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@}\n", v5];
  [string appendString:v16];

  return string;
}

- (void)setMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_metrics != metricsCopy)
  {
    v7 = metricsCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self->_currentMaxVisibleItemCount != -1)
      {
LABEL_7:
        objc_storeStrong(&self->_metrics, metrics);
        metricsCopy = v7;
        goto LABEL_8;
      }

      maximumVisibleItemCount = [(GKGridLayoutMetrics *)v7 maximumVisibleItemCount];
    }

    else
    {
      maximumVisibleItemCount = -1;
    }

    self->_currentMaxVisibleItemCount = maximumVisibleItemCount;
    goto LABEL_7;
  }

LABEL_8:
}

- (GKSectionMetrics)sectionMetrics
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKGridLayoutPrivate.m"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = [v3 stringWithFormat:@"%@ ([_metrics isKindOfClass:[GKSectionMetrics class]])\n[%s (%s:%d)]", v4, "-[GKMetricData sectionMetrics]", objc_msgSend(lastPathComponent, "UTF8String"), 81];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  }

  metrics = self->_metrics;

  return metrics;
}

- (NSString)layoutKey
{
  metrics = self->_metrics;
  if (metrics)
  {
    layoutKey = [(GKGridLayoutMetrics *)metrics layoutKey];
  }

  else
  {
    layoutKey = &stru_28612D290;
  }

  return layoutKey;
}

- (void)addAttributes:(id)attributes forLocation:(unint64_t)location
{
  attributesCopy = attributes;
  v7 = attributesCopy;
  if (location)
  {
    if (location != 1)
    {
      goto LABEL_6;
    }

    v8 = 40;
  }

  else
  {
    v8 = 32;
  }

  v9 = attributesCopy;
  attributesCopy = [*(&self->super.isa + v8) addObjectsFromArray:attributesCopy];
  v7 = v9;
LABEL_6:

  MEMORY[0x2821F96F8](attributesCopy, v7);
}

@end