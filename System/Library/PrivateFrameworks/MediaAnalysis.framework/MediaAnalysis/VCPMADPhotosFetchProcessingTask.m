@interface VCPMADPhotosFetchProcessingTask
- (BOOL)run:(id *)p_isa;
- (VCPMADPhotosFetchProcessingTask)initWithFetchBlock:(id)a3 photoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7;
@end

@implementation VCPMADPhotosFetchProcessingTask

- (VCPMADPhotosFetchProcessingTask)initWithFetchBlock:(id)a3 photoLibraryWithURL:(id)a4 cancelBlock:(id)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009F7FC;
  v25[3] = &unk_100282858;
  v16 = a7;
  v26 = v16;
  v24.receiver = self;
  v24.super_class = VCPMADPhotosFetchProcessingTask;
  v17 = [(VCPMADPhotosProcessingTask *)&v24 initWithCompletionHandler:v25];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 28), a4);
    v19 = objc_retainBlock(v12);
    v20 = *(v18 + 36);
    *(v18 + 36) = v19;

    v21 = objc_retainBlock(v15);
    v22 = *(v18 + 44);
    *(v18 + 44) = v21;

    [v18 setCancelBlock:v14];
  }

  return v18;
}

- (BOOL)run:(id *)p_isa
{
  v5 = VCPSignPostLog();
  v6 = os_signpost_id_generate(v5);

  v7 = VCPSignPostLog();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "VCPProcessPhotoAssets", "", buf, 2u);
  }

  v9 = +[VCPPhotoLibraryManager sharedManager];
  v10 = [v9 photoLibraryWithURL:*(&self->super._publishError + 1)];

  if (v10)
  {
    v11 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v10];
    if (v11)
    {
      v12 = +[PHAsset vcp_fetchOptionsForLibrary:forTaskID:](PHAsset, "vcp_fetchOptionsForLibrary:forTaskID:", v10, [objc_opt_class() taskID]);
      v13 = ((*(&self->_photoLibraryURL + 4))->_baseURL)();
      if ([v13 count])
      {
        v14 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:v13 initialScan:0 analysisDatabase:v11 allowDownload:0 progress:0];
        v15 = [(VCPMADPhotosProcessingTask *)self waitForPublishing];
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          if (v16 == -128)
          {
            if (p_isa)
            {
              v39 = NSLocalizedDescriptionKey;
              v17 = [objc_opt_class() name];
              v18 = [NSString stringWithFormat:@"[%@] Asset processing cancelled", v17];
              v40 = v18;
              v19 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
              v20 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v19];
              v21 = *p_isa;
              *p_isa = v20;

LABEL_18:
              goto LABEL_28;
            }
          }

          else if (p_isa)
          {
            v29 = v16;
            v37 = NSLocalizedDescriptionKey;
            v17 = [objc_opt_class() name];
            v30 = [NSString stringWithFormat:@"[%@] Asset processing failed", v17];
            v38 = v30;
            v31 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            v32 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v29 userInfo:v31];
            v33 = *p_isa;
            *p_isa = v32;

            goto LABEL_28;
          }

LABEL_30:

          goto LABEL_31;
        }
      }

      else if (MediaAnalysisLogLevel() >= 4)
      {
        v26 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v26))
        {
          v27 = [objc_opt_class() name];
          *buf = 138412290;
          v36 = v27;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[%@] Fetch yielded no assets; skipping processing", buf, 0xCu);
        }
      }

      v28 = VCPSignPostLog();
      p_isa = &v28->isa;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, p_isa, OS_SIGNPOST_INTERVAL_END, v6, "VCPProcessPhotoAssets", "", buf, 2u);
      }

      v17 = [(VCPMADPhotosFetchProcessingTask *)self completionHandler];
      v17[2](v17, 0, 0);
      LOBYTE(p_isa) = 1;
      goto LABEL_29;
    }

    if (!p_isa)
    {
LABEL_31:

      goto LABEL_32;
    }

    v41 = NSLocalizedDescriptionKey;
    v12 = [objc_opt_class() name];
    v13 = [*(&self->super._publishError + 1) path];
    v17 = [NSString stringWithFormat:@"[%@] Failed to open Media Analysis for Photo Library (%@)", v12, v13];
    v42 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-23 userInfo:v18];
    v25 = *p_isa;
    *p_isa = v24;

    goto LABEL_18;
  }

  if (p_isa)
  {
    v43 = NSLocalizedDescriptionKey;
    v11 = [objc_opt_class() name];
    v12 = [*(&self->super._publishError + 1) path];
    v13 = [NSString stringWithFormat:@"[%@] Failed to open Photo Library (%@)", v11, v12];
    v44 = v13;
    v17 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v22 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-23 userInfo:v17];
    v23 = *p_isa;
    *p_isa = v22;

LABEL_28:
    LOBYTE(p_isa) = 0;
LABEL_29:

    goto LABEL_30;
  }

LABEL_32:

  return p_isa;
}

@end