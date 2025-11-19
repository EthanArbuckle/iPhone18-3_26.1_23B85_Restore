@interface _HKInteractiveChartDistributionStyleKey
- (BOOL)isEqual:(id)a3;
- (_HKInteractiveChartDistributionStyleKey)initWithDistributionStyle:(int64_t)a3 timeScope:(int64_t)a4 predicateName:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _HKInteractiveChartDistributionStyleKey

- (_HKInteractiveChartDistributionStyleKey)initWithDistributionStyle:(int64_t)a3 timeScope:(int64_t)a4 predicateName:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = _HKInteractiveChartDistributionStyleKey;
  v10 = [(_HKInteractiveChartDistributionStyleKey *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_style = a3;
    v10->_timeScope = a4;
    objc_storeStrong(&v10->_predicateName, a5);
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
    v6 = [(_HKInteractiveChartDistributionStyleKey *)self style];
    if (v6 == [v5 style] && (v7 = -[_HKInteractiveChartDistributionStyleKey timeScope](self, "timeScope"), v7 == objc_msgSend(v5, "timeScope")))
    {
      v8 = [(_HKInteractiveChartDistributionStyleKey *)self predicateName];
      v9 = [v5 predicateName];
      v10 = [v8 isEqualToString:v9];
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
  v3 = [(_HKInteractiveChartDistributionStyleKey *)self style];
  v4 = [(_HKInteractiveChartDistributionStyleKey *)self timeScope]^ v3;
  v5 = [(_HKInteractiveChartDistributionStyleKey *)self predicateName];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_HKInteractiveChartDistributionStyleKey alloc];
  v5 = [(_HKInteractiveChartDistributionStyleKey *)self style];
  v6 = [(_HKInteractiveChartDistributionStyleKey *)self timeScope];
  v7 = [(_HKInteractiveChartDistributionStyleKey *)self predicateName];
  v8 = [(_HKInteractiveChartDistributionStyleKey *)v4 initWithDistributionStyle:v5 timeScope:v6 predicateName:v7];

  return v8;
}

@end