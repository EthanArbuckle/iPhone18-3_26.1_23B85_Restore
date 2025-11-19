@interface MADBackgroundAnalysisProgressRecord
- (id)description;
- (unint64_t)progress;
@end

@implementation MADBackgroundAnalysisProgressRecord

- (unint64_t)progress
{
  result = [(MADBackgroundAnalysisProgressRecord *)self totalAssetCount];
  if (result)
  {
    v4 = [(MADBackgroundAnalysisProgressRecord *)self processedAssetCount];
    return ((v4 / [(MADBackgroundAnalysisProgressRecord *)self totalAssetCount]) * 100.0);
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  v6 = VCPTaskIDDescription([(MADBackgroundAnalysisProgressRecord *)self activityID]);
  [v3 appendFormat:@"activityID: %@, ", v6];

  [v3 appendFormat:@"analysisSubtype: %d, ", -[MADBackgroundAnalysisProgressRecord analysisSubtype](self, "analysisSubtype")];
  [v3 appendFormat:@"version: %d, ", -[MADBackgroundAnalysisProgressRecord version](self, "version")];
  [v3 appendFormat:@"processedAssetCount: %d, ", -[MADBackgroundAnalysisProgressRecord processedAssetCount](self, "processedAssetCount")];
  [v3 appendFormat:@"totalAssetCount: %d, ", -[MADBackgroundAnalysisProgressRecord totalAssetCount](self, "totalAssetCount")];
  [v3 appendFormat:@"progress: %d, ", -[MADBackgroundAnalysisProgressRecord progress](self, "progress")];
  v7 = [(MADBackgroundAnalysisProgressRecord *)self storeDate];
  [v3 appendFormat:@"storeDate: %@>", v7];

  return v3;
}

@end