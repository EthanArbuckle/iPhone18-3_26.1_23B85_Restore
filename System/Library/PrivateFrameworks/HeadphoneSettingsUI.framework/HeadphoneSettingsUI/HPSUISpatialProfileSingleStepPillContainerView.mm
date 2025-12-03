@interface HPSUISpatialProfileSingleStepPillContainerView
- (BOOL)leftSectionCompleted;
- (BOOL)rightSectionCompleted;
- (HPSUISpatialProfileSingleStepPillContainerView)initWithFrame:(CGRect)frame;
- (void)animateFaceAnglesIfneeded:(id)ifneeded withCompletion:(id)completion;
- (void)fillPill:(unint64_t)pill updatePillsForPoseStatus:(id)status withCompletion:(id)completion;
- (void)updatePillsForPoseStatus:(id)status pillCount:(unsigned int *)count alongSideAction:(id)action;
@end

@implementation HPSUISpatialProfileSingleStepPillContainerView

- (HPSUISpatialProfileSingleStepPillContainerView)initWithFrame:(CGRect)frame
{
  v34[4] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = HPSUISpatialProfileSingleStepPillContainerView;
  v3 = [(HPSUISpatialProfileSingleStepPillContainerView *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_rightEarStateComplete = 0;
    v3->_leftEarStateComplete = 0;
    v5 = [MEMORY[0x1E695DFA8] set];
    animatedFaceLayers = v4->_animatedFaceLayers;
    v4->_animatedFaceLayers = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:33];
    pillsStatusArray = v4->_pillsStatusArray;
    v4->_pillsStatusArray = v7;

    v9 = 0;
    v10 = MEMORY[0x1E695E110];
    do
    {
      [(NSMutableArray *)v4->_pillsStatusArray setObject:v10 atIndexedSubscript:v9++];
    }

    while (v9 != 33);
    v4->_middleZero = 16;
    v4->_middleMinusOne = 15;
    v4->_middlePlusOne = 17;
    v4->_leftPillIndex = 1;
    v4->_rightPillIndex = 1;
    v11 = objc_alloc(MEMORY[0x1E698E7D8]);
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v13 = [v11 initWithPackageName:@"Lines_Layout" inBundle:v12];
    micaView = v4->_micaView;
    v4->_micaView = v13;

    [(BSUICAPackageView *)v4->_micaView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HPSUISpatialProfileSingleStepPillContainerView *)v4 addSubview:v4->_micaView];
    layerMappingLeft = v4->_layerMappingLeft;
    v4->_layerMappingLeft = &unk_1F21052C8;

    layerMappingRight = v4->_layerMappingRight;
    v4->_layerMappingRight = &unk_1F21052E0;

    v27 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(BSUICAPackageView *)v4->_micaView leadingAnchor];
    leadingAnchor2 = [(HPSUISpatialProfileSingleStepPillContainerView *)v4 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v34[0] = v30;
    trailingAnchor = [(BSUICAPackageView *)v4->_micaView trailingAnchor];
    trailingAnchor2 = [(HPSUISpatialProfileSingleStepPillContainerView *)v4 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v34[1] = v17;
    topAnchor = [(BSUICAPackageView *)v4->_micaView topAnchor];
    topAnchor2 = [(HPSUISpatialProfileSingleStepPillContainerView *)v4 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v34[2] = v20;
    bottomAnchor = [(BSUICAPackageView *)v4->_micaView bottomAnchor];
    bottomAnchor2 = [(HPSUISpatialProfileSingleStepPillContainerView *)v4 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v34[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
    [v27 activateConstraints:v24];

    v25 = [(BSUICAPackageView *)v4->_micaView publishedObjectWithName:@"mid_0"];
    [(BSUICAPackageView *)v4->_micaView setState:@"Min" onLayer:v25 animated:0 transitionSpeed:0 completion:1.0];
  }

  return v4;
}

- (void)updatePillsForPoseStatus:(id)status pillCount:(unsigned int *)count alongSideAction:(id)action
{
  statusCopy = status;
  actionCopy = action;
  yawAngles = [statusCopy yawAngles];
  v10 = [yawAngles debugDescription];
  NSLog(&cfstr_SpatialProfile_1.isa, v10);

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __101__HPSUISpatialProfileSingleStepPillContainerView_updatePillsForPoseStatus_pillCount_alongSideAction___block_invoke;
  v27[3] = &unk_1E7970258;
  v11 = actionCopy;
  v28 = v11;
  [(HPSUISpatialProfileSingleStepPillContainerView *)self animateFaceAnglesIfneeded:statusCopy withCompletion:v27];
  yawAngles2 = [statusCopy yawAngles];
  v13 = [yawAngles2 count];

  if (v13)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      yawAngles3 = [statusCopy yawAngles];
      v17 = [yawAngles3 objectAtIndexedSubscript:v14];

      if ([v17 captured])
      {
        v18 = [(NSMutableArray *)self->_pillsStatusArray objectAtIndexedSubscript:v14];
        bOOLValue = [v18 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __101__HPSUISpatialProfileSingleStepPillContainerView_updatePillsForPoseStatus_pillCount_alongSideAction___block_invoke_3;
          v24[3] = &unk_1E7970678;
          v25 = v11;
          countCopy = count;
          [(HPSUISpatialProfileSingleStepPillContainerView *)self fillPill:v14 updatePillsForPoseStatus:statusCopy withCompletion:v24];
        }
      }

      v14 = v15;
      yawAngles4 = [statusCopy yawAngles];
      v21 = [yawAngles4 count];
    }

    while (v21 > v15++);
  }
}

uint64_t __101__HPSUISpatialProfileSingleStepPillContainerView_updatePillsForPoseStatus_pillCount_alongSideAction___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __101__HPSUISpatialProfileSingleStepPillContainerView_updatePillsForPoseStatus_pillCount_alongSideAction___block_invoke_4;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return (*(v1 + 16))(v1, v3);
}

- (void)fillPill:(unint64_t)pill updatePillsForPoseStatus:(id)status withCompletion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  leftPillIndex = self->_leftPillIndex;
  rightPillIndex = self->_rightPillIndex;
  [statusCopy currentYawAngle];
  NSLog(&cfstr_SpatialProfile_2.isa, pill, leftPillIndex, rightPillIndex, v12);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__HPSUISpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke;
  block[3] = &unk_1E7970718;
  block[4] = self;
  v16 = statusCopy;
  v17 = completionCopy;
  pillCopy = pill;
  v13 = completionCopy;
  v14 = statusCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __99__HPSUISpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == v3[60] || v2 == v3[59])
  {
    v4 = *(a1 + 40);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __99__HPSUISpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_2;
    v22[3] = &unk_1E79706A0;
    objc_copyWeak(&v24, &location);
    v22[4] = *(a1 + 32);
    v23 = *(a1 + 48);
    [v3 animateFaceAnglesIfneeded:v4 withCompletion:v22];

    objc_destroyWeak(&v24);
    goto LABEL_20;
  }

  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
  [*(*(a1 + 32) + 416) setObject:v5 atIndexedSubscript:*(a1 + 56)];

  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(v7 + 464);
  if (v6 < v8)
  {
    v9 = 448;
    v10 = *(v7 + 448);
    if (v10 >= 6)
    {
      v11 = [*(v7 + 432) count];
      v7 = *(a1 + 32);
      if (v10 < v11)
      {
        v12 = [*(v7 + 432) objectAtIndexedSubscript:*(v7 + 448)];
LABEL_13:
        v15 = v12;
        v7 = *(a1 + 32);
LABEL_15:
        ++*(v7 + v9);
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  if (v6 > v8)
  {
    v9 = 456;
    v13 = *(v7 + 456);
    if (v13 >= 6)
    {
      v14 = [*(v7 + 440) count];
      v7 = *(a1 + 32);
      if (v13 < v14)
      {
        v12 = [*(v7 + 440) objectAtIndexedSubscript:*(v7 + 456)];
        goto LABEL_13;
      }
    }

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  [*(v7 + 416) setObject:&unk_1F2105388 atIndexedSubscript:?];
  v15 = @"mid_0";
LABEL_16:
  v16 = [*(*(a1 + 32) + 424) publishedObjectWithName:v15];
  NSLog(&cfstr_SpatialProfile_4.isa, *(a1 + 56), v15, *(*(a1 + 32) + 448), *(*(a1 + 32) + 456));
  if (v15)
  {
    v17 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__HPSUISpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_120;
    block[3] = &unk_1E79706F0;
    block[4] = *(a1 + 32);
    v19 = v16;
    objc_copyWeak(&v21, &location);
    v20 = *(a1 + 48);
    dispatch_after(v17, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v21);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_20:
  objc_destroyWeak(&location);
}

uint64_t __99__HPSUISpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 456) == *(*(a1 + 32) + 464);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setRightEarStateComplete:v2];

  v4 = *(*(a1 + 32) + 448) == *(*(a1 + 32) + 464);
  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 setLeftEarStateComplete:v4];

  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = [v6 rightEarStateComplete];
  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = [v8 leftEarStateComplete];
  v10 = objc_loadWeakRetained((a1 + 48));
  v11 = [v10 pillsStatusArray];
  v12 = [v11 componentsJoinedByString:{@", "}];
  NSLog(&cfstr_SpatialProfile_3.isa, v7, v9, v12);

  v13 = *(*(a1 + 40) + 16);

  return v13();
}

void __99__HPSUISpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_120(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 424);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __99__HPSUISpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_2_124;
  v4[3] = &unk_1E79706C8;
  objc_copyWeak(&v6, (a1 + 56));
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v3 setState:@"Max" onLayer:v2 animated:1 transitionSpeed:v4 completion:1.0];

  objc_destroyWeak(&v6);
}

void __99__HPSUISpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_2_124(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__HPSUISpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_3;
  block[3] = &unk_1E79706A0;
  objc_copyWeak(&v6, (a1 + 48));
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v6);
}

uint64_t __99__HPSUISpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 456) == *(*(a1 + 32) + 464);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setRightEarStateComplete:v2];

  v4 = *(*(a1 + 32) + 448) == *(*(a1 + 32) + 464);
  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 setLeftEarStateComplete:v4];

  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = [v6 rightEarStateComplete];
  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = [v8 leftEarStateComplete];
  v10 = objc_loadWeakRetained((a1 + 48));
  v11 = [v10 pillsStatusArray];
  v12 = [v11 componentsJoinedByString:{@", "}];
  NSLog(&cfstr_SpatialProfile_3.isa, v7, v9, v12);

  v13 = *(*(a1 + 40) + 16);

  return v13();
}

- (void)animateFaceAnglesIfneeded:(id)ifneeded withCompletion:(id)completion
{
  ifneededCopy = ifneeded;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__HPSUISpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke;
  block[3] = &unk_1E79707B8;
  v11 = ifneededCopy;
  selfCopy = self;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = ifneededCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __91__HPSUISpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) currentYawAngle];
  if (v2 == -100.0)
  {
    NSLog(&cfstr_SpatialProfile_5.isa);
  }

  else
  {
    [*(a1 + 32) currentYawAngle];
    v4 = v3 < 0.0;
    [*(a1 + 32) currentYawAngle];
    v6 = v5;
    v7 = [*(a1 + 32) yawAngles];
    v8 = [v7 objectAtIndexedSubscript:*(*(a1 + 40) + 480)];
    v9 = [v8 captured];

    v10 = [*(a1 + 32) yawAngles];
    v11 = [v10 objectAtIndexedSubscript:*(*(a1 + 40) + 472)];
    v12 = [v11 captured];

    if (v12 && ([*(*(a1 + 40) + 416) objectAtIndexedSubscript:*(*(a1 + 40) + 472)], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "intValue"), v13, !v14))
    {
      [*(*(a1 + 40) + 416) setObject:&unk_1F21053B8 atIndexedSubscript:*(*(a1 + 40) + 472)];
      v19 = [*(a1 + 40) pillsStatusArray];
      v20 = [v19 componentsJoinedByString:{@", "}];
      NSLog(&cfstr_SpatialProfile_6.isa, v20);

      v4 = 1;
      v18 = &unk_1F21052F8;
    }

    else if (v9 && ([*(*(a1 + 40) + 416) objectAtIndexedSubscript:*(*(a1 + 40) + 480)], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intValue"), v15, !v16))
    {
      [*(*(a1 + 40) + 416) setObject:&unk_1F21053B8 atIndexedSubscript:*(*(a1 + 40) + 480)];
      v21 = [*(a1 + 40) pillsStatusArray];
      v22 = [v21 componentsJoinedByString:{@", "}];
      NSLog(&cfstr_SpatialProfile_7.isa, v22);

      v4 = 0;
      v18 = &unk_1F2105310;
    }

    else
    {
      v17 = fabs(v6);
      if (v17 >= 24.0)
      {
        v18 = &unk_1F2105328;
      }

      else if (v17 >= 18.0)
      {
        v18 = &unk_1F2105340;
      }

      else if (v17 >= 12.0)
      {
        v18 = &unk_1F2105358;
      }

      else if (v17 >= 6.0)
      {
        v18 = &unk_1F2105370;
      }

      else
      {
        v18 = 0;
      }
    }

    objc_initWeak(&location, *(a1 + 40));
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __91__HPSUISpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_165;
    v24[3] = &unk_1E7970790;
    v27 = v4;
    objc_copyWeak(&v26, &location);
    v23 = *(a1 + 48);
    v24[4] = *(a1 + 40);
    v28 = v9;
    v29 = v12;
    v25 = v23;
    [v18 enumerateObjectsUsingBlock:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __91__HPSUISpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_165(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d-%i", objc_msgSend(v3, "intValue"), *(a1 + 56)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained animatedFaceLayers];
  v7 = [v6 containsObject:v4];

  if ((v7 & 1) == 0)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 animatedFaceLayers];
    [v9 addObject:v4];

    if (*(a1 + 56))
    {
      v10 = &OBJC_IVAR___HPSUISpatialProfileSingleStepPillContainerView__layerMappingLeft;
    }

    else
    {
      v10 = &OBJC_IVAR___HPSUISpatialProfileSingleStepPillContainerView__layerMappingRight;
    }

    v11 = [*(*(a1 + 32) + *v10) objectAtIndexedSubscript:{objc_msgSend(v3, "unsignedIntValue")}];
    v12 = [*(*(a1 + 32) + 424) publishedObjectWithName:v11];
    v13 = dispatch_time(0, 700000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__HPSUISpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_2;
    block[3] = &unk_1E7970768;
    objc_copyWeak(&v21, (a1 + 48));
    v22 = *(a1 + 57);
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v18 = v12;
    v19 = v14;
    v20 = v15;
    v16 = v12;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v21);
  }
}

void __91__HPSUISpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained micaView];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91__HPSUISpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_3;
  v6[3] = &unk_1E7970740;
  v9 = *(a1 + 64);
  objc_copyWeak(&v8, (a1 + 56));
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [v3 setState:@"Max" onLayer:v4 animated:1 transitionSpeed:v6 completion:1.0];

  objc_destroyWeak(&v8);
}

uint64_t __91__HPSUISpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_3(uint64_t result)
{
  v1 = result;
  if ((*(result + 56) & 1) != 0 || *(result + 57) == 1)
  {
    v2 = *(*(result + 32) + 456) == *(*(result + 32) + 464);
    WeakRetained = objc_loadWeakRetained((result + 48));
    [WeakRetained setRightEarStateComplete:v2];

    v4 = *(*(v1 + 32) + 448) == *(*(v1 + 32) + 464);
    v5 = objc_loadWeakRetained((v1 + 48));
    [v5 setLeftEarStateComplete:v4];

    v6 = objc_loadWeakRetained((v1 + 48));
    v7 = [v6 rightEarStateComplete];
    v8 = objc_loadWeakRetained((v1 + 48));
    v9 = [v8 leftEarStateComplete];
    v10 = objc_loadWeakRetained((v1 + 48));
    v11 = [v10 pillsStatusArray];
    v12 = [v11 componentsJoinedByString:{@", "}];
    NSLog(&cfstr_SpatialProfile_3.isa, v7, v9, v12);

    v13 = *(*(v1 + 40) + 16);

    return v13();
  }

  return result;
}

- (BOOL)leftSectionCompleted
{
  leftEarStateComplete = [(HPSUISpatialProfileSingleStepPillContainerView *)self leftEarStateComplete];
  pillsStatusArray = [(HPSUISpatialProfileSingleStepPillContainerView *)self pillsStatusArray];
  v5 = [pillsStatusArray componentsJoinedByString:{@", "}];
  NSLog(&cfstr_SpatialProfile_8.isa, leftEarStateComplete, v5);

  pillsStatusArray2 = [(HPSUISpatialProfileSingleStepPillContainerView *)self pillsStatusArray];
  v7 = [pillsStatusArray2 objectAtIndexedSubscript:self->_middleMinusOne];
  if ([v7 BOOLValue])
  {
    leftEarStateComplete2 = [(HPSUISpatialProfileSingleStepPillContainerView *)self leftEarStateComplete];
  }

  else
  {
    leftEarStateComplete2 = 0;
  }

  return leftEarStateComplete2;
}

- (BOOL)rightSectionCompleted
{
  pillsStatusArray = [(HPSUISpatialProfileSingleStepPillContainerView *)self pillsStatusArray];
  v4 = [pillsStatusArray objectAtIndexedSubscript:self->_middlePlusOne];
  if ([v4 BOOLValue])
  {
    rightEarStateComplete = [(HPSUISpatialProfileSingleStepPillContainerView *)self rightEarStateComplete];
  }

  else
  {
    rightEarStateComplete = 0;
  }

  return rightEarStateComplete;
}

@end