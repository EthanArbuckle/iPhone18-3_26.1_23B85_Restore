@interface DBSmartWidgetRangeBasedPrediction
- (id)buttonCompositingFilterWithTraitCollection:(id)a3;
- (id)description;
- (id)imageCompositingFilterWithTraitCollection:(id)a3;
- (id)layerWithTraitCollection:(id)a3;
@end

@implementation DBSmartWidgetRangeBasedPrediction

- (id)description
{
  v10.receiver = self;
  v10.super_class = DBSmartWidgetRangeBasedPrediction;
  v3 = [(DBSmartWidgetPrediction *)&v10 description];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(DBSmartWidgetRangeBasedPrediction *)self title];
  v6 = [(DBSmartWidgetRangeBasedPrediction *)self subtitle];
  v7 = [(DBSmartWidgetPrediction *)self predictedObjectDescription];
  v8 = [v4 stringWithFormat:@"<%@: title=%@ subtitle=%@ predictedObject=%@>", v3, v5, v6, v7];

  return v8;
}

- (id)layerWithTraitCollection:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);

  return v3;
}

- (id)buttonCompositingFilterWithTraitCollection:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CD9EA0]);

  return v3;
}

- (id)imageCompositingFilterWithTraitCollection:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CD9EA0]);

  return v3;
}

@end