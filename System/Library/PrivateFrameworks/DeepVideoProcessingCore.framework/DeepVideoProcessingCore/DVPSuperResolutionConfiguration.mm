@interface DVPSuperResolutionConfiguration
+ (BOOL)isSupportedRevision:(int64_t)revision;
+ (int64_t)defaultRevision;
- (DVPSuperResolutionConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height scaleFactor:(int64_t)factor inputType:(int64_t)type usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision;
@end

@implementation DVPSuperResolutionConfiguration

- (DVPSuperResolutionConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height scaleFactor:(int64_t)factor inputType:(int64_t)type usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision
{
  v22.receiver = self;
  v22.super_class = DVPSuperResolutionConfiguration;
  v15 = [(DVPSuperResolutionConfiguration *)&v22 init];
  if (!v15)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_13;
  }

  if (type == 1)
  {
    if ((width - 1441) <= 0xFFFFFFFFFFFFFA5FLL)
    {
LABEL_4:
      NSLog(&cfstr_InvalidInputWi.isa);
LABEL_13:
      v20 = 0;
      goto LABEL_9;
    }
  }

  else if ((width - 1921) <= 0xFFFFFFFFFFFFF87FLL)
  {
    goto LABEL_4;
  }

  if ((height - 1081) <= 0xFFFFFFFFFFFFFBC7)
  {
    NSLog(&cfstr_InvalidInputHe.isa);
    goto LABEL_13;
  }

  if (![DVPSuperResolutionConfiguration isSupportedRevision:revision])
  {
    NSLog(&cfstr_ErrorInvalidDv.isa, revision);
    goto LABEL_13;
  }

  v15->_usePrecomputedFlow = flow;
  v15->_qualityPrioritization = prioritization;
  v15->_frameWidth = width;
  v15->_frameHeight = height;
  v15->_scaleFactor = factor;
  v15->_revision = revision;
  v16 = getFramePreferredPixelFormats();
  framePreferredPixelFormats = v15->_framePreferredPixelFormats;
  v15->_framePreferredPixelFormats = v16;

  v18 = getFrameSupportedPixelFormats();
  frameSupportedPixelFormats = v15->_frameSupportedPixelFormats;
  v15->_frameSupportedPixelFormats = v18;

  v20 = v15;
LABEL_9:

  return v20;
}

+ (int64_t)defaultRevision
{
  v2 = +[DVPSuperResolutionConfiguration supportedRevisions];
  lastIndex = [v2 lastIndex];

  return lastIndex;
}

+ (BOOL)isSupportedRevision:(int64_t)revision
{
  v4 = +[DVPSuperResolutionConfiguration supportedRevisions];
  LOBYTE(revision) = [v4 containsIndex:revision];

  return revision;
}

@end