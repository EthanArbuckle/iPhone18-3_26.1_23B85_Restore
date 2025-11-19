@interface CinematicFramingDirector
- (CGRect)currentViewport;
- (CGRect)deadband;
- (CGRect)idealViewport;
- (CGRect)slackViewport;
- (CGRect)targetViewport;
- (CinematicFramingDirector)initWithFramingSpaceManager:(id)a3;
- (void)computeSceneFramingForMetadata:(id)a3;
- (void)reset;
- (void)resetCameraViewport:(CGRect)a3;
- (void)setOptions:(id)a3;
- (void)setZoomLevel:(float)a3;
- (void)updateWithMetadata:(id)a3;
@end

@implementation CinematicFramingDirector

- (CinematicFramingDirector)initWithFramingSpaceManager:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CinematicFramingDirector;
  v6 = [(CinematicFramingDirector *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_framingSpaceManager, a3);
    v8 = objc_alloc_init(CinematicTracker);
    tracker = v7->_tracker;
    v7->_tracker = v8;

    v10 = [[RectangleAnimator alloc] initWithFramingSpaceManager:v5];
    rectangleAnimator = v7->_rectangleAnimator;
    v7->_rectangleAnimator = v10;

    v12 = [[SceneFramingEngine alloc] initWithFramingSpaceManager:v5];
    sceneFramingEngine = v7->_sceneFramingEngine;
    v7->_sceneFramingEngine = v12;
  }

  return v7;
}

- (void)setOptions:(id)a3
{
  objc_storeStrong(&self->_options, a3);
  v5 = a3;
  [(CinematicTracker *)self->_tracker setOptions:v5];
  [(RectangleAnimator *)self->_rectangleAnimator setOptions:v5];
  [(SceneFramingEngine *)self->_sceneFramingEngine setOptions:v5];
}

- (void)updateWithMetadata:(id)a3
{
  v4 = a3;
  tracker = self->_tracker;
  v6 = [v4 faceDetections];
  v7 = [v4 bodyDetections];
  if (v4)
  {
    [v4 timestamp];
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  [(CinematicTracker *)tracker processFaceDetections:v6 bodyDetections:v7 atTime:&v16 inView:self->_targetViewport.origin.x, self->_targetViewport.origin.y, self->_targetViewport.size.width, self->_targetViewport.size.height];

  [(CinematicFramingDirector *)self computeSceneFramingForMetadata:v4];
  v8 = [(CinematicFramingDirector *)self options];
  v9 = [v8 shouldDisableTransitions];

  if (v9)
  {
    size = self->_targetViewport.size;
    self->_currentViewport.origin = self->_targetViewport.origin;
    self->_currentViewport.size = size;
  }

  else
  {
    [(RectangleAnimator *)self->_rectangleAnimator rectangle];
    CGRectIsNull(v19);
    rectangleAnimator = self->_rectangleAnimator;
    if (v4)
    {
      [v4 timestamp];
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    [(RectangleAnimator *)rectangleAnimator driveAnimationToTarget:&v16 atTime:self->_targetViewport.origin.x, self->_targetViewport.origin.y, self->_targetViewport.size.width, self->_targetViewport.size.height];
    self->_currentViewport.origin.x = v12;
    self->_currentViewport.origin.y = v13;
    self->_currentViewport.size.width = v14;
    self->_currentViewport.size.height = v15;
  }
}

- (void)resetCameraViewport:(CGRect)a3
{
  [(RectangleAnimator *)self->_rectangleAnimator resetToRectangle:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  sceneFramingEngine = self->_sceneFramingEngine;

  [(SceneFramingEngine *)sceneFramingEngine reset];
}

- (void)reset
{
  [(SceneFramingEngine *)self->_sceneFramingEngine reset];
  rectangleAnimator = self->_rectangleAnimator;
  [(SceneFramingEngine *)self->_sceneFramingEngine defaultViewport];
  [(RectangleAnimator *)rectangleAnimator resetToRectangle:?];
  [(SceneFramingEngine *)self->_sceneFramingEngine defaultViewport];
  self->_currentViewport.origin.x = v4;
  self->_currentViewport.origin.y = v5;
  self->_currentViewport.size.width = v6;
  self->_currentViewport.size.height = v7;
  [(SceneFramingEngine *)self->_sceneFramingEngine defaultViewport];
  self->_targetViewport.origin.x = v8;
  self->_targetViewport.origin.y = v9;
  self->_targetViewport.size.width = v10;
  self->_targetViewport.size.height = v11;
}

- (CGRect)idealViewport
{
  [(SceneFramingEngine *)self->_sceneFramingEngine idealViewport];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)slackViewport
{
  [(SceneFramingEngine *)self->_sceneFramingEngine slackViewport];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)deadband
{
  [(SceneFramingEngine *)self->_sceneFramingEngine deadband];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setZoomLevel:(float)a3
{
  self->_currentViewport.size.width = a3;
  self->_currentViewport.size.height = a3;
  [(RectangleAnimator *)self->_rectangleAnimator resetToRectangle:self->_currentViewport.origin.x, self->_currentViewport.origin.y, a3, a3];
}

- (void)computeSceneFramingForMetadata:(id)a3
{
  v4 = a3;
  v5 = [(CinematicTracker *)self->_tracker tracks];
  framingSpaceManager = self->_framingSpaceManager;
  [(RectangleAnimator *)self->_rectangleAnimator rectangle];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (v4)
  {
    [v4 timestamp];
  }

  else
  {
    v81 = 0uLL;
    v82 = 0;
  }

  options = self->_options;
  v16 = v5;
  v17 = framingSpaceManager;
  v67 = options;
  if (![v16 count] || (v96.origin.x = v8, v96.origin.y = v10, v96.size.width = v12, v96.size.height = v14, CGRectIsNull(v96)))
  {
    v18 = v16;
    goto LABEL_30;
  }

  v85 = MEMORY[0x277D85DD0];
  v86 = 3221225472;
  v87 = __filterTracksThatCanFitInView_block_invoke;
  v88 = &__block_descriptor_88_e11_q24__0_8_16l;
  v93 = v81;
  v94 = v82;
  v89 = v8;
  v90 = v10;
  v91 = v12;
  v92 = v14;
  v19 = [v16 sortedArrayUsingComparator:&v85];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v19, "count")}];
  if ([v19 count])
  {
    v20 = 0;
    v21 = *(MEMORY[0x277CBF398] + 8);
    r1 = *MEMORY[0x277CBF398];
    v22 = *(MEMORY[0x277CBF398] + 16);
    v23 = *(MEMORY[0x277CBF398] + 24);
    v24 = *"fff?";
    do
    {
      v80 = v21;
      v25 = [v19 objectAtIndexedSubscript:v20];
      v83 = v81;
      v84 = v82;
      [v25 faceBoundingBoxForFramingAtTime:&v83];
      v111.origin.x = v26;
      v111.origin.y = v27;
      v111.size.width = v28;
      v111.size.height = v29;
      v97.origin.x = r1;
      v97.origin.y = v21;
      v97.size.width = v22;
      v97.size.height = v23;
      r1_8 = v111.origin.y;
      r1_16 = v111.origin.x;
      r1_24 = v111.size.height;
      width = v111.size.width;
      v98 = CGRectUnion(v97, v111);
      v30 = v22;
      x = v98.origin.x;
      y = v98.origin.y;
      v33 = v98.size.width;
      height = v98.size.height;
      if ([v25 isTrackedByDirector])
      {
        v35 = v24;
      }

      else
      {
        v35 = 0.75;
      }

      v74 = x;
      v99.origin.x = x;
      v99.origin.y = y;
      v72 = height;
      v73 = v33;
      v99.size.width = v33;
      v99.size.height = height;
      v36 = CGRectGetWidth(v99);
      [(FramingSpaceManager *)v17 maxAllowedViewportWidth];
      if (v36 <= (v35 * v37))
      {
        rect_24 = v23;
        v38 = [v25 isTrackedByDirector];
        v39 = [v25 isTrackedByDirector];
        [(FramingSpaceManager *)v17 framingSpaceBounds];
        v40 = v100.origin.x;
        v41 = v100.origin.y;
        v42 = v100.size.width;
        v43 = v100.size.height;
        MinX = CGRectGetMinX(v100);
        v101.origin.x = v40;
        v101.origin.y = v41;
        v101.size.width = v42;
        v101.size.height = v43;
        v45 = CGRectGetWidth(v101);
        v46 = 0.100000001;
        if (v38)
        {
          v46 = 0.0500000007;
        }

        rect_8 = v46;
        v47 = MinX + v45 * v46;
        rect = v47;
        v102.origin.x = v40;
        v102.origin.y = v41;
        v102.size.width = v42;
        v102.size.height = v43;
        MinY = CGRectGetMinY(v102);
        v103.origin.x = r1_16;
        v103.origin.y = r1_8;
        v103.size.height = r1_24;
        v103.size.width = width;
        v49 = fmin(MinY, CGRectGetMinY(v103));
        v68 = v49;
        v104.origin.x = v40;
        v104.origin.y = v41;
        v104.size.width = v42;
        v104.size.height = v43;
        MaxY = CGRectGetMaxY(v104);
        v105.origin.x = v40;
        v105.origin.y = v41;
        v105.size.width = v42;
        v105.size.height = v43;
        v51 = CGRectGetHeight(v105);
        v52 = 0.0199999996;
        if (!v39)
        {
          v52 = 0.0500000007;
        }

        v53 = MaxY - v51 * v52 - v68;
        v106.origin.x = v40;
        v106.origin.y = v41;
        v106.size.width = v42;
        v106.size.height = v43;
        v54 = (rect_8 * -2.0 + 1.0) * CGRectGetWidth(v106);
        v107.origin.x = r1_16;
        v107.origin.y = r1_8;
        v107.size.width = width;
        v107.size.height = r1_24;
        MidX = CGRectGetMidX(v107);
        v108.origin.x = r1_16;
        v108.origin.y = r1_8;
        v108.size.width = width;
        v108.size.height = r1_24;
        v95.y = CGRectGetMidY(v108);
        v109.origin.x = rect;
        v109.origin.y = v68;
        v109.size.width = v54;
        v109.size.height = v53;
        v95.x = MidX;
        if (CGRectContainsPoint(v109, v95))
        {
          if ([v25 isTrackedByDirector])
          {
            [(CinematicFramingSessionOptions *)v67 tinyHeadMinValue];
          }

          else
          {
            [(CinematicFramingSessionOptions *)v67 tinyHeadMaxValue];
          }

          v57 = v56;
          v22 = v30;
          v23 = rect_24;
          v21 = v80;
          v83 = v81;
          v84 = v82;
          [v25 faceBoundingBoxForFramingAtTime:&v83];
          if (CGRectGetWidth(v110) >= v57)
          {
            [v25 setIsTrackedByDirector:1];
            [v18 addObject:v25];
            v23 = v72;
            v22 = v73;
            v21 = y;
            r1 = v74;
          }

          else
          {
            [v25 setIsTrackedByDirector:0];
          }

          v24 = *"fff?";
          goto LABEL_28;
        }

        [v25 setIsTrackedByDirector:0];
        v24 = *"fff?";
        v22 = v30;
        v23 = rect_24;
      }

      else
      {
        [v25 setIsTrackedByDirector:0];
        v22 = v30;
      }

      v21 = v80;
LABEL_28:

      ++v20;
    }

    while (v20 < [v19 count]);
  }

LABEL_30:
  v58 = [v18 count];
  v59 = [(CinematicFramingDirector *)self options];
  v60 = v59;
  if (v58 <= 1)
  {
    [v59 singlePersonFramingParameters];
  }

  else
  {
    [v59 multiPersonFramingParameters];
  }
  v61 = ;

  [(SceneFramingEngine *)self->_sceneFramingEngine setActiveFramingParameters:v61];
  sceneFramingEngine = self->_sceneFramingEngine;
  if (v4)
  {
    [v4 timestamp];
  }

  else
  {
    v85 = 0;
    v86 = 0;
    v87 = 0;
  }

  [(SceneFramingEngine *)sceneFramingEngine updateTargetViewportWithTracks:v18 currentViewport:&v85 atTime:self->_currentViewport.origin.x, self->_currentViewport.origin.y, self->_currentViewport.size.width, self->_currentViewport.size.height];
  [(SceneFramingEngine *)self->_sceneFramingEngine targetViewport];
  self->_targetViewport.origin.x = v63;
  self->_targetViewport.origin.y = v64;
  self->_targetViewport.size.width = v65;
  self->_targetViewport.size.height = v66;
}

- (CGRect)currentViewport
{
  x = self->_currentViewport.origin.x;
  y = self->_currentViewport.origin.y;
  width = self->_currentViewport.size.width;
  height = self->_currentViewport.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)targetViewport
{
  x = self->_targetViewport.origin.x;
  y = self->_targetViewport.origin.y;
  width = self->_targetViewport.size.width;
  height = self->_targetViewport.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end