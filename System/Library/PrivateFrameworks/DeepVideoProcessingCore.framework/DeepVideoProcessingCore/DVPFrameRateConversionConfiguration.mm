@interface DVPFrameRateConversionConfiguration
+ (BOOL)isSupportedRevision:(int64_t)revision;
+ (int64_t)defaultRevision;
- (DVPFrameRateConversionConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision;
@end

@implementation DVPFrameRateConversionConfiguration

- (DVPFrameRateConversionConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision
{
  v19.receiver = self;
  v19.super_class = DVPFrameRateConversionConfiguration;
  v12 = [(DVPFrameRateConversionConfiguration *)&v19 init];
  if (!v12)
  {
    NSLog(&cfstr_FailToInitiali.isa);
LABEL_7:
    v17 = 0;
    goto LABEL_4;
  }

  if (![DVPFrameRateConversionConfiguration isSupportedRevision:revision])
  {
    NSLog(&cfstr_ErrorInvalidDv_2.isa, revision);
    goto LABEL_7;
  }

  v12->_frameWidth = width;
  v12->_frameHeight = height;
  v12->_usePrecomputedFlow = flow;
  v12->_qualityPrioritization = prioritization;
  v12->_revision = revision;
  v13 = getFramePreferredPixelFormats();
  framePreferredPixelFormats = v12->_framePreferredPixelFormats;
  v12->_framePreferredPixelFormats = v13;

  v15 = getFrameSupportedPixelFormats();
  frameSupportedPixelFormats = v12->_frameSupportedPixelFormats;
  v12->_frameSupportedPixelFormats = v15;

  v17 = v12;
LABEL_4:

  return v17;
}

+ (int64_t)defaultRevision
{
  v2 = +[DVPFrameRateConversionConfiguration supportedRevisions];
  lastIndex = [v2 lastIndex];

  return lastIndex;
}

+ (BOOL)isSupportedRevision:(int64_t)revision
{
  v4 = +[DVPFrameRateConversionConfiguration supportedRevisions];
  v5 = [v4 containsIndex:revision];
  if (revision == -1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

@end