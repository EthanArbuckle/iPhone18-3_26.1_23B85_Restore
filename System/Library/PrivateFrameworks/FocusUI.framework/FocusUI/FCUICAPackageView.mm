@interface FCUICAPackageView
+ (id)packageViewForActivity:(id)activity;
- (BOOL)setState:(id)state onLayer:(id)layer animated:(BOOL)animated transitionSpeed:(double)speed completion:(id)completion;
- (CAStateControllerDelegate)stateControllerDelegate;
- (CGSize)sizeThatFits:(CGSize)fits;
- (FCUICAPackageView)initWithPackageName:(id)name inBundle:(id)bundle;
- (FCUICAPackageView)initWithURL:(id)l;
- (void)_setPendingCompletion:(id)completion fromState:(id)state toState:(id)toState;
- (void)layoutSubviews;
- (void)stateController:(id)controller didSetStateOfLayer:(id)layer;
- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed;
- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed;
- (void)updateStateWithName:(id)name updateHandler:(id)handler;
@end

@implementation FCUICAPackageView

- (FCUICAPackageView)initWithPackageName:(id)name inBundle:(id)bundle
{
  v5 = [bundle URLForResource:name withExtension:@"ca"];
  v6 = [(FCUICAPackageView *)self initWithURL:v5];

  return v6;
}

- (FCUICAPackageView)initWithURL:(id)l
{
  v36 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = *MEMORY[0x277CDA7F8];
  v34 = 0;
  v6 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:lCopy type:v5 options:0 error:&v34];
  v7 = v34;
  rootLayer = [v6 rootLayer];
  [rootLayer frame];
  v33.receiver = self;
  v33.super_class = FCUICAPackageView;
  v9 = [(FCUICAPackageView *)&v33 initWithFrame:?];
  v10 = v9;
  if (v9)
  {
    v28 = lCopy;
    objc_storeStrong(&v9->_rootLayer, rootLayer);
    v27 = rootLayer;
    [rootLayer frame];
    v10->_originalSize.width = v11;
    v10->_originalSize.height = v12;
    -[CALayer setGeometryFlipped:](v10->_rootLayer, "setGeometryFlipped:", [v6 isGeometryFlipped]);
    layer = [(FCUICAPackageView *)v10 layer];
    [layer addSublayer:v10->_rootLayer];

    publishedObjectNames = [v6 publishedObjectNames];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [publishedObjectNames countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(publishedObjectNames);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [v6 publishedObjectWithName:v20];
          if (v21)
          {
            if (!v17)
            {
              v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(publishedObjectNames, "count")}];
            }

            [v17 setObject:v21 forKey:v20];
          }
        }

        v16 = [publishedObjectNames countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v22 = [v17 copy];
    publishedObjectMap = v10->_publishedObjectMap;
    v10->_publishedObjectMap = v22;

    v24 = [objc_alloc(MEMORY[0x277CD9FB8]) initWithLayer:v10->_rootLayer];
    stateController = v10->_stateController;
    v10->_stateController = v24;

    [(CAStateController *)v10->_stateController setDelegate:v10];
    lCopy = v28;
    rootLayer = v27;
  }

  return v10;
}

+ (id)packageViewForActivity:(id)activity
{
  activityCopy = activity;
  v4 = FCUIPackageNameForActivity(activityCopy);
  if ([v4 length])
  {
    v5 = [FCUICAPackageView alloc];
    v6 = FCUIBundle();
    v7 = [(FCUICAPackageView *)v5 initWithPackageName:v4 inBundle:v6];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__FCUICAPackageView_packageViewForActivity___block_invoke;
    v9[3] = &unk_27901A840;
    v10 = activityCopy;
    [(FCUICAPackageView *)v7 updateStateWithName:@"ON" updateHandler:v9];
    [(FCUICAPackageView *)v7 setUserInteractionEnabled:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __44__FCUICAPackageView_packageViewForActivity___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [a2 copy];
    v4 = [v3 elements];
    v5 = [v4 copy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 keyPath];
          v13 = [v12 isEqualToString:@"fillColor"];

          if (v13)
          {
            v14 = objc_alloc_init(MEMORY[0x277CD9FC0]);
            v15 = [v11 target];
            [v14 setTarget:v15];

            v16 = [v11 keyPath];
            [v14 setKeyPath:v16];

            v17 = [MEMORY[0x277D75348] fcui_colorForActivity:*(a1 + 32)];
            [v14 setValue:{objc_msgSend(v17, "CGColor")}];

            [v3 removeElement:v11];
            [v3 addElement:v14];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)setState:(id)state onLayer:(id)layer animated:(BOOL)animated transitionSpeed:(double)speed completion:(id)completion
{
  animatedCopy = animated;
  stateCopy = state;
  layerCopy = layer;
  completionCopy = completion;
  v15 = [layerCopy stateWithName:stateCopy];
  if (v15)
  {
    if (animatedCopy)
    {
      if (completionCopy)
      {
        v17 = [(CAStateController *)self->_stateController stateOfLayer:layerCopy];
        name = [v17 name];
        [(FCUICAPackageView *)self _setPendingCompletion:completionCopy fromState:name toState:stateCopy];
      }

      *&v16 = speed;
      [(CAStateController *)self->_stateController setState:v15 ofLayer:layerCopy transitionSpeed:v16];
    }

    else
    {
      [(FCUICAPackageView *)self _clearPendingCompletion];
      [(CAStateController *)self->_stateController setState:v15 ofLayer:layerCopy];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  return v15 != 0;
}

- (CAStateControllerDelegate)stateControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateControllerDelegate);

  return WeakRetained;
}

- (void)updateStateWithName:(id)name updateHandler:(id)handler
{
  rootLayer = self->_rootLayer;
  handlerCopy = handler;
  v10 = [(CALayer *)rootLayer stateWithName:name];
  v8 = handlerCopy[2](handlerCopy, v10);

  if (v10)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [(CALayer *)self->_rootLayer removeState:v10];
    [(CALayer *)self->_rootLayer addState:v8];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_originalSize.width;
  height = self->_originalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = FCUICAPackageView;
  [(FCUICAPackageView *)&v8 layoutSubviews];
  [(FCUICAPackageView *)self bounds];
  if (v3 / self->_originalSize.width >= v4 / self->_originalSize.height)
  {
    v5 = v4 / self->_originalSize.height;
  }

  else
  {
    v5 = v3 / self->_originalSize.width;
  }

  [(CALayer *)self->_rootLayer setPosition:v3 * 0.5, v4 * 0.5];
  rootLayer = self->_rootLayer;
  CATransform3DMakeScale(&v7, v5, v5, 1.0);
  [(CALayer *)rootLayer setTransform:&v7];
}

- (void)stateController:(id)controller didSetStateOfLayer:(id)layer
{
  controllerCopy = controller;
  layerCopy = layer;
  WeakRetained = objc_loadWeakRetained(&self->_stateControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained stateController:controllerCopy didSetStateOfLayer:layerCopy];
  }
}

- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed
{
  controllerCopy = controller;
  startCopy = start;
  WeakRetained = objc_loadWeakRetained(&self->_stateControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    *&v10 = speed;
    [WeakRetained stateController:controllerCopy transitionDidStart:startCopy speed:v10];
  }
}

- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed
{
  completedCopy = completed;
  controllerCopy = controller;
  stopCopy = stop;
  v9 = stopCopy;
  if (self->_pendingCompletion)
  {
    toState = [stopCopy toState];
    v11 = [toState isEqualToString:self->_pendingCompletionToState];

    if (v11)
    {
      (*(self->_pendingCompletion + 2))();
      pendingCompletion = self->_pendingCompletion;
      self->_pendingCompletion = 0;

      pendingCompletionFromState = self->_pendingCompletionFromState;
      self->_pendingCompletionFromState = 0;

      pendingCompletionToState = self->_pendingCompletionToState;
      self->_pendingCompletionToState = 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_stateControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained stateController:controllerCopy transitionDidStop:v9 completed:completedCopy];
  }
}

- (void)_setPendingCompletion:(id)completion fromState:(id)state toState:(id)toState
{
  completionCopy = completion;
  stateCopy = state;
  toStateCopy = toState;
  pendingCompletion = self->_pendingCompletion;
  if (pendingCompletion)
  {
    pendingCompletion[2](pendingCompletion, 0);
  }

  v11 = [completionCopy copy];
  v12 = self->_pendingCompletion;
  self->_pendingCompletion = v11;

  v13 = [stateCopy copy];
  pendingCompletionFromState = self->_pendingCompletionFromState;
  self->_pendingCompletionFromState = v13;

  v15 = [toStateCopy copy];
  pendingCompletionToState = self->_pendingCompletionToState;
  self->_pendingCompletionToState = v15;
}

@end