@interface VCPMADOCRAssetProcessingTask
- (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block;
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

- (id)batchWithAnalysisDatabase:(id)database allowDownload:(BOOL)download cancelBlock:(id)block
{
  v5 = [VCPMADOCRAssetBatch batchWithAnalysisDatabase:database allowDownload:download cancelBlock:block];
  [v5 setAllowBeforeMigration:{objc_msgSend(objc_opt_class(), "allowBeforeMigration")}];

  return v5;
}

@end