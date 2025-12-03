@interface MPUFallAnimator
+ (void)animateFallForView:(id)view withCompletionHandler:(id)handler;
@end

@implementation MPUFallAnimator

+ (void)animateFallForView:(id)view withCompletionHandler:(id)handler
{
  v87[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (viewCopy)
  {
    v66 = handlerCopy;
    layer = [viewCopy layer];
    [layer setAnchorPoint:{0.5, 1.0}];
    [layer position];
    v10 = v9;
    v12 = v11;
    [layer bounds];
    v64 = layer;
    [layer setPosition:{v10, v12 + CGRectGetHeight(v88) * 0.5}];
    v13 = objc_alloc(MEMORY[0x277D75D18]);
    [viewCopy bounds];
    v14 = [v13 initWithFrame:?];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v14 setBackgroundColor:blackColor];

    v16 = 0.0;
    [v14 setAlpha:0.0];
    v67 = viewCopy;
    v62 = v14;
    [viewCopy addSubview:v14];
    v17 = objc_alloc_init(_MPUFallAnimatorDynamicItem);
    [(_MPUFallAnimatorDynamicItem *)v17 setBounds:0.0, 0.0, 5.0, 100.0];
    [(_MPUFallAnimatorDynamicItem *)v17 setCenter:50.0, 100.0];
    v18 = *(MEMORY[0x277CBF2C0] + 16);
    *&v81.m11 = *MEMORY[0x277CBF2C0];
    *&v81.m13 = v18;
    *&v81.m21 = *(MEMORY[0x277CBF2C0] + 32);
    [(_MPUFallAnimatorDynamicItem *)v17 setTransform:&v81];
    v19 = objc_alloc_init(_MPUFallAnimatorDynamicSystem);
    [(_MPUFallAnimatorDynamicSystem *)v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v65 = v19;
    v28 = [objc_alloc(MEMORY[0x277D754B0]) initWithReferenceSystem:v19];
    [v28 _setAlwaysDisableDisplayLink:1];
    v29 = objc_alloc(MEMORY[0x277D75578]);
    v87[0] = v17;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:1];
    v31 = [v29 initWithItems:v30];

    v63 = v31;
    [v28 addBehavior:v31];
    v32 = objc_alloc(MEMORY[0x277D75338]);
    v86 = v17;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
    v34 = [v32 initWithItems:v33];

    v89.origin.x = v21;
    v89.origin.y = v23;
    v89.size.width = v25;
    v89.size.height = v27;
    MinX = CGRectGetMinX(v89);
    v90.origin.x = 0.0;
    v90.origin.y = 0.0;
    v90.size.width = 5.0;
    v90.size.height = 100.0;
    v36 = CGRectGetHeight(v90) * 0.5 + 100.0;
    v91.origin.x = v21;
    v91.origin.y = v23;
    v91.size.width = v25;
    v91.size.height = v27;
    MaxX = CGRectGetMaxX(v91);
    v92.origin.x = 0.0;
    v92.origin.y = 0.0;
    v92.size.width = 5.0;
    v92.size.height = 100.0;
    [v34 addBoundaryWithIdentifier:@"floor" fromPoint:MinX toPoint:{v36, MaxX, CGRectGetHeight(v92) * 0.5 + 100.0}];
    v61 = v34;
    [v28 addBehavior:v34];
    v38 = objc_alloc(MEMORY[0x277D75900]);
    v85 = v17;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
    v40 = [v38 initWithItems:v39 mode:1];

    [v40 setTargetPoint:v17 forItem:{0.0, 5.0}];
    [v40 setXComponent:1.0 yComponent:0.0];
    v60 = v40;
    [v28 addBehavior:v40];
    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v43 = 0.0;
    v44 = 0.0;
    if (v17)
    {
      [(_MPUFallAnimatorDynamicItem *)v17 transform:0.0];
      v44 = *(&v82 + 1);
      v43 = *&v82;
    }

    v45 = atan2(v44, v43);
    if (v45 >= -1.57079633)
    {
      v46 = v45;
      v73 = *(MEMORY[0x277CD9DE8] + 48);
      v74 = *(MEMORY[0x277CD9DE8] + 32);
      v47 = *(MEMORY[0x277CD9DE8] + 80);
      v71 = *MEMORY[0x277CD9DE8];
      v72 = *(MEMORY[0x277CD9DE8] + 64);
      v69 = *(MEMORY[0x277CD9DE8] + 96);
      v70 = *(MEMORY[0x277CD9DE8] + 16);
      v68 = *(MEMORY[0x277CD9DE8] + 112);
      v48 = 0uLL;
      do
      {
        *&v80.m21 = v74;
        *&v80.m23 = v73;
        *&v80.m31 = v72;
        *&v80.m11 = v71;
        *&v80.m13 = v70;
        *&v80.m41 = v69;
        *&v80.m43 = v68;
        *&v81.m41 = v48;
        *&v81.m43 = v48;
        *&v81.m31 = v48;
        *&v81.m33 = v48;
        *&v81.m21 = v48;
        *&v81.m23 = v48;
        *&v81.m11 = v48;
        *&v81.m13 = v48;
        v80.m33 = v47;
        v80.m34 = -0.004;
        CATransform3DRotate(&v81, &v80, v46, 1.0, 0.0, 0.0);
        v80 = v81;
        v49 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v80];
        [v41 addObject:v49];

        v50 = [MEMORY[0x277CCABB0] numberWithDouble:{fmin(fmax(v46 / -1.57079633 * 0.8, 0.0), 1.0)}];
        [v42 addObject:v50];

        v51 = [v28 _animatorStep:0.0166666667];
        if (v17)
        {
          [(_MPUFallAnimatorDynamicItem *)v17 transform];
        }

        else
        {
          memset(&v80, 0, 48);
        }

        v16 = v16 + 0.0166666667;
        v82 = *&v80.m11;
        v83 = *&v80.m13;
        v84 = *&v80.m21;
        v46 = atan2(v80.m12, v80.m11);
        v48 = 0uLL;
      }

      while (((v46 >= -1.57079633) & v51) != 0);
    }

    [v28 removeAllBehaviors];
    [MEMORY[0x277CD9FF0] begin];
    v52 = MEMORY[0x277CD9FF0];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __60__MPUFallAnimator_animateFallForView_withCompletionHandler___block_invoke;
    v76[3] = &unk_27984C420;
    v77 = v62;
    v78 = v64;
    v7 = v66;
    v79 = v66;
    v75 = v64;
    v53 = v62;
    [v52 setCompletionBlock:v76];
    v54 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
    [v54 setValues:v41];
    UIAnimationDragCoefficient();
    [v54 setDuration:v16 * v55];
    v56 = *MEMORY[0x277CDA230];
    [v54 setFillMode:*MEMORY[0x277CDA230]];
    [v54 setRemovedOnCompletion:0];
    [v75 addAnimation:v54 forKey:@"fallingAnimation"];
    v57 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v57 setValues:v42];
    UIAnimationDragCoefficient();
    [v57 setDuration:v16 * v58];
    [v57 setFillMode:v56];
    [v57 setRemovedOnCompletion:0];
    layer2 = [v53 layer];
    [layer2 addAnimation:v57 forKey:@"fallingAnimation"];

    [MEMORY[0x277CD9FF0] commit];
    viewCopy = v67;
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
  }
}

uint64_t __60__MPUFallAnimator_animateFallForView_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) setAnchorPoint:{0.5, 0.5}];
  v2 = *(a1 + 40);
  v3 = *(MEMORY[0x277CD9DE8] + 80);
  v8[4] = *(MEMORY[0x277CD9DE8] + 64);
  v8[5] = v3;
  v4 = *(MEMORY[0x277CD9DE8] + 112);
  v8[6] = *(MEMORY[0x277CD9DE8] + 96);
  v8[7] = v4;
  v5 = *(MEMORY[0x277CD9DE8] + 16);
  v8[0] = *MEMORY[0x277CD9DE8];
  v8[1] = v5;
  v6 = *(MEMORY[0x277CD9DE8] + 48);
  v8[2] = *(MEMORY[0x277CD9DE8] + 32);
  v8[3] = v6;
  [v2 setTransform:v8];
  [*(a1 + 40) removeAnimationForKey:@"fallingAnimation"];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end