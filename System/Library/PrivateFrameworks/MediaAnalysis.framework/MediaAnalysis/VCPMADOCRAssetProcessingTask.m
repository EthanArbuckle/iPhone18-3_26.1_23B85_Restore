@interface VCPMADOCRAssetProcessingTask
- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5;
- (void)dealloc;
@end

@implementation VCPMADOCRAssetProcessingTask

- (void)dealloc
{
  v3 = +[VNSession globalSession];
  [v3 releaseCachedResources];

  v4.receiver = self;
  v4.super_class = VCPMADOCRAssetProcessingTask;
  [(VCPMADOCRAssetProcessingTask *)&v4 dealloc];
}

- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5
{
  v5 = [VCPMADOCRAssetBatch batchWithAnalysisDatabase:a3 allowDownload:a4 cancelBlock:a5];
  [v5 setAllowBeforeMigration:{objc_msgSend(objc_opt_class(), "allowBeforeMigration")}];

  return v5;
}

@end