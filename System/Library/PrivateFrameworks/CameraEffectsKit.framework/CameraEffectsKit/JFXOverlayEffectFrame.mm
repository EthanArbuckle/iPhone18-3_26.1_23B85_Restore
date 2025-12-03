@interface JFXOverlayEffectFrame
+ (id)frameWithEffect:(id)effect relativeToSize:(CGSize)size origin:(int)origin time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeTextFrames:(BOOL)frames;
- (BOOL)isTrackedButTrackingUnavailable;
- (CGPoint)overlayCenter;
- (JFXOverlayEffectFrame)initWithEffect:(id)effect relativeToSize:(CGSize)size origin:(int)origin time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeTextFrames:(BOOL)frames;
- (id)description;
@end

@implementation JFXOverlayEffectFrame

+ (id)frameWithEffect:(id)effect relativeToSize:(CGSize)size origin:(int)origin time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeTextFrames:(BOOL)frames
{
  framesCopy = frames;
  shadowCopy = shadow;
  frameCopy = frame;
  v13 = *&origin;
  height = size.height;
  width = size.width;
  effectCopy = effect;
  v18 = [self alloc];
  v21 = *time;
  v19 = [v18 initWithEffect:effectCopy relativeToSize:v13 origin:&v21 time:frameCopy forcePosterFrame:shadowCopy includeDropShadow:framesCopy includeTextFrames:{width, height}];

  return v19;
}

- (JFXOverlayEffectFrame)initWithEffect:(id)effect relativeToSize:(CGSize)size origin:(int)origin time:(id *)time forcePosterFrame:(BOOL)frame includeDropShadow:(BOOL)shadow includeTextFrames:(BOOL)frames
{
  framesCopy = frames;
  shadowCopy = shadow;
  frameCopy = frame;
  v13 = *&origin;
  height = size.height;
  width = size.width;
  effectCopy = effect;
  v28.receiver = self;
  v28.super_class = JFXOverlayEffectFrame;
  v27 = *time;
  height = [(JFXTextEffectFrame *)&v28 initWithEffect:effectCopy relativeToSize:v13 origin:&v27 time:frameCopy forcePosterFrame:shadowCopy includeDropShadow:framesCopy includeTextFrames:width, height];
  if (height)
  {
    renderEffect = [effectCopy renderEffect];
    trackingProps = [effectCopy trackingProps];
    if (trackingProps)
    {
      trackingProps2 = [effectCopy trackingProps];
      height->_trackingType = [trackingProps2 currentTrackingType];
    }

    else
    {
      height->_trackingType = 0;
    }

    v22 = [JFXOverlayEffectTransforms transformsWithEffect:effectCopy];
    [(JFXTextEffectFrame *)height setTransforms:v22];

    v27 = *time;
    [effectCopy effectCenterAtTime:&v27 forcePosterFrame:frameCopy includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:v13 basisOrigin:{0.0, 0.0, width, height}];
    [(JFXOverlayEffectFrame *)height setOverlayCenter:?];
    [effectCopy hitAreaScale];
    v27 = *time;
    v23 = [renderEffect hitAreaPointsAtTime:&v27 forcePosterFrame:frameCopy includeDropShadow:0 scale:v13 viewSize:? viewOrigin:?];
    [(JFXTextEffectFrame *)height setHitAreaPoints:v23];

    path = 0;
    v27 = *time;
    v24 = [effectCopy newPathsForHitTestingAtTime:&v27 forcePosterFrame:frameCopy relativeTo:v13 basisOrigin:1 adjustForMinimumSize:&path normalizedMinimumSize:0.0 outExpandedPath:{0.0, width, height, 44.0 / width, 44.0 / height}];
    [(JFXTextEffectFrame *)height setHitAreaPath:v24];
    [(JFXTextEffectFrame *)height setExpandedHitAreaPath:path];
    CGPathRelease(v24);
    CGPathRelease(path);
  }

  return height;
}

- (BOOL)isTrackedButTrackingUnavailable
{
  if (![(JFXOverlayEffectFrame *)self trackingType])
  {
    return 0;
  }

  transforms = [(JFXTextEffectFrame *)self transforms];
  faceTrackingTransform = [transforms faceTrackingTransform];
  v5 = faceTrackingTransform == 0;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = JFXOverlayEffectFrame;
  v4 = [(JFXTextEffectFrame *)&v8 description];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[JFXOverlayEffectFrame trackingType](self, "trackingType")}];
  v6 = [v3 stringWithFormat:@"%@\ntrackingType: %@", v4, v5];

  return v6;
}

- (CGPoint)overlayCenter
{
  x = self->_overlayCenter.x;
  y = self->_overlayCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end