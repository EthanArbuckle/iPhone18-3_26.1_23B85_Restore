@interface HPSSpatialProfileSingleStepPillContainerView
- (BOOL)leftSectionCompleted;
- (BOOL)rightSectionCompleted;
- (HPSSpatialProfileSingleStepPillContainerView)initWithFrame:(CGRect)frame;
- (void)animateFaceAnglesIfneeded:(id)ifneeded withCompletion:(id)completion;
- (void)fillPill:(unint64_t)pill updatePillsForPoseStatus:(id)status withCompletion:(id)completion;
- (void)updatePillsForPoseStatus:(id)status pillCount:(unsigned int *)count alongSideAction:(id)action;
@end

@implementation HPSSpatialProfileSingleStepPillContainerView

- (HPSSpatialProfileSingleStepPillContainerView)initWithFrame:(CGRect)frame
{
  v35[4] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = HPSSpatialProfileSingleStepPillContainerView;
  v3 = [(HPSSpatialProfileSingleStepPillContainerView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_rightEarStateComplete = 0;
    v3->_leftEarStateComplete = 0;
    v5 = [MEMORY[0x277CBEB58] set];
    animatedFaceLayers = v4->_animatedFaceLayers;
    v4->_animatedFaceLayers = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:33];
    pillsStatusArray = v4->_pillsStatusArray;
    v4->_pillsStatusArray = v7;

    v9 = 0;
    v10 = MEMORY[0x277CBEC28];
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
    v11 = objc_alloc(MEMORY[0x277CF0D48]);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v11 initWithPackageName:@"Lines_Layout" inBundle:v12];
    micaView = v4->_micaView;
    v4->_micaView = v13;

    [(BSUICAPackageView *)v4->_micaView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HPSSpatialProfileSingleStepPillContainerView *)v4 addSubview:v4->_micaView];
    layerMappingLeft = v4->_layerMappingLeft;
    v4->_layerMappingLeft = &unk_28634DA98;

    layerMappingRight = v4->_layerMappingRight;
    v4->_layerMappingRight = &unk_28634DAB0;

    v28 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(BSUICAPackageView *)v4->_micaView leadingAnchor];
    leadingAnchor2 = [(HPSSpatialProfileSingleStepPillContainerView *)v4 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[0] = v31;
    trailingAnchor = [(BSUICAPackageView *)v4->_micaView trailingAnchor];
    trailingAnchor2 = [(HPSSpatialProfileSingleStepPillContainerView *)v4 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[1] = v17;
    topAnchor = [(BSUICAPackageView *)v4->_micaView topAnchor];
    topAnchor2 = [(HPSSpatialProfileSingleStepPillContainerView *)v4 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[2] = v20;
    bottomAnchor = [(BSUICAPackageView *)v4->_micaView bottomAnchor];
    bottomAnchor2 = [(HPSSpatialProfileSingleStepPillContainerView *)v4 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    [v28 activateConstraints:v24];

    v25 = [(BSUICAPackageView *)v4->_micaView publishedObjectWithName:@"mid_0"];
    [(BSUICAPackageView *)v4->_micaView setState:@"Min" onLayer:v25 animated:0 transitionSpeed:0 completion:1.0];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)updatePillsForPoseStatus:(id)status pillCount:(unsigned int *)count alongSideAction:(id)action
{
  statusCopy = status;
  actionCopy = action;
  yawAngles = [statusCopy yawAngles];
  v10 = [yawAngles debugDescription];
  NSLog(&cfstr_SpatialProfile_18.isa, v10);

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __99__HPSSpatialProfileSingleStepPillContainerView_updatePillsForPoseStatus_pillCount_alongSideAction___block_invoke;
  v27[3] = &unk_2796AD5A0;
  v11 = actionCopy;
  v28 = v11;
  [(HPSSpatialProfileSingleStepPillContainerView *)self animateFaceAnglesIfneeded:statusCopy withCompletion:v27];
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
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __99__HPSSpatialProfileSingleStepPillContainerView_updatePillsForPoseStatus_pillCount_alongSideAction___block_invoke_3;
          v24[3] = &unk_2796AE228;
          v25 = v11;
          countCopy = count;
          [(HPSSpatialProfileSingleStepPillContainerView *)self fillPill:v14 updatePillsForPoseStatus:statusCopy withCompletion:v24];
        }
      }

      v14 = v15;
      yawAngles4 = [statusCopy yawAngles];
      v21 = [yawAngles4 count];
    }

    while (v21 > v15++);
  }
}

uint64_t __99__HPSSpatialProfileSingleStepPillContainerView_updatePillsForPoseStatus_pillCount_alongSideAction___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __99__HPSSpatialProfileSingleStepPillContainerView_updatePillsForPoseStatus_pillCount_alongSideAction___block_invoke_4;
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
  NSLog(&cfstr_SpatialProfile_19.isa, pill, leftPillIndex, rightPillIndex, v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HPSSpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke;
  block[3] = &unk_2796AE2C8;
  block[4] = self;
  v16 = statusCopy;
  v17 = completionCopy;
  pillCopy = pill;
  v13 = completionCopy;
  v14 = statusCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __97__HPSSpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == v3[60] || v2 == v3[59])
  {
    v4 = *(a1 + 40);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __97__HPSSpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_2;
    v22[3] = &unk_2796AE250;
    objc_copyWeak(&v24, &location);
    v22[4] = *(a1 + 32);
    v23 = *(a1 + 48);
    [v3 animateFaceAnglesIfneeded:v4 withCompletion:v22];

    objc_destroyWeak(&v24);
    goto LABEL_20;
  }

  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:1];
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

  [*(v7 + 416) setObject:&unk_28634DB88 atIndexedSubscript:?];
  v15 = @"mid_0";
LABEL_16:
  v16 = [*(*(a1 + 32) + 424) publishedObjectWithName:v15];
  NSLog(&cfstr_SpatialProfile_21.isa, *(a1 + 56), v15, *(*(a1 + 32) + 448), *(*(a1 + 32) + 456));
  if (v15)
  {
    v17 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HPSSpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_120;
    block[3] = &unk_2796AE2A0;
    block[4] = *(a1 + 32);
    v19 = v16;
    objc_copyWeak(&v21, &location);
    v20 = *(a1 + 48);
    dispatch_after(v17, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v21);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_20:
  objc_destroyWeak(&location);
}

uint64_t __97__HPSSpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_2(uint64_t a1)
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
  NSLog(&cfstr_SpatialProfile_20.isa, v7, v9, v12);

  v13 = *(*(a1 + 40) + 16);

  return v13();
}

void __97__HPSSpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_120(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 424);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __97__HPSSpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_2_124;
  v4[3] = &unk_2796AE278;
  objc_copyWeak(&v6, (a1 + 56));
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v3 setState:@"Max" onLayer:v2 animated:1 transitionSpeed:v4 completion:1.0];

  objc_destroyWeak(&v6);
}

void __97__HPSSpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_2_124(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HPSSpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_3;
  block[3] = &unk_2796AE250;
  objc_copyWeak(&v6, (a1 + 48));
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
}

uint64_t __97__HPSSpatialProfileSingleStepPillContainerView_fillPill_updatePillsForPoseStatus_withCompletion___block_invoke_3(uint64_t a1)
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
  NSLog(&cfstr_SpatialProfile_20.isa, v7, v9, v12);

  v13 = *(*(a1 + 40) + 16);

  return v13();
}

- (void)animateFaceAnglesIfneeded:(id)ifneeded withCompletion:(id)completion
{
  ifneededCopy = ifneeded;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HPSSpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke;
  block[3] = &unk_2796AD5F0;
  v11 = ifneededCopy;
  selfCopy = self;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = ifneededCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __89__HPSSpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) currentYawAngle];
  if (v2 == -100.0)
  {
    NSLog(&cfstr_SpatialProfile_22.isa);
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
      [*(*(a1 + 40) + 416) setObject:&unk_28634DBB8 atIndexedSubscript:*(*(a1 + 40) + 472)];
      v19 = [*(a1 + 40) pillsStatusArray];
      v20 = [v19 componentsJoinedByString:{@", "}];
      NSLog(&cfstr_SpatialProfile_23.isa, v20);

      v4 = 1;
      v18 = &unk_28634DAC8;
    }

    else if (v9 && ([*(*(a1 + 40) + 416) objectAtIndexedSubscript:*(*(a1 + 40) + 480)], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "intValue"), v15, !v16))
    {
      [*(*(a1 + 40) + 416) setObject:&unk_28634DBB8 atIndexedSubscript:*(*(a1 + 40) + 480)];
      v21 = [*(a1 + 40) pillsStatusArray];
      v22 = [v21 componentsJoinedByString:{@", "}];
      NSLog(&cfstr_SpatialProfile_24.isa, v22);

      v4 = 0;
      v18 = &unk_28634DAE0;
    }

    else
    {
      v17 = fabs(v6);
      if (v17 >= 24.0)
      {
        v18 = &unk_28634DAF8;
      }

      else if (v17 >= 18.0)
      {
        v18 = &unk_28634DB10;
      }

      else if (v17 >= 12.0)
      {
        v18 = &unk_28634DB28;
      }

      else if (v17 >= 6.0)
      {
        v18 = &unk_28634DB40;
      }

      else
      {
        v18 = 0;
      }
    }

    objc_initWeak(&location, *(a1 + 40));
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __89__HPSSpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_165;
    v24[3] = &unk_2796AE340;
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

void __89__HPSSpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_165(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d-%i", objc_msgSend(v3, "intValue"), *(a1 + 56)];
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
      v10 = &OBJC_IVAR___HPSSpatialProfileSingleStepPillContainerView__layerMappingLeft;
    }

    else
    {
      v10 = &OBJC_IVAR___HPSSpatialProfileSingleStepPillContainerView__layerMappingRight;
    }

    v11 = [*(*(a1 + 32) + *v10) objectAtIndexedSubscript:{objc_msgSend(v3, "unsignedIntValue")}];
    v12 = [*(*(a1 + 32) + 424) publishedObjectWithName:v11];
    v13 = dispatch_time(0, 700000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__HPSSpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_2;
    block[3] = &unk_2796AE318;
    objc_copyWeak(&v21, (a1 + 48));
    v22 = *(a1 + 57);
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v18 = v12;
    v19 = v14;
    v20 = v15;
    v16 = v12;
    dispatch_after(v13, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v21);
  }
}

void __89__HPSSpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained micaView];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__HPSSpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_3;
  v6[3] = &unk_2796AE2F0;
  v9 = *(a1 + 64);
  objc_copyWeak(&v8, (a1 + 56));
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [v3 setState:@"Max" onLayer:v4 animated:1 transitionSpeed:v6 completion:1.0];

  objc_destroyWeak(&v8);
}

uint64_t __89__HPSSpatialProfileSingleStepPillContainerView_animateFaceAnglesIfneeded_withCompletion___block_invoke_3(uint64_t result)
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
    NSLog(&cfstr_SpatialProfile_20.isa, v7, v9, v12);

    v13 = *(*(v1 + 40) + 16);

    return v13();
  }

  return result;
}

- (BOOL)leftSectionCompleted
{
  leftEarStateComplete = [(HPSSpatialProfileSingleStepPillContainerView *)self leftEarStateComplete];
  pillsStatusArray = [(HPSSpatialProfileSingleStepPillContainerView *)self pillsStatusArray];
  v5 = [pillsStatusArray componentsJoinedByString:{@", "}];
  NSLog(&cfstr_SpatialProfile_25.isa, leftEarStateComplete, v5);

  pillsStatusArray2 = [(HPSSpatialProfileSingleStepPillContainerView *)self pillsStatusArray];
  v7 = [pillsStatusArray2 objectAtIndexedSubscript:self->_middleMinusOne];
  if ([v7 BOOLValue])
  {
    leftEarStateComplete2 = [(HPSSpatialProfileSingleStepPillContainerView *)self leftEarStateComplete];
  }

  else
  {
    leftEarStateComplete2 = 0;
  }

  return leftEarStateComplete2;
}

- (BOOL)rightSectionCompleted
{
  pillsStatusArray = [(HPSSpatialProfileSingleStepPillContainerView *)self pillsStatusArray];
  v4 = [pillsStatusArray objectAtIndexedSubscript:self->_middlePlusOne];
  if ([v4 BOOLValue])
  {
    rightEarStateComplete = [(HPSSpatialProfileSingleStepPillContainerView *)self rightEarStateComplete];
  }

  else
  {
    rightEarStateComplete = 0;
  }

  return rightEarStateComplete;
}

@end