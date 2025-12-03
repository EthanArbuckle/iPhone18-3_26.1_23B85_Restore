@interface DRViewController
- (BOOL)hasActiveDragSession;
- (CATransform3D)transformToLocalWindowForCoordinateSpaceTransformToDisplay:(SEL)display;
- (CGRect)_defaultInitialViewFrame;
- (DRViewController)initWithDelegate:(id)delegate initialFrame:(CGRect)frame;
- (DRViewControllerDelegate)delegate;
- (id)sessionViewModelForAddingTouch:(id)touch;
- (id)sessionViewModelForBeginningDragManipulationAtLocation:(CGPoint)location;
- (unsigned)sessionIDForViewModel:(id)model;
- (void)addSession:(id)session withSourceClient:(id)client touchIDs:(id)ds itemCount:(unint64_t)count centroid:(CAPoint3D)centroid sourceContextID:(unsigned int)d initialCentroidInSourceContext:(CAPoint3D)context preferredPreviewIndexes:(id)self0;
- (void)configurePortalViewForDragSessionOriginatingFromViewController:(id)controller;
- (void)dealloc;
- (void)loadView;
- (void)observeInterfaceOrientationUpdates;
- (void)orientationObserver:(id)observer orientationDidChange:(id)change;
- (void)removeTouches:(id)touches;
- (void)sessionController:(id)controller didUpdatePresentation:(id)presentation;
- (void)sessionController:(id)controller requestImagesForClient:(id)client itemIndexes:(id)indexes;
- (void)sessionController:(id)controller setTouchOffset:(CGPoint)offset;
- (void)teardownPortalViewForDragSessionOriginatingFromViewController:(id)controller;
- (void)updateWithTouches:(id)touches;
@end

@implementation DRViewController

- (DRViewController)initWithDelegate:(id)delegate initialFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v10 = [(DRViewController *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v12 = objc_opt_new();
    controllers = v11->_controllers;
    v11->_controllers = v12;

    v14 = objc_opt_new();
    activeTouches = v11->_activeTouches;
    v11->_activeTouches = v14;

    v16 = objc_opt_new();
    pendingRemovalControllers = v11->_pendingRemovalControllers;
    v11->_pendingRemovalControllers = v16;

    v11->_initialFrame.origin.x = x;
    v11->_initialFrame.origin.y = y;
    v11->_initialFrame.size.width = width;
    v11->_initialFrame.size.height = height;
    v11->_currentOrientation = 1;
  }

  return v11;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = DRViewController;
  [(DRViewController *)&v7 loadView];
  v3 = objc_opt_new();
  view = [(DRViewController *)self view];
  [view frame];
  [(UIView *)v3 setFrame:?];

  [(UIView *)v3 setAutoresizingMask:18];
  [(UIView *)v3 setMultipleTouchEnabled:1];
  view2 = [(DRViewController *)self view];
  [view2 addSubview:v3];

  contentView = self->_contentView;
  self->_contentView = v3;
}

- (CGRect)_defaultInitialViewFrame
{
  x = self->_initialFrame.origin.x;
  y = self->_initialFrame.origin.y;
  width = self->_initialFrame.size.width;
  height = self->_initialFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)hasActiveDragSession
{
  controllers = [(DRViewController *)self controllers];
  v3 = [controllers count] != 0;

  return v3;
}

- (void)addSession:(id)session withSourceClient:(id)client touchIDs:(id)ds itemCount:(unint64_t)count centroid:(CAPoint3D)centroid sourceContextID:(unsigned int)d initialCentroidInSourceContext:(CAPoint3D)context preferredPreviewIndexes:(id)self0
{
  z = context.z;
  y = context.y;
  x = context.x;
  v17 = centroid.z;
  v18 = centroid.y;
  v19 = centroid.x;
  sessionCopy = session;
  clientCopy = client;
  dsCopy = ds;
  indexesCopy = indexes;
  controllers = [(DRViewController *)self controllers];
  v25 = [controllers count];

  if (!v25)
  {
    _UIUpdateRequestActivate();
  }

  v26 = -[DRViewController newSessionControllerForSession:](self, "newSessionControllerForSession:", [sessionCopy identifier]);
  [v26 setOrientation:self->_currentOrientation withDuration:0 direction:0.0];
  controllers = self->_controllers;
  v28 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [sessionCopy identifier]);
  [(NSMutableDictionary *)controllers setObject:v26 forKeyedSubscript:v28];

  model = [v26 model];
  v100 = clientCopy;
  v30 = [model addClientModelForClient:clientCopy isSource:1];

  if ([dsCopy count])
  {
    countCopy = count;
    selfCopy = self;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v31 = dsCopy;
    v32 = dsCopy;
    v33 = [v32 countByEnumeratingWithState:&v106 objects:v111 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v107;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v107 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v106 + 1) + 8 * i);
          model2 = [v26 model];
          [model2 addTouchID:v37];
        }

        v34 = [v32 countByEnumeratingWithState:&v106 objects:v111 count:16];
      }

      while (v34);
    }

    dsCopy = v31;
    count = countCopy;
    self = selfCopy;
  }

  else
  {
    model3 = [v26 model];
    [model3 setUsesSynthesizedTouch:1];
  }

  rotatable = [sessionCopy rotatable];
  model4 = [v26 model];
  [model4 setRotatable:rotatable];

  resizable = [sessionCopy resizable];
  model5 = [v26 model];
  [model5 setResizable:resizable];

  [sessionCopy minimumResizableSize];
  v45 = v44;
  v47 = v46;
  model6 = [v26 model];
  [model6 setMinimumResizableSize:{v45, v47}];

  [sessionCopy maximumResizableSize];
  v50 = v49;
  v52 = v51;
  model7 = [v26 model];
  [model7 setMaximumResizableSize:{v50, v52}];

  wantsElasticEffects = [sessionCopy wantsElasticEffects];
  model8 = [v26 model];
  [model8 setWantsElasticEffects:wantsElasticEffects];

  [sessionCopy originalRotation];
  v57 = v56;
  model9 = [v26 model];
  [model9 setOriginalRotation:v57];

  [sessionCopy originalScale];
  v60 = v59;
  v62 = v61;
  model10 = [v26 model];
  [model10 setOriginalScale:{v60, v62}];

  model11 = [v26 model];
  [model11 setSourceContextID:d];

  model12 = [v26 model];
  [model12 setInitialCentroidInSourceContext:{x, y, z}];

  continuityDisplayWantsDragsHidden = [sessionCopy continuityDisplayWantsDragsHidden];
  model13 = [v26 model];
  [model13 setContinuityDisplayWantsDragsHidden:continuityDisplayWantsDragsHidden];

  associatedObjectManipulationSessionID = [sessionCopy associatedObjectManipulationSessionID];
  model14 = [v26 model];
  [model14 setAssociatedObjectManipulationSessionIdentifier:associatedObjectManipulationSessionID];

  [sessionCopy associatedObjectManipulationDragItemSize];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  model15 = [v26 model];
  [model15 setAssociatedObjectManipulationDragItemSize:{v71, v73, v75}];

  sourceRestrictsDragToSelf = [sessionCopy sourceRestrictsDragToSelf];
  model16 = [v26 model];
  [model16 setSourceRestrictsDragToSelf:sourceRestrictsDragToSelf];

  sourceRestrictsDragToLocalDevice = [sessionCopy sourceRestrictsDragToLocalDevice];
  model17 = [v26 model];
  [model17 setSourceRestrictsDragToLocalDevice:sourceRestrictsDragToLocalDevice];

  model18 = [v26 model];
  [model18 addInitialItemsWithCount:count];

  model19 = [v26 model];
  [model19 setPreferredPreviewIndexes:indexesCopy];

  model20 = [v26 model];
  [model20 updateLocationWithoutTouches:{v19, v18, v17}];

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v84 = self->_activeTouches;
  v85 = [(NSMutableSet *)v84 countByEnumeratingWithState:&v102 objects:v110 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v103;
    do
    {
      for (j = 0; j != v86; j = j + 1)
      {
        if (*v103 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = *(*(&v102 + 1) + 8 * j);
        v90 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v89 _touchIdentifier]);
        [v89 locationInView:0];
        v92 = v91;
        v94 = v93;
        model21 = [v26 model];
        [model21 updateLocation:v90 ofTouchID:{v92, v94, 0.0}];
      }

      v86 = [(NSMutableSet *)v84 countByEnumeratingWithState:&v102 objects:v110 count:16];
    }

    while (v86);
  }

  model22 = [v26 model];
  [v26 viewModelInvalidated:model22];
}

- (unsigned)sessionIDForViewModel:(id)model
{
  modelCopy = model;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_controllers allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        model = [v9 model];

        if (model == modelCopy)
        {
          LODWORD(v6) = [v9 sessionID];
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updateWithTouches:(id)touches
{
  touchesCopy = touches;
  [(NSMutableSet *)self->_activeTouches unionSet:touchesCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = touchesCopy;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 _touchIdentifier]);
        [v9 locationInView:0];
        v12 = v11;
        v14 = v13;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        controllers = [(DRViewController *)self controllers];
        objectEnumerator = [controllers objectEnumerator];

        v17 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v24;
          do
          {
            for (j = 0; j != v18; j = j + 1)
            {
              if (*v24 != v19)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              model = [*(*(&v23 + 1) + 8 * j) model];
              [model updateLocation:v10 ofTouchID:{v12, v14, 0.0}];
            }

            v18 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v18);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }
}

- (id)sessionViewModelForAddingTouch:(id)touch
{
  touchCopy = touch;
  if ([touchCopy _edgeType])
  {
    model = 0;
  }

  else
  {
    [touchCopy locationInView:0];
    v7 = v6;
    window = [touchCopy window];
    screen = [window screen];
    view = [(DRViewController *)self view];
    window2 = [view window];
    screen2 = [window2 screen];
    v13 = sub_100002024(screen, screen2, v7);
    v15 = v14;

    window3 = [touchCopy window];
    windowScene = [window3 windowScene];
    v18 = sub_100001F60(windowScene);

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    controllers = [(DRViewController *)self controllers];
    objectEnumerator = [controllers objectEnumerator];

    v21 = [objectEnumerator countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v41;
LABEL_5:
      v24 = 0;
      while (1)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        model = [*(*(&v40 + 1) + 8 * v24) model];
        if ([model acceptsSynthesizedTouchAtLocation:v18 displayIdentifier:{v13, v15}])
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [objectEnumerator countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v22)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      controllers2 = [(DRViewController *)self controllers];
      objectEnumerator = [controllers2 objectEnumerator];

      v26 = [objectEnumerator countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v37;
        while (2)
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(objectEnumerator);
            }

            v30 = *(*(&v36 + 1) + 8 * i);
            model = [v30 model];
            view2 = [v30 view];
            _window = [view2 _window];

            if (_window)
            {
              [view2 setUserInteractionEnabled:1];
              v33 = [view2 hitTest:0 withEvent:{v13, v15}];
              [view2 setUserInteractionEnabled:0];
              if (v33)
              {
                v34 = v33 == view2;
              }

              else
              {
                v34 = 1;
              }

              if (!v34 && ([model canAddTouches] & 1) != 0)
              {

                goto LABEL_27;
              }
            }
          }

          v27 = [objectEnumerator countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      model = 0;
    }

LABEL_27:
  }

  return model;
}

- (id)sessionViewModelForBeginningDragManipulationAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  controllers = [(DRViewController *)self controllers];
  objectEnumerator = [controllers objectEnumerator];

  v7 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        model = [v11 model];
        view = [v11 view];
        _window = [view _window];

        if (_window)
        {
          [view setUserInteractionEnabled:1];
          v15 = [view hitTest:0 withEvent:{x, y}];
          [view setUserInteractionEnabled:0];
          if (v15)
          {
            v16 = v15 == view;
          }

          else
          {
            v16 = 1;
          }

          if (!v16 && [model canAddManipulatedTouch] && !objc_msgSend(model, "isManipulatingTransform"))
          {

            goto LABEL_18;
          }
        }
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  model = 0;
LABEL_18:

  return model;
}

- (void)configurePortalViewForDragSessionOriginatingFromViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  window = [view window];
  windowScene = [window windowScene];
  v8 = sub_100001F60(windowScene);

  portalViewByDisplayIdentifiers = self->_portalViewByDisplayIdentifiers;
  if (!portalViewByDisplayIdentifiers)
  {
    v10 = objc_opt_new();
    v11 = self->_portalViewByDisplayIdentifiers;
    self->_portalViewByDisplayIdentifiers = v10;

    portalViewByDisplayIdentifiers = self->_portalViewByDisplayIdentifiers;
  }

  v12 = [(NSMutableDictionary *)portalViewByDisplayIdentifiers objectForKeyedSubscript:v8];
  if (!v12)
  {
    v13 = [_UIPortalView alloc];
    contentView = [controllerCopy contentView];
    v12 = [v13 initWithSourceView:contentView];

    [v12 setUserInteractionEnabled:0];
    portalLayer = [v12 portalLayer];
    [portalLayer setCrossDisplay:1];

    [(NSMutableDictionary *)self->_portalViewByDisplayIdentifiers setObject:v12 forKey:v8];
  }

  v16 = controllerCopy[2];
  v17 = 0.0;
  v18 = 0.0;
  if (v16 != 1)
  {
    if (v16 == 3)
    {
      v18 = 1.57079633;
    }

    else if (v16 == 4)
    {
      v18 = -1.57079633;
    }

    else
    {
      v18 = 3.14159265;
      if (v16 != 2)
      {
        v18 = 0.0;
      }
    }
  }

  currentOrientation = self->_currentOrientation;
  if (currentOrientation != 1)
  {
    if (currentOrientation == 3)
    {
      v17 = 1.57079633;
    }

    else if (currentOrientation == 4)
    {
      v17 = -1.57079633;
    }

    else
    {
      v17 = 3.14159265;
      if (currentOrientation != 2)
      {
        v17 = 0.0;
      }
    }
  }

  memset(&v28, 0, sizeof(v28));
  CGAffineTransformMakeRotation(&v28, v18 - v17);
  v26 = v28;
  CGAffineTransformInvert(&v27, &v26);
  v26 = v27;
  [v12 setTransform:&v26];
  view2 = [controllerCopy view];
  [view2 bounds];
  v22 = v21;
  _screen = [controllerCopy _screen];
  _screen2 = [(DRViewController *)self _screen];
  [v12 setFrame:{sub_100002334(_screen, _screen2, v22)}];

  view3 = [(DRViewController *)self view];
  [view3 addSubview:v12];
}

- (void)teardownPortalViewForDragSessionOriginatingFromViewController:(id)controller
{
  view = [controller view];
  window = [view window];
  windowScene = [window windowScene];
  v9 = sub_100001F60(windowScene);

  v7 = [(NSMutableDictionary *)self->_portalViewByDisplayIdentifiers objectForKey:v9];
  v8 = v7;
  if (v7)
  {
    [v7 removeFromSuperview];
    [(NSMutableDictionary *)self->_portalViewByDisplayIdentifiers removeObjectForKey:v9];
  }
}

- (void)removeTouches:(id)touches
{
  touchesCopy = touches;
  [(NSMutableSet *)self->_activeTouches minusSet:?];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  controllers = [(DRViewController *)self controllers];
  objectEnumerator = [controllers objectEnumerator];

  obj = objectEnumerator;
  v19 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v17 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = touchesCopy;
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v20 + 1) + 8 * v12);
              model = [v7 model];
              v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 _touchIdentifier]);
              [model removeTouchID:v15];

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }

        v6 = v6 + 1;
      }

      while (v6 != v19);
      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }
}

- (void)sessionController:(id)controller requestImagesForClient:(id)client itemIndexes:(id)indexes
{
  indexesCopy = indexes;
  clientCopy = client;
  controllerCopy = controller;
  delegate = [(DRViewController *)self delegate];
  sessionID = [controllerCopy sessionID];

  [delegate viewController:self requestImagesForSessionID:sessionID client:clientCopy itemIndexes:indexesCopy];
}

- (void)sessionController:(id)controller setTouchOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  controllerCopy = controller;
  delegate = [(DRViewController *)self delegate];
  sessionID = [controllerCopy sessionID];

  [delegate viewController:self setTouchOffset:sessionID forSession:{x, y}];
}

- (void)sessionController:(id)controller didUpdatePresentation:(id)presentation
{
  presentationCopy = presentation;
  controllerCopy = controller;
  delegate = [(DRViewController *)self delegate];
  sessionID = [controllerCopy sessionID];

  [delegate viewController:self didUpdatePresentation:presentationCopy forSession:sessionID];
}

- (CATransform3D)transformToLocalWindowForCoordinateSpaceTransformToDisplay:(SEL)display
{
  view = [(DRViewController *)self view];
  window = [view window];
  screen = [window screen];

  [screen scale];
  v10 = v9;
  [screen _referenceBounds];
  v12 = v11;
  v14 = v13;
  [screen _rotation];
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  CGAffineTransformMakeRotation(&v25, -v15);
  UIIntegralTransform();
  *&v24.m11 = v26;
  *&v24.m13 = v27;
  *&v24.m21 = v28;
  CGAffineTransformScale(&v25, &v24, v10, v10);
  v26 = *&v25.m11;
  v27 = *&v25.m13;
  v28 = *&v25.m21;
  if (BSFloatEqualToFloat())
  {
    y = -v14;
    x = 0.0;
  }

  else if (BSFloatEqualToFloat())
  {
    x = -v12;
    y = 0.0;
  }

  else if (BSFloatEqualToFloat())
  {
    x = -v12;
    y = -v14;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  *&v24.m11 = v26;
  *&v24.m13 = v27;
  *&v24.m21 = v28;
  CGAffineTransformTranslate(&v25, &v24, x, y);
  v26 = *&v25.m11;
  v27 = *&v25.m13;
  v28 = *&v25.m21;
  memset(&v25, 0, sizeof(v25));
  *&v23.m11 = v26;
  *&v23.m13 = v27;
  *&v23.m21 = v28;
  CATransform3DMakeAffineTransform(&v24, &v23);
  CATransform3DInvert(&v25, &v24);
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  v18 = *&a4->m33;
  *&v24.m31 = *&a4->m31;
  *&v24.m33 = v18;
  v19 = *&a4->m43;
  *&v24.m41 = *&a4->m41;
  *&v24.m43 = v19;
  v20 = *&a4->m13;
  *&v24.m11 = *&a4->m11;
  *&v24.m13 = v20;
  v21 = *&a4->m23;
  *&v24.m21 = *&a4->m21;
  *&v24.m23 = v21;
  v23 = v25;
  CATransform3DConcat(retstr, &v24, &v23);

  return result;
}

- (void)observeInterfaceOrientationUpdates
{
  v3 = +[DROrientationObserver sharedObserver];
  [v3 addObserver:self];
}

- (void)dealloc
{
  v3 = +[DROrientationObserver sharedObserver];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DRViewController;
  [(DRViewController *)&v4 dealloc];
}

- (void)orientationObserver:(id)observer orientationDidChange:(id)change
{
  changeCopy = change;
  orientation = [changeCopy orientation];
  if (orientation != self->_currentOrientation)
  {
    v7 = orientation;
    self->_currentOrientation = orientation;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    controllers = [(DRViewController *)self controllers];
    objectEnumerator = [controllers objectEnumerator];

    v10 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          [changeCopy duration];
          [v14 setOrientation:v7 withDuration:objc_msgSend(changeCopy direction:{"rotationDirection"), v15}];
        }

        v11 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (DRViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end