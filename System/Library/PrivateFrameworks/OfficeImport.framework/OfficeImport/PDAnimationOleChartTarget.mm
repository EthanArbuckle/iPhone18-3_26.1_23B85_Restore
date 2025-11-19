@interface PDAnimationOleChartTarget
- (BOOL)isEqual:(id)a3;
- (PDAnimationOleChartTarget)init;
- (unint64_t)hash;
@end

@implementation PDAnimationOleChartTarget

- (PDAnimationOleChartTarget)init
{
  v3.receiver = self;
  v3.super_class = PDAnimationOleChartTarget;
  return [(PDAnimationShapeTarget *)&v3 init];
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = PDAnimationOleChartTarget;
  v3 = [(PDAnimationShapeTarget *)&v6 hash];
  v4 = &v3[[(PDAnimationOleChartTarget *)self level]];
  return &v4[[(PDAnimationOleChartTarget *)self chartSubElementType]];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = PDAnimationOleChartTarget, -[PDAnimationShapeTarget isEqual:](&v9, sel_isEqual_, v4)) && (v5 = -[PDAnimationOleChartTarget level](self, "level"), v5 == [v4 level]))
  {
    v6 = [(PDAnimationOleChartTarget *)self chartSubElementType];
    v7 = v6 == [v4 chartSubElementType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end