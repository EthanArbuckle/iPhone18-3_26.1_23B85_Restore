@interface OBAnimationController
+ (id)packageForURL:(id)l;
- (OBAnimationController)initWithUrlToPackage:(id)package animationView:(id)view sizingTransformScale:(double)scale animatedStates:(id)states startAtFirstState:(id)state;
- (id)_caStateForAnimationState:(id)state;
- (void)_initializeStartingStateForStopAnimation:(BOOL)animation;
- (void)_startAnimationForLayer:(id)layer;
- (void)_stepAnimationStatesForLayer:(id)layer;
- (void)startAnimation;
- (void)stopAnimation;
- (void)updateAnimationForAppearanceChange;
@end

@implementation OBAnimationController

- (OBAnimationController)initWithUrlToPackage:(id)package animationView:(id)view sizingTransformScale:(double)scale animatedStates:(id)states startAtFirstState:(id)state
{
  packageCopy = package;
  viewCopy = view;
  statesCopy = states;
  stateCopy = state;
  v26.receiver = self;
  v26.super_class = OBAnimationController;
  v16 = [(OBAnimationController *)&v26 init];
  if (v16)
  {
    v17 = [objc_opt_class() packageForURL:packageCopy];
    package = v16->_package;
    v16->_package = v17;

    objc_storeStrong(&v16->_animationView, view);
    [(OBAnimationView *)v16->_animationView setAppearanceChangeDelegate:v16];
    [viewCopy setPackage:v16->_package sizingTransformScale:scale];
    v19 = [statesCopy copy];
    animatedStates = v16->_animatedStates;
    v16->_animatedStates = v19;

    objc_storeStrong(&v16->_firstState, state);
    v21 = objc_alloc(MEMORY[0x1E69794D0]);
    rootLayer = [(CAPackage *)v16->_package rootLayer];
    v23 = [v21 initWithLayer:rootLayer];
    stateController = v16->_stateController;
    v16->_stateController = v23;

    [(OBAnimationController *)v16 _initializeStartingStateForStopAnimation:0];
  }

  return v16;
}

- (void)startAnimation
{
  [(OBAnimationController *)self setCanceled:0];
  package = [(OBAnimationController *)self package];
  rootLayer = [package rootLayer];
  [(OBAnimationController *)self _startAnimationForLayer:rootLayer];
}

- (void)stopAnimation
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  stateController = [(OBAnimationController *)self stateController];

  if (stateController)
  {
    stateController2 = [(OBAnimationController *)self stateController];
    [stateController2 cancelTimers];

    stateController3 = [(OBAnimationController *)self stateController];
    removeAllStateChanges = [stateController3 removeAllStateChanges];
  }

  [(OBAnimationController *)self setStateIndex:0];
  [(OBAnimationController *)self setCanceled:1];

  [(OBAnimationController *)self _initializeStartingStateForStopAnimation:1];
}

- (void)_initializeStartingStateForStopAnimation:(BOOL)animation
{
  animationView = [(OBAnimationController *)self animationView];
  traitCollection = [animationView traitCollection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__OBAnimationController__initializeStartingStateForStopAnimation___block_invoke;
  v7[3] = &unk_1E7C15608;
  v7[4] = self;
  animationCopy = animation;
  [traitCollection performAsCurrentTraitCollection:v7];
}

void __66__OBAnimationController__initializeStartingStateForStopAnimation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    v18 = [v2 _caStateForAnimationState:?];
    if (*(a1 + 40))
    {
      v3 = 100.0;
    }

    else
    {
      [*(*(a1 + 32) + 56) transitionSpeed];
      v3 = v5;
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    v8 = [*(v6 + 16) rootLayer];
    *&v9 = v3;
    [v7 setInitialStatesOfLayer:v8 transitionSpeed:v9];

    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    v12 = [*(v10 + 16) rootLayer];
    *&v13 = v3;
    [v11 setState:v18 ofLayer:v12 transitionSpeed:v13];
  }

  else
  {
    if (*(a1 + 40))
    {
      v4 = 100.0;
    }

    else
    {
      v14 = [*(v2 + 40) objectAtIndexedSubscript:0];
      [v14 transitionSpeed];
      v4 = v15;

      v2 = *(a1 + 32);
    }

    v16 = *(v2 + 24);
    v18 = [*(v2 + 16) rootLayer];
    *&v17 = v4;
    [v16 setInitialStatesOfLayer:v17 transitionSpeed:?];
  }
}

- (void)_startAnimationForLayer:(id)layer
{
  layerCopy = layer;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  animationView = [(OBAnimationController *)self animationView];
  traitCollection = [animationView traitCollection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__OBAnimationController__startAnimationForLayer___block_invoke;
  v8[3] = &unk_1E7C15630;
  v8[4] = self;
  v9 = layerCopy;
  v7 = layerCopy;
  [traitCollection performAsCurrentTraitCollection:v8];
}

- (void)_stepAnimationStatesForLayer:(id)layer
{
  layerCopy = layer;
  stateIndex = [(OBAnimationController *)self stateIndex];
  animatedStates = [(OBAnimationController *)self animatedStates];
  if (stateIndex >= [animatedStates count])
  {
  }

  else
  {
    canceled = [(OBAnimationController *)self canceled];

    if (!canceled)
    {
      animatedStates2 = [(OBAnimationController *)self animatedStates];
      v9 = [animatedStates2 objectAtIndexedSubscript:{-[OBAnimationController stateIndex](self, "stateIndex")}];

      animationView = [(OBAnimationController *)self animationView];
      traitCollection = [animationView traitCollection];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54__OBAnimationController__stepAnimationStatesForLayer___block_invoke;
      v13[3] = &unk_1E7C15658;
      v13[4] = self;
      v14 = v9;
      v15 = layerCopy;
      v12 = v9;
      [traitCollection performAsCurrentTraitCollection:v13];
    }
  }
}

void __54__OBAnimationController__stepAnimationStatesForLayer___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _caStateForAnimationState:*(a1 + 40)];
  [*(a1 + 32) setStateIndex:{objc_msgSend(*(a1 + 32), "stateIndex") + 1}];
  if (v7)
  {
    v2 = [*(a1 + 32) stateController];
    v3 = *(a1 + 48);
    [*(a1 + 40) transitionSpeed];
    *&v4 = v4;
    [v2 setState:v7 ofLayer:v3 transitionSpeed:v4];

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*(a1 + 32)];
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    [*(a1 + 40) transitionDuration];
    [v6 performSelector:sel__stepAnimationStatesForLayer_ withObject:v5 afterDelay:?];
  }
}

+ (id)packageForURL:(id)l
{
  lCopy = l;
  v4 = *MEMORY[0x1E6979EF8];
  v10 = 0;
  v5 = [MEMORY[0x1E6979400] packageWithContentsOfURL:lCopy type:v4 options:0 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = _OBLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(OBAnimationController *)lCopy packageForURL:v6, v7];
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)_caStateForAnimationState:(id)state
{
  stateCopy = state;
  package = [(OBAnimationController *)self package];
  rootLayer = [package rootLayer];
  v7 = [stateCopy stateForLayer:rootLayer];

  return v7;
}

- (void)updateAnimationForAppearanceChange
{
  animatedStates = [(OBAnimationController *)self animatedStates];
  stateIndex = [(OBAnimationController *)self stateIndex];
  animatedStates2 = [(OBAnimationController *)self animatedStates];
  v6 = [animatedStates2 count] - 1;

  if (stateIndex >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = stateIndex;
  }

  v12 = [animatedStates objectAtIndexedSubscript:v7];

  v8 = [(OBAnimationController *)self _caStateForAnimationState:v12];
  stateController = [(OBAnimationController *)self stateController];
  package = [(OBAnimationController *)self package];
  rootLayer = [package rootLayer];
  [stateController setState:v8 ofLayer:rootLayer transitionSpeed:0.0];
}

+ (void)packageForURL:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 description];
  v6 = [a2 description];
  v8 = 138412546;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_1B4FB6000, a3, OS_LOG_TYPE_ERROR, "Unable to load package with url %@: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end