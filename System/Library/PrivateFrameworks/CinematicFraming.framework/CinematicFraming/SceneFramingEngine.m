@interface SceneFramingEngine
- ($680651117FADF5CC13A199869A236271)determineSceneSummaryForTracks:(SEL)a3 currentViewport:(id)a4 atTime:(CGRect)a5;
- (BOOL)isCurrentFramingIdeal:(CGRect)a3 withTolerance:(float)a4;
- (BOOL)isSubjectRectStationary:(CGRect)a3;
- (CGRect)applyNewsroomViewportAdjustments:(CGRect)a3;
- (CGRect)calculateBaselineViewportForTracks:(id)a3 atTime:(id *)a4;
- (CGRect)calculateSubjectEnclosingRectangleForTracks:(id)a3 withBaselineWidth:(float)a4 currentViewport:(CGRect)a5 atTime:(id *)a6;
- (CGRect)calculateViewportCenteredAround:(CGRect)a3 withWidth:(float)a4;
- (CGRect)computeCroppedSubjectEnclosingRectForViewportWidth:(float)a3 subjectEnclosingRect:(CGRect)a4;
- (CGRect)computeDeadbandFromViewport:(CGRect)a3;
- (CGRect)computeViewportFromDeadband:(CGRect)a3;
- (CGRect)deadband;
- (CGRect)defaultViewport;
- (CGRect)determineDeadbandForSubjectEnclosingRect:(CGRect)a3 oldDeadband:(CGRect)a4 newDeadbandWidth:(float)a5;
- (CGRect)idealViewport;
- (CGRect)slackViewport;
- (CGRect)targetViewport;
- (CGRect)undoNewsroomViewportAdjustments:(CGRect)a3;
- (SceneFramingEngine)initWithFramingSpaceManager:(id)a3;
- (float)calculateViewportWidthToFitSubjectsInDeadband:(CGRect)a3;
- (float)computeDeadbandHeightForWidth:(float)a3;
- (float)computeDeadbandWidthForHeight:(float)a3;
- (float)defaultScreenWidth;
- (float)minAllowedDeadbandWidth;
- (float)minAllowedScreenWidth;
- (void)clearSubjectHistory;
- (void)determineTemporallyStableTargetViewportForTracks:(id)a3 currentViewport:(CGRect)a4 atTime:(id *)a5;
- (void)reset;
- (void)restoreDefaultViewportFromCurrentViewport:(CGRect)a3 atTime:(id *)a4;
- (void)setActiveFramingParameters:(id)a3;
- (void)setFramingStyle:(int)a3;
- (void)transitionToFramingState:(unsigned __int16)a3 atTime:(id *)a4;
- (void)updateDeadbandToFitScene:(id *)a3 tracks:(id)a4 currentViewport:(CGRect)a5 atTime:(id *)a6;
- (void)updateDeadbandWithSubjectRect:(CGRect)a3 atTime:(id *)a4;
- (void)updateSubjectMovement:(CGRect)a3 atTime:(id *)a4;
- (void)updateTargetViewportForFloatingWithTracks:(id)a3 atTime:(id *)a4;
- (void)updateTargetViewportWithTracks:(id)a3 currentViewport:(CGRect)a4 atTime:(id *)a5;
@end

@implementation SceneFramingEngine

- (void)setActiveFramingParameters:(id)a3
{
  objc_storeStrong(&self->_activeFramingParameters, a3);
  [(SceneFramingEngine *)self targetViewport];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (!CGRectIsNull(v12))
  {
    [(SceneFramingEngine *)self computeDeadbandFromViewport:x, y, width, height];
    self->_deadband.origin.x = v8;
    self->_deadband.origin.y = v9;
    self->_deadband.size.width = v10;
    self->_deadband.size.height = v11;
  }
}

- (SceneFramingEngine)initWithFramingSpaceManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SceneFramingEngine;
  v6 = [(SceneFramingEngine *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_framingSpaceManager, a3);
    LODWORD(v7->_targetViewportForFloating.size.height) = 0;
    [(SceneFramingEngine *)v7 reset];
    v8 = v7;
  }

  return v7;
}

- (void)updateTargetViewportWithTracks:(id)a3 currentViewport:(CGRect)a4 atTime:(id *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  if ([v11 count])
  {
    v15 = *&a5->var0;
    var3 = a5->var3;
    [(SceneFramingEngine *)self determineTemporallyStableTargetViewportForTracks:v11 currentViewport:&v15 atTime:x, y, width, height];
    v12 = MEMORY[0x277CC0898];
    *&self->_recenterEndTime.epoch = *MEMORY[0x277CC0898];
    *&self->_returningHomeStartTime.timescale = *(v12 + 16);
    v13 = a5->var3;
    *&self->_lastFrameWithDetectionsTimestamp.value = *&a5->var0;
    self->_lastFrameWithDetectionsTimestamp.epoch = v13;
    v14 = 1;
  }

  else
  {
    v15 = *&a5->var0;
    var3 = a5->var3;
    [(SceneFramingEngine *)self restoreDefaultViewportFromCurrentViewport:&v15 atTime:x, y, width, height];
    v14 = 0;
  }

  self->_lastFrameHadSubjects = v14;
}

- (void)reset
{
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *MEMORY[0x277CBF398];
  self->_deadband.origin = *MEMORY[0x277CBF398];
  self->_deadband.size = v8;
  self->_idealDeadband.origin = v9;
  self->_idealDeadband.size = v8;
  self->_slackDeadband.origin = v9;
  self->_slackDeadband.size = v8;
  v3 = MEMORY[0x277CC0898];
  v7 = *MEMORY[0x277CC0898];
  *&self->_lastFrameWithDetectionsTimestamp.value = *MEMORY[0x277CC0898];
  v4 = *(v3 + 16);
  self->_lastFrameWithDetectionsTimestamp.epoch = v4;
  activeFramingParameters = self->_activeFramingParameters;
  self->_activeFramingParameters = 0;

  self->_framingState = 0;
  [(SceneFramingEngine *)self clearSubjectHistory];
  *&self->_driftStartDeadband.size.height = v7;
  *&self->_driftStartTime.timescale = v4;
  *&self->_driftStartTime.epoch = v7;
  *&self->_driftEndTime.timescale = v4;
  *&self->_recenterStartDeadband.size.height = v7;
  *&self->_recenterStartTime.timescale = v4;
  *&self->_recenterStartTime.epoch = v7;
  *&self->_recenterEndTime.timescale = v4;
  *&self->_recenterEndTime.epoch = v7;
  *&self->_returningHomeStartTime.timescale = v4;
  self->_lastFrameHadSubjects = 0;
  v6 = *&self->_floatingFramingParameters.circleSize;
  *&self->_floatingFramingParameters.circleSize = 0;

  *&self->_trackForFloating = v9;
  *&self->_targetViewportForFloating.origin.y = v8;
}

- (void)setFramingStyle:(int)a3
{
  if (a3 == 1)
  {
    *&self->_newsroomFramingParameters.viewportOffsetY = xmmword_2434F7A70;
  }

  else if ((a3 & 0xFFFFFFFE) == 2)
  {
    *&self->_returningHomeTargetRect[12] = 0x3F800000BE4CCCCDLL;
    if (a3 == 2)
    {
      v3 = -1;
    }

    else
    {
      v3 = 1;
    }

    *&self->_returningHomeTargetRect[8] = v3 * 0.2;
  }

  if (LODWORD(self->_targetViewportForFloating.size.height) != a3)
  {
    LOBYTE(self->_driftEndTime.epoch) = 1;
  }

  LODWORD(self->_targetViewportForFloating.size.height) = a3;
}

- (CGRect)defaultViewport
{
  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CinematicFramingSessionOptions *)self->_options viewportDefaultFOV];
  v12 = v11;
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  v13 = CGRectGetWidth(v28) * v12;
  v14 = v13;
  *&v13 = v14;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:v13];
  v16 = v15;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  v17 = CGRectGetMidX(v29) - (v14 * 0.5);
  [(CinematicFramingSessionOptions *)self->_options defaultViewportRotation];
  v19 = v17 - v18;
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  v20 = CGRectGetMidY(v30) - (v16 * 0.5);
  [(CinematicFramingSessionOptions *)self->_options defaultViewportRotation];
  framingSpaceManager = self->_framingSpaceManager;

  [(FramingSpaceManager *)framingSpaceManager adjustDisplayRectToFitInFramingSpace:v19, v20 - v21, v14, v16];
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)targetViewport
{
  if (LODWORD(self->_targetViewportForFloating.size.height) == 1)
  {
    trackForFloating = self->_trackForFloating;
    x = self->_targetViewportForFloating.origin.x;
    y = self->_targetViewportForFloating.origin.y;
    width = self->_targetViewportForFloating.size.width;
LABEL_6:
    [(FramingSpaceManager *)self->_framingSpaceManager adjustDisplayRectToFitInFramingSpace:*&trackForFloating, x, y, width];
    goto LABEL_7;
  }

  if (!CGRectIsNull(self->_deadband))
  {
    [(SceneFramingEngine *)self computeViewportFromDeadband:self->_deadband.origin.x, self->_deadband.origin.y, self->_deadband.size.width, self->_deadband.size.height];
    goto LABEL_6;
  }

  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v9 = *MEMORY[0x277CBF398];
  v10 = *(MEMORY[0x277CBF398] + 8);
LABEL_7:
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)idealViewport
{
  if (LODWORD(self->_targetViewportForFloating.size.height) == 1)
  {
    [(SceneFramingEngine *)self targetViewport];
  }

  else if (CGRectIsNull(self->_idealDeadband))
  {
    v5 = *(MEMORY[0x277CBF398] + 16);
    v6 = *(MEMORY[0x277CBF398] + 24);
    v3 = *MEMORY[0x277CBF398];
    v4 = *(MEMORY[0x277CBF398] + 8);
  }

  else
  {
    [(SceneFramingEngine *)self computeViewportFromDeadband:self->_idealDeadband.origin.x, self->_idealDeadband.origin.y, self->_idealDeadband.size.width, self->_idealDeadband.size.height];
    [(FramingSpaceManager *)self->_framingSpaceManager adjustDisplayRectToFitInFramingSpace:?];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)slackViewport
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  if (LODWORD(self->_targetViewportForFloating.size.height) != 1 && !CGRectIsNull(self->_slackDeadband))
  {
    [(SceneFramingEngine *)self computeViewportFromDeadband:self->_slackDeadband.origin.x, self->_slackDeadband.origin.y, self->_slackDeadband.size.width, self->_slackDeadband.size.height];
    [(FramingSpaceManager *)self->_framingSpaceManager adjustDisplayRectToFitInFramingSpace:?];
    v2 = v7;
    v3 = v8;
    v4 = v9;
    v5 = v10;
  }

  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)restoreDefaultViewportFromCurrentViewport:(CGRect)a3 atTime:(id *)a4
{
  y = a3.origin.y;
  width = a3.size.width;
  height = a3.size.height;
  x = a3.origin.x;
  v6 = MEMORY[0x277CC0898];
  if (LODWORD(self->_targetViewportForFloating.size.height) == 1)
  {
    v7 = *&self->_trackForFloating;
    v8 = self->_targetViewportForFloating.origin.x;
    v9 = self->_targetViewportForFloating.origin.y;
    v10 = self->_targetViewportForFloating.size.width;
  }

  else
  {
    v7 = self->_deadband.origin.x;
    v8 = self->_deadband.origin.y;
    v9 = self->_deadband.size.width;
    v10 = self->_deadband.size.height;
  }

  if (CGRectIsNull(*&v7) || ((time1 = self->_lastFrameWithDetectionsTimestamp, time2 = *v6, !CMTimeCompare(&time1, &time2)) ? (v11 = 0.0) : (time2 = *a4, rhs = self->_lastFrameWithDetectionsTimestamp, CMTimeSubtract(&time1, &time2, &rhs), v11 = CMTimeGetSeconds(&time1)), [(CinematicFramingSessionOptions *)self->_options noPeopleDelayBeforeReturningHomeSec], v11 > v12))
  {
    [(SceneFramingEngine *)self defaultViewport];
    v43 = v14;
    v44 = v13;
    v45 = v15;
    v42 = v16;
    p_epoch = &self->_recenterEndTime.epoch;
    time1 = *&self->_recenterEndTime.epoch;
    time2 = *v6;
    if (!CMTimeCompare(&time1, &time2))
    {
      v18 = *&a4->var0;
      *&self->_returningHomeStartTime.timescale = a4->var3;
      *p_epoch = v18;
      v19.f64[0] = width;
      v20.f64[0] = x;
      v19.f64[1] = height;
      v20.f64[1] = y;
      v21 = vcvt_hight_f32_f64(vcvt_f32_f64(v20), v19);
      v20.f64[0] = v45;
      *&v20.f64[1] = v42;
      v19.f64[0] = v44;
      v19.f64[1] = v43;
      *&self->_returningHomeStartTime.epoch = v21;
      *&self->_returningHomeStartRect[8] = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v20);
    }

    time2 = *a4;
    *&rhs.value = *p_epoch;
    rhs.epoch = *&self->_returningHomeStartTime.timescale;
    CMTimeSubtract(&time1, &time2, &rhs);
    Seconds = CMTimeGetSeconds(&time1);
    [(CinematicFramingSessionOptions *)self->_options noPeopleReturningHomeDurationSec];
    if (Seconds / v23 > 1.0 || (time2 = *a4, *&rhs.value = *p_epoch, rhs.epoch = *&self->_returningHomeStartTime.timescale, CMTimeSubtract(&time1, &time2, &rhs), v24 = CMTimeGetSeconds(&time1), [(CinematicFramingSessionOptions *)self->_options noPeopleReturningHomeDurationSec], v26 = v24 / v25, v27 = 0.0, v26 >= 0.0))
    {
      time2 = *a4;
      *&rhs.value = *p_epoch;
      rhs.epoch = *&self->_returningHomeStartTime.timescale;
      CMTimeSubtract(&time1, &time2, &rhs);
      v28 = CMTimeGetSeconds(&time1);
      [(CinematicFramingSessionOptions *)self->_options noPeopleReturningHomeDurationSec];
      v30 = v28 / v29;
      v27 = 1.0;
      if (v30 <= 1.0)
      {
        time2 = *a4;
        *&rhs.value = *p_epoch;
        rhs.epoch = *&self->_returningHomeStartTime.timescale;
        CMTimeSubtract(&time1, &time2, &rhs);
        v31 = CMTimeGetSeconds(&time1);
        [(CinematicFramingSessionOptions *)self->_options noPeopleReturningHomeDurationSec];
        v27 = v31 / v32;
      }
    }

    v33 = vmlaq_n_f32(*&self->_returningHomeStartTime.epoch, vsubq_f32(*&self->_returningHomeStartRect[8], *&self->_returningHomeStartTime.epoch), v27);
    v34 = *v33.i32;
    v35 = *&v33.i32[3];
    v50 = vcvtq_f64_f32(*&vextq_s8(v33, v33, 4uLL));
    [(SceneFramingEngine *)self computeDeadbandFromViewport:*v33.i32, v42];
    self->_deadband.origin.x = v36;
    self->_deadband.origin.y = v37;
    self->_deadband.size.width = v38;
    self->_deadband.size.height = v39;
    origin = self->_deadband.origin;
    size = self->_deadband.size;
    self->_idealDeadband.origin = origin;
    self->_idealDeadband.size = size;
    self->_slackDeadband.origin = origin;
    self->_slackDeadband.size = size;
    if (LODWORD(self->_targetViewportForFloating.size.height) == 1)
    {
      *&self->_trackForFloating = v34;
      self->_targetViewportForFloating.origin = v50;
      self->_targetViewportForFloating.size.width = v35;
    }
  }
}

- (void)determineTemporallyStableTargetViewportForTracks:(id)a3 currentViewport:(CGRect)a4 atTime:(id *)a5
{
  if (LODWORD(self->_targetViewportForFloating.size.height) == 1)
  {
    v20 = *&a5->var0;
    *&v21 = a5->var3;
    v7 = a3;
    [(SceneFramingEngine *)self updateTargetViewportForFloatingWithTracks:v7 atTime:&v20];
  }

  else
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = *&a5->var0;
    *&v16 = a5->var3;
    v12 = a3;
    [(SceneFramingEngine *)self determineSceneSummaryForTracks:v12 currentViewport:&v15 atTime:x, y, width, height];
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v15 = v20;
    v16 = v21;
    v13 = *&a5->var0;
    var3 = a5->var3;
    [(SceneFramingEngine *)self updateDeadbandToFitScene:&v15 tracks:v12 currentViewport:&v13 atTime:x, y, width, height];
  }
}

- (void)updateTargetViewportForFloatingWithTracks:(id)a3 atTime:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!*&self->_floatingFramingParameters.circleSize || ([v6 containsObject:?] & 1) == 0)
  {
    [v7 count];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v53 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v54;
      v12 = 0.0;
      do
      {
        v13 = 0;
        do
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v53 + 1) + 8 * v13);
          v50 = *&a4->var0;
          var3 = a4->var3;
          [v14 faceBoundingBoxForFramingAtTime:&v50];
          if (v15 <= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v15;
          }

          if (v17 > v12)
          {
            objc_storeStrong(&self->_floatingFramingParameters.circleSize, v14);
            v12 = v17;
          }

          ++v13;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v53 objects:v52 count:16];
      }

      while (v10);
    }
  }

  v18 = *&self->_floatingFramingParameters.circleSize;
  v50 = *&a4->var0;
  var3 = a4->var3;
  [v18 faceBoundingBoxForFramingAtTime:&v50];
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  viewportOffsetY = self->_newsroomFramingParameters.viewportOffsetY;
  viewportScale = self->_newsroomFramingParameters.viewportScale;
  MinY = CGRectGetMinY(v57);
  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v25 = CGRectGetMaxY(v58) - viewportOffsetY * height;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  v26 = CGRectGetMinX(v59) - viewportScale * width;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v47 = v25 - MinY;
  v48 = CGRectGetMaxX(v60) + viewportScale * width - v26;
  eyeBoxBottomInset = self->_floatingFramingParameters.eyeBoxBottomInset;
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  MidX = CGRectGetMidX(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  MidY = CGRectGetMidY(v62);
  if (width <= height)
  {
    v30 = height;
  }

  else
  {
    v30 = width;
  }

  v31 = v30 * 0.5 * (eyeBoxBottomInset + 1.0);
  v32 = MidX - v31;
  v33 = MidY - v31;
  v34 = v31 + v31;
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  v49 = CGRectGetMidX(v63);
  v64.origin.x = v26;
  v64.origin.y = MinY;
  v64.size.width = v48;
  v64.size.height = v47;
  v35 = CGRectGetMinX(v64) - v49;
  v45 = v35;
  v65.origin.x = v32;
  v65.origin.y = v33;
  v65.size.width = v34;
  v65.size.height = v34;
  v36 = CGRectGetMinX(v65) - v49;
  v66.origin.x = v32;
  v66.origin.y = v33;
  v66.size.width = v34;
  v66.size.height = v34;
  MaxY = CGRectGetMaxY(v66);
  v67.origin.x = v26;
  v67.origin.y = MinY;
  v67.size.width = v48;
  v67.size.height = v47;
  v38 = MaxY - CGRectGetMinY(v67);
  *&v32 = v45;
  *&MaxY = (((v36 * v36) - (*&v32 * *&v32)) + (v38 * v38)) / (v38 + v38);
  v68.origin.x = v26;
  v68.origin.y = MinY;
  v68.size.width = v48;
  v68.size.height = v47;
  v39 = CGRectGetMinY(v68) + *&MaxY;
  v40 = sqrtf((*&MaxY * *&MaxY) + (*&v32 * *&v32));
  v41 = v40 + v40;
  v42 = v41 / self->_floatingFramingParameters.eyeBoxHorizontalPadding;
  *&v41 = v42;
  [(FramingSpaceManager *)self->_framingSpaceManager getWidthForHeight:v41];
  v44 = v43;
  *&self->_trackForFloating = v49 + v44 * -0.5;
  self->_targetViewportForFloating.origin.x = v39 + v42 * -0.5;
  self->_targetViewportForFloating.origin.y = v44;
  self->_targetViewportForFloating.size.width = v42;
}

- ($680651117FADF5CC13A199869A236271)determineSceneSummaryForTracks:(SEL)a3 currentViewport:(id)a4 atTime:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v60 = *a6;
  v13 = a4;
  [(SceneFramingEngine *)self calculateBaselineViewportForTracks:v13 atTime:&v60];
  v51 = v61.size.height;
  v14 = v61.origin.x;
  v54 = v61.origin.y;
  v55 = v61.origin.x;
  v15 = v61.origin.y;
  v16 = v61.size.width;
  v53 = v61.size.width;
  v17 = CGRectGetWidth(v61);
  *&v17 = v17;
  v60 = *a6;
  [(SceneFramingEngine *)self calculateSubjectEnclosingRectangleForTracks:v13 withBaselineWidth:&v60 currentViewport:v17 atTime:x, y, width, height];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [(SceneFramingEngine *)self calculateViewportWidthToFitSubjectsInDeadband:v19, v21, v23, v25];
  LODWORD(height) = v26;
  v62.origin.x = v14;
  v62.origin.y = v15;
  v62.size.width = v16;
  v62.size.height = v51;
  v27 = fmax(CGRectGetWidth(v62), *&height);
  *&height = v27;
  LODWORD(v27) = LODWORD(height);
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:v27];
  v52 = v28;
  LODWORD(v29) = LODWORD(height);
  v58 = v21;
  v59 = v19;
  v56 = v25;
  v57 = v23;
  [(SceneFramingEngine *)self computeCroppedSubjectEnclosingRectForViewportWidth:v29 subjectEnclosingRect:v19, v21, v23, v25];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LODWORD(v30) = LODWORD(height);
  [(SceneFramingEngine *)self computeDeadbandWidthFromViewportWidth:v30];
  [(SceneFramingEngine *)self computeDeadbandHeightForWidth:?];
  v39 = v38;
  v40 = v38 * 0.125;
  v63.origin.x = v31;
  v63.origin.y = v33;
  v63.size.width = v35;
  v63.size.height = v37;
  *&v39 = fmax(fmin(v40, (v39 - CGRectGetHeight(v63)) * 0.5), 0.0);
  v64.origin.x = v31;
  v64.origin.y = v33;
  v64.size.width = v35;
  v64.size.height = v37;
  *&v35 = CGRectGetMinY(v64) - *&v39;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandTopOffsetFractionOfScreenHeight];
  *&v31 = *&v35 - (v52 * v41);
  v65.origin.x = v55;
  v65.origin.y = v54;
  v65.size.width = v53;
  v65.size.height = v51;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v55;
  v66.origin.y = v54;
  v66.size.width = v53;
  v66.size.height = v51;
  v43 = CGRectGetWidth(v66);
  v67.origin.x = v55;
  v67.origin.y = v54;
  v67.size.width = v53;
  v67.size.height = v51;
  v44 = CGRectGetHeight(v67);
  LODWORD(v45) = LODWORD(height);
  [(SceneFramingEngine *)self calculateViewportCenteredAround:MinX withWidth:*&v31, v43, v44, v45];
  if ((LODWORD(self->_targetViewportForFloating.size.height) & 0xFFFFFFFE) == 2)
  {
    [(SceneFramingEngine *)self applyNewsroomViewportAdjustments:?];
  }

  result = [(SceneFramingEngine *)self computeDeadbandFromViewport:?];
  retstr->var0.origin.x = v47;
  retstr->var0.origin.y = v48;
  retstr->var0.size.width = v49;
  retstr->var0.size.height = v50;
  retstr->var1.origin.x = v59;
  retstr->var1.origin.y = v58;
  retstr->var1.size.width = v57;
  retstr->var1.size.height = v56;
  retstr->var2 = 0;
  return result;
}

- (void)updateDeadbandToFitScene:(id *)a3 tracks:(id)a4 currentViewport:(CGRect)a5 atTime:(id *)a6
{
  v9 = a4;
  if (CGRectEqualToRect(self->_deadband, *MEMORY[0x277CBF398]) || !self->_lastFrameHadSubjects)
  {
    origin = a3->var0.origin;
    size = a3->var0.size;
    goto LABEL_6;
  }

  [(FramingSpaceManager *)self->_framingSpaceManager maxAllowedViewportWidth];
  v11 = v10;
  [(SceneFramingEngine *)self calculateViewportWidthToFitSubjectsInDeadband:a3->var1.origin.x, a3->var1.origin.y, a3->var1.size.width, a3->var1.size.height];
  v13 = v12;
  [(SceneFramingEngine *)self minAllowedDeadbandWidth];
  *&v15 = fminf(fmaxf(v14, v13), v11);
  [(SceneFramingEngine *)self computeDeadbandWidthFromViewportWidth:v15];
  v17 = v16;
  *&v18 = v11;
  [(SceneFramingEngine *)self computeDeadbandWidthFromViewportWidth:v18];
  v20 = v19;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandWidthMinFraction];
  v22 = fmin(fmax(CGRectGetWidth(self->_deadband) * v21, v17), v20);
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandWidthMaxFraction];
  v24 = v23;
  Width = CGRectGetWidth(self->_deadband);
  v26 = CGRectGetWidth(a3->var0);
  v27 = CGRectGetWidth(self->_deadband);
  if (v22 + -0.001 <= v26)
  {
    v31 = fmin(fmax(Width * v24, v17), v20);
    if (v26 + -0.001 <= v31)
    {
      v32 = v27;
      goto LABEL_12;
    }

    [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandWidthMaxFraction];
  }

  else
  {
    [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandWidthMinFraction];
  }

  v32 = v26 / v28;
LABEL_12:
  if ([v9 count] >= 2)
  {
    v33 = v32;
  }

  else
  {
    v33 = v26;
  }

  v34 = fminf(fmaxf(v33, v17), v20);
  v35 = vabdd_f64(v34, CGRectGetWidth(self->_deadband));
  v36 = v35 / CGRectGetWidth(self->_deadband);
  if (v36 > 0.100000001)
  {
    v34 = v26;
  }

  [(SceneFramingEngine *)self computeViewportFromDeadband:a3->var0.origin.x, a3->var0.origin.y, a3->var0.size.width, a3->var0.size.height];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  *&v37 = v34;
  [(SceneFramingEngine *)self computeViewportWidthFromDeadbandWidth:v37];
  LODWORD(v46) = v45;
  [(SceneFramingEngine *)self calculateViewportCenteredAround:v38 withWidth:v40, v42, v44, v46];
  [(SceneFramingEngine *)self computeDeadbandFromViewport:?];
  self->_idealDeadband.origin.x = v47;
  self->_idealDeadband.origin.y = v48;
  self->_idealDeadband.size.width = v49;
  self->_idealDeadband.size.height = v50;
  *&v59 = v34;
  [(SceneFramingEngine *)self determineDeadbandForSubjectEnclosingRect:a3->var1.origin.x oldDeadband:a3->var1.origin.y newDeadbandWidth:a3->var1.size.width, a3->var1.size.height, self->_deadband.origin.x, self->_deadband.origin.y, self->_deadband.size.width, self->_deadband.size.height, v59];
  self->_slackDeadband.origin.x = v51;
  self->_slackDeadband.origin.y = v52;
  self->_slackDeadband.size.width = v53;
  self->_slackDeadband.size.height = v54;
  if (v36 <= 0.100000001)
  {
    x = a3->var1.origin.x;
    y = a3->var1.origin.y;
    v57 = a3->var1.size.width;
    height = a3->var1.size.height;
    v60 = *&a6->var0;
    var3 = a6->var3;
    [(SceneFramingEngine *)self updateDeadbandWithSubjectRect:&v60 atTime:x, y, v57, height];
    goto LABEL_7;
  }

  origin = self->_idealDeadband.origin;
  size = self->_idealDeadband.size;
LABEL_6:
  self->_deadband.origin = origin;
  self->_deadband.size = size;
LABEL_7:
}

- (void)updateDeadbandWithSubjectRect:(CGRect)a3 atTime:(id *)a4
{
  if (LOBYTE(self->_driftEndTime.epoch) == 1)
  {
    LOBYTE(self->_driftEndTime.epoch) = 0;
    v6 = 2;
    goto LABEL_56;
  }

  framingState = self->_framingState;
  p_deadband = &self->_deadband;
  x = self->_deadband.origin.x;
  p_slackDeadband = &self->_slackDeadband;
  v11 = self->_slackDeadband.origin.x;
  y = self->_deadband.origin.y;
  width = self->_deadband.size.width;
  height = self->_deadband.size.height;
  v15 = self->_slackDeadband.origin.y;
  v16 = self->_slackDeadband.size.width;
  v17 = self->_slackDeadband.size.height;
  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = width;
  v100.size.height = height;
  MinX = CGRectGetMinX(v100);
  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = width;
  v101.size.height = height;
  MaxX = CGRectGetMaxX(v101);
  v102.origin.x = x;
  v102.origin.y = y;
  v102.size.width = width;
  v102.size.height = height;
  MinY = CGRectGetMinY(v102);
  v103.origin.x = x;
  v103.origin.y = y;
  v103.size.width = width;
  v103.size.height = height;
  MaxY = CGRectGetMaxY(v103);
  v104.origin.x = v11;
  v104.origin.y = v15;
  v104.size.width = v16;
  v104.size.height = v17;
  v19 = CGRectGetMinX(v104);
  v105.origin.x = v11;
  v105.origin.y = v15;
  v105.size.width = v16;
  v105.size.height = v17;
  v20 = CGRectGetMaxX(v105);
  v106.origin.x = v11;
  v106.origin.y = v15;
  v106.size.width = v16;
  v106.size.height = v17;
  v21 = CGRectGetMinY(v106);
  v107.origin.x = v11;
  v107.origin.y = v15;
  v107.size.width = v16;
  v107.size.height = v17;
  v22 = CGRectGetMaxY(v107);
  v23 = MaxX;
  if (MaxX >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = MaxX;
  }

  if (MaxX <= v20)
  {
    v23 = v20;
  }

  if (MinX <= v19)
  {
    v25 = v19;
  }

  else
  {
    v25 = MinX;
  }

  v26 = v24 - v25;
  if (MinX >= v19)
  {
    v27 = v19;
  }

  else
  {
    v27 = MinX;
  }

  if (MaxY >= v22)
  {
    v28 = v22;
  }

  else
  {
    v28 = MaxY;
  }

  if (MaxY > v22)
  {
    v22 = MaxY;
  }

  if (MinY <= v21)
  {
    v29 = v21;
  }

  else
  {
    v29 = MinY;
  }

  v30 = v28 - v29;
  v31 = v23 - v27;
  if (MinY >= v21)
  {
    v32 = v21;
  }

  else
  {
    v32 = MinY;
  }

  v33 = self->_framingState;
  if (v26 * v30 / (v31 * (v22 - v32)) <= 0.899999976)
  {
    if (v33 == 1)
    {
      size = self->_slackDeadband.size;
      p_deadband->origin = p_slackDeadband->origin;
      self->_deadband.size = size;
      CMTimeMakeWithSeconds(&rhs, 0.100000001, a4->var1);
      lhs = *a4;
      CMTimeAdd(&time1, &lhs, &rhs);
      *&self->_driftStartTime.epoch = time1;
    }

    v6 = 1;
  }

  else
  {
    if (v33 == 2)
    {
      if ([(SceneFramingEngine *)self isSubjectRectStationary:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height])
      {
        *&v60 = 0.01;
      }

      else
      {
        *&v60 = 0.1;
      }

      v61 = [(SceneFramingEngine *)self isCurrentFramingIdeal:self->_idealDeadband.origin.x withTolerance:self->_idealDeadband.origin.y, self->_idealDeadband.size.width, self->_idealDeadband.size.height, v60];
      time1 = *a4;
      rhs = *&self->_recenterStartTime.epoch;
      v62 = CMTimeCompare(&time1, &rhs);
      v6 = 0;
      if (v61 || (v62 & 0x80000000) == 0)
      {
        goto LABEL_56;
      }

      time1 = *&self->_recenterStartDeadband.size.height;
      Seconds = CMTimeGetSeconds(&time1);
      time1 = *&self->_recenterStartTime.epoch;
      v64 = CMTimeGetSeconds(&time1);
      time1 = *a4;
      v65 = fmin(fmax((CMTimeGetSeconds(&time1) - Seconds) / (v64 - Seconds), 0.0), 1.0);
      *&v65 = v65 * v65 * (v65 * -2.0 + 3.0);
      v96 = *&v65;
      v66 = *&self->_recenterOnNextFrame;
      v67 = self->_recenterStartDeadband.origin.x;
      v68 = self->_recenterStartDeadband.origin.y;
      v69 = self->_recenterStartDeadband.size.width;
      v111.origin.x = v66;
      v111.origin.y = v67;
      v111.size.width = v68;
      v111.size.height = v69;
      MidX = CGRectGetMidX(v111);
      v112.origin.x = v66;
      v112.origin.y = v67;
      v112.size.width = v68;
      v112.size.height = v69;
      MidY = CGRectGetMidY(v112);
      v71.f64[0] = MidX;
      v71.f64[1] = MidY;
      v72 = vcvt_f32_f64(v71);
      v73 = self->_idealDeadband.origin.x;
      v74 = self->_idealDeadband.origin.y;
      v75 = self->_idealDeadband.size.width;
      v76 = self->_idealDeadband.size.height;
      v77 = v73;
      v71.f64[0] = v74;
      v78 = v75;
      v79 = v76;
      v92 = CGRectGetMidX(*(&v71 - 8));
      v113.origin.x = v73;
      v113.origin.y = v74;
      v113.size.width = v75;
      v113.size.height = v76;
      v80 = CGRectGetMidY(v113);
      v81.f64[0] = v92;
      v81.f64[1] = v80;
      v82 = vcvt_f32_f64(*&self->_recenterStartDeadband.origin.y);
      v83 = vmla_n_f32(v82, vsub_f32(vcvt_f32_f64(self->_idealDeadband.size), v82), v96);
      self->_deadband.origin = vcvtq_f64_f32(vmla_f32(vmla_n_f32(v72, vsub_f32(vcvt_f32_f64(v81), v72), v96), 0xBF000000BF000000, v83));
      self->_deadband.size = vcvtq_f64_f32(v83);
      goto LABEL_48;
    }

    if (v33 != 1)
    {
      if (!self->_framingState)
      {
        time1 = *a4;
        [(SceneFramingEngine *)self updateSubjectMovement:&time1 atTime:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
        LODWORD(v34) = 1045220557;
        v35 = [(SceneFramingEngine *)self isCurrentFramingIdeal:self->_idealDeadband.origin.x withTolerance:self->_idealDeadband.origin.y, self->_idealDeadband.size.width, self->_idealDeadband.size.height, v34];
        if (BYTE4(self->_subjectRectHistoryUpdateTime.epoch) == 1)
        {
          v6 = framingState;
          if (!v35)
          {
            if ((self->_subjectRectStationaryTime.value & 0x100000000) != 0)
            {
              rhs = *a4;
              lhs = *&self->_subjectRectStationary;
              CMTimeSubtract(&time1, &rhs, &lhs);
              v84 = CMTimeGetSeconds(&time1);
              [(CinematicFramingSessionOptions *)self->_options deadbandRecenteringInitialDelaySec];
              v36 = v85 < v84;
            }

            else
            {
              v36 = 1;
            }

            if ((self->_recenterEndTime.value & 0x100000000) != 0)
            {
              rhs = *a4;
              lhs = *&self->_recenterStartTime.epoch;
              CMTimeSubtract(&time1, &rhs, &lhs);
              v86 = CMTimeGetSeconds(&time1);
              [(CinematicFramingSessionOptions *)self->_options deadbandRecenteringIdleDurationSec];
              if (v87 >= v86)
              {
                v36 = 0;
              }
            }

            if (v36)
            {
              v6 = 2;
            }

            else
            {
              v6 = framingState;
            }
          }

          goto LABEL_56;
        }
      }

LABEL_48:
      v6 = framingState;
      goto LABEL_56;
    }

    time1 = *a4;
    rhs = *&self->_driftStartTime.epoch;
    v38 = CMTimeCompare(&time1, &rhs);
    v6 = framingState;
    if (v38 >= 1)
    {
      rhs = *a4;
      lhs = *&self->_driftStartDeadband.size.height;
      CMTimeSubtract(&time1, &rhs, &lhs);
      v39 = CMTimeGetSeconds(&time1);
      [(CinematicFramingSessionOptions *)self->_options recenterAfterDriftDurationThreshold];
      v41 = v40 < v39;
      v42 = self->_deadband.origin.x;
      v43 = self->_deadband.origin.y;
      v44 = self->_deadband.size.width;
      v45 = self->_deadband.size.height;
      v108.origin.x = v42;
      v108.origin.y = v43;
      v108.size.width = v44;
      v108.size.height = v45;
      v94 = CGRectGetMidX(v108);
      v109.origin.x = v42;
      v109.origin.y = v43;
      v109.size.width = v44;
      v109.size.height = v45;
      v46 = CGRectGetMidY(v109);
      v47.f64[0] = v94;
      v47.f64[1] = v46;
      v48 = vcvt_f32_f64(v47);
      epoch = self->_subjectRectStationaryTime.epoch;
      v50 = self->_driftStartDeadband.origin.x;
      v51 = self->_driftStartDeadband.origin.y;
      v52 = self->_driftStartDeadband.size.width;
      v53 = epoch;
      v47.f64[0] = v50;
      v54 = v51;
      v55 = v52;
      v95 = CGRectGetMidX(*(&v47 - 8));
      *&v110.origin.x = epoch;
      v110.origin.y = v50;
      v110.size.width = v51;
      v110.size.height = v52;
      v56 = CGRectGetMidY(v110);
      v57.f64[0] = v95;
      v57.f64[1] = v56;
      v58 = vsub_f32(v48, vcvt_f32_f64(v57));
      *&epoch = sqrtf(vaddv_f32(vmul_f32(v58, v58)));
      [(CinematicFramingSessionOptions *)self->_options recenterAfterDriftOffsetThreshold];
      if (*&epoch > v59)
      {
        v41 = 1;
      }

      if ([(CinematicFramingSessionOptions *)self->_options recenterAfterDriftEnabled]&& v41)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }
  }

LABEL_56:
  if (self->_framingState != v6)
  {
    time1 = *a4;
    [SceneFramingEngine transitionToFramingState:"transitionToFramingState:atTime:" atTime:?];
  }
}

- (void)transitionToFramingState:(unsigned __int16)a3 atTime:(id *)a4
{
  if (self->_framingState != a3)
  {
    v17 = v4;
    v18 = v5;
    switch(a3)
    {
      case 2u:
        size = self->_deadband.size;
        *&self->_recenterOnNextFrame = self->_deadband.origin;
        *&self->_recenterStartDeadband.origin.y = size;
        var3 = a4->var3;
        *&self->_recenterStartDeadband.size.height = *&a4->var0;
        *&self->_recenterStartTime.timescale = var3;
        [(CinematicFramingSessionOptions *)self->_options deadbandRecenteringDurationSec];
        CMTimeMakeWithSeconds(&rhs, v13, a4->var1);
        v14 = *a4;
        CMTimeAdd(&v16, &v14, &rhs);
        *&self->_recenterStartTime.epoch = v16;
        break;
      case 1u:
        v9 = self->_deadband.size;
        *&self->_subjectRectStationaryTime.epoch = self->_deadband.origin;
        *&self->_driftStartDeadband.origin.y = v9;
        v10 = a4->var3;
        *&self->_driftStartDeadband.size.height = *&a4->var0;
        *&self->_driftStartTime.timescale = v10;
        CMTimeMakeWithSeconds(&rhs, 0.100000001, a4->var1);
        v14 = *a4;
        CMTimeAdd(&v16, &v14, &rhs);
        *&self->_driftStartTime.epoch = v16;
        break;
      case 0u:
        [(SceneFramingEngine *)self clearSubjectHistory];
        break;
    }

    self->_framingState = a3;
  }
}

- (void)clearSubjectHistory
{
  self->_subjectRectHistoryBuffer[0].origin = 0u;
  subjectRectHistoryBuffer = self->_subjectRectHistoryBuffer;
  subjectRectHistoryBuffer[9].origin = 0u;
  subjectRectHistoryBuffer[9].size = 0u;
  subjectRectHistoryBuffer[8].origin = 0u;
  subjectRectHistoryBuffer[8].size = 0u;
  subjectRectHistoryBuffer[7].origin = 0u;
  subjectRectHistoryBuffer[7].size = 0u;
  subjectRectHistoryBuffer[6].origin = 0u;
  subjectRectHistoryBuffer[6].size = 0u;
  subjectRectHistoryBuffer[5].origin = 0u;
  subjectRectHistoryBuffer[5].size = 0u;
  subjectRectHistoryBuffer[4].origin = 0u;
  subjectRectHistoryBuffer[4].size = 0u;
  subjectRectHistoryBuffer[3].origin = 0u;
  subjectRectHistoryBuffer[3].size = 0u;
  subjectRectHistoryBuffer[2].origin = 0u;
  subjectRectHistoryBuffer[2].size = 0u;
  subjectRectHistoryBuffer[1].origin = 0u;
  subjectRectHistoryBuffer[1].size = 0u;
  subjectRectHistoryBuffer->size = 0u;
  LODWORD(subjectRectHistoryBuffer[10].origin.x) = 0;
  v3 = MEMORY[0x277CC0898];
  v4 = *MEMORY[0x277CC0898];
  *(&subjectRectHistoryBuffer[10].origin + 4) = *MEMORY[0x277CC0898];
  v5 = *(v3 + 16);
  *(&subjectRectHistoryBuffer[10].size.width + 4) = v5;
  BYTE4(subjectRectHistoryBuffer[10].size.height) = 0;
  subjectRectHistoryBuffer[11].origin = v4;
  subjectRectHistoryBuffer[11].size.width = v5;
}

- (void)updateSubjectMovement:(CGRect)a3 atTime:(id *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!self->_subjectRectHistoryCount)
  {
    self->_subjectRectHistoryBuffer[0] = a3;
    *&self->_subjectRectHistoryCount = 65537;
    p_subjectRectStationary = (&self->_subjectRectHistoryHeadIdx + 1);
LABEL_10:
    v18 = *&a4->var0;
    *(p_subjectRectStationary + 2) = a4->var3;
    *p_subjectRectStationary = v18;
    return;
  }

  lhs = *a4;
  *&v20.value = *(&self->_subjectRectHistoryHeadIdx + 1);
  v20.epoch = *&self->_subjectRectHistoryUpdateTime.flags;
  CMTimeSubtract(&time, &lhs, &v20);
  Seconds = CMTimeGetSeconds(&time);
  if (Seconds >= 0.1)
  {
    subjectRectHistoryHeadIdx = self->_subjectRectHistoryHeadIdx;
    v12 = (self + 32 * subjectRectHistoryHeadIdx);
    v12[21] = x;
    v12[22] = y;
    v12[23] = width;
    v12[24] = height;
    subjectRectHistoryCount = self->_subjectRectHistoryCount;
    v14 = subjectRectHistoryCount < 9 ? subjectRectHistoryCount + 1 : 10;
    self->_subjectRectHistoryCount = v14;
    self->_subjectRectHistoryHeadIdx = subjectRectHistoryHeadIdx + 1 - 10 * ((429496730 * (subjectRectHistoryHeadIdx + 1)) >> 32);
    v15 = *&a4->var0;
    *&self->_subjectRectHistoryUpdateTime.flags = a4->var3;
    *(&self->_subjectRectHistoryHeadIdx + 1) = v15;
    v16 = [(SceneFramingEngine *)self isSubjectRectStationary:x, y, width, height];
    if (BYTE4(self->_subjectRectHistoryUpdateTime.epoch) != v16)
    {
      p_subjectRectStationary = &self->_subjectRectStationary;
      if (!v16)
      {
        BYTE4(self->_subjectRectHistoryUpdateTime.epoch) = 0;
        v19 = MEMORY[0x277CC0898];
        *p_subjectRectStationary = *MEMORY[0x277CC0898];
        *&self->_subjectRectStationaryTime.timescale = *(v19 + 16);
        return;
      }

      BYTE4(self->_subjectRectHistoryUpdateTime.epoch) = 1;
      goto LABEL_10;
    }
  }
}

- (BOOL)isSubjectRectStationary:(CGRect)a3
{
  if (self->_subjectRectHistoryCount != 10)
  {
    return 0;
  }

  y = a3.origin.y;
  x = a3.origin.x;
  width = a3.size.width;
  height = a3.size.height;
  p_height = &self->_subjectRectHistoryBuffer[0].size.height;
  v8 = 0;
  v9 = 10;
  v10 = 0;
  do
  {
    v11 = *(p_height - 3);
    v12 = *(p_height - 2);
    v13 = *(p_height - 1);
    v14 = *p_height;
    v39.origin.x = v11;
    v39.origin.y = v12;
    v39.size.width = v13;
    v39.size.height = *p_height;
    MidX = CGRectGetMidX(v39);
    v40.origin.x = v11;
    v40.origin.y = v12;
    v40.size.width = v13;
    v40.size.height = v14;
    MidY = CGRectGetMidY(v40);
    v16.f64[0] = MidX;
    v16.f64[1] = MidY;
    v8 = vadd_f32(v8, vcvt_f32_f64(v16));
    *&MidY = v13;
    *v16.f64 = v14;
    HIDWORD(MidY) = LODWORD(v16.f64[0]);
    v10 = vadd_f32(v10, *&MidY);
    p_height += 4;
    --v9;
  }

  while (v9);
  __asm { FMOV            V0.2S, #10.0 }

  v38 = vdiv_f32(v8, _D0);
  v22 = vdiv_f32(v10, _D0);
  [(CinematicFramingSessionOptions *)self->_options subjectMovementTolerance];
  v24 = vmul_n_f32(v22, v23 + 1.0);
  v25 = vmla_f32(v38, 0xBF000000BF000000, v24);
  v26 = v25.f32[0];
  v27 = v25.f32[1];
  v28 = v24.f32[0];
  v29 = v24.f32[1];
  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;

  return CGRectContainsRect(*&v26, *&v30);
}

- (BOOL)isCurrentFramingIdeal:(CGRect)a3 withTolerance:(float)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MidX = CGRectGetMidX(self->_deadband);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v11 = MidX - CGRectGetMidX(v19);
  if (v11 < 0.0)
  {
    v11 = -v11;
  }

  v12 = v11;
  MidY = CGRectGetMidY(self->_deadband);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v14 = CGRectGetMidY(v20);
  if (v12 / self->_deadband.size.width >= a4)
  {
    return 0;
  }

  v15 = MidY - v14;
  v16 = v15 <= 0.0;
  if (v15 < 0.0)
  {
    v15 = -v15;
  }

  v17 = 0.3;
  if (v16)
  {
    v17 = 1.0;
  }

  return v15 / (self->_deadband.size.height * v17) < a4;
}

- (CGRect)calculateBaselineViewportForTracks:(id)a3 atTime:(id *)a4
{
  v6 = a3;
  v8 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v10 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  v70 = v11;
  v71 = v12;
  v68 = v14;
  v69 = v13;
  [(SceneFramingEngine *)self defaultScreenWidth];
  v16 = v15;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:?];
  v18 = v17;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v19 = v6;
  v20 = [v19 countByEnumeratingWithState:&v87 objects:v86 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v88;
    v67 = v16;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        v76 = v8;
        v77 = v7;
        v79 = v10;
        if (*v88 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v87 + 1) + 8 * i);
        [v24 boundingBoxForFraming];
        v29 = CGRectSafeIntersection(v25, v26, v27, v28, v70, v71, v69, v68);
        r2_16 = v31;
        r2_24 = v30;
        rect = v32;
        v84 = *&a4->var0;
        var3 = a4->var3;
        [v24 faceBoundingBoxForFramingAtTime:&v84];
        v91.origin.x = CGRectSafeIntersection(v33, v34, v35, v36, v70, v71, v69, v68);
        x = v91.origin.x;
        y = v91.origin.y;
        width = v91.size.width;
        height = v91.size.height;
        v41 = fmin(CGRectGetWidth(v91), v67);
        v92.origin.x = v29;
        v92.origin.y = r2_24;
        v92.size.width = r2_16;
        v92.size.height = rect;
        v42 = fmin(CGRectGetHeight(v92), v18);
        r2_12 = v42;
        v93.origin.x = x;
        v93.origin.y = y;
        v93.size.width = width;
        v93.size.height = height;
        v43 = v41;
        r2 = CGRectGetMidX(v93) + v43 * -0.5;
        v94.origin.x = x;
        v94.origin.y = y;
        v94.size.width = width;
        v94.size.height = height;
        MinY = CGRectGetMinY(v94);
        v95.origin.x = v29;
        v95.origin.y = r2_24;
        v95.size.width = r2_16;
        v95.size.height = rect;
        v106.origin.y = fmin(MinY, CGRectGetMinY(v95));
        v106.size.height = r2_12;
        v96.origin.x = v76;
        v96.origin.y = v77;
        v96.size.width = v79;
        v96.size.height = v9;
        v106.origin.x = r2;
        v106.size.width = v43;
        v97 = CGRectUnion(v96, v106);
        v8 = v97.origin.x;
        v7 = v97.origin.y;
        v10 = v97.size.width;
        v9 = v97.size.height;
      }

      v21 = [v19 countByEnumeratingWithState:&v87 objects:v86 count:16];
    }

    while (v21);
  }

  v98.origin.x = CGRectSafeIntersection(v8, v7, v10, v9, v70, v71, v69, v68);
  v45 = v98.origin.x;
  v81 = v98.origin.y;
  recta = v98.origin.x;
  v46 = v98.origin.y;
  v47 = v98.size.width;
  v80 = v98.size.width;
  v48 = v98.size.height;
  v49 = CGRectGetWidth(v98);
  framingSpaceManager = self->_framingSpaceManager;
  v99.origin.x = v45;
  v99.origin.y = v46;
  v99.size.width = v47;
  v99.size.height = v48;
  v51 = CGRectGetHeight(v99);
  *&v51 = v51;
  [(FramingSpaceManager *)framingSpaceManager getWidthForHeight:v51];
  *&v45 = fmax(v49, v52);
  [(FramingSpaceManager *)self->_framingSpaceManager maxAllowedViewportWidth];
  LODWORD(v49) = v53;
  [(SceneFramingEngine *)self minAllowedScreenWidth];
  *&v49 = fminf(*&v49, fmaxf(v54, *&v45));
  LODWORD(v55) = LODWORD(v49);
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:v55];
  v78 = v56;
  v100.origin.x = v70;
  v100.origin.y = v71;
  v100.size.width = v69;
  v100.size.height = v68;
  v57 = *&v49;
  v58 = CGRectGetMaxX(v100) - v57;
  v101.origin.x = v70;
  v101.origin.y = v71;
  v101.size.width = v69;
  v101.size.height = v68;
  MinX = CGRectGetMinX(v101);
  v102.origin.x = recta;
  v102.origin.y = v81;
  v102.size.width = v80;
  v102.size.height = v48;
  *&MinX = fmin(v58, fmax(MinX, CGRectGetMidX(v102) + v57 * -0.5));
  v103.origin.x = v70;
  v103.origin.y = v71;
  v103.size.height = v68;
  v103.size.width = v69;
  v60 = CGRectGetMaxY(v103) - v78;
  v104.origin.x = recta;
  v104.origin.y = v81;
  v104.size.width = v80;
  v104.size.height = v48;
  v61 = fmin(v60, CGRectGetMinY(v104));
  v62 = v61;

  v63 = *&MinX;
  v64 = v62;
  v65 = v57;
  v66 = v78;
  result.size.height = v66;
  result.size.width = v65;
  result.origin.y = v64;
  result.origin.x = v63;
  return result;
}

- (CGRect)calculateSubjectEnclosingRectangleForTracks:(id)a3 withBaselineWidth:(float)a4 currentViewport:(CGRect)a5 atTime:(id *)a6
{
  v9 = a3;
  v11 = *MEMORY[0x277CBF398];
  v10 = *(MEMORY[0x277CBF398] + 8);
  v13 = *(MEMORY[0x277CBF398] + 16);
  v12 = *(MEMORY[0x277CBF398] + 24);
  *&v14 = a4;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:v14];
  v16 = v15;
  [(SceneFramingEngine *)self computeDeadbandHeightFromViewportHeight:?];
  v18 = v17;
  [(SceneFramingEngine *)self minAllowedDeadbandWidth];
  v20 = v19;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v21 = v9;
  v22 = [v21 countByEnumeratingWithState:&v86 objects:v85 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v87;
    v76 = v16;
    v77 = v18;
    v74 = (v20 * 0.5);
    v75 = (v18 * 0.5);
    __asm { FMOV            V0.2D, #1.0 }

    v73 = _Q0;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        v80.origin.x = v11;
        v80.origin.y = v10;
        v80.size.width = v13;
        v80.size.height = v12;
        if (*v87 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v31 = *(*(&v86 + 1) + 8 * i);
        v83 = *&a6->var0;
        var3 = a6->var3;
        [v31 faceBoundingBoxForFramingAtTime:{&v83, *&v73}];
        x = v90.origin.x;
        y = v90.origin.y;
        width = v90.size.width;
        height = v90.size.height;
        v36 = CGRectGetHeight(v90) * 0.5;
        v91.origin.x = x;
        v91.origin.y = y;
        v91.size.width = width;
        v91.size.height = height;
        v37 = fmax(fmin(v36, v77 + CGRectGetHeight(v91) * -0.6), 0.0);
        v92.origin.x = x;
        v92.origin.y = y;
        v92.size.width = width;
        v92.size.height = height;
        MinX = CGRectGetMinX(v92);
        v93.origin.x = x;
        v93.origin.y = y;
        v93.size.width = width;
        v93.size.height = height;
        v39 = v37;
        v40 = CGRectGetMinY(v93) - v37;
        v94.origin.x = x;
        v94.origin.y = y;
        v94.size.width = width;
        v94.size.height = height;
        v41 = CGRectGetWidth(v94);
        v95.origin.x = x;
        v95.origin.y = y;
        v95.size.width = width;
        v95.size.height = height;
        v42 = CGRectGetHeight(v95) + v39;
        [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandTopOffsetFractionOfScreenHeight];
        v44 = 1.0 - v43;
        [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandHeightFractionOfScreenHeight];
        *&v44 = fmax((v44 - v45 + -0.100000001) * v76, 0.0);
        v96.origin.x = MinX;
        v96.origin.y = v40;
        v96.size.width = v41;
        v96.size.height = v42;
        *&v44 = CGRectGetHeight(v96) - *&v44;
        [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters subjectHeightPaddingMultiplier];
        v47 = v46;
        v97.origin.x = MinX;
        v97.origin.y = v40;
        v97.size.width = v41;
        v97.size.height = v42;
        *&v39 = fmax(*&v44, fmin(v75, CGRectGetHeight(v97))) * v47;
        v98.origin.x = MinX;
        v98.origin.y = v40;
        v98.size.width = v41;
        v98.size.height = v42;
        v48 = CGRectGetWidth(v98);
        [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters subjectWidthPaddingMultiplier];
        *&v48 = fmax(v74, v48 * v49);
        v99.origin.x = MinX;
        v99.origin.y = v40;
        v99.size.width = v41;
        v99.size.height = v42;
        v50 = *&v48;
        v51 = CGRectGetMidX(v99) - v50 * 0.5;
        v100.origin.x = MinX;
        v100.origin.y = v40;
        v100.size.width = v41;
        v100.size.height = v42;
        MinY = CGRectGetMinY(v100);
        v101.origin.x = v51;
        v101.origin.y = MinY;
        v101.size.width = v50;
        v101.size.height = *&v39;
        MidX = CGRectGetMidX(v101);
        v102.origin.x = v51;
        v102.origin.y = MinY;
        v102.size.width = v50;
        v102.size.height = *&v39;
        v79 = CGRectGetMinY(v102);
        v103.origin.x = v51;
        v103.origin.y = MinY;
        v103.size.width = v50;
        v103.size.height = *&v39;
        v78 = CGRectGetMidX(v103);
        v104.origin.x = v51;
        v104.origin.y = MinY;
        v104.size.width = v50;
        v104.size.height = *&v39;
        v53.f64[0] = CGRectGetMaxY(v104);
        v54.f64[0] = v78;
        v54.f64[1] = MidX;
        v53.f64[1] = v79;
        v55 = vcvtq_f64_f32(vabs_f32(vcvt_f32_f64(v54)));
        v82 = vdiv_f32(vcvt_f32_f64(v53), vcvt_f32_f64(vaddq_f64(vmulq_f64(v55, v55), v73)));
        v53.f64[0] = v51;
        v55.f64[0] = MinY;
        v54.f64[0] = v50;
        v56 = *&v39;
        v57 = CGRectGetMinX(*v53.f64);
        v105.origin.x = v51;
        v105.origin.y = MinY;
        v105.size.width = v50;
        v105.size.height = *&v39;
        v108.size.width = CGRectGetWidth(v105);
        v108.size.height = (v82.f32[0] - v82.f32[1]);
        v108.origin.x = v57;
        v108.origin.y = v82.f32[1];
        v106 = CGRectUnion(v80, v108);
        v11 = v106.origin.x;
        v10 = v106.origin.y;
        v13 = v106.size.width;
        v12 = v106.size.height;
      }

      v23 = [v21 countByEnumeratingWithState:&v86 objects:v85 count:16];
    }

    while (v23);
  }

  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  v62 = CGRectSafeIntersection(v11, v10, v13, v12, v58, v59, v60, v61);
  v64 = v63;
  v66 = v65;
  v68 = v67;

  v69 = v62;
  v70 = v64;
  v71 = v66;
  v72 = v68;
  result.size.height = v72;
  result.size.width = v71;
  result.origin.y = v70;
  result.origin.x = v69;
  return result;
}

- (float)calculateViewportWidthToFitSubjectsInDeadband:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  v9 = v8;
  v55 = v8;
  v11 = v10;
  v13 = v12;
  v52 = v14;
  [(SceneFramingEngine *)self minAllowedScreenWidth];
  v58 = v15;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandWidthFractionOfScreenWidth];
  *&v17 = (1.0 - v16) * 0.5;
  *v17.i32 = *v17.i32;
  v56 = v17;
  v60.origin.x = x;
  v60.origin.y = y;
  v53 = width;
  v60.size.width = width;
  v60.size.height = height;
  MinX = CGRectGetMinX(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  MaxX = CGRectGetMaxX(v61);
  v19.f64[0] = MinX;
  v19.f64[1] = MaxX;
  v20 = COERCE_DOUBLE(vcvt_f32_f64(v19));
  v21 = COERCE_DOUBLE(vdup_lane_s32(v56, 0));
  v22 = v9;
  v19.f64[0] = v11;
  v23 = v13;
  v24 = v52;
  v57 = CGRectGetMinX(*(&v19 - 8));
  v62.origin.x = v9;
  v62.origin.y = v11;
  v62.size.width = v13;
  v62.size.height = v52;
  v25 = CGRectGetMaxX(v62);
  v26.f64[0] = v57;
  v26.f64[1] = v25;
  LODWORD(v57) = ComputeSizeToFitSubjectsInDeadband(v58, v20, v21, COERCE_DOUBLE(vcvt_f32_f64(v26)), v27, v28, v29);
  *&v30 = v58;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:v30];
  LODWORD(v21) = v31;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandTopOffsetFractionOfScreenHeight];
  v59 = v32;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandHeightFractionOfScreenHeight];
  v34 = 1.0 - v33 - v59;
  *&MinX = v34;
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = v53;
  v63.size.height = height;
  MinY = CGRectGetMinY(v63);
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = v53;
  v64.size.height = height;
  MaxY = CGRectGetMaxY(v64);
  v36.f64[0] = MinY;
  v36.f64[1] = MaxY;
  v37 = COERCE_DOUBLE(vcvt_f32_f64(v36));
  v38 = v55;
  v36.f64[0] = v11;
  v39 = v13;
  v40 = v52;
  v54 = CGRectGetMinY(*(&v36 - 8));
  v65.origin.x = v55;
  v65.origin.y = v11;
  v65.size.width = v13;
  v65.size.height = v52;
  v41 = CGRectGetMaxY(v65);
  v42.f64[0] = v54;
  v42.f64[1] = v41;
  LODWORD(height) = ComputeSizeToFitSubjectsInDeadband(*&v21, v37, COERCE_DOUBLE(__PAIR64__(LODWORD(MinX), LODWORD(v59))), COERCE_DOUBLE(vcvt_f32_f64(v42)), v43, v44, v45);
  [(FramingSpaceManager *)self->_framingSpaceManager maxAllowedViewportWidth];
  LODWORD(v37) = v46;
  LODWORD(v47) = LODWORD(height);
  [(FramingSpaceManager *)self->_framingSpaceManager getWidthForHeight:v47];
  return fminf(*&v37, fmaxf(*&v57, v48));
}

- (CGRect)calculateViewportCenteredAround:(CGRect)a3 withWidth:(float)a4
{
  rect = a3.size.height;
  y = a3.origin.y;
  width = a3.size.width;
  v5 = a3.origin.y;
  x = a3.origin.x;
  v24 = a3.origin.x;
  *&a3.origin.x = a4;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:a3.origin.x];
  v27 = v8;
  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  v9 = v29.origin.x;
  v10 = v29.origin.y;
  v11 = v29.size.width;
  height = v29.size.height;
  v13 = a4;
  v23 = CGRectGetMaxX(v29) - v13;
  v30.origin.x = v9;
  v30.origin.y = v10;
  v30.size.width = v11;
  v30.size.height = height;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = x;
  v31.origin.y = v5;
  v31.size.width = width;
  v31.size.height = rect;
  v15 = fmin(v23, fmax(MinX, CGRectGetMidX(v31) + v13 * -0.5));
  *&v23 = v15;
  v32.origin.x = v9;
  v32.origin.y = v10;
  v32.size.width = v11;
  v32.size.height = height;
  v16 = CGRectGetMaxY(v32) - v27;
  v33.origin.x = v9;
  v33.origin.y = v10;
  v33.size.width = v11;
  v33.size.height = height;
  MinY = CGRectGetMinY(v33);
  v34.origin.x = v24;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = rect;
  v18 = fmin(v16, fmax(MinY, CGRectGetMinY(v34)));
  v19 = *&v23;
  v20 = v18;
  v21 = v13;
  v22 = v27;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)computeCroppedSubjectEnclosingRectForViewportWidth:(float)a3 subjectEnclosingRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v51 = a4.size.height;
  v5 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  v54 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandWidthFractionOfScreenWidth];
  v17 = (1.0 - v16) * 0.5;
  v52 = v17;
  v55.origin.x = x;
  v49 = x;
  v55.origin.y = y;
  v55.size.width = v5;
  v55.size.height = height;
  MinX = CGRectGetMinX(v55);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = v5;
  v56.size.height = height;
  MaxX = CGRectGetMaxX(v56);
  v57.origin.x = v54;
  v47 = v11;
  v57.origin.y = v11;
  v57.size.width = v13;
  v57.size.height = v15;
  *&v5 = CGRectGetMinX(v57);
  v58.origin.x = v54;
  v58.origin.y = v11;
  v58.size.width = v13;
  v58.size.height = v15;
  v20 = CGRectGetMaxX(v58);
  *v21.i32 = *&v5 + (a3 * v52);
  *&v20 = v20;
  *&v20 = *&v20 - (a3 * v52);
  v22 = *&v20 < MinX;
  *&v23 = fmaxf(MinX, *v21.i32);
  HIDWORD(v23) = fminf(MaxX, *&v20);
  v24 = COERCE_DOUBLE(vdup_lane_s32(*&v20, 0));
  if (!v22)
  {
    v24 = v23;
  }

  v25 = COERCE_DOUBLE(vdup_lane_s32(v21, 0));
  if (*v21.i32 > MaxX)
  {
    v24 = v25;
  }

  v53 = *&v24;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandTopOffsetFractionOfScreenHeight];
  v46 = v26;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandHeightFractionOfScreenHeight];
  v45 = v27;
  *&v28 = a3;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:v28];
  v30 = v29;
  v59.origin.x = v49;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = v51;
  MinY = CGRectGetMinY(v59);
  v60.origin.x = v49;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = v51;
  MaxY = CGRectGetMaxY(v60);
  v61.origin.x = v54;
  v61.origin.y = v11;
  v61.size.width = v13;
  v61.size.height = v15;
  v33 = CGRectGetMinY(v61);
  v62.origin.x = v54;
  v62.origin.y = v47;
  v62.size.width = v13;
  v62.size.height = v15;
  v34 = CGRectGetMaxY(v62);
  *v35.i32 = v33 + (v30 * v46);
  *&v34 = v34;
  v36 = 1.0 - v45 - v46;
  *&v34 = *&v34 - (v30 * v36);
  v22 = *&v34 < MinY;
  *&v37 = fmaxf(MinY, *v35.i32);
  HIDWORD(v37) = fminf(MaxY, *&v34);
  v38 = COERCE_DOUBLE(vdup_lane_s32(*&v34, 0));
  if (!v22)
  {
    v38 = v37;
  }

  v39 = COERCE_DOUBLE(vdup_lane_s32(v35, 0));
  if (*v35.i32 > MaxY)
  {
    *&v40 = v39;
  }

  else
  {
    *&v40 = v38;
  }

  v41 = v53.f32[0];
  v42 = v40.f32[0];
  v43 = vsub_f32(vdup_lane_s32(v53, 1), v53).f32[0];
  v44 = vsub_f32(vdup_lane_s32(v40, 1), v40).f32[0];
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (CGRect)determineDeadbandForSubjectEnclosingRect:(CGRect)a3 oldDeadband:(CGRect)a4 newDeadbandWidth:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(SceneFramingEngine *)self computeViewportWidthFromDeadbandWidth:?];
  [SceneFramingEngine computeCroppedSubjectEnclosingRectForViewportWidth:"computeCroppedSubjectEnclosingRectForViewportWidth:subjectEnclosingRect:" subjectEnclosingRect:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(FramingSpaceManager *)self->_framingSpaceManager framingSpaceBounds];
  v76 = v18;
  v77 = v17;
  v67 = v19;
  v75 = v20;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandWidthFractionOfScreenWidth];
  v22 = (1.0 - v21) * 0.5;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandWidthFractionOfScreenWidth];
  *&v24 = v22 / v23;
  *v24.i32 = *v24.i32;
  v78 = v24;
  v80.origin.x = v10;
  v80.origin.y = v12;
  v80.size.width = v14;
  v80.size.height = v16;
  MinX = CGRectGetMinX(v80);
  v81.origin.x = v10;
  v81.origin.y = v12;
  v81.size.width = v14;
  v81.size.height = v16;
  MaxX = CGRectGetMaxX(v81);
  v26.f64[0] = MinX;
  v26.f64[1] = MaxX;
  v27 = COERCE_DOUBLE(vcvt_f32_f64(v26));
  v69 = y;
  v28 = x;
  v26.f64[0] = y;
  v70 = width;
  v29 = width;
  v30 = height;
  v72 = CGRectGetMinX(*(&v26 - 8));
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  v31 = CGRectGetMaxX(v82);
  v32.f64[0] = v72;
  v32.f64[1] = v31;
  v33 = COERCE_DOUBLE(vcvt_f32_f64(v32));
  v34 = COERCE_DOUBLE(vdup_lane_s32(v78, 0));
  v35 = v77;
  v32.f64[0] = v76;
  v36 = v67;
  v37 = v75;
  v79 = CGRectGetMinX(*(&v32 - 8));
  v83.origin.x = v77;
  v83.origin.y = v76;
  v83.size.width = v67;
  v83.size.height = v75;
  v38 = CGRectGetMaxX(v83);
  v39.f64[0] = v79;
  v39.f64[1] = v38;
  LODWORD(v72) = DetermineNewDeadbandMinComponent(v27, v33, v34, vcvt_f32_f64(v39).f32[0], a5);
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandTopOffsetFractionOfScreenHeight];
  LODWORD(v27) = v40;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandHeightFractionOfScreenHeight];
  *&v79 = *&v27 / v41;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandHeightFractionOfScreenHeight];
  v43 = 1.0 - v42;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandHeightFractionOfScreenHeight];
  v45 = v43 / v44 - *&v79;
  *&v45 = v45;
  v66 = LODWORD(v45);
  *&v45 = a5;
  [(SceneFramingEngine *)self computeDeadbandHeightForWidth:v45];
  LODWORD(v43) = v46;
  v84.origin.x = v10;
  v84.origin.y = v12;
  v84.size.width = v14;
  v84.size.height = v16;
  MinY = CGRectGetMinY(v84);
  v85.origin.x = v10;
  v85.origin.y = v12;
  v85.size.width = v14;
  v85.size.height = v16;
  MaxY = CGRectGetMaxY(v85);
  v48.f64[0] = MinY;
  v48.f64[1] = MaxY;
  v49 = COERCE_DOUBLE(vcvt_f32_f64(v48));
  v50 = x;
  v48.f64[0] = v69;
  v51 = v70;
  v52 = height;
  v68 = CGRectGetMinY(*(&v48 - 8));
  v86.origin.x = x;
  v86.origin.y = v69;
  v86.size.width = v70;
  v86.size.height = height;
  v53 = CGRectGetMaxY(v86);
  v54.f64[0] = v68;
  v54.f64[1] = v53;
  v55 = COERCE_DOUBLE(vcvt_f32_f64(v54));
  v56 = v77;
  v54.f64[0] = v76;
  v57 = v67;
  v58 = v75;
  v74 = CGRectGetMinY(*(&v54 - 8));
  v87.origin.x = v77;
  v87.origin.y = v76;
  v87.size.width = v67;
  v87.size.height = v75;
  v59 = CGRectGetMaxY(v87);
  v60.f64[0] = v74;
  v60.f64[1] = v59;
  v61 = DetermineNewDeadbandMinComponent(v49, v55, COERCE_DOUBLE(__PAIR64__(v66, LODWORD(v79))), vcvt_f32_f64(v60).f32[0], *&v43);
  v62 = a5;
  v63 = *&v43;
  v64 = *&v72;
  result.size.height = v63;
  result.size.width = v62;
  result.origin.y = v61;
  result.origin.x = v64;
  return result;
}

- (float)defaultScreenWidth
{
  [(CinematicFramingSessionOptions *)self->_options viewportDefaultFOV];
  v4 = v3;
  framingSpaceManager = self->_framingSpaceManager;
  [(CinematicFramingSessionOptions *)self->_options viewportDefaultFOV];
  [(FramingSpaceManager *)framingSpaceManager getWidthForHeight:?];
  if (v4 <= v6)
  {
    v9 = self->_framingSpaceManager;
    [(CinematicFramingSessionOptions *)self->_options viewportDefaultFOV];

    [(FramingSpaceManager *)v9 getWidthForHeight:?];
  }

  else
  {
    options = self->_options;

    [(CinematicFramingSessionOptions *)options viewportDefaultFOV];
  }

  return result;
}

- (float)minAllowedScreenWidth
{
  [(CinematicFramingSessionOptions *)self->_options viewportMinimumFOV];
  v4 = v3;
  framingSpaceManager = self->_framingSpaceManager;
  [(CinematicFramingSessionOptions *)self->_options viewportMinimumFOV];
  [(FramingSpaceManager *)framingSpaceManager getWidthForHeight:?];
  if (v4 <= v6)
  {
    v9 = self->_framingSpaceManager;
    [(CinematicFramingSessionOptions *)self->_options viewportMinimumFOV];

    [(FramingSpaceManager *)v9 getWidthForHeight:?];
  }

  else
  {
    options = self->_options;

    [(CinematicFramingSessionOptions *)options viewportMinimumFOV];
  }

  return result;
}

- (float)minAllowedDeadbandWidth
{
  [(SceneFramingEngine *)self minAllowedScreenWidth];
  v4 = v3;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandWidthFractionOfScreenWidth];
  return v4 * v5;
}

- (CGRect)computeViewportFromDeadband:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    v8 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v10 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v12 = CGRectGetWidth(v36);
    *&v12 = v12;
    [(SceneFramingEngine *)self computeViewportWidthFromDeadbandWidth:v12];
    v14 = v13;
    [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:?];
    v16 = v15;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v10 = v14;
    v17 = CGRectGetMidX(v37) + v14 * -0.5;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    MinY = CGRectGetMinY(v38);
    [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandTopOffsetFractionOfScreenHeight];
    v20 = MinY - (v16 * v19);
    v8 = v17;
    v9 = v20;
    v11 = v16;
    if ((LODWORD(self->_targetViewportForFloating.size.height) & 0xFFFFFFFE) == 2)
    {
      [(SceneFramingEngine *)self applyNewsroomViewportAdjustments:v17, v9, v14, v16];
      v8 = v21;
      v9 = v22;
      v10 = v23;
      v11 = v24;
    }

    [(FramingSpaceManager *)self->_framingSpaceManager maxAllowedViewportWidth];
    v26 = v25;
    [(FramingSpaceManager *)self->_framingSpaceManager maxAllowedViewportWidth];
    if (v14 > (*&v27 * 0.95))
    {
      framingSpaceManager = self->_framingSpaceManager;
      *&v27 = v26;
      if (v14 <= v16)
      {
        [(FramingSpaceManager *)framingSpaceManager getWidthForHeight:v27];
        v31 = v30;
        v29 = v26;
        v26 = v31;
      }

      else
      {
        [(FramingSpaceManager *)framingSpaceManager getHeightForWidth:v27];
      }

      v8 = (v26 * -0.5);
      v9 = (v29 * -0.5);
      v10 = v26;
      v11 = v29;
    }
  }

  v32 = v8;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGRect)computeDeadbandFromViewport:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    v8 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v10 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    if ((LODWORD(self->_targetViewportForFloating.size.height) & 0xFFFFFFFE) == 2)
    {
      [(SceneFramingEngine *)self undoNewsroomViewportAdjustments:x, y, width, height];
      x = v12;
      y = v13;
      width = v14;
      height = v15;
    }

    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v16 = CGRectGetWidth(v26);
    *&v16 = v16;
    [(SceneFramingEngine *)self computeDeadbandWidthFromViewportWidth:v16];
    v18 = v17;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v19 = CGRectGetHeight(v27);
    *&v19 = v19;
    [(SceneFramingEngine *)self computeDeadbandHeightFromViewportHeight:v19];
    v21 = v20;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MinY = CGRectGetMinY(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v23 = CGRectGetHeight(v29);
    [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandTopOffsetFractionOfScreenHeight];
    *&MinY = MinY + v23 * v24;
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    MidX = CGRectGetMidX(v30);
    v10 = v18;
    v8 = MidX + v18 * -0.5;
    v9 = *&MinY;
    v11 = v21;
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (float)computeDeadbandHeightForWidth:(float)a3
{
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandWidthFractionOfScreenWidth];
  *&v6 = a3 / v5;
  [(FramingSpaceManager *)self->_framingSpaceManager getHeightForWidth:v6];
  v8 = v7;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandHeightFractionOfScreenHeight];
  return v8 * v9;
}

- (float)computeDeadbandWidthForHeight:(float)a3
{
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandHeightFractionOfScreenHeight];
  *&v6 = a3 / v5;
  [(FramingSpaceManager *)self->_framingSpaceManager getWidthForHeight:v6];
  v8 = v7;
  [(CinematicFramingSessionFramingParameters *)self->_activeFramingParameters deadbandWidthFractionOfScreenWidth];
  return v8 * v9;
}

- (CGRect)applyNewsroomViewportAdjustments:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  viewportOffsetX = self->_newsroomFramingParameters.viewportOffsetX;
  framingSpaceManager = self->_framingSpaceManager;
  if (a3.size.width >= a3.size.height)
  {
    v10 = a3.size.height * viewportOffsetX;
    *&viewportOffsetX = a3.size.height * viewportOffsetX;
    [(FramingSpaceManager *)framingSpaceManager getWidthForHeight:viewportOffsetX];
    v8 = v11;
  }

  else
  {
    v8 = a3.size.width * viewportOffsetX;
    *&viewportOffsetX = a3.size.width * viewportOffsetX;
    [(FramingSpaceManager *)framingSpaceManager getHeightForWidth:viewportOffsetX];
    v10 = v9;
  }

  v12 = x + v8 * *&self->_returningHomeTargetRect[8];
  v13 = y + v10 * *&self->_returningHomeTargetRect[12];
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)undoNewsroomViewportAdjustments:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = *&self->_returningHomeTargetRect[8];
  v8 = *&self->_returningHomeTargetRect[12];
  viewportOffsetX = self->_newsroomFramingParameters.viewportOffsetX;
  framingSpaceManager = self->_framingSpaceManager;
  if (a3.size.width >= a3.size.height)
  {
    v13 = a3.size.height / viewportOffsetX;
    *&viewportOffsetX = a3.size.height / viewportOffsetX;
    [(FramingSpaceManager *)framingSpaceManager getWidthForHeight:viewportOffsetX];
    v11 = v14;
  }

  else
  {
    v11 = a3.size.width / viewportOffsetX;
    *&viewportOffsetX = a3.size.width / viewportOffsetX;
    [(FramingSpaceManager *)framingSpaceManager getHeightForWidth:viewportOffsetX];
    v13 = v12;
  }

  v15 = y - height * v8;
  v16 = x - width * v7;
  v17 = v11;
  v18 = v13;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v15;
  result.origin.x = v16;
  return result;
}

- (CGRect)deadband
{
  x = self->_deadband.origin.x;
  y = self->_deadband.origin.y;
  width = self->_deadband.size.width;
  height = self->_deadband.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end