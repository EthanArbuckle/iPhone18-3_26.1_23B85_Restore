@interface DRFlockLayout
- (BOOL)_isNewItemModel:(id)a3;
- (BOOL)_itemModelHasUpdatedPreview:(id)a3 forItemView:(id)a4;
- (BOOL)_shouldScaleItemModel:(id)a3 withPotentialDrop:(id)a4;
- (CGPoint)_anchorPointForItem:(id)a3 sessionModel:(id)a4;
- (DRFlockLayout)init;
- (DRFlockLayout)layoutWithInput:(id)a3;
- (_UIPlatterView)badgeAnchorPlatter;
- (id)_badgeLayoutForPlatterView:(id)a3 totalItemDepth:(double)a4 orientation:(CGAffineTransform *)a5 count:(unint64_t)a6 potentialDrop:(id)a7 centroid:(CGPoint)a8;
- (id)_componentViewForItemModel:(id)a3;
- (id)_itemModelsForModel:(id)a3 withCapacity:(unint64_t)a4;
- (id)_previewTransitionForItemModel:(id)a3 rotation:(double)a4 center:(CGPoint)a5 anchorPoint:(CGPoint)a6 outItemView:(id *)a7 appliedTransform:(CGAffineTransform *)a8;
- (id)_viewForItemModel:(id)a3 rotation:(double)a4 defaultCenter:(CGPoint)a5 appliedTransform:(CGAffineTransform *)a6;
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

    v7 = [(DRFlockLayout *)v2 badgeContainer];
    v8 = [v7 layer];
    [v8 setAllowsHitTesting:0];

    v9 = [(DRFlockLayout *)v2 badgeContainer];
    [v9 setUserInteractionEnabled:0];

    v10 = [(DRFlockLayout *)v2 badgeContainer];
    [v10 setAlpha:0.0];

    v11 = objc_opt_new();
    v12 = [(DRFlockLayout *)v2 badge];
    [v12 frame];

    [v11 intrinsicContentSize];
    [(DRFlockLayout *)v2 setBadge:v11];
    v13 = [(DRFlockLayout *)v2 badgeContainer];
    v14 = [(DRFlockLayout *)v2 badge];
    [v13 addSubview:v14];
  }

  return v2;
}

- (BOOL)_itemModelHasUpdatedPreview:(id)a3 forItemView:(id)a4
{
  v6 = a3;
  v7 = [(NSMapTable *)self->_imageComponentByItemView objectForKey:a4];
  if (v7)
  {
    v8 = [v6 imageComponent];
    v9 = [v7 isEqual:v8] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (CGPoint)_anchorPointForItem:(id)a3 sessionModel:(id)a4
{
  v4 = a3;
  v5 = [v4 preview];
  if (([v4 constrainSize] & 1) != 0 || objc_msgSend(v4, "precisionMode") || ((objc_msgSend(v5, "liftAnchorPoint"), v7 == CGPointZero.x) ? (v8 = v6 == CGPointZero.y) : (v8 = 0), v8))
  {
    [v5 unscaledAnchorPoint];
  }

  else
  {
    [v5 liftAnchorPoint];
  }

  v11 = v9;
  v12 = v10;

  v13 = v11;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)_previewTransitionForItemModel:(id)a3 rotation:(double)a4 center:(CGPoint)a5 anchorPoint:(CGPoint)a6 outItemView:(id *)a7 appliedTransform:(CGAffineTransform *)a8
{
  y = a6.y;
  x = a6.x;
  v12 = a5.y;
  v13 = a5.x;
  v16 = a3;
  v17 = [(NSMapTable *)self->_viewsByItem objectForKey:v16];
  v18 = [(NSMapTable *)self->_transitioningViewsByItem objectForKey:v16];
  if (!v18)
  {
    v18 = objc_opt_new();
    [(NSMapTable *)self->_transitioningViewsByItem setObject:v18 forKey:v16];
  }

  [v18 addObject:v17];
  [(NSMapTable *)self->_viewsByItem removeObjectForKey:v16];
  [(NSMapTable *)self->_imageComponentByItemView removeObjectForKey:v17];
  v19 = *&a8->c;
  v55[0] = *&a8->a;
  v55[1] = v19;
  v55[2] = *&a8->tx;
  v20 = [(DRFlockLayout *)self _viewForItemModel:v16 rotation:v55 defaultCenter:a4 appliedTransform:v13, v12];
  v21 = v20;
  *a7 = v21;
  [v21 setAlpha:0.0];
  v22 = 1;
  [v20 setLifted:1];
  [v20 setConstrainSize:{objc_msgSend(v17, "constrainSize")}];
  v23 = [v17 preview];
  [v23 scaledSize];
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
  v28 = [v26 preview];
  if (([v28 avoidAnimation] & 1) == 0)
  {
    v29 = [v16 preview];
    v22 = [v29 avoidAnimation];
  }

  v30 = [v16 preview];
  [v30 scaledSize];
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
  v51 = v22;
  v49 = x;
  v50 = y;
  v36 = v27;
  v37 = [DRFlockAnimatable animationBlock:v44];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100013334;
  v41[3] = &unk_1000554E0;
  v41[4] = self;
  v42 = v16;
  v43 = v35;
  v38 = v35;
  v39 = v16;
  [v37 setCompletionBlock:v41];

  return v37;
}

- (DRFlockLayout)layoutWithInput:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(DRFlockLayoutOutput);
  v97 = +[NSMutableArray array];
  v100 = +[NSMutableArray array];
  v96 = +[NSMutableArray array];
  v95 = +[NSMutableArray array];
  v6 = [v4 model];
  v102 = self;
  v7 = -[DRFlockLayout _itemModelsForModel:withCapacity:](self, "_itemModelsForModel:withCapacity:", v6, [v4 maxItemCount]);

  [(DRFlockLayoutOutput *)v5 setShownItemModels:v7];
  v94 = v7;
  v8 = [v7 count];
  v9 = [v4 model];
  v10 = [v9 itemModels];
  v11 = [v10 count];

  v12 = [v4 model];
  [v12 centroid];
  v14 = v13;
  v15 = [v4 model];
  [v15 centroid];
  v17 = v16;

  if (v14 == CGPointZero.x && v17 == CGPointZero.y)
  {
    v18 = [v7 firstObject];
    v19 = [v18 preview];

    v20 = v100;
    if (v19)
    {
      [v19 originalCenter];
      v14 = v21;
      v17 = v22;
    }
  }

  else
  {
    v20 = v100;
  }

  v23 = [v4 model];
  v99 = [v23 potentialDrop];

  v24 = [v4 model];
  v25 = [v24 orientation];

  if (v25 == 1)
  {
    v26 = 0.0;
  }

  else if (v25 == 3)
  {
    v26 = 1.57079633;
  }

  else if (v25 == 4)
  {
    v26 = -1.57079633;
  }

  else if (v25 == 2)
  {
    v26 = 3.14159265;
  }

  else
  {
    v26 = 0.0;
  }

  [(DRFlockLayoutOutput *)v5 setOrientationRotation:v26];
  v27 = [v4 model];
  v28 = [v27 delegate];
  v29 = [v4 model];
  v98 = [v28 referenceScreenForViewModel:v29];

  if (v8)
  {
    v88 = v11;
    v89 = v5;
    v93 = 0;
    v30 = 0;
    v92 = v8;
    v31 = v8;
    v101 = v4;
    v91 = v17;
    v90 = v26;
    do
    {
      v32 = [v94 objectAtIndexedSubscript:{v30, v88}];
      v33 = [v32 preview];
      v34 = objc_opt_new();
      v35 = objc_alloc_init(_DUIPreviewAndImageComponentUpdate);
      v36 = [v32 preview];
      [v35 setPreview:v36];

      v37 = [v32 imageComponent];
      [v35 setImageComponent:v37];

      [v35 setIndex:{objc_msgSend(v32, "itemIndex")}];
      v38 = [v32 currentClient];
      [v35 setIsFromSource:{objc_msgSend(v38, "isSource")}];

      [v95 addObject:v35];
      v39 = v92 > 1 || [(DRFlockLayout *)v102 _shouldScaleItemModel:v32 withPotentialDrop:v99];
      [v32 setConstrainSize:v39];
      [v34 setConstrainSize:v39];
      if (([v32 precisionMode] & 1) == 0)
      {
        v40 = [v4 model];
        v41 = [v40 precisionMode];
        v42 = [v41 direction];

        v4 = v101;
        if (v42)
        {
          [v32 setPrecisionMode:1];
        }
      }

      v43 = [v4 model];
      [(DRFlockLayout *)v102 _anchorPointForItem:v32 sessionModel:v43];
      v45 = v44;
      v47 = v46;

      if (v39 && [v33 previewMode] == 4 && objc_msgSend(v32, "itemIndex"))
      {
        v48 = [v4 model];
        v49 = [v48 itemModels];
        v50 = [v49 firstObject];
        [v50 anchorPoint];
        v45 = v51;
        v47 = v52;

        v4 = v101;
      }

      v53 = [v32 currentClientItemViewModel];
      [v53 setAnchorPoint:{v45, v47}];

      [v32 stackOffset];
      v55 = v14 + v54;
      v57 = v17 + v56;
      [v32 setCenter:{v14 + v54, v17 + v56}];
      [v34 setCenter:{v55, v57}];
      [v98 scale];
      [v32 setDisplayScale:?];
      v58 = [(DRFlockLayout *)v102 _isNewItemModel:v32];
      v59 = [v4 model];
      v60 = v59;
      if (v59)
      {
        [v59 appliedTransform];
      }

      else
      {
        memset(&v115, 0, sizeof(v115));
      }

      v61 = [(DRFlockLayout *)v102 _viewForItemModel:v32 rotation:&v115 defaultCenter:v26 appliedTransform:v14, v17];

      if (([v99 prefersFullSizePreview] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v33, "shouldUseGlassBackgroundEffect"))
      {
        +[_DUIPreview defaultStackAlpha];
        [v61 setAlpha:?];
      }

      v4 = v101;
      if (v58)
      {
        [v34 setNewItem:1];
        v62 = [NSValue valueWithCGPoint:v45, v47];
        [v61 setAnchorPointValueToAdjustToOnMoveToWindow:v62];

        if ([v33 previewMode] == 4)
        {
          [v98 _referenceBounds];
          [v33 liftAnchorPoint];
          [v33 contentSize];
          [v33 originalCenter];
          _UIConvertPointFromOrientationToOrientation();
          v17 = v91;
          _UIConvertPointFromOrientationToOrientation();
          v26 = v90;
          UIDistanceBetweenPoints();
          [v34 setNeedsImmediateTracking:v63 <= 40.0];
        }
      }

      else if ([(DRFlockLayout *)v102 _itemModelHasUpdatedPreview:v32 forItemView:v61])
      {
        v114 = v61;
        v64 = [v101 model];
        v65 = v64;
        if (v64)
        {
          [v64 appliedTransform];
        }

        else
        {
          memset(&v115, 0, sizeof(v115));
        }

        v66 = [(DRFlockLayout *)v102 _previewTransitionForItemModel:v32 rotation:&v114 center:&v115 anchorPoint:v26 outItemView:v55 appliedTransform:v57, v45, v47];
        v67 = v114;

        [v34 setPreview:v66];
        [v34 setStartingPreviewTransition:1];
        v61 = v67;
        v4 = v101;
      }

      else
      {
        [v32 setApplyOriginalRotation:0];
      }

      if ([v33 avoidAnimation] && objc_msgSend(v32, "constrainSize"))
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

      v71 = [(NSMapTable *)v102->_transitioningViewsByItem objectForKey:v69];
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
      v107 = v4;
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
      v77 = [(DRFlockLayout *)v102 _badgeLayoutForPlatterView:v93 totalItemDepth:&v103 orientation:v88 count:v99 potentialDrop:0.0 centroid:v14, v17];
      v5 = v89;
      [(DRFlockLayoutOutput *)v89 setBadgeLayout:v77];

      v78 = [(DRFlockLayout *)v102 badgeContainer];
      [(DRFlockLayoutOutput *)v89 setBadgeView:v78];

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
  v79 = [v4 model];
  -[DRFlockLayoutOutput setTouchesCount:](v5, "setTouchesCount:", [v79 touchesCount]);

  v80 = [v4 model];
  if ([v80 isManipulatingTransform])
  {
    [(DRFlockLayoutOutput *)v5 setReduceBadgeAnimationSpring:1];
  }

  else
  {
    v81 = [v4 model];
    -[DRFlockLayoutOutput setReduceBadgeAnimationSpring:](v5, "setReduceBadgeAnimationSpring:", [v81 wantsElasticEffects]);
  }

  [(DRFlockLayoutOutput *)v5 setAnimatesFlockItemSizeAlongsidePreviewTransition:0];
  [(DRFlockLayoutOutput *)v5 setPreviewAndImageComponents:v95];
  v82 = [v4 model];
  v83 = v100;
  if ([v82 continuityDisplayWantsDragsHidden])
  {
    v84 = [v4 model];
    if ([v84 sourceRestrictsDragToSelf])
    {
      [(DRFlockLayoutOutput *)v5 setShouldHideFlock:0];
    }

    else
    {
      v85 = [v4 model];
      -[DRFlockLayoutOutput setShouldHideFlock:](v5, "setShouldHideFlock:", [v85 sourceRestrictsDragToLocalDevice] ^ 1);

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

- (id)_itemModelsForModel:(id)a3 withCapacity:(unint64_t)a4
{
  v5 = a3;
  v6 = [NSMutableArray arrayWithCapacity:a4];
  v7 = [v5 modelsSortedByStackOrder];
  v8 = [v7 reverseObjectEnumerator];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v8;
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
      if ([v5 isObjectManipulationActive])
      {
        goto LABEL_17;
      }

      v14 = [v13 imageComponent];
      if (v14)
      {
        v15 = v14;
        [v13 imageComponent];
        v17 = v16 = a4;
        v18 = [v17 hidesImage];

        a4 = v16;
        if ((v18 & 1) == 0)
        {
LABEL_17:
          [v6 insertObject:v13 atIndex:0];
          if ([v6 count] >= a4)
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

- (BOOL)_isNewItemModel:(id)a3
{
  v4 = a3;
  v5 = [(DRFlockLayout *)self viewsByItem];
  v6 = [v5 objectForKey:v4];

  return v6 == 0;
}

- (id)_viewForItemModel:(id)a3 rotation:(double)a4 defaultCenter:(CGPoint)a5 appliedTransform:(CGAffineTransform *)a6
{
  y = a5.y;
  x = a5.x;
  v11 = a3;
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v11 preview];
  if (!v20)
  {
    v20 = [_DUIPreview defaultPreviewWithFrame:v13, v15, v17, v19];
    [v20 setOriginalCenter:{x, y}];
    v21 = [v11 currentClientItemViewModel];
    [v21 setPreview:v20];
  }

  v22 = [(NSMapTable *)self->_viewsByItem objectForKey:v11];
  if (!v22)
  {
    v22 = [[_UIPlatterView alloc] initWithDUIPreview:v20];
    [v22 setOrientationRotation:a4];
    [v20 originalCenter];
    if (v24 != CGPointZero.x || v23 != CGPointZero.y)
    {
      [v20 originalCenter];
      x = v26;
      y = v27;
    }

    [v22 setCenter:{x, y}];
    [v22 setLifted:1];
    [v22 setAppliesOriginalRotation:{objc_msgSend(v11, "applyOriginalRotation")}];
    v28 = *&a6->c;
    v38[0] = *&a6->a;
    v38[1] = v28;
    v38[2] = *&a6->tx;
    [v22 setAppliedTransform:v38];
    v29 = [v22 layer];
    [v29 setAllowsHitTesting:0];

    [(NSMapTable *)self->_viewsByItem setObject:v22 forKey:v11];
    v30 = [(DRFlockLayout *)self _componentViewForItemModel:v11];
    [v22 setComponentView:v30];
    v31 = [v11 preview];
    v32 = [v31 previewMode];

    if ((v32 - 3) >= 2)
    {
      v33 = [v30 superview];
      v34 = [v33 layer];

      [v34 setShouldRasterize:1];
      [v11 displayScale];
      [v34 setRasterizationScale:?];
    }

    imageComponentByItemView = self->_imageComponentByItemView;
    v36 = [v11 imageComponent];
    [(NSMapTable *)imageComponentByItemView setObject:v36 forKey:v22];
  }

  return v22;
}

- (id)_componentViewForItemModel:(id)a3
{
  v4 = [a3 imageComponent];
  v5 = v4;
  v6 = 0;
  if (a3 && v4)
  {
    if ([v4 representsPortal])
    {
      v6 = [v5 portalView];
    }

    else
    {
      v7 = [UIView alloc];
      [v5 frame];
      v6 = [v7 initWithFrame:?];
      v8 = +[CAContext objectForSlot:](CAContext, "objectForSlot:", [v5 slotID]);
      v9 = [v6 layer];
      [v9 setContents:v8];
    }

    [v5 frame];
    [v6 setFrame:?];
    [v6 setAccessibilityIgnoresInvertColors:{objc_msgSend(v5, "ignoresAccessibilityFilters")}];
  }

  return v6;
}

- (BOOL)_shouldScaleItemModel:(id)a3 withPotentialDrop:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 constrainSize] & 1) != 0 || (objc_msgSend(v5, "preview"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isOversized"), v7, (v8))
  {
    v9 = 1;
  }

  else if ([v6 prefersFullSizePreview])
  {
    v9 = 0;
  }

  else
  {
    v11 = [v5 preview];
    [v11 scaleFactor];
    v9 = v12 < 1.0;
  }

  return v9;
}

- (id)_badgeLayoutForPlatterView:(id)a3 totalItemDepth:(double)a4 orientation:(CGAffineTransform *)a5 count:(unint64_t)a6 potentialDrop:(id)a7 centroid:(CGPoint)a8
{
  v11 = a3;
  v12 = a7;
  v13 = objc_opt_new();
  v14 = [(DRFlockLayout *)self badgeContainer];
  v15 = [(DRFlockLayout *)self badge];
  WeakRetained = objc_loadWeakRetained(&self->_badgeAnchorPlatter);
  if (WeakRetained)
  {
    v17 = objc_loadWeakRetained(&self->_badgeAnchorPlatter);
    v18 = v17 != v11;
  }

  else
  {
    v18 = 0;
  }

  objc_storeWeak(&self->_badgeAnchorPlatter, v11);
  [v15 setItemCount:a6];
  [v15 intrinsicContentSize];
  v20 = v19;
  v22 = v21;
  v23 = v12;
  v24 = [v23 preferredBadgeStyle] != 1 && (a6 > 1 || objc_msgSend(v23, "operation") == 1 || !objc_msgSend(v23, "operation") && objc_msgSend(v23, "forbidden"));

  [v13 setVisible:v24];
  if (v18)
  {
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_100014F30;
    v82[3] = &unk_100055558;
    v83 = v14;
    v84 = v11;
    v85 = v15;
    v25 = [DRFlockAnimatable animationBlock:v82];
    [v13 setOffsetAdjustment:v25];
  }

  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_100014F9C;
  v79[3] = &unk_100054C50;
  v26 = v14;
  v80 = v26;
  v27 = v11;
  v81 = v27;
  v28 = [DRFlockAnimatable animationBlock:v79];
  [v13 setPosition:v28];

  v29 = [v26 superview];
  [v13 setJustBecameVisible:v29 == 0];

  v30 = [v27 preview];
  [v30 initialBadgeLocation];
  v32 = v31;
  v34 = v33;

  v35 = [v13 justBecameVisible];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100014FD8;
  v75[3] = &unk_100055580;
  if (v32 < 1.79769313e308)
  {
    v36 = v35;
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
  v40 = v15;
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
      v49 = *&a5->c;
      v66 = *&a5->a;
      v67 = v49;
      v68 = *&a5->tx;
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
  v46 = *&a5->c;
  *&t2.a = *&a5->a;
  *&t2.c = v46;
  *&t2.tx = *&a5->tx;
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