@interface DBSmartWidgetRangeBasedPrediction
- (id)buttonCompositingFilterWithTraitCollection:(id)collection;
- (id)description;
- (id)imageCompositingFilterWithTraitCollection:(id)collection;
- (id)layerWithTraitCollection:(id)collection;
@end

@implementation DBSmartWidgetRangeBasedPrediction

- (id)description
{
  v10.receiver = self;
  v10.super_class = DBSmartWidgetRangeBasedPrediction;
  v3 = [(DBSmartWidgetPrediction *)&v10 description];
  v4 = MEMORY[0x277CCACA8];
  title = [(DBSmartWidgetRangeBasedPrediction *)self title];
  subtitle = [(DBSmartWidgetRangeBasedPrediction *)self subtitle];
  predictedObjectDescription = [(DBSmartWidgetPrediction *)self predictedObjectDescription];
  v8 = [v4 stringWithFormat:@"<%@: title=%@ subtitle=%@ predictedObject=%@>", v3, title, subtitle, predictedObjectDescription];

  return v8;
}

- (id)layerWithTraitCollection:(id)collection
{
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);

  return v3;
}

- (id)buttonCompositingFilterWithTraitCollection:(id)collection
{
  v3 = objc_alloc_init(MEMORY[0x277CD9EA0]);

  return v3;
}

- (id)imageCompositingFilterWithTraitCollection:(id)collection
{
  v3 = objc_alloc_init(MEMORY[0x277CD9EA0]);

  return v3;
}

@end