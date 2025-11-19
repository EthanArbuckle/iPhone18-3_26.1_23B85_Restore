@interface PDChartBuild
- (BOOL)isEqual:(id)a3;
- (PDChartBuild)initWithBuildType:(int)a3;
- (unint64_t)hash;
@end

@implementation PDChartBuild

- (PDChartBuild)initWithBuildType:(int)a3
{
  v5.receiver = self;
  v5.super_class = PDChartBuild;
  result = [(PDBuild *)&v5 init];
  if (result)
  {
    result->mChartBuildType = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);
  v7 = v6;
  if (v6 && (mChartBuildType = self->mChartBuildType, v9 = [v6 type], v7, mChartBuildType == v9))
  {
    v12.receiver = self;
    v12.super_class = PDChartBuild;
    v10 = [(PDBuild *)&v12 isEqual:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  mChartBuildType = self->mChartBuildType;
  v4.receiver = self;
  v4.super_class = PDChartBuild;
  return [(PDBuild *)&v4 hash]^ mChartBuildType;
}

@end