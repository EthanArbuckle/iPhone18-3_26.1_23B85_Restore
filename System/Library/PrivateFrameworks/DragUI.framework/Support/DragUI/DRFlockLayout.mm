@interface DRFlockLayout
- (BOOL)_isNewItemModel:(id)model;
- (BOOL)_itemModelHasUpdatedPreview:(id)preview forItemView:(id)view;
- (BOOL)_shouldScaleItemModel:(id)model withPotentialDrop:(id)drop;
- (CGPoint)_anchorPointForItem:(id)item sessionModel:(id)model;
- (DRFlockLayout)init;
- (DRFlockLayout)layoutWithInput:(id)input;
- (_UIPlatterView)badgeAnchorPlatter;
- (id)_badgeLayoutForPlatterView:(id)view totalItemDepth:(double)depth orientation:(CGAffineTransform *)orientation count:(unint64_t)count potentialDrop:(id)drop centroid:(CGPoint)centroid;
- (id)_componentViewForItemModel:(id)model;
- (id)_itemModelsForModel:(id)model withCapacity:(unint64_t)capacity;
- (id)_previewTransitionForItemModel:(id)model rotation:(double)rotation center:(CGPoint)center anchorPoint:(CGPoint)point outItemView:(id *)view appliedTransform:(CGAffineTransform *)transform;
- (id)_viewForItemModel:(id)model rotation:(double)rotation defaultCenter:(CGPoint)center appliedTransform:(CGAffineTransform *)transform;
@end

@implementation DRFlockLayout

- (DRFlockLayout)init
{
  v16.receiver = self;
  v16.super_class = DRFlockLayout;
  v2 = [(DRFlockLayout *)&v16 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    [(DRFlockLayout *)v2 setViewsByItem:v3];

    v4 = +[NSMapTable strongToStrongObjectsMapTable];
    [(DRFlockLayout *)v2 setTransitioningViewsByItem:v4];

    v5 = +[NSMapTable strongToStrongObjectsMapTable];
    [(DRFlockLayout *)v2 setImageComponentByItemView:v5];

    v6 = objc_opt_new();
    [(DRFlockLayout *)v2 setBadgeContainer:v6];

    badgeContainer = [(DRFlockLayout *)v2 badgeContainer];
    layer = [badgeContainer layer];
    [layer setAllowsHitTesting:0];

    badgeContainer2 = [(DRFlockLayout *)v2 badgeContainer];
    [badgeContainer2 setUserInteractionEnabled:0];

    badgeContainer3 = [(DRFlockLayout *)v2 badgeContainer];
    [badgeContainer3 setAlpha:0.0];

    v11 = objc_opt_new();
    badge = [(DRFlockLayout *)v2 badge];
    [badge frame];

    [v11 intrinsicContentSize];
    [(DRFlockLayout *)v2 setBadge:v11];
    badgeContainer4 = [(DRFlockLayout *)v2 badgeContainer];
    badge2 = [(DRFlockLayout *)v2 badge];
    [badgeContainer4 addSubview:badge2];
  }

  return v2;
}

- (BOOL)_itemModelHasUpdatedPreview:(id)preview forItemView:(id)view
{
  previewCopy = preview;
  v7 = [(NSMapTable *)self->_imageComponentByItemView objectForKey:view];
  if (v7)
  {
    imageComponent = [previewCopy imageComponent];
    v9 = [v7 isEqual:imageComponent] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (CGPoint)_anchorPointForItem:(id)item sessionModel:(id)model
{
  itemCopy = item;
  preview = [itemCopy preview];
  if (([itemCopy constrainSize] & 1) != 0 || objc_msgSend(itemCopy, "precisionMode") || ((objc_msgSend(preview, "liftAnchorPoint"), v7 == CGPointZero.x) ? (v8 = v6 == CGPointZero.y) : (v8 = 0), v8))
  {
    [preview unscaledAnchorPoint];
  }

  else
  {
    [preview liftAnchorPoint];
  }

  v11 = v9;
  v12 = v10;

  v13 = v11;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)_previewTransitionForItemModel:(id)model rotation:(double)rotation center:(CGPoint)center anchorPoint:(CGPoint)point outItemView:(id *)view appliedTransform:(CGAffineTransform *)transform
{
  y = point.y;
  x = point.x;
  v12 = center.y;
  v13 = center.x;
  modelCopy = model;
  v17 = [(NSMapTable *)self->_viewsByItem objectForKey:modelCopy];
  v18 = [(NSMapTable *)self->_transitioningViewsByItem objectForKey:modelCopy];
  if (!v18)
  {
    v18 = objc_opt_new();
    [(NSMapTable *)self->_transitioningViewsByItem setObject:v18 forKey:modelCopy];
  }

  [v18 addObject:v17];
  [(NSMapTable *)self->_viewsByItem removeObjectForKey:modelCopy];
  [(NSMapTable *)self->_imageComponentByItemView removeObjectForKey:v17];
  v19 = *&transform->c;
  v55[0] = *&transform->a;
  v55[1] = v19;
  v55[2] = *&transform->tx;
  v20 = [(DRFlockLayout *)self _viewForItemModel:modelCopy rotation:v55 defaultCenter:rotation appliedTransform:v13, v12];
  v21 = v20;
  *view = v21;
  [v21 setAlpha:0.0];
  avoidAnimation = 1;
  [v20 setLifted:1];
  [v20 setConstrainSize:{objc_msgSend(v17, "constrainSize")}];
  preview = [v17 preview];
  [preview scaledSize];
  [v20 setOverrideSize:?];

  v24 = [v17 _velocityForKey:@"position"];
  [v20 _setVelocity:v24 forKey:@"position"];

  v25 = [v17 _targetVelocityForKey:@"position"];
  [v20 _setTargetVelocity:v25 forKey:@"position"];

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000130BC;
  v52[3] = &unk_100054C50;
  v26 = v17;
  v53 = v26;
  v27 = v20;
  v54 = v27;
  [UIView _performWithoutRetargetingAnimations:v52];
  preview2 = [v26 preview];
  if (([preview2 avoidAnimation] & 1) == 0)
  {
    preview3 = [modelCopy preview];
    avoidAnimation = [preview3 avoidAnimation];
  }

  preview4 = [modelCopy preview];
  [preview4 scaledSize];
  v32 = v31;
  v34 = v33;

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100013188;
  v44[3] = &unk_1000554B8;
  v45 = v27;
  v35 = v26;
  v46 = v35;
  v47 = v32;
  v48 = v34;
  v51 = avoidAnimation;
  v49 = x;
  v50 = y;
  v36 = v27;
  v37 = [DRFlockAnimatable animationBlock:v44];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100013334;
  v41[3] = &unk_1000554E0;
  v41[4] = self;
  v42 = modelCopy;
  v43 = v35;
  v38 = v35;
  v39 = modelCopy;
  [v37 setCompletionBlock:v41];

  return v37;
}

- (DRFlockLayout)layoutWithInput:(id)input
{
  inputCopy = input;
  v5 = objc_alloc_init(DRFlockLayoutOutput);
  v97 = +[NSMutableArray array];
  v100 = +[NSMutableArray array];
  v96 = +[NSMutableArray array];
  v95 = +[NSMutableArray array];
  model = [inputCopy model];
  selfCopy = self;
  v7 = -[DRFlockLayout _itemModelsForModel:withCapacity:](self, "_itemModelsForModel:withCapacity:", model, [inputCopy maxItemCount]);

  [(DRFlockLayoutOutput *)v5 setShownItemModels:v7];
  v94 = v7;
  v8 = [v7 count];
  model2 = [inputCopy model];
  itemModels = [model2 itemModels];
  v11 = [itemModels count];

  model3 = [inputCopy model];
  [model3 centroid];
  v14 = v13;
  model4 = [inputCopy model];
  [model4 centroid];
  v17 = v16;

  if (v14 == CGPointZero.x && v17 == CGPointZero.y)
  {
    firstObject = [v7 firstObject];
    preview = [firstObject preview];

    v20 = v100;
    if (preview)
    {
      [preview originalCenter];
      v14 = v21;
      v17 = v22;
    }
  }

  else
  {
    v20 = v100;
  }

  model5 = [inputCopy model];
  potentialDrop = [model5 potentialDrop];

  model6 = [inputCopy model];
  orientation = [model6 orientation];

  if (orientation == 1)
  {
    v26 = 0.0;
  }

  else if (orientation == 3)
  {
    v26 = 1.57079633;
  }

  else if (orientation == 4)
  {
    v26 = -1.57079633;
  }

  else if (orientation == 2)
  {
    v26 = 3.14159265;
  }

  else
  {
    v26 = 0.0;
  }

  [(DRFlockLayoutOutput *)v5 setOrientationRotation:v26];
  model7 = [inputCopy model];
  delegate = [model7 delegate];
  model8 = [inputCopy model];
  v98 = [delegate referenceScreenForViewModel:model8];

  if (v8)
  {
    v88 = v11;
    v89 = v5;
    v93 = 0;
    v30 = 0;
    v92 = v8;
    v31 = v8;
    v101 = inputCopy;
    v91 = v17;
    v90 = v26;
    do
    {
      v32 = [v94 objectAtIndexedSubscript:{v30, v88}];
      preview2 = [v32 preview];
      v34 = objc_opt_new();
      v35 = objc_alloc_init(_DUIPreviewAndImageComponentUpdate);
      preview3 = [v32 preview];
      [v35 setPreview:preview3];

      imageComponent = [v32 imageComponent];
      [v35 setImageComponent:imageComponent];

      [v35 setIndex:{objc_msgSend(v32, "itemIndex")}];
      currentClient = [v32 currentClient];
      [v35 setIsFromSource:{objc_msgSend(currentClient, "isSource")}];

      [v95 addObject:v35];
      v39 = v92 > 1 || [(DRFlockLayout *)selfCopy _shouldScaleItemModel:v32 withPotentialDrop:potentialDrop];
      [v32 setConstrainSize:v39];
      [v34 setConstrainSize:v39];
      if (([v32 precisionMode] & 1) == 0)
      {
        model9 = [inputCopy model];
        precisionMode = [model9 precisionMode];
        direction = [precisionMode direction];

        inputCopy = v101;
        if (direction)
        {
          [v32 setPrecisionMode:1];
        }
      }

      model10 = [inputCopy model];
      [(DRFlockLayout *)selfCopy _anchorPointForItem:v32 sessionModel:model10];
      v45 = v44;
      v47 = v46;

      if (v39 && [preview2 previewMode] == 4 && objc_msgSend(v32, "itemIndex"))
      {
        model11 = [inputCopy model];
        itemModels2 = [model11 itemModels];
        firstObject2 = [itemModels2 firstObject];
        [firstObject2 anchorPoint];
        v45 = v51;
        v47 = v52;

        inputCopy = v101;
      }

      currentClientItemViewModel = [v32 currentClientItemViewModel];
      [currentClientItemViewModel setAnchorPoint:{v45, v47}];

      [v32 stackOffset];
      v55 = v14 + v54;
      v57 = v17 + v56;
      [v32 setCenter:{v14 + v54, v17 + v56}];
      [v34 setCenter:{v55, v57}];
      [v98 scale];
      [v32 setDisplayScale:?];
      v58 = [(DRFlockLayout *)selfCopy _isNewItemModel:v32];
      model12 = [inputCopy model];
      v60 = model12;
      if (model12)
      {
        [model12 appliedTransform];
      }

      else
      {
        memset(&v115, 0, sizeof(v115));
      }

      v61 = [(DRFlockLayout *)selfCopy _viewForItemModel:v32 rotation:&v115 defaultCenter:v26 appliedTransform:v14, v17];

      if (([potentialDrop prefersFullSizePreview] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(preview2, "shouldUseGlassBackgroundEffect"))
      {
        +[_DUIPreview defaultStackAlpha];
        [v61 setAlpha:?];
      }

      inputCopy = v101;
      if (v58)
      {
        [v34 setNewItem:1];
        v62 = [NSValue valueWithCGPoint:v45, v47];
        [v61 setAnchorPointValueToAdjustToOnMoveToWindow:v62];

        if ([preview2 previewMode] == 4)
        {
          [v98 _referenceBounds];
          [preview2 liftAnchorPoint];
          [preview2 contentSize];
          [preview2 originalCenter];
          _UIConvertPointFromOrientationToOrientation();
          v17 = v91;
          _UIConvertPointFromOrientationToOrientation();
          v26 = v90;
          UIDistanceBetweenPoints();
          [v34 setNeedsImmediateTracking:v63 <= 40.0];
        }
      }

      else if ([(DRFlockLayout *)selfCopy _itemModelHasUpdatedPreview:v32 forItemView:v61])
      {
        v114 = v61;
        model13 = [v101 model];
        v65 = model13;
        if (model13)
        {
          [model13 appliedTransform];
        }

        else
        {
          memset(&v115, 0, sizeof(v115));
        }

        v66 = [(DRFlockLayout *)selfCopy _previewTransitionForItemModel:v32 rotation:&v114 center:&v115 anchorPoint:v26 outItemView:v55 appliedTransform:v57, v45, v47];
        v67 = v114;

        [v34 setPreview:v66];
        [v34 setStartingPreviewTransition:1];
        v61 = v67;
        inputCopy = v101;
      }

      else
      {
        [v32 setApplyOriginalRotation:0];
      }

      if ([preview2 avoidAnimation] && objc_msgSend(v32, "constrainSize"))
      {
        [v61 setConstrainSize:{objc_msgSend(v32, "constrainSize")}];
      }

      v110[0] = _NSConcreteStackBlock;
      v110[1] = 3221225472;
      v110[2] = sub_100013FA8;
      v110[3] = &unk_100055508;
      v68 = v61;
      v111 = v68;
      v69 = v32;
      v112 = v69;
      v113 = v26;
      v70 = [DRFlockAnimatable animationBlock:v110];
      [v34 setSize:v70];

      v71 = [(NSMapTable *)selfCopy->_transitioningViewsByItem objectForKey:v69];
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_100014050;
      v104[3] = &unk_100055530;
      v72 = v71;
      v105 = v72;
      v108 = v55;
      v109 = v57;
      v73 = v68;
      v106 = v73;
      v107 = inputCopy;
      v74 = [DRFlockAnimatable animationBlock:v104];
      [v34 setPosition:v74];

      v20 = v100;
      if ([v72 count])
      {
        [v34 setInPreviewTransition:1];
        [v100 addObjectsFromArray:v72];
      }

      [v96 addObject:v34];
      [v97 addObject:v73];
      [v100 addObject:v73];
      if (v31 == 1)
      {
        v75 = v73;

        v93 = v75;
        v20 = v100;
      }

      ++v30;
      --v31;
    }

    while (v31);
    v76 = v93;
    if (v93)
    {
      memset(&v115, 0, sizeof(v115));
      CGAffineTransformMakeRotation(&v115, v26);
      v103 = v115;
      v77 = [(DRFlockLayout *)selfCopy _badgeLayoutForPlatterView:v93 totalItemDepth:&v103 orientation:v88 count:potentialDrop potentialDrop:0.0 centroid:v14, v17];
      v5 = v89;
      [(DRFlockLayoutOutput *)v89 setBadgeLayout:v77];

      badgeContainer = [(DRFlockLayout *)selfCopy badgeContainer];
      [(DRFlockLayoutOutput *)v89 setBadgeView:badgeContainer];

      v20 = v100;
    }

    else
    {
      v5 = v89;
    }
  }

  else
  {
    v76 = 0;
  }

  [(DRFlockLayoutOutput *)v5 setAllViews:v20];
  [(DRFlockLayoutOutput *)v5 setItemViews:v97];
  [(DRFlockLayoutOutput *)v5 setItemLayouts:v96];
  model14 = [inputCopy model];
  -[DRFlockLayoutOutput setTouchesCount:](v5, "setTouchesCount:", [model14 touchesCount]);

  model15 = [inputCopy model];
  if ([model15 isManipulatingTransform])
  {
    [(DRFlockLayoutOutput *)v5 setReduceBadgeAnimationSpring:1];
  }

  else
  {
    model16 = [inputCopy model];
    -[DRFlockLayoutOutput setReduceBadgeAnimationSpring:](v5, "setReduceBadgeAnimationSpring:", [model16 wantsElasticEffects]);
  }

  [(DRFlockLayoutOutput *)v5 setAnimatesFlockItemSizeAlongsidePreviewTransition:0];
  [(DRFlockLayoutOutput *)v5 setPreviewAndImageComponents:v95];
  model17 = [inputCopy model];
  v83 = v100;
  if ([model17 continuityDisplayWantsDragsHidden])
  {
    model18 = [inputCopy model];
    if ([model18 sourceRestrictsDragToSelf])
    {
      [(DRFlockLayoutOutput *)v5 setShouldHideFlock:0];
    }

    else
    {
      model19 = [inputCopy model];
      -[DRFlockLayoutOutput setShouldHideFlock:](v5, "setShouldHideFlock:", [model19 sourceRestrictsDragToLocalDevice] ^ 1);

      v83 = v100;
    }
  }

  else
  {
    [(DRFlockLayoutOutput *)v5 setShouldHideFlock:0];
  }

  v86 = v5;
  return v5;
}

- (id)_itemModelsForModel:(id)model withCapacity:(unint64_t)capacity
{
  modelCopy = model;
  v6 = [NSMutableArray arrayWithCapacity:capacity];
  modelsSortedByStackOrder = [modelCopy modelsSortedByStackOrder];
  reverseObjectEnumerator = [modelsSortedByStackOrder reverseObjectEnumerator];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = reverseObjectEnumerator;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      if ([modelCopy isObjectManipulationActive])
      {
        goto LABEL_17;
      }

      imageComponent = [v13 imageComponent];
      if (imageComponent)
      {
        v15 = imageComponent;
        [v13 imageComponent];
        v17 = v16 = capacity;
        hidesImage = [v17 hidesImage];

        capacity = v16;
        if ((hidesImage & 1) == 0)
        {
LABEL_17:
          [v6 insertObject:v13 atIndex:0];
          if ([v6 count] >= capacity)
          {
            break;
          }
        }
      }

      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v6;
}

- (BOOL)_isNewItemModel:(id)model
{
  modelCopy = model;
  viewsByItem = [(DRFlockLayout *)self viewsByItem];
  v6 = [viewsByItem objectForKey:modelCopy];

  return v6 == 0;
}

- (id)_viewForItemModel:(id)model rotation:(double)rotation defaultCenter:(CGPoint)center appliedTransform:(CGAffineTransform *)transform
{
  y = center.y;
  x = center.x;
  modelCopy = model;
  [modelCopy bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  preview = [modelCopy preview];
  if (!preview)
  {
    preview = [_DUIPreview defaultPreviewWithFrame:v13, v15, v17, v19];
    [preview setOriginalCenter:{x, y}];
    currentClientItemViewModel = [modelCopy currentClientItemViewModel];
    [currentClientItemViewModel setPreview:preview];
  }

  v22 = [(NSMapTable *)self->_viewsByItem objectForKey:modelCopy];
  if (!v22)
  {
    v22 = [[_UIPlatterView alloc] initWithDUIPreview:preview];
    [v22 setOrientationRotation:rotation];
    [preview originalCenter];
    if (v24 != CGPointZero.x || v23 != CGPointZero.y)
    {
      [preview originalCenter];
      x = v26;
      y = v27;
    }

    [v22 setCenter:{x, y}];
    [v22 setLifted:1];
    [v22 setAppliesOriginalRotation:{objc_msgSend(modelCopy, "applyOriginalRotation")}];
    v28 = *&transform->c;
    v38[0] = *&transform->a;
    v38[1] = v28;
    v38[2] = *&transform->tx;
    [v22 setAppliedTransform:v38];
    layer = [v22 layer];
    [layer setAllowsHitTesting:0];

    [(NSMapTable *)self->_viewsByItem setObject:v22 forKey:modelCopy];
    v30 = [(DRFlockLayout *)self _componentViewForItemModel:modelCopy];
    [v22 setComponentView:v30];
    preview2 = [modelCopy preview];
    previewMode = [preview2 previewMode];

    if ((previewMode - 3) >= 2)
    {
      superview = [v30 superview];
      layer2 = [superview layer];

      [layer2 setShouldRasterize:1];
      [modelCopy displayScale];
      [layer2 setRasterizationScale:?];
    }

    imageComponentByItemView = self->_imageComponentByItemView;
    imageComponent = [modelCopy imageComponent];
    [(NSMapTable *)imageComponentByItemView setObject:imageComponent forKey:v22];
  }

  return v22;
}

- (id)_componentViewForItemModel:(id)model
{
  imageComponent = [model imageComponent];
  v5 = imageComponent;
  portalView = 0;
  if (model && imageComponent)
  {
    if ([imageComponent representsPortal])
    {
      portalView = [v5 portalView];
    }

    else
    {
      v7 = [UIView alloc];
      [v5 frame];
      portalView = [v7 initWithFrame:?];
      v8 = +[CAContext objectForSlot:](CAContext, "objectForSlot:", [v5 slotID]);
      layer = [portalView layer];
      [layer setContents:v8];
    }

    [v5 frame];
    [portalView setFrame:?];
    [portalView setAccessibilityIgnoresInvertColors:{objc_msgSend(v5, "ignoresAccessibilityFilters")}];
  }

  return portalView;
}

- (BOOL)_shouldScaleItemModel:(id)model withPotentialDrop:(id)drop
{
  modelCopy = model;
  dropCopy = drop;
  if ([modelCopy constrainSize] & 1) != 0 || (objc_msgSend(modelCopy, "preview"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isOversized"), v7, (v8))
  {
    v9 = 1;
  }

  else if ([dropCopy prefersFullSizePreview])
  {
    v9 = 0;
  }

  else
  {
    preview = [modelCopy preview];
    [preview scaleFactor];
    v9 = v12 < 1.0;
  }

  return v9;
}

- (id)_badgeLayoutForPlatterView:(id)view totalItemDepth:(double)depth orientation:(CGAffineTransform *)orientation count:(unint64_t)count potentialDrop:(id)drop centroid:(CGPoint)centroid
{
  viewCopy = view;
  dropCopy = drop;
  v13 = objc_opt_new();
  badgeContainer = [(DRFlockLayout *)self badgeContainer];
  badge = [(DRFlockLayout *)self badge];
  WeakRetained = objc_loadWeakRetained(&self->_badgeAnchorPlatter);
  if (WeakRetained)
  {
    v17 = objc_loadWeakRetained(&self->_badgeAnchorPlatter);
    v18 = v17 != viewCopy;
  }

  else
  {
    v18 = 0;
  }

  objc_storeWeak(&self->_badgeAnchorPlatter, viewCopy);
  [badge setItemCount:count];
  [badge intrinsicContentSize];
  v20 = v19;
  v22 = v21;
  v23 = dropCopy;
  v24 = [v23 preferredBadgeStyle] != 1 && (count > 1 || objc_msgSend(v23, "operation") == 1 || !objc_msgSend(v23, "operation") && objc_msgSend(v23, "forbidden"));

  [v13 setVisible:v24];
  if (v18)
  {
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_100014F30;
    v82[3] = &unk_100055558;
    v83 = badgeContainer;
    v84 = viewCopy;
    v85 = badge;
    v25 = [DRFlockAnimatable animationBlock:v82];
    [v13 setOffsetAdjustment:v25];
  }

  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_100014F9C;
  v79[3] = &unk_100054C50;
  v26 = badgeContainer;
  v80 = v26;
  v27 = viewCopy;
  v81 = v27;
  v28 = [DRFlockAnimatable animationBlock:v79];
  [v13 setPosition:v28];

  superview = [v26 superview];
  [v13 setJustBecameVisible:superview == 0];

  preview = [v27 preview];
  [preview initialBadgeLocation];
  v32 = v31;
  v34 = v33;

  justBecameVisible = [v13 justBecameVisible];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100014FD8;
  v75[3] = &unk_100055580;
  if (v32 < 1.79769313e308)
  {
    v36 = justBecameVisible;
  }

  else
  {
    v36 = 0;
  }

  v77 = v24;
  v78 = v36;
  v37 = v26;
  v76 = v37;
  v38 = [DRFlockAnimatable animationBlock:v75];
  [v13 setAlpha:v38];

  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100014FFC;
  v69[3] = &unk_1000555A8;
  v74 = v36;
  v72 = v32;
  v73 = v34;
  v39 = v27;
  v70 = v39;
  v40 = badge;
  v71 = v40;
  v41 = [DRFlockAnimatable animationBlock:v69];
  [v13 setOffset:v41];

  if (v24)
  {
    v42 = v23;
    v43 = v23;
    v44 = [v43 preferredBadgeStyle] - 2;
    if (v44 < 3)
    {
LABEL_30:

      [v40 setStyle:v44];
      [v13 setStyle:{objc_msgSend(v40, "style")}];
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_1000150AC;
      v60[3] = &unk_1000555D0;
      v62 = 0;
      v63 = 0;
      v61 = v40;
      v64 = v20;
      v65 = v22;
      v49 = *&orientation->c;
      v66 = *&orientation->a;
      v67 = v49;
      v68 = *&orientation->tx;
      v50 = [DRFlockAnimatable animationBlock:v60];
      [v13 setSize:v50];

      v48 = v61;
      goto LABEL_31;
    }

    v45 = v43;
    if ([v45 operation] != 16)
    {
      if ([v45 operation] == 1)
      {
        v44 = 1;
LABEL_29:

        v42 = v23;
        goto LABEL_30;
      }

      if (![v45 operation])
      {
        if ([v45 forbidden])
        {
          v44 = 2;
        }

        else
        {
          v44 = 0;
        }

        goto LABEL_29;
      }
    }

    v44 = 0;
    goto LABEL_29;
  }

  [v13 setStyle:0];
  [v40 setBounds:{0.0, 0.0, v20, v22}];
  memset(&v59, 0, sizeof(v59));
  CGAffineTransformMakeScale(&v59, 0.2, 0.2);
  t1 = v59;
  memset(&v58, 0, sizeof(v58));
  v46 = *&orientation->c;
  *&t2.a = *&orientation->a;
  *&t2.c = v46;
  *&t2.tx = *&orientation->tx;
  CGAffineTransformConcat(&v58, &t1, &t2);
  v42 = v23;
  if (v40)
  {
    [v40 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v58;
  if (CGAffineTransformEqualToTransform(&t2, &t1))
  {
    goto LABEL_32;
  }

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10001513C;
  v53[3] = &unk_1000555F8;
  v54 = v40;
  v55 = v58;
  v47 = [DRFlockAnimatable animationBlock:v53];
  [v13 setSize:v47];

  v48 = v54;
LABEL_31:

LABEL_32:

  return v13;
}

- (_UIPlatterView)badgeAnchorPlatter
{
  WeakRetained = objc_loadWeakRetained(&self->_badgeAnchorPlatter);

  return WeakRetained;
}

@end