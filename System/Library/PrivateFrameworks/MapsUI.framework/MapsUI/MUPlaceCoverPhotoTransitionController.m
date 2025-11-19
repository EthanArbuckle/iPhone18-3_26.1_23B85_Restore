@interface MUPlaceCoverPhotoTransitionController
- (MUPlaceCoverPhotoTransitionController)initWithMetrics:(MUPlaceHeaderMetrics *)a3 updateHandler:(id)a4;
- (MUPlaceHeaderMetrics)metrics;
- (double)_logoImageAlphaForVerticalDrag;
- (double)coverPhotoHeightForProposedWidth:(double)a3;
- (double)interpolatedCoverPhotoToTitleSpacing;
- (double)logoImageAlpha;
- (void)_updateWithOldProgress:(double)a3;
- (void)setExpansionProgress:(double)a3;
- (void)setMetrics:(MUPlaceHeaderMetrics *)a3;
@end

@implementation MUPlaceCoverPhotoTransitionController

- (void)setMetrics:(MUPlaceHeaderMetrics *)a3
{
  *&self->_metrics.topToTitleSpacing = *&a3->topToTitleSpacing;
  v3 = *&a3->coverPhotoMetrics.hasLogo;
  v4 = *&a3->coverPhotoMetrics.logoSize.height;
  v5 = *&a3->coverPhotoMetrics.coverPhotoContainerToTitleSpacing;
  self->_metrics.coverPhotoMetrics.endingLogoAlphaTransitionValue = a3->coverPhotoMetrics.endingLogoAlphaTransitionValue;
  *&self->_metrics.coverPhotoMetrics.logoSize.height = v4;
  *&self->_metrics.coverPhotoMetrics.coverPhotoContainerToTitleSpacing = v5;
  *&self->_metrics.coverPhotoMetrics.hasLogo = v3;
}

- (MUPlaceHeaderMetrics)metrics
{
  v3 = *&self[1].coverPhotoMetrics.aspectRatio;
  *&retstr->coverPhotoMetrics.logoSize.height = *&self->coverPhotoMetrics.endingLogoAlphaTransitionValue;
  *&retstr->coverPhotoMetrics.coverPhotoContainerToTitleSpacing = v3;
  retstr->coverPhotoMetrics.endingLogoAlphaTransitionValue = self[1].coverPhotoMetrics.logoSize.width;
  v4 = *&self->coverPhotoMetrics.coverPhotoContainerToTitleSpacing;
  *&retstr->topToTitleSpacing = *&self->coverPhotoMetrics.logoSize.height;
  *&retstr->coverPhotoMetrics.hasLogo = v4;
  return self;
}

- (double)interpolatedCoverPhotoToTitleSpacing
{
  topToTitleSpacing = self->_metrics.topToTitleSpacing;
  if (self->_metrics.coverPhotoMetrics.hasLogo)
  {
    [(MUPlaceCoverPhotoTransitionController *)self expansionProgress];
    return topToTitleSpacing + (self->_metrics.coverPhotoMetrics.coverPhotoContainerToTitleSpacing - self->_metrics.topToTitleSpacing) * v4;
  }

  return topToTitleSpacing;
}

- (double)_logoImageAlphaForVerticalDrag
{
  v18 = *MEMORY[0x1E69E9840];
  [(MUPlaceCoverPhotoTransitionController *)self expansionProgress];
  v4 = v3;
  startingLogoAlphaTransitionValue = self->_metrics.coverPhotoMetrics.startingLogoAlphaTransitionValue;
  v6 = 0.0;
  if (v4 >= startingLogoAlphaTransitionValue)
  {
    endingLogoAlphaTransitionValue = self->_metrics.coverPhotoMetrics.endingLogoAlphaTransitionValue;
    v6 = 1.0;
    if (v4 <= endingLogoAlphaTransitionValue)
    {
      v8 = v4 - startingLogoAlphaTransitionValue;
      v9 = endingLogoAlphaTransitionValue - startingLogoAlphaTransitionValue;
      if (MUGetMUPlaceCoverPhotoTransitionControllerLog_onceToken != -1)
      {
        v13 = v9;
        dispatch_once(&MUGetMUPlaceCoverPhotoTransitionControllerLog_onceToken, &__block_literal_global_274);
        v9 = v13;
      }

      v10 = MUGetMUPlaceCoverPhotoTransitionControllerLog_log;
      v6 = v8 / v9;
      if (os_log_type_enabled(MUGetMUPlaceCoverPhotoTransitionControllerLog_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v15 = v4;
        v16 = 2048;
        v17 = v6;
        _os_log_impl(&dword_1C5620000, v10, OS_LOG_TYPE_DEBUG, "Progress for logo transition is %f and evaluated alpha is %f", buf, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (double)logoImageAlpha
{
  if ((self->_currentScrollDirection - 1) > 1)
  {
    return 0.0;
  }

  [(MUPlaceCoverPhotoTransitionController *)self _logoImageAlphaForVerticalDrag];
  return result;
}

- (void)_updateWithOldProgress:(double)a3
{
  expansionProgress = self->_expansionProgress;
  if (expansionProgress <= a3)
  {
    if (expansionProgress >= a3)
    {
      goto LABEL_6;
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  self->_currentScrollDirection = v5;
LABEL_6:
  updateHandler = self->_updateHandler;
  if (updateHandler)
  {
    updateHandler[2](updateHandler, self);
  }
}

- (double)coverPhotoHeightForProposedWidth:(double)a3
{
  coverPhotoBottomToLogoBottomSpacing = 0.0;
  if (!self->_metrics.coverPhotoMetrics.hasLogo)
  {
    goto LABEL_4;
  }

  if (self->_metrics.coverPhotoMetrics.hasCoverPhoto)
  {
    coverPhotoBottomToLogoBottomSpacing = self->_metrics.coverPhotoMetrics.coverPhotoBottomToLogoBottomSpacing;
LABEL_4:
    v4 = coverPhotoBottomToLogoBottomSpacing + self->_metrics.coverPhotoMetrics.aspectRatio * a3;
    [(MUPlaceCoverPhotoTransitionController *)self expansionProgress];
    return v4 * v5;
  }

  height = self->_metrics.coverPhotoMetrics.logoSize.height;
  [(MUPlaceCoverPhotoTransitionController *)self expansionProgress:a3];
  return v8 * height;
}

- (void)setExpansionProgress:(double)a3
{
  v3 = fmin(fmax(a3, 0.0), 1.0);
  if (self->_expansionProgress != v3)
  {
    self->_expansionProgress = v3;
    [(MUPlaceCoverPhotoTransitionController *)self _updateWithOldProgress:?];
  }
}

- (MUPlaceCoverPhotoTransitionController)initWithMetrics:(MUPlaceHeaderMetrics *)a3 updateHandler:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = MUPlaceCoverPhotoTransitionController;
  v7 = [(MUPlaceCoverPhotoTransitionController *)&v15 init];
  v8 = v7;
  if (v7)
  {
    *&v7->_metrics.topToTitleSpacing = *&a3->topToTitleSpacing;
    v9 = *&a3->coverPhotoMetrics.hasLogo;
    v10 = *&a3->coverPhotoMetrics.logoSize.height;
    v11 = *&a3->coverPhotoMetrics.coverPhotoContainerToTitleSpacing;
    v7->_metrics.coverPhotoMetrics.endingLogoAlphaTransitionValue = a3->coverPhotoMetrics.endingLogoAlphaTransitionValue;
    *&v7->_metrics.coverPhotoMetrics.logoSize.height = v10;
    *&v7->_metrics.coverPhotoMetrics.coverPhotoContainerToTitleSpacing = v11;
    *&v7->_metrics.coverPhotoMetrics.hasLogo = v9;
    v12 = _Block_copy(v6);
    updateHandler = v8->_updateHandler;
    v8->_updateHandler = v12;
  }

  return v8;
}

@end