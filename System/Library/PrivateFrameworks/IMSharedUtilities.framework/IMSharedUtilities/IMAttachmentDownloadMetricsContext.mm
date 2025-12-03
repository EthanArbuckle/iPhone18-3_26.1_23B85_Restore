@interface IMAttachmentDownloadMetricsContext
- (id)initForServiceName:(id)name limitType:(unint64_t)type limitSize:(id)size qualityType:(unint64_t)qualityType isSticker:(BOOL)sticker lowQualityModeEnabled:(BOOL)enabled;
- (void)_setValuesOnMetricsDictionary:(id)dictionary withFileSize:(id)size sourceType:(id)type;
@end

@implementation IMAttachmentDownloadMetricsContext

- (id)initForServiceName:(id)name limitType:(unint64_t)type limitSize:(id)size qualityType:(unint64_t)qualityType isSticker:(BOOL)sticker lowQualityModeEnabled:(BOOL)enabled
{
  nameCopy = name;
  sizeCopy = size;
  v20.receiver = self;
  v20.super_class = IMAttachmentDownloadMetricsContext;
  v17 = [(IMAttachmentDownloadMetricsContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_serviceName, name);
    v18->_limitType = type;
    objc_storeStrong(&v18->_limitSize, size);
    v18->_qualityType = qualityType;
    v18->_isSticker = sticker;
    v18->_lqmEnabled = enabled;
  }

  return v18;
}

- (void)_setValuesOnMetricsDictionary:(id)dictionary withFileSize:(id)size sourceType:(id)type
{
  dictionaryCopy = dictionary;
  sizeCopy = size;
  typeCopy = type;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMAttachmentDownloadMetricsContext limitType](self, "limitType")}];
  [dictionaryCopy setObject:v10 forKeyedSubscript:@"limit_type"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IMAttachmentDownloadMetricsContext qualityType](self, "qualityType")}];
  [dictionaryCopy setObject:v11 forKeyedSubscript:@"quality_type"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMAttachmentDownloadMetricsContext lqmEnabled](self, "lqmEnabled")}];
  [dictionaryCopy setObject:v12 forKeyedSubscript:@"low_quality_mode_enabled"];

  limitSize = [(IMAttachmentDownloadMetricsContext *)self limitSize];

  if (limitSize)
  {
    limitSize2 = [(IMAttachmentDownloadMetricsContext *)self limitSize];
    [dictionaryCopy setObject:limitSize2 forKeyedSubscript:@"size_limit"];
  }

  serviceName = [(IMAttachmentDownloadMetricsContext *)self serviceName];

  if (serviceName)
  {
    serviceName2 = [(IMAttachmentDownloadMetricsContext *)self serviceName];
    [dictionaryCopy setObject:serviceName2 forKeyedSubscript:@"service_name"];
  }

  if ([(IMAttachmentDownloadMetricsContext *)self isSticker])
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  identifier = [typeCopy identifier];
  v19 = [identifier length];

  if (v19)
  {
    if ([(IMAttachmentDownloadMetricsContext *)self isSticker])
    {
LABEL_10:
      if (![(IMAttachmentDownloadMetricsContext *)self isSticker])
      {
        identifier2 = [typeCopy identifier];
        IsMovie = IMUTTypeIsMovie(identifier2);

        if (IsMovie)
        {
          v17 = 2;
        }
      }

      goto LABEL_18;
    }

    identifier3 = [typeCopy identifier];
    if (IMUTTypeIsImage(identifier3))
    {
    }

    else
    {
      identifier4 = [typeCopy identifier];
      IsSupportedAnimatedImage = IMUTTypeIsSupportedAnimatedImage(identifier4);

      if (!IsSupportedAnimatedImage)
      {
        goto LABEL_10;
      }
    }

    v17 = 1;
LABEL_18:
    identifier5 = [typeCopy identifier];
    [dictionaryCopy setObject:identifier5 forKeyedSubscript:@"uttype"];
  }

  if (sizeCopy)
  {
    [dictionaryCopy setObject:sizeCopy forKeyedSubscript:@"attachment_size"];
  }

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
  [dictionaryCopy setObject:v26 forKeyedSubscript:@"attachment_type"];
}

@end