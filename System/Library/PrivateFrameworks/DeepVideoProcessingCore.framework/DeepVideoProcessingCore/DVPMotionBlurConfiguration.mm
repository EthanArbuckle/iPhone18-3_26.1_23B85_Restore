@interface DVPMotionBlurConfiguration
+ (BOOL)isSupportedRevision:(int64_t)revision;
+ (int64_t)defaultRevision;
- (DVPMotionBlurConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision;
@end

@implementation DVPMotionBlurConfiguration

- (DVPMotionBlurConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision
{
  v19.receiver = self;
  v19.super_class = DVPMotionBlurConfiguration;
  v12 = [(DVPMotionBlurConfiguration *)&v19 init];
  if (!v12)
  {
    NSLog(&cfstr_FailToInitiali.isa);
LABEL_7:
    v17 = 0;
    goto LABEL_4;
  }

  if (![DVPMotionBlurConfiguration isSupportedRevision:revision])
  {
    NSLog(&cfstr_ErrorInvalidDv_3.isa, revision);
    goto LABEL_7;
  }

  v12->_usePrecomputedFlow = flow;
  v12->_qualityPrioritization = prioritization;
  v12->_frameWidth = width;
  v12->_frameHeight = height;
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
  v2 = +[DVPMotionBlurConfiguration supportedRevisions];
  lastIndex = [v2 lastIndex];

  return lastIndex;
}

+ (BOOL)isSupportedRevision:(int64_t)revision
{
  v4 = +[DVPMotionBlurConfiguration supportedRevisions];
  LOBYTE(revision) = [v4 containsIndex:revision];

  return revision;
}

@end