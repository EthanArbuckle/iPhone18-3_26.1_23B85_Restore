@interface MADPreWarmOCRTask
- (BOOL)run:(id *)a3;
- (MADPreWarmOCRTask)initWithCompletionHandler:(id)a3 cancelOrExtendTimeoutBlock:(id)a4;
@end

@implementation MADPreWarmOCRTask

- (MADPreWarmOCRTask)initWithCompletionHandler:(id)a3 cancelOrExtendTimeoutBlock:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MADPreWarmOCRTask;
  v7 = [(MADPreWarmOCRTask *)&v11 initWithCompletionHandler:a3];
  if (v7)
  {
    v8 = objc_retainBlock(v6);
    cancelOrExtendTimeoutBlock = v7->_cancelOrExtendTimeoutBlock;
    v7->_cancelOrExtendTimeoutBlock = v8;
  }

  return v7;
}

- (BOOL)run:(id *)a3
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v5 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Pre-warming OCR models", buf, 2u);
    }
  }

  v6 = +[MADStateHandler sharedStateHandler];
  [v6 enterKnownTimeoutRisk:3];

  v7 = +[CRImageReader defaultRevisionNumber];
  cancelOrExtendTimeoutBlock = self->_cancelOrExtendTimeoutBlock;
  v18 = 0;
  v9 = [CRImageReader preheatModelsForOptions:&__NSDictionary0__struct revision:v7 extendedTimeoutBlock:cancelOrExtendTimeoutBlock error:&v18];
  v10 = v18;
  if (v9)
  {
    v11 = +[MADStateHandler sharedStateHandler];
    [v11 exitKnownTimeoutRisk];

    if (MediaAnalysisLogLevel() >= 5)
    {
      v12 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "Successfully pre-warmed OCR models", buf, 2u);
      }
    }

    v13 = [(MADPreWarmOCRTask *)self completionHandler];
    v13[2](v13, 0, 0);
    goto LABEL_14;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v14 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      v15 = [v10 description];
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "Failed to pre-warm OCR models (%@)", buf, 0xCu);
    }
  }

  if (a3)
  {
    v16 = [v10 copy];
    v13 = *a3;
    *a3 = v16;
LABEL_14:
  }

  return v9;
}

@end