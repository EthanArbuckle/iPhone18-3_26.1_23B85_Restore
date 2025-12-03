@interface _HKInteractiveChartDistributionStyleKey
- (BOOL)isEqual:(id)equal;
- (_HKInteractiveChartDistributionStyleKey)initWithDistributionStyle:(int64_t)style timeScope:(int64_t)scope predicateName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation _HKInteractiveChartDistributionStyleKey

- (_HKInteractiveChartDistributionStyleKey)initWithDistributionStyle:(int64_t)style timeScope:(int64_t)scope predicateName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = _HKInteractiveChartDistributionStyleKey;
  v10 = [(_HKInteractiveChartDistributionStyleKey *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_style = style;
    v10->_timeScope = scope;
    objc_storeStrong(&v10->_predicateName, name);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = equalCopy;
    style = [(_HKInteractiveChartDistributionStyleKey *)self style];
    if (style == [v5 style] && (v7 = -[_HKInteractiveChartDistributionStyleKey timeScope](self, "timeScope"), v7 == objc_msgSend(v5, "timeScope")))
    {
      predicateName = [(_HKInteractiveChartDistributionStyleKey *)self predicateName];
      predicateName2 = [v5 predicateName];
      v10 = [predicateName isEqualToString:predicateName2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  style = [(_HKInteractiveChartDistributionStyleKey *)self style];
  v4 = [(_HKInteractiveChartDistributionStyleKey *)self timeScope]^ style;
  predicateName = [(_HKInteractiveChartDistributionStyleKey *)self predicateName];
  v6 = [predicateName hash];

  return v4 ^ v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_HKInteractiveChartDistributionStyleKey alloc];
  style = [(_HKInteractiveChartDistributionStyleKey *)self style];
  timeScope = [(_HKInteractiveChartDistributionStyleKey *)self timeScope];
  predicateName = [(_HKInteractiveChartDistributionStyleKey *)self predicateName];
  v8 = [(_HKInteractiveChartDistributionStyleKey *)v4 initWithDistributionStyle:style timeScope:timeScope predicateName:predicateName];

  return v8;
}

@end