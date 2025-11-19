@interface NTAggregationBudgetInfo
- (NTAggregationBudgetInfo)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NTAggregationBudgetInfo

- (NTAggregationBudgetInfo)init
{
  v3.receiver = self;
  v3.super_class = NTAggregationBudgetInfo;
  return [(NTAggregationBudgetInfo *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(NTAggregationBudgetInfo *)self sectionSlotCostInfo];
  [v4 setSectionSlotCostInfo:v5];

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