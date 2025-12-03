@interface PDChartBuild
- (BOOL)isEqual:(id)equal;
- (PDChartBuild)initWithBuildType:(int)type;
- (unint64_t)hash;
@end

@implementation PDChartBuild

- (PDChartBuild)initWithBuildType:(int)type
{
  v5.receiver = self;
  v5.super_class = PDChartBuild;
  result = [(PDBuild *)&v5 init];
  if (result)
  {
    result->mChartBuildType = type;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);
  v7 = v6;
  if (v6 && (mChartBuildType = self->mChartBuildType, v9 = [v6 type], v7, mChartBuildType == v9))
  {
    v12.receiver = self;
    v12.super_class = PDChartBuild;
    v10 = [(PDBuild *)&v12 isEqual:equalCopy];
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