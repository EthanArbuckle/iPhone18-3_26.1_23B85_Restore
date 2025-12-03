@interface DVPOpticalFlowConfiguration
+ (BOOL)isSupportedRevision:(int64_t)revision;
+ (CGSize)getFlowBufferDimensionsFromFrameWidth:(int64_t)width frameHeight:(int64_t)height revision:(int64_t)revision;
+ (int64_t)defaultRevision;
- (DVPOpticalFlowConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision;
- (void)updateOpticalFlowDimensions;
@end

@implementation DVPOpticalFlowConfiguration

+ (CGSize)getFlowBufferDimensionsFromFrameWidth:(int64_t)width frameHeight:(int64_t)height revision:(int64_t)revision
{
  if (revision == 1)
  {
    FlowDimensionFromUsage = getFlowDimensionFromUsage(width, height);
  }

  else
  {
    FlowDimensionFromUsage = FRCGetFlowDimensionFromUsage(width, height);
    v6 = v7 + v7;
  }

  result.height = v6;
  result.width = FlowDimensionFromUsage;
  return result;
}

- (void)updateOpticalFlowDimensions
{
  [DVPOpticalFlowConfiguration getFlowBufferDimensionsFromFrameWidth:self->_frameWidth frameHeight:self->_frameHeight revision:self->_revision];
  self->_flowBufferWidth = v3;
  self->_flowBufferHeight = v4;
}

+ (int64_t)defaultRevision
{
  v2 = +[DVPOpticalFlowConfiguration supportedRevisions];
  lastIndex = [v2 lastIndex];

  return lastIndex;
}

+ (BOOL)isSupportedRevision:(int64_t)revision
{
  v4 = +[DVPOpticalFlowConfiguration supportedRevisions];
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

- (DVPOpticalFlowConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision
{
  v18.receiver = self;
  v18.super_class = DVPOpticalFlowConfiguration;
  v10 = [(DVPOpticalFlowConfiguration *)&v18 init];
  if (!v10)
  {
    goto LABEL_9;
  }

  if (![DVPOpticalFlowConfiguration isSupportedRevision:revision])
  {
    NSLog(&cfstr_ErrorInvalidDv_1.isa, revision);
LABEL_9:
    v16 = 0;
    goto LABEL_7;
  }

  v10->_frameWidth = width;
  v10->_frameHeight = height;
  v10->_qualityPrioritization = prioritization;
  v10->_revision = revision;
  if (revision == -1)
  {
    v11 = 1278226536;
  }

  else
  {
    v11 = 843264104;
  }

  v10->_flowBufferPixelFormat = v11;
  v12 = getFramePreferredPixelFormats();
  framePreferredPixelFormats = v10->_framePreferredPixelFormats;
  v10->_framePreferredPixelFormats = v12;

  v14 = getFrameSupportedPixelFormats();
  frameSupportedPixelFormats = v10->_frameSupportedPixelFormats;
  v10->_frameSupportedPixelFormats = v14;

  [(DVPOpticalFlowConfiguration *)v10 updateOpticalFlowDimensions];
  v16 = v10;
LABEL_7:

  return v16;
}

@end