@interface IMAttachmentDownloadMetricsContext
- (id)initForServiceName:(id)a3 limitType:(unint64_t)a4 limitSize:(id)a5 qualityType:(unint64_t)a6 isSticker:(BOOL)a7 lowQualityModeEnabled:(BOOL)a8;
- (void)_setValuesOnMetricsDictionary:(id)a3 withFileSize:(id)a4 sourceType:(id)a5;
@end

@implementation IMAttachmentDownloadMetricsContext

- (id)initForServiceName:(id)a3 limitType:(unint64_t)a4 limitSize:(id)a5 qualityType:(unint64_t)a6 isSticker:(BOOL)a7 lowQualityModeEnabled:(BOOL)a8
{
  v15 = a3;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = IMAttachmentDownloadMetricsContext;
  v17 = [(IMAttachmentDownloadMetricsContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_serviceName, a3);
    v18->_limitType = a4;
    objc_storeStrong(&v18->_limitSize, a5);
    v18->_qualityType = a6;
    v18->_isSticker = a7;
    v18->_lqmEnabled = a8;
  }

  return v18;
}

- (void)_setValuesOnMetricsDictionary:(id)a3 withFileSize:(id)a4 sourceType:(id)a5
{
  v27 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMAttachmentDownloadMetricsContext limitType](self, "limitType")}];
  [v27 setObject:v10 forKeyedSubscript:@"limit_type"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMAttachmentDownloadMetricsContext qualityType](self, "qualityType")}];
  [v27 setObject:v11 forKeyedSubscript:@"quality_type"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMAttachmentDownloadMetricsContext lqmEnabled](self, "lqmEnabled")}];
  [v27 setObject:v12 forKeyedSubscript:@"low_quality_mode_enabled"];

  v13 = [(IMAttachmentDownloadMetricsContext *)self limitSize];

  if (v13)
  {
    v14 = [(IMAttachmentDownloadMetricsContext *)self limitSize];
    [v27 setObject:v14 forKeyedSubscript:@"size_limit"];
  }

  v15 = [(IMAttachmentDownloadMetricsContext *)self serviceName];

  if (v15)
  {
    v16 = [(IMAttachmentDownloadMetricsContext *)self serviceName];
    [v27 setObject:v16 forKeyedSubscript:@"service_name"];
  }

  if ([(IMAttachmentDownloadMetricsContext *)self isSticker])
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 identifier];
  v19 = [v18 length];

  if (v19)
  {
    if ([(IMAttachmentDownloadMetricsContext *)self isSticker])
    {
LABEL_10:
      if (![(IMAttachmentDownloadMetricsContext *)self isSticker])
      {
        v20 = [v9 identifier];
        IsMovie = IMUTTypeIsMovie(v20);

        if (IsMovie)
        {
          v17 = 2;
        }
      }

      goto LABEL_18;
    }

    v22 = [v9 identifier];
    if (IMUTTypeIsImage(v22))
    {
    }

    else
    {
      v23 = [v9 identifier];
      IsSupportedAnimatedImage = IMUTTypeIsSupportedAnimatedImage(v23);

      if (!IsSupportedAnimatedImage)
      {
        goto LABEL_10;
      }
    }

    v17 = 1;
LABEL_18:
    v25 = [v9 identifier];
    [v27 setObject:v25 forKeyedSubscript:@"uttype"];
  }

  if (v8)
  {
    [v27 setObject:v8 forKeyedSubscript:@"attachment_size"];
  }

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
  [v27 setObject:v26 forKeyedSubscript:@"attachment_type"];
}

@end