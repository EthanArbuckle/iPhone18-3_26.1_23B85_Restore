@interface DRViewController
- (BOOL)hasActiveDragSession;
- (CATransform3D)transformToLocalWindowForCoordinateSpaceTransformToDisplay:(SEL)a3;
- (CGRect)_defaultInitialViewFrame;
- (DRViewController)initWithDelegate:(id)a3 initialFrame:(CGRect)a4;
- (DRViewControllerDelegate)delegate;
- (id)sessionViewModelForAddingTouch:(id)a3;
- (id)sessionViewModelForBeginningDragManipulationAtLocation:(CGPoint)a3;
- (unsigned)sessionIDForViewModel:(id)a3;
- (void)addSession:(id)a3 withSourceClient:(id)a4 touchIDs:(id)a5 itemCount:(unint64_t)a6 centroid:(CAPoint3D)a7 sourceContextID:(unsigned int)a8 initialCentroidInSourceContext:(CAPoint3D)a9 preferredPreviewIndexes:(id)a10;
- (void)configurePortalViewForDragSessionOriginatingFromViewController:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)observeInterfaceOrientationUpdates;
- (void)orientationObserver:(id)a3 orientationDidChange:(id)a4;
- (void)removeTouches:(id)a3;
- (void)sessionController:(id)a3 didUpdatePresentation:(id)a4;
- (void)sessionController:(id)a3 requestImagesForClient:(id)a4 itemIndexes:(id)a5;
- (void)sessionController:(id)a3 setTouchOffset:(CGPoint)a4;
- (void)teardownPortalViewForDragSessionOriginatingFromViewController:(id)a3;
- (void)updateWithTouches:(id)a3;
@end

@implementation DRViewController

- (DRViewController)initWithDelegate:(id)a3 initialFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(DRViewController *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v9);
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
  v4 = [(DRViewController *)self view];
  [v4 frame];
  [(UIView *)v3 setFrame:?];

  [(UIView *)v3 setAutoresizingMask:18];
  [(UIView *)v3 setMultipleTouchEnabled:1];
  v5 = [(DRViewController *)self view];
  [v5 addSubview:v3];

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
  v2 = [(DRViewController *)self controllers];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)addSession:(id)a3 withSourceClient:(id)a4 touchIDs:(id)a5 itemCount:(unint64_t)a6 centroid:(CAPoint3D)a7 sourceContextID:(unsigned int)a8 initialCentroidInSourceContext:(CAPoint3D)a9 preferredPreviewIndexes:(id)a10
{
  z = a9.z;
  y = a9.y;
  x = a9.x;
  v17 = a7.z;
  v18 = a7.y;
  v19 = a7.x;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v101 = a10;
  v24 = [(DRViewController *)self controllers];
  v25 = [v24 count];

  if (!v25)
  {
    _UIUpdateRequestActivate();
  }

  v26 = -[DRViewController newSessionControllerForSession:](self, "newSessionControllerForSession:", [v21 identifier]);
  [v26 setOrientation:self->_currentOrientation withDuration:0 direction:0.0];
  controllers = self->_controllers;
  v28 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v21 identifier]);
  [(NSMutableDictionary *)controllers setObject:v26 forKeyedSubscript:v28];

  v29 = [v26 model];
  v100 = v22;
  v30 = [v29 addClientModelForClient:v22 isSource:1];

  if ([v23 count])
  {
    v97 = a6;
    v98 = self;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v31 = v23;
    v32 = v23;
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
          v38 = [v26 model];
          [v38 addTouchID:v37];
        }

        v34 = [v32 countByEnumeratingWithState:&v106 objects:v111 count:16];
      }

      while (v34);
    }

    v23 = v31;
    a6 = v97;
    self = v98;
  }

  else
  {
    v39 = [v26 model];
    [v39 setUsesSynthesizedTouch:1];
  }

  v40 = [v21 rotatable];
  v41 = [v26 model];
  [v41 setRotatable:v40];

  v42 = [v21 resizable];
  v43 = [v26 model];
  [v43 setResizable:v42];

  [v21 minimumResizableSize];
  v45 = v44;
  v47 = v46;
  v48 = [v26 model];
  [v48 setMinimumResizableSize:{v45, v47}];

  [v21 maximumResizableSize];
  v50 = v49;
  v52 = v51;
  v53 = [v26 model];
  [v53 setMaximumResizableSize:{v50, v52}];

  v54 = [v21 wantsElasticEffects];
  v55 = [v26 model];
  [v55 setWantsElasticEffects:v54];

  [v21 originalRotation];
  v57 = v56;
  v58 = [v26 model];
  [v58 setOriginalRotation:v57];

  [v21 originalScale];
  v60 = v59;
  v62 = v61;
  v63 = [v26 model];
  [v63 setOriginalScale:{v60, v62}];

  v64 = [v26 model];
  [v64 setSourceContextID:a8];

  v65 = [v26 model];
  [v65 setInitialCentroidInSourceContext:{x, y, z}];

  v66 = [v21 continuityDisplayWantsDragsHidden];
  v67 = [v26 model];
  [v67 setContinuityDisplayWantsDragsHidden:v66];

  v68 = [v21 associatedObjectManipulationSessionID];
  v69 = [v26 model];
  [v69 setAssociatedObjectManipulationSessionIdentifier:v68];

  [v21 associatedObjectManipulationDragItemSize];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = [v26 model];
  [v76 setAssociatedObjectManipulationDragItemSize:{v71, v73, v75}];

  v77 = [v21 sourceRestrictsDragToSelf];
  v78 = [v26 model];
  [v78 setSourceRestrictsDragToSelf:v77];

  v79 = [v21 sourceRestrictsDragToLocalDevice];
  v80 = [v26 model];
  [v80 setSourceRestrictsDragToLocalDevice:v79];

  v81 = [v26 model];
  [v81 addInitialItemsWithCount:a6];

  v82 = [v26 model];
  [v82 setPreferredPreviewIndexes:v101];

  v83 = [v26 model];
  [v83 updateLocationWithoutTouches:{v19, v18, v17}];

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
        v95 = [v26 model];
        [v95 updateLocation:v90 ofTouchID:{v92, v94, 0.0}];
      }

      v86 = [(NSMutableSet *)v84 countByEnumeratingWithState:&v102 objects:v110 count:16];
    }

    while (v86);
  }

  v96 = [v26 model];
  [v26 viewModelInvalidated:v96];
}

- (unsigned)sessionIDForViewModel:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_controllers allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 model];

        if (v10 == v4)
        {
          LODWORD(v6) = [v9 sessionID];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)updateWithTouches:(id)a3
{
  v4 = a3;
  [(NSMutableSet *)self->_activeTouches unionSet:v4];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
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
        v15 = [(DRViewController *)self controllers];
        v16 = [v15 objectEnumerator];

        v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v23 + 1) + 8 * j) model];
              [v21 updateLocation:v10 ofTouchID:{v12, v14, 0.0}];
            }

            v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v18);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }
}

- (id)sessionViewModelForAddingTouch:(id)a3
{
  v4 = a3;
  if ([v4 _edgeType])
  {
    v5 = 0;
  }

  else
  {
    [v4 locationInView:0];
    v7 = v6;
    v8 = [v4 window];
    v9 = [v8 screen];
    v10 = [(DRViewController *)self view];
    v11 = [v10 window];
    v12 = [v11 screen];
    v13 = sub_100002024(v9, v12, v7);
    v15 = v14;

    v16 = [v4 window];
    v17 = [v16 windowScene];
    v18 = sub_100001F60(v17);

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = [(DRViewController *)self controllers];
    v20 = [v19 objectEnumerator];

    v21 = [v20 countByEnumeratingWithState:&v40 objects:v45 count:16];
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
          objc_enumerationMutation(v20);
        }

        v5 = [*(*(&v40 + 1) + 8 * v24) model];
        if ([v5 acceptsSynthesizedTouchAtLocation:v18 displayIdentifier:{v13, v15}])
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v40 objects:v45 count:16];
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
      v25 = [(DRViewController *)self controllers];
      v20 = [v25 objectEnumerator];

      v26 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
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
              objc_enumerationMutation(v20);
            }

            v30 = *(*(&v36 + 1) + 8 * i);
            v5 = [v30 model];
            v31 = [v30 view];
            v32 = [v31 _window];

            if (v32)
            {
              [v31 setUserInteractionEnabled:1];
              v33 = [v31 hitTest:0 withEvent:{v13, v15}];
              [v31 setUserInteractionEnabled:0];
              if (v33)
              {
                v34 = v33 == v31;
              }

              else
              {
                v34 = 1;
              }

              if (!v34 && ([v5 canAddTouches] & 1) != 0)
              {

                goto LABEL_27;
              }
            }
          }

          v27 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      v5 = 0;
    }

LABEL_27:
  }

  return v5;
}

- (id)sessionViewModelForBeginningDragManipulationAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(DRViewController *)self controllers];
  v6 = [v5 objectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 model];
        v13 = [v11 view];
        v14 = [v13 _window];

        if (v14)
        {
          [v13 setUserInteractionEnabled:1];
          v15 = [v13 hitTest:0 withEvent:{x, y}];
          [v13 setUserInteractionEnabled:0];
          if (v15)
          {
            v16 = v15 == v13;
          }

          else
          {
            v16 = 1;
          }

          if (!v16 && [v12 canAddManipulatedTouch] && !objc_msgSend(v12, "isManipulatingTransform"))
          {

            goto LABEL_18;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (void)configurePortalViewForDragSessionOriginatingFromViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = sub_100001F60(v7);

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
    v14 = [v4 contentView];
    v12 = [v13 initWithSourceView:v14];

    [v12 setUserInteractionEnabled:0];
    v15 = [v12 portalLayer];
    [v15 setCrossDisplay:1];

    [(NSMutableDictionary *)self->_portalViewByDisplayIdentifiers setObject:v12 forKey:v8];
  }

  v16 = v4[2];
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
  v20 = [v4 view];
  [v20 bounds];
  v22 = v21;
  v23 = [v4 _screen];
  v24 = [(DRViewController *)self _screen];
  [v12 setFrame:{sub_100002334(v23, v24, v22)}];

  v25 = [(DRViewController *)self view];
  [v25 addSubview:v12];
}

- (void)teardownPortalViewForDragSessionOriginatingFromViewController:(id)a3
{
  v4 = [a3 view];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v9 = sub_100001F60(v6);

  v7 = [(NSMutableDictionary *)self->_portalViewByDisplayIdentifiers objectForKey:v9];
  v8 = v7;
  if (v7)
  {
    [v7 removeFromSuperview];
    [(NSMutableDictionary *)self->_portalViewByDisplayIdentifiers removeObjectForKey:v9];
  }
}

- (void)removeTouches:(id)a3
{
  v18 = a3;
  [(NSMutableSet *)self->_activeTouches minusSet:?];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(DRViewController *)self controllers];
  v5 = [v4 objectEnumerator];

  obj = v5;
  v19 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
        v8 = v18;
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
              v14 = [v7 model];
              v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v13 _touchIdentifier]);
              [v14 removeTouchID:v15];

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

- (void)sessionController:(id)a3 requestImagesForClient:(id)a4 itemIndexes:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(DRViewController *)self delegate];
  v11 = [v10 sessionID];

  [v12 viewController:self requestImagesForSessionID:v11 client:v9 itemIndexes:v8];
}

- (void)sessionController:(id)a3 setTouchOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v9 = [(DRViewController *)self delegate];
  v8 = [v7 sessionID];

  [v9 viewController:self setTouchOffset:v8 forSession:{x, y}];
}

- (void)sessionController:(id)a3 didUpdatePresentation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(DRViewController *)self delegate];
  v8 = [v7 sessionID];

  [v9 viewController:self didUpdatePresentation:v6 forSession:v8];
}

- (CATransform3D)transformToLocalWindowForCoordinateSpaceTransformToDisplay:(SEL)a3
{
  v6 = [(DRViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 screen];

  [v8 scale];
  v10 = v9;
  [v8 _referenceBounds];
  v12 = v11;
  v14 = v13;
  [v8 _rotation];
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

- (void)orientationObserver:(id)a3 orientationDidChange:(id)a4
{
  v5 = a4;
  v6 = [v5 orientation];
  if (v6 != self->_currentOrientation)
  {
    v7 = v6;
    self->_currentOrientation = v6;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(DRViewController *)self controllers];
    v9 = [v8 objectEnumerator];

    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          [v5 duration];
          [v14 setOrientation:v7 withDuration:objc_msgSend(v5 direction:{"rotationDirection"), v15}];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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