@interface DVPSuperResolutionConfiguration
+ (BOOL)isSupportedRevision:(int64_t)a3;
+ (int64_t)defaultRevision;
- (DVPSuperResolutionConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 scaleFactor:(int64_t)a5 inputType:(int64_t)a6 usePrecomputedFlow:(BOOL)a7 qualityPrioritization:(int64_t)a8 revision:(int64_t)a9;
@end

@implementation DVPSuperResolutionConfiguration

- (DVPSuperResolutionConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 scaleFactor:(int64_t)a5 inputType:(int64_t)a6 usePrecomputedFlow:(BOOL)a7 qualityPrioritization:(int64_t)a8 revision:(int64_t)a9
{
  v22.receiver = self;
  v22.super_class = DVPSuperResolutionConfiguration;
  v15 = [(DVPSuperResolutionConfiguration *)&v22 init];
  if (!v15)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_13;
  }

  if (a6 == 1)
  {
    if ((a3 - 1441) <= 0xFFFFFFFFFFFFFA5FLL)
    {
LABEL_4:
      NSLog(&cfstr_InvalidInputWi.isa);
LABEL_13:
      v20 = 0;
      goto LABEL_9;
    }
  }

  else if ((a3 - 1921) <= 0xFFFFFFFFFFFFF87FLL)
  {
    goto LABEL_4;
  }

  if ((a4 - 1081) <= 0xFFFFFFFFFFFFFBC7)
  {
    NSLog(&cfstr_InvalidInputHe.isa);
    goto LABEL_13;
  }

  if (![DVPSuperResolutionConfiguration isSupportedRevision:a9])
  {
    NSLog(&cfstr_ErrorInvalidDv.isa, a9);
    goto LABEL_13;
  }

  v15->_usePrecomputedFlow = a7;
  v15->_qualityPrioritization = a8;
  v15->_frameWidth = a3;
  v15->_frameHeight = a4;
  v15->_scaleFactor = a5;
  v15->_revision = a9;
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
  v3 = [v2 lastIndex];

  return v3;
}

+ (BOOL)isSupportedRevision:(int64_t)a3
{
  v4 = +[DVPSuperResolutionConfiguration supportedRevisions];
  LOBYTE(a3) = [v4 containsIndex:a3];

  return a3;
}

@end