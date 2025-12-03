@interface NUNIAstronomyVistaController
- (NUNIAegirStyleDefinition)styleDefinition;
- (NUNIAstronomyPulseAnimationDelegate)pulseAnimationDelegate;
- (NUNIAstronomyStyleAnimationDelegate)styleAnimationDelegate;
- (NUNIAstronomyVistaController)initWithVistaView:(id)view;
- (NUNIAstronomyVistaControllerDelegate)delegate;
- (void)_animateToStyle:(unint64_t)style;
- (void)_animateToStyleDefinition:(NUNIAegirStyleDefinition)definition;
- (void)_applyVista:(unint64_t)vista;
- (void)_handleInteractiveModeGesture:(id)gesture;
- (void)_handleSpheroidPanGesture:(id)gesture;
- (void)_handleSupplementalModeGesture:(id)gesture;
- (void)_updateFrameInterval;
- (void)activeMode;
- (void)animateToStyleDefinition:(NUNIAegirStyleDefinition)definition duration:(float)duration;
- (void)animateToVista:(unint64_t)vista styleDefinition:(NUNIAegirStyleDefinition)definition duration:(float)duration;
- (void)animateTransitionToMode:(int64_t)mode;
- (void)applyMode:(int64_t)mode;
- (void)applyStyle:(unint64_t)style;
- (void)applyStyleDefinition:(NUNIAegirStyleDefinition)definition;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)applyTransitionFraction:(double)fraction fromVista:(unint64_t)vista fromStyleDefinition:(NUNIAegirStyleDefinition)definition toVista:(unint64_t)toVista toStyleDefinition:(NUNIAegirStyleDefinition)styleDefinition;
- (void)applyTransitionFraction:(double)fraction fromVista:(unint64_t)vista toVista:(unint64_t)toVista;
- (void)astronomyAnimationFinished:(id)finished;
- (void)cleanUpAfterTransitions;
- (void)deactiveMode;
- (void)hideLocationDotAnimated:(BOOL)animated;
- (void)hideLocationDotPulse;
- (void)interactiveMode;
- (void)prepareForTransitions;
- (void)pulseLocationDot;
- (void)setActiveModeFrameInterval:(int64_t)interval;
- (void)setForceDisableLocationDot:(BOOL)dot;
- (void)setLocationDotAlpha:(double)alpha;
- (void)setStyleDefinition:(NUNIAegirStyleDefinition)definition;
- (void)setVistaView:(id)view;
- (void)showLocationDotAnimated:(BOOL)animated;
- (void)startClockUpdates;
- (void)stopClockUpdates;
- (void)stopLocationDotPulse;
- (void)supplementalMode;
@end

@implementation NUNIAstronomyVistaController

- (NUNIAstronomyVistaController)initWithVistaView:(id)view
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = NUNIAstronomyVistaController;
  v5 = [(NUNIAstronomyVistaController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_numberOfPulses = 1.0;
    v5->_pulseAnimationDuration = 1.75;
    v7 = objc_opt_new();
    rotationModel = v6->_rotationModel;
    v6->_rotationModel = v7;

    [(NUNIAstronomyRotationModel *)v6->_rotationModel setObserver:v6];
    v9 = objc_alloc_init(NUNIAstronomyLocationDotConfiguration);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [(NUNIAstronomyLocationDotConfiguration *)v9 setScreenScale:?];

    [(NUNIAstronomyVistaController *)v6 setVistaView:viewCopy];
    v6->_isFallbackLocation = 1;
    [(NUNIAstronomyVistaController *)v6 applyMode:1];
    v6->_activeModeFrameInterval = 3;
  }

  return v6;
}

- (void)setActiveModeFrameInterval:(int64_t)interval
{
  if (self->_activeModeFrameInterval != interval)
  {
    self->_activeModeFrameInterval = interval;
    [(NUNIAstronomyVistaController *)self _updateFrameInterval];
  }
}

- (void)_updateFrameInterval
{
  mode = self->_mode;
  if (mode == 3 || mode == 1)
  {
    activeModeFrameInterval = 3;
  }

  else if (mode)
  {
    activeModeFrameInterval = 0;
  }

  else
  {
    activeModeFrameInterval = self->_activeModeFrameInterval;
  }

  [(NUNIAstronomyVistaView *)self->_vistaView setFrameInterval:activeModeFrameInterval];
}

- (void)prepareForTransitions
{
  [(NUNIAstronomyVistaController *)self setPreparedForTransitions:1];
  scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
  [scene setUpdatable:0];

  v4 = 0;
  editingVistaAnimations = self->_editingVistaAnimations;
  do
  {
    v6 = v4 + 1;
    if (v4 == 9)
    {
      v7 = 0;
    }

    else
    {
      v7 = v4 + 1;
    }

    v8 = [(NUNIAstronomyVistaView *)self->_vistaView generateAnimationArrayFromVista:v4 toVista:v7 transitionStyle:self->_vistaTransitionStyle];
    v9 = editingVistaAnimations[v4];
    editingVistaAnimations[v4] = v8;

    ++v4;
  }

  while (v6 != 10);
}

- (void)setVistaView:(id)view
{
  objc_storeStrong(&self->_vistaView, view);
  viewCopy = view;
  v5 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handleSpheroidPanGesture_];
  spheroidPanGesture = self->_spheroidPanGesture;
  self->_spheroidPanGesture = v5;

  [(UIPanGestureRecognizer *)self->_spheroidPanGesture setMaximumNumberOfTouches:1];
  v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleSupplementalModeGesture_];
  supplementalModeDoubleTapGesture = self->_supplementalModeDoubleTapGesture;
  self->_supplementalModeDoubleTapGesture = v7;

  [(UITapGestureRecognizer *)self->_supplementalModeDoubleTapGesture setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)self->_supplementalModeDoubleTapGesture setNumberOfTouchesRequired:1];
  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleInteractiveModeGesture_];
  interactiveModeTapGesture = self->_interactiveModeTapGesture;
  self->_interactiveModeTapGesture = v9;

  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setNumberOfTouchesRequired:1];
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setCancelsTouchesInView:0];
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture requireGestureRecognizerToFail:self->_supplementalModeDoubleTapGesture];
  [(NUNIAstronomyVistaView *)self->_vistaView addGestureRecognizer:self->_spheroidPanGesture];
  [(NUNIAstronomyVistaView *)self->_vistaView addGestureRecognizer:self->_interactiveModeTapGesture];
  [(NUNIAstronomyVistaView *)self->_vistaView addGestureRecognizer:self->_supplementalModeDoubleTapGesture];
}

- (void)cleanUpAfterTransitions
{
  [(NUNIAstronomyVistaController *)self _applyVista:self->_vista];
  scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
  [scene setUpdatable:1];

  for (i = 24; i != 104; i += 8)
  {
    v5 = *(&self->super.isa + i);
    *(&self->super.isa + i) = 0;
  }

  [(NUNIAstronomyVistaController *)self setPreparedForTransitions:0];
}

- (void)_applyVista:(unint64_t)vista
{
  if (self->_vistaView)
  {
    [(NUNIAstronomyRotationModel *)self->_rotationModel stop];
    v6 = [(NUNIAstronomyVistaView *)self->_vistaView rotatable:vista];
    [(NUNIAstronomyRotationModel *)self->_rotationModel setRotatable:v6];
    if (v6)
    {
      [v6 homeCoordinate];
      [v6 setCenterCoordinate:0 animated:?];
    }

    scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
    [scene removeAllAnimations];

    [(NUNIAstronomyVistaView *)self->_vistaView applyVista:vista transitionStyle:self->_vistaTransitionStyle];
  }
}

- (void)setStyleDefinition:(NUNIAegirStyleDefinition)definition
{
  v4 = v3;
  v5 = v3[1];
  *&self->_styleDefinition.orbit = *v3;
  *&self[1]._vistaView = v5;
  scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
  v6 = v4[1];
  v9[0] = *v4;
  v9[1] = v6;
  NUNIAstronomyVistaController_ApplyStyleDefinition(v9, v7, scene);
  [scene updateCamera];
}

- (void)applyTransitionFraction:(double)fraction fromVista:(unint64_t)vista toVista:(unint64_t)toVista
{
  v23 = *MEMORY[0x277D85DE8];
  if (vista + 1 == toVista)
  {
    v8 = self->_editingVistaAnimations[vista];
  }

  else if (toVista + 1 == vista)
  {
    v8 = self->_editingVistaAnimations[toVista];
    fraction = 1.0 - fraction;
  }

  else
  {
    if (vista != toVista)
    {
      goto LABEL_14;
    }

    v8 = self->_editingVistaAnimations[vista];
    fraction = 0.0;
    if (self->_vista != vista)
    {
      [(NUNIAstronomyVistaController *)self setVista:vista];
    }
  }

  if (v8)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v12 = v10;
      fractionCopy = fraction;
      v14 = (fractionCopy * fractionCopy) * ((fractionCopy * -2.0) + 3.0);
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v9);
          }

          *&v11 = v14;
          [*(*(&v18 + 1) + 8 * v16++) apply:{v11, v18}];
        }

        while (v12 != v16);
        v12 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  vista = self->_vista;
  v6 = &_NUNIGetAegirStyleDefinition_earthDefinitions;
  if (vista == 1)
  {
    v6 = &_NUNIGetAegirStyleDefinition_lunaDefinitions;
  }

  if (vista == 2)
  {
    v7 = &_NUNIGetAegirStyleDefinition_orreryDefinitions;
  }

  else
  {
    v7 = v6;
  }

  v8 = &v7[32 * style];
  v9 = *(v8 + 1);
  v13[0] = *v8;
  v13[1] = v9;
  v10 = &v7[32 * toStyle];
  v11 = *(v10 + 1);
  v12[0] = *v10;
  v12[1] = v11;
  [(NUNIAstronomyVistaController *)self applyTransitionFraction:v13 fromStyleDefinition:v12 toStyleDefinition:fraction];
}

- (void)applyTransitionFraction:(double)fraction fromVista:(unint64_t)vista fromStyleDefinition:(NUNIAegirStyleDefinition)definition toVista:(unint64_t)toVista toStyleDefinition:(NUNIAegirStyleDefinition)styleDefinition
{
  v9 = v8;
  v10 = v7;
  v40 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__NUNIAstronomyVistaController_applyTransitionFraction_fromVista_fromStyleDefinition_toVista_toStyleDefinition___block_invoke;
  aBlock[3] = &__block_descriptor_72_e19_v16__0__NUNIScene_8l;
  v14 = *(toVista + 16);
  v36 = *toVista;
  v37 = v14;
  vistaCopy = vista;
  v15 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __112__NUNIAstronomyVistaController_applyTransitionFraction_fromVista_fromStyleDefinition_toVista_toStyleDefinition___block_invoke_2;
  v31[3] = &__block_descriptor_72_e19_v16__0__NUNIScene_8l;
  v16 = v9[1];
  v32 = *v9;
  v33 = v16;
  v34 = v10;
  v17 = _Block_copy(v31);
  v18 = [(NUNIAstronomyVistaView *)self->_vistaView generateAnimationArrayFromVista:vista fromSceneBlock:v15 toVista:v10 toSceneBlock:v17 transitionStyle:self->_vistaTransitionStyle];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v19)
  {
    v21 = v19;
    fractionCopy = fraction;
    v23 = (fractionCopy * fractionCopy) * ((fractionCopy * -2.0) + 3.0);
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v18);
        }

        *&v20 = v23;
        [*(*(&v27 + 1) + 8 * v25++) apply:v20];
      }

      while (v21 != v25);
      v21 = [v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v21);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __112__NUNIAstronomyVistaController_applyTransitionFraction_fromVista_fromStyleDefinition_toVista_toStyleDefinition___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v3[0] = *(a1 + 32);
  v3[1] = v2;
  NUNIAstronomyVistaController_ApplyStyleDefinition(v3, a2, a2);
}

void __112__NUNIAstronomyVistaController_applyTransitionFraction_fromVista_fromStyleDefinition_toVista_toStyleDefinition___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v3[0] = *(a1 + 32);
  v3[1] = v2;
  NUNIAstronomyVistaController_ApplyStyleDefinition(v3, a2, a2);
}

- (void)startClockUpdates
{
  objc_initWeak(&location, self);
  if (!self->_clockTimerToken)
  {
    mEMORY[0x277CBB700] = [MEMORY[0x277CBB700] sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__NUNIAstronomyVistaController_startClockUpdates__block_invoke;
    v6[3] = &unk_27995FA70;
    objc_copyWeak(&v7, &location);
    v4 = [mEMORY[0x277CBB700] startUpdatesWithUpdateFrequency:0 withHandler:v6 identificationLog:&__block_literal_global_1];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = v4;

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

void __49__NUNIAstronomyVistaController_startClockUpdates__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTimeAnimated:{objc_msgSend(WeakRetained, "isPreparedForTransitions") ^ 1}];
}

- (void)stopClockUpdates
{
  if (self->_clockTimerToken)
  {
    mEMORY[0x277CBB700] = [MEMORY[0x277CBB700] sharedInstance];
    [mEMORY[0x277CBB700] stopUpdatesForToken:self->_clockTimerToken];

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_handleSpheroidPanGesture:(id)gesture
{
  gestureCopy = gesture;
  if (self->_vista != 2 && !self->_overrideDate)
  {
    v26 = gestureCopy;
    rotatable = [(NUNIAstronomyRotationModel *)self->_rotationModel rotatable];
    interactionSettings = [(NUNIAstronomyRotationModel *)self->_rotationModel interactionSettings];
    vista = self->_vista;
    if (vista)
    {
      if (vista == 2)
      {
        goto LABEL_8;
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    [(NUNIAstronomyRotationModel *)self->_rotationModel setPulling:v8];
LABEL_8:
    state = [v26 state];
    switch(state)
    {
      case 3:
        rotationModel = self->_rotationModel;
        view = [v26 view];
        [v26 velocityInView:view];
        v25.f64[1] = v24;
        [(NUNIAstronomyRotationModel *)rotationModel push:COERCE_DOUBLE(vmul_f32(*&interactionSettings->var2, vcvt_f32_f64(v25)))];

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained astronomyVistaControllerWillEndPanning:self];
        break;
      case 2:
        view2 = [v26 view];
        [v26 translationInView:view2];
        v15.f64[1] = v14;
        v16 = vcvt_f32_f64(v15);

        v17 = vsub_f32(*self->_previousTranslation, v16);
        v18 = sqrtf(COERCE_FLOAT(vmul_f32(v17, v17).i32[1]) + (v17.f32[0] * v17.f32[0]));
        recentMovement = self->_recentMovement;
        if (recentMovement != 0.0)
        {
          v18 = (recentMovement * 0.6) + (v18 * 0.4);
        }

        self->_recentMovement = v18;
        v20 = vmul_f32(*&interactionSettings->var0, v16);
        *self->_previousTranslation = v16;
        latitude = self->_initialCoordinate.latitude;
        [rotatable setCenterCoordinate:{NUNIAstronomyClampLatitude(v20.f32[1] + latitude), self->_initialCoordinate.longitude + v20.f32[0]}];
        goto LABEL_17;
      case 1:
        [(NUNIAstronomyRotationModel *)self->_rotationModel stop];
        [rotatable centerCoordinate];
        self->_initialCoordinate.latitude = v10;
        self->_initialCoordinate.longitude = v11;
        self->_recentMovement = 0.0;
        *self->_previousTranslation = 0;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained astronomyVistaControllerWillBeginPanning:self];
        break;
      default:
LABEL_17:

        gestureCopy = v26;
        goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_handleInteractiveModeGesture:(id)gesture
{
  if ([gesture state] != 3)
  {
    return;
  }

  mode = self->_mode;
  if ((mode - 2) >= 2)
  {
    if (mode)
    {
      goto LABEL_7;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained astronomyVistaControllerWillEnterInteractiveMode:self];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained astronomyVistaControllerWillLeaveInteractiveMode:self];
  }

  mode = self->_mode;
LABEL_7:
  if (mode)
  {

    [(NUNIAstronomyVistaController *)self _updateFrameInterval];
  }
}

- (void)_handleSupplementalModeGesture:(id)gesture
{
  if ([gesture state] != 3 || self->_vista != 2)
  {
    return;
  }

  mode = self->_mode;
  if (mode)
  {
    if (mode == 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained astronomyVistaControllerWillLeaveSupplementalMode:self];
      goto LABEL_9;
    }

    if (mode != 2)
    {
      return;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained astronomyVistaControllerWillEnterSupplementalMode:self];
LABEL_9:
}

- (void)animateTransitionToMode:(int64_t)mode
{
  mode = self->_mode;
  if (mode == 1)
  {
    [(NUNIAstronomyVistaView *)self->_vistaView startAnimation];
  }

  if (mode < 2)
  {
    goto LABEL_6;
  }

  if (mode == 2)
  {
    if (mode == 3)
    {
      [(NUNIAstronomyVistaView *)self->_vistaView updateSunLocationAnimated:1];
    }

    [(UIPanGestureRecognizer *)self->_spheroidPanGesture setEnabled:1];
    v7[0] = _NUNIAegirStyleInteractiveDefinition;
    v7[1] = unk_25B71AC38;
    [(NUNIAstronomyVistaController *)self _animateToStyleDefinition:v7];
  }

  else if (mode == 3)
  {
LABEL_6:
    [(UIPanGestureRecognizer *)self->_spheroidPanGesture setEnabled:0];
    [(NUNIAstronomyVistaView *)self->_vistaView updateSunLocationAnimated:1];
    [(NUNIAstronomyVistaController *)self _animateToStyle:self->_style];
  }

  [(UITapGestureRecognizer *)self->_supplementalModeDoubleTapGesture setEnabled:0];
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setEnabled:0];
  if (self->_vista != 2 && ![(NUNIAstronomyRotationModel *)self->_rotationModel isAtHomeCoordinate])
  {
    [(NUNIAstronomyRotationModel *)self->_rotationModel stop];
    rotatable = [(NUNIAstronomyRotationModel *)self->_rotationModel rotatable];
    [rotatable homeCoordinate];
    [rotatable setCenterCoordinate:1 animated:?];
  }

  [(NUNIAstronomyVistaView *)self->_vistaView showSupplemental:mode == 3 animated:1];
}

- (void)activeMode
{
  [(NUNIAstronomyVistaView *)self->_vistaView updateSunLocationAnimated:0];
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setEnabled:1];
  [(UIPanGestureRecognizer *)self->_spheroidPanGesture setEnabled:0];
  [(NUNIAstronomyVistaController *)self showLocationDotAnimated:0];
  [(NUNIAstronomyVistaController *)self _updateFrameInterval];
  [(NUNIAstronomyVistaView *)self->_vistaView startAnimation];

  [(NUNIAstronomyVistaController *)self startClockUpdates];
}

- (void)deactiveMode
{
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setEnabled:0];
  [(UITapGestureRecognizer *)self->_supplementalModeDoubleTapGesture setEnabled:0];
  [(UIPanGestureRecognizer *)self->_spheroidPanGesture setEnabled:0];
  if (!self->_isBacklightTransitionEnabled)
  {
    [(NUNIAstronomyVistaController *)self hideLocationDotAnimated:0];
  }

  [(NUNIAstronomyVistaController *)self _updateFrameInterval];
  [(NUNIAstronomyVistaView *)self->_vistaView stopAnimation];

  [(NUNIAstronomyVistaController *)self stopClockUpdates];
}

- (void)interactiveMode
{
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setEnabled:1];
  [(UIPanGestureRecognizer *)self->_spheroidPanGesture setEnabled:1];
  [(NUNIAstronomyVistaController *)self showLocationDotAnimated:0];
  [(NUNIAstronomyVistaController *)self _updateFrameInterval];
  [(NUNIAstronomyVistaView *)self->_vistaView startAnimation];

  [(NUNIAstronomyVistaController *)self startClockUpdates];
}

- (void)supplementalMode
{
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setEnabled:1];
  [(UIPanGestureRecognizer *)self->_spheroidPanGesture setEnabled:0];
  [(NUNIAstronomyVistaController *)self hideLocationDotAnimated:0];
  [(NUNIAstronomyVistaController *)self _updateFrameInterval];
  [(NUNIAstronomyVistaView *)self->_vistaView startAnimation];

  [(NUNIAstronomyVistaController *)self startClockUpdates];
}

- (void)applyMode:(int64_t)mode
{
  self->_mode = mode;
  if (mode > 1)
  {
    if (mode == 3)
    {
      [(NUNIAstronomyVistaController *)self supplementalMode];
    }

    else if (mode == 2)
    {
      v5[0] = _NUNIAegirStyleInteractiveDefinition;
      v5[1] = unk_25B71AC38;
      [(NUNIAstronomyVistaController *)self applyStyleDefinition:v5];
      [(NUNIAstronomyVistaController *)self interactiveMode];
    }
  }

  else if (mode)
  {
    if (mode == 1)
    {
      [(NUNIAstronomyVistaController *)self deactiveMode];
    }
  }

  else
  {
    [(NUNIAstronomyVistaController *)self activeMode];
  }

  [(NUNIAstronomyVistaView *)self->_vistaView applyVista:self->_vista transitionStyle:self->_vistaTransitionStyle];
  [(NUNIAstronomyVistaView *)self->_vistaView showSupplemental:mode == 3 animated:0];
}

- (void)setForceDisableLocationDot:(BOOL)dot
{
  self->_forceDisableLocationDot = dot;
  if (dot)
  {
    [(NUNIAstronomyVistaController *)self hideLocationDotAnimated:0];
  }

  else
  {
    [(NUNIAstronomyVistaController *)self showLocationDotAnimated:1];
  }
}

- (void)hideLocationDotAnimated:(BOOL)animated
{
  animatedCopy = animated;
  scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
  v10 = scene;
  if (animatedCopy && (v6 = [(NUNIAstronomyVistaController *)self shouldShowLocationDot], scene = v10, v6))
  {
    v7 = [[NUNIAnimation alloc] initWithAnimatable:v10 value:8 key:0.0];
    LODWORD(v8) = 1050253722;
    [(NUNIAnimation *)v7 setDuration:v8];
    [v10 addAnimation:v7];
  }

  else
  {
    [scene removeAllAnimationsFor:scene withKeys:1792];
    [v10 setLocationDotPulse:0.0];
    LODWORD(v9) = 1.0;
    [v10 setLocationDotPulseOverrideAlpha:v9];
    [v10 setLocationDotAlpha:0.0];
  }
}

- (void)setLocationDotAlpha:(double)alpha
{
  scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
  shouldShowLocationDot = [(NUNIAstronomyVistaController *)self shouldShowLocationDot];
  *&v6 = alpha;
  if (!shouldShowLocationDot)
  {
    *&v6 = 0.0;
  }

  [scene setLocationDotAlpha:v6];
}

- (void)showLocationDotAnimated:(BOOL)animated
{
  animatedCopy = animated;
  scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
  if ([(NUNIAstronomyVistaController *)self shouldShowLocationDot])
  {
    if (animatedCopy)
    {
      v5 = [NUNIAnimation alloc];
      __asm { FMOV            V0.4S, #1.0 }

      v11 = [(NUNIAnimation *)v5 initWithAnimatable:scene value:8 key:*&_Q0];
      LODWORD(v12) = 1050253722;
      [(NUNIAnimation *)v11 setDuration:v12];
      [scene addAnimation:v11];

      goto LABEL_7;
    }

    [scene removeAllAnimationsFor:scene withKeys:1792];
    [scene setLocationDotPulse:0.0];
    LODWORD(v15) = 1.0;
    [scene setLocationDotPulseOverrideAlpha:v15];
    LODWORD(v14) = 1.0;
  }

  else
  {
    [scene removeAllAnimationsFor:scene withKeys:1792];
    [scene setLocationDotPulse:0.0];
    LODWORD(v13) = 1.0;
    [scene setLocationDotPulseOverrideAlpha:v13];
    v14 = 0.0;
  }

  [scene setLocationDotAlpha:v14];
LABEL_7:
}

- (void)pulseLocationDot
{
  scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
  if ([(NUNIAstronomyVistaController *)self shouldShowLocationDot])
  {
    v3 = [NUNIAnimation alloc];
    numberOfPulses = self->_numberOfPulses;
    *&numberOfPulses = numberOfPulses;
    v5 = [(NUNIAnimation *)v3 initWithAnimatable:scene value:9 key:*vdupq_lane_s32(*&numberOfPulses, 0).i64];
    pulseAnimationDuration = self->_pulseAnimationDuration;
    *&pulseAnimationDuration = pulseAnimationDuration;
    [(NUNIAnimation *)v5 setDuration:pulseAnimationDuration];
    [(NUNIAnimation *)v5 setObserver:self];
    [scene addAnimation:v5];
  }

  else
  {
    [scene removeAllAnimationsFor:scene withKeys:1792];
    [scene setLocationDotPulse:0.0];
    LODWORD(v7) = 1.0;
    [scene setLocationDotPulseOverrideAlpha:v7];
    [scene setLocationDotAlpha:0.0];
  }
}

- (void)stopLocationDotPulse
{
  scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
  [scene removeAllAnimationsFor:scene withKeys:1536];
  [scene setLocationDotPulse:0.0];
  LODWORD(v2) = 1.0;
  [scene setLocationDotPulseOverrideAlpha:v2];
}

- (void)hideLocationDotPulse
{
  if ([(NUNIAstronomyVistaController *)self shouldShowLocationDot])
  {

    [(NUNIAstronomyVistaController *)self hideLocationDotAnimated:0];
  }

  else
  {
    scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
    v3 = [[NUNIAnimation alloc] initWithAnimatable:scene value:10 key:0.0];
    LODWORD(v4) = 1.0;
    [(NUNIAnimation *)v3 setDuration:v4];
    [(NUNIAnimation *)v3 setObserver:self];
    [scene addAnimation:v3];
  }
}

- (void)astronomyAnimationFinished:(id)finished
{
  if (([finished key] - 8) <= 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pulseAnimationDelegate);
    [WeakRetained pulseAnimationDidFinish];
  }

  if (self->_isAnimatingStyleDefinition)
  {
    v5 = objc_loadWeakRetained(&self->_styleAnimationDelegate);

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_styleAnimationDelegate);
      [v6 styleAnimationDidFinish];
    }
  }
}

- (void)applyStyle:(unint64_t)style
{
  self->_style = style;
  v3 = &_NUNIGetAegirStyleDefinition_earthDefinitions;
  vista = self->_vista;
  if (vista == 1)
  {
    v3 = &_NUNIGetAegirStyleDefinition_lunaDefinitions;
  }

  if (vista == 2)
  {
    v3 = &_NUNIGetAegirStyleDefinition_orreryDefinitions;
  }

  v5 = &v3[32 * style];
  v6 = *(v5 + 1);
  v7[0] = *v5;
  v7[1] = v6;
  [(NUNIAstronomyVistaController *)self applyStyleDefinition:v7];
}

- (void)applyStyleDefinition:(NUNIAegirStyleDefinition)definition
{
  v4 = v3;
  v6 = v3[1];
  *&self->_styleDefinition.orbit = *v3;
  *&self[1]._vistaView = v6;
  scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
  v7 = v4[1];
  v11[0] = *v4;
  v11[1] = v7;
  NUNIAstronomyVistaController_ApplyStyleDefinition(v11, v8, scene);
  rotatable = [(NUNIAstronomyRotationModel *)self->_rotationModel rotatable];
  [rotatable homeCoordinate];
  [rotatable setCenterCoordinate:?];
  [scene updateCamera];
}

- (void)_animateToStyle:(unint64_t)style
{
  v3 = &_NUNIGetAegirStyleDefinition_earthDefinitions;
  vista = self->_vista;
  if (vista == 1)
  {
    v3 = &_NUNIGetAegirStyleDefinition_lunaDefinitions;
  }

  if (vista == 2)
  {
    v3 = &_NUNIGetAegirStyleDefinition_orreryDefinitions;
  }

  v5 = &v3[32 * style];
  v6 = *(v5 + 1);
  v7[0] = *v5;
  v7[1] = v6;
  [(NUNIAstronomyVistaController *)self _animateToStyleDefinition:v7];
}

- (void)_animateToStyleDefinition:(NUNIAegirStyleDefinition)definition
{
  v4 = v3[1];
  v5[0] = *v3;
  v5[1] = v4;
  [(NUNIAstronomyVistaController *)self animateToStyleDefinition:v5 duration:COERCE_DOUBLE(__PAIR64__(DWORD1(v5[0]), 1.0))];
}

- (void)animateToStyleDefinition:(NUNIAegirStyleDefinition)definition duration:(float)duration
{
  v6 = v4;
  self->_isAnimatingStyleDefinition = 1;
  scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
  v8 = *(v6 + 16);
  v31 = *(v6 + 8);
  vista = [(NUNIAstronomyVistaController *)self vista];
  v10 = [scene spheroidOfType:3];
  if (v10)
  {
    v11 = [NUNIAnimation alloc];
    v12 = (v6 + 24);
    *&v13 = vld1q_dup_f32(v12).u64[0];
    v14 = [(NUNIAnimation *)v11 initWithAnimatable:v10 value:12 key:v13];
    LODWORD(v15) = definition;
    [(NUNIAnimation *)v14 setDuration:v15];
    [scene addAnimation:v14];
  }

  __asm { FMOV            V1.2S, #-15.0 }

  v30 = COERCE_DOUBLE(vbsl_s8(vceqd_s64(vista, 1), v8, vmul_f32(v8, _D1)));
  v21 = [NUNIAnimation alloc];
  *&v22 = vld1q_dup_f32(v6).u64[0];
  v23 = [(NUNIAnimation *)v21 initWithAnimatable:scene value:5 key:v22];
  LODWORD(v24) = definition;
  [(NUNIAnimation *)v23 setDuration:v24];
  [scene addAnimation:v23];
  v25 = [[NUNIAnimation alloc] initWithAnimatable:scene value:6 key:v31];
  LODWORD(v26) = definition;
  [(NUNIAnimation *)v25 setDuration:v26];
  [scene addAnimation:v25];
  v27 = [[NUNIAnimation alloc] initWithAnimatable:scene value:7 key:v30];
  LODWORD(v28) = definition;
  [(NUNIAnimation *)v27 setDuration:v28];
  [scene addAnimation:v27];
  v29 = *(v6 + 16);
  *&self->_styleDefinition.orbit = *v6;
  *&self[1]._vistaView = v29;
}

- (void)animateToVista:(unint64_t)vista styleDefinition:(NUNIAegirStyleDefinition)definition duration:(float)duration
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = v5[1];
  v24[0] = *v5;
  v24[1] = v9;
  v10 = [(NUNIAstronomyVistaController *)self generateAnimationToVista:vista styleDefinition:v24];
  scene = [(NUNIAstronomyVistaView *)self->_vistaView scene];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v20 + 1) + 8 * i);
        LODWORD(v14) = definition;
        [v18 setDuration:{v14, v20}];
        [scene addAnimation:v18];
      }

      v15 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v15);
  }

  self->_vista = vista;
  v19 = *MEMORY[0x277D85DE8];
}

- (NUNIAstronomyVistaControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NUNIAegirStyleDefinition)styleDefinition
{
  v3 = *&self->_styleDefinition.orbit;
  v4 = *&self[1]._vistaView;
  *v2 = v3;
  v2[1] = v4;
  return v3;
}

- (NUNIAstronomyStyleAnimationDelegate)styleAnimationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_styleAnimationDelegate);

  return WeakRetained;
}

- (NUNIAstronomyPulseAnimationDelegate)pulseAnimationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pulseAnimationDelegate);

  return WeakRetained;
}

@end