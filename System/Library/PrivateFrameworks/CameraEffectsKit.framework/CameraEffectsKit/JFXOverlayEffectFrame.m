@interface JFXOverlayEffectFrame
+ (id)frameWithEffect:(id)a3 relativeToSize:(CGSize)a4 origin:(int)a5 time:(id *)a6 forcePosterFrame:(BOOL)a7 includeDropShadow:(BOOL)a8 includeTextFrames:(BOOL)a9;
- (BOOL)isTrackedButTrackingUnavailable;
- (CGPoint)overlayCenter;
- (JFXOverlayEffectFrame)initWithEffect:(id)a3 relativeToSize:(CGSize)a4 origin:(int)a5 time:(id *)a6 forcePosterFrame:(BOOL)a7 includeDropShadow:(BOOL)a8 includeTextFrames:(BOOL)a9;
- (id)description;
@end

@implementation JFXOverlayEffectFrame

+ (id)frameWithEffect:(id)a3 relativeToSize:(CGSize)a4 origin:(int)a5 time:(id *)a6 forcePosterFrame:(BOOL)a7 includeDropShadow:(BOOL)a8 includeTextFrames:(BOOL)a9
{
  v9 = a9;
  v10 = a8;
  v11 = a7;
  v13 = *&a5;
  height = a4.height;
  width = a4.width;
  v17 = a3;
  v18 = [a1 alloc];
  v21 = *a6;
  v19 = [v18 initWithEffect:v17 relativeToSize:v13 origin:&v21 time:v11 forcePosterFrame:v10 includeDropShadow:v9 includeTextFrames:{width, height}];

  return v19;
}

- (JFXOverlayEffectFrame)initWithEffect:(id)a3 relativeToSize:(CGSize)a4 origin:(int)a5 time:(id *)a6 forcePosterFrame:(BOOL)a7 includeDropShadow:(BOOL)a8 includeTextFrames:(BOOL)a9
{
  v9 = a9;
  v10 = a8;
  v11 = a7;
  v13 = *&a5;
  height = a4.height;
  width = a4.width;
  v17 = a3;
  v28.receiver = self;
  v28.super_class = JFXOverlayEffectFrame;
  v27 = *a6;
  v18 = [(JFXTextEffectFrame *)&v28 initWithEffect:v17 relativeToSize:v13 origin:&v27 time:v11 forcePosterFrame:v10 includeDropShadow:v9 includeTextFrames:width, height];
  if (v18)
  {
    v19 = [v17 renderEffect];
    v20 = [v17 trackingProps];
    if (v20)
    {
      v21 = [v17 trackingProps];
      v18->_trackingType = [v21 currentTrackingType];
    }

    else
    {
      v18->_trackingType = 0;
    }

    v22 = [JFXOverlayEffectTransforms transformsWithEffect:v17];
    [(JFXTextEffectFrame *)v18 setTransforms:v22];

    v27 = *a6;
    [v17 effectCenterAtTime:&v27 forcePosterFrame:v11 includeTransformAnimation:1 includePlayableAspectScale:1 relativeTo:v13 basisOrigin:{0.0, 0.0, width, height}];
    [(JFXOverlayEffectFrame *)v18 setOverlayCenter:?];
    [v17 hitAreaScale];
    v27 = *a6;
    v23 = [v19 hitAreaPointsAtTime:&v27 forcePosterFrame:v11 includeDropShadow:0 scale:v13 viewSize:? viewOrigin:?];
    [(JFXTextEffectFrame *)v18 setHitAreaPoints:v23];

    path = 0;
    v27 = *a6;
    v24 = [v17 newPathsForHitTestingAtTime:&v27 forcePosterFrame:v11 relativeTo:v13 basisOrigin:1 adjustForMinimumSize:&path normalizedMinimumSize:0.0 outExpandedPath:{0.0, width, height, 44.0 / width, 44.0 / height}];
    [(JFXTextEffectFrame *)v18 setHitAreaPath:v24];
    [(JFXTextEffectFrame *)v18 setExpandedHitAreaPath:path];
    CGPathRelease(v24);
    CGPathRelease(path);
  }

  return v18;
}

- (BOOL)isTrackedButTrackingUnavailable
{
  if (![(JFXOverlayEffectFrame *)self trackingType])
  {
    return 0;
  }

  v3 = [(JFXTextEffectFrame *)self transforms];
  v4 = [v3 faceTrackingTransform];
  v5 = v4 == 0;

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