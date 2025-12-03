@interface CKChatControllerDummyAnimator
- (CKSendAnimationManager)animationDelegate;
- (double)_throwAnimationDurationScaleFactorForThrownBalloonAttributes:(id)attributes finalBalloonFrames:(id)frames sendAnimationType:(unint64_t)type;
- (id)_animationCompletionBlockWithSendAnimationContext:(id)context;
- (id)balloonViewFadeAnimationForConvertedCurrentMediaTime:(double)time direction:(unint64_t)direction sendAnimationType:(unint64_t)type;
- (void)__beginThrowAnimationWithThrowBalloonViewAttributesCollection:(id)collection framesOfAddedChatItems:(id)items sendAnimationType:(unint64_t)type entryViewSize:(CGSize)size;
- (void)_beginFocusAnimationWithContext:(id)context;
- (void)_beginGentleAnimationWithContext:(id)context;
- (void)_beginImpactAnimationWithContext:(id)context;
- (void)_beginLoudAnimationsWithContext:(id)context;
- (void)_beginPopAnimationWithContext:(id)context;
- (void)_beginThrowAnimationWithContext:(id)context;
- (void)_configureQuickReplySendAnimationGroup:(id)group withSendAnimationContext:(id)context;
- (void)_prepareToAnimateForSendAnimationContext:(id)context;
- (void)addAnimationsForColoredBalloonView:(id)view sendAnimationType:(unint64_t)type sendAnimationConfiguration:(id)configuration;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)beginAnimationWithSendAnimationContext:(id)context;
- (void)beginQuickReplyAnimationWithSendAnimationContext:(id)context;
- (void)performPopAnimationCleanUpForPopRendererView:(id)view;
- (void)popRendererViewDidBegin:(id)begin;
- (void)popRendererViewPlaySound:(id)sound;
- (void)stopAnimationWithSendAnimationContext:(id)context;
@end

@implementation CKChatControllerDummyAnimator

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v4 = [(CKChatControllerDummyAnimator *)self throwAnimationGroup:stop];
  if (v4)
  {
    v5 = v4;
    dispatch_group_leave(v4);
    v4 = v5;
  }
}

- (void)stopAnimationWithSendAnimationContext:(id)context
{
  v119 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  impactIdentifier = [contextCopy impactIdentifier];

  if (impactIdentifier)
  {
    selfCopy = self;
    v63 = contextCopy;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = [contextCopy animatableViews];
    v6 = [obj countByEnumeratingWithState:&v110 objects:v118 count:16];
    if (v6)
    {
      v7 = v6;
      v84 = *v111;
      v82 = *MEMORY[0x1E6979EB8];
      v78 = *(MEMORY[0x1E69792E8] + 80);
      v80 = *(MEMORY[0x1E69792E8] + 64);
      v74 = *(MEMORY[0x1E69792E8] + 112);
      v76 = *(MEMORY[0x1E69792E8] + 96);
      v70 = *(MEMORY[0x1E69792E8] + 16);
      v72 = *MEMORY[0x1E69792E8];
      v66 = *(MEMORY[0x1E69792E8] + 48);
      v68 = *(MEMORY[0x1E69792E8] + 32);
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v111 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v110 + 1) + 8 * i);
          v10 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
          layer = [v9 layer];
          presentationLayer = [layer presentationLayer];
          v13 = [presentationLayer valueForKey:@"transform"];
          [v10 setFromValue:v13];

          v106 = v80;
          v107 = v78;
          v108 = v76;
          v109 = v74;
          v102 = v72;
          v103 = v70;
          v104 = v68;
          v105 = v66;
          v14 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v102];
          [v10 setToValue:v14];

          [v10 setDuration:0.2];
          [v10 setAdditive:1];
          v15 = [MEMORY[0x1E69793D0] functionWithName:v82];
          [v10 setTimingFunction:v15];

          layer2 = [v9 layer];
          [layer2 setAllowsEdgeAntialiasing:0];

          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v17 = [&unk_1F04E70E0 countByEnumeratingWithState:&v98 objects:v117 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v99;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v99 != v19)
                {
                  objc_enumerationMutation(&unk_1F04E70E0);
                }

                v21 = *(*(&v98 + 1) + 8 * j);
                layer3 = [v9 layer];
                [layer3 removeAnimationForKey:v21];
              }

              v18 = [&unk_1F04E70E0 countByEnumeratingWithState:&v98 objects:v117 count:16];
            }

            while (v18);
          }

          [v9 addAnimation:v10 forKey:@"finish"];
        }

        v7 = [obj countByEnumeratingWithState:&v110 objects:v118 count:16];
      }

      while (v7);
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    obja = [v63 throwBalloonViews];
    v23 = [obja countByEnumeratingWithState:&v94 objects:v116 count:16];
    if (v23)
    {
      v24 = v23;
      v85 = *v95;
      v81 = *(MEMORY[0x1E69792E8] + 80);
      v83 = *(MEMORY[0x1E69792E8] + 64);
      v77 = *(MEMORY[0x1E69792E8] + 112);
      v79 = *(MEMORY[0x1E69792E8] + 96);
      v73 = *(MEMORY[0x1E69792E8] + 16);
      v75 = *MEMORY[0x1E69792E8];
      v69 = *(MEMORY[0x1E69792E8] + 48);
      v71 = *(MEMORY[0x1E69792E8] + 32);
      v67 = *MEMORY[0x1E6979EB8];
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v95 != v85)
          {
            objc_enumerationMutation(obja);
          }

          v26 = *(*(&v94 + 1) + 8 * k);
          v27 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
          layer4 = [v26 layer];
          presentationLayer2 = [layer4 presentationLayer];
          v30 = [presentationLayer2 valueForKey:@"transform"];
          [v27 setFromValue:v30];

          v106 = v83;
          v107 = v81;
          v108 = v79;
          v109 = v77;
          v102 = v75;
          v103 = v73;
          v104 = v71;
          v105 = v69;
          v31 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v102];
          [v27 setToValue:v31];

          [v27 setDuration:0.2];
          [v27 setAdditive:1];
          v32 = [MEMORY[0x1E69793D0] functionWithName:v67];
          [v27 setTimingFunction:v32];

          layer5 = [v26 layer];
          [layer5 setAllowsEdgeAntialiasing:0];

          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v34 = [&unk_1F04E70F8 countByEnumeratingWithState:&v90 objects:v115 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v91;
            do
            {
              for (m = 0; m != v35; ++m)
              {
                if (*v91 != v36)
                {
                  objc_enumerationMutation(&unk_1F04E70F8);
                }

                v38 = *(*(&v90 + 1) + 8 * m);
                layer6 = [v26 layer];
                [layer6 removeAnimationForKey:v38];
              }

              v35 = [&unk_1F04E70F8 countByEnumeratingWithState:&v90 objects:v115 count:16];
            }

            while (v35);
          }

          [v26 addAnimation:v27 forKey:@"finish"];
        }

        v24 = [obja countByEnumeratingWithState:&v94 objects:v116 count:16];
      }

      while (v24);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    animatableTextViews = [v63 animatableTextViews];
    v41 = [animatableTextViews countByEnumeratingWithState:&v86 objects:v114 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v87;
      v44 = *MEMORY[0x1E6979C48];
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v87 != v43)
          {
            objc_enumerationMutation(animatableTextViews);
          }

          v46 = *(*(&v86 + 1) + 8 * n);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            subviews = [v46 subviews];
            v48 = [subviews count];

            if (v48)
            {
              subviews2 = [v46 subviews];
              firstObject = [subviews2 firstObject];

              subviews3 = [v46 subviews];
              firstObject2 = [subviews3 firstObject];
              [firstObject2 setContentScaleFactor:0.0];

              layer7 = [firstObject layer];
              [layer7 setMinificationFilter:v44];

              layer8 = [firstObject layer];
              [layer8 removeAnimationForKey:@"darken"];
            }

            layer9 = [v46 layer];
            [layer9 removeAnimationForKey:@"position.y"];

            layer10 = [v46 layer];
            [layer10 removeAnimationForKey:@"position.x"];

            layer11 = [v46 layer];
            [layer11 removeAnimationForKey:@"transform.scale"];

            layer12 = [v46 layer];
            [layer12 removeAnimationForKey:@"transform.rotation.z"];

            layer13 = [v46 layer];
            [layer13 removeAnimationForKey:@"opacity"];
          }
        }

        v42 = [animatableTextViews countByEnumeratingWithState:&v86 objects:v114 count:16];
      }

      while (v42);
    }

    dustEmitter = [(CKChatControllerDummyAnimator *)selfCopy dustEmitter];

    contextCopy = v63;
    if (dustEmitter)
    {
      dustEmitter2 = [(CKChatControllerDummyAnimator *)selfCopy dustEmitter];
      [dustEmitter2 removeFromSuperlayer];

      [(CKChatControllerDummyAnimator *)selfCopy setDustEmitter:0];
    }
  }
}

- (void)_prepareToAnimateForSendAnimationContext:(id)context
{
  contextCopy = context;
  animationDelegate = [(CKChatControllerDummyAnimator *)self animationDelegate];
  [(CKChatControllerDummyAnimator *)self stopAnimationWithSendAnimationContext:contextCopy];
  [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
  [MEMORY[0x1E6979518] begin];
  if (objc_opt_respondsToSelector())
  {
    [animationDelegate animationWillBeginWithContext:contextCopy];
  }
}

- (id)_animationCompletionBlockWithSendAnimationContext:(id)context
{
  contextCopy = context;
  impactIdentifier = [contextCopy impactIdentifier];
  animationDelegate = [(CKChatControllerDummyAnimator *)self animationDelegate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__CKChatControllerDummyAnimator__animationCompletionBlockWithSendAnimationContext___block_invoke;
  aBlock[3] = &unk_1E72EB880;
  v7 = contextCopy;
  v14 = v7;
  selfCopy = self;
  v8 = animationDelegate;
  v16 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [impactIdentifier isEqualToString:@"com.apple.MobileSMS.expressivesend.pop"];
  if (([v7 shouldRepeat] & 1) == 0 && impactIdentifier && (v10 & 1) == 0)
  {
    [MEMORY[0x1E6979518] setCompletionBlock:v9];
  }

  v11 = _Block_copy(v9);

  return v11;
}

void __83__CKChatControllerDummyAnimator__animationCompletionBlockWithSendAnimationContext___block_invoke(id *a1)
{
  v6 = [a1[4] throwBalloonViews];
  if (![v6 count] || (objc_msgSend(v6, "firstObject"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "layer"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "animationKeys"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", @"finish"), v4, v3, v2, (v5 & 1) == 0))
  {
    [a1[5] stopAnimationWithSendAnimationContext:a1[4]];
  }

  [a1[6] animationDidFinishWithContext:a1[4]];
}

- (void)beginAnimationWithSendAnimationContext:(id)context
{
  contextCopy = context;
  [(CKChatControllerDummyAnimator *)self _prepareToAnimateForSendAnimationContext:contextCopy];
  v4 = [(CKChatControllerDummyAnimator *)self _animationCompletionBlockWithSendAnimationContext:contextCopy];
  impactIdentifier = [contextCopy impactIdentifier];
  if ([impactIdentifier isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"])
  {
    [(CKChatControllerDummyAnimator *)self _beginImpactAnimationWithContext:contextCopy];
  }

  else if ([impactIdentifier isEqualToString:@"com.apple.MobileSMS.expressivesend.gentle"])
  {
    [(CKChatControllerDummyAnimator *)self _beginGentleAnimationWithContext:contextCopy];
  }

  else if ([impactIdentifier isEqualToString:@"com.apple.MobileSMS.expressivesend.loud"])
  {
    [(CKChatControllerDummyAnimator *)self _beginLoudAnimationsWithContext:contextCopy];
  }

  else if ([impactIdentifier isEqualToString:@"com.apple.MobileSMS.expressivesend.focus"])
  {
    [(CKChatControllerDummyAnimator *)self _beginFocusAnimationWithContext:contextCopy];
  }

  else if ([impactIdentifier isEqualToString:@"com.apple.MobileSMS.expressivesend.pop"])
  {
    [(CKChatControllerDummyAnimator *)self setPopAnimationCompletionBlock:v4];
    [(CKChatControllerDummyAnimator *)self _beginPopAnimationWithContext:contextCopy];
  }

  else if (!impactIdentifier)
  {
    v6 = dispatch_group_create();
    [(CKChatControllerDummyAnimator *)self setThrowAnimationGroup:v6];
    [(CKChatControllerDummyAnimator *)self _beginThrowAnimationWithContext:contextCopy];
    dispatch_group_notify(v6, MEMORY[0x1E69E96A0], v4);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)beginQuickReplyAnimationWithSendAnimationContext:(id)context
{
  contextCopy = context;
  [(CKChatControllerDummyAnimator *)self _prepareToAnimateForSendAnimationContext:contextCopy];
  group = dispatch_group_create();
  [(CKChatControllerDummyAnimator *)self _configureQuickReplySendAnimationGroup:group withSendAnimationContext:contextCopy];
  v5 = [(CKChatControllerDummyAnimator *)self _animationCompletionBlockWithSendAnimationContext:contextCopy];

  dispatch_group_notify(group, MEMORY[0x1E69E96A0], v5);
  [MEMORY[0x1E6979518] commit];
}

- (double)_throwAnimationDurationScaleFactorForThrownBalloonAttributes:(id)attributes finalBalloonFrames:(id)frames sendAnimationType:(unint64_t)type
{
  attributesCopy = attributes;
  framesCopy = frames;
  v9 = framesCopy;
  v10 = 1.0;
  if (!type)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0x3FF0000000000000;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __131__CKChatControllerDummyAnimator__throwAnimationDurationScaleFactorForThrownBalloonAttributes_finalBalloonFrames_sendAnimationType___block_invoke;
    v12[3] = &unk_1E72F3860;
    v13 = framesCopy;
    v14 = &v15;
    [attributesCopy enumerateObjectsUsingBlock:v12];
    v10 = v16[3];

    _Block_object_dispose(&v15, 8);
  }

  return v10;
}

void __131__CKChatControllerDummyAnimator__throwAnimationDurationScaleFactorForThrownBalloonAttributes_finalBalloonFrames_sendAnimationType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v30 = a2;
  v7 = [MEMORY[0x1E695DFB0] null];

  v8 = v30;
  if (v7 != v30)
  {
    v9 = [v30 throwBalloonView];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [*(a1 + 32) objectAtIndex:a3];
      [v18 CGRectValue];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v32.origin.x = v20;
      v32.origin.y = v22;
      v32.size.width = v24;
      v32.size.height = v26;
      Width = CGRectGetWidth(v32);
      v33.origin.x = v11;
      v33.origin.y = v13;
      v33.size.width = v15;
      v33.size.height = v17;
      if (Width > CGRectGetWidth(v33) * 0.66)
      {
        v28 = +[CKUIBehavior sharedBehaviors];
        [v28 sendAnimationDuration];
        *(*(*(a1 + 40) + 8) + 24) = 0.35 / v29;

        *a4 = 1;
      }
    }

    v8 = v30;
  }
}

- (void)__beginThrowAnimationWithThrowBalloonViewAttributesCollection:(id)collection framesOfAddedChatItems:(id)items sendAnimationType:(unint64_t)type entryViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  itemsCopy = items;
  collectionCopy = collection;
  throwAnimationGroup = [(CKChatControllerDummyAnimator *)self throwAnimationGroup];
  [(CKChatControllerDummyAnimator *)self _throwAnimationDurationScaleFactorForThrownBalloonAttributes:collectionCopy finalBalloonFrames:itemsCopy sendAnimationType:type];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __150__CKChatControllerDummyAnimator___beginThrowAnimationWithThrowBalloonViewAttributesCollection_framesOfAddedChatItems_sendAnimationType_entryViewSize___block_invoke;
  v17[3] = &unk_1E72F7130;
  v18 = itemsCopy;
  selfCopy = self;
  v20 = throwAnimationGroup;
  typeCopy = type;
  v22 = v14;
  v23 = width;
  v24 = height;
  v15 = throwAnimationGroup;
  v16 = itemsCopy;
  [collectionCopy enumerateObjectsUsingBlock:v17];
}

void __150__CKChatControllerDummyAnimator___beginThrowAnimationWithThrowBalloonViewAttributesCollection_framesOfAddedChatItems_sendAnimationType_entryViewSize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v277[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [v5 throwBalloonView];
    v7 = [*(a1 + 32) objectAtIndex:a3];
    [v7 CGRectValue];
    v258 = v9;
    v259 = v8;
    v11 = v10;
    v261 = v12;

    v13 = [v6 layer];
    [v13 convertTime:0 fromLayer:CACurrentMediaTime()];
    v15 = v14;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v17 = 0x1E6979000uLL;
    v260 = v11;
    rect_24 = v15;
    if (objc_opt_isKindOfClass() & 1) != 0 || (isKindOfClass)
    {
      v18 = +[CKUIBehavior sharedBehaviors];
      [v18 sendAnimationDuration];
      v20 = v19;

      v21 = [v5 supplementaryViews];
      v22 = [v21 textViewContainerView];
      v23 = [v21 sendButtonSnapshot];
      rect_16 = [v21 whiteTextFadeView];
      v239 = v21;
      v24 = [v21 audioMessagePillViewSnapshot];
      [v22 setHidden:0];
      [v22 frame];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      [v23 position];
      v241 = v23;
      v234 = isKindOfClass;
      v233 = v20;
      if (v23)
      {
        Width = v33;
        v36 = v34;
      }

      else
      {
        v279.origin.x = v26;
        v279.origin.y = v28;
        v279.size.width = v30;
        v279.size.height = v32;
        Width = CGRectGetWidth(v279);
        v280.origin.x = v26;
        v280.origin.y = v28;
        v280.size.width = v30;
        v280.size.height = v32;
        v36 = CGRectGetHeight(v280) * 0.5;
      }

      rect_8 = v5;
      v281.origin.x = v26;
      v281.origin.y = v28;
      v281.size.width = v30;
      v281.size.height = v32;
      v37 = Width / CGRectGetWidth(v281);
      v282.origin.x = v26;
      v282.origin.y = v28;
      v282.size.width = v30;
      v282.size.height = v32;
      v38 = v36 / CGRectGetHeight(v282);
      v39 = [v22 layer];
      [v39 setAnchorPoint:{v37, v38}];

      [v6 frame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v48 = [v6 layer];
      [v48 setAnchorPoint:{1.0, 0.5}];

      [v6 setFrame:{v41, v43, v45, v47}];
      [rect_16 frame];
      v243 = v50;
      rectb = v49;
      v52 = v51;
      v54 = v53;
      v55 = [v6 layer];
      [v55 anchorPoint];
      v56 = v26;
      v58 = v57;
      v59 = v28;
      v61 = v60;
      v62 = [rect_16 layer];
      [v62 setAnchorPoint:{v58, v61}];

      [rect_16 setFrame:{rectb, v243, v52, v54}];
      [v24 frame];
      v244 = v64;
      rectc = v63;
      v66 = v65;
      v68 = v67;
      v69 = [v6 layer];
      [v69 anchorPoint];
      v71 = v70;
      v73 = v72;
      v74 = [v24 layer];
      [v74 setAnchorPoint:{v71, v73}];

      v240 = v24;
      [v24 setFrame:{rectc, v244, v66, v68}];
      v283.origin.x = v56;
      v283.origin.y = v59;
      v283.size.width = v30;
      v283.size.height = v32;
      MinX = CGRectGetMinX(v283);
      v75 = [v22 layer];
      [v75 anchorPoint];
      v235 = v76;
      v284.origin.x = v56;
      v284.origin.y = v59;
      v284.size.width = v30;
      v284.size.height = v32;
      v231 = CGRectGetWidth(v284);
      v285.origin.x = v56;
      v285.origin.y = v59;
      v285.size.width = v30;
      v285.size.height = v32;
      MinY = CGRectGetMinY(v285);
      v77 = [v22 layer];
      [v77 anchorPoint];
      v228 = v78;
      v286.origin.x = v56;
      v286.origin.y = v59;
      v286.size.width = v30;
      v286.size.height = v32;
      Height = CGRectGetHeight(v286);

      v287.origin.x = v259;
      v287.origin.y = v258;
      v287.size.width = v260;
      v287.size.height = v261;
      MaxX = CGRectGetMaxX(v287);
      v79 = [v22 layer];
      [v79 anchorPoint];
      v225 = v80;
      v288.origin.x = v56;
      v288.origin.y = v59;
      v245 = v32;
      rect = v30;
      v288.size.width = v30;
      v288.size.height = v32;
      v81 = CGRectGetWidth(v288);
      v289.origin.x = v259;
      v289.origin.y = v258;
      v289.size.width = v260;
      v289.size.height = v261;
      v82 = CGRectGetMinY(v289);
      v83 = [v22 layer];
      [v83 anchorPoint];
      v85 = v84;
      v290.origin.x = v259;
      v290.origin.y = v258;
      v290.size.width = v260;
      v290.size.height = v261;
      v86 = CGRectGetHeight(v290);

      if (v22)
      {
        v87 = rect_24;
        v88 = [MEMORY[0x1E6979318] ck_positionYAnimationForSendAnimationType:*(a1 + 56) beginTime:*(a1 + 40) initialPositionY:rect_24 finalPositionY:MinY + v228 * Height durationScaleFactor:v82 + v85 * v86 delegate:*(a1 + 64)];
        v89 = [MEMORY[0x1E6979318] ck_positionXAnimationForSendAnimationType:*(a1 + 56) beginTime:*(a1 + 40) initialPositionX:rect_24 finalPositionX:MinX + v235 * v231 durationScaleFactor:MaxX - (1.0 - v225) * v81 delegate:*(a1 + 64)];
        [v22 addAnimation:v89 forKey:@"position.x"];
        dispatch_group_enter(*(a1 + 48));
        v238 = v88;
        [v22 addAnimation:v88 forKey:@"position.y"];
        dispatch_group_enter(*(a1 + 48));
        v90 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
        [v90 setBeginTime:rect_24];
        v91 = MEMORY[0x1E696B098];
        CATransform3DMakeScale(&v273, 1.0, 1.0, 1.0);
        v92 = [v91 valueWithCATransform3D:&v273];
        v277[0] = v92;
        v93 = MEMORY[0x1E696B098];
        CATransform3DMakeScale(&v273, 0.88, 0.88, 1.0);
        v94 = [v93 valueWithCATransform3D:&v273];
        v277[1] = v94;
        v95 = MEMORY[0x1E696B098];
        CATransform3DMakeScale(&v273, 1.0, 1.0, 1.0);
        v96 = [v95 valueWithCATransform3D:&v273];
        v277[2] = v96;
        v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v277 count:3];
        [v90 setValues:v97];

        LODWORD(v98) = 1059648963;
        LODWORD(v99) = 1.0;
        LODWORD(v100) = 1.0;
        v101 = [MEMORY[0x1E69793D0] functionWithControlPoints:v98 :0.0 :v99 :v100];
        v276[0] = v101;
        LODWORD(v102) = 1059022886;
        LODWORD(v103) = 1064176765;
        v104 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v102 :v103];
        v276[1] = v104;
        v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v276 count:2];
        [v90 setTimingFunctions:v105];

        [v90 setKeyTimes:&unk_1F04E7110];
        [v90 setRemovedOnCompletion:0];
        v106 = *MEMORY[0x1E69797E0];
        [v90 setFillMode:*MEMORY[0x1E69797E0]];
        v107 = v233;
        [v90 setDuration:v233 * *(a1 + 64)];
        [v90 setDelegate:*(a1 + 40)];
        [v90 ck_requestHighFrameRate];
        if (!*(a1 + 56))
        {
          [v6 addAnimation:v90 forKey:@"transform"];
          dispatch_group_enter(*(a1 + 48));
        }

        v11 = v260;
        v17 = 0x1E6979000;
      }

      else
      {
        v106 = *MEMORY[0x1E69797E0];
        v11 = v260;
        v87 = rect_24;
        v107 = v233;
      }

      v108 = [*(v17 + 792) animationWithKeyPath:@"bounds.size"];
      [v108 setDuration:v107 * *(a1 + 64)];
      [v108 setBeginTime:v87];
      [v108 setRemovedOnCompletion:0];
      LODWORD(v109) = 2.0;
      [v108 setSpeed:v109];
      v110 = [MEMORY[0x1E696B098] valueWithCGSize:{rect, v245}];
      [v108 setFromValue:v110];

      v111 = [MEMORY[0x1E696B098] valueWithCGSize:{v11, v261}];
      [v108 setToValue:v111];

      [v108 setFillMode:v106];
      v112 = [MEMORY[0x1E69793D0] functionWithControlPoints:? :? :? :?];
      [v108 setTimingFunction:v112];

      [v108 setDelegate:*(a1 + 40)];
      [v108 ck_requestHighFrameRate];
      v113 = [v6 layer];
      [v113 addAnimation:v108 forKey:@"bounds.width"];

      dispatch_group_enter(*(a1 + 48));
      if (*(a1 + 56) == 1)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 textView], v114 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v114, "text"), v115 = objc_claimAutoreleasedReturnValue(), v116 = objc_msgSend(v115, "_isNaturallyRTL"), v115, v114, (v116 & 1) == 0))
        {
          v117 = [MEMORY[0x1E69794A8] ck_glassScaleDownAnimationWithBeginTime:*(a1 + 40) entryViewSize:v87 delegate:{*(a1 + 72), *(a1 + 80)}];
          v118 = [MEMORY[0x1E69794A8] ck_glassScaleUpAnimationWithBeginTime:*(a1 + 40) entryViewSize:v87 delegate:{*(a1 + 72), *(a1 + 80)}];
          v119 = [v6 layer];
          [v119 addAnimation:v117 forKey:@"scaleDown"];

          dispatch_group_enter(*(a1 + 48));
          v120 = [v6 layer];
          [v120 addAnimation:v118 forKey:@"scaleUp"];

          dispatch_group_enter(*(a1 + 48));
        }
      }

      v121 = [*(v17 + 792) animationWithKeyPath:@"opacity"];
      [v121 setBeginTime:v87];
      [v121 setDuration:*(a1 + 64) * 0.3];
      [v121 setFromValue:&unk_1F04E8C58];
      [v121 setToValue:&unk_1F04E8C38];
      v236 = *MEMORY[0x1E69797E8];
      [v121 setFillMode:?];
      [v121 setRemovedOnCompletion:0];
      LODWORD(v122) = 0.5;
      LODWORD(v123) = 0.5;
      LODWORD(v124) = 1.0;
      v125 = [MEMORY[0x1E69793D0] functionWithControlPoints:v122 :0.0 :v123 :v124];
      [v121 setTimingFunction:v125];

      [v121 setDelegate:*(a1 + 40)];
      [v121 ck_requestHighFrameRate];
      v126 = v107 * *(a1 + 64);
      v278 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
      minimum = v278.minimum;
      maximum = v278.maximum;
      preferred = v278.preferred;
      LODWORD(v130) = 1.0;
      v278.minimum = 0.54195;
      v278.preferred = 0.58;
      v131 = [MEMORY[0x1E69793D0] functionWithControlPoints:*&v278.minimum :0.0 :*&v278.preferred :v130];
      v132 = [_TtC7ChatKit33CKThrowSendAnimationConfiguration alloc];
      *&v224 = preferred;
      LODWORD(v133) = 2.0;
      v134 = rect;
      recta = v131;
      v135 = [(CKThrowSendAnimationConfiguration *)v132 initWithDuration:*(a1 + 40) beginTime:v131 speed:v106 animationDelegate:*(a1 + 48) timingFunction:1310722 fillMode:v126 animationGroup:v87 initialSize:v133 finalSize:v134 preferredFrameRateRange:v245 highFrameRateReason:v11, v261, __PAIR64__(LODWORD(maximum), LODWORD(minimum)), v224];
      if (*(a1 + 56) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v136 = v6;
          if ([v136 hasBalloonShape])
          {
            [*(a1 + 40) addAnimationsForColoredBalloonView:v136 sendAnimationType:*(a1 + 56) sendAnimationConfiguration:v135];
          }
        }
      }

      v246 = v135;
      v137 = rect_16;
      if (rect_16 || (v137 = v240) != 0)
      {
        [v137 addAnimation:v121 forKey:@"opacity"];
        dispatch_group_enter(*(a1 + 48));
        [v137 addAnimation:v108 forKey:@"bounds.size"];
        dispatch_group_enter(*(a1 + 48));
      }

      v138 = [*(a1 + 40) balloonViewFadeAnimationForConvertedCurrentMediaTime:0 direction:*(a1 + 56) sendAnimationType:v87];
      [v6 addAnimation:v138 forKey:@"opacity"];
      dispatch_group_enter(*(a1 + 48));
      v139 = [*(v17 + 792) animationWithKeyPath:@"transform"];
      [v139 setBeginTime:v87];
      [v139 setDuration:*(a1 + 64) * 0.25];
      v140 = MEMORY[0x1E696B098];
      CATransform3DMakeScale(&v272, 1.0, 1.0, 1.0);
      v141 = [v140 valueWithBytes:&v272 objCType:"{CATransform3D=dddddddddddddddd}"];
      [v139 setFromValue:v141];

      v142 = MEMORY[0x1E696B098];
      CATransform3DMakeScale(&v271, 0.0, 0.0, 1.0);
      v143 = [v142 valueWithBytes:&v271 objCType:"{CATransform3D=dddddddddddddddd}"];
      [v139 setToValue:v143];

      v144 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v139 setTimingFunction:v144];

      [v139 setRemovedOnCompletion:0];
      [v139 setFillMode:v236];
      [v139 setDelegate:*(a1 + 40)];
      v145 = v241;
      if (v241)
      {
        [v241 addAnimation:v139 forKey:@"transform"];
        dispatch_group_enter(*(a1 + 48));
      }

      objc_opt_class();
      v5 = rect_8;
      if (objc_opt_isKindOfClass())
      {
        v232 = v138;
        v146 = [rect_8 throwBalloonView];
        v147 = [v146 textView];
        v148 = [v147 text];
        v149 = [v148 _isNaturallyRTL];

        if (v149)
        {
          v230 = [v239 whiteTextFadeViewRTL];
          v150 = [v239 blueTextFadeViewRTL];
          v151 = [v146 textView];
          v152 = [v146 textView];
          [v152 bounds];
          [v151 convertRect:v22 toView:?];
          v154 = v153;
          v156 = v155;
          v158 = v157;
          v160 = v159;

          v161 = v150;
          v291.origin.x = v154;
          v291.origin.y = v156;
          v291.size.width = v158;
          v291.size.height = v160;
          v162 = CGRectGetMaxX(v291);
          [v150 frame];
          v163 = v162 - CGRectGetMaxX(v292);
          v164 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position.x"];
          [v164 setDuration:v107 * *(a1 + 64)];
          LODWORD(v165) = 2.0;
          [v164 setSpeed:v165];
          [v164 setBeginTime:v87];
          [v164 setRemovedOnCompletion:0];
          v166 = [MEMORY[0x1E696AD98] numberWithDouble:v163];
          [v164 setByValue:v166];

          [v164 setFillMode:v236];
          LODWORD(v167) = 1.0;
          LODWORD(v168) = 1057668432;
          LODWORD(v169) = 1058306785;
          v170 = [MEMORY[0x1E69793D0] functionWithControlPoints:v168 :0.0 :v169 :v167];
          [v164 setTimingFunction:v170];

          [v164 setDelegate:*(a1 + 40)];
          [v164 ck_requestHighFrameRate];
          if (v161)
          {
            [v161 addAnimation:v164 forKey:@"position.x"];
            dispatch_group_enter(*(a1 + 48));
          }

          if (v230)
          {
            [v230 addAnimation:v164 forKey:@"position.x"];
            dispatch_group_enter(*(a1 + 48));
            [v230 addAnimation:v121 forKey:@"opacity"];
            dispatch_group_enter(*(a1 + 48));
          }
        }

        v5 = rect_8;
        v145 = v241;
        v138 = v232;
      }

      isKindOfClass = v234;
    }

    if (!(isKindOfClass & 1 | (([v6 isAudioMessage] & 1) == 0)))
    {
      v171 = MEMORY[0x1E69DD250];
      v265[0] = MEMORY[0x1E69E9820];
      v265[1] = 3221225472;
      v265[2] = __150__CKChatControllerDummyAnimator___beginThrowAnimationWithThrowBalloonViewAttributesCollection_framesOfAddedChatItems_sendAnimationType_entryViewSize___block_invoke_279;
      v265[3] = &unk_1E72EC7B0;
      v266 = v6;
      v267 = v259;
      v268 = v258;
      v269 = v11;
      v270 = v261;
      [v171 _animateUsingSpringWithDuration:0 delay:v265 options:0 mass:0.3 stiffness:0.0 damping:3.0 initialVelocity:500.0 animations:400.0 completion:1.0];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v172 = +[CKUIBehavior sharedBehaviors];
    [v172 sendAnimationDuration];
    v242 = v173;

    [v6 frame];
    v175 = v174;
    v177 = v176;
    v179 = v178;
    v181 = v180;
    v182 = [v6 layer];
    [v182 setAnchorPoint:{1.0, 0.5}];

    [v6 setFrame:{v175, v177, v179, v181}];
    [v6 frame];
    y = v293.origin.y;
    v184 = v293.size.width;
    v185 = v293.size.height;
    x = v293.origin.x;
    v187 = CGRectGetMinX(v293);
    v188 = [v6 layer];
    [v188 anchorPoint];
    v190 = v189;
    v294.origin.x = x;
    v294.origin.y = y;
    v294.size.width = v184;
    v294.size.height = v185;
    rect_16a = v187 + v190 * CGRectGetWidth(v294);
    v295.origin.x = x;
    v295.origin.y = y;
    v295.size.width = v184;
    v295.size.height = v185;
    v191 = CGRectGetMinY(v295);
    v192 = [v6 layer];
    [v192 anchorPoint];
    v194 = v193;
    v296.origin.x = x;
    v296.origin.y = y;
    v296.size.width = v184;
    v296.size.height = v185;
    rect_8b = v191 + v194 * CGRectGetHeight(v296);

    v297.origin.x = v259;
    v297.origin.y = v258;
    v297.size.width = v11;
    v297.size.height = v261;
    v195 = CGRectGetMaxX(v297);
    v196 = [v6 layer];
    [v196 anchorPoint];
    v198 = 1.0 - v197;
    v298.origin.x = x;
    v298.origin.y = y;
    v247 = v184;
    v298.size.width = v184;
    v298.size.height = v185;
    v199 = v195 - v198 * CGRectGetWidth(v298);
    v299.origin.x = v259;
    v299.origin.y = v258;
    v299.size.width = v260;
    v299.size.height = v261;
    v200 = CGRectGetMinY(v299);
    v201 = [v6 layer];
    [v201 anchorPoint];
    v203 = v202;
    v300.origin.x = v259;
    v300.origin.y = v258;
    v300.size.width = v260;
    v300.size.height = v261;
    v204 = v200 + v203 * CGRectGetHeight(v300);

    v205 = [MEMORY[0x1E6979318] ck_positionYAnimationForSendAnimationType:*(a1 + 56) beginTime:*(a1 + 40) initialPositionY:rect_24 finalPositionY:rect_8b durationScaleFactor:v204 delegate:*(a1 + 64)];
    v206 = [MEMORY[0x1E6979318] ck_positionXAnimationForSendAnimationType:*(a1 + 56) beginTime:*(a1 + 40) initialPositionX:rect_24 finalPositionX:rect_16a durationScaleFactor:v199 delegate:*(a1 + 64)];
    [v6 addAnimation:v206 forKey:@"position.x"];
    dispatch_group_enter(*(a1 + 48));
    [v6 addAnimation:v205 forKey:@"position.y"];
    dispatch_group_enter(*(a1 + 48));
    v207 = *(a1 + 56);
    if (v207)
    {
      if (v207 != 1)
      {
LABEL_47:

LABEL_48:
        goto LABEL_49;
      }

      v208 = [MEMORY[0x1E69794A8] ck_glassScaleDownAnimationWithBeginTime:*(a1 + 40) entryViewSize:rect_24 delegate:{*(a1 + 72), *(a1 + 80)}];
      v209 = [MEMORY[0x1E69794A8] ck_glassScaleUpAnimationWithBeginTime:*(a1 + 40) entryViewSize:rect_24 initialSize:*(a1 + 72) finalSize:*(a1 + 80) delegate:{v247, v185, v260, v261}];
      [v6 addAnimation:v208 forKey:@"scaleDown"];
      dispatch_group_enter(*(a1 + 48));
      [v6 addAnimation:v209 forKey:@"scaleUp"];
      dispatch_group_enter(*(a1 + 48));
    }

    else
    {
      rect_8a = v5;
      v208 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
      [v208 setBeginTime:rect_24];
      memset(&v273, 0, sizeof(v273));
      CATransform3DMakeScale(&v273, 1.0, 1.0, 1.0);
      memset(&v264, 0, sizeof(v264));
      CATransform3DMakeScale(&v264, v260 / v247 * 0.88, v261 / v185 * 0.88, 1.0);
      memset(&v263, 0, sizeof(v263));
      v210 = [v6 layer];
      v211 = v210;
      if (v210)
      {
        [v210 transform];
      }

      else
      {
        memset(&v262, 0, sizeof(v262));
      }

      CATransform3DScale(&v263, &v262, v260 / v247, v261 / v185, 1.0);

      v262 = v273;
      v212 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v262];
      v275[0] = v212;
      v262 = v264;
      v213 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v262];
      v275[1] = v213;
      v262 = v263;
      v214 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v262];
      v275[2] = v214;
      v215 = [MEMORY[0x1E695DEC8] arrayWithObjects:v275 count:3];
      [v208 setValues:v215];

      LODWORD(v216) = 1059648963;
      LODWORD(v217) = 1.0;
      LODWORD(v218) = 1.0;
      v219 = [MEMORY[0x1E69793D0] functionWithControlPoints:v216 :0.0 :v217 :v218];
      v274[0] = v219;
      LODWORD(v220) = 1059022886;
      LODWORD(v221) = 1064176765;
      v222 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v220 :v221];
      v274[1] = v222;
      v223 = [MEMORY[0x1E695DEC8] arrayWithObjects:v274 count:2];
      [v208 setTimingFunctions:v223];

      [v208 setKeyTimes:&unk_1F04E7128];
      [v208 setRemovedOnCompletion:0];
      [v208 setFillMode:*MEMORY[0x1E69797E0]];
      [v208 setDuration:v242 * *(a1 + 64)];
      [v208 setDelegate:*(a1 + 40)];
      [v208 ck_requestHighFrameRate];
      [v6 addAnimation:v208 forKey:@"transform"];
      dispatch_group_enter(*(a1 + 48));
      v5 = rect_8a;
    }

    goto LABEL_47;
  }

LABEL_49:
}

uint64_t __150__CKChatControllerDummyAnimator___beginThrowAnimationWithThrowBalloonViewAttributesCollection_framesOfAddedChatItems_sendAnimationType_entryViewSize___block_invoke_279(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_beginThrowAnimationWithContext:(id)context
{
  contextCopy = context;
  sendAnimationType = [contextCopy sendAnimationType];
  [contextCopy entryViewSize];
  v7 = v6;
  v9 = v8;
  throwBalloonViewAttributesCollection = [contextCopy throwBalloonViewAttributesCollection];
  framesOfAddedChatItems = [contextCopy framesOfAddedChatItems];

  [(CKChatControllerDummyAnimator *)self __beginThrowAnimationWithThrowBalloonViewAttributesCollection:throwBalloonViewAttributesCollection framesOfAddedChatItems:framesOfAddedChatItems sendAnimationType:sendAnimationType entryViewSize:v7, v9];
}

- (void)_configureQuickReplySendAnimationGroup:(id)group withSendAnimationContext:(id)context
{
  groupCopy = group;
  contextCopy = context;
  [(CKChatControllerDummyAnimator *)self setThrowAnimationGroup:groupCopy];
  framesOfAddedChatItems = [contextCopy framesOfAddedChatItems];
  throwBalloonViewAttributesCollection = [contextCopy throwBalloonViewAttributesCollection];
  -[CKChatControllerDummyAnimator _throwAnimationDurationScaleFactorForThrownBalloonAttributes:finalBalloonFrames:sendAnimationType:](self, "_throwAnimationDurationScaleFactorForThrownBalloonAttributes:finalBalloonFrames:sendAnimationType:", throwBalloonViewAttributesCollection, framesOfAddedChatItems, [contextCopy sendAnimationType]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __97__CKChatControllerDummyAnimator__configureQuickReplySendAnimationGroup_withSendAnimationContext___block_invoke;
  v14[3] = &unk_1E72F7158;
  v18 = v10;
  v14[4] = self;
  v15 = groupCopy;
  v16 = framesOfAddedChatItems;
  v17 = contextCopy;
  v11 = contextCopy;
  v12 = framesOfAddedChatItems;
  v13 = groupCopy;
  [throwBalloonViewAttributesCollection enumerateObjectsUsingBlock:v14];
}

void __97__CKChatControllerDummyAnimator__configureQuickReplySendAnimationGroup_withSendAnimationContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v131 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [v5 throwBalloonView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v124 = [v5 supplementaryViews];
      v7 = [v124 textViewContainerView];
      v122 = [v124 quickReplySnapshot];
      v123 = [v124 whiteTextFadeViewRTL];
      v121 = [v124 audioMessagePillViewSnapshot];
      if (v7 && v122 && v123)
      {
        v8 = [v122 superview];
        [v8 insertSubview:v7 aboveSubview:v122];

        [v7 setHidden:0];
        v9 = [v7 layer];
        [v9 setAnchorPoint:{0.0, 0.0}];

        v10 = +[CKUIBehavior sharedBehaviors];
        [v10 sendAnimationDuration];
        v115 = v11;

        v12 = [v6 layer];
        [v12 convertTime:0 fromLayer:CACurrentMediaTime()];
        v14 = v13;

        [v6 frame];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v23 = [v6 layer];
        [v23 setAnchorPoint:{1.0, 0.5}];

        [v6 setFrame:{v16, v18, v20, v22}];
        [v123 frame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v32 = [v6 layer];
        [v32 anchorPoint];
        v34 = v33;
        v36 = v35;
        v37 = [v123 layer];
        [v37 setAnchorPoint:{v34, v36}];

        [v123 setFrame:{v25, v27, v29, v31}];
        [v121 frame];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v46 = [v6 layer];
        [v46 anchorPoint];
        v48 = v47;
        v50 = v49;
        v51 = [v121 layer];
        [v51 setAnchorPoint:{v48, v50}];

        [v121 setFrame:{v39, v41, v43, v45}];
        v52 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        [v52 ck_requestHighFrameRate];
        [v52 setBeginTime:v14];
        [v52 setDuration:*(a1 + 64) * 0.3];
        [v52 setFromValue:&unk_1F04E8C58];
        [v52 setToValue:&unk_1F04E8C38];
        v53 = *MEMORY[0x1E69797E8];
        [v52 setFillMode:*MEMORY[0x1E69797E8]];
        [v52 setRemovedOnCompletion:0];
        LODWORD(v54) = 0.5;
        LODWORD(v55) = 0.5;
        LODWORD(v56) = 1.0;
        v57 = [MEMORY[0x1E69793D0] functionWithControlPoints:v54 :0.0 :v55 :v56];
        [v52 setTimingFunction:v57];

        [v52 setDelegate:*(a1 + 32)];
        [v123 addAnimation:v52 forKey:@"opacity"];
        dispatch_group_enter(*(a1 + 40));
        if (v121)
        {
          [v121 addAnimation:v52 forKey:@"opacity"];
          dispatch_group_enter(*(a1 + 40));
        }

        v119 = (a1 + 32);
        v120 = [*(a1 + 32) balloonViewFadeInAnimationForConvertedCurrentMediaTime:v14];
        [v6 addAnimation:v120 forKey:@"opacity"];
        v118 = (a1 + 40);
        dispatch_group_enter(*(a1 + 40));
        v58 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        [v58 ck_requestHighFrameRate];
        [v120 beginTime];
        v60 = v59;
        [v120 duration];
        [v58 setBeginTime:v60 + v61];
        [v58 setDuration:*(a1 + 64) * 0.5];
        [v58 setFromValue:&unk_1F04E8C58];
        [v58 setToValue:&unk_1F04E8C38];
        [v58 setFillMode:v53];
        [v58 setRemovedOnCompletion:0];
        LODWORD(v62) = 0.5;
        LODWORD(v63) = 0.5;
        LODWORD(v64) = 1.0;
        v65 = [MEMORY[0x1E69793D0] functionWithControlPoints:v62 :0.0 :v63 :v64];
        [v58 setTimingFunction:v65];

        [v58 setDelegate:*(a1 + 32)];
        [v122 addAnimation:v58 forKey:@"opacity"];
        dispatch_group_enter(*(a1 + 40));
        [v7 frame];
        v67 = v66;
        v69 = v68;
        v71 = v70;
        v73 = v72;
        v74 = [*(a1 + 48) objectAtIndex:a3];
        [v74 CGRectValue];
        v116 = v76;
        v117 = v75;
        v78 = v77;
        v80 = v79;

        [*(a1 + 56) quickReplySourceRect];
        v114 = v81;
        v82 = +[CKUIBehavior sharedBehaviors];
        [v82 balloonMaskTailWidth];
        v84 = v83;

        v132.origin.y = v116;
        v132.origin.x = v117;
        v132.size.width = v78;
        v132.size.height = v80;
        MaxX = CGRectGetMaxX(v132);
        v85 = [v7 layer];
        [v85 anchorPoint];
        v87 = v86;
        v133.origin.x = v67;
        v133.origin.y = v69;
        v133.size.width = v71;
        v133.size.height = v73;
        Width = CGRectGetWidth(v133);

        v89 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.x"];
        [v58 beginTime];
        [v89 setBeginTime:?];
        [v89 ck_requestHighFrameRate];
        [v89 setDuration:v115];
        [v89 setDamping:45.0];
        [v89 setStiffness:500.0];
        [v89 setInitialVelocity:0.0];
        [v89 setMass:1.0];
        v90 = *MEMORY[0x1E69797E0];
        [v89 setFillMode:*MEMORY[0x1E69797E0]];
        v91 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
        [v89 setTimingFunction:v91];

        v92 = [MEMORY[0x1E696AD98] numberWithDouble:v114 + v84];
        [v89 setFromValue:v92];

        v93 = [MEMORY[0x1E696AD98] numberWithDouble:MaxX - (1.0 - v87) * Width];
        [v89 setToValue:v93];

        [v89 setDelegate:*(a1 + 32)];
        [v89 setRemovedOnCompletion:0];
        [v7 addAnimation:v89 forKey:@"position.x"];
        dispatch_group_enter(*(a1 + 40));
        [*(a1 + 56) quickReplySourceRect];
        v95 = v94;
        v134.origin.y = v116;
        v134.origin.x = v117;
        v134.size.width = v78;
        v134.size.height = v80;
        MinY = CGRectGetMinY(v134);
        v97 = [v7 layer];
        [v97 anchorPoint];
        v99 = v98;
        v135.origin.y = v116;
        v135.origin.x = v117;
        v135.size.width = v78;
        v135.size.height = v80;
        Height = CGRectGetHeight(v135);

        v101 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position.y"];
        v102 = MinY + v99 * Height;
        [v101 ck_requestHighFrameRate];
        [v89 beginTime];
        v104 = v103;
        [v89 duration];
        v106 = v104 + v105 + 0.2;
        v107 = v104 + v105 * 0.25;
        if (vabdd_f64(v102, v95) >= 2.0)
        {
          v107 = v106;
        }

        [v101 setBeginTime:v107];
        [v101 setFillMode:v90];
        v108 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
        [v101 setTimingFunction:v108];

        v109 = [MEMORY[0x1E696AD98] numberWithDouble:v95];
        [v101 setFromValue:v109];

        v110 = [MEMORY[0x1E696AD98] numberWithDouble:v102];
        [v101 setToValue:v110];

        [v101 setDuration:v115];
        [v101 setDelegate:*v119];
        [v101 setRemovedOnCompletion:0];
        [v7 addAnimation:v101 forKey:@"position.y"];
        dispatch_group_enter(*v118);
      }

      else if (IMOSLoggingEnabled())
      {
        v112 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v126 = v7;
          v127 = 2112;
          v128 = v122;
          v129 = 2112;
          v130 = v123;
          _os_log_impl(&dword_19020E000, v112, OS_LOG_TYPE_INFO, "CKChatControllerDummyAnimator: Unexpectedly nil view - containerThrowBalloonView: %@ quickReplySnapshot: %@ whiteFadeSupplementaryView: %@", buf, 0x20u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v111 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v111, OS_LOG_TYPE_INFO, "CKChatControllerDummyAnimator: Unsupported balloon type", buf, 2u);
      }
    }
  }
}

- (id)balloonViewFadeAnimationForConvertedCurrentMediaTime:(double)time direction:(unint64_t)direction sendAnimationType:(unint64_t)type
{
  v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v9 ck_requestHighFrameRate];
  [v9 setBeginTime:time];
  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 sendAnimationDuration];
  [v9 setDuration:v11 / 3.0];

  v12 = 1.0;
  if (type == 1)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  if (direction)
  {
    v13 = 0.0;
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  if (direction == 1)
  {
    v15 = 0.0;
  }

  else
  {
    v12 = v13;
    v15 = v14;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithDouble:{v12, 0.0, v13, v14}];
  [v9 setFromValue:v16];

  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
  [v9 setToValue:v17];

  [v9 setFillMode:*MEMORY[0x1E69797E8]];
  [v9 setRemovedOnCompletion:0];
  [v9 setDelegate:self];

  return v9;
}

- (void)_beginImpactAnimationWithContext:(id)context
{
  v174[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  animatableViews = [contextCopy animatableViews];
  animatableTextViews = [contextCopy animatableTextViews];
  throwBalloonViews = [contextCopy throwBalloonViews];
  isSender = [contextCopy isSender];
  shouldRepeat = [contextCopy shouldRepeat];

  v152 = throwBalloonViews;
  firstObject = [throwBalloonViews firstObject];
  layer = [firstObject layer];
  [layer setAllowsEdgeAntialiasing:1];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v9 = v8 * 5.0;
  layer2 = [firstObject layer];
  [layer2 setRasterizationScale:v9];

  [firstObject bounds];
  v12 = -2.0;
  if (isSender)
  {
    v12 = 2.0;
  }

  v13 = v11 / v12;
  v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"contentsMultiplyColor"];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v158 = v14;
  [v14 setFromValue:{objc_msgSend(blackColor, "CGColor")}];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v14 setToValue:{objc_msgSend(whiteColor, "CGColor")}];

  [v14 setDuration:0.25];
  v17 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.rotation"];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:0.191986218];
  v174[0] = v18;
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:-0.0523598776];
  v174[1] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v174[2] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:3];
  [v17 setValues:v21];

  [v17 setKeyTimes:&unk_1F04E7140];
  LODWORD(v22) = 1.0;
  LODWORD(v23) = 1.0;
  LODWORD(v24) = 1051372203;
  v25 = [MEMORY[0x1E69793D0] functionWithControlPoints:v24 :0.0 :v22 :v23];
  v173[0] = v25;
  LODWORD(v26) = 1.0;
  LODWORD(v27) = 1059760811;
  v28 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v27 :v26];
  v173[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:2];
  [v17 setTimingFunctions:v29];

  v157 = v17;
  [v17 setAdditive:1];
  [v17 setDuration:0.583333333];
  v156 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v30 = MEMORY[0x1E696B098];
  CATransform3DMakeTranslation(&v164, -v13, -0.0, 0.0);
  v31 = [v30 valueWithCATransform3D:&v164];
  [v156 setFromValue:v31];

  fromValue = [v156 fromValue];
  [v156 setToValue:fromValue];

  [v156 setAdditive:1];
  v33 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
  v34 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v164, 3.0, 3.0, 1.0);
  v35 = [v34 valueWithCATransform3D:&v164];
  v172[0] = v35;
  v36 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v164, 6.9434, 6.9434, 1.0);
  v37 = [v36 valueWithCATransform3D:&v164];
  v172[1] = v37;
  v38 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v164, 0.92, 0.92, 1.0);
  v39 = [v38 valueWithCATransform3D:&v164];
  v172[2] = v39;
  v40 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v164, 0.918, 0.918, 1.0);
  v41 = [v40 valueWithCATransform3D:&v164];
  v172[3] = v41;
  v42 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v164, 1.05, 1.05, 1.0);
  v43 = [v42 valueWithCATransform3D:&v164];
  v172[4] = v43;
  v44 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v164, 1.05308, 1.05308, 1.0);
  v45 = [v44 valueWithCATransform3D:&v164];
  v172[5] = v45;
  v46 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v164, 1.0, 1.0, 1.0);
  v47 = [v46 valueWithCATransform3D:&v164];
  v172[6] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:7];
  [v33 setValues:v48];

  [v33 setKeyTimes:&unk_1F04E7158];
  LODWORD(v49) = 1029517083;
  LODWORD(v50) = 1041529569;
  LODWORD(v51) = 1052099215;
  LODWORD(v52) = 1059447636;
  v53 = [MEMORY[0x1E69793D0] functionWithControlPoints:v49 :v50 :v51 :v52];
  v171[0] = v53;
  LODWORD(v54) = 1051092582;
  LODWORD(v55) = 1064329806;
  LODWORD(v56) = 1062383649;
  LODWORD(v57) = 0.625;
  v58 = [MEMORY[0x1E69793D0] functionWithControlPoints:v57 :v54 :v55 :v56];
  v171[1] = v58;
  LODWORD(v59) = 990057071;
  LODWORD(v60) = 1002740646;
  LODWORD(v61) = 1032268546;
  LODWORD(v62) = 1041932222;
  v63 = [MEMORY[0x1E69793D0] functionWithControlPoints:v59 :v60 :v61 :v62];
  v171[2] = v63;
  LODWORD(v64) = 1044012597;
  LODWORD(v65) = 1034281812;
  LODWORD(v66) = 1060101947;
  LODWORD(v67) = 1063440613;
  v68 = [MEMORY[0x1E69793D0] functionWithControlPoints:v64 :v65 :v66 :v67];
  v171[3] = v68;
  LODWORD(v69) = 998445679;
  LODWORD(v70) = 1008981770;
  LODWORD(v71) = 1038308344;
  LODWORD(v72) = 1044549468;
  v73 = [MEMORY[0x1E69793D0] functionWithControlPoints:v69 :v70 :v71 :v72];
  v171[4] = v73;
  LODWORD(v74) = 1055018451;
  LODWORD(v75) = 1039247868;
  LODWORD(v76) = *"?5^?";
  LODWORD(v77) = 1.0;
  v78 = [MEMORY[0x1E69793D0] functionWithControlPoints:v74 :v75 :v76 :v77];
  v171[5] = v78;
  v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:6];
  [v33 setTimingFunctions:v79];

  [v33 setAdditive:1];
  [v33 setDuration:0.666666667];
  v80 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v81 = MEMORY[0x1E696B098];
  CATransform3DMakeTranslation(&v164, v13, 0.0, 0.0);
  v82 = [v81 valueWithCATransform3D:&v164];
  [v80 setFromValue:v82];

  fromValue2 = [v80 fromValue];
  [v80 setToValue:fromValue2];

  [v80 setAdditive:1];
  v84 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
  v85 = MEMORY[0x1E696B098];
  CATransform3DMakeTranslation(&v164, 0.0, 10.0, 0.0);
  v86 = [v85 valueWithCATransform3D:&v164];
  v87 = *(MEMORY[0x1E69792E8] + 64);
  v88 = *(MEMORY[0x1E69792E8] + 96);
  v89 = *(MEMORY[0x1E69792E8] + 112);
  *&v164.m33 = *(MEMORY[0x1E69792E8] + 80);
  *&v164.m41 = v88;
  *&v164.m43 = v89;
  v90 = *(MEMORY[0x1E69792E8] + 16);
  *&v164.m11 = *MEMORY[0x1E69792E8];
  *&v164.m13 = v90;
  v91 = *(MEMORY[0x1E69792E8] + 48);
  *&v164.m21 = *(MEMORY[0x1E69792E8] + 32);
  v170[0] = v86;
  *&v164.m23 = v91;
  *&v164.m31 = v87;
  v92 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v164];
  v170[1] = v92;
  v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v170 count:2];
  [v84 setValues:v93];

  LODWORD(v94) = 1.0;
  LODWORD(v95) = 1051372203;
  LODWORD(v96) = 1059760811;
  v97 = [MEMORY[0x1E69793D0] functionWithControlPoints:v95 :0.0 :v96 :v94];
  v169 = v97;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v169 count:1];
  [v84 setTimingFunctions:v98];

  [v84 setAdditive:1];
  [v84 setCalculationMode:*MEMORY[0x1E6979590]];
  [v84 setDuration:0.333333333];
  v99 = CACurrentMediaTime();
  animation = [MEMORY[0x1E6979308] animation];
  [animation setBeginTime:v99];
  [animation setDuration:1.5];
  v168[0] = v156;
  v168[1] = v157;
  v149 = v80;
  v150 = v33;
  v168[2] = v33;
  v168[3] = v80;
  v168[4] = v84;
  v168[5] = v158;
  v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:6];
  [animation setAnimations:v101];

  if (shouldRepeat)
  {
    *&v102 = INFINITY;
  }

  else
  {
    *&v102 = 0.0;
  }

  [animation setRepeatCount:v102];
  layer3 = [firstObject layer];
  [layer3 addAnimation:animation forKey:@"group"];

  emitterCell = [MEMORY[0x1E6979360] emitterCell];
  [emitterCell setContentsScale:0.08];
  LODWORD(v105) = *"";
  [emitterCell setBirthRate:v105];
  LODWORD(v106) = 0.5;
  [emitterCell setLifetime:v106];
  [emitterCell setParticleType:*MEMORY[0x1E6979778]];
  [emitterCell setScale:1.1];
  [emitterCell setVelocity:220.0];
  [emitterCell setVelocityRange:180.0];
  [emitterCell setName:@"dustCell"];
  v107 = [MEMORY[0x1E69DC888] colorWithWhite:0.3 alpha:0.0156862745];
  [emitterCell setColor:{objc_msgSend(v107, "CGColor")}];

  v108 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"impact-effect-dust"];
  [emitterCell setContents:{objc_msgSend(v108, "CGImage")}];

  [emitterCell setEmissionRange:1.57079633];
  v109 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979750]];
  v110 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  v167[0] = [v110 CGColor];
  v111 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  v167[1] = [v111 CGColor];
  v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:2];
  [v109 setValue:v112 forKey:@"colors"];

  [v109 setValue:&unk_1F04E7170 forKey:@"locations"];
  v113 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979760]];
  [v113 setValue:@"scale" forKey:@"keyPath"];
  [v113 setValue:&unk_1F04E7188 forKey:@"values"];
  [v113 setValue:&unk_1F04E71A0 forKey:@"locations"];
  layer4 = [MEMORY[0x1E6979368] layer];
  [layer4 setEmitterShape:*MEMORY[0x1E69797B0]];
  layer5 = [firstObject layer];
  [layer5 bounds];
  v117 = v116 + -20.0;

  layer6 = [firstObject layer];
  [layer6 bounds];
  v120 = v119 + -20.0;

  [layer4 setEmitterSize:{fmax(v117, 1.0), fmax(v120, 1.0)}];
  [layer4 setEmitterMode:*MEMORY[0x1E6979798]];
  LODWORD(v121) = 4.0;
  [layer4 setScale:v121];
  v166 = emitterCell;
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v166 count:1];
  [layer4 setEmitterCells:v122];

  layer7 = [firstObject layer];
  [layer7 position];
  [layer4 setPosition:?];

  v165[0] = v109;
  v165[1] = v113;
  v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:2];
  [layer4 setEmitterBehaviors:v124];

  [animation duration];
  [layer4 setDuration:?];
  LODWORD(v125) = 2139095040;
  [layer4 setRepeatCount:v125];
  [animation duration];
  [layer4 setBeginTime:v99 + v126 * 0.21];
  v127 = [MEMORY[0x1E6979390] animationWithKeyPath:@"birthRate"];
  [v127 setValues:&unk_1F04E71B8];
  [v127 setKeyTimes:&unk_1F04E71D0];
  [animation duration];
  [v127 setDuration:?];
  [v127 setFillMode:*MEMORY[0x1E69797E0]];
  [animation duration];
  [v127 setBeginTime:v128 * -0.21];
  [v127 setBeginTimeMode:*MEMORY[0x1E6979588]];
  [v127 setRemovedOnCompletion:0];
  [layer4 addAnimation:v127 forKey:0];
  superview = [firstObject superview];
  layer8 = [superview layer];
  layer9 = [firstObject layer];
  [layer8 insertSublayer:layer4 below:layer9];

  if ((shouldRepeat & 1) == 0)
  {
    [animation duration];
    v133 = v132;
    [emitterCell lifetime];
    v135 = dispatch_time(0, ((v134 + v133 * 0.25) * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__CKChatControllerDummyAnimator__beginImpactAnimationWithContext___block_invoke_374;
    block[3] = &unk_1E72EBA18;
    v163 = layer4;
    dispatch_after(v135, MEMORY[0x1E69E96A0], block);
  }

  [(CKChatControllerDummyAnimator *)self setDustEmitter:layer4];

  firstObject2 = [animatableTextViews firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    subviews = [firstObject2 subviews];
    v138 = [subviews count];

    if (v138)
    {
      subviews2 = [firstObject2 subviews];
      firstObject3 = [subviews2 firstObject];

      mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen2 scale];
      [firstObject3 setContentScaleFactor:v142 * 5.0];

      v143 = *MEMORY[0x1E6979D68];
      layer10 = [firstObject3 layer];
      [layer10 setMinificationFilter:v143];

      v145 = [MEMORY[0x1E6979318] animationWithKeyPath:@"contentsMultiplyColor"];
      blackColor2 = [MEMORY[0x1E69DC888] blackColor];
      [v145 setFromValue:{objc_msgSend(blackColor2, "CGColor")}];

      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      [v145 setToValue:{objc_msgSend(whiteColor2, "CGColor")}];

      [v145 setDuration:0.25];
      layer11 = [firstObject3 layer];
      [layer11 addAnimation:v145 forKey:@"darken"];
    }
  }

  v160[0] = MEMORY[0x1E69E9820];
  v160[1] = 3221225472;
  v160[2] = __66__CKChatControllerDummyAnimator__beginImpactAnimationWithContext___block_invoke_2;
  v160[3] = &__block_descriptor_41_e23_v32__0__UIView_8Q16_B24l;
  *&v160[4] = v99;
  v161 = shouldRepeat;
  [animatableViews enumerateObjectsUsingBlock:v160];
}

void __66__CKChatControllerDummyAnimator__beginImpactAnimationWithContext___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v69[4] = *MEMORY[0x1E69E9840];
  v58 = a2;
  v5 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
  v6 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v63, 1.0, 1.0, 1.0);
  v7 = [v6 valueWithCATransform3D:&v63];
  v69[0] = v7;
  v8 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v63, 0.9, 0.9, 1.0);
  v9 = [v8 valueWithCATransform3D:&v63];
  v69[1] = v9;
  v10 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v63, 1.1, 1.1, 1.0);
  v11 = [v10 valueWithCATransform3D:&v63];
  v69[2] = v11;
  v12 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v63, 1.0, 1.0, 1.0);
  v13 = [v12 valueWithCATransform3D:&v63];
  v69[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:4];
  [v5 setValues:v14];

  [v5 setKeyTimes:&unk_1F04E71E8];
  LODWORD(v15) = 1.0;
  LODWORD(v16) = 1.0;
  v17 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v15 :v16];
  v68[0] = v17;
  LODWORD(v18) = 1.0;
  LODWORD(v19) = 1059760811;
  v20 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v19 :v18];
  v68[1] = v20;
  LODWORD(v21) = 1.0;
  LODWORD(v22) = 1.0;
  LODWORD(v23) = 1051372203;
  v24 = [MEMORY[0x1E69793D0] functionWithControlPoints:v23 :0.0 :v21 :v22];
  v68[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
  [v5 setTimingFunctions:v25];

  [v5 setAdditive:1];
  [v5 setDuration:(2 * a3 + 20) / 60.0];
  [v5 setBeginTime:((2 * a3) + 20.6) / 60.0];
  v26 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.translation.y"];
  [v26 setValues:&unk_1F04E7200];
  v67[0] = &unk_1F04E8C38;
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:a3 * -0.01 + 0.26];
  v67[1] = v27;
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:a3 * -0.02 + 0.5];
  v67[2] = v28;
  v67[3] = &unk_1F04E8C58;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];
  [v26 setKeyTimes:v29];

  LODWORD(v30) = 1.0;
  LODWORD(v31) = 1059760811;
  v32 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v31 :v30];
  v66[0] = v32;
  LODWORD(v33) = 1.0;
  LODWORD(v34) = 1.0;
  LODWORD(v35) = 1051372203;
  v36 = [MEMORY[0x1E69793D0] functionWithControlPoints:v35 :0.0 :v33 :v34];
  v66[1] = v36;
  LODWORD(v37) = 1.0;
  LODWORD(v38) = 1059760811;
  v39 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v38 :v37];
  v66[2] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
  [v26 setTimingFunctions:v40];

  [v26 setAdditive:1];
  [v26 setDuration:(6 * a3 + 30) / 60.0];
  [v26 setBeginTime:(a3 * 0.8 + 8.0) / 60.0];
  v41 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.translation.x"];
  [v41 setValues:&unk_1F04E7218];
  [v41 setKeyTimes:&unk_1F04E7230];
  [v41 setAdditive:1];
  [v41 setDuration:0.133333333];
  [v41 setBeginTime:0.333333333];
  v42 = [MEMORY[0x1E6979308] animation];
  [v42 setBeginTime:*(a1 + 32)];
  v65[0] = v5;
  v65[1] = v26;
  v65[2] = v41;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
  [v42 setAnimations:v43];

  LODWORD(v44) = 2139095040;
  if (!*(a1 + 40))
  {
    *&v44 = 0.0;
  }

  [v42 setRepeatCount:v44];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v45 = [v42 animations];
  v46 = [v45 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v60;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v60 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v59 + 1) + 8 * i);
        [v42 duration];
        v52 = v51;
        [v50 beginTime];
        v54 = v53;
        [v50 duration];
        v56 = v54 + v55;
        if (v52 >= v56)
        {
          v56 = v52;
        }

        [v42 setDuration:v56];
      }

      v47 = [v45 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v47);
  }

  v57 = [v58 layer];
  [v57 addAnimation:v42 forKey:@"jump"];
}

- (void)_beginPopAnimationWithContext:(id)context
{
  contextCopy = context;
  throwBalloonViews = [contextCopy throwBalloonViews];
  firstObject = [throwBalloonViews firstObject];
  v7 = [CKPopRendererView alloc];
  v8 = [(CKPopRendererView *)v7 initWithFrame:0 device:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if ([(CKPopRendererView *)v8 _shouldReverseLayoutDirection])
  {
    CGAffineTransformMakeScale(&v29, -1.0, 1.0);
    v28 = v29;
    [(CKPopRendererView *)v8 setTransform:&v28];
  }

  superview = [firstObject superview];
  [firstObject frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  containerView = [contextCopy containerView];
  [superview convertRect:containerView toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [(CKPopRendererView *)v8 frameForSourceFrame:v20, v22, v24, v26];
  [(CKPopRendererView *)v8 setFrame:?];
  [(CKPopRendererView *)v8 setDelegate:self];
  containerView2 = [contextCopy containerView];

  [containerView2 addSubview:v8];
  if (![(CKPopRendererView *)v8 playWithSourceView:firstObject])
  {
    [(CKPopRendererView *)v8 removeFromSuperview];
  }
}

- (void)popRendererViewDidBegin:(id)begin
{
  animationDelegate = [(CKChatControllerDummyAnimator *)self animationDelegate];
  [animationDelegate popAnimationDidBegin];
}

- (void)performPopAnimationCleanUpForPopRendererView:(id)view
{
  viewCopy = view;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CKChatControllerDummyAnimator_performPopAnimationCleanUpForPopRendererView___block_invoke;
  block[3] = &unk_1E72EE0D0;
  v7 = viewCopy;
  v5 = viewCopy;
  objc_copyWeak(&v8, &location);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __78__CKChatControllerDummyAnimator_performPopAnimationCleanUpForPopRendererView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained popAnimationCompletionBlock];

  if (v4)
  {
    v4[2]();
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setPopAnimationCompletionBlock:0];
}

- (void)popRendererViewPlaySound:(id)sound
{
  animationDelegate = [(CKChatControllerDummyAnimator *)self animationDelegate];
  [animationDelegate playSoundForPopAnimation];
}

- (void)_beginLoudAnimationsWithContext:(id)context
{
  v110[11] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  throwBalloonViews = [contextCopy throwBalloonViews];
  animatableViews = [contextCopy animatableViews];
  animatableTextViews = [contextCopy animatableTextViews];
  shouldRepeat = [contextCopy shouldRepeat];
  isSender = [contextCopy isSender];
  v99 = throwBalloonViews;
  firstObject = [throwBalloonViews firstObject];
  layer = [firstObject layer];
  [layer setAllowsEdgeAntialiasing:1];

  v100 = firstObject;
  [firstObject bounds];
  v9 = -2.0;
  if (isSender)
  {
    v9 = 2.0;
  }

  v10 = v8 / v9;
  [firstObject bounds];
  v12 = v11;
  v13 = v11 * 0.5;
  v14 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.rotation"];
  v95 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v110[0] = v95;
  v94 = [MEMORY[0x1E696AD98] numberWithDouble:-0.0698131701];
  v110[1] = v94;
  v93 = [MEMORY[0x1E696AD98] numberWithDouble:0.0872664626];
  v110[2] = v93;
  v92 = [MEMORY[0x1E696AD98] numberWithDouble:-0.0558505361];
  v110[3] = v92;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:0.0523598776];
  v110[4] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:-0.0453785606];
  v110[5] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:0.0331612558];
  v110[6] = v17;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:-0.0244346095];
  v110[7] = v18;
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:0.0174532925];
  v110[8] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:-0.0174532925];
  v110[9] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v110[10] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:11];
  [v14 setValues:v22];

  [v14 setKeyTimes:&unk_1F04E7248];
  v23 = v14;
  [v14 setAdditive:1];
  v24 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v25 = MEMORY[0x1E696B098];
  CATransform3DMakeTranslation(&v104, -v10, -(v12 * 0.5), 0.0);
  v26 = [v25 valueWithCATransform3D:&v104];
  [v24 setFromValue:v26];

  fromValue = [v24 fromValue];
  [v24 setToValue:fromValue];

  [v24 setAdditive:1];
  LODWORD(fromValue) = [contextCopy beginAnimationFromTranscriptPresentedState];

  if (fromValue)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.01;
  }

  v29 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
  v30 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v104, v28, v28, 1.0);
  v31 = [v30 valueWithCATransform3D:&v104];
  v109[0] = v31;
  v32 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v104, 2.25, 2.25, 1.0);
  v33 = [v32 valueWithCATransform3D:&v104];
  v109[1] = v33;
  v34 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v104, 2.25, 2.25, 1.0);
  v35 = [v34 valueWithCATransform3D:&v104];
  v109[2] = v35;
  v36 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v104, 1.0, 1.0, 1.0);
  v37 = [v36 valueWithCATransform3D:&v104];
  v109[3] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:4];
  [v29 setValues:v38];

  [v29 setKeyTimes:&unk_1F04E7260];
  LODWORD(v39) = 1051595899;
  LODWORD(v40) = 1049582633;
  LODWORD(v41) = 1.0;
  v42 = [MEMORY[0x1E69793D0] functionWithControlPoints:v39 :0.0 :v40 :v41];
  v108[0] = v42;
  v43 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  v108[1] = v43;
  LODWORD(v44) = 1054280253;
  LODWORD(v45) = 1050924810;
  LODWORD(v46) = 1.0;
  v47 = [MEMORY[0x1E69793D0] functionWithControlPoints:v44 :0.0 :v45 :v46];
  v108[2] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:3];
  [v29 setTimingFunctions:v48];

  [v29 setAdditive:1];
  v49 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v50 = MEMORY[0x1E696B098];
  CATransform3DMakeTranslation(&v104, v10, v13, 0.0);
  v51 = [v50 valueWithCATransform3D:&v104];
  [v49 setFromValue:v51];

  fromValue2 = [v49 fromValue];
  [v49 setToValue:fromValue2];

  [v49 setAdditive:1];
  animation = [MEMORY[0x1E6979308] animation];
  v54 = *MEMORY[0x1E69795C0];
  [animation setBeginTimeMode:*MEMORY[0x1E69795C0]];
  [animation setDelegate:self];
  [animation setDuration:1.51666667];
  v98 = v23;
  v107[0] = v23;
  v107[1] = v24;
  v107[2] = v29;
  v107[3] = v49;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:4];
  [animation setAnimations:v55];

  if (shouldRepeat)
  {
    v57 = INFINITY;
  }

  else
  {
    v57 = 0.0;
  }

  *&v56 = v57;
  [animation setRepeatCount:v56];
  layer2 = [v100 layer];
  [layer2 addAnimation:animation forKey:@"group"];

  [v100 bounds];
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __65__CKChatControllerDummyAnimator__beginLoudAnimationsWithContext___block_invoke_440;
  v103[3] = &__block_descriptor_40_e23_v32__0__UIView_8Q16_B24l;
  *&v103[4] = v59 * -1.25;
  [animatableViews enumerateObjectsUsingBlock:v103];
  firstObject2 = [animatableTextViews firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [firstObject2 bounds];
    v62 = v61 + 10.0;
    [firstObject2 bounds];
    v64 = v62 / v63;
    [firstObject2 bounds];
    v66 = v65 + 10.0;
    [firstObject2 bounds];
    v68 = v66 / v67;
    if (v64 < v66 / v67)
    {
      v68 = v64;
    }

    if (v68 <= 1.15)
    {
      v69 = v68;
    }

    else
    {
      v69 = 1.15;
    }

    v70 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale"];
    v106[0] = &unk_1F04E8C58;
    v71 = [MEMORY[0x1E696AD98] numberWithDouble:v69];
    v106[1] = v71;
    v106[2] = &unk_1F04E8C58;
    v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:3];
    [v70 setValues:v72];

    [v70 setKeyTimes:&unk_1F04E7290];
    LODWORD(v73) = 1045220557;
    LODWORD(v74) = 1048911544;
    LODWORD(v75) = 1.0;
    v76 = [MEMORY[0x1E69793D0] functionWithControlPoints:v73 :0.0 :v74 :v75];
    v105[0] = v76;
    LODWORD(v77) = 0.5;
    LODWORD(v78) = 0.5;
    LODWORD(v79) = 1.0;
    v80 = [MEMORY[0x1E69793D0] functionWithControlPoints:v77 :0.0 :v78 :v79];
    v105[1] = v80;
    v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
    [v70 setTimingFunctions:v81];

    *&v82 = v57;
    [v70 setRepeatCount:v82];
    [v70 setDuration:1.51666667];
    [v70 setBeginTimeMode:v54];
    layer3 = [firstObject2 layer];
    [layer3 addAnimation:v70 forKey:@"transform.scale"];

    subviews = [firstObject2 subviews];
    v85 = [subviews count];

    if (v85)
    {
      subviews2 = [firstObject2 subviews];
      firstObject3 = [subviews2 firstObject];

      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      [firstObject3 setContentScaleFactor:v89 * 5.0];

      v90 = *MEMORY[0x1E6979D68];
      layer4 = [firstObject3 layer];
      [layer4 setMinificationFilter:v90];
    }
  }
}

void __65__CKChatControllerDummyAnimator__beginLoudAnimationsWithContext___block_invoke_440(uint64_t a1, void *a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6979390];
  v4 = a2;
  v5 = [v3 animationWithKeyPath:@"transform.translation.y"];
  v21[0] = &unk_1F04E8370;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v21[1] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v21[2] = v7;
  v21[3] = &unk_1F04E8370;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  [v5 setValues:v8];

  [v5 setKeyTimes:&unk_1F04E7278];
  [v5 setDuration:1.5];
  LODWORD(v9) = 1039516303;
  LODWORD(v10) = 1.0;
  v11 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v9 :v10];
  v12 = [MEMORY[0x1E69793D0] functionWithName:{*MEMORY[0x1E6979ED8], v11}];
  v20[1] = v12;
  LODWORD(v13) = 1040522936;
  LODWORD(v14) = 1051931443;
  LODWORD(v15) = 1053609165;
  LODWORD(v16) = 1.0;
  v17 = [MEMORY[0x1E69793D0] functionWithControlPoints:v13 :v14 :v15 :v16];
  v20[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [v5 setTimingFunctions:v18];

  v19 = [v4 layer];

  [v19 addAnimation:v5 forKey:@"jump"];
}

- (void)_beginFocusAnimationWithContext:(id)context
{
  v83[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  throwBalloonViews = [contextCopy throwBalloonViews];
  animatableTextViews = [contextCopy animatableTextViews];
  shouldRepeat = [contextCopy shouldRepeat];
  v74 = contextCopy;
  isSender = [contextCopy isSender];
  firstObject = [throwBalloonViews firstObject];
  layer = [firstObject layer];
  [layer setAllowsEdgeAntialiasing:1];

  [firstObject bounds];
  v8 = -2.0;
  if (isSender)
  {
    v8 = 2.0;
  }

  v9 = v7 / v8;
  [firstObject bounds];
  v11 = v10;
  v12 = v10 * 0.5;
  v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v14 = MEMORY[0x1E696B098];
  CATransform3DMakeTranslation(&v78, -v9, -(v11 * 0.5), 0.0);
  v15 = [v14 valueWithCATransform3D:&v78];
  [v13 setFromValue:v15];

  fromValue = [v13 fromValue];
  [v13 setToValue:fromValue];

  [v13 setAdditive:1];
  v17 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
  v18 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v78, 0.1, 0.1, 1.0);
  v19 = [v18 valueWithCATransform3D:&v78];
  v83[0] = v19;
  v20 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v78, 1.25, 1.25, 1.0);
  v21 = [v20 valueWithCATransform3D:&v78];
  v83[1] = v21;
  v22 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v78, 1.25, 1.25, 1.0);
  v23 = [v22 valueWithCATransform3D:&v78];
  v83[2] = v23;
  v24 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v78, 1.0, 1.0, 1.0);
  v25 = [v24 valueWithCATransform3D:&v78];
  v83[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
  [v17 setValues:v26];

  [v17 setKeyTimes:&unk_1F04E72A8];
  LODWORD(v27) = 0.5;
  LODWORD(v28) = 1.0;
  LODWORD(v29) = 1051931443;
  v30 = [MEMORY[0x1E69793D0] functionWithControlPoints:v29 :0.0 :v27 :v28];
  v82[0] = v30;
  v69 = *MEMORY[0x1E6979ED8];
  v31 = [MEMORY[0x1E69793D0] functionWithName:?];
  v82[1] = v31;
  LODWORD(v32) = 1.0;
  LODWORD(v33) = 1045220557;
  LODWORD(v34) = 1047233823;
  v35 = [MEMORY[0x1E69793D0] functionWithControlPoints:v33 :0.0 :v34 :v32];
  v82[2] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];
  [v17 setTimingFunctions:v36];

  [v17 setAdditive:1];
  v37 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v38 = MEMORY[0x1E696B098];
  CATransform3DMakeTranslation(&v78, v9, v12, 0.0);
  v39 = [v38 valueWithCATransform3D:&v78];
  [v37 setFromValue:v39];

  fromValue2 = [v37 fromValue];
  [v37 setToValue:fromValue2];

  [v37 setAdditive:1];
  animation = [MEMORY[0x1E6979308] animation];
  v42 = *MEMORY[0x1E69795C0];
  [animation setBeginTimeMode:*MEMORY[0x1E69795C0]];
  [animation setDelegate:self];
  [animation setDuration:4.01666667];
  v71 = v13;
  v81[0] = v13;
  v81[1] = v17;
  v81[2] = v37;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:3];
  [animation setAnimations:v43];

  if (shouldRepeat)
  {
    v45 = INFINITY;
  }

  else
  {
    v45 = 0.0;
  }

  *&v44 = v45;
  [animation setRepeatCount:v44];
  layer2 = [firstObject layer];
  [layer2 addAnimation:animation forKey:@"group"];

  v73 = firstObject;
  [firstObject bounds];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __65__CKChatControllerDummyAnimator__beginFocusAnimationWithContext___block_invoke;
  v77[3] = &__block_descriptor_40_e30_v32__0__CKBalloonView_8Q16_B24l;
  *&v77[4] = v47 * -0.25;
  [throwBalloonViews enumerateObjectsUsingBlock:v77];
  firstObject2 = [animatableTextViews firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v49 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale"];
    [v49 setValues:&unk_1F04E72D8];
    [v49 setKeyTimes:&unk_1F04E72F0];
    LODWORD(v50) = 1047904911;
    LODWORD(v51) = 1043878380;
    LODWORD(v52) = 1.0;
    v53 = [MEMORY[0x1E69793D0] functionWithControlPoints:v50 :0.0 :v51 :v52];
    v80 = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    [v49 setTimingFunctions:v54];

    *&v55 = v45;
    [v49 setRepeatCount:v55];
    [v49 setDuration:4.01666667];
    [v49 setBeginTimeMode:v42];
    layer3 = [firstObject2 layer];
    [layer3 addAnimation:v49 forKey:@"transform.scale"];
  }

  v57 = [MEMORY[0x1E6979390] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v57 setDuration:4.01666667];
  [v57 setKeyTimes:&unk_1F04E7308];
  [v57 setValues:&unk_1F04E7320];
  LODWORD(v58) = 0.5;
  LODWORD(v59) = 1.0;
  LODWORD(v60) = 1051931443;
  v61 = [MEMORY[0x1E69793D0] functionWithControlPoints:v60 :0.0 :v58 :v59];
  v79[0] = v61;
  v62 = [MEMORY[0x1E69793D0] functionWithName:v69];
  v79[1] = v62;
  LODWORD(v63) = 1.0;
  LODWORD(v64) = 1045220557;
  LODWORD(v65) = 1047233823;
  v66 = [MEMORY[0x1E69793D0] functionWithControlPoints:v64 :0.0 :v65 :v63];
  v79[2] = v66;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
  [v57 setTimingFunctions:v67];

  backdropLayer = [v74 backdropLayer];
  [backdropLayer addAnimation:v57 forKey:@"filters.gaussianBlur.inputRadius"];
}

void __65__CKChatControllerDummyAnimator__beginFocusAnimationWithContext___block_invoke(uint64_t a1, void *a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6979390];
  v4 = a2;
  v5 = [v3 animationWithKeyPath:@"transform.translation.y"];
  v21[0] = &unk_1F04E8370;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v21[1] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v21[2] = v7;
  v21[3] = &unk_1F04E8370;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  [v5 setValues:v8];

  [v5 setKeyTimes:&unk_1F04E72C0];
  [v5 setDuration:2.3];
  LODWORD(v9) = 1039516303;
  LODWORD(v10) = 1.0;
  v11 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v9 :v10];
  v12 = [MEMORY[0x1E69793D0] functionWithName:{*MEMORY[0x1E6979ED8], v11}];
  v20[1] = v12;
  LODWORD(v13) = 1040522936;
  LODWORD(v14) = 1051931443;
  LODWORD(v15) = 1053609165;
  LODWORD(v16) = 1.0;
  v17 = [MEMORY[0x1E69793D0] functionWithControlPoints:v13 :v14 :v15 :v16];
  v20[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [v5 setTimingFunctions:v18];

  v19 = [v4 layer];

  [v19 addAnimation:v5 forKey:@"jump"];
}

- (void)_beginGentleAnimationWithContext:(id)context
{
  v71[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  animatableViews = [contextCopy animatableViews];
  animatableTextViews = [contextCopy animatableTextViews];
  throwBalloonViews = [contextCopy throwBalloonViews];
  isSender = [contextCopy isSender];
  shouldRepeat = [contextCopy shouldRepeat];

  v62 = throwBalloonViews;
  firstObject = [throwBalloonViews firstObject];
  layer = [firstObject layer];
  [layer setAllowsEdgeAntialiasing:1];

  [firstObject bounds];
  v9 = -2.0;
  if (isSender)
  {
    v9 = 2.0;
  }

  v10 = v8 / v9;
  [firstObject bounds];
  v12 = v11;
  v13 = v11 * 0.5;
  v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v15 = MEMORY[0x1E696B098];
  CATransform3DMakeTranslation(&v67, -v10, -(v12 * 0.5), 0.0);
  v16 = [v15 valueWithCATransform3D:&v67];
  [v14 setFromValue:v16];

  fromValue = [v14 fromValue];
  [v14 setToValue:fromValue];

  [v14 setAdditive:1];
  v18 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform"];
  v19 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v67, 0.1, 0.1, 1.0);
  v20 = [v19 valueWithCATransform3D:&v67];
  v71[0] = v20;
  v21 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v67, 1.25, 1.25, 1.0);
  v22 = [v21 valueWithCATransform3D:&v67];
  v71[1] = v22;
  v23 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v67, 1.25, 1.25, 1.0);
  v24 = [v23 valueWithCATransform3D:&v67];
  v71[2] = v24;
  v25 = MEMORY[0x1E696B098];
  CATransform3DMakeScale(&v67, 1.0, 1.0, 1.0);
  v26 = [v25 valueWithCATransform3D:&v67];
  v71[3] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:4];
  [v18 setValues:v27];

  [v18 setKeyTimes:&unk_1F04E7338];
  LODWORD(v28) = 1051931443;
  LODWORD(v29) = 0.5;
  LODWORD(v30) = 1.0;
  v31 = [MEMORY[0x1E69793D0] functionWithControlPoints:v28 :0.0 :v29 :v30];
  v70[0] = v31;
  v32 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  v70[1] = v32;
  LODWORD(v33) = 1045220557;
  LODWORD(v34) = 1047233823;
  LODWORD(v35) = 1.0;
  v36 = [MEMORY[0x1E69793D0] functionWithControlPoints:v33 :0.0 :v34 :v35];
  v70[2] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
  [v18 setTimingFunctions:v37];

  [v18 setAdditive:1];
  v38 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v39 = MEMORY[0x1E696B098];
  CATransform3DMakeTranslation(&v67, v10, v13, 0.0);
  v40 = [v39 valueWithCATransform3D:&v67];
  [v38 setFromValue:v40];

  fromValue2 = [v38 fromValue];
  [v38 setToValue:fromValue2];

  [v38 setAdditive:1];
  animation = [MEMORY[0x1E6979308] animation];
  v43 = *MEMORY[0x1E69795C0];
  [animation setBeginTimeMode:*MEMORY[0x1E69795C0]];
  [animation setDelegate:self];
  [animation setDuration:4.01666667];
  v69[0] = v14;
  v69[1] = v18;
  v69[2] = v38;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:3];
  [animation setAnimations:v44];

  if (shouldRepeat)
  {
    v46 = INFINITY;
  }

  else
  {
    v46 = 0.0;
  }

  *&v45 = v46;
  [animation setRepeatCount:v45];
  layer2 = [firstObject layer];
  [layer2 addAnimation:animation forKey:@"group"];

  [firstObject bounds];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __66__CKChatControllerDummyAnimator__beginGentleAnimationWithContext___block_invoke;
  v64[3] = &unk_1E72F71E0;
  v66 = v48 * -0.25;
  v49 = v18;
  v65 = v49;
  [animatableViews enumerateObjectsUsingBlock:v64];
  firstObject2 = [animatableTextViews firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v51 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale"];
    [v51 setValues:&unk_1F04E7368];
    [v51 setKeyTimes:&unk_1F04E7380];
    LODWORD(v52) = 1047904911;
    LODWORD(v53) = 1043878380;
    LODWORD(v54) = 1.0;
    v55 = [MEMORY[0x1E69793D0] functionWithControlPoints:v52 :0.0 :v53 :v54];
    v68 = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
    [v51 setTimingFunctions:v56];

    *&v57 = v46;
    [v51 setRepeatCount:v57];
    [v51 setDuration:4.01666667];
    [v51 setBeginTimeMode:v43];
    layer3 = [firstObject2 layer];
    [layer3 addAnimation:v51 forKey:@"transform.scale"];
  }
}

void __66__CKChatControllerDummyAnimator__beginGentleAnimationWithContext___block_invoke(uint64_t a1, void *a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6979390];
  v4 = a2;
  v5 = [v3 animationWithKeyPath:@"transform.translation.y"];
  v11[0] = &unk_1F04E8370;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v11[1] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v11[2] = v7;
  v11[3] = &unk_1F04E8370;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  [v5 setValues:v8];

  [v5 setKeyTimes:&unk_1F04E7350];
  [*(a1 + 32) duration];
  [v5 setDuration:?];
  v9 = [*(a1 + 32) timingFunctions];
  [v5 setTimingFunctions:v9];

  v10 = [v4 layer];

  [v10 addAnimation:v5 forKey:@"jump"];
}

- (CKSendAnimationManager)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

- (void)addAnimationsForColoredBalloonView:(id)view sendAnimationType:(unint64_t)type sendAnimationConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  layer = [viewCopy layer];
  type metadata accessor for CKBalloonLayer(0);
  if (swift_dynamicCastClass())
  {
    sub_190935D04(configurationCopy, type);
    v9 = layer;
  }

  else
  {
    v9 = viewCopy;
    viewCopy = configurationCopy;
    configurationCopy = layer;
  }
}

@end