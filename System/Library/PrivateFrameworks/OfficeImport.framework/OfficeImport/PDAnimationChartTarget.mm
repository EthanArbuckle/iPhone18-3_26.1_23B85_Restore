@interface PDAnimationChartTarget
- (BOOL)isEqual:(id)equal;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = PDAnimationChartTarget, -[PDAnimationShapeTarget isEqual:](&v10, sel_isEqual_, equalCopy)) && (v5 = -[PDAnimationChartTarget catagoryIndex](self, "catagoryIndex"), v5 == [equalCopy catagoryIndex]) && (v6 = -[PDAnimationChartTarget seriesIndex](self, "seriesIndex"), v6 == objc_msgSend(equalCopy, "seriesIndex")))
  {
    buildStep = [(PDAnimationChartTarget *)self buildStep];
    v8 = buildStep == [equalCopy buildStep];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end