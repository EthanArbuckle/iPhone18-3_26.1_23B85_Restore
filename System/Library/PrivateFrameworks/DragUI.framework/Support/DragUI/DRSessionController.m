@interface DRSessionController
- (CGPoint)_transformVelocity:(CGPoint)a3 withTransform:(CATransform3D *)a4;
- (DRSessionController)initWithSessionID:(unsigned int)a3 delegate:(id)a4;
- (DRSessionControllerDelegate)delegate;
- (id)referenceScreenForViewModel:(id)a3;
- (id)visibleDroppedItemsInTargetScreen:(id)a3 transform:(CATransform3D *)a4;
- (void)_notifyObserversOfPreviewsChangesUpdatedInLayout:(id)a3;
- (void)_requestItemImagesIfNecessary;
- (void)_updatePrecisionMode;
- (void)_usePrecisionMode:(id)a3;
- (void)animateOutWithOperation:(unint64_t)a3;
- (void)dealloc;
- (void)performAfterAnimationsComplete:(id)a3;
- (void)sessionViewWillLayoutSubviews:(id)a3;
- (void)viewModelInvalidated:(id)a3;
@end

@implementation DRSessionController

- (DRSessionController)initWithSessionID:(unsigned int)a3 delegate:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = DRSessionController;
  v7 = [(DRSessionController *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v8->_sessionID = a3;
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

- (void)performAfterAnimationsComplete:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
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
      v4[2](v4);
    }

    v4 = v9;
  }
}

- (void)animateOutWithOperation:(unint64_t)a3
{
  self->_didStartAnimateOut = 1;
  self->_animating = 1;
  v5 = [(DRSessionView *)self->_view flockContainer];
  v6 = [v5 subviews];

  v7 = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput badgeView];

  if (v7)
  {
    v8 = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput badgeView];
    v9 = [v6 arrayByAddingObject:v8];

    v6 = v9;
  }

  [objc_opt_class() outAnimatorForOperation:a3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000221E8;
  v12[3] = &unk_100055E40;
  v14 = self;
  v13 = v15 = a3;
  v10 = v13;
  [v6 enumerateObjectsUsingBlock:v12];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100022570;
  v11[3] = &unk_100055E68;
  v11[4] = self;
  [v10 addCompletion:v11];
  [v10 startAnimation];
}

- (id)visibleDroppedItemsInTargetScreen:(id)a3 transform:(CATransform3D *)a4
{
  v60 = a3;
  v59 = objc_opt_new();
  v6 = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput shownItemModels];
  v7 = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput itemViews];
  v58 = v6;
  v8 = [v6 count];
  v57 = v7;
  v9 = [v7 count];
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
        v15 = [v12 imageComponent];
        [v14 setImageComponent:v15];
      }

      v16 = [v12 preview];
      [v14 setPreview:v16];

      v17 = [(DRSessionController *)self model];
      v18 = v17;
      if (v17)
      {
        [v17 appliedTransform];
      }

      else
      {
        memset(&v68, 0, sizeof(v68));
      }

      v62 = v68;
      [v14 setAppliedTransform:&v62];

      v19 = [v13 layer];
      v20 = [v13 layer];
      [v20 bounds];
      UIRectGetCenter();
      v22 = v21;
      v24 = v23;
      v25 = [v13 layer];
      v26 = [v25 superlayer];
      [v19 convertPoint:v26 toLayer:{v22, v24}];
      v28 = v27;

      v29 = [v13 _screen];
      sub_100002024(v29, v60, v28);

      v30 = *&a4->m33;
      v64 = *&a4->m31;
      v65 = v30;
      v31 = *&a4->m43;
      v66 = *&a4->m41;
      v67 = v31;
      v32 = *&a4->m13;
      v62.scale = *&a4->m11;
      *&v62.horizontalShear = v32;
      v33 = *&a4->m23;
      v62.translation = *&a4->m21;
      v63 = v33;
      CA_CGPointApplyTransform();
      [v14 setCenter:?];
      v34 = [v13 _velocityForKey:@"position"];
      [v34 CGPointValue];
      v35 = *&a4->m33;
      v64 = *&a4->m31;
      v65 = v35;
      v36 = *&a4->m43;
      v66 = *&a4->m41;
      v67 = v36;
      v37 = *&a4->m13;
      v62.scale = *&a4->m11;
      *&v62.horizontalShear = v37;
      v38 = *&a4->m23;
      v62.translation = *&a4->m21;
      v63 = v38;
      [(DRSessionController *)self _transformVelocity:&v62 withTransform:?];
      v40 = v39;
      v42 = v41;

      v43 = [v13 _targetVelocityForKey:@"position"];
      [v43 CGPointValue];
      v44 = *&a4->m33;
      v64 = *&a4->m31;
      v65 = v44;
      v45 = *&a4->m43;
      v66 = *&a4->m41;
      v67 = v45;
      v46 = *&a4->m13;
      v62.scale = *&a4->m11;
      *&v62.horizontalShear = v46;
      v47 = *&a4->m23;
      v62.translation = *&a4->m21;
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
      v52 = [(DRSessionController *)self model];
      v53 = v52;
      if (v52)
      {
        [v52 elasticTransform];
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

- (void)viewModelInvalidated:(id)a3
{
  v4 = a3;
  if (!self->_didStartAnimateOut)
  {
    v6 = v4;
    [(DRSessionView *)self->_view setNeedsLayout];
    v5 = [(DRSessionView *)self->_view window];

    v4 = v6;
    if (!v5)
    {
      [(DRSessionController *)self _requestItemImagesIfNecessary];
      v4 = v6;
    }
  }
}

- (id)referenceScreenForViewModel:(id)a3
{
  v3 = [(DRSessionView *)self->_view window];
  v4 = [v3 windowScene];
  v5 = [v4 screen];

  return v5;
}

- (void)sessionViewWillLayoutSubviews:(id)a3
{
  v4 = a3;
  if (!self->_didStartAnimateOut)
  {
    v42 = v4;
    [(DRSessionController *)self _requestItemImagesIfNecessary];
    v5 = [(DRSessionController *)self model];
    [v5 centroid];
    v6 = CAPoint3DZero[1];
    v7 = CAPoint3DZero[2];
    if (CAPoint3DEqualToPoint())
    {
      v8 = [(DRSessionController *)self model];
      v9 = [v8 itemModels];
      v10 = [v9 firstObject];
      v11 = [v10 preview];

      v4 = v42;
      if (!v11)
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
    v13 = [(DRSessionController *)self model];
    [v12 setModel:v13];

    v14 = [(DRSessionController *)self view];
    [v14 bounds];
    [v12 setContainerBounds:?];

    v15 = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput badgeView];
    v16 = [(DRFlockLayout *)self->_flockLayout layoutWithInput:v12];
    [(DRSessionController *)self _notifyObserversOfPreviewsChangesUpdatedInLayout:v16];
    objc_storeStrong(&self->_lastFlockLayoutOutput, v16);
    v17 = [(DRSessionController *)self view];
    v18 = [v17 flockContainer];
    v19 = [v16 allViews];
    sub_100022FC4(v18, v19);

    v20 = [v16 badgeView];

    if (v20)
    {
      v21 = [v16 shouldHideFlock];
      v22 = [v16 badgeView];
      [v22 setHidden:v21];

      v23 = [v16 badgeView];
      [v17 addSubview:v23];
    }

    else if (v15)
    {
      [v15 removeFromSuperview];
    }

    if (!self->_animating)
    {
      v24 = [v12 model];
      v25 = [v24 itemModels];

      if ([v25 count] == 1)
      {
        v26 = [v25 firstObject];
        v27 = [v26 preview];

        if (v27)
        {
          [v27 stackAlpha];
          v29 = v28;
          v30 = [v17 flockContainer];
          [v30 setAlpha:v29];
        }
      }

      else
      {
        +[_DUIPreview defaultStackAlpha];
        v32 = v31;
        v27 = [v17 flockContainer];
        [v27 setAlpha:v32];
      }
    }

    v33 = [v16 shouldHideFlock];
    v34 = [v17 flockContainer];
    [v34 setHidden:v33];

    [(DRFlockAnimator *)self->_flockAnimator animateFlockLayoutOutput:v16];
    v35 = [(DRSessionController *)self model];
    LODWORD(v34) = [v35 canAddManipulatedTouch];

    dragManipulationHitTestView = self->_dragManipulationHitTestView;
    if (v34)
    {
      if (!dragManipulationHitTestView)
      {
        v37 = [[UIView alloc] initWithFrame:{0.0, 0.0, 600.0, 600.0}];
        v38 = [(UIView *)v37 layer];
        [v38 setHitTestsAsOpaque:1];

        v39 = [v17 flockContainer];
        [v17 insertSubview:v37 aboveSubview:v39];

        v40 = self->_dragManipulationHitTestView;
        self->_dragManipulationHitTestView = v37;
      }

      v41 = [(DRSessionController *)self model];
      [v41 centroid];
      [(UIView *)self->_dragManipulationHitTestView setCenter:?];
    }

    else
    {
      if (!dragManipulationHitTestView)
      {
LABEL_23:

        v4 = v42;
        goto LABEL_24;
      }

      [(UIView *)dragManipulationHitTestView removeFromSuperview];
      v41 = self->_dragManipulationHitTestView;
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
  v5 = [(DRSessionController *)self model];
  v6 = [v5 sourceClient];

  v7 = [(DRSessionController *)self model];
  v8 = [v7 potentialDropDestinationClient];

  v9 = [(DRSessionController *)self model];
  v10 = [v9 itemModels];
  v11 = [v10 reverseObjectEnumerator];
  v12 = [v11 allObjects];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100023430;
  v34[3] = &unk_100055E90;
  v13 = v8;
  v35 = v13;
  v14 = v4;
  v36 = v14;
  v15 = v6;
  v37 = v15;
  v16 = v3;
  v38 = v16;
  v39 = &v40;
  v17 = objc_retainBlock(v34);
  v18 = [(DRSessionController *)self model];
  v19 = [v18 preferredPreviewIndexes];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100023678;
  v31[3] = &unk_100055EB8;
  v20 = v12;
  v32 = v20;
  v21 = v17;
  v33 = v21;
  [v19 enumerateIndexesUsingBlock:v31];

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
    v22 = [(DRSessionController *)self delegate];
    v23 = [v15 client];
    [v22 sessionController:self requestImagesForClient:v23 itemIndexes:v16];
  }

  if ([v14 count])
  {
    v24 = [(DRSessionController *)self delegate];
    v25 = [v13 client];
    [v24 sessionController:self requestImagesForClient:v25 itemIndexes:v14];
  }

  _Block_object_dispose(&v40, 8);
}

- (void)_updatePrecisionMode
{
  v3 = [(DRSessionController *)self model];
  v4 = [v3 precisionMode];

  v5 = objc_opt_new();
  v6 = [(DRSessionController *)self model];
  v7 = [v6 potentialDrop];
  [v5 setDirection:{objc_msgSend(v7, "precise")}];

  v8 = [(DRSessionController *)self model];
  [v5 setOrientation:{objc_msgSend(v8, "orientation")}];

  v9 = [v4 isEqual:v5];
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
        sub_100031270(v4, v5, v12);
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
      *&location[4] = v4;
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
    *&location[4] = v4;
    v49 = 2112;
    v50 = v5;
    v51 = 2112;
    v52 = v45;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "_updatePrecisionMode from %@ to %@, IS a change, replacing pending %@", location, 0x20u);
  }

  if (![v5 direction])
  {
    v19 = CACurrentMediaTime();
    v20 = [(DRSessionController *)self model];
    [v20 enteredPrecisionModeTime];
    v22 = v21;

    v23 = [(DRSessionController *)self model];
    [v23 enteredPrecisionModeY];
    v25 = v24;
    v26 = [(DRSessionController *)self model];
    [v26 centroid];
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
        v35 = [(DRSessionController *)self model];
        [v35 centroid];
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

- (void)_usePrecisionMode:(id)a3
{
  v4 = a3;
  if ([v4 direction])
  {
    v5 = [(DRSessionController *)self model];
    [v5 centroid];
    v7 = v6;

    if (v7 <= self->_precisionModeLimitY)
    {
      v8 = objc_opt_new();

      v9 = DRLogTarget();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100031370(&self->_precisionModeLimitY);
      }

      v4 = v8;
    }
  }

  v10 = [(DRSessionController *)self model];
  v11 = [v10 precisionMode];
  v12 = [v11 isEqual:v4];

  if ((v12 & 1) == 0)
  {
    v13 = [(DRSessionController *)self model];
    [v13 setPrecisionMode:v4];

    v14 = [(DRSessionController *)self delegate];
    [v4 touchOffset];
    [v14 sessionController:self setTouchOffset:?];

    self->_precisionModeLimitY = -10000000.0;
  }
}

- (CGPoint)_transformVelocity:(CGPoint)a3 withTransform:(CATransform3D *)a4
{
  y = a3.y;
  x = a3.x;
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

- (void)_notifyObserversOfPreviewsChangesUpdatedInLayout:(id)a3
{
  v4 = a3;
  v5 = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput previewAndImageComponents];
  v6 = [v4 previewAndImageComponents];
  v7 = [v6 mutableCopy];

  +[NSMutableIndexSet indexSet];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100024260;
  v8 = v27[3] = &unk_100055F08;
  v28 = v8;
  [v5 enumerateObjectsUsingBlock:v27];
  +[NSMutableIndexSet indexSet];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000242A0;
  v9 = v25[3] = &unk_100055F08;
  v26 = v9;
  [v7 enumerateObjectsUsingBlock:v25];
  v10 = [v8 mutableCopy];
  [v10 removeIndexes:v9];
  if (v5)
  {
    [v7 removeObjectsInArray:v5];
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
  if (v4 && !self->_lastFlockLayoutOutput)
  {
    [v12 count];
LABEL_6:
    v13 = objc_alloc_init(_DUIPresentationUpdate);
    [v13 setModifiedPreviews:v12];
    v14 = [v4 badgeLayout];
    [v13 setBadgeStyle:{objc_msgSend(v14, "style")}];

    v15 = [(DRSessionController *)self delegate];
    [v15 sessionController:self didUpdatePresentation:v13];

    goto LABEL_9;
  }

  [v4 badgeLayout];
  v16 = v4;
  v17 = v8;
  v19 = v18 = v5;
  v22 = [v19 style];
  v20 = [(DRFlockLayoutOutput *)self->_lastFlockLayoutOutput badgeLayout];
  v21 = [v20 style];

  v5 = v18;
  v8 = v17;
  v4 = v16;
  if ([v12 count] || v22 != v21)
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