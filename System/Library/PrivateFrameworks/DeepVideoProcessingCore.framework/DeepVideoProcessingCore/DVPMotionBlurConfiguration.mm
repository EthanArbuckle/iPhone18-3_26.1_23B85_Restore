@interface DVPMotionBlurConfiguration
+ (BOOL)isSupportedRevision:(int64_t)a3;
+ (int64_t)defaultRevision;
- (DVPMotionBlurConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 qualityPrioritization:(int64_t)a6 revision:(int64_t)a7;
@end

@implementation DVPMotionBlurConfiguration

- (DVPMotionBlurConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 qualityPrioritization:(int64_t)a6 revision:(int64_t)a7
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

  if (![DVPMotionBlurConfiguration isSupportedRevision:a7])
  {
    NSLog(&cfstr_ErrorInvalidDv_3.isa, a7);
    goto LABEL_7;
  }

  v12->_usePrecomputedFlow = a5;
  v12->_qualityPrioritization = a6;
  v12->_frameWidth = a3;
  v12->_frameHeight = a4;
  v12->_revision = a7;
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
  v3 = [v2 lastIndex];

  return v3;
}

+ (BOOL)isSupportedRevision:(int64_t)a3
{
  v4 = +[DVPMotionBlurConfiguration supportedRevisions];
  LOBYTE(a3) = [v4 containsIndex:a3];

  return a3;
}

@end