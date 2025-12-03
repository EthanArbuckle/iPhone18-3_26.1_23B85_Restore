@interface VCPMADPhotosFetchProcessingTask
- (BOOL)run:(id *)p_isa;
- (VCPMADPhotosFetchProcessingTask)initWithFetchBlock:(id)block photoLibraryWithURL:(id)l cancelBlock:(id)cancelBlock progressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation VCPMADPhotosFetchProcessingTask

- (VCPMADPhotosFetchProcessingTask)initWithFetchBlock:(id)block photoLibraryWithURL:(id)l cancelBlock:(id)cancelBlock progressHandler:(id)handler completionHandler:(id)completionHandler
{
  blockCopy = block;
  lCopy = l;
  cancelBlockCopy = cancelBlock;
  handlerCopy = handler;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10009F7FC;
  v25[3] = &unk_100282858;
  completionHandlerCopy = completionHandler;
  v26 = completionHandlerCopy;
  v24.receiver = self;
  v24.super_class = VCPMADPhotosFetchProcessingTask;
  v17 = [(VCPMADPhotosProcessingTask *)&v24 initWithCompletionHandler:v25];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong((v17 + 28), l);
    v19 = objc_retainBlock(blockCopy);
    v20 = *(v18 + 36);
    *(v18 + 36) = v19;

    v21 = objc_retainBlock(handlerCopy);
    v22 = *(v18 + 44);
    *(v18 + 44) = v21;

    [v18 setCancelBlock:cancelBlockCopy];
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
    name4 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v10];
    if (name4)
    {
      name3 = +[PHAsset vcp_fetchOptionsForLibrary:forTaskID:](PHAsset, "vcp_fetchOptionsForLibrary:forTaskID:", v10, [objc_opt_class() taskID]);
      path = ((*(&self->_photoLibraryURL + 4))->_baseURL)();
      if ([path count])
      {
        v14 = [(VCPMADPhotosProcessingTask *)self processAssetsInFetchResult:path initialScan:0 analysisDatabase:name4 allowDownload:0 progress:0];
        waitForPublishing = [(VCPMADPhotosProcessingTask *)self waitForPublishing];
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = waitForPublishing;
        }

        if (v16)
        {
          if (v16 == -128)
          {
            if (p_isa)
            {
              v39 = NSLocalizedDescriptionKey;
              name = [objc_opt_class() name];
              v18 = [NSString stringWithFormat:@"[%@] Asset processing cancelled", name];
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
            name = [objc_opt_class() name];
            v30 = [NSString stringWithFormat:@"[%@] Asset processing failed", name];
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
          name2 = [objc_opt_class() name];
          *buf = 138412290;
          v36 = name2;
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

      name = [(VCPMADPhotosFetchProcessingTask *)self completionHandler];
      name[2](name, 0, 0);
      LOBYTE(p_isa) = 1;
      goto LABEL_29;
    }

    if (!p_isa)
    {
LABEL_31:

      goto LABEL_32;
    }

    v41 = NSLocalizedDescriptionKey;
    name3 = [objc_opt_class() name];
    path = [*(&self->super._publishError + 1) path];
    name = [NSString stringWithFormat:@"[%@] Failed to open Media Analysis for Photo Library (%@)", name3, path];
    v42 = name;
    v18 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-23 userInfo:v18];
    v25 = *p_isa;
    *p_isa = v24;

    goto LABEL_18;
  }

  if (p_isa)
  {
    v43 = NSLocalizedDescriptionKey;
    name4 = [objc_opt_class() name];
    name3 = [*(&self->super._publishError + 1) path];
    path = [NSString stringWithFormat:@"[%@] Failed to open Photo Library (%@)", name4, name3];
    v44 = path;
    name = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v22 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-23 userInfo:name];
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