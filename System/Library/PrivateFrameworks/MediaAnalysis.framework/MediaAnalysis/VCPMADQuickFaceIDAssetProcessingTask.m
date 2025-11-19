@interface VCPMADQuickFaceIDAssetProcessingTask
- (VCPMADQuickFaceIDAssetProcessingTask)initWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5;
@end

@implementation VCPMADQuickFaceIDAssetProcessingTask

- (VCPMADQuickFaceIDAssetProcessingTask)initWithLocalIdentifiers:(id)a3 fromPhotoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v24.receiver = self;
  v24.super_class = VCPMADQuickFaceIDAssetProcessingTask;
  v13 = [(VCPMADPhotoAssetProcessingTask *)&v24 initWithLocalIdentifiers:a3 fromPhotoLibraryWithURL:v12 cancelBlock:a5 progressHandler:a6 completionHandler:a7];
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = +[VCPPhotoLibraryManager sharedManager];
  v15 = [v14 photoLibraryWithURL:v12];

  if (!v15)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v19 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 138412290;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "Failed to open Photo Library %@", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

  v16 = [[VCPPhotosQuickFaceIdentificationManager alloc] initWithPhotoLibrary:v15];
  v17 = *(v13 + 52);
  *(v13 + 52) = v16;

  if (!*(v13 + 52))
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        v21 = objc_opt_class();
        *buf = 138412546;
        v26 = v21;
        v27 = 2112;
        v28 = v12;
        v22 = v21;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "Failed to create %@ for Photo Library %@", buf, 0x16u);
      }
    }

LABEL_12:

    v18 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v18 = v13;
LABEL_13:

  return v18;
}

- (id)batchWithAnalysisDatabase:(id)a3 allowDownload:(BOOL)a4 cancelBlock:(id)a5
{
  v5 = [VCPMADQuickFaceIDAssetBatch batchWithAnalysisDatabase:a3 quickFaceIDManager:*(&self->super._progressHandler + 4) cancelBlock:a5];
  [v5 setAllowBeforeMigration:{objc_msgSend(objc_opt_class(), "allowBeforeMigration")}];

  return v5;
}

@end