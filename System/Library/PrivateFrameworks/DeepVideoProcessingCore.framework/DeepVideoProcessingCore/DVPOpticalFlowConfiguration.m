@interface DVPOpticalFlowConfiguration
+ (BOOL)isSupportedRevision:(int64_t)a3;
+ (CGSize)getFlowBufferDimensionsFromFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 revision:(int64_t)a5;
+ (int64_t)defaultRevision;
- (DVPOpticalFlowConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 qualityPrioritization:(int64_t)a5 revision:(int64_t)a6;
- (void)updateOpticalFlowDimensions;
@end

@implementation DVPOpticalFlowConfiguration

+ (CGSize)getFlowBufferDimensionsFromFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 revision:(int64_t)a5
{
  if (a5 == 1)
  {
    FlowDimensionFromUsage = getFlowDimensionFromUsage(a3, a4);
  }

  else
  {
    FlowDimensionFromUsage = FRCGetFlowDimensionFromUsage(a3, a4);
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
  v3 = [v2 lastIndex];

  return v3;
}

+ (BOOL)isSupportedRevision:(int64_t)a3
{
  v4 = +[DVPOpticalFlowConfiguration supportedRevisions];
  v5 = [v4 containsIndex:a3];
  if (a3 == -1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (DVPOpticalFlowConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 qualityPrioritization:(int64_t)a5 revision:(int64_t)a6
{
  v18.receiver = self;
  v18.super_class = DVPOpticalFlowConfiguration;
  v10 = [(DVPOpticalFlowConfiguration *)&v18 init];
  if (!v10)
  {
    goto LABEL_9;
  }

  if (![DVPOpticalFlowConfiguration isSupportedRevision:a6])
  {
    NSLog(&cfstr_ErrorInvalidDv_1.isa, a6);
LABEL_9:
    v16 = 0;
    goto LABEL_7;
  }

  v10->_frameWidth = a3;
  v10->_frameHeight = a4;
  v10->_qualityPrioritization = a5;
  v10->_revision = a6;
  if (a6 == -1)
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