@interface NTAggregationBudgetInfo
- (NTAggregationBudgetInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NTAggregationBudgetInfo

- (NTAggregationBudgetInfo)init
{
  v3.receiver = self;
  v3.super_class = NTAggregationBudgetInfo;
  return [(NTAggregationBudgetInfo *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  sectionSlotCostInfo = [(NTAggregationBudgetInfo *)self sectionSlotCostInfo];
  [v4 setSectionSlotCostInfo:sectionSlotCostInfo];

  [v4 setRespectMinMaxLimit:{-[NTAggregationBudgetInfo respectMinMaxLimit](self, "respectMinMaxLimit")}];
  [(NTAggregationBudgetInfo *)self slotsLimit];
  [v4 setSlotsLimit:?];
  [v4 setAllowSectionTitles:{-[NTAggregationBudgetInfo allowSectionTitles](self, "allowSectionTitles")}];
  [(NTAggregationBudgetInfo *)self bannerSlotCost];
  [v4 setBannerSlotCost:?];
  [v4 setHasBannerSlotCost:{-[NTAggregationBudgetInfo hasBannerSlotCost](self, "hasBannerSlotCost")}];
  return v4;
}

@end