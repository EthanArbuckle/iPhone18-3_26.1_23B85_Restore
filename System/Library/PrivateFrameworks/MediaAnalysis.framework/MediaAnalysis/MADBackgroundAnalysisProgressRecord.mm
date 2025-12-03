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
    processedAssetCount = [(MADBackgroundAnalysisProgressRecord *)self processedAssetCount];
    return ((processedAssetCount / [(MADBackgroundAnalysisProgressRecord *)self totalAssetCount]) * 100.0);
  }

  return result;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  v6 = VCPTaskIDDescription([(MADBackgroundAnalysisProgressRecord *)self activityID]);
  [string appendFormat:@"activityID: %@, ", v6];

  [string appendFormat:@"analysisSubtype: %d, ", -[MADBackgroundAnalysisProgressRecord analysisSubtype](self, "analysisSubtype")];
  [string appendFormat:@"version: %d, ", -[MADBackgroundAnalysisProgressRecord version](self, "version")];
  [string appendFormat:@"processedAssetCount: %d, ", -[MADBackgroundAnalysisProgressRecord processedAssetCount](self, "processedAssetCount")];
  [string appendFormat:@"totalAssetCount: %d, ", -[MADBackgroundAnalysisProgressRecord totalAssetCount](self, "totalAssetCount")];
  [string appendFormat:@"progress: %d, ", -[MADBackgroundAnalysisProgressRecord progress](self, "progress")];
  storeDate = [(MADBackgroundAnalysisProgressRecord *)self storeDate];
  [string appendFormat:@"storeDate: %@>", storeDate];

  return string;
}

@end