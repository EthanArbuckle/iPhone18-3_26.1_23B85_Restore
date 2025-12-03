@interface DRSessionController
- (CGPoint)_transformVelocity:(CGPoint)velocity withTransform:(CATransform3D *)transform;
- (DRSessionController)initWithSessionID:(unsigned int)d delegate:(id)delegate;
- (DRSessionControllerDelegate)delegate;
- (id)referenceScreenForViewModel:(id)model;
- (id)visibleDroppedItemsInTargetScreen:(id)screen transform:(CATransform3D *)transform;
- (void)_notifyObserversOfPreviewsChangesUpdatedInLayout:(id)layout;
- (void)_requestItemImagesIfNecessary;
- (void)_updatePrecisionMode;
- (void)_usePrecisionMode:(id)mode;
- (void)animateOutWithOperation:(unint64_t)operation;
- (void)dealloc;
- (void)performAfterAnimationsComplete:(id)complete;
- (void)sessionViewWillLayoutSubviews:(id)subviews;
- (void)viewModelInvalidated:(id)invalidated;
@end

@implementation DRSessionController

- (DRSessionController)initWithSessionID:(unsigned int)d delegate:(id)delegate
{
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = DRSessionController;
  v7 = [(DRSessionController *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v8->_sessionID = d;
    v9 = objc_opt_new();
    model = v8->_model;
    v8->_model = v9;

    [(DRSessionViewModel *)v8->_model setDelegate:v8];
    v11 = [[DRSessionView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    view = v8->_view;
    v8->_view = v11;

    [(DRSessionView *)v8->_view setUserInteractionEnabled:0];
    [(DRSessionView *)v8->_view setDelegate:v8];
    v13 = objc_opt_new();
    flockLayout = v8->_flockLayout;
    v8->_flockLayout = v13;

    v15 = objc_opt_new();
    flockAnimator = v8->_flockAnimator;
    v8->_flockAnimator = v15;
  }

  return v8;
}

- (void)dealloc
{
  precisionHysteresisTimer = self->_precisionHysteresisTimer;
  if (precisionHysteresisTimer)
  {
    [(DRDispatchTimer *)precisionHysteresisTimer cancel];
    v4 = self->_precisionHysteresisTimer;
    self->_precisionHysteresisTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = DRSessionController;
  [(DRSessionController *)&v5 dealloc];
}

- (void)performAfterAnimationsComplete:(id)complete
{
  completeCopy = complete;
  if (completeCopy)
  {
    v9 = completeCopy;
    if (self->_animating)
    {
      afterAnimationBlocks = self->_afterAnimationBlocks;
      if (!afterAnimationBlocks)
      {
        v6 = objc_opt_new();
        v7 = self->_afterAnimationBlocks;
        self->_afterAnimationBlocks = v6;

        afterAnimationBlocks = self->_afterAnimationBlocks;
      }

      v8 = objc_retainBlock(v9);
      [(NSMutableArray *)afterAnimationBlocks addObject:v8];
    }

    else
    {
      completeCopy[2](completeCopy);
    }

    completeCopy = v9;
  }
}

- (void)animateOutWithOperation:(unint64_t)operation
{
  self->_didStartAnimateOut = 1;
  self->_animating = 1;
  flockContainer = [(DRSessionView *)self->_view flockContainer];
  subviews = [flockContainer subviews];

  badgeView = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput badgeView];

  if (badgeView)
  {
    badgeView2 = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput badgeView];
    v9 = [subviews arrayByAddingObject:badgeView2];

    subviews = v9;
  }

  [objc_opt_class() outAnimatorForOperation:operation];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000221E8;
  v12[3] = &unk_100055E40;
  selfCopy = self;
  v13 = v15 = operation;
  v10 = v13;
  [subviews enumerateObjectsUsingBlock:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100022570;
  v11[3] = &unk_100055E68;
  v11[4] = self;
  [v10 addCompletion:v11];
  [v10 startAnimation];
}

- (id)visibleDroppedItemsInTargetScreen:(id)screen transform:(CATransform3D *)transform
{
  screenCopy = screen;
  v59 = objc_opt_new();
  shownItemModels = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput shownItemModels];
  itemViews = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput itemViews];
  v58 = shownItemModels;
  v8 = [shownItemModels count];
  v57 = itemViews;
  v9 = [itemViews count];
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v56 = v10;
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = [v58 objectAtIndexedSubscript:v11];
      v13 = [v57 objectAtIndexedSubscript:v11];
      v14 = objc_opt_new();
      [v14 setItemIndex:{objc_msgSend(v12, "itemIndex")}];
      [v12 setIsObjectManipulationActive:0];
      if ([(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput shouldHideFlock])
      {
        [v14 setImageComponent:0];
      }

      else
      {
        imageComponent = [v12 imageComponent];
        [v14 setImageComponent:imageComponent];
      }

      preview = [v12 preview];
      [v14 setPreview:preview];

      model = [(DRSessionController *)self model];
      v18 = model;
      if (model)
      {
        [model appliedTransform];
      }

      else
      {
        memset(&v68, 0, sizeof(v68));
      }

      v62 = v68;
      [v14 setAppliedTransform:&v62];

      layer = [v13 layer];
      layer2 = [v13 layer];
      [layer2 bounds];
      UIRectGetCenter();
      v22 = v21;
      v24 = v23;
      layer3 = [v13 layer];
      superlayer = [layer3 superlayer];
      [layer convertPoint:superlayer toLayer:{v22, v24}];
      v28 = v27;

      _screen = [v13 _screen];
      sub_100002024(_screen, screenCopy, v28);

      v30 = *&transform->m33;
      v64 = *&transform->m31;
      v65 = v30;
      v31 = *&transform->m43;
      v66 = *&transform->m41;
      v67 = v31;
      v32 = *&transform->m13;
      v62.scale = *&transform->m11;
      *&v62.horizontalShear = v32;
      v33 = *&transform->m23;
      v62.translation = *&transform->m21;
      v63 = v33;
      CA_CGPointApplyTransform();
      [v14 setCenter:?];
      v34 = [v13 _velocityForKey:@"position"];
      [v34 CGPointValue];
      v35 = *&transform->m33;
      v64 = *&transform->m31;
      v65 = v35;
      v36 = *&transform->m43;
      v66 = *&transform->m41;
      v67 = v36;
      v37 = *&transform->m13;
      v62.scale = *&transform->m11;
      *&v62.horizontalShear = v37;
      v38 = *&transform->m23;
      v62.translation = *&transform->m21;
      v63 = v38;
      [(DRSessionController *)self _transformVelocity:&v62 withTransform:?];
      v40 = v39;
      v42 = v41;

      v43 = [v13 _targetVelocityForKey:@"position"];
      [v43 CGPointValue];
      v44 = *&transform->m33;
      v64 = *&transform->m31;
      v65 = v44;
      v45 = *&transform->m43;
      v66 = *&transform->m41;
      v67 = v45;
      v46 = *&transform->m13;
      v62.scale = *&transform->m11;
      *&v62.horizontalShear = v46;
      v47 = *&transform->m23;
      v62.translation = *&transform->m21;
      v63 = v47;
      [(DRSessionController *)self _transformVelocity:&v62 withTransform:?];
      v49 = v48;
      v51 = v50;

      v62.scale.width = v40;
      v62.scale.height = v42;
      v62.horizontalShear = 0.0;
      v62.rotation = 0.0;
      [v14 setVelocity3D:&v62];
      v62.scale.width = v49;
      v62.scale.height = v51;
      v62.horizontalShear = 0.0;
      v62.rotation = 0.0;
      [v14 setTargetVelocity3D:&v62];
      memset(&v62, 0, sizeof(v62));
      model2 = [(DRSessionController *)self model];
      v53 = model2;
      if (model2)
      {
        [model2 elasticTransform];
      }

      else
      {
        memset(&transform, 0, sizeof(transform));
      }

      CGAffineTransformDecompose(&v62, &transform);

      [v14 setConstrainSize:{objc_msgSend(v13, "constrainSize")}];
      [v13 stackRotation];
      [v14 setRotation:v54 + v62.rotation];
      [v59 addObject:v14];

      ++v11;
    }

    while (v56 != v11);
  }

  return v59;
}

- (void)viewModelInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  if (!self->_didStartAnimateOut)
  {
    v6 = invalidatedCopy;
    [(DRSessionView *)self->_view setNeedsLayout];
    window = [(DRSessionView *)self->_view window];

    invalidatedCopy = v6;
    if (!window)
    {
      [(DRSessionController *)self _requestItemImagesIfNecessary];
      invalidatedCopy = v6;
    }
  }
}

- (id)referenceScreenForViewModel:(id)model
{
  window = [(DRSessionView *)self->_view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];

  return screen;
}

- (void)sessionViewWillLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  if (!self->_didStartAnimateOut)
  {
    v42 = subviewsCopy;
    [(DRSessionController *)self _requestItemImagesIfNecessary];
    model = [(DRSessionController *)self model];
    [model centroid];
    v6 = CAPoint3DZero[1];
    v7 = CAPoint3DZero[2];
    if (CAPoint3DEqualToPoint())
    {
      model2 = [(DRSessionController *)self model];
      itemModels = [model2 itemModels];
      firstObject = [itemModels firstObject];
      preview = [firstObject preview];

      subviewsCopy = v42;
      if (!preview)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    [(DRSessionController *)self _updatePrecisionMode];
    v12 = objc_opt_new();
    [v12 setMaxItemCount:5];
    model3 = [(DRSessionController *)self model];
    [v12 setModel:model3];

    view = [(DRSessionController *)self view];
    [view bounds];
    [v12 setContainerBounds:?];

    badgeView = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput badgeView];
    v16 = [(DRFlockLayout *)self->_flockLayout layoutWithInput:v12];
    [(DRSessionController *)self _notifyObserversOfPreviewsChangesUpdatedInLayout:v16];
    objc_storeStrong(&self->_lastFlockLayoutOutput, v16);
    view2 = [(DRSessionController *)self view];
    flockContainer = [view2 flockContainer];
    allViews = [v16 allViews];
    sub_100022FC4(flockContainer, allViews);

    badgeView2 = [v16 badgeView];

    if (badgeView2)
    {
      shouldHideFlock = [v16 shouldHideFlock];
      badgeView3 = [v16 badgeView];
      [badgeView3 setHidden:shouldHideFlock];

      badgeView4 = [v16 badgeView];
      [view2 addSubview:badgeView4];
    }

    else if (badgeView)
    {
      [badgeView removeFromSuperview];
    }

    if (!self->_animating)
    {
      model4 = [v12 model];
      itemModels2 = [model4 itemModels];

      if ([itemModels2 count] == 1)
      {
        firstObject2 = [itemModels2 firstObject];
        preview2 = [firstObject2 preview];

        if (preview2)
        {
          [preview2 stackAlpha];
          v29 = v28;
          flockContainer2 = [view2 flockContainer];
          [flockContainer2 setAlpha:v29];
        }
      }

      else
      {
        +[_DUIPreview defaultStackAlpha];
        v32 = v31;
        preview2 = [view2 flockContainer];
        [preview2 setAlpha:v32];
      }
    }

    shouldHideFlock2 = [v16 shouldHideFlock];
    flockContainer3 = [view2 flockContainer];
    [flockContainer3 setHidden:shouldHideFlock2];

    [(DRFlockAnimator *)self->_flockAnimator animateFlockLayoutOutput:v16];
    model5 = [(DRSessionController *)self model];
    LODWORD(flockContainer3) = [model5 canAddManipulatedTouch];

    dragManipulationHitTestView = self->_dragManipulationHitTestView;
    if (flockContainer3)
    {
      if (!dragManipulationHitTestView)
      {
        v37 = [[UIView alloc] initWithFrame:{0.0, 0.0, 600.0, 600.0}];
        layer = [(UIView *)v37 layer];
        [layer setHitTestsAsOpaque:1];

        flockContainer4 = [view2 flockContainer];
        [view2 insertSubview:v37 aboveSubview:flockContainer4];

        v40 = self->_dragManipulationHitTestView;
        self->_dragManipulationHitTestView = v37;
      }

      model6 = [(DRSessionController *)self model];
      [model6 centroid];
      [(UIView *)self->_dragManipulationHitTestView setCenter:?];
    }

    else
    {
      if (!dragManipulationHitTestView)
      {
LABEL_23:

        subviewsCopy = v42;
        goto LABEL_24;
      }

      [(UIView *)dragManipulationHitTestView removeFromSuperview];
      model6 = self->_dragManipulationHitTestView;
      self->_dragManipulationHitTestView = 0;
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)_requestItemImagesIfNecessary
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  model = [(DRSessionController *)self model];
  sourceClient = [model sourceClient];

  model2 = [(DRSessionController *)self model];
  potentialDropDestinationClient = [model2 potentialDropDestinationClient];

  model3 = [(DRSessionController *)self model];
  itemModels = [model3 itemModels];
  reverseObjectEnumerator = [itemModels reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100023430;
  v34[3] = &unk_100055E90;
  v13 = potentialDropDestinationClient;
  v35 = v13;
  v14 = v4;
  v36 = v14;
  v15 = sourceClient;
  v37 = v15;
  v16 = v3;
  v38 = v16;
  v39 = &v40;
  v17 = objc_retainBlock(v34);
  model4 = [(DRSessionController *)self model];
  preferredPreviewIndexes = [model4 preferredPreviewIndexes];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100023678;
  v31[3] = &unk_100055EB8;
  v20 = allObjects;
  v32 = v20;
  v21 = v17;
  v33 = v21;
  [preferredPreviewIndexes enumerateIndexesUsingBlock:v31];

  if (v41[3] <= 4)
  {
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100023700;
    v29 = &unk_100055EE0;
    v30 = v21;
    [v20 enumerateObjectsUsingBlock:&v26];
  }

  if ([v16 count])
  {
    delegate = [(DRSessionController *)self delegate];
    client = [v15 client];
    [delegate sessionController:self requestImagesForClient:client itemIndexes:v16];
  }

  if ([v14 count])
  {
    delegate2 = [(DRSessionController *)self delegate];
    client2 = [v13 client];
    [delegate2 sessionController:self requestImagesForClient:client2 itemIndexes:v14];
  }

  _Block_object_dispose(&v40, 8);
}

- (void)_updatePrecisionMode
{
  model = [(DRSessionController *)self model];
  precisionMode = [model precisionMode];

  v5 = objc_opt_new();
  model2 = [(DRSessionController *)self model];
  potentialDrop = [model2 potentialDrop];
  [v5 setDirection:{objc_msgSend(potentialDrop, "precise")}];

  model3 = [(DRSessionController *)self model];
  [v5 setOrientation:{objc_msgSend(model3, "orientation")}];

  v9 = [precisionMode isEqual:v5];
  p_pendingPrecisionMode = &self->_pendingPrecisionMode;
  pendingPrecisionMode = self->_pendingPrecisionMode;
  if (v9)
  {
    self->_pendingPrecisionMode = 0;

    if (self->_precisionHysteresisTimer)
    {
      v12 = DRLogTarget();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100031270(precisionMode, v5, v12);
      }

      precisionHysteresisTimer = self->_precisionHysteresisTimer;
      p_precisionHysteresisTimer = &self->_precisionHysteresisTimer;
      [(DRDispatchTimer *)precisionHysteresisTimer cancel];
      v15 = *p_precisionHysteresisTimer;
      *p_precisionHysteresisTimer = 0;
    }

    goto LABEL_43;
  }

  v16 = [(DRPrecisionMode *)pendingPrecisionMode isEqual:v5];
  v17 = DRLogTarget();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    if (v18)
    {
      v44 = *p_pendingPrecisionMode;
      *location = 138412802;
      *&location[4] = precisionMode;
      v49 = 2112;
      v50 = v5;
      v51 = 2112;
      v52 = v44;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "_updatePrecisionMode from %@ to %@, IS a change, but pending %@ is the same already", location, 0x20u);
    }

    goto LABEL_43;
  }

  if (v18)
  {
    v45 = *p_pendingPrecisionMode;
    *location = 138412802;
    *&location[4] = precisionMode;
    v49 = 2112;
    v50 = v5;
    v51 = 2112;
    v52 = v45;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "_updatePrecisionMode from %@ to %@, IS a change, replacing pending %@", location, 0x20u);
  }

  if (![v5 direction])
  {
    v19 = CACurrentMediaTime();
    model4 = [(DRSessionController *)self model];
    [model4 enteredPrecisionModeTime];
    v22 = v21;

    model5 = [(DRSessionController *)self model];
    [model5 enteredPrecisionModeY];
    v25 = v24;
    model6 = [(DRSessionController *)self model];
    [model6 centroid];
    v28 = v27;

    v29 = DRLogTarget();
    v30 = v19 - v22;
    v31 = vabdd_f64(v25, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_100031094();
    }

    if (qword_100063760 != -1)
    {
      sub_100031118();
    }

    v32 = byte_100063768 == 1 ? sub_1000244C8() : 0.0666666667;
    if (v30 < v32)
    {
      if (qword_100063760 != -1)
      {
        sub_100031140();
      }

      v33 = 5.0;
      if (byte_100063768 == 1)
      {
        v33 = sub_100024670();
      }

      if (v31 < v33)
      {
        v34 = DRLogTarget();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_1000311F8(self);
        }

        [(DRSessionController *)self _usePrecisionMode:v5];
        model7 = [(DRSessionController *)self model];
        [model7 centroid];
        self->_precisionModeLimitY = v36;

        goto LABEL_43;
      }
    }
  }

  objc_storeStrong(&self->_pendingPrecisionMode, v5);
  v37 = self->_precisionHysteresisTimer;
  if (!v37)
  {
    objc_initWeak(location, self);
    v38 = [DRDispatchTimer alloc];
    v39 = &_dispatch_main_q;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100023C6C;
    v46[3] = &unk_100054CA0;
    objc_copyWeak(&v47, location);
    v40 = [(DRDispatchTimer *)v38 initWithQueue:&_dispatch_main_q eventHandler:v46];

    v41 = self->_precisionHysteresisTimer;
    self->_precisionHysteresisTimer = v40;

    objc_destroyWeak(&v47);
    objc_destroyWeak(location);
  }

  if ([v5 direction])
  {
    if (qword_100063760 != -1)
    {
      sub_100031168();
    }

    if (byte_100063768 == 1)
    {
      v42 = sub_100024814();
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (qword_100063760 != -1)
  {
    sub_100031190();
  }

  if (byte_100063768 != 1)
  {
LABEL_38:
    v42 = 0.2;
    goto LABEL_39;
  }

  v42 = sub_1000249BC();
LABEL_39:
  [(DRDispatchTimer *)self->_precisionHysteresisTimer resetWithTimeout:v42 leeway:v42 * 0.2];
  if (!v37)
  {
    v43 = DRLogTarget();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      sub_1000311B8();
    }

    [(DRDispatchTimer *)self->_precisionHysteresisTimer activate];
  }

LABEL_43:
}

- (void)_usePrecisionMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy direction])
  {
    model = [(DRSessionController *)self model];
    [model centroid];
    v7 = v6;

    if (v7 <= self->_precisionModeLimitY)
    {
      v8 = objc_opt_new();

      v9 = DRLogTarget();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100031370(&self->_precisionModeLimitY);
      }

      modeCopy = v8;
    }
  }

  model2 = [(DRSessionController *)self model];
  precisionMode = [model2 precisionMode];
  v12 = [precisionMode isEqual:modeCopy];

  if ((v12 & 1) == 0)
  {
    model3 = [(DRSessionController *)self model];
    [model3 setPrecisionMode:modeCopy];

    delegate = [(DRSessionController *)self delegate];
    [modeCopy touchOffset];
    [delegate sessionController:self setTouchOffset:?];

    self->_precisionModeLimitY = -10000000.0;
  }
}

- (CGPoint)_transformVelocity:(CGPoint)velocity withTransform:(CATransform3D *)transform
{
  y = velocity.y;
  x = velocity.x;
  CATransform3DGetDecomposition_();
  if (vabdd_f64(-1.57079633, v8) <= 2.22044605e-16)
  {
    v6 = -x;
  }

  else if (vabdd_f64(-3.14159265, v8) <= 2.22044605e-16 || vabdd_f64(3.14159265, v8) <= 2.22044605e-16)
  {
    v6 = -y;
    y = -x;
  }

  else if (vabdd_f64(1.57079633, v8) <= 2.22044605e-16 || vabdd_f64(-4.71238898, v8) <= 2.22044605e-16)
  {
    y = -y;
    v6 = x;
  }

  else
  {
    v6 = y;
    y = x;
  }

  v7 = y;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)_notifyObserversOfPreviewsChangesUpdatedInLayout:(id)layout
{
  layoutCopy = layout;
  previewAndImageComponents = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput previewAndImageComponents];
  previewAndImageComponents2 = [layoutCopy previewAndImageComponents];
  v7 = [previewAndImageComponents2 mutableCopy];

  +[NSMutableIndexSet indexSet];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100024260;
  v8 = v27[3] = &unk_100055F08;
  v28 = v8;
  [previewAndImageComponents enumerateObjectsUsingBlock:v27];
  +[NSMutableIndexSet indexSet];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000242A0;
  v9 = v25[3] = &unk_100055F08;
  v26 = v9;
  [v7 enumerateObjectsUsingBlock:v25];
  v10 = [v8 mutableCopy];
  [v10 removeIndexes:v9];
  if (previewAndImageComponents)
  {
    [v7 removeObjectsInArray:previewAndImageComponents];
  }

  v11 = [v7 indexesOfObjectsPassingTest:&stru_100055F48];
  [v7 removeObjectsAtIndexes:v11];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100024320;
  v23[3] = &unk_100055F70;
  v12 = v7;
  v24 = v12;
  [v10 enumerateIndexesUsingBlock:v23];
  if (layoutCopy && !self->_lastFlockLayoutOutput)
  {
    [v12 count];
LABEL_6:
    v13 = objc_alloc_init(_DUIPresentationUpdate);
    [v13 setModifiedPreviews:v12];
    badgeLayout = [layoutCopy badgeLayout];
    [v13 setBadgeStyle:{objc_msgSend(badgeLayout, "style")}];

    delegate = [(DRSessionController *)self delegate];
    [delegate sessionController:self didUpdatePresentation:v13];

    goto LABEL_9;
  }

  [layoutCopy badgeLayout];
  v16 = layoutCopy;
  v17 = v8;
  v19 = v18 = previewAndImageComponents;
  style = [v19 style];
  badgeLayout2 = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput badgeLayout];
  style2 = [badgeLayout2 style];

  previewAndImageComponents = v18;
  v8 = v17;
  layoutCopy = v16;
  if ([v12 count] || style != style2)
  {
    goto LABEL_6;
  }

LABEL_9:
}

- (DRSessionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end