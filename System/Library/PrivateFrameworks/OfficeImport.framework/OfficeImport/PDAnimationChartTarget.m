@interface PDAnimationChartTarget
- (BOOL)isEqual:(id)a3;
- (PDAnimationChartTarget)init;
- (unint64_t)hash;
@end

@implementation PDAnimationChartTarget

- (PDAnimationChartTarget)init
{
  v3.receiver = self;
  v3.super_class = PDAnimationChartTarget;
  return [(PDAnimationShapeTarget *)&v3 init];
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PDAnimationChartTarget;
  v3 = [(PDAnimationShapeTarget *)&v7 hash];
  v4 = &v3[[(PDAnimationChartTarget *)self catagoryIndex]];
  v5 = &v4[[(PDAnimationChartTarget *)self seriesIndex]];
  return &v5[[(PDAnimationChartTarget *)self buildStep]];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = PDAnimationChartTarget, -[PDAnimationShapeTarget isEqual:](&v10, sel_isEqual_, v4)) && (v5 = -[PDAnimationChartTarget catagoryIndex](self, "catagoryIndex"), v5 == [v4 catagoryIndex]) && (v6 = -[PDAnimationChartTarget seriesIndex](self, "seriesIndex"), v6 == objc_msgSend(v4, "seriesIndex")))
  {
    v7 = [(PDAnimationChartTarget *)self buildStep];
    v8 = v7 == [v4 buildStep];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end